uint64_t sub_1004DA5C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1004DA60C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004DA624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1004DA6BC(__n128 a1)
{
  v55 = sub_100744D64();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100744D84();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10074CD14();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v43 = &v42 - v4;
  v50 = sub_10074F704();
  v46 = *(v50 - 8);
  __chkstk_darwin(v50);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100749A94();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v12 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  v16 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  sub_100746944();
  sub_1007525C4();
  (*(v17 + 8))(v19, v16);
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v20 = v43;
  (*(v13 + 8))(v15, v12);

  sub_100746964();
  v51 = v7;
  sub_1007468A4();
  swift_getKeyPath();
  v21 = v44;
  sub_100746914();

  sub_10074F674();
  (*(v46 + 8))(v21, v50);
  v22 = sub_10007DC04();
  sub_10000C824(&v70, v69);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074F524();
  swift_dynamicCast();
  v23 = *(v62 + 16);
  v50 = v11;
  v23(v45, v11, v63);
  sub_100752DF4();
  v24 = v20;
  sub_100752EB4();
  sub_10074F514();
  v25 = sub_10074F504();
  sub_100038D38();
  if (qword_100920FE0 != -1)
  {
    swift_once();
  }

  v26 = sub_100750534();
  sub_10000D0FC(v26, qword_100980CD8);
  v27 = [v22 traitCollection];
  v28 = sub_100753C14();

  v29 = sub_10074F3F4();
  v69[3] = v29;
  v69[4] = sub_1004DB234(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v30 = sub_10000D134(v69);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);
  v31 = v28;
  sub_10074FC74();
  sub_10000C620(v69);
  v32 = v47;
  sub_10074CD04();
  sub_10074CCE4();
  (*(v48 + 8))(v32, v49);
  if ((v25 & 2) != 0)
  {
    if (qword_100920318 != -1)
    {
      swift_once();
    }

    [qword_10097DC60 size];
    v33 = sub_100750F34();
    swift_allocObject();
    v34 = sub_100750F14();
    *(&v67 + 1) = v33;
    v68 = &protocol witness table for LayoutViewPlaceholder;
    *&v66 = v34;
  }

  else
  {
    v68 = 0;
    v67 = 0u;
    v66 = 0u;
  }

  if (qword_100920300 != -1)
  {
    swift_once();
  }

  v35 = v55;
  v36 = sub_10000D0FC(v55, qword_10097DC48);
  (*(v54 + 16))(v56, v36, v35);
  sub_10000C824(v69, v65);
  sub_1000CD5F0(&v66, v64);
  v37 = v59;
  sub_100744D74();
  [v22 pageMarginInsets];
  sub_100753BA4();
  sub_1004DB234(&qword_1009296E8, &type metadata accessor for FootnoteLayout, &protocol conformance descriptor for FootnoteLayout);
  v38 = v61;
  sub_100750404();
  sub_100753BC4();
  v40 = v39;

  swift_unknownObjectRelease();
  (*(v60 + 8))(v37, v38);
  sub_10000C620(v69);
  (*(v57 + 8))(v24, v58);
  (*(v52 + 8))(v51, v53);
  (*(v62 + 8))(v50, v63);
  sub_10000C620(&v70);
  sub_1002C9F48(&v66);

  return v40;
}

