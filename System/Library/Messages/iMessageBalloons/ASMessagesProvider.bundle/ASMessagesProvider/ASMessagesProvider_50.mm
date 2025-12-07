void sub_5953B0()
{
  v1 = sub_760AD0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v9 = sub_75C840();
  v10 = *(*(v9 - 8) + 56);
  v32 = v0;
  v10(v0 + v8, 1, 1, v9);
  v29 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_93DA90 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99F7A8);
  v13 = *(v11 - 8);
  v28 = *(v13 + 16);
  v28(v7, v12, v11);
  v14 = *(v13 + 56);
  v14(v7, 0, 1, v11);
  v15 = enum case for DirectionalTextAlignment.leading(_:);
  v16 = v2 + 104;
  v17 = *(v2 + 104);
  v30 = v16;
  v31 = v1;
  v17(v4, enum case for DirectionalTextAlignment.leading(_:), v1);
  v18 = sub_75BB20();
  v19 = objc_allocWithZone(v18);
  *(v32 + v29) = sub_75BB10();
  v29 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_93DA98 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v11, qword_99F7C0);
  v28(v7, v20, v11);
  v14(v7, 0, 1, v11);
  v17(v4, v15, v31);
  v21 = objc_allocWithZone(v18);
  v22 = sub_75BB10();
  v23 = v32;
  *(v32 + v29) = v22;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView;
  *(v23 + v24) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageGrid;
  v26 = sub_7656C0();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  *(v23 + OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_pageTraits) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_5957C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_595810(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v5 = 0xD000000000000023;
      v6 = 0xD000000000000033;
      if (a1 == 10)
      {
        v6 = 0xD00000000000002BLL;
      }

      v7 = a1 == 9;
    }

    else
    {
      v5 = 0xD000000000000014;
      v6 = 0xD00000000000001BLL;
      if (a1 == 7)
      {
        v6 = 0xD00000000000001ELL;
      }

      v7 = a1 == 6;
    }

    if (v7)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696D61466E497369;
    v2 = 0xD000000000000011;
    v3 = 0x74616572436E6163;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000016;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_595A44@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, uint64_t a7@<D1>, double a8@<D6>, double a9@<D7>, char *a10, char *a11)
{
  v128 = a4;
  v139 = a2;
  v140 = a3;
  v141 = a1;
  v133 = a5;
  v124 = sub_BD88(&qword_940A68, &qword_79AB60);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v121 = &v111 - v17;
  v120 = sub_766690();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_764A60();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v114 = &v111 - v21;
  v126 = sub_767D60();
  v127 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v23 - 8);
  v131 = &v111 - v24;
  v135 = sub_764930();
  v25 = *(v135 - 8);
  __chkstk_darwin(v135);
  v136 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v111 - v28;
  __chkstk_darwin(v30);
  v32 = &v111 - v31;
  v33 = sub_7656A0();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v113 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v111 = &v111 - v37;
  __chkstk_darwin(v38);
  v112 = &v111 - v39;
  __chkstk_darwin(v40);
  v132 = &v111 - v41;
  __chkstk_darwin(v42);
  v44 = &v111 - v43;
  v45 = sub_BD88(&qword_9438F8, &unk_787C30);
  v46 = v45 - 8;
  __chkstk_darwin(v45);
  v48 = &v111 - v47;
  sub_1ED18(v139, &v111 - v47, &qword_963790, qword_77EBC0);
  v49 = *(v46 + 56);
  v134 = v48;
  v50 = &v48[v49];
  v51 = v34;
  sub_1ED18(v140, v50, &qword_963790, qword_77EBC0);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0, &qword_782290);
  sub_768750();

  v52 = *(v34 + 104);
  v53 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v144)
  {
    v53 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v54 = *v53;
  v137 = v33;
  v138 = v44;
  v55 = v44;
  v56 = v135;
  v52(v55, v54, v33);
  swift_getKeyPath();
  sub_768750();

  (*(v25 + 104))(v29, enum case for Shelf.ContentType.placeholder(_:), v56);
  sub_598650(&qword_942D68, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v139 = v32;
  sub_769430();
  sub_769430();
  if (v144 == v142 && v145 == v143)
  {
    v57 = 1;
  }

  else
  {
    v57 = sub_76A950();
  }

  v140 = *(v25 + 8);
  v140(v29, v56);

  v58 = v139;
  if (v57)
  {
    swift_getKeyPath();
    v59 = v131;
    sub_768750();

    if ((*(v25 + 48))(v59, 1, v56) == 1)
    {
      sub_10A2C(v59, &qword_951BE0, &unk_782280);
    }

    else
    {
      v140(v58, v56);
      (*(v25 + 32))(v58, v59, v56);
    }
  }

  v60 = a11;
  v61 = v136;
  (*(v25 + 16))(v136, v58, v56);
  v62 = (*(v25 + 88))(v61, v56);
  if (v62 == enum case for Shelf.ContentType.smallLockup(_:) || v62 == enum case for Shelf.ContentType.purchasesLockup(_:) || v62 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_15:
    v63 = v125;
    sub_75B4A0();
    v64 = sub_767D40();
    (*(v127 + 8))(v63, v126);
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_490554(v64 & 1);
LABEL_41:
    sub_765670();
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v65;
    v77 = v66;
    goto LABEL_42;
  }

  if (v62 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_17:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_93CF58 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v62 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithAlignedRegionBackground(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v62 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:) || v62 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.ribbonBar(_:) || v62 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v71 = v121;
    sub_7655C0();
    v72 = v122;
    sub_7655C0();
    v68 = v137;
    v73 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_620A70(v71, v72);
    sub_765670();
    v74 = *(*&v123 + 8);
    v75 = v72;
    v76 = v124;
    v74(v75, v124);
    v74(v71, v76);
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v73;
    goto LABEL_32;
  }

  if (v62 == enum case for Shelf.ContentType.paragraph(_:) || v62 == enum case for Shelf.ContentType.annotation(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.footnote(_:))
  {
LABEL_30:
    v68 = v137;
    v67 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_40DC7C(0.0);
    sub_765670();
    v140(v58, v56);
    v69 = *(v34 + 8);
    v70 = v67;
LABEL_32:
    v77 = v68;
LABEL_42:
    v69(v70, v77);
    return sub_10A2C(v134, &qword_9438F8, &unk_787C30);
  }

  if (v62 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    if (sub_75B4D0())
    {
      v78 = v118;
      sub_7666A0();
      v79 = sub_7665E0();
      (*(v119 + 8))(v78, v120);
      if (v79)
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_93C3D0 == -1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_93C3D8 == -1)
        {
LABEL_50:

          (*(v51 + 16))(v82, v80, v81);
          sub_765670();
          v140(v58, v56);
          (*(v51 + 8))(v80, v81);
          return sub_10A2C(v134, &qword_9438F8, &unk_787C30);
        }
      }
    }

    else
    {
      v81 = v137;
      v80 = v138;
      v82 = v132;
      if (qword_93C6E0 == -1)
      {
        goto LABEL_50;
      }
    }

    swift_once();
    goto LABEL_50;
  }

  if (v62 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.brick(_:))
  {
LABEL_47:
    v131 = v60;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_93C230 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
LABEL_52:
    swift_getKeyPath();
    v84 = v114;
    sub_768750();

    v85 = v115;
    sub_764A00();
    sub_598650(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v86 = v117;
    v87 = sub_76A520();
    v88 = *(v116 + 8);
    v88(v85, v86);
    v88(v84, v86);
    v89 = v125;
    sub_75B4A0();
    LOBYTE(v88) = sub_767D40();
    (*(v127 + 8))(v89, v126);
    v91 = v137;
    v90 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_51E018(v88 & 1, v87 & 1);
    sub_765670();
    v140(v58, v56);
    (*(v51 + 8))(v90, v91);
    return sub_10A2C(v134, &qword_9438F8, &unk_787C30);
  }

  if (v62 == enum case for Shelf.ContentType.productCapability(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.reviews(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    goto LABEL_17;
  }

  v131 = a11;
  v121 = a10;
  v122 = (v25 + 8);
  v123 = a6;
  v124 = a7;
  v129 = a8;
  v130 = a9;
  v92 = v56;
  v93 = v137;
  v94 = v34;
  if (v62 == enum case for Shelf.ContentType.reviewSummary(_:) || v62 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v95 = 0.0;
    if (sub_75B4D0())
    {
      v96 = v125;
      sub_75B4A0();
      v97 = sub_767D40();
      (*(v127 + 8))(v96, v126);
      if (v97)
      {
        v95 = 0.0;
      }

      else
      {
        v95 = 190.0;
      }
    }

    v98 = v138;
    (*(v34 + 16))(v113, v138, v93);
    sub_40DC7C(v95);
    goto LABEL_68;
  }

  if (v62 == enum case for Shelf.ContentType.todayCard(_:))
  {
    (*(v34 + 16))(v132, v138, v137);
    if (qword_93C248 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.miniTodayCard(_:))
  {
    (*(v34 + 16))(v112, v138, v137);
    if (sub_75B4E0())
    {
      if (qword_93D2A0 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_93D298 == -1)
    {
LABEL_83:

      sub_765670();
      v140(v139, v56);
      (*(v34 + 8))(v138, v93);
      return sub_10A2C(v134, &qword_9438F8, &unk_787C30);
    }

LABEL_109:
    swift_once();
    goto LABEL_83;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.framedArtwork(_:) || v62 == enum case for Shelf.ContentType.screenshots(_:) || v62 == enum case for Shelf.ContentType.productMedia(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v62 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v99 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_40DC7C(0.0);
    sub_765670();
    v140(v139, v56);
    (*(v51 + 8))(v99, v93);
    return sub_10A2C(v134, &qword_9438F8, &unk_787C30);
  }

  if (v62 == enum case for Shelf.ContentType.productReview(_:))
  {
    v100 = v125;
    sub_75B4A0();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_435850(v100, 0);
LABEL_91:
    sub_765670();
    (*(v127 + 8))(v100, v126);
    goto LABEL_69;
  }

  if (v62 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v100 = v125;
    sub_75B4A0();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_6E5DB8(v100);
    goto LABEL_91;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  v60 = v131;
  if (v62 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v62 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    goto LABEL_47;
  }

  if (v62 == enum case for Shelf.ContentType.largeStoryCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v62 == enum case for Shelf.ContentType.upsellBreakout(_:) || v62 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v62 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    swift_getKeyPath();
    sub_768750();

    v101 = *(v144 + 16);

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_D0EBC(v101);
LABEL_108:
    sub_765670();
    v140(v139, v92);
    (*(v102 + 8))(v103, v93);
    return sub_10A2C(v134, &qword_9438F8, &unk_787C30);
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.privacyType(_:))
  {
LABEL_113:
    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v137);
    v104 = v125;
    sub_75B4A0();
    sub_262344(v104);
    (*(v127 + 8))(v104, v126);
    goto LABEL_108;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_39:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_93C6E0 == -1)
    {
LABEL_40:

      goto LABEL_41;
    }

LABEL_85:
    swift_once();
    goto LABEL_40;
  }

  if (v62 == enum case for Shelf.ContentType.searchResult(_:))
  {
    v105 = sub_75B4C0();
    (*(v34 + 16))(v111, v138, v93);
    if (v105)
    {
      if (qword_93D058 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_93D050 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v98 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_4F0A70();
LABEL_68:
    sub_765670();
LABEL_69:
    v140(v139, v92);
    (*(v34 + 8))(v98, v93);
    return sub_10A2C(v134, &qword_9438F8, &unk_787C30);
  }

  if (v62 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v106 = v125;
    sub_75B4A0();
    v107 = sub_767D40();
    (*(v127 + 8))(v106, v126);
    if (v107)
    {
      if (sub_75B4C0())
      {
        v108 = 1;
      }

      else
      {
        v108 = 2;
      }
    }

    else
    {
      v108 = 2;
    }

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_3CC450(v108);
    goto LABEL_108;
  }

  v51 = v34;
  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.heroCarousel(_:) || v62 == enum case for Shelf.ContentType.uber(_:) || v62 == enum case for Shelf.ContentType.mediaPageHeader(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.tagBrick(_:))
  {
    goto LABEL_52;
  }

  if (v62 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
  {
    goto LABEL_113;
  }

  v109 = v138;
  (*(v94 + 16))(v132, v138, v137);
  sub_40DC7C(0.0);
  sub_765670();
  v110 = v140;
  v140(v139, v56);
  (*(v94 + 8))(v109, v93);
  sub_10A2C(v134, &qword_9438F8, &unk_787C30);
  return (v110)(v136, v56);
}

uint64_t sub_597EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a11@<D4>, double a12@<D5>, double a15, double a16)
{
  v39 = a5;
  v42 = a4;
  v43 = a2;
  v45 = a3;
  v46 = a6;
  v40 = a11;
  v41 = a12;
  v44 = sub_764930();
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_7656A0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v38 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v37 - v23;
  v25 = sub_BD88(&qword_9438F8, &unk_787C30);
  __chkstk_darwin(v25);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v37 - v29;
  sub_1ED18(v43, &v37 - v29, &qword_963790, qword_77EBC0);
  v37 = v25;
  sub_1ED18(v45, &v30[*(v25 + 48)], &qword_963790, qword_77EBC0);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0, &qword_782290);
  sub_768750();

  v45 = v20;
  v31 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v49)
  {
    v31 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v20 + 104))(v24, *v31, v19);
  swift_getKeyPath();
  v32 = v44;
  v43 = a1;
  sub_768750();

  v33 = (*(v47 + 88))(v18, v32);
  if (v33 == enum case for Shelf.ContentType.reviews(_:) || v33 == enum case for Shelf.ContentType.reviewsContainer(_:) || v33 == enum case for Shelf.ContentType.todayCard(_:) || v33 == enum case for Shelf.ContentType.framedArtwork(_:) || v33 == enum case for Shelf.ContentType.productMedia(_:) || v33 == enum case for Shelf.ContentType.framedVideo(_:) || v33 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v33 == enum case for Shelf.ContentType.upsellBreakout(_:) || v33 == enum case for Shelf.ContentType.smallBreakout(_:) || v33 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    v36 = v45;
    (*(v45 + 16))(v38, v24, v19);
    sub_40DC7C(0.0);
    sub_765670();
    (*(v36 + 8))(v24, v19);
    return sub_10A2C(v30, &qword_9438F8, &unk_787C30);
  }

  else
  {
    v48 = v39;
    sub_1ED18(v30, v27, &qword_9438F8, &unk_787C30);
    v34 = *(v37 + 48);
    sub_B7A24();
    sub_75B530();
    (*(v45 + 8))(v24, v19);
    sub_10A2C(v30, &qword_9438F8, &unk_787C30);
    sub_10A2C(&v27[v34], &qword_963790, qword_77EBC0);
    sub_10A2C(v27, &qword_963790, qword_77EBC0);
    return (*(v47 + 8))(v18, v32);
  }
}

uint64_t sub_598460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_B7A24();

  return sub_75B530();
}

uint64_t sub_598544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_B7A24();

  return sub_75B520();
}

uint64_t sub_598650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_5986A0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_7684F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7684E0();
  v11 = v10;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  v14 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v5) = sub_38EE8C();

  if (v5)
  {
    sub_59ABF4();
    v15 = *(v3 + 24);
    if (v15)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v16 = v15;
      isa = sub_76A120(1.0, 0.58431, 0.0, 0.5).super.isa;
      sub_59A6A0(v9, v11, isa, sub_59B34C, v13, 3.0);
    }
  }

  return result;
}

void sub_598BF4()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tintView];
  [v1 _setCornerRadius:20.0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v1];
  v2 = objc_opt_self();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_77FA60;
  v4 = [v1 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v1 leftAnchor];
  v8 = [v0 leftAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v1 bottomAnchor];
  v11 = [v0 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v1 rightAnchor];
  v14 = [v0 rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_BE70(0, &qword_942270, NSLayoutConstraint_ptr);
  isa = sub_769450().super.isa;

  [v2 activateConstraints:isa];

  [v0 _setCornerRadius:20.0];
  [v0 setLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
  [v0 setClipsToBounds:1];
  v17 = [objc_opt_self() whiteColor];
  [v0 setBackgroundColor:v17];

  v18 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapFrom:"];
  [v0 addGestureRecognizer:v18];
}

id sub_599044(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tintView;
  *&v1[v4] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_viewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_view] = 0;
  v5 = &v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tapAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_598BF4();
  }

  return v7;
}

void sub_599144(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_viewConstraints;
  sub_BE70(0, &qword_942270, NSLayoutConstraint_ptr);

  isa = sub_769450().super.isa;

  [v3 deactivateConstraints:isa];

  *(v1 + v4) = a1;

  v6 = sub_769450().super.isa;

  [v3 activateConstraints:v6];
}

id sub_599244()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_view];
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v2];
    v3 = [v2 bottomAnchor];
    v4 = [v0 layoutMarginsGuide];
    v5 = [v4 bottomAnchor];

    v6 = [v3 constraintEqualToAnchor:v5];
    LODWORD(v7) = 1140457472;
    [v6 setPriority:v7];
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_77FA60;
    v9 = [v2 topAnchor];
    v10 = [v0 layoutMarginsGuide];
    v11 = [v10 topAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v8 + 32) = v12;
    v13 = [v2 leftAnchor];
    v14 = [v0 layoutMarginsGuide];
    v15 = [v14 leftAnchor];

    v16 = [v13 constraintEqualToAnchor:v15];
    *(v8 + 40) = v16;
    *(v8 + 48) = v6;
    v17 = v6;
    v18 = [v2 rightAnchor];
    v19 = [v0 layoutMarginsGuide];
    v20 = [v19 rightAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v8 + 56) = v21;
    sub_599144(v8);
  }

  else
  {
    sub_599144(_swiftEmptyArrayStorage);
  }

  return [v0 invalidateIntrinsicContentSize];
}

void sub_599684()
{
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "viewDidLoad");
  v1 = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView;
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView];
  *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v4 setAxis:1];

  v5 = *&v0[v2];
  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v5 setAlignment:0];
  v6 = *&v0[v2];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v6 setDistribution:3];
  v7 = *&v0[v2];
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v7 setSpacing:16.0];
  v8 = *&v0[v2];
  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!*&v0[v2])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = v9;
  [v9 addSubview:?];

  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = *&v0[v2];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v12 addArrangedSubview:v11];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_78D690;
  v14 = *&v0[v2];
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = [v14 topAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v16;
  v18 = [v16 layoutMarginsGuide];

  v19 = [v18 topAnchor];
  v20 = [v15 constraintEqualToAnchor:v19];

  *(v13 + 32) = v20;
  v21 = *&v0[v2];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = [v21 leftAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = [v23 layoutMarginsGuide];

  v26 = [v25 leftAnchor];
  v27 = [v22 constraintEqualToAnchor:v26];

  *(v13 + 40) = v27;
  v28 = *&v0[v2];
  if (!v28)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = [v28 rightAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 layoutMarginsGuide];

  v34 = [v33 rightAnchor];
  v35 = [v29 constraintEqualToAnchor:v34];

  *(v13 + 48) = v35;
  sub_BE70(0, &qword_942270, NSLayoutConstraint_ptr);
  isa = sub_769450().super.isa;

  [v32 activateConstraints:isa];

  v37 = [v0 view];
  if (v37)
  {
    v38 = v37;
    [v37 layoutIfNeeded];

    return;
  }

LABEL_31:
  __break(1u);
}

id sub_599B64()
{
  if (qword_93E0C8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_rootViewController), v3 = v2, swift_unknownObjectRelease(), v2))
  {
    v4 = [v3 supportedInterfaceOrientations];

    return v4;
  }

  else
  {
    v6 = [v0 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == &dword_0 + 1)
    {
      return &dword_1C + 2;
    }

    else
    {
      return &dword_0 + 2;
    }
  }
}

void sub_599C50(void *a1)
{
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:a1];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v15 = sub_2DC78C;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_23F0CC;
  v14 = &unk_898080;
  v5 = _Block_copy(&v11);
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  v15 = sub_59AE1C;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_3D6D80;
  v14 = &unk_8980D0;
  v8 = _Block_copy(&v11);
  v9 = v6;
  v10 = v1;

  [v3 animateWithDuration:v5 animations:v8 completion:0.3];
  _Block_release(v8);
  _Block_release(v5);
}

