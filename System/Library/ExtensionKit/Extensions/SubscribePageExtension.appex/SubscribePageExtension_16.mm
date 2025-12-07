id sub_1001C11D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1007446D4();
  if (v5)
  {
    v6 = sub_100753064();
  }

  else
  {
    v6 = 0;
  }

  [v3 setAccessibilityLabel:v6];

  v7 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_titleLabel];
  sub_1007446E4();
  v8 = sub_100753064();

  [v7 setText:v8];

  v9 = sub_1007446F4();
  if (v9)
  {
    sub_10074F2A4();
    v27 = v10;
    v28 = v11;

    *&v12 = v27;
    *(&v12 + 1) = v28;
  }

  else
  {
    v12 = 0uLL;
  }

  v13 = &v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  *v13 = v12;
  v13[16] = v9 == 0;
  v14 = sub_1007446F4();
  if (v14)
  {
  }

  v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_hasArtwork] = v14 != 0;
  v15 = sub_1007446F4();
  if (v15)
  {
    sub_100119858(v15, a2);
  }

  else
  {
    v16 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView];
    sub_100743344();
    [v16 setHidden:1];
  }

  v17 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView];
  v18 = sub_1007446B4();
  [v17 setTintColor:v18];

  v20 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction];
  if (v20)
  {
    v21 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction + 8];
    v22 = objc_allocWithZone(UITapGestureRecognizer);

    v23 = [v22 initWithTarget:v3 action:"handleTap"];
    v24 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer];
    *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer] = v23;
    v25 = v23;

    if (v25)
    {
      [v3 addGestureRecognizer:v25];
      sub_1000164A8(v20, v21);
    }

    else
    {
      v19 = sub_1000164A8(v20, v21);
    }
  }

  else if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer])
  {
    [v3 removeGestureRecognizer:?];
  }

  return [v3 setNeedsLayout];
}

void sub_1001C1510(objc_class *a4@<X3>, uint64_t a5@<X8>)
{
  v17[1] = a5;
  v17[0] = sub_1007504F4();
  v6 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100750304();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921488 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  v14 = sub_10000D0FC(v13, qword_100981AD0);
  (*(*(v13 - 8) + 16))(v12, v14, v13);
  (*(v10 + 104))(v12, enum case for FontSource.useCase(_:), v9);
  v15.super.isa = a4;
  isa = sub_1007502F4(v15).super.isa;
  (*(v10 + 8))(v12, v9);
  [(objc_class *)isa lineHeight];
  sub_100750504();
  sub_1007504B4();
  (*(v6 + 8))(v8, v17[0]);
  v17[35] = &type metadata for Double;
  v17[36] = &protocol witness table for Double;
  v17[31] = &protocol witness table for Double;
  v17[32] = 0x4020000000000000;
  v17[30] = &type metadata for Double;
  v17[27] = 0x4024000000000000;
  v17[25] = &type metadata for Double;
  v17[26] = &protocol witness table for Double;
  v17[21] = &protocol witness table for Double;
  v17[22] = 0x402C000000000000;
  v17[20] = &type metadata for Double;
  v17[16] = &protocol witness table for Double;
  v17[17] = 0;
  v17[15] = &type metadata for Double;
  v17[11] = &protocol witness table for Double;
  v17[12] = 0;
  v17[10] = &type metadata for Double;
  v17[6] = &protocol witness table for Double;
  v17[7] = 0x4010000000000000;
  v17[5] = &type metadata for Double;
  v17[2] = 0x4010000000000000;
  sub_10074A784();
}

uint64_t sub_1001C1B28(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    sub_1007526C4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10000C8CC(v5, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      sub_1003C0E00(a2, 1, v7, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t type metadata accessor for RibbonBarItemCollectionViewCell(uint64_t a1)
{
  result = qword_10092C048;
  if (!qword_10092C048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001C1DD0(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001C1EB8(uint64_t a1, uint64_t a2)
{
  sub_100743204();
  sub_1007433C4();
  sub_1001C3884(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_100744274();
}

uint64_t sub_1001C1F50(uint64_t a1)
{
  result = sub_1001C3884(&qword_10092C058, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_1007B09E0);
  *(a1 + 8) = result;
  return result;
}

void *sub_1001C1FA8(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = sub_100750304();
  v115 = *(v10 - 8);
  v116 = v10;
  __chkstk_darwin(v10);
  v114 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750B04();
  v118 = *(v12 - 8);
  v119 = v12;
  __chkstk_darwin(v12);
  v117 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10000C518(&qword_10092C060, qword_1007B0A30);
  v14 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v113 - v15;
  v140 = sub_100750954();
  v16 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v138 = &v113 - v19;
  __chkstk_darwin(v20);
  v137 = &v113 - v21;
  __chkstk_darwin(v22);
  v136 = &v113 - v23;
  __chkstk_darwin(v24);
  v135 = &v113 - v25;
  __chkstk_darwin(v26);
  v134 = &v113 - v27;
  v133 = sub_100750BD4();
  v28 = *(v133 - 8);
  __chkstk_darwin(v133);
  *&v153 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10074A7B4();
  v30 = *(v144 - 8);
  __chkstk_darwin(v144);
  v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v113 - v34;
  __chkstk_darwin(v36);
  v121 = &v113 - v37;
  __chkstk_darwin(v38);
  v122 = &v113 - v39;
  if (a1 >> 62)
  {
LABEL_55:
    v40 = sub_100754664();
  }

  else
  {
    v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v145 = a2;
  if (v40)
  {
    v152 = v14;
    v175 = _swiftEmptyArrayStorage;
    v143 = v40;
    sub_10001E46C(0, v40 & ~(v40 >> 63), 0);
    if (v143 < 0)
    {
      __break(1u);
LABEL_57:
      swift_once();
      goto LABEL_43;
    }

    v130 = v35;
    v131 = v32;
    v35 = v175;
    v4 = JUMeasuringSizeExpanded[0];
    v5 = JUMeasuringSizeExpanded[1];
    v41 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
    v42 = v30;
    v43 = 0;
    v44 = a1;
    v128 = a1 & 0xC000000000000001;
    v129 = v41;
    v120 = v42;
    v126 = (v42 + 32);
    v127 = v16 + 8;
    v124 = (v152 + 8);
    v125 = (v28 + 2);
    v123 = (v28 + 1);
    v132 = a1;
    v16 += 8;
    do
    {
      if (v128)
      {
        v45 = sub_100754574();
      }

      else
      {
        v45 = *(v44 + 8 * v43 + 32);
      }

      v152 = v35;
      v46 = sub_1007446E4();
      v148 = v47;
      v149 = v46;
      v48 = sub_1007446F4();
      if (v48)
      {
        sub_10074F2A4();
        v50 = v49;
        v52 = v51;

        v146 = v52;
        v147 = v50;
      }

      else
      {
        v146 = 0;
        v147 = 0;
      }

      v151 = v45;
      v53 = sub_1007446F4();
      if (v53)
      {
      }

      if (qword_100921488 != -1)
      {
        swift_once();
      }

      v54 = sub_100750534();
      sub_10000D0FC(v54, qword_100981AD0);
      v55 = sub_100753C14();
      v56 = v139;
      sub_100750944();
      v57 = v138;
      v150 = v55;
      sub_100750934();
      v58 = *v16;
      v59 = v140;
      (*v16)(v56, v140);
      v60 = v137;
      sub_100750894();
      v58(v57, v59);
      v61 = v136;
      sub_1007508F4();
      v58(v60, v59);
      v62 = v135;
      sub_1007508E4();
      v58(v61, v59);
      sub_100750904();
      v58(v62, v59);
      v63 = v145;
      sub_100750BB4();
      sub_100750BE4();
      if (sub_100753804())
      {
        v64 = v131;
        sub_1001C1510(v63, v131);
        v65 = v130;
      }

      else
      {
        v65 = v130;
        v64 = v131;
        if (v48)
        {
          sub_100753B74();
          v174 = &protocol witness table for Double;
          *(&v173 + 1) = &type metadata for Double;
          v171 = &protocol witness table for Double;
          *&v172 = 0x4020000000000000;
          v170 = &type metadata for Double;
          v169[0] = 0x4024000000000000;
          v168 = &protocol witness table for Double;
          v167 = &type metadata for Double;
          v165 = &protocol witness table for Double;
          v166[0] = 0x4028000000000000;
          v164 = &type metadata for Double;
          v162 = &protocol witness table for Double;
          v163[0] = 0x401C000000000000;
          v161 = &type metadata for Double;
          v159 = &protocol witness table for Double;
          v160[0] = 0x401C000000000000;
          v158 = &type metadata for Double;
          v156 = &protocol witness table for Double;
          v157[0] = 0;
          v155 = &type metadata for Double;
          v154[0] = 0;
        }

        else
        {
          v174 = &protocol witness table for Double;
          *(&v173 + 1) = &type metadata for Double;
          v171 = &protocol witness table for Double;
          *&v172 = 0x4020000000000000;
          v170 = &type metadata for Double;
          v169[0] = 0x4024000000000000;
          v168 = &protocol witness table for Double;
          v167 = &type metadata for Double;
          v165 = &protocol witness table for Double;
          v166[0] = 0x4024000000000000;
          v164 = &type metadata for Double;
          v162 = &protocol witness table for Double;
          v163[0] = 0x401C000000000000;
          v161 = &type metadata for Double;
          v159 = &protocol witness table for Double;
          v160[0] = 0x401C000000000000;
          v158 = &type metadata for Double;
          v156 = &protocol witness table for Double;
          v157[0] = 0x4024000000000000;
          v155 = &type metadata for Double;
          v154[0] = 0x4024000000000000;
        }

        sub_10074A784();
      }

      (*v126)(v65, v64, v144);
      if (v53)
      {
        v66 = sub_100744D34();
        swift_allocObject();
        v67 = sub_100744D24();
        *(&v173 + 1) = v66;
        v174 = sub_1001C3884(&qword_100923048, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
        *&v172 = v67;
      }

      else
      {
        v174 = 0;
        v172 = 0u;
        v173 = 0u;
      }

      v68 = v133;
      v170 = v133;
      v171 = &protocol witness table for LabelPlaceholder;
      v69 = sub_10000D134(v169);
      v70 = v153;
      (*v125)(v69, v153, v68);
      sub_10074A7D4();
      swift_allocObject();
      *&v172 = sub_10074A7C4();
      sub_1001C3884(&qword_10092C068, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
      v71 = v141;
      sub_100750594();
      swift_getOpaqueTypeConformance2();
      v72 = v142;
      sub_100751254();
      v74 = v73;

      (*v124)(v71, v72);
      (*v123)(v70, v68);
      v35 = v152;
      v175 = v152;
      v76 = *(v152 + 2);
      v75 = *(v152 + 3);
      if (v76 >= v75 >> 1)
      {
        sub_10001E46C((v75 > 1), v76 + 1, 1);
        v35 = v175;
      }

      ++v43;
      *(v35 + 2) = v76 + 1;
      *&v35[8 * v76 + 32] = v74;
      a2 = v63;
      v44 = v132;
    }

    while (v143 != v43);
    v30 = v120;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v77 = v121;
  if (sub_100753804())
  {
    sub_1001C1510(a2, v77);
  }

  else
  {
    sub_1001C1848();
  }

  a1 = v122;
  v78 = v77;
  v79 = v144;
  (*(v30 + 32))(v122, v78, v144);
  sub_10074A7A4();
  (*(v30 + 8))(a1, v79);
  v30 = *(v35 + 2);
  if (!v30)
  {
    goto LABEL_51;
  }

  v32 = 0;
  v80 = 0.0;
  v14 = &unk_1009231A0;
  v28 = qword_1007A5810;
  v153 = xmmword_1007A5CF0;
  while (1)
  {
    if (v32 >= *(v35 + 2))
    {
      __break(1u);
      goto LABEL_55;
    }

    v81 = *&v35[8 * v32 + 32];
    v5 = v80 + v81;
    if (v80 + v81 == a3)
    {
      goto LABEL_51;
    }

    if (v80 + v81 >= a3)
    {
      break;
    }

    ++v32;
    sub_10074A7D4();
    sub_10074A754();
    sub_100751034();
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    a2 = swift_allocObject();
    *(a2 + 16) = v153;
    v82 = v145;
    *(a2 + 32) = v145;
    v83 = v82;
    a1 = sub_100751044();
    sub_100753454();
    v4 = v84;

    v80 = v5 + v4;
    if (v30 == v32)
    {
      goto LABEL_51;
    }
  }

  sub_10000C888(&v172, *(&v173 + 1));
  a2 = v145;
  sub_100750574();
  v86 = a3 + a4 + v85;
  if (v86 <= v5)
  {
LABEL_51:
    v107 = v35;
    goto LABEL_52;
  }

  v16 = v35;
  a3 = v86 - v5;
  v4 = (v32 + 1);
  v5 = (v86 - v5) / v4 * 0.5;
  if (qword_100921488 != -1)
  {
    goto LABEL_57;
  }

LABEL_43:
  v87 = sub_100750534();
  v88 = sub_10000D0FC(v87, qword_100981AD0);
  v89 = v114;
  (*(*(v87 - 8) + 16))(v114, v88, v87);
  v91 = v115;
  v90 = v116;
  (*(v115 + 104))(v89, enum case for FontSource.useCase(_:), v116);
  v170 = v90;
  v171 = &protocol witness table for FontSource;
  v92 = sub_10000D134(v169);
  (*(v91 + 16))(v92, v89, v90);
  v93 = v117;
  sub_100750B14();
  (*(v91 + 8))(v89, v90);
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v94 = swift_allocObject();
  *(v94 + 16) = v153;
  *(v94 + 32) = a2;
  v95 = a2;
  v96 = sub_100751044();
  v97 = v119;
  sub_100750544();
  v99 = v98;

  (*(v118 + 8))(v93, v97);
  v100 = (a3 + v5 + v99) / v4;
  v101 = swift_allocObject();
  *(v101 + 16) = v153;
  *(v101 + 32) = v95;
  v102 = v95;
  v103 = sub_100751044();
  sub_100753454();
  v105 = v104;

  if (v100 < v105)
  {
    v105 = v100;
  }

  v106 = *(v16 + 2);
  if (v106)
  {
    v169[0] = _swiftEmptyArrayStorage;
    sub_10001E46C(0, v106, 0);
    v107 = v169[0];
    v108 = *(v169[0] + 16);
    v109 = 32;
    do
    {
      v110 = *&v16[v109];
      v169[0] = v107;
      v111 = v107[3];
      if (v108 >= v111 >> 1)
      {
        sub_10001E46C((v111 > 1), v108 + 1, 1);
        v107 = v169[0];
      }

      v107[2] = v108 + 1;
      *&v107[v108 + 4] = v105 + v110;
      v109 += 8;
      ++v108;
      --v106;
    }

    while (v106);
  }

  else
  {

    v107 = _swiftEmptyArrayStorage;
  }

LABEL_52:
  sub_10000C620(&v172);
  return v107;
}

void sub_1001C2EB0()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_100921488 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_100981AD0);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(sub_100745C84());
  *(v1 + v11) = sub_100745C74();
  v16 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_shadowView;
  sub_100743034();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_roundedCornerView;
  sub_100746ED4();
  *(v1 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = v1 + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_hasArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_clickAction) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer) = 0;
  v19 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView;
  sub_1007433C4();
  *(v1 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100754644();
  __break(1u);
}

double sub_1001C3210(uint64_t a1, void *a2)
{
  v3 = sub_10000C518(&qword_10092C060, qword_1007B0A30);
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = v44 - v4;
  v5 = sub_10074A7B4();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = v44 - v8;
  v9 = sub_100750954();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v44 - v14;
  __chkstk_darwin(v16);
  v18 = v44 - v17;
  __chkstk_darwin(v19);
  v21 = v44 - v20;
  __chkstk_darwin(v22);
  v24 = v44 - v23;
  __chkstk_darwin(v25);
  v46 = v44 - v26;
  v53 = sub_100750BD4();
  v51 = *(v53 - 8);
  *&v27 = __chkstk_darwin(v53).n128_u64[0];
  v45 = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 traitCollection];
  v44[2] = sub_1007446E4();
  v44[1] = v30;
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921488 != -1)
  {
    swift_once();
  }

  v31 = sub_100750534();
  sub_10000D0FC(v31, qword_100981AD0);
  v32 = sub_100753C14();
  sub_100750944();
  v47 = v32;
  sub_100750934();
  v33 = *(v10 + 8);
  v33(v12, v9);
  sub_100750894();
  v33(v15, v9);
  sub_1007508F4();
  v33(v18, v9);
  sub_1007508E4();
  v33(v21, v9);
  sub_100750904();
  v33(v24, v9);
  sub_100750BB4();
  v34 = v45;
  sub_100750BE4();
  if (sub_100753804())
  {
    v35 = v48;
    sub_1001C1510(v29, v48);
  }

  else
  {
    v35 = v48;
    sub_1001C1848();
  }

  (*(v49 + 32))(v52, v35, v50);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v36 = v53;
  v57[3] = v53;
  v57[4] = &protocol witness table for LabelPlaceholder;
  v37 = sub_10000D134(v57);
  v38 = v51;
  (*(v51 + 16))(v37, v34, v36);
  sub_10074A7D4();
  swift_allocObject();
  *&v58 = sub_10074A7C4();
  sub_1001C3884(&qword_10092C068, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  v39 = v54;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v40 = v56;
  sub_100751254();
  v42 = v41;

  (*(v55 + 8))(v39, v40);
  (*(v38 + 8))(v34, v36);
  return v42;
}

uint64_t sub_1001C3884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001C38CC(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_borderColor);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_borderColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_10000D198();
  a1 = a1;
  v4 = v7;
  v5 = sub_100753FC4();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_1001C3C14();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

double sub_1001C39AC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_backgroundGradientColors);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_backgroundGradientColors) = a1;
  if (!a1)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!v2 || (v3 = , v4 = sub_10011CDF0(v3, v2), , (v4 & 1) == 0))
  {
LABEL_6:
    sub_1001C3D1C();
  }

  return result;
}

void sub_1001C3A44(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchResultBackgroundView();
  objc_msgSendSuper2(&v10, "applyLayoutAttributes:", a1);
  type metadata accessor for SearchCollectionLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v1 layer];
    [v6 setCornerRadius:*(v4 + OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_cornerRadius)];

    [v1 setBackgroundColor:*(v4 + OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_backgroundColor)];
    v7 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_borderColor);
    v8 = v7;
    sub_1001C38CC(v7);

    sub_1001C39AC(v9);
  }
}

void sub_1001C3BBC(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for SearchResultBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_1001C3C14();
  sub_1001C3D1C();
}

void sub_1001C3C14()
{
  v1 = [v0 layer];
  v2 = v1;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_borderColor;
  v4 = 1.0;
  if (!*&v0[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_borderColor])
  {
    v4 = 0.0;
  }

  [v1 setBorderWidth:v4];

  v5 = [v0 layer];
  v6 = *&v0[v3];
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  [v5 setBorderColor:v7];

  v8 = [v0 layer];
  [v8 setNeedsDisplay];
}

char *sub_1001C3D1C()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_backgroundGradientColors];
  v2 = &OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_clickAction;
  if (!v1)
  {
    v5 = OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_gradientLayer;
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_gradientLayer];
    if (v6)
    {
      [v6 removeFromSuperlayer];
      v7 = *&v0[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v5] = 0;

    goto LABEL_25;
  }

  v3 = OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_gradientLayer;
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_gradientLayer];
  if (v4)
  {
  }

  else
  {
    v8 = objc_allocWithZone(CAGradientLayer);

    v9 = [v8 init];
    v10 = [v0 layer];
    [v10 addSublayer:v9];

    v11 = *&v0[v3];
    *&v0[v3] = v9;

    v4 = *&v0[v3];
    if (!v4)
    {
LABEL_19:

      goto LABEL_25;
    }
  }

  v12 = v4;
  v13 = [v0 layer];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v12 setFrame:{v15, v17, v19, v21}];
  v22 = *&v0[v3];
  if (!v22)
  {
    goto LABEL_19;
  }

  if (v1 >> 62)
  {
    v23 = sub_100754664();
    if (v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_10:
      v35 = v0;
      v38 = _swiftEmptyArrayStorage;
      v24 = v22;
      result = sub_10001E288(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = 0;
      v27 = v38;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v28 = sub_100754574();
        }

        else
        {
          v28 = *(v1 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = [v28 CGColor];
        type metadata accessor for CGColor(0);
        v37 = v31;

        *&v36 = v30;
        v38 = v27;
        v33 = v27[2];
        v32 = v27[3];
        if (v33 >= v32 >> 1)
        {
          sub_10001E288((v32 > 1), v33 + 1, 1);
          v0 = v35;
          v27 = v38;
        }

        ++v26;
        v27[2] = v33 + 1;
        sub_10000C610(&v36, &v27[4 * v33 + 4]);
      }

      while (v23 != v26);

      v2 = &OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_clickAction;
      goto LABEL_24;
    }
  }

  v24 = v22;

LABEL_24:
  isa = sub_100753294().super.isa;

  [v24 setColors:isa];

LABEL_25:
  result = *&v0[v2[17]];
  if (result)
  {
    return [result setNeedsDisplay];
  }

  return result;
}