uint64_t sub_1004DB234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ProductPageLayoutSectionProvider(uint64_t a1)
{
  result = qword_10093ADD8;
  if (!qword_10093ADD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1004DB308(uint64_t a1, uint64_t (*a2)(void), void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v141 = a8;
  v133 = a7;
  v135 = a6;
  v136 = a5;
  v134 = a4;
  v138 = a3;
  v142 = a10;
  v143 = a2;
  v140 = a9;
  v11 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  __chkstk_darwin(v11 - 8);
  v122 = &v121 - v12;
  v130 = sub_10074F704();
  v132 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_100746854();
  v128 = *(v131 - 1);
  __chkstk_darwin(v131);
  v127 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007469A4();
  v139 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10074E984();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v124 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v121 - v22;
  v24 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v123 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v121 - v28;
  v137 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v30 = *(v25 + 8);
  v30(v29, v24);
  v126 = v19;
  v31 = *(v19 + 88);
  v125 = v23;
  v32 = v23;
  v33 = v18;
  v34 = v31(v32, v18);
  if (v34 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v139 = &v121;
    __chkstk_darwin(v34);
    __chkstk_darwin(v41);
    sub_10074CBA4();
    v42 = sub_10074CBB4();
    v132 = v42(v137, sub_1000FA880, &v121 - 4, v134, v136, v135, v133, v141, v140, v142);
    v43 = v123;
    sub_100747C04();
    swift_getKeyPath();
    v44 = v124;
    sub_1007525B4();

    v30(v43, v24);
    v45 = v31(v44, v33);
    if (v45 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v46 = v143();
      v47 = sub_1003EFB6C(v137, v46, v134, v136, v135, v133, v141, v140, v142);
    }

    else
    {
      v48 = v44;
      v47 = v132;
      v49 = v137;
      v50 = v142;
      v51 = v141;
      v52 = v135;
      v53 = v133;
      v54 = v136;
      v55 = v134;
      if (v45 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v56 = v143();
        v57 = sub_1003F0EB0(v49, v56, v55, v54, v52, v53, v51, v140, v50);

        v47 = v57;
      }

      else
      {
        if (v45 != enum case for Shelf.ContentType.smallContactCard(_:))
        {
          v100 = v126;
          (*(v126 + 8))(v48, v33);
          goto LABEL_30;
        }

        [v132 setOrthogonalScrollingBehavior:2];
      }
    }

    v100 = v126;
LABEL_30:
    (*(v100 + 8))(v125, v33);
    return v47;
  }

  v35 = v143();
  aBlock[0] = _swiftEmptyArrayStorage;
  v36 = *(v35 + 16);
  v126 = v35;
  v125 = v36;
  if (v36)
  {
    v37 = v35;
    sub_10074E8B4();
    v143 = v139[2];
    v38 = v37 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v39 = v139[9];
    v40 = (v139 + 1);
    v138 = _swiftEmptyArrayStorage;
    (v143)(v17, v38, v15);
    while (1)
    {
      sub_1004DE2E8(&qword_1009309E0, &type metadata accessor for Badge, &protocol conformance descriptor for Badge);
      sub_1007468B4();
      (*v40)(v17, v15);
      if (v146)
      {
        sub_100753284();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v138 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100753304();
        }

        sub_100753344();
        v138 = aBlock[0];
      }

      v38 += v39;
      if (!--v36)
      {
        break;
      }

      (v143)(v17, v38, v15);
    }
  }

  else
  {
    v138 = _swiftEmptyArrayStorage;
  }

  v58 = v128;
  v59 = v127;
  (*(v128 + 104))(v127, enum case for InformationRibbon.Alignment.justified(_:), v131);
  v60 = v129;
  v61 = v137;
  sub_100747B84();
  sub_10074F674();
  v63 = v62;
  v65 = v64;
  v66 = v132 + 8;
  v67 = *(v132 + 1);
  v68 = v130;
  v67(v60, v130);
  sub_100747B84();
  sub_10074F5C4();
  v70 = v69;
  v67(v60, v68);
  v71 = sub_100747B94();
  v72 = type metadata accessor for SnapshotPageTraitEnvironment();
  v73 = objc_allocWithZone(v72);
  v74 = &v73[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v74 = v70;
  *(v74 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v73[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v71;
  v145.receiver = v73;
  v145.super_class = v72;
  v75 = objc_msgSendSuper2(&v145, "init");
  sub_1004DC488(v138, v59, v75, v63, v65);
  v77 = v76;

  (*(v58 + 8))(v59, v131);
  if (!*(v77 + 16))
  {

    sub_100016C60(0, &unk_10093FE00, NSCollectionLayoutSection_ptr);
    v97 = sub_100747C14();
    v98 = *(v97 - 8);
    v99 = v122;
    (*(v98 + 16))(v122, v61, v97);
    (*(v98 + 56))(v99, 0, 1, v97);
    v47 = sub_100753A44();
    sub_10000C8CC(v99, &qword_100942730, &unk_1007B3460);

    return v47;
  }

  sub_100747B84();
  sub_10074F674();
  v131 = v67;
  v67(v60, v68);
  if (qword_100920A78 != -1)
  {
    swift_once();
  }

  v78 = sub_100749104();
  sub_10000D0FC(v78, qword_10097FD50);
  v79 = sub_100747B94();
  sub_100749044();
  v81 = v80;

  v146 = _swiftEmptyArrayStorage;
  v82 = v136;
  v143 = *(v77 + 16);
  v132 = v66;
  if (!v143)
  {
    v88 = 0.0;
LABEL_32:

    v101 = objc_opt_self();
    v102 = objc_opt_self();
    v103 = [v102 absoluteDimension:v88];
    v104 = [v102 absoluteDimension:v81];
    v105 = [objc_opt_self() sizeWithWidthDimension:v103 heightDimension:v104];

    sub_100016C60(0, &qword_100923478, NSCollectionLayoutItem_ptr);
    isa = sub_100753294().super.isa;

    v107 = [v101 horizontalGroupWithLayoutSize:v105 subitems:isa];

    v47 = [objc_opt_self() sectionWithGroup:v107];
    swift_getObjectType();
    sub_10074BE74();
    sub_100016C60(0, &qword_10092E460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v108 = sub_100753294().super.isa;

    [v47 setBoundarySupplementaryItems:v108];

    sub_10074BE64();
    sub_100016C60(0, &qword_10092E468, NSCollectionLayoutDecorationItem_ptr);
    v109 = sub_100753294().super.isa;

    [v47 setDecorationItems:v109];

    v110 = v129;
    sub_100747B84();
    sub_10074F694();
    v112 = v111;
    v114 = v113;
    v131(v110, v130);
    sub_10000C888(v82, v82[3]);
    sub_10074BE34();
    v116 = v115;
    sub_10000C888(v82, v82[3]);
    sub_10074BE54();
    [v47 setContentInsets:{v116, v112, v117, v114}];
    [v47 setOrthogonalScrollingBehavior:1];
    sub_10074CB94();
    v118 = sub_1007532C4();
    v120 = v119;

    if (v118)
    {
      aBlock[4] = v118;
      aBlock[5] = v120;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005D5E28;
      aBlock[3] = &unk_100878A68;
      v118 = _Block_copy(aBlock);
    }

    [v47 setVisibleItemsInvalidationHandler:v118];
    _Block_release(v118);

    return v47;
  }

  v83 = objc_opt_self();
  v138 = objc_opt_self();
  result = objc_opt_self();
  if (v125)
  {
    v85 = result;
    result = v141;
    if (v143 <= v125)
    {
      swift_getObjectType();
      v86 = 0;
      v128 = v77;
      v87 = v77 + 32;
      v88 = 0.0;
      do
      {
        v89 = *(v87 + 8 * v86);
        v90 = [v83 absoluteDimension:v89];
        v91 = [v83 absoluteDimension:v81];
        v92 = [v138 sizeWithWidthDimension:v90 heightDimension:v91];

        sub_10074B564();
        sub_100016C60(0, &unk_10092E470, NSCollectionLayoutSupplementaryItem_ptr);
        v93 = v92;
        v94 = sub_100753294().super.isa;

        v95 = [v85 itemWithLayoutSize:v93 supplementaryItems:v94];

        v96 = v95;
        sub_100753284();
        if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        v86 = (v86 + 1);
        sub_100753344();

        v88 = v88 + v89;
      }

      while (v143 != v86);
      v82 = v136;
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1004DC488(unint64_t a1, char *a2, void *a3, double a4, double a5)
{
  v10 = sub_100746854();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v16)
  {
    return;
  }

  v17 = [a3 traitCollection];
  v18 = sub_100753804();

  if (v18)
  {
    if (!v15)
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v20 = sub_100754664();
    if ((v20 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v20)
      {
        v22 = sub_100753324();
        *(v22 + 16) = v20;
        memset_pattern16((v22 + 32), &unk_1007B5300, 8 * v20);
      }

      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v15)
  {
    v21 = sub_100754664();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v19 = floor(a4 / v21);
  if (*&v19 <= 136.0)
  {
    if (v21 < 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v21)
    {
      a2 = _swiftEmptyArrayStorage;
      if (a4 > 0.0)
      {
        v10 = _swiftEmptyArrayStorage[2];
        if (!v10)
        {
LABEL_62:

          return;
        }

        goto LABEL_45;
      }

      return;
    }

    v27 = 0;
    a2 = _swiftEmptyArrayStorage;
    v28 = 0.0;
    v11 = 0x4061000000000000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = sub_100754574();
      }

      else
      {
        v29 = *(a1 + 8 * v27 + 32);
      }

      v30 = sub_1004DCAC8(v29, v27, 0, v21, a3, a4, a5);

      if (v30 >= 105.0)
      {
        if (v30 >= 136.0)
        {
          v31 = 136.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_28;
          }

LABEL_34:
          a2 = sub_100254EA4(0, *(a2 + 2) + 1, 1, a2);
          goto LABEL_28;
        }

        v31 = floor(v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v31 = 105.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v15 = *(a2 + 2);
      v32 = *(a2 + 3);
      v10 = v15 + 1;
      if (v15 >= v32 >> 1)
      {
        a2 = sub_100254EA4((v32 > 1), v15 + 1, 1, a2);
      }

      ++v27;
      *(a2 + 2) = v10;
      *&a2[8 * v15 + 32] = v31;
      v28 = v28 + v31;
      if (v21 == v27)
      {
        a4 = a4 - v28;
        if (a4 <= 0.0)
        {
          return;
        }

LABEL_45:
        v14 = a2 + 32;
        v52 = _swiftEmptyArrayStorage;
        sub_10001E46C(0, v10, 0);
        v34 = 0;
        v35 = v52;
        a3 = v52[2];
        do
        {
          v36 = *&v14[8 * v34];
          v52 = v35;
          v37 = v35[3];
          if (a3 + v34 >= v37 >> 1)
          {
            sub_10001E46C((v37 > 1), a3 + v34 + 1, 1);
            v35 = v52;
          }

          v38 = v34 + 1;
          v35[2] = a3 + v34 + 1;
          *&v35[a3 + 4 + v34] = 136.0 - v36;
          v34 = v38;
        }

        while (v10 != v38);
        v39 = a3 + v38;
        if (a3 + v38 - 1 <= 2)
        {
          v40 = 0;
          a5 = 0.0;
          goto LABEL_54;
        }

        v40 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        v41 = (v35 + 6);
        a5 = 0.0;
        v42 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          a5 = a5 + *(v41 - 2) + *(v41 - 1) + *v41 + v41[1];
          v41 += 4;
          v42 -= 4;
        }

        while (v42);
        if (v39 != v40)
        {
LABEL_54:
          v43 = a3 + v38 - v40;
          v44 = &v35[v40 + 4];
          do
          {
            v45 = *v44++;
            a5 = a5 + v45;
            --v43;
          }

          while (v43);
        }

        if (v10 <= v39)
        {
          a1 = 4;
          while (1)
          {
            v46 = *&v35[a1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_10025DA94(a2);
            }

            if (a1 - 4 >= *(a2 + 2))
            {
              break;
            }

            *&a2[8 * a1] = floor(a4 * (v46 / a5)) + *&a2[8 * a1];
            ++a1;
            if (!--v10)
            {
              goto LABEL_62;
            }
          }

          __break(1u);
LABEL_72:
          v16 = sub_100754664();
          goto LABEL_3;
        }

LABEL_77:
        __break(1u);
        return;
      }
    }
  }

  v51 = v19;
  (*(v11 + 16))(v14, a2, v10);
  if ((*(v11 + 88))(v14, v10) == enum case for InformationRibbon.Alignment.justified(_:))
  {
    if (v21 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v21)
    {
      return;
    }

    v23 = sub_100753324();
    *(v23 + 16) = v21;
    v24 = (v23 + 32);
    if (v21 < 4)
    {
      v25 = 0;
      v26 = v51;
LABEL_67:
      v50 = v21 - v25;
      do
      {
        *v24++ = v26;
        --v50;
      }

      while (v50);
      return;
    }

    v25 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    v24 += v21 & 0x7FFFFFFFFFFFFFFCLL;
    v26 = v51;
    v47 = vdupq_lane_s64(v51, 0);
    v48 = (v23 + 48);
    v49 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v48[-1] = v47;
      *v48 = v47;
      v48 += 2;
      v49 -= 4;
    }

    while (v49);
    if (v21 != v25)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v21 < 0)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v21)
    {
      v33 = sub_100753324();
      *(v33 + 16) = v21;
      memset_pattern16((v33 + 32), &unk_1007B52F0, 8 * v21);
    }

    (*(v11 + 8))(v14, v10);
  }
}

double sub_1004DCAB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1004DCAC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, double a6, double a7)
{
  v139 = a5;
  v123 = a4;
  v131 = a3;
  v120 = sub_10074CD14();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100745B34();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v13 = v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v127 = v117 - v15;
  v138 = sub_100749104();
  v132 = *(v138 - 8);
  __chkstk_darwin(v138);
  v17 = v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&qword_1009273F8, &qword_1007B35F0);
  __chkstk_darwin(v18 - 8);
  v122 = v117 - v19;
  v134 = sub_10074A214();
  v142 = *(v134 - 8);
  __chkstk_darwin(v134);
  v126 = v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v141 = v117 - v22;
  v135 = sub_100750534();
  v121 = *(v135 - 8);
  __chkstk_darwin(v135);
  v24 = v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100743B04();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_10074F7D4();
  v137 = *(v143 - 8);
  __chkstk_darwin(v143);
  v125 = v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v124 = v117 - v31;
  __chkstk_darwin(v32);
  v34 = v117 - v33;
  v140 = a1;
  sub_1003973E8();
  v133 = a2;
  v128 = v13;
  if (v35)
  {
    if (qword_100921028 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v135, qword_100980DB0);
    v36 = sub_10074F3F4();
    v147 = v36;
    v148 = sub_1004DE2E8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v37 = sub_10000D134(v146);
    (*(*(v36 - 8) + 104))(v37, enum case for Feature.measurement_with_labelplaceholder(_:), v36);
    sub_10074FC74();
    sub_10000C620(v146);
    sub_10074CCB4();
  }

  sub_10074E854();
  v136 = *(v137 + 88);
  v38 = v136(v34, v143);
  v39 = enum case for BadgeType.rating(_:);
  if (v38 != enum case for BadgeType.rating(_:))
  {
    if (v38 == enum case for BadgeType.contentRating(_:))
    {
      v47 = sub_10074E894();
      v48 = sub_1007419D4();
      v45 = v132;
      v46 = v134;
      if (!*(v47 + 16))
      {

        goto LABEL_38;
      }

      v50 = sub_1003861D0(v48, v49);
      v52 = v51;

      if (v52)
      {
        sub_10000C5B4(*(v47 + 56) + 32 * v50, v146);

        if (swift_dynamicCast())
        {
          v53 = sub_10056003C(v144, v145, 0);

          [v53 size];
        }

        goto LABEL_38;
      }

LABEL_37:

      goto LABEL_38;
    }

    v46 = v134;
    if (v38 == enum case for BadgeType.chartPosition(_:))
    {
      LODWORD(v45) = enum case for BadgeType.rating(_:);
      v149._object = 0x8000000100779C20;
      v149._countAndFlagsBits = 0xD000000000000020;
      v150._countAndFlagsBits = 0;
      v150._object = 0xE000000000000000;
      v117[1] = sub_1007458B4(v149, v150);
      if (qword_100921030 != -1)
      {
        goto LABEL_74;
      }

      goto LABEL_14;
    }

    v45 = v132;
    if (v38 == enum case for BadgeType.editorsChoice(_:))
    {
      sub_1004DE330(a6, 0, v139);
      goto LABEL_38;
    }

    v66 = v139;
    v67 = v143;
    if (v38 == enum case for BadgeType.artwork(_:))
    {
      if (qword_100920A78 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v138, qword_10097FD50);
      sub_1007490A4();
      v68 = [v66 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      sub_100753B64();
      goto LABEL_39;
    }

    if (v38 == enum case for BadgeType.paragraph(_:))
    {
      sub_1003975A4();
      if (qword_100921020 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v135, qword_100980D98);
      v71 = sub_10074F3F4();
      v147 = v71;
      v148 = sub_1004DE2E8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v72 = sub_10000D134(v146);
      (*(*(v71 - 8) + 104))(v72, enum case for Feature.measurement_with_labelplaceholder(_:), v71);
      sub_10074FC74();
      sub_10000C620(v146);
      sub_10074CCB4();
      v74 = v73;

      v75 = [v66 traitCollection];
      sub_100539784(v75, v74, a6);
    }

    else
    {
      if (v38 != enum case for BadgeType.friendsPlaying(_:))
      {
        (*(v137 + 8))(v34, v143);
        goto LABEL_39;
      }

      v76 = sub_10074E894();
      v77 = sub_100741BF4();
      if (!*(v76 + 16))
      {

        goto LABEL_39;
      }

      v79 = sub_1003861D0(v77, v78);
      v81 = v80;

      if ((v81 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_10000C5B4(*(v76 + 56) + 32 * v79, v146);

      sub_100016C60(0, &qword_100922300, UIView_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v75 = v144;
      [v144 sizeThatFits:{a6, a7}];
    }

    goto LABEL_38;
  }

  v40 = [v139 traitCollection];
  v41 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  (*(v26 + 104))(v28, enum case for SystemImage.star(_:), v25);
  v42 = v39;
  v43 = [v41 configurationWithTraitCollection:v40];
  v44 = sub_100743AE4();

  v39 = v42;
  (*(v26 + 8))(v28, v25);
  [v44 contentInsets];
  [v44 contentInsets];
  [v44 size];
  [v44 contentInsets];
  [v44 contentInsets];
  [v44 size];

  v45 = v132;
  v46 = v134;
  while (1)
  {
LABEL_38:
    v67 = v143;
LABEL_39:
    v82 = v124;
    sub_10074E854();
    if (v136(v82, v67) == v39)
    {
      v83 = sub_100397864();
      [v83 frame];
      CGRectGetWidth(v151);

      v84 = v139;
    }

    else
    {
      (*(v137 + 8))(v82, v67);
      if (v123 >= 4)
      {
        sub_10074E7A4();
        if (v85)
        {
          v84 = v139;
LABEL_45:
          if (qword_100921040 != -1)
          {
            swift_once();
          }

          sub_10000D0FC(v135, qword_100980DF8);
          v87 = sub_10074F3F4();
          v147 = v87;
          v148 = sub_1004DE2E8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v88 = sub_10000D134(v146);
          (*(*(v87 - 8) + 104))(v88, enum case for Feature.measurement_with_labelplaceholder(_:), v87);
          sub_10074FC74();
          sub_10000C620(v146);
          sub_10074CCB4();

          v67 = v143;
          goto LABEL_48;
        }
      }

      sub_10074E884();
      v84 = v139;
      if (v86)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    (*(v142 + 104))(v141, enum case for BadgeCaptionCappingType.none(_:), v46);
    v89 = sub_10074E8A4();
    if (v90)
    {
      v91 = v46;
      v146[0] = v89;
      v146[1] = v90;
      v92 = v122;
      sub_100741544();
      v93 = sub_100741574();
      (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
      sub_1000D5C0C();
      sub_1007542B4();
      sub_10000C8CC(v92, &qword_1009273F8, &qword_1007B35F0);

      if (qword_100921048 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v135, qword_100980E10);
      v94 = sub_10074F3F4();
      v147 = v94;
      v148 = sub_1004DE2E8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v95 = sub_10000D134(v146);
      (*(*(v94 - 8) + 104))(v95, enum case for Feature.measurement_with_labelplaceholder(_:), v94);
      sub_10074FC74();
      sub_10000C620(v146);
      sub_10074CCB4();

      v67 = v143;
      v46 = v91;
    }

    v96 = v130;
    if (qword_100920A78 != -1)
    {
      swift_once();
    }

    v97 = v138;
    v98 = sub_10000D0FC(v138, qword_10097FD50);
    (*(v45 + 16))(v17, v98, v97);
    v24 = v46;
    (*(v142 + 16))(v126, v141, v46);
    sub_1007490C4();
    v99 = v125;
    sub_10074E854();
    if (v136(v99, v67) == enum case for BadgeType.chartPosition(_:))
    {
      v100 = v128;
      *v128 = 0;
      v101 = v129;
      (*(v129 + 104))(v100, enum case for BadgeViewSpacing.spacing(_:), v96);
    }

    else
    {
      v101 = v129;
      v100 = v128;
      (*(v129 + 104))(v128, enum case for BadgeViewSpacing.standard(_:), v96);
      (*(v137 + 8))(v99, v67);
    }

    v102 = v133;
    (*(v101 + 32))(v127, v100, v96);
    sub_100749084();
    v46 = v24;
    if (v131)
    {
      goto LABEL_69;
    }

    v103 = [v84 traitCollection];
    v104 = sub_1007537F4();
    v105 = v104;
    if (!v102 && (v104 & 1) == 0)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v123, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (((v123 - 1 == v102) & v104) == 1)
    {
LABEL_62:
      v106 = sub_100749054();
      *(v107 + 8) = 0;
      v106(v146, 0);
      v108 = sub_100749074();
      *(v109 + 8) = 0;
      v108(v146, 0);
      v46 = v134;
    }

    if (!v102 && ((v105 ^ 1) & 1) == 0)
    {
      goto LABEL_67;
    }

    if (!__OFSUB__(v123, 1))
    {
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
LABEL_14:
    v54 = v135;
    v55 = sub_10000D0FC(v135, qword_100980DC8);
    (*(v121 + 16))(v24, v55, v54);
    v56.super.isa = [v139 traitCollection];
    isa = v56.super.isa;
    v58 = sub_100750514(v56).super.isa;
    v59 = [(objc_class *)v58 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v59)
    {
      v60 = [objc_opt_self() fontWithDescriptor:v59 size:0.0];

      v39 = v45;
      if (v60)
      {
        v61 = sub_10074F3F4();
        v147 = v61;
        v148 = sub_1004DE2E8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v62 = sub_10000D134(v146);
        (*(*(v61 - 8) + 104))(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v61);
        v63 = v60;
        sub_10074FC74();
        sub_10000C620(v146);
        v64 = v118;
        sub_10074CD04();
        sub_1004DE2E8(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
        v65 = v120;
        sub_100750404();

        (*(v119 + 8))(v64, v65);
        goto LABEL_26;
      }
    }

    else
    {

      v39 = v45;
    }

    v69 = sub_10074F3F4();
    v147 = v69;
    v148 = sub_1004DE2E8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v70 = sub_10000D134(v146);
    (*(*(v69 - 8) + 104))(v70, enum case for Feature.measurement_with_labelplaceholder(_:), v69);
    sub_10074FC74();
    sub_10000C620(v146);
    sub_10074CCB4();

LABEL_26:
    (*(v121 + 8))(v24, v135);
    v45 = v132;
  }

  if ((v123 - 1 != v102) | v105 & 1)
  {
    goto LABEL_68;
  }

LABEL_67:
  v110 = sub_100749054();
  *(v111 + 24) = 0;
  v110(v146, 0);
  v112 = sub_100749074();
  *(v113 + 24) = 0;
  v112(v146, 0);
LABEL_68:

LABEL_69:
  sub_100749024();
  v115 = v114;
  (*(v45 + 8))(v17, v138);
  (*(v142 + 8))(v141, v46);
  return v115;
}

uint64_t sub_1004DE2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004DE330(double a1, uint64_t a2, void *a3)
{
  v9._object = 0x80000001007681D0;
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x80000001007681F0;
  v9._countAndFlagsBits = 0xD000000000000017;
  sub_1007458B4(v9, v10);
  v5 = sub_100753194();

  v6 = v5 < 19;
  v7 = sub_1006BA340(v5 < 19);
  v8 = sub_1006BA60C(v6);
  [v7 size];
  [v8 size];

  sub_1006BD454(1, v6, 0, 2, a3, a1);
}

uint64_t sub_1004DE490()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_10093AE28);
  sub_10000D0FC(v4, qword_10093AE28);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

id sub_1004DE5E4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(ADTrackingTransparency) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

BOOL sub_1004DE650()
{
  v0 = sub_100741574();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_100744A14() & 1) == 0 || (sub_100744A94() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_100744A74();
  sub_100741564();
  v5 = sub_1007414B4();
  v7 = v6;
  v8 = *(v1 + 8);
  v9 = v8(v3, v0);
  if (!v7)
  {
    goto LABEL_8;
  }

  v19 = v5;
  v20 = v7;
  __chkstk_darwin(v9);
  *&v18[-16] = &v19;
  v10 = sub_100073B4C(sub_1004DF4A4, &v18[-32], v4);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = sub_100744AA4();
  sub_100741564();
  v12 = sub_1007414B4();
  v14 = v13;
  v15 = v8(v3, v0);
  if (!v14)
  {
LABEL_8:

    return 0;
  }

  v19 = v12;
  v20 = v14;
  __chkstk_darwin(v15);
  *&v18[-16] = &v19;
  v16 = sub_100073B4C(sub_1004DF4A4, &v18[-32], v11);

  return (v16 & 1) != 0;
}

uint64_t sub_1004DE88C()
{
  v1 = sub_100741574();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_10074C474())
  {
    if (qword_100920E00 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  if ([objc_opt_self() ams_shieldSignInOrCreateFlows])
  {
    if (qword_100920E00 == -1)
    {
LABEL_6:
      v5 = sub_100752E44();
      sub_10000D0FC(v5, qword_10093AE28);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752CE4();
LABEL_7:

      return 0;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v7 = sub_1004DE5E4();
  v8 = [v7 shouldPresentPersonalizedAdsOnboarding];

  if (!v8)
  {
    if (qword_100920E00 != -1)
    {
      swift_once();
    }

    v16 = sub_100752E44();
    sub_10000D0FC(v16, qword_10093AE28);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v17 = [*(v0 + 24) shouldPresentPersonalizedAdsOnboarding];
    v19[3] = &type metadata for Bool;
    LOBYTE(v19[0]) = v17;
    sub_100752424();
    sub_1000277BC(v19);
    sub_100752CE4();
    goto LABEL_7;
  }

  v9 = sub_100744A14();
  v10 = sub_100744A74();
  sub_100741564();
  v11 = sub_1007414B4();
  v13 = v12;
  v14 = (*(v2 + 8))(v4, v1);
  if (!v13)
  {

    if (v9)
    {
      return 1;
    }

LABEL_16:
    if (qword_100920E00 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v19[0] = v11;
  v19[1] = v13;
  __chkstk_darwin(v14);
  *&v18[-16] = v19;
  v15 = sub_100073B4C(sub_1004DF3F0, &v18[-32], v10);

  if (((v9 | v15) & 1) == 0)
  {
    goto LABEL_16;
  }

  return 1;
}

double sub_1004DEEB4()
{
  v1 = sub_1004DE5E4();
  v2 = [v1 latestVersionForPersonalizedAdsConsent];

  [*(v0 + 24) setAcknowledgedVersionForPersonalizedAds:v2];
  if (qword_100920E00 != -1)
  {
    swift_once();
  }

  v3 = sub_100752E44();
  sub_10000D0FC(v3, qword_10093AE28);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  v4 = [*(v0 + 24) acknowledgedVersionForPersonalizedAds];
  v6[3] = &type metadata for Int;
  v6[0] = v4;
  sub_100752424();
  sub_1000277BC(v6);
  sub_100752CE4();

  return result;
}

uint64_t sub_1004DF068()
{

  sub_100016994(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_1004DF0E8()
{
  result = qword_10093AEF0;
  if (!qword_10093AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093AEF0);
  }

  return result;
}

Swift::Int sub_1004DF198(uint64_t a1, uint64_t a2)
{
  sub_100754834();
  sub_100752FB4();
  return sub_100754884();
}

uint64_t sub_1004DF1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DF40C(&qword_100922F70, &unk_1007C67F8);

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1004DF264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100754834();
  sub_100752FB4();
  return sub_100754884();
}

uint64_t sub_1004DF2C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1004DF40C(&qword_100922F70, &unk_1007C67F8);

  return static OnboardingStep.== infix(_:_:)(a1, a2, v2, v5);
}

uint64_t sub_1004DF398(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100754754() & 1;
  }
}

uint64_t sub_1004DF40C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AdPrivacyOnboardingStep();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004DF44C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100754754() & 1;
  }
}

uint64_t sub_1004DF508(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1007417F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741764();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for InteractiveProductReviewsShelfHeaderView();
    sub_1007539C4();
    v9 = sub_100753064();

    isa = sub_100741704().super.isa;
    v11 = [v8 _visibleSupplementaryViewOfKind:v9 atIndexPath:isa];

    if (v11)
    {
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v2 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState;
        if ((*(v2 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState + 40) & 1) == 0)
        {
          v14 = *v13;
          v15 = *(v13 + 16);
          v16 = *(v13 + 24);
          v17 = &v12[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_currentState];
          if ((v12[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_currentState + 40] & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v17, v14), vceqq_f64(*(v17 + 24), v16)))) & 1) == 0 || *(v17 + 2) != v15)
          {
            *v17 = v14;
            *(v17 + 2) = v15;
            *(v17 + 24) = v16;
            v17[40] = 0;
            [v12 setNeedsLayout];
          }
        }
      }
    }
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004DF70C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v2 = sub_100747C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveProductReviewsShelfScrollObserver(uint64_t a1)
{
  result = qword_10093AF40;
  if (!qword_10093AF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004DF81C(uint64_t a1)
{
  result = sub_100747C14();
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

uint64_t sub_1004DF8CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004DF8EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1004DF944()
{
  result = qword_10093B040[0];
  if (!qword_10093B040[0])
  {
    type metadata accessor for InteractiveProductReviewsShelfScrollObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_10093B040);
  }

  return result;
}

uint64_t sub_1004DF99C(unint64_t a1, __n128 a2, __n128 a3)
{
  v59 = a3;
  v60 = a2;
  v5 = sub_10074F704();
  *&v58 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = sub_100747C14();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_1007417F4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    *&v51 = v19;
    result = sub_100754664();
    v19 = v51;
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v11;
  v57 = v7;
  v54 = v10;
  v55 = v5;
  if (result)
  {
    *&v51 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = v3;
      v24 = sub_100754574();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v23 = v3;
      v24 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    v25 = [v24 indexPath];
    swift_unknownObjectRelease();
    sub_100741744();

    v52 = sub_100741784();
    (*(v18 + 8))(v21, v51);
  }

  else
  {
    v23 = v3;
    v52 = 0;
  }

  v26 = OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v50 = *(v12 + 16);
  v27 = v23;
  v28 = v23 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v29 = v56;
  v50(v16, v28, v56);
  v30 = v54;
  sub_100747B84();
  v31 = *(v12 + 8);
  v31(v16, v29);
  sub_10074F5A4();
  v51 = v32;
  v33 = *(v58 + 8);
  v34 = v30;
  v35 = v55;
  v33(v34, v55);
  v36 = v53;
  v50(v53, v27 + v26, v29);
  v37 = v57;
  sub_100747B84();
  v31(v36, v29);
  sub_10074F634();
  v58 = v38;
  result = (v33)(v37, v35);
  v40 = *&v58;
  v39 = v59.n128_u64[0];
  *&v41.f64[0] = v51;
  *&v42.f64[0] = v60.n128_u64[0];
  v61[0] = v60.n128_u64[0];
  v61[1] = v59.n128_u64[0];
  v43 = v52;
  v61[2] = v52;
  v61[3] = v51;
  v61[4] = v58;
  v44 = v27 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState;
  v45 = *(v27 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState);
  v46 = *(v27 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState + 16);
  v47 = *(v27 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState + 24);
  v48 = *(v27 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState + 40);
  *v44 = v60.n128_u64[0];
  *(v44 + 8) = v39;
  *(v44 + 16) = v43;
  *(v44 + 24) = v41.f64[0];
  *(v44 + 32) = v40;
  *(v44 + 40) = 0;
  if (v48)
  {
    return sub_1004DF508(v61);
  }

  *&v42.f64[1] = v39;
  v41.f64[1] = v40;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v42, v45), vceqq_f64(v41, v47)))) & 1) == 0 || v43 != v46)
  {
    return sub_1004DF508(v61);
  }

  return result;
}

uint64_t sub_1004DFE70(uint64_t a1)
{
  v1 = sub_1007417F4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007417A4();
  sub_1007417C4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1004DFF54()
{
  v0 = sub_10000C518(&qword_100930BC0, &qword_1007C6B40);
  __chkstk_darwin(v0 - 8);
  sub_1007544E4();
  sub_100752EE4();

  sub_10000C518(&qword_100925350, &qword_1007AEDF0);
  sub_10002DDC8(&qword_100925358, &qword_100925350, &qword_1007AEDF0, &protocol conformance descriptor for TransientStateStore<A>);
  return sub_100752944();
}

void sub_1004E00D8(uint64_t a1@<X8>)
{
  v3 = sub_1007417F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) == 1)
  {
    sub_100741764();
    sub_100745144();
    (*(v4 + 8))(v6, v3);
    sub_10000C518(&qword_1009242A0, &qword_1007A6400);
    sub_10000C518(&qword_100927538, &qword_1007AAB98);
    if (swift_dynamicCast())
    {
      sub_100012160(v8, v10);
      v7 = v10[1];
      *a1 = v10[0];
      *(a1 + 16) = v7;
      *(a1 + 32) = v11;
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_1004E0D64(v8);
      sub_100754644();
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_1004E02E4()
{
  sub_1004E00D8(&v2);
  if (v3)
  {
    sub_100012160(&v2, v4);
    sub_10000C888(v4, v4[3]);
    v0 = sub_10074B2E4();
    sub_10000C620(v4);
    return v0;
  }

  else
  {
    sub_1004E0D64(&v2);
    return sub_100745094();
  }
}

uint64_t sub_1004E03A4()
{
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E00D8(&v7);
  if (v8)
  {
    sub_100012160(&v7, v9);
    sub_10000C888(v9, v9[3]);
    sub_10074B2F4();
    return sub_10000C620(v9);
  }

  else
  {
    sub_1004E0D64(&v7);
    sub_100741764();
    sub_100745144();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1004E0568(uint64_t a1, void (*a2)(char *, uint64_t *, void *, uint64_t, uint64_t))
{
  v4 = sub_10000C518(&qword_100930BC0, &qword_1007C6B40);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_100741764();
  (*(v8 + 16))(v10, v13, v7);
  sub_100752ED4();
  v18 = *(v2 + 40);

  v14 = sub_10000C518(&qword_100925350, &qword_1007AEDF0);
  v15 = sub_10002DDC8(&qword_100925358, &qword_100925350, &qword_1007AEDF0, &protocol conformance descriptor for TransientStateStore<A>);
  a2(v6, &v18, &type metadata for Never, v14, v15);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1004E0780(uint64_t a1, void (*a2)(char *, void **, void *, uint64_t, uint64_t))
{
  v4 = v2;
  v6 = sub_10000C518(&qword_100930BC0, &qword_1007C6B40);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1007417F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  sub_1004DFE70(a1);
  (*(v10 + 16))(v12, v15, v9);
  sub_1004E0D0C();
  v16 = sub_100753264();
  v17 = sub_10015858C(v16);

  v22 = v17;
  sub_10000C518(&qword_10093B0D0, qword_1007C6B48);
  sub_10002DDC8(&qword_10093B0D8, &qword_10093B0D0, qword_1007C6B48, &protocol conformance descriptor for [A]);
  sub_100752EC4();
  v22 = *(v4 + 40);

  v18 = sub_10000C518(&qword_100925350, &qword_1007AEDF0);
  v19 = sub_10002DDC8(&qword_100925358, &qword_100925350, &qword_1007AEDF0, &protocol conformance descriptor for TransientStateStore<A>);
  a2(v8, &v22, &type metadata for Never, v18, v19);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_1004E0A08(uint64_t a1)
{
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741764();
  if (*(v1 + 32) == 1)
  {
    sub_100745134();
  }

  else
  {
    sub_1007450D4();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004E0B80()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1004E0BC8()
{
  sub_1004E0B80();

  return swift_deallocClassInstance();
}

unint64_t sub_1004E0D0C()
{
  result = qword_10093B0C8;
  if (!qword_10093B0C8)
  {
    sub_1007417F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B0C8);
  }

  return result;
}

uint64_t sub_1004E0D64(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100927518, &qword_1007AAB78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004E0DCC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 64) = a5;
  *(v15 + 72) = a6;
  *(v15 + 80) = a7;
  swift_unknownObjectWeakAssign();
  return v15;
}

void sub_1004E1038(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1004E1D54(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView];
    sub_100009D34();
    v8 = v7;
    v9 = sub_100753FC4();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_1004E11D4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35AppPromotionOfferCollectionViewCell_appPromotionView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004E1248;
}

void sub_1004E1248(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    v6 = v4;
    sub_1005D0028();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [*&v5[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v5[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView]];
      [v5 setNeedsLayout];
    }

    v10 = v6;
  }

  else
  {
    v10 = v4;
    sub_1005D0028();
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      goto LABEL_8;
    }

    v6 = v9;
    [*&v5[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView] insertSubview:v9 aboveSubview:*&v5[OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView]];
    [v5 setNeedsLayout];
  }

LABEL_8:
}

id sub_1004E138C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35AppPromotionOfferCollectionViewCell_appPromotionView];
  sub_1000CC798();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView;
  sub_1005CC224();
  v3 = &v1[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_longPressGestureRecognizer] setEnabled:1];
  return [v1 addSubview:*&v1[v2]];
}

uint64_t type metadata accessor for AppPromotionOfferCollectionViewCell(uint64_t a1)
{
  result = qword_10093B108;
  if (!qword_10093B108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_1004E1584(uint64_t **a1))()
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
  v2[4] = sub_1004E11D4(v2);
  return sub_1000181A8;
}

double sub_1004E1668()
{
  [*(*(*v0 + OBJC_IVAR____TtC22SubscribePageExtension35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppPromotionView(0);
  sub_1007477B4();
  CGRectGetHeight(v3);
  sub_1007477B4();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1004E16F4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension35AppPromotionOfferCollectionViewCell_appPromotionView);
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppPromotionView(0);
  sub_1007477B4();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_1004E1784@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1004E17DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1004E18A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1004E1D54(&qword_10093B140, type metadata accessor for AppPromotionOfferCollectionViewCell, &unk_1007C6C80);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1004E1944()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1004E1D54(&qword_10093B148, type metadata accessor for AppPromotionOfferCollectionViewCell, &unk_1007C6CE8);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1004E19B8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004E1D54(&qword_10093B148, type metadata accessor for AppPromotionOfferCollectionViewCell, &unk_1007C6CE8);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1004E1A44(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1004E1D54(&qword_10093B148, type metadata accessor for AppPromotionOfferCollectionViewCell, &unk_1007C6CE8);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1004E1B00(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_appPromotionCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView);
  sub_100009D34();
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

uint64_t sub_1004E1C80(void *a1)
{
  a1[1] = sub_1004E1D54(&qword_10093B128, type metadata accessor for AppPromotionOfferCollectionViewCell, &unk_1007C6C20);
  a1[2] = sub_1004E1D54(&qword_10093B130, type metadata accessor for AppPromotionOfferCollectionViewCell, &unk_1007C6C50);
  a1[3] = sub_1004E1D54(&qword_10093B138, type metadata accessor for AppPromotionOfferCollectionViewCell, &unk_1007C6C04);
  result = sub_1004E1D54(&qword_10093B140, type metadata accessor for AppPromotionOfferCollectionViewCell, &unk_1007C6C80);
  a1[4] = result;
  return result;
}

uint64_t sub_1004E1D54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1004E1D9C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100752AC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  v7 = sub_1007469A4();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension35AppPromotionOfferCollectionViewCell_appPromotionView] = [objc_allocWithZone(type metadata accessor for AppPromotionView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension35AppPromotionOfferCollectionViewCell_appPromotionView;
  v10 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension35AppPromotionOfferCollectionViewCell_appPromotionView];
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v11 = v8;
  v12 = v10;
  sub_100752A74();
  sub_10000C8CC(v17, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v18, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  (*(v3 + 8))(v5, v2);
  v13 = [v11 contentView];
  [v13 setClipsToBounds:0];

  v14 = [v11 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v11 contentView];
  [v15 addSubview:*&v8[v9]];

  return v11;
}

void sub_1004E209C()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074F3D4();
  sub_1004E2220(&qword_100934940, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_1007468B4();
  if (v4[1])
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    (*(v1 + 8))(v3, v0);
    sub_10074F2A4();
    sub_10074F2A4();
  }
}

uint64_t sub_1004E2220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1004E226C(uint64_t a1)
{
  v25 = sub_100754724();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100932848, &qword_1007B9C50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_100750B04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E2590(v8);
  v26 = a1;
  sub_100743464();
  v13 = v6 + 8;
  v14 = *(v6 + 8);
  v24[3] = v13;
  v14(v8, v5);
  sub_1007502D4();
  sub_100750564();
  v16 = v15;
  v17 = v2 + 8;
  v18 = *(v2 + 8);
  v24[2] = v17;
  v18(v4, v25);
  v19 = v10 + 8;
  v20 = *(v10 + 8);
  v24[1] = v19;
  v20(v12, v9);
  sub_1004E2590(v8);
  v26 = a1;
  sub_100743464();
  v14(v8, v5);
  sub_1007502D4();
  sub_100750564();
  v22 = v21;
  v18(v4, v25);
  v20(v12, v9);
  return v16 + v22;
}

void sub_1004E2590(uint64_t a1@<X8>)
{
  v26 = a1;
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100750B04();
  __chkstk_darwin(v25);
  v24 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  if (qword_100921148 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_100981110);
  v13 = *(v11 - 8);
  v14 = *(v13 + 16);
  v22[2] = v13 + 16;
  v23 = v14;
  v14(v6, v12, v11);
  v15 = enum case for FontSource.useCase(_:);
  v16 = v4[13];
  v16(v6, enum case for FontSource.useCase(_:), v3);
  v28 = v3;
  v29 = &protocol witness table for FontSource;
  v17 = sub_10000D134(v27);
  v18 = v4[2];
  v18(v17, v6, v3);
  sub_100750B14();
  v22[1] = v10;
  v19 = v4[1];
  v19(v6, v3);
  if (qword_100921140 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v11, qword_1009810F8);
  v23(v6, v20, v11);
  v16(v6, v15, v3);
  v28 = v3;
  v29 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v27);
  v18(v21, v6, v3);
  sub_100750B14();
  v19(v6, v3);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
}

uint64_t sub_1004E28C8()
{
  v0 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_100039C50(v0, qword_10093B160);
  sub_10000D0FC(v0, qword_10093B160);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

double sub_1004E2964()
{
  v0 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  sub_100039C50(v0, qword_100980760);
  sub_10000D0FC(v0, qword_100980760);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
  return result;
}

uint64_t sub_1004E29FC()
{
  v0 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  sub_100039C50(v0, qword_100980778);
  sub_10000D0FC(v0, qword_100980778);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  return sub_100743494();
}

char *sub_1004E2A90(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v10 - 8);
  v12 = &v38[-1] - v11;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v14 = sub_1007469A4();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImageView] = 0;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_textLabel;
  sub_100745C84();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage] = 0;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_textLabel;
  v19 = qword_100920E18;
  v20 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_textLabel];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  sub_10000D0FC(v21, qword_100980778);
  v22 = [v16 traitCollection];
  sub_100743454();

  [v20 setNumberOfLines:v38[0]];
  [*&v16[v18] _setTextColorFollowsTintColor:1];
  v23 = *&v16[v18];
  v24 = [v16 traitCollection];

  v25 = sub_1007537E4();
  if (v25)
  {
    if (qword_100921148 != -1)
    {
      swift_once();
    }

    v26 = qword_100981110;
  }

  else
  {
    if (qword_100921140 != -1)
    {
      swift_once();
    }

    v26 = qword_1009810F8;
  }

  v27 = sub_100750534();
  v28 = sub_10000D0FC(v27, v26);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v12, v28, v27);
  (*(v29 + 56))(v12, 0, 1, v27);
  sub_100745BA4();

  v30 = qword_100920E08;
  v31 = *&v16[v18];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_10000D0FC(v32, qword_10093B160);
  v38[4] = v16;
  v33 = v16;
  sub_100743464();

  sub_100753F54();
  v34 = [v33 contentView];
  [v34 addSubview:*&v16[v18]];

  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1007A5A00;
  *(v35 + 32) = sub_1007519E4();
  *(v35 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v38[3] = ObjectType;
  v38[0] = v33;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v38);
  return v33;
}

void sub_1004E2FE8(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImageView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImageView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }
}

