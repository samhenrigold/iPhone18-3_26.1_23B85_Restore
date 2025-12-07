uint64_t sub_10058283C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093EF38, qword_1007CB050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005828AC(uint64_t a1)
{
  v2 = sub_10000C518(&qword_10093EF38, qword_1007CB050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100582914(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v44.size.width = a9;
  v44.size.height = a10;
  v44.origin.x = a7;
  v44.origin.y = a8;
  v42 = a2;
  v45 = CGRectOffset(v44, a1, a2);
  x = v45.origin.x;
  width = v45.size.width;
  height = v45.size.height;
  if (a1 > 0.0)
  {
    rect = v45.origin.y;
    v40 = v45.size.width;
    MinX = CGRectGetMinX(v45);
    v46.origin.x = a3;
    v46.origin.y = a4;
    v46.size.width = a5;
    v46.size.height = a6;
    if (CGRectGetMinX(v46) < MinX)
    {
      v47.origin.x = x;
      v47.origin.y = rect;
      v47.size.width = v40;
      v47.size.height = height;
      v39 = CGRectGetMinX(v47);
      v48.origin.x = a3;
      v48.origin.y = a4;
      v48.size.width = a5;
      v48.size.height = a6;
      x = x - (v39 - CGRectGetMinX(v48));
    }

    width = v40;
    v45.origin.y = rect;
  }

  if (a1 < 0.0)
  {
    v19 = x;
    y = v45.origin.y;
    v21 = width;
    v22 = height;
    MaxX = CGRectGetMaxX(v45);
    v49.origin.x = a3;
    v49.origin.y = a4;
    v49.size.width = a5;
    v49.size.height = a6;
    if (MaxX < CGRectGetMaxX(v49))
    {
      v50.origin.x = a3;
      v50.origin.y = a4;
      v50.size.width = a5;
      v50.size.height = a6;
      v24 = CGRectGetMaxX(v50);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      x = x + v24 - CGRectGetMaxX(v51);
    }

    v45.origin.y = y;
  }

  if (v42 > 0.0)
  {
    v25 = x;
    v26 = v45.origin.y;
    v27 = width;
    v28 = height;
    MinY = CGRectGetMinY(v45);
    v52.origin.x = a3;
    v52.origin.y = a4;
    v52.size.width = a5;
    v52.size.height = a6;
    if (CGRectGetMinY(v52) >= MinY)
    {
      v45.origin.y = v26;
    }

    else
    {
      v53.origin.x = x;
      v53.origin.y = v26;
      v53.size.width = width;
      v53.size.height = height;
      v30 = CGRectGetMinY(v53);
      v54.origin.x = a3;
      v54.origin.y = a4;
      v54.size.width = a5;
      v54.size.height = a6;
      v45.origin.y = v26 - (v30 - CGRectGetMinY(v54));
    }
  }

  if (v42 < 0.0)
  {
    v31 = x;
    v32 = v45.origin.y;
    v33 = width;
    v34 = height;
    v35 = width;
    v36 = a4;
    MaxY = CGRectGetMaxY(v45);
    v55.origin.x = a3;
    v55.origin.y = v36;
    v55.size.width = a5;
    v55.size.height = a6;
    if (MaxY < CGRectGetMaxY(v55))
    {
      v56.origin.x = a3;
      v56.origin.y = v36;
      v56.size.width = a5;
      v56.size.height = a6;
      CGRectGetMaxY(v56);
      v57.origin.x = x;
      v57.origin.y = v32;
      v57.size.width = v35;
      v57.size.height = height;
      CGRectGetMaxY(v57);
    }
  }

  return x;
}

uint64_t sub_100582BC8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v6 = sub_1007504F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074DA84();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.absolute(_:))
  {
    return (*(v11 + 96))(v14, v10);
  }

  if (v15 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalHeight(_:))
  {
    (*(v11 + 96))(v14, v10);
    sub_100750504();
    sub_1007504B4();
    return (*(v7 + 8))(v9, v6);
  }

  if (v15 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalWidth(_:))
  {
    (*(v11 + 96))(v14, v10);
    sub_100750504();
    sub_1007504C4();
    return (*(v7 + 8))(v9, v6);
  }

  if (v15 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalSize(_:))
  {
    return (*(v11 + 96))(v14, v10);
  }

  result = sub_100754644();
  __break(1u);
  return result;
}

void sub_100582EF4(double a1, double a2, double a3, double a4)
{
  v8 = sub_1007504F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  if (a3 > a1 || a4 > a2)
  {
    sub_100750504();
    sub_100750504();
    sub_1007504A4();
    v17 = v16;
    sub_1007504A4();
    v18 = (v9 + 8);
    if (v17 >= v19)
    {
      sub_1007504C4();
    }

    else
    {
      sub_1007504B4();
    }

    v20 = *v18;
    (*v18)(v11, v8);
    v20(v14, v8);
  }
}

double sub_100583080(unint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v14 = a5.n128_f64[0];
  v15 = a4.n128_f64[0];
  rect = a3.n128_f64[0];
  v16 = a2.n128_f64[0];
  if (a1 - 1 <= 1)
  {
    sub_100753B74();
    v15 = v17;
    v14 = v18;
  }

  if (a1 > 0xC)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0xA80) != 0)
  {
    v26.origin.x = a6;
    v26.origin.y = a7;
    v26.size.width = a8;
    v26.size.height = a9;
    MinX = CGRectGetMinX(v26);
    goto LABEL_10;
  }

  if (((1 << a1) & 0x1500) != 0)
  {
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    MaxX = CGRectGetMaxX(v24);
    v25.origin.x = v16;
    v25.origin.y = rect;
    v25.size.width = v15;
    v25.size.height = v14;
    Width = CGRectGetWidth(v25);
  }

  else
  {
LABEL_8:
    v27.origin.x = a6;
    v27.origin.y = a7;
    v27.size.width = a8;
    v27.size.height = a9;
    MaxX = CGRectGetMidX(v27);
    v28.origin.x = v16;
    v28.origin.y = rect;
    v28.size.width = v15;
    v28.size.height = v14;
    Width = CGRectGetMidX(v28);
  }

  MinX = MaxX - Width;
  if (a1 > 0xC)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (((1 << a1) & 0x620) != 0)
  {
    v31.origin.x = a6;
    v31.origin.y = a7;
    v31.size.width = a8;
    v31.size.height = a9;
    CGRectGetMinY(v31);
    return MinX;
  }

  if (((1 << a1) & 0x1840) == 0)
  {
LABEL_14:
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    CGRectGetMidY(v32);
    v33.origin.x = MinX;
    v33.origin.y = rect;
    v33.size.width = v15;
    v33.size.height = v14;
    CGRectGetMidY(v33);
    return MinX;
  }

  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetMaxY(v29);
  v30.origin.x = MinX;
  v30.origin.y = rect;
  v30.size.width = v15;
  v30.size.height = v14;
  CGRectGetHeight(v30);
  return MinX;
}

uint64_t type metadata accessor for SearchLandingLayoutSectionProvider(uint64_t a1)
{
  result = qword_10093EF40;
  if (!qword_10093EF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10058330C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v124 = a7;
  v121 = a8;
  v122 = a5;
  v118 = a4;
  v125 = a3;
  v127 = a2;
  v123 = a10;
  v120 = a9;
  v129 = sub_1007469A4();
  v109 = *(v129 - 1);
  __chkstk_darwin(v129);
  v128 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  __chkstk_darwin(v13 - 8);
  v110 = &v106 - v14;
  v108 = sub_10074F704();
  v111 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10074E984();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v116 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v106 - v20;
  v22 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v28 = *(v23 + 8);
  v115 = v23 + 8;
  v113 = v28;
  v28(v27, v22);
  v112 = *(v17 + 88);
  v29 = v112(v21, v16);
  v126 = v17;
  v119 = v21;
  if (v29 != enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_20;
  }

  v30 = ASKDeviceTypeGetCurrent();
  v31 = sub_100753094();
  v33 = v32;
  if (v31 == sub_100753094() && v33 == v34)
  {
    goto LABEL_4;
  }

  v36 = sub_100754754();

  v35 = v126;
  if ((v36 & 1) == 0)
  {
    v30 = ASKDeviceTypeGetCurrent();
    v63 = sub_100753094();
    v65 = v64;
    if (v63 == sub_100753094() && v65 == v66)
    {
LABEL_4:

      v35 = v126;
      goto LABEL_6;
    }

    v67 = sub_100754754();

    v35 = v126;
    if ((v67 & 1) == 0)
    {
LABEL_20:
      v129 = &v106;
      __chkstk_darwin(v29);
      __chkstk_darwin(v68);
      sub_10074CBA4();
      v69 = sub_10074CBB4();
      v70 = v118;
      v71 = a6;
      v117 = a6;
      v72 = v124;
      v128 = v69(a1, sub_1000FA880, &v106 - 4, v118, v122, v71, v124, v121, v120, v123);
      v73 = v114;
      sub_100747C04();
      swift_getKeyPath();
      v74 = v116;
      sub_1007525B4();

      v113(v73, v22);
      v75 = v112(v74, v16);
      if (v75 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        v76 = v127();
        v62 = sub_1003EFB6C(a1, v76, v70, v122, v117, v72, v121, v120, v123);
      }

      else
      {
        v77 = v128;
        v78 = v117;
        if (v75 != enum case for Shelf.ContentType.ribbonFlow(_:))
        {
          v35 = v126;
          if (v75 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            v62 = v128;
            [v128 setOrthogonalScrollingBehavior:2];
          }

          else
          {
            (*(v126 + 8))(v116, v16);
            v62 = v77;
          }

          goto LABEL_25;
        }

        v79 = v127();
        v62 = sub_1003F0EB0(a1, v79, v118, v122, v78, v124, v121, v120, v123);
      }

      v35 = v126;
LABEL_25:
      v21 = v119;
      goto LABEL_26;
    }
  }

LABEL_6:
  v37 = (v127)(v29);
  v38 = *(v37 + 16);
  v39 = _swiftEmptyArrayStorage;
  v114 = v38;
  if (v38)
  {
    v117 = a6;
    v115 = a1;
    v116 = v16;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001E46C(0, v38, 0);
    v127 = type metadata accessor for SearchActionContentView(0);
    v39 = aBlock[0];
    v40 = *(v109 + 16);
    v41 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v125 = v37;
    v42 = v37 + v41;
    v43 = *(v109 + 72);
    v44 = v38;
    v45 = (v109 + 8);
    do
    {
      v47 = v128;
      v46 = v129;
      v40(v128, v42, v129);
      v48 = sub_100637E50(v47);
      (*v45)(v47, v46);
      aBlock[0] = v39;
      v50 = v39[2];
      v49 = v39[3];
      if (v50 >= v49 >> 1)
      {
        sub_10001E46C((v49 > 1), v50 + 1, 1);
        v39 = aBlock[0];
      }

      v39[2] = v50 + 1;
      *&v39[v50 + 4] = v48;
      v42 += v43;
      --v44;
    }

    while (v44);
    v16 = v116;
    v37 = v125;
    v35 = v126;
    v21 = v119;
    a1 = v115;
  }

  v51 = COERCE_DOUBLE(sub_10018875C(v39));
  if ((v52 & 1) != 0 || v51 <= 0.0)
  {

    sub_100016C60(0, &unk_10093FE00, NSCollectionLayoutSection_ptr);
    v59 = sub_100747C14();
    v60 = *(v59 - 8);
    v61 = v110;
    (*(v60 + 16))(v110, a1, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = sub_100753A44();
    sub_100584100(v61);
    goto LABEL_26;
  }

  v125 = v37;
  v53 = *&v51;
  v54 = v107;
  sub_100747B84();
  sub_10074F594();
  v56 = v55;
  v57 = *(v111 + 8);
  v111 += 8;
  v128 = v57;
  (v57)(v54, v108);
  if (v56 >= 2.0)
  {

    v58 = v122;
    v81 = v114;
    if (v114)
    {
      v82 = sub_100753324();
      *(v82 + 16) = v81;
      v83 = (v82 + 32);
      if (v81 >= 4)
      {
        v84 = v81 & 0x7FFFFFFFFFFFFFFCLL;
        v83 += v81 & 0x7FFFFFFFFFFFFFFCLL;
        v85 = vdupq_n_s64(v53);
        v86 = (v82 + 48);
        v87 = v81 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v86[-1] = v85;
          *v86 = v85;
          v86 += 2;
          v87 -= 4;
        }

        while (v87);
        if (v81 == v84)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v84 = 0;
      }

      v88 = v81 - v84;
      do
      {
        *v83++ = v53;
        --v88;
      }

      while (v88);
    }
  }

  else
  {
    v58 = v122;
  }

LABEL_39:
  v89 = sub_1007499F4();

  v90 = objc_opt_self();
  v129 = v89;
  v91 = [v90 sectionWithGroup:v89];
  swift_getObjectType();
  v92 = v58;
  sub_10074BE74();
  sub_100016C60(0, &qword_10092E460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
  isa = sub_100753294().super.isa;

  [v91 setBoundarySupplementaryItems:isa];

  v62 = v91;
  sub_10074BE64();
  sub_100016C60(0, &qword_10092E468, NSCollectionLayoutDecorationItem_ptr);
  v94 = sub_100753294().super.isa;

  [v91 setDecorationItems:v94];

  v95 = v107;
  sub_100747B84();
  sub_10074F694();
  v97 = v96;
  v99 = v98;
  (v128)(v95, v108);
  sub_10000C888(v92, v92[3]);
  sub_10074BE34();
  v101 = v100;
  sub_10000C888(v92, v92[3]);
  sub_10074BE54();
  [v91 setContentInsets:{v101, v97, v102, v99}];
  sub_10074CB94();
  v103 = sub_1007532C4();
  v105 = v104;

  if (v103)
  {
    aBlock[4] = v103;
    aBlock[5] = v105;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005D5E28;
    aBlock[3] = &unk_10087BAE0;
    v103 = _Block_copy(aBlock);
  }

  v21 = v119;
  v35 = v126;
  [v62 setVisibleItemsInvalidationHandler:v103];
  _Block_release(v103);

LABEL_26:
  (*(v35 + 8))(v21, v16);
  return v62;
}

uint64_t sub_100584100(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100584168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100584190@<X0>(char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a13@<D6>, double a14@<D7>, double a15, double a16)
{
  v94 = a5;
  v97 = a2;
  v98 = a4;
  v96 = a3;
  v100 = a13;
  v101 = a14;
  v99 = a6;
  v86 = sub_10074E4F4();
  v78 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100751BC4();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v92 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10074F6E4();
  v90 = *(v18 - 8);
  v91 = v18;
  __chkstk_darwin(v18);
  v84 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v89 = &v78 - v21;
  __chkstk_darwin(v22);
  v83 = &v78 - v23;
  v24 = sub_10074EA34();
  v95 = *(v24 - 8);
  __chkstk_darwin(v24);
  v79 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v78 - v27;
  v82 = sub_10074DBB4();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10074E984();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  __chkstk_darwin(v34);
  v93 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v78 - v37;
  sub_100016B4C(v97, &v78 - v37, &unk_10093D6E0, &unk_1007A6080);
  v39 = *(v34 + 48);
  v97 = v38;
  sub_100016B4C(v96, &v38[v39], &unk_10093D6E0, &unk_1007A6080);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  sub_1007525B4();

  v96 = v31;
  v40 = (*(v31 + 88))(v33, v30);
  if (v40 == enum case for Shelf.ContentType.action(_:))
  {
    swift_getKeyPath();
    sub_1007525B4();

    v41 = v95;
    if ((*(v95 + 88))(v28, v24) == enum case for Shelf.ContentsMetadata.searchLandingTrendingSection(_:))
    {
      (*(v41 + 96))(v28, v24);
      v42 = v81;
      v43 = v80;
      v44 = v82;
      (*(v81 + 32))(v80, v28, v82);
      v45 = sub_10074DBA4();
      swift_getKeyPath();
      sub_1007525B4();

      v47 = v90;
      v46 = v91;
      v48 = &enum case for PageGrid.Direction.horizontal(_:);
      if (!v102)
      {
        v48 = &enum case for PageGrid.Direction.vertical(_:);
      }

      v49 = v83;
      (*(v90 + 104))(v83, *v48, v91);
      v50 = v92;
      sub_1007455F4();
      v51 = sub_100751BA4();
      (*(v87 + 8))(v50, v88);
      if (v51 & 1) != 0 && (sub_100745614())
      {
        v45 = 1;
      }

      (*(v47 + 16))(v89, v49, v46);
      sub_1005E8108(v45);
      sub_10074F6B4();
      (*(v47 + 8))(v49, v46);
      (*(v42 + 8))(v43, v44);
LABEL_24:
      v72 = &qword_100923228;
      v73 = &unk_1007AB120;
      v71 = v97;
      return sub_10000C8CC(v71, v72, v73);
    }

    (*(v41 + 8))(v28, v24);
    v64 = v93;
    v102 = v94;
    v65 = v97;
    sub_100016B4C(v97, v93, &qword_100923228, &unk_1007AB120);
    v66 = *(v34 + 48);
    sub_1000E1F2C();
  }

  else
  {
    v52 = v95;
    if (v40 != enum case for Shelf.ContentType.searchChartsAndCategories(_:))
    {
      v67 = v93;
      v102 = v94;
      v68 = v97;
      sub_100016B4C(v97, v93, &qword_100923228, &unk_1007AB120);
      v69 = *(v34 + 48);
      sub_1000E1F2C();
      sub_100745684();
      sub_10000C8CC(v68, &qword_100923228, &unk_1007AB120);
      sub_10000C8CC(v67 + v69, &unk_10093D6E0, &unk_1007A6080);
      sub_10000C8CC(v67, &unk_10093D6E0, &unk_1007A6080);
      return (*(v96 + 8))(v33, v30);
    }

    swift_getKeyPath();
    v53 = v79;
    sub_1007525B4();

    if ((*(v52 + 88))(v53, v24) == enum case for Shelf.ContentsMetadata.searchLandingChartsAndCategoriesSection(_:))
    {
      (*(v52 + 96))(v53, v24);
      v54 = v78;
      (*(v78 + 32))(v85, v53, v86);
      swift_getKeyPath();
      sub_1007525B4();

      v56 = v90;
      v55 = v91;
      v57 = &enum case for PageGrid.Direction.horizontal(_:);
      if (!v102)
      {
        v57 = &enum case for PageGrid.Direction.vertical(_:);
      }

      (*(v90 + 104))(v84, *v57, v91);
      v58 = v92;
      sub_1007455F4();
      v59 = sub_100751BA4();
      v60 = *(v87 + 8);
      v61 = v58;
      v62 = v88;
      v60(v61, v88);
      if (v59)
      {
        v63 = 1;
      }

      else
      {
        v63 = sub_10074E4E4();
      }

      v74 = v92;
      sub_1007455F4();
      v75 = sub_100751BA4();
      v60(v74, v62);
      if (v75 & 1) != 0 && (sub_100745614())
      {
        v63 = 1;
      }

      v76 = v85;
      v77 = v84;
      (*(v56 + 16))(v89, v84, v55);
      sub_10005672C(v63);
      sub_10074F6B4();
      (*(v56 + 8))(v77, v55);
      (*(v54 + 8))(v76, v86);
      goto LABEL_24;
    }

    (*(v52 + 8))(v53, v24);
    v64 = v93;
    v102 = v94;
    v65 = v97;
    sub_100016B4C(v97, v93, &qword_100923228, &unk_1007AB120);
    v66 = *(v34 + 48);
    sub_1000E1F2C();
  }

  sub_100745684();
  sub_10000C8CC(v65, &qword_100923228, &unk_1007AB120);
  sub_10000C8CC(v64 + v66, &unk_10093D6E0, &unk_1007A6080);
  v71 = v64;
  v72 = &unk_10093D6E0;
  v73 = &unk_1007A6080;
  return sub_10000C8CC(v71, v72, v73);
}

uint64_t sub_100584E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10001CBBC();

  return sub_100745684();
}

uint64_t sub_100584EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10001CBBC();

  return sub_100745674();
}

uint64_t sub_100584FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100585220();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_100585034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v29[6] = a5;
  v29[7] = a6;
  v29[5] = a4;
  *&v29[3] = a14;
  *&v29[4] = a15;
  v29[1] = a7;
  v29[2] = a1;
  v20 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v29 - v25;
  sub_100016B4C(a2, v29 - v25, &unk_10093D6E0, &unk_1007A6080);
  sub_100016B4C(a3, &v26[*(v21 + 56)], &unk_10093D6E0, &unk_1007A6080);
  v30 = *v17;
  sub_100016B4C(v26, v23, &qword_100923228, &unk_1007AB120);
  v27 = *(v21 + 56);
  sub_100745684();
  sub_10000C8CC(v26, &qword_100923228, &unk_1007AB120);
  sub_10000C8CC(&v23[v27], &unk_10093D6E0, &unk_1007A6080);
  return sub_10000C8CC(v23, &unk_10093D6E0, &unk_1007A6080);
}

unint64_t sub_100585220()
{
  result = qword_10093EF90;
  if (!qword_10093EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF90);
  }

  return result;
}

uint64_t sub_100585274@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100747524();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 104))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.trailing(_:), v4);
  sub_100747534();
  v7 = sub_100747564();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

void sub_100585388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v10 = sub_10000C518(&qword_10093E988, qword_1007CA9D8);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = v62 - v12;
  [a6 pageMarginInsets];
  [v6 setLayoutMargins:?];
  if (qword_100921850 != -1)
  {
    swift_once();
  }

  v14 = sub_1007473B4();
  v15 = sub_10000D0FC(v14, qword_10093E790);
  __chkstk_darwin(v15);
  v62[-2] = a6;
  sub_10074F4B4();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_100585E34(v13, &v7[v16]);
  swift_endAccess();
  [v7 setNeedsLayout];
  sub_10000C8CC(v13, &qword_10093E988, qword_1007CA9D8);
  if (sub_100743D64())
  {
    v17 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteView];
    v18 = sub_10074F504();
    v19 = v17[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron];
    v17[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron] = (v18 & 2) != 0;
    sub_10013F464(v19);
    v17[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLightensOnHighlight] = (sub_10074F504() & 4) != 0;
    v20 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel];
    sub_10074F514();
    v21 = sub_100753064();

    [v20 setText:v21];

    [v17 setNeedsLayout];
    v22 = sub_10074F4E4();
    if (v22)
    {
      v23 = v22;
      sub_10074F4F4();
      v24 = swift_allocObject();
      *(v24 + 16) = a3;
      *(v24 + 24) = v23;
      v25 = &v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
      v26 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
      v27 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock + 8];
      *v25 = sub_100585F10;
      *(v25 + 1) = v24;
      swift_retain_n();

      sub_1000164A8(v26, v27);
      v28 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];

      [v28 setEnabled:1];

      sub_10000C8CC(v62, &unk_100923520, &qword_1007A5A70);
    }

    else
    {
    }
  }

  else
  {
    v29 = &v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
    v30 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
    v31 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock + 8];
    *v29 = 0;
    *(v29 + 1) = 0;
    [*&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer] setEnabled:{0, sub_1000164A8(v30, v31)}];
  }

  v32 = sub_100743D34();
  if (v32)
  {
    v33 = v32;
    v34 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonView];
    sub_10074ECB4();
    if (v35)
    {
      v36 = sub_100753064();
    }

    else
    {
      v36 = 0;
    }

    [v34 setTitle:v36 forState:0];

    v37 = swift_allocObject();
    *(v37 + 16) = a3;
    *(v37 + 24) = v33;
    v38 = &v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock];
    v39 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock];
    v40 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock + 8];
    *v38 = sub_100585EA8;
    v38[1] = v37;
    swift_retain_n();

    sub_1000164A8(v39, v40);

    [v34 addTarget:v7 action:"buttonTapped" forControlEvents:64];
  }

  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v41 = v62[0];
  sub_10056E344(a6);
  v42 = sub_100743D54();
  if (!v42)
  {
    goto LABEL_27;
  }

  v43 = v42;
  v44 = v42 >> 62;
  if (v42 >> 62)
  {
    if (sub_100754664())
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:

LABEL_27:
    v56 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_riverView];
    if (!v56)
    {
      goto LABEL_30;
    }

    v57 = v56;
    v58 = sub_10074F9A4();

    *(v58 + 48) = 1;
    goto LABEL_29;
  }