void sub_599E14(int a1, id a2, uint64_t a3)
{
  [a2 removeFromSuperview];
  v4 = *(a3 + OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = [v4 arrangedSubviews];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v6 = sub_769460();

  if (v6 >> 62)
  {
    v7 = sub_76A860();
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  if (__OFSUB__(v7, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (v7 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + 16);
      if (v9)
      {
        v10 = v9;
        [v10 setHidden:1];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_599FAC()
{
  v30 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView;
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView];
  if (!v2)
  {
    goto LABEL_32;
  }

  v3 = [v2 arrangedSubviews];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v4 = sub_769460();

  if (v4 >> 62)
  {
LABEL_25:
    v5 = sub_76A860();
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }

  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v0 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_maximumNumberOfCards;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_maximumNumberOfCards] < v5 - 1)
  {
    v6 = *&v1[v30];
    if (!v6)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v7 = [v6 arrangedSubviews];
    v8 = sub_769460();

    if (!(v8 >> 62))
    {
      v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_9;
    }

LABEL_27:
    v9 = sub_76A860();
LABEL_9:

    v10 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = *&v1[v0];
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (!v12)
      {
        if (v13 >= 1)
        {
          v29 = v11 - v9 + 2;
          v14 = 5;
          while (1)
          {
            v15 = *&v1[v30];
            if (!v15)
            {
              goto LABEL_31;
            }

            v16 = v14 - 4;
            v17 = [v15 arrangedSubviews];
            v18 = sub_769460();

            if ((v18 & 0xC000000000000001) != 0)
            {
              v19 = sub_76A770();
            }

            else
            {
              if (v16 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
              {
                __break(1u);
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v19 = *(v18 + 8 * v14);
            }

            v20 = v19;
            v0 = v29 + v14;

            [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:v20];
            v21 = objc_opt_self();
            v22 = swift_allocObject();
            *(v22 + 16) = v20;
            v35 = sub_59B61C;
            v36 = v22;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_23F0CC;
            v34 = &unk_8981E8;
            v23 = _Block_copy(&aBlock);
            v24 = v20;

            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 24) = v1;
            v35 = sub_59B63C;
            v36 = v25;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_3D6D80;
            v34 = &unk_898238;
            v26 = _Block_copy(&aBlock);
            v27 = v24;
            v28 = v1;

            [v21 animateWithDuration:v23 animations:v26 completion:0.3];
            _Block_release(v26);
            _Block_release(v23);

            if (v29 + v14 == 5)
            {
              return;
            }

            ++v14;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_24;
            }
          }
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_30;
  }
}

char *sub_59A370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CardView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [*&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tintView] setBackgroundColor:a3];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 2) = v10;
  *(v11 + 3) = v9;
  *(v11 + 4) = a4;
  *(v11 + 5) = a5;
  v12 = &v8[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tapAction];
  v13 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tapAction];
  v14 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tapAction + 8];
  *v12 = sub_59B4F0;
  v12[1] = v11;

  sub_F714(a4, a5);
  sub_F704(v13, v14);

  v15 = [objc_allocWithZone(UILabel) init];
  v16 = objc_opt_self();
  sub_BE70(0, &qword_941EC8, UITraitCollection_ptr);
  v17 = sub_769A10();
  v18 = [v16 preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v17];

  [v15 setFont:v18];
  [v15 setNumberOfLines:5];
  [v15 setLineBreakMode:0];
  v19 = sub_769210();
  [v15 setText:v19];

  v20 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_view;
  v21 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_view];
  v22 = v15;
  if (v21)
  {
    [v21 removeFromSuperview];
    v21 = *&v8[v20];
  }

  *&v8[v20] = v15;
  v23 = v15;

  sub_599244();
  return v8;
}

void sub_59A5FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_599C50(v5);
    }

    if (a3)
    {
      a3();
    }
  }
}

void sub_59A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView;
  v9 = *&v6[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView];
  if (!v9)
  {
    goto LABEL_14;
  }

  v15 = [v9 arrangedSubviews];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v16 = sub_769460();

  if (v16 >> 62)
  {
    v17 = sub_76A860();
  }

  else
  {
    v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  }

  if (__OFSUB__(v17, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = *(Strong + 16);
      if (v19)
      {
        v20 = v19;
        [v20 setHidden:0];
      }

      swift_unknownObjectRelease();
    }
  }

  v21 = sub_59A370(a1, a2, a3, a4, a5);
  [v21 setHidden:1];
  v22 = *&v6[v8];
  if (v22)
  {
    [v22 addArrangedSubview:v21];
    sub_599FAC();
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    v35 = sub_59B3AC;
    v36 = v24;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_23F0CC;
    v34 = &unk_898148;
    v25 = _Block_copy(&v31);
    v26 = v21;

    v27 = swift_allocObject();
    *(v27 + 16) = a6;
    *(v27 + 24) = v6;
    *(v27 + 32) = v26;
    v35 = sub_59B400;
    v36 = v27;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_3D6D80;
    v34 = &unk_898198;
    v28 = _Block_copy(&v31);
    v29 = v26;
    v30 = v6;

    [v23 animateWithDuration:v25 animations:v28 completion:0.3];
    _Block_release(v28);
    _Block_release(v25);

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_59A988(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_maximumNumberOfCards] = 3;
  if (a2)
  {
    v7 = sub_769210();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_59AAB8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_maximumNumberOfCards] = 3;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_59ABF4()
{
  if (!*(v0 + 16))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = [objc_allocWithZone(type metadata accessor for StatusBarOverlayWindow()) initWithFrame:{v3, v5, v7, v9}];
    v11 = *(v0 + 16);
    *(v0 + 16) = v10;

    type metadata accessor for CardStackViewController();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v13 = *(v0 + 24);
    *(v0 + 24) = v12;

    v14 = *(v0 + 16);
    if (v14)
    {
      [v14 setRootViewController:*(v0 + 24)];
      v15 = *(v0 + 16);
      if (v15)
      {
        v16 = *(v0 + 24);
        if (v16)
        {
          v17 = v15;
          v18 = v16;
          [v18 loadViewIfNeeded];
          v19 = *&v18[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView];
          if (!v19)
          {
            __break(1u);
            return;
          }

          v20 = v19;
        }

        else
        {
          v17 = v15;
          v19 = 0;
        }

        v21 = *&v17[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow_interactionView];
        *&v17[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow_interactionView] = v19;
      }
    }

    v22 = *(v0 + 24);
    if (v22)
    {
      *(v22 + OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_delegate + 8) = &off_898040;

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_59ADCC()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_59AE04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_59AE24(uint64_t a1, __n128 a2)
{
  v3 = sub_7684F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  if (qword_93E0C8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_rootViewController), v8 = v7, swift_unknownObjectRelease(), v7))
  {
    sub_7684D0();
    sub_7684E0();
    v9 = sub_769210();

    v10 = sub_769210();

    v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

    (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    (*(v4 + 32))(v13 + v12, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v14 = sub_769210();
    aBlock[4] = sub_59B584;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_6B0344;
    aBlock[3] = &unk_898300;
    v15 = _Block_copy(aBlock);

    v16 = objc_opt_self();
    v17 = [v16 actionWithTitle:v14 style:0 handler:v15];
    _Block_release(v15);

    [v11 addAction:v17];
    v18 = sub_769210();
    v19 = [v16 actionWithTitle:v18 style:0 handler:0];

    [v11 addAction:v19];
    [v8 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v21 = sub_768FF0();
    sub_BE38(v21, qword_9A0400);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E90();
  }

  return result;
}

void sub_59B2B8()
{
  v0 = [objc_opt_self() generalPasteboard];
  sub_7684C0();
  v1 = sub_769210();

  [v0 setString:v1];
}

double sub_59B34C(__n128 a1)
{
  v2 = *(sub_7684F0() - 8);
  v4 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_59AE24(v4, v3);
}

uint64_t sub_59B3C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_59B400()
{
  if (*(v0 + 16) >= 0.0)
  {
    return [*(v0 + 24) performSelector:"popWithCard:" withObject:*(v0 + 32) afterDelay:?];
  }

  return result;
}

uint64_t sub_59B428()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_59B468()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_59B4A0()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_59B4FC(__n128 a1)
{
  v2 = sub_7684F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

void sub_59B584(__n128 a1)
{
  sub_7684F0();

  sub_59B2B8();
}

char *sub_59B640(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_preferredArtworkSize];
  type metadata accessor for QuoteView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v12 = 0;
  *(v12 + 1) = 0;
  v14 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView] = v14;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView]];

  return v15;
}

uint64_t type metadata accessor for QuoteCollectionViewCell(uint64_t a1)
{
  result = qword_95BF88;
  if (!qword_95BF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_59BA14(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_59BAF4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView);
  sub_759050();

  v6 = *(v3 + v4);
  sub_759210();
  sub_59BC30(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_75A0C0();
}

uint64_t sub_59BBD8(uint64_t a1)
{
  result = sub_59BC30(&qword_95BF98, type metadata accessor for QuoteCollectionViewCell, &unk_7A6B90);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_59BC30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_59BC78(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_7652D0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_765240();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v32);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_75B370();
  if (swift_dynamicCast())
  {
    v15 = sub_75B310();
    if (qword_93C6C8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_BE38(v16, qword_99B9A0);
    sub_766660();
    if (v15)
    {

      sub_765250();
      sub_765210();
      (*(v12 + 8))(v14, v11);
      sub_765330();
      v17 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView);
      sub_7652E0();
      sub_7591B0();
      [v17 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();
      sub_759210();
      sub_59F5F0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A050();
    }

    v18 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView);
    v19 = sub_75B2E0();
    sub_3D70A4(v19, a2, a3, a4);
  }

  else
  {
    sub_134D8(a1, v32);
    sub_765860();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v31 = v12;
    v20 = v4;
    v21 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView);
    v22 = sub_7657F0();
    sub_3D70A4(v22, a2, a3, a4);

    if (sub_765800())
    {
      v23 = qword_93C6C8;

      if (v23 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
      sub_BE38(v24, qword_99B9A0);
      sub_766660();

      sub_765250();
      sub_765210();
      (*(v31 + 8))(v14, v11);
      sub_765330();
      v25 = *(v20 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView);
      sub_7652E0();
      sub_7591B0();
      [v25 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();
      sub_759210();
      sub_59F5F0(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A050();
    }

    else
    {
      v26 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkFallbackView);
      v27 = a1[3];
      v28 = a1[4];
      v29 = sub_B170(a1, v27);
      sub_FE6F8(v29, a2, v26, v27, v28);
    }
  }
}

uint64_t sub_59C28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_59C3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_75B2E0();
    v9 = sub_764D80();

    if (v9)
    {
      v10 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_768860();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
      }

      else
      {
        sub_32A6C0(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_59C590(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = *a1;
  ObjectType = swift_getObjectType();

  return sub_59D5F0(v12, a8, v8, ObjectType, a2, a3);
}

double sub_59C5FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_75B370();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_59D7D4(v5, a3);
  }

  else
  {
    sub_765860();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
      return result;
    }

    v8 = v6;

    sub_59E638(v8, a3);
  }

  return result;
}

double sub_59C73C(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, double a8, double a9, uint64_t a10, void *a11)
{
  v102 = a6;
  v101 = a5;
  v100 = a4;
  v109 = a3;
  v108 = a2;
  v110 = a1;
  v105 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  __chkstk_darwin(v105);
  v107 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v106);
  v16 = (&v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_762D10();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v88 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v80 - v21;
  v23 = sub_7670D0();
  swift_allocObject();
  v103 = sub_7670B0();
  swift_allocObject();
  v98 = sub_7670B0();
  swift_allocObject();
  v97 = sub_7670B0();
  swift_allocObject();
  v96 = sub_7670B0();
  swift_allocObject();
  v94 = sub_7670B0();
  swift_allocObject();
  v92 = sub_7670B0();
  swift_allocObject();
  v104 = sub_7670B0();
  swift_allocObject();
  v99 = sub_7670B0();
  v24 = [a7 traitCollection];
  sub_767500();

  swift_allocObject();
  v95 = sub_7670B0();
  swift_allocObject();
  v93 = sub_7670B0();
  swift_allocObject();
  v91 = sub_7670B0();
  v25 = [a7 traitCollection];
  v26 = [v25 preferredContentSizeCategory];
  sub_769B50();

  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DB90 != -1)
  {
    swift_once();
  }

  v27 = sub_7666D0();
  sub_BE38(v27, qword_99FAA8);
  v28 = [a7 traitCollection];
  v29 = sub_769E10();

  v30 = sub_7653B0();
  v113 = v30;
  v85 = sub_59F5F0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v114 = v85;
  v31 = sub_B1B4(aBlock);
  v32 = *(v30 - 8);
  v33 = *(v32 + 104);
  v84 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v86 = v30;
  v83 = v33;
  v82 = v32 + 104;
  v33(v31);
  sub_765C30();
  sub_BEB8(aBlock);

  v87 = v29;
  sub_762D00();
  sub_762CE0();
  v35 = *(v18 + 8);
  v34 = v18 + 8;
  v90 = v17;
  v81 = v35;
  v35(v22, v17);
  if (qword_93DF30 != -1)
  {
    swift_once();
  }

  v36 = qword_9A04C0;
  v37 = *algn_9A04C8;
  v38 = qword_9A04D0;
  v39 = [a7 traitCollection];
  v40 = sub_769A00();
  v89 = v34;
  if (v40)
  {
  }

  else
  {
    v41 = sub_7699D0();

    if (v41)
    {
      v38 = v36;
    }

    else
    {
      v38 = v37;
    }
  }

  v42 = v38;
  v108 = a7;
  v43 = [a7 traitCollection];
  v44 = objc_allocWithZone(NSMutableAttributedString);
  v45 = v42;
  v46 = v44;
  v47 = v110;
  v48 = [v46 initWithAttributedString:v110];
  v109 = [v47 length];
  v49 = swift_allocObject();
  *(v49 + 16) = v42;
  *(v49 + 24) = v43;
  *(v49 + 32) = v48;
  *(v49 + 40) = 1;
  v50 = swift_allocObject();
  v50[2] = sub_119AC;
  v50[3] = v49;
  v114 = sub_2636C;
  v115 = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v113 = &unk_8984A8;
  v51 = _Block_copy(aBlock);
  v52 = v45;
  v53 = v43;
  v54 = v48;

  [v47 enumerateAttributesInRange:0 options:v109 usingBlock:{0x100000, v51}];

  _Block_release(v51);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
    goto LABEL_24;
  }

  v110 = a11;
  v55 = v86;
  v113 = v86;
  v114 = v85;
  v56 = sub_B1B4(aBlock);
  v83(v56, v84, v55);
  v57 = v52;
  sub_765C30();
  sub_BEB8(aBlock);
  v58 = v88;
  v109 = v57;
  sub_762CD0();
  sub_762CE0();
  v81(v58, v90);
  v59 = v101;
  if (v101)
  {
    v60 = HIBYTE(v101) & 0xF;
    v61 = v100;
    if ((v101 & 0x2000000000000000) == 0)
    {
      v60 = v100 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v90) = v60 != 0;
    v50 = v108;
  }

  else
  {
    LODWORD(v90) = 0;
    v50 = v108;
    v61 = v100;
  }

  type metadata accessor for AppPromotionSubtitleView(0);
  v62 = [v50 traitCollection];
  sub_6E4AAC(v61, v59, v102, 0, v62, v111);

  v63 = [v50 traitCollection];
  LOBYTE(v62) = sub_769A00();

  if (v62)
  {
    if (qword_93C6D0 == -1)
    {
LABEL_18:
      v64 = qword_99B9B8;
      goto LABEL_22;
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  if (qword_93C6C8 != -1)
  {
    swift_once();
  }

  v64 = qword_99B9A0;
LABEL_22:
  v65 = v107;
  v66 = sub_BE38(v105, v64);
  sub_6D040(v66, v65);
  v67 = v106;
  v68 = (v16 + *(v106 + 20));
  v68[3] = v23;
  v68[4] = &protocol witness table for LayoutViewPlaceholder;
  *v68 = v103;
  v69 = (v16 + v67[6]);
  v69[3] = v23;
  v69[4] = &protocol witness table for LayoutViewPlaceholder;
  *v69 = v98;
  v70 = (v16 + v67[7]);
  v70[3] = v23;
  v70[4] = &protocol witness table for LayoutViewPlaceholder;
  *v70 = v97;
  v71 = (v16 + v67[8]);
  v71[3] = v23;
  v71[4] = &protocol witness table for LayoutViewPlaceholder;
  *v71 = v96;
  v72 = (v16 + v67[9]);
  v72[3] = v23;
  v72[4] = &protocol witness table for LayoutViewPlaceholder;
  *v72 = v94;
  v73 = (v16 + v67[10]);
  v73[3] = v23;
  v73[4] = &protocol witness table for LayoutViewPlaceholder;
  *v73 = v92;
  v74 = (v16 + v67[11]);
  v74[3] = v23;
  v74[4] = &protocol witness table for LayoutViewPlaceholder;
  *v74 = v104;
  v75 = (v16 + v67[12]);
  v75[3] = v23;
  v75[4] = &protocol witness table for LayoutViewPlaceholder;
  *v75 = v99;
  sub_134D8(&v116, v16 + v67[13]);
  sub_134D8(aBlock, v16 + v67[14]);
  sub_134D8(v111, v16 + v67[15]);
  v76 = (v16 + v67[16]);
  v76[3] = v23;
  v76[4] = &protocol witness table for LayoutViewPlaceholder;
  *v76 = v95;
  v77 = (v16 + v67[17]);
  v77[3] = v23;
  v77[4] = &protocol witness table for LayoutViewPlaceholder;
  *v77 = v93;
  v78 = (v16 + v67[18]);
  v78[3] = v23;
  v78[4] = &protocol witness table for LayoutViewPlaceholder;
  *v78 = v91;
  sub_6D718(v65, v16);
  *(v16 + v67[19]) = v90;

  sub_6ECA8(v50, v16, a8, a9);

  sub_BEB8(v111);
  sub_BEB8(aBlock);
  sub_BEB8(&v116);
  sub_216E5C(v16);
  return a8;
}

void sub_59D3B4(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = sub_764CF0();
  __chkstk_darwin(v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757BA0();
  if (swift_dynamicCastClass())
  {
    swift_retain_n();
    if (sub_764EC0())
    {
      v7 = sub_75FE60();
      v9 = v8;

      if (v9)
      {
        sub_7576E0();
        v10 = sub_7576C0();
        if (v10)
        {
          v11 = v10;
          sub_764F00();

          sub_BD88(&unk_944300, &qword_77DEE0);
          sub_768900();

          sub_768ED0();
          v12 = v18[1];
          v13 = v18[2];
          type metadata accessor for SubscriptionLockupPresenter(0);
          swift_allocObject();
          v14 = a2;
          v15 = SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(v7, v9, v6, a2, &off_890398, v11, v12, v13);
          v16 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_subscriptionLockupPresenter;
          swift_beginAccess();
          *&v14[v16] = v15;

          return;
        }
      }
    }
  }

  v17 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *&a2[v17] = 0;

  sub_3D928C(0, 0);
}

double sub_59D5F0(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5, double a6)
{
  sub_75B370();
  if (swift_dynamicCastClass())
  {

    sub_75B350();
    v11 = sub_7658D0();

    v12 = a4;
    v28 = a3;
    v13 = sub_75B330();
    v15 = v14;
    v16 = sub_75B360();
    v18 = v17;
    v19 = sub_75B2C0();
    v20 = sub_59C73C(v11, v13, v15, v16, v18, v19, a2, a5, a6, v28, v12);
  }

  else
  {
    sub_765860();
    if (!swift_dynamicCastClass())
    {
      return 0.0;
    }

    sub_765840();
    v21 = sub_7658D0();

    v22 = sub_765830();
    v24 = v23;
    v25 = sub_765850();
    v20 = sub_59C73C(v21, v22, v24, v25, v26, 0, a2, a5, a6, a3, a4);
  }

  return v20;
}

double sub_59D7D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v116 = a2;
  v5 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v5 - 8);
  v105 = &v86 - v6;
  v104 = sub_7623A0();
  v101 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_BD88(&unk_9457F0, qword_783FD0);
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v103 = &v86 - v8;
  v9 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v9 - 8);
  v108 = &v86 - v10;
  v11 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v11 - 8);
  v110 = &v86 - v12;
  v13 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v13 - 8);
  v109 = &v86 - v14;
  v15 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v15 - 8);
  v114 = &v86 - v16;
  v17 = sub_BD88(&qword_9533C8, &unk_79B340);
  __chkstk_darwin(v17 - 8);
  v19 = &v86 - v18;
  v20 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v20 - 8);
  v100 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v112 = &v86 - v23;
  v107 = sub_75CA40();
  v24 = *(v107 - 8);
  __chkstk_darwin(v107);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_75B330();
  sub_213C34(v27, v28);
  sub_75B350();
  v29 = sub_7658D0();

  sub_213D94(v29);
  v30 = sub_75B360();
  v32 = v31;
  v33 = sub_75B2C0();
  sub_6E4840(v30, v32, v33);
  v34 = v19;

  v35 = v114;

  v36 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView);
  sub_75B320();
  v37 = sub_75CA20();
  v38 = v107;
  (*(v24 + 8))(v26, v107);
  [v36 setOverrideUserInterfaceStyle:v37];
  sub_2137BC();
  [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView) setHidden:0];
  [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkFallbackView) setHidden:1];
  v111 = v3;
  v39 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView);
  v40 = v112;
  v41 = v39;
  v42 = sub_75B2E0();
  v43 = sub_BD88(&unk_948740, &unk_784920);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v99 = v44 + 56;
  v45(v40, 1, 1, v43);
  (*(v24 + 56))(v34, 1, 1, v38);
  v46 = v41;
  v47 = sub_758C70();
  (*(*(v47 - 8) + 56))(v35, 1, 1, v47);
  sub_757BA0();
  v48 = swift_dynamicCastClass();
  v49 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
  if (v48)
  {
    v94 = v45;
    v95 = v43;
    v97 = v34;
    v98 = a1;
    v50 = v48;
    v106 = v48;
    v51 = v49;
    v91 = sub_75BD30();
    v52 = *(v91 - 8);
    v90 = *(v52 + 56);
    v92 = v52 + 56;
    v53 = v109;
    v90(v109, 1, 1, v91);
    v89 = *(v113 + 56);
    v107 = v42;
    v54 = v110;
    v89(v110, 1, 1, v115);
    v55 = sub_765870();
    v56 = *(v55 - 8);
    v87 = *(v56 + 56);
    v88 = v56 + 56;
    v57 = v108;
    v87(v108, 1, 1, v55);
    swift_retain_n();
    sub_4A18A4(v50, v51, v40, v116, 1, 0, v35, v53, v57, v54);
    sub_10A2C(v57, &unk_9457D0, &unk_785630);
    v51[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    v93 = v51;
    [v51 setNeedsLayout];
    sub_10A2C(v54, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v53, &unk_9457E0, &qword_785640);
    v58 = v35;
    v96 = v41;
    v59 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v60 = sub_757B90();
    v90(v53, 1, 1, v91);
    v89(v54, 1, 1, v115);
    v87(v57, 1, 1, v55);
    sub_4A18A4(v60, v59, v40, v116, 0, 0, v58, v53, v57, v54);
    sub_10A2C(v57, &unk_9457D0, &unk_785630);
    v59[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v59 setNeedsLayout];

    v61 = v54;
    v62 = v107;
    sub_10A2C(v61, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v53, &unk_9457E0, &qword_785640);
    v63 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
    [*&v59[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v59[v63] setUserInteractionEnabled:0];
    [v59 setHidden:1];
    v64 = sub_764EE0();
    if (v64)
    {
    }

    sub_1FC9E8(v64 != 0);
    v65 = *&v59[v63];
    v66 = sub_764EC0();

    v67 = sub_764DB0();

    v68 = v100;
    v94(v100, 1, 1, v95);
    v69 = v101;
    v70 = v104;
    (*(v101 + 104))(v102, enum case for OfferButtonSubtitlePosition.below(_:), v104);
    (*(v69 + 56))(v105, 1, 1, v70);
    sub_59F5F0(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v71 = v103;
    sub_760940();
    v72 = v116;
    sub_1DFEBC(v66, v67, 0, v68, v71, v116, 0, 0);

    (*(v113 + 8))(v71, v115);
    sub_10A2C(v68, &unk_948730, &qword_788DD0);
    v46 = v96;
    sub_59D3B4(v62, v96, v72);

    v34 = v97;
    sub_3D9820(v46, v97);
    a1 = v98;
    v35 = v114;
    v40 = v112;
  }

  else
  {
    [*&v41[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView] setHidden:1];
    v73 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v74 = sub_75BD30();
    v75 = v109;
    (*(*(v74 - 8) + 56))(v109, 1, 1, v74);
    v76 = v110;
    (*(v113 + 56))(v110, 1, 1, v115);
    v77 = sub_765870();
    v78 = v108;
    (*(*(v77 - 8) + 56))(v108, 1, 1, v77);
    sub_4A18A4(v42, v73, v40, v116, 0, 0, v35, v75, v78, v76);
    sub_10A2C(v78, &unk_9457D0, &unk_785630);
    v73[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v73 setNeedsLayout];
    sub_10A2C(v76, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v75, &unk_9457E0, &qword_785640);
    sub_3D9820(v46, v34);
  }

  sub_10A2C(v35, &unk_94A780, &unk_788DC0);
  sub_10A2C(v34, &qword_9533C8, &unk_79B340);
  sub_10A2C(v40, &unk_948730, &qword_788DD0);
  v79 = swift_allocObject();
  v80 = v111;
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  *(v81 + 2) = v79;
  *(v81 + 3) = a1;
  *(v81 + 4) = v116;
  v82 = (v80 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction);
  v83 = *(v80 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction);
  v84 = v82[1];
  *v82 = sub_59E62C;
  v82[1] = v81;

  sub_F704(v83, v84);

  return result;
}

uint64_t sub_59E5AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_59E5E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_59E638(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v6 - 8);
  v115 = v95 - v7;
  v114 = sub_7623A0();
  v111 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_BD88(&unk_9457F0, qword_783FD0);
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v113 = v95 - v9;
  v10 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v10 - 8);
  v117 = v95 - v11;
  v12 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v12 - 8);
  v119 = v95 - v13;
  v14 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v14 - 8);
  v118 = v95 - v15;
  v16 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v16 - 8);
  v125 = v95 - v17;
  v18 = sub_BD88(&qword_9533C8, &unk_79B340);
  __chkstk_darwin(v18 - 8);
  v123 = v95 - v19;
  v20 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v20 - 8);
  v110 = v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v121 = v95 - v23;
  v24 = sub_75CA40();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_765830();
  sub_213C34(v28, v29);
  sub_765840();
  v30 = sub_7658D0();

  sub_213D94(v30);
  v31 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_subtitleView);
  sub_765850();
  v32 = *(v31 + qword_962AD8);
  if (v33)
  {
    v34 = sub_769210();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  [*(v31 + qword_962AE0) setHidden:1];
  sub_75A110();
  v35 = a2;
  sub_7688F0();

  v36 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView);
  sub_765810();
  v37 = sub_75CA20();
  (*(v25 + 8))(v27, v24);
  [v36 setOverrideUserInterfaceStyle:v37];
  v38 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkFallbackView);
  sub_FE4A4();
  sub_2137BC();
  [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView) setHidden:0];
  if (sub_765800())
  {
  }

  else
  {
    v38 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView);
  }

  v39 = v123;
  v40 = v121;
  v116 = v35;
  [v38 setHidden:1];
  v41 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView);
  v42 = sub_7657F0();
  v43 = sub_BD88(&unk_948740, &unk_784920);
  v44 = *(v43 - 8);
  v108 = *(v44 + 56);
  v109 = v43;
  v107 = v44 + 56;
  v108(v40, 1, 1);
  (*(v25 + 56))(v39, 1, 1, v24);
  v45 = sub_758C70();
  (*(*(v45 - 8) + 56))(v125, 1, 1, v45);
  sub_757BA0();
  v46 = v42;
  v47 = swift_dynamicCastClass();
  v48 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
  v120 = v41;
  if (v47)
  {
    v49 = v47;
    v105 = a1;
    v106 = v3;
    v101 = sub_75BD30();
    v50 = *(v101 - 8);
    v100 = *(v50 + 56);
    v102 = v50 + 56;
    v51 = v118;
    v100(v118, 1, 1, v101);
    v99 = *(v122 + 56);
    v52 = v119;
    v99(v119, 1, 1, v124);
    v97 = sub_765870();
    v53 = *(v97 - 8);
    v96 = *(v53 + 56);
    v98 = v53 + 56;
    v54 = v117;
    v96(v117, 1, 1, v97);
    v55 = v46;
    swift_retain_n();
    v56 = v40;
    v57 = v40;
    v58 = v116;
    v59 = v125;
    sub_4A18A4(v49, v48, v57, v116, 1, 0, v125, v51, v54, v52);
    sub_10A2C(v54, &unk_9457D0, &unk_785630);
    v48[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    v103 = v48;
    [v48 setNeedsLayout];
    sub_10A2C(v52, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v51, &unk_9457E0, &qword_785640);
    v60 = v49;
    v61 = *&v120[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v104 = v60;
    v62 = v58;
    v63 = sub_757B90();
    v100(v51, 1, 1, v101);
    v99(v52, 1, 1, v124);
    v96(v54, 1, 1, v97);
    v64 = v62;
    sub_4A18A4(v63, v61, v56, v62, 0, 0, v59, v51, v54, v52);
    sub_10A2C(v54, &unk_9457D0, &unk_785630);
    v61[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v61 setNeedsLayout];

    sub_10A2C(v52, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v51, &unk_9457E0, &qword_785640);
    v65 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
    [*&v61[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v61[v65] setUserInteractionEnabled:0];
    [v61 setHidden:1];
    v66 = sub_764EE0();
    v67 = v55;
    if (v66)
    {
    }

    sub_1FC9E8(v66 != 0);
    v68 = *&v61[v65];
    v69 = sub_764EC0();

    v70 = sub_764DB0();

    v71 = v110;
    (v108)(v110, 1, 1, v109);
    v72 = v111;
    v73 = v114;
    (*(v111 + 104))(v112, enum case for OfferButtonSubtitlePosition.below(_:), v114);
    (*(v72 + 56))(v115, 1, 1, v73);
    sub_59F5F0(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v74 = v113;
    sub_760940();
    v75 = v64;
    sub_1DFEBC(v69, v70, 0, v71, v74, v64, 0, 0);

    (*(v122 + 8))(v74, v124);
    sub_10A2C(v71, &unk_948730, &qword_788DD0);
    v76 = v120;
    sub_59D3B4(v67, v120, v64);

    v39 = v123;
    sub_3D9820(v76, v123);
    v3 = v106;
    v77 = v125;
    v78 = v121;
  }

  else
  {
    [v48 setHidden:1];
    v95[1] = v42;
    v79 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v80 = sub_75BD30();
    v81 = v118;
    (*(*(v80 - 8) + 56))(v118, 1, 1, v80);
    v82 = v119;
    (*(v122 + 56))(v119, 1, 1, v124);
    v83 = sub_765870();
    v84 = v117;
    (*(*(v83 - 8) + 56))(v117, 1, 1, v83);
    v85 = v42;
    v78 = v40;
    v86 = v40;
    v87 = v116;
    v77 = v125;
    sub_4A18A4(v85, v79, v86, v116, 0, 0, v125, v81, v84, v82);
    sub_10A2C(v84, &unk_9457D0, &unk_785630);
    v79[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v79 setNeedsLayout];
    v76 = v120;
    v75 = v87;
    sub_10A2C(v82, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v81, &unk_9457E0, &qword_785640);
    sub_3D9820(v76, v39);
  }

  sub_10A2C(v77, &unk_94A780, &unk_788DC0);
  sub_10A2C(v39, &qword_9533C8, &unk_79B340);
  sub_10A2C(v78, &unk_948730, &qword_788DD0);
  sub_7657F0();
  v88 = sub_764D80();

  if (v88)
  {
    v89 = swift_allocObject();
    *(v89 + 16) = v75;
    *(v89 + 24) = v88;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_59F518;
    *(v88 + 24) = v89;

    v90 = sub_59F558;
  }

  else
  {
    v90 = 0;
  }

  v91 = (v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction);
  v92 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction);
  v93 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction + 8);
  *v91 = v90;
  v91[1] = v88;
  return sub_F704(v92, v93);
}

uint64_t sub_59F4D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_59F520()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_59F580()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_59F5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_59F5F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_59F638()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93F980, &qword_77EDA0);
  *&result = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_pendingAction;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_pendingAction))
  {
    v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_objectGraph);
    v8 = sub_BD88(&unk_93F630, &unk_77E230);

    sub_768860();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_10A2C(v5, &unk_93F980, &qword_77EDA0);
    }

    else
    {

      sub_32A6C0(v10, 1, v7, v5);

      (*(v9 + 8))(v5, v8);
    }

    *(v1 + v6) = 0;

    sub_59F638();
  }

  return result;
}