id sub_1004E30AC()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImageView;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImageView];
  if (v2 || (sub_1004E2FE8([objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}]), (v2 = *&v0[v1]) != 0))
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage];
    v4 = v2;
    if (v3)
    {
      v3 = [v3 imageWithRenderingMode:2];
    }

    [v4 setImage:v3];
  }

  return [v0 setNeedsLayout];
}

id sub_1004E31FC()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100009D34();
  sub_1007477B4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  v12 = sub_1007537E4();

  v13 = OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImageView;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImageView];
  if (v14)
  {
    [v14 sizeThatFits:{v8, v10}];
    v15 = [v1 traitCollection];
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

    sub_100753B64();
    v17 = v16;
    v19 = v18;
    v20 = *&v1[v13];
    if (v20)
    {
      v21 = [v20 image];
      if (v21)
      {
        v22 = v21;
        [v21 contentInsets];
        right = v23;

        goto LABEL_7;
      }
    }
  }

  else
  {
    v19 = 0.0;
    v17 = 0.0;
  }

  right = UIEdgeInsetsZero.right;
LABEL_7:
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  rect = v19;
  v25 = CGRectGetMidY(v40) + v19 * -0.5;
  if (v12)
  {
    v26 = v17;
    v41.origin.x = v4;
    v41.origin.y = v6;
    v41.size.width = v8;
    v41.size.height = v10;
    MinX = CGRectGetMinX(v41);
  }

  else
  {
    v42.origin.x = v4;
    v42.origin.y = v6;
    v42.size.width = v8;
    v42.size.height = v10;
    v26 = v17;
    MinX = right + CGRectGetMaxX(v42) - v17;
  }

  v28 = ceil(MinX);
  v29 = ceil(v25);
  v30 = *&v1[v13];
  if (v30)
  {
    v31 = v30;
    sub_100753B24();
    [v31 setFrame:?];
  }

  if (qword_100920E10 != -1)
  {
    swift_once();
  }

  v32 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  sub_10000D0FC(v32, qword_100980760);
  v33 = v1;
  sub_100743464();

  if (v12)
  {
    v43.origin.x = v28;
    v43.origin.y = v29;
    v43.size.width = v26;
    v43.size.height = rect;
    CGRectGetMaxX(v43);
  }

  else
  {
    v44.origin.x = v4;
    v44.origin.y = v6;
    v44.size.width = v8;
    v44.size.height = v10;
    CGRectGetMinX(v44);
  }

  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  v34 = CGRectGetWidth(v45) - (v26 + v38);
  v35 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_textLabel];
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  [v35 sizeThatFits:{v34, CGRectGetHeight(v46)}];
  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  CGRectGetMidY(v47);
  sub_100753B24();
  return [v35 setFrame:?];
}

id sub_1004E35E8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100920E08 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
    sub_10000D0FC(v6, qword_10093B160);
    v7 = v1;
    sub_100743464();

    return sub_100753F54();
  }

  return result;
}

id sub_1004E3788()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = v16 - v4;
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_textLabel];
  v7 = [v0 traitCollection];
  v8 = sub_1007537E4();

  if (v8)
  {
    if (qword_100921148 != -1)
    {
      swift_once();
    }

    v9 = qword_100981110;
  }

  else
  {
    if (qword_100921140 != -1)
    {
      swift_once();
    }

    v9 = qword_1009810F8;
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, v9);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v5, v11, v10);
  sub_100750534();
  (*(v12 + 56))(v5, 0, 1, v10);
  sub_100745BA4();
  if (qword_100920E18 != -1)
  {
    swift_once();
  }

  v13 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  sub_10000D0FC(v13, qword_100980778);
  v14 = [v1 traitCollection];
  sub_100743454();

  [v6 setNumberOfLines:v16[1]];
  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for ProductPageLinkCollectionViewCell(uint64_t a1)
{
  result = qword_10093B1A0;
  if (!qword_10093B1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004E3B20(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004E3BC8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImageView) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_textLabel;
  sub_100745C84();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1004E3D94()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100980888);
  v1 = sub_10000D0FC(v0, qword_100980888);
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x80000001007812D0;
  *(v1 + 16) = sub_1004E3E5C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1004E4224()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_10093B1B0);
  v1 = sub_10000D0FC(v0, qword_10093B1B0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4045000000000000;
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x80000001007813A0;
  *(v1 + 16) = sub_1004E97D0;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightBold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1004E438C()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100980CA8);
  v1 = sub_10000D0FC(v0, qword_100980CA8);
  *v1 = 0xD000000000000015;
  *(v1 + 8) = 0x8000000100780F30;
  *(v1 + 16) = sub_1004E4448;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

UIFontTextStyle sub_1004E4448()
{
  v0 = sub_100741574();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741544();
  v4 = sub_1007414D4();
  (*(v1 + 8))(v3, v0);
  v5 = &UIFontTextStyleTitle2;
  if (v4)
  {
    v5 = &UIFontTextStyleTitle3;
  }

  v6 = *v5;

  return v6;
}

uint64_t sub_1004E456C(__n128 a1)
{
  v1 = sub_10074F944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = sub_100750534();
  sub_100039C50(v8, qword_100980CF0);
  v9 = sub_10000D0FC(v8, qword_100980CF0);
  (*(v2 + 104))(v7, enum case for Paragraph.Style.standard(_:), v1);
  v10 = *(v2 + 32);
  v10(v4, v7, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  v10((v12 + v11), v4, v1);
  *v9 = 0x7061726761726170;
  *(v9 + 8) = 0xE900000000000068;
  *(v9 + 16) = sub_1004E9544;
  *(v9 + 24) = v12;
  *(v9 + 32) = 0;
  return (*(*(v8 - 8) + 104))(v9, enum case for FontUseCase.dynamicPreferredFont(_:), v8);
}

uint64_t sub_1004E4788(__n128 a1)
{
  v1 = sub_10074F944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = sub_100750534();
  sub_100039C50(v8, qword_100980D38);
  v9 = sub_10000D0FC(v8, qword_100980D38);
  (*(v2 + 104))(v7, enum case for Paragraph.Style.article(_:), v1);
  v10 = *(v2 + 32);
  v10(v4, v7, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  v10((v12 + v11), v4, v1);
  *v9 = 0xD000000000000010;
  *(v9 + 8) = 0x8000000100781230;
  *(v9 + 16) = sub_1004E97C8;
  *(v9 + 24) = v12;
  *(v9 + 32) = 0;
  return (*(*(v8 - 8) + 104))(v9, enum case for FontUseCase.dynamicPreferredFont(_:), v8);
}

uint64_t sub_1004E4A00()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100980DC8);
  v1 = sub_10000D0FC(v0, qword_100980DC8);
  *v1 = 0xD00000000000001BLL;
  *(v1 + 8) = 0x8000000100781120;
  *(v1 + 16) = sub_1004E4AC8;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightSemibold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1004E4AD0()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100980DE0);
  v1 = sub_10000D0FC(v0, qword_100980DE0);
  *v1 = 0xD000000000000018;
  *(v1 + 8) = 0x8000000100781140;
  *(v1 + 16) = sub_1004E4B98;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1004E4DA8()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100980FD8);
  v1 = sub_10000D0FC(v0, qword_100980FD8);
  *v1 = 0xD000000000000022;
  *(v1 + 8) = 0x8000000100781280;
  *(v1 + 16) = sub_1004E4E70;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1004E4E7C()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100980FF0);
  v1 = sub_10000D0FC(v0, qword_100980FF0);
  *v1 = 0xD000000000000022;
  *(v1 + 8) = 0x8000000100781250;
  *(v1 + 16) = sub_1004E4F44;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

UIFontTextStyle sub_1004E514C()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981200);
  v1 = sub_10000D0FC(v0, qword_100981200);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4020000000000000;
  *v1 = 0xD000000000000018;
  *(v1 + 8) = 0x8000000100780F50;
  *(v1 + 16) = sub_1004E94A0;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_1004E5264()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981218);
  v1 = sub_10000D0FC(v0, qword_100981218);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4024000000000000;
  *v1 = 0xD000000000000017;
  *(v1 + 8) = 0x8000000100780FB0;
  *(v1 + 16) = sub_1004E97D8;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_1004E537C()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981230);
  v1 = sub_10000D0FC(v0, qword_100981230);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4022000000000000;
  *v1 = 0xD00000000000002CLL;
  *(v1 + 8) = 0x8000000100780FD0;
  *(v1 + 16) = sub_1004E97D8;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_1004E5494()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981248);
  v1 = sub_10000D0FC(v0, qword_100981248);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4020000000000000;
  *v1 = 0xD00000000000002DLL;
  *(v1 + 8) = 0x8000000100781000;
  *(v1 + 16) = sub_1004E97D8;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_1004E55AC()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981260);
  v1 = sub_10000D0FC(v0, qword_100981260);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4022000000000000;
  *v1 = 0xD00000000000002BLL;
  *(v1 + 8) = 0x8000000100781030;
  *(v1 + 16) = sub_1004E97D8;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

uint64_t sub_1004E56C4()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981278);
  v1 = sub_10000D0FC(v0, qword_100981278);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4024000000000000;
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x8000000100780F90;
  *(v1 + 16) = sub_1004E9500;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

UIFontTextStyle sub_1004E57B8()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981290);
  v1 = sub_10000D0FC(v0, qword_100981290);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4024000000000000;
  *(v2 + 24) = UIFontTextStyleCaption2;
  *v1 = 0xD00000000000001DLL;
  *(v1 + 8) = 0x8000000100780F70;
  *(v1 + 16) = sub_1004E94E4;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleCaption2;
}

UIFontTextStyle sub_1004E58D0()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_1009812A8);
  v1 = sub_10000D0FC(v0, qword_1009812A8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4026000000000000;
  *(v2 + 24) = UIFontTextStyleCaption2;
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x80000001007813C0;
  *(v1 + 16) = sub_1004E97DC;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleCaption2;
}

uint64_t sub_1004E59E8()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_1009812C0);
  v1 = sub_10000D0FC(v0, qword_1009812C0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4022000000000000;
  *v1 = 0xD000000000000031;
  *(v1 + 8) = 0x8000000100781060;
  *(v1 + 16) = sub_1004E97D0;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1004E5ADC()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_1009812D8);
  v1 = sub_10000D0FC(v0, qword_1009812D8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4020000000000000;
  *v1 = 0xD000000000000032;
  *(v1 + 8) = 0x80000001007810A0;
  *(v1 + 16) = sub_1004E97D0;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1004E5BD0()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_1009812F0);
  v1 = sub_10000D0FC(v0, qword_1009812F0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4022000000000000;
  *v1 = 0xD000000000000030;
  *(v1 + 8) = 0x80000001007810E0;
  *(v1 + 16) = sub_1004E97D0;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1004E5F40()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981578);
  v1 = sub_10000D0FC(v0, qword_100981578);
  v2 = sub_1004E601C(13.0, 16.0, 18.0, 32.0);
  *v1 = 0x747542726566666FLL;
  *(v1 + 8) = 0xEB000000006E6F74;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t (*sub_1004E601C(double a1, double a2, double a3, double a4))()
{
  v8 = sub_100743B54();
  v42 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100940720, qword_1007AA7F0);
  v43 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v40 - v13;
  sub_10000C518(&qword_10093B1C8, &qword_1007C6E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007C6E40;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  v40[1] = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v45 = a1;
  v44 = a2;
  v16 = enum case for TimingCurve.linear(_:);
  v40[0] = *(v9 + 104);
  (v40[0])(v11, enum case for TimingCurve.linear(_:), v8);
  v17 = UIContentSizeCategoryExtraSmall;
  v18 = UIContentSizeCategorySmall;
  sub_100743E74();
  v41 = v12;
  sub_100743E64();
  v20 = v43 + 8;
  v19 = *(v43 + 8);
  v19(v14, v12);
  v43 = v20;
  *(inited + 56) = round(v45);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v45 = a1;
  v44 = a2;
  v21 = v16;
  v22 = v16;
  v23 = v42;
  v24 = v40[0];
  (v40[0])(v11, v21, v42);
  v25 = UIContentSizeCategoryMedium;
  sub_100743E74();
  v26 = v41;
  sub_100743E64();
  v19(v14, v26);
  *(inited + 72) = round(v45);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v45 = a2;
  v44 = a3;
  v24(v11, v22, v23);
  v27 = UIContentSizeCategoryLarge;
  v28 = UIContentSizeCategoryExtraLarge;
  sub_100743E74();
  v29 = v41;
  sub_100743E64();
  v19(v14, v29);
  *(inited + 104) = round(v45);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v45 = a2;
  v44 = a3;
  v24(v11, v22, v42);
  v30 = UIContentSizeCategoryExtraExtraLarge;
  sub_100743E74();
  sub_100743E64();
  v19(v14, v29);
  *(inited + 120) = round(v45);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  *(inited + 152) = a4;
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  *(inited + 168) = a4;
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  *(inited + 184) = a4;
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  *(inited + 200) = a4;
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  v31 = UIContentSizeCategoryExtraExtraExtraLarge;
  v32 = UIContentSizeCategoryAccessibilityMedium;
  v33 = UIContentSizeCategoryAccessibilityLarge;
  v34 = UIContentSizeCategoryAccessibilityExtraLarge;
  v35 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v36 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v37 = sub_100413554(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_10093B1D0, &qword_1007C6E68);
  swift_arrayDestroy();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = a2;
  return sub_1004E97D4;
}

uint64_t sub_1004E65C4()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981590);
  v1 = sub_10000D0FC(v0, qword_100981590);
  v2 = sub_1004E601C(12.0, 13.0, 16.0, 26.0);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000001007811B0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_1004E66A0()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_1009815A8);
  v1 = sub_10000D0FC(v0, qword_1009815A8);
  v2 = sub_1004E601C(14.0, 17.0, 19.0, 33.0);
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x8000000100781190;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_1004E6784()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_1009815C0);
  v1 = sub_10000D0FC(v0, qword_1009815C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007C6E50;
  strcpy(v1, "inAppPurchase");
  *(v1 + 14) = -4864;
  *(v1 + 16) = sub_1004E9410;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightRegular;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1004E6894()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_1009815F0);
  v1 = sub_10000D0FC(v0, qword_1009815F0);
  v2 = sub_1004E6970(14.0, 17.0, 23.0, 23.0);
  *v1 = 0xD000000000000011;
  *(v1 + 8) = 0x8000000100780F10;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t (*sub_1004E6970(double a1, double a2, double a3, double a4))()
{
  v8 = sub_100743B54();
  v48 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100940720, qword_1007AA7F0);
  v49 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  sub_10000C518(&qword_10093B1C8, &qword_1007C6E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007C6E40;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  v46 = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v54 = a1;
  v53 = a2;
  v16 = enum case for TimingCurve.linear(_:);
  v17 = *(v9 + 104);
  v51 = enum case for TimingCurve.linear(_:);
  v17(v11, enum case for TimingCurve.linear(_:), v8);
  v18 = UIContentSizeCategoryExtraSmall;
  v19 = UIContentSizeCategorySmall;
  sub_100743E74();
  v47 = v12;
  sub_100743E64();
  v21 = v49 + 8;
  v20 = *(v49 + 8);
  v20(v14, v12);
  *(inited + 56) = round(v54);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v54 = a1;
  v53 = a2;
  v22 = v16;
  v23 = v48;
  v50 = v9 + 104;
  v17(v11, v22, v48);
  v52 = v17;
  v24 = UIContentSizeCategoryMedium;
  sub_100743E74();
  v25 = v47;
  sub_100743E64();
  v20(v14, v25);
  *(inited + 72) = round(v54);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v54 = a2;
  v53 = a3;
  v17(v11, v51, v23);
  v26 = UIContentSizeCategoryLarge;
  v27 = UIContentSizeCategoryExtraLarge;
  sub_100743E74();
  v28 = v47;
  sub_100743E64();
  v49 = v21;
  v45 = v20;
  v20(v14, v28);
  *(inited + 104) = round(v54);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v54 = a2;
  v53 = a3;
  v29 = v51;
  v52(v11, v51, v23);
  v30 = UIContentSizeCategoryExtraExtraLarge;
  sub_100743E74();
  sub_100743E64();
  v20(v14, v28);
  *(inited + 120) = round(v54);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  v54 = a3;
  v53 = a4;
  v52(v11, v29, v23);
  v31 = UIContentSizeCategoryExtraExtraExtraLarge;
  v32 = UIContentSizeCategoryAccessibilityMedium;
  sub_100743E74();
  sub_100743E64();
  v33 = v45;
  v45(v14, v28);
  *(inited + 152) = round(v54);
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  v54 = a3;
  v53 = a4;
  v34 = v48;
  v52(v11, v29, v48);
  v35 = UIContentSizeCategoryAccessibilityLarge;
  sub_100743E74();
  sub_100743E64();
  v36 = v33;
  v33(v14, v28);
  *(inited + 168) = round(v54);
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  v54 = a3;
  v53 = a4;
  v37 = v52;
  v52(v11, v29, v34);
  v38 = UIContentSizeCategoryAccessibilityExtraLarge;
  sub_100743E74();
  sub_100743E64();
  v36(v14, v28);
  *(inited + 184) = round(v54);
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v54 = a3;
  v53 = a4;
  v37(v11, v51, v34);
  v39 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  sub_100743E74();
  sub_100743E64();
  v36(v14, v28);
  *(inited + 200) = round(v54);
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  v40 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v41 = sub_100413554(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_10093B1D0, &qword_1007C6E68);
  swift_arrayDestroy();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = a2;
  return sub_1004E9450;
}