LABEL_16:
  v45 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_riverView;
  v46 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_riverView];
  if (v46 && (v47 = v46, v48 = sub_10074F9A4(), v47, *(v48 + 40) = v43, , , , (v49 = *&v7[v45]) != 0))
  {
    v50 = v49;
    v51 = sub_10074F9A4();

    if (v44)
    {
      v52 = sub_100754664();
    }

    else
    {
      v52 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v51 + 48) = v52;

    v53 = *&v7[v45];
    if (v53)
    {
      goto LABEL_24;
    }
  }

  else
  {

    v53 = *&v7[v45];
    if (v53)
    {
LABEL_24:
      v54 = v53;
      v55 = sub_10074F9A4();

      *(v55 + 56) = v41;

LABEL_29:
    }
  }

LABEL_30:
  v59 = sub_100743D44();
  if (v59)
  {

    v60 = [objc_opt_self() whiteColor];
  }

  else
  {
    sub_10000D198();
    v60 = sub_100753E94();
  }

  v61 = v60;
  [*&v7[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonView] _setBackgroundColor:v60];
  [v7 setNeedsLayout];
}

uint64_t sub_100585A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000C8CC(v6, &unk_100923960, &qword_1007A6240);
  }

  sub_1003C0E00(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_100585BC4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1007473B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921850 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v9, qword_10093E790);
  __chkstk_darwin(v13);
  *(&v17 - 2) = a8;
  sub_10074F4B4();
  sub_1007473D4();
  sub_100585EC4(&qword_100928F98, &type metadata accessor for ArcadeFooterLayout, &protocol conformance descriptor for ArcadeFooterLayout);
  sub_100750D34();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t sub_100585E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093E988, qword_1007CA9D8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100585EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100585F28(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (qword_100921EC0 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  v10 = sub_1002569DC(&xmmword_1009831F0, a7, a1, a2);
  v11 = [objc_opt_self() absoluteDimension:v10];
  v12 = sub_100749A04();

  return v12;
}

uint64_t sub_10058608C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1005860D4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_artworkView);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  sub_100743384(v11, v3);

  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_displayName);
  sub_100745CB4();
  if (v5)
  {
    v6 = sub_100753064();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];

  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39LargeGameCenterPlayerCollectionViewCell_alias);
  sub_100745CC4();
  if (v8)
  {
    v9 = sub_100753064();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];
}

char *sub_1005861E4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentDidChangeHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{a1, a2, a3, a4}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentedControl] = v10;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SegmentedControlView();
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentedControl];
  v13 = v11;
  [v13 addSubview:v12];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v13;
}

id sub_10058659C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SegmentedControlView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100586644(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();

  return sub_1005867E4(v11, a8, ObjectType, a2, a3);
}

double sub_1005866A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1007454C4();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_100586A7C(v5, a3);
  }

  else
  {
    sub_10074F8A4();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
      return result;
    }

    v8 = v6;

    sub_100586C90(v8, a3);
  }

  return result;
}

double sub_1005867E4(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  sub_1007454C4();
  if (swift_dynamicCastClass())
  {

    sub_1007454A4();
    v9 = sub_10074F914();

    v10 = sub_100745484();
    v12 = v11;
    v13 = sub_1007454B4();
    v15 = v14;
    v16 = sub_100745414();
    if (qword_100920180 != -1)
    {
      swift_once();
    }

    sub_100536A04(&unk_10097D3C0, a2, a4, a5);
    v17 = type metadata accessor for AppPromotionCardView();
    sub_10019776C(v9, v10, v12, v13, v15, v16, a2, a4, a5, v17, a3);
  }

  else
  {
    sub_10074F8A4();
    if (swift_dynamicCastClass())
    {

      sub_10074F884();
      v18 = sub_10074F914();

      v19 = sub_10074F874();
      v21 = v20;
      v22 = sub_10074F894();
      v24 = v23;
      if (qword_100920180 != -1)
      {
        swift_once();
      }

      sub_100536A04(&unk_10097D3C0, a2, a4, a5);
      v25 = type metadata accessor for AppPromotionCardView();
      sub_10019776C(v18, v19, v21, v22, v24, 0, a2, a4, a5, v25, a3);
    }

    else
    {
      return 0.0;
    }
  }

  return a4;
}

double sub_100586A7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_100742934();
  if (v9)
  {
    v16[1] = v9;
    sub_10074ECD4();
    sub_100752764();
    sub_100587084(&qword_100928558, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_100752684();

    v10 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_100195594(v8, v3 + v12);
  swift_endAccess();
  v13 = sub_100745494();
  sub_1000C9098(v13, v14);
  return sub_100198804(a1, a2);
}

double sub_100586C90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_100742934();
  if (v9)
  {
    v16[1] = v9;
    sub_10074ECD4();
    sub_100752764();
    sub_100587084(&qword_100928558, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_100752684();

    v10 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC22SubscribePageExtension16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_100195594(v8, v3 + v12);
  swift_endAccess();
  v13 = sub_10074F864();
  sub_1000C9098(v13, v14);
  return sub_1001995DC(a1, a2);
}

void sub_100586EA4(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  sub_100743384(v8, a3);
  sub_1007433C4();
  sub_100587084(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100744274();
  sub_100744274();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = qword_10093CB50;
    v6 = Strong;
    v5 = [*(Strong + qword_10093CB50) layer];
    [v5 removeAllAnimations];

    [*&v6[v4] setImage:0];
    type metadata accessor for VideoView(0);
    sub_100587084(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
    sub_100744274();
  }
}

uint64_t sub_100587084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10058734C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ArticleContainerViewController.ContainerView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10058740C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ArticleContainerViewController.ContainerView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v7[OBJC_IVAR____TtCC22SubscribePageExtension30ArticleContainerViewControllerP33_BACDBA853B9C19619833ED681F77E93313ContainerView_frameUpdatedCallback];
  v5 = *&v7[OBJC_IVAR____TtCC22SubscribePageExtension30ArticleContainerViewControllerP33_BACDBA853B9C19619833ED681F77E93313ContainerView_frameUpdatedCallback];
  v6 = *&v7[OBJC_IVAR____TtCC22SubscribePageExtension30ArticleContainerViewControllerP33_BACDBA853B9C19619833ED681F77E93313ContainerView_frameUpdatedCallback + 8];
  *v4 = sub_100587C4C;
  v4[1] = v3;

  sub_1000164A8(v5, v6);

  [v2 setView:v7];
}

void sub_1005874E8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10058753C();
  }
}

void sub_10058753C()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_allowTraitCollectionOverrides] != 1 || (v2 = [v0 traitCollection], v3 = sub_1007537B4(), v2, (v3 & 1) == 0))
  {
    v15 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections];
    if ((v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections] & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  Width = CGRectGetWidth(v22);
  v15 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections];
  if (Width < 650.0 != v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections])
  {
    if (Width < 650.0)
    {
      v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_wrapperViewController];
      v17 = objc_opt_self();
      v18 = [v17 traitCollectionWithHorizontalSizeClass:2];
      [v16 setOverrideTraitCollection:v18 forChildViewController:*&v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_articleViewController]];

      v19 = 1;
      v20 = [v17 traitCollectionWithHorizontalSizeClass:1];
      [v1 setOverrideTraitCollection:v20 forChildViewController:v16];

LABEL_9:
      *v15 = v19;
      return;
    }

LABEL_8:
    v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_wrapperViewController];
    [v21 setOverrideTraitCollection:0 forChildViewController:*&v1[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_articleViewController]];
    [v1 setOverrideTraitCollection:0 forChildViewController:v21];
    v19 = 0;
    goto LABEL_9;
  }
}

void sub_100587798()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_wrapperViewController];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame:{v7, v9, v11, v13}];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  [v14 setAutoresizingMask:18];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    [v17 addSubview:v18];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_100587B48(void *a1, void *a2)
{
  v4 = type metadata accessor for ArticleContainerViewController();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_allowTraitCollectionOverrides] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_wrapperViewController] = a1;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_articleViewController] = a2;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  [v8 addChildViewController:{v6, v10.receiver, v10.super_class}];

  return v8;
}

uint64_t sub_100587C14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100587CA0()
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
  sub_100587F8C(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v22 = v26;
  sub_100754324();
  v23 = *(v0 + 8);
  v23(v2, v22);
  return (v23)(v5, v22);
}

uint64_t sub_100587F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double InAppMessagesMetricsEventRecorder.record(_:on:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3[2];
  if (v4)
  {
    v5 = v3[3];
    v6 = objc_allocWithZone(AMSMetricsEvent);
    sub_10001B5AC(v4, v5);

    v7 = sub_100753064();

    v8 = [v6 initWithTopic:v7];

    v9 = v3[4];
    if (v9)
    {
      v10 = v3[5];

      v11 = v9(v8);
      sub_1000164A8(v9, v10);
    }

    else
    {
      v11 = v8;
    }

    sub_1007529E4();
    isa = sub_100752F34().super.isa;

    [v11 addPropertiesWithDictionary:isa];

    v15 = [v11 underlyingDictionary];
    v16 = sub_100752F44();

    sub_100588340(v16);
    v18 = v17;

    if (v18)
    {
      v19 = objc_allocWithZone(IAMFigaroEvent);
      v20 = sub_100752F34().super.isa;

      v21 = [v19 initWithFigaroEventProperties:v20];

      v4(v21);
    }

    else
    {
    }

    return sub_1000164A8(v4, v5);
  }

  else
  {
    if (qword_100921D98 != -1)
    {
      swift_once();
    }

    v12 = sub_100752E44();
    sub_10000D0FC(v12, qword_100982F20);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();
  }

  return result;
}

void sub_100588340(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000C518(&qword_100934890, qword_1007BC158);
    v2 = sub_1007546B4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_100066198(*(a1 + 48) + 40 * v11, v27);
    sub_10000C5B4(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_100066198(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_10000C5B4(v25 + 8, v20);
    sub_100588744(v24);
    v21 = v18;
    sub_10000C610(v20, v22);
    v12 = v21;
    sub_10000C610(v22, v23);
    sub_10000C610(v23, &v21);
    v13 = sub_1003861D0(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      sub_10000C620(v9);
      sub_10000C610(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_10000C610(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_100588744(v24);
}

double InAppMessagesMetricsEventRecorder.withDecorator(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1000164A8(v5, v4);

  return result;
}

uint64_t *InAppMessagesMetricsEventRecorder.deinit()
{
  sub_1000164A8(v0[2], v0[3]);
  sub_1000164A8(v0[4], v0[5]);
  return v0;
}

uint64_t InAppMessagesMetricsEventRecorder.__deallocating_deinit()
{
  sub_1000164A8(v0[2], v0[3]);
  sub_1000164A8(v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t sub_100588744(uint64_t a1)
{
  v2 = sub_10000C518(&qword_10093F1E8, &qword_1007CB500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005887B0()
{
  result = qword_10093F1F0;
  if (!qword_10093F1F0)
  {
    type metadata accessor for LargeLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F1F0);
  }

  return result;
}

double sub_100588808()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747BA4();
  sub_100747B84();
  sub_10074F674();
  v5 = v4;
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  swift_getObjectType();
  v8 = swift_unknownObjectRetain();
  sub_100253750(v8, v5, v7);
  v10 = v9;
  swift_unknownObjectRelease_n();
  return v10;
}

uint64_t sub_100588930(uint64_t a1)
{
  v29 = sub_10038664C(_swiftEmptyArrayStorage);
  v2 = *(a1 + 16);
  if (!v2)
  {
    return a1;
  }

  v3 = 0;
  while (v3 < *(a1 + 16))
  {
    v4 = *(a1 + 32 + 8 * v3);
    if (!*(v4 + 16))
    {
      goto LABEL_5;
    }

    v5 = sub_1003861D0(0x6973736572706D69, 0xEC00000064496E6FLL);
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_10000C5B4(*(v4 + 56) + 32 * v5, v32);
    sub_10000C610(v32, v33);
    if (!*(v4 + 16) || (v7 = sub_1003861D0(1701667182, 0xE400000000000000), (v8 & 1) == 0) || (sub_10000C5B4(*(v4 + 56) + 32 * v7, v32), !swift_dynamicCast()))
    {
      sub_10000C620(v33);
LABEL_4:

      goto LABEL_5;
    }

    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    sub_1007545F4();
    v10 = *(&v32[0] + 1);
    v9 = *&v32[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[0] = v29;
    v28 = v9;
    v13 = sub_1003861D0(v9, v10);
    v14 = *(v29 + 16);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_25;
    }

    v17 = v12;
    if (*(v29 + 24) >= v16)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1006758BC();
      }
    }

    else
    {
      sub_1006713AC(v16, isUniquelyReferenced_nonNull_native);
      v18 = sub_1003861D0(v28, v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_27;
      }

      v13 = v18;
    }

    v20 = *&v32[0];
    v29 = *&v32[0];
    if (v17)
    {
      v21 = (*(*&v32[0] + 56) + 16 * v13);
      *v21 = v30;
      v21[1] = v31;
    }

    else
    {
      *(*&v32[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v22 = (v20[6] + 16 * v13);
      *v22 = v28;
      v22[1] = v10;
      v23 = (v20[7] + 16 * v13);
      *v23 = v30;
      v23[1] = v31;
      v24 = v20[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      v20[2] = v26;
    }

    sub_10000C620(v33);

LABEL_5:
    if (v2 == ++v3)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1007547B4();
  __break(1u);
  return result;
}

uint64_t sub_100588C28(uint64_t a1, uint64_t a2)
{
  sub_100032C04(a1, &v8);
  if (v9)
  {
    sub_10000C610(&v8, v10);
    *&v8 = 0;
    *(&v8 + 1) = 0xE000000000000000;
    sub_1007545F4();
    if (*(a2 + 16))
    {
      v3 = sub_1003861D0(v8, *(&v8 + 1));
      v5 = v4;

      if (v5)
      {
        v6 = *(*(a2 + 56) + 16 * v3);

        sub_10000C620(v10);
        return v6;
      }
    }

    else
    {
    }

    sub_10000C620(v10);
  }

  else
  {
    sub_1000277BC(&v8);
  }

  return 0;
}

uint64_t sub_100588D1C(char *a1)
{
  v3 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v3 - 8);
  v5 = v55 - v4;
  v6 = sub_100750534();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v66 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v55 - v10;
  if (qword_1009218F0 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v12 = sub_10000C518(&qword_100923C40, &qword_1007B5CB0);
    sub_10000D0FC(v12, qword_10093F248);
    v71 = v1;
    v13 = v1;
    sub_100743464();

    v14 = *&v13[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel];
    name = v7[1].name;
    v65 = v7 + 1;
    v63 = name;
    (name)(v5, v11, v6);
    attr = v7[3].attr;
    p_attr = &v7[3].attr;
    v62 = attr;
    (attr)(v5, 0, 1, v6);
    v67 = v5;
    sub_100745BA4();
    if (qword_1009218D8 != -1)
    {
      swift_once();
    }

    v17 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
    v18 = sub_10000D0FC(v17, qword_10093F200);
    v70 = v13;
    v19 = v13;
    v61 = v18;
    sub_100743464();

    [v14 setTextAlignment:v71];
    sub_100744B64();
    v56 = v11;
    v57 = v7;
    if (v20)
    {
      v21 = sub_100753064();
    }

    else
    {
      v21 = 0;
    }

    [v14 setText:v21];

    v22 = *&v19[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView];
    v23 = sub_100744B44();
    sub_1002E2144(v23);

    if (qword_1009218E8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v12, qword_10093F230);
    v71 = v19;
    v24 = v19;
    v25 = v66;
    sub_100743464();

    v26 = *&v24[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_textLabel];
    v27 = v67;
    (v63)(v67, v25, v6);
    (v62)(v27, 0, 1, v6);
    sub_100745BA4();
    v70 = v24;
    v28 = v24;
    sub_100743464();

    [v26 setTextAlignment:v71];
    sub_100744B54();
    if (v29)
    {
      v30 = sub_100753064();
    }

    else
    {
      v30 = 0;
    }

    [v26 setText:v30];

    sub_100744BB4();
    sub_100744B94();
    v31 = sub_1007532D4();

    if ((v31 & 1) != 0 && (v32 = [v28 traitCollection], v33 = sub_100753804(), v32, (v33 & 1) == 0))
    {
      v35 = 4;
      v34 = 1;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    [v26 setNumberOfLines:v34];
    [v26 setLineBreakMode:v35];
    v36 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
    swift_beginAccess();
    v59 = v36;
    v60 = a1;
    v1 = *(v28 + v36);
    v58 = v6;
    v55[1] = v17;
    if (v1 >> 62)
    {
      v37 = sub_100754664();
    }

    else
    {
      v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = &stru_1008F2000;
    if (v37)
    {
      v11 = 0;
      v5 = (v1 & 0xC000000000000001);
      v6 = (v1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v5)
        {
          v38 = sub_100754574();
        }

        else
        {
          if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v38 = *(v1 + 8 * v11 + 32);
        }

        v39 = v38;
        a1 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_49;
        }

        [v38 removeFromSuperview];

        ++v11;
      }

      while (a1 != v37);
    }

    v5 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
    swift_beginAccess();
    v1 = *&v5[v28];
    if (v1 >> 62)
    {
      v40 = sub_100754664();
    }

    else
    {
      v40 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v40)
    {
      v11 = 0;
      v6 = (v1 & 0xC000000000000001);
      a1 = (v1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v6)
        {
          v41 = sub_100754574();
        }

        else
        {
          if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v41 = *(v1 + 8 * v11 + 32);
        }

        v42 = v41;
        v43 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_51;
        }

        [v41 removeFromSuperview];

        ++v11;
      }

      while (v43 != v40);
    }

    v6 = _swiftEmptyArrayStorage;
    *(v28 + v59) = _swiftEmptyArrayStorage;

    *&v5[v28] = _swiftEmptyArrayStorage;

    v44 = sub_100744BB4();
    v1 = v44;
    if (!(v44 >> 62))
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a1 = v67;
      if (!v45)
      {
        break;
      }

      goto LABEL_40;
    }

    v45 = sub_100754664();
    a1 = v67;
    if (!v45)
    {
      break;
    }

LABEL_40:
    v11 = 0;
    v7 = (v1 & 0xC000000000000001);
    v5 = (v1 & 0xFFFFFFFFFFFFFF8);
    while (v7)
    {
      v46 = sub_100754574();
      v6 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        goto LABEL_48;
      }

LABEL_44:
      v69 = v46;
      sub_10058C0D4(&v69, v28, v47);

      ++v11;
      if (v6 == v45)
      {
        goto LABEL_58;
      }
    }

    if (v11 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v46 = *(v1 + 8 * v11 + 32);

    v6 = (v11 + 1);
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_44;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

LABEL_58:

  v48 = *(v28 + OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v49 = v66;
  v50 = v58;
  (v63)(a1, v66, v58);
  (v62)(a1, 0, 1, v50);
  sub_100745BA4();
  v68[0] = v28;
  v51 = v28;
  sub_100743464();

  [v48 setTextAlignment:v69];
  v52 = sub_10058B5A0(v60, v51);
  [v48 setAttributedText:v52];

  [v51 setNeedsLayout];
  v53 = v57->attr;
  (v53)(v49, v50);
  return (v53)(v56, v50);
}

uint64_t sub_1005895A4()
{
  v0 = sub_10074A614();
  sub_100039C50(v0, qword_100982658);
  sub_10000D0FC(v0, qword_100982658);
  return sub_10074A604();
}

uint64_t sub_100589678(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_100039C50(v5, a2);
  sub_10000D0FC(v5, a2);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

double sub_10058971C()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&qword_100923C40, &qword_1007B5CB0);
  sub_100039C50(v7, qword_10093F230);
  sub_10000D0FC(v7, qword_10093F230);
  if (qword_1009210B8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100980F60);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_1009210B0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_100980F48);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
  return result;
}

double sub_1005898FC()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&qword_100923C40, &qword_1007B5CB0);
  sub_100039C50(v7, qword_10093F248);
  sub_10000D0FC(v7, qword_10093F248);
  if (qword_1009210C8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100980F90);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_1009210C0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_100980F78);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
  return result;
}

char *sub_100589ADC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels] = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView(0);
  *&v4[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_textLabel] = v12;
  v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel] = v13;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView]];
  v19 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel;
  [*&v18[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel] setNumberOfLines:0];
  v20 = qword_1009218D8;
  v21 = *&v18[v19];
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_10000D0FC(v22, qword_10093F200);
  v23 = v18;
  sub_100743464();

  [v21 setTextAlignment:{v31, v18}];
  [v23 addSubview:*&v18[v19]];
  v24 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_textLabel;
  [*&v23[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_textLabel] setNumberOfLines:0];
  v25 = *&v23[v24];
  v26 = v23;
  v27 = v25;
  sub_100743464();

  [v27 setTextAlignment:{v31, v23}];
  [v26 addSubview:*&v23[v24]];
  v28 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel;
  [*&v26[OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel] setNumberOfLines:0];
  v29 = *&v26[v28];
  sub_100743464();

  [v29 setTextAlignment:{v31, v26}];
  [v26 addSubview:*&v26[v28]];

  return v26;
}

uint64_t sub_100589E9C()
{
  v1 = sub_10074A614();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1009218D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v1, qword_100982658);
  (*(v2 + 16))(v4, v5, v1);
  v6 = *(v0 + OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingTextLabel);
  v7 = sub_100745C84();
  v29 = v7;
  v30 = &protocol witness table for UILabel;
  v28 = v6;
  v8 = *(v0 + OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_headingArtworkView);
  v26 = type metadata accessor for AnnotationImagesView(0);
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UILabel;
  v25 = v8;
  v9 = *(v0 + OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_textLabel);
  v10 = *(v0 + OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_listTextLabel);
  v23 = v7;
  v21 = &protocol witness table for UILabel;
  v22 = v9;
  v20 = v7;
  v19 = v10;
  swift_beginAccess();
  v11 = v6;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  sub_1001588F4(v15);

  swift_beginAccess();

  sub_1001588F4(v16);

  return sub_10074A624();
}