id sub_1001C40E0(void *a1)
{
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_borderColor] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_backgroundGradientColors] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_gradientLayer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchResultBackgroundView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1001C4194()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t SmallGameCenterPlayerLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v106 = a1;
  v102 = a2;
  v101 = sub_100750354();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100750F54();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v66 - v15;
  v98 = sub_100750F84();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100748884();
  v109 = *(v105 - 8);
  v17 = v109;
  __chkstk_darwin(v105);
  v88 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1007488A4();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v85 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1007488C4();
  v107 = *(v75 - 8);
  v20 = v107;
  __chkstk_darwin(v75);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v22;
  v90 = sub_1007488F4();
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(v6 + 21, v6[24]);
  v123.origin.x = a3;
  v123.origin.y = a4;
  v123.size.width = a5;
  v123.size.height = a6;
  CGRectGetMinX(v123);
  v124.origin.x = a3;
  v124.origin.y = a4;
  v124.size.width = a5;
  v124.size.height = a6;
  CGRectGetMinY(v124);
  sub_100753B24();
  sub_100750394();
  sub_10000C518(&qword_10092C0B8, &unk_1007B0A80);
  v24 = *(sub_1007488D4() - 8);
  v86 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v87 = v26;
  *(v26 + 16) = xmmword_1007A6580;
  v69 = v26 + v25;
  v103 = v7;
  v27 = v7[34];
  v28 = v7[35];
  v29 = sub_10000C888(v7 + 31, v27);
  v121 = v27;
  v122 = *(v28 + 8);
  v30 = sub_10000D134(&v120);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v82 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v31 = *(v20 + 104);
  v83 = v20 + 104;
  v84 = v31;
  v31(v22);
  v81 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v32 = v108;
  v33 = *(v108 + 104);
  v79 = v108 + 104;
  v80 = v33;
  v34 = v85;
  v33(v85);
  v118 = &type metadata for Double;
  v119 = &protocol witness table for Double;
  v117 = 0;
  v78 = sub_10000C518(&unk_100931370, &unk_1007B2560);
  v77 = *(v17 + 72);
  v35 = v109;
  v36 = swift_allocObject();
  v76 = xmmword_1007A5A00;
  *(v36 + 16) = xmmword_1007A5A00;
  sub_100748854();
  v114 = v36;
  v73 = sub_1001C5D68(&qword_10092C0C0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v72 = sub_10000C518(&unk_100931380, &unk_1007B0A90);
  v74 = sub_1001C4F00();
  v37 = v88;
  v38 = v105;
  sub_1007543A4();
  v39 = v103;
  v40 = v67;
  sub_1007488B4();
  v41 = *(v35 + 8);
  v109 = v35 + 8;
  v71 = v41;
  v41(v37, v38);
  v42 = *(v32 + 8);
  v108 = v32 + 8;
  v70 = v42;
  v43 = v34;
  v44 = v104;
  v42(v34, v104);
  v45 = *(v107 + 8);
  v107 += 8;
  v68 = v45;
  v46 = v75;
  v45(v40, v75);
  sub_1000F4268(&v117);
  sub_10000C620(&v120);
  v47 = v39;
  v48 = v39[29];
  v49 = v47[30];
  v50 = sub_10000C888(v47 + 26, v48);
  v121 = v48;
  v122 = *(v49 + 8);
  v51 = sub_10000D134(&v120);
  (*(*(v48 - 8) + 16))(v51, v50, v48);
  v84(v40, v82, v46);
  v80(v43, v81, v44);
  v119 = &protocol witness table for Double;
  v118 = &type metadata for Double;
  v117 = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = v76;
  sub_100748854();
  v114 = v52;
  v53 = v105;
  sub_1007543A4();
  v54 = v103;
  sub_1007488B4();
  v71(v37, v53);
  v70(v43, v44);
  v68(v40, v46);
  sub_1000F4268(&v117);
  sub_10000C620(&v120);
  v55 = v89;
  sub_100748894();
  v56 = v90;
  v121 = v90;
  v122 = sub_1001C5D68(&qword_10092C0D0, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  v57 = sub_10000D134(&v120);
  v58 = v91;
  (*(v91 + 16))(v57, v55, v56);
  sub_10000C824((v54 + 21), &v117);
  v59 = v54[5];
  v115 = &type metadata for CGFloat;
  v116 = &protocol witness table for CGFloat;
  v114 = v59;
  v60 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v61 = *(v93 + 104);
  v62 = v95;
  v61(v92, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v95);
  v113 = 0;
  v112 = 0u;
  v111 = 0u;
  v110[3] = sub_1007507D4();
  v110[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v110);
  sub_1007507C4();
  v61(v96, v60, v62);
  v63 = v94;
  sub_100750F74();
  v64 = v99;
  sub_100750F64();
  (*(v100 + 8))(v64, v101);
  sub_100750314();
  (*(v97 + 8))(v63, v98);
  return (*(v58 + 8))(v55, v56);
}

unint64_t sub_1001C4F00()
{
  result = qword_10092C0C8;
  if (!qword_10092C0C8)
  {
    sub_10000C724(&unk_100931380, &unk_1007B0A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C0C8);
  }

  return result;
}

void SmallGameCenterPlayerLayout.Metrics.avatarInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t SmallGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_10000C620((v1 + 48));

  return sub_100012160(a1, v1 + 48);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameTopSpace.setter(__int128 *a1)
{
  sub_10000C620((v1 + 88));

  return sub_100012160(a1, v1 + 88);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameBottomSpace.setter(__int128 *a1)
{
  sub_10000C620((v1 + 128));

  return sub_100012160(a1, v1 + 128);
}

double SmallGameCenterPlayerLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_1001C51C4(a1, v3, a2, a3);
}

double sub_1001C51C4(uint64_t a1, void *a2, double a3, double a4)
{
  v75 = a1;
  v77 = sub_100754724();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100748884();
  v81 = *(v79 - 8);
  v7 = v81;
  __chkstk_darwin(v79);
  v68 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1007488A4();
  v82 = *(v78 - 8);
  __chkstk_darwin(v78);
  v61 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1007488C4();
  v80 = *(v57 - 8);
  v10 = v80;
  __chkstk_darwin(v57);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v12;
  v72 = sub_1007488F4();
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_10092C0B8, &unk_1007B0A80);
  v14 = *(sub_1007488D4() - 8);
  v69 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v70 = v16;
  *(v16 + 16) = xmmword_1007A6580;
  v50 = v16 + v15;
  v17 = a2[34];
  v18 = a2[35];
  v19 = sub_10000C888(a2 + 31, v17);
  v88 = v17;
  v89 = *(v18 + 8);
  v20 = sub_10000D134(v87);
  (*(*(v17 - 8) + 16))(v20, v19, v17);
  v65 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v21 = *(v10 + 104);
  v66 = v10 + 104;
  v67 = v21;
  v21(v12);
  v64 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v22 = *(v82 + 104);
  v62 = v82 + 104;
  v63 = v22;
  v23 = v61;
  v24 = v78;
  v22(v61);
  v85 = &type metadata for Double;
  v86 = &protocol witness table for Double;
  v84 = 0;
  v60 = sub_10000C518(&unk_100931370, &unk_1007B2560);
  v59 = *(v7 + 72);
  v25 = v81;
  v53 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v26 = swift_allocObject();
  v58 = xmmword_1007A5A00;
  *(v26 + 16) = xmmword_1007A5A00;
  sub_100748854();
  v83 = v26;
  v55 = sub_1001C5D68(&qword_10092C0C0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v54 = sub_10000C518(&unk_100931380, &unk_1007B0A90);
  v56 = sub_1001C4F00();
  v27 = v68;
  v28 = v79;
  sub_1007543A4();
  v29 = v49;
  v30 = v23;
  sub_1007488B4();
  v31 = *(v25 + 8);
  v81 = v25 + 8;
  v52 = v31;
  v32 = v27;
  v31(v27, v28);
  v33 = *(v82 + 8);
  v82 += 8;
  v51 = v33;
  v33(v30, v24);
  v48 = *(v80 + 8);
  v80 += 8;
  v34 = v29;
  v35 = v57;
  v48(v29, v57);
  sub_1000F4268(&v84);
  sub_10000C620(v87);
  v37 = a2[29];
  v36 = a2[30];
  v38 = sub_10000C888(a2 + 26, v37);
  v88 = v37;
  v89 = *(v36 + 8);
  v39 = sub_10000D134(v87);
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  v67(v34, v65, v35);
  v40 = v78;
  v63(v30, v64, v78);
  v86 = &protocol witness table for Double;
  v85 = &type metadata for Double;
  v84 = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = v58;
  sub_100748854();
  v83 = v41;
  v42 = v79;
  sub_1007543A4();
  sub_1007488B4();
  v52(v32, v42);
  v51(v30, v40);
  v48(v34, v35);
  sub_1000F4268(&v84);
  sub_10000C620(v87);
  v43 = v71;
  sub_100748894();
  sub_1001C5D68(&qword_10092C0D8, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  v44 = v72;
  sub_100750404();
  v45 = a2[19];
  sub_10000C888(a2 + 16, v45);
  v46 = v74;
  sub_100536120(v45);
  sub_100750564();
  (*(v76 + 8))(v46, v77);
  (*(v73 + 8))(v43, v44);
  return a3;
}

uint64_t sub_1001C5B88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C5BD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001C5C6C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1001C5CA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C5CF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001C5D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001C5DB0()
{
  v1 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v1 - 8);
  v59 = v48 - v2;
  v3 = sub_10000C518(&unk_10092E4C0, &unk_1007B0C40);
  __chkstk_darwin(v3 - 8);
  v5 = v48 - v4;
  v6 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v6 - 8);
  v8 = v48 - v7;
  v9 = sub_100752874();
  __chkstk_darwin(v9 - 8);
  v56 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v58 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = v48 - v14;
  v15 = sub_1007440E4();
  v63 = *(v15 - 8);
  __chkstk_darwin(v15);
  v57 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = v48 - v18;
  v19 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0xE600000000000000;
  v22 = 0x74696D627573;
  v23 = &enum case for SearchOrigin.userText(_:);
  if (v20 && v19)
  {
    v24 = v20;
    ObjectType = swift_getObjectType();
    v26 = v19;
    if (sub_10044C114(ObjectType, v24))
    {
      (*(v24 + 32))(ObjectType, v24);
      v21 = 0xE900000000000074;
      v22 = 0x6E694874736F6867;
      v23 = &enum case for SearchOrigin.ghostHint(_:);
    }

    else
    {
      v23 = &enum case for SearchOrigin.userText(_:);
    }
  }

  v27 = v64;
  (*(v63 + 104))(v64, *v23, v15);
  v28 = [v19 text];
  if (v28)
  {
    v29 = v28;
    v30 = sub_100753094();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v51 = sub_10000C518(&qword_10092C1F8, &qword_1007B0C50);
      inited = swift_initStackObject();
      v53 = v5;
      v35 = inited;
      v50 = xmmword_1007A97A0;
      *(inited + 16) = xmmword_1007A97A0;
      v54 = v8;
      v55 = v15;
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = v22;
      v49 = v22;
      *(inited + 56) = v21;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x6570795465676170;
      *(inited + 88) = 0xE800000000000000;
      *(inited + 96) = 0x686372616553;
      *(inited + 104) = 0xE600000000000000;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x6554686372616573;
      *(inited + 136) = 0xEA00000000006D72;
      *(inited + 144) = v30;
      *(inited + 152) = v32;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 0x72556E6F69746361;
      *(inited + 216) = &type metadata for String;
      *(inited + 184) = 0xE90000000000006CLL;
      *(inited + 192) = 0;
      *(inited + 200) = 0xE000000000000000;

      sub_100414AE8(v35);
      swift_setDeallocating();
      v48[2] = sub_10000C518(&qword_10092C200, &qword_1007B0C58);
      swift_arrayDestroy();
      sub_10000C518(&qword_10092C208, &qword_1007B0C60);
      sub_100752C84();
      v52 = v30;
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1007A5620;
      sub_100752C44();
      sub_100752C74();
      sub_100752C54();
      sub_1001A994C(v36);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1007465E4();
      swift_allocObject();
      v48[1] = sub_1007465D4();
      v37 = swift_initStackObject();
      *(v37 + 16) = v50;
      *(v37 + 32) = 0x79546E6F69746361;
      v38 = v49;
      *(v37 + 40) = 0xEA00000000006570;
      *(v37 + 48) = v38;
      *(v37 + 56) = v21;
      *(v37 + 72) = &type metadata for String;
      *(v37 + 80) = 0x6570795465676170;
      *(v37 + 88) = 0xE800000000000000;
      *(v37 + 96) = 0x686372616553;
      *(v37 + 104) = 0xE600000000000000;
      *(v37 + 120) = &type metadata for String;
      *(v37 + 128) = 1836213620;
      *(v37 + 136) = 0xE400000000000000;
      *(v37 + 144) = v30;
      *(v37 + 152) = v32;
      *(v37 + 168) = &type metadata for String;
      *(v37 + 176) = 0x7954746567726174;
      *(v37 + 216) = &type metadata for String;
      *(v37 + 184) = 0xEA00000000006570;
      *(v37 + 192) = 0x6E6F74747562;
      *(v37 + 200) = 0xE600000000000000;

      sub_100414AE8(v37);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_100747B14();
      swift_allocObject();
      v51 = sub_100747B04();
      sub_10000C518(&unk_10092C210, &qword_1007B0C68);
      sub_1007524D4();
      *(swift_allocObject() + 16) = xmmword_1007A6580;
      sub_100743EC4();
      sub_100743EC4();
      sub_100752864();
      v39 = v62;
      sub_100752604();
      v40 = sub_100741264();
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      v41 = v63;
      (*(v63 + 16))(v57, v64, v55);
      v42 = sub_1007440D4();
      (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
      v44 = v60;
      v43 = v61;
      (*(v60 + 16))(v58, v39, v61);
      v45 = sub_100743FE4();
      (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
      sub_1007440C4();
      swift_allocObject();

      v46 = sub_100744084();

      (*(v44 + 8))(v62, v43);
      (*(v41 + 8))(v64, v55);
      return v46;
    }

    (*(v63 + 8))(v64, v15);
  }

  else
  {
    (*(v63 + 8))(v27, v15);
  }

  return 0;
}

char *sub_1001C67FC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100752AC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_scribbleInteraction] = 0;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_onSnapshotDidUpdate;
  sub_10000C518(&unk_10092C220, &qword_1007B0C70);
  swift_allocObject();
  *&v1[v8] = sub_100752F04();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_textField] = a1;
  v1[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled] = 0;
  v1[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate] = 0;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v15, "init");
  [v9 setDelegate:v10];
  [v9 addTarget:v10 action:"textFieldDidEdit:" forControlEvents:983040];
  v11 = [objc_allocWithZone(UIScribbleInteraction) initWithDelegate:v10];
  v12 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_scribbleInteraction];
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_scribbleInteraction] = v11;
  v13 = v11;

  [v9 addInteraction:v13];
  sub_100752A44();
  sub_100753C74();

  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_1001C6A10(uint64_t a1)
{
  v2 = sub_100747B34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    v7 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = v8;
      v36 = v5;
      ObjectType = swift_getObjectType();
      v13 = v10 + 8;
      v12 = *(v10 + 8);
      v14 = v7;
      v15 = v10;
      v16 = v14;
      v34 = ObjectType;
      v35 = v13;
      v32 = v15;
      v33 = v12;
      (v12)(ObjectType);
      if (v17)
      {
        v30 = v3;
        v31 = v2;
        v29 = v16;
        v18 = [v16 text];
        if (v18)
        {
          v19 = v18;
          v20 = sub_100753094();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v5 = v36;
        v37.value._countAndFlagsBits = v20;
        v37.value._object = v22;
        v23 = sub_100753134(v37);

        v3 = v30;
        if (v23)
        {
          v24 = v29;
          v33(v34, v32);
        }

        else
        {
        }

        v2 = v31;
      }

      else
      {

        v5 = v36;
      }
    }

    *(a1 + v6) = 0;
    v25 = [v7 text];
    if (v25)
    {
      v26 = v3;
      v27 = v25;
      sub_100753094();

      v3 = v26;
    }

    v28 = [v7 markedTextRange];
    if (v28)
    {
    }

    sub_100747B24();
    sub_100752EF4();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1001C6D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = [a1 selectedTextRange];
  if (!v9)
  {
    v15 = 1;
    return v15 & 1;
  }

  v10 = v9;
  sub_1001C756C();
  v11 = [v10 end];
  v12 = [a1 endOfDocument];
  v13 = sub_100753FC4();

  v14 = a3 < 1 || sub_100753194() != 0;
  v16 = [a1 markedTextRange];
  if (v16)
  {
  }

  else if (!v14 && (v13 & 1) != 0)
  {
    v17 = 1;
    goto LABEL_10;
  }

  v17 = 0;
LABEL_10:
  v18 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_scribbleInteraction);
  v19 = v17;
  if (v18)
  {
    v19 = v17 | [v18 isHandlingWriting];
  }

  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled) = v19 & 1;
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  if (v20)
  {
    v21 = a1 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v17;
  }

  if (v22 == 1)
  {
    v23 = v20;
    ObjectType = swift_getObjectType();
    v25 = a1;
    v26 = sub_10044C114(ObjectType, v23);
    if (v26)
    {
      (*(v23 + 16))(0, 0, ObjectType, v23);
    }

    v15 = !v26;
  }

  else
  {
    v15 = 1;
  }

  return v15 & 1;
}

uint64_t sub_1001C714C(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled))
  {
    return 0;
  }

  v5 = *(*v2 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (!v6 || v5 == 0)
  {
    return 0;
  }

  v8 = v6;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;
  v12 = v10(a1, a2, ObjectType, v8);

  return v12 & 1;
}

void sub_1001C725C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100747B34();
  __chkstk_darwin(v9);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v12;
    v40 = v10;
    *(a1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    ObjectType = swift_getObjectType();
    v15 = *(a3 + 16);

    v15(a4, a5, ObjectType, a3);
    v16 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = v17;
      v20 = swift_getObjectType();
      v21 = *(v19 + 8);
      v22 = v16;
      v37 = v21;
      v21(v20, v19);
      if (v23)
      {
        v35 = v20;
        v36 = v22;
        v24 = [v22 text];
        if (v24)
        {
          v25 = v24;
          v26 = sub_100753094();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v41.value._countAndFlagsBits = v26;
        v41.value._object = v28;
        v29 = sub_100753134(v41);

        v30 = v36;
        if (v29)
        {
          v37(v35, v19);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    *(a1 + v13) = 0;
    v31 = [v16 text];
    if (v31)
    {
      v32 = v31;
      sub_100753094();
    }

    v33 = [v16 markedTextRange];
    if (v33)
    {
    }

    v34 = v38;
    sub_100747B24();
    sub_100752EF4();
    (*(v39 + 8))(v34, v40);
  }
}

unint64_t sub_1001C756C()
{
  result = qword_1009327F0;
  if (!qword_1009327F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009327F0);
  }

  return result;
}

double sub_1001C75CC()
{
  v0 = sub_100746C54();
  sub_10014A070(v0, v1);
  v2 = sub_100746C44();

  return sub_10014A07C(v2, v3);
}

double sub_1001C76B0(uint64_t a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v40 = sub_10074A5B4();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10074A5D4();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10074CD14();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100038D38();
  if (qword_100921290 != -1)
  {
    swift_once();
  }

  v37 = sub_100750534();
  sub_10000D0FC(v37, qword_1009814E8);
  v13 = [a6 traitCollection];
  v46 = a6;
  v14 = v13;
  v15 = sub_100753C14();

  sub_100746C54();
  v16 = sub_10074F3F4();
  v51[3] = v16;
  v17 = sub_1001C7CF8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v36[1] = a1;
  v18 = v17;
  v51[4] = v17;
  v19 = sub_10000D134(v51);
  v20 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v21 = *(*(v16 - 8) + 104);
  v21(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  v22 = v15;
  v36[0] = v12;
  v23 = v22;
  sub_10074FC74();
  sub_10000C620(v51);
  v38 = v23;
  sub_10074CD04();
  sub_10074CCE4();
  v24 = *(v47 + 8);
  v47 += 8;
  v24(v11, v45);
  if (qword_100921298 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v37, qword_100981500);
  v25 = [v46 traitCollection];
  v26 = sub_100753C14();

  sub_100746C44();
  v50[3] = v16;
  v50[4] = v18;
  v27 = sub_10000D134(v50);
  v21(v27, v20, v16);
  v28 = v26;
  sub_10074FC74();
  sub_10000C620(v50);
  sub_10074CD04();
  sub_10074CCE4();
  v24(v11, v45);
  if (qword_100920348 != -1)
  {
    swift_once();
  }

  v29 = v40;
  v30 = sub_10000D0FC(v40, qword_10097DCE0);
  (*(v39 + 16))(v41, v30, v29);
  sub_10000C824(v51, v49);
  sub_10000C824(v50, v48);
  v31 = v42;
  sub_10074A5C4();
  sub_1001C7CF8(&unk_100933220, &type metadata accessor for PrivacyDefinitionLayout, &protocol conformance descriptor for PrivacyDefinitionLayout);
  v32 = v44;
  sub_100750404();
  v34 = v33;

  (*(v43 + 8))(v31, v32);
  sub_10000C620(v50);
  sub_10000C620(v51);
  return v34;
}

uint64_t sub_1001C7CF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001C7D54()
{
  result = qword_10092C280;
  if (!qword_10092C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C280);
  }

  return result;
}

uint64_t sub_1001C7DF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v9 = sub_100742CF4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007493D4();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10074A304();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100752614();
  __chkstk_darwin(v18 - 8);
  v66 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v20 - 8);
  v63 = &v55 - v21;
  v22 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v22 - 8);
  v70 = &v55 - v23;
  v62 = sub_10074F4D4();
  v61 = *(v62 - 1);
  __chkstk_darwin(v62);
  v69 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v25 - 8);
  v72 = &v55 - v26;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v55 = v17;
    v56 = v10;
    v57 = v15;
    v58 = v9;
    v59 = v12;
    v60 = *(result + 32);

    v28 = sub_1001C8814(a1, a4);
    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    v31 = sub_10041434C(_swiftEmptyArrayStorage);
    v32 = sub_1006B94B0(a6, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x800000010076FAC0);
    v33 = objc_allocWithZone(type metadata accessor for ScreenshotsGalleryViewController());
    v34 = OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher;
    type metadata accessor for ScreenshotFetcher();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_10041434C(_swiftEmptyArrayStorage);
    *(v35 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v35 + 32) = 0;
    swift_unknownObjectWeakAssign();
    *&v33[v34] = v35;
    v36 = OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_galleryLayout;
    *&v33[v36] = [objc_allocWithZone(type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0)) init];
    *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworks] = a4;
    *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_platform] = v71;
    *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_placeholderImages] = v31;
    sub_1007442C4();
    sub_100752764();

    sub_100752D34();
    *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworkLoader] = v75;
    *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_selectedIndex] = v30;
    v37 = *&v33[v36];

    v38 = sub_10062DFAC(v37, v32);

    v39 = v38;
    v40 = [v39 navigationItem];
    v41 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v39 action:"dismissFrom:"];
    [v40 setRightBarButtonItem:v41];

    *(*&v39[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher] + 32) = &off_10086AF38;
    swift_unknownObjectWeakAssign();

    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v42 = type metadata accessor for StoreNavigationController();
    v43 = objc_allocWithZone(v42);
    *&v43[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = a6;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v78.receiver = v43;
    v78.super_class = v42;

    v45 = objc_msgSendSuper2(&v78, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v45 setDelegate:v45];
    [v45 setModalPresentationStyle:0];
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1007A5CF0;
    *(v46 + 32) = v39;
    sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
    isa = sub_100753294().super.isa;

    [v45 setViewControllers:isa];

    v48 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    v49 = v72;
    v71 = a6;
    sub_1007526C4();
    v50 = *(v48 - 8);
    if ((*(v50 + 48))(v49, 1, v48) == 1)
    {

      return sub_10000C8CC(v72, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      v77 = 0;
      v75 = 0u;
      v76 = 0u;
      (*(v61 + 104))(v69, enum case for FlowPage.viewController(_:), v62);
      v51 = sub_100741264();
      (*(*(v51 - 8) + 56))(v70, 1, 1, v51);
      v52 = sub_100743FE4();
      (*(*(v52 - 8) + 56))(v63, 1, 1, v52);
      v74 = v42;
      v73 = v45;
      v62 = v45;
      sub_1007525F4();
      (*(v64 + 104))(v55, enum case for FlowPresentationContext.infer(_:), v65);
      (*(v67 + 104))(v57, enum case for FlowAnimationBehavior.infer(_:), v68);
      (*(v56 + 104))(v59, enum case for FlowOrigin.inapp(_:), v58);
      sub_100752B44();
      sub_100742CD4();
      swift_allocObject();
      v53 = sub_100742C84();
      v54 = v72;
      sub_1003C1424(v53, 1, v71, v72);

      return (*(v50 + 8))(v54, v48);
    }
  }

  return result;
}