uint64_t sub_1004E71A0()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981620);
  v1 = sub_10000D0FC(v0, qword_100981620);
  v2 = sub_1004E6970(13.0, 15.0, 18.0, 18.0);
  *v1 = 0xD000000000000029;
  *(v1 + 8) = 0x8000000100781160;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_1004E7324()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_1009816E0);
  v1 = sub_10000D0FC(v0, qword_1009816E0);
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x8000000100781210;
  *(v1 + 16) = sub_1004E73EC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_1004E73EC(uint64_t a1)
{
  v1 = sub_100753094();
  v3 = v2;
  if (v1 == sub_100753094() && v3 == v4)
  {

    return 13.0;
  }

  else
  {
    v6 = sub_100754754();

    result = 13.0;
    if ((v6 & 1) == 0)
    {
      v8 = sub_100753094();
      v10 = v9;
      if (v8 == sub_100753094() && v10 == v11)
      {

        return 15.0;
      }

      else
      {
        v13 = sub_100754754();

        result = 15.0;
        if ((v13 & 1) == 0)
        {
          v14 = sub_100753094();
          v16 = v15;
          if (v14 == sub_100753094() && v16 == v17)
          {

            return 18.0;
          }

          else
          {
            v18 = sub_100754754();

            result = 10.0;
            if (v18)
            {
              return 18.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004E7624()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981788);
  v1 = sub_10000D0FC(v0, qword_100981788);
  *v1 = 0xD000000000000015;
  *(v1 + 8) = 0x80000001007811D0;
  *(v1 + 16) = sub_1004E76EC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightMedium;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_1004E76EC(uint64_t a1)
{
  v1 = sub_100753094();
  v3 = v2;
  if (v1 == sub_100753094() && v3 == v4)
  {

    return 16.0;
  }

  else
  {
    v6 = sub_100754754();

    result = 16.0;
    if ((v6 & 1) == 0)
    {
      v8 = sub_100753094();
      v10 = v9;
      if (v8 == sub_100753094() && v10 == v11)
      {

        return 18.0;
      }

      else
      {
        v13 = sub_100754754();

        result = 18.0;
        if ((v13 & 1) == 0)
        {
          v14 = sub_100753094();
          v16 = v15;
          if (v14 == sub_100753094() && v16 == v17)
          {

            return 20.0;
          }

          else
          {
            v18 = sub_100754754();

            result = 14.0;
            if (v18)
            {
              return 20.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004E7894()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_1009817A0);
  v1 = sub_10000D0FC(v0, qword_1009817A0);
  *v1 = 0xD00000000000001ALL;
  *(v1 + 8) = 0x8000000100781310;
  *(v1 + 16) = sub_1004E795C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_1004E795C(uint64_t a1)
{
  v1 = sub_100753094();
  v3 = v2;
  if (v1 == sub_100753094() && v3 == v4)
  {

    return 11.0;
  }

  else
  {
    v6 = sub_100754754();

    result = 11.0;
    if ((v6 & 1) == 0)
    {
      v8 = sub_100753094();
      v10 = v9;
      if (v8 == sub_100753094() && v10 == v11)
      {

        return 13.0;
      }

      else
      {
        v13 = sub_100754754();

        result = 13.0;
        if ((v13 & 1) == 0)
        {
          v14 = sub_100753094();
          v16 = v15;
          if (v14 == sub_100753094() && v16 == v17)
          {

            return 15.0;
          }

          else
          {
            v18 = sub_100754754();

            result = 9.0;
            if (v18)
            {
              return 15.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004E7B04()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_1009817B8);
  v1 = sub_10000D0FC(v0, qword_1009817B8);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x8000000100781350;
  *(v1 + 16) = sub_1004E4AC8;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightSemibold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1004E7BCC()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_1009817D0);
  v1 = sub_10000D0FC(v0, qword_1009817D0);
  strcpy(v1, "todayCardTitle");
  *(v1 + 15) = -18;
  *(v1 + 16) = sub_1004E7C9C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_1004E7C9C(uint64_t a1)
{
  Main = JUScreenClassGetMain();
  result = 28.0;
  if (Main == 1)
  {
    return 26.0;
  }

  return result;
}

uint64_t sub_1004E7CC4()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_1009817E8);
  v1 = sub_10000D0FC(v0, qword_1009817E8);
  *v1 = 0xD000000000000013;
  *(v1 + 8) = 0x80000001007812F0;
  *(v1 + 16) = sub_1004E7D8C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

double sub_1004E7D8C(uint64_t a1)
{
  Main = JUScreenClassGetMain();
  result = 28.0;
  if ((Main - 1) <= 3)
  {
    return dbl_1007C6E70[Main - 1];
  }

  return result;
}

uint64_t sub_1004E7DDC()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981818);
  v1 = sub_10000D0FC(v0, qword_100981818);
  *v1 = 0xD000000000000021;
  *(v1 + 8) = 0x8000000100781370;
  *(v1 + 16) = sub_1004E7EA4;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1004E7EDC(__n128 a1, uint64_t a2, uint64_t *a3, unsigned int *a4, int a5)
{
  v8 = sub_10074F944();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750534();
  sub_100039C50(v12, a3);
  v13 = sub_10000D0FC(v12, a3);
  (*(v9 + 104))(v11, *a4, v8);
  v14 = sub_10074F934();
  (*(v9 + 8))(v11, v8);
  *v13 = v14;
  *(v13 + 8) = a5;
  return (*(*(v12 - 8) + 104))(v13, enum case for FontUseCase.preferredFont(_:), v12);
}

uint64_t sub_1004E8104()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981920);
  v1 = sub_10000D0FC(v0, qword_100981920);
  *v1 = 0xD000000000000012;
  *(v1 + 8) = 0x80000001007811F0;
  *(v1 + 16) = sub_1004E81CC;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightHeavy;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1004E82E8()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981A40);
  v1 = sub_10000D0FC(v0, qword_100981A40);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000001007812B0;
  *(v1 + 16) = sub_10006A93C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1004E84C8()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981B60);
  v1 = sub_10000D0FC(v0, qword_100981B60);
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x8000000100781330;
  *(v1 + 16) = sub_1004E3E5C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1004E8744()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981CF8);
  v1 = sub_10000D0FC(v0, qword_100981CF8);
  *v1 = 0x756F436C6C616D73;
  *(v1 + 8) = 0xEF6567646142746ELL;
  *(v1 + 16) = sub_1004E8814;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1004E881C()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100981D10);
  v1 = sub_10000D0FC(v0, qword_100981D10);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x8000000100780EF0;
  *(v1 + 16) = sub_1004E7EA4;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

id sub_1004E8BDC(uint64_t a1, uint64_t *a2, id *a3, uint64_t *a4)
{
  v7 = sub_100750534();
  sub_100039C50(v7, a2);
  v8 = sub_10000D0FC(v7, a2);
  v11 = *a3;
  v9 = *a4;
  *v8 = *a3;
  v8[1] = v9;
  (*(*(v7 - 8) + 104))();

  return v11;
}

uint64_t sub_1004E8C94()
{
  v0 = sub_100741574();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741544();
  v4 = sub_1007414D4();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_10074F924();
  }

  else
  {
    return sub_10074F934();
  }
}

double sub_1004E8D7C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a2];
  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
  [v5 scaledValueForValue:v6 compatibleWithTraitCollection:a3];
  v8 = v7;

  return v8;
}

double sub_1004E8E1C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_100753094();
  v8 = v7;
  if (v6 == sub_100753094() && v8 == v9)
  {
    goto LABEL_13;
  }

  v11 = sub_100754754();

  if (v11)
  {
    return a3;
  }

  v12 = sub_100753094();
  v14 = v13;
  if (v12 == sub_100753094() && v14 == v15)
  {
    goto LABEL_13;
  }

  v17 = sub_100754754();

  if (v17)
  {
    return a3;
  }

  v18 = sub_100753094();
  v20 = v19;
  if (v18 == sub_100753094() && v20 == v21)
  {
    goto LABEL_13;
  }

  v23 = sub_100754754();

  if (v23)
  {
    return a3;
  }

  v24 = sub_100753094();
  v26 = v25;
  if (v24 == sub_100753094() && v26 == v27)
  {
    goto LABEL_13;
  }

  v28 = sub_100754754();

  if (v28)
  {
    return a3;
  }

  v29 = sub_100753094();
  v31 = v30;
  if (v29 == sub_100753094() && v31 == v32)
  {
    goto LABEL_13;
  }

  v33 = sub_100754754();

  if (v33)
  {
    return a3;
  }

  v34 = sub_100753094();
  v36 = v35;
  if (v34 == sub_100753094() && v36 == v37)
  {
    goto LABEL_13;
  }

  v38 = sub_100754754();

  if (v38)
  {
    return a3;
  }

  v39 = sub_100753094();
  v41 = v40;
  if (v39 == sub_100753094() && v41 == v42)
  {
LABEL_13:

    return a3;
  }

  v43 = sub_100754754();

  if ((v43 & 1) == 0)
  {
    v44 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a2];
    v45 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:a1];
    v48.is_nil = UIContentSizeCategoryAccessibilityExtraLarge;
    v48.value._rawValue = 0;
    isa = sub_1007537C4(v48, v49).super.isa;

    [v44 scaledValueForValue:isa compatibleWithTraitCollection:a3];
    a3 = v47;
  }

  return a3;
}

double sub_1004E91B0(uint64_t a1, double a2, double a3)
{
  v5 = sub_100753094();
  v7 = v6;
  if (v5 == sub_100753094() && v7 == v8)
  {
    goto LABEL_13;
  }

  v10 = sub_100754754();

  if (v10)
  {
    return a2;
  }

  v11 = sub_100753094();
  v13 = v12;
  if (v11 == sub_100753094() && v13 == v14)
  {
    goto LABEL_13;
  }

  v16 = sub_100754754();

  if (v16)
  {
    return a2;
  }

  v17 = sub_100753094();
  v19 = v18;
  if (v17 == sub_100753094() && v19 == v20)
  {
    goto LABEL_13;
  }

  v22 = sub_100754754();

  if (v22)
  {
    return a2;
  }

  v23 = sub_100753094();
  v25 = v24;
  if (v23 == sub_100753094() && v25 == v26)
  {
    goto LABEL_13;
  }

  v27 = sub_100754754();

  if (v27)
  {
    return a2;
  }

  v28 = sub_100753094();
  v30 = v29;
  if (v28 == sub_100753094() && v30 == v31)
  {
LABEL_13:

    return a2;
  }

  v32 = sub_100754754();

  if ((v32 & 1) == 0)
  {
    return a3;
  }

  return a2;
}

uint64_t sub_1004E9418()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1004E9454()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v4 = sub_100415ADC();
    if (v5)
    {
      return *(*(v2 + 56) + 8 * v4);
    }
  }

  return v3;
}

uint64_t sub_1004E94AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004E9508()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004E9548(__n128 a1)
{
  v2 = sub_10074F944();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1004E95D0(__n128 a1)
{
  sub_10074F944();

  return sub_1004E8C94();
}

UIContentSizeCategory sub_1004E9630(uint64_t a1)
{
  v2 = sub_100753094();
  v4 = v3;
  if (v2 == sub_100753094() && v4 == v5)
  {
    goto LABEL_13;
  }

  v7 = sub_100754754();

  if ((v7 & 1) == 0)
  {
    v8 = sub_100753094();
    v10 = v9;
    if (v8 == sub_100753094() && v10 == v11)
    {
      goto LABEL_13;
    }

    v13 = sub_100754754();

    if ((v13 & 1) == 0)
    {
      v14 = sub_100753094();
      v16 = v15;
      if (v14 == sub_100753094() && v16 == v17)
      {
LABEL_13:

        return a1;
      }

      v19 = sub_100754754();

      if ((v19 & 1) == 0)
      {
        return UIContentSizeCategoryMedium;
      }
    }
  }

  return a1;
}

uint64_t sub_1004E97E0(double a1)
{
  v2 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v2 - 8);
  v42 = v33 - v3;
  v40 = sub_10074F654();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  __chkstk_darwin(v13);
  v46 = v33 - v14;
  __chkstk_darwin(v15);
  v17 = v33 - v16;
  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  v18 = *(sub_10074F584() - 8);
  v45 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v35 = v20;
  *(v20 + 16) = xmmword_1007A7250;
  v38 = v20 + v19;
  v48 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v47 = 0x4030000000000000;
  v48 = 0x4020000000000000;
  sub_10074F5F4();
  v48 = 0x4034000000000000;
  sub_10074F614();
  *v6 = 16.0;
  v6[1] = a1 + 16.0;
  v39 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v21 = *(v4 + 104);
  v36 = v4 + 104;
  v22 = v40;
  v21(v6);
  v41 = v21;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v48) = 0;
  sub_10074F614();
  v48 = 0;
  v44 = v9;
  sub_10074F614();
  v43 = v17;
  v37 = v12;
  sub_10074F544();
  v48 = 0x3FF0000000000000;
  sub_10074F614();
  v47 = 0x4034000000000000;
  v48 = 0x4024000000000000;
  sub_10074F5F4();
  v48 = 0x4034000000000000;
  sub_10074F614();
  v34 = a1;
  *v6 = 20.0;
  v6[1] = a1 + 20.0;
  (v21)(v6, v39, v22);
  LOBYTE(v48) = 0;
  sub_10074F614();
  v48 = 0;
  sub_10074F614();
  v24 = v45;
  v33[2] = *&UIEdgeInsetsZero.top;
  *&v33[3] = left;
  sub_10074F544();
  v33[1] = 2 * v24;
  v48 = 0x3FF0000000000000;
  sub_10074F614();
  v48 = 0x4034000000000000;
  sub_10074F614();
  v48 = 0x4034000000000000;
  sub_10074F614();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v25 = v39;
  v26 = v40;
  (v41)(v6, v39, v40);
  LOBYTE(v48) = 0;
  sub_10074F614();
  v48 = 0;
  sub_10074F614();
  sub_10074F544();
  v48 = 0x3FF0000000000000;
  sub_10074F614();
  v48 = 0x4034000000000000;
  sub_10074F614();
  v48 = 0x4034000000000000;
  sub_10074F614();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v27 = v25;
  v28 = v41;
  (v41)(v6, v27, v26);
  sub_1007535A4();
  LOBYTE(v48) = 0;
  sub_10074F614();
  v48 = 0;
  sub_10074F614();
  sub_10074F544();
  v29 = 4 * v45;
  v48 = 0x3FF0000000000000;
  sub_10074F614();
  v48 = 0x4038000000000000;
  sub_10074F614();
  v48 = 0x4034000000000000;
  sub_10074F614();
  v30 = v34 + 52.0;
  *v6 = 52.0;
  v6[1] = v30;
  v31 = v39;
  (v28)(v6, v39, v26);
  LOBYTE(v48) = 0;
  sub_10074F614();
  v48 = 0;
  sub_10074F614();
  sub_10074F544();
  v45 += v29;
  v48 = 0x3FF0000000000000;
  sub_10074F614();
  v48 = 0x4038000000000000;
  sub_10074F614();
  v48 = 0x4034000000000000;
  sub_10074F614();
  *v6 = 52.0;
  v6[1] = v30;
  (v41)(v6, v31, v40);
  LOBYTE(v48) = 0;
  sub_10074F614();
  v48 = 0;
  sub_10074F614();
  sub_10074F544();
  return v35;
}

void sub_1004EA1C4(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoBackgroundColor;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoBackgroundColor);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoBackgroundColor) = a1;
  v7 = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v1 + v2);
    [v5 setBackgroundColor:v6];
  }
}

void sub_1004EA284(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074AB44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v39 - v12;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_requirementsLabel;
  v15 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_requirementsLabel];
  if (!v15 || (v16 = [v15 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v40 = v7;
  v17 = v3;
  v18 = a1;
  v19 = v16;
  v20 = sub_100753094();
  v22 = v21;

  if (!a2)
  {

    v3 = v17;
    v7 = v40;
    if (*&v3[v14])
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v20 != v18 || v22 != a2)
  {
    v24 = sub_100754754();

    v3 = v17;
    v7 = v40;
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (*&v3[v14])
    {
LABEL_12:

LABEL_34:
      [v3 setNeedsLayout];
      return;
    }

LABEL_14:
    v25 = sub_100750534();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
    v26 = objc_allocWithZone(sub_100745C84());
    v27 = sub_100745C74();
    v28 = [v3 traitCollection];
    v29 = sub_1007537E4();

    if (v29)
    {
      if (qword_1009216B0 != -1)
      {
        swift_once();
      }

      v30 = &qword_10093B238;
    }

    else
    {
      if (qword_1009216D0 != -1)
      {
        swift_once();
      }

      v30 = &qword_10093B258;
    }

    [v27 setFont:*v30];
    if (a2)
    {
      v31 = sub_100753064();
    }

    else
    {
      v31 = 0;
    }

    [v27 setText:v31];

    v32 = *&v3[v14];
    *&v3[v14] = v27;
    v33 = v27;

    v34 = [v3 traitCollection];
    if (sub_100753804())
    {
      v35 = sub_1007537D4();

      if (v35)
      {
        [*&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentContainerView] addSubview:v33];
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        v36 = v33;
        v37 = sub_100753DF4();
LABEL_33:
        v38 = v37;
        [v36 setTextColor:v37];

        goto LABEL_34;
      }
    }

    else
    {
    }

    [*&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView] addSubview:v33];
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v36 = v33;
    v37 = sub_100753DD4();
    goto LABEL_33;
  }

LABEL_19:
}

double sub_1004EA734(uint64_t a1, __n128 a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupArtwork);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupArtwork) = a1;
  if (a1)
  {
    if (v3)
    {
      sub_10074F3D4();
      sub_1004F33A8(&unk_100928A50, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      swift_retain_n();
      v4 = sub_100753014();

      if (v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkLoader);

    sub_10014BC00(v6, v5);

LABEL_9:

    return result;
  }

  if (v3)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_1004EA870(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

void sub_1004EA904()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView);
    [v2 contentSize];
    v4 = v3;
    [v2 bounds];
    if (CGRectGetHeight(v7) < v4 || (v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardScrollView), [v2 contentSize], v6 = v5, objc_msgSend(v2, "bounds"), CGRectGetHeight(v8) < v6))
    {
      [v2 flashScrollIndicators];
      *(v0 + v1) = 1;
    }
  }
}

uint64_t sub_1004EA9D0()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_100981FE0);
  sub_10000D0FC(v0, qword_100981FE0);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004EAB34(uint64_t a1)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  v36 = a1;
  sub_100746F84();
  if (qword_100920F80 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100980BD0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = sub_100750B04();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  sub_100750B14();
  v14 = v3[1];
  v14(v5, v2);
  sub_100747044();
  if (qword_100920F78 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v6, qword_100980BB8);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_10000D134(v38);
  v34(v15, v5, v2);
  sub_100750B14();
  v14(v5, v2);
  sub_100746FC4();
  v32 = v14;
  if (qword_100920F68 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v6, qword_100980B88);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v38);
  v34(v18, v5, v2);
  sub_100750B14();
  v32(v5, v2);
  sub_100746F64();
  v19 = v11;
  if (qword_100920F70 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v6, qword_100980BA0);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  sub_100750B14();
  v24 = v32;
  v32(v5, v2);
  sub_100747054();
  sub_100746FA4();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_10000D134(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_10000D134(v38);
  v23(v25, v5, v2);
  sub_100750B14();
  v24(v5, v2);
  return sub_100746FB4();
}