void sub_59F7D8(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_installOfferView;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for InstallPageInstallingOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_preInstallFreeOfferView;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallFreeOfferView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_preInstallPaidOfferView;
  *&v2[v7] = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallPaidOfferView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction] = 0;
  v8 = &v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_activeView];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerViewTransitionFadeDuration] = 0x3FD3333333333333;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_appAdamId;
  v10 = sub_764CF0();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = &v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerMode];
  *v11 = 0;
  v11[8] = 1;
  v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_isInBackground] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_pendingAction] = 0;
  v12 = &v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_objectGraph] = a2;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_presenter] = a1;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_artworkLoader] = v29[0];
  v30.receiver = v2;
  v30.super_class = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v13 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  sub_5A5C98(&qword_95C0B0, type metadata accessor for InAppPurchaseInstallPageViewController, &unk_7A6DC0);
  v14 = v13;
  sub_757EC0();
  v15 = [v14 view];
  if (v15)
  {
    v16 = v15;
    [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    v17 = [v14 view];
    if (v17)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v18 = sub_76A000();
      [v17 setBackgroundColor:v18];

      v19 = objc_opt_self();
      v20 = [v19 defaultCenter];
      [v20 addObserver:v14 selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

      v21 = [v19 defaultCenter];
      [v21 addObserver:v14 selector:"didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

      v22 = [v19 defaultCenter];
      v23 = v14;
      v24 = sub_763780();
      [v22 addObserver:v23 selector:"askToBuyRequestNotificationReceived:" name:v24 object:0];

      v25 = [v19 defaultCenter];
      v26 = v23;
      v27 = sub_763BA0();
      [v25 addObserver:v26 selector:"didCompletePurchase:" name:v27 object:0];

      v29[3] = sub_757ED0();
      v29[4] = &protocol witness table for BasePresenter;

      v29[0] = a1;
      v28 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
      swift_beginAccess();
      sub_B33C8(v29, v26 + v28, &qword_93FED0, &unk_77DCE0);
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

double sub_59FDD0(char a1)
{
  if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerMode + 8) & 1) == 0)
  {
    v3 = sub_75EB20();
    if (v3 == sub_75EB20())
    {
      if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction) && (sub_757B40(), swift_dynamicCastClass()))
      {

        sub_757AE0();

        if (qword_93DEF0 != -1)
        {
          swift_once();
        }

        v5 = sub_768FF0();
        sub_BE38(v5, qword_9A0400);
        sub_BD88(&qword_93FD00, &unk_77DF10);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77E280;
        sub_768540();
        v14 = &type metadata for Bool;
        v6 = a1 & 1;
        LOBYTE(v13[0]) = v6;
        sub_7685E0();
        sub_10A2C(v13, &unk_93FBD0, &qword_77DFA0);
        sub_768E90();

        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        v8 = objc_allocWithZone(SKInstallSheetStatusUpdateRequest);
        v9 = sub_769210();

        v15 = sub_5A5CF0;
        v16 = v7;
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1107296256;
        v13[2] = sub_3ADB74;
        v14 = &unk_898660;
        v10 = _Block_copy(v13);

        v11 = [v8 initWithAppBundleId:v9 isInstallSheetOpen:v6 completionHandler:v10];
        _Block_release(v10);

        [v11 start];
      }

      else
      {
        if (qword_93DEF0 != -1)
        {
          swift_once();
        }

        v12 = sub_768FF0();
        sub_BE38(v12, qword_9A0400);
        sub_BD88(&qword_93FD00, &unk_77DF10);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77B6D0;
        sub_768540();
        sub_768E90();
      }
    }
  }

  return result;
}

double sub_5A0218(uint64_t a1, char a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v2 = sub_768FF0();
    sub_BE38(v2, qword_9A0400);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    swift_getErrorValue();
    v9 = v7;
    v3 = sub_B1B4(v8);
    (*(*(v7 - 1) + 16))(v3);
    sub_7685E0();
    sub_10A2C(v8, &unk_93FBD0, &qword_77DFA0);
    sub_768E90();
  }

  else
  {
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v6 = sub_768FF0();
    sub_BE38(v6, qword_9A0400);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    v9 = &type metadata for Bool;
    LOBYTE(v8[0]) = a2 & 1;
    sub_7685E0();
    sub_10A2C(v8, &unk_93FBD0, &qword_77DFA0);
    sub_768E90();
  }

  return result;
}

id sub_5A0558()
{
  v1 = v0;
  v2 = sub_7587B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v7 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v1 + v7, v13, &qword_93FED0, &unk_77DCE0);
  if (v14)
  {
    sub_134D8(v13, v12);
    sub_10A2C(v13, &qword_93FED0, &unk_77DCE0);
    sub_B170(v12, v12[3]);
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v2);
    sub_7587C0();
    (*(v3 + 8))(v5, v2);
    sub_BEB8(v12);
  }

  else
  {
    sub_10A2C(v13, &qword_93FED0, &unk_77DCE0);
  }

  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  result = [v1 view];
  if (result)
  {
    v10 = result;
    [result setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    return sub_75A160();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5A07E4(char a1)
{
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v1 + v8, v12, &qword_93FED0, &unk_77DCE0);
  if (!v13)
  {
    return sub_10A2C(v12, &qword_93FED0, &unk_77DCE0);
  }

  sub_134D8(v12, v11);
  sub_10A2C(v12, &qword_93FED0, &unk_77DCE0);
  sub_B170(v11, v11[3]);
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v6, v3);
  return sub_BEB8(v11);
}

double sub_5A0A64(char a1)
{
  v2 = v1;
  v4 = sub_7587B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v15.receiver = v2;
  v15.super_class = v8;
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v2 + v9, v13, &qword_93FED0, &unk_77DCE0);
  if (v14)
  {
    sub_134D8(v13, v12);
    sub_10A2C(v13, &qword_93FED0, &unk_77DCE0);
    sub_B170(v12, v12[3]);
    (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v4);
    sub_7587C0();
    (*(v5 + 8))(v7, v4);
    sub_BEB8(v12);
  }

  else
  {
    sub_10A2C(v13, &qword_93FED0, &unk_77DCE0);
  }

  sub_59FDD0(1);
  return sub_59F638();
}

uint64_t sub_5A0CA4(SEL *a1, unsigned int *a2)
{
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v16.receiver = v2;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a1);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v2 + v10, v14, &qword_93FED0, &unk_77DCE0);
  if (!v15)
  {
    return sub_10A2C(v14, &qword_93FED0, &unk_77DCE0);
  }

  sub_134D8(v14, v13);
  sub_10A2C(v14, &qword_93FED0, &unk_77DCE0);
  sub_B170(v13, v13[3]);
  (*(v6 + 104))(v8, *a2, v5);
  sub_7587C0();
  (*(v6 + 8))(v8, v5);
  return sub_BEB8(v13);
}

uint64_t sub_5A0EB8()
{
  v1 = sub_7587B0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v12.receiver = v0;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, "as_viewWillBecomePartiallyVisible");
  v6 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v0 + v6, v10, &qword_93FED0, &unk_77DCE0);
  if (!v11)
  {
    return sub_10A2C(v10, &qword_93FED0, &unk_77DCE0);
  }

  sub_134D8(v10, v9);
  sub_10A2C(v10, &qword_93FED0, &unk_77DCE0);
  sub_B170(v9, v9[3]);
  sub_768D50();
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v1);
  sub_7587C0();
  (*(v2 + 8))(v4, v1);
  return sub_BEB8(v9);
}