void *sub_10058A3C4(void *a1, uint64_t a2, void (*a3)(uint64_t *, void, uint64_t), double a4, double a5)
{
  v120 = a3;
  v117 = a2;
  v103 = sub_10074A614();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v116 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10074A634();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074CD14();
  v119 = *(v10 - 8);
  __chkstk_darwin(v10);
  v106 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v105 = &v99 - v13;
  __chkstk_darwin(v14);
  v104 = &v99 - v15;
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v109 = sub_100750534();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v118 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v99 - v21;
  if (qword_1009218E8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000C518(&qword_100923C40, &qword_1007B5CB0);
  sub_10000D0FC(v23, qword_10093F230);
  v131 = a1;
  sub_100743464();
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  ObjectType = swift_getObjectType();
  v25 = [a1 traitCollection];
  v107 = v22;
  v126 = sub_100753C14();

  if (qword_1009218F0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v23, qword_10093F248);
  v131 = a1;
  sub_100743464();
  v26 = [a1 traitCollection];
  v100 = sub_100753C14();

  v27 = v120;
  v28 = sub_100744B44();
  sub_1002E36C0(v28, a1, a4, a5);

  v101 = sub_100750F34();
  swift_allocObject();
  v29 = sub_100750F04();
  sub_100744B44();
  sub_10074F3D4();
  sub_1007532D4();

  sub_100750EE4();
  v113 = ObjectType;
  v125 = sub_10058B510(v30, v27, a1);
  v31 = sub_100744BB4();
  if (v31 >> 62)
  {
    v72 = v31;
    v32 = sub_100754664();
    v31 = v72;
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v127 = v10;
  v115 = a1;
  v114 = v29;
  if (v32)
  {
    v33 = v31;
    v130[0] = _swiftEmptyArrayStorage;
    result = sub_10001E79C(0, v32 & ~(v32 >> 63), 0);
    if (v32 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v35 = 0;
    v36 = v130[0];
    v123 = (v33 & 0xC000000000000001);
    LODWORD(v122) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v37 = (v119 + 8);
    v124 = v33;
    v38 = v32;
    do
    {
      if (v123)
      {
        sub_100754574();
      }

      else
      {
      }

      sub_100744B74();
      v39 = sub_10074F3F4();
      v132 = v39;
      v133 = sub_10058C284(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v40 = sub_10000D134(&v131);
      (*(*(v39 - 8) + 104))(v40, v122, v39);
      v41 = v126;
      sub_10074FC74();
      sub_10000C620(&v131);
      sub_10074CD04();
      sub_10074CCE4();

      (*v37)(v18, v127);
      v130[0] = v36;
      v43 = *(v36 + 16);
      v42 = *(v36 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_10001E79C((v42 > 1), v43 + 1, 1);
      }

      ++v35;
      v44 = v132;
      v45 = v133;
      v46 = sub_10007271C(&v131, v132);
      v47 = __chkstk_darwin(v46);
      v49 = &v99 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v50 + 16))(v49, v47);
      sub_10058BCBC(v43, v49, v130, v44, v45);
      sub_10000C620(&v131);
      v36 = v130[0];
    }

    while (v38 != v35);

    v51 = v119;
    v27 = v120;
  }

  else
  {

    v51 = v119;
  }

  v52 = sub_100744BB4();
  if (v52 >> 62)
  {
    v73 = v52;
    v53 = sub_100754664();
    v52 = v73;
    if (v53)
    {
LABEL_20:
      v54 = v52;
      v130[0] = _swiftEmptyArrayStorage;
      result = sub_10001E79C(0, v53 & ~(v53 >> 63), 0);
      if ((v53 & 0x8000000000000000) == 0)
      {
        v123 = v18;
        v55 = 0;
        v56 = v130[0];
        v122 = v54 & 0xC000000000000001;
        v121 = enum case for Feature.measurement_with_labelplaceholder(_:);
        v57 = (v51 + 8);
        v124 = v54;
        do
        {
          if (v122)
          {
            sub_100754574();
          }

          else
          {
          }

          sub_100744B84();
          v58 = sub_10074F3F4();
          v132 = v58;
          v133 = sub_10058C284(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v59 = sub_10000D134(&v131);
          (*(*(v58 - 8) + 104))(v59, v121, v58);
          v60 = v126;
          sub_10074FC74();
          sub_10000C620(&v131);
          v61 = v123;
          sub_10074CD04();
          sub_10074CCE4();

          (*v57)(v61, v127);
          v130[0] = v56;
          v63 = *(v56 + 16);
          v62 = *(v56 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_10001E79C((v62 > 1), v63 + 1, 1);
          }

          ++v55;
          v64 = v132;
          v65 = v133;
          v66 = sub_10007271C(&v131, v132);
          v67 = __chkstk_darwin(v66);
          v69 = &v99 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v70 + 16))(v69, v67);
          sub_10058BCBC(v63, v69, v130, v64, v65);
          sub_10000C620(&v131);
          v56 = v130[0];
        }

        while (v53 != v55);

        v71 = v116;
        v27 = v120;
        goto LABEL_32;
      }

LABEL_38:
      __break(1u);
      return result;
    }
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
      goto LABEL_20;
    }
  }

  v71 = v116;
LABEL_32:
  v122 = sub_10058B5A0(v27, v115);
  if (qword_1009218D0 != -1)
  {
    swift_once();
  }

  v74 = v103;
  v75 = sub_10000D0FC(v103, qword_100982658);
  (*(v102 + 16))(v71, v75, v74);
  sub_100744B64();
  v76 = sub_10074F3F4();
  v132 = v76;
  v124 = sub_10058C284(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v133 = v124;
  v77 = sub_10000D134(&v131);
  v78 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v79 = *(*(v76 - 8) + 104);
  v79(v77, enum case for Feature.measurement_with_labelplaceholder(_:), v76);
  v80 = v100;
  sub_10074FC74();
  sub_10000C620(&v131);
  v81 = v104;
  v123 = v80;
  sub_10074CD04();
  sub_10074CCE4();
  v82 = *(v119 + 8);
  v83 = v81;
  v84 = v127;
  v82(v83, v127);
  v130[3] = v101;
  v130[4] = &protocol witness table for LayoutViewPlaceholder;
  v130[0] = v114;

  sub_100744B54();
  v119 = v85;
  v129[3] = v76;
  v129[4] = v124;
  v86 = sub_10000D134(v129);
  v121 = v78;
  v87 = v78;
  v88 = v82;
  v120 = v79;
  v79(v86, v87, v76);
  v89 = v126;
  sub_10074FC74();
  sub_10000C620(v129);
  v90 = v105;
  sub_10074CD04();
  sub_10074CCE4();
  v88(v90, v84);
  v91 = v122;
  if (!v122)
  {
    [objc_allocWithZone(NSAttributedString) init];
  }

  v128[3] = v76;
  v128[4] = v124;
  v92 = sub_10000D134(v128);
  v120(v92, v121, v76);
  v93 = v91;
  v94 = v89;
  sub_10074FC74();
  sub_10000C620(v128);
  v95 = v106;
  sub_10074CCD4();
  sub_10074CCE4();
  v88(v95, v127);
  v96 = v110;
  sub_10074A624();
  sub_10074A5E4();

  (*(v111 + 8))(v96, v112);
  v97 = *(v108 + 8);
  v98 = v109;
  v97(v118, v109);
  return (v97)(v107, v98);
}

uint64_t sub_10058B510(__n128 a1, uint64_t a2, void *a3)
{
  sub_100744BB4();
  sub_100744B94();
  v4 = sub_1007532D4();

  if (v4)
  {
    v5 = [a3 traitCollection];
    v6 = sub_100753804();

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id sub_10058B5A0(uint64_t a1, void *a2)
{
  v3 = sub_100741574();
  v45 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100754724();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100750B04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100744BA4();
  if (!v16)
  {
    return 0;
  }

  v40 = v15;
  v39 = v3;
  v41 = v16;
  v38[1] = a2;
  v17 = [a2 traitCollection];
  v18 = sub_1007537F4();

  if (v18)
  {
    v50[0] = v40;
    v50[1] = v41;
    v48 = 161644770;
    v49 = 0xA400000000000000;
    v46 = 0x208F80E2A280E2;
    v47 = 0xA700000000000000;
    sub_1000D5C0C();
    sub_1007542F4();

    v19 = objc_allocWithZone(NSAttributedString);
    v20 = sub_100753064();

    v21 = [v19 initWithString:v20];
  }

  else
  {
    if (qword_1009210B8 != -1)
    {
      swift_once();
    }

    v22 = sub_100750534();
    v23 = sub_10000D0FC(v22, qword_100980F60);
    (*(*(v22 - 8) + 16))(v10, v23, v22);
    (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
    v50[3] = v7;
    v50[4] = &protocol witness table for FontSource;
    v24 = sub_10000D134(v50);
    (*(v8 + 16))(v24, v10, v7);
    sub_100750B14();
    (*(v8 + 8))(v10, v7);
    sub_1007502D4();
    sub_100750564();
    v26 = v25;
    (*(v42 + 8))(v6, v43);
    (*(v12 + 8))(v14, v11);
    v27 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v27 setFirstLineHeadIndent:0.0];
    [v27 setHeadIndent:v26];
    [v27 setDefaultTabInterval:v26];
    sub_100016C60(0, &unk_10093F2C0, NSTextTab_ptr);
    isa = sub_100753294().super.isa;
    [v27 setTabStops:isa];

    [v27 setParagraphSpacing:0.0];
    v29 = v44;
    sub_100741544();
    sub_1007414F4();
    v31 = v30;
    (*(v45 + 8))(v29, v39);
    [v27 setLineHeightMultiple:v31];
    sub_10000C518(&unk_100929CA0, &qword_1007A6610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = NSParagraphStyleAttributeName;
    *(inited + 64) = sub_100016C60(0, &qword_10093F2D0, NSMutableParagraphStyle_ptr);
    *(inited + 40) = v27;
    v33 = NSParagraphStyleAttributeName;
    v34 = v27;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_100168AA4(inited + 32);
    v35 = objc_allocWithZone(NSAttributedString);
    v36 = sub_100753064();

    type metadata accessor for Key(0);
    sub_10058C284(&qword_1009276F0, type metadata accessor for Key, &unk_1007A543C);
    v20 = sub_100752F34().super.isa;

    v21 = [v35 initWithString:v36 attributes:v20];
  }

  return v21;
}

uint64_t sub_10058BCBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10000D134(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100032CCC(&v12, v10 + 40 * a1 + 32);
}

id sub_10058BD54(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_100750534();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a4 traitCollection];
  v15 = sub_100753804();

  if (qword_1009218E8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000C518(&qword_100923C40, &qword_1007B5CB0);
  sub_10000D0FC(v16, qword_10093F230);
  v26 = a4;
  sub_100743464();
  if ((v15 | a3))
  {
    if (qword_1009218D8 != -1)
    {
      swift_once();
    }

    v17 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
    v18 = qword_10093F200;
  }

  else
  {
    if (qword_1009218E0 != -1)
    {
      swift_once();
    }

    v17 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
    v18 = qword_10093F218;
  }

  sub_10000D0FC(v17, v18);
  v25 = a4;
  sub_100743464();
  v19 = v26;
  sub_100745C84();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v10 + 16))(v8, v13, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_100745BA4();
  v21 = v20;
  [v21 setNumberOfLines:(v15 & 1) == 0];
  if (v15)
  {
    v22 = 0;
  }

  else
  {
    v22 = 4;
  }

  [v21 setLineBreakMode:v22];

  [v21 setTextAlignment:v19];
  v23 = sub_100753064();
  [v21 setText:v23];

  (*(v10 + 8))(v13, v9);
  return v21;
}

void sub_10058C0D4(uint64_t a1, char *a2, __n128 a3)
{
  v4 = sub_100744B74();
  v6 = sub_10058BD54(v4, v5, 1, a2);

  v7 = sub_100744B84();
  v9 = sub_10058BD54(v7, v8, 1, a2);

  v10 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_leadingPairLabels;
  swift_beginAccess();
  v11 = v6;
  sub_100753284();
  if (*((*&a2[v10] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  swift_endAccess();
  v12 = OBJC_IVAR____TtCC22SubscribePageExtension28AnnotationCollectionViewCell8ItemView_trailingPairLabels;
  swift_beginAccess();
  v13 = v9;
  sub_100753284();
  if (*((*&a2[v12] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  swift_endAccess();
  [a2 addSubview:v11];
  [a2 addSubview:v13];
}

uint64_t sub_10058C284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10058C2CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100747524();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  v7 = v12[1];
  v8 = sub_1007537E4();

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    (*(v4 + 104))(v6, enum case for ComponentSeparator.Position.bottom(_:), v3);
    sub_100747534();
    v9 = 0;
  }

  v10 = sub_100747564();
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

double UITextView.firstBaselineFromTop.getter()
{
  v1 = [v0 layoutManager];
  [v1 baselineOffsetForGlyphAtIndex:0];
  v3 = v2;

  return v3;
}

CGFloat UITextView.lastBaselineFromBottom.getter()
{
  v1 = [v0 layoutManager];
  v2 = [v0 textContainer];
  [v1 usedRectForTextContainer:v2];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetMaxY(*&v11);
}

double sub_10058C684(uint64_t a1, __n128 a2)
{
  sub_1007544D4();
  v3 = sub_100753174();
  v4 = *(v2 + 72);
  if (v4 && (v4(v3), v5))
  {
    sub_100754854(1u);
    sub_100753174();
  }

  else
  {
    sub_100754854(0);
  }

  return result;
}

uint64_t sub_10058C728(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v2 = v1;
  if ((sub_1007544C4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PromptActionDebugSetting();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  if (*(result + 56) != v1[7] || *(result + 64) != v1[8])
  {
    v5 = result;
    v6 = sub_100754754();
    result = v5;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(result + 72);
  if (!v7)
  {
    v17 = v2[9];

    if (!v17)
    {
      goto LABEL_25;
    }

    v17(v18);
    v16 = v19;
    goto LABEL_18;
  }

  v9 = v7(v8);
  v11 = v10;
  v12 = v2[9];
  if (!v12)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v13 = v9;
  v14 = v12();
  v16 = v15;
  if (!v11)
  {
LABEL_18:

    if (!v16)
    {
      return 1;
    }

    goto LABEL_22;
  }

  if (!v15)
  {
LABEL_21:

LABEL_22:

    return 0;
  }

  if (v13 == v14 && v11 == v15)
  {

LABEL_25:

    return 1;
  }

  v20 = sub_100754754();

  return v20 & 1;
}

double sub_10058C904()
{

  sub_1000164A8(*(v0 + 72), *(v0 + 80));

  return result;
}

uint64_t sub_10058C93C()
{
  sub_100016994(v0 + 16);

  sub_1000164A8(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_10058C9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_100741494();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  sub_10001B5AC(a3, a4);

  sub_100741484();
  v18 = sub_100741464();
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  v23[1] = v18;
  v23[2] = v20;
  sub_1007544E4();
  v21 = v25;
  *(v7 + 16) = v24;
  *(v7 + 32) = v21;
  *(v7 + 48) = v26;
  return v7;
}

id sub_10058CB30()
{
  v1 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v11 - v3;
  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26TapActionGestureRecognizer_objectGraph];
    v8 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    sub_1007526C4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_100052F00(v4);
    }

    else
    {

      sub_1003C0E00(v10, 1, v7, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

id sub_10058CDC4(__n128 a1)
{
  v2 = sub_1007453C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v19[-v7];
  v9 = sub_100745374();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 104))(v13, enum case for BreakoutDetails.TextAlignment.center(_:), v9, v11);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  (*(v10 + 40))(v1 + v14, v13, v9);
  swift_endAccess();
  (*(v3 + 104))(v8, enum case for BreakoutDetails.Badge.none(_:), v2);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v15, v2);
  swift_beginAccess();
  (*(v3 + 24))(v1 + v15, v8, v2);
  swift_endAccess();
  sub_1005900E0(v5, v16);
  v17 = *(v3 + 8);
  v17(v5, v2);
  v17(v8, v2);
  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel) setText:0];
  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel) setText:0];
  return [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton) setTitle:0 forState:0];
}

uint64_t sub_10058D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v5 = sub_10000C518(&qword_10093F598, &qword_1007D5390);
  __chkstk_darwin(v5 - 8);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_10000C518(&qword_100935130, qword_1007BDC20);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  sub_100016B4C(a1, v12, &qword_100935130, qword_1007BDC20);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000C8CC(v12, &qword_100935130, qword_1007BDC20);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    v20 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
    swift_beginAccess();
    (*(v14 + 24))(v3 + v20, v16, v13);
    swift_endAccess();
    sub_10058EF24();
    v21 = *(v14 + 8);
    v21(v16, v13);
    v21(v19, v13);
  }

  v22 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v23 = sub_100745374();
  (*(*(v23 - 8) + 24))(v3 + v22, v30, v23);
  swift_endAccess();
  v24 = sub_100745394();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v9, v31, v24);
  (*(v25 + 56))(v9, 0, 1, v24);
  v26 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v27 = v32;
  sub_100016B4C(v3 + v26, v32, &qword_10093F598, &qword_1007D5390);
  swift_beginAccess();
  sub_100593BF8(v9, v3 + v26);
  swift_endAccess();
  sub_100591E7C(v27);
  sub_10000C8CC(v27, &qword_10093F598, &qword_1007D5390);
  sub_10000C8CC(v9, &qword_10093F598, &qword_1007D5390);
  sub_10058EF24();
  return sub_100590CD4();
}

uint64_t sub_10058D4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v7 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v7 - 8);
  v76 = &v62 - v8;
  v9 = sub_100750534();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v70 = &v62 - v13;
  __chkstk_darwin(v14);
  v69 = &v62 - v15;
  v16 = sub_100749184();
  v79 = *(v16 - 8);
  v80 = v16;
  __chkstk_darwin(v16);
  v77 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v78 = &v62 - v19;
  v20 = sub_100750304();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for BreakoutDetailsView.Config(0);
  v84 = v9;
  v85 = v24;
  v25 = *(a1 + *(v24 + 92));
  v72 = v10;
  v26 = v24;
  v27 = *(v24 + 40);
  if (v25)
  {
    v28 = *(v10 + 16);
    v83 = v10 + 16;
    v74 = v28;
    v28(v23, a1 + v27, v9);
    LODWORD(v73) = enum case for FontSource.useCase(_:);
    v68 = v21[13];
    v66 = v20;
    v68(v23);
    v67 = sub_10074B2B4();
    v100 = v67;
    v75 = sub_100594204(&unk_10093F5D0, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
    v101 = v75;
    sub_10000D134(v99);
    v82 = v21 + 13;
    v65 = v25;
    sub_10074B2A4();
    v29 = v74;
    v74(v23, a1 + v26[13], v84);
    v30 = v26;
    v31 = v73;
    v32 = v68;
    (v68)(v23, v73, v20);
    v33 = v67;
    v97 = v67;
    v98 = v75;
    sub_10000D134(v96);
    v34 = v65;
    sub_10074B2A4();
    v29(v23, a1 + v30[9], v84);
    v35 = v66;
    v32(v23, v31, v66);
    v36 = v75;
    v94 = v33;
    v95 = v75;
    sub_10000D134(v93);
    v37 = v34;
    v38 = v84;
    sub_10074B2A4();
    v74(v23, a1 + v30[14], v38);
    v32(v23, v73, v35);
    v91 = v33;
    v92 = v36;
    sub_10000D134(v90);
    sub_10074B2A4();
  }

  else
  {
    v83 = a1;
    v39 = *(v10 + 16);
    v74 = (v10 + 16);
    v67 = v39;
    v39(v23, a1 + v27, v9);
    LODWORD(v75) = enum case for FontSource.useCase(_:);
    v40 = v21[13];
    v65 = v21 + 13;
    v41 = v20;
    v40(v23);
    v64 = sub_100750B04();
    v100 = v64;
    v101 = &protocol witness table for StaticDimension;
    sub_10000D134(v99);
    v97 = v20;
    v98 = &protocol witness table for FontSource;
    v42 = sub_10000D134(v96);
    v43 = v21[2];
    v73 = v21 + 2;
    v43(v42, v23, v41);
    v62 = v43;
    sub_100750B14();
    v44 = v21[1];
    v82 = v21 + 1;
    v68 = v44;
    (v44)(v23, v41);
    v45 = v67;
    v67(v23, v83 + v26[13], v84);
    v63 = v40;
    (v40)(v23, v75, v41);
    v46 = v64;
    v97 = v64;
    v98 = &protocol witness table for StaticDimension;
    sub_10000D134(v96);
    v94 = v41;
    v95 = &protocol witness table for FontSource;
    v47 = sub_10000D134(v93);
    v43(v47, v23, v41);
    sub_100750B14();
    (v68)(v23, v41);
    v45(v23, v83 + v26[9], v84);
    (v40)(v23, v75, v41);
    v94 = v46;
    v95 = &protocol witness table for StaticDimension;
    sub_10000D134(v93);
    v91 = v41;
    v92 = &protocol witness table for FontSource;
    v48 = sub_10000D134(v90);
    v49 = v62;
    v62(v48, v23, v41);
    sub_100750B14();
    v50 = v68;
    (v68)(v23, v41);
    v67(v23, v83 + v26[14], v84);
    a1 = v83;
    (v63)(v23, v75, v41);
    v91 = v64;
    v92 = &protocol witness table for StaticDimension;
    sub_10000D134(v90);
    v89[3] = v41;
    v89[4] = &protocol witness table for FontSource;
    v51 = sub_10000D134(v89);
    v49(v51, v23, v41);
    sub_100750B14();
    v50(v23, v41);
    v38 = v84;
  }

  v52 = v76;
  if ((*(a1 + v85[11] + 8) & 1) == 0)
  {
    sub_100016B4C(a1 + v85[12], v76, &unk_100928A40, qword_1007A6630);
    v53 = v72;
    if ((*(v72 + 48))(v52, 1, v38) != 1)
    {
      v56 = v69;
      (*(v53 + 32))(v69, v52, v38);
      v57 = *(v53 + 16);
      v57(v70, a1 + v85[10], v38);
      v57(v71, v56, v38);
      v55 = v78;
      sub_100749174();
      (*(v53 + 8))(v56, v38);
      v54 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.lineCountCompression(_:);
      goto LABEL_9;
    }

    sub_10000C8CC(v52, &unk_100928A40, qword_1007A6630);
  }

  v54 = &enum case for BreakoutDetailsLayout.Metrics.TitleTextBehavior.standard(_:);
  v55 = v78;
LABEL_9:
  v59 = v79;
  v58 = v80;
  (*(v79 + 104))(v55, *v54, v80);
  sub_10000C824(v99, v89);
  (*(v59 + 16))(v77, v55, v58);
  sub_10000C824(v96, &v88);
  sub_10000C824(v93, &v87);
  v60 = *(a1 + v85[15]);
  v86[8] = &type metadata for CGFloat;
  v86[9] = &protocol witness table for CGFloat;
  v86[5] = v60;
  sub_10000C824(v90, v86);
  sub_100749164();
  (*(v59 + 8))(v55, v58);
  sub_10000C620(v90);
  sub_10000C620(v93);
  sub_10000C620(v96);
  return sub_10000C620(v99);
}

uint64_t sub_10058DFA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000C518(&qword_10093F5A8, &qword_1007CB718);
  sub_100039C50(v5, a2);
  sub_10000D0FC(v5, a2);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for ContentHorizontalAlignment(0);
  return sub_100743474();
}