uint64_t sub_1004EB11C()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_100981FF8);
  sub_10000D0FC(v0, qword_100981FF8);
  if (qword_100921638 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_100981FE0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004EB280()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1007504F4();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_100039C50(v7, qword_100982010);
  v74 = v7;
  v75 = sub_10000D0FC(v7, qword_100982010);
  v76 = v6;
  sub_100750504();
  v167 = &type metadata for Double;
  v168 = &protocol witness table for Double;
  v165 = &protocol witness table for Double;
  *&v166 = 0x4030000000000000;
  v164 = &type metadata for Double;
  *&v163 = 0x4030000000000000;
  if (qword_100921678 != -1)
  {
    swift_once();
  }

  v8 = qword_10093B200;
  *v3 = qword_10093B200;
  v80 = enum case for FontSource.textStyle(_:);
  v82 = v1[13];
  v82(v3);
  v81 = sub_100750B04();
  v161 = v81;
  v162 = &protocol witness table for StaticDimension;
  sub_10000D134(&v160);
  v158 = v0;
  v159 = &protocol witness table for FontSource;
  v9 = sub_10000D134(&v157);
  v10 = v1[2];
  v10(v9, v3, v0);
  v11 = v8;
  sub_100750B14();
  v12 = v1[1];
  v12(v3, v0);
  v158 = &type metadata for Double;
  v159 = &protocol witness table for Double;
  *&v157 = 0x4030000000000000;
  v156 = &protocol witness table for Double;
  v155 = &type metadata for Double;
  *&v154 = 0x4030000000000000;
  v13 = sub_1007507D4();
  v152 = v13;
  v153 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v151);
  sub_1007507C4();
  v73 = v13;
  v149 = v13;
  v150 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v148);
  sub_1007507C4();
  v14 = qword_10093B200;
  *v3 = qword_10093B200;
  v86 = v1 + 13;
  (v82)(v3, v80, v0);
  v146 = v81;
  v147 = &protocol witness table for StaticDimension;
  sub_10000D134(&v145);
  v143 = v0;
  v144 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v142);
  v83 = v10;
  v84 = v1 + 2;
  v10(v15, v3, v0);
  v16 = v14;
  sub_100750B14();
  v85 = v1 + 1;
  v79 = v12;
  v12(v3, v0);
  if (qword_100921680 != -1)
  {
    swift_once();
  }

  v17 = qword_10093B208;
  *v3 = qword_10093B208;
  v18 = v80;
  v19 = v82;
  (v82)(v3, v80, v0);
  v143 = v81;
  v144 = &protocol witness table for StaticDimension;
  sub_10000D134(&v142);
  v140 = v0;
  v141 = &protocol witness table for FontSource;
  v20 = sub_10000D134(&v139);
  v21 = v83;
  v83(v20, v3, v0);
  v22 = v17;
  sub_100750B14();
  v23 = v79;
  v79(v3, v0);
  v141 = &protocol witness table for Double;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v24 = qword_10093B200;
  *v3 = qword_10093B200;
  v19(v3, v18, v0);
  v25 = v81;
  v137 = v81;
  v138 = &protocol witness table for StaticDimension;
  sub_10000D134(&v136);
  v134 = v0;
  v135 = &protocol witness table for FontSource;
  v26 = sub_10000D134(&v133);
  v21(v26, v3, v0);
  v27 = v24;
  sub_100750B14();
  v23(v3, v0);
  v28 = v73;
  v134 = v73;
  v135 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v133);
  sub_1007507C4();
  v131 = v28;
  v132 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v130);
  sub_1007507C4();
  v128 = v28;
  v129 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v127);
  sub_1007507C4();
  if (qword_100921688 != -1)
  {
    swift_once();
  }

  v29 = qword_10093B210;
  *v3 = qword_10093B210;
  v30 = v80;
  v31 = v82;
  (v82)(v3, v80, v0);
  v125 = v25;
  v126 = &protocol witness table for StaticDimension;
  sub_10000D134(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v32 = sub_10000D134(&v121);
  v83(v32, v3, v0);
  v33 = v29;
  sub_100750B14();
  v79(v3, v0);
  v34 = qword_10093B210;
  *v3 = qword_10093B210;
  v31(v3, v30, v0);
  v35 = v81;
  v122 = v81;
  v123 = &protocol witness table for StaticDimension;
  sub_10000D134(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v36 = sub_10000D134(&v118);
  v83(v36, v3, v0);
  v37 = v34;
  sub_100750B14();
  v38 = v79;
  v79(v3, v0);
  v39 = qword_10093B210;
  *v3 = qword_10093B210;
  v31(v3, v30, v0);
  v119 = v35;
  v120 = &protocol witness table for StaticDimension;
  sub_10000D134(&v118);
  v116 = v0;
  v117 = &protocol witness table for FontSource;
  v40 = sub_10000D134(&v115);
  v83(v40, v3, v0);
  v41 = v39;
  sub_100750B14();
  v38(v3, v0);
  if (qword_100921690 != -1)
  {
    swift_once();
  }

  v42 = qword_10093B218;
  *v3 = qword_10093B218;
  (v82)(v3, v30, v0);
  v116 = v35;
  v117 = &protocol witness table for StaticDimension;
  sub_10000D134(&v115);
  v113 = v0;
  v114 = &protocol witness table for FontSource;
  v43 = sub_10000D134(&v112);
  v83(v43, v3, v0);
  v44 = v42;
  sub_100750B14();
  v45 = v79;
  v79(v3, v0);
  v46 = qword_10093B218;
  *v3 = qword_10093B218;
  (v82)(v3, v30, v0);
  v113 = v35;
  v114 = &protocol witness table for StaticDimension;
  sub_10000D134(&v112);
  v110 = v0;
  v111 = &protocol witness table for FontSource;
  v47 = sub_10000D134(&v109);
  v48 = v83;
  v83(v47, v3, v0);
  v49 = v46;
  sub_100750B14();
  v45(v3, v0);
  v111 = &protocol witness table for Double;
  v110 = &type metadata for Double;
  *&v109 = 0x4032000000000000;
  v50 = v80;
  v51 = qword_10093B218;
  *v3 = qword_10093B218;
  (v82)(v3, v50, v0);
  v107 = v81;
  v108 = &protocol witness table for StaticDimension;
  sub_10000D134(&v106);
  v104 = v0;
  v105 = &protocol witness table for FontSource;
  v52 = sub_10000D134(&v103);
  v48(v52, v3, v0);
  v53 = v48;
  v54 = v51;
  sub_100750B14();
  v55 = v79;
  v79(v3, v0);
  v105 = &protocol witness table for Double;
  v104 = &type metadata for Double;
  v102 = &protocol witness table for Double;
  *&v103 = 0x4032000000000000;
  v101 = &type metadata for Double;
  *&v100 = 0x4024000000000000;
  v56 = qword_10093B218;
  *v3 = qword_10093B218;
  v57 = v82;
  (v82)(v3, v50, v0);
  v98 = v81;
  v99 = &protocol witness table for StaticDimension;
  sub_10000D134(&v97);
  v95 = v0;
  v96 = &protocol witness table for FontSource;
  v58 = sub_10000D134(&v94);
  v53(v58, v3, v0);
  v59 = v56;
  sub_100750B14();
  v55(v3, v0);
  v60 = qword_10093B218;
  *v3 = qword_10093B218;
  v57(v3, v50, v0);
  v61 = v81;
  v95 = v81;
  v96 = &protocol witness table for StaticDimension;
  sub_10000D134(&v94);
  v92 = v0;
  v93 = &protocol witness table for FontSource;
  v62 = sub_10000D134(&v91);
  v53(v62, v3, v0);
  v63 = v60;
  sub_100750B14();
  v55(v3, v0);
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  *&v91 = 0x4024000000000000;
  if (qword_100921668 != -1)
  {
    swift_once();
  }

  v64 = qword_10093B1F0;
  *v3 = qword_10093B1F0;
  v57(v3, v80, v0);
  v89 = v61;
  v90 = &protocol witness table for StaticDimension;
  sub_10000D134(&v88);
  v87[3] = v0;
  v87[4] = &protocol witness table for FontSource;
  v65 = sub_10000D134(v87);
  v83(v65, v3, v0);
  v66 = v64;
  sub_100750B14();
  v55(v3, v0);
  v67 = v75;
  (*(v77 + 32))(v75, v76, v78);
  v68 = v74;
  sub_100012160(&v166, v67 + v74[5]);
  sub_100012160(&v163, v67 + v68[6]);
  sub_100012160(&v160, v67 + v68[7]);
  sub_100012160(&v157, v67 + v68[8]);
  sub_100012160(&v154, v67 + v68[9]);
  v69 = (v67 + v68[10]);
  *v69 = 0;
  v69[1] = 0;
  sub_100012160(&v151, v67 + v68[11]);
  sub_100012160(&v148, v67 + v68[12]);
  sub_100012160(&v145, v67 + v68[13]);
  sub_100012160(&v142, v67 + v68[14]);
  sub_100012160(&v139, v67 + v68[15]);
  sub_100012160(&v136, v67 + v68[16]);
  v70 = (v67 + v68[17]);
  *v70 = 0;
  v70[1] = 0;
  sub_100012160(&v133, v67 + v68[18]);
  sub_100012160(&v130, v67 + v68[19]);
  sub_100012160(&v127, v67 + v68[20]);
  sub_100012160(&v124, v67 + v68[21]);
  sub_100012160(&v121, v67 + v68[22]);
  sub_100012160(&v118, v67 + v68[23]);
  sub_100012160(&v115, v67 + v68[24]);
  sub_100012160(&v112, v67 + v68[25]);
  sub_100012160(&v109, v67 + v68[26]);
  sub_100012160(&v106, v67 + v68[27]);
  sub_100012160(&v103, v67 + v68[28]);
  sub_100012160(&v100, v67 + v68[29]);
  sub_100012160(&v97, v67 + v68[30]);
  sub_100012160(&v94, v67 + v68[31]);
  sub_100012160(&v91, v67 + v68[32]);
  return sub_100012160(&v88, v67 + v68[33]);
}

uint64_t sub_1004EC0D4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1007504F4();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_100039C50(v7, qword_100982028);
  v52 = v7;
  v53 = sub_10000D0FC(v7, qword_100982028);
  v54 = v6;
  sub_100750504();
  v143 = &type metadata for Double;
  v144 = &protocol witness table for Double;
  v141 = &protocol witness table for Double;
  *&v142 = 0x4034000000000000;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v8 = sub_1007507D4();
  v137 = v8;
  v138 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v136);
  sub_1007507C4();
  v134 = &type metadata for Double;
  v135 = &protocol witness table for Double;
  *&v133 = 0x4034000000000000;
  v132 = &protocol witness table for Double;
  v131 = &type metadata for Double;
  *&v130 = 0x4034000000000000;
  v58 = v8;
  v128 = v8;
  v129 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v127);
  sub_1007507C4();
  if (qword_100921658 != -1)
  {
    swift_once();
  }

  v9 = qword_10093B1E0;
  *v3 = qword_10093B1E0;
  v63 = enum case for FontSource.textStyle(_:);
  v10 = v1[13];
  v10(v3);
  v62 = sub_100750B04();
  v125 = v62;
  v126 = &protocol witness table for StaticDimension;
  sub_10000D134(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v121);
  v12 = v1[2];
  v12(v11, v3, v0);
  v13 = v9;
  sub_100750B14();
  v14 = v1[1];
  v14(v3, v0);
  v15 = qword_10093B1E0;
  *v3 = qword_10093B1E0;
  v61 = v10;
  v59 = v1 + 13;
  (v10)(v3, v63, v0);
  v122 = v62;
  v123 = &protocol witness table for StaticDimension;
  sub_10000D134(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v16 = sub_10000D134(&v118);
  v60 = v1 + 2;
  v12(v16, v3, v0);
  v17 = v12;
  v18 = v15;
  sub_100750B14();
  v14(v3, v0);
  v120 = &protocol witness table for Double;
  v119 = &type metadata for Double;
  *&v118 = 0x4000000000000000;
  v117 = &protocol witness table for Double;
  v116 = &type metadata for Double;
  *&v115 = 0x4034000000000000;
  v19 = v58;
  v113 = v58;
  v114 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v112);
  sub_1007507C4();
  if (qword_100921660 != -1)
  {
    swift_once();
  }

  v20 = qword_10093B1E8;
  *v3 = qword_10093B1E8;
  v61(v3, v63, v0);
  v110 = v62;
  v111 = &protocol witness table for StaticDimension;
  sub_10000D134(&v109);
  v107 = v0;
  v108 = &protocol witness table for FontSource;
  v21 = sub_10000D134(&v106);
  v12(v21, v3, v0);
  v22 = v20;
  sub_100750B14();
  v14(v3, v0);
  v107 = v19;
  v108 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v106);
  sub_1007507C4();
  v104 = v19;
  v105 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v103);
  sub_1007507C4();
  if (qword_100921668 != -1)
  {
    swift_once();
  }

  v23 = qword_10093B1F0;
  *v3 = qword_10093B1F0;
  v61(v3, v63, v0);
  v101 = v62;
  v102 = &protocol witness table for StaticDimension;
  sub_10000D134(&v100);
  v98 = v0;
  v99 = &protocol witness table for FontSource;
  v24 = sub_10000D134(&v97);
  v12(v24, v3, v0);
  v25 = v23;
  sub_100750B14();
  v14(v3, v0);
  v98 = v19;
  v99 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v97);
  sub_1007507C4();
  v95 = v19;
  v96 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v94);
  sub_1007507C4();
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  v90 = &protocol witness table for ZeroDimension;
  *&v91 = 0x4022000000000000;
  v89 = v19;
  sub_10000D134(&v88);
  sub_1007507C4();
  v26 = v1 + 1;
  v51 = v14;
  if (qword_100921670 != -1)
  {
    swift_once();
  }

  v27 = qword_10093B1F8;
  *v3 = qword_10093B1F8;
  v28 = v63;
  v29 = v61;
  v61(v3, v63, v0);
  v30 = v29;
  v86 = v62;
  v87 = &protocol witness table for StaticDimension;
  sub_10000D134(&v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v31 = sub_10000D134(&v82);
  v17(v31, v3, v0);
  v32 = v27;
  sub_100750B14();
  v33 = v51;
  v51(v3, v0);
  v57 = v26;
  v83 = v58;
  v84 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v82);
  sub_1007507C4();
  v34 = qword_10093B1F8;
  *v3 = qword_10093B1F8;
  v30(v3, v28, v0);
  v35 = v62;
  v80 = v62;
  v81 = &protocol witness table for StaticDimension;
  sub_10000D134(&v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v36 = sub_10000D134(&v76);
  v17(v36, v3, v0);
  v37 = v34;
  sub_100750B14();
  v33(v3, v0);
  v38 = qword_10093B1F8;
  *v3 = qword_10093B1F8;
  v61(v3, v63, v0);
  v77 = v35;
  v78 = &protocol witness table for StaticDimension;
  sub_10000D134(&v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v39 = sub_10000D134(&v73);
  v17(v39, v3, v0);
  v40 = v38;
  sub_100750B14();
  v33(v3, v0);
  v41 = v58;
  v74 = v58;
  v75 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v73);
  sub_1007507C4();
  v71 = v41;
  v72 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v70);
  sub_1007507C4();
  v42 = qword_10093B1F8;
  *v3 = qword_10093B1F8;
  v61(v3, v63, v0);
  v68 = v62;
  v69 = &protocol witness table for StaticDimension;
  sub_10000D134(&v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v43 = sub_10000D134(&v64);
  v17(v43, v3, v0);
  v44 = v42;
  sub_100750B14();
  v33(v3, v0);
  v65 = v41;
  v66 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v64);
  sub_1007507C4();
  v45 = v53;
  (*(v55 + 32))(v53, v54, v56);
  v46 = v52;
  sub_100012160(&v142, v45 + v52[5]);
  sub_100012160(&v139, v45 + v46[6]);
  sub_100012160(&v136, v45 + v46[7]);
  sub_100012160(&v133, v45 + v46[8]);
  sub_100012160(&v130, v45 + v46[9]);
  v47 = (v45 + v46[10]);
  *v47 = 0;
  v47[1] = 0;
  sub_100012160(&v127, v45 + v46[11]);
  sub_100012160(&v124, v45 + v46[12]);
  sub_100012160(&v121, v45 + v46[13]);
  sub_100012160(&v118, v45 + v46[14]);
  sub_100012160(&v115, v45 + v46[15]);
  sub_100012160(&v112, v45 + v46[16]);
  v48 = (v45 + v46[17]);
  *v48 = 0;
  v48[1] = 0;
  sub_100012160(&v109, v45 + v46[18]);
  sub_100012160(&v106, v45 + v46[19]);
  sub_100012160(&v103, v45 + v46[20]);
  sub_100012160(&v100, v45 + v46[21]);
  sub_100012160(&v97, v45 + v46[22]);
  sub_100012160(&v94, v45 + v46[23]);
  sub_100012160(&v91, v45 + v46[24]);
  sub_100012160(&v88, v45 + v46[25]);
  sub_100012160(&v85, v45 + v46[26]);
  sub_100012160(&v82, v45 + v46[27]);
  sub_100012160(&v79, v45 + v46[28]);
  sub_100012160(&v76, v45 + v46[29]);
  sub_100012160(&v73, v45 + v46[30]);
  sub_100012160(&v70, v45 + v46[31]);
  sub_100012160(&v67, v45 + v46[32]);
  return sub_100012160(&v64, v45 + v46[33]);
}

void sub_1004ECD24()
{
  v0 = objc_opt_self();
  if (qword_100921660 != -1)
  {
    swift_once();
  }

  v1 = qword_10093B1E8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_10093B228 = v2;
}

void sub_1004ECE00()
{
  v0 = objc_opt_self();
  if (qword_100921670 != -1)
  {
    swift_once();
  }

  v1 = qword_10093B1F8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_10093B238 = v2;
}

void sub_1004ECF08(uint64_t a1, void *a2, id *a3, void *a4, uint64_t a5)
{
  v8 = objc_opt_self();
  if (*a2 != -1)
  {
    swift_once();
  }

  v9 = *a3;
  v10 = [v8 _preferredFontForTextStyle:v9 weight:UIFontWeightSemibold];

  *a4 = v10;
}

void sub_1004ECFE8(uint64_t a1, void *a2, id *a3, void *a4, uint64_t a5)
{
  v8 = objc_opt_self();
  if (*a2 != -1)
  {
    swift_once();
  }

  v9 = *a3;
  v10 = [v8 preferredFontForTextStyle:v9];

  *a4 = v10;
}

void sub_1004ED084()
{
  v0 = objc_opt_self();
  if (qword_100921690 != -1)
  {
    swift_once();
  }

  v1 = qword_10093B218;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_10093B258 = v2;
}

void sub_1004ED134()
{
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  qword_10093B260 = sub_100753EC4(v3, v2).super.isa;
}

id sub_1004ED1C8()
{
  result = [objc_opt_self() blackColor];
  qword_10093B268 = result;
  return result;
}

uint64_t sub_1004ED204()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007541F4();
  sub_100039C50(v4, qword_10093B270);
  sub_10000D0FC(v4, qword_10093B270);
  sub_1007541A4();
  sub_1007540C4();
  v5 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle3 scale:2];
  sub_100754024();
  (*(v1 + 104))(v3, enum case for SystemImage.squareAndArrowUp(_:), v0);
  sub_100743AE4();
  (*(v1 + 8))(v3, v0);
  return sub_100754194();
}

id sub_1004ED384()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_1007537D4();

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView];
    [v10 contentSize];
    v12 = v11;
    [v10 bounds];
    v9 = v12 <= CGRectGetHeight(v51);
  }

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardScrollView] setAlwaysBounceVertical:v9];
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardContentView];
  v14 = [v1 traitCollection];
  v15 = sub_1007537E4();

  if (v15)
  {
    if (qword_1009216E0 != -1)
    {
      swift_once();
    }

    v16 = &qword_10093B268;
  }

  else
  {
    if (qword_1009216D8 != -1)
    {
      swift_once();
    }

    v16 = &qword_10093B260;
  }

  [v13 setBackgroundColor:*v16];
  v17 = [v1 traitCollection];
  sub_1007537E4();

  v18 = enum case for CornerStyle.continuous(_:);
  v19 = *(v3 + 104);
  v19(v6, enum case for CornerStyle.continuous(_:), v2);
  sub_100746E34();
  v20 = *(v3 + 8);
  v20(v6, v2);
  v19(v6, v18, v2);
  sub_100743024();
  v20(v6, v2);
  v19(v6, v18, v2);
  sub_100746E34();
  v20(v6, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    [Strong _setCornerRadius:26.0];
  }

  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_kindLabel];
  v24 = [v1 traitCollection];
  v25 = sub_1007537E4();

  if (v25)
  {
    if (qword_100921698 != -1)
    {
      swift_once();
    }

    v26 = &qword_10093B220;
  }

  else
  {
    if (qword_1009216B8 != -1)
    {
      swift_once();
    }

    v26 = &qword_10093B240;
  }

  [v23 setFont:*v26];
  v27 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_titleLabel];
  v28 = [v1 traitCollection];
  v29 = sub_1007537E4();

  if (v29)
  {
    if (qword_1009216A0 != -1)
    {
      swift_once();
    }

    v30 = &qword_10093B228;
  }

  else
  {
    if (qword_1009216C0 != -1)
    {
      swift_once();
    }

    v30 = &qword_10093B248;
  }

  [v27 setFont:*v30];
  v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_detailLabel];
  v32 = [v1 traitCollection];
  v33 = sub_1007537E4();

  if (v33)
  {
    if (qword_1009216A8 != -1)
    {
      swift_once();
    }

    v34 = &qword_10093B230;
  }

  else
  {
    if (qword_1009216C8 != -1)
    {
      swift_once();
    }

    v34 = &qword_10093B250;
  }

  [v31 setFont:*v34];
  v35 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_requirementsLabel];
  if (v35)
  {
    v36 = v35;
    v37 = [v1 traitCollection];
    v38 = sub_1007537E4();

    if (v38)
    {
      if (qword_1009216B0 != -1)
      {
        swift_once();
      }

      v39 = &qword_10093B238;
    }

    else
    {
      if (qword_1009216D0 != -1)
      {
        swift_once();
      }

      v39 = &qword_10093B258;
    }

    [v36 setFont:*v39];
  }

  v40 = [v1 traitCollection];
  v41 = sub_1007537E4();

  v42 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_gradientBlurView;
  v43 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_gradientBlurView];
  if (v41)
  {
    if (v43)
    {
      [v43 setHidden:1];
    }

    sub_1004EF138();
    sub_1004F1474();
  }

  else
  {
    if (v43 || (v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView()), v48 = sub_10016AB14(0), sub_1004F3A1C(v48), v48, (v49 = *&v1[v42]) != 0) && ([v49 setUserInteractionEnabled:0], (v43 = *&v1[v42]) != 0))
    {
      [v43 setHidden:0];
    }

    v44 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaReplicationView];
    if (v44)
    {
      [v44 setHidden:1];
    }

    v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentBackgroundBlurView];
    if (v45)
    {
      [v45 setHidden:1];
    }
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1004EDAA4()
{
  v1 = v0;
  v2 = sub_100747064();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_100753804();
  v46 = v2;
  if ((v8 & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = sub_1007537D4();

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView];
    v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_detailLabel];
    [v16 addSubview:{v17, v46}];
    v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButton];
    [v16 addSubview:v18];
    [v16 addSubview:*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_separatorView]];
    v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView];
    [v16 addSubview:v13];
    v19 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_requirementsLabel;
    if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_requirementsLabel])
    {
      [v16 addSubview:?];
    }

    v20 = *(v18 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style);
    *(v18 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style) = 1;
    if (v20 == 1)
    {
      v21 = v6;
    }

    else
    {
      v21 = v6;
      v22 = sub_100754754();

      if ((v22 & 1) == 0)
      {
        sub_1006E0AB0();
      }
    }

    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v23 = sub_100753DD4();
    v24 = [v23 colorWithAlphaComponent:0.7];

    [v17 setTextColor:v24];
    v25 = *&v1[v19];
    if (!v25)
    {
      v29 = v21;
      v28 = &selRef_initWithTitle_style_target_action_;
      v30 = &selRef_viewSafeAreaInsetsDidChange;
      goto LABEL_23;
    }

    v26 = v25;
    v27 = sub_100753DD4();
    [v26 setTextColor:v27];
    v28 = &selRef_initWithTitle_style_target_action_;
    goto LABEL_22;
  }

  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentContainerView];
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_detailLabel];
  [v10 addSubview:v11];
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButton];
  [v10 addSubview:v12];
  [v10 addSubview:*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_separatorView]];
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView];
  [v10 addSubview:v13];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_requirementsLabel;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_requirementsLabel])
  {
    [v10 addSubview:?];
  }

  v15 = *(v12 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style);
  *(v12 + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style) = 2;
  if (v15 > 1)
  {
    v21 = v6;
  }

  else
  {
    v21 = v6;
    v31 = sub_100754754();

    if ((v31 & 1) == 0)
    {
      sub_1006E0AB0();
    }
  }

  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v32 = sub_100753DD4();
  [v11 setTextColor:v32];

  v33 = *&v1[v14];
  v28 = &selRef_initWithTitle_style_target_action_;
  if (v33)
  {
    v26 = v33;
    v27 = sub_100753DF4();
    [v26 setTextColor:v27];
LABEL_22:
    v30 = &selRef_viewSafeAreaInsetsDidChange;

    v29 = v21;
    goto LABEL_23;
  }

  v29 = v21;
  v30 = &selRef_viewSafeAreaInsetsDidChange;
LABEL_23:
  v34 = [v1 v28[129]];
  v35 = sub_1007537D4();
  v36 = v46;
  if (v35)
  {
    v37 = [v34 preferredContentSizeCategory];
    v38 = sub_100753954();

    if (v38)
    {
      v39 = &OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentContainerView;
      goto LABEL_28;
    }
  }

  else
  {
  }

  v39 = &OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView;
LABEL_28:
  [*&v1[*v39] v30[455]];
  v40 = [v1 v28[129]];
  v41 = sub_100753804();

  if (v41)
  {
    if (qword_100921640 != -1)
    {
      swift_once();
    }

    v42 = qword_100981FF8;
  }

  else
  {
    if (qword_100921638 != -1)
    {
      swift_once();
    }

    v42 = qword_100981FE0;
  }

  v43 = sub_10000D0FC(v36, v42);
  (*(v3 + 16))(v29, v43, v36);
  v44 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v13[v44], v29, v36);
  swift_endAccess();
  [v13 setNeedsLayout];
  return (*(v3 + 8))(v29, v36);
}

void sub_1004EE10C()
{
  v1 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView] traitCollection];
  [v1 userInterfaceStyle];

  sub_100753094();
  v15 = sub_100753064();

  v2 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_separatorView] layer];
  [v2 setCompositingFilter:v15];

  v3 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_kindLabel] layer];
  [v3 setCompositingFilter:v15];

  v4 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_detailLabel] layer];
  [v4 setCompositingFilter:v15];

  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView];
  v6 = [*(v5 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v15];

  v7 = [*(*(v5 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v15];

  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButton];
  if (v8)
  {
    v9 = [v8 imageView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 layer];

      [v11 setCompositingFilter:v15];
    }
  }

  if (v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_includeBorderInDarkMode] == 1)
  {
    v12 = [v0 traitCollection];
    v13 = [v12 userInterfaceStyle];

    v14 = v13 != 2;
  }

  else
  {
    v14 = 1;
  }

  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_borderView] setHidden:v14];
  sub_1006E0AB0();
}

void sub_1004EE408(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureRecognizer])
  {
    [v1 removeGestureRecognizer:?];
    v4 = *&v1[v3];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v3] = a1;
  v5 = a1;

  if (a1)
  {
    v6 = v5;
    [v6 addTarget:v1 action:"dismissTapGestureRecognized:"];
    [v6 setDelegate:v1];

    [v1 addGestureRecognizer:v6];
  }
}

void sub_1004EE4F4()
{
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureActionBlock])
  {
    v1 = [objc_allocWithZone(UITapGestureRecognizer) init];

    sub_1004EE408(v1);
  }

  else
  {
    v2 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureRecognizer;
    if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureRecognizer])
    {
      [v0 removeGestureRecognizer:?];
      v3 = *&v0[v2];
    }

    else
    {
      v3 = 0;
    }

    *&v0[v2] = 0;
  }
}

void sub_1004EE594(void *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v8 = *a2;
  if (*(v4 + *a2))
  {
    [*(v4 + *a3) removeGestureRecognizer:?];
    v9 = *(v4 + v8);
  }

  else
  {
    v9 = 0;
  }

  *(v4 + v8) = a1;
  v10 = a1;

  if (a1)
  {
    v11 = *a4;
    v12 = v10;
    [v12 addTarget:v4 action:v11];
    [v12 setDelegate:v4];

    [*(v4 + *a3) addGestureRecognizer:v12];
  }
}

void sub_1004EE694()
{
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureActionBlock))
  {
    sub_1004EE594([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureRecognizer, &OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView, &selRef_lockupTapGestureRecognized_);
  }

  else
  {
    v1 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureRecognizer;
    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureRecognizer))
    {
      [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView) removeGestureRecognizer:?];
      v2 = *(v0 + v1);
    }

    else
    {
      v2 = 0;
    }

    *(v0 + v1) = 0;
  }
}