uint64_t sub_5A10CC(char a1)
{
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v1 + v8, v12, &qword_93FED0, &unk_77DCE0);
  if (!v13)
  {
    return sub_10A2C(v12, &qword_93FED0, &unk_77DCE0);
  }

  sub_134D8(v12, v11);
  sub_10A2C(v12, &qword_93FED0, &unk_77DCE0);
  sub_B170(v11, v11[3]);
  sub_768D50();
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v6, v3);
  return sub_BEB8(v11);
}

double sub_5A1364(char a1)
{
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewDidDisappear:", a1 & 1);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v1 + v8, v12, &qword_93FED0, &unk_77DCE0);
  if (v13)
  {
    sub_134D8(v12, v11);
    sub_10A2C(v12, &qword_93FED0, &unk_77DCE0);
    sub_B170(v11, v11[3]);
    (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v3);
    sub_7587C0();
    (*(v4 + 8))(v6, v3);
    sub_BEB8(v11);
  }

  else
  {
    sub_10A2C(v12, &qword_93FED0, &unk_77DCE0);
  }

  return sub_59FDD0(0);
}

void sub_5A16B0()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  sub_767130();
  v3 = objc_allocWithZone(sub_767160());
  v4 = sub_767150();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController];
  sub_761930();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_761920();
  }

  else
  {
    __break(1u);
  }
}

void sub_5A1808()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController];
  if (v2)
  {
    sub_767160();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_761930();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_761920();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_5A18EC(uint64_t a1)
{
  v2 = v1;
  sub_767230();
  sub_5A5C98(&unk_95C0C0, &type metadata accessor for InAppPurchaseInstallPagePresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = sub_7671F0();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController];
  sub_761930();

  v6 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v3;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_761920();
  }

  else
  {
    __break(1u);
  }
}

void sub_5A1A64(unint64_t a1, uint64_t a2, uint64_t a3, NSString a4)
{
  v5 = v4;
  v9 = sub_BD88(&unk_940200, &unk_7AEB70);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v34 - v11;
  if (a4)
  {
    a4 = sub_769210();
  }

  [v5 setTitle:{a4, v10}];

  v13 = &v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_activeView];
  v14 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_activeView];
  swift_unknownObjectRetain();
  sub_5A3D5C(a1);
  if (sub_757CE0())
  {
    sub_764F00();

    v15 = sub_764CF0();
    (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  }

  else
  {
    v16 = sub_764CF0();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  v17 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_appAdamId;
  swift_beginAccess();
  sub_B33C8(v12, &v5[v17], &unk_940200, &unk_7AEB70);
  swift_endAccess();
  if (sub_757CF0())
  {
    v18 = sub_764DB0();

    *&v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction] = v18;
  }

  if (*v13)
  {
    v19 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    v34 = v13;
    v21 = ObjectType;
    v22 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_objectGraph];
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
  sub_5A3F94(v26, v27);

  v28 = &v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerMode];
  if (v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerMode + 8] == 1)
  {
    sub_59FDD0(0);
    *v28 = a1;
    v28[8] = 0;
LABEL_23:
    v31 = sub_59FDD0(1);
    goto LABEL_24;
  }

  v29 = sub_75EB20();
  if (v29 != sub_75EB20())
  {
    sub_59FDD0(0);
  }

  *v28 = a1;
  v28[8] = 0;
  v30 = sub_75EB20();
  if (v30 != sub_75EB20())
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

id sub_5A1E68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(__n128), void (*a6)(__n128), __n128 a7)
{
  v87 = a6;
  v88 = a1;
  v9 = v7;
  v91 = a3;
  v92 = a4;
  v89 = a2;
  v10 = sub_760080();
  __chkstk_darwin(v10 - 8);
  v86 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v12 - 8);
  v85 = &v73 - v13;
  v14 = sub_75BD30();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  v21 = sub_762DE0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_75D850();
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
  v37 = sub_75CF70();
  v83 = *(v37 - 8);
  v84 = v37;
  v38 = __chkstk_darwin(v37);
  v82 = &v73 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(v38);
  sub_762DB0();
  (*(v22 + 8))(v24, v21);
  v90 = v9;
  result = [v9 view];
  if (result)
  {
    v41 = result;
    v42 = [result traitCollection];

    v43 = *(v15 + 104);
    v43(v17, enum case for OfferEnvironment.arcadeProductPage(_:), v14);
    v44 = sub_75BD20();
    v45 = *(v15 + 8);
    v45(v17, v14);
    v93 = v14;
    if (v44)
    {
      v46 = v20;
      if (qword_93C470 != -1)
      {
        swift_once();
      }

      v47 = v78;
      v48 = sub_BE38(v78, qword_99B2D8);
      v49 = v79;
      (*(v25 + 16))(v79, v48, v47);

      v50 = v45;
      goto LABEL_16;
    }

    v43(v17, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v14);
    v51 = sub_75BD20();
    v77 = v45;
    v45(v17, v14);
    if (v51)
    {
      v46 = v20;
      if (qword_93C468 != -1)
      {
        swift_once();
      }

      v52 = qword_99B2C0;
      v47 = v78;
LABEL_14:
      v53 = sub_BE38(v47, v52);
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
      v56 = sub_BD88(&unk_9457F0, qword_783FD0);
      (*(*(v56 - 8) + 56))(v85, 1, 1, v56);

      (v87)(v57);
      v58 = v82;
      sub_75CF60();
      sub_5A5A20(v58, v91, v92, *&v90[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_installOfferView], &type metadata accessor for TextConfiguration, sub_1E4800);
      return (*(v83 + 8))(v58, v84);
    }

    if (sub_75BD10())
    {
      v46 = v20;
      v47 = v78;
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v52 = qword_99B2A8;
      goto LABEL_14;
    }

    v59 = v93;
    v43(v17, enum case for OfferEnvironment.navigationBar(_:), v93);
    v46 = v20;
    v60 = sub_75BD20();
    v77(v17, v59);
    v47 = v78;
    if (v60)
    {
      if (qword_93C478 != -1)
      {
        swift_once();
      }

      v61 = sub_BE38(v47, qword_946980);
      v49 = v79;
      (*(v25 + 16))(v79, v61, v47);

      goto LABEL_15;
    }

    v62 = sub_769350();
    v63 = v42;
    if (sub_769A00())
    {
      v50 = v77;
      if (v62 <= 8)
      {
LABEL_23:
        v64 = sub_769A00();
        v49 = v79;
        if (v64)
        {
          if (qword_93C440 != -1)
          {
            swift_once();
          }

          v65 = qword_946920;
        }

        else
        {
          if (qword_93C448 != -1)
          {
            swift_once();
          }

          v65 = qword_946938;
        }

        v68 = sub_BE38(v47, v65);
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

    v66 = sub_769A00();
    v49 = v79;
    v73 = v63;
    if (v66)
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v67 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v67 = qword_946938;
    }

    v70 = sub_BE38(v47, v67);
    v71 = v74;
    (*(v25 + 16))(v74, v70, v47);
    v72 = v76;
    (*(v25 + 32))(v76, v71, v47);
    sub_765470();

    (*(v25 + 8))(v72, v47);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_5A28A4(uint64_t a1, void *a2)
{
  v33 = a1;
  v34 = a2;
  v3 = sub_762DE0();
  __chkstk_darwin(v3 - 8);
  v31 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v5 - 8);
  v30 = v28 - v6;
  v7 = sub_763750();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v29 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_948740, &unk_784920);
  __chkstk_darwin(v10 - 8);
  v28[1] = v28 - v11;
  v12 = sub_75D850();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v28 - v17;
  v28[0] = sub_7606C0();
  v19 = *(v28[0] - 8);
  *&v20 = __chkstk_darwin(v28[0]).n128_u64[0];
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  result = [v2 view];
  if (result)
  {
    v24 = result;
    v25 = [result traitCollection];

    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v26 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v26 = qword_946938;
    }

    v27 = sub_BE38(v12, v26);
    (*(v13 + 16))(v15, v27, v12);

    (*(v13 + 32))(v18, v15, v12);
    (*(v8 + 104))(v29, enum case for OfferButtonPresenterViewAlignment.center(_:), v7);
    (*(v8 + 56))(v30, 1, 1, v7);
    sub_5A5C98(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
    sub_760940();
    sub_762DA0();
    sub_7606B0();
    sub_5A5A20(v22, v33, v34, *&v32[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_installOfferView], &type metadata accessor for RedownloadConfiguration, sub_1E54B0);
    return (*(v19 + 8))(v22, v28[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_5A2D84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  v77 = a3;
  v78 = a4;
  v75 = a1;
  v76 = a2;
  v6 = a5.n128_f64[0];
  v7 = sub_760080();
  __chkstk_darwin(v7 - 8);
  v74 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v9 - 8);
  v73 = &v61 - v10;
  v72 = sub_75BD30();
  v11 = *(v72 - 8);
  __chkstk_darwin(v72);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = sub_762DE0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_75D850();
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
  v34 = sub_75CF70();
  v70 = *(v34 - 8);
  v71 = v34;
  __chkstk_darwin(v34);
  v69 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_isInBackground] & 1) == 0)
  {
    v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] = 1;
  }

  v67 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_installOfferView];
  sub_53166C(v6);
  sub_762DD0();
  sub_762DB0();
  (*(v18 + 8))(v20, v17);
  result = [v5 view];
  if (result)
  {
    v37 = result;
    v79 = [result traitCollection];

    v38 = *(v11 + 104);
    v39 = v72;
    v38(v13, enum case for OfferEnvironment.arcadeProductPage(_:), v72);
    LOBYTE(v37) = sub_75BD20();
    v40 = *(v11 + 8);
    v40(v13, v39);
    v64 = v16;
    if (v37)
    {
      if (qword_93C470 != -1)
      {
        swift_once();
      }

      v41 = qword_99B2D8;
LABEL_16:
      v43 = sub_BE38(v21, v41);
      v44 = v65;
      (*(v22 + 16))(v65, v43, v21);

LABEL_17:
      v45 = *(v22 + 32);
      v46 = v66;
      v45(v66, v44, v21);
      v40(v64, v39);
      v45(v68, v46, v21);
      v47 = sub_BD88(&unk_9457F0, qword_783FD0);
      (*(*(v47 - 8) + 56))(v73, 1, 1, v47);

      sub_760070();
      v48 = v69;
      sub_75CF60();
      sub_5A5A20(v48, v77, v78, v67, &type metadata accessor for TextConfiguration, sub_1E4800);
      return (*(v70 + 8))(v48, v71);
    }

    v38(v13, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v39);
    v42 = sub_75BD20();
    v40(v13, v39);
    if (v42)
    {
      if (qword_93C468 != -1)
      {
        swift_once();
      }

      v41 = qword_99B2C0;
      goto LABEL_16;
    }

    if (sub_75BD10())
    {
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v41 = qword_99B2A8;
      goto LABEL_16;
    }

    v38(v13, enum case for OfferEnvironment.navigationBar(_:), v39);
    v49 = sub_75BD20();
    v40(v13, v39);
    if (v49)
    {
      if (qword_93C478 != -1)
      {
        swift_once();
      }

      v50 = sub_BE38(v21, qword_946980);
      v44 = v65;
      (*(v22 + 16))(v65, v50, v21);

      goto LABEL_17;
    }

    v51 = sub_769350();
    if (sub_769A00())
    {
      if (v51 <= 8)
      {
LABEL_24:
        if (sub_769A00())
        {
          v52 = v65;
          if (qword_93C440 != -1)
          {
            swift_once();
          }

          v53 = qword_946920;
        }

        else
        {
          v52 = v65;
          if (qword_93C448 != -1)
          {
            swift_once();
          }

          v53 = qword_946938;
        }

        v56 = sub_BE38(v21, v53);
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

    if (sub_769A00())
    {
      v54 = v65;
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v55 = qword_946920;
    }

    else
    {
      v54 = v65;
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v55 = qword_946938;
    }

    v58 = sub_BE38(v21, v55);
    v59 = v61;
    (*(v22 + 16))(v61, v58, v21);
    v60 = v63;
    (*(v22 + 32))(v63, v59, v21);
    v44 = v54;
    sub_765470();

    (*(v22 + 8))(v60, v21);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_5A37A0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_762DE0();
  __chkstk_darwin(v3 - 8);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v5 - 8);
  v28 = &v26 - v6;
  v7 = sub_763750();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_948740, &unk_784920);
  __chkstk_darwin(v11 - 8);
  v12 = sub_75D850();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v26 - v18;
  v27 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_installOfferView];
  v20 = [v2 view];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 traitCollection];

    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v23 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v23 = qword_946938;
    }

    v24 = sub_BE38(v12, v23);
    (*(v13 + 16))(v15, v24, v12);

    (*(v13 + 32))(v19, v15, v12);
    (*(v8 + 104))(v10, enum case for OfferButtonPresenterViewAlignment.center(_:), v7);
    (*(v8 + 56))(v28, 1, 1, v7);
    sub_5A5C98(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
    sub_760940();
    sub_762DA0();
    sub_763830();
    swift_allocObject();
    v25 = sub_763820();
    sub_5A5BA0(v25, v30, v31, v27);
  }

  else
  {
    __break(1u);
  }
}

void sub_5A3BD4()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_530E98(sub_5A5830, v1);

    sub_53166C(1.0);
  }

  else
  {
    v2 = &v0[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 1);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {

      [v0 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_5A3D08(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_5A4350();
  }
}

double sub_5A3D5C(unint64_t a1)
{
  if (a1 <= 2)
  {
    v2 = off_8986A0[a1];
    v3 = *(v1 + *off_898688[a1]);
    v4 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_activeView);
    *v4 = v3;
    v4[1] = v2;

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_5A3DD8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 sizeThatFits:{v10, v12}];
      v14 = v13;
      v15.origin.x = v6;
      v15.origin.y = v8;
      v15.size.width = v10;
      v15.size.height = v12;
      if (CGRectGetHeight(v15) >= v14)
      {
        v20.origin.x = v6;
        v20.origin.y = v8;
        v20.size.width = v10;
        v20.size.height = v12;
        CGRectGetMinY(v20);
        v21.origin.x = v6;
        v21.origin.y = v8;
        v21.size.width = v10;
        v21.size.height = v12;
        CGRectGetHeight(v21);
        v22.origin.x = v6;
        v22.origin.y = v8;
        v22.size.width = v10;
        v22.size.height = v12;
        CGRectGetMinX(v22);
        v23.origin.x = v6;
        v23.origin.y = v8;
        v23.size.width = v10;
        v23.size.height = v12;
        CGRectGetWidth(v23);
      }

      else
      {
        v16.origin.x = v6;
        v16.origin.y = v8;
        v16.size.width = v10;
        v16.size.height = v12;
        CGRectGetMinX(v16);
        v17.origin.x = v6;
        v17.origin.y = v8;
        v17.size.width = v10;
        v17.size.height = v12;
        CGRectGetMinY(v17);
        v18.origin.x = v6;
        v18.origin.y = v8;
        v18.size.width = v10;
        v18.size.height = v12;
        CGRectGetWidth(v18);
        v19.origin.x = v6;
        v19.origin.y = v8;
        v19.size.width = v10;
        v19.size.height = v12;
        CGRectGetHeight(v19);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_5A3F94(id a1, id a2)
{
  if (!a1)
  {
    if (!a2)
    {
      return;
    }

LABEL_6:
    v5 = a2;
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 sizeThatFits:{v13, v15}];
      Height = v16;
      v39.origin.x = v9;
      v39.origin.y = v11;
      v39.size.width = v13;
      v39.size.height = v15;
      if (CGRectGetHeight(v39) >= Height)
      {
        v44.origin.x = v9;
        v44.origin.y = v11;
        v44.size.width = v13;
        v44.size.height = v15;
        MinY = CGRectGetMinY(v44);
        v45.origin.x = v9;
        v45.origin.y = v11;
        v45.size.width = v13;
        v45.size.height = v15;
        v19 = MinY + (CGRectGetHeight(v45) - Height) * 0.5;
        v46.origin.x = v9;
        v46.origin.y = v11;
        v46.size.width = v13;
        v46.size.height = v15;
        MinX = CGRectGetMinX(v46);
        v47.origin.x = v9;
        v47.origin.y = v11;
        v47.size.width = v13;
        v47.size.height = v15;
        Width = CGRectGetWidth(v47);
      }

      else
      {
        v40.origin.x = v9;
        v40.origin.y = v11;
        v40.size.width = v13;
        v40.size.height = v15;
        MinX = CGRectGetMinX(v40);
        v41.origin.x = v9;
        v41.origin.y = v11;
        v41.size.width = v13;
        v41.size.height = v15;
        v19 = CGRectGetMinY(v41);
        v42.origin.x = v9;
        v42.origin.y = v11;
        v42.size.width = v13;
        v42.size.height = v15;
        Width = CGRectGetWidth(v42);
        v43.origin.x = v9;
        v43.origin.y = v11;
        v43.size.width = v13;
        v43.size.height = v15;
        Height = CGRectGetHeight(v43);
      }

      [v5 setFrame:{MinX, v19, Width, Height}];
      [v5 layoutIfNeeded];
      [v5 setAlpha:0.0];
      v22 = v5;
      v23 = [v2 view];
      if (v23)
      {
        v24 = v23;
        [v23 addSubview:v22];

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a1 == a2)
  {
    return;
  }

  if (a2)
  {
    goto LABEL_6;
  }

  [0 layoutIfNeeded];
LABEL_12:
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a1;
  v37 = sub_5A5788;
  v38 = v26;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_23F0CC;
  v36 = &unk_8985C0;
  v27 = _Block_copy(&v33);
  v28 = a1;
  v29 = a2;

  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  v37 = sub_5A5820;
  v38 = v30;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_3D6D80;
  v36 = &unk_898610;
  v31 = _Block_copy(&v33);
  v32 = v28;

  [v25 animateWithDuration:v27 animations:v31 completion:0.3];
  _Block_release(v31);
  _Block_release(v27);
}

uint64_t sub_5A4350()
{
  v1 = sub_BD88(&unk_940200, &unk_7AEB70);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  swift_unknownObjectWeakInit();
  v4 = &v0[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    [v0 dismissViewControllerAnimated:1 completion:0];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_appAdamId;
    v9 = Strong;
    swift_beginAccess();
    sub_1ED18(v9 + v8, v3, &unk_940200, &unk_7AEB70);

    v10 = sub_764CF0();
    (*(*(v10 - 8) + 48))(v3, 1, v10);
    sub_10A2C(v3, &unk_940200, &unk_7AEB70);
  }

  return swift_unknownObjectWeakDestroy();
}

uint64_t sub_5A4520(uint64_t a1, uint64_t a2)
{
  v2 = sub_BD88(&unk_940200, &unk_7AEB70);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v8 = sub_764CF0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = sub_756CD0();
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v35 = sub_763790();
  v36 = v17;
  sub_76A6E0();
  if (!*(v16 + 16) || (v19 = sub_663E34(v37, v18), (v20 & 1) == 0))
  {

    sub_1EB60(v37);
LABEL_10:
    v38 = 0u;
    v39 = 0u;
    goto LABEL_11;
  }

  sub_132B4(*(v16 + 56) + 32 * v19, &v38);
  sub_1EB60(v37);

  if (!*(&v39 + 1))
  {
LABEL_11:
    sub_10A2C(&v38, &unk_93FBD0, &qword_77DFA0);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_12;
  }

  v21 = swift_dynamicCast();
  v22 = *(v9 + 56);
  v22(v7, v21 ^ 1u, 1, v8);
  v34 = *(v9 + 48);
  if (v34(v7, 1, v8) == 1)
  {
LABEL_12:
    v26 = v7;
    return sub_10A2C(v26, &unk_940200, &unk_7AEB70);
  }

  v32 = *(v9 + 32);
  v33 = v9 + 32;
  v32(v14, v7, v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v9 + 8))(v14, v8);
    v22(v4, 1, 1, v8);
    goto LABEL_16;
  }

  v24 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_appAdamId;
  v25 = Strong;
  swift_beginAccess();
  sub_1ED18(v25 + v24, v4, &unk_940200, &unk_7AEB70);

  if (v34(v4, 1, v8) == 1)
  {
    (*(v9 + 8))(v14, v8);
LABEL_16:
    v26 = v4;
    return sub_10A2C(v26, &unk_940200, &unk_7AEB70);
  }

  v32(v11, v4, v8);
  if (sub_764CB0())
  {
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      sub_5A4350();
    }
  }

  v30 = *(v9 + 8);
  v30(v11, v8);
  return (v30)(v14, v8);
}