unint64_t sub_1001C8814(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_18:
    v4 = sub_100754664();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      sub_100754574();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    sub_10074F3D4();
    sub_1001CB934(&unk_100928A50, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    v6 = sub_100753014();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }
}

unint64_t sub_1001C8980(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v7 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v8 = sub_100754664();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = sub_100754574();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    sub_100016C60(0, a3, a4);
    v12 = sub_100753FC4();

    if (v12)
    {
      return v9;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_1001C8A88(char a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v7 - v5;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      sub_100746914();

      memset(v7, 0, sizeof(v7));
      sub_10074C914();

      sub_10000C8CC(v7, &unk_100923520, &qword_1007A5A70);
      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_1001C8BE0(char a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v7 - v5;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100747C04();
      memset(v7, 0, sizeof(v7));
      sub_10074C914();

      sub_10000C8CC(v7, &unk_100923520, &qword_1007A5A70);
      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_1001C8D20()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_1001C8DA4(void *a1, uint64_t a2, uint64_t a3)
{
  v107 = a3;
  v5 = sub_1007469A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v104 = v7;
  v105 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074E984();
  v110 = *(v8 - 8);
  __chkstk_darwin(v8);
  v101 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10000C518(&qword_10092C380, &unk_1007B0E90);
  __chkstk_darwin(v109);
  v111 = &v93 - v10;
  v11 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v108 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v93 - v12;
  v14 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  __chkstk_darwin(v14);
  v16 = &v93 - v15;
  v17 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v17 - 8);
  v19 = &v93 - v18;
  v20 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v20 - 8);
  v103 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v112 = &v93 - v23;
  __chkstk_darwin(v24);
  v113 = &v93 - v25;
  type metadata accessor for ProductMediaCollectionViewCell(0);
  v114 = swift_dynamicCastClass();
  if (!v114)
  {
    return;
  }

  v106 = v8;
  v99 = v6;
  v100 = v5;
  sub_100743FA4();
  sub_1001CB934(&qword_10092C388, &type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
  v26 = a1;
  sub_1007468B4();
  v27 = v116;
  if (!v116)
  {

    return;
  }

  v102 = v26;
  if (!swift_weakLoadStrong())
  {

    return;
  }

  v96 = sub_100743F94();
  v98 = v27;
  v94 = sub_100743F34();
  swift_getKeyPath();
  v97 = a2;
  sub_100746914();

  sub_100028CD0(&v16[*(v14 + 48)], v19);
  v28 = v108;
  if ((*(v108 + 48))(v19, 1, v11) == 1)
  {
    sub_10000C8CC(v16, &unk_10093D6E0, &unk_1007A6080);
    sub_10000C8CC(v19, &unk_10093D6E0, &unk_1007A6080);
    v29 = v110;
    v30 = v113;
    v93 = *(v110 + 56);
    v93(v113, 1, 1, v106);
  }

  else
  {
    swift_getKeyPath();
    v30 = v113;
    sub_1007525B4();

    (*(v28 + 8))(v19, v11);
    v29 = v110;
    v93 = *(v110 + 56);
    v93(v30, 0, 1, v106);
    sub_10000C8CC(v16, &unk_10093D6E0, &unk_1007A6080);
  }

  v31 = v111;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  v32 = v112;
  sub_1007525B4();

  v33 = v13;
  v34 = v32;
  (*(v28 + 8))(v33, v11);
  v35 = v106;
  v93(v32, 0, 1, v106);
  v36 = *(v109 + 48);
  sub_100028D40(v30, v31);
  sub_100028D40(v34, v31 + v36);
  v37 = *(v29 + 48);
  if (v37(v31, 1, v35) == 1)
  {
    sub_10000C8CC(v34, &unk_100933370, &unk_1007A8CE0);
    sub_10000C8CC(v30, &unk_100933370, &unk_1007A8CE0);
    v38 = v37(v31 + v36, 1, v35);
    v39 = v102;
    v40 = v94;
    if (v38 == 1)
    {
      sub_10000C8CC(v31, &unk_100933370, &unk_1007A8CE0);
      v41 = v100;
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  v42 = v103;
  sub_100028D40(v31, v103);
  v43 = v37(v31 + v36, 1, v35);
  v39 = v102;
  if (v43 == 1)
  {
    sub_10000C8CC(v112, &unk_100933370, &unk_1007A8CE0);
    sub_10000C8CC(v113, &unk_100933370, &unk_1007A8CE0);
    (*(v29 + 8))(v42, v106);
    v40 = v94;
LABEL_14:
    sub_10000C8CC(v31, &qword_10092C380, &unk_1007B0E90);
    v41 = v100;
    goto LABEL_15;
  }

  v52 = v31 + v36;
  v53 = v101;
  v54 = v106;
  (*(v29 + 32))(v101, v52, v106);
  sub_1001CB934(&qword_1009350D0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v55 = sub_100753014();
  v56 = *(v29 + 8);
  v56(v53, v54);
  sub_10000C8CC(v112, &unk_100933370, &unk_1007A8CE0);
  sub_10000C8CC(v113, &unk_100933370, &unk_1007A8CE0);
  v56(v42, v54);
  sub_10000C8CC(v31, &unk_100933370, &unk_1007A8CE0);
  v41 = v100;
  v40 = v94;
  if (v55)
  {
    goto LABEL_27;
  }

LABEL_15:
  v44 = v40 >> 62;
  if (v40 >> 62)
  {
    v45 = sub_100754664();
  }

  else
  {
    v45 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v96;
  if (!v45)
  {

    v116 = v46;
    goto LABEL_29;
  }

  v47 = v45 - 1;
  if (__OFSUB__(v45, 1))
  {
    goto LABEL_78;
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_79;
  }

  if ((v47 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return;
  }

  if (v47 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

  v48 = *(v40 + 8 * v47 + 32);

  v116 = v46;
  if (!v48)
  {
    goto LABEL_29;
  }

LABEL_23:
  v115 = v48;
  sub_100744514();
  sub_1001CB934(&qword_100929290, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  v49 = sub_100753014();

  if (v49)
  {
LABEL_27:

    LODWORD(v113) = 0;
  }

  else
  {
    v50 = v40 & 0xFFFFFFFFFFFFFF8;
    if (v44)
    {
LABEL_30:
      v51 = sub_100754664();
    }

    else
    {
LABEL_25:
      v51 = *(v50 + 16);
    }

    LODWORD(v113) = v51 > 1;
  }

  v57 = sub_100743F84();
  v44 = v57;
  v116 = _swiftEmptyArrayStorage;
  if (!(v57 >> 62))
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_34;
  }

  while (1)
  {
    v58 = sub_100754664();
LABEL_34:
    if (v58)
    {
      v40 = 0;
      v39 = (v44 & 0xC000000000000001);
      v41 = v44 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v39)
        {
          sub_100754574();
          v59 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
LABEL_45:
            __break(1u);
LABEL_46:
            v60 = v116;
            v41 = v100;
            v39 = v102;
            goto LABEL_48;
          }
        }

        else
        {
          if (v40 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_62;
          }

          v59 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_45;
          }
        }

        if (sub_100746004())
        {

          sub_1007545A4();
          sub_1007545D4();
          sub_1007545E4();
          sub_1007545B4();
        }

        else
        {
        }

        ++v40;
        if (v59 == v58)
        {
          goto LABEL_46;
        }
      }
    }

    v60 = _swiftEmptyArrayStorage;
LABEL_48:

    v44 = *(v60 + 16);
    if (!v44)
    {
      goto LABEL_66;
    }

LABEL_51:
    v116 = _swiftEmptyArrayStorage;
    v46 = &v116;
    sub_1007545C4();
    if ((v44 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:

      v48 = sub_100754574();
      v116 = v46;
      if (v48)
      {
        goto LABEL_23;
      }

LABEL_29:

      v50 = v40 & 0xFFFFFFFFFFFFFF8;
      if (!v44)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }

    v40 = 0;
    while (1)
    {
      v39 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if ((v60 & 0xC000000000000001) != 0)
      {
        sub_100754574();
        if (!sub_100746004())
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v40 >= *(v60 + 16))
        {
          goto LABEL_63;
        }

        if (!sub_100746004())
        {
          goto LABEL_83;
        }
      }

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      ++v40;
      if (v39 == v44)
      {

        v61 = v116;
        v39 = v102;
        goto LABEL_67;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v44 = sub_100754664();
  if (v44)
  {
    goto LABEL_51;
  }

LABEL_66:

  v61 = _swiftEmptyArrayStorage;
LABEL_67:
  v62 = swift_allocObject();
  swift_weakInit();
  v63 = swift_allocObject();
  *(v63 + 2) = v62;
  *(v63 + 3) = v61;
  v64 = v107;
  *(v63 + 4) = v96;
  *(v63 + 5) = v64;
  v65 = v114;
  v66 = (v114 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  v67 = *(v114 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  v68 = *(v114 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler + 8);
  *v66 = sub_1001CBA14;
  v66[1] = v63;

  sub_1000164A8(v67, v68);

  v69 = *(v65 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView);
  if (v69)
  {
    type metadata accessor for PlatformSelectorView();
    v70 = swift_dynamicCastClass();
    if (v70)
    {
      v71 = v70;
      v72 = swift_allocObject();
      swift_weakInit();
      v73 = v99;
      v74 = v105;
      (*(v99 + 16))(v105, v97, v41);
      v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = v113;
      *(v76 + 24) = v72;
      (*(v73 + 32))(v76 + v75, v74, v41);
      v77 = (v71 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
      v78 = *(v71 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
      v79 = v77[1];
      *v77 = sub_1001CBB04;
      v77[1] = v76;
      v80 = v69;

      sub_1000164A8(v78, v79);
    }
  }

  v81 = *(v114 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView);
  v82 = v81;

  if (v81)
  {
    type metadata accessor for PlatformSelectorView();
    v83 = swift_dynamicCastClass();
    if (v83)
    {
      v84 = v83;
      v85 = swift_allocObject();
      swift_weakInit();

      v86 = v99;
      v87 = v105;
      (*(v99 + 16))(v105, v97, v41);
      v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = v113;
      *(v89 + 24) = v85;
      (*(v86 + 32))(v89 + v88, v87, v41);
      v90 = (v84 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
      v91 = *(v84 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
      v92 = v90[1];
      *v90 = sub_1001CBB68;
      v90[1] = v89;

      sub_1000164A8(v91, v92);
    }
  }

  else
  {
  }
}

void sub_1001C9CCC(void *a1, uint64_t a2)
{
  v83 = a2;
  v77 = sub_100742CF4();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1007493D4();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v76 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10074A304();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v74 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752614();
  __chkstk_darwin(v6 - 8);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v8 - 8);
  v81 = &v65 - v9;
  v10 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v10 - 8);
  v80 = &v65 - v11;
  v68 = sub_10074F4D4();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v79 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v13 - 8);
  v82 = &v65 - v14;
  v15 = sub_10074EA34();
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v86 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100748D64();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v85 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v65 - v25;
  swift_getKeyPath();
  v92 = a1;
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v84 = *(v22 + 8);
  v84(v26, v21);
  v97 = _swiftEmptyArrayStorage;
  v27 = *(v98 + 16);
  if (!v27)
  {

    v29 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_11;
    }

LABEL_21:
    if (sub_100754664())
    {
      goto LABEL_12;
    }

LABEL_22:

    return;
  }

  v89 = v20;
  v90 = v18;
  v91 = v17;
  v28 = v98 + 32;
  v29 = _swiftEmptyArrayStorage;
  do
  {
    sub_10000C824(v28, v95);
    sub_10000C824(v95, v94);
    sub_10000C518(&qword_1009242A0, &qword_1007A6400);
    sub_100746024();
    if (swift_dynamicCast())
    {
      v30 = sub_100746004();

      sub_10000C620(v95);
      if (v30)
      {
        sub_100753284();
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v29 = v97;
      }
    }

    else
    {
      sub_10000C620(v95);
    }

    v28 += 40;
    --v27;
  }

  while (v27);

  v18 = v90;
  v17 = v91;
  v20 = v89;
  if (v29 >> 62)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_12:
  sub_100746024();
  sub_1001CB934(&qword_100923AF8, &type metadata accessor for ProductMediaItem, &protocol conformance descriptor for ProductMediaItem);
  sub_1007468B4();
  if (!*&v95[0])
  {
    goto LABEL_22;
  }

  v31 = sub_100746004();

  if (!v31)
  {
    goto LABEL_22;
  }

  v66 = v31;
  swift_getKeyPath();
  v32 = v85;
  sub_100746914();

  swift_getKeyPath();
  v33 = v86;
  sub_1007525B4();

  v84(v32, v21);
  v35 = v87;
  v34 = v88;
  if ((*(v87 + 88))(v33, v88) == enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v35 + 96))(v33, v34);
    (*(v18 + 32))(v20, v33, v17);
    v36 = sub_1001C8814(v66, v29);
    v38 = v20;
    if (v37)
    {
      v39 = 0;
    }

    else
    {
      v39 = v36;
    }

    v89 = v38;
    v40 = sub_100748D54();
    v91 = v17;
    v41 = sub_10041434C(_swiftEmptyArrayStorage);
    v42 = v83;
    v43 = sub_1006B94B0(v83, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x800000010076FAC0);
    v44 = objc_allocWithZone(type metadata accessor for ScreenshotsGalleryViewController());
    v90 = v18;
    v45 = OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher;
    type metadata accessor for ScreenshotFetcher();
    v46 = swift_allocObject();
    *(v46 + 16) = sub_10041434C(_swiftEmptyArrayStorage);
    *(v46 + 32) = 0;
    swift_unknownObjectWeakInit();
    *(v46 + 32) = 0;
    swift_unknownObjectWeakAssign();
    *&v44[v45] = v46;
    v47 = OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_galleryLayout;
    *&v44[v47] = [objc_allocWithZone(type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0)) init];
    *&v44[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworks] = v29;
    *&v44[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_platform] = v40;
    *&v44[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_placeholderImages] = v41;
    sub_1007442C4();
    sub_100752764();

    sub_100752D34();
    *&v44[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworkLoader] = *&v95[0];
    *&v44[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_selectedIndex] = v39;
    v48 = *&v44[v47];

    v49 = sub_10062DFAC(v48, v43);

    v50 = v49;
    v51 = [v50 navigationItem];
    v52 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v50 action:"dismissFrom:"];
    [v51 setRightBarButtonItem:v52];

    *(*&v50[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher] + 32) = &off_10086AF38;
    swift_unknownObjectWeakAssign();

    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v53 = type metadata accessor for StoreNavigationController();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = v42;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v93.receiver = v54;
    v93.super_class = v53;

    v56 = objc_msgSendSuper2(&v93, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v56 setDelegate:v56];
    [v56 setModalPresentationStyle:0];
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1007A5CF0;
    *(v57 + 32) = v50;
    sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
    isa = sub_100753294().super.isa;

    [v56 setViewControllers:isa];

    v59 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    v60 = v82;
    sub_1007526C4();
    v61 = *(v59 - 8);
    if ((*(v61 + 48))(v60, 1, v59) == 1)
    {
      (*(v90 + 8))(v89, v91);

      sub_10000C8CC(v60, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      v96 = 0;
      memset(v95, 0, sizeof(v95));
      (*(v67 + 104))(v79, enum case for FlowPage.viewController(_:), v68);
      v62 = sub_100741264();
      (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
      v63 = sub_100743FE4();
      (*(*(v63 - 8) + 56))(v81, 1, 1, v63);
      v94[3] = v53;
      v94[0] = v56;
      v92 = v56;
      sub_1007525F4();
      (*(v69 + 104))(v74, enum case for FlowPresentationContext.infer(_:), v70);
      (*(v72 + 104))(v76, enum case for FlowAnimationBehavior.infer(_:), v73);
      (*(v75 + 104))(v78, enum case for FlowOrigin.inapp(_:), v77);
      sub_100752B44();
      sub_100742CD4();
      swift_allocObject();
      v64 = sub_100742C84();
      sub_1003C1424(v64, 1, v83, v60);

      (*(v90 + 8))(v89, v91);
      (*(v61 + 8))(v60, v59);
    }
  }

  else
  {

    (*(v35 + 8))(v33, v34);
  }
}

void sub_1001CAC30(void *a1, uint64_t a2)
{
  v109 = a2;
  v3 = sub_100747C14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v95 = v5;
  v96 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10074E984();
  v108 = *(v103 - 8);
  __chkstk_darwin(v103);
  v92 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10000C518(&qword_10092C380, &unk_1007B0E90);
  __chkstk_darwin(v101);
  v105 = &v84 - v7;
  v8 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v8 - 8);
  v99 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v97 = &v84 - v11;
  __chkstk_darwin(v12);
  v100 = &v84 - v13;
  v14 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v14 - 8);
  v93 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v104 = &v84 - v17;
  __chkstk_darwin(v18);
  v102 = &v84 - v19;
  v20 = sub_10074EA34();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v98 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v84 - v28;
  v107 = sub_100748D64();
  v30 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformSelectorView();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v94 = v30;
    v89 = v32;
    v91 = v4;
    v90 = v3;
    v33 = a1;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v34 = *(v25 + 8);
    v34(v29, v24);
    if ((*(v21 + 88))(v23, v20) != enum case for Shelf.ContentsMetadata.productMedia(_:))
    {

      (*(v21 + 8))(v23, v20);
      return;
    }

    v35 = v34;
    (*(v21 + 96))(v23, v20);
    (*(v94 + 32))(v106, v23, v107);
    v36 = sub_100748D54();
    v88 = sub_100748D14();
    v37 = v97;
    v38 = v99;
    sub_100747BB4();
    sub_10000C8CC(v37, &unk_10093D6E0, &unk_1007A6080);
    v39 = v100;
    sub_100028CD0(v38, v100);
    v40 = (*(v25 + 48))(v39, 1, v24);
    v85 = v33;
    v87 = v36;
    v86 = v35;
    if (v40 == 1)
    {
      sub_10000C8CC(v39, &unk_10093D6E0, &unk_1007A6080);
      v41 = 1;
      v42 = v102;
    }

    else
    {
      swift_getKeyPath();
      v42 = v102;
      sub_1007525B4();

      v35(v39, v24);
      v41 = 0;
    }

    v43 = *(v108 + 56);
    v44 = v103;
    v43(v42, v41, 1, v103);
    v45 = v98;
    sub_100747C04();
    swift_getKeyPath();
    v46 = v104;
    sub_1007525B4();

    v47 = v45;
    v48 = v42;
    v86(v47, v24);
    v43(v46, 0, 1, v44);
    v49 = *(v101 + 48);
    v50 = v105;
    sub_100028D40(v42, v105);
    sub_100028D40(v46, v50 + v49);
    v51 = *(v108 + 48);
    if (v51(v50, 1, v44) == 1)
    {
      sub_10000C8CC(v46, &unk_100933370, &unk_1007A8CE0);
      v52 = v105;
      sub_10000C8CC(v42, &unk_100933370, &unk_1007A8CE0);
      v53 = v51(v52 + v49, 1, v44);
      v54 = v91;
      v55 = v94;
      v56 = v87;
      if (v53 == 1)
      {
        sub_10000C8CC(v52, &unk_100933370, &unk_1007A8CE0);
LABEL_24:

        v75 = 0;
LABEL_30:
        v76 = swift_allocObject();
        swift_weakLoadStrong();

        (*(v55 + 8))(v106, v107);
        swift_weakInit();

        v77 = v96;
        v78 = v90;
        (*(v54 + 16))(v96, v109, v90);
        v79 = (*(v54 + 80) + 32) & ~*(v54 + 80);
        v80 = swift_allocObject();
        *(v80 + 16) = v75;
        *(v80 + 24) = v76;
        (*(v54 + 32))(v80 + v79, v77, v78);
        v81 = (v89 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
        v82 = *(v89 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler);
        v83 = *(v89 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler + 8);
        *v81 = sub_1001CB8C4;
        v81[1] = v80;

        sub_1000164A8(v82, v83);

        return;
      }
    }

    else
    {
      v57 = v93;
      sub_100028D40(v50, v93);
      v58 = v51(v50 + v49, 1, v44);
      v54 = v91;
      if (v58 != 1)
      {
        v67 = v48;
        v68 = v57;
        v69 = v108;
        v70 = v50 + v49;
        v71 = v92;
        (*(v108 + 32))(v92, v70, v44);
        sub_1001CB934(&qword_1009350D0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
        v72 = v50;
        v73 = sub_100753014();
        v74 = *(v69 + 8);
        v74(v71, v44);
        sub_10000C8CC(v104, &unk_100933370, &unk_1007A8CE0);
        sub_10000C8CC(v67, &unk_100933370, &unk_1007A8CE0);
        v74(v68, v44);
        sub_10000C8CC(v72, &unk_100933370, &unk_1007A8CE0);
        v55 = v94;
        v56 = v87;
        v59 = v88;
        if (v73)
        {
          goto LABEL_24;
        }

LABEL_13:
        v60 = v59 >> 62;
        if (v59 >> 62)
        {
          v61 = sub_100754664();
          if (v61)
          {
LABEL_15:
            v62 = v61 - 1;
            if (__OFSUB__(v61, 1))
            {
              __break(1u);
            }

            else if ((v59 & 0xC000000000000001) == 0)
            {
              if ((v62 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v62 < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v63 = *(v59 + 8 * v62 + 32);

                v111 = v56;
                if (v63)
                {
                  goto LABEL_20;
                }

                goto LABEL_27;
              }

              __break(1u);
              return;
            }

            v63 = sub_100754574();
            v111 = v56;
            if (v63)
            {
LABEL_20:
              v110 = v63;
              sub_100744514();
              sub_1001CB934(&qword_100929290, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
              v64 = sub_100753014();

              if (v64)
              {
                goto LABEL_24;
              }

              v65 = v59 & 0xFFFFFFFFFFFFFF8;
              if (!v60)
              {
                goto LABEL_22;
              }

              goto LABEL_28;
            }

LABEL_27:

            v65 = v59 & 0xFFFFFFFFFFFFFF8;
            if (!v60)
            {
LABEL_22:
              v66 = *(v65 + 16);
LABEL_29:

              v75 = v66 > 1;
              goto LABEL_30;
            }

LABEL_28:
            v66 = sub_100754664();
            goto LABEL_29;
          }
        }

        else
        {
          v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v61)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_27;
      }

      sub_10000C8CC(v104, &unk_100933370, &unk_1007A8CE0);
      v52 = v105;
      sub_10000C8CC(v48, &unk_100933370, &unk_1007A8CE0);
      (*(v108 + 8))(v57, v44);
      v55 = v94;
      v56 = v87;
    }

    sub_10000C8CC(v52, &qword_10092C380, &unk_1007B0E90);
    v59 = v88;
    goto LABEL_13;
  }
}

uint64_t sub_1001CB874()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001CB8C4()
{
  sub_100747C14();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_1001C8BE0(v1, v2);
}

uint64_t sub_1001CB934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001CB9C4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001CBA38(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1001CBB70()
{
  v0 = sub_1007507B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13[-1] - v5;
  __chkstk_darwin(v7);
  v9 = &v13[-1] - v8;
  sub_100750794();
  sub_100750794();

  sub_1007507A4();

  v10 = *(v1 + 8);
  v10(v3, v0);
  v13[3] = v0;
  v13[4] = &protocol witness table for VerticalStack;
  sub_10000D134(v13);
  sub_1007507A4();
  v10(v6, v0);

  sub_1007507A4();

  v10(v9, v0);
  return sub_10000C620(v13);
}

uint64_t sub_1001CBD7C(uint64_t a1, uint64_t a2)
{
  sub_1001CC150(a2 + 16, v4);
  sub_100012160(v4, v3);
  return sub_100750714();
}

uint64_t sub_1001CBDC4()
{
  sub_1001CC1BC(v0 + 16);
  sub_10000C620((v0 + 64));
  sub_10000C620((v0 + 104));

  return swift_deallocClassInstance();
}

__n128 sub_1001CBE30(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001CBE44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001CBE8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001CBF1C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  WitnessTable = swift_getWitnessTable();
  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return CustomLayout.measure(toFit:with:)(a1, a2, WitnessTable, v9, v10);
}

uint64_t sub_1001CBF94(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  WitnessTable = swift_getWitnessTable();
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return CustomLayout.place(at:with:)(a1, a2, WitnessTable, v13, v14, v15, v16);
}

uint64_t sub_1001CC024(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, WitnessTable);
}

uint64_t sub_1001CC0F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShelfFooterViewLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001CC1F8(void *a1)
{
  if (*v1 == *a1)
  {
    return sub_1007544C4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CC284()
{
  sub_100016994(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int sub_1001CC2E0()
{
  v1 = *v0;
  sub_100754834();
  (*(*v1 + 104))(v3);
  return sub_100754884();
}

Swift::Int sub_1001CC388(uint64_t a1)
{
  sub_100754834();
  (*(**v1 + 104))(v3);
  return sub_100754884();
}

unint64_t sub_1001CC438()
{
  result = qword_10092C510;
  if (!qword_10092C510)
  {
    type metadata accessor for DebugSetting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C510);
  }

  return result;
}

uint64_t sub_1001CC48C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100747064();
  sub_100039C50(v4, qword_10097E3A8);
  v44 = sub_10000D0FC(v4, qword_10097E3A8);
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009809C0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  (v7)(v3, enum case for FontSource.useCase(_:), v0);
  v8 = v7;
  v50 = v7;
  v86 = sub_100750B04();
  v87 = &protocol witness table for StaticDimension;
  v9 = v86;
  v51 = v86;
  sub_10000D134(v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v10 = sub_10000D134(v82);
  v49 = v1[2];
  v49(v10, v3, v0);
  sub_100750B14();
  v46 = v1[1];
  v46(v3, v0);
  *v3 = UIFontTextStyleBody;
  v47 = enum case for FontSource.textStyle(_:);
  v8(v3);
  v48 = v1 + 13;
  v83 = v9;
  v84 = &protocol witness table for StaticDimension;
  sub_10000D134(v82);
  v80 = v0;
  v81 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v79);
  v12 = v49;
  v49(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  sub_100750B14();
  v14 = v46;
  v46(v3, v0);
  *v3 = v13;
  v15 = v47;
  v50(v3, v47, v0);
  v80 = v51;
  v81 = &protocol witness table for StaticDimension;
  sub_10000D134(v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v76);
  v12(v16, v3, v0);
  v17 = v13;
  sub_100750B14();
  v14(v3, v0);
  *v3 = v17;
  v18 = v50;
  v50(v3, v15, v0);
  v19 = v51;
  v77 = v51;
  v78 = &protocol witness table for StaticDimension;
  v42 = sub_10000D134(v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v73);
  v49(v20, v3, v0);
  v21 = v17;
  sub_100750B14();
  v14(v3, v0);
  *v3 = v21;
  v22 = v47;
  v18(v3, v47, v0);
  v74 = v19;
  v75 = &protocol witness table for StaticDimension;
  sub_10000D134(v73);
  v71 = v0;
  v72 = &protocol witness table for FontSource;
  v23 = sub_10000D134(v70);
  v24 = v49;
  v49(v23, v3, v0);
  v45 = v1 + 2;
  v25 = v21;
  sub_100750B14();
  v46(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v18(v3, v22, v0);
  v71 = v51;
  v72 = &protocol witness table for StaticDimension;
  sub_10000D134(v70);
  v68 = v0;
  v69 = &protocol witness table for FontSource;
  v26 = sub_10000D134(v67);
  v24(v26, v3, v0);
  v27 = UIFontTextStyleFootnote;
  sub_100750B14();
  v28 = v46;
  v46(v3, v0);
  v43 = v1 + 1;
  *v3 = v27;
  v29 = v47;
  v18(v3, v47, v0);
  v30 = v51;
  v68 = v51;
  v69 = &protocol witness table for StaticDimension;
  v42 = sub_10000D134(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v64);
  v24(v31, v3, v0);
  v32 = v27;
  sub_100750B14();
  v28(v3, v0);
  *v3 = v32;
  v50(v3, v29, v0);
  v65 = v30;
  v66 = &protocol witness table for StaticDimension;
  sub_10000D134(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v33 = sub_10000D134(v61);
  v24(v33, v3, v0);
  v34 = v32;
  sub_100750B14();
  v28(v3, v0);
  *v3 = v34;
  v35 = v50;
  v50(v3, v29, v0);
  v62 = v51;
  v63 = &protocol witness table for StaticDimension;
  v42 = sub_10000D134(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v36 = sub_10000D134(v58);
  v24(v36, v3, v0);
  v37 = v34;
  sub_100750B14();
  v28(v3, v0);
  *v3 = v37;
  v35(v3, v47, v0);
  v59 = v51;
  v60 = &protocol witness table for StaticDimension;
  sub_10000D134(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v38 = sub_10000D134(v55);
  v49(v38, v3, v0);
  v39 = v37;
  sub_100750B14();
  v28(v3, v0);
  v56 = sub_1007507D4();
  v57 = &protocol witness table for ZeroDimension;
  sub_10000D134(v55);
  sub_1007507C4();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  v52 = 0x4024000000000000;
  return sub_100746F24();
}

uint64_t sub_1001CCD48()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100747064();
  sub_100039C50(v4, qword_10097E3C0);
  v41[0] = sub_10000D0FC(v4, qword_10097E3C0);
  if (qword_1009215D0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981EA8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v45 = v9;
  v10 = v8;
  v51 = enum case for FontSource.useCase(_:);
  v11 = v1[13];
  v44 = v1 + 13;
  v50 = v11;
  v11(v3);
  v47 = sub_100750B04();
  v84[3] = v47;
  v84[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v84);
  v82 = v0;
  v83 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v81);
  v48 = v1[2];
  v49 = v1 + 2;
  v48(v12, v3, v0);
  sub_100750B14();
  v43 = v1[1];
  v41[1] = v1 + 1;
  v43(v3, v0);
  v46 = v6;
  v42 = v5;
  v52 = v8;
  v8(v3, v6, v5);
  v13 = v51;
  v50(v3, v51, v0);
  v14 = v47;
  v82 = v47;
  v83 = &protocol witness table for StaticDimension;
  sub_10000D134(v81);
  v79 = v0;
  v80 = &protocol witness table for FontSource;
  v15 = sub_10000D134(v78);
  v48(v15, v3, v0);
  sub_100750B14();
  v16 = v43;
  v43(v3, v0);
  v10(v3, v6, v5);
  v17 = v50;
  v50(v3, v13, v0);
  v79 = v14;
  v80 = &protocol witness table for StaticDimension;
  sub_10000D134(v78);
  v76 = v0;
  v77 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v75);
  v19 = v48;
  v48(v18, v3, v0);
  sub_100750B14();
  v16(v3, v0);
  v20 = v42;
  v52(v3, v46, v42);
  v17(v3, v51, v0);
  v76 = v47;
  v77 = &protocol witness table for StaticDimension;
  sub_10000D134(v75);
  v73 = v0;
  v74 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v72);
  v19(v21, v3, v0);
  sub_100750B14();
  v22 = v43;
  v43(v3, v0);
  v52(v3, v46, v20);
  v50(v3, v51, v0);
  v23 = v47;
  v73 = v47;
  v74 = &protocol witness table for StaticDimension;
  sub_10000D134(v72);
  v70 = v0;
  v71 = &protocol witness table for FontSource;
  v24 = sub_10000D134(v69);
  v48(v24, v3, v0);
  sub_100750B14();
  v22(v3, v0);
  if (qword_1009215D8 != -1)
  {
    swift_once();
  }

  v25 = v42;
  v26 = sub_10000D0FC(v42, qword_100981EC0);
  v52(v3, v26, v25);
  v27 = v50;
  v50(v3, v51, v0);
  v70 = v23;
  v71 = &protocol witness table for StaticDimension;
  sub_10000D134(v69);
  *(&v67 + 1) = v0;
  v68 = &protocol witness table for FontSource;
  v28 = sub_10000D134(&v66);
  v48(v28, v3, v0);
  sub_100750B14();
  v43(v3, v0);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v52(v3, v46, v42);
  v29 = v27;
  v27(v3, v51, v0);
  v30 = v47;
  v65[3] = v47;
  v65[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v62);
  v48(v31, v3, v0);
  sub_100750B14();
  v43(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v29(v3, enum case for FontSource.textStyle(_:), v0);
  v63 = v30;
  v64 = &protocol witness table for StaticDimension;
  sub_10000D134(v62);
  v60 = v0;
  v61 = &protocol witness table for FontSource;
  v32 = sub_10000D134(v59);
  v33 = v48;
  v48(v32, v3, v0);
  v34 = UIFontTextStyleFootnote;
  sub_100750B14();
  v35 = v43;
  v43(v3, v0);
  v36 = v42;
  v52(v3, v46, v42);
  v37 = v51;
  v50(v3, v51, v0);
  v60 = v47;
  v61 = &protocol witness table for StaticDimension;
  sub_10000D134(v59);
  v57 = v0;
  v58 = &protocol witness table for FontSource;
  v38 = sub_10000D134(v56);
  v33(v38, v3, v0);
  sub_100750B14();
  v35(v3, v0);
  v52(v3, v46, v36);
  v50(v3, v37, v0);
  v57 = v47;
  v58 = &protocol witness table for StaticDimension;
  sub_10000D134(v56);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v39 = sub_10000D134(v53);
  v33(v39, v3, v0);
  sub_100750B14();
  v35(v3, v0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  v53[0] = 0x4024000000000000;
  return sub_100746F24();
}

uint64_t sub_1001CD6EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 == 3)
  {
    if (qword_100920370 != -1)
    {
      swift_once();
    }

    v3 = sub_100750B04();
    v4 = v3;
    v5 = qword_10097DD60;
  }

  else
  {
    if (a1 != 2 && a1 != 1)
    {
      a2[3] = sub_1007507D4();
      a2[4] = &protocol witness table for ZeroDimension;
      sub_10000D134(a2);
      return sub_1007507C4();
    }

    if (qword_100920368 != -1)
    {
      swift_once();
    }

    v3 = sub_100750B04();
    v4 = v3;
    v5 = qword_10097DD48;
  }

  v6 = sub_10000D0FC(v3, v5);
  a2[3] = v4;
  a2[4] = &protocol witness table for StaticDimension;
  v7 = sub_10000D134(a2);
  v8 = *(*(v4 - 8) + 16);

  return v8(v7, v6, v4);
}

void sub_1001CD868(char a1)
{
  v2 = v1;
  v4 = sub_100741E54();
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_iconType];
  v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_iconType] = a1 & 1;
  if (v8 != (a1 & 1))
  {
    if (a1)
    {
      v9 = [v2 traitCollection];
      sub_100753804();

      sub_100741DD4();
      v10 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
      v11 = sub_10027562C(v7, 1);
      v12 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon;
      v13 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon];
      if (v13)
      {
        [v13 removeFromSuperview];
        v14 = *&v2[v12];
      }

      else
      {
        v14 = 0;
      }

      *&v2[v12] = v11;
      v18 = v11;

      [v2 addSubview:v18];
      [*&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView] setHidden:1];
    }

    else
    {
      v15 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon;
      v16 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v2[v15];
      }

      else
      {
        v17 = 0;
      }

      *&v2[v15] = 0;

      [*&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView] setHidden:0];
    }

    [v2 setNeedsLayout];
  }
}

uint64_t sub_1001CDA40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  v4 = sub_100747064();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  sub_1007477B4();
  v6 = v5 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize;
  if (*(v5 + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v7 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(v5 + v7, v13);
    sub_10000C888(v13, v13[3]);
    sub_10074AE54();
    v9 = v8;
    v11 = v10;
    sub_10000C620(v13);
    *v6 = v9;
    *(v6 + 8) = v11;
    *(v6 + 16) = 0;
  }

  return sub_100746FE4();
}

uint64_t sub_1001CDEE8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v61 = sub_100747084();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747064();
  v62 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  sub_1001CDA40(&v53 - v11);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_isDisplayingSearchAd] == 1 && (v1[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] & 1) == 0)
  {
    sub_10074F4B4();
    v14 = v62;
    (*(v62 + 8))(v12, v4);
    (*(v14 + 32))(v12, v9, v4);
    v13 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  }

  v55 = v9;
  if (v2[v13] == 1)
  {
    v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel];
    v16 = sub_100745C84();
    *(&v80 + 1) = v16;
    v81 = &protocol witness table for UILabel;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
    }

    *&v79 = v17;
    sub_100032CCC(&v79, v82);
    v20 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v20)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = &protocol witness table for UILabel;
    }

    else
    {
      v22 = 0;
    }

    v79 = v20;
    *&v80 = 0;
    *(&v80 + 1) = v21;
    v81 = v22;
    v23 = v20;
  }

  else
  {
    v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
    v19 = sub_100745C84();
    v82[3] = v19;
    v82[4] = &protocol witness table for UILabel;
    v82[0] = v18;
    v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel];
    if (v15)
    {
      *(&v80 + 1) = type metadata accessor for SearchAdTransparencyLabel(0);
      v81 = &protocol witness table for UILabel;
      *&v79 = v15;
      sub_100032CCC(&v79, &v76);
    }

    else
    {
      v24 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
      if (v24)
      {
        v25 = &protocol witness table for UILabel;
      }

      else
      {
        v19 = 0;
        v25 = 0;
        *(&v76 + 1) = 0;
        *&v77 = 0;
      }

      *&v76 = v24;
      *(&v77 + 1) = v19;
      v78 = v25;
      v26 = v18;
      v15 = 0;
      v18 = v24;
    }

    v27 = v18;
    v79 = v76;
    v80 = v77;
    v81 = v78;
  }

  v28 = v15;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon;
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon])
  {
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView] setHidden:1];
  }

  v30 = *(v62 + 16);
  v56 = v12;
  v54 = v30;
  v30(v6, v12, v4);
  v31 = *&v2[v29];
  *(&v77 + 1) = sub_100016C60(0, &qword_100922300, UIView_ptr);
  v78 = &protocol witness table for UIView;
  v57 = v6;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
  }

  *&v76 = v32;
  v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel];
  v34 = sub_100745C84();
  v75[3] = v34;
  v75[4] = &protocol witness table for UILabel;
  v75[0] = v33;
  v35 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
  v36 = v4;
  if (v35)
  {
    v37 = &protocol witness table for UILabel;
    v38 = v34;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v74[2] = 0;
    v74[1] = 0;
  }

  v74[0] = v35;
  v74[3] = v38;
  v74[4] = v37;
  v39 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel];
  v73[4] = &protocol witness table for UILabel;
  v73[3] = v34;
  v72[4] = &protocol witness table for UILabel;
  v73[0] = v39;
  v40 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel];
  v72[3] = v34;
  v72[0] = v40;
  v41 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton];
  v71[3] = type metadata accessor for OfferButton();
  v71[4] = &protocol witness table for UIView;
  v71[0] = v41;
  v42 = v31;
  v43 = v33;
  v44 = v35;
  v45 = v39;
  v46 = v40;
  v47 = v41;

  v48 = v57;
  v54(v55, v57, v36);
  sub_10000C824(&v76, &v70);
  sub_10000C824(v75, &v69);
  sub_100016B4C(v74, &v68, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C824(v73, &v67);
  sub_10000C824(v82, &v66);
  sub_100016B4C(&v79, &v65, &qword_10092BC30, &qword_1007AD5C0);
  sub_100016B4C(v72, &v64, &qword_10092BC30, &qword_1007AD5C0);
  sub_100016B4C(v71, &v63, &unk_100928A00, &qword_1007A5AB0);
  v49 = v58;
  sub_100747074();
  sub_1001CF4A0();
  v50 = v61;
  sub_100750434();
  (*(v59 + 8))(v49, v50);
  v51 = *(v62 + 8);
  v51(v48, v36);
  sub_10000C8CC(&v79, &qword_10092BC30, &qword_1007AD5C0);
  v51(v56, v36);
  sub_10000C620(v82);
  sub_10000C8CC(v71, &unk_100928A00, &qword_1007A5AB0);
  sub_10000C8CC(v72, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C620(v73);
  sub_10000C8CC(v74, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C620(v75);
  return sub_10000C620(&v76);
}

uint64_t sub_1001CE5B0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  v9[3] = sub_100750B04();
  v9[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v9);
  v8[3] = v0;
  v8[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v8);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleFootnote;
  sub_100750B14();
  (*(v1 + 8))(v4, v0);
  return sub_100747044();
}

void sub_1001CE71C()
{
  v1 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel);
  if (v4)
  {
    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall) == 1)
    {
      v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
      v6 = v4;
      [v5 setHidden:1];
      v7 = v6;
      sub_100745B94();
      sub_100745BA4();

      v8 = v7;
      v9 = [v5 textColor];
    }

    else
    {
      v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
      v11 = v4;
      if (v10)
      {
        [v10 setHidden:1];
      }

      v12 = qword_100920F28;
      v13 = v4;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = sub_100750534();
      v15 = sub_10000D0FC(v14, qword_100980AC8);
      v16 = *(v14 - 8);
      (*(v16 + 16))(v3, v15, v14);
      (*(v16 + 56))(v3, 0, 1, v14);
      sub_100745BA4();

      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v17 = v13;
      v9 = sub_100753DF4();
    }

    v18 = v9;
    [v4 setTextColor:v9];
  }
}