void sub_1004EE748(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3 & 1;
  v8 = sub_10074F284();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkViewSize];
  v17 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkViewSize];
  v18 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkViewSize + 8];
  v19 = v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkViewSize + 16];
  *v16 = *&a1;
  v16[1] = *&a2;
  *(v16 + 16) = v7;
  if ((a3 & 1) == 0)
  {
    if ((v19 & 1) != 0 || (v17 == *&a1 ? (v20 = v18 == *&a2) : (v20 = 0), !v20))
    {
      if ((*&a1 != 0.0 || *&a2 != 0.0) && (v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_isCollapsing] & 1) == 0 && *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mainArtwork] && *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkLoader] != 0)
      {
        v22 = v13;
        v23 = v3;
        v24 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaContainerView];
        swift_retain_n();
        swift_retain_n();
        v25 = sub_10074F1E4();
        if (!v25)
        {
          sub_100016C60(0, &qword_100923500, UIColor_ptr);
          v25 = sub_100753E34();
        }

        v26 = v25;
        [v24 setBackgroundColor:v25];

        v27 = [v23 traitCollection];
        v28 = sub_1007537E4();

        if (v28)
        {
          if (qword_100921650 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_100982028;
        }

        else
        {
          if (qword_100921648 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_100982010;
        }

        v31 = sub_10000D0FC(v29, v30);
        sub_1002CEED0(v31, v15);
        [v23 bounds];
        sub_1007504C4();
        [v23 bounds];
        sub_10074F294();
        v32 = sub_10074F254();
        (*(v9 + 8))(v11, v8);
        sub_10074F374();
        [*&v23[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkView] setContentMode:v32];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v34 = Strong;
          type metadata accessor for VideoView(0);
          sub_1004F33A8(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
          sub_100744204();
        }

        else
        {
          sub_100016C60(0, &qword_10092BFC0, UIImageView_ptr);
          sub_1000F04A0();
          sub_100744204();
        }

        sub_1004F3B68(v15, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }
    }
  }
}

id sub_1004EEBA0()
{
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_formattedDateView) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButton) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_kindLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_titleLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_detailLabel) setAlpha:0.0];
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_requirementsLabel);
  if (v1)
  {
    [v1 setAlpha:0.0];
  }

  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButton);
  if (v2)
  {
    [v2 setAlpha:0.0];
  }

  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButton) setAlpha:0.0];
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_separatorView);

  return [v3 setAlpha:0.0];
}

void sub_1004EECAC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100746BA4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, v1 + v7, v3);
  sub_1004F33A8(&qword_10093B418, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
  v9 = sub_100753014();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v9 & 1) == 0)
  {
    v11 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView);
    v8(v6, v2 + v7, v3);
    v12 = sub_100746B84();
    v10(v6, v3);
    [v11 setOverrideUserInterfaceStyle:v12];
    v13 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaContainerView);
    v8(v6, v2 + v7, v3);
    v14 = sub_100746B84();
    v10(v6, v3);
    [v13 setOverrideUserInterfaceStyle:v14];
    v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_formattedDateView);
    v8(v6, v2 + v7, v3);
    v16 = sub_100746B94();
    v10(v6, v3);
    [v15 setOverrideUserInterfaceStyle:v16];
    v17 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentBackgroundBlurView);
    if (v17)
    {
      v8(v6, v2 + v7, v3);
      v18 = v17;
      v19 = sub_100746B84();
      v10(v6, v3);
      [v18 setOverrideUserInterfaceStyle:v19];
    }

    sub_1004EE10C();
  }
}

void sub_1004EEF90()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkView];
    v6 = Strong;
    [v3 setHidden:1];
    v6[qword_100982290] = 1;
    *&v6[qword_10093CB38 + 8] = &off_100878FF0;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    sub_1007537E4();

    [v6 _setCornerRadius:26.0];
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaContainerView] insertSubview:v6 aboveSubview:v3];
    sub_1004EE594([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoTapGestureRecognizer, &OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaContainerView, &selRef_videoTapGestureRecognized_);
    v5 = [v1 traitCollection];
    LOBYTE(v3) = sub_1007537E4();

    if (v3)
    {
      sub_1004EF138();
    }

    [v1 setNeedsLayout];
  }
}

id sub_1004EF138()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaReplicationView;
    if (!*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaReplicationView] || (type metadata accessor for VideoMirrorView(), !swift_dynamicCastClass()))
    {
      v10 = *&CATransform3DIdentity.m33;
      v52 = *&CATransform3DIdentity.m31;
      v53 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v54 = *&CATransform3DIdentity.m41;
      v55 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v48 = *&CATransform3DIdentity.m11;
      v49 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v50 = *&CATransform3DIdentity.m21;
      v51 = v13;
      objc_allocWithZone(type metadata accessor for VideoMirrorView());
      v14 = v3;
      v15 = sub_1004A8A4C(v3, &v48, 1.0, 0.0);
      v16 = *&v1[v4];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v1[v4];
      }

      else
      {
        v17 = 0;
      }

      *&v1[v4] = v15;
      v44 = v15;

      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_22;
    }
  }

  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkView];
  v6 = [v5 isHidden];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaReplicationView];
  if (v6)
  {
    if (!v8)
    {
      v9 = 0;
LABEL_17:
      *&v1[v7] = 0;

      [v1 setNeedsLayout];
      goto LABEL_23;
    }

LABEL_16:
    [v8 removeFromSuperview];
    v9 = *&v1[v7];
    goto LABEL_17;
  }

  if (v8)
  {
    type metadata accessor for VideoMirrorView();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_16;
    }
  }

  v18 = type metadata accessor for MirrorView();
  v19 = objc_allocWithZone(v18);
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer;
  v21 = objc_allocWithZone(CALayer);
  v22 = v5;
  *&v19[v20] = [v21 init];
  v23 = v22;
  *&v19[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageKVOContext] = 0;
  v19[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageObserversAdded] = 0;
  swift_unknownObjectWeakAssign();
  *&v19[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
  *&v19[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_contentsVerticalOffset] = 0;
  v47.receiver = v19;
  v47.super_class = v18;
  v24 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v24 setClipsToBounds:1];
  [v24 setUserInteractionEnabled:0];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer;
  [*&v24[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
  LODWORD(v26) = 1.0;
  [*&v24[v25] setOpacity:v26];
  [*&v24[v25] setAnchorPoint:{0.5, 0.5}];
  v27 = qword_100920648;
  v28 = *&v24[v25];
  if (v27 != -1)
  {
    swift_once();
  }

  sub_10000C518(&qword_100939AA0, qword_1007C4530);
  isa = sub_100752F34().super.isa;
  [v28 setActions:isa];

  v30 = *&v24[v25];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 mainScreen];
  [v33 scale];
  v35 = v34;

  [v32 setContentsScale:v35];
  [*&v24[v25] setMasksToBounds:1];
  v36 = *&v24[v25];
  v37 = *&CATransform3DIdentity.m33;
  v52 = *&CATransform3DIdentity.m31;
  v53 = v37;
  v38 = *&CATransform3DIdentity.m43;
  v54 = *&CATransform3DIdentity.m41;
  v55 = v38;
  v39 = *&CATransform3DIdentity.m13;
  v48 = *&CATransform3DIdentity.m11;
  v49 = v39;
  v40 = *&CATransform3DIdentity.m23;
  v50 = *&CATransform3DIdentity.m21;
  v51 = v40;
  [v36 setTransform:&v48];
  sub_10022A458();
  v41 = [v24 layer];

  [v41 addSublayer:*&v24[v25]];
  v42 = *&v1[v7];
  if (v42)
  {
    [v42 removeFromSuperview];
    v43 = *&v1[v7];
  }

  else
  {
    v43 = 0;
  }

  *&v1[v7] = v24;
  v44 = v24;

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
  [v1 setNeedsLayout];
LABEL_22:

LABEL_23:
  v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaReplicationView];
  if (v45)
  {
    [v45 setHidden:0];
  }

  return [v1 setNeedsLayout];
}

void (*sub_1004EF67C(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004EF6D0;
}

void sub_1004EF6D0(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_1004F3744();
    swift_unknownObjectWeakAssign();
    sub_1004EEF90();
  }

  else
  {
    v2 = *a1;
    sub_1004F3744();
    swift_unknownObjectWeakAssign();
    sub_1004EEF90();
  }
}

uint64_t sub_1004EF754()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v234 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750354();
  v236 = *(v6 - 1);
  v237 = v6;
  __chkstk_darwin(v6);
  v235 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppEventDetailPageLayout(0);
  __chkstk_darwin(v8);
  v10 = (&v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v11);
  v239 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v192 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v192 - v18;
  v273.receiver = v1;
  v273.super_class = ObjectType;
  objc_msgSendSuper2(&v273, "layoutSubviews", v17);
  [v1 bounds];
  result = CGRectIsEmpty(v274);
  if ((result & 1) == 0)
  {
    v195 = v5;
    v196 = v3;
    sub_1007477B4();
    v238 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoView;
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = [v1 traitCollection];
    v22 = sub_1007537E4();

    if (v22)
    {
      if (qword_100921650 != -1)
      {
        swift_once();
      }

      v23 = qword_100982028;
    }

    else
    {
      if (qword_100921648 != -1)
      {
        swift_once();
      }

      v23 = qword_100982010;
    }

    v24 = sub_10000D0FC(v11, v23);
    sub_1002CEED0(v24, v15);
    *&v15[*(v11 + 40)] = vdupq_n_s64(0x4046000000000000uLL);
    if (qword_1009216E8 != -1)
    {
      swift_once();
    }

    v231 = ObjectType;
    v25 = sub_1007541F4();
    sub_10000D0FC(v25, qword_10093B270);
    swift_beginAccess();
    v26 = sub_100754184();
    v233 = v19;
    if (v26)
    {
      v27 = v26;
      v28 = v11;
      swift_endAccess();
      swift_beginAccess();
      v29 = sub_100754014();
      if (v29)
      {
        v30 = v29;
        swift_endAccess();
        v31 = [v27 imageWithConfiguration:v30];
        [v31 size];
        v32 = &v15[v28[17]];
        *v32 = v33;
        *(v32 + 1) = v34;
        [v31 contentInsets];
        v271 = &type metadata for CGFloat;
        v272 = &protocol witness table for CGFloat;
        *&v270 = v35;
        v36 = v28[20];
        sub_10000C620(&v15[v36]);
        sub_100012160(&v270, &v15[v36]);
        v37 = [v1 traitCollection];
        LODWORD(v230) = sub_1007537F4();

        [v31 contentInsets];
        v39 = v38;
        v41 = v40;
        v271 = &type metadata for CGFloat;
        v272 = &protocol witness table for CGFloat;

        if (v230)
        {
          *&v270 = v41;
        }

        else
        {
          *&v270 = v39;
        }

        v42 = v28[19];
        sub_10000C620(&v15[v42]);
        sub_100012160(&v270, &v15[v42]);
        v19 = v233;
      }

      else
      {
        swift_endAccess();
      }

      v11 = v28;
    }

    else
    {
      swift_endAccess();
    }

    v43 = [v1 traitCollection];
    v44 = sub_1007537D4();

    if (v44)
    {
      if (Strong)
      {
        v271 = &type metadata for Double;
        v272 = &protocol witness table for Double;

        *&v270 = 0x404E000000000000;
        v45 = *(v11 + 44);
        sub_10000C620(&v15[v45]);
        sub_100012160(&v270, &v15[v45]);
      }
    }

    else
    {
    }

    v194 = v11;
    sub_1002CF880(v15, v19);
    sub_1002CEED0(v19, v239);
    v46 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shadowView];
    v271 = sub_100743034();
    v272 = &protocol witness table for UIView;
    v229 = v46;
    *&v270 = v46;
    v47 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardContentView];
    v268 = sub_100746ED4();
    v269 = &protocol witness table for UIView;
    *&v267 = v47;
    v48 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_borderView];
    v266 = &protocol witness table for UIView;
    v265 = v268;
    v227 = v48;
    v228 = v47;
    *&v264 = v48;
    v49 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentContainerView];
    v50 = sub_100016C60(0, &qword_100922300, UIView_ptr);
    v263 = &protocol witness table for UIView;
    v262 = v50;
    *&v261 = v49;
    v51 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaContainerView];
    v260 = &protocol witness table for UIView;
    v259 = v50;
    v225 = v51;
    v226 = v49;
    *&v258 = v51;
    v52 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkView];
    v53 = sub_100016C60(0, &qword_10092BFC0, UIImageView_ptr);
    v257 = &protocol witness table for UIView;
    v256 = v53;
    v224 = v52;
    *&v255 = v52;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v211 = type metadata accessor for VideoView(0);
      v219 = &protocol witness table for UIView;
    }

    else
    {
      Strong = 0;
      v211 = 0;
      v219 = 0;
    }

    v230 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_gradientBlurView;
    v223 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_gradientBlurView];
    if (v223)
    {
      v54 = type metadata accessor for MediaOverlayGradientBlurView();
      v217 = &protocol witness table for UIView;
    }

    else
    {
      v54 = 0;
      v217 = 0;
    }

    v222 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaReplicationView];
    if (v222)
    {
      v214 = type metadata accessor for MirrorView();
      v213 = &protocol witness table for UIView;
    }

    else
    {
      v213 = 0;
      v214 = 0;
    }

    v55 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView];
    v56 = type metadata accessor for OverlayContentContainerView();
    v254 = &protocol witness table for UIView;
    v253 = v56;
    *&v252 = v55;
    v57 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentBackgroundBlurView];
    v220 = v55;
    v221 = v57;
    if (v57)
    {
      v207 = sub_100016C60(0, &qword_100927120, UIVisualEffectView_ptr);
      v206 = &protocol witness table for UIView;
    }

    else
    {
      v206 = 0;
      v207 = 0;
    }

    v218 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_formattedDateView];
    v58 = v218;
    v59 = type metadata accessor for AppPromotionFormattedDateView();
    v251 = &protocol witness table for UIView;
    v250 = v59;
    *&v249 = v58;
    v205 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButton];
    v60 = sub_100016C60(0, &qword_10093B420, UIButton_ptr);
    v199 = v60;
    v216 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_kindLabel];
    v61 = v216;
    v62 = sub_100745C84();
    v63 = &protocol witness table for UILabel;
    v247 = v62;
    v248 = &protocol witness table for UILabel;
    v245 = &protocol witness table for UILabel;
    *&v246 = v61;
    v215 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_titleLabel];
    v193 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButton;
    v64 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButton];
    v200 = v64;
    v244 = v62;
    v242 = &protocol witness table for UILabel;
    *&v243 = v215;
    if (v64)
    {
      v65 = v60;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = &protocol witness table for UIView;
    }

    else
    {
      v66 = 0;
    }

    v201 = v66;
    v202 = v65;
    v212 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_detailLabel];
    v241 = v62;
    *&v240 = v212;
    v67 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_requirementsLabel];
    if (v67)
    {
      v68 = v62;
    }

    else
    {
      v68 = 0;
    }

    if (!v67)
    {
      v63 = 0;
    }

    v203 = v63;
    v204 = v68;
    v69 = v10 + v8[23];
    v210 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButton];
    v70 = v210;
    *(v69 + 3) = type metadata accessor for NotifyMeButton();
    *(v69 + 4) = &protocol witness table for UIView;
    v71 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_separatorView];
    *v69 = v70;
    v72 = v10 + v8[24];
    *(v72 + 3) = v50;
    *(v72 + 4) = &protocol witness table for UIView;
    *v72 = v71;
    v208 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView];
    v73 = v208;
    v209 = v71;
    v74 = v10 + v8[25];
    *(v74 + 3) = type metadata accessor for SmallLockupView(0);
    *(v74 + 4) = &protocol witness table for UIView;
    *v74 = v73;
    v197 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_isCollapsing;
    v198 = v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_isCollapsing];
    sub_1002CF880(v239, v10);
    sub_100012160(&v270, v10 + v8[5]);
    sub_100012160(&v267, v10 + v8[6]);
    sub_100012160(&v264, v10 + v8[7]);
    sub_100012160(&v261, v10 + v8[8]);
    sub_100012160(&v258, v10 + v8[9]);
    sub_100012160(&v255, v10 + v8[10]);
    v75 = v10 + v8[11];
    *v75 = Strong;
    *(v75 + 1) = 0;
    v76 = v211;
    *(v75 + 2) = 0;
    *(v75 + 3) = v76;
    *(v75 + 4) = v219;
    v77 = v10 + v8[12];
    v78 = v222;
    v79 = v223;
    *v77 = v223;
    *(v77 + 1) = 0;
    *(v77 + 2) = 0;
    *(v77 + 3) = v54;
    *(v77 + 4) = v217;
    v80 = v10 + v8[13];
    *v80 = v78;
    *(v80 + 1) = 0;
    v81 = v213;
    v82 = v214;
    *(v80 + 2) = 0;
    *(v80 + 3) = v82;
    *(v80 + 4) = v81;
    sub_100012160(&v252, v10 + v8[14]);
    v83 = v10 + v8[15];
    v84 = v221;
    *v83 = v221;
    *(v83 + 1) = 0;
    v85 = v206;
    v86 = v207;
    *(v83 + 2) = 0;
    *(v83 + 3) = v86;
    *(v83 + 4) = v85;
    sub_100012160(&v249, v10 + v8[16]);
    v87 = v10 + v8[17];
    v88 = v205;
    *v87 = v205;
    *(v87 + 3) = v199;
    *(v87 + 4) = &protocol witness table for UIView;
    sub_100012160(&v246, v10 + v8[18]);
    sub_100012160(&v243, v10 + v8[19]);
    v89 = v10 + v8[20];
    v90 = v200;
    *v89 = v200;
    *(v89 + 1) = 0;
    v91 = v201;
    v92 = v202;
    *(v89 + 2) = 0;
    *(v89 + 3) = v92;
    *(v89 + 4) = v91;
    sub_100012160(&v240, v10 + v8[21]);
    v93 = v10 + v8[22];
    *v93 = v67;
    *(v93 + 1) = 0;
    v94 = v203;
    v95 = v204;
    *(v93 + 2) = 0;
    *(v93 + 3) = v95;
    *(v93 + 4) = v94;
    *(v10 + v8[26]) = v198;
    v96 = v67;
    v97 = v229;
    v98 = v228;
    v99 = v227;
    v100 = v226;
    v227 = v225;
    v239 = v224;
    Strong = v220;
    v226 = v218;
    v228 = v88;
    v101 = v216;
    v102 = v215;
    v103 = v212;
    v104 = v210;
    v105 = v209;
    v229 = v208;
    v106 = v79;
    v107 = v78;
    v108 = v84;
    v109 = v90;
    sub_1007477B4();
    v110 = v235;
    AppEventDetailPageLayout.placeChildren(relativeTo:in:)(v1, v111, v112, v113, v114);
    v236[1](v110, v237);
    v115 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardScrollView];
    [v100 bounds];
    [v115 setContentSize:{v116, v117}];
    [v1 bounds];
    [v115 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v118 = CGRectGetWidth(v275) * 0.5;
    [v1 bounds];
    Height = CGRectGetHeight(v276);
    v237 = v115;
    [v115 setCenter:{v118, Height * 0.5}];
    v120 = *&v1[v230];
    if (v120 && (v1[v197] & 1) == 0)
    {
      v121 = v101;
      v122 = v120;
      [v122 frame];
      v123 = CGRectGetHeight(v277);
      v124 = [v1 traitCollection];
      v125 = sub_100753804();

      if (v125)
      {
        if (*&v1[v193])
        {
          v121 = *&v1[v193];
        }

        else
        {
          v121 = v226;
        }
      }

      v126 = v121;
      v236 = v126;
      [v227 frame];
      v127 = CGRectGetHeight(v278);
      [v126 frame];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;

      v279.origin.x = v129;
      v279.origin.y = v131;
      v279.size.width = v133;
      v279.size.height = v135;
      v136 = v123 - (v127 - CGRectGetMinY(v279));
      v137 = (v136 + -100.0) / v123;
      v138 = (v136 + 30.0) / v123;
      v139 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v122[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = v137;
      v140 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView;
      v141 = [*&v122[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v143 = v142;

      v144 = *&v122[v139];
      v145 = [*&v122[v140] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v146 = [*&v122[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v147 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v122[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = v137;
      v148 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
      v149 = [*&v122[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v151 = v150;

      v152 = *&v122[v147];
      v153 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v151, v152}];

      sub_100169DC8(v138);
      v154 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v122[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = v138;
      v155 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v157 = v156;

      v158 = *&v122[v154];
      v159 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v157, v158}];
    }

    v160 = [v1 traitCollection];
    v161 = sub_1007537E4();

    if (v161)
    {
      v236 = v10;
      [v229 frame];
      MaxY = CGRectGetMaxY(v280);
      v163 = v233;
      v164 = &v233[*(v194 + 128)];
      v165 = *(v164 + 3);
      sub_10000C888(v164, v165);
      v166 = v195;
      sub_100536120(v165);
      sub_100750564();
      v168 = v167;
      (*(v234 + 8))(v166, v196);
      v169 = Strong;
      [Strong bounds];
      [v169 setContentSize:{CGRectGetWidth(v281), MaxY + v168 * 0.8}];
      v170 = [v1 traitCollection];
      v171 = sub_1007537D4();

      if (v171)
      {
        v172 = 1;
      }

      else
      {
        [v169 contentSize];
        v178 = v177;
        [v169 bounds];
        v172 = v178 <= CGRectGetHeight(v282);
      }

      v176 = v239;
      [v237 setAlwaysBounceVertical:v172];
      v10 = v236;
    }

    else
    {
      v173 = Strong;
      [Strong bounds];
      [v173 setContentSize:{v174, v175}];
      v163 = v233;
      v176 = v239;
    }

    [v176 bounds];
    sub_1004EE748(v179, v180, 0);
    v181 = swift_unknownObjectWeakLoadStrong();
    if (v181)
    {
      v182 = v181;
      v183 = [v1 traitCollection];
      v184 = sub_1007537D4();

      if ((v184 & 1) == 0)
      {
        sub_1004F3B68(v10, type metadata accessor for AppEventDetailPageLayout);

        return sub_1004F3B68(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }

      [v228 frame];
      v186 = v185;
      [v182 frame];
      v188.f64[0] = v187 + -53.0;
      v189 = &v182[qword_100982238];
      v190 = *&v182[qword_100982238];
      v191 = *&v182[qword_100982238 + 16];
      *v189 = xmmword_1007C6E90;
      *(v189 + 2) = *&v188.f64[0];
      *(v189 + 3) = v186 + 25.0;
      v188.f64[1] = v186 + 25.0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_1007C6E90, v190), vceqq_f64(v188, v191)))) & 1) == 0)
      {
        sub_10051B68C();
      }
    }

    sub_1004F3B68(v10, type metadata accessor for AppEventDetailPageLayout);
    return sub_1004F3B68(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
  }

  return result;
}

double sub_1004F0A38(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButtonPresenter);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v8 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v8)
    {
      [v8 invalidate];
      v8 = *(v6 + v7);
    }

    *(v6 + v7) = 0;
  }

  sub_1000C8E14();
  v10 = v4 + *a2;
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 8);

    v11(a1);

    return sub_1000164A8(v11, v12);
  }

  return result;
}

uint64_t sub_1004F0B38(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_100754314();
  swift_unknownObjectRelease();
  sub_1004F0A38(v8, a4);

  return sub_10000C620(v8);
}