char *sub_10058E048(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v122 = sub_100747744();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_100752AC4();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v102 - v7;
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v124 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v131 = &v102 - v13;
  v14 = sub_100750534();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badge;
  v19 = enum case for BreakoutDetails.Badge.none(_:);
  v20 = sub_1007453C4();
  (*(*(v20 - 8) + 104))(&v2[v18], v19, v20);
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark] = 0;
  v21 = &v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailTextAlignment;
  v23 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v24 = sub_100745374();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v25 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  v26 = sub_100745394();
  (*(*(v26 - 8) + 56))(&v2[v25], 1, 1, v26);
  v27 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
  v28 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  v118 = *(v28 - 8);
  v29 = *(v118 + 16);
  v125 = v2;
  v123 = a1;
  v119 = v28;
  v29(&v2[v27], a1);
  if (qword_1009214C8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v14, qword_100981B90);
  v31 = *(v15 + 16);
  v32 = v17;
  v130 = v17;
  v31(v17, v30, v14);
  v128 = v31;
  v33 = v14;
  v34 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v10;
  v126 = v15;
  v127 = v10;
  v36 = *(v10 + 104);
  (v36)(v131, enum case for DirectionalTextAlignment.none(_:), v9);
  v108 = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  v110 = objc_allocWithZone(v108);
  *&v110[qword_100941490] = 0;
  v31(v8, v32, v33);
  v37 = *(v15 + 56);
  v37(v8, 0, 1, v33);
  v38 = v124;
  v113 = v34;
  v39 = v34;
  v40 = v33;
  v112 = v35 + 104;
  v111 = v36;
  (v36)(v124, v39, v9);
  v41 = v38;
  v42 = sub_100745C74();
  v43 = v130;
  v129 = v15 + 16;
  v128(v8, v130, v40);
  v110 = (v15 + 56);
  v109 = v37;
  v37(v8, 0, 1, v40);
  v44 = v42;
  v103 = v8;
  sub_100745BA4();
  v45 = v43;
  sub_100745B84();
  [v44 setNumberOfLines:2];
  v46 = v127;
  v47 = *(v127 + 16);
  v48 = v131;
  v107 = v127 + 16;
  v106 = v47;
  v47(v41, v131, v9);
  sub_100745BF4();

  v49 = *(v46 + 8);
  v127 = v46 + 8;
  v105 = v49;
  v49(v48, v9);
  v50 = *(v126 + 8);
  v126 += 8;
  v104 = v50;
  v50(v45, v40);
  *&v125[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel] = v44;
  if (qword_1009214E8 != -1)
  {
    swift_once();
  }

  v51 = sub_10000D0FC(v40, qword_100981BF0);
  v52 = v128;
  v128(v45, v51, v40);
  v53 = v113;
  v54 = v111;
  (v111)(v131, v113, v9);
  v55 = objc_allocWithZone(v108);
  *&v55[qword_100941490] = 0;
  v56 = v103;
  v52(v103, v130, v40);
  v57 = v109;
  v109(v56, 0, 1, v40);
  v58 = v9;
  v59 = v124;
  v60 = v53;
  v61 = v58;
  v54(v124, v60);
  v62 = sub_100745C74();
  v52(v56, v130, v40);
  v63 = v130;
  v57(v56, 0, 1, v40);
  v64 = v62;
  sub_100745BA4();
  sub_100745B84();
  [v64 setNumberOfLines:2];
  v65 = v131;
  v106(v59, v131, v61);
  sub_100745BF4();

  v105(v65, v61);
  v104(v63, v40);
  v66 = v125;
  *&v125[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel] = v64;
  v67 = [objc_opt_self() effectWithStyle:17];
  v68 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v67];

  *&v66[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView] = v68;
  type metadata accessor for CappedSizeDynamicTypeButton(0);
  if (qword_1009214F0 != -1)
  {
    swift_once();
  }

  v69 = sub_10000D0FC(v40, qword_100981C08);
  v128(v63, v69, v40);
  *&v66[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton] = sub_1007466B4();
  v136.receiver = v66;
  v136.super_class = ObjectType;
  v70 = objc_msgSendSuper2(&v136, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v70 setUserInteractionEnabled:0];
  [v70 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v70 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_10058EF24();
  v74 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel;
  v75 = *&v70[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v76 = v75;
  v77 = v115;
  sub_100752A74();
  sub_10000C8CC(&v132, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v134, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v78 = *(v116 + 8);
  v79 = v117;
  v78(v77, v117);
  v80 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel;
  v81 = *&v70[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel];
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v82 = v81;
  sub_100752A74();
  sub_10000C8CC(&v132, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v134, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v78(v77, v79);
  v83 = *&v70[v74];
  sub_100745C34();

  v84 = *&v70[v80];
  sub_100745C34();

  [*&v70[v74] setLineBreakMode:0];
  [*&v70[v80] setLineBreakMode:0];
  v85 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton;
  [*&v70[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton] _setWantsAccessibilityUnderline:0];
  v86 = *&v70[v85];
  v87 = objc_opt_self();
  v88 = v86;
  v89 = [v87 whiteColor];
  [v88 setTitleColor:v89 forState:0];

  v90 = *&v70[v85];
  v91 = [v87 whiteColor];
  [v90 setTitleColor:v91 forState:1];

  v92 = *&v70[v85];
  v93 = [v87 whiteColor];
  [v92 setTintColor:v93];

  v94 = *&v70[v85];
  (*(v121 + 104))(v120, enum case for ImageAlignedButton.ImageAlignment.trailing(_:), v122);
  v95 = v94;
  sub_100747754();

  v96 = *&v70[v85];
  sub_100747784();

  v97 = [*&v70[v85] titleLabel];
  [v97 setLineBreakMode:0];

  [*&v70[v85] addTarget:v70 action:"didTapActionButton" forControlEvents:64];
  v98 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView;
  v99 = *&v70[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView];
  v100 = sub_100753064();
  [v99 _setGroupName:v100];

  [*&v70[v98] _setContinuousCornerRadius:20.0];
  [*&v70[v98] setClipsToBounds:1];
  [*&v70[v98] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v70[v98] setEdgesInsettingLayoutMarginsFromSafeArea:0];

  (*(v118 + 8))(v123, v119);
  return v70;
}

uint64_t sub_10058EF24()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v2 - 8);
  v104 = &v99 - v3;
  v4 = sub_100745394();
  v105 = *(v4 - 8);
  __chkstk_darwin(v4);
  v102 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v100 = &v99 - v7;
  __chkstk_darwin(v8);
  v101 = &v99 - v9;
  __chkstk_darwin(v10);
  v106 = &v99 - v11;
  __chkstk_darwin(v12);
  v14 = &v99 - v13;
  v15 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v99 - v17;
  v19 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v19);
  v21 = (&v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v16 + 16))(v18, v1 + v22, v15);
  v108 = v1;
  sub_100743464();
  (*(v16 + 8))(v18, v15);
  v23 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark);
  v24 = &selRef_initWithTitle_style_target_action_;
  if (v23)
  {
    v25 = *v21;
    if (*v21)
    {
      v26 = v23;
      v27 = v25;
    }

    else
    {
      v28 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v29 = v105;
      if ((*(v105 + 48))(v1 + v28, 1, v4))
      {
        v26 = v23;
        v27 = 0;
      }

      else
      {
        (*(v29 + 16))(v14, v1 + v28, v4);
        v26 = v23;
        v27 = sub_10016D3F0();
        (*(v29 + 8))(v14, v4);
      }
    }

    v30 = v25;
    [v26 setTintColor:v27];
  }

  v31 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel;
  v32 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel);
  if (v32)
  {
    v33 = *v21;
    if (*v21)
    {
      v34 = v32;
      v35 = v33;
    }

    else
    {
      v36 = v14;
      v37 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
      swift_beginAccess();
      v38 = v105;
      if ((*(v105 + 48))(v1 + v37, 1, v4))
      {
        v34 = v32;
        v35 = 0;
        v14 = v36;
      }

      else
      {
        (*(v38 + 16))(v36, v1 + v37, v4);
        v34 = v32;
        v35 = sub_10016D3F0();
        v39 = v38;
        v14 = v36;
        (*(v39 + 8))(v36, v4);
      }

      v24 = &selRef_initWithTitle_style_target_action_;
    }

    v40 = v33;
    [v34 setTextColor:v35];
  }

  v107 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel);
  v41 = v21[1];
  isa = v41;
  v103 = v31;
  if (!v41)
  {
    v43 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v105 + 48))(v1 + v43, 1, v4))
    {
      v99 = v14;
      v44 = v105;
      v45 = *(v105 + 16);
      v46 = v1 + v43;
      v47 = v106;
      v45(v106, v46, v4);
      v48 = v101;
      v45(v101, v47, v4);
      v49 = (*(v44 + 88))(v48, v4);
      v50 = (v44 + 8);
      if (v49 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v51 = v49, v49 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        isa = [objc_opt_self() whiteColor];
        (*v50)(v106, v4);
      }

      else
      {
        v52 = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_10000D198();
        isa = sub_100753F24(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v53 = *v50;
        (*v50)(v106, v4);
        if (v51 != v52)
        {
          v53(v101, v4);
        }
      }

      v31 = v103;
      v14 = v99;
      v24 = &selRef_initWithTitle_style_target_action_;
    }
  }

  v54 = v41;
  [v107 setTextColor:isa];

  v106 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel);
  v55 = v21[2];
  v56 = v55;
  if (!v55)
  {
    v57 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v105 + 48))(v1 + v57, 1, v4))
    {
      v58 = v14;
      v59 = v105;
      (*(v105 + 16))(v58, v1 + v57, v4);
      v56 = sub_10016D5C8();
      v60 = v58;
      v24 = &selRef_initWithTitle_style_target_action_;
      (*(v59 + 8))(v60, v4);
    }
  }

  v61 = v55;
  [v106 setTextColor:v56];

  v62 = v21[3];
  v63 = v62;
  if (!v62)
  {
    v64 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    if (!(*(v105 + 48))(v1 + v64, 1, v4))
    {
      v65 = v105;
      v66 = *(v105 + 16);
      v67 = v1 + v64;
      v68 = v100;
      v66(v100, v67, v4);
      v69 = v102;
      v66(v102, v68, v4);
      v70 = (*(v65 + 88))(v69, v4);
      v71 = (v65 + 8);
      if (v70 == enum case for BreakoutDetails.BackgroundStyle.material(_:) || (v72 = v70, v70 == enum case for BreakoutDetails.BackgroundStyle.dark(_:)))
      {
        v63 = [objc_opt_self() whiteColor];
        (*v71)(v68, v4);
      }

      else
      {
        LODWORD(v105) = enum case for BreakoutDetails.BackgroundStyle.light(_:);
        sub_10000D198();
        v73 = v68;
        v63 = sub_100753F24(0.18824, 0.18824, 0.2, 1.0).super.isa;
        v74 = *v71;
        (*v71)(v73, v4);
        if (v72 != v105)
        {
          v74(v102, v4);
        }
      }

      v31 = v103;
      v24 = &selRef_initWithTitle_style_target_action_;
    }
  }

  v75 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton);
  v76 = v62;
  [v75 setTitleColor:v63 forState:0];
  [v75 setTitleColor:v63 forState:1];
  v77 = v24[109];
  v102 = v63;
  [v75 v77];
  v105 = v1;
  v78 = *(v1 + v31);
  v79 = v19;
  if (v78)
  {
    v80 = *(v19 + 36);
    v81 = sub_100750534();
    v82 = *(v81 - 8);
    v83 = v104;
    (*(v82 + 16))(v104, v21 + v80, v81);
    (*(v82 + 56))(v83, 0, 1, v81);
    v19 = v79;
    v84 = v78;
    sub_100745BA4();
  }

  v85 = *(v19 + 40);
  v86 = sub_100750534();
  v87 = *(v86 - 8);
  v88 = *(v87 + 16);
  v89 = v104;
  v88(v104, v21 + v85, v86);
  v90 = *(v87 + 56);
  v90(v89, 0, 1, v86);
  sub_100745BA4();
  v88(v89, v21 + v79[13], v86);
  v90(v89, 0, 1, v86);
  sub_100745BA4();
  v88(v89, v21 + v79[14], v86);
  v90(v89, 0, 1, v86);
  sub_1007466A4();
  v91 = *(v105 + v103);
  if (v91)
  {
    v92 = *(v21 + v79[23]);
    v93 = v92;
    v94 = v91;
    sub_100614BB4(v92);
  }

  v95 = *(v21 + v79[23]);
  v96 = v95;
  sub_100614BB4(v95);
  sub_100614BB4(v95);
  sub_1004093EC(v95);

  return sub_10024144C(v21, v97);
}

double sub_10058FB5C()
{
  v1 = v0;
  v2 = sub_100745394();
  v33 = *(v2 - 8);
  __chkstk_darwin(v2);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_10093F5A0, &qword_1007CB710);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = sub_10000C518(&qword_10093F598, &qword_1007D5390);
  __chkstk_darwin(v8 - 8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  v34 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v34);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  v20 = v1 + v19;
  v21 = v18;
  v22 = v33;
  (*(v14 + 16))(v16, v20, v13);
  v35 = v1;
  sub_100743464();
  (*(v14 + 8))(v16, v13);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  (*(v22 + 104))(v12, enum case for BreakoutDetails.BackgroundStyle.material(_:), v2);
  (*(v22 + 56))(v12, 0, 1, v2);
  v24 = *(v5 + 56);
  sub_100016B4C(v1 + v23, v7, &qword_10093F598, &qword_1007D5390);
  sub_100016B4C(v12, &v7[v24], &qword_10093F598, &qword_1007D5390);
  v25 = *(v22 + 48);
  if (v25(v7, 1, v2) != 1)
  {
    v27 = v32;
    sub_100016B4C(v7, v32, &qword_10093F598, &qword_1007D5390);
    if (v25(&v7[v24], 1, v2) != 1)
    {
      v29 = v31;
      (*(v22 + 32))(v31, &v7[v24], v2);
      sub_100594204(&unk_10093F5B0, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
      sub_100753014();
      v30 = *(v22 + 8);
      v30(v29, v2);
      sub_10000C8CC(v12, &qword_10093F598, &qword_1007D5390);
      v30(v27, v2);
      sub_10000C8CC(v7, &qword_10093F598, &qword_1007D5390);
      goto LABEL_7;
    }

    sub_10000C8CC(v12, &qword_10093F598, &qword_1007D5390);
    (*(v22 + 8))(v27, v2);
    goto LABEL_6;
  }

  sub_10000C8CC(v12, &qword_10093F598, &qword_1007D5390);
  if (v25(&v7[v24], 1, v2) != 1)
  {
LABEL_6:
    sub_10000C8CC(v7, &qword_10093F5A0, &qword_1007CB710);
    goto LABEL_7;
  }

  sub_10000C8CC(v7, &qword_10093F598, &qword_1007D5390);
LABEL_7:
  sub_10024144C(v21, v26);
  return 0.0;
}

id sub_1005900E0(uint64_t a1, __n128 a2)
{
  v93 = sub_1007441C4();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v94 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  v90 = *(v91 - 1);
  __chkstk_darwin(v91);
  v88 = &v87 - v4;
  v5 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v5 - 8);
  v87 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_10093F5C0, &qword_1007A9CD0);
  __chkstk_darwin(v7 - 8);
  v89 = &v87 - v8;
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v95 = &v87 - v10;
  v98 = sub_10074AB44();
  v102 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v101 = &v87 - v13;
  v97 = sub_100750534();
  v100 = *(v97 - 8);
  __chkstk_darwin(v97);
  v99 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007453C4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v21 = &v87 - v20;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badge;
  swift_beginAccess();
  v23 = *(v16 + 16);
  v24 = v2;
  v23(v21, &v2[v22], v15);
  sub_100594204(&qword_10093F5C8, &type metadata accessor for BreakoutDetails.Badge, &protocol conformance descriptor for BreakoutDetails.Badge);
  v25 = sub_100753014();
  v26 = v21;
  v27 = *(v16 + 8);
  result = v27(v26, v15);
  if ((v25 & 1) == 0)
  {
    v23(v18, &v24[v22], v15);
    v29 = (*(v16 + 88))(v18, v15);
    v30 = v24;
    if (v29 == enum case for BreakoutDetails.Badge.text(_:))
    {
      v94 = v24;
      (*(v16 + 96))(v18, v15);
      v31 = v18[1];
      v92 = *v18;
      v93 = v31;
      if (qword_1009214C0 != -1)
      {
        swift_once();
      }

      v32 = v97;
      v33 = sub_10000D0FC(v97, qword_100981B78);
      v34 = v99;
      v35 = v100;
      v36 = *(v100 + 16);
      v36(v99, v33, v32);
      v37 = v36;
      v91 = v36;
      v38 = enum case for DirectionalTextAlignment.none(_:);
      v90 = *(v102 + 104);
      v39 = v98;
      (v90)(v101, enum case for DirectionalTextAlignment.none(_:), v98);
      v40 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
      *&v40[qword_100941490] = 0;
      v41 = v95;
      v37(v95, v34, v32);
      v42 = *(v35 + 56);
      v42(v41, 0, 1, v32);
      v43 = v96;
      (v90)(v96, v38, v39);
      v44 = sub_100745C74();
      v45 = v99;
      v91(v41, v99, v32);
      v42(v41, 0, 1, v32);
      v46 = v44;
      sub_100745BA4();
      sub_100745B84();
      [v46 setNumberOfLines:1];
      v48 = v101;
      v47 = v102;
      (*(v102 + 16))(v43, v101, v39);
      sub_100745BF4();
      (*(v47 + 8))(v48, v39);
      (*(v100 + 8))(v45, v32);
      sub_100745C34();
      v49 = sub_100753064();

      [v46 setText:v49];

      v50 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel;
      v30 = v94;
      v51 = *&v94[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
      v52 = v46;
      if (v51)
      {
        [v51 removeFromSuperview];
        v53 = *&v30[v50];
      }

      else
      {
        v53 = 0;
      }

      *&v30[v50] = v46;
      v76 = v46;

      sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel);
      v77 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark;
      v78 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
      if (v78)
      {
        [v78 removeFromSuperview];
        v79 = *&v30[v77];
      }

      else
      {
        v79 = 0;
      }

      *&v30[v77] = 0;

      sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark);
    }

    else if (v29 == enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v54 = enum case for Wordmark.arcade(_:);
      v55 = sub_10074F7B4();
      v56 = *(v55 - 8);
      v57 = v89;
      (*(v56 + 104))(v89, v54, v55);
      (*(v56 + 56))(v57, 0, 1, v55);
      v58 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
      swift_beginAccess();
      v59 = v90;
      v60 = &v30[v58];
      v61 = v88;
      v62 = v91;
      (*(v90 + 16))(v88, v60, v91);
      v103 = v30;
      v63 = v87;
      sub_100743464();
      v64.n128_f64[0] = (*(v59 + 8))(v61, v62);
      v65 = *(v63 + 32);
      sub_10024144C(v63, v64);
      (*(v92 + 104))(v94, enum case for WordmarkView.Alignment.center(_:), v93);
      v104 = &type metadata for CGFloat;
      v105 = &protocol witness table for CGFloat;
      v103 = v65;
      v66 = objc_allocWithZone(sub_1007441E4());
      v67 = sub_1007441B4();
      v68 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel;
      v69 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
      if (v69)
      {
        [v69 removeFromSuperview];
        v70 = *&v30[v68];
      }

      else
      {
        v70 = 0;
      }

      *&v30[v68] = 0;

      sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel);
      v83 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark;
      v84 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
      v85 = v67;
      if (v84)
      {
        [v84 removeFromSuperview];
        v84 = *&v30[v83];
      }

      *&v30[v83] = v67;
      v86 = v67;

      sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark);
    }

    else
    {
      v71 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel;
      v72 = *&v24[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
      if (v29 == enum case for BreakoutDetails.Badge.none(_:))
      {
        if (v72)
        {
          [*&v24[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v72 = *&v24[v71];
        }

        *&v24[v71] = 0;

        sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel);
        v73 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark;
        v74 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
        if (v74)
        {
          [v74 removeFromSuperview];
          v75 = *&v30[v73];
        }

        else
        {
          v75 = 0;
        }

        *&v30[v73] = 0;

        sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark);
      }

      else
      {
        if (v72)
        {
          [*&v24[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel] removeFromSuperview];
          v72 = *&v24[v71];
        }

        *&v24[v71] = 0;

        sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel);
        v80 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark;
        v81 = *&v24[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
        if (v81)
        {
          [v81 removeFromSuperview];
          v82 = *&v24[v80];
        }

        else
        {
          v82 = 0;
        }

        *&v24[v80] = 0;

        sub_100591C34(&OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark);
        v27(v18, v15);
      }
    }

    sub_10058EF24();
    sub_100590CD4();
    return [v30 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100590CD4()
{
  v1 = v0;
  v2 = sub_100745394();
  v105 = *(v2 - 8);
  __chkstk_darwin(v2);
  v98 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10000C518(&qword_10093F5A0, &qword_1007CB710);
  __chkstk_darwin(v104);
  v5 = &v97 - v4;
  v6 = sub_10000C518(&qword_10093F598, &qword_1007D5390);
  __chkstk_darwin(v6 - 8);
  v99 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v97 - v9;
  v101 = sub_1007441C4();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v102 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100745374();
  v113 = *(v111 - 8);
  __chkstk_darwin(v111);
  v107 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v97 - v14;
  __chkstk_darwin(v16);
  v112 = &v97 - v17;
  v18 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v97 - v20;
  v109 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v109);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v1[v24], v18);
  v116 = v1;
  sub_100743464();
  (*(v19 + 8))(v21, v18);
  v25 = [v1 traitCollection];
  LOBYTE(v18) = sub_100753804();

  v108 = v23;
  if ((v18 & 1) != 0 && v23[*(v109 + 96)] == 1)
  {
    v26 = v111;
    (*(v113 + 104))(v112, enum case for BreakoutDetails.TextAlignment.leading(_:), v111);
  }

  else
  {
    v27 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailTextAlignment;
    swift_beginAccess();
    v26 = v111;
    (*(v113 + 16))(v112, &v1[v27], v111);
  }

  v28 = sub_100745364();
  v29 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel;
  v30 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
  if (v30)
  {
    [v30 setTextAlignment:v28];
  }

  v106 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel];
  [v106 setTextAlignment:v28];
  v110 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel];
  [v110 setTextAlignment:v28];
  v103 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark;
  v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
  if (v31)
  {
    v32 = v113;
    (*(v113 + 16))(v15, v112, v26);
    v33 = (*(v32 + 88))(v15, v26);
    if (v33 == enum case for BreakoutDetails.TextAlignment.leading(_:))
    {
      (*(v100 + 104))(v102, enum case for WordmarkView.Alignment.leading(_:), v101);
    }

    else if (v33 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
    {
      (*(v100 + 104))(v102, enum case for WordmarkView.Alignment.trailing(_:), v101);
    }

    else
    {
      v34 = *(v100 + 104);
      if (v33 != enum case for BreakoutDetails.TextAlignment.center(_:))
      {
        v34(v102, enum case for WordmarkView.Alignment.leading(_:), v101);
        v96 = *(v113 + 8);
        v35 = v31;
        v96(v15, v26);
        goto LABEL_15;
      }

      v34(v102, enum case for WordmarkView.Alignment.center(_:), v101);
    }

    v35 = v31;
LABEL_15:
    sub_1007441D4();
  }

  v36 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v37 = v105;
  (*(v105 + 104))(v10, enum case for BreakoutDetails.BackgroundStyle.material(_:), v2);
  (*(v37 + 56))(v10, 0, 1, v2);
  v38 = *(v104 + 48);
  sub_100016B4C(&v1[v36], v5, &qword_10093F598, &qword_1007D5390);
  sub_100016B4C(v10, &v5[v38], &qword_10093F598, &qword_1007D5390);
  v39 = *(v37 + 48);
  v40 = &stru_1008F2000;
  if (v39(v5, 1, v2) == 1)
  {
    sub_10000C8CC(v10, &qword_10093F598, &qword_1007D5390);
    v41 = &selRef_initWithTitle_style_target_action_;
    if (v39(&v5[v38], 1, v2) == 1)
    {
      sub_10000C8CC(v5, &qword_10093F598, &qword_1007D5390);
      v42 = v107;
      v43 = v109;
LABEL_28:
      v55 = *&v1[v103];
      if (v55)
      {
        v56 = [v55 v40[67].name];
        [v56 setCompositingFilter:kCAFilterPlusL];
      }

      v57 = *&v1[v29];
      if (v57)
      {
        v58 = [v57 v40[67].name];
        v59 = kCAFilterPlusL;
        [v58 setCompositingFilter:kCAFilterPlusL];
      }

      else
      {
        v59 = kCAFilterPlusL;
      }

      v60 = [v110 v40[67].name];
      [v60 setCompositingFilter:v59];

      v61 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView] contentView];
      v49 = [v61 v40[67].name];

      [v49 setAllowsGroupBlending:0];
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  v44 = v99;
  sub_100016B4C(v5, v99, &qword_10093F598, &qword_1007D5390);
  if (v39(&v5[v38], 1, v2) == 1)
  {
    sub_10000C8CC(v10, &qword_10093F598, &qword_1007D5390);
    (*(v37 + 8))(v44, v2);
    v41 = &selRef_initWithTitle_style_target_action_;
    v40 = &stru_1008F2000;
LABEL_21:
    sub_10000C8CC(v5, &qword_10093F5A0, &qword_1007CB710);
    v42 = v107;
    v43 = v109;
    goto LABEL_22;
  }

  v50 = v98;
  (*(v37 + 32))(v98, &v5[v38], v2);
  sub_100594204(&unk_10093F5B0, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
  LODWORD(v104) = sub_100753014();
  v51 = v29;
  v52 = v44;
  v53 = *(v37 + 8);
  v53(v50, v2);
  sub_10000C8CC(v10, &qword_10093F598, &qword_1007D5390);
  v54 = v52;
  v29 = v51;
  v53(v54, v2);
  sub_10000C8CC(v5, &qword_10093F598, &qword_1007D5390);
  v42 = v107;
  v41 = &selRef_initWithTitle_style_target_action_;
  v43 = v109;
  v40 = &stru_1008F2000;
  if (v104)
  {
    goto LABEL_28;
  }

LABEL_22:
  v45 = *&v1[v103];
  if (v45)
  {
    v46 = [v45 v40[67].name];
    [v46 setCompositingFilter:0];
  }

  v47 = *&v1[v29];
  if (v47)
  {
    v48 = [v47 v40[67].name];
    [v48 setCompositingFilter:0];
  }

  v49 = [v110 v40[67].name];
  [v49 setCompositingFilter:0];
LABEL_34:

  v62 = v108;
  v63 = &v108[*(v43 + 84)];
  v64 = v111;
  if (v63[8])
  {
    v65 = [v1 v41[129]];
    v66 = sub_1007537D4();

    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    [v106 setNumberOfLines:v67];
  }

  else
  {
    [v106 setNumberOfLines:*v63];
  }

  v68 = v62 + *(v43 + 88);
  if (*(v68 + 8))
  {
    v69 = [v1 v41[129]];
    v70 = sub_1007537D4();

    if (v70)
    {
      v71 = 3;
    }

    else
    {
      v71 = 2;
    }

    [v110 setNumberOfLines:v71];
  }

  else
  {
    [v110 setNumberOfLines:*v68];
  }

  v72 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailTextAlignment;
  swift_beginAccess();
  v73 = v113;
  (*(v113 + 16))(v42, &v1[v72], v64);
  v74 = (*(v73 + 88))(v42, v64);
  if (v74 == enum case for BreakoutDetails.TextAlignment.leading(_:))
  {
    if (qword_1009218F8 != -1)
    {
      swift_once();
    }

    v75 = sub_10000C518(&qword_10093F5A8, &qword_1007CB718);
    v76 = qword_10093F3F0;
LABEL_54:
    sub_10000D0FC(v75, v76);
    v114 = v1;
    v77 = v1;
    sub_100743464();

    v78 = v115;
    goto LABEL_55;
  }

  if (v74 == enum case for BreakoutDetails.TextAlignment.trailing(_:))
  {
    if (qword_100921900 != -1)
    {
      swift_once();
    }

    v75 = sub_10000C518(&qword_10093F5A8, &qword_1007CB718);
    v76 = qword_10093F408;
    goto LABEL_54;
  }

  if (v74 == enum case for BreakoutDetails.TextAlignment.center(_:))
  {
    v78 = 0;
  }

  else
  {
    if (qword_1009218F8 != -1)
    {
      swift_once();
    }

    v93 = sub_10000C518(&qword_10093F5A8, &qword_1007CB718);
    sub_10000D0FC(v93, qword_10093F3F0);
    v114 = v1;
    v94 = v1;
    sub_100743464();

    v95 = v115;
    (*(v113 + 8))(v42, v64);
    v78 = v95;
  }

LABEL_55:
  v79 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton];
  [v79 setContentHorizontalAlignment:v78];
  v80 = [v79 titleLabel];
  if (!v80)
  {
    goto LABEL_63;
  }

  v81 = v80;
  v82 = sub_100753F44();
  v84 = v83;

  v85 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v85 = v82 & 0xFFFFFFFFFFFFLL;
  }

  if (v85)
  {
    v86 = [v1 v41[129]];
    v87 = sub_1007537F4();

    if (v87)
    {
      v88 = 0.0;
    }

    else
    {
      v88 = 2.0;
    }

    [v79 setImageEdgeInsets:{0.0, v88}];
    v89 = sub_10056003C(0x74756F6B61657242, 0xEF6E6F7276656843, 0);
    [v79 setImage:v89 forState:0];
  }

  else
  {
LABEL_63:
    [v79 setImageEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [v79 setImage:0 forState:0];
  }

  sub_100592C70(v90);
  v91.n128_f64[0] = (*(v113 + 8))(v112, v64);
  return sub_10024144C(v62, v91);
}