uint64_t sub_5A4990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = sub_768380();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7683C0();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_756CE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v21 = sub_769970();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = v23;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = v24;
  v17 = _Block_copy(aBlock);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_5A5C98(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  sub_76A5A0();
  v18 = v21;
  sub_769980();
  _Block_release(v17);

  (*(v27 + 8))(v7, v5);
  return (*(v25 + 8))(v10, v26);
}

void sub_5A4D38(uint64_t a1, uint64_t a2)
{
  v2 = sub_764CF0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_756CD0();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v16[1] = sub_763B90();
  v16[2] = v8;
  sub_76A6E0();
  if (!*(v7 + 16) || (v10 = sub_663E34(v17, v9), (v11 & 1) == 0))
  {

    sub_1EB60(v17);
LABEL_9:
    v18 = 0u;
    v19 = 0u;
    goto LABEL_10;
  }

  sub_132B4(*(v7 + 56) + 32 * v10, &v18);
  sub_1EB60(v17);

  if (!*(&v19 + 1))
  {
LABEL_10:
    sub_10A2C(&v18, &unk_93FBD0, &qword_77DFA0);
    return;
  }

  sub_BE70(0, &qword_95C0B8, ASDPurchase_ptr);
  if (swift_dynamicCast())
  {
    v12 = v17[0];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;

      v15 = [v12 itemID];
      sub_764CD0();
      sub_757EA0();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }
}

uint64_t sub_5A4F74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_756CE0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756CC0();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

id sub_5A5094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseInstallPageViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseInstallPageViewController(uint64_t a1)
{
  result = qword_95C080;
  if (!qword_95C080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5A523C(uint64_t a1)
{
  sub_5A533C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_5A533C(uint64_t a1)
{
  if (!qword_95C090)
  {
    sub_764CF0();
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_95C090);
    }
  }
}

void sub_5A5398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a1)
  {
    case 2:
      sub_384BC(a2, a3);
      break;
    case 1:
      sub_62688(a2, a3);
      break;
    case 0:
      sub_531838(a2, a3);
      break;
  }
}

double sub_5A5468(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_pendingAction) = a1;

  return sub_59F638();
}

uint64_t sub_5A5588()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_5A55DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_5A55F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_756CE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 8, v5 | 7);
}

uint64_t sub_5A56A8(uint64_t (*a1)(unint64_t, uint64_t), uint64_t a2)
{
  v3 = *(sub_756CE0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v2 + v4, v5);
}

uint64_t sub_5A5748()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_5A5788()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  if (result)
  {
    result = [result setAlpha:1.0];
  }

  if (v2)
  {

    return [v2 setAlpha:0.0];
  }

  return result;
}

uint64_t sub_5A57E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_5A5838()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_installOfferView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for InstallPageInstallingOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_preInstallFreeOfferView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallFreeOfferView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_preInstallPaidOfferView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallPaidOfferView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_activeView);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerViewTransitionFadeDuration) = 0x3FD3333333333333;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_appAdamId;
  v6 = sub_764CF0();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerMode;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_isInBackground) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_pendingAction) = 0;
  v8 = v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController) = 0;
  sub_76A840();
  __break(1u);
}

id sub_5A5A20(uint64_t a1, uint64_t a2, NSString a3, char *a4, uint64_t (*a5)(void), void (*a6)(char *, void))
{
  v10 = a5(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v19 - v12;
  (*(v14 + 16))(&v19 - v12, a1, v11);
  v15 = *&a4[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_descriptionLabel];
  if (a3)
  {
    a3 = sub_769210();
  }

  [v15 setText:a3];

  v16 = objc_opt_self();
  v17 = [v16 areAnimationsEnabled];
  [v16 setAnimationsEnabled:0];
  a6(v13, *&a4[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_offerButton]);
  [a4 setNeedsLayout];
  return [v16 setAnimationsEnabled:v17];
}

id sub_5A5BA0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *&a4[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_descriptionLabel];
  if (a3)
  {
    v6 = sub_769210();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText:v6];

  v7 = objc_opt_self();
  v8 = [v7 areAnimationsEnabled];
  [v7 setAnimationsEnabled:0];
  v9 = *&a4[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_offerButton];

  sub_1E4844(v10, v9);
  [a4 setNeedsLayout];

  return [v7 setAnimationsEnabled:v8];
}

uint64_t sub_5A5C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_5A5D1C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  *&v5[qword_99FF60] = 0;
  *&v5[qword_99FF68] = 0;
  v14 = qword_99FF70;
  *&v5[v14] = [objc_allocWithZone(type metadata accessor for ArtworkGrid()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for PaletteBackgroundView();
  *&v5[qword_99FF78] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v16 = qword_99DC88;
  v17 = *&v15[qword_99DC88];
  v18 = v15;
  [v17 setNumberOfLines:2];
  v19 = qword_93D9B0;
  v20 = *&v15[v16];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_7666D0();
  v22 = sub_BE38(v21, qword_99F508);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v13, v22, v21);
  (*(v23 + 56))(v13, 0, 1, v21);
  sub_75BA40();

  v24 = qword_99FF70;
  [*&v18[qword_99FF70] setClipsToBounds:1];
  [*&v18[v24] _setContinuousCornerRadius:20.0];
  v25 = *&v18[v24];
  v26 = [v18 backgroundView];
  [v26 addSubview:v25];

  v27 = qword_99FF78;
  [*&v18[qword_99FF78] _setCornerRadius:1 continuous:3 maskedCorners:20.0];
  v28 = *&v18[v27];
  v29 = [v18 backgroundView];
  [v29 addSubview:v28];

  return v18;
}

id sub_5A6054()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = [v0 backgroundView];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v22.receiver = *&v1[qword_99FF70];
    receiver = v22.receiver;
    v22.super_class = type metadata accessor for ArtworkGrid();
    objc_msgSendSuper2(&v22, "setFrame:", v7, v9, v11, v13);
    sub_44CB80();
    [receiver setNeedsLayout];
    [receiver layoutIfNeeded];
  }

  v15 = *&v1[qword_99FF78];
  [v1 bounds];
  CGRectGetWidth(v23);
  [*&v1[qword_99DC88] frame];
  CGRectGetMaxY(v24);
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v16 = sub_766CA0();
  sub_BE38(v16, qword_99FE00);
  v17 = [v1 traitCollection];
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_77D9F0;
  *(v18 + 32) = v17;
  v19 = v17;
  v20 = sub_7671E0();
  sub_7666E0();

  [v15 frame];
  [v15 setFrame:?];
  [v15 layoutIfNeeded];
  return [v2 setAnimationsEnabled:v3];
}

void sub_5A62EC(void *a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  sub_73CEEC(a1, a2, a3 & 1);
  v7 = swift_dynamicCastClass();
  if (v7 && (a3 & 1) == 0)
  {
    v8 = v7;
    v9 = qword_99FF70;
    v10 = *(v7 + qword_99FF70);
    v11 = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages);
    v12 = *(v3 + qword_99FF70);
    v12[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType] = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType);
    v19 = a1;
    sub_44CB80();
    [v12 setNeedsLayout];
    *&v12[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages] = v11;
    sub_44CD50();
    if (v11 < 0)
    {
LABEL_16:
      __break(1u);
      return;
    }

    if (v11)
    {
      v13 = 0;
      while (1)
      {
        v14 = *(v8 + v9);
        v15 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkImages;
        swift_beginAccess();
        v16 = *(v14 + v15);
        if (v13 >= *(v16 + 16))
        {
          break;
        }

        v17 = *(v16 + 8 * v13 + 32);
        if (v17)
        {
          v18 = v17;
          sub_44C804(v18, v13);
        }

        if (v11 == ++v13)
        {

          return;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }
}

double sub_5A647C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_75B1E0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_740668(v7);
  sub_765B20();
  sub_75DAE0();
  if (!swift_dynamicCastClass())
  {

    return result;
  }

  sub_75A110();
  sub_768900();
  sub_768ED0();
  v10 = *(v4 + qword_99FF70);
  v23[2] = *&v27[0];
  v24 = v10;
  sub_75DAC0();
  v11 = (*(v6 + 88))(v9, v5);
  if (v11 == enum case for ArtworkGridType.small(_:))
  {
    goto LABEL_3;
  }

  if (v11 == enum case for ArtworkGridType.large(_:))
  {
    v12 = 1;
  }

  else if (v11 == enum case for ArtworkGridType.extraLarge(_:))
  {
    v12 = 2;
  }

  else
  {
    if (v11 != enum case for ArtworkGridType.mixed(_:))
    {
LABEL_28:
      v22 = *(v6 + 8);
      v6 += 8;
      v22(v9, v5);
LABEL_3:
      v12 = 0;
      goto LABEL_13;
    }

    v12 = 3;
  }

LABEL_13:
  v23[1] = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType;
  v14 = v24;
  v24[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType] = v12;
  sub_44CB80();
  [v14 setNeedsLayout];
  v15 = sub_75DAD0();
  if (v15 >> 62)
  {
    goto LABEL_30;
  }

  v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
LABEL_15:

  *&v24[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages] = v16;
  sub_44CD50();
  v17 = sub_75DAD0();
  v18 = v17;
  if (v17 >> 62)
  {
    v5 = sub_76A860();
    if (v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
LABEL_17:
      v9 = 0;
      v25 = v18 & 0xFFFFFFFFFFFFFF8;
      v26 = v18 & 0xC000000000000001;
      v23[0] = v5;
      do
      {
        if (v26)
        {
          sub_76A770();
          v19 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          if (v9 >= *(v25 + 16))
          {
            __break(1u);
LABEL_30:
            v16 = sub_76A860();
            goto LABEL_15;
          }

          v19 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_27;
          }
        }

        if (sub_764F20())
        {
          v20 = v24;
          sub_765330();
          v28 = 0;
          memset(v27, 0, sizeof(v27));
          v6 = swift_allocObject();
          *(v6 + 16) = v20;
          *(v6 + 24) = v9;
          v21 = v20;
          sub_75A040();

          v5 = v23[0];

          sub_160090(v27);
        }

        else
        {
        }

        ++v9;
      }

      while (v19 != v5);
    }
  }

  return result;
}

void sub_5A68E0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_44D74C();
}

void sub_5A6940()
{
  sub_5A6B74();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v2 = *(v0 + qword_99FF70);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 20.0;
  }

  [*(v0 + qword_99FF70) _setContinuousCornerRadius:v3];
  [*(v0 + qword_99FF78) _setCornerRadius:1 continuous:3 maskedCorners:v3];
  v4 = *(v0 + v1);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_isLazyLayoutEnabled);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_isLazyLayoutEnabled) = v4 ^ 1;
  if (v4 == v5)
  {
    sub_44D8A0();
  }
}

void sub_5A6A00()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + qword_99FF78);
}

void sub_5A6A60(uint64_t a1)
{
  swift_unknownObjectRelease();

  v2 = *(a1 + qword_99FF78);
}

uint64_t type metadata accessor for GridTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_95C0F8;
  if (!qword_95C0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5A6B74()
{
  sub_28399C();
  v1 = (v0 + qword_99DC98);
  if (*(v0 + qword_99DC98))
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded);
    v5 = *(v2 + 32);
    swift_unknownObjectRetain();
    v5(v4, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (*v1)
  {
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 20.0;
    }

    v7 = v1[1];
    v8 = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, v7);
    swift_unknownObjectRelease();
    [v10 _setContinuousCornerRadius:v6];
  }
}

uint64_t sub_5A6CDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_5A6D14(uint64_t a1)
{
  v25 = sub_76A920();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_95C4F8, qword_7A6F38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_766CA0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5A70D4(v8);
  v26 = a1;
  sub_7592B0();
  v13 = v6 + 8;
  v14 = *(v6 + 8);
  v24[3] = v13;
  v14(v8, v5);
  sub_766470();
  sub_766700();
  v16 = v15;
  v17 = v2 + 8;
  v18 = *(v2 + 8);
  v24[2] = v17;
  v18(v4, v25);
  v19 = v10 + 8;
  v20 = *(v10 + 8);
  v24[1] = v19;
  v20(v12, v9);
  sub_5A70D4(v8);
  v26 = a1;
  sub_7592B0();
  v14(v8, v5);
  sub_766470();
  sub_766700();
  v22 = v21;
  v18(v4, v25);
  v20(v12, v9);
  return v16 + v22;
}

uint64_t sub_5A7020()
{
  v0 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_161DC(v0, qword_95C4A0);
  sub_BE38(v0, qword_95C4A0);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

uint64_t sub_5A70D4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_766CA0();
  __chkstk_darwin(v26);
  v25 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  if (qword_93D768 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99EE30);
  v13 = *(v11 - 8);
  v14 = *(v13 + 16);
  v23[2] = v13 + 16;
  v24 = v14;
  v14(v6, v12, v11);
  v15 = enum case for FontSource.useCase(_:);
  v16 = v4[13];
  v16(v6, enum case for FontSource.useCase(_:), v3);
  v29 = v3;
  v30 = &protocol witness table for FontSource;
  v17 = sub_B1B4(v28);
  v18 = v4[2];
  v18(v17, v6, v3);
  sub_766CB0();
  v23[1] = v10;
  v19 = v4[1];
  v19(v6, v3);
  if (qword_93D760 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v11, qword_99EE18);
  v24(v6, v20, v11);
  v16(v6, v15, v3);
  v29 = v3;
  v30 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v28);
  v18(v21, v6, v3);
  sub_766CB0();
  v19(v6, v3);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  return sub_7592D0();
}

uint64_t sub_5A740C()
{
  v0 = sub_BD88(&qword_940AD0, &unk_78F910);
  sub_161DC(v0, qword_99FF80);
  sub_BE38(v0, qword_99FF80);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  return sub_7592D0();
}

uint64_t sub_5A74A4()
{
  v0 = sub_BD88(&unk_94B6E0, &qword_78E688);
  sub_161DC(v0, qword_99FF98);
  sub_BE38(v0, qword_99FF98);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  return sub_7592E0();
}

char *sub_5A7538(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38[-1] - v11;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v14 = sub_75C840();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView] = 0;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_textLabel;
  sub_75BB20();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage] = 0;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_textLabel;
  v19 = qword_93DD38;
  v20 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_textLabel];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_BD88(&unk_94B6E0, &qword_78E688);
  sub_BE38(v21, qword_99FF98);
  v22 = [v16 traitCollection];
  sub_7592A0();

  [v20 setNumberOfLines:v38[0]];
  [*&v16[v18] _setTextColorFollowsTintColor:1];
  v23 = *&v16[v18];
  v24 = [v16 traitCollection];

  v25 = sub_7699E0();
  if (v25)
  {
    if (qword_93D768 != -1)
    {
      swift_once();
    }

    v26 = qword_99EE30;
  }

  else
  {
    if (qword_93D760 != -1)
    {
      swift_once();
    }

    v26 = qword_99EE18;
  }

  v27 = sub_7666D0();
  v28 = sub_BE38(v27, v26);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v12, v28, v27);
  (*(v29 + 56))(v12, 0, 1, v27);
  sub_75BA40();

  v30 = qword_93DD28;
  v31 = *&v16[v18];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_BE38(v32, qword_95C4A0);
  v38[4] = v16;
  v33 = v16;
  sub_7592B0();

  sub_76A150();
  v34 = [v33 contentView];
  [v34 addSubview:*&v16[v18]];

  sub_BD88(&qword_9477F0, qword_780200);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_77B6D0;
  *(v35 + 32) = sub_767B80();
  *(v35 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v38[3] = ObjectType;
  v38[0] = v33;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v38);
  return v33;
}

void sub_5A7A90(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView];
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

id sub_5A7B54()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView];
  if (v2 || (sub_5A7A90([objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}]), (v2 = *&v0[v1]) != 0))
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage];
    v4 = v2;
    if (v3)
    {
      v3 = [v3 imageWithRenderingMode:2];
    }

    [v4 setImage:v3];
  }

  return [v0 setNeedsLayout];
}

id sub_5A7CA4()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v2 = [v0 contentView];
  sub_2630C();
  sub_75D650();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  v12 = sub_7699E0();

  v13 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView;
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView];
  if (v14)
  {
    [v14 sizeThatFits:{v8, v10}];
    v15 = [v1 traitCollection];
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

    sub_769D60();
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
    sub_769D20();
    [v31 setFrame:?];
  }

  if (qword_93DD30 != -1)
  {
    swift_once();
  }

  v32 = sub_BD88(&qword_940AD0, &unk_78F910);
  sub_BE38(v32, qword_99FF80);
  v33 = v1;
  sub_7592B0();

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
  v35 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_textLabel];
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
  sub_769D20();
  return [v35 setFrame:?];
}

id sub_5A8090(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93DD28 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    sub_BE38(v6, qword_95C4A0);
    v7 = v1;
    sub_7592B0();

    return sub_76A150();
  }

  return result;
}