uint64_t sub_1004F0BB0(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_100752294();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 bounds];
  LOBYTE(v45[0]) = 1;
  *&v27 = a1;
  *(&v27 + 1) = v10;
  *&v28 = v11;
  *(&v28 + 1) = v12;
  *&v29 = v13;
  BYTE8(v29) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v30 = _Q0;
  v31 = _Q0;
  v32 = 15;
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v19 = a1;
  *v9 = sub_100753774();
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  LOBYTE(a1) = sub_1007522C4();
  result = (*(v6 + 8))(v9, v5);
  if (a1)
  {
    v35 = xmmword_100931330;
    v36 = xmmword_100931340;
    v37 = xmmword_100931350;
    v33 = xmmword_100931310;
    v34 = xmmword_100931320;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v45[0] = xmmword_100931310;
    v45[1] = xmmword_100931320;
    v45[3] = xmmword_100931340;
    v45[4] = xmmword_100931350;
    v38 = qword_100931360;
    v44 = v32;
    v46 = qword_100931360;
    v45[2] = xmmword_100931330;
    sub_100173514(&v33, v25);
    xmmword_100931330 = v41;
    xmmword_100931340 = v42;
    xmmword_100931350 = v43;
    qword_100931360 = v44;
    xmmword_100931310 = v39;
    xmmword_100931320 = v40;
    sub_1004F3B00(v45);
    v21 = v3 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButtonActionBlock;
    v22 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButtonActionBlock);
    if (v22)
    {
      v23 = *(v21 + 8);
      sub_1001664D8(&v27, v25);
      v24 = sub_10001B5AC(v22, v23);
      v22(v24);
      sub_1000164A8(v22, v23);
    }

    else
    {
      sub_1001664D8(&v27, v25);
    }

    v25[2] = xmmword_100931330;
    v25[3] = xmmword_100931340;
    v25[4] = xmmword_100931350;
    v26 = qword_100931360;
    v25[0] = xmmword_100931310;
    v25[1] = xmmword_100931320;
    xmmword_100931310 = v33;
    xmmword_100931320 = v34;
    xmmword_100931330 = v35;
    xmmword_100931340 = v36;
    xmmword_100931350 = v37;
    qword_100931360 = v38;
    sub_1004F3B00(v25);
    return sub_100166534(&v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004F0EE0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[qword_10093CB78];
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6[4] = sub_1000F0A90;
      v6[5] = v3;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 1107296256;
      v6[2] = sub_1005171C8;
      v6[3] = &unk_100879170;
      v4 = _Block_copy(v6);
      v5 = v2;

      [v5 enterFullScreenAnimated:1 completionHandler:v4];

      _Block_release(v4);
    }

    else
    {
    }
  }

  sub_1004F1018(0, 0);
}

void sub_1004F1018(char a1, char a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = sub_1007537E4();

  if ((v7 & 1) == 0)
  {
    if (a1)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoBackgroundColor];
      [v10 setBackgroundColor:v11];

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v8;
      v14 = sub_1004F3970;
      if (a2)
      {
LABEL_7:
        v15 = v14;
        v16 = objc_opt_self();
        v23[4] = v15;
        v23[5] = v13;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 1107296256;
        v23[2] = sub_1000CF7B0;
        v23[3] = &unk_100879058;
        v17 = _Block_copy(v23);

        [v16 animateWithDuration:4 delay:v17 options:0 animations:0.3 completion:0.0];

        _Block_release(v17);
        return;
      }
    }

    else
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v18;
      *(v13 + 24) = v8;
      v14 = sub_1004F4BBC;
      if (a2)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView);
      v21 = v19;

      [v20 setAlpha:v8];
      v22 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButton];
      [v22 setAlpha:v8];
    }
  }
}

void sub_1004F1474()
{
  v1 = sub_100746BA4();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentBackgroundBlurView;
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentBackgroundBlurView];
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = [objc_opt_self() effectWithStyle:7];
  v9 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v8];
  v10 = *&v0[v6];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v0[v6];
  }

  else
  {
    v11 = 0;
  }

  *&v0[v6] = v9;
  v12 = v9;

  if (v12)
  {
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentContainerView] insertSubview:v12 belowSubview:*&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView]];
  }

  [v0 setNeedsLayout];

  v7 = *&v0[v6];
  if (v7)
  {
LABEL_8:
    [v7 setHidden:{0, v3}];
    v13 = *&v0[v6];
    if (v13)
    {
      v14 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaOverlayStyle;
      swift_beginAccess();
      (*(v2 + 16))(v5, &v0[v14], v1);
      v15 = v13;
      v16 = sub_100746B84();
      (*(v2 + 8))(v5, v1);
      [v15 setOverrideUserInterfaceStyle:v16];
    }
  }
}

void sub_1004F169C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_10093CB78);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setShowsPlaybackControls:1];
    }
  }
}

void sub_1004F1730(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView) setAlpha:a2];
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButton] setAlpha:a2];
  }
}

uint64_t (*sub_1004F17C4(void *a1))()
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButtonPresenter;
  a1[2] = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButtonPresenter;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_1004F181C;
}

double sub_1004F181C(void *a1, char a2)
{
  if (a2)
  {

    sub_1004EA870(v2);
  }

  else
  {
    v4 = a1[1];
    v3 = a1[2];
    v5 = *(v4 + v3);
    *(v4 + v3) = *a1;
    if (!v5)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v7 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;
  }

  return result;
}

void sub_1004F18C4(char a1, char a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButton];
      if ([v4 isHidden])
      {
        [v4 setAlpha:0.0];
        [v4 setHidden:0];
      }
    }

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = a1 & 1;
    *(v7 + 24) = a1 & 1;
    v19 = sub_1004F3A04;
    v20 = v7;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_1000CF7B0;
    v18 = &unk_1008790D0;
    v9 = _Block_copy(&v15);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    v19 = sub_1004F3A10;
    v20 = v11;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100144DD8;
    v18 = &unk_100879120;
    v12 = _Block_copy(&v15);

    [v5 animateWithDuration:v9 animations:v12 completion:0.3];
    _Block_release(v12);
    _Block_release(v9);
  }

  else
  {
    v13 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButton];
    if (a1)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButton] setHidden:a1 & 1];
    [v13 setAlpha:v14];

    [v2 setNeedsLayout];
  }
}

void sub_1004F1B68(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButton);

    v6 = 1.0;
    if (a2)
    {
      v6 = 0.0;
    }

    [v5 setAlpha:v6];
  }
}

void sub_1004F1BFC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButton);

    [v6 setHidden:a3 & 1];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }
}

BOOL sub_1004F1CB8(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureRecognizer);
  if (v4)
  {
    sub_100016C60(0, &unk_10092C570, UIGestureRecognizer_ptr);
    v6 = a1;
    v7 = v4;
    v8 = sub_100753FC4();

    if (v8)
    {
      v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoTapGestureRecognizer);
      if (v9)
      {
        v10 = a2;
        v11 = v9;
        v12 = sub_100753FC4();

        if (v12)
        {
          return 0;
        }
      }
    }
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() == 0;
}

BOOL sub_1004F1E10(void *a1, id a2)
{
  v3 = v2;
  [a2 locationInView:v2];
  v7 = v6;
  v9 = v8;
  v10 = [v2 hitTest:0 withEvent:?];
  v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureRecognizer];
  if (v11)
  {
    sub_100016C60(0, &unk_10092C570, UIGestureRecognizer_ptr);
    v12 = a1;
    v13 = v11;
    v14 = sub_100753FC4();

    if (v14)
    {
      [v3 bounds];
      v62.x = v7;
      v62.y = v9;
      if (CGRectContainsPoint(v65, v62))
      {
        if (v10)
        {
          sub_100016C60(0, &qword_100922300, UIView_ptr);
          v15 = v10;
          v3 = v3;
          v16 = sub_100753FC4();

          if (v16)
          {
            v17 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureActionBlock;
            return *&v3[v17] != 0;
          }
        }

        return 0;
      }

      goto LABEL_27;
    }
  }

  v18 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoTapGestureRecognizer];
  if (!v18 || (sub_100016C60(0, &unk_10092C570, UIGestureRecognizer_ptr), v19 = a1, v20 = v18, v21 = sub_100753FC4(), v20, v19, (v21 & 1) == 0))
  {
    v41 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureRecognizer];
    if (!v41 || (sub_100016C60(0, &unk_10092C570, UIGestureRecognizer_ptr), v42 = a1, v43 = v41, v44 = sub_100753FC4(), v43, v42, (v44 & 1) == 0))
    {

      return 1;
    }

    v45 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView];
    [a2 locationInView:v45];
    v47 = v46;
    v49 = v48;
    [v45 bounds];
    v64.x = v47;
    v64.y = v49;
    if (CGRectContainsPoint(v67, v64))
    {
      if (!v10 || (objc_opt_self(), v50 = swift_dynamicCastObjCClass(), v10, !v50))
      {
        v17 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureActionBlock;
        return *&v3[v17] != 0;
      }

      return 0;
    }

    goto LABEL_27;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_27;
  }

  v23 = Strong;
  [Strong frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v66.origin.x = v25;
  v66.origin.y = v27;
  v66.size.width = v29;
  v66.size.height = v31;
  v63.x = v7;
  v63.y = v9;
  if (!CGRectContainsPoint(v66, v63))
  {
    goto LABEL_27;
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    goto LABEL_27;
  }

  v33 = v32;
  v34 = *&v32[qword_10093CB70];
  if (!v34)
  {

    goto LABEL_27;
  }

  v35 = v34;
  v36 = sub_100743C24();

  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

  v37 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButton];
  if (!v10)
  {
    if (!v37)
    {
      v60 = 0;
      return 0;
    }

    return 1;
  }

  if (v37)
  {
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v38 = v10;
    v39 = v37;
    v40 = sub_100753FC4();

    if (v40)
    {

      return 0;
    }

    v52 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButton];
  }

  else
  {
    v52 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButton];
    v53 = 0;
  }

  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v10 = v10;
  v54 = v52;
  v55 = sub_100753FC4();

  if (v55)
  {
LABEL_27:

    return 0;
  }

  v56 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView];
  v57 = v10;
  v58 = v56;
  v59 = sub_100753FC4();

  if (v59)
  {

    return 0;
  }

  objc_opt_self();
  v61 = swift_dynamicCastObjCClass() == 0;

  return v61;
}

id sub_1004F230C(void *a1)
{
  v2 = v1;
  v26.receiver = v1;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_1007537E4() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_1007537E4();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    sub_1004ED384();
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v7 = 2;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = sub_100753804() & 1;
LABEL_10:
  v8 = [v2 traitCollection];
  v9 = sub_100753804();

  if (v7 == 2 || ((v9 ^ v7) & 1) != 0)
  {
    goto LABEL_18;
  }

  v10 = [v2 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_18;
  }

  v12 = [a1 preferredContentSizeCategory];
  v13 = sub_100753094();
  v15 = v14;
  if (v13 != sub_100753094() || v15 != v16)
  {
    v17 = sub_100754754();

    if (v17)
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_1004EDAA4();
    goto LABEL_19;
  }

LABEL_19:
  v18 = [v2 traitCollection];
  v19 = [v18 userInterfaceStyle];

  if (!a1 || v19 != [a1 userInterfaceStyle])
  {
    sub_1004EE10C();
  }

  v20 = [v2 traitCollection];
  v21 = [v20 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v21 != result))
  {
    v23 = [v2 traitCollection];
    v24 = sub_1007537F4();

    if (v24)
    {
      v25 = -*&v2[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_defaultPageMargin];
    }

    else
    {
      v25 = 0.0;
    }

    return [*&v2[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v25}];
  }

  return result;
}

uint64_t type metadata accessor for AppEventDetailPageView(uint64_t a1)
{
  result = qword_10093B3C8;
  if (!qword_10093B3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004F2A10(uint64_t a1)
{
  result = sub_100746BA4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1004F2B44(void *a1)
{
  sub_1004F3744();
  swift_unknownObjectWeakAssign();
  sub_1004EEF90();
}

uint64_t (*sub_1004F2B94(uint64_t **a1))()
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
  v2[4] = sub_1004EF67C(v2);
  return sub_1000181A8;
}

uint64_t (*sub_1004F2C28(void *a1))()
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
  v2[4] = sub_1004F17C4(v2);
  return sub_10001BB78;
}

id sub_1004F2C98(char a1, uint64_t a2)
{
  v3 = a2;
  *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButton] + OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_isActive) = a1;
  sub_1006E1B80();
  sub_1006E1C84(v3);

  return [v2 setNeedsLayout];
}

CGFloat sub_1004F2D48()
{
  v1 = *v0;
  [*v0 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

uint64_t sub_1004F2DA4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1004F33A8(&qword_10093B430, type metadata accessor for AppEventDetailPageView, &unk_1007C701C);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1004F2E18(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004F33A8(&qword_10093B430, type metadata accessor for AppEventDetailPageView, &unk_1007C701C);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1004F2EA4(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1004F33A8(&qword_10093B430, type metadata accessor for AppEventDetailPageView, &unk_1007C701C);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1004F2F60(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaContainerView);
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v5 = v4;
  v6 = sub_100753FC4();

  return v6 & 1;
}

uint64_t sub_1004F2FF8(uint64_t a1, double a2, double a3)
{
  v6 = [v3 subviews];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v7 = sub_1007532A4();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_100754574();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (([v10 isHidden] & 1) != 0 || !objc_msgSend(v11, "isUserInteractionEnabled"))
      {
      }

      else
      {
        [v17 convertPoint:v11 toCoordinateSpace:{a2, a3}];
        v13 = [v11 pointInside:a1 withEvent:?];

        if (v13)
        {
          v14 = 1;
          goto LABEL_19;
        }
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v14 = 0;
LABEL_19:

  return v14;
}

uint64_t sub_1004F33A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004F3438(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1007541F4();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButtonActionBlock];
  v12 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButtonActionBlock];
  if (!v12)
  {
    v13 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButton;
    v14 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v3[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v3[v13] = 0;

    [v3 setNeedsLayout];
    v12 = *v11;
  }

  v16 = v11[1];
  *v11 = a1;
  v11[1] = a2;
  sub_10001B5AC(a1, a2);
  sub_1000164A8(v12, v16);
  if (*v11)
  {
    v17 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButton;
    if (!*&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButton])
    {
      sub_100016C60(0, &qword_10093B420, UIButton_ptr);
      if (qword_1009216E8 != -1)
      {
        swift_once();
      }

      v18 = sub_10000D0FC(v6, qword_10093B270);
      swift_beginAccess();
      (*(v7 + 16))(v10, v18, v6);
      v19 = sub_100754204();
      v20 = *&v3[v17];
      if (v20)
      {
        [v20 removeFromSuperview];
        v21 = *&v3[v17];
      }

      else
      {
        v21 = 0;
      }

      *&v3[v17] = v19;
      v22 = v19;

      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v23 = sub_100753DD4();
      v24 = [v23 colorWithAlphaComponent:0.7];

      [v22 setTintColor:v24];
      [v22 setHitTestInsets:{-10.0, -10.0, -10.0, -10.0}];
      [*&v3[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView] addSubview:v22];
      sub_1004EE10C();

      [v3 setNeedsLayout];
      v25 = *&v3[v17];
      if (v25)
      {
        [v25 addTarget:v3 action:"didTapShareButton:" forControlEvents:64];
      }
    }
  }
}

void sub_1004F3744()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1004F33A8(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v2 = [Strong superview];
    if (v2)
    {
      v3 = v2;
      v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaContainerView];
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v5 = v4;
      v6 = sub_100753FC4();

      if (v6)
      {
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v8 = v7;
          [v7 removeFromSuperview];
        }

        [*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkView] setHidden:0];
        v9 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoTapGestureRecognizer;
        if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoTapGestureRecognizer])
        {
          [v5 removeGestureRecognizer:?];
          v10 = *&v1[v9];
        }

        else
        {
          v10 = 0;
        }

        *&v1[v9] = 0;

        v11 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaReplicationView;
        v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaReplicationView];
        if (v12)
        {
          [v12 removeFromSuperview];
          v13 = *&v1[v11];
        }

        else
        {
          v13 = 0;
        }

        *&v1[v11] = 0;

        [v1 setNeedsLayout];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1004F3938()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1004F397C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004F3994()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004F39CC()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_1004F3A1C(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_gradientBlurView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_gradientBlurView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaContainerView];
    if (Strong)
    {
      [v8 insertSubview:v6 aboveSubview:Strong];
    }

    else
    {
      [v8 insertSubview:v6 aboveSubview:*&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkView]];
    }
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1004F3B00(uint64_t a1)
{
  v2 = sub_10000C518(&unk_1009308C0, &unk_1007A8BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004F3B68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1004F3BC8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v2 - 8);
  v102 = &v95[-v3];
  v4 = sub_10074AB44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v8 - 8);
  v10 = &v95[-v9];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_gradientBlurView] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentBackgroundBlurView] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaReplicationView] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_requirementsLabel] = 0;
  v11 = &v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButtonActionBlock];
  *v11 = 0;
  v11[1] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureRecognizer] = 0;
  v12 = &v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureActionBlock];
  *v12 = 0;
  v12[1] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoTapGestureRecognizer] = 0;
  v13 = &v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButtonActionBlock];
  *v13 = 0;
  v13[1] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButton] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureRecognizer] = 0;
  v14 = &v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureActionBlock];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkViewSize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mainArtwork] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupArtwork] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkLoader] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoBackgroundColor] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_haveFlashedScrollIndicators] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_isCollapsing] = 0;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaOverlayStyle;
  v17 = enum case for MediaOverlayStyle.matchSystem(_:);
  v18 = sub_100746BA4();
  (*(*(v18 - 8) + 104))(&v1[v16], v17, v18);
  v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_includeBorderInDarkMode] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_defaultPageMargin] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButtonPresenter] = 0;
  v19 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardScrollView] = v19;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shadowView] = [objc_allocWithZone(sub_100743034()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100746ED4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardContentView] = v20;
  v21 = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentContainerView] = v21;
  v22 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaContainerView] = v22;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView] = [objc_allocWithZone(type metadata accessor for OverlayContentContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkView] = v23;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = sub_100750534();
  v103 = *(v24 - 8);
  v25 = v103 + 56;
  v26 = *(v103 + 56);
  v26(v10, 1, 1, v24);
  v27 = *(v5 + 104);
  v100 = (v5 + 104);
  v106 = v27;
  v28 = enum case for DirectionalTextAlignment.none(_:);
  v96 = enum case for DirectionalTextAlignment.none(_:);
  v97 = v4;
  (v27)(v7);
  v29 = sub_100745C84();
  v30 = objc_allocWithZone(v29);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_kindLabel] = sub_100745C74();
  v26(v10, 1, 1, v24);
  v106(v7, v28, v4);
  v31 = objc_allocWithZone(v29);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_titleLabel] = sub_100745C74();
  v101 = v24;
  v104 = v26;
  v105 = v25;
  v26(v10, 1, 1, v24);
  v106(v7, v96, v97);
  v32 = objc_allocWithZone(v29);
  v100 = v10;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_detailLabel] = sub_100745C74();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButton] = [objc_allocWithZone(type metadata accessor for NotifyMeButton()) init];
  v33 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_separatorView] = v33;
  type metadata accessor for SmallLockupView(0);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_borderView] = v34;
  v35 = sub_10003B780();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButton] = v35;
  v107.receiver = v1;
  v107.super_class = ObjectType;
  v36 = v35;
  v37 = objc_msgSendSuper2(&v107, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v41 = v37;
  [v41 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v41 setClipsToBounds:0];
  v42 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardScrollView;
  [*(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardScrollView) setClipsToBounds:0];
  [*(v41 + v42) setContentInsetAdjustmentBehavior:2];
  [v41 addSubview:*(v41 + v42)];
  v43 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shadowView;
  v44 = qword_1009204D0;
  v45 = *(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shadowView);
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_10074F0C4();
  v47 = sub_10000D0FC(v46, qword_10097E230);
  v48 = *(v46 - 8);
  v49 = v102;
  (*(v48 + 16))(v102, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  sub_100743014();

  v50 = *(v41 + v43);
  sub_100742FF4();

  [*(v41 + v42) addSubview:*(v41 + v43)];
  v102 = v42;
  v51 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardContentView;
  [*(v41 + v42) addSubview:*(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_cardContentView)];
  v52 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentContainerView;
  [*(v41 + v51) addSubview:*(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentContainerView)];
  v53 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaContainerView;
  [*(v41 + v52) addSubview:*(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaContainerView)];
  v54 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkView;
  [*(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkView) setContentMode:2];
  [*(v41 + v54) setClipsToBounds:1];
  [*(v41 + v54) setAccessibilityIgnoresInvertColors:1];
  [*(v41 + v53) addSubview:*(v41 + v54)];
  v55 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView;
  [*(v41 + v52) addSubview:*(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_overlayContentContainerView)];
  v56 = *(v41 + v51);
  v106 = v36;
  [v56 addSubview:v36];
  v57 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_formattedDateView;
  v58 = *(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_formattedDateView);
  LOBYTE(v51) = v58[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style];
  v58[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] = 1;
  v59 = v58;
  sub_1000C95D0(v51);

  *(*(v41 + v57) + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_100878FB0;
  swift_unknownObjectWeakAssign();
  [*(v41 + v55) addSubview:*(v41 + v57)];
  v60 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_kindLabel;
  v61 = *(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_kindLabel);
  v62 = sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v63 = v61;
  v64 = sub_100753DD4();
  v65 = [v64 colorWithAlphaComponent:0.7];

  [v63 setTextColor:v65];
  [*(v41 + v55) addSubview:*(v41 + v60)];
  v66 = *(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_titleLabel);
  v67 = sub_100753DD4();
  [v66 setTextColor:v67];

  v68 = *(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButton);
  [v68 addTarget:v41 action:"notifyMeButtonTapped:" forControlEvents:64];

  v69 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_separatorView;
  v70 = *(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_separatorView);
  ObjectType = v62;
  v71 = sub_100753DD4();
  v72 = [v71 colorWithAlphaComponent:0.5];

  [v70 setBackgroundColor:v72];
  [*(v41 + v52) addSubview:*(v41 + v69)];
  v73 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView;
  v74 = qword_100920F70;
  v75 = *(*(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  if (v74 != -1)
  {
    swift_once();
  }

  v76 = v101;
  v77 = sub_10000D0FC(v101, qword_100980BA0);
  v78 = *(v103 + 16);
  v79 = v100;
  v78(v100, v77, v76);
  v80 = v104;
  v104(v79, 0, 1, v76);
  sub_100745BA4();

  v81 = qword_100920F78;
  v82 = *(*(v41 + v73) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  if (v81 != -1)
  {
    swift_once();
  }

  v83 = sub_10000D0FC(v76, qword_100980BB8);
  v78(v79, v83, v76);
  v80(v79, 0, 1, v76);
  sub_100745BA4();

  v84 = *(*(v41 + v73) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  v85 = sub_100753DD4();
  v86 = [v85 colorWithAlphaComponent:0.7];

  [v84 setTextColor:v86];
  v87 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_borderView;
  v88 = *(v41 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_borderView);
  v89 = objc_opt_self();
  v90 = v88;
  v91 = [v89 whiteColor];
  v92 = [v91 colorWithAlphaComponent:0.2];

  sub_100746E64();
  v93 = *(v41 + v87);
  sub_100746E74();

  [*(v41 + v87) setUserInteractionEnabled:0];
  [*(v41 + v87) setHidden:1];
  [*&v102[v41] addSubview:*(v41 + v87)];
  sub_1004ED384();
  sub_1004EDAA4();
  sub_1004EE10C();

  return v41;
}

void sub_1004F49B8()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_gradientBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_contentBackgroundBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaReplicationView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_requirementsLabel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_closeButtonActionBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureRecognizer) = 0;
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_dismissTapGestureActionBlock);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoTapGestureRecognizer) = 0;
  v3 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButtonActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_shareButton) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureRecognizer) = 0;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupTapGestureActionBlock);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkViewSize;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mainArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_lockupArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_videoBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_haveFlashedScrollIndicators) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_isCollapsing) = 0;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_mediaOverlayStyle;
  v7 = enum case for MediaOverlayStyle.matchSystem(_:);
  v8 = sub_100746BA4();
  (*(*(v8 - 8) + 104))(v0 + v6, v7, v8);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_includeBorderInDarkMode) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_defaultPageMargin) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22AppEventDetailPageView_notifyMeButtonPresenter) = 0;
  sub_100754644();
  __break(1u);
}