id sub_100591C34(void *a1)
{
  v3 = sub_10000C518(&qword_10093F598, &qword_1007D5390);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v21 - v8;
  v10 = *&v1[*a1];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
    swift_beginAccess();
    sub_100016B4C(&v1[v11], v9, &qword_10093F598, &qword_1007D5390);
    v12 = sub_100745394();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      v14 = v10;
    }

    else
    {
      sub_100016B4C(v9, v5, &qword_10093F598, &qword_1007D5390);
      if ((*(v13 + 88))(v5, v12) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView];
        v16 = v10;
        v17 = [v15 contentView];
        [v17 addSubview:v16];

LABEL_8:
        sub_10000C8CC(v9, &qword_10093F598, &qword_1007D5390);
        return [v1 setNeedsLayout];
      }

      v18 = *(v13 + 8);
      v19 = v10;
      v18(v5, v12);
    }

    [v1 addSubview:v10];
    goto LABEL_8;
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_100591E7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100745394();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_10093F598, &qword_1007D5390);
  __chkstk_darwin(v7 - 8);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v39 - v10;
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10000C518(&qword_10093F5A0, &qword_1007CB710);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v42 = v18;
  sub_100016B4C(&v2[v18], v17, &qword_10093F598, &qword_1007D5390);
  sub_100016B4C(a1, &v17[v19], &qword_10093F598, &qword_1007D5390);
  v20 = v5;
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v19], 1, v4) == 1)
    {
      return sub_10000C8CC(v17, &qword_10093F598, &qword_1007D5390);
    }

    goto LABEL_6;
  }

  sub_100016B4C(v17, v13, &qword_10093F598, &qword_1007D5390);
  if (v21(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
LABEL_6:
    sub_10000C8CC(v17, &qword_10093F5A0, &qword_1007CB710);
    goto LABEL_7;
  }

  v30 = v40;
  (*(v5 + 32))(v40, &v17[v19], v4);
  sub_100594204(&unk_10093F5B0, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
  LODWORD(v39) = sub_100753014();
  v31 = *(v5 + 8);
  v31(v30, v4);
  v31(v13, v4);
  result = sub_10000C8CC(v17, &qword_10093F598, &qword_1007D5390);
  if ((v39 & 1) == 0)
  {
LABEL_7:
    v39 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView];
    [v39 removeFromSuperview];
    v22 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark;
    v23 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
    if (v23)
    {
      [v23 removeFromSuperview];
    }

    v24 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel;
    v25 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
    if (v25)
    {
      [v25 removeFromSuperview];
    }

    v26 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel];
    [v26 removeFromSuperview];
    v27 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel];
    [v27 removeFromSuperview];
    v40 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton];
    [v40 removeFromSuperview];
    v17 = v43;
    sub_100016B4C(&v2[v42], v43, &qword_10093F598, &qword_1007D5390);
    if (v21(v17, 1, v4) != 1)
    {
      v28 = v41;
      sub_100016B4C(v17, v41, &qword_10093F598, &qword_1007D5390);
      if ((*(v20 + 88))(v28, v4) == enum case for BreakoutDetails.BackgroundStyle.material(_:))
      {
        v29 = v39;
        [v2 addSubview:v39];
        if (*&v2[v22])
        {
          [v2 addSubview:?];
        }

        else
        {
          v33 = *&v2[v24];
          if (v33)
          {
            v34 = v33;
            v35 = [v29 contentView];
            [v35 addSubview:v34];
          }
        }

        v36 = [v29 contentView];
        [v36 addSubview:v26];

        v37 = [v29 contentView];
        [v37 addSubview:v27];

        v38 = [v29 contentView];
        [v38 addSubview:v40];

        return sub_10000C8CC(v17, &qword_10093F598, &qword_1007D5390);
      }

      (*(v20 + 8))(v28, v4);
    }

    if (*&v2[v22] || *&v2[v24])
    {
      [v2 addSubview:?];
    }

    [v2 addSubview:v26];
    [v2 addSubview:v27];
    [v2 addSubview:v40];
    return sub_10000C8CC(v17, &qword_10093F598, &qword_1007D5390);
  }

  return result;
}

uint64_t sub_100592590()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v54 = sub_100750354();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_10093F598, &qword_1007D5390);
  __chkstk_darwin(v4 - 8);
  v6 = v51 - v5;
  v7 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v51 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11 - 8);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100749194();
  __chkstk_darwin(v14 - 8);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[0] = sub_1007491B4();
  v17 = *(v51[0] - 8);
  *&v18 = __chkstk_darwin(v51[0]).n128_u64[0];
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59.receiver = v1;
  v59.super_class = ObjectType;
  v51[1] = ObjectType;
  objc_msgSendSuper2(&v59, "layoutSubviews", v18);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v21], v7);
  v56 = v1;
  v22 = v1;
  sub_100743464();
  (*(v8 + 8))(v10, v7);

  sub_10058FB5C();
  sub_10058D4DC(v13, v16);
  sub_10024144C(v13, v23);
  v24 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel];
  v25 = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  v57 = v25;
  v58 = &protocol witness table for UILabel;
  v55[19] = &protocol witness table for UILabel;
  v56 = v24;
  v26 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel];
  v55[18] = v25;
  v55[15] = v26;
  v27 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
  if (v27)
  {
    v28 = &protocol witness table for UILabel;
    v29 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v29 = 0;
    v25 = 0;
    v28 = 0;
    v55[12] = 0;
    v55[11] = 0;
  }

  v55[10] = v29;
  v55[13] = v25;
  v55[14] = v28;
  v30 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
  if (v30)
  {
    v31 = sub_1007441E4();
    v32 = &protocol witness table for UIView;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v55[7] = 0;
    v55[6] = 0;
  }

  v55[5] = v30;
  v55[8] = v31;
  v55[9] = v32;
  v33 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton];
  v34 = v27;
  v35 = v30;
  v36 = v24;
  v37 = v26;
  v38 = [v33 titleForState:0];
  if (v38)
  {

    v39 = type metadata accessor for CappedSizeDynamicTypeButton(0);
    v38 = v33;
    v40 = &protocol witness table for UIView;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v55[2] = 0;
    v55[1] = 0;
  }

  v55[0] = v38;
  v55[3] = v39;
  v55[4] = v40;
  sub_1007491A4();
  v41 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_100016B4C(&v22[v41], v6, &qword_10093F598, &qword_1007D5390);
  v42 = sub_100745394();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v6, 1, v42) == 1)
  {
    sub_10000C8CC(v6, &qword_10093F598, &qword_1007D5390);
LABEL_14:
    sub_1007477B4();
    v48 = v52;
    goto LABEL_15;
  }

  v44 = (*(v43 + 88))(v6, v42);
  v45 = enum case for BreakoutDetails.BackgroundStyle.material(_:);
  (*(v43 + 8))(v6, v42);
  if (v44 != v45)
  {
    goto LABEL_14;
  }

  v46 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_backgroundMaterialView];
  sub_1007477B4();
  [v46 setFrame:?];
  v47 = [v46 contentView];
  [v47 bounds];

  v48 = v52;
LABEL_15:
  sub_100749144();
  v49.n128_f64[0] = (*(v53 + 8))(v48, v54);
  sub_100592C70(v49);
  return (*(v17 + 8))(v20, v51[0]);
}

void sub_100592C70(__n128 a1)
{
  v2 = v1;
  v3 = sub_100740E74();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel);
  v9 = [v8 font];
  if (!v9)
  {
    goto LABEL_41;
  }

  v10 = v9;
  v11 = [v8 text];
  if (v11)
  {
    v12 = v11;
    v13 = sub_100753094();
    v15 = v14;

    v48 = v13;
    v49 = v15;

    sub_100740E54();
    sub_1000D5C0C();
    sub_1007542C4();
    LOBYTE(v12) = v16;
    (*(v4 + 8))(v7, v3);

    if (v12)
    {

      v17 = 0;
    }

    else
    {
      [v10 lineHeight];
      v19 = v18;

      v20 = ceil(v19 * 1.3);
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v20 <= -9.22337204e18)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v20 >= 9.22337204e18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v17 = v20;
    }
  }

  else
  {

    v17 = 0;
  }

  sub_1003DD238(v17);
  v21 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel);
  v22 = [v21 font];
  if (!v22)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v23 = v22;
  v24 = [v21 text];
  if (!v24)
  {

    v30 = 0;
    goto LABEL_19;
  }

  v25 = v24;
  v26 = sub_100753094();
  v28 = v27;

  v48 = v26;
  v49 = v28;

  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
  LOBYTE(v25) = v29;
  (*(v4 + 8))(v7, v3);

  if (v25)
  {

    v30 = 0;
    goto LABEL_19;
  }

  [v23 lineHeight];
  v32 = v31;

  v33 = ceil(v32 * 1.3);
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v30 = v33;
LABEL_19:
  sub_1003DD238(v30);
  v34 = [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton) titleLabel];
  if (!v34)
  {
    return;
  }

  v35 = v34;
  v36 = [v34 font];
  if (!v36)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = [v35 text];
  if (!v38)
  {

    goto LABEL_25;
  }

  v39 = v38;
  v40 = sub_100753094();
  v42 = v41;

  v48 = v40;
  v49 = v42;

  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
  LOBYTE(v39) = v43;
  (*(v4 + 8))(v7, v3);

  if ((v39 & 1) == 0)
  {
    [v37 lineHeight];
    v46 = v45;

    v47 = ceil(v46 * 1.3);
    if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v47 > -9.22337204e18)
      {
        if (v47 < 9.22337204e18)
        {
          v44 = v47;
          goto LABEL_30;
        }

        goto LABEL_40;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_25:
  v44 = 0;
LABEL_30:
  sub_1003DD238(v44);
}

void sub_10059353C(uint64_t a1)
{
  sub_1007453C4();
  if (v1 <= 0x3F)
  {
    sub_1005936C0(319);
    if (v2 <= 0x3F)
    {
      sub_100745374();
      if (v3 <= 0x3F)
      {
        sub_100593BA4(319, &unk_10093F490, &type metadata accessor for BreakoutDetails.BackgroundStyle);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1005936C0(uint64_t a1)
{
  if (!qword_10093F480)
  {
    sub_10000C724(&unk_100923AE0, &qword_1007A8370);
    type metadata accessor for BreakoutDetailsView.Config(255);
    v1 = sub_100743554();
    if (!v2)
    {
      atomic_store(v1, &qword_10093F480);
    }
  }
}

uint64_t sub_100593768(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_100750534();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_10000C518(&unk_100928A40, qword_1007A6630);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1005938B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_100750534();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10000C518(&unk_100928A40, qword_1007A6630);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1005939E8(uint64_t a1)
{
  sub_100593BA4(319, qword_1009288D0, sub_10000D198);
  if (v1 <= 0x3F)
  {
    sub_100750534();
    if (v2 <= 0x3F)
    {
      sub_100593B54();
      if (v3 <= 0x3F)
      {
        sub_100593BA4(319, &qword_10093F510, &type metadata accessor for FontUseCase);
        if (v4 <= 0x3F)
        {
          sub_100593BA4(319, &unk_10093F518, type metadata accessor for UIContentSizeCategory);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100593B54()
{
  if (!qword_10093F508)
  {
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10093F508);
    }
  }
}

void sub_100593BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100593BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093F598, &qword_1007D5390);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100593C68(uint64_t a1, char *a2, double a3, double a4)
{
  v49 = a1;
  v5 = sub_10000C518(&qword_10093F598, &qword_1007D5390);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - v6;
  v8 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100749194();
  __chkstk_darwin(v15 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1007491B4();
  v18 = *(v48 - 8);
  __chkstk_darwin(v48);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_config;
  swift_beginAccess();
  (*(v9 + 16))(v11, &a2[v21], v8);
  v51 = a2;
  v22 = a2;
  sub_100743464();
  (*(v9 + 8))(v11, v8);

  sub_10058FB5C();
  sub_10058D4DC(v14, v17);
  sub_10024144C(v14, v23);
  v24 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel];
  v25 = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  v52 = v25;
  v53 = &protocol witness table for UILabel;
  v50[19] = &protocol witness table for UILabel;
  v51 = v24;
  v26 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel];
  v50[18] = v25;
  v50[15] = v26;
  v27 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
  if (v27)
  {
    v28 = &protocol witness table for UILabel;
    v29 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel];
  }

  else
  {
    v29 = 0;
    v25 = 0;
    v28 = 0;
    v50[11] = 0;
    v50[12] = 0;
  }

  v50[10] = v29;
  v50[13] = v25;
  v50[14] = v28;
  v30 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark];
  if (v30)
  {
    v31 = sub_1007441E4();
    v32 = &protocol witness table for UIView;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v50[7] = 0;
    v50[6] = 0;
  }

  v50[5] = v30;
  v50[8] = v31;
  v50[9] = v32;
  v33 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton];
  v34 = v27;
  v35 = v30;
  v36 = v24;
  v37 = v26;
  v38 = [v33 titleForState:0];
  if (v38)
  {

    v39 = type metadata accessor for CappedSizeDynamicTypeButton(0);
    v38 = v33;
    v40 = &protocol witness table for UIView;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v50[2] = 0;
    v50[1] = 0;
  }

  v50[0] = v38;
  v50[3] = v39;
  v50[4] = v40;
  sub_1007491A4();
  sub_100749134();
  v42 = v41;
  (*(v18 + 8))(v20, v48);
  v43 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  swift_beginAccess();
  sub_100016B4C(&v22[v43], v7, &qword_10093F598, &qword_1007D5390);
  v44 = sub_100745394();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v7, 1, v44) == 1)
  {
    sub_10000C8CC(v7, &qword_10093F598, &qword_1007D5390);
  }

  else
  {
    (*(v45 + 88))(v7, v44);
    (*(v45 + 8))(v7, v44);
  }

  return v42;
}

uint64_t sub_100594204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10059424C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badge;
  v2 = enum case for BreakoutDetails.Badge.none(_:);
  v3 = sub_1007453C4();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badgeWordmark) = 0;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailTextAlignment;
  v6 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v7 = sub_100745374();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_detailBackgroundStyle;
  v9 = sub_100745394();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_100754644();
  __break(1u);
}

uint64_t sub_1005943C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v147 = a3;
  v11 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v11 - 8);
  v134 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v133 = &v124 - v14;
  v15 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v15 - 8);
  v132 = &v124 - v16;
  v17 = sub_100744864();
  __chkstk_darwin(v17 - 8);
  v131 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v130 = &v124 - v20;
  v21 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v21 - 8);
  v129 = &v124 - v22;
  v127 = sub_100744894();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v128 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_100747D94();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v146 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100749A94();
  v144 = *(v25 - 8);
  v145 = v25;
  __chkstk_darwin(v25);
  v143 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10074D544();
  v139 = *(v27 - 8);
  v140 = v27;
  __chkstk_darwin(v27);
  v138 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10074D574();
  v141 = *(v29 - 8);
  v142 = v29;
  __chkstk_darwin(v29);
  v31 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000C518(&qword_100935130, qword_1007BDC20);
  __chkstk_darwin(v32 - 8);
  v34 = &v124 - v33;
  v35 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v35);
  v37 = &v124 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = (&v124 - v39);
  v41 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  v149 = *(v41 - 8);
  v150 = v41;
  *&v42 = __chkstk_darwin(v41).n128_u64[0];
  v148 = &v124 - v43;
  v44 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_pageTraits] = v44;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 setNeedsLayout];
  swift_unknownObjectRelease();
  v151 = a1;
  sub_100746A04();
  v45 = sub_1007453B4();

  v137 = a4;
  if (v45)
  {
    if (qword_100921BA0 != -1)
    {
      swift_once();
    }

    v46 = sub_10000D0FC(v35, qword_100982BC0);
    sub_100121090(v46, v40, v47);
    v48 = *v40;
    v49 = v45;

    *v40 = v45;
    sub_100121090(v40, v37, v50);
    sub_10000C518(&unk_100923AE0, &qword_1007A8370);
    v51 = v148;
    sub_1007434A4();

    sub_10024144C(v40, v52);
  }

  else
  {
    if (qword_100921BA0 != -1)
    {
      swift_once();
    }

    v53 = sub_10000D0FC(v35, qword_100982BC0);
    sub_100121090(v53, v40, v54);
    sub_10000C518(&unk_100923AE0, &qword_1007A8370);
    v51 = v148;
    sub_1007434A4();
  }

  v55 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailsView];
  v56 = sub_100746A04();
  v57 = v149;
  v58 = v150;
  (*(v149 + 16))(v34, v51, v150);
  (*(v57 + 56))(v34, 0, 1, v58);
  v125 = v55;
  sub_10013C000(v56, v34, v147);

  sub_10000C8CC(v34, &qword_100935130, qword_1007BDC20);
  sub_1007469D4();
  v59 = v138;
  sub_10074D554();
  v60 = v142;
  v61 = *(v141 + 8);
  v61(v31, v142);
  v62 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_detailPosition;
  swift_beginAccess();
  v63 = v139;
  v64 = &v7[v62];
  v65 = v140;
  (*(v139 + 24))(v64, v59, v140);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v63 + 8))(v59, v65);
  v66 = v143;
  sub_100749A34();
  sub_100596534(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v67 = v145;
  v68 = sub_100754324();
  (*(v144 + 8))(v66, v67);
  sub_1007469D4();
  v69 = sub_10074D564();
  v61(v31, v60);
  v70 = v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden];
  v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = ((v68 | v69) & 1) == 0;
  v71 = &OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_delegate;
  if (((v68 | v69) & 1) == v70)
  {
    if ((v68 | v69))
    {
      v72 = [v7 contentView];
      [v72 insertSubview:*&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] aboveSubview:*&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer]];
    }

    else
    {
      [*&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] removeFromSuperview];
    }
  }

  v73 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_backgroundEffectView];
  v74 = v73[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsTopEffect];
  v73[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsTopEffect] = v68 & 1;
  if ((v68 & 1) != v74)
  {
    v75 = 0.0;
    if (v68)
    {
      *&v75 = 1.0;
    }

    [*&v73[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_topGradient] setOpacity:v75];
    [v73 setNeedsDisplay];
  }

  v76 = v73[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsBottomEffect];
  v73[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsBottomEffect] = v69 & 1;
  if ((v69 & 1) != v76)
  {
    v77 = 0.0;
    if (v69)
    {
      v77 = 1.0;
    }

    [*&v73[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurView] setAlpha:v77];
    [v73 setNeedsDisplay];
  }

  v78 = sub_100746A14();
  v80 = v79;
  if (v79)
  {
    v81 = HIBYTE(v79) & 0xF;
    if ((v79 & 0x2000000000000000) == 0)
    {
      v81 = v78 & 0xFFFFFFFFFFFFLL;
    }

    v82 = v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
    v83 = v81 == 0;
    v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = v83;
    if (v83 == v82)
    {
      goto LABEL_26;
    }

    if (v81)
    {
      v84 = [v7 contentView];
      [v84 insertSubview:*&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel] belowSubview:v125];

LABEL_26:
      v85 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
LABEL_30:
      v87 = sub_100753064();

      goto LABEL_31;
    }
  }

  else
  {
    v86 = v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
    v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
    if (v86 == 1)
    {
      v87 = 0;
      v85 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
      goto LABEL_31;
    }
  }

  [*&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel] removeFromSuperview];
  v85 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_headerLabel];
  if (v80)
  {
    goto LABEL_30;
  }

  v87 = 0;