id sub_5A8230()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530, &unk_77C5F0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = v16 - v4;
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_textLabel];
  v7 = [v0 traitCollection];
  v8 = sub_7699E0();

  if (v8)
  {
    if (qword_93D768 != -1)
    {
      swift_once();
    }

    v9 = qword_99EE30;
  }

  else
  {
    if (qword_93D760 != -1)
    {
      swift_once();
    }

    v9 = qword_99EE18;
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, v9);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v5, v11, v10);
  sub_7666D0();
  (*(v12 + 56))(v5, 0, 1, v10);
  sub_75BA40();
  if (qword_93DD38 != -1)
  {
    swift_once();
  }

  v13 = sub_BD88(&unk_94B6E0, &qword_78E688);
  sub_BE38(v13, qword_99FF98);
  v14 = [v1 traitCollection];
  sub_7592A0();

  [v6 setNumberOfLines:v16[1]];
  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for ProductPageLinkCollectionViewCell(uint64_t a1)
{
  result = qword_95C4E0;
  if (!qword_95C4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5A85C8(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_5A8670()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v2 = sub_75C840();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_textLabel;
  sub_75BB20();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_5A87B0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_768380();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7683C0();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v12 = sub_769970();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_5A9F14;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_898760;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  swift_errorRetain();

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_5A9F20(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_5A8A94(void *a1, void *a2, uint64_t a3, __n128 a4)
{
  v45 = a3;
  v43 = a2;
  v5 = sub_75EC10();
  v44 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_768E70();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v14 = sub_7685A0();
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  v16 = sub_768FF0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v21 = [v20 request];
    if (v21)
    {
      v22 = v21;
      sub_768900();
      v23 = v47;
      v43 = v20;
      v24 = v45;
      sub_768ED0();
      sub_BE70(0, &qword_959CF0, ACAccountStore_ptr);
      sub_768ED0();
      v25 = aBlock;
      v26 = v46;
      (*(v46 + 16))(v10, v13, v23);
      sub_75EC00();
      v27 = sub_75EBF0();
      (*(v44 + 8))(v7, v5);
      v28 = v25;
      v29 = [v25 ams_activeiTunesAccount];
      [v22 setAccount:v29];

      [v22 setAnonymousMetrics:v27 & 1];
      v30 = v22;
      v31 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v30 bag:sub_768E30()];

      swift_unknownObjectRelease();
      v32 = [v31 canPresent];
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = v24;
      v50 = sub_5A9FA8;
      v51 = v33;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v49 = sub_509F0;
      *(&v49 + 1) = &unk_8987B0;
      v34 = _Block_copy(&aBlock);
      v35 = v31;

      [v32 addFinishBlock:v34];
      _Block_release(v34);

      (*(v26 + 8))(v13, v23);
    }

    else
    {
      if (qword_93DF00 != -1)
      {
        swift_once();
      }

      sub_BE38(v16, qword_9A0430);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768590();
      v54._countAndFlagsBits = 0xD000000000000049;
      v54._object = 0x80000000007EBA00;
      sub_768580(v54);
      *(&v49 + 1) = sub_BE70(0, &qword_946738, AMSUserNotificationAuthorizationResult_ptr);
      *&aBlock = v20;
      v41 = v20;
      sub_768560();
      sub_BDD0(&aBlock);
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      sub_768580(v55);
      sub_7685B0();
      sub_768E80();
    }
  }

  else
  {
    v36 = v43;
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v37 = sub_BE38(v16, qword_9A0430);
    (*(v17 + 16))(v19, v37, v16);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v52._object = 0x80000000007D1330;
    v52._countAndFlagsBits = 0xD00000000000003BLL;
    sub_768580(v52);
    aBlock = 0u;
    v49 = 0u;
    sub_768560();
    sub_BDD0(&aBlock);
    v53._countAndFlagsBits = 0x3A726F727265202CLL;
    v53._object = 0xE900000000000020;
    sub_768580(v53);
    v38 = v36;
    if (v36)
    {
      swift_getErrorValue();
      v38 = sub_76A9C0();
      v40 = &type metadata for String;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      *&v49 = 0;
    }

    *&aBlock = v38;
    *(&aBlock + 1) = v39;
    *(&v49 + 1) = v40;
    sub_768560();
    sub_BDD0(&aBlock);
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_768580(v56);
    sub_7685B0();
    sub_768E80();

    (*(v17 + 8))(v19, v16);
  }
}

double sub_5A92A0(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a4;
  v39 = a3;
  v6 = sub_7685A0();
  __chkstk_darwin(v6 - 8);
  v48 = sub_758B40();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_75F340();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v47 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_760280();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = sub_765490();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = v39;
    v24 = [v39 startEngagement];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v53 = sub_C5E80;
    v54 = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_151A34;
    *(&v52 + 1) = &unk_898800;
    v26 = _Block_copy(&aBlock);
    v38 = v8;
    v27 = v23;

    [v24 addFinishBlock:v26];
    _Block_release(v26);

    v53 = 0;
    aBlock = 0u;
    v52 = 0u;
    (*(v19 + 104))(v22, enum case for FlowPage.viewController(_:), v18);
    v28 = sub_7570A0();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    v29 = sub_759E30();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    v50 = sub_BE70(0, &qword_946628, AMSUIEngagementTaskViewController_ptr);
    v49 = v27;
    v30 = v27;
    sub_768790();
    (*(v40 + 104))(v44, enum case for FlowPresentationContext.infer(_:), v41);
    (*(v42 + 104))(v47, enum case for FlowAnimationBehavior.infer(_:), v43);
    (*(v46 + 104))(v38, enum case for FlowOrigin.inapp(_:), v48);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    v31 = sub_758AD0();
    sub_72D7A8(v31, 1, v45);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v33 = sub_768FF0();
    sub_BE38(v33, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v56._object = 0x80000000007EBAB0;
    v56._countAndFlagsBits = 0xD000000000000047;
    sub_768580(v56);
    swift_getErrorValue();
    v34 = sub_76A9C0();
    *(&v52 + 1) = &type metadata for String;
    *&aBlock = v34;
    *(&aBlock + 1) = v35;
    sub_768560();
    sub_BDD0(&aBlock);
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    sub_768580(v57);
    sub_7685B0();
    sub_768E80();
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v36 = sub_768FF0();
    sub_BE38(v36, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();
  }

  return result;
}

uint64_t sub_5A9BD4(uint64_t a1)
{
  v2 = sub_7687C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v6 = sub_768FF0();
  sub_BE38(v6, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768E80();

  v7 = [objc_opt_self() engagementRequestForFullSheet];
  aBlock[4] = sub_5A9EAC;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151A34;
  aBlock[3] = &unk_898710;
  v8 = _Block_copy(aBlock);

  [v7 addFinishBlock:v8];
  _Block_release(v8);
  sub_BD88(&qword_94DDC0, qword_77DE00);
  (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
  v9 = sub_768F30();

  return v9;
}

double sub_5A9EB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_5A9ECC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_5A9F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5A9F68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5A9FB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_5AA000(uint64_t a1, double a2, double a3)
{
  v5 = sub_767030();
  v36 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v33 - v9;
  __chkstk_darwin(v11);
  v13 = v33 - v12;
  __chkstk_darwin(v14);
  v15 = sub_766D70();
  v37 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_769A00() & 1) != 0 || (sub_7699D0())
  {
    v18 = 1;
  }

  else
  {
    v34 = v3;
    v35 = v15;
    v39._object = 0x80000000007C9F90;
    v39._countAndFlagsBits = 0xD000000000000016;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v19 = sub_75B750(v39, v40);
    v33[1] = v20;
    v33[2] = v19;
    sub_767020();
    if (qword_93D758 != -1)
    {
      swift_once();
    }

    v21 = sub_7666D0();
    sub_BE38(v21, qword_99EE00);
    sub_766FF0();
    v22 = *(v36 + 8);
    v22(v7, v5);
    sub_767010();
    v22(v10, v5);
    sub_767000();
    v22(v13, v5);
    sub_766D50();
    sub_766D90();
    sub_766D60();
    v24 = v23;
    v25 = v34;
    sub_B170(v34 + 16, v34[19]);
    sub_7673F0();
    v27 = v26;
    sub_B170(v25, v25[3]);
    sub_766710();
    v29 = v28;
    (*(v37 + 8))(v17, v35);
    v18 = v27 + v24 + v29 > a2;
  }

  sub_5AA3E4(v18, v38);
  sub_B170(v38, v38[3]);
  sub_7673F0();
  v31 = v30;
  sub_BEB8(v38);
  return v31;
}

uint64_t sub_5AA3E4@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_766BD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_766950();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  if (a1)
  {
    sub_766930();
    sub_5AADB0(v3, &v38);
    v19 = swift_allocObject();
    v20 = v47;
    *(v19 + 144) = v46;
    *(v19 + 160) = v20;
    *(v19 + 176) = v48;
    v21 = v43;
    *(v19 + 80) = v42;
    *(v19 + 96) = v21;
    v22 = v45;
    *(v19 + 112) = v44;
    *(v19 + 128) = v22;
    v23 = v39;
    *(v19 + 16) = v38;
    *(v19 + 32) = v23;
    v24 = v41;
    *(v19 + 48) = v40;
    *(v19 + 64) = v24;
    sub_766940();

    v25 = *(v13 + 8);
    v25(v15, v12);
    v26 = v37;
    v37[3] = v12;
    v26[4] = &protocol witness table for VerticalStack;
    sub_B1B4(v26);
    sub_766940();
    return (v25)(v18, v12);
  }

  else
  {
    sub_766BA0();
    sub_5AADB0(v3, &v38);
    v28 = swift_allocObject();
    v29 = v47;
    *(v28 + 144) = v46;
    *(v28 + 160) = v29;
    *(v28 + 176) = v48;
    v30 = v43;
    *(v28 + 80) = v42;
    *(v28 + 96) = v30;
    v31 = v45;
    *(v28 + 112) = v44;
    *(v28 + 128) = v31;
    v32 = v39;
    *(v28 + 16) = v38;
    *(v28 + 32) = v32;
    v33 = v41;
    *(v28 + 48) = v40;
    *(v28 + 64) = v33;
    sub_766BB0();

    v34 = *(v6 + 8);
    v34(v8, v5);
    v35 = v37;
    v37[3] = v5;
    v35[4] = &protocol witness table for HorizontalStack;
    sub_B1B4(v35);
    sub_766BB0();
    return (v34)(v11, v5);
  }
}

uint64_t sub_5AA76C(void *a1, double a2, double a3, double a4, double a5)
{
  v52 = sub_766880();
  v10 = *(v52 - 8);
  __chkstk_darwin(v52);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v45 - v14;
  v16 = sub_767030();
  v48 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v45 - v20;
  __chkstk_darwin(v22);
  v24 = v45 - v23;
  __chkstk_darwin(v25);
  v26 = sub_766D70();
  v49 = *(v26 - 8);
  v50 = v26;
  __chkstk_darwin(v26);
  v28 = v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_769A00();
  v53 = a1;
  if (v29 & 1) != 0 || (sub_7699D0())
  {
    v30 = 0;
    v31 = 1;
  }

  else
  {
    v46 = v15;
    v47 = v10;
    v55._object = 0x80000000007C9F90;
    v55._countAndFlagsBits = 0xD000000000000016;
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    v45[1] = sub_75B750(v55, v56);
    v45[0] = v32;
    sub_767020();
    if (qword_93D758 != -1)
    {
      swift_once();
    }

    v33 = sub_7666D0();
    sub_BE38(v33, qword_99EE00);
    sub_766FF0();
    v34 = *(v48 + 8);
    v34(v18, v16);
    v31 = 1;
    sub_767010();
    v34(v21, v16);
    sub_767000();
    v34(v24, v16);
    sub_766D50();
    sub_766D90();
    sub_766D60();
    v36 = v35;
    v37 = v51;
    sub_B170((v51 + 128), *(v51 + 152));
    sub_7673F0();
    v39 = v38;
    sub_B170(v37, *(v37 + 24));
    sub_766710();
    v41 = v40;
    (*(v49 + 8))(v28, v50);
    if (v39 + v36 + v41 <= a4)
    {
      v31 = 0;
      v30 = *(v37 + 40) ^ 1;
    }

    else
    {
      v30 = 0;
    }

    v10 = v47;
    v15 = v46;
  }

  sub_5AA3E4(v31, v54);
  sub_766850();
  *(swift_allocObject() + 16) = v30 & 1;
  sub_766870();

  v42 = *(v10 + 8);
  v43 = v52;
  v42(v12, v52);
  sub_52D788(v53, a2, a3, a4, a5);
  v42(v15, v43);
  return sub_BEB8(v54);
}

void sub_5AACAC(uint64_t a1, char a2)
{
  v3 = sub_766840();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v6[3] = sub_766970();
    v6[4] = &protocol witness table for ZeroDimension;
    sub_B1B4(v6);
    sub_766960();
    (*(v4 + 104))(v6, enum case for DisjointStack.EdgePosition.anchored(_:), v3);
    sub_766800();
  }
}

uint64_t sub_5AAE2C()
{
  sub_BEB8(v0 + 2);
  sub_BEB8(v0 + 8);
  sub_BEB8(v0 + 13);
  sub_BEB8(v0 + 18);

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_5AAEEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_5AAF34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_5AAFAC()
{
  result = qword_95C500;
  if (!qword_95C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95C500);
  }

  return result;
}

void sub_5AB004(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_hideAllButton;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_hideAllButton];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_hideAllButton] = a1;
  v6 = a1;

  if (!*&v1[v2])
  {
    v4 = [v1 navigationItem];
    v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_doneButtonItem];
    [v4 setRightBarButtonItem:v5];
  }
}

void sub_5AB0B4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDataSource) = 0;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDelegate) = 0;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_collectionViewTableLayout;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_collectionViewTableLayout) = 0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_navigationBarPalettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v9 + 50) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 24) = 0u;
  *(v4 + v8) = v9;
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_hideAllButton) = 0;
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_doneButtonItem) = 0;
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_emptyStateView) = 0;
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_flowPreviewing) = 0;
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_presenter) = a1;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_artworkLoader) = v26;
  sub_BD88(&qword_95C688, &qword_7A7250);
  swift_allocObject();

  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_shelfDataSource) = sub_4792F0();
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_segmentedControlView) = [objc_allocWithZone(type metadata accessor for SegmentedControlView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_searchBar) = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = [objc_allocWithZone(type metadata accessor for CollectionViewTableLayout()) init];
  v11 = *(v4 + v7);
  *(v4 + v7) = v10;
  v12 = v10;

  if (v12)
  {

    v13 = sub_7212CC(v12, a2);

    swift_unknownObjectWeakAssign();
    sub_5AFBC0(&qword_95C690, v14, type metadata accessor for PurchasesViewController, &unk_7A7200);
    v15 = v13;
    sub_761680();
    v16 = v15;
    sub_7616A0();
    v17 = sub_769210();

    [v16 setTitle:v17];

    *(v16 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle) = 0;
    v18 = [v16 navigationItem];
    [v18 setLargeTitleDisplayMode:2];

    v19 = sub_5AFBC0(&qword_95C698, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = v19;

    v22 = v16;
    v24 = sub_5AFA90(a1, v22, sub_45AF0, v21, a2, v23);

    v25 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_flowPreviewing];
    *&v22[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_flowPreviewing] = v24;
  }

  else
  {
    __break(1u);
  }
}

void sub_5AB4AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_75ED10();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v99 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v99 - v12;
  v113.receiver = v1;
  v113.super_class = ObjectType;
  objc_msgSendSuper2(&v113, "viewDidLoad", v11);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = sub_BE70(0, &qword_93E540, UIColor_ptr);
  v17 = sub_76A000();
  [v15 setBackgroundColor:v17];

  v18 = [v1 collectionView];
  if (!v18)
  {
    return;
  }

  v106 = v13;
  v107 = v9;
  v103 = v6;
  v104 = v3;
  v109 = v4;
  v110 = v16;
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_presenter];
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_shelfDataSource];
  v108 = v18;
  v21 = [v1 snapshotPageTraitEnvironment];
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
  v23 = type metadata accessor for PurchasesCollectionViewDataSource();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_presenter] = v19;
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_shelfDataSource] = v20;

  v25 = [v21 snapshotPageTraitEnvironment];
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_pageTraits] = v25;
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_objectGraph] = v22;
  v112.receiver = v24;
  v112.super_class = v23;

  v26 = objc_msgSendSuper2(&v112, "init");
  swift_unknownObjectRelease();
  v27 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDataSource;
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDataSource] = v26;

  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_artworkLoader];
  v30 = [v1 snapshotPageTraitEnvironment];
  v31 = type metadata accessor for PurchasesCollectionViewDelegate();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_didScrollHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_objectGraph] = v22;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_presenter] = v19;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_shelfDataSource] = v20;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_artworkLoader] = v29;
  v105 = v19;

  v34 = [v30 snapshotPageTraitEnvironment];
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_pageTraits] = v34;
  v111.receiver = v32;
  v111.super_class = v31;
  v35 = objc_msgSendSuper2(&v111, "init");
  swift_unknownObjectRelease();
  v36 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDelegate;
  v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDelegate] = v35;
  v38 = v35;

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = &v38[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_didScrollHandler];
  v41 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_didScrollHandler];
  v42 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_didScrollHandler + 8];
  *v40 = sub_5AFC24;
  v40[1] = v39;

  sub_F704(v41, v42);

  v43 = *&v1[v36];
  v44 = v43;
  sub_71EE2C(v43);
  v45 = *&v1[v27];
  v46 = v45;
  sub_71EE40(v45);
  v47 = v108;
  v48 = v108;
  v49 = sub_76A000();
  [v48 setBackgroundColor:v49];

  [v48 setAlwaysBounceVertical:1];
  v50 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_collectionViewTableLayout;
  v51 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_collectionViewTableLayout];
  if (!v51)
  {
    goto LABEL_18;
  }

  [v51 setSeparatorInset:{0.0, 92.0, 0.0, 20.0}];
  v52 = *&v1[v50];
  v53 = v104;
  if (!v52)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  [v52 _setShowsAdditionalSeparators:0];
  sub_BD88(&qword_9439E8, &unk_7A7260);
  v54 = sub_764930();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_77B6D0;
  (*(v55 + 104))(v57 + v56, enum case for Shelf.ContentType.purchasesLockup(_:), v54);
  v58 = sub_1A2300(v57);
  swift_setDeallocating();
  (*(v55 + 8))(v57 + v56, v54);
  swift_deallocClassInstance();
  v59 = v48;
  sub_697B78(v58, v47);

  sub_5AFC2C(v47);

  sub_761690();
  v60 = v106;
  sub_761650();
  v61 = v109;
  v62 = v107;
  (*(v109 + 104))(v107, enum case for PurchasesContentMode.hidden(_:), v53);
  sub_5AFBC0(&qword_95C6A8, 255, &type metadata accessor for PurchasesContentMode, &protocol conformance descriptor for PurchasesContentMode);
  LOBYTE(v57) = sub_7691C0();
  v65 = *(v61 + 8);
  v63 = v61 + 8;
  v64 = v65;
  v65(v62, v53);
  v65(v60, v53);
  if ((v57 & 1) == 0)
  {
    v101 = v59;
    v102 = v64;
    v66 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_segmentedControlView];
    [v1 pageMarginInsets];
    [v66 setLayoutMargins:?];
    sub_5AC070();
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v110 = OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentedControl;
    v68 = *&v66[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentedControl];

    [v68 removeTarget:v66 action:"selectedIndexChangedIn:" forControlEvents:4096];
    v69 = &v66[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentDidChangeHandler];
    v70 = *&v66[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentDidChangeHandler];
    v71 = *&v66[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentDidChangeHandler + 8];
    *v69 = sub_5AFE68;
    v69[1] = v67;
    swift_retain_n();
    sub_F704(v70, v71);

    v72 = v68;
    v73 = v66;
    [v72 addTarget:v66 action:"selectedIndexChangedIn:" forControlEvents:4096];

    v74 = sub_761600();
    v75 = *(v74 + 16);
    if (v75)
    {
      v99 = v1;
      v100 = v74;
      v76 = *(v109 + 16);
      v77 = v74 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
      v107 = *(v109 + 72);
      v108 = v76;
      v109 = v63;
      v79 = v102;
      v78 = v103;
      do
      {
        (v108)(v78, v77, v53);
        v80 = v73;
        v81 = *&v73[v110];
        sub_75ECE0();
        v82 = sub_769210();

        v83 = sub_75ECF0();
        v79(v78, v53);
        [v81 insertSegmentWithTitle:v82 atIndex:v83 animated:0];

        v73 = v80;
        v77 += v107;
        --v75;
      }

      while (v75);

      v1 = v99;
    }

    else
    {
    }

    v84 = *&v73[v110];
    v85 = v106;
    sub_761650();
    v86 = sub_75ECF0();
    v102(v85, v53);
    [v84 setSelectedSegmentIndex:v86];

    v59 = v101;
  }

  v87 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_searchBar];
  v114._countAndFlagsBits = 0x484352414553;
  v114._object = 0xE600000000000000;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  sub_75B750(v114, v115);
  v88 = sub_769210();

  [v87 setPlaceholder:v88];

  [v87 setHidden:1];
  [v87 setDelegate:v1];
  v89 = [objc_allocWithZone(UIImage) init];
  [v87 setBackgroundImage:v89];

  v90 = [v1 view];
  if (!v90)
  {
    goto LABEL_20;
  }

  v91 = v90;
  [v90 addSubview:v87];

  v92 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_flowPreviewing];
  if (v92)
  {
    v93 = objc_allocWithZone(UIContextMenuInteraction);
    v94 = v92;
    v95 = [v93 initWithDelegate:v94];
    [v59 addInteraction:v95];
  }

  v96 = [v1 navigationItem];
  v97 = [v96 rightBarButtonItem];

  v98 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_doneButtonItem];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_doneButtonItem] = v97;
}

void sub_5ABF80(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];
    if (v5)
    {
      v6 = v5;
      [v5 endEditing:1];

      v7 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_searchBar];
      [a1 contentOffset];
      [v7 frame];
      CGRectGetHeight(v8);
      [v7 frame];
      [v7 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_5AC070()
{
  v1 = v0;
  v2 = [v0 parentViewController];
  v3 = [v2 navigationController];

  if (!v3 || (v3, (v4 = [v1 parentViewController]) == 0) || (v5 = v4, v6 = objc_msgSend(v4, "navigationItem"), v5, (v7 = v6) == 0))
  {
    v7 = [v1 navigationItem];
  }

  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_navigationBarPalettePresenter];
  v9 = v7;
  sub_6B75E0(v9, 0, 1);

  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_segmentedControlView];
  v51[3] = type metadata accessor for SegmentedControlView();
  v51[4] = &protocol witness table for UIView;
  v51[0] = v10;
  sub_134D8(v51, v50);
  sub_134D8(v50, v49);
  v11 = swift_allocObject();
  sub_34698(v50, v11 + 16);
  v12 = v10;
  sub_BEB8(v51);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_BEB8(v49);
    return;
  }

  v14 = Strong;
  v15 = *(v8 + 24);
  if (v15)
  {
    [v15 setHidden:1];
  }

  v16 = v12;
  [v16 setHidden:0];
  v17 = [v16 superview];
  v18 = [v14 contentView];
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v20 = sub_76A1C0();

      if (v20)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v19 = v17;
  }

  else if (!v18)
  {
    goto LABEL_18;
  }