uint64_t sub_1001CE970(void *a1, void *a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapGestureRecognizer];
  if (v4 && (sub_100016C60(0, &unk_10092C570, UIGestureRecognizer_ptr), v7 = a1, v8 = v4, LOBYTE(a1) = sub_100753FC4(), v8, v7, (a1 & 1) != 0))
  {
    [a2 locationInView:v3];
    v9 = [v3 hitTest:0 withEvent:?];
    if (v9)
    {
      v10 = v9;
      v11 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton];
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v12 = v11;
      v13 = v10;
      v14 = sub_100753FC4();

      v15 = v14 ^ 1;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_1001CEBE8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapGestureRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapGestureRecognizer];
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapBlock])
  {
    if (v2)
    {
      return;
    }

    v3 = [objc_allocWithZone(UITapGestureRecognizer) init];
    [v3 addTarget:v0 action:"lockupTapGestureRecognized"];
    [v3 setDelegate:v0];

    [v0 addGestureRecognizer:v3];
    v2 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = v3;
}

double sub_1001CED48()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  v2 = sub_100747064();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapBlock);
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapBlock + 8);

  return sub_1000164A8(v3, v4);
}

id sub_1001CEDF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmallLockupView(uint64_t a1)
{
  result = qword_10092C558;
  if (!qword_10092C558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001CEF30(uint64_t a1)
{
  result = sub_100747064();
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

double sub_1001CEFE8(double a1, double a2)
{
  v5 = sub_100747064();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001CDA40(v8);
  [v9 layoutMargins];
  v10 = sub_1001CF184(v8, v9, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v10;
}

unint64_t sub_1001CF12C()
{
  result = qword_10092C568;
  if (!qword_10092C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C568);
  }

  return result;
}

double sub_1001CF184(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_1007479B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = sub_100747064();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 traitCollection];
  (*(v14 + 16))(v17, a1, v13);
  v19 = sub_100746FD4();
  if ((v21 & 1) == 0 && ((v19 | v20) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v22 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v22 = qword_10093FF58;
    }

    v23 = sub_10000D0FC(v6, v22);
    (*(v7 + 16))(v9, v23, v6);
    (*(v7 + 32))(v12, v9, v6);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v7 + 8))(v12, v6);
  }

  sub_100746F14();
  v25 = v24;

  (*(v14 + 8))(v17, v13);
  return v25;
}