LABEL_31:
  [v85 setText:v87];

  sub_1006B21C4();
  if (sub_1007469E4())
  {
    (*(v126 + 104))(v128, enum case for VideoFillMode.scaleAspectFill(_:), v127);
    sub_10074EC14();
    sub_10074F2A4();
    v88 = v129;
    sub_100750504();

    v89 = sub_1007504F4();
    (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    v90 = v152[0];
    sub_10074EB94();
    v91 = v132;
    sub_10074EC24();
    v92 = sub_100741264();
    (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
    v145 = v7;
    v93 = v133;
    sub_10074EBE4();
    v94 = v134;
    sub_10074EBD4();
    v95 = type metadata accessor for VideoView(0);
    sub_100596534(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v144 = v95;
    v147 = v90;
    v96 = sub_1007464A4();
    sub_10000C8CC(v94, &unk_1009281C0, qword_1007ABBB0);
    v7 = v145;
    sub_10000C8CC(v93, &unk_1009281C0, qword_1007ABBB0);
    v97 = v91;
    v71 = &OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_delegate;
    sub_10000C8CC(v97, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v152, &unk_1009276E0, &unk_1007A5C70);
    v98 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
    v99 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
    v100 = *(v98 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    if (v96)
    {
      v101 = v96;
      v102 = [v101 superview];
      if (v102)
      {
        v103 = v102;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v104 = v100;
        v105 = sub_100753FC4();

        v71 = &OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_delegate;
        if (v105)
        {
          [v101 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v110 = *&v100[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v100[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v96;
    v111 = v96;
    sub_10057A514(v110);

    v112 = *(*(v98 + v99) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v112 && (v113 = swift_dynamicCastClass()) != 0)
    {
      v114 = v113;
      v115 = v112;
      [v114 setUserInteractionEnabled:0];
    }

    else
    {
    }

    (*(v135 + 8))(v146, v136);
  }

  else if (sub_1007469F4())
  {

    v106 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_artworkView];
    v107 = *(*&v7[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    v108 = *(v107 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    *(v107 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = v106;
    v109 = v106;
    sub_10057A514(v108);

    sub_1005791C8();
  }

  v116 = sub_1007469C4();
  v117 = v148;
  if (!v116)
  {
    v116 = [objc_opt_self() clearColor];
  }

  v118 = v116;
  v119 = *&v7[v71[31]];
  v120 = type metadata accessor for MediaView();
  v153.receiver = v119;
  v153.super_class = v120;
  objc_msgSendSuper2(&v153, "setBackgroundColor:", v118);
  [*(*&v119[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) setBackgroundColor:v118];
  v121 = *&v119[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView];
  if (v121)
  {
    v122 = v121;
    [v122 setBackgroundColor:v118];
  }

  [v7 setNeedsLayout];
  return (*(v149 + 8))(v117, v150);
}

uint64_t sub_1005954DC(uint64_t a1)
{
  result = sub_1007469B4();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_100595518(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_10074D544();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074A534();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v7, v13);
  sub_1006B1AD0(v10, a6, v15);
  (*(v8 + 8))(v10, v7);
  sub_10074A554();
  sub_100596534(&unk_10093F640, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  sub_100750D34();
  (*(v12 + 8))(v15, v11);
  v16 = [objc_opt_self() fractionalWidthDimension:1.0];
  v17 = sub_100749A04();

  return v17;
}

double sub_1005957F8(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v41 = sub_10074D544();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10074D574();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074A534();
  __chkstk_darwin(v12 - 8);
  v38 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10074A554();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10074CD14();
  v15 = *(v34 - 8);
  *&v16 = __chkstk_darwin(v34).n128_u64[0];
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a6;
  v19 = [a6 traitCollection];
  v20 = sub_100750F34();
  swift_allocObject();
  v21 = sub_100750F14();
  v37 = a1;
  sub_100746A14();
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_1009214B0 != -1)
  {
    swift_once();
  }

  v22 = sub_100750534();
  sub_10000D0FC(v22, qword_100981B48);
  sub_100753C14();
  v23 = sub_10074F3F4();
  v33 = v19;
  v24 = v23;
  v52[3] = v23;
  v52[4] = sub_100596534(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v25 = sub_10000D134(v52);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
  sub_10074FC74();
  sub_10000C620(v52);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v15 + 8))(v18, v34);
  sub_1007469D4();
  sub_10074D554();
  (*(v35 + 8))(v11, v36);
  sub_1006B1AD0(v9, v44, v38);
  (*(v39 + 8))(v9, v41);
  swift_allocObject();
  v26 = sub_100750F14();
  v50 = v20;
  v51 = &protocol witness table for LayoutViewPlaceholder;
  v49 = v26;
  sub_10000C824(v52, v48);
  v46 = v20;
  v47 = &protocol witness table for LayoutViewPlaceholder;
  v45 = v21;

  v27 = v40;
  sub_10074A544();
  sub_100596534(&unk_1009332D8, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  v28 = v43;
  sub_100750404();
  v30 = v29;

  (*(v42 + 8))(v27, v28);
  sub_10000C620(v52);
  return v30;
}

void sub_100595E0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v7 - 8);
  v9 = v31 - v8;
  v10 = sub_100747D94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007504F4();
  v34 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v36);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_100746A24();
  if (swift_dynamicCast())
  {
    v33 = a2;
    v17 = v35;
    v18 = sub_1007469E4();
    if (v18)
    {
      v32 = v3;
      v19 = *(*(*&v3[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      if (v19 && (v31[4] = v18, v20 = type metadata accessor for VideoView(0), (v21 = swift_dynamicCastClass()) != 0))
      {
        v31[2] = v20;
        v31[3] = v17;
        v22 = qword_100982288;
        v23 = v21;
        swift_beginAccess();
        v24 = *(v11 + 16);
        v31[1] = v23;
        v24(v13, v23 + v22, v10);
        v25 = v19;
        sub_100747CE4();
        (*(v11 + 8))(v13, v10);
        v26 = v34;
        if ((*(v34 + 48))(v9, 1, v14) != 1)
        {
          (*(v26 + 32))(v16, v9, v14);
          [v32 bounds];
          sub_100750464();
          sub_10074EC14();
          sub_10074F374();

          sub_100596534(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
          sub_100744204();

          (*(v26 + 8))(v16, v14);
          return;
        }

        sub_10000C8CC(v9, &unk_1009281D0, qword_1007A82B0);
      }

      else
      {
      }

      v3 = v32;
    }

    if (sub_1007469F4())
    {
      [v3 bounds];
      sub_10074F374();
      v27 = OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_artworkView;
      v28 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_artworkView];
      sub_10074F324();
      sub_100743364();
      [v28 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();

      v29 = *&v3[v27];
      sub_1007433C4();
      sub_100596534(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v30 = v29;
      sub_100744204();
    }
  }
}

void sub_1005963BC(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_artworkView);
  sub_1007433C4();
  sub_100596534(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v4 = v3;
  sub_100744274();

  v5 = *(*(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension35LargeHeroBreakoutCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    if (swift_dynamicCastClass())
    {
      sub_100596534(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
      v6 = v5;
      sub_100744274();
    }
  }
}

uint64_t sub_100596534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10059657C(void *a1)
{
  if (*(v1 + 24))
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    [a1 _verticalVelocity];
    v5 = v4;
    [a1 _systemContentInset];
    v7 = v6;
    [a1 contentInset];
    v9 = v7 + v8;
    [a1 contentOffset];
    *(v1 + 48) = v9 + v10 >= v2;
    *(v1 + 56) = v5;
  }

  v11 = sub_10074AFA4();
  result = sub_10074AFA4();
  if (v11 != result)
  {
    v13 = *(v1 + 32);
    if (v13)
    {
      return v13(*(v1 + 48), 1, *(v1 + 56));
    }
  }

  return result;
}

uint64_t sub_10059667C()
{
  sub_1000164A8(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

double sub_1005966E0(double a1)
{
  v1 = sub_100743B54();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_10093F738, qword_1007CB830);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  v11 = 0.3;
  v10 = 0x3FA999999999999ALL;
  (*(v2 + 104))(v4, enum case for TimingCurve.linear(_:), v1);
  sub_100743E74();
  sub_100743E64();
  (*(v6 + 8))(v8, v5);
  return v11;
}

void sub_1005968BC(void *a1)
{
  sub_10059A2A8(a1);
}

void sub_10059692C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_10074E5E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074E644();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074E654();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for Uber.AssetType.artwork(_:))
  {
    v14 = [v2 traitCollection];
    v15 = sub_1007537D4();

    if (v15)
    {
      v16 = sub_10074E5D4();
      if (!v16)
      {
        return;
      }

LABEL_27:

      sub_10074E604();
      sub_100596E6C(v16, a1, v8);

      (*(v6 + 8))(v8, v5);
      return;
    }

    v16 = sub_10074E634();
    if (v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v13 == enum case for Uber.AssetType.video(_:))
    {
      v17 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView);
      v38 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
      v39 = v17;
      v18 = *(v17 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
      p_info = _TtC22SubscribePageExtension18ActionDebugSetting.info;
      v20 = *&v18[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
      v40 = v3;
      if (v20)
      {
        type metadata accessor for VideoView(0);
        v21 = swift_dynamicCastClass();
        if (v21)
        {
          sub_10059A3B4(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
          v22 = v20;
          v23 = [v21 superview];
          if (v23)
          {
            v24 = v23;
            v36 = sub_100016C60(0, &qword_100922300, UIView_ptr);
            v25 = v22;
            v26 = v18;
            v37 = a1;
            v27 = sub_100753FC4();
            a1 = v37;
            LODWORD(v36) = v27;

            p_info = (_TtC22SubscribePageExtension18ActionDebugSetting + 32);
            if (v36)
            {
              [v21 removeFromSuperview];
            }
          }

          else
          {
          }
        }
      }

      else
      {
        v21 = 0;
      }

      v28 = p_info;
      v29 = p_info[418];
      v30 = *(&v29->flags + v18);
      *(&v29->flags + v18) = v21;
      v31 = v21;
      sub_10057A514(v30);

      if (v21)
      {
        *&v31[qword_10093CB48 + 8] = &off_10087EBB0;
        swift_unknownObjectWeakAssign();
      }

      sub_10074B184();
      sub_100752764();
      sub_100752D34();
      v32 = v41;
      v33 = *(&v28[418]->flags + *(v39 + v38));
      if (v33)
      {
        type metadata accessor for VideoView(0);
        v34 = swift_dynamicCastClass();
        if (v34)
        {
          sub_10059A3B4(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
          v35 = v33;
        }
      }

      else
      {
        v34 = 0;
      }

      sub_10059A3B4(&qword_10093F7B8, type metadata accessor for UberHeaderView, &unk_1007CF788);
      sub_10074B164();

      if (!sub_10074E624())
      {

        return;
      }

      v16 = sub_10074EC14();

      goto LABEL_27;
    }

    if (v13 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v10 + 8))(v12, v9);
      return;
    }

    v16 = sub_10074E5C4();
    if (v16)
    {
      goto LABEL_27;
    }
  }
}

void sub_100596E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1007504F4();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074E5E4();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v3 tabBarController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 tabBar];

    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v68.origin.x = v20;
    v68.origin.y = v22;
    v68.size.width = v24;
    v68.size.height = v26;
    Height = CGRectGetHeight(v68);
  }

  else
  {
    Height = 0.0;
  }

  v62 = a1;
  v28 = sub_10074F1E4();
  v29 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView);
  v30 = type metadata accessor for MediaView();
  v67.receiver = v29;
  v67.super_class = v30;
  objc_msgSendSuper2(&v67, "setBackgroundColor:", v28);
  [*(*&v29[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) setBackgroundColor:v28];
  v31 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView];
  if (v31)
  {
    v32 = v31;
    [v32 setBackgroundColor:v28];
  }

  v33 = [v4 view];
  if (v33)
  {
    v34 = v33;
    [v33 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v69.origin.x = v36;
    v69.origin.y = v38;
    v69.size.width = v40;
    v69.size.height = v42;
    v43 = CGRectGetHeight(v69);
    v44 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset);
    v45 = [v4 view];
    if (v45)
    {
      v46 = v45;
      *&v47 = v43 - Height - v44;
      [v45 bounds];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v70.origin.x = v49;
      v70.origin.y = v51;
      v70.size.width = v53;
      v70.size.height = v55;
      Width = CGRectGetWidth(v70);
      v57 = [v4 traitCollection];
      sub_1006439D4(v57, a3, 1, Width, v47, 0);
      if (sub_1007537D4())
      {
        (*(v12 + 104))(v15, enum case for Uber.Style.inline(_:), v11);
        sub_10059A3B4(&qword_10092EED0, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
        sub_100753274();
        sub_100753274();
        if (v65 == v63 && v66 == v64)
        {
          (*(v12 + 8))(v15, v11);

LABEL_14:
          sub_10074F374();

          type metadata accessor for UberHeaderView();
          sub_10059A3B4(&qword_10092EEC8, type metadata accessor for UberHeaderView, &unk_1007D51D8);
          sub_100744204();

          return;
        }

        v58 = sub_100754754();
        (*(v12 + 8))(v15, v11);

        if (v58)
        {
          goto LABEL_14;
        }
      }

      sub_10074F2A4();
      sub_100750504();
      sub_1007504B4();
      (*(v60 + 8))(v10, v61);
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1005973C0(double a1, double a2)
{
  v3 = v2;
  v5 = sub_100743B54();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_100940720, qword_1007AA7F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &aBlock[-1] - v11;
  v13 = a1 < 0.5;
  if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_statusBarStyle] != v13)
  {
    aBlock[0] = 0x3FC999999999999ALL;
    aBlock[6] = 0x3FA999999999999ALL;
    (*(v6 + 104))(v8, enum case for TimingCurve.linear(_:), v5);
    sub_100743E74();
    sub_100743E64();
    (*(v10 + 8))(v12, v9);
    v14 = *aBlock;
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = v13;
    aBlock[4] = sub_10059A434;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10087BF50;
    v17 = _Block_copy(aBlock);
    v18 = v3;

    [v15 animateWithDuration:v17 animations:v14];
    _Block_release(v17);
  }
}

void sub_10059768C()
{
  if (!*&v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver])
  {
    return;
  }

  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_10056379C();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = v2;
    [v10 setContentInset:{v3, v5, v7, v9}];
    [v10 setScrollIndicatorInsets:{v3, v5, v7, v9}];

    v11 = OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_hasAnimatedToShowUber;
    if ((v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_hasAnimatedToShowUber] & 1) == 0 && [v0 isViewLoaded])
    {
      if ([v0 transitionCoordinator])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        [v10 contentOffset];
        if (v12 <= 0.0)
        {
          v13 = [v0 collectionView];
          if (!v13)
          {
            goto LABEL_19;
          }

          v14 = v13;
          [v13 _effectiveContentInset];
          v16 = v15;

          [v10 setContentOffset:1 animated:{0.0, -v16}];
          v0[v11] = 1;
        }
      }
    }

    v17 = [v0 collectionView];
    if (v17)
    {
      v18 = v17;
      sub_100563518(v17);

      return;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

void sub_1005978BC(__n128 a1)
{
  v2 = sub_10074E5E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  MaxY = 0.0;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber])
  {

    sub_10074E604();

    (*(v3 + 32))(v11, v8, v2);
    (*(v3 + 104))(v5, enum case for Uber.Style.above(_:), v2);
    sub_10059A3B4(&qword_10092EED0, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
    sub_100753274();
    sub_100753274();
    if (v29[2] == v29[0] && v29[3] == v29[1])
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_100754754();
    }

    v14 = *(v3 + 8);
    v14(v5, v2);

    if (v13)
    {
      v15 = [v1 navigationController];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 navigationBar];

        [v17 frame];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v30.origin.x = v19;
        v30.origin.y = v21;
        v30.size.width = v23;
        v30.size.height = v25;
        MaxY = CGRectGetMaxY(v30);
      }

      v26 = [v1 traitCollection];
      v27 = sub_100643E04(v26, 1);

      v14(v11, v2);
      MaxY = v27 - MaxY;
    }

    else
    {
      v14(v11, v2);
    }
  }

  v28 = &v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_navigationBarTransitionDistance];
  *v28 = fmax(MaxY, 16.0);
  *(v28 + 8) = 0;
  sub_10062ADD8();
}

char *sub_100597C00()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber];
    if (!v4)
    {
      v6 = 0;
      goto LABEL_38;
    }

    v5 = OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView;
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView];
    if (v6)
    {
      v7 = v6;
LABEL_38:

      return v6;
    }

    v66 = OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber;
    v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
    v9 = objc_allocWithZone(type metadata accessor for UberHeaderView());
    swift_retain_n();

    v10 = sub_100640EE8(v4, 1, v8);
    [v1 pageMarginInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView;
    [*&v10[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView] layoutMargins];
    if (v12 != v20 || v14 != v21 || v16 != v22 || v18 != v23)
    {
      [*&v10[v19] setLayoutMargins:{v12, v14, v16, v18}];
      [v10 invalidateIntrinsicContentSize];
      v27 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver];
      if (v27)
      {
        v28 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver + 8];

        v27(v29);
        v20 = sub_1000164A8(v27, v28);
      }
    }

    v30 = [v1 navigationItem];
    v31 = OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_navigationItem;
    v32 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_navigationItem];
    if (v32)
    {
      v33 = v32;
      v34 = sub_100753064();
      [v33 removeObserver:v10 forKeyPath:v34 context:&unk_100942900];

      v35 = *&v10[v31];
    }

    else
    {
      v35 = 0;
    }

    *&v10[v31] = v30;
    v36 = v30;

    v37 = *&v10[v31];
    if (v37)
    {
      v38 = v37;
      v39 = sub_100753064();
      [v38 addObserver:v10 forKeyPath:v39 options:0 context:&unk_100942900];

      v40 = *&v10[v31];
      if (v40)
      {
        v40 = [v40 title];
        if (v40)
        {
          v41 = v40;
          v42 = sub_100753094();
          v44 = v43;

          v45 = v44;
          v40 = v42;
LABEL_28:
          sub_100640708(v40, v45);

          v46 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v47 = &v10[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver];
          v48 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver];
          v49 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver + 8];
          *v47 = sub_10059A3A4;
          v47[1] = v46;

          sub_1000164A8(v48, v49);

          type metadata accessor for UberScrollObserver();
          v50 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v50[5] = 0;
          v50[6] = 0;
          v50[3] = v10;
          v50[4] = v3;
          swift_unknownObjectWeakAssign();
          v6 = v10;
          v51 = v3;
          sub_10056341C();
          v52 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v53 = v50[5];
          v54 = v50[6];
          v50[5] = sub_10059A3AC;
          v50[6] = v52;

          sub_1000164A8(v53, v54);

          v55 = [v1 navigationItem];
          v56 = [v55 _largeTitleAccessoryView];

          if (v56)
          {
            v57 = [v1 navigationItem];
            [v57 _setLargeTitleAccessoryView:0];

            v58 = v56;
            sub_100101D58(v56);
          }

          v59 = *&v1[v5];
          v60 = v6;
          if (v59)
          {
            [v59 removeFromSuperview];
            v59 = *&v1[v5];
          }

          *&v1[v5] = v6;
          v3 = v6;

          v61 = [v1 viewIfLoaded];
          if (v61)
          {
            v62 = v61;
            [v61 insertSubview:v3 atIndex:0];
          }

          *&v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver] = v50;

          v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
          v63 = [v1 viewIfLoaded];
          [v63 setNeedsLayout];

          if (v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[v67])
          {
            v64 = [v1 navigationItem];
            [v64 setLargeTitleDisplayMode:3];
          }

          else
          {
            v64 = [v1 navigationItem];
            [v64 setLargeTitleDisplayMode:2];
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      v40 = 0;
    }

    v45 = 0;
    goto LABEL_28;
  }

  return 0;
}

void sub_100598200(__n128 a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView];
  if (v4)
  {
    type metadata accessor for UberHeaderView();
    sub_10059A3B4(&qword_10092EEC8, type metadata accessor for UberHeaderView, &unk_1007D51D8);
    v5 = v4;
    sub_100744274();
    v6 = *(*&v5[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView] + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView);
    if (v6)
    {
      v7 = v6;
      v8 = [v2 navigationItem];
      v9 = v7;
      [v8 _setLargeTitleAccessoryView:v9];
    }
  }

  v10 = OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver;
  v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v11)
  {
    v12 = *(v11 + 40);
    if (v12)
    {
      v13 = *(v11 + 48);

      v14 = sub_10001B5AC(v12, v13);
      v12(v14, 1.0, 0.0);

      a1.n128_f64[0] = sub_1000164A8(v12, v13);
    }
  }

  v15 = *&v2[v3];
  if (v15)
  {
    [v15 removeFromSuperview];
    v16 = *&v2[v3];
  }

  else
  {
    v16 = 0;
  }

  *&v2[v3] = 0;

  *&v2[v10] = 0;

  v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
  v17 = [v2 viewIfLoaded];
  [v17 setNeedsLayout];

  if (v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber])
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  v19 = [v2 navigationItem];
  [v19 setLargeTitleDisplayMode:v18];
}

id sub_100598460(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_inlineLockupHeight) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_statusBarStyle) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_hasAnimatedToShowUber) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_startedAsFlowPreview) = 0;
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_artworkLoader) = v9;
  v5 = a1;

  v6 = sub_10062DFAC(v5, a2);

  sub_10074B184();
  v7 = v6;
  sub_100752D34();
  sub_10074B154();

  sub_100748464();
  sub_100752D34();
  sub_100748424();

  return v7;
}