double sub_1004F4C94(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_100754724();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100751374();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100749A94();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100749A44();
  sub_1004F52FC(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v19 = sub_100754324();
  (*(v16 + 8))(v18, v15);
  swift_getObjectType();
  sub_100700E98(a5, v14);
  type metadata accessor for InAppPurchaseLockupView(0);
  v20 = sub_1005ACFB4(a5, a1, a2);
  if (v19)
  {
    v21 = v20;
    sub_100751304();
    v22 = v28;
    sub_10000C888(v27, v28);
    sub_100536120(v22);
    sub_100750564();
    (*(v25 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    sub_10000C620(v27);
  }

  else
  {
    sub_100753BD4();
    v21 = v23;
    (*(v12 + 8))(v14, v11);
  }

  return v21;
}

uint64_t sub_1004F4FE0(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v28[1] = a1;
  v8 = sub_100751374();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074EAB4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v17 = v16;
  type metadata accessor for InAppPurchaseLockupView(0);
  sub_1005ACFB4(a5, v17, a3);
  sub_10074EA84();
  sub_1004F52FC(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_100754324();
  (*(v13 + 8))(v15, v12);
  sub_100700E98(a5, v11);
  sub_100751334();
  (*(v9 + 8))(v11, v8);
  [a5 pageMarginInsets];
  v18 = [a5 traitCollection];
  LOBYTE(v8) = sub_1007537E4();

  if ((v8 & 1) != 0 || (JUScreenClassGetPortraitWidth(), v19 >= a2))
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v23 = v24;
  }

  else
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v21 = v20;
    PageTraitEnvironment.pageColumnMargin.getter();
    v23 = v21 - (v22 + v22);
  }

  v25 = [objc_opt_self() absoluteDimension:v23];
  v26 = sub_100749A04();

  return v26;
}

uint64_t sub_1004F52FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004F536C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v84 = a3;
  v10 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v10 - 8);
  v83 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v82 = &v73 - v13;
  v14 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v14 - 8);
  v81 = &v73 - v15;
  v16 = sub_100744864();
  __chkstk_darwin(v16 - 8);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v73 - v20;
  v22 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v22 - 8);
  v24 = &v73 - v23;
  v25 = sub_100744894();
  v80 = *(v25 - 8);
  __chkstk_darwin(v25);
  v90 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100747D94();
  v85 = *(v27 - 8);
  v86 = v27;
  __chkstk_darwin(v27);
  v91 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1007504F4();
  v30 = *(v29 - 8);
  v88 = v29;
  v89 = v30;
  __chkstk_darwin(v29);
  v79 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100743604();
  v33 = [v32 length];

  v87 = a6;
  if (v33 < 1)
  {
    [*&v7[qword_1009485E0] setText:0];
    v7[qword_100983438] = 0;
    [*&v7[qword_1009485D0] setHidden:1];
  }

  else
  {
    v74 = v25;
    v75 = v24;
    v76 = v21;
    v77 = v18;
    v78 = a1;
    v34 = sub_100743604();
    v35 = [a6 traitCollection];
    v36 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v34];
    v37 = [v34 length];
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = v35;
    *(v38 + 32) = v36;
    *(v38 + 40) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_100047814;
    *(v39 + 24) = v38;
    aBlock[4] = sub_1000B18A8;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047044;
    aBlock[3] = &unk_1008792B8;
    v40 = _Block_copy(aBlock);
    v41 = v35;
    v42 = v36;

    [v34 enumerateAttributesInRange:0 options:v37 usingBlock:{0x100000, v40}];

    _Block_release(v40);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      __break(1u);
      return;
    }

    [*&v7[qword_1009485E0] setAttributedText:v42];
    v7[qword_100983438] = 1;
    [*&v7[qword_1009485D0] setHidden:0];

    v24 = v75;
    v25 = v74;
  }

  v43 = *&v7[qword_1009485D8];
  sub_100743614();
  if (v44)
  {
    v45 = sub_100753064();
  }

  else
  {
    v45 = 0;
  }

  v46 = v87;
  [v43 setText:v45];

  bottom = UIEdgeInsetsZero.bottom;
  if (sub_1007435E4())
  {
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    [v46 pageMarginInsets];
    left = v50;
    right = v51;
  }

  v52 = v88;
  v53 = [v7 contentView];
  [v53 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (sub_100743634())
  {
    v54 = [v7 contentView];
    sub_100009D34();
    sub_1007477B4();

    sub_10074F2A4();
    v55 = v79;
    sub_100750504();
    sub_100750464();
    v57 = v56;
    v59 = v58;

    (*(v89 + 8))(v55, v52);
    v60 = &v7[qword_10097FEF0];
    *v60 = v57;
    v60[1] = v59;
  }

  if (sub_100743624())
  {
    (*(v80 + 104))(v90, enum case for VideoFillMode.scaleAspectFill(_:), v25);
    if (sub_100743634())
    {
      sub_10074F2A4();
      sub_100750504();

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    (*(v89 + 56))(v24, v61, 1, v52);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v62 = v81;
    sub_10074EC24();
    v63 = sub_100741264();
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    v64 = v82;
    sub_10074EBE4();
    v65 = v83;
    sub_10074EBD4();
    type metadata accessor for VideoView(0);
    sub_1004F701C(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v66 = sub_1007464A4();
    sub_10000C8CC(v65, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v64, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v62, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(aBlock, &unk_1009276E0, &unk_1007A5C70);
    sub_1003AF8D8();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v68 = Strong;
      v69 = *&v7[qword_100935138];
      if (v69)
      {
        v70 = *&v7[qword_100935138];
      }

      else
      {
        v70 = [v7 contentView];
        v69 = 0;
      }

      v71 = v69;
      [v70 addSubview:v68];
      [v7 setNeedsLayout];
    }

    else
    {
    }

    (*(v85 + 8))(v91, v86);
  }

  v7[qword_100983430] = sub_1007435F4() & 1;
  sub_1000B18C8(v72);
}

void sub_1004F5E80(uint64_t a1, uint64_t a2, char a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for VideoView(0);
    sub_1004F701C(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
    sub_100744274();
  }
}

void sub_1004F5FE0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v7 - 8);
  v9 = v36 - v8;
  v10 = sub_1007504F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1007435E4() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (sub_100743634())
  {
    sub_10074F2A4();
    sub_100750504();
    sub_1007504C4();
    (*(v11 + 8))(v13, v10);
    sub_1007435E4();
  }

  v14 = sub_100743604();
  v15 = [v14 length];

  if (v15 >= 1)
  {
    sub_100743614();
    if (v16)
    {
      if (qword_1009213F8 != -1)
      {
        swift_once();
      }

      v17 = sub_100750534();
      sub_10000D0FC(v17, qword_100981920);
      v18 = sub_10074F3F4();
      v38 = v18;
      v39 = sub_1004F701C(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v19 = sub_10000D134(aBlock);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
      sub_10074FC74();
      sub_10000C620(aBlock);
      sub_10074CCB4();
    }

    v20 = sub_100743604();
    v36[1] = a6;
    v21 = [a6 traitCollection];
    v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
    v23 = [v20 length];
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = v21;
    *(v24 + 32) = v22;
    *(v24 + 40) = 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1002B1424;
    *(v25 + 24) = v24;
    v39 = sub_1002B1408;
    v40 = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047044;
    v38 = &unk_100879330;
    v26 = _Block_copy(aBlock);
    v27 = v21;
    v28 = v22;

    [v20 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

    _Block_release(v26);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      __break(1u);
    }

    else
    {
      v29 = qword_1009213F0;
      v20 = v28;
      if (v29 == -1)
      {
LABEL_12:
        v30 = sub_100750534();
        v31 = sub_10000D0FC(v30, qword_100981908);
        v32 = *(v30 - 8);
        (*(v32 + 16))(v9, v31, v30);
        (*(v32 + 56))(v9, 0, 1, v30);
        v33 = sub_10074F3F4();
        v38 = v33;
        v39 = sub_1004F701C(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v34 = sub_10000D134(aBlock);
        (*(*(v33 - 8) + 104))(v34, enum case for Feature.measurement_with_labelplaceholder(_:), v33);
        sub_10074FC74();
        sub_10000C620(aBlock);
        sub_10074CCA4();

        sub_10000C8CC(v9, &unk_100928A40, qword_1007A6630);
        if (qword_100921F08 != -1)
        {
          swift_once();
        }

        v35 = sub_100750B04();
        sub_10000D0FC(v35, qword_1009833D8);
        sub_100750584();
        if (qword_100921F10 != -1)
        {
          swift_once();
        }

        sub_10000D0FC(v35, qword_1009833F0);
        sub_100750554();

        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_12;
  }

LABEL_17:
  sub_100753B94();
}

double sub_1004F67B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1004F67CC(uint64_t a1)
{
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000C824(a1, v10);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_100743644();
  if (swift_dynamicCast())
  {
    if (sub_100743624())
    {
      sub_10074EC14();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        sub_10074F2A4();
        sub_100750504();
        sub_100750474();
        v8 = *(v3 + 8);
        v8(v5, v2);
        sub_10074F2A4();
        sub_100750504();
        sub_100750464();
        v8(v5, v2);
        sub_10074F374();
        type metadata accessor for VideoView(0);
        sub_1004F701C(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
        sub_100744204();
      }
    }
  }
}

void sub_1004F6A40(double a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v20 = a5;
  v17 = a4;
  v19 = sub_1007504F4();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074EB24();
  v9 = *(v8 + 16);
  v21 = v8 + 32;
  v18 = (v5 + 8);
  v22 = v8;

  v10 = 0;
  v11 = &qword_1009242A0;
  v12 = v19;
  while (1)
  {
    if (v10 == v9)
    {
      v30 = 0;
      v10 = v9;
      v28 = 0u;
      v29 = 0u;
      goto LABEL_8;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v22 + 16))
    {
      goto LABEL_18;
    }

    sub_10000C824(v21 + 40 * v10++, &v28);
LABEL_8:
    v26[0] = v28;
    v26[1] = v29;
    v27 = v30;
    if (!*(&v29 + 1))
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_100012160(v26, v25);
    sub_10000C824(v25, v23);
    sub_10000C518(v11, &qword_1007A6400);
    sub_100743644();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
    }

    sub_10000C620(v25);
    if (v24)
    {
      if (sub_100743624())
      {
        v14 = v11;
        sub_10074EC14();

        v15 = sub_1007435E4();

        if ((v15 & 1) == 0)
        {
          [v17 pageMarginInsets];
        }

        sub_10074F2A4();
        sub_100750504();
        sub_100750474();
        v13 = *v18;
        (*v18)(v7, v12);
        sub_10074F2A4();
        sub_100750504();
        sub_100750464();
        v13(v7, v12);
        sub_10074F374();
        sub_100744214();

        v11 = v14;
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

uint64_t sub_1004F6DB8()
{
  v0 = sub_1007504F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = ASKDeviceTypeGetCurrent();
  v5 = sub_100753094();
  v7 = v6;
  if (v5 == sub_100753094() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_100754754();

    if ((v10 & 1) == 0)
    {
      if (qword_1009216F0 != -1)
      {
        swift_once();
      }

      v11 = qword_100982068;
      goto LABEL_13;
    }
  }

  if (qword_1009216F8 != -1)
  {
    swift_once();
  }

  v11 = qword_100982080;
LABEL_13:
  v12 = sub_10000D0FC(v0, v11);
  (*(v1 + 16))(v3, v12, v0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v14 = v13;
  sub_1007504C4();
  v15 = [objc_opt_self() absoluteDimension:v14];
  v16 = sub_100749A04();

  (*(v1 + 8))(v3, v0);
  return v16;
}

uint64_t sub_1004F701C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1004F7074()
{
  v1 = sub_10074AFA4();
  if (v1 == sub_10074AFA4())
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility);
  }

  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTitleView) setHidden:v2];
  if (sub_100749F94())
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton);
    v4 = 1;
  }

  else
  {
    v5 = sub_10074AFA4();
    v6 = sub_10074AFA4();
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton);
    if (v5 == v6)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility + 1);
    }
  }

  return [v3 setHidden:v4];
}

char *sub_1004F716C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTitleView;
  type metadata accessor for ProductTitleView.IconTitleView(0);
  *&v5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_animationVerticalOffset] = 0x4010000000000000;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_navigationBarMode] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButtonMode] = 0;
  v11 = &v5[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTapHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTapGestureRecognizer;
  *&v5[v12] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility] = 0;
  v13 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton] = sub_100154454(1);
  v32.receiver = v5;
  v32.super_class = type metadata accessor for ProductTitleView();
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor:v17];

  [v16 setHeightShouldBeIncreasedByTabBarHeight:1];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTapGestureRecognizer;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTapGestureRecognizer] setEnabled:0];
  v19 = *&v16[v18];
  [v19 addTarget:v16 action:"didTapIcon:"];

  v20 = OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTitleView;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTitleView] addGestureRecognizer:*&v16[v18]];
  [*&v16[v20] setHidden:1];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton] setHidden:1];
  [v16 addSubview:*&v16[v20]];
  [v16 addSubview:*&v16[v21]];
  [*&v16[v21] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [*(*&v16[v21] + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_imageView) setContentMode:1];
  [*&v16[v21] setShowsLargeContentViewer:1];
  v22 = *&v16[v21];
  v23 = objc_allocWithZone(UILargeContentViewerInteraction);
  v24 = v22;
  v25 = [v23 init];
  [v24 addInteraction:v25];

  v26 = [v16 traitCollection];
  LOBYTE(v24) = sub_1007537D4();

  if (v24)
  {
    v27 = 16.0;
  }

  else
  {
    v27 = 20.0;
  }

  [v16 layoutMargins];
  v29 = v28;
  [v16 layoutMargins];
  [v16 setLayoutMargins:{v29, v27}];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007A5A00;
  *(v30 + 32) = sub_1007516F4();
  *(v30 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v16;
}

double sub_1004F75B0(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_1007537D4();

  if ((v5 & 1) != 0 && (v6 = [v2 overlays]) != 0 && (v7 = v6, sub_100753A84(), v7, (v18 & 1) == 0))
  {
    if (CGRectGetMinY(v17) <= 50.0)
    {
      y = v17.origin.y;
    }

    else
    {
      y = 0.0;
    }

    x = v17.origin.x;
    width = v17.size.width;
    height = v17.size.height;
    MidY = CGRectGetMidY(*(&y - 1));
  }

  else
  {
    [v2 bounds];
    MinY = CGRectGetMinY(v19);
    [v2 bounds];
    v9 = CGRectGetHeight(v20);
    [v2 floatingTabBarHeight];
    MidY = MinY + (v9 - v10) * 0.5;
  }

  return MidY + a1 * -0.5;
}

double sub_1004F76F8(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_1007537D4();

  if ((v5 & 1) != 0 && (v6 = [v2 overlays]) != 0 && (v7 = v6, sub_100753A84(), v7, (v20 & 1) == 0))
  {
    if (CGRectGetMinY(v19) <= 50.0)
    {
      y = v19.origin.y;
    }

    else
    {
      y = 0.0;
    }

    x = v19.origin.x;
    width = v19.size.width;
    height = v19.size.height;
    MidY = CGRectGetMidY(*(&y - 1));
  }

  else
  {
    [v2 bounds];
    MinY = CGRectGetMinY(v21);
    [v2 bounds];
    v9 = CGRectGetHeight(v22);
    [v2 floatingTabBarHeight];
    v11 = MinY + (v9 - v10) * 0.5;
    [v2 floatingTabBarHeight];
    MidY = v12 + v11;
  }

  return MidY + a1 * -0.5;
}

uint64_t sub_1004F7850()
{
  v1 = v0;
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v6 - 8);
  v8 = v102 - v7;
  *&v9 = COERCE_DOUBLE(type metadata accessor for ProductTitleView());
  v116.receiver = v0;
  v116.super_class = v9;
  objc_msgSendSuper2(&v116, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_offerButton];
  sub_1007477B4();
  v11 = &v10[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  v12 = v10[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16];
  v107 = v10;
  v102[0] = v5;
  v108 = v8;
  if (v12)
  {
    v13 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(&v10[v13], v115);
    sub_10000C888(v115, v115[3]);
    sub_10074AE54();
    v15 = v14;
    v17 = v16;
    sub_10000C620(v115);
    *v11 = v15;
    v11[1] = v17;
    *(v11 + 16) = 0;
  }

  else
  {
    v17 = v11[1];
  }

  sub_1007477B4();
  CGRectGetMaxX(v117);
  sub_1004F75B0(v17);
  sub_1007477B4();
  sub_100753B24();
  sub_1007539A4();
  v106 = v18;
  v105 = v19;
  v104 = v20;
  v103 = v21;
  sub_100753B54();
  MaxX = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v1 traitCollection];
  v31 = sub_1007537F4();

  v32 = [v1 contentOverlayRects];
  v102[1] = sub_1004F9D88();
  v33 = sub_1007532A4();

  if ((v31 & 1) == 0)
  {
    v33 = sub_10053B0B4(v33);
  }

  v109 = v3;
  v110 = v2;
  MidX = *&v9;
  if (v33 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v35 = 0;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v38 = sub_100754574();
      }

      else
      {
        if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v38 = *(v33 + 8 * v35 + 32);
      }

      v39 = v38;
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v38 CGRectValue];
      x = v119.origin.x;
      y = v119.origin.y;
      width = v119.size.width;
      height = v119.size.height;
      v126.origin.x = MaxX;
      v126.origin.y = v25;
      v126.size.width = v27;
      v126.size.height = v29;
      if (!CGRectIntersectsRect(v119, v126))
      {

        goto LABEL_20;
      }

      v45 = [v1 traitCollection];
      v46 = sub_1007537F4();

      v47 = x;
      v48 = y;
      v49 = width;
      v50 = height;
      if (v46)
      {
        MaxX = CGRectGetMaxX(*&v47);
      }

      else
      {
        MinX = CGRectGetMinX(*&v47);
        v118.origin.x = MaxX;
        v118.origin.y = v25;
        v118.size.width = v27;
        v118.size.height = v29;
        v37 = CGRectGetWidth(v118);

        MaxX = MinX - v37;
      }

      ++v35;
      if (v40 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_20:

  v120.origin.x = MaxX;
  v120.origin.y = v25;
  v120.size.width = v27;
  v120.size.height = v29;
  v51 = CGRectGetMinX(v120);
  sub_1007477B4();
  v52 = CGRectGetMinX(v121);
  v53 = 0.0;
  v54 = v110;
  v55 = v109;
  if (v52 <= v51 && (v122.origin.x = MaxX, v122.origin.y = v25, v122.size.width = v27, v122.size.height = v29, v56 = CGRectGetMaxX(v122), sub_1007477B4(), v56 <= CGRectGetMaxX(v123)))
  {
    sub_100753B14();
    v106 = v58;
    v105 = v59;
    v104 = v60;
    v103 = v61;
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v106 = 0.0;
    v105 = 0.0;
    v104 = 0.0;
    v103 = 0.0;
  }

  v1[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility + 1] = v57;
  sub_1004F7074();
  v33 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_iconTitleView];
  v62 = OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_iconAspectRatio;
  swift_beginAccess();
  v63 = v108;
  sub_100115488(v33 + v62, v108);
  v64 = *(v55 + 48);
  v65 = v64(v63, 1, v54);
  sub_1000A5080(v63);
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  if (v65 != 1)
  {
    sub_1007477B4();
    v70 = v69;
    if (v64(v33 + v62, 1, v54))
    {
      v68 = 40.0;
    }

    else
    {
      v71 = v102[0];
      (*(v55 + 16))(v102[0], v33 + v62, v54);
      sub_1007504C4();
      v68 = v72;
      (*(v55 + 8))(v71, v54);
    }

    v73 = *(v33 + OBJC_IVAR____TtCC22SubscribePageExtension16ProductTitleViewP33_7358649AA0F63191E5632A80D277647513IconTitleView_appTitleView);
    [v73 sizeThatFits:{1.79769313e308, 1.79769313e308, v102[0]}];
    v75 = v74;
    v77 = v76;
    v78 = [v73 isHidden];
    v79 = v75 + 50.0;
    if (v78)
    {
      v79 = 40.0;
    }

    if (v79 >= v70)
    {
      v67 = v70;
    }

    else
    {
      v67 = v79;
    }

    if (v68 <= v77)
    {
      v68 = v77;
    }

    sub_1007477B4();
    MidX = CGRectGetMidX(v124);
    v66 = sub_1004F76F8(v68);
    v80 = [v1 contentOverlayRects];
    v81 = sub_1007532A4();

    v112 = v81;
    v82 = &v1[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility];
    if ((v1[OBJC_IVAR____TtC22SubscribePageExtension16ProductTitleView_collisionVisibility + 1] & 1) == 0)
    {
      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007A5CF0;
      *(inited + 32) = [objc_opt_self() valueWithCGRect:{MaxX, v25, v27, v29}];
      sub_1004A0418(inited, v84);
      v81 = v112;
    }

    v53 = MidX + v67 * -0.5;
    if (v81 >> 62)
    {
      v85 = sub_100754664();
    }

    else
    {
      v85 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v86 = 0;
    do
    {
      v87 = v86;
      if (v85 == v86)
      {
        break;
      }

      if ((v81 & 0xC000000000000001) != 0)
      {
        v88 = sub_100754574();
      }

      else
      {
        if (v86 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v88 = *(v81 + 8 * v86 + 32);
      }

      v89 = v88;
      if (__OFADD__(v87, 1))
      {
        goto LABEL_52;
      }

      [v88 CGRectValue];
      v127.origin.x = v53;
      v127.origin.y = v66;
      v127.size.width = v67;
      v127.size.height = v68;
      v90 = CGRectIntersectsRect(v125, v127);

      v86 = v87 + 1;
    }

    while (!v90);

    *v82 = v85 != v87;
    sub_1004F7074();
  }

  [v33 setFrame:{v53, v66, v67, v68, v102[0]}];
  v91 = type metadata accessor for OfferButton();
  v92 = v107;
  v114.receiver = v107;
  v114.super_class = v91;
  objc_msgSendSuper2(&v114, "frame");
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v100 = v99;
  v113.receiver = v92;
  v113.super_class = v91;
  objc_msgSendSuper2(&v113, "setFrame:", v106, v105, v104, v103);
  return sub_100153BE0(v94, v96, v98, v100);
}