unint64_t sub_1001CF4A0()
{
  result = qword_10092C580;
  if (!qword_10092C580)
  {
    sub_100747084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C580);
  }

  return result;
}

id sub_1001CF4F8()
{
  v1 = sub_100751504();
  __chkstk_darwin(v1);
  v2 = sub_100751A14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_iconType] = 0;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v7 = sub_100747064();
  v8 = sub_10000D0FC(v7, qword_10097E3A8);
  (*(*(v7 - 8) + 16))(&v0[v6], v8, v7);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_isDisplayingSearchAd] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapGestureRecognizer] = 0;
  v9 = &v0[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapBlock];
  v10 = type metadata accessor for SmallLockupView(0);
  *v9 = 0;
  v9[1] = 0;
  v14.receiver = v0;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v3 + 104))(v5, enum case for UITypesettingLanguageAwareLineHeightRatio.legacy(_:), v2);
  v12 = v11;
  sub_100753CE4();
  sub_1007514E4();
  sub_100753CF4();

  return v12;
}

void sub_1001CF770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0)) init];
    sub_10074F774();
    sub_10074ECB4();
    v8 = v7;

    if (v8)
    {
      v9 = sub_100753064();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_100934DD0];
    v15 = *&v6[qword_100934DD0];
    v16 = *&v6[qword_100934DD0 + 8];
    *v14 = sub_1001CFD08;
    v14[1] = v13;

    sub_1000164A8(v15, v16);
    v17 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel(0));
    v18 = v6;
    v19 = sub_100026898(v18);
    if (v3[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v20 = [*&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] text];
      if (v20)
      {
        v21 = v20;
        v22 = sub_100753094();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }
    }

    else
    {
      v22 = sub_10074F764();
      v24 = v25;
    }

    v27 = &v19[qword_1009234A0];
    *v27 = v22;
    v27[1] = v24;

    sub_100026F24();
    v28 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel;
    v29 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel];
    v30 = v19;
    if (v29)
    {
      [v29 removeFromSuperview];
      v29 = *&v3[v28];
    }

    *&v3[v28] = v19;
    v31 = v19;

    sub_1001CE71C();
    [v3 addSubview:v31];

    v32 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
    v33 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
    if (v33 && ([v33 isHidden] & 1) == 0 && (v34 = *&v3[v32]) != 0)
    {
      v35 = [v34 hasContent];
    }

    else
    {
      v35 = 0;
    }

    v36 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabelPresenter;
    swift_beginAccess();
    sub_100032C04(&v3[v36], v38);
    v37 = v39;
    sub_10000C8CC(v38, &unk_100923520, &qword_1007A5A70);
    if (v37 || v35)
    {
      [*&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
    }

    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_isDisplayingSearchAd] = 0;
    [v2 setNeedsLayout];
    v10 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel;
    v11 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_searchAdTertiaryLabel];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v3[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v3[v10] = 0;

    v26 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v26)
    {

      [v26 setHidden:0];
    }
  }
}

uint64_t sub_1001CFB50(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000C8CC(v4, &unk_100923960, &qword_1007A6240);
  }

  v8 = sub_10074F774();
  sub_1003C0E00(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_1001CFCC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CFD10()
{
  v0 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_10074F654();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  v15 = *(sub_10074F584() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007A7250;
  v43 = v17 + v16;
  v49 = 0x3FF8000000000000;
  sub_10001CC10();
  sub_10074F614();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_10074F5F4();
  v49 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  sub_10074F614();
  v49 = 0;
  v42 = v7;
  sub_10074F614();
  v38 = v14;
  v41 = v11;
  sub_10074F544();
  v49 = 0x3FF8000000000000;
  sub_10074F614();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_10074F5F4();
  v49 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_10074F544();
  v49 = 0x4000000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  sub_10074F544();
  v33 = 2 * v27 + v45;
  v49 = 0x4004000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_1007535A4();
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  sub_10074F544();
  v33 = 4 * v45;
  v49 = 0x4010000000000000;
  sub_10074F614();
  v49 = 0x4038000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  sub_10074F544();
  v49 = 0x4014000000000000;
  sub_10074F614();
  v49 = 0x4038000000000000;
  sub_10074F614();
  v49 = 0x4034000000000000;
  sub_10074F614();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_10074F614();
  v49 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_10092C590 = v37;
  return result;
}

uint64_t NotifyMeButtonPresenter.__allocating_init(userNotificationsManager:notificationConfig:view:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1007527A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v14 = v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  *(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v14 + 8) = a4;
  swift_unknownObjectWeakAssign();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_100752764();

  sub_100752D34();
  (*(v10 + 32))(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_metricsPipeline, v12, v9);
  *(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_objectGraph) = a5;
  sub_100744AC4();

  v15 = sub_100752D34();
  *(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_bag) = v22;
  sub_1001D0C08(v15, v16);
  sub_1001D1314(v17, v18);
  v19 = [objc_opt_self() defaultCenter];
  sub_10074B0C4();

  v20 = sub_10074B034();
  [v19 addObserver:v13 selector:"userNotificationsDidChangeNotification:" name:v20 object:0];

  swift_unknownObjectRelease();

  return v13;
}

Swift::Void __swiftcall NotifyMeButtonPresenter.tearDown()()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

Swift::Void __swiftcall NotifyMeButtonPresenter.didTapButton(sender:)(UIButton sender)
{
  v2 = *(v1 + 24);
  if (v2 && (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) & 1) == 0)
  {

    if (sub_1007448B4())
    {
      if (sub_10074B0A4())
      {
        sub_1001D2AC0(v2, v4);
      }

      else
      {
        sub_1001D2F10(v2, v4);
      }
    }

    else
    {
      sub_10074B074();
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      v7[2].super.super.super.super.isa = v5;
      v7[3].super.super.super.super.isa = v6;
      v7[4].super.super.super.super.isa = v2;
      v7[5].super.super.super.super.isa = sender.super.super.super.super.isa;
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v2;
      v10 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
      swift_retain_n();
      v11 = sender.super.super.super.super.isa;

      v12[3] = v10;
      v12[4] = &protocol witness table for OS_dispatch_queue;
      v12[0] = sub_100753774();
      sub_100752D64();

      sub_10000C620(v12);
    }
  }
}

double sub_1001D0C08(uint64_t a1, uint64_t a2)
{
  v3 = sub_100741454();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  if (!*(v2 + 24))
  {
    v18 = v2 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return result;
    }

    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(v20 + 40))(1, 0, ObjectType, v20);
    goto LABEL_8;
  }

  sub_1007426B4();
  sub_100741444();
  sub_1001D3590(&qword_10092C6A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v10 = sub_100753004();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  v12 = sub_10074B0A4();
  v13 = v2 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    v15 = swift_getObjectType();
    (*(v14 + 40))((v10 & 1) == 0, 0, v15, v14);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v13 + 8);
    v17 = swift_getObjectType();
    (*(v16 + 32))(v12 & 1, 0, v17, v16);

LABEL_8:
    swift_unknownObjectRelease();
    return result;
  }

  return result;
}

double NotifyMeButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  v5 = swift_unknownObjectWeakAssign();
  sub_1001D0C08(v5, v6);
  swift_unknownObjectRelease();
  return result;
}

void (*NotifyMeButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1001D1010;
}

void sub_1001D1010(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v4 = swift_unknownObjectRelease();
    sub_1001D0C08(v4, v5);
  }

  free(v3);
}

uint64_t NotifyMeButtonPresenter.init(userNotificationsManager:notificationConfig:view:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1007527A4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v15 + 8) = a4;
  swift_unknownObjectWeakAssign();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_100752764();

  sub_100752D34();
  (*(v12 + 32))(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_metricsPipeline, v14, v11);
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_objectGraph) = a5;
  sub_100744AC4();

  v16 = sub_100752D34();
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_bag) = v23;
  sub_1001D0C08(v16, v17);
  sub_1001D1314(v18, v19);
  v20 = [objc_opt_self() defaultCenter];
  sub_10074B0C4();

  v21 = sub_10074B034();
  [v20 addObserver:v6 selector:"userNotificationsDidChangeNotification:" name:v21 object:0];

  swift_unknownObjectRelease();

  return v6;
}

void sub_1001D1314(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100741454();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if (*(v2 + 24))
  {
    sub_1007426B4();
    (*(v5 + 32))(v13, v10, v4);
    sub_100741444();
    v14 = sub_1007413E4();
    v15 = *(v5 + 8);
    v15(v7, v4);
    if ((v14 & 1) != 0 && (v16 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer, !*(v3 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer)))
    {
      isa = sub_1007413D4().super.isa;

      v18 = [objc_allocWithZone(NSTimer) initWithFireDate:isa interval:v3 target:"displayTimeReached" selector:0 userInfo:0 repeats:0.0];

      v19 = [objc_opt_self() mainRunLoop];
      [v19 addTimer:v18 forMode:NSRunLoopCommonModes];

      v15(v13, v4);
      v20 = *(v3 + v16);
      *(v3 + v16) = v18;
    }

    else
    {
      v15(v13, v4);
    }
  }
}

uint64_t sub_1001D1554()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t NotifyMeButtonPresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_metricsPipeline;
  v3 = sub_1007527A4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_10000C4F0(v0 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view);

  return v0;
}

uint64_t NotifyMeButtonPresenter.__deallocating_deinit()
{
  NotifyMeButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

void sub_1001D16CC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_12;
    }

    v11 = Strong;
    if (v9)
    {

      v12 = sub_10074B0A4();

      if (v12)
      {
        sub_1001D2AC0(a4, v13);
      }

      else
      {
        sub_1001D2F10(a4, v13);
      }

      goto LABEL_11;
    }

    v14 = sub_1007426E4();
    if (!v14)
    {
LABEL_11:

LABEL_12:

      return;
    }

    v15 = v14;
    v16 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    sub_1007526C4();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v8, 1, v16) == 1)
    {

      sub_10000C8CC(v8, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      sub_1003C0E00(v15, 1, v11, v8);

      (*(v17 + 8))(v8, v16);
    }
  }
}

uint64_t sub_1001D1914()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1001D1970(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1007426C4();
    if (v7)
    {
      v8 = v7;
      v9 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
      sub_1007526C4();
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v4, 1, v9) == 1)
      {

        sub_10000C8CC(v4, &unk_100923960, &qword_1007A6240);
      }

      else
      {
        sub_1003C0E00(v8, 1, v6, v4);

        (*(v10 + 8))(v4, v9);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1001D1B20()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1001D1B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v5 - 8);
  v7 = &v25[-v6];
  v8 = sub_10074B084();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    (*(v9 + 16))(v11, a1, v8);
    v14 = (*(v9 + 88))(v11, v8);
    if (v14 == enum case for UserNotificationsManager.SchedulingResult.scheduleChanged(_:) || v14 == enum case for UserNotificationsManager.SchedulingResult.scheduleAlreadyExists(_:))
    {
      v16 = sub_1007426D4();
      if (v16)
      {
        v17 = v16;
        swift_beginAccess();
        v18 = swift_weakLoadStrong();
        if (v18)
        {
          v19 = v18;
          v20 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
          sub_1007526C4();
          v21 = *(v20 - 8);
          if ((*(v21 + 48))(v7, 1, v20) == 1)
          {

            sub_10000C8CC(v7, &unk_100923960, &qword_1007A6240);
          }

          else
          {
            sub_1003C0E00(v17, 1, v19, v7);

            (*(v21 + 8))(v7, v20);
          }
        }

        else
        {
        }
      }
    }

    else
    {
      if (v14 != enum case for UserNotificationsManager.SchedulingResult.signInDidNotComplete(_:))
      {
        sub_100754744();
        __break(1u);
        return;
      }

      v22 = v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v22 + 8);
        ObjectType = swift_getObjectType();
        (*(v23 + 32))(0, 0, ObjectType, v23);
        swift_unknownObjectRelease();
      }
    }

    *(v13 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }
}

void sub_1001D1EBC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_10074B084();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 88))(v7, v4);
    if (v10 != enum case for UserNotificationsManager.SchedulingResult.scheduleChanged(_:) && v10 != enum case for UserNotificationsManager.SchedulingResult.scheduleAlreadyExists(_:))
    {
      if (v10 != enum case for UserNotificationsManager.SchedulingResult.signInDidNotComplete(_:))
      {
        sub_100754744();
        __break(1u);
        return;
      }

      v12 = v9 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 8);
        ObjectType = swift_getObjectType();
        (*(v13 + 32))(1, 0, ObjectType, v13);
        swift_unknownObjectRelease();
      }
    }

    *(v9 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }
}

double sub_1001D208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_1007426C4();
    if (v12)
    {
      v13 = v12;
      swift_beginAccess();
      v14 = swift_weakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v16 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
        sub_1007526C4();
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v8, 1, v16) == 1)
        {

          sub_10000C8CC(v8, &unk_100923960, &qword_1007A6240);
        }

        else
        {
          sub_1003C0E00(v13, 1, v15, v8);

          (*(v17 + 8))(v8, v16);
        }
      }

      else
      {
      }
    }

    v18 = v11 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      (*(v19 + 32))(a5 & 1, 0, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    *(v11 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  }

  return result;
}

double sub_1001D22E4()
{
  v1 = sub_1007521E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v6 = *(v5 - 8);
  *&result = __chkstk_darwin(v5).n128_u64[0];
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    v30 = v7;

    v11 = sub_100740E94();
    if (v11)
    {
      v12 = v11;
      sub_10074B0C4();
      v31 = sub_10074B054();
      v32 = v13;
      sub_1007544E4();
      if (*(v12 + 16) && (v14 = sub_100412148(aBlock), (v15 & 1) != 0))
      {
        sub_10000C5B4(*(v12 + 56) + 32 * v14, v33);
        sub_100016994(aBlock);

        if (swift_dynamicCast())
        {
          v16 = v32;
          v29 = v31;
          if (v29 == sub_1007426A4() && v16 == v17)
          {
          }

          else
          {
            LODWORD(v29) = sub_100754754();

            if ((v29 & 1) == 0)
            {
LABEL_21:

              return result;
            }
          }
        }
      }

      else
      {

        sub_100016994(aBlock);
      }
    }

    v18 = sub_100740E94();
    if (v18)
    {
      v19 = v18;
      sub_10074B0C4();
      v31 = sub_10074B064();
      v32 = v20;
      sub_1007544E4();
      if (*(v19 + 16) && (v21 = sub_100412148(aBlock), (v22 & 1) != 0))
      {
        sub_10000C5B4(*(v19 + 56) + 32 * v21, v33);
        sub_100016994(aBlock);

        sub_100016C60(0, &qword_100922300, UIView_ptr);
        if (swift_dynamicCast())
        {
          v23 = v31;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v25 = Strong;
            swift_unknownObjectRelease();

            if (v23 == v25)
            {
              goto LABEL_21;
            }
          }

          else
          {
          }
        }
      }

      else
      {

        sub_100016994(aBlock);
      }
    }

    sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
    v26 = sub_100753774();
    v27 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1001D34C8;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10086BDA8;
    v28 = _Block_copy(aBlock);

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001D3590(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750, &qword_1007A6920);
    sub_1000A8054();
    sub_1007543A4();
    sub_100753784();

    _Block_release(v28);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v10, v30);
  }

  return result;
}

double sub_1001D2800(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1001D0C08(Strong, v2);
  }

  return result;
}

double sub_1001D2AC0(uint64_t a1, uint64_t a2)
{
  v25 = sub_100752B34();
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v7 - 8);
  v9 = v23 - v8;
  v10 = sub_1007524D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v24 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 1;
  v13 = v2 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23[1] = v2;
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 32))(0, 1, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  sub_100742694();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000C8CC(v9, &unk_1009281C0, qword_1007ABBB0);
  }

  else
  {
    v16 = v24;
    (*(v11 + 32))(v24, v9, v10);
    sub_100752B14();
    sub_100752794();

    (*(v4 + 8))(v6, v25);
    (*(v11 + 8))(v16, v10);
  }

  swift_unknownObjectWeakLoadStrong();
  sub_10074B0B4();
  swift_unknownObjectRelease();
  swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = a1;
  v19[4] = v18;
  v20 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);

  v21 = sub_100753774();
  v26[3] = v20;
  v26[4] = &protocol witness table for OS_dispatch_queue;
  v26[0] = v21;
  sub_100752D64();

  sub_10000C620(v26);

  return result;
}

double sub_1001D2F10(uint64_t a1, uint64_t a2)
{
  v29 = sub_100752B34();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_1007524D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 1;
  v13 = v2 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = v11;
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    v11 = v27;
    (*(v14 + 32))(1, 1, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  sub_100742684();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000C8CC(v9, &unk_1009281C0, qword_1007ABBB0);
  }

  else
  {
    v16 = v28;
    (*(v11 + 32))(v28, v9, v10);
    sub_100752B14();
    sub_100752794();

    (*(v4 + 8))(v6, v29);
    (*(v11 + 8))(v16, v10);
  }

  swift_unknownObjectWeakLoadStrong();
  sub_10074B094();
  swift_unknownObjectRelease();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = a1;
  v19[4] = v18;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = a1;
  v22[4] = v21;
  v23 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  swift_retain_n();

  v24 = sub_100753774();
  v30[3] = v23;
  v30[4] = &protocol witness table for OS_dispatch_queue;
  v30[0] = v24;
  sub_100752D64();

  sub_10000C620(v30);

  return result;
}

uint64_t type metadata accessor for NotifyMeButtonPresenter(uint64_t a1)
{
  result = qword_10092C5E0;
  if (!qword_10092C5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D3400(uint64_t a1)
{
  result = sub_1007527A4();
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

double sub_1001D34D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001D3524()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001D3590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001D35E4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = sub_100746D84();
  v13 = v12;
  v14 = sub_100746DA4();
  v15 = sub_100746D94();
  swift_getObjectType();
  v16.n128_f64[0] = a1;
  v17 = sub_1001BF6CC(v11, v13, v14, v15, a8, v16, a2);

  return v17;
}

void sub_1001D3738(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10001E1C8(0, v3, 0);
    v36 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = sub_1007543B4();
    v6 = 0;
    v7 = *(a1 + 36);
    v31 = v3;
    v32 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v11 = (*(a1 + 48) + 16 * v5);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(a1 + 56) + 8 * v5);

      v15 = a2(v12, v13, v14);
      v34 = v17;
      v35 = v16;
      v19 = v18;

      v20 = v36;
      v22 = v36[2];
      v21 = v36[3];
      if (v22 >= v21 >> 1)
      {
        sub_10001E1C8((v21 > 1), v22 + 1, 1);
        v20 = v36;
      }

      v20[2] = v22 + 1;
      v23 = &v20[4 * v22];
      v23[4] = v15;
      v23[5] = v35;
      v23[6] = v34;
      v23[7] = v19;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      v4 = a1 + 64;
      v24 = *(a1 + 64 + 8 * v10);
      if ((v24 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v36 = v20;
      v7 = v32;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v5 & 0x3F));
      if (v25)
      {
        v8 = __clz(__rbit64(v25)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v9 = v31;
      }

      else
      {
        v26 = v10 << 6;
        v27 = v10 + 1;
        v9 = v31;
        v28 = (a1 + 72 + 8 * v10);
        while (v27 < (v8 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1001D3DC4(v5, v32, 0);
            v8 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        sub_1001D3DC4(v5, v32, 0);
      }

LABEL_4:
      ++v6;
      v5 = v8;
      if (v6 == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

id sub_1001D39CC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel];
  sub_100746D84();
  v3 = sub_100753064();

  [v2 setText:v3];

  sub_100746DA4();
  v4 = sub_100746D74();
  v5 = sub_100743EA4();
  sub_1001D3738(v5, sub_1000E12F0);
  v7 = v6;

  v8 = sub_100743E94();
  sub_10004DF04(v8, v4, v7);

  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView];
  v10 = sub_100746D64();
  [v9 setTintColor:v10];

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon] = sub_100746D94();

  return [v1 setNeedsLayout];
}

double sub_1001D3B64(double result)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon);
  if (v2)
  {

    if (sub_10074F1A4())
    {
      v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView);
      if (sub_10074F1D4())
      {
        v4 = sub_100743AC4();
      }

      else if (sub_10074F1C4())
      {
        v4 = sub_10056028C(v8, v2, 0);
      }

      else
      {
        v4 = 0;
      }

      [v3 setImage:v4];
    }

    else
    {
      v5 = qword_100920540;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = sub_100743AC4();
      if (v6)
      {
        v7 = v6;
        [v6 size];
      }

      sub_10074F364();
      sub_1001A28CC();
      sub_1001D3D7C(&qword_1009281E0, sub_1001A28CC, &protocol conformance descriptor for UIImageView);
      sub_100744204();
    }
  }

  return result;
}

uint64_t sub_1001D3D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001D3DC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1001D3DFC(void *a1)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_getObjectType();
    v2 = a1;
    sub_10074BFF4();
  }
}