void sub_1005985E8()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v4 = sub_100753E04();
    [v3 setBackgroundColor:v4];

    v5 = [v1 collectionView];
    if (v5)
    {
      v7 = v5;
      v8 = [objc_opt_self() clearColor];
      [v7 setBackgroundColor:v8];
    }

    v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView];
    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = v9;
    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v11 insertSubview:v10 atIndex:0];

LABEL_7:
      sub_1005978BC(v6);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10059879C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewWillBecomeFullyVisible");
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  sub_10074B104();
  sub_100748464();
  sub_100752754();
  if (v2)
  {
    v1 = v2;
    sub_100748444();
  }

  sub_100744254();
}

void sub_1005988C0(char a1)
{
  v2 = v1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1);
  sub_100744254();
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v4 && !*&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController])
  {

    v5 = [v2 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationBar];

      if (v7)
      {

        v8 = [v2 transitionCoordinator];
        if (v8)
        {
          v9 = v8;
          v18 = sub_10059A29C;
          v19 = v4;
          v14 = _NSConcreteStackBlock;
          v15 = 1107296256;
          v16 = sub_1003ED3AC;
          v17 = &unk_10087BEB0;
          v10 = _Block_copy(&v14);

          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v12 = swift_allocObject();
          *(v12 + 16) = v11;
          *(v12 + 24) = v4;
          v18 = sub_10059A2A0;
          v19 = v12;
          v14 = _NSConcreteStackBlock;
          v15 = 1107296256;
          v16 = sub_1003ED3AC;
          v17 = &unk_10087BF00;
          v13 = _Block_copy(&v14);

          [v9 animateAlongsideTransition:v10 completion:v13];

          _Block_release(v13);
          _Block_release(v10);
          swift_unknownObjectRelease();
          return;
        }

        sub_10056341C();
      }
    }
  }
}

void sub_100598B30(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v7)
    {
      v8 = v7;
      sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
      v9 = v6;
      v10 = sub_100753FC4();

      if ((v10 & 1) != 0 && ([a1 isCancelled] & 1) != 0 && (v11 = *(a3 + 40)) != 0)
      {
        v12 = *(a3 + 48);

        v11(v13, 1.0, 0.0);

        sub_1000164A8(v11, v12);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_100598CB0(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid) = 1;
  v3 = [v1 viewIfLoaded];
  [v3 setNeedsLayout];

  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v4 = v6;
  sub_10074B104();
  sub_100748464();
  sub_100752754();
  if (v6)
  {
    v5 = v6;
    sub_100748444();

    v4 = v5;
  }
}

void sub_100598E10(char a1)
{
  v2 = v1;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v24, "viewWillDisappear:", a1 & 1);
  sub_100748464();
  sub_100752754();
  v4 = v18;
  if (v18)
  {
    v5 = v18;
    sub_100748434();
  }

  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v2 presentedViewController];
  if (v7)
  {
    v8 = v7;

LABEL_6:
    return;
  }

  if (v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation] == 1 || (v9 = [v2 transitionCoordinator]) == 0)
  {
    v15 = *(v6 + 40);
    if (!v15)
    {

      goto LABEL_6;
    }

    v16 = *(v6 + 48);

    v15(v17, 1.0, 0.0);

    sub_1000164A8(v15, v16);
  }

  else
  {
    v10 = v9;
    v22 = sub_10059A250;
    v23 = v6;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1003ED3AC;
    v21 = &unk_10087BE10;
    v11 = _Block_copy(&v18);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    v22 = sub_10059A294;
    v23 = v13;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1003ED3AC;
    v21 = &unk_10087BE88;
    v14 = _Block_copy(&v18);

    [v10 animateAlongsideTransition:v11 completion:v14];

    _Block_release(v14);
    _Block_release(v11);
    swift_unknownObjectRelease();
  }
}

double sub_1005990D8(void *a1, uint64_t a2)
{
  v3 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for StoreCollectionViewController();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      (*((swift_isaMask & *v6) + 0x158))();
    }
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = *(a2 + 48);

    v7(v9, 1.0, 0.0);

    return sub_1000164A8(v7, v8);
  }

  return result;
}

void sub_1005991D0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([a1 isCancelled])
    {
      v5 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v5)
      {
        v6 = v5;
        sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
        v7 = v4;
        v8 = sub_100753FC4();

        if ((v8 & 1) != 0 && !*&v7[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController])
        {
          v9 = [v7 navigationController];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 navigationBar];

            if (v11)
            {

              sub_10056341C();
            }
          }
        }
      }
    }
  }
}

void sub_100599370()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewDidBecomePartiallyVisible");
  sub_100744254();
  sub_100748464();
  sub_100752754();
  if (v2)
  {
    v1 = v2;
    sub_100748434();
  }
}

void sub_1005994C0(void *a1, uint64_t a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a3, a4);
  v8 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v8)
  {
    v10[4] = sub_10059A468;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1003ED3AC;
    v10[3] = &unk_10087BDE8;
    v9 = _Block_copy(v10);
    swift_retain_n();

    [a1 animateAlongsideTransition:v9 completion:0];
    _Block_release(v9);
  }
}

void sub_100599658(uint64_t a1, uint64_t a2)
{
  v24.receiver = v2;
  v24.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v24, "viewDidLayoutSubviews");
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView];
  if (v3)
  {
    v4 = v3;
    [v2 pageMarginInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView;
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_titleView] layoutMargins];
    v20 = v6 == v17 && v8 == v14 && v10 == v15 && v12 == v16;
    if (v20 || ([*&v4[v13] setLayoutMargins:{v6, v8, v10, v12}], objc_msgSend(v4, "invalidateIntrinsicContentSize"), (v21 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver]) == 0))
    {
    }

    else
    {
      v22 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_sizeChangeObserver + 8];

      v21(v23);

      sub_1000164A8(v21, v22);
    }
  }

  if (v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid] == 1)
  {
    v2[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid] = 0;
    sub_10059768C();
  }
}

void sub_100599860(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber);
  if (v4)
  {
    v17 = v4;
    if (!a1)
    {
      goto LABEL_14;
    }

    sub_10074E664();
    sub_10059A3B4(&qword_10092EEC0, &type metadata accessor for Uber, &protocol conformance descriptor for Uber);

    v5 = sub_100753014();

    if (v5)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberHeaderView);
  if (v6)
  {
    v7 = v6;
    if (sub_10074E624())
    {

      sub_10074B184();
      sub_100752764();
      sub_100752D34();
      v8 = *(*(*&v7[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      if (v8)
      {
        type metadata accessor for VideoView(0);
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          sub_10059A3B4(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
          v10 = v8;
        }
      }

      else
      {
        v9 = 0;
      }

      sub_10059A3B4(&qword_10093F7B8, type metadata accessor for UberHeaderView, &unk_1007CF788);
      v11 = v7;
      sub_10074B124();
    }

    else
    {
    }
  }

LABEL_14:
  v12 = sub_100597C00();
  if (!v12)
  {
LABEL_20:
    sub_100598200(v13);
    return;
  }

  v14 = v12;
  if (!*(v2 + v3))
  {

    goto LABEL_20;
  }

  v15 = *(*(*&v12[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);

  if (v15)
  {
    sub_10059692C(v14, v16);
  }

  sub_1005978BC(v16);
}

double sub_100599B24()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v1)
  {
    if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController])
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v3 = *(v1 + 48);

        v4 = sub_10001B5AC(v2, v3);
        v2(v4, 1.0, 0.0);

        return sub_1000164A8(v2, v3);
      }
    }

    else
    {

      v6 = [v0 navigationController];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 navigationBar];

        if (v8)
        {

          sub_10056341C();
        }
      }
    }
  }

  return result;
}

void sub_100599C54(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_statusBarStyle];
  *&a1[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_statusBarStyle] = a2;
  if (v3 != a2)
  {
    v5 = [objc_allocWithZone(UIStatusBarAnimationParameters) init];
    [v5 setSkipFencing:1];
    [a1 _setNeedsStatusBarAppearanceUpdateWithAnimationParameters:v5];
  }
}

void sub_100599CF0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
    v2 = Strong;
    v3 = [Strong viewIfLoaded];
    [v3 setNeedsLayout];
  }
}

void sub_100599D78(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1005973C0(a2, a3);
  }
}

void sub_100599F8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v11, "traitCollectionDidChange:", a1);
  v5 = [v2 traitCollection];
  v6 = sub_1007537D4();

  if (!a1 || (sub_1007537D4() & 1) != (v6 & 1))
  {
    v7 = sub_100597C00();
    if (v7)
    {
      v9 = v7;
      if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber])
      {

        sub_10059692C(v9, v10);

        return;
      }
    }

    sub_100598200(v8);
  }
}

double sub_10059A0E0()
{

  return result;
}

id sub_10059A140(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UberedCollectionViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10059A204(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_startedAsFlowPreview) = result;
  if (result)
  {
    *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 1;
  }

  return result;
}

double sub_10059A238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10059A258()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10059A2A8(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_10074B974();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v7 = v5;

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];

    sub_10074B964();

    sub_100599B24();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10059A3B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10059A3FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10059A46C()
{
  v0 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShelfFooterView.Style(0);
  sub_100039C50(v3, qword_1009826A0);
  v4 = sub_10000D0FC(v3, qword_1009826A0);
  if (qword_100921CA0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_100982D18);
  sub_10059C530(v5, v2);
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.2];

  result = sub_10059C6FC(v2, v4);
  *(v4 + *(v3 + 20)) = v7;
  return result;
}

id sub_10059A5B8()
{
  type metadata accessor for ShelfFooterSeparator();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_10093F7C8 = result;
  return result;
}

char *sub_10059A5F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_layoutMetrics];
  *(v14 + 3) = &type metadata for Double;
  *(v14 + 4) = &protocol witness table for Double;
  *v14 = 0x4038000000000000;
  v14[40] = 0;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v4[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_footerAction];
  *v17 = 0;
  *(v17 + 1) = 0;
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = [v22 layer];
  [v23 setAllowsGroupOpacity:0];

  [v22 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton;
  [*&v22[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton] addTarget:v22 action:"didTapWithTitleButton:" forControlEvents:64];
  v25 = *&v22[v24];
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v26 = v25;
  sub_100752A94();
  sub_10000C8CC(v28, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v29, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  (*(v11 + 8))(v13, v10);
  [v22 addSubview:*&v22[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator]];
  [v22 addSubview:*&v22[v24]];

  return v22;
}

double sub_10059A948(double a1, double a2)
{
  v3 = sub_1007507B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_1001CC150(&v2[v7], &v25);
  v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton];
  v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator];
  v23 = type metadata accessor for ShelfFooterTitleButton(0);
  v24 = &protocol witness table for UIButton;
  *&v22 = v8;
  v20 = type metadata accessor for ShelfFooterSeparator();
  v21 = sub_10059B098();
  *&v19 = v9;
  type metadata accessor for ShelfFooterViewLayout();
  v10 = swift_allocObject();
  v11 = v26[0];
  v10[1] = v25;
  v10[2] = v11;
  *(v10 + 41) = *(v26 + 9);
  sub_100012160(&v22, (v10 + 4));
  sub_100012160(&v19, v10 + 104);
  v12 = v8;
  v13 = v9;
  v14 = [v2 traitCollection];
  sub_1001CBB70();
  sub_100751254();
  v16 = v15;

  (*(v4 + 8))(v6, v3);
  return v16;
}

uint64_t sub_10059AB98()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1007507B4();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = v0;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "layoutSubviews", v4);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_layoutMetrics;
  swift_beginAccess();
  sub_1001CC150(&v0[v7], &v23);
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton];
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator];
  v21 = type metadata accessor for ShelfFooterTitleButton(0);
  v22 = &protocol witness table for UIButton;
  *&v20 = v8;
  v18 = type metadata accessor for ShelfFooterSeparator();
  v19 = sub_10059B098();
  *&v17 = v9;
  type metadata accessor for ShelfFooterViewLayout();
  v10 = swift_allocObject();
  v11 = v24[0];
  v10[1] = v23;
  v10[2] = v11;
  *(v10 + 41) = *(v24 + 9);
  sub_100012160(&v20, (v10 + 4));
  sub_100012160(&v17, v10 + 104);
  v12 = v8;
  v13 = v9;
  sub_1007477B4();
  v14 = [v0 traitCollection];
  sub_1001CBB70();
  sub_100751244();

  return (*(v3 + 8))(v6, v2);
}

void *sub_10059AEF4(void *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_footerAction);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_footerAction + 8);
    v6[3] = sub_100016C60(0, &qword_100928A80, UIControl_ptr);
    v6[0] = v3;
    sub_10001B5AC(v2, v4);
    v5 = v3;
    v2(v6);
    sub_1000164A8(v2, v4);
    return sub_10000C8CC(v6, &unk_100923520, &qword_1007A5A70);
  }

  return result;
}

unint64_t sub_10059B098()
{
  result = qword_10093F818;
  if (!qword_10093F818)
  {
    type metadata accessor for ShelfFooterSeparator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093F818);
  }

  return result;
}

double sub_10059B0F0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, double a5, double a6)
{
  v105 = a3;
  v106 = 0x6C6F686563616C50;
  v94 = sub_1007507B4();
  v104 = *(v94 - 8);
  __chkstk_darwin(v94);
  v103 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_100751144();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = v88 - v12;
  __chkstk_darwin(v13);
  v93 = v88 - v14;
  __chkstk_darwin(v15);
  v92 = v88 - v16;
  v17 = sub_100750954();
  __chkstk_darwin(v17 - 8);
  v88[1] = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100751154();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100751504();
  __chkstk_darwin(v91);
  v90 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&qword_10092F318, &unk_1007C3860);
  __chkstk_darwin(v21 - 8);
  v23 = (v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = v88 - v25;
  __chkstk_darwin(v27);
  v29 = v88 - v28;
  __chkstk_darwin(v30);
  v32 = v88 - v31;
  v88[0] = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v88[0]);
  v89 = v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v107 = v88 - v35;
  if (!a2)
  {
    goto LABEL_6;
  }

  v36 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v36 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {

    v106 = a1;
    v95 = a2;
  }

  else
  {
LABEL_6:
    v95 = 0xEB00000000726564;
  }

  sub_10059C4C0(a4, v32);
  v37 = sub_100746384();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v32, 1, v37) == 1)
  {
    v40 = 0;
    v41 = 24.0;
  }

  else
  {
    sub_10059C4C0(v32, v29);
    v42 = (*(v38 + 88))(v29, v37);
    v43 = v29;
    v44 = a4;
    v45 = v26;
    v46 = v42;
    v47 = enum case for ShelfFooterStyle.games(_:);
    (*(v38 + 8))(v43, v37);
    v48 = v46 == v47;
    v26 = v45;
    a4 = v44;
    v40 = v48;
    v41 = 24.0;
    if (v48)
    {
      v41 = 16.0;
    }
  }

  v116[3] = &type metadata for Double;
  v116[4] = &protocol witness table for Double;
  *v116 = v41;
  v117 = v40;
  sub_10000C8CC(v32, &qword_10092F318, &unk_1007C3860);
  sub_10059C4C0(a4, v26);
  v49 = v39(v26, 1, v37);
  v50 = v107;
  if (v49 != 1)
  {
    sub_10059C4C0(v26, v23);
    if ((*(v38 + 88))(v23, v37) == enum case for ShelfFooterStyle.games(_:))
    {
      (*(v38 + 96))(v23, v37);
      v51 = *v23;
      if (qword_100921CA8 != -1)
      {
        swift_once();
      }

      v52 = sub_10000D0FC(v88[0], qword_100982D30);
      sub_10059C530(v52, v50);
      v53 = v105;
      if ([v105 horizontalSizeClass] == 1 && (v54 = objc_msgSend(v53, "preferredContentSizeCategory"), v55 = sub_100753924(), v54, (v55 & 1) != 0))
      {

        v56 = 0;
        v57 = 0;
      }

      else
      {
        [v51 size];
        v57 = v87;

        v56 = 1;
      }

      goto LABEL_25;
    }

    (*(v38 + 8))(v23, v37);
  }

  if (qword_100921CA0 != -1)
  {
    swift_once();
  }

  v58 = sub_10000D0FC(v88[0], qword_100982D18);
  sub_10059C530(v58, v50);
  v56 = 0;
  v57 = 0;
  v53 = v105;
LABEL_25:
  v59 = v100;
  sub_10000C8CC(v26, &qword_10092F318, &unk_1007C3860);
  if (qword_100921CB0 != -1)
  {
    swift_once();
  }

  v60 = qword_1009447F0;
  *(qword_1009447F0 + OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_hasLeadingIcon) = v56;
  *&v60[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconHeight] = v57;
  v61 = sub_100753064();
  [v60 setTitle:v61 forState:0];

  v62 = v89;
  sub_10059C530(v50, v89);
  v63 = OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_10059C594(v62, &v60[v63]);
  swift_endAccess();
  sub_1006947AC();
  sub_10059C5F8(v62);
  v64 = [v53 preferredContentSizeCategory];
  sub_100753CE4();
  sub_1007514D4();
  sub_100753CF4();
  [v60 updateTraitsIfNeeded];
  sub_100754004();
  v66 = v65;
  v68 = v67;
  sub_100750944();
  sub_100750BB4();
  *&v115[8] = sub_100750BD4();
  *&v115[16] = &protocol witness table for LabelPlaceholder;
  sub_10000D134(&v114);
  sub_100750BE4();
  v69 = v92;
  *(v92 + 3) = &type metadata for CGFloat;
  *(v69 + 4) = &protocol witness table for CGFloat;
  *v69 = v66;
  v70 = enum case for Resize.Rule.replaced(_:);
  v71 = *(v98 + 104);
  v72 = v99;
  v71(v69, enum case for Resize.Rule.replaced(_:), v99);
  v73 = v93;
  *(v93 + 3) = &type metadata for CGFloat;
  *(v73 + 4) = &protocol witness table for CGFloat;
  *v73 = v68;
  v71(v73, v70, v72);
  v74 = enum case for Resize.Rule.unchanged(_:);
  v71(v96, enum case for Resize.Rule.unchanged(_:), v72);
  v71(v97, v74, v72);
  sub_100751164();
  sub_1001CC150(v116, &v114);
  if (qword_100921910 != -1)
  {
    swift_once();
  }

  v75 = qword_10093F7C8;
  v76 = v102;
  v112 = v102;
  v113 = &protocol witness table for Resize;
  v77 = sub_10000D134(&v111);
  v78 = v101;
  (*(v101 + 16))(v77, v59, v76);
  v109 = type metadata accessor for ShelfFooterSeparator();
  v110 = sub_10059B098();
  *&v108 = v75;
  type metadata accessor for ShelfFooterViewLayout();
  v79 = swift_allocObject();
  v80 = *v115;
  v79[1] = v114;
  v79[2] = v80;
  *(v79 + 41) = *&v115[9];
  sub_100012160(&v111, (v79 + 4));
  sub_100012160(&v108, v79 + 104);
  v81 = v75;
  v82 = v103;
  sub_1001CBB70();
  v83 = v94;
  sub_100751254();
  v85 = v84;

  (*(v104 + 8))(v82, v83);
  (*(v78 + 8))(v59, v76);
  sub_1001CC1BC(v116);
  sub_10059C5F8(v107);
  return v85;
}

void sub_10059BCE0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v57 = a5;
  v63 = a3;
  v61 = a2;
  v59 = a1;
  v56 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  __chkstk_darwin(v56);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_10092F318, &unk_1007C3860);
  __chkstk_darwin(v10 - 8);
  v60 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v64 = &v56 - v13;
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v62 = a4;
  sub_10059C4C0(a4, &v56 - v18);
  v20 = sub_100746384();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v19, 1, v20);
  v58 = v21;
  if (v23 == 1)
  {
    v24 = 0;
    v25 = 24.0;
  }

  else
  {
    sub_10059C4C0(v19, v16);
    v26 = (*(v21 + 88))(v16, v20);
    v27 = enum case for ShelfFooterStyle.games(_:);
    (*(v21 + 8))(v16, v20);
    v24 = v26 == v27;
    v25 = 24.0;
    if (v26 == v27)
    {
      v25 = 16.0;
    }
  }

  v65[3] = &type metadata for Double;
  v65[4] = &protocol witness table for Double;
  *v65 = v25;
  v66 = v24;
  sub_10000C8CC(v19, &qword_10092F318, &unk_1007C3860);
  v28 = &v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_layoutMetrics];
  swift_beginAccess();
  sub_10059C654(v65, v28);
  swift_endAccess();
  v29 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator];
  [v29 setHidden:*(v28 + 40)];
  [v29 setBackgroundColor:*(v63 + *(type metadata accessor for ShelfFooterView.Style(0) + 20))];
  v30 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton];
  v31 = v61;
  if (v61)
  {
    v32 = v59;
    v33 = sub_100753064();
    [v30 setTitle:v33 forState:{0, v56, v57}];

    v34 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton] setTitle:0 forState:{0, v56, v57}];
    v35 = 1;
  }

  [v30 setHidden:v35];
  v36 = v64;
  sub_10059C4C0(v62, v64);
  if (v22(v36, 1, v20) == 1)
  {
    goto LABEL_18;
  }

  v37 = v60;
  sub_10059C4C0(v64, v60);
  v38 = v58;
  if ((*(v58 + 88))(v37, v20) != enum case for ShelfFooterStyle.games(_:))
  {
    (*(v38 + 8))(v60, v20);
LABEL_18:
    sub_10059C530(v63, v9);
    v47 = OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style;
    swift_beginAccess();
    sub_10059C594(v9, &v30[v47]);
    swift_endAccess();
    sub_1006947AC();
    sub_10059C5F8(v9);
    goto LABEL_19;
  }

  v39 = v9;
  v40 = v60;
  (*(v38 + 96))(v60, v20);
  v41 = *v40;
  if (qword_100921CA8 != -1)
  {
    swift_once();
  }

  v42 = sub_10000D0FC(v56, qword_100982D30);
  sub_10059C530(v42, v39);
  v43 = OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style;
  swift_beginAccess();
  sub_10059C594(v39, &v30[v43]);
  swift_endAccess();
  sub_1006947AC();
  sub_10059C5F8(v39);
  v44 = sub_100747B94();
  if ([v44 horizontalSizeClass] != 1)
  {

    goto LABEL_22;
  }

  v45 = [v44 preferredContentSizeCategory];
  v46 = sub_100753924();

  if ((v46 & 1) == 0)
  {
LABEL_22:
    v51 = v41;
    sub_10000C8CC(v64, &qword_10092F318, &unk_1007C3860);
    v30[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_hasLeadingIcon] = 1;
    [v51 size];
    *&v30[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconHeight] = v52;
    v53 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconView];
    v54 = v51;
    v48 = v53;
    v55 = [v48 layer];
    [v55 removeAllAnimations];

    v50 = v54;
    [v48 setImage:v50];

    goto LABEL_20;
  }

LABEL_19:
  sub_10000C8CC(v64, &qword_10092F318, &unk_1007C3860);
  v30[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v30[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconHeight] = 0;
  v48 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconView];
  v49 = [v48 layer];
  [v49 removeAllAnimations];

  [v48 setImage:0];
  v50 = 0;
LABEL_20:

  [v6 setNeedsLayout];
}