LABEL_17:
  v21 = [v14 contentView];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v16 setFrame:{v23, v25, v27, v29}];
  [v16 setAutoresizingMask:18];
  v30 = [v14 contentView];
  [v30 addSubview:v16];

LABEL_18:
  v31 = *(v8 + 24);
  *(v8 + 24) = v10;
  v32 = v16;

  if (*(v8 + 65))
  {
    v33 = [v14 contentView];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    sub_75D650();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v52.origin.x = v35;
    v52.origin.y = v37;
    v52.size.width = v39;
    v52.size.height = v41;
    CGRectGetWidth(v52);
    v42 = [v14 contentView];
    sub_B170(v49, v49[3]);
    sub_7665A0();
    v44 = v43;

    [v14 setPreferredHeight:v44];
    [v14 preferredHeight];
    [v14 setMinimumHeight:?];
  }

  v45 = *(v8 + 32);
  v46 = *(v8 + 40);
  v47 = *(v8 + 48);
  v48 = *(v8 + 56);
  *(v8 + 32) = sub_2B47DC;
  *(v8 + 40) = v11;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  sub_2B47E4(v45, v46, v47, v48);

  sub_BEB8(v49);
}

void sub_5AC4A8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_5AC504(a1);
  }
}

id sub_5AC504(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_75ED10();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  [result endEditing:1];

  v11 = [a1 selectedSegmentIndex];
  v12 = enum case for PurchasesContentMode.all(_:);
  v13 = *(v5 + 104);
  v13(v8, enum case for PurchasesContentMode.all(_:), v4);
  v14 = sub_75ECF0();
  v15 = *(v5 + 8);
  v15(v8, v4);
  if (v14 == v11 || (v12 = enum case for PurchasesContentMode.notOnDevice(_:), v13(v8, enum case for PurchasesContentMode.notOnDevice(_:), v4), v16 = sub_75ECF0(), v15(v8, v4), v16 == v11))
  {
    sub_5AB004(0);
LABEL_5:
    v13(v8, v12, v4);
    return sub_761660();
  }

  v12 = enum case for PurchasesContentMode.hidden(_:);
  v13(v8, enum case for PurchasesContentMode.hidden(_:), v4);
  v17 = sub_75ECF0();
  result = (v15)(v8, v4);
  if (v17 == v11)
  {
    v37._object = 0x80000000007EBCA0;
    v37._countAndFlagsBits = 0xD000000000000014;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_75B750(v37, v38);
    v36 = ObjectType;
    v35[0] = v2;
    ObjectType = v2;
    v18 = sub_769210();

    v19 = v36;
    if (v36)
    {
      v20 = sub_B170(v35, v36);
      v32[1] = v32;
      v33 = v18;
      v21 = *(v19 - 8);
      v22 = __chkstk_darwin(v20);
      v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      v25 = sub_76A930();
      (*(v21 + 8))(v24, v19);
      v18 = v33;
      sub_BEB8(v35);
    }

    else
    {
      v25 = 0;
    }

    v26 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v18 style:0 target:v25 action:"unhideAll"];

    swift_unknownObjectRelease();
    v27 = ObjectType;
    sub_5AB004(v26);
    v28 = [v27 navigationItem];
    v29 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_hideAllButton];
    [v28 setRightBarButtonItem:v29];

    v30 = [v27 navigationItem];
    v31 = [v30 rightBarButtonItem];

    [v31 setEnabled:1];
    goto LABEL_5;
  }

  return result;
}

void sub_5AC9EC(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v7 = *a4;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  sub_75A0A0();
}

void sub_5ACA74(void *a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v5 = *a3;
  v6 = v7.receiver;
  objc_msgSendSuper2(&v7, v5);
  sub_75A0A0();
}

void sub_5ACAE4()
{
  v49.receiver = v0;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_searchBar];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v50.origin.x = v5;
  v50.origin.y = v7;
  v50.size.width = v9;
  v50.size.height = v11;
  CGRectGetWidth(v50);
  v12 = [v0 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;

  [v1 sizeThatFits:{v15, v17}];
  [v1 frame];
  [v1 setFrame:?];
  v18 = [v0 collectionView];
  if (v18)
  {
    v19 = v18;
    [v1 frame];
    Height = CGRectGetHeight(v51);
    [v19 contentInset];
    [v19 setContentInset:Height];
  }

  v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_emptyStateView];
  if (v21)
  {
    v22 = v21;
    v23 = [v0 view];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 safeAreaLayoutGuide];

      [v25 layoutFrame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      [v0 pageMarginInsets];
      v36 = sub_705B8(v27, v29, v31, v33, v34, v35);
      v38 = v37;
      v40 = v39;
      v42 = v41;
      [v1 frame];
      MaxY = CGRectGetMaxY(v52);
      v53.origin.x = v36;
      v53.origin.y = v38;
      v53.size.width = v40;
      v53.size.height = v42;
      v44 = CGRectGetHeight(v53);
      [v1 frame];
      v45 = v44 - CGRectGetMaxY(v54);
      v46 = v22;
      [v0 pageMarginInsets];
      v48 = v47;
      v55.origin.x = v36;
      v55.origin.y = v38;
      v55.size.width = v40;
      v55.size.height = v42;
      [v46 setFrame:{v48, MaxY, CGRectGetWidth(v55), v45}];

      return;
    }

LABEL_11:
    __break(1u);
  }
}

void sub_5ACE2C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v35.receiver = v4;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = &selRef_setTextAlignment_;
  v11 = [v4 traitCollection];
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = a2;
  v14[1] = a3;
  *&v13[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v34.receiver = v13;
  v34.super_class = v12;
  v15 = &unk_90D000;
  v16 = objc_msgSendSuper2(&v34, "init");
  v17 = [v4 collectionView];
  v18 = [v16 snapshotPageTraitEnvironment];
  *&v9[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_pageTraits] = v18;
  v19 = swift_unknownObjectRelease();
  if (v17)
  {
    v31[1] = v31;
    v32 = *(*&v9[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_shelfDataSource] + 24);
    __chkstk_darwin(v19);
    v20 = v17;

    sub_BD88(&qword_9467C0, &qword_790FA0);
    sub_2A3AD4();
    v15 = &unk_90D000;
    sub_768610();
    v10 = &selRef_setTextAlignment_;
  }

  else
  {
  }

  v21 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  v23 = [v4 v10[23]];
  v24 = objc_allocWithZone(v12);
  v25 = &v24[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v25 = a2;
  v25[1] = a3;
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v23;
  v33.receiver = v24;
  v33.super_class = v12;
  v26 = objc_msgSendSuper2(&v33, v15[447]);
  v27 = [v4 collectionView];
  v28 = [v26 snapshotPageTraitEnvironment];
  *&v22[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_pageTraits] = v28;
  v29 = swift_unknownObjectRelease();
  if (v27)
  {
    v32 = *(*&v22[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_shelfDataSource] + 24);
    __chkstk_darwin(v29);
    v30 = v27;

    sub_BD88(&qword_9467C0, &qword_790FA0);
    sub_2A3AD4();
    sub_768610();
  }

  else
  {
  }
}

void sub_5AD27C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_75ED10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v34 - v11;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "traitCollectionDidChange:", a1, v10);
  sub_761650();
  (*(v6 + 104))(v8, enum case for PurchasesContentMode.hidden(_:), v5);
  sub_5AFBC0(&qword_95C6A8, 255, &type metadata accessor for PurchasesContentMode, &protocol conformance descriptor for PurchasesContentMode);
  LOBYTE(a1) = sub_7691C0();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v12, v5);
  if ((a1 & 1) == 0)
  {
    v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_segmentedControlView];
    [v2 pageMarginInsets];
    [v14 setLayoutMargins:?];
  }

  v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = &selRef_absoluteDimension_;
  v18 = [v2 snapshotPageTraitEnvironment];
  v19 = [v2 collectionView];
  v20 = [v18 snapshotPageTraitEnvironment];
  *&v16[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_pageTraits] = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v21 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_shelfDataSource];
  v22 = [v20 snapshotPageTraitEnvironment];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v19 reloadData];
  if (v19)
  {
    v34[1] = v34;
    v35 = *(v21 + 24);
    __chkstk_darwin(v23);
    v34[-2] = v19;
    v34[-1] = v21;
    v24 = v19;

    sub_BD88(&qword_9467C0, &qword_790FA0);
    sub_2A3AD4();
    v17 = &selRef_absoluteDimension_;
    sub_768610();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v25 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v2 v17[78]];
  v28 = [v2 collectionView];
  v29 = [v27 v17[78]];
  *&v26[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v30 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_shelfDataSource];
  v31 = [v29 v17[78]];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v32 = [v28 reloadData];
  if (v28)
  {
    v35 = *(v30 + 24);
    __chkstk_darwin(v32);
    v34[-2] = v28;
    v34[-1] = v30;
    v33 = v28;

    sub_BD88(&qword_9467C0, &qword_790FA0);
    sub_2A3AD4();
    sub_768610();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_5ADAD8()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  if (sub_761630())
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      sub_761920();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_767130();
    v8 = objc_allocWithZone(sub_767160());
    v9 = sub_767150();
    v10 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      sub_761920();
      return;
    }
  }

  __break(1u);
}

void sub_5ADCD8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  if (v2)
  {
    sub_767160();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_761930();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_761920();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_5ADDC0(uint64_t a1)
{
  v2 = v1;
  sub_767230();
  sub_5AFBC0(&qword_95C680, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = sub_7671F0();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v6 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v3;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    sub_761920();
  }

  else
  {
    __break(1u);
  }
}

void sub_5ADF40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_emptyStateView;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_emptyStateView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  v5 = [v1 collectionView];
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:0];
  }

  sub_6B79A8();
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_searchBar] setHidden:0];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_5AFA48;
  *(v9 + 24) = v8;
  v11[4] = sub_47164;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1EB578;
  v11[3] = &unk_898B08;
  v10 = _Block_copy(v11);

  [v7 performWithoutAnimation:v10];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

void sub_5AE134(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong collectionView];

    if (!v3)
    {
      __break(1u);
      return;
    }

    [v3 reloadData];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 collectionView];

    if (v6)
    {
      [v6 layoutIfNeeded];
    }
  }
}

void sub_5AE214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = [v6 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setHidden:1];
  }

  v16 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_navigationBarPalettePresenter];
  if (a5)
  {
    sub_6B79A8();
  }

  else
  {
    v17 = *(v16 + 24);
    if (v17)
    {
      if (*(v16 + 65) == 1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          [v17 setHidden:1];
          [v19 setMinimumHeight:0.0];
          [v19 setPreferredHeight:0.0];

          *(v16 + 65) = 0;
        }
      }
    }
  }

  [*&v7[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_searchBar] setHidden:(a6 & 1) == 0];
  v20 = objc_allocWithZone(type metadata accessor for EmptyStateView(0));

  v21 = sub_6A4468(a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_emptyStateView;
  v23 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_emptyStateView];
  if (v23)
  {
    [v23 removeFromSuperview];
    v24 = *&v7[v22];
  }

  else
  {
    v24 = 0;
  }

  *&v7[v22] = v21;
  v25 = v21;

  [v25 setUserInteractionEnabled:0];
  v26 = [v7 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  [v26 addSubview:v25];

  v28 = [v7 view];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v29 = v28;
  [v28 setNeedsLayout];
}

void sub_5AE440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = a2;
    *(v13 + 3) = a3;
    *(v13 + 4) = v3;
    (*(v8 + 32))(&v13[v12], aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_5AF980;
    *(v14 + 24) = v13;
    aBlock[4] = sub_2EC28;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1EB578;
    aBlock[3] = &unk_898A90;
    v15 = _Block_copy(aBlock);
    v16 = v3;

    [v11 performBatchUpdates:v15 completion:0];
    _Block_release(v15);
  }
}

void sub_5AE658(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  v6 = [a3 collectionView];
  if (v6)
  {
    v7 = v6;
    sub_BD88(&unk_941A18, &qword_78A3D0);
    v8 = sub_757640();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77B6D0;
    (*(v9 + 16))(v11 + v10, a4, v8);
    isa = sub_769450().super.isa;

    [v7 deleteItemsAtIndexPaths:isa];
  }
}