uint64_t sub_1001D3EA4(void *a1, uint64_t a2, uint64_t a3)
{
  v59[1] = a3;
  v63 = a1;
  v3 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v3 - 8);
  v59[0] = v59 - v4;
  v62 = sub_1007457B4();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10074E984();
  v6 = *(v64 - 8);
  __chkstk_darwin(v64);
  v8 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v59 - v10;
  v12 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v59 - v14;
  v16 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v65 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v59 - v17;
  swift_getKeyPath();
  sub_100746914();
  v19 = v16;

  sub_100746944();
  sub_1007525C4();
  (*(v13 + 8))(v15, v12);
  swift_getKeyPath();
  sub_1007525B4();
  v20 = v64;

  (*(v6 + 32))(v8, v11, v20);
  v21 = (*(v6 + 88))(v8, v20);
  if (v21 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v21 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v6 + 8))(v8, v20);
    swift_getKeyPath();
    v22 = v60;
    sub_1007525B4();

    v23 = sub_1002EF020();
    (*(v61 + 8))(v22, v62);
    v24 = v63;
    if ([v63 overrideUserInterfaceStyle] != v23)
    {
      [v24 setOverrideUserInterfaceStyle:v23];
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v24)
    {
      sub_10000C824(v70, v68);
      v25 = v24;
      sub_10000C518(&qword_1009242A0, &qword_1007A6400);
      sub_10000C518(&qword_1009253C0, &unk_1007A8D20);
      if (swift_dynamicCast())
      {
        sub_100032CCC(v66, v69);
        sub_10000C888(v69, v69[3]);
        if (sub_10074CA14())
        {
          sub_100748644();
        }

        swift_getObjectType();
        sub_100747AF4();

        sub_10000C620(v69);
      }

      else
      {

        v67 = 0;
        memset(v66, 0, sizeof(v66));
        sub_10000C8CC(v66, &qword_1009253C8, qword_1007B15B0);
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v24)
    {
      swift_getObjectType();
      v26 = v24;
      sub_10074BFE4();
    }

    swift_getObjectType();
    v27 = swift_conformsToProtocol2();
    if (v27 && v24)
    {
      v28 = v27;
      ObjectType = swift_getObjectType();
      v30 = v19;
      v31 = *(v28 + 8);
      v32 = v24;
      v33 = v31(ObjectType, v28);
      v19 = v30;
      v34 = v33;
      v35 = (v33 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
      v36 = *(v33 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
      v37 = v35[1];
      *v35 = 0;
      v35[1] = 0;
      [*&v34[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:{0, sub_1000164A8(v36, v37)}];
    }

    v38 = [objc_opt_self() standardUserDefaults];
    v40 = sub_1006FE690(v39);

    if (v40)
    {
      v41 = v63;
      [v63 bounds];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = [objc_opt_self() blueColor];
      v51 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
      v52 = sub_10020836C(v50, v43, v45, v47, v49);
      v53 = v18;
      sub_10000C888(v70, v70[3]);
      v54 = v59[0];
      sub_100752F24();
      sub_100207F4C(v54);
      sub_10000C8CC(v54, &unk_100925380, qword_1007A8E40);
      v55 = [v41 contentView];
      v56 = [v55 viewWithTag:58236912];

      [v56 removeFromSuperview];
      v57 = [v41 contentView];
      [v57 addSubview:v52];

      v18 = v53;
    }
  }

  (*(v65 + 8))(v18, v19);
  return sub_10000C620(v70);
}

void sub_1001D4720(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v9 - 8);
  v11 = &v39[-1] - v10;
  v12 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39[-1] - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16 && a1)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    sub_100274ED8(a2, a5, ObjectType, v17);
  }

  else
  {
    type metadata accessor for TodayDebugSectionBackgroundView();
    if (swift_dynamicCastClass())
    {
      sub_1004B6708(a2);
    }

    else
    {
      v19 = type metadata accessor for InteractiveSectionBackgroundView(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
        v38 = v19;
        sub_100752764();
        sub_100752D34();
        sub_10031557C(a2, a4, a5);
        v39[3] = v38;
        v39[4] = &off_1008761A8;
        v39[0] = v21;
        v22 = a1;
        sub_10004F9EC(v39);

        sub_10000C8CC(v39, &unk_1009242D0, &qword_1007A7810);
      }
    }
  }

  v23 = [objc_opt_self() standardUserDefaults];
  v25 = sub_1006FE690(v24);

  if (v25)
  {
    [a1 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [objc_opt_self() redColor];
    v35 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
    v36 = sub_10020836C(v34, v27, v29, v31, v33);
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v13 + 8))(v15, v12);
    sub_100207F4C(v11);
    sub_10000C8CC(v11, &unk_100925380, qword_1007A8E40);
    v37 = [a1 viewWithTag:58236912];
    [v37 removeFromSuperview];

    [a1 addSubview:v36];
  }
}

unint64_t sub_1001D4B24()
{
  result = qword_10092C7A8;
  if (!qword_10092C7A8)
  {
    sub_100746E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C7A8);
  }

  return result;
}

uint64_t sub_1001D4B84(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v50 = a1;
  v2 = sub_100741454();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_10092C7B0, &unk_1007B1640);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v49 = sub_100752DE4();
  sub_100752854();
  sub_100752844();
  sub_100746E14();
  sub_100746DE4();
  sub_10000C518(&qword_10092C7B8, &unk_1007B1650);
  sub_100752534();

  v14 = *(v5 + 8);
  v51 = v4;
  v14(v13, v4);
  if (v53)
  {
  }

  else
  {
    sub_100752844();
    sub_100746DE4();
    v53 = _swiftEmptyDictionarySingleton;
    sub_100752544();
  }

  sub_100752844();
  sub_100746DE4();
  sub_100752534();

  v46 = v14;
  v14(v9, v51);
  v15 = v53;
  v16 = v48;
  if (!v53)
  {
    goto LABEL_13;
  }

  v17 = sub_100746DF4();
  if (!v15[2])
  {

    goto LABEL_12;
  }

  v19 = sub_1003861D0(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_12:

LABEL_13:
    sub_100746E04();
LABEL_14:
    sub_100752844();
    sub_100746DE4();
    v32 = sub_100752524();
    if (*v31)
    {
      v33 = v31;
      v34 = sub_100746DF4();
      v36 = v35;
      v37 = v43;
      sub_100741444();
      sub_100741424();
      v39 = v38;
      (*(v44 + 8))(v37, v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *v33;
      *v33 = 0x8000000000000000;
      sub_100673F08(v34, v36, isUniquelyReferenced_nonNull_native, v39);

      *v33 = v52;
    }

    v32(&v53, 0);

    v46(v16, v51);
    v41 = sub_100746DC4();
    sub_10052AB60(v41, 1, v47);

    v30 = v49;
    sub_100752D54();
    goto LABEL_17;
  }

  v22 = *(v15[7] + 8 * v19);

  *&v23 = COERCE_DOUBLE(sub_100746E04());
  if ((v24 & 1) == 0)
  {
    v25 = *&v23;
    v26 = v43;
    sub_100741444();
    sub_100741424();
    v28 = v27;
    (*(v44 + 8))(v26, v45);
    if (v28 - v22 > v25)
    {
      goto LABEL_14;
    }
  }

  v29 = sub_100746DD4();
  if (!v29)
  {
    sub_1001D5110();
    swift_allocError();
    v30 = v49;
    sub_100752DA4();

    return v30;
  }

  sub_10052AB60(v29, 1, v47);
  v30 = v49;
  sub_100752D54();

LABEL_17:

  return v30;
}

unint64_t sub_1001D5110()
{
  result = qword_10092C7C0;
  if (!qword_10092C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C7C0);
  }

  return result;
}

unint64_t sub_1001D5178()
{
  result = qword_10092C7C8;
  if (!qword_10092C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C7C8);
  }

  return result;
}

uint64_t sub_1001D51CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001D51F8()
{
  qword_10092C7E8 = sub_1007457D4();
  qword_10092C7F0 = sub_1001D72CC(&qword_10092C838, &type metadata accessor for SpacerDimension, &protocol conformance descriptor for SpacerDimension);
  sub_10000D134(qword_10092C7D0);
  return sub_1007457C4();
}

uint64_t sub_1001D5274()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_100743AE4();
  result = (*(v1 + 8))(v4, v0);
  qword_10092C7F8 = v5;
  return result;
}

char *sub_1001D536C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  if (qword_1009210F8 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_100981020);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v21 = objc_allocWithZone(sub_100745C84());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel] = sub_100745C74();
  v22 = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton] = v22;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel;
  [*&v27[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel] setHidden:1];
  [v27 addSubview:*&v27[v28]];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton;
  [*&v27[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton] setHidden:1];
  [v27 addSubview:*&v27[v29]];

  return v27;
}

id sub_1001D5714()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v10 - v4;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "prepareForReuse", v3);
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel];
  [v6 setText:0];
  [v6 setHidden:1];
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton];
  v8 = sub_1007541F4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_100754224();
  [v7 setMenu:0];
  [v7 setShowsMenuAsPrimaryAction:0];
  return [v7 setHidden:1];
}

id sub_1001D58B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v41 = a4;
  v42 = a2;
  v45 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v5 - 8);
  v40 = &ObjectType - v6;
  v44 = sub_10074EAB4();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &ObjectType - v11;
  v13 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &ObjectType - v18;
  v43 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v20 = *(v14 + 8);
  v20(v19, v13);
  if (v47 && (sub_1007530F4(), v22 = v21, , v22))
  {
    v23 = *&v46[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel];
    v24 = sub_100753064();

    [v23 setText:{v24, ObjectType}];

    [v23 setHidden:{0, ObjectType}];
  }

  else
  {
    [*&v46[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel] setHidden:{1, ObjectType}];
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v20(v16, v13);
  sub_10074EAA4();
  sub_1001D72CC(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v25 = v44;
  v26 = sub_100754324();
  v27 = *(v7 + 8);
  v27(v9, v25);
  v27(v12, v25);
  v28 = v46;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v45)
  {
    goto LABEL_11;
  }

  v29 = sub_1007530F4();
  if (!v30)
  {
    goto LABEL_11;
  }

  v31 = v30;
  if (!v41)
  {

LABEL_11:
    v37 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton];
    [v37 setMenu:0];
    [v37 setShowsMenuAsPrimaryAction:0];
    [v37 setHidden:1];
    return [v28 setNeedsLayout];
  }

  v32 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton];
  v33 = v29;
  v34 = v41;
  v35 = v40;
  sub_1001D5DC8(v33, v31, v28);

  v36 = sub_1007541F4();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  sub_100754224();
  [v32 setMenu:v34];
  [v32 setShowsMenuAsPrimaryAction:1];
  [v32 setHidden:0];

  return [v28 setNeedsLayout];
}

void sub_1001D5DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1007410D4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000C518(&qword_100923030, &unk_1007B17C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_100038D38();
  if (qword_100921100 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  sub_10000D0FC(v8, qword_100981038);
  v9 = sub_100753C04();
  sub_1007541A4();
  sub_10000C518(&unk_100929CA0, &qword_1007A6610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v9;

  v11 = NSFontAttributeName;
  v12 = v9;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C8CC(inited + 32, &unk_100923510, &unk_1007A6620);
  sub_1007410F4();
  sub_100741094();
  v13 = sub_100741084();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  sub_1007540F4();
  v14 = [objc_opt_self() configurationWithFont:v12 scale:1];
  sub_100754024();
  if (qword_100920568 != -1)
  {
    swift_once();
  }

  v15 = qword_10092C7F8;
  sub_100754194();
  sub_100754094();
  sub_1007540D4();
  sub_1007540C4();
}

void sub_1001D60A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for DirectionalTextAlignment.leading(_:))
  {
    v16 = [v2 traitCollection];
    v17 = sub_1007537F4();

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (v15 != enum case for DirectionalTextAlignment.trailing(_:))
    {

      (*(v11 + 8))(v13, v10);
      return;
    }

    v19 = [v2 traitCollection];
    v20 = sub_1007537F4();

    if (v20)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }
  }

  [v14 setAlignment:v18];
  sub_100754214();
  v21 = sub_1007541F4();
  if ((*(*(v21 - 8) + 48))(v9, 1, v21))
  {
LABEL_12:
    sub_10003BB1C(v9, v6);
    sub_100754224();

    sub_10000C8CC(v9, &qword_100932470, &unk_1007A5A90);
    return;
  }

  v22 = sub_1007540E4();
  v24 = v23;
  v25 = sub_100741084();
  if ((*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v22(v28, 0);
    goto LABEL_12;
  }

  v27[1] = v14;
  sub_1001D7314();
  v26 = v14;
  sub_1007410A4();
  v22(v28, 0);
  sub_100754224();
}

id sub_1001D6438()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_titleLabel];
  sub_1007477B4();
  v8 = [v0 traitCollection];
  sub_100753F74();
  v10 = v9;
  v12 = v11;

  sub_1007477B4();
  v14 = v13;
  v16 = v15;
  v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ProductReviewsShelfHeaderView_sortButton];
  sub_1007477B4();
  v18 = [v0 traitCollection];
  sub_100754004();
  v20 = v19;

  sub_1007477B4();
  CGRectGetMaxX(v28);
  sub_1007477B4();
  CGRectGetMinY(v29);
  if (([v7 isHidden] & 1) != 0 || (objc_msgSend(v17, "isHidden") & 1) != 0 || (v26 = v10, v21 = v10 + 16.0 + v20, sub_1007477B4(), Width = CGRectGetWidth(v30), v23 = v26, Width >= v21))
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.trailing(_:), v2);
    sub_1001D60A4(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_1001D60A4(v6);
    (*(v3 + 8))(v6, v2);
    sub_1007477B4();
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v23;
    v31.size.height = v12;
    CGRectGetMaxY(v31);
  }

  sub_1007477B4();
  sub_100753B24();
  [v7 setFrame:?];
  sub_1007477B4();
  sub_100753B24();
  return [v17 setFrame:?];
}

uint64_t sub_1001D6864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1001D68B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v70 = a2;
  v4 = sub_100754724();
  v86 = *(v4 - 8);
  v87 = v4;
  __chkstk_darwin(v4);
  v85 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074EAB4();
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v81 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  v74 = sub_100750E94();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v68 - v13;
  v77 = sub_100750BD4();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v68 - v20;
  v22 = sub_10074F704();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747BC4();
  sub_10074FC24();
  sub_10074F674();
  v27 = v26;
  (*(v23 + 8))(v25, v22);
  v89 = sub_100747B94();
  v80 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v28 = *(v16 + 8);
  v28(v21, v15);
  if (v91 && (sub_1007530F4(), v30 = v29, , v30))
  {
    v31 = v71;
    sub_100750E84();
    v32 = v75;
    if (qword_1009210F8 != -1)
    {
      swift_once();
    }

    v33 = sub_100750534();
    sub_10000D0FC(v33, qword_100981020);
    sub_100750E54();
    (*(v73 + 8))(v31, v74);
    sub_100750BB4();
    sub_100750BF4();
    sub_100750BC4();
    v88 = v34;
    v90 = v35;
    v79 = v36;
    v78 = v37;
    (*(v76 + 8))(v32, v77);
  }

  else
  {
    v38 = JUMeasurementsZero[1];
    v88 = JUMeasurementsZero[0];
    v90 = v38;
    v39 = JUMeasurementsZero[3];
    v79 = JUMeasurementsZero[2];
    v78 = v39;
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v28(v18, v15);
  v40 = v81;
  sub_10074EAA4();
  sub_1001D72CC(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v41 = v83;
  v42 = sub_100754324();
  v43 = *(v82 + 8);
  v43(v40, v41);
  v43(v10, v41);
  v69 = v27;
  if ((v42 & 1) != 0 && v84 && (sub_1007530F4(), v44))
  {
    v45 = v71;
    sub_100750E84();
    v46 = v89;
    if (qword_100921100 != -1)
    {
      swift_once();
    }

    v47 = sub_100750534();
    sub_10000D0FC(v47, qword_100981038);
    sub_100750E54();
    (*(v73 + 8))(v45, v74);
    sub_100750BB4();
    v48 = v75;
    sub_100750BF4();
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    v50 = v49;
    if (qword_100920568 != -1)
    {
      swift_once();
    }

    [qword_10092C7F8 size];
    v52 = v50 * v51 + 4.0;
    sub_100750BC4();
    v54 = v53;
    v56 = v55;
    (*(v76 + 8))(v48, v77);
    v57 = v54 + v52;
  }

  else
  {
    v56 = JUMeasurementsZero[1];
    v57 = JUMeasurementsZero[0];
    v46 = v89;
  }

  if ((JUMeasurementsEqual() & 1) != 0 || (JUMeasurementsEqual() & 1) != 0 || v69 >= v88 + 16.0 + v57)
  {
    if (v90 > v56)
    {
      v58 = v90;
    }

    else
    {
      v58 = v56;
    }
  }

  else
  {
    v58 = v90 + v56 + 8.0;
  }

  v59 = objc_opt_self();
  v60 = [v59 fractionalWidthDimension:1.0];
  if (qword_100920560 != -1)
  {
    swift_once();
  }

  v61 = qword_10092C7E8;
  sub_10000C888(qword_10092C7D0, qword_10092C7E8);
  sub_100747BA4();
  v62 = v85;
  sub_100536120(v61);
  sub_100750564();
  v64 = v63;
  swift_unknownObjectRelease();
  (*(v86 + 8))(v62, v87);
  v65 = [v59 absoluteDimension:v58 + v64];
  v66 = [objc_opt_self() sizeWithWidthDimension:v60 heightDimension:v65];

  return v66;
}

uint64_t sub_1001D72CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001D7314()
{
  result = qword_10092C840;
  if (!qword_10092C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C840);
  }

  return result;
}

void DebugMenuPage.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1001D7408(uint64_t a1, int a2)
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

uint64_t sub_1001D7450(uint64_t result, int a2, int a3)
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

void PageTraitEnvironment.pageColumnWidth.getter()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007537B4();

  if (v3)
  {
    [v1 pageContainerSize];
    sub_1001D7694(v4, v5);
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  else
  {
    [v1 pageMarginInsets];
    [v1 pageContainerSize];
  }
}

void PageTraitEnvironment.defaultPageMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007537B4();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

void sub_1001D7694(double a1, double a2)
{
  if (a2 >= a1)
  {
    if (a1 != 744.0)
    {
      JUScreenClassGetPortraitWidth();
      if (v4 < a1)
      {
        JUScreenClassGetPortraitWidth();
      }
    }
  }

  else if (a1 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v3 < a1)
    {
      JUScreenClassGetLandscapeWidth();
    }
  }
}

double PageTraitEnvironment.pageContentSize.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  [v0 pageMarginInsets];
  return v2 - v3 - v4;
}

void (*sub_1001D77A0(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1001D7804;
}

void sub_1001D7804(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1001D9234(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100009D34();
        v10 = v4;
        v11 = sub_100753FC4();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_10062FDFC();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_1001D9234(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100009D34();
      v16 = v4;
      v17 = sub_100753FC4();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_10062FDFC();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

char *sub_1001D7AA8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView]];

  v18 = [v15 contentView];
  [v18 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots]];

  return v15;
}

id sub_1001D7D60(uint64_t a1)
{
  v2 = v1;
  v34.receiver = v1;
  v34.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  v3 = [v1 contentView];
  sub_100009D34();
  sub_1007477B4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView];
  sub_10017CB48();
  sub_100753B24();
  [v12 setFrame:?];
  v35.origin.x = v5;
  v35.origin.y = v7;
  v35.size.width = v9;
  v35.size.height = v11;
  CGRectGetMinX(v35);
  [v12 frame];
  CGRectGetMaxY(v36);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v13 = sub_100750B04();
  sub_10000D0FC(v13, qword_100982098);
  v14 = [v2 traitCollection];
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007A5CF0;
  *(v15 + 32) = v14;
  v16 = v14;
  v17 = sub_100751044();
  sub_100750544();

  v19 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title];
  v18 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title + 8];
  v20 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];

  v21 = [v20 text];
  if (v21)
  {
    v22 = v21;
    v23 = sub_100753094();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [*&v12[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel] text];
  if (v26)
  {
    v27 = v26;
    v28 = sub_100753094();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = [v2 traitCollection];
  sub_1001D8750(v19, v18, v23, v25, v28, v30, v31, v9, v11);

  v32 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots];
  [v2 bounds];
  sub_100753B24();
  return [v32 setFrame:?];
}

id sub_1001D81B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ContentSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001D8284(void *a1)
{
  sub_1001D85EC(a1);
}

uint64_t (*sub_1001D82BC(uint64_t **a1))()
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
  v2[4] = sub_1001D77A0(v2);
  return sub_1000181A8;
}

uint64_t sub_1001D832C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1001D8380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1001D83EC(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1001D8488(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100009D34();
  v5 = v2;
  v6 = sub_100753FC4();

  return v6 & 1;
}

id sub_1001D85EC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001D9234(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    sub_100009D34();
    v7 = v2;
    v8 = sub_100753FC4();

    if (v8)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v4 = v9;
        [v9 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v2 addSubview:v10];
  }

  sub_10062FDFC();

  return [v2 setNeedsLayout];
}