void sub_10059C3C8()
{
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_layoutMetrics;
  *(v1 + 24) = &type metadata for Double;
  *(v1 + 32) = &protocol witness table for Double;
  *v1 = 0x4038000000000000;
  *(v1 + 40) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_separator;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for ShelfFooterSeparator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_titleButton;
  type metadata accessor for ShelfFooterTitleButton(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_footerAction);
  *v4 = 0;
  v4[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10059C4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092F318, &unk_1007C3860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059C530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059C594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059C5F8(uint64_t a1)
{
  v2 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ShelfFooterView.Style(uint64_t a1)
{
  result = qword_10093F878;
  if (!qword_10093F878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10059C6FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059C774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfFooterTitleButton.Style(0);
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

uint64_t sub_10059C844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(0);
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

uint64_t sub_10059C8FC(uint64_t a1)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
  if (v2 <= 0x3F)
  {
    result = sub_100016C60(319, &qword_100923500, UIColor_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_10059C990()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  *&result = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_pendingAction;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_pendingAction))
  {
    v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_objectGraph);
    v8 = sub_10000C518(&unk_100923210, &unk_1007A5C60);

    sub_1007526C4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_10000C8CC(v5, &unk_100923960, &qword_1007A6240);
    }

    else
    {

      sub_1003C0E00(v10, 1, v7, v5);

      (*(v9 + 8))(v5, v8);
    }

    *(v1 + v6) = 0;

    sub_10059C990();
  }

  return result;
}

void sub_10059CB30(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_installOfferView;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for InstallPageInstallingOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_preInstallFreeOfferView;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallFreeOfferView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_preInstallPaidOfferView;
  *&v2[v7] = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallPaidOfferView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction] = 0;
  v8 = &v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_activeView];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_offerViewTransitionFadeDuration] = 0x3FD3333333333333;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_appAdamId;
  v10 = sub_10074ED34();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = &v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_offerMode];
  *v11 = 0;
  v11[8] = 1;
  v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_isInBackground] = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_pendingAction] = 0;
  v12 = &v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_objectGraph] = a2;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_presenter] = a1;
  sub_1007442C4();
  sub_100752764();

  sub_100752D34();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_artworkLoader] = v29[0];
  v30.receiver = v2;
  v30.super_class = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v13 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  sub_1005A3354(&qword_10093F978, type metadata accessor for InAppPurchaseInstallPageViewController, &unk_1007CBA70);
  v14 = v13;
  sub_100742074();
  v15 = [v14 view];
  if (v15)
  {
    v16 = v15;
    [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    v17 = [v14 view];
    if (v17)
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v18 = sub_100753E04();
      [v17 setBackgroundColor:v18];

      v19 = objc_opt_self();
      v20 = [v19 defaultCenter];
      [v20 addObserver:v14 selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

      v21 = [v19 defaultCenter];
      [v21 addObserver:v14 selector:"didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

      v22 = [v19 defaultCenter];
      v23 = v14;
      v24 = sub_10074D764();
      [v22 addObserver:v23 selector:"askToBuyRequestNotificationReceived:" name:v24 object:0];

      v25 = [v19 defaultCenter];
      v26 = v23;
      v27 = sub_10074DB84();
      [v25 addObserver:v26 selector:"didCompletePurchase:" name:v27 object:0];

      v29[3] = sub_100742084();
      v29[4] = &protocol witness table for BasePresenter;

      v29[0] = a1;
      v28 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
      swift_beginAccess();
      sub_10006644C(v29, v26 + v28, &unk_100930240, qword_1007A56E0);
      swift_endAccess();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_10059D128(char a1)
{
  if ((*(v1 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_offerMode + 8) & 1) == 0)
  {
    v3 = sub_100748BB4();
    if (v3 == sub_100748BB4())
    {
      if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction) && (sub_100741CF4(), swift_dynamicCastClass()))
      {

        sub_100741C94();

        if (qword_100921ED0 != -1)
        {
          swift_once();
        }

        v5 = sub_100752E44();
        sub_10000D0FC(v5, qword_1009832E8);
        sub_10000C518(&qword_100923930, &qword_1007A6B60);
        sub_100752454();
        *(swift_allocObject() + 16) = xmmword_1007A6580;
        sub_1007523A4();
        v14 = &type metadata for Bool;
        v6 = a1 & 1;
        LOBYTE(v13[0]) = v6;
        sub_100752444();
        sub_10000C8CC(v13, &unk_100923520, &qword_1007A5A70);
        sub_100752CF4();

        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        v8 = objc_allocWithZone(SKInstallSheetStatusUpdateRequest);
        v9 = sub_100753064();

        v15 = sub_1005A33AC;
        v16 = v7;
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1107296256;
        v13[2] = sub_1003E9548;
        v14 = &unk_10087C108;
        v10 = _Block_copy(v13);

        v11 = [v8 initWithAppBundleId:v9 isInstallSheetOpen:v6 completionHandler:v10];
        _Block_release(v10);

        [v11 start];
      }

      else
      {
        if (qword_100921ED0 != -1)
        {
          swift_once();
        }

        v12 = sub_100752E44();
        sub_10000D0FC(v12, qword_1009832E8);
        sub_10000C518(&qword_100923930, &qword_1007A6B60);
        sub_100752454();
        *(swift_allocObject() + 16) = xmmword_1007A5A00;
        sub_1007523A4();
        sub_100752CF4();
      }
    }
  }

  return result;
}

double sub_10059D570(uint64_t a1, char a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100921ED0 != -1)
    {
      swift_once();
    }

    v2 = sub_100752E44();
    sub_10000D0FC(v2, qword_1009832E8);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    swift_getErrorValue();
    v9 = v7;
    v3 = sub_10000D134(v8);
    (*(*(v7 - 1) + 16))(v3);
    sub_100752444();
    sub_10000C8CC(v8, &unk_100923520, &qword_1007A5A70);
    sub_100752CF4();
  }

  else
  {
    if (qword_100921ED0 != -1)
    {
      swift_once();
    }

    v6 = sub_100752E44();
    sub_10000D0FC(v6, qword_1009832E8);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v9 = &type metadata for Bool;
    LOBYTE(v8[0]) = a2 & 1;
    sub_100752444();
    sub_10000C8CC(v8, &unk_100923520, &qword_1007A5A70);
    sub_100752CF4();
  }

  return result;
}

id sub_10059D8B0()
{
  v1 = v0;
  v2 = sub_100742964();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v7 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v7, v13, &unk_100930240, qword_1007A56E0);
  if (v14)
  {
    sub_10000C824(v13, v12);
    sub_10000C8CC(v13, &unk_100930240, qword_1007A56E0);
    sub_10000C888(v12, v12[3]);
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v2);
    sub_100742974();
    (*(v3 + 8))(v5, v2);
    sub_10000C620(v12);
  }

  else
  {
    sub_10000C8CC(v13, &unk_100930240, qword_1007A56E0);
  }

  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  result = [v1 view];
  if (result)
  {
    v10 = result;
    [result setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    return sub_100744314();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10059DB3C(char a1)
{
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v8, v12, &unk_100930240, qword_1007A56E0);
  if (!v13)
  {
    return sub_10000C8CC(v12, &unk_100930240, qword_1007A56E0);
  }

  sub_10000C824(v12, v11);
  sub_10000C8CC(v12, &unk_100930240, qword_1007A56E0);
  sub_10000C888(v11, v11[3]);
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v6, v3);
  return sub_10000C620(v11);
}

double sub_10059DDBC(char a1)
{
  v2 = v1;
  v4 = sub_100742964();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v15.receiver = v2;
  v15.super_class = v8;
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v2 + v9, v13, &unk_100930240, qword_1007A56E0);
  if (v14)
  {
    sub_10000C824(v13, v12);
    sub_10000C8CC(v13, &unk_100930240, qword_1007A56E0);
    sub_10000C888(v12, v12[3]);
    (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v4);
    sub_100742974();
    (*(v5 + 8))(v7, v4);
    sub_10000C620(v12);
  }

  else
  {
    sub_10000C8CC(v13, &unk_100930240, qword_1007A56E0);
  }

  sub_10059D128(1);
  return sub_10059C990();
}

uint64_t sub_10059DFFC(SEL *a1, unsigned int *a2)
{
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v16.receiver = v2;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a1);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v2 + v10, v14, &unk_100930240, qword_1007A56E0);
  if (!v15)
  {
    return sub_10000C8CC(v14, &unk_100930240, qword_1007A56E0);
  }

  sub_10000C824(v14, v13);
  sub_10000C8CC(v14, &unk_100930240, qword_1007A56E0);
  sub_10000C888(v13, v13[3]);
  (*(v6 + 104))(v8, *a2, v5);
  sub_100742974();
  (*(v6 + 8))(v8, v5);
  return sub_10000C620(v13);
}

uint64_t sub_10059E210()
{
  v1 = sub_100742964();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v12.receiver = v0;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, "as_viewWillBecomePartiallyVisible");
  v6 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v0 + v6, v10, &unk_100930240, qword_1007A56E0);
  if (!v11)
  {
    return sub_10000C8CC(v10, &unk_100930240, qword_1007A56E0);
  }

  sub_10000C824(v10, v9);
  sub_10000C8CC(v10, &unk_100930240, qword_1007A56E0);
  sub_10000C888(v9, v9[3]);
  sub_100752BB4();
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v1);
  sub_100742974();
  (*(v2 + 8))(v4, v1);
  return sub_10000C620(v9);
}

uint64_t sub_10059E424(char a1)
{
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v8, v12, &unk_100930240, qword_1007A56E0);
  if (!v13)
  {
    return sub_10000C8CC(v12, &unk_100930240, qword_1007A56E0);
  }

  sub_10000C824(v12, v11);
  sub_10000C8CC(v12, &unk_100930240, qword_1007A56E0);
  sub_10000C888(v11, v11[3]);
  sub_100752BB4();
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v6, v3);
  return sub_10000C620(v11);
}

double sub_10059E6BC(char a1)
{
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewDidDisappear:", a1 & 1);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v8, v12, &unk_100930240, qword_1007A56E0);
  if (v13)
  {
    sub_10000C824(v12, v11);
    sub_10000C8CC(v12, &unk_100930240, qword_1007A56E0);
    sub_10000C888(v11, v11[3]);
    (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v3);
    sub_100742974();
    (*(v4 + 8))(v6, v3);
    sub_10000C620(v11);
  }

  else
  {
    sub_10000C8CC(v12, &unk_100930240, qword_1007A56E0);
  }

  return sub_10059D128(0);
}

void sub_10059EA08()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  sub_100750F94();
  v3 = objc_allocWithZone(sub_100750FC4());
  v4 = sub_100750FB4();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController];
  sub_10074B974();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_10074B964();
  }

  else
  {
    __break(1u);
  }
}

void sub_10059EB60()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController];
  if (v2)
  {
    sub_100750FC4();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_10074B974();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_10074B964();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_10059EC44(uint64_t a1)
{
  v2 = v1;
  sub_100751094();
  sub_1005A3354(&qword_10093F988, &type metadata accessor for InAppPurchaseInstallPagePresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = sub_100751054();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_overlayViewController];
  sub_10074B974();

  v6 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v3;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_10074B964();
  }

  else
  {
    __break(1u);
  }
}

void sub_10059EDBC(unint64_t a1, uint64_t a2, uint64_t a3, NSString a4)
{
  v5 = v4;
  v9 = sub_10000C518(&qword_100929630, &unk_1007D5E70);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v34 - v11;
  if (a4)
  {
    a4 = sub_100753064();
  }

  [v5 setTitle:{a4, v10}];

  v13 = &v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_activeView];
  v14 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_activeView];
  swift_unknownObjectRetain();
  sub_1005A10B4(a1);
  if (sub_100741E94())
  {
    sub_10074EF44();

    v15 = sub_10074ED34();
    (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  }

  else
  {
    v16 = sub_10074ED34();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  v17 = OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_appAdamId;
  swift_beginAccess();
  sub_10006644C(v12, &v5[v17], &qword_100929630, &unk_1007D5E70);
  swift_endAccess();
  if (sub_100741EA4())
  {
    v18 = sub_10074EDF4();

    *&v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction] = v18;
  }

  if (*v13)
  {
    v19 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    v34 = v13;
    v21 = ObjectType;
    v22 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_objectGraph];
    v23 = a1;
    v24 = *(v19 + 8);
    swift_unknownObjectRetain();
    v25 = v21;
    v13 = v34;
    v24(a2, v22, v25, v19);
    a1 = v23;
    swift_unknownObjectRelease();
  }

  if (v14)
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      swift_unknownObjectRetain();
    }

    if (*v13)
    {
      goto LABEL_14;
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v26 = 0;
  if (!*v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    swift_unknownObjectRetain();
  }

LABEL_18:
  sub_1005A12EC(v26, v27);

  v28 = &v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_offerMode];
  if (v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_offerMode + 8] == 1)
  {
    sub_10059D128(0);
    *v28 = a1;
    v28[8] = 0;
LABEL_23:
    v31 = sub_10059D128(1);
    goto LABEL_24;
  }

  v29 = sub_100748BB4();
  if (v29 != sub_100748BB4())
  {
    sub_10059D128(0);
  }

  *v28 = a1;
  v28[8] = 0;
  v30 = sub_100748BB4();
  if (v30 != sub_100748BB4())
  {
    goto LABEL_23;
  }

LABEL_24:
  v32 = [v5 view];
  if (v32)
  {
    v33 = v32;
    [v32 setNeedsLayout];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_10059F1C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(__n128), void (*a6)(__n128), __n128 a7)
{
  v87 = a6;
  v88 = a1;
  v9 = v7;
  v91 = a3;
  v92 = a4;
  v89 = a2;
  v10 = sub_10074A104();
  __chkstk_darwin(v10 - 8);
  v86 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v12 - 8);
  v85 = &v73 - v13;
  v14 = sub_100745E94();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  v21 = sub_10074CDE4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1007479B4();
  v25 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v74 = &v73 - v28;
  __chkstk_darwin(v29);
  v76 = &v73 - v30;
  __chkstk_darwin(v31);
  v79 = &v73 - v32;
  __chkstk_darwin(v33);
  v80 = &v73 - v34;
  __chkstk_darwin(v35);
  v81 = &v73 - v36;
  v37 = sub_1007470D4();
  v83 = *(v37 - 8);
  v84 = v37;
  v38 = __chkstk_darwin(v37);
  v82 = &v73 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(v38);
  sub_10074CDB4();
  (*(v22 + 8))(v24, v21);
  v90 = v9;
  result = [v9 view];
  if (result)
  {
    v41 = result;
    v42 = [result traitCollection];

    v43 = *(v15 + 104);
    v43(v17, enum case for OfferEnvironment.arcadeProductPage(_:), v14);
    v44 = sub_100745E84();
    v45 = *(v15 + 8);
    v45(v17, v14);
    v93 = v14;
    if (v44)
    {
      v46 = v20;
      if (qword_1009219B8 != -1)
      {
        swift_once();
      }

      v47 = v78;
      v48 = sub_10000D0FC(v78, qword_1009827C8);
      v49 = v79;
      (*(v25 + 16))(v79, v48, v47);

      v50 = v45;
      goto LABEL_16;
    }

    v43(v17, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v14);
    v51 = sub_100745E84();
    v77 = v45;
    v45(v17, v14);
    if (v51)
    {
      v46 = v20;
      if (qword_1009219B0 != -1)
      {
        swift_once();
      }

      v52 = qword_1009827B0;
      v47 = v78;
LABEL_14:
      v53 = sub_10000D0FC(v47, v52);
      v49 = v79;
      (*(v25 + 16))(v79, v53, v47);

LABEL_15:
      v50 = v77;
LABEL_16:
      v54 = *(v25 + 32);
      v55 = v80;
      v54(v80, v49, v47);
      v50(v46, v93);
      v54(v81, v55, v47);
      v56 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
      (*(*(v56 - 8) + 56))(v85, 1, 1, v56);

      (v87)(v57);
      v58 = v82;
      sub_1007470C4();
      sub_1005A30DC(v58, v91, v92, *&v90[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_installOfferView], &type metadata accessor for TextConfiguration, sub_100162784);
      return (*(v83 + 8))(v58, v84);
    }

    if (sub_100745E74())
    {
      v46 = v20;
      v47 = v78;
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v52 = qword_100982798;
      goto LABEL_14;
    }

    v59 = v93;
    v43(v17, enum case for OfferEnvironment.navigationBar(_:), v93);
    v46 = v20;
    v60 = sub_100745E84();
    v77(v17, v59);
    v47 = v78;
    if (v60)
    {
      if (qword_1009219C0 != -1)
      {
        swift_once();
      }

      v61 = sub_10000D0FC(v47, qword_10093FFA0);
      v49 = v79;
      (*(v25 + 16))(v79, v61, v47);

      goto LABEL_15;
    }

    v62 = sub_100753194();
    v63 = v42;
    if (sub_100753804())
    {
      v50 = v77;
      if (v62 <= 8)
      {
LABEL_23:
        v64 = sub_100753804();
        v49 = v79;
        if (v64)
        {
          if (qword_100921988 != -1)
          {
            swift_once();
          }

          v65 = qword_10093FF40;
        }

        else
        {
          if (qword_100921990 != -1)
          {
            swift_once();
          }

          v65 = qword_10093FF58;
        }

        v68 = sub_10000D0FC(v47, v65);
        v69 = v75;
        (*(v25 + 16))(v75, v68, v47);

        (*(v25 + 32))(v49, v69, v47);
        goto LABEL_16;
      }
    }

    else
    {
      v50 = v77;
      if (v62 < 7)
      {
        goto LABEL_23;
      }
    }

    v66 = sub_100753804();
    v49 = v79;
    v73 = v63;
    if (v66)
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v67 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v67 = qword_10093FF58;
    }

    v70 = sub_10000D0FC(v47, v67);
    v71 = v74;
    (*(v25 + 16))(v74, v70, v47);
    v72 = v76;
    (*(v25 + 32))(v76, v71, v47);
    sub_10074F4B4();

    (*(v25 + 8))(v72, v47);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_10059FBFC(uint64_t a1, void *a2)
{
  v33 = a1;
  v34 = a2;
  v3 = sub_10074CDE4();
  __chkstk_darwin(v3 - 8);
  v31 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_1009259B0, &unk_1007B0620);
  __chkstk_darwin(v5 - 8);
  v30 = v28 - v6;
  v7 = sub_10074D734();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v29 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
  __chkstk_darwin(v10 - 8);
  v28[1] = v28 - v11;
  v12 = sub_1007479B4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v28 - v17;
  v28[0] = sub_10074A744();
  v19 = *(v28[0] - 8);
  *&v20 = __chkstk_darwin(v28[0]).n128_u64[0];
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  result = [v2 view];
  if (result)
  {
    v24 = result;
    v25 = [result traitCollection];

    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v26 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v26 = qword_10093FF58;
    }

    v27 = sub_10000D0FC(v12, v26);
    (*(v13 + 16))(v15, v27, v12);

    (*(v13 + 32))(v18, v15, v12);
    (*(v8 + 104))(v29, enum case for OfferButtonPresenterViewAlignment.center(_:), v7);
    (*(v8 + 56))(v30, 1, 1, v7);
    sub_1005A3354(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
    sub_10074A9C4();
    sub_10074CDA4();
    sub_10074A734();
    sub_1005A30DC(v22, v33, v34, *&v32[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_installOfferView], &type metadata accessor for RedownloadConfiguration, sub_100163434);
    return (*(v19 + 8))(v22, v28[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1005A00DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  v77 = a3;
  v78 = a4;
  v75 = a1;
  v76 = a2;
  v6 = a5.n128_f64[0];
  v7 = sub_10074A104();
  __chkstk_darwin(v7 - 8);
  v74 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v9 - 8);
  v73 = &v61 - v10;
  v72 = sub_100745E94();
  v11 = *(v72 - 8);
  __chkstk_darwin(v72);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = sub_10074CDE4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007479B4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v62 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v61 = &v61 - v25;
  __chkstk_darwin(v26);
  v63 = &v61 - v27;
  __chkstk_darwin(v28);
  v65 = &v61 - v29;
  __chkstk_darwin(v30);
  v66 = &v61 - v31;
  __chkstk_darwin(v32);
  v68 = &v61 - v33;
  v34 = sub_1007470D4();
  v70 = *(v34 - 8);
  v71 = v34;
  __chkstk_darwin(v34);
  v69 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_isInBackground] & 1) == 0)
  {
    v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] = 1;
  }

  v67 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38InAppPurchaseInstallPageViewController_installOfferView];
  sub_10061CA98(v6);
  sub_10074CDD4();
  sub_10074CDB4();
  (*(v18 + 8))(v20, v17);
  result = [v5 view];
  if (result)
  {
    v37 = result;
    v79 = [result traitCollection];

    v38 = *(v11 + 104);
    v39 = v72;
    v38(v13, enum case for OfferEnvironment.arcadeProductPage(_:), v72);
    LOBYTE(v37) = sub_100745E84();
    v40 = *(v11 + 8);
    v40(v13, v39);
    v64 = v16;
    if (v37)
    {
      if (qword_1009219B8 != -1)
      {
        swift_once();
      }

      v41 = qword_1009827C8;
LABEL_16:
      v43 = sub_10000D0FC(v21, v41);
      v44 = v65;
      (*(v22 + 16))(v65, v43, v21);

LABEL_17:
      v45 = *(v22 + 32);
      v46 = v66;
      v45(v66, v44, v21);
      v40(v64, v39);
      v45(v68, v46, v21);
      v47 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
      (*(*(v47 - 8) + 56))(v73, 1, 1, v47);

      sub_10074A0F4();
      v48 = v69;
      sub_1007470C4();
      sub_1005A30DC(v48, v77, v78, v67, &type metadata accessor for TextConfiguration, sub_100162784);
      return (*(v70 + 8))(v48, v71);
    }

    v38(v13, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v39);
    v42 = sub_100745E84();
    v40(v13, v39);
    if (v42)
    {
      if (qword_1009219B0 != -1)
      {
        swift_once();
      }

      v41 = qword_1009827B0;
      goto LABEL_16;
    }

    if (sub_100745E74())
    {
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v41 = qword_100982798;
      goto LABEL_16;
    }

    v38(v13, enum case for OfferEnvironment.navigationBar(_:), v39);
    v49 = sub_100745E84();
    v40(v13, v39);
    if (v49)
    {
      if (qword_1009219C0 != -1)
      {
        swift_once();
      }

      v50 = sub_10000D0FC(v21, qword_10093FFA0);
      v44 = v65;
      (*(v22 + 16))(v65, v50, v21);

      goto LABEL_17;
    }

    v51 = sub_100753194();
    if (sub_100753804())
    {
      if (v51 <= 8)
      {
LABEL_24:
        if (sub_100753804())
        {
          v52 = v65;
          if (qword_100921988 != -1)
          {
            swift_once();
          }

          v53 = qword_10093FF40;
        }

        else
        {
          v52 = v65;
          if (qword_100921990 != -1)
          {
            swift_once();
          }

          v53 = qword_10093FF58;
        }

        v56 = sub_10000D0FC(v21, v53);
        v57 = v62;
        (*(v22 + 16))(v62, v56, v21);

        (*(v22 + 32))(v52, v57, v21);
        v44 = v52;
        goto LABEL_17;
      }
    }

    else if (v51 < 7)
    {
      goto LABEL_24;
    }

    if (sub_100753804())
    {
      v54 = v65;
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v55 = qword_10093FF40;
    }

    else
    {
      v54 = v65;
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v55 = qword_10093FF58;
    }

    v58 = sub_10000D0FC(v21, v55);
    v59 = v61;
    (*(v22 + 16))(v61, v58, v21);
    v60 = v63;
    (*(v22 + 32))(v63, v59, v21);
    v44 = v54;
    sub_10074F4B4();

    (*(v22 + 8))(v60, v21);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}