void sub_5AE7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_757640();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = sub_768430();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1ED18(a2, v103, &unk_93FBD0, &qword_77DFA0);
  if (v104)
  {
    sub_BE70(0, &qword_93E550, UIView_ptr);
    if (swift_dynamicCast())
    {
      v21 = v72;
      [v21 bounds];
      LOBYTE(v97) = 1;
      *&v79 = v21;
      *(&v79 + 1) = v22;
      *&v80 = v23;
      *(&v80 + 1) = v24;
      *&v81 = v25;
      BYTE8(v81) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v82 = _Q0;
      v83 = _Q0;
      v84 = 15;
      sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
      *v20 = sub_769970();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = sub_768460();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_94DD18;
        v88 = xmmword_94DD28;
        v89 = xmmword_94DD38;
        v85 = xmmword_94DCF8;
        v86 = xmmword_94DD08;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_94DCF8;
        v98 = xmmword_94DD08;
        v100 = xmmword_94DD28;
        v101 = xmmword_94DD38;
        v90 = qword_94DD48;
        v96 = v84;
        v102 = qword_94DD48;
        v99 = xmmword_94DD18;
        sub_1ED18(&v85, &v73, &unk_93FEF0, &unk_7834B0);
        xmmword_94DD18 = v93;
        xmmword_94DD28 = v94;
        xmmword_94DD38 = v95;
        qword_94DD48 = v96;
        xmmword_94DCF8 = v91;
        xmmword_94DD08 = v92;
        sub_10A2C(&v97, &unk_93FEF0, &unk_7834B0);
        v32 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
        v33 = sub_BD88(&unk_93F630, &unk_77E230);
        sub_45C2C(&v79, &v73);
        sub_768860();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10A2C(v16, &unk_93F980, &qword_77EDA0);
        }

        else
        {
          sub_32A6C0(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_94DD18;
        v76 = xmmword_94DD28;
        v77 = xmmword_94DD38;
        v78 = qword_94DD48;
        v73 = xmmword_94DCF8;
        v74 = xmmword_94DD08;
        xmmword_94DCF8 = v85;
        xmmword_94DD08 = v86;
        xmmword_94DD18 = v87;
        xmmword_94DD28 = v88;
        xmmword_94DD38 = v89;
        qword_94DD48 = v90;
        sub_10A2C(&v73, &unk_93FEF0, &unk_7834B0);
        sub_45C88(&v79);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v66 = a1;
  }

  else
  {
    v66 = a1;
    sub_10A2C(v103, &unk_93FBD0, &qword_77DFA0);
  }

  v35 = [v71 collectionView];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = [v35 indexPathsForSelectedItems];

  if (!v37)
  {
LABEL_20:
    v61 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
    v62 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10A2C(v11, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_32A6C0(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = sub_769460();

  if (!*(v39 + 16))
  {

    goto LABEL_20;
  }

  v40 = v69;
  (*(v69 + 16))(v6, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v38);

  v41 = *(v40 + 32);
  v42 = v68;
  v41(v68, v6, v38);
  v43 = [v71 collectionView];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = v42;
  isa = sub_757550().super.isa;
  v47 = [v44 cellForItemAtIndexPath:isa];

  if (!v47)
  {
    (*(v69 + 8))(v45, v70);
    goto LABEL_20;
  }

  v48 = v47;
  [v48 bounds];
  LOBYTE(v97) = 1;
  *&v79 = v47;
  *(&v79 + 1) = v49;
  *&v80 = v50;
  *(&v80 + 1) = v51;
  *&v81 = v52;
  BYTE8(v81) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v82 = _Q0;
  v83 = _Q0;
  v84 = 15;
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  *v20 = sub_769970();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = sub_768460();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_94DD18;
  v88 = xmmword_94DD28;
  v89 = xmmword_94DD38;
  v85 = xmmword_94DCF8;
  v86 = xmmword_94DD08;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_94DCF8;
  v98 = xmmword_94DD08;
  v100 = xmmword_94DD28;
  v101 = xmmword_94DD38;
  v90 = qword_94DD48;
  v96 = v84;
  v102 = qword_94DD48;
  v99 = xmmword_94DD18;
  sub_1ED18(&v85, &v73, &unk_93FEF0, &unk_7834B0);
  xmmword_94DD18 = v93;
  xmmword_94DD28 = v94;
  xmmword_94DD38 = v95;
  qword_94DD48 = v96;
  xmmword_94DCF8 = v91;
  xmmword_94DD08 = v92;
  sub_10A2C(&v97, &unk_93FEF0, &unk_7834B0);
  v55 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
  v56 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_45C2C(&v79, &v73);
  v57 = v67;
  sub_768860();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10A2C(v57, &unk_93F980, &qword_77EDA0);
  }

  else
  {
    sub_32A6C0(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_94DD18;
  v76 = xmmword_94DD28;
  v77 = xmmword_94DD38;
  v78 = qword_94DD48;
  v73 = xmmword_94DCF8;
  v74 = xmmword_94DD08;
  xmmword_94DCF8 = v85;
  xmmword_94DD08 = v86;
  xmmword_94DD18 = v87;
  xmmword_94DD28 = v88;
  xmmword_94DD38 = v89;
  qword_94DD48 = v90;
  sub_10A2C(&v73, &unk_93FEF0, &unk_7834B0);
  sub_45C88(&v79);

  (*(v69 + 8))(v60, v64);
}

void sub_5AF224()
{

  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_flowPreviewing);
}

void sub_5AF528(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = sub_757640();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_BE70(0, &qword_93FF60, UICollectionViewCell_ptr);
  v11 = sub_769460();

  if (!(v11 >> 62))
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = sub_76A860();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = (v3 + 8);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    v30 = v11 & 0xC000000000000001;
    v15 = v33;
    do
    {
      if (v14)
      {
        v16 = sub_76A770();
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v17 && (v18 = [v37 indexPathForCell:v17]) != 0)
      {
        v19 = v32;
        v20 = v18;
        sub_757590();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = sub_7575D0();
        sub_76A6E0();
        v23 = v34;
        sub_769090();
        sub_768C70();

        v24 = v23;
        v14 = v30;
        (*v28)(v24, v35);
        v25 = v22;
        v11 = v21;
        (*v27)(v25, v15);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

uint64_t sub_5AF8BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

void sub_5AF980(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_757640() - 8);
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_5AE658(v4, v5, v6, v7);
}

double sub_5AF9F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_5AFA10()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5AFA50()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_5AFA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v9 = sub_5AFBC0(&qword_95C698, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v10 = sub_BD88(&qword_95C6A0, &qword_7A7258);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[qword_944108];
  *&v11[qword_944108 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v13 = &v11[qword_944100];
  *v13 = a3;
  *(v13 + 1) = a4;
  *(v12 + 1) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v11[qword_944118] = a5;
  v15.receiver = v11;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_5AFBC0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_5AFC2C(void *a1)
{
  if (a1)
  {
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = UICollectionElementKindSectionHeader;
    sub_769BD0();
    v4 = sub_769210();

    [a1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v3 withReuseIdentifier:v4];

    type metadata accessor for InteractiveTitleHeaderView(0);
    v5 = swift_getObjCClassFromMetadata();
    v6 = v3;
    sub_769BD0();
    v7 = sub_769210();

    [a1 registerClass:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];

    type metadata accessor for InfiniteScrollFooterView();
    v8 = swift_getObjCClassFromMetadata();
    v9 = UICollectionElementKindSectionFooter;
    sub_769BD0();
    v10 = sub_769210();

    [a1 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

    sub_BE70(0, &qword_947680, UICollectionReusableView_ptr);
    v11 = swift_getObjCClassFromMetadata();
    v12 = sub_769210();
    v13 = sub_769210();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

    v14 = sub_769210();
    v15 = sub_769210();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];
  }
}

uint64_t sub_5AFE70()
{
  sub_BEB8((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_5AFEF4()
{
  result = qword_94FB98;
  if (!qword_94FB98)
  {
    sub_7626C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94FB98);
  }

  return result;
}

uint64_t sub_5AFF4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_758BB0();
    v8 = a1;
    sub_7626B0();
    sub_758B50();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a2;
    v10 = sub_12EA98();
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = sub_769970();
    sub_768F10();

    return sub_BEB8(v13);
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v12 = sub_768FF0();
    sub_BE38(v12, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    sub_5B0984();
    swift_allocError();
    sub_768F50();
  }
}

double sub_5B020C(id *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v6 = sub_758B40();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v36 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75F340();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_760280();
  v10 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7687B0();
  __chkstk_darwin(v12 - 8);
  v13 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v16 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v16 - 8);
  v18 = &v29 - v17;
  v19 = sub_765490();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = sub_762690();
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.gameAchievements(_:), v19);
  v25 = sub_7570A0();
  (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
  v26 = sub_759E30();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  v43 = &type metadata for GameCenterAchievementsPage;
  v41 = v23;
  v42 = v24;
  v30 = v23;

  sub_768790();
  (*(v10 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v37 + 104))(v36, enum case for FlowOrigin.inapp(_:), v38);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v27 = sub_758AD0();
  sub_72D7A8(v27, 1, v39);
  sub_768F00();

  return result;
}

uint64_t sub_5B0724(uint64_t a1)
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();

  return sub_768F50();
}

uint64_t sub_5B087C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v4 = sub_768F90();
  sub_758BB0();
  v7[3] = sub_12EA98();
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_769970();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a2;

  sub_758B60();

  sub_BEB8(v7);
  return v4;
}

unint64_t sub_5B0984()
{
  result = qword_95C6B0;
  if (!qword_95C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95C6B0);
  }

  return result;
}

unint64_t sub_5B0A00()
{
  result = qword_95C6B8;
  if (!qword_95C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95C6B8);
  }

  return result;
}

uint64_t sub_5B0A58()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75E410();
  sub_161DC(v4, qword_99FFD0);
  sub_BE38(v4, qword_99FFD0);
  if (qword_93D868 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F130);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v16[3] = sub_766CA0();
  v16[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v16);
  v14 = v0;
  v15 = &protocol witness table for FontSource;
  v7 = sub_B1B4(v13);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  v14 = &type metadata for Double;
  v15 = &protocol witness table for Double;
  v13[0] = 0;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9[4] = &type metadata for Double;
  v9[5] = &protocol witness table for Double;
  v9[1] = 0;
  return sub_75E400();
}

id sub_5B0DB4()
{
  v1 = v0;
  v2 = sub_BD88(&unk_944E70, &unk_784960);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_BD88(&unk_944E80, &unk_799630);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_3B5494(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10A2C(v4, &unk_944E70, &unk_784960);
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_75B470();
    sub_75B460();
    v11 = sub_759CF0();
    sub_22A974(v11, sub_30AE4);
    v13 = v12;

    v14 = sub_759CE0();
    sub_4ED3B8(v14, 0, v13);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_5B1048()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20[0] = sub_7664F0();
  v3 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75E410();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75E430();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();

  if (qword_93DD40 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v6, qword_99FFD0);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyLabel];
  v20[4] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v20[5] = &protocol witness table for UIView;
  v20[1] = v17;
  v18 = v17;
  sub_75E420();
  sub_75E3F0();
  (*(v3 + 8))(v5, v20[0]);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for PrivacyFooterCollectionViewCell(uint64_t a1)
{
  result = qword_95C6F0;
  if (!qword_95C6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_5B147C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v35 = sub_760AD0();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_768C60();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7666D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_itemLayoutContext;
  v14 = sub_75C840();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyText;
  v16 = sub_BD88(&unk_944E80, &unk_799630);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_93D868 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v9, qword_99F130);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyLabel] = sub_4ECF40(v12, 0, 0, 1);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyLabel];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v24 = v23;
  sub_768C10();
  sub_10A2C(v36, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(v37, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  (*(v6 + 8))(v8, v34);
  v25 = *&v19[v22];
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v35);
  v26 = v25;
  sub_75BA90();

  v27 = *&v19[v22];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v28 = v27;
  v29 = sub_769FF0();
  v30 = *&v28[qword_9580B0];
  *&v28[qword_9580B0] = v29;
  v31 = v29;
  if ((sub_76A1C0() & 1) == 0)
  {
    sub_4ED788();
  }

  v32 = [v19 contentView];
  [v32 addSubview:*&v19[v22]];

  return v19;
}

uint64_t sub_5B1974@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.trailing(_:), v3);
  sub_75D3D0();
  v6 = sub_75D400();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

uint64_t sub_5B1A98@<X0>(char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a13@<D6>, double a14@<D7>, double a15, double a16)
{
  v94 = a5;
  v97 = a2;
  v98 = a4;
  v96 = a3;
  v100 = a13;
  v101 = a14;
  v99 = a6;
  v86 = sub_764520();
  v78 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_767D60();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v92 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_7656A0();
  v90 = *(v18 - 8);
  v91 = v18;
  __chkstk_darwin(v18);
  v84 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v89 = &v78 - v21;
  __chkstk_darwin(v22);
  v83 = &v78 - v23;
  v24 = sub_7649E0();
  v95 = *(v24 - 8);
  __chkstk_darwin(v24);
  v79 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v78 - v27;
  v82 = sub_763BD0();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_764930();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_BD88(&qword_9438F8, &unk_787C30);
  __chkstk_darwin(v34);
  v93 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v78 - v37;
  sub_1ED18(v97, &v78 - v37, &qword_963790, qword_77EBC0);
  v39 = *(v34 + 48);
  v97 = v38;
  sub_1ED18(v96, &v38[v39], &qword_963790, qword_77EBC0);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0, &qword_782290);
  sub_768750();

  v96 = v31;
  v40 = (*(v31 + 88))(v33, v30);
  if (v40 == enum case for Shelf.ContentType.action(_:))
  {
    swift_getKeyPath();
    sub_768750();

    v41 = v95;
    if ((*(v95 + 88))(v28, v24) == enum case for Shelf.ContentsMetadata.searchLandingTrendingSection(_:))
    {
      (*(v41 + 96))(v28, v24);
      v42 = v81;
      v43 = v80;
      v44 = v82;
      (*(v81 + 32))(v80, v28, v82);
      v45 = sub_763BC0();
      swift_getKeyPath();
      sub_768750();

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
      sub_75B4A0();
      v51 = sub_767D40();
      (*(v87 + 8))(v50, v88);
      if (v51 & 1) != 0 && (sub_75B4C0())
      {
        v45 = 1;
      }

      (*(v47 + 16))(v89, v49, v46);
      sub_2655A4(v45);
      sub_765670();
      (*(v47 + 8))(v49, v46);
      (*(v42 + 8))(v43, v44);
LABEL_24:
      v72 = &qword_9438F8;
      v73 = &unk_787C30;
      v71 = v97;
      return sub_10A2C(v71, v72, v73);
    }

    (*(v41 + 8))(v28, v24);
    v64 = v93;
    v102 = v94;
    v65 = v97;
    sub_1ED18(v97, v93, &qword_9438F8, &unk_787C30);
    v66 = *(v34 + 48);
    sub_B7A24();
  }

  else
  {
    v52 = v95;
    if (v40 != enum case for Shelf.ContentType.searchChartsAndCategories(_:))
    {
      v67 = v93;
      v102 = v94;
      v68 = v97;
      sub_1ED18(v97, v93, &qword_9438F8, &unk_787C30);
      v69 = *(v34 + 48);
      sub_B7A24();
      sub_75B530();
      sub_10A2C(v68, &qword_9438F8, &unk_787C30);
      sub_10A2C(v67 + v69, &qword_963790, qword_77EBC0);
      sub_10A2C(v67, &qword_963790, qword_77EBC0);
      return (*(v96 + 8))(v33, v30);
    }

    swift_getKeyPath();
    v53 = v79;
    sub_768750();

    if ((*(v52 + 88))(v53, v24) == enum case for Shelf.ContentsMetadata.searchLandingChartsAndCategoriesSection(_:))
    {
      (*(v52 + 96))(v53, v24);
      v54 = v78;
      (*(v78 + 32))(v85, v53, v86);
      swift_getKeyPath();
      sub_768750();

      v56 = v90;
      v55 = v91;
      v57 = &enum case for PageGrid.Direction.horizontal(_:);
      if (!v102)
      {
        v57 = &enum case for PageGrid.Direction.vertical(_:);
      }

      (*(v90 + 104))(v84, *v57, v91);
      v58 = v92;
      sub_75B4A0();
      v59 = sub_767D40();
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
        v63 = sub_764510();
      }

      v74 = v92;
      sub_75B4A0();
      v75 = sub_767D40();
      v60(v74, v62);
      if (v75 & 1) != 0 && (sub_75B4C0())
      {
        v63 = 1;
      }

      v76 = v85;
      v77 = v84;
      (*(v56 + 16))(v89, v84, v55);
      sub_3CC450(v63);
      sub_765670();
      (*(v56 + 8))(v77, v55);
      (*(v54 + 8))(v76, v86);
      goto LABEL_24;
    }

    (*(v52 + 8))(v53, v24);
    v64 = v93;
    v102 = v94;
    v65 = v97;
    sub_1ED18(v97, v93, &qword_9438F8, &unk_787C30);
    v66 = *(v34 + 48);
    sub_B7A24();
  }

  sub_75B530();
  sub_10A2C(v65, &qword_9438F8, &unk_787C30);
  sub_10A2C(v64 + v66, &qword_963790, qword_77EBC0);
  v71 = v64;
  v72 = &qword_963790;
  v73 = qword_77EBC0;
  return sub_10A2C(v71, v72, v73);
}

uint64_t sub_5B2718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_176F34();

  return sub_75B530();
}

uint64_t sub_5B27FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_176F34();

  return sub_75B520();
}

uint64_t sub_5B28E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B2B28();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_5B293C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v29[6] = a5;
  v29[7] = a6;
  v29[5] = a4;
  *&v29[3] = a14;
  *&v29[4] = a15;
  v29[1] = a7;
  v29[2] = a1;
  v20 = sub_BD88(&qword_9438F8, &unk_787C30);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v29 - v25;
  sub_1ED18(a2, v29 - v25, &qword_963790, qword_77EBC0);
  sub_1ED18(a3, &v26[*(v21 + 56)], &qword_963790, qword_77EBC0);
  v30 = *v17;
  sub_1ED18(v26, v23, &qword_9438F8, &unk_787C30);
  v27 = *(v21 + 56);
  sub_75B530();
  sub_10A2C(v26, &qword_9438F8, &unk_787C30);
  sub_10A2C(&v23[v27], &qword_963790, qword_77EBC0);
  return sub_10A2C(v23, &qword_963790, qword_77EBC0);
}

unint64_t sub_5B2B28()
{
  result = qword_95C700;
  if (!qword_95C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95C700);
  }

  return result;
}

uint64_t sub_5B2B7C(uint64_t a1, double *a2)
{
  v3 = v2;
  v31 = a2;
  v4 = sub_BD88(&qword_944EA8, qword_784990);
  __chkstk_darwin(v4 - 8);
  v6 = (v30 - v5);
  v7 = sub_764660();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  sub_763680();
  v15 = sub_769210();

  [v14 setText:v15];

  sub_763660();
  v16.n128_f64[0] = (*(v8 + 104))(v10, enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.getAll(_:), v7);
  sub_5B44CC(v16);
  v17 = sub_7691C0();
  v18 = *(v8 + 8);
  v18(v10, v7);
  v18(v13, v7);
  if ((v17 & 1) != 0 || (v19 = sub_763630()) == 0)
  {
    v22 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  }

  else
  {
    v20 = v19;
    v21 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);

    sub_763650();
    *v6 = v20;
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  }

  v23 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v24 = sub_763620();
  v25 = v24;
  if (!(v24 >> 62))
  {
    v26 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
    if (v26)
    {
      goto LABEL_7;
    }

LABEL_15:

    v29 = _swiftEmptyArrayStorage;
LABEL_16:
    sub_74E5D4(v29, v6, 0, v31);

    [v3 setNeedsLayout];
    [v3 invalidateIntrinsicContentSize];
    sub_5B3CA8();

    return sub_5B4524(v6);
  }

  v26 = sub_76A860();
  if (!v26)
  {
    goto LABEL_15;
  }

LABEL_7:
  v32 = _swiftEmptyArrayStorage;
  result = sub_76A7C0();
  if ((v26 & 0x8000000000000000) == 0)
  {
    v30[1] = v23;
    v28 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
      }

      ++v28;

      sub_762500();

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
    }

    while (v26 != v28);

    v29 = v32;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_5B2F94()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_95C708 = result;
  return result;
}

char *sub_5B2FE4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_760AD0();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v11;
  v57 = sub_75A010();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7664A0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_766CA0();
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&qword_95F810, &unk_780110);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v54 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v23 = enum case for Wordmark.arcade(_:);
  v24 = sub_765770();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  if (qword_93DB30 != -1)
  {
    swift_once();
  }

  v26 = sub_7666D0();
  v53 = sub_BE38(v26, qword_99F988);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v26);
  (*(v14 + 104))(v16, enum case for FontSource.useCase(_:), v13);
  v67 = v13;
  v68 = &protocol witness table for FontSource;
  v29 = sub_B1B4(v66);
  (*(v14 + 16))(v29, v16, v13);
  sub_766CB0();
  (*(v14 + 8))(v16, v13);
  (*(v55 + 104))(v58, enum case for WordmarkView.Alignment.leading(_:), v57);
  v30 = v56;
  v67 = v56;
  v68 = &protocol witness table for StaticDimension;
  v31 = sub_B1B4(v66);
  (*(v17 + 16))(v31, v19, v30);
  v32 = objc_allocWithZone(sub_75A030());
  v33 = sub_75A000();
  (*(v17 + 8))(v19, v30);
  v34 = v63;
  *(v63 + v54) = v33;
  v35 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v36 = v59;
  v28(v59, v53, v26);
  (*(v27 + 56))(v36, 0, 1, v26);
  (*(v60 + 104))(v62, enum case for DirectionalTextAlignment.none(_:), v61);
  v37 = objc_allocWithZone(sub_75BB20());
  *&v34[v35] = sub_75BB10();
  v38 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v34[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39 = &v34[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];
  *v39 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v39[1] = 0;
  v40 = ObjectType;
  v65.receiver = v34;
  v65.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v42 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  v43 = v41;
  [v43 addSubview:v42];
  v44 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  [v43 addSubview:*&v43[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel]];
  [v43 addSubview:*&v43[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView]];
  [*&v43[v44] setTextAlignment:1];
  [*&v43[v44] setNumberOfLines:0];
  v45 = *&v43[v44];
  v46 = [v43 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = sub_769B20();
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

  [v45 setTextAlignment:{v48, v53}];
  sub_BD88(&qword_9477F0, qword_780200);
  v49 = swift_allocObject();
  v63 = xmmword_77B6D0;
  *(v49 + 16) = xmmword_77B6D0;
  *(v49 + 32) = sub_767B80();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v67 = v40;
  v66[0] = v43;
  v50 = v43;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 32) = sub_767890();
  *(v51 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v67 = v40;
  v66[0] = v50;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v66);
  return v50;
}

uint64_t sub_5B387C@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_766950();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  __chkstk_darwin(v11);
  v13 = v22 - v12;
  *(swift_allocObject() + 16) = v2;
  v14 = v2;
  sub_766930();
  v25 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  sub_75A030();
  sub_7665D0();
  sub_766940();
  sub_BEB8(v22);
  v15 = *(v5 + 8);
  v15(v7, v4);
  v16 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v23 = sub_75BB20();
  v24 = &protocol witness table for UILabel;
  v22[0] = v16;
  *(swift_allocObject() + 16) = v14;
  v17 = v14;
  v18 = v16;
  sub_766940();

  v15(v10, v4);
  sub_BEB8(v22);
  v19 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v23 = type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  v24 = &protocol witness table for CustomLayoutView;
  v22[0] = v19;
  a1[3] = v4;
  a1[4] = &protocol witness table for VerticalStack;
  sub_B1B4(a1);
  v20 = v19;
  sub_766940();
  v15(v13, v4);
  return sub_BEB8(v22);
}

uint64_t sub_5B3B40(int a1, id a2)
{
  v2 = [a2 traitCollection];
  sub_7699B0();

  return sub_7668C0();
}

void sub_5B3CA8()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView];
  CGAffineTransformMakeScale(&v6, 0.9, 0.9);
  [v1 setTransform:&v6];
  if (qword_93DD48 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_95C708 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *&v6.tx = sub_5B45C4;
  *&v6.ty = v3;
  *&v6.a = _NSConcreteStackBlock;
  *&v6.b = 1107296256;
  *&v6.c = sub_23F0CC;
  *&v6.d = &unk_898DE0;
  v4 = _Block_copy(&v6);
  v5 = v0;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
  sub_74F654();
}

void sub_5B3EFC()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  sub_5B387C(v4);
  sub_B170(v4, v4[3]);
  [v0 bounds];
  v1 = [v0 traitCollection];
  sub_7673E0();

  sub_BEB8(v4);
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];

  v2(v3);
}

id sub_5B40A4()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_769B20();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v1 setTextAlignment:v4];
  [v0 setNeedsLayout];

  return [v0 invalidateIntrinsicContentSize];
}

double sub_5B41AC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 2) = v5;
  *(v6 + 3) = v4;
  *(v6 + 4) = a1;
  v7 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v7 = sub_5B46B0;
  v7[1] = v6;

  v8 = *v7;

  (v8)(v9);

  return result;
}

void sub_5B42C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView);

      v9 = v5;
      sub_755FA8(v8, a3, v9);
    }
  }
}

double sub_5B4420(uint64_t a1, __n128 a2, double a3)
{
  sub_5B387C(v6);
  sub_B170(v6, v6[3]);
  sub_7673F0();
  v4 = v3;
  sub_BEB8(v6);
  return v4;
}

unint64_t sub_5B44CC(__n128 a1)
{
  result = qword_95C758;
  if (!qword_95C758)
  {
    sub_764660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95C758);
  }

  return result;
}

uint64_t sub_5B4524(uint64_t a1)
{
  v2 = sub_BD88(&qword_944EA8, qword_784990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5B458C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_5B45C4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

double sub_5B4610(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_5B4630()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5B4668()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_5B46BC()
{
  v0 = sub_760AD0();
  v40 = *(v0 - 8);
  v41 = v0;
  __chkstk_darwin(v0);
  v42 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v2 - 8);
  v39 = &v33 - v3;
  v37 = sub_75A010();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7664A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_766CA0();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_95F810, &unk_780110);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v34 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v15 = enum case for Wordmark.arcade(_:);
  v16 = sub_765770();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  if (qword_93DB30 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v33 = sub_BE38(v18, qword_99F988);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v8, v33, v18);
  (*(v6 + 104))(v8, enum case for FontSource.useCase(_:), v5);
  v45 = v5;
  v46 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v44);
  (*(v6 + 16))(v21, v8, v5);
  sub_766CB0();
  (*(v6 + 8))(v8, v5);
  (*(v35 + 104))(v38, enum case for WordmarkView.Alignment.leading(_:), v37);
  v22 = v36;
  v45 = v36;
  v46 = &protocol witness table for StaticDimension;
  v23 = sub_B1B4(v44);
  (*(v9 + 16))(v23, v11, v22);
  v24 = objc_allocWithZone(sub_75A030());
  v25 = sub_75A000();
  (*(v9 + 8))(v11, v22);
  v26 = v43;
  v27 = v33;
  *(v43 + v34) = v25;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v29 = v39;
  v20(v39, v27, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  (*(v40 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v41);
  v30 = objc_allocWithZone(sub_75BB20());
  *(v26 + v28) = sub_75BB10();
  v31 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v26 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v32 = (v26 + OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v32 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[1] = 0;
  sub_76A840();
  __break(1u);
}