double sub_1001D8750(NSString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8, double a9)
{
  v81 = a5;
  v82 = a6;
  v76 = a3;
  v77 = a4;
  v70 = a1;
  v11 = sub_10074A8C4();
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v86 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074CD14();
  v79 = *(v13 - 8);
  v80 = v13;
  __chkstk_darwin(v13);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007479B4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  v22 = sub_10074A8A4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v84 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v66 - v26;
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v28 = sub_10000D0FC(v22, qword_10097E010);
  v29 = *(v23 + 16);
  v93 = v22;
  v73 = v29;
  v74 = v23 + 16;
  v29(v27, v28, v22);
  v30 = sub_100753804();
  v85 = v23;
  if (v30)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v31 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v31 = qword_10093FF58;
  }

  v32 = sub_10000D0FC(v15, v31);
  v33 = v16;
  (*(v16 + 16))(v18, v32, v15);
  (*(v16 + 32))(v21, v18, v15);
  v34 = [a7 preferredContentSizeCategory];
  sub_100753924();
  v83 = v15;

  sub_100747964();
  sub_100747994();
  v92 = v27;
  sub_10074A894();
  sub_10074A884();
  v35 = sub_100750F34();
  v75 = a7;
  v36 = v35;
  swift_allocObject();
  v91 = sub_100750F14();
  v37 = objc_opt_self();

  v67 = v37;
  v38 = [v37 preferredFontForTextStyle:UIFontTextStyleBody];
  v39 = sub_10074F3F4();
  v78 = v21;
  v40 = v39;
  v130[3] = v39;
  *&v90 = sub_1001D9234(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v130[4] = v90;
  v41 = sub_10000D134(v130);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v42 = *(v40 - 8);
  v43 = *(v42 + 104);
  v72 = v33;
  v89 = v42 + 104;
  v43(v41);
  v68 = v43;
  sub_10074FC74();
  sub_10000C620(v130);
  v44 = v71;
  sub_10074CD04();
  sub_10074CCE4();
  v45 = v80;
  v79 = *(v79 + 8);
  (v79)(v44, v80);
  v70 = UIFontTextStyleFootnote;

  v46 = [v37 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v129[3] = v40;
  v129[4] = v90;
  v47 = sub_10000D134(v129);
  v48 = v69;
  (v43)(v47, v69, v40);
  sub_10074FC74();
  sub_10000C620(v129);
  sub_10074CD04();
  sub_10074CCE4();
  v49 = v79;
  (v79)(v44, v45);

  v50 = [v67 preferredFontForTextStyle:v70];
  v128[3] = v40;
  v128[4] = v90;
  v51 = sub_10000D134(v128);
  v68(v51, v48, v40);
  sub_10074FC74();
  sub_10000C620(v128);
  sub_10074CD04();
  sub_10074CCE4();
  v49(v44, v45);
  sub_10001BB7C();
  swift_allocObject();
  v52 = sub_100750F14();

  sub_10001BB7C();
  swift_allocObject();
  v53 = sub_100750F14();
  v73(v84, v92, v93);
  v127 = &protocol witness table for LayoutViewPlaceholder;
  v126 = v36;
  v125 = v91;
  v124 = 0;
  *&v122[40] = 0u;
  v123 = 0u;
  sub_10000C824(v130, v122);
  sub_10000C824(v129, &v121);
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;

  v54 = sub_100750F24();
  v114 = &protocol witness table for LayoutViewPlaceholder;
  v113 = v36;
  v112 = v54;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v102 = 0;
  v101 = 0u;
  *&v100[40] = 0u;
  sub_10000C824(v128, v100);
  v98 = v36;
  v99 = &protocol witness table for LayoutViewPlaceholder;
  v96 = &protocol witness table for LayoutViewPlaceholder;
  v97 = v52;
  v95 = v36;
  v94 = v53;
  v55 = v86;
  sub_10074A8B4();
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v56 = swift_allocObject();
  v90 = xmmword_1007A5CF0;
  *(v56 + 16) = xmmword_1007A5CF0;
  v57 = v75;
  *(v56 + 32) = v75;
  v58 = v57;
  v59 = sub_100751044();
  sub_1001D9234(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v60 = v88;
  sub_100750404();

  (*(v87 + 8))(v55, v60);
  sub_10000C620(v128);
  sub_10000C620(v129);
  sub_10000C620(v130);
  (*(v72 + 8))(v78, v83);
  (*(v85 + 8))(v92, v93);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v61 = sub_100750B04();
  sub_10000D0FC(v61, qword_100982098);
  v62 = swift_allocObject();
  *(v62 + 16) = v90;
  *(v62 + 32) = v58;
  v63 = v58;
  v64 = sub_100751044();
  sub_100750544();

  return a8;
}

uint64_t sub_1001D9234(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t ProductLockupLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:iconHorizontalMargin:titleSpace:titleFont:titleMaxNumberOfLines:subtitleSpace:subtitleFont:subtitleMaxNumberOfLines:tertiaryTitleSpace:tertiaryTitleFont:tertiaryTitleMaxNumberOfLines:offerTopSpace:offerSubtitleMetrics:shareButtonLeadingMargin:expandedOfferSubtitleSpace:expandedOfferHorizontalMargin:compactExpandedOfferShareButtonTopSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 *a20, uint64_t a21, __int128 *a22, __int128 *a23, uint64_t a24, __int128 *a25, __int128 *a26)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_100012160(a1, (a9 + 4));
  sub_100012160(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v33 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = v33[8];
  v35 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v44 = *(*(v35 - 8) + 32);
  v44(a9 + v34, a3, v35);
  v44(a9 + v33[9], a4, v35);
  v36 = v33[10];
  v37 = sub_10000C518(&unk_100923C20, &unk_1007B1940);
  v43 = *(*(v37 - 8) + 32);
  v43(a9 + v36, a5, v37);
  v38 = v33[11];
  v39 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  v40 = *(*(v39 - 8) + 32);
  v40(a9 + v38, a6, v39);
  v44(a9 + v33[12], a7, v35);
  v43(a9 + v33[13], a8, v37);
  v40(a9 + v33[14], a16, v39);
  v44(a9 + v33[15], a17, v35);
  v43(a9 + v33[16], a18, v37);
  v40(a9 + v33[17], a19, v39);
  sub_100012160(a20, a9 + v33[18]);
  sub_1001D97E4(a21, a9 + v33[19], type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_100012160(a22, a9 + v33[20]);
  sub_100012160(a23, a9 + v33[21]);
  v44(a9 + v33[22], a24, v35);
  sub_100012160(a25, a9 + v33[23]);
  v41 = a9 + v33[24];

  return sub_100012160(a26, v41);
}

__n128 ProductLockupLayout.init(metrics:iconView:titleLabel:developerLabel:taglineLabel:tertiaryTitleLabel:shareButton:offerButton:offerSubtitleLabel:expandedOfferTitleLabel:expandedOfferSubtitleLabel:hasExpandedOffer:offerSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1001D97E4(a1, a9, type metadata accessor for ProductLockupLayout.Metrics);
  v23 = type metadata accessor for ProductLockupLayout(0);
  sub_100012160(a2, a9 + v23[5]);
  sub_100012160(a3, a9 + v23[6]);
  sub_100012160(a4, a9 + v23[7]);
  sub_100012160(a5, a9 + v23[8]);
  v24 = a9 + v23[9];
  v25 = *(a6 + 16);
  *v24 = *a6;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a6 + 32);
  v26 = a9 + v23[10];
  v27 = *(a7 + 16);
  *v26 = *a7;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a7 + 32);
  sub_100012160(a8, a9 + v23[11]);
  sub_100012160(a10, a9 + v23[12]);
  v28 = a9 + v23[13];
  v29 = *(a11 + 16);
  *v28 = *a11;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a11 + 32);
  v30 = a9 + v23[14];
  v31 = *(a12 + 16);
  *v30 = *a12;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a12 + 32);
  *(a9 + v23[15]) = a13;
  v32 = (a9 + v23[16]);
  *v32 = a14;
  v32[1] = a15;
  v33 = a9 + v23[17];
  *(v33 + 32) = *(a16 + 32);
  v34 = *(a16 + 16);
  *v33 = *a16;
  *(v33 + 16) = v34;
  v35 = a9 + v23[18];
  *(v35 + 32) = *(a17 + 32);
  result = *(a17 + 16);
  *v35 = *a17;
  *(v35 + 16) = result;
  return result;
}

uint64_t sub_1001D97E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ProductLockupLayout.offerSubtitleText.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProductLockupLayout(0) + 64));

  return v1;
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_10000C518(&unk_100923C20, &unk_1007B1940);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_10000C518(&unk_100923C20, &unk_1007B1940);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.maxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 24);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.leadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

void ProductLockupAccessibilityLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  sub_10000C620((v1 + 32));

  return sub_100012160(a1, v1 + 32);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  sub_10000C620((v1 + 72));

  return sub_100012160(a1, v1 + 72);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 40);
  v4 = sub_10000C518(&unk_100923C20, &unk_1007B1940);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 44);
  v4 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 52);
  v4 = sub_10000C518(&unk_100923C20, &unk_1007B1940);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 64);
  v4 = sub_10000C518(&unk_100923C20, &unk_1007B1940);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 72);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t sub_1001DABAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ProductLockupLayout.Metrics.offerSubtitleMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);

  return sub_1001DAC58(a1, v3);
}

uint64_t sub_1001DAC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ProductLockupLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.compactExpandedOfferShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 96);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

double ProductLockupLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  return sub_1001DFA40(a1, v3, ObjectType, a2, a3);
}

uint64_t ProductLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v267 = a6;
  v268 = a3;
  v249 = a2;
  v13 = sub_100754724();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v231 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*&v6 + 56);
  sub_10000C888((*&v6 + 32), v17);
  sub_100536120(v17);
  sub_100750564();
  v19 = v18;
  v22 = *(v14 + 8);
  v20 = v14 + 8;
  v21 = v22;
  v22(v16, v13);
  v23 = *(*&v6 + 96);
  sub_10000C888((*&v7 + 72), *(*&v7 + 96));
  sub_100536120(v23);
  sub_100750564();
  v25 = v24;
  v266 = v13;
  v22(v16, v13);
  v26 = **&v6;
  v27 = *(*&v6 + 8);
  v238 = v19;
  v239 = v25;
  v28 = sub_10010FD98(a3, a4, a5, a6, v19 + v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = *(*&v6 + 112);
  v35 = *(*&v6 + 120);
  *&v37 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  sub_10000C888((*&v7 + v37[5]), *(*&v7 + v37[5] + 24));
  v264 = a4;
  v263 = a5;
  sub_100753B24();
  sub_100750394();
  v285.origin.x = v28;
  v285.origin.y = v30;
  v285.size.width = v36;
  v250 = v35;
  v285.size.height = v35;
  MaxX = CGRectGetMaxX(v285);
  v38 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v279 = a1;
  *&v39 = COERCE_DOUBLE(sub_10000C518(&unk_1009249B0, &qword_1007B5A70));
  sub_100743464();
  v40 = v282;
  v286.origin.x = v28;
  v286.origin.y = v30;
  v286.size.width = v32;
  v286.size.height = v34;
  MinY = CGRectGetMinY(v286);
  v287.origin.x = v28;
  v287.origin.y = v30;
  v287.size.width = v32;
  v287.size.height = v34;
  Width = CGRectGetWidth(v287);
  *&v279 = a1;
  v247 = *&v39;
  sub_100743464();
  v251 = v36;
  v42 = v36 + v282;
  v273 = v28;
  v288.origin.x = v28;
  v274 = v30;
  v288.origin.y = v30;
  v288.size.width = v32;
  v288.size.height = v34;
  Height = CGRectGetHeight(v288);
  v257 = v37[10];
  sub_100016B4C(*&v6 + v257, &v282, &unk_100928A00, &qword_1007A5AB0);
  v270 = v32;
  if (v283)
  {
    sub_10000C888(&v282, v283);
    sub_100750414();
    v259 = v43;
    v235 = v44;
    sub_10000C620(&v282);
  }

  else
  {
    sub_10000C8CC(&v282, &unk_100928A00, &qword_1007A5AB0);
    v259 = 0.0;
    v235 = 0.0;
  }

  v45 = v34;
  v46 = MaxX + v40;
  v47 = Width - v42;
  sub_100016B4C(*&v6 + v257, &v282, &unk_100928A00, &qword_1007A5AB0);
  v48 = v283;
  sub_10000C8CC(&v282, &unk_100928A00, &qword_1007A5AB0);
  v49 = 0.0;
  if (v48)
  {
    v50 = (*&v6 + *(v38 + 80));
    v51 = v50[3];
    sub_10000C888(v50, v51);
    sub_100536120(v51);
    sub_100750564();
    v49 = v52;
    v21(v16, v266);
  }

  v255 = v38;
  v53 = (*&v6 + v37[11]);
  v54 = v53[3];
  v248 = v53;
  sub_10000C888(v53, v54);
  v289.origin.x = v46;
  v289.origin.y = MinY;
  v289.size.width = v47;
  v289.size.height = Height;
  CGRectGetWidth(v289);
  v272 = v47;
  v55 = v273;
  v290.origin.x = v273;
  v56 = v274;
  v290.origin.y = v274;
  v290.size.width = v270;
  v262 = v49;
  v57 = v270;
  v290.size.height = v45;
  CGRectGetHeight(v290);
  sub_100750414();
  v59 = v58;
  v258 = v60;
  v291.origin.x = v55;
  v291.origin.y = v56;
  v291.size.width = v57;
  v291.size.height = v45;
  v269 = v45;
  CGRectGetWidth(v291);
  v61 = *&v6 + *(v38 + 76);
  v62 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v63 = (v61 + *(v62 + 28));
  v64 = v63[3];
  v233 = v63;
  sub_10000C888(v63, v64);
  MaxX = v7;
  v65 = v37;
  v66 = a1;
  v67 = v21;
  sub_100536120(v64);
  sub_100750564();
  v68 = v266;
  v67(v16, v266);
  v252 = v59;
  v69 = v46;
  v70 = v259;
  v71 = (v61 + *(v62 + 24));
  v72 = v71[3];
  v231 = v71;
  sub_10000C888(v71, v72);
  sub_100536120(v72);
  sub_100750564();
  v253 = v16;
  v254 = v20;
  v260 = v67;
  v67(v16, v68);
  v73 = v66;
  v74 = (*&MaxX + v65[12]);
  v75 = v74[3];
  v234 = v74;
  sub_10000C888(v74, v75);
  v292.origin.x = v55;
  v76 = v56;
  v292.origin.y = v56;
  v77 = v270;
  v292.size.width = v270;
  v292.size.height = v45;
  CGRectGetHeight(v292);
  sub_100750404();
  v246 = v78;
  v79 = [v66 traitCollection];
  LOBYTE(v75) = sub_1007537D4();

  v293.origin.x = v69;
  v80 = v69;
  v265 = v69;
  v81 = MinY;
  v293.origin.y = MinY;
  v293.size.width = v272;
  v82 = Height;
  v293.size.height = Height;
  v83 = CGRectGetWidth(v293);
  if (v75)
  {
    v84 = v83;
  }

  else
  {
    v84 = v83 - v70 - v262;
  }

  v245 = v84;
  v85 = (*&MaxX + v65[6]);
  sub_10000C888(v85, v85[3]);
  v294.origin.x = v55;
  v294.origin.y = v76;
  v294.size.width = v77;
  v86 = v269;
  v294.size.height = v269;
  CGRectGetHeight(v294);
  sub_100750404();
  v262 = v87;
  v243 = v88;
  v90 = v89;
  v256 = v89;
  v261 = v91;
  v92 = v255;
  *&v279 = v73;
  sub_100743464();
  v93 = v55;
  v94 = v282;
  v295.origin.x = v80;
  v295.origin.y = v81;
  v295.size.width = v272;
  v295.size.height = v82;
  MinX = CGRectGetMinX(v295);
  v296.origin.x = v93;
  v95 = v274;
  v296.origin.y = v274;
  v296.size.width = v77;
  v296.size.height = v86;
  v96 = CGRectGetMinY(v296);
  if (v94 - v90 > 0.0)
  {
    v97 = v94 - v90;
  }

  else
  {
    v97 = 0.0;
  }

  sub_10000C888(v85, v85[3]);
  sub_100750844();
  if (v262 >= v245)
  {
    v99 = v245;
  }

  else
  {
    v99 = v262;
  }

  v100 = v96 + v97 + v98;
  v297.origin.x = MinX;
  v297.origin.y = v100;
  v297.size.width = v99;
  v101 = v243;
  v297.size.height = v243;
  v244 = CGRectGetMaxY(v297) - v261;
  sub_10000C888(v85, v85[3]);
  v102 = v95;
  sub_100753B24();
  sub_100750394();
  v232 = v85;
  sub_10000C824(v85, &v282);
  *&v279 = v73;
  sub_10000C518(&unk_10092BC10, qword_1007A7070);
  sub_100743464();
  *&v245 = v65[9];
  sub_100016B4C(*&MaxX + *&v245, &v279, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C8CC(&v279, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C888(&v282, v283);
  v298.var0 = v262;
  v298.var1 = v101;
  v298.var2 = v256;
  v298.var3 = v261;
  sub_100750874(v298);
  sub_10000C620(&v282);
  v103 = (*&MaxX + v65[7]);
  sub_10000C888(v103, v103[3]);
  sub_100750834();
  v256 = *&v65;
  v104 = v65[8];
  v105 = *&MaxX;
  v106 = (*&MaxX + v104);
  sub_10000C888((*&MaxX + v104), *(*&MaxX + v104 + 24));
  sub_100750834();
  *&v279 = v73;
  sub_100743464();
  v107 = v282;
  sub_10000C888(v103, v103[3]);
  v108 = v265;
  v299.origin.x = v265;
  v109 = MinY;
  v299.origin.y = MinY;
  v110 = v272;
  v299.size.width = v272;
  v111 = Height;
  v299.size.height = Height;
  CGRectGetWidth(v299);
  v300.origin.x = v273;
  v300.origin.y = v102;
  v112 = v270;
  v300.size.width = v270;
  v300.size.height = v269;
  CGRectGetHeight(v300);
  sub_100750404();
  v114 = v113;
  v243 = v115;
  v117 = v116;
  v237 = v118;
  v301.origin.x = v108;
  v301.origin.y = v109;
  v301.size.width = v110;
  v301.size.height = v111;
  MinX = CGRectGetMinX(v301);
  v302.origin.x = v108;
  v302.origin.y = v109;
  v302.size.width = v110;
  v302.size.height = v111;
  v119 = CGRectGetWidth(v302);
  if (v114 < v119)
  {
    v119 = v114;
  }

  v262 = v119;
  v120 = v244 + v107;
  v261 = v244 + v107 - v117;
  sub_10000C888(v106, v106[3]);
  v303.origin.x = v108;
  v303.origin.y = v109;
  v303.size.width = v110;
  v303.size.height = v111;
  CGRectGetWidth(v303);
  v304.origin.x = v273;
  v304.origin.y = v274;
  v304.size.width = v112;
  v304.size.height = v269;
  CGRectGetHeight(v304);
  sub_100750404();
  v122 = v121;
  v244 = v123;
  v125 = v124;
  v236 = v126;
  v305.origin.x = v108;
  v305.origin.y = v109;
  v305.size.width = v110;
  v305.size.height = v111;
  v241 = CGRectGetMinX(v305);
  v306.origin.x = v108;
  v306.origin.y = v109;
  v306.size.width = v110;
  v306.size.height = v111;
  v127 = CGRectGetWidth(v306);
  if (v122 >= v127)
  {
    v122 = v127;
  }

  v128 = v120 - v125;
  sub_10000C888(v103, v103[3]);
  v129 = MinX;
  v130 = v243;
  sub_100753B24();
  sub_100750394();
  sub_10000C888(v106, v106[3]);
  v131 = v241;
  v240 = v128;
  v132 = v244;
  sub_100753B24();
  sub_100750394();
  v307.origin.x = v131;
  v133 = v131;
  v307.origin.y = v128;
  v307.size.width = v122;
  v307.size.height = v132;
  v134 = v132;
  MaxY = CGRectGetMaxY(v307);
  v136 = v129;
  v308.origin.x = v129;
  v137 = v261;
  v308.origin.y = v261;
  v138 = v262;
  v308.size.width = v262;
  v308.size.height = v130;
  v139 = CGRectGetMaxY(v308) < MaxY;
  v140 = v133;
  if (v139)
  {
    v141 = v133;
  }

  else
  {
    v141 = v136;
  }

  v142 = v240;
  if (v139)
  {
    v143 = v240;
  }

  else
  {
    v143 = v137;
  }

  v144 = v122;
  if (!v139)
  {
    v122 = v138;
  }

  v145 = v134;
  if (!v139)
  {
    v134 = v130;
  }

  v244 = CGRectGetMaxY(*&v140);
  v309.origin.x = v136;
  v309.origin.y = v137;
  v309.size.width = v138;
  v309.size.height = v130;
  v146 = CGRectGetMaxY(v309);
  v310.origin.x = v141;
  v310.origin.y = v143;
  v310.size.width = v122;
  v310.size.height = v134;
  v147 = CGRectGetMaxY(v310);
  sub_100016B4C(v105 + *&v245, &v279, &qword_10092BC30, &qword_1007AD5C0);
  if (v280)
  {
    v148 = v237;
    if (v146 < v244)
    {
      v148 = v236;
    }

    v262 = v147 - v148;
    sub_100012160(&v279, &v282);
    *&v277 = v73;
    sub_100743464();
    v261 = *&v279;
    sub_10000C888(&v282, v283);
    v149 = v265;
    v311.origin.x = v265;
    v150 = MinY;
    v311.origin.y = MinY;
    v151 = v272;
    v311.size.width = v272;
    v152 = Height;
    v311.size.height = Height;
    CGRectGetWidth(v311);
    v312.origin.x = v273;
    v312.origin.y = v274;
    v312.size.width = v270;
    v312.size.height = v269;
    CGRectGetHeight(v312);
    sub_100750404();
    v154 = v153;
    v156 = v155;
    v158 = v157;
    v313.origin.x = v149;
    v313.origin.y = v150;
    v313.size.width = v151;
    v313.size.height = v152;
    v159 = CGRectGetMinX(v313);
    v314.origin.x = v149;
    v314.origin.y = v150;
    v314.size.width = v151;
    v314.size.height = v152;
    v160 = CGRectGetWidth(v314);
    if (v154 >= v160)
    {
      v154 = v160;
    }

    v161 = v262 + v261 - v158;
    sub_10000C888(&v282, v283);
    sub_100753B24();
    sub_100750394();
    v315.origin.x = v159;
    v315.origin.y = v161;
    v315.size.width = v154;
    v315.size.height = v156;
    v162 = CGRectGetMaxY(v315);
    v316.origin.x = v159;
    v316.origin.y = v161;
    v316.size.width = v154;
    v316.size.height = v156;
    CGRectGetMaxY(v316);
    sub_10000C620(&v282);
    v163 = v92;
  }

  else
  {
    sub_10000C8CC(&v279, &qword_10092BC30, &qword_1007AD5C0);
    v163 = v92;
    v162 = v147;
  }

  v164 = v248;
  sub_10000C888(v248, v248[3]);
  v165 = sub_1007503A4();
  v317.origin.x = v273;
  v317.origin.y = v274;
  v317.size.width = v251;
  v317.size.height = v250;
  v166 = CGRectGetMaxY(v317);
  v167 = v246;
  if ((v165 & 1) == 0)
  {
    v167 = v258;
  }

  v168 = v166 - v167;
  v169 = (v105 + *(v163 + 72));
  v170 = v169[3];
  sub_10000C888(v169, v170);
  v171 = v253;
  sub_100536120(v170);
  sub_100750564();
  v173 = v172;
  v260(v171, v266);
  v247 = v162;
  v174 = v162 + v173;
  v318.origin.x = v265;
  v175 = MinY;
  v318.origin.y = MinY;
  v318.size.width = v272;
  v318.size.height = Height;
  v176 = CGRectGetMinX(v318);
  if (v168 <= v174)
  {
    v168 = v174;
  }

  sub_10000C888(v164, v164[3]);
  v177 = v268;
  v178 = v267;
  v261 = v176;
  v262 = v168;
  v179 = v252;
  sub_100753B24();
  sub_100750394();
  v180 = *&v256;
  if (*(v105 + *(*&v256 + 60)) == 1)
  {
    v181 = *(*&v256 + 52);
    sub_100016B4C(v105 + v181, &v279, &qword_10092BC30, &qword_1007AD5C0);
    if (v280)
    {
      sub_100012160(&v279, &v282);
      sub_100016B4C(v105 + v180[14], &v277, &qword_10092BC30, &qword_1007AD5C0);
      v182 = v178;
      v183 = v264;
      if (v278)
      {
        v184 = v163;
        sub_100012160(&v277, &v279);
        v185 = [v73 traitCollection];
        v186 = sub_1007537D4();

        v187 = v283;
        v188 = v284;
        v189 = sub_10000C888(&v282, v283);
        v190 = v280;
        v191 = v281;
        v192 = sub_10000C888(&v279, v280);
        v193 = *(v188 + 8);
        v194 = *(v191 + 8);
        if (v186)
        {
          sub_1001DE9EC(v273, v274, v251, v250, v259, v235, v261, v262, v189, v192, v73, v105, v187, v190, v193, v194, v179, v258, v247, v273, v274, v270, v269);
        }

        else
        {
          sub_1001E1824(v259, v235, v261, v262, v179, v258, v273, v274, v189, v192, v73, v105, v187, v190, v193, v194, v270, v269, v265, v175, v272, Height);
        }

        sub_10000C620(&v279);
        sub_10000C620(&v282);
        v180 = *&v256;
        v163 = v184;
        goto LABEL_67;
      }

      sub_10000C8CC(&v277, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C620(&v282);
    }

    else
    {
      sub_10000C8CC(&v279, &qword_10092BC30, &qword_1007AD5C0);
      v182 = v178;
      v183 = v264;
    }

    sub_100016B4C(v105 + v181, &v282, &qword_10092BC30, &qword_1007AD5C0);
    v200 = v263;
    if (v283)
    {
      sub_10000C888(&v282, v283);
      sub_100750394();
      sub_10000C620(&v282);
    }

    else
    {
      sub_10000C8CC(&v282, &qword_10092BC30, &qword_1007AD5C0);
    }

    sub_100016B4C(v105 + v180[14], &v282, &qword_10092BC30, &qword_1007AD5C0);
    if (v283)
    {
      sub_10000C888(&v282, v283);
LABEL_81:
      sub_100750394();
      sub_10000C620(&v282);
      goto LABEL_84;
    }

    v205 = &qword_10092BC30;
    v206 = &qword_1007AD5C0;
    v207 = &v282;
  }

  else
  {
    sub_100016B4C(v105 + *(*&v256 + 52), &v282, &qword_10092BC30, &qword_1007AD5C0);
    if (v283)
    {
      sub_10000C888(&v282, v283);
      sub_100750394();
      sub_10000C620(&v282);
    }

    else
    {
      sub_10000C8CC(&v282, &qword_10092BC30, &qword_1007AD5C0);
    }

    v195 = v270;
    v182 = v178;
    v183 = v264;
    sub_100016B4C(v105 + v180[14], &v282, &qword_10092BC30, &qword_1007AD5C0);
    if (v283)
    {
      sub_10000C888(&v282, v283);
      sub_100750394();
      sub_10000C620(&v282);
    }

    else
    {
      sub_10000C8CC(&v282, &qword_10092BC30, &qword_1007AD5C0);
    }

    v196 = Height;
    v197 = [v73 traitCollection];
    v198 = sub_1007537D4();

    if (v198)
    {
      sub_1001DD204(v73, v261, v262, v179, v258, v259, v235, v273, v274, v195, v269, v265, v175, v272, v196);
LABEL_67:
      v200 = v263;
      goto LABEL_84;
    }

    v199 = v234;
    sub_10000C888(v234, v234[3]);
    if (sub_1007503A4())
    {
      sub_10000C888(v199, v199[3]);
      sub_100750394();
      v163 = v255;
      v200 = v263;
    }

    else
    {
      sub_100016B4C(v105 + v257, &v282, &unk_100928A00, &qword_1007A5AB0);
      v201 = v283;
      sub_10000C8CC(&v282, &unk_100928A00, &qword_1007A5AB0);
      if (v201)
      {
        v202 = (v105 + *(v255 + 80));
        v203 = v202[3];
        sub_10000C888(v202, v203);
        sub_100536120(v203);
        sub_100750564();
        v251 = v204;
        v260(v171, v266);
      }

      else
      {
        v251 = 0.0;
      }

      v208 = v272;
      v209 = v261;
      sub_100016B4C(v105 + v257, &v282, &unk_100928A00, &qword_1007A5AB0);
      if (v283)
      {
        sub_10000C888(&v282, v283);
        sub_100750414();
        sub_10000C620(&v282);
      }

      else
      {
        sub_10000C8CC(&v282, &unk_100928A00, &qword_1007A5AB0);
      }

      v319.origin.x = v265;
      v319.origin.y = v175;
      v319.size.width = v208;
      v319.size.height = v196;
      CGRectGetWidth(v319);
      v320.origin.x = v209;
      v210 = v262;
      v320.origin.y = v262;
      v320.size.width = v179;
      v211 = v258;
      v320.size.height = v258;
      CGRectGetWidth(v320);
      v212 = v233[3];
      sub_10000C888(v233, v212);
      sub_100536120(v212);
      sub_100750564();
      v213 = v171;
      v214 = v266;
      v215 = v171;
      v216 = v260;
      v260(v213, v266);
      v217 = v261;
      v218 = v179;
      v219 = v231[3];
      sub_10000C888(v231, v219);
      sub_100536120(v219);
      sub_100750564();
      v216(v215, v214);
      sub_10000C888(v234, v234[3]);
      sub_100750404();
      v221 = v220;
      v321.origin.x = v217;
      v321.origin.y = v210;
      v321.size.width = v218;
      v321.size.height = v211;
      CGRectGetMidY(v321);
      sub_10000C888(v164, v164[3]);
      if ((sub_1007503A4() & 1) != 0 || (v322.origin.x = v217, v322.origin.y = v210, v322.size.width = v218, v322.size.height = v211, CGRectGetHeight(v322) < v221))
      {
        v323.origin.x = v217;
        v323.origin.y = v210;
        v323.size.width = v218;
        v323.size.height = v211;
        CGRectGetMinY(v323);
      }

      v200 = v263;
      sub_10000C888(v164, v164[3]);
      v222 = sub_1007503A4();
      v171 = v253;
      v163 = v255;
      v223 = v217;
      v224 = v262;
      v225 = v252;
      v226 = v211;
      if (v222)
      {
        CGRectGetMinX(*&v223);
      }

      else
      {
        CGRectGetMaxX(*&v223);
        v227 = v233[3];
        sub_10000C888(v233, v227);
        sub_100536120(v227);
        sub_100750564();
        v260(v171, v266);
      }

      v183 = v264;
      sub_10000C888(v234, v234[3]);
      sub_100753B24();
      sub_100750394();
      v177 = v268;
      v175 = MinY;
      v196 = Height;
    }

    sub_100016B4C(v105 + v257, &v279, &unk_100928A00, &qword_1007A5AB0);
    v180 = *&v256;
    if (v280)
    {
      sub_100012160(&v279, &v282);
      sub_10000C888(v232, v232[3]);
      sub_100750384();
      CGRectGetMidY(v324);
      v325.size.height = v196;
      v325.origin.x = v265;
      v325.origin.y = v175;
      v325.size.width = v272;
      CGRectGetMaxX(v325);
      sub_10000C888(&v282, v283);
      sub_100753B24();
      goto LABEL_81;
    }

    v205 = &unk_100928A00;
    v206 = &qword_1007A5AB0;
    v207 = &v279;
  }

  sub_10000C8CC(v207, v205, v206);
LABEL_84:
  sub_100016B4C(v105 + v180[17], &v279, &unk_100928A00, &qword_1007A5AB0);
  if (v280)
  {
    sub_100012160(&v279, &v282);
    sub_10000C888(&v282, v283);
    v326.origin.x = v177;
    v326.origin.y = v183;
    v326.size.width = v200;
    v326.size.height = v182;
    CGRectGetMinX(v326);
    v327.origin.x = v177;
    v327.origin.y = v183;
    v327.size.width = v200;
    v327.size.height = v182;
    CGRectGetMinY(v327);
    v328.origin.x = v177;
    v328.origin.y = v183;
    v328.size.width = v200;
    v328.size.height = v182;
    CGRectGetWidth(v328);
    sub_100750394();
    sub_10000C620(&v282);
  }

  else
  {
    sub_10000C8CC(&v279, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100016B4C(v105 + v180[18], &v279, &unk_100928A00, &qword_1007A5AB0);
  if (v280)
  {
    sub_100012160(&v279, &v282);
    sub_10000C888(&v282, v283);
    v329.origin.x = v177;
    v329.origin.y = v183;
    v329.size.width = v200;
    v329.size.height = v182;
    CGRectGetMinX(v329);
    v330.origin.x = v177;
    v330.origin.y = v183;
    v330.size.width = v200;
    v330.size.height = v182;
    CGRectGetMaxY(v330);
    v228 = (v105 + *(v163 + 96));
    v229 = v228[3];
    sub_10000C888(v228, v229);
    sub_100536120(v229);
    sub_100750564();
    v260(v171, v266);
    v331.origin.x = v177;
    v331.origin.y = v183;
    v331.size.width = v200;
    v331.size.height = v182;
    CGRectGetWidth(v331);
    sub_100750394();
    sub_10000C620(&v282);
  }

  else
  {
    sub_10000C8CC(&v279, &unk_100928A00, &qword_1007A5AB0);
  }

  return sub_100750314();
}

uint64_t sub_1001DD204(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15)
{
  v16 = v15;
  v169 = a9;
  v168 = a8;
  v164 = a7;
  v174 = a2;
  v22 = a14;
  v23 = a15;
  v173 = a13;
  v24 = a12;
  v179 = sub_10074CD14();
  v25 = *(v179 - 8);
  __chkstk_darwin(v179);
  v27 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v145 - v29;
  v176 = sub_100740E74();
  v151 = *(v176 - 1);
  __chkstk_darwin(v176);
  v150 = &v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100754724();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for ProductLockupLayout(0);
  v171 = *(v177 + 40);
  sub_100016B4C(v15 + v171, v182, &unk_100928A00, &qword_1007A5AB0);
  v35 = v183;
  sub_10000C8CC(v182, &unk_100928A00, &qword_1007A5AB0);
  v147 = v27;
  v175 = v25;
  if (v35)
  {
    v36 = (v15 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80));
    v37 = v36[3];
    sub_10000C888(v36, v37);
    sub_100536120(v37);
    sub_100750564();
    v153 = v38;
    (*(v32 + 8))(v34, v31);
  }

  else
  {
    v153 = 0.0;
  }

  v166 = a11;
  v165 = a10;
  v185.origin.x = a12;
  v39 = v173;
  v185.origin.y = v173;
  v185.size.width = a14;
  v185.size.height = a15;
  Width = CGRectGetWidth(v185);
  v186.origin.x = v174;
  v186.origin.y = a3;
  v167 = a4;
  v186.size.width = a4;
  v172 = a5;
  v186.size.height = a5;
  v40 = CGRectGetWidth(v186);
  v148 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v41 = (v15 + *(v148 + 76));
  v42 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v43 = (v41 + *(v42 + 28));
  v44 = v43[3];
  v154 = v43;
  sub_10000C888(v43, v44);
  sub_100536120(v44);
  sub_100750564();
  v46 = v45;
  v47 = *(v32 + 8);
  v159 = v34;
  v160 = v32 + 8;
  v158 = v47;
  v47(v34, v31);
  v48 = v177;
  v49 = (v15 + *(v177 + 64));
  v50 = *(v49 + 1);
  v163 = *v49;
  v149 = v42;
  v182[0] = a1;
  sub_10000C518(&unk_100923C20, &unk_1007B1940);
  v157 = v41;
  v51 = v50;
  sub_100743464();
  v52 = v180;
  v53 = *(v15 + *(v48 + 60));
  v54 = (v15 + *(v48 + 44));
  v55 = v54[3];
  v170 = v54;
  sub_10000C888(v54, v55);
  v56 = sub_1007503A4();
  v187.origin.x = a12;
  v187.origin.y = v39;
  v187.size.width = a14;
  v187.size.height = a15;
  CGRectGetWidth(v187);
  if (*&v51 == 0.0)
  {

    v59 = v172;
    v60 = v177;
    goto LABEL_21;
  }

  v57 = a6;
  v155 = a15;
  v156 = a14;
  v161 = a12;
  v162 = a3;
  v146 = v31;
  if (v56)
  {

    v58 = 0;
    v59 = v172;
LABEL_19:
    v74 = v177;
LABEL_20:
    v104 = (v16 + *(v74 + 48));
    v60 = v74;
    sub_10000C888(v104, v104[3]);
    if ((sub_1007503A4() & 1) == 0)
    {
      v145 = v57;
      if (v58)
      {
        v106 = v174;
        sub_10000C888(v104, v104[3]);
        sub_100750404();
        v108 = v107;
        sub_10000C888(v157, v157[3]);
        v179 = v108;
        sub_100750584();
        v189.origin.x = v106;
        v189.origin.y = a3;
        v109 = v167;
        v189.size.width = v167;
        v189.size.height = v59;
        CGRectGetMinX(v189);
        v190.origin.x = v106;
        v190.origin.y = a3;
        v190.size.width = v109;
        v190.size.height = v59;
        CGRectGetWidth(v190);
        sub_10000C888(v170, v170[3]);
        v110 = sub_1007503A4();
        v111 = v106;
        v112 = a3;
        v113 = v109;
        v114 = v59;
        if (v110)
        {
          CGRectGetMinY(*&v111);
        }

        else
        {
          CGRectGetMaxY(*&v111);
        }

        v22 = v156;
        v105 = v171;
      }

      else
      {
        v115 = v171;
        sub_100016B4C(v16 + v171, v182, &unk_100928A00, &qword_1007A5AB0);
        v116 = v183;
        sub_10000C8CC(v182, &unk_100928A00, &qword_1007A5AB0);
        if (v116)
        {
          v117 = (v16 + *(v148 + 80));
          v118 = v117[3];
          sub_10000C888(v117, v118);
          v119 = v159;
          sub_100536120(v118);
          sub_100750564();
          v179 = v120;
          v158(v119, v146);
        }

        else
        {
          v179 = 0;
        }

        sub_100016B4C(v16 + v115, v182, &unk_100928A00, &qword_1007A5AB0);
        if (v183)
        {
          sub_10000C888(v182, v183);
          sub_100750414();
          v178 = v121;
          sub_10000C620(v182);
        }

        else
        {
          sub_10000C8CC(v182, &unk_100928A00, &qword_1007A5AB0);
          v178 = 0;
        }

        v191.origin.x = v161;
        v191.origin.y = v173;
        v191.size.width = v22;
        v191.size.height = v23;
        CGRectGetWidth(v191);
        v122 = v174;
        v192.origin.x = v174;
        v192.origin.y = a3;
        v123 = v167;
        v192.size.width = v167;
        v124 = v172;
        v192.size.height = v172;
        CGRectGetWidth(v192);
        v125 = v154[3];
        sub_10000C888(v154, v125);
        v126 = v159;
        sub_100536120(v125);
        sub_100750564();
        v127 = a3;
        v128 = v146;
        v129 = v158;
        v158(v126, v146);
        v130 = v124;
        v131 = (v157 + *(v149 + 24));
        v132 = v131[3];
        sub_10000C888(v131, v132);
        sub_100536120(v132);
        sub_100750564();
        v133 = v126;
        v134 = v128;
        v129(v133, v128);
        sub_10000C888(v104, v104[3]);
        sub_100750404();
        v136 = v135;
        v193.origin.x = v122;
        v193.origin.y = v127;
        v193.size.width = v123;
        v193.size.height = v130;
        CGRectGetMidY(v193);
        sub_10000C888(v170, v170[3]);
        if ((sub_1007503A4() & 1) != 0 || (v194.origin.x = v122, v194.origin.y = v127, v194.size.width = v123, v194.size.height = v130, CGRectGetHeight(v194) < v136))
        {
          v137 = v122;
          v195.origin.x = v122;
          v195.origin.y = v127;
          v195.size.width = v123;
          v195.size.height = v130;
          CGRectGetMinY(v195);
        }

        else
        {
          v137 = v122;
        }

        sub_10000C888(v170, v170[3]);
        v138 = sub_1007503A4();
        v105 = v171;
        v139 = v137;
        v140 = v162;
        v141 = v123;
        v142 = v172;
        if (v138)
        {
          CGRectGetMinX(*&v139);
        }

        else
        {
          CGRectGetMaxX(*&v139);
          v143 = v154[3];
          sub_10000C888(v154, v143);
          v144 = v159;
          sub_100536120(v143);
          sub_100750564();
          v158(v144, v134);
        }

        v22 = v156;
      }

      sub_10000C888(v104, v104[3]);
      sub_100753B24();
      sub_100750394();
      v23 = v155;
      v24 = v161;
      v59 = v172;
      a3 = v162;
      goto LABEL_44;
    }

LABEL_21:
    sub_10000C888((v16 + *(v60 + 48)), *(v16 + *(v60 + 48) + 24));
    sub_100750394();
    v105 = v171;
LABEL_44:
    sub_100016B4C(v16 + v105, &v180, &unk_100928A00, &qword_1007A5AB0);
    if (!v181)
    {
      return sub_10000C8CC(&v180, &unk_100928A00, &qword_1007A5AB0);
    }

    sub_100012160(&v180, v182);
    sub_10000C888(v170, v170[3]);
    if (sub_1007503A4())
    {
      v196.origin.x = v174;
      v196.origin.y = a3;
      v196.size.width = v167;
      v196.size.height = v59;
      CGRectGetMinY(v196);
    }

    else
    {
      v197.origin.x = v174;
      v197.origin.y = a3;
      v197.size.width = v167;
      v197.size.height = v59;
      CGRectGetMidY(v197);
    }

    v198.origin.x = v24;
    v198.origin.y = v173;
    v198.size.width = v22;
    v198.size.height = v23;
    CGRectGetMaxX(v198);
    sub_10000C888(v182, v183);
    sub_100753B24();
    sub_100750394();
    return sub_10000C620(v182);
  }

  v61 = v40;
  v62 = v57;
  v63 = objc_opt_self();

  v64 = [v63 mainScreen];
  [v64 bounds];
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v188.origin.x = v66;
  v188.origin.y = v68;
  v188.size.width = v70;
  v188.size.height = v72;
  v73 = CGRectGetWidth(v188);
  JUScreenClassGetPortraitWidth();
  v74 = v177;
  if (v73 <= v75)
  {
    v76 = v150;
    sub_100740E64();
    v182[0] = v163;
    v182[1] = v51;
    sub_1000D5C0C();
    sub_1007542C4();
    v78 = v77;
    (*(v151 + 8))(v76, v176);
    if ((v78 & 1) == 0)
    {

      v58 = 1;
      v57 = v62;
      v23 = v155;
      v22 = v156;
      v24 = v161;
      v59 = v172;
      a3 = v162;
      goto LABEL_20;
    }
  }

  v57 = v62;
  v22 = v156;
  a3 = v162;
  if (v53)
  {
    v79 = [a1 traitCollection];
    v80 = sub_1007537E4();

    if ((v80 & 1) == 0)
    {

      v58 = 1;
      v23 = v155;
      v24 = v161;
      v59 = v172;
      goto LABEL_20;
    }
  }

  v176 = v52;
  v151 = v16;
  v81 = Width - (v153 + v61 + v46 + v62);
  v153 = *&v51;
  result = sub_1001DE490(v163, v51);
  v83 = result;
  v84 = *(result + 16);
  v85 = (v175 + 8);
  LODWORD(v175) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v86 = result + 40;
  v87 = -v84;
  v88 = -1;
  v24 = v161;
  v59 = v172;
  while (1)
  {
    if (v87 + v88 == -1)
    {

      v97 = sub_10074F3F4();
      v183 = v97;
      v184 = sub_1001E25BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v98 = sub_10000D134(v182);
      (*(*(v97 - 8) + 104))(v98, v175, v97);
      v99 = v176;
      sub_10074FC74();
      sub_10000C620(v182);
      v100 = v147;
      sub_10074CD04();
      sub_1001E25BC(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
      v101 = v179;
      sub_100750404();
      v103 = v102;

      (*v85)(v100, v101);
      v58 = v81 < v103;
      goto LABEL_18;
    }

    if (++v88 >= *(v83 + 16))
    {
      break;
    }

    v89 = v86 + 16;
    v90 = sub_10074F3F4();
    v183 = v90;
    v184 = sub_1001E25BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v91 = sub_10000D134(v182);
    (*(*(v90 - 8) + 104))(v91, v175, v90);

    v92 = v176;
    sub_10074FC74();
    sub_10000C620(v182);
    v93 = v178;
    sub_10074CD04();
    sub_1001E25BC(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
    v94 = v179;
    sub_100750404();
    v96 = v95;
    result = (*v85)(v93, v94);
    v86 = v89;
    if (v81 < v96)
    {

      v58 = 1;
LABEL_18:
      v23 = v155;
      v16 = v151;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}