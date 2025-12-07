void sub_1003015F4(void *a1)
{
  v1 = a1;
  sub_100301230();
}

id sub_10030163C(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result panGestureRecognizer];

  [v4 addGestureRecognizer:v6];
  v7 = [v1 navigationController];
  if (v7)
  {
    v8 = v7;
    [v7 setNavigationBarHidden:1 animated:0];
  }

  *(v1 + qword_10097FCA8) = 1;
  return [v1 setNeedsStatusBarAppearanceUpdate];
}

void sub_100301764(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10030163C(a3);
}

void sub_1003017B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewDidAppear:", a3);
  v4[qword_10097FCA0] = 1;
  v5 = [v4 viewIfLoaded];
  [v5 setNeedsLayout];
}

void sub_100301854(char a1)
{
  v20.receiver = v1;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1);
  v3 = [v1 navigationController];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 viewControllers];

  sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  v7 = v6;
  if (!v10)
  {
LABEL_8:

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();

    v9 = v19 == v1;
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);

    v9 = v8 == v1;
  }

LABEL_10:
  v11 = [v1 navigationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 viewControllers];

    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v14 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 > 1 && v9)
    {
      v17 = [v1 navigationController];
      if (v17)
      {
        v18 = v17;
        [v17 setNavigationBarHidden:0 animated:0];
      }
    }
  }
}

void sub_100301A90(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100301854(a3);
}

void sub_100301AE4(uint64_t a1, void *a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_10030A0F0;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1006D1458;
  v7[3] = &unk_1008BDE68;
  v6 = _Block_copy(v7);

  [a2 animateAlongsideTransition:v6 completion:0];
  _Block_release(v6);
}

double sub_100301BEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100301D04();

    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setAlpha:1.0];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  return result;
}

void *sub_100301D04()
{
  v1 = *(v0 + qword_1009CF4D0);
  v10 = *(v0 + qword_1009CF4D8);
  v11 = v1;
  v12 = *(v0 + qword_1009CF4C8);
  v2 = v12;
  v3 = v10;
  result = v1;
  v5 = 0;
LABEL_2:
  if (v5 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  while (1)
  {
    if (v5 == 3)
    {
      sub_10002849C(&qword_100980340, &qword_1007C73E8);
      swift_arrayDestroy();
      return _swiftEmptyArrayStorage;
    }

    if (v6 == v5)
    {
      break;
    }

    v7 = v9[v5++ + 4];
    if (v7)
    {
      v8 = v7;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_100301E3C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_100301AE4(v6, a4);

  swift_unknownObjectRelease();
}

void sub_100301EBC(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    v10[4] = sub_10030A0E8;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1006D1458;
    v10[3] = &unk_1008BDE40;
    v8 = _Block_copy(v10);
    v9 = v3;

    [a1 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
  }
}

void sub_100301FE4(int a1, _BYTE *a2)
{
  a2[qword_1009CF4B0] = 1;
  v3 = [a2 viewIfLoaded];
  [v3 setNeedsLayout];

  a2[qword_10097FCA0] = 1;
  v4 = [a2 viewIfLoaded];
  [v4 setNeedsLayout];

  sub_100302084();
}

void sub_100302084()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = ArticleDiffablePagePresenter.footerVisibilitySectionThreshold.getter();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 numberOfSections];

      if (v8 >= v11)
      {
        return;
      }
    }

    else if ((v8 & 0x8000000000000000) == 0)
    {
      return;
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 collectionViewLayout];

      IndexPath.init(item:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v3 + 8))(v5, v2);
      v16 = [v14 layoutAttributesForItemAtIndexPath:isa];

      if (v16)
      {
        v17 = *&v1[qword_10097FD00];
        if (v17)
        {

          [v14 collectionViewContentSize];
          v19 = v18;
          [v16 frame];
          *(v17 + 48) = v19 - CGRectGetMinY(v21);
          sub_1001FA78C(1);
        }
      }

      else
      {
        v16 = v14;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003022A0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100301EBC(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_100302320()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = sub_100301D04();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_14:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
LABEL_3:
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

        v8 = [v0 view];
        if (!v8)
        {
          break;
        }

        v9 = v8;
        [v8 bringSubviewToFront:v6];

        ++v4;
        if (v7 == v3)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

LABEL_15:

  v10 = *&v0[qword_10097FCF8];
  if (v10)
  {
    v11 = v10;
    v12 = [v0 view];
    if (!v12)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v13 = v12;
    v14 = [v0 collectionView];
    if (!v14)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v15 = v14;
    [v13 insertSubview:v11 aboveSubview:v14];
  }
}

void sub_1003024D8(void *a1)
{
  v1 = a1;
  sub_100302320();
}

void sub_100302520()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_100996820, qword_1007C7450);
  __chkstk_darwin(v3 - 8);
  v161 = &v157 - v4;
  v163 = type metadata accessor for UIView.LayoutRegion();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v160 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OfferButtonMetrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v159 = &v157 - v11;
  v12 = type metadata accessor for SmallLockupLayout.Metrics();
  v166 = *(v12 - 8);
  v167 = v12;
  __chkstk_darwin(v12);
  v14 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v165 = &v157 - v17;
  v169.receiver = v0;
  v169.super_class = ObjectType;
  objc_msgSendSuper2(&v169, "viewDidLayoutSubviews", v16);
  if (v0[qword_10097FCA0] == 1)
  {
    v0[qword_10097FCA0] = 0;
    sub_10030312C();
  }

  sub_1003035B0();
  sub_1003037F4();
  sub_1003039E8();
  v18 = qword_1009CF498;
  v19 = &unk_10097F000;
  if (v0[qword_1009CF498] != 1)
  {
    goto LABEL_13;
  }

  v20 = *&v0[qword_10097FCC0];
  if (v20)
  {
    v21 = [v20 view];
    if (v21)
    {
      v22 = v21;
      [v21 frame];
      v24 = v23;
      v25 = [v1 view];
      v26 = v25;
      if (v24 >= 0.0)
      {
        if (!v25)
        {
LABEL_59:
          __break(1u);
          return;
        }

        [v25 bounds];
        v28 = v44;
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v43 = v50;
        v42 = v48;
        v41 = v46;
      }

      else
      {
        v164 = *&v18;
        v158 = v7;
        if (!v25)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        [v25 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = objc_opt_self();
        [v35 inheritedAnimationDuration];
        v37 = v36 * 0.8;
        v38 = swift_allocObject();
        *(v38 + 2) = v22;
        v38[3] = v28;
        *(v38 + 4) = v30;
        *(v38 + 5) = v32;
        *(v38 + 6) = v34;
        aBlock[4] = sub_10030A0D8;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007A08;
        aBlock[3] = &unk_1008BDDF0;
        v39 = _Block_copy(aBlock);
        v40 = v22;

        [v35 animateWithDuration:612 delay:v39 usingSpringWithDamping:0 initialSpringVelocity:v37 options:0.0 animations:0.92 completion:0.0];
        _Block_release(v39);
        [v40 frame];
        [v40 setFrame:?];
        [v40 frame];
        v7 = v158;
        *&v18 = v164;
      }

      [v22 setFrame:{v28, v41, v42, v43}];
    }
  }

  if ((v1[v18] & 1) == 0)
  {
LABEL_13:
    v51 = *&v1[qword_10097FCD0];
    if (v51)
    {
      v52 = *(v51 + 24);

      [v52 _systemContentInset];
      v54 = v53;
      v56 = v55;
      [v52 contentOffset];
      v58 = v57;
      v60 = v59;
      [v52 contentInset];
      v62 = v56 + v58 + v61;
      v64 = v54 + v60 + v63;
      [v52 bounds];
      v67 = sub_100079D98(v62, v64, v65, v66);
      v69 = v68;
      v71 = v70;
      v73 = v72;
    }

    else
    {
      v67 = 0.0;
      v69 = 0.0;
      v71 = 0.0;
      v73 = 0.0;
    }

    v74 = qword_1009CF4B0;
    if ((v1[qword_1009CF4B0] & 1) != 0 || (v170.origin.x = v67, v170.origin.y = v69, v170.size.width = v71, v170.size.height = v73, Width = CGRectGetWidth(v170), (v76 = *&v1[qword_10097FCC0]) == 0) || (v77 = Width, (v78 = [v76 view]) == 0) || (v79 = v78, objc_msgSend(v78, "frame"), v81 = v80, v83 = v82, v85 = v84, v164 = v77, v87 = v86, v79, v171.origin.x = v81, v171.origin.y = v83, v171.size.width = v85, v171.size.height = v87, v164 != CGRectGetWidth(v171)))
    {
      v88 = *&v1[qword_10097FCC0];
      if (v88)
      {
        v89 = [v88 view];
      }

      else
      {
        v89 = 0;
      }

      [v89 setFrame:{v67, v69, v71, v73}];

      sub_100303BBC(v67, v69, v71, v73);
      v1[v74] = 0;
    }
  }

  v90 = *&v1[qword_10097FCF8];
  if (v90)
  {
    v164 = *&v18;
    v158 = v7;
    v91 = v6;
    v92 = v90;
    v93 = [v1 traitCollection];
    v94 = UITraitCollection.isRegularPad.getter();

    if (v94)
    {
      v95 = 80.0;
    }

    else
    {
      v95 = 20.0;
    }

    v96 = [v1 view];
    if (!v96)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v97 = v96;
    [v96 bounds];
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;

    v106 = 0.0;
    v172.origin.x = v99;
    v172.origin.y = v101;
    v172.size.width = v103;
    v172.size.height = v105;
    v173 = CGRectInset(v172, v95, 0.0);
    v107 = v173.size.width;
    v108 = *&v92[OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView];
    if (v108)
    {
      v109 = v9;
      v110 = v108;
      v111 = v165;
      sub_10013F3FC(v165);
      [v110 layoutMargins];
      v113 = v112;
      v115 = v114;
      v116 = [v110 traitCollection];
      (*(v166 + 16))(v14, v111, v167);
      v117 = SmallLockupLayout.Metrics.offerButtonSize.getter();
      v19 = &unk_10097F000;
      if ((v119 & 1) == 0 && ((v117 | v118) & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        if (UITraitCollection.prefersAccessibilityLayouts.getter())
        {
          v120 = v109;
          if (qword_10096ECB8 != -1)
          {
            swift_once();
          }

          v121 = qword_100991010;
        }

        else
        {
          v120 = v109;
          if (qword_10096ECC0 != -1)
          {
            swift_once();
          }

          v121 = qword_100991028;
        }

        v125 = sub_1000056A8(v91, v121);
        v126 = v158;
        (*(v158 + 16))(v120, v125, v91);
        v127 = v159;
        (*(v126 + 32))(v159, v120, v91);
        OfferButtonMetrics.minimumSize.getter();
        OfferButtonMetrics.estimatedHeight.getter();
        SmallLockupLayout.Metrics.offerButtonSize.setter();
        (*(v126 + 8))(v127, v91);
      }

      static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
      v129 = v128;

      v130 = v167;
      v131 = *(v166 + 8);
      v131(v14, v167);

      v123 = v115 + v113 + v129;
      v131(v165, v130);
    }

    else
    {
      v122 = *&v92[OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView];
      v123 = 0.0;
      v19 = &unk_10097F000;
      if (!v122)
      {
        goto LABEL_44;
      }

      [v122 sizeThatFits:{v173.size.width, v173.size.height}];
      v123 = v124;
    }

    v106 = v107;
LABEL_44:
    v132 = v92;
    [v132 frame];
    *&v18 = v164;
    if (v106 != v134 || v123 != v133)
    {
      [v132 frame];
      [v132 setFrame:v95];
      [v132 frame];
      [v132 setFrame:?];
    }

    if (*&v1[qword_10097FD00])
    {

      sub_1001FA78C(1);
    }
  }

  if ((v1[v18] & 1) == 0)
  {
    v135 = *&v1[v19[408]];
    if (v135)
    {
      type metadata accessor for ListTodayCardCollectionViewCell(0);
      if (swift_dynamicCastClass())
      {
        v136 = v135;
        v137 = [v1 view];
        if (v137)
        {
          v138 = v137;
          v139 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
          v140 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
          v141 = *(v140 - 8);
          v142 = v161;
          (*(v141 + 104))(v161, v139, v140);
          (*(v141 + 56))(v142, 0, 1, v140);
          v143 = v160;
          static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
          sub_10002B894(v142, &unk_100996820, qword_1007C7450);
          UIView.edgeInsets(for:)();
          v145 = v144;
          v147 = v146;
          v149 = v148;
          v151 = v150;

          (*(v162 + 8))(v143, v163);
          v152 = &v136[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets];
          v153 = *&v136[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets];
          v154 = *&v136[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets + 8];
          v155 = *&v136[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets + 16];
          v156 = *&v136[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets + 24];
          *v152 = v145;
          *(v152 + 1) = v147;
          *(v152 + 2) = v149;
          *(v152 + 3) = v151;
          sub_1007691D8(v153, v154, v155, v156);

          return;
        }

        goto LABEL_57;
      }
    }
  }
}

void sub_10030312C()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (!v2)
  {
    return;
  }

  v86 = v2;
  [v86 contentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v0[qword_1009CF498] == 1)
  {
    v10 = *&v0[qword_10097FCC0];
    if (v10)
    {
      v11 = v10;
      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        [v12 bounds];
        v15 = v14;

        v16 = *&v11[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
        if (v16)
        {
          v17 = *&v11[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8];
          v18 = *&v11[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
        }

        else
        {
          v17 = *&v11[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8];
          v18 = *&v11[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
          v16 = 0;
        }

        v78 = v16;
        sub_100769CEC(v18, v17, v15);
        v58 = v79;

        goto LABEL_17;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  v19 = *&v0[qword_10097FCD0];
  if (v19)
  {
    v20 = *(v19 + 24);

    [v20 _systemContentInset];
    v22 = v21;
    v24 = v23;
    [v20 contentOffset];
    v26 = v25;
    v28 = v27;
    [v20 contentInset];
    v30 = v24 + v26 + v29;
    v32 = v22 + v28 + v31;
    [v20 bounds];
    v88.origin.x = sub_100079D98(v30, v32, v33, v34);
    Height = CGRectGetHeight(v88);
    v36 = [v1 view];
    if (v36)
    {
      v37 = v36;
      [v36 safeAreaInsets];
      v39 = v38;

      v40 = *&v1[qword_10097FCC0];
      if (v40)
      {
        v41 = [v40 view];
        if (v41)
        {
          v42 = v41;
          v43 = *(v19 + 24);
          [v43 _systemContentInset];
          v45 = v44;
          v47 = v46;
          [v43 contentOffset];
          v49 = v48;
          v51 = v50;
          [v43 contentInset];
          v53 = v47 + v49 + v52;
          v55 = v45 + v51 + v54;
          [v43 bounds];
          [v42 setFrame:{sub_100079D98(v53, v55, v56, v57)}];
        }
      }

      v58 = Height - v39;
      v59 = *(v19 + 24);
      [v59 _systemContentInset];
      v61 = v60;
      v63 = v62;
      [v59 contentOffset];
      v65 = v64;
      v67 = v66;
      [v59 contentInset];
      v69 = v63 + v65 + v68;
      v71 = v61 + v67 + v70;
      [v59 bounds];
      v74 = sub_100079D98(v69, v71, v72, v73);
      sub_100303BBC(v74, v75, v76, v77);

      v9 = 0.0;
      v7 = 0.0;
      v5 = 0.0;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_26;
  }

  v58 = v3;
LABEL_17:
  [v86 contentOffset];
  v81 = v80;
  v83 = v82;
  [v86 setContentInset:{v58, v5, v7, v9}];
  [v86 setContentOffset:{v81, v83}];
  if (*&v1[qword_10097FCC0])
  {
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    v84 = swift_dynamicCastClass();
    v85 = 0.0;
    if (!v84)
    {
      v85 = v58;
    }
  }

  else
  {
    v85 = v58;
  }

  [v86 setScrollIndicatorInsets:{v85, 0.0, v7, 0.0}];
  [v86 contentOffset];
  [v86 setContentOffset:?];
}

void sub_1003035B0()
{
  v1 = *&v0[qword_1009CF4C8];
  if (v1)
  {
    v2 = v0;
    v3 = objc_opt_self();
    v4 = v1;
    v5 = [v3 currentDevice];
    [v5 userInterfaceIdiom];

    sub_100274060();
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = *&v2[qword_10097FCC0];
      if (v16 && (v17 = *(v16 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell), type metadata accessor for ListTodayCardCollectionViewCell(0), swift_dynamicCastClass()))
      {
        v18 = v17;
        [sub_100343750() frame];
        CGRectGetMaxX(v21);
      }

      else
      {
        v22.origin.x = v9;
        v22.origin.y = v11;
        v22.size.width = v13;
        v22.size.height = v15;
        CGRectGetMaxX(v22);
      }

      v23.origin.x = v9;
      v23.origin.y = v11;
      v23.size.width = v13;
      v23.size.height = v15;
      CGRectGetMinY(v23);
      v19 = v4;
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v19 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003037F4()
{
  v1 = *&v0[qword_1009CF4D0];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    [v4 userInterfaceIdiom];

    sub_100274060();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = *&v0[qword_1009CF4C8];
      if (v15)
      {
        v16 = v15;
        [v16 frame];
        CGRectGetMinX(v19);
      }

      else
      {
        v20.origin.x = v8;
        v20.origin.y = v10;
        v20.size.width = v12;
        v20.size.height = v14;
        CGRectGetMaxX(v20);
      }

      v21.origin.x = v8;
      v21.origin.y = v10;
      v21.size.width = v12;
      v21.size.height = v14;
      CGRectGetMinY(v21);
      v17 = v3;
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v17 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1003039E8()
{
  v1 = *&v0[qword_1009CF4D8];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    [v4 userInterfaceIdiom];

    sub_100274060();
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = v3;
      [v15 sizeThatFits:{v12, v14}];
      v17.origin.x = v8;
      v17.origin.y = v10;
      v17.size.width = v12;
      v17.size.height = v14;
      CGRectGetMinX(v17);
      v18.origin.x = v8;
      v18.origin.y = v10;
      v18.size.width = v12;
      v18.size.height = v14;
      CGRectGetMinY(v18);
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v15 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100303BBC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for ImpressionMetrics.ID();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for ImpressionMetrics();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v4[qword_10097FCD8];
  if (v20 || (v20 = ArticleDiffablePagePresenter.todayCard.getter()) != 0)
  {

    TodayCard.impressionMetrics.getter();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      sub_10002B894(v15, &qword_100973D30, &unk_1007B1DC0);
      return;
    }

    (*(v17 + 32))(v19, v15, v16);
    v21 = [v4 collectionView];
    if (v21)
    {
      v22 = v21;
      TimedMetricsPagePresenter.impressionsCalculator.getter();
      v23 = [v4 view];
      if (!v23)
      {
        __break(1u);
        return;
      }

      v24 = v23;
      v36 = v22;
      [v23 convertRect:v22 toCoordinateSpace:{a1, a2, a3, a4}];

      ImpressionsCalculator.addElement(_:at:)();
      ImpressionMetrics.id.getter();
      v25 = qword_10097FCC0;
      v26 = *&v5[qword_10097FCC0];
      if (v26)
      {
        [*(v26 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell) bounds];
        *(&v28 + 1) = v27;
        *(&v30 + 1) = v29;
      }

      else
      {
        v28 = 0uLL;
        v30 = 0uLL;
      }

      v39 = v28;
      v40 = v30;
      v41 = v26 == 0;
      v31 = ImpressionsCalculator.childCalculator(for:viewBounds:)();
      (*(v37 + 8))(v12, v10);
      if (v31)
      {
        v32 = *&v5[v25];
        if (v32)
        {
          v33 = *(v32 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell);
          swift_getObjectType();
          v38[3] = type metadata accessor for TodayCard();
          v38[4] = sub_10030A0F8(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
          v38[0] = v20;
          v34 = v33;

          dispatch thunk of NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();

          (*(v17 + 8))(v19, v16);
          sub_100007000(v38);
        }

        else
        {

          (*(v17 + 8))(v19, v16);
        }

        return;
      }

      (*(v17 + 8))(v19, v16);
    }

    else
    {
      (*(v17 + 8))(v19, v16);
    }
  }
}

void sub_1003040BC(void *a1)
{
  v1 = a1;
  sub_100302520();
}

double sub_100304104(void *a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v2[qword_10097FCA0] = 1;
  v4 = [v2 viewIfLoaded];
  [v4 setNeedsLayout];

  if (a1)
  {
    v6 = a1;
    if ([v6 horizontalSizeClass] && (v7 = objc_msgSend(v2, "traitCollection"), v8 = objc_msgSend(v7, "horizontalSizeClass"), v7, v8 != objc_msgSend(v6, "horizontalSizeClass")) && ((v9 = *&v2[qword_10097FCD8]) != 0 || (v9 = ArticleDiffablePagePresenter.todayCard.getter()) != 0))
    {
      v10 = *&v2[qword_10097FCC0];
      if (v10)
      {
        v11 = v10 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell;
        v13 = *v11;
        v12 = *(v11 + 8);

        v14 = v13;
        sub_1003042A4(v9, v14, v12, 5);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1003042A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PageGrid();
  v57 = *(v13 - 8);
  v58 = v13;
  __chkstk_darwin(v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v4[qword_10097FCC0];
  v60 = v15;
  if (v16)
  {
    type metadata accessor for ArticleHeaderViewController();
    v17 = v16;
    v18 = v15;
    v19 = v17;
    sub_100768998(v17, v18);
  }

  else
  {
    type metadata accessor for ArticleHeaderViewController();
    sub_100768998(v4, v15);
    Logger.init()();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "ArticleDiffablePageViewController: header page grid derived from self unexpected", v22, 2u);
    }

    (*(v10 + 8))(v12, v9);
  }

  v23 = a4;
  v24 = v59;
  if (a4 == 7)
  {
    v25 = v5;
    v26 = [v5 traitCollection];
    v27 = UITraitCollection.isRegularPad.getter();
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v29 = (*(a3 + 160))(ObjectType, a3);

      if (v29 == 6)
      {
        v30 = 6;
LABEL_12:
        if (v27)
        {
          v23 = v30;
        }

        else
        {
          v23 = 5;
        }

        v5 = v25;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v30 = 1;
    goto LABEL_12;
  }

LABEL_16:
  v31 = swift_getObjectType();
  v55 = qword_1009CF498;
  (*(a3 + 96))((v5[qword_1009CF498] & 1) == 0, v31, a3);
  v32 = *&v5[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v33 = v23;
  v34 = v60;
  (*(a3 + 296))(v24, v33, v60, v32, v31, a3);
  v35 = (*(a3 + 264))(v31, a3);
  if (v35)
  {
    *(v35 + qword_100988CB8 + 8) = &off_1008BD9D0;
    v36 = v35;
    swift_unknownObjectWeakAssign();
  }

  swift_getObjectType();
  v37 = swift_conformsToProtocol2();
  if (v37 && a2)
  {
    v38 = v37;
    v56 = v5;
    if (a4 == 7)
    {
      v39 = *(a3 + 136);
      v40 = a2;
      LODWORD(a4) = v39(v31, a3);
    }

    else
    {
      v41 = a2;
    }

    v42 = swift_getObjectType();
    v43 = sub_1005F3EC8(v24, v60, a4, v32, v42, v38);
    v44 = *(v38 + 32);
    if (v44(v42, v38, v43))
    {
      v46 = v45;
      v47 = swift_getObjectType();
      (*(v46 + 32))((v56[v55] & 1) == 0, v47, v46);
      swift_unknownObjectRelease();
    }

    if ((v44)(v42, v38))
    {
      v49 = v48;
      v50 = swift_getObjectType();
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = *(v49 + 88);

      v52(sub_1003098B8, v51, v50, v49);
      swift_unknownObjectRelease();
    }

    v24 = v59;
    v34 = v60;
  }

  v61[3] = type metadata accessor for TodayCard();
  v61[4] = &protocol witness table for TodayCard;
  v61[0] = v24;

  dispatch thunk of CellWithManagedArtwork.fetch(for:on:asPartOf:)();
  (*(v57 + 8))(v34, v58);
  return sub_100007000(v61);
}

void sub_10030485C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100304104(a3);
}

uint64_t sub_1003048C8()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10002849C(&qword_100980390, &qword_1007C73F8);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_10002849C(&qword_100980398, &qword_1007C7400);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_10002849C(&qword_1009803A0, &qword_1007C7408);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_100414B40();
  ArticleDiffablePagePresenter.onPrepareToDisplayTodayCard.getter();
  sub_10002849C(&qword_1009803A8, &qword_1007C7410);
  sub_100097060(&qword_1009803B0, &qword_1009803A8, &qword_1007C7410, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  (*(v5 + 8))(v7, v4);
  ArticleDiffablePagePresenter.onShowFooterLockup.getter();
  sub_10002849C(&qword_1009803B8, &qword_1007C7418);
  sub_100097060(&qword_1009803C0, &qword_1009803B8, &qword_1007C7418, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v8 = v12;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  (*(v13 + 8))(v8, v14);
  ArticleDiffablePagePresenter.onPrefetchLinkPresentations.getter();
  sub_10002849C(&qword_1009803C8, &unk_1007C7420);
  sub_100097060(&qword_1009803D0, &qword_1009803C8, &unk_1007C7420, &protocol conformance descriptor for SyncEvent<A>);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v9 = v15;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v18);
  return (*(v16 + 8))(v9, v17);
}

void sub_100304D00(uint64_t a1)
{
  v2 = v1;
  v4 = qword_10097FCD8;
  v5 = *(v1 + qword_10097FCD8);

  v6 = ArticleDiffablePagePresenter.todayCard.getter();
  v7 = sub_100309B90(v5, v6);

  v8 = *(v2 + v4);
  if (!v8 || (v7 & 1) != 0)
  {
    *(v2 + qword_10097FCB8) = a1;

    v9 = *(v2 + qword_1009CF4A8);

    if (!v8 || v9 == 0)
    {

      sub_100307B48();
    }
  }
}

uint64_t (*sub_100304DE4(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100309B6C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100274018;
}

uint64_t sub_100304E74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for ArticleDiffablePagePresenter.FooterLockup();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100306F7C();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for ArticleDiffablePagePresenter.FooterLockup.standard(_:))
  {
    (*(v8 + 96))(v10, v7);
    v12 = *v10;
    v13 = *(v1 + qword_10097FCF8);
    if (v13)
    {
      v14 = *(v1 + qword_1009CF3F0);
      v15 = *(v2 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
      v16 = v13;
      sub_1002D8A94(v12, v14, v15);
    }

    Lockup.impressionMetrics.getter();
LABEL_9:

    v21 = qword_1009CF4E0;
    swift_beginAccess();
    sub_1000315F8(v6, v2 + v21, &qword_100973D30, &unk_1007B1DC0);
    return swift_endAccess();
  }

  if (v11 == enum case for ArticleDiffablePagePresenter.FooterLockup.arcade(_:))
  {
    (*(v8 + 96))(v10, v7);
    v17 = *v10;
    v18 = *(v1 + qword_10097FCF8);
    if (v18)
    {
      v19 = *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
      v20 = v18;
      sub_1002D9464(v17, v19);
    }

    ArcadeLockup.impressionMetrics.getter();
    goto LABEL_9;
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t (*sub_100305128(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100309B10;
}

void sub_10030518C(unint64_t a1)
{
  sub_10002849C(&unk_100973270, &unk_1007B4688);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v2 = v11[0];
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  v4 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  if (v3 >= 1)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      ++v6;
      v11[0] = v7;
      dispatch thunk of LinkLoader.fetchPresentation(for:cacheEnabled:)();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = v7;
      v9[3] = v8;
      v9[4] = v2;
      swift_retain_n();

      v10 = static OS_dispatch_queue.main.getter();
      v11[3] = v5;
      v11[4] = &protocol witness table for OS_dispatch_queue;
      v11[0] = v10;
      Promise.then(perform:orCatchError:on:)();

      sub_100007000(v11);
    }

    while (v3 != v6);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t (*sub_1003053A8(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100309A50;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10019DA68;
}

unint64_t sub_100305438@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v2 = PageGridCache.init()();
  a1[3] = &type metadata for ArticlePageGridProvider;
  result = sub_1003099FC();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_100305490@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArticlePageShelfLayoutSpacingProvider;
  result = sub_1003099A8();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1003054C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for ArticlePageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_10030A0F8(&qword_100980370, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_10030A0F8(&qword_100980378, type metadata accessor for ArticlePageShelfSupplementaryProvider, &unk_1007C37A0);

  return v2;
}

void sub_1003055C4(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100980348, &unk_1007E0700);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10072A150(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  LODWORD(a1) = enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:);
  (*(v3 + 8))(v5, v2);
  if (v6 == a1)
  {
    v7 = ArticleDiffablePagePresenter.shouldTerminateOnClose.getter();
    sub_100305714(v7 & 1);
    sub_1003057F4();
  }
}

uint64_t sub_100305714(uint64_t result)
{
  v2 = *(v1 + qword_10097FCE8);
  v3 = result & 1;
  *(v1 + qword_10097FCE8) = result;
  if (v2 != v3)
  {
    v4 = qword_10097FCF0;
    v5 = *(v1 + qword_10097FCF0);
    *(v1 + qword_10097FCF0) = v3;
    if (v5 != v3)
    {
      v6 = [objc_opt_self() sharedCoordinator];
      v7 = v6;
      if (*(v1 + v4))
      {
        v8 = &selRef_beginDelayingNotifications;
      }

      else
      {
        v8 = &selRef_endDelayingNotifications;
      }

      [v6 *v8];
    }

    ArticleDiffablePagePresenter.shouldTerminateOnClose.getter();
    return AsyncEvent.post(_:)();
  }

  return result;
}

void sub_1003057F4()
{
  v1 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v1);
  v26 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShareSheetData.Metadata();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (ArticleDiffablePagePresenter.shareAction.getter())
  {
    v25 = v0;
    type metadata accessor for ShareSheetAction();
    if (swift_dynamicCastClass())
    {
      ShareSheetAction.data.getter();
      ShareSheetData.metadata.getter();

      if ((*(v8 + 88))(v10, v7) == enum case for ShareSheetData.Metadata.article(_:))
      {
        (*(v8 + 96))(v10, v7);
        v11 = *v10;
        v12 = ShareSheetArticleMetadata.id.getter();
        v24 = v13;
        v14 = ShareSheetArticleMetadata.text.getter();
        v23[1] = v15;
        v23[2] = v14;
        v23[0] = v11;
        ShareSheetArticleMetadata.subtitle.getter();
        ShareSheetAction.data.getter();
        ShareSheetData.url.getter();

        URL.absoluteString.getter();
        v17 = v16;
        (*(v4 + 8))(v6, v3);
        sub_1005761D4(v12, v24, v17, &v30);
        v33[0] = v30;
        v18 = v31;
        v29 = _swiftEmptyArrayStorage;
        sub_10019D860(v33, v27);
        sub_10030A0F8(&unk_100980350, &type metadata accessor for AppEntityVisualState, &protocol conformance descriptor for AppEntityVisualState);
        v24 = v18;

        sub_10002849C(&qword_100977EF8, &qword_1007C73F0);
        sub_100097060(&qword_100980360, &qword_100977EF8, &qword_1007C73F0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v27[0] = v30;
        v27[1] = v31;
        v28 = v32;
        v19 = objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
        sub_100309954();
        v20 = AppEntityViewAnnotation.init<A>(entity:state:)();
        v21 = [v25 view];
        if (v21)
        {
          v22 = v21;
          UIView.annotate(with:)();

          sub_1001964F0(v33);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        (*(v8 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }
}

void sub_100305C94()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v3 = sub_1001C66CC(20.0);
  [v3 setAlpha:0.0];
  [v3 addTarget:v0 action:"toggleMute" forControlEvents:64];
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 addSubview:v3];

    v6 = *&v1[qword_1009CF4D0];
    *&v1[qword_1009CF4D0] = v3;
    v7 = v3;
    if (v6)
    {
      [v6 removeFromSuperview];
    }

    v8 = [v1 viewIfLoaded];
    [v8 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_100305DC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  *(v4 + qword_10097FCD8) = a1;

  v12 = type metadata accessor for PageGrid();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v37 = a4;
  v14(v11, a4, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v15 = qword_10097FCE0;
  swift_beginAccess();

  sub_1000315F8(v11, v4 + v15, &qword_10097DBD0, &qword_1007BC750);
  swift_endAccess();
  ObjectType = swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17 && a2)
  {
    v18 = v17;
    v19 = swift_getObjectType();
    v20 = a2;
    v21 = a1;
    v22 = *(a3 + 136);
    v35 = v20;
    v23 = v20;
    v36 = a3;
    v24 = v22(ObjectType, a3);
    a1 = v21;
    v25 = sub_1005F3EC8(v21, v37, v24, *(v4 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph), v19, v18);
    v26 = *(v18 + 32);
    if (v26(v19, v18, v25))
    {
      v28 = v27;
      v29 = swift_getObjectType();
      (*(v28 + 32))((*(v4 + qword_1009CF498) & 1) == 0, v29, v28);
      swift_unknownObjectRelease();
    }

    if ((v26)(v19, v18))
    {
      v31 = v30;
      v32 = swift_getObjectType();
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = *(v31 + 88);

      v34(sub_10030A15C, v33, v32, v31);
      swift_unknownObjectRelease();
    }

    a2 = v35;
    a3 = v36;
  }

  sub_100306104(a1, a2, a3);
  sub_100306528();
}

void sub_100306104(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100306BA8(a2, a3, a1);
  v10 = v9;
  v11 = type metadata accessor for ArticleHeaderViewController();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isDisappearing] = 0;
  v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isAppearing] = 0;
  v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isCardModeEnabled] = 1;
  v13 = &v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets];
  v14 = *&UIEdgeInsetsZero.bottom;
  *v13 = *&UIEdgeInsetsZero.top;
  v13[1] = v14;
  *&v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_todayCard] = a1;
  v15 = &v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
  *v15 = a2;
  v15[1] = a3;
  v16 = &v12[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
  *v16 = v8;
  v16[1] = v10;
  v44.receiver = v12;
  v44.super_class = v11;

  a2;
  v17 = v8;
  v18 = objc_msgSendSuper2(&v44, "initWithNibName:bundle:", 0, 0);
  v18[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isCardModeEnabled] = v4[qword_1009CF498];
  sub_100768F60();
  v19 = [v4 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;

  v23 = [v18 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = &v18[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
  v26 = *&v18[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
  if (v26)
  {
    v27 = *(v25 + 1);
    v28 = *v25;
  }

  else
  {
    v27 = *&v18[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8];
    v28 = *&v18[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
    v26 = 0;
  }

  v29 = v26;
  v30 = sub_100769CEC(v28, v27, v22);
  v32 = v31;

  [v24 setFrame:{0.0, 0.0, v30, v32}];
  v33 = v18;
  sub_100306964(v18);
  v34 = [v4 collectionView];
  if (v34)
  {
    v35 = v34;
    ObjectType = swift_getObjectType();
    v37 = *(a3 + 208);
    v38 = v33;
    v39 = v35;
    LOBYTE(v35) = v37(ObjectType, a3);
    type metadata accessor for ArticleHeaderScrollObserver();
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    *(v40 + 24) = v39;
    *(v40 + 32) = v35 & 1;
    v41 = qword_10097FCD0;
    if (*&v4[qword_10097FCD0])
    {
      sub_10030A0F8(&unk_100980330, type metadata accessor for ArticleHeaderScrollObserver, &unk_1007B318C);
    }

    CompoundScrollObserver.removeChild(_:)();

    *&v4[v41] = v40;
    swift_retain_n();

    sub_10030A0F8(&unk_100980330, type metadata accessor for ArticleHeaderScrollObserver, &unk_1007B318C);
    CompoundScrollObserver.addChild(_:)();
  }

  v4[qword_1009CF4B0] = 1;
  v42 = [v4 viewIfLoaded];
  [v42 setNeedsLayout];

  v4[qword_10097FCA0] = 1;
  v43 = [v4 viewIfLoaded];
  [v43 setNeedsLayout];
}

void sub_100306528()
{
  v1 = v0;
  v2 = type metadata accessor for VideoPlayerState();
  __chkstk_darwin(v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = *(v0 + qword_10097FCC0);
  if (!v10)
  {
    return;
  }

  v41 = v7;
  v42 = v6;
  v11 = &v10[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
  v12 = *&v10[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8];
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 272);
  v43 = v10;
  if (v14(ObjectType, v12) & 1) != 0 || (v15 = *(v11 + 1), v16 = swift_getObjectType(), (v17 = (*(v15 + 264))(v16, v15)) != 0) && (v18 = v17, v19 = sub_1004DFC98(), v18, (v19))
  {
    if (!*(v1 + qword_1009CF4D0))
    {
      sub_100305C94();
    }
  }

  v20 = *(v1 + qword_1009CF4D0);
  if (v20)
  {
    v21 = *(v11 + 1);
    v22 = swift_getObjectType();
    v23 = *(v21 + 264);
    v24 = v20;
    v25 = v23(v22, v21);
    if (v25)
    {
      v26 = v25;
      if (sub_1004DFC98())
      {
        v27 = qword_100988CE0;
        v28 = *&v26[qword_100988CE0];
        if (v28)
        {
          LOBYTE(v28) = [v28 isMuted];
        }

        v29 = v42;
        sub_1001C6984(v28);
        v30 = *&v26[v27];
        if (v30)
        {
          v31 = v30;
          dispatch thunk of VideoPlayer.state.getter();

          v32 = v41;
          (*(v41 + 32))(v9, v4, v29);
        }

        else
        {
          v32 = v41;
          (*(v41 + 104))(v9, enum case for VideoPlayerState.unknown(_:), v29);
        }

        if ((*(v32 + 88))(v9, v29) != enum case for VideoPlayerState.playing(_:) || (v34 = 1.0, (sub_1004DFC98() & 1) == 0))
        {
          v34 = 0.0;
        }

        (*(v32 + 8))(v9, v29);
        [v24 alpha];
        if (v35 == v34)
        {
        }

        else
        {
          v36 = objc_opt_self();
          v37 = swift_allocObject();
          *(v37 + 16) = v24;
          *(v37 + 24) = v34;
          aBlock[4] = sub_100309940;
          aBlock[5] = v37;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100007A08;
          aBlock[3] = &unk_1008BDBC0;
          v38 = _Block_copy(aBlock);
          v39 = v24;

          [v36 animateWithDuration:4 delay:v38 options:0 animations:0.15 completion:0.0];

          _Block_release(v38);
        }

        return;
      }
    }

    else
    {
    }
  }

  v33 = v43;
}

void sub_100306964(void *a1)
{
  v3 = qword_10097FCC0;
  v4 = *&v1[qword_10097FCC0];
  if (v4)
  {
    v5 = v4;
    [v5 willMoveToParentViewController:0];
    [v5 removeFromParentViewController];
    v6 = [v5 viewIfLoaded];
    [v6 removeFromSuperview];

    [v5 didMoveToParentViewController:0];
    v7 = *&v1[v3];
  }

  else
  {
    v7 = 0;
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    [v8 willMoveToParentViewController:v1];
    [v1 addChildViewController:v8];
    if ([v1 isViewLoaded])
    {
      sub_1003009E4();
    }

    [v8 didMoveToParentViewController:v1];
  }
}

id sub_100306ABC(void *a1, id a2, SEL *a3, SEL *a4)
{
  result = [a2 *a3];
  if (result)
  {
    v8 = result;
    [a1 frame];
    v10 = v9;
    v12 = v11;
    v13 = [a2 *a4];
    [v8 convertPoint:v13 fromView:{v10, v12}];
    v15 = v14;
    v17 = v16;

    [a1 frame];

    return [a1 setFrame:{v15, v17}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100306BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v4 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-v5];
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 136);
  if (v12(ObjectType, a2) != 4 && v12(ObjectType, a2) != 6)
  {
    return 0;
  }

  (*(a2 + 112))(ObjectType, a2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_10097DBD0, &qword_1007BC750);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = sub_1004EE154(v28, 5);
  v15 = v14;
  v16 = swift_getObjectType();
  if (!v13 || v16 == v13)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = [v27 traitCollection];
  v18 = UITraitCollection.isRegularPad.getter();
  v26 = type metadata accessor for ListTodayCardCollectionViewCell(0);
  if (!swift_dynamicCastClass())
  {

LABEL_15:
    v21 = 1;
    goto LABEL_16;
  }

  v19 = *(v15 + 160);
  v24 = v18;
  v18 = v19(v13, v15);

  v20 = v18 == 6;
  LOBYTE(v18) = v24;
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = 6;
LABEL_16:
  if ((v18 & 1) == 0)
  {
    v21 = 5;
  }

  LODWORD(v25) = v21;
  (*(a2 + 216))(v29, ObjectType, a2);
  (*(v15 + 224))(v29, v13, v15);
  (*(v15 + 296))(v28, v25, v10, *&v27[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph], v13, v15);
  if (swift_dynamicCastClass())
  {
    (*(v15 + 96))(1, v13, v15);
  }

  (*(v8 + 8))(v10, v7);
  return v17;
}

void sub_100306F7C()
{
  v1 = v0;
  v2 = qword_10097FCF8;
  v3 = *&v0[qword_10097FCF8];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = [v0 collectionView];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(type metadata accessor for FooterLockupView()) init];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10021C098(sub_100309B34, v8);

    v9 = *&v1[v2];
    *&v1[v2] = v7;
    v10 = v7;

    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v12 addSubview:v13];

      type metadata accessor for ArticleFooterViewScrollObserver();
      v14 = swift_allocObject();
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = xmmword_1007C7310;
      *(v14 + 64) = 0x4028000000000000;
      *(v14 + 16) = v13;
      *(v14 + 24) = v6;
      *(v14 + 72) = 0;
      v15 = v13;
      v21 = v6;
      sub_1001FA78C(0);

      v16 = qword_10097FD00;
      if (*&v1[qword_10097FD00])
      {
        sub_10030A0F8(&qword_1009803D8, type metadata accessor for ArticleFooterViewScrollObserver, &unk_1007C0480);
      }

      CompoundScrollObserver.removeChild(_:)();

      *&v1[v16] = v14;
      swift_retain_n();

      sub_10030A0F8(&qword_1009803D8, type metadata accessor for ArticleFooterViewScrollObserver, &unk_1007C0480);
      CompoundScrollObserver.addChild(_:)();

      v17 = *&v1[v16];
      if (v17)
      {
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = *(v17 + 32);
        v20 = *(v17 + 40);
        *(v17 + 32) = sub_100309B64;
        *(v17 + 40) = v18;

        sub_10001F63C(v19, v20);

        if (*&v1[v16])
        {

          sub_1001FA78C(1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1003072D0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    a2();
  }

  return result;
}

void sub_100307354(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1003073B0(a1 & 1);
  }
}

uint64_t sub_1003073B0(int a1)
{
  v18 = a1;
  v2 = type metadata accessor for Date();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ImpressionMetrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_1009CF4E0;
  swift_beginAccess();
  sub_100031660(v1 + v12, v7, &qword_100973D30, &unk_1007B1DC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10002B894(v7, &qword_100973D30, &unk_1007B1DC0);
  }

  (*(v9 + 32))(v11, v7, v8);
  TimedMetricsPagePresenter.impressionsTracker.getter();
  swift_getObjectType();
  Date.init()();
  v14 = (v17 + 8);
  v15 = (v9 + 8);
  if (v18)
  {
    dispatch thunk of ImpressionsTracker.elementDidEnterView(_:on:)();
  }

  else
  {
    dispatch thunk of ImpressionsTracker.elementDidLeaveView(_:on:)();
  }

  swift_unknownObjectRelease();
  (*v14)(v4, v2);
  return (*v15)(v11, v8);
}

double sub_100307670()
{
  v1 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.dismissedByBackButton(_:), v1, v3);
  type metadata accessor for ArticleDiffablePagePresenter();
  sub_10030A0F8(&qword_100980400, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  MetricsPagePresenter.observe(lifecycleEvent:)();
  (*(v2 + 8))(v5, v1);
  if (v0[qword_10097FCE8] == 1)
  {
    static ResilientDeepLinkController.removeAllDeepLinks()();
    v6 = objc_opt_self();
    v7 = [v6 sharedApplication];
    v8 = [v7 delegate];

    if (v8)
    {
      type metadata accessor for AppDelegate();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        *(v10 + OBJC_IVAR____TtC8AppStore11AppDelegate_terminateWhenInBackground) = 1;
        v11 = [v6 sharedApplication];
        [v11 suspend];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v12 = *&v0[qword_1009CF4B8];
    if (v12)
    {
      v13 = *&v0[qword_1009CF4B8 + 8];

      v12(v14);
      sub_10001F63C(v12, v13);
    }

    else
    {
      [v0 dismissViewControllerAnimated:1 completion:0];
    }
  }

  return result;
}

void sub_1003078D4(void *a1)
{
  v1 = a1;
  sub_100307670();
}

void sub_10030791C()
{
  v1 = *(v0 + qword_10097FCC0);
  if (v1)
  {
    v2 = v0;
    v3 = *(v1 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8);
      v5 = *(v1 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
    }

    else
    {
      v6 = v1 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell;
      v4 = *(v6 + 8);
      v5 = *v6;
    }

    ObjectType = swift_getObjectType();
    v8 = *(v4 + 264);
    v9 = v3;
    v15 = v8(ObjectType, v4);

    if (v15)
    {
      sub_1004E3134();
      v10 = v15;
      v11 = *(v2 + qword_1009CF4D0);
      if (v11)
      {
        v12 = *&v15[qword_100988CE0];
        v13 = v11;
        if (v12)
        {
          v14 = [v12 isMuted];
        }

        else
        {
          v14 = 1;
        }

        sub_1001C6984(v14);

        v10 = v15;
      }
    }
  }
}

void sub_100307A78(void *a1)
{
  v1 = a1;
  sub_10030791C();
}

char *sub_100307AC0(char *result)
{
  v1 = *&result[qword_1009CF4C0];
  if (v1)
  {
    v2 = *&result[qword_1009CF4C0 + 8];
    v3 = result;
    v4 = sub_10000827C(v1, v2);
    v1(v4);

    return sub_10001F63C(v1, v2);
  }

  return result;
}

void sub_100307B48()
{
  v1 = *(v0 + qword_10097FCB8);
  if (v1)
  {
    v2 = v0;

    TodayCard.media.getter();
    v3 = TodayCardMedia.kind.getter();

    v4 = qword_10097FCC0;
    v5 = *(v2 + qword_10097FCC0);
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
      if (v6)
      {
        v7 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8);
        v8 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
      }

      else
      {
        v7 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8);
        v8 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell);
        v6 = 0;
      }

      v12 = v6;
      v11 = v8;
      v10 = v11;
    }

    else
    {
      sub_1004AFDA4(v3);
      v7 = v9;
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      if (!*(v2 + v4))
      {
        type metadata accessor for RiverTodayCardCollectionViewCell(0);
        if (swift_dynamicCastClass())
        {
          sub_1003042A4(v1, v10, v7, 7);
        }

        sub_100306104(v1, v10, v7);
      }

      v11 = 0;
    }

    sub_1003042A4(v1, v10, v7, 7);
    v13 = *(v2 + v4);
    if (!v13 || ((v14 = *(v13 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell), swift_getObjectType(), swift_conformsToProtocol2()) ? (v15 = v14 == 0) : (v15 = 1), v15))
    {
    }

    else
    {
      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      v16 = v14;
      inject<A, B>(_:from:)();
      swift_getObjectType();
      v17 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
      v18 = v16;
      dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
    }
  }
}

void sub_100307DF8(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for OSLogger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v32 = a1[1];
  v33 = v13;
  if (qword_10096D118 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009CE200);
  (*(v10 + 16))(v12, v14, v9);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  v34 = a2;
  dispatch thunk of EditorialLink.url.getter();
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_10002B894(v8, &qword_100982460, &unk_1007B5C90);
    aBlock = 0u;
    v38 = 0u;
  }

  else
  {
    *(&v38 + 1) = v15;
    v17 = sub_1000056E0(&aBlock);
    (*(v16 + 32))(v17, v8, v15);
  }

  static LogMessage.sensitive(_:)();
  sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
  Logger.debug(_:)();

  (*(v10 + 8))(v12, v9);
  v18 = v36;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = *&Strong[qword_10097FCC8];
    if (v21)
    {

      v22 = swift_allocObject();
      v23 = v34;
      v24 = v32;
      v25 = v33;
      v22[2] = v35;
      v22[3] = v25;
      v22[4] = v24;
      v22[5] = v23;
      v22[6] = v18;
      v41 = 1;
      v31 = *(v21 + 32);
      v26 = swift_allocObject();
      v26[2] = v21;
      v26[3] = sub_100309A88;
      v26[4] = v22;
      v26[5] = &v41;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_100309A98;
      *(v27 + 24) = v26;
      v39 = sub_10006F258;
      v40 = v27;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v38 = sub_1000489A8;
      *(&v38 + 1) = &unk_1008BDCD8;
      v28 = _Block_copy(&aBlock);

      v29 = v24;
      v30 = v35;
      sub_100309AA4(v25, v29);

      dispatch_sync(v31, v28);
      _Block_release(v28);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if (v28)
      {
        __break(1u);
      }

      else
      {
        if ((v41 & 1) == 0)
        {
          sub_100308348(v30, v33, v32, v34, v18);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100308348(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v23 = a3;
  v28 = a4;
  dispatch thunk of LinkLoader.setPresentation(_:forKey:)();
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a4;
  v26 = sub_100309B08;
  v27 = v16;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100007A08;
  v25 = &unk_1008BDD28;
  v17 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10030A0F8(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v21 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v20);
}

void sub_100308670(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    ArticleDiffablePagePresenter.reloadLink(_:)();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 collectionView];

    if (v6)
    {
      v7 = [v6 collectionViewLayout];

      [v7 invalidateLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100308774()
{
  v0 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for OSLogger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D118 != -1)
  {
    swift_once();
  }

  v7 = sub_1000056A8(v3, qword_1009CE200);
  (*(v4 + 16))(v6, v7, v3);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  dispatch thunk of EditorialLink.url.getter();
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_10002B894(v2, &qword_100982460, &unk_1007B5C90);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v8;
    v10 = sub_1000056E0(&v12);
    (*(v9 + 32))(v10, v2, v8);
  }

  static LogMessage.sensitive(_:)();
  sub_10002B894(&v12, &unk_1009711D0, &unk_1007B1A10);
  Logger.debug(_:)();

  return (*(v4 + 8))(v6, v3);
}

id sub_100308A98(id result, uint64_t a2, uint64_t a3)
{
  if ((*(result + qword_1009CF498) & 1) == 0)
  {
    v4.receiver = result;
    v4.super_class = swift_getObjectType();
    return objc_msgSendSuper2(&v4, "scrollViewDidScroll:", a3);
  }

  return result;
}

double sub_100308AF4()
{
  v0 = sub_100301D04();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 setHidden:1];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

double sub_100308BE4()
{
  v0 = sub_100301D04();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v4 setHidden:0];

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

uint64_t sub_100308CD4(void *a1)
{
  v1 = a1;
  sub_100307670();

  return 1;
}

uint64_t type metadata accessor for ArticleDiffablePageViewController(uint64_t a1)
{
  result = qword_10097FD30;
  if (!qword_10097FD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100308D50(uint64_t a1)
{
  sub_100308EB0(319, &qword_100977370, &type metadata accessor for PageGrid);
  if (v1 <= 0x3F)
  {
    sub_100308EB0(319, &qword_100973D20, &type metadata accessor for ImpressionMetrics);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_100308EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_100308F0C(int a1)
{
  v3 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[qword_10097FCD8];
  if (!v10)
  {
    return;
  }

  v11 = *&v1[qword_10097FCC0];
  if (!v11)
  {
    return;
  }

  v12 = v11 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = qword_10097FCE0;
  swift_beginAccess();
  sub_100031660(&v1[v15], v5, &qword_10097DBD0, &qword_1007BC750);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10002B894(v5, &qword_10097DBD0, &qword_1007BC750);
    return;
  }

  (*(v7 + 32))(v9, v5, v6);
  v37 = v1;
  v36 = a1;
  if (a1)
  {

    v13;
    v16 = [v1 traitCollection];
    v17 = UITraitCollection.isRegularPad.getter();
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    if (swift_dynamicCastClass())
    {
      ObjectType = swift_getObjectType();
      v19 = (*(v14 + 160))(ObjectType, v14);

      if (v19 == 6)
      {
        v20 = 6;
LABEL_15:
        v25 = v37;
        v30 = (v17 & 1) == 0;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v20 = 1;
    goto LABEL_15;
  }

  v21 = swift_getObjectType();
  v22 = *(v14 + 160);

  v23 = v13;
  v34 = v21;
  v35 = v23;
  v33 = v22;
  v24 = (v22)(v21, v14);
  v25 = v37;
  v26 = v24;
  if (v24 != 7)
  {
    goto LABEL_22;
  }

  v27 = [v37 traitCollection];
  v28 = UITraitCollection.isRegularPad.getter();
  type metadata accessor for ListTodayCardCollectionViewCell(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_17;
  }

  v29 = v33(v34, v14);

  if (v29 != 6)
  {
LABEL_17:
    v20 = 1;
    goto LABEL_18;
  }

  v20 = 6;
LABEL_18:
  v25 = v37;
  v30 = (v28 & 1) == 0;
LABEL_19:
  if (v30)
  {
    v26 = 5;
  }

  else
  {
    v26 = v20;
  }

LABEL_22:
  v31 = swift_getObjectType();
  (*(v14 + 296))(v10, v26, v9, *&v25[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph], v31, v14);
  if (v36)
  {
    sub_100306528();
  }

  [v13 layoutIfNeeded];
  v38 = v13;
  (*(*(v14 + 16) + 8))(v31);

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_100309324(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_100309370(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Dependency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1009CF490;
  *(v2 + v8) = [objc_allocWithZone(type metadata accessor for TodayArticleTransitioningDelegate(0)) init];
  *(v2 + qword_10097FCA0) = 0;
  *(v2 + qword_10097FCA8) = 0;
  *(v2 + qword_1009CF498) = 1;
  v9 = qword_1009CF4A0;
  sub_10002849C(&qword_100996830, &qword_1007C73E0);
  swift_allocObject();
  *(v2 + v9) = AsyncEvent.init()();
  *(v2 + qword_1009CF4A8) = 1;
  *(v2 + qword_1009CF4B0) = 0;
  v10 = qword_10097FCB0;
  type metadata accessor for TodayCardOverlayReusePool();
  swift_allocObject();
  v11 = sub_100472D20(2);
  *(v2 + v10) = v11;
  v12 = (v2 + qword_1009CF4B8);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + qword_1009CF4C0);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + qword_1009CF4C8) = 0;
  *(v2 + qword_1009CF4D0) = 0;
  *(v2 + qword_1009CF4D8) = 0;
  *(v2 + qword_10097FCB8) = 0;
  *(v2 + qword_10097FCC0) = 0;
  *(v2 + qword_10097FCC8) = 0;
  *(v2 + qword_10097FCD0) = 0;
  *(v2 + qword_10097FCD8) = 0;
  v14 = qword_10097FCE0;
  v15 = type metadata accessor for PageGrid();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  *(v2 + qword_10097FCE8) = 0;
  *(v2 + qword_10097FCF0) = 0;
  *(v2 + qword_10097FCF8) = 0;
  *(v2 + qword_10097FD00) = 0;
  v16 = qword_1009CF4E0;
  v17 = type metadata accessor for ImpressionMetrics();
  (*(*(v17 - 8) + 56))(v2 + v16, 1, 1, v17);
  v20[1] = v11;

  Dependency.init<A>(satisfying:with:)();
  v18 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  (*(v5 + 8))(v7, v4);
  return sub_1003BD0B0(a1, v18);
}

char *sub_10030969C(uint64_t a1, uint64_t a2, char a3)
{
  objc_allocWithZone(type metadata accessor for ArticleDiffablePageViewController(0));

  v6 = sub_100309370(a1);

  if (a3)
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v7 = type metadata accessor for StoreNavigationController();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC8AppStore25StoreNavigationController_objectGraph] = a2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16.receiver = v8;
    v16.super_class = v7;

    v10 = objc_msgSendSuper2(&v16, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v10 setDelegate:{v10, v16.receiver, v16.super_class}];
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007B0B70;
    *(v11 + 32) = v6;
    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v12 = v6;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setViewControllers:isa];

    v6 = sub_100750DA0(v10, v12);
    [v6 setModalPresentationStyle:4];
    [v6 setTransitioningDelegate:*&v12[qword_1009CF490]];
    [v6 setModalPresentationCapturesStatusBarAppearance:1];
  }

  else
  {
    v14 = v6[qword_1009CF498];
    v6[qword_1009CF498] = 0;
    sub_100300898(v14);
    sub_100300270(0, 0);
  }

  return v6;
}

unint64_t sub_100309954()
{
  result = qword_100980368;
  if (!qword_100980368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980368);
  }

  return result;
}

unint64_t sub_1003099A8()
{
  result = qword_100980380;
  if (!qword_100980380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980380);
  }

  return result;
}

unint64_t sub_1003099FC()
{
  result = qword_100980388;
  if (!qword_100980388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980388);
  }

  return result;
}

void sub_100309AA4(uint64_t result, void *a2)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    sub_100309AB8(result, a2);
  }
}

void sub_100309AB8(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {

    v3 = a2;
  }

  else
  {
  }
}

uint64_t sub_100309B90(uint64_t a1, uint64_t a2)
{
  if (!a1 || (v4 = TodayCard.overlay.getter()) == 0 || (v19[0] = v4, type metadata accessor for TodayCardOverlay(), sub_10002849C(&qword_1009803F8, &qword_1007C7448), (swift_dynamicCast() & 1) == 0))
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  if (!a2 || (v5 = TodayCard.overlay.getter()) == 0 || (*&v17[0] = v5, type metadata accessor for TodayCardOverlay(), sub_10002849C(&qword_1009803F8, &qword_1007C7448), (swift_dynamicCast() & 1) == 0))
  {
    memset(v19, 0, 40);
  }

  if (!a1 || (*&v15[0] = TodayCard.media.getter(), type metadata accessor for TodayCardMedia(), sub_10002849C(&qword_1009803F0, &qword_1007C7440), (swift_dynamicCast() & 1) == 0))
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  if (!a2 || (v13[0] = TodayCard.media.getter(), type metadata accessor for TodayCardMedia(), sub_10002849C(&qword_1009803F0, &qword_1007C7440), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  sub_100031660(v20, v13, &qword_1009803E0, &qword_1007C7430);
  if (v14)
  {
    sub_10002A400(v13, v14);
    v6 = dispatch thunk of PurchasableTodayCardOverlay.offerAdamIds.getter();
    sub_100007000(v13);
  }

  else
  {
    sub_10002B894(v13, &qword_1009803E0, &qword_1007C7430);
    v6 = 0;
  }

  sub_100031660(v19, v13, &qword_1009803E0, &qword_1007C7430);
  if (v14)
  {
    sub_10002A400(v13, v14);
    v7 = dispatch thunk of PurchasableTodayCardOverlay.offerAdamIds.getter();
    sub_100007000(v13);
    if (v6)
    {
      if (v7)
      {
        v8 = sub_1006E23EC(v6, v7);

LABEL_26:

        goto LABEL_28;
      }

LABEL_23:
      v8 = 0;
      goto LABEL_26;
    }

    if (v7)
    {
      v8 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    sub_10002B894(v13, &qword_1009803E0, &qword_1007C7430);
    if (v6)
    {
      goto LABEL_23;
    }
  }

  v8 = 1;
LABEL_28:
  sub_100031660(v17, v13, &qword_1009803E8, &qword_1007C7438);
  if (v14)
  {
    sub_10002A400(v13, v14);
    v9 = dispatch thunk of PurchasableTodayCardMedia.offerAdamIds.getter();
    sub_100007000(v13);
  }

  else
  {
    sub_10002B894(v13, &qword_1009803E8, &qword_1007C7438);
    v9 = 0;
  }

  sub_100031660(v15, v13, &qword_1009803E8, &qword_1007C7438);
  if (v14)
  {
    sub_10002A400(v13, v14);
    v10 = dispatch thunk of PurchasableTodayCardMedia.offerAdamIds.getter();
    sub_100007000(v13);
    if (v9)
    {
      if (v10)
      {
        v11 = sub_1006E23EC(v9, v10);

LABEL_39:

        goto LABEL_41;
      }

LABEL_36:
      v11 = 0;
      goto LABEL_39;
    }

    if (v10)
    {
      v11 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    sub_10002B894(v13, &qword_1009803E8, &qword_1007C7438);
    if (v9)
    {
      goto LABEL_36;
    }
  }

  v11 = 1;
LABEL_41:
  sub_100031660(v20, v13, &qword_1009803E0, &qword_1007C7430);
  if (v14)
  {
    sub_10002A400(v13, v14);
    dispatch thunk of PurchasableTodayCardOverlay.offerAdamIds.getter();
    sub_100007000(v13);

    if (v8)
    {
      v11 = 1;
      goto LABEL_48;
    }
  }

  else
  {
    sub_10002B894(v13, &qword_1009803E0, &qword_1007C7430);
  }

  sub_100031660(v17, v13, &qword_1009803E8, &qword_1007C7438);
  if (v14)
  {
    sub_10002A400(v13, v14);
    dispatch thunk of PurchasableTodayCardMedia.offerAdamIds.getter();
    sub_100007000(v13);
  }

  else
  {
    sub_10002B894(v13, &qword_1009803E8, &qword_1007C7438);
    v11 = 0;
  }

LABEL_48:
  sub_10002B894(v15, &qword_1009803E8, &qword_1007C7438);
  sub_10002B894(v17, &qword_1009803E8, &qword_1007C7438);
  sub_10002B894(v19, &qword_1009803E0, &qword_1007C7430);
  sub_10002B894(v20, &qword_1009803E0, &qword_1007C7430);
  return v11 & 1;
}

uint64_t sub_10030A0F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10030A17C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = type metadata accessor for ComponentSeparator.Position();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v35 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v28 = &v27 - v6;
  v7 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v34 = type metadata accessor for MediumLockupLayout.Metrics();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v14 + 8))(v16, v13);
  if (v41 && (v17 = ShelfHeader.hasTrailingArtwork.getter(), , (v17 & 1) != 0))
  {
    v18 = 1;
    v19 = v38;
  }

  else
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v20 = v41;
    sub_100631334(v12);

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v21 = v41;
    v22 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if ((v22 & 1) == 0)
    {
      MediumLockupLayout.Metrics.artworkSize.getter();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v39 = v40;
      Conditional.evaluate(with:)();
      swift_unknownObjectRelease();
      (*(v27 + 8))(v9, v7);
      v23 = v28;
      MediumLockupLayout.Metrics.artworkMargin.getter();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v24 = v31;
      static Dimensions.defaultRoundingRule.getter();
      Conditional<>.value(in:rounded:)();
      swift_unknownObjectRelease();
      (*(v32 + 8))(v24, v33);
      (*(v29 + 8))(v23, v30);
    }

    (*(v36 + 104))(v35, enum case for ComponentSeparator.Position.bottom(_:), v37);
    v19 = v38;
    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    (*(v10 + 8))(v12, v34);
    v18 = 0;
  }

  v25 = type metadata accessor for ComponentSeparator();
  return (*(*(v25 - 8) + 56))(v19, v18, 1, v25);
}

__n128 sub_10030A76C()
{
  v0 = sub_10002849C(&unk_100980420, &qword_1007E0730);
  v44 = *(v0 - 8);
  v45 = v0;
  __chkstk_darwin(v0);
  v43 = &v40 - v1;
  v2 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v40 - v7;
  __chkstk_darwin(v8);
  v47 = &v40 - v9;
  __chkstk_darwin(v10);
  v46 = &v40 - v11;
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_100005644(v15, qword_1009CF4E8);
  v16 = sub_1000056A8(v15, qword_1009CF4E8);
  if (qword_10096D7F0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v2, qword_1009CF820);
  v42 = v3;
  v18 = *(v3 + 16);
  v18(v14, v17, v2);
  if (qword_10096D7E0 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v2, qword_1009CF7F0);
  v18(v46, v19, v2);
  if (qword_10096D808 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v2, qword_1009CF868);
  v18(v47, v20, v2);
  v69 = &type metadata for CGFloat;
  v70 = &protocol witness table for CGFloat;
  *&v68 = 0x4031000000000000;
  if (qword_10096D7A8 != -1)
  {
    swift_once();
  }

  v41 = v14;
  v49 = v5;
  v21 = sub_1000056A8(v2, qword_1009CF748);
  v18(v48, v21, v2);
  v67 = &protocol witness table for CGFloat;
  v66 = &type metadata for CGFloat;
  *&v65 = 0x4034000000000000;
  v63 = &type metadata for Double;
  v64 = &protocol witness table for Double;
  *&v62 = 0;
  v60 = &type metadata for Double;
  v61 = &protocol witness table for Double;
  *&v59 = 0;
  if (qword_10096D850 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for StaticDimension();
  v23 = sub_1000056A8(v22, qword_1009CF940);
  v57 = v22;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_1000056E0(&v56);
  v25 = *(*(v22 - 8) + 16);
  v25(v24, v23, v22);
  if (qword_10096D858 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v22, qword_1009CF958);
  v54 = v22;
  v55 = &protocol witness table for StaticDimension;
  v27 = sub_1000056E0(&v53);
  v25(v27, v26, v22);
  if (qword_10096D7B0 != -1)
  {
    swift_once();
  }

  v28 = v45;
  v29 = sub_1000056A8(v45, qword_1009CF760);
  v31 = v43;
  v30 = v44;
  (*(v44 + 16))(v43, v29, v28);
  v52 = &protocol witness table for CGFloat;
  v51 = &type metadata for CGFloat;
  *&v50 = 0x4080E00000000000;
  v32 = v49;
  if (qword_10096D7C0 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v2, qword_1009CF790);
  v18(v32, v33, v2);
  if (qword_10096D7C8 != -1)
  {
    swift_once();
  }

  v34 = sub_1000056A8(v2, qword_1009CF7A8);
  v18((v16 + v15[19]), v34, v2);
  v35 = (v16 + v15[20]);
  v35[3] = &type metadata for CGFloat;
  v35[4] = &protocol witness table for CGFloat;
  *v35 = 0x4080580000000000;
  v36 = (v16 + v15[21]);
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x4077000000000000;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v37 = *(v42 + 32);
  v37(v16 + v15[7], v41, v2);
  v37(v16 + v15[6], v46, v2);
  v37(v16 + v15[8], v47, v2);
  sub_100005A38(&v68, v16 + v15[9]);
  v37(v16 + v15[10], v48, v2);
  sub_100005A38(&v65, v16 + v15[14]);
  sub_100005A38(&v62, v16 + v15[15]);
  sub_100005A38(&v59, v16 + v15[16]);
  sub_100005A38(&v56, v16 + v15[11]);
  sub_100005A38(&v53, v16 + v15[12]);
  (*(v30 + 32))(v16 + v15[13], v31, v28);
  sub_100005A38(&v50, v16 + v15[17]);
  v37(v16 + v15[18], v49, v2);
  result = *&UIEdgeInsetsZero.top;
  v39 = *&UIEdgeInsetsZero.bottom;
  *v16 = *&UIEdgeInsetsZero.top;
  *(v16 + 16) = v39;
  return result;
}

uint64_t sub_10030AEE4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v104 = a2;
  v100 = type metadata accessor for OfferButtonMetrics();
  v102 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v101 = &v98 - v4;
  v103 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  __chkstk_darwin(v103);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v98 - v12;
  __chkstk_darwin(v13);
  v119 = &v98 - v14;
  v15 = sub_10002849C(&unk_100980410, &unk_1007CCF30);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v120 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v98 - v19;
  __chkstk_darwin(v20);
  v116 = &v98 - v21;
  v22 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v117 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v115 = &v98 - v26;
  __chkstk_darwin(v27);
  v114 = &v98 - v28;
  __chkstk_darwin(v29);
  v31 = &v98 - v30;
  v131 = &type metadata for Double;
  v132 = &protocol witness table for Double;
  v129 = &protocol witness table for Double;
  *&v130 = 0;
  v128 = &type metadata for Double;
  *&v127 = 0;
  if (qword_10096D830 != -1)
  {
    swift_once();
  }

  v32 = sub_1000056A8(v22, qword_1009CF8E0);
  v33 = *(v23 + 16);
  v105 = v31;
  v33(v31, v32, v22);
  if (qword_10096D7D0 != -1)
  {
    swift_once();
  }

  v34 = sub_1000056A8(v22, qword_1009CF7C0);
  *&v123 = v23 + 16;
  *&v122 = v33;
  v33(v114, v34, v22);
  if (qword_10096D700 != -1)
  {
    swift_once();
  }

  v106 = v23;
  v35 = sub_1000056A8(v15, qword_1009CF530);
  v107 = v16;
  v36 = *(v16 + 16);
  v36(v116, v35, v15);
  if (qword_10096D878 != -1)
  {
    swift_once();
  }

  v37 = sub_1000056A8(v7, qword_1009CF9B8);
  v109 = v8;
  v38 = *(v8 + 16);
  v38(v119, v37, v7);
  if (qword_10096D800 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v22, qword_1009CF850);
  (v122)(v115, v39, v22);
  if (qword_10096D718 != -1)
  {
    swift_once();
  }

  v40 = sub_1000056A8(v15, qword_1009CF578);
  v36(v118, v40, v15);
  if (qword_10096D888 != -1)
  {
    swift_once();
  }

  v41 = sub_1000056A8(v7, qword_1009CF9E8);
  v38(v121, v41, v7);
  if (qword_10096D818 != -1)
  {
    swift_once();
  }

  v42 = sub_1000056A8(v22, qword_1009CF898);
  (v122)(v117, v42, v22);
  if (qword_10096D728 != -1)
  {
    swift_once();
  }

  v43 = sub_1000056A8(v15, qword_1009CF5A8);
  v36(v120, v43, v15);
  if (qword_10096D890 != -1)
  {
    swift_once();
  }

  v44 = sub_1000056A8(v7, qword_1009CFA00);
  v108 = v10;
  v110 = v7;
  v38(v10, v44, v7);
  if (qword_10096D7A0 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for StaticDimension();
  v46 = sub_1000056A8(v45, qword_1009CF730);
  v125 = v45;
  v126 = &protocol witness table for StaticDimension;
  v47 = sub_1000056E0(&v124);
  v48 = (*(v45 - 8) + 16);
  v49 = *v48;
  (*v48)(v47, v46, v45);
  v50 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v112 = v15;
  v111 = v48;
  if (v50)
  {
    v51 = v6;
    v52 = v36;
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v53 = qword_100991010;
  }

  else
  {
    v51 = v6;
    v52 = v36;
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v53 = qword_100991028;
  }

  v54 = v100;
  v55 = sub_1000056A8(v100, v53);
  v56 = v102;
  v57 = v99;
  (*(v102 + 16))(v99, v55, v54);
  v58 = v101;
  (*(v56 + 32))(v101, v57, v54);
  OfferButtonMetrics.inAppPurchaseTextSpace.getter();
  (*(v56 + 8))(v58, v54);
  if (qword_10096D730 != -1)
  {
    swift_once();
  }

  v59 = v112;
  v60 = sub_1000056A8(v112, qword_1009CF5C0);
  v61 = v103;
  v52(&v51[*(v103 + 20)], v60, v59);
  static TextConfiguration.maxSubtitleWidth(with:)();
  v62 = &v51[*(v61 + 24)];
  *(v62 + 3) = &type metadata for CGFloat;
  *(v62 + 4) = &protocol witness table for CGFloat;
  *v62 = v63;
  static TextConfiguration.subtitleHorizontalSpacing.getter();
  v64 = *(v61 + 28);
  v113 = v51;
  v65 = &v51[v64];
  *(v65 + 3) = &type metadata for CGFloat;
  *(v65 + 4) = &protocol witness table for CGFloat;
  *v65 = v66;
  v67 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v68 = v104;
  v69 = (v104 + v67[20]);
  v69[3] = &type metadata for CGFloat;
  v69[4] = &protocol witness table for CGFloat;
  *v69 = 0x4030000000000000;
  v70 = v122;
  if (qword_10096D848 != -1)
  {
    swift_once();
  }

  v71 = sub_1000056A8(v45, qword_1009CF928);
  v72 = (v68 + v67[21]);
  v72[3] = v45;
  v72[4] = &protocol witness table for StaticDimension;
  v73 = sub_1000056E0(v72);
  v74 = v49;
  v49(v73, v71, v45);
  if (qword_10096D860 != -1)
  {
    swift_once();
  }

  v75 = sub_1000056A8(v22, qword_1009CF970);
  v76 = v68;
  v77 = v22;
  v70(v68 + v67[22], v75, v22);
  v78 = v112;
  if (qword_10096D868 != -1)
  {
    swift_once();
  }

  v79 = *&UIEdgeInsetsZero.top;
  v122 = *&UIEdgeInsetsZero.bottom;
  v123 = v79;
  v80 = sub_1000056A8(v45, qword_1009CF988);
  v81 = (v68 + v67[23]);
  v81[3] = v45;
  v81[4] = &protocol witness table for StaticDimension;
  v82 = sub_1000056E0(v81);
  v74(v82, v80, v45);
  v83 = v105;
  if (qword_10096D828 != -1)
  {
    swift_once();
  }

  v84 = sub_1000056A8(v45, qword_1009CF8C8);
  v85 = (v76 + v67[24]);
  v85[3] = v45;
  v85[4] = &protocol witness table for StaticDimension;
  v86 = sub_1000056E0(v85);
  v74(v86, v84, v45);
  v87 = v122;
  *v76 = v123;
  *(v76 + 16) = v87;
  sub_100005A38(&v130, v76 + 32);
  sub_100005A38(&v127, v76 + 72);
  *(v76 + 112) = 0;
  *(v76 + 120) = 0;
  v88 = v67[8];
  v89 = *(v106 + 32);
  *&v123 = v89;
  v89(v76 + v88, v83, v77);
  v90 = v76 + v67[9];
  v98 = v77;
  v89(v90, v114, v77);
  v91 = *(v107 + 32);
  v92 = v78;
  v91(v76 + v67[10], v116, v78);
  v93 = *(v109 + 32);
  v94 = v110;
  v93(v76 + v67[11], v119, v110);
  v95 = v77;
  v96 = v123;
  (v123)(v76 + v67[12], v115, v95);
  v91(v76 + v67[13], v118, v92);
  v93(v76 + v67[14], v121, v94);
  v96(v76 + v67[15], v117, v98);
  v91(v76 + v67[16], v120, v92);
  v93(v76 + v67[17], v108, v94);
  sub_100005A38(&v124, v76 + v67[18]);
  return sub_10030F854(v113, v76 + v67[19]);
}

uint64_t sub_10030BD24()
{
  v0 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v42 = &v36 - v11;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_100005644(v15, qword_1009CF500);
  v16 = sub_1000056A8(v15, qword_1009CF500);
  v57 = &type metadata for Double;
  v58 = &protocol witness table for Double;
  v55 = &protocol witness table for Double;
  *&v56 = 0;
  v54 = &type metadata for Double;
  *&v53 = 0;
  if (qword_10096D7D8 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v0, qword_1009CF7D8);
  v18 = *(v1 + 16);
  v38 = v14;
  v18(v14, v17, v0);
  if (qword_10096D800 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v0, qword_1009CF850);
  v18(v42, v19, v0);
  v18(v9, v19, v0);
  if (qword_10096D818 != -1)
  {
    swift_once();
  }

  v39 = v9;
  v43 = v3;
  v20 = sub_1000056A8(v0, qword_1009CF898);
  v40 = v6;
  v18(v6, v20, v0);
  v51 = &type metadata for CGFloat;
  v52 = &protocol witness table for CGFloat;
  *&v50 = 0x4030000000000000;
  if (qword_10096D7A0 != -1)
  {
    swift_once();
  }

  v41 = v1;
  v21 = type metadata accessor for StaticDimension();
  v22 = sub_1000056A8(v21, qword_1009CF730);
  v48 = v21;
  v49 = &protocol witness table for StaticDimension;
  v23 = sub_1000056E0(&v47);
  v24 = *(*(v21 - 8) + 16);
  v24(v23, v22, v21);
  if (qword_10096D820 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v21, qword_1009CF8B0);
  v45 = v21;
  v46 = &protocol witness table for StaticDimension;
  v26 = sub_1000056E0(&v44);
  v24(v26, v25, v21);
  if (qword_10096D840 != -1)
  {
    swift_once();
  }

  v27 = *&UIEdgeInsetsZero.top;
  v36 = *&UIEdgeInsetsZero.bottom;
  v37 = v27;
  v28 = sub_1000056A8(v0, qword_1009CF910);
  v18(v43, v28, v0);
  if (qword_10096D848 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v21, qword_1009CF928);
  v30 = (v16 + v15[16]);
  v30[3] = v21;
  v30[4] = &protocol witness table for StaticDimension;
  v31 = sub_1000056E0(v30);
  v24(v31, v29, v21);
  v32 = (v16 + v15[17]);
  v32[3] = &type metadata for CGFloat;
  v32[4] = &protocol witness table for CGFloat;
  *v32 = 0x4044000000000000;
  v33 = v36;
  *v16 = v37;
  *(v16 + 16) = v33;
  sub_100005A38(&v56, v16 + 32);
  sub_100005A38(&v53, v16 + 72);
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  v34 = *(v41 + 32);
  v34(v16 + v15[8], v38, v0);
  v34(v16 + v15[9], v42, v0);
  v34(v16 + v15[10], v39, v0);
  v34(v16 + v15[11], v40, v0);
  sub_100005A38(&v50, v16 + v15[12]);
  sub_100005A38(&v47, v16 + v15[13]);
  sub_100005A38(&v44, v16 + v15[14]);
  return (v34)(v16 + v15[15], v43, v0);
}

id sub_10030C350()
{
  result = [objc_opt_self() systemBlueColor];
  qword_1009CF518 = result;
  return result;
}

UIColor sub_10030C38C()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.58431, 0.0, 1.0).super.isa;
  qword_1009CF520 = result.super.isa;
  return result;
}

UIColor sub_10030C3E8()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  result.super.isa = UIColor.init(light:lightHighContrast:dark:darkHighContrast:)([objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.8], objc_msgSend(objc_allocWithZone(UIColor), "initWithWhite:alpha:", 0.0, 0.8), objc_msgSend(objc_allocWithZone(UIColor), "initWithWhite:alpha:", 1.0, 0.8), objc_msgSend(objc_allocWithZone(UIColor), "initWithWhite:alpha:", 1.0, 0.8)).super.isa;
  qword_1009CF528 = result.super.isa;
  return result;
}

uint64_t sub_10030C534(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100980410, &unk_1007CCF30);
  sub_100005644(v4, a2);
  sub_1000056A8(v4, a2);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  return Conditional.init(_:)();
}

void sub_10030C640(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (*a2 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  sub_1000056A8(v9, a3);
  v10 = [v8 traitCollection];
  v11 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  *a5 = v11;
}

uint64_t sub_10030C744@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v9 = type metadata accessor for FontUseCase();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (*a2 != -1)
  {
    swift_once();
  }

  v14 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_1000056A8(v14, a3);
  v18[1] = v13;
  Conditional.evaluate(with:)();
  v15 = [v13 traitCollection];
  v16 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  result = (*(v10 + 8))(v12, v9);
  *a5 = v16;
  return result;
}

void sub_10030C9A4()
{
  v0 = objc_opt_self();
  v1 = [v0 _preferredFontForTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:0x8000 weight:UIFontWeightMedium];
  if (!v1)
  {
    v1 = [v0 preferredFontForTextStyle:UIFontTextStyleCaption1];
  }

  v2 = v1;
  v3 = sub_10027F640();

  qword_1009CF5D8 = v3;
}

void sub_10030CA48()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  v1 = sub_10027F640();

  qword_1009CF5E0 = v1;
}

uint64_t sub_10030CAA8()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_100005644(v7, qword_1009CF5E8);
  sub_1000056A8(v7, qword_1009CF5E8);
  if (qword_10096DE88 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0B18);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096DE80 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D0B00);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_10030CC88()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009CF600);
  v1 = sub_1000056A8(v0, qword_1009CF600);
  if (qword_10096DE90 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D0B30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10030CD50()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_100005644(v7, qword_1009CF618);
  sub_1000056A8(v7, qword_1009CF618);
  if (qword_10096DEA8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0B78);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096DEA0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D0B60);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_10030CF30()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  v7 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_100005644(v7, qword_1009CF630);
  sub_1000056A8(v7, qword_1009CF630);
  if (qword_10096DEC0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0BC0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  v9(v3, v8, v0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_10030D0DC()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_100005644(v7, qword_1009CF648);
  sub_1000056A8(v7, qword_1009CF648);
  if (qword_10096DEB8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0BA8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096DEB0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D0B90);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_10030D2BC()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_100005644(v7, qword_1009CF660);
  sub_1000056A8(v7, qword_1009CF660);
  if (qword_10096E110 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D12B0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D1298);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
}

uint64_t sub_10030D49C()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_1009CF678);
  sub_1000056A8(v0, qword_1009CF678);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_10030D538()
{
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2448);
  qword_1009CF6A8 = v0;
  unk_1009CF6B0 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_1009CF690);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_10030D5F4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleBody;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  qword_1009CF6D0 = type metadata accessor for StaticDimension();
  unk_1009CF6D8 = &protocol witness table for StaticDimension;
  sub_1000056E0(qword_1009CF6B8);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10030D770(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for StaticDimension();
  v8 = sub_1000056A8(v7, qword_1009D2430);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_1000056E0(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

uint64_t sub_10030D8C8(double a1, double a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = sub_10002849C(&qword_100979010, qword_1007BE140);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v9 = sub_10002849C(&unk_100980420, &qword_1007E0730);
  sub_100005644(v9, a4);
  sub_1000056A8(v9, a4);
  sub_100083288(a5);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional<>.init(regularValue:compactValue:)();
  Conditional<>.init(regularValue:compactValue:)();
  return Conditional<>.init(whenOneOf:use:otherwiseUse:)();
}

uint64_t sub_10030DAA8(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = type metadata accessor for FontSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v12, a4);
  sub_1000056A8(v12, a4);
  if (qword_10096DE88 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  v14 = sub_1000056A8(v13, qword_1009D0B18);
  v15 = *(*(v13 - 8) + 16);
  v15(v11, v14, v13);
  v16 = enum case for FontSource.useCase(_:);
  v17 = *(v6 + 104);
  v17(v11, enum case for FontSource.useCase(_:), v5);
  if (qword_10096DE80 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v13, qword_1009D0B00);
  v15(v8, v18, v13);
  v17(v8, v16, v5);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030DCF0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v7, qword_1009CF7F0);
  v14[1] = sub_1000056A8(v7, qword_1009CF7F0);
  if (qword_10096DE90 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0B30);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030DF00()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v7, qword_1009CF808);
  v14[1] = sub_1000056A8(v7, qword_1009CF808);
  if (qword_10096DE98 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0B48);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030E138(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = type metadata accessor for FontSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v9, a4);
  sub_1000056A8(v9, a4);
  *v8 = UIFontTextStyleFootnote;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v10 = UIFontTextStyleFootnote;
  return Conditional<>.init(regularConstant:compactConstant:source:)();
}

uint64_t sub_10030E270()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v7, qword_1009CF850);
  sub_1000056A8(v7, qword_1009CF850);
  if (qword_10096DEA8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0B78);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  if (qword_10096DEA0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0B60);
  v10(v3, v13, v8);
  v12(v3, v11, v0);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030E4B0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v7, qword_1009CF868);
  v14[1] = sub_1000056A8(v7, qword_1009CF868);
  if (qword_10096DEC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0BC0);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030E6B4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v7, qword_1009CF880);
  v14[1] = sub_1000056A8(v7, qword_1009CF880);
  if (qword_10096DEC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0BC0);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030E8B8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v7, qword_1009CF898);
  sub_1000056A8(v7, qword_1009CF898);
  if (qword_10096DEB8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0BA8);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  if (qword_10096DEB0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v8, qword_1009D0B90);
  v10(v3, v13, v8);
  v12(v3, v11, v0);
  return Conditional<>.init(regularConstant:compactConstant:regularSource:compactSource:)();
}

uint64_t sub_10030EB68(double a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v6 = type metadata accessor for FontSource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for StaticDimension();
  sub_100005644(v10, a3);
  sub_1000056A8(v10, a3);
  v11 = *a4;
  *v9 = v11;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v16[3] = v6;
  v16[4] = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v16);
  (*(v7 + 16))(v12, v9, v6);
  v13 = v11;
  StaticDimension.init(_:scaledLike:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10030ECD8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v4, qword_1009CF910);
  sub_1000056A8(v4, qword_1009CF910);
  if (qword_10096DEC8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0BD8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  return Conditional<>.init(regularConstant:compactConstant:source:)();
}

uint64_t sub_10030EED0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for FontSource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticDimension();
  sub_100005644(v12, a2);
  sub_1000056A8(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  v14 = sub_1000056A8(v13, a4);
  (*(*(v13 - 8) + 16))(v11, v14, v13);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  v18[3] = v8;
  v18[4] = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v18);
  (*(v9 + 16))(v15, v11, v8);
  StaticDimension.init(_:scaledLike:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10030F09C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009CF958);
  sub_1000056A8(v4, qword_1009CF958);
  if (qword_10096DED8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0C08);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10030F284()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009CF988);
  sub_1000056A8(v4, qword_1009CF988);
  if (qword_10096DED0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0BF0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_10030F4A8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v5 = 2;
  if (v4)
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_10030F548(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  sub_100005644(v4, a2);
  sub_1000056A8(v4, a2);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional.init(_:)();
}

void sub_10030F5D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {

    v4 = 0;
  }

  else
  {
    v5 = UITraitCollection.isSizeClassRegular.getter();

    v4 = 1;
    if ((v5 & 1) == 0)
    {
      v4 = 2;
    }
  }

  *a2 = v4;
}

uint64_t sub_10030F678(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
  sub_100005644(v4, a2);
  sub_1000056A8(v4, a2);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
}

uint64_t sub_10030F750(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v5, a4);
  sub_1000056A8(v5, a4);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

void sub_10030F7EC()
{
  v0 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.1];
  v1 = [v0 CGColor];

  qword_1009CFAA8 = v1;
}

uint64_t sub_10030F854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030F8BC(double a1, double a2, double a3, double a4)
{
  v5 = type metadata accessor for ImpressionMetrics.ID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Shelf.impressionMetrics.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10002B894(v11, &qword_100973D30, &unk_1007B1DC0);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    if (*(v4 + 112))
    {

      ImpressionsCalculator.addElement(_:at:)();

      if (*(v4 + 112))
      {

        ImpressionMetrics.id.getter();
        v16 = ImpressionsCalculator.makeChildCalculator(for:)();

        (*(v6 + 8))(v8, v5);
        (*(v13 + 8))(v15, v12);
        return v16;
      }
    }

    (*(v13 + 8))(v15, v12);
  }

  return 0;
}

double sub_10030FB84(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v53 = a4;
  v48 = a2;
  v55 = a1;
  v5 = type metadata accessor for ShelfBackground();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v46 - v8;
  v9 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for Shelf.ContentType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v19 = dispatch thunk of ShelfPresenter.shelf(for:)();
  v54 = v18;
  v55 = v19;
  Shelf.contentType.getter();
  if (a3)
  {
    v20 = v11;
    (*(v13 + 56))(v11, 1, 1, v12);
    v22 = v49;
    v21 = v50;
    v23 = v51;
    (*(v50 + 104))(v49, enum case for ShelfBackground.none(_:), v51);
  }

  else
  {
    dispatch thunk of ShelfPresenter.contentType(for:)();
    v20 = v11;
    (*(v13 + 56))(v11, 0, 1, v12);
    v24 = v49;
    dispatch thunk of ShelfPresenter.background(for:)();
    v21 = v50;
    v23 = v51;
    v22 = v24;
  }

  v25 = v13;
  v26 = *(v13 + 16);
  v27 = v54;
  v26(v15, v54, v12);
  v28 = (*(v25 + 88))(v15, v12);
  v29 = v53;
  v52 = v25;
  if (v28 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v30 = &off_1008D0A88;
  }

  else
  {
    if (v28 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v25 + 8))(v15, v12);
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v30 = &off_1008CBB38;
  }

  v31 = (v30[2])();
  if ((v32 & 1) == 0)
  {
    v33 = *&v31;

    v34 = v33;
    (*(v21 + 8))(v22, v23);
    sub_10002B894(v20, &unk_100992460, &qword_1007B6BF0);
    (*(v52 + 8))(v27, v12);
    return v34;
  }

LABEL_11:
  v35 = sub_1005D8420();
  if (v35)
  {
    v37 = v35;
    v38 = v36;
    v39 = v23;
    v40 = v47;
    v51 = v12;
    Shelf.background.getter();
    *&v41 = COERCE_DOUBLE((*(v38 + 48))(v20, v22, v40, v29, v37, v38));
    v43 = v42;

    v44 = *(v21 + 8);
    v44(v40, v39);
    v44(v22, v39);
    sub_10002B894(v20, &unk_100992460, &qword_1007B6BF0);
    (*(v52 + 8))(v54, v51);
    v34 = 0.0;
    if ((v43 & 1) == 0)
    {
      return *&v41;
    }
  }

  else
  {

    (*(v21 + 8))(v22, v23);
    sub_10002B894(v20, &unk_100992460, &qword_1007B6BF0);
    (*(v52 + 8))(v27, v12);
    return 0.0;
  }

  return v34;
}

double sub_100310110(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v11 = 0.0;
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = dispatch thunk of ShelfPresenter.title(for:)();
  if (v17)
  {
    v59 = v16;
    v60 = v17;
    v18 = dispatch thunk of ShelfPresenter.seeAllAction(for:)();
    if (v18)
    {
      v57 = v18;
      Action.title.getter();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_10096D648 != -1)
      {
        swift_once();
      }

      v21 = qword_10097E830;
      v55 = v4;
      v56 = v20;
      if (v20)
      {
        v20 = String._bridgeToObjectiveC()();
      }

      [v21 setTitle:v20 forState:0];

      [v21 setImage:0 forState:0];
      v22 = [v21 titleLabel];
      v23 = v22;
      if (v22)
      {
        v54 = v22;
        v24 = [v54 font];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:ObjectType];
        }

        else
        {
          v26 = 0;
        }

        v30 = v54;
        [v54 setFont:v26];
      }

      v27 = a2;
      v28 = v10;
      [v21 sizeThatFits:{v13, v15}];
      v32 = v31;
      v11 = v33;

      v29 = v32 + 0.0;
      [v21 setTitle:0 forState:0];
      [v21 setImage:0 forState:0];
    }

    else
    {
      v27 = a2;
      v28 = v10;
      v29 = 0.0;
    }

    ObjectType = swift_getObjectType();
    [v27 pageMarginInsets];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    if (a1 >= 1)
    {
      v41 = a1 - 1;
    }

    else
    {
      v41 = 0;
    }

    v42 = v34 + sub_10030FB84(a1, v41, a1 < 1, v27);
    v43 = dispatch thunk of ShelfPresenter.titleArtwork(for:)();
    v44 = dispatch thunk of ShelfPresenter.eyebrow(for:)();
    v56 = v45;
    v57 = v44;
    v46 = dispatch thunk of ShelfPresenter.eyebrowArtwork(for:)();
    v47 = [v27 traitCollection];
    v48 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v43)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }

    if (v48)
    {
      v50 = 0;
    }

    else
    {
      v50 = v49;
    }

    type metadata accessor for TitleHeaderView(0);
    sub_1006458A0(a1, v27, v28);
    sub_1003F7390(v57, v56, v46, v59, v60, v43, 0, 0, v13, v15, v29, v11, v42, v36, v38, v40, 0, 0, v50, v28, 1, v27);
    v13 = v51;

    sub_10022F0DC(v28);
  }

  return v13;
}

void sub_1003105D0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v133 = a3;
  v126 = a2;
  v116 = type metadata accessor for Shelf.PresentationHints();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v113 = v107 - v9;
  v10 = sub_10002849C(&unk_1009804F0, &unk_1007B3800);
  __chkstk_darwin(v10 - 8);
  v123 = v107 - v11;
  v125 = type metadata accessor for ComponentLayoutOptions();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v137 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v136 = v107 - v14;
  __chkstk_darwin(v15);
  v135 = v107 - v16;
  v121 = type metadata accessor for IndexPath();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  __chkstk_darwin(v18 - 8);
  v122 = v107 - v19;
  v118 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v134 = v107 - v20;
  v21 = type metadata accessor for Shelf.ContentType();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v108 = v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v107 - v25;
  __chkstk_darwin(v27);
  v29 = v107 - v28;
  v128 = v4;
  IndexPath.section.getter();
  v30 = type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  dispatch thunk of ShelfPresenter.contentType(for:)();
  v31 = sub_1005D8420();
  if (!v31)
  {
    (*(v22 + 8))(v29, v21);
    return;
  }

  v111 = v32;
  v112 = v31;
  v131 = v29;
  IndexPath.section.getter();
  v33 = dispatch thunk of ShelfPresenter.doesShelfExist(for:)();
  v129 = v22;
  v138 = a1;
  if (v33)
  {
    v34 = IndexPath.section.getter();
    v35 = v30;
    if (v34 >= dispatch thunk of ShelfPresenter.sectionCount.getter())
    {
      v110 = 0;
      v37 = v133;
    }

    else
    {
      v36 = dispatch thunk of ShelfPresenter.isShelfHidden(for:)();
      v37 = v133;
      if (v36)
      {
        v110 = 0;
      }

      else
      {
        v38 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
        if (sub_100647D6C(v34))
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        v110 = v39;
        v22 = v129;
        v37 = v133;
      }
    }
  }

  else
  {
    v110 = 0;
    v35 = v30;
    v37 = v133;
  }

  IndexPath.section.getter();
  v40 = dispatch thunk of ShelfPresenter.doesShelfExist(for:)();
  v132 = v21;
  v109 = v26;
  if (v40)
  {
    IndexPath.section.getter();
    v127 = dispatch thunk of ShelfPresenter.shelf(for:)();
  }

  else
  {
    v127 = 0;
  }

  [a4 bounds];
  [a4 safeAreaInsets];
  CGSize.subtracting(insets:)();
  v42 = v41;
  v44 = v43;
  v45 = v131;
  v46 = sub_1005D8420();
  v48 = v132;
  v130 = v35;
  if (!v46)
  {
    goto LABEL_30;
  }

  v49 = v46;
  v50 = v47;
  v107[1] = swift_getObjectType();
  [v37 pageMarginInsets];
  v52 = (*(v50 + 32))(0, v37, v49, v50, v51);
  v42 = v42 - (v52 + v53);
  v54 = [v37 traitCollection];
  v55 = *(v22 + 16);
  v56 = v109;
  v55(v109, v45, v48);
  v57 = *(v22 + 88);
  v58 = v57(v56, v48);
  if (v58 != enum case for Shelf.ContentType.artwork(_:) && v58 != enum case for Shelf.ContentType.ribbonBar(_:) && v58 != enum case for Shelf.ContentType.ribbonFlow(_:) && v58 != enum case for Shelf.ContentType.paragraph(_:) && v58 != enum case for Shelf.ContentType.footnote(_:) && v58 != enum case for Shelf.ContentType.titledParagraph(_:) && v58 != enum case for Shelf.ContentType.reviewsContainer(_:) && v58 != enum case for Shelf.ContentType.reviewSummary(_:) && v58 != enum case for Shelf.ContentType.editorialLink(_:) && v58 != enum case for Shelf.ContentType.quote(_:) && v58 != enum case for Shelf.ContentType.framedArtwork(_:) && v58 != enum case for Shelf.ContentType.screenshots(_:))
  {
    if (v58 == enum case for Shelf.ContentType.appShowcase(_:))
    {

      goto LABEL_78;
    }

    v107[0] = v54;
    if (v58 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) || v58 == enum case for Shelf.ContentType.linkableText(_:) || v58 == enum case for Shelf.ContentType.framedVideo(_:) || v58 == enum case for Shelf.ContentType.productDescription(_:) || v58 == enum case for Shelf.ContentType.banner(_:) || v58 == enum case for Shelf.ContentType.roundedButton(_:) || v58 == enum case for Shelf.ContentType.titledButtonStack(_:) || v58 == enum case for Shelf.ContentType.smallStoryCard(_:) || v58 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) || v58 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v58 == enum case for Shelf.ContentType.upsellBreakout(_:) || v58 == enum case for Shelf.ContentType.smallBreakout(_:) || v58 == enum case for Shelf.ContentType.arcadeFooter(_:) || v58 == enum case for Shelf.ContentType.editorialQuote(_:) || v58 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v58 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) || v58 == enum case for Shelf.ContentType.preorderDisclaimer(_:) || v58 == enum case for Shelf.ContentType.privacyHeader(_:) || v58 == enum case for Shelf.ContentType.privacyFooter(_:) || v58 == enum case for Shelf.ContentType.privacyCategory(_:) || v58 == enum case for Shelf.ContentType.privacyDefinition(_:) || v58 == enum case for Shelf.ContentType.heroCarousel(_:) || v58 == enum case for Shelf.ContentType.unifiedMessage(_:) || (v96 = v55, v109 = *(v129 + 8), (v109)(v56, v132), (UITraitCollection.isSizeClassRegular.getter() & 1) == 0))
    {

      goto LABEL_78;
    }

    v97 = v107[0];
    v98 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v98)
    {
LABEL_78:
      v37 = v133;
      v22 = v129;
      goto LABEL_30;
    }

    v99 = v131;
    v100 = sub_100316818(v131, v110, v133);
    v101 = v108;
    v102 = v99;
    v103 = v132;
    v96(v108, v102, v132);
    v104 = v57(v101, v103);
    if (v104 == enum case for Shelf.ContentType.annotation(_:) || v104 == enum case for Shelf.ContentType.productCapability(_:) || v104 == enum case for Shelf.ContentType.productPageLink(_:) || v104 == enum case for Shelf.ContentType.privacyType(_:))
    {
      if (!__OFSUB__(v100, 1))
      {
        v106 = v42 + (v100 - 1) * -30.0;
        goto LABEL_81;
      }
    }

    else
    {
      (v109)(v108, v132);
      PageTraitEnvironment.pageColumnMargin.getter();
      if (!__OFSUB__(v100, 1))
      {
        v106 = v42 - v105 * (v100 - 1);
LABEL_81:
        v42 = v106 / v100;
        goto LABEL_78;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v37 = v133;
  v22 = v129;
LABEL_30:
  if (v42 <= 0.0)
  {
    v42 = 0.0;
  }

  v59 = v138;
  dispatch thunk of ShelfPresenter.model(at:)();
  (*(v120 + 16))(v119, v59, v121);
  StatePath<A>.init(_:)();
  v139 = *(v128 + 24);

  sub_10002849C(&unk_100980500, &unk_1007C5220);
  sub_100097060(&qword_10097DB00, &unk_100980500, &unk_1007C5220, &protocol conformance descriptor for TransientStateStore<A>);
  StateLens.init<A>(contentsOf:in:)();
  v60 = v135;
  ComponentLayoutOptions.init()();
  v61 = sub_100314558(v59, v37);
  v62 = v125;
  v63 = v124;
  if (v61)
  {
    v64 = v136;
    v65 = v137;
    static ComponentLayoutOptions.separatorHidden.getter();
    sub_10032B148(v64, v65);
    v66 = *(v63 + 8);
    v22 = v129;
    v66(v65, v62);
    v66(v64, v62);
    v60 = v135;
  }

  v67 = v123;
  dispatch thunk of ShelfPresenter.itemBackground(forItemAt:)();
  v68 = type metadata accessor for ItemBackground();
  v69 = (*(*(v68 - 8) + 48))(v67, 1, v68);
  sub_10002B894(v67, &unk_1009804F0, &unk_1007B3800);
  if (v69 != 1)
  {
    v70 = v137;
    static ComponentLayoutOptions.hasBackground.getter();
    v71 = v136;
    sub_10032B148(v136, v70);
    v72 = *(v63 + 8);
    v72(v70, v62);
    v72(v71, v62);
  }

  v73 = [v37 traitCollection];
  v74 = UITraitCollection.isSizeClassCompact.getter();

  v75 = v127;
  v76 = v37;
  if (v74)
  {
    v77 = v137;
    static ComponentLayoutOptions.isSingleVerticalColumn.getter();
    v78 = v136;
    sub_10032B148(v136, v77);
    v79 = *(v63 + 8);
    v79(v77, v62);
    v80 = v78;
    v37 = v76;
    v79(v80, v62);
  }

  if (!IndexPath.section.getter())
  {
    v81 = v137;
    static ComponentLayoutOptions.isFirstSection.getter();
    v82 = v136;
    sub_10032B148(v136, v81);
    v83 = *(v63 + 8);
    v83(v81, v62);
    v84 = v82;
    v37 = v76;
    v83(v84, v62);
  }

  if (v75)
  {

    v85 = v113;
    Shelf.presentationHints.getter();

    v86 = v114;
    static Shelf.PresentationHints.showSupplementaryText.getter();
    sub_100318010(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v87 = v116;
    v88 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v89 = *(v115 + 8);
    v89(v86, v87);
    v90 = v85;
    v37 = v76;
    v22 = v129;
    v89(v90, v87);
    v60 = v135;
    if (v88)
    {
      v91 = v137;
      static ComponentLayoutOptions.showSupplementaryText.getter();
      v92 = v136;
      sub_10032B148(v136, v91);
      v93 = *(v63 + 8);
      v93(v91, v62);
      v94 = v92;
      v37 = v76;
      v93(v94, v62);
    }
  }

  v95 = v134;
  (*(v111 + 72))(&v140, v110, v134, v126, v60, v37, v42, v44);

  (*(v63 + 8))(v60, v62);
  (*(v117 + 8))(v95, v118);
  sub_100007000(&v140);
  (*(v22 + 8))(v131, v132);
}

uint64_t sub_1003116A4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v261 = a6;
  v293 = a5;
  v292 = a4;
  v285 = a3;
  v295 = a2;
  v287 = type metadata accessor for ImpressionMetrics();
  v286 = *(v287 - 1);
  __chkstk_darwin(v287);
  v254 = v246 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v246 - v10;
  __chkstk_darwin(v12);
  v259 = v246 - v13;
  __chkstk_darwin(v14);
  v249 = v246 - v15;
  __chkstk_darwin(v16);
  v252 = v246 - v17;
  v257 = type metadata accessor for IndexSet();
  v256 = *(v257 - 8);
  __chkstk_darwin(v257);
  v255 = v246 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = type metadata accessor for ShelfBackground();
  v271 = *(v272 - 8);
  __chkstk_darwin(v272);
  v270 = v246 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = type metadata accessor for Shelf.PresentationHints();
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  v267 = v246 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&unk_1009804F0, &unk_1007B3800);
  __chkstk_darwin(v21 - 8);
  v23 = v246 - v22;
  v289 = type metadata accessor for ComponentLayoutOptions();
  v288 = *(v289 - 8);
  __chkstk_darwin(v289);
  v25 = v246 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v246 - v27;
  __chkstk_darwin(v29);
  v284 = v246 - v30;
  v277 = type metadata accessor for IndexPath();
  v276 = *(v277 - 8);
  __chkstk_darwin(v277);
  v260 = v31;
  v275 = v246 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  __chkstk_darwin(v32 - 8);
  v274 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v273 = *(v274 - 8);
  __chkstk_darwin(v274);
  v283 = v246 - v33;
  v291 = type metadata accessor for Shelf.ContentType();
  v290 = *(v291 - 8);
  __chkstk_darwin(v291);
  v266 = v246 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v278 = v246 - v36;
  __chkstk_darwin(v37);
  v282 = v246 - v38;
  v279 = type metadata accessor for ImpressionMetrics.ID();
  v280 = *(v279 - 8);
  __chkstk_darwin(v279);
  v262 = v246 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v281 = v246 - v41;
  v42 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v42 - 8);
  v258 = v246 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v265 = v246 - v45;
  __chkstk_darwin(v46);
  v264 = v246 - v47;
  __chkstk_darwin(v48);
  v250 = v246 - v49;
  __chkstk_darwin(v50);
  v251 = v246 - v51;
  __chkstk_darwin(v52);
  v54 = v246 - v53;
  v55 = sub_10002849C(&qword_100990A90, &unk_1007B5670);
  __chkstk_darwin(v55 - 8);
  v253 = v246 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v263 = v246 - v58;
  __chkstk_darwin(v59);
  v61 = v246 - v60;
  *&v63 = __chkstk_darwin(v62).n128_u64[0];
  v65 = v246 - v64;
  [a1 setBackgroundColor:{0, v63}];
  swift_getObjectType();
  v66 = swift_conformsToProtocol2();
  v294 = v6;
  v296 = *(v6 + 16);
  if (!v66 || *&a1 == 0.0)
  {
    v78 = type metadata accessor for PurchasesContentPresenter();
    v79 = sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    v80 = v295;
    v282 = v78;
    v281 = v79;
    result = dispatch thunk of ShelfPresenter.doesModelExist(for:)();
    if ((result & 1) == 0)
    {
      return result;
    }

    v247 = v11;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    v248 = result;
    if (!result)
    {
      __break(1u);
      return result;
    }

    dispatch thunk of ShelfPresenter.model(at:)();
    v82 = *(v276 + 16);
    v246[1] = v276 + 16;
    v246[0] = v82;
    v82(v275, v80, v277);
    StatePath<A>.init(_:)();
    v302 = *(v294 + 24);

    sub_10002849C(&unk_100980500, &unk_1007C5220);
    sub_100097060(&qword_10097DB00, &unk_100980500, &unk_1007C5220, &protocol conformance descriptor for TransientStateStore<A>);
    v83 = v295;
    WritableStateLens.init<A>(contentsOf:in:)();
    ComponentLayoutOptions.init()();
    if (sub_100313FF4(v83, v292))
    {
      static ComponentLayoutOptions.separatorHidden.getter();
      sub_10032B148(v28, v25);
      v84 = v288[1];
      v85 = v289;
      v84(v25, v289);
      v84(v28, v85);
    }

    dispatch thunk of ShelfPresenter.itemBackground(forItemAt:)();
    v86 = type metadata accessor for ItemBackground();
    v87 = (*(*(v86 - 8) + 48))(v23, 1, v86);
    sub_10002B894(v23, &unk_1009804F0, &unk_1007B3800);
    if (v87 != 1)
    {
      static ComponentLayoutOptions.hasBackground.getter();
      sub_10032B148(v28, v25);
      v88 = v288[1];
      v89 = v289;
      v88(v25, v289);
      v88(v28, v89);
    }

    if (!IndexPath.section.getter())
    {
      static ComponentLayoutOptions.isFirstSection.getter();
      sub_10032B148(v28, v25);
      v90 = v288[1];
      v91 = v289;
      v90(v25, v289);
      v90(v28, v91);
    }

    IndexPath.section.getter();
    v92 = v278;
    dispatch thunk of ShelfPresenter.contentType(for:)();
    IndexPath.section.getter();
    v93 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
    v94 = v290;
    v95 = v266;
    v96 = v291;
    (*(v290 + 16))(v266, v92, v291);
    v97 = (*(v94 + 88))(v95, v96);
    if (v97 == enum case for Shelf.ContentType.smallLockup(_:) || v97 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v97 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v97 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v97 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v97 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v97 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v97 == enum case for Shelf.ContentType.editorialCard(_:) || v97 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v97 == enum case for Shelf.ContentType.brick(_:) || v97 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v97 == enum case for Shelf.ContentType.reviews(_:) || v97 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v97 == enum case for Shelf.ContentType.framedVideo(_:) || v97 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v97 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v97 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v97 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v97 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v97 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v97 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v97 == enum case for Shelf.ContentType.posterLockup(_:) || v97 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v97 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v97 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v290 + 8))(v95, v291);
              goto LABEL_50;
            }

LABEL_38:
            if (v93)
            {
              goto LABEL_39;
            }

LABEL_50:
            v122 = [v292 traitCollection];
            v123 = UITraitCollection.isSizeClassCompact.getter();

            if ((v123 & 1) == 0)
            {
              LODWORD(v266) = 0;
              v124 = v284;
LABEL_53:
              ObjectType = swift_getObjectType();
              IndexPath.section.getter();
              dispatch thunk of ShelfPresenter.shelf(for:)();
              v128 = v267;
              Shelf.presentationHints.getter();

              (*(v248 + 80))(&v304, v283, v293, v124, v128, v292, ObjectType);
              (*(v268 + 8))(v128, v269);
              v129 = a1;
              IndexPath.section.getter();
              v130 = v270;
              dispatch thunk of ShelfPresenter.background(for:)();
              v131 = sub_1001AAD64();
              (*(v271 + 8))(v130, v272);
              if ([a1 overrideUserInterfaceStyle] != v131)
              {
                [a1 setOverrideUserInterfaceStyle:v131];
              }

              sub_10002C0AC(&v304, &v302);
              *(&v300 + 1) = sub_100005744(0, &qword_100978E10, UICollectionViewCell_ptr);
              *&v299 = a1;
              v132 = a1;
              tryToFetch(artworkFor:into:on:asPartOf:)();
              sub_10002B894(&v302, &unk_10097DBE0, &unk_1007BCA00);
              sub_100007000(&v299);
              swift_getObjectType();
              v133 = swift_conformsToProtocol2();
              v134 = v294;
              if (v133 && *&a1 != 0.0)
              {
                v135 = v133;
                v136 = swift_getObjectType();
                v137 = *(v135 + 8);
                v138 = v132;
                v139 = v137(v136, v135);
                v83 = v295;
                v140 = v139;
                v141 = (v139 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
                v142 = *(v139 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
                v143 = v141[1];
                *v141 = 0;
                v141[1] = 0;
                sub_10001F63C(v142, v143);
                [*&v140[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && *&a1 != 0.0)
              {
                v144 = swift_allocObject();
                swift_weakInit();
                v293 = a1;
                v145 = v134;
                v146 = v275;
                v147 = v277;
                (v246[0])(v275, v83, v277);
                v148 = v276;
                v149 = (*(v276 + 80) + 16) & ~*(v276 + 80);
                v150 = (v260 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
                v151 = swift_allocObject();
                v152 = v146;
                v134 = v145;
                v129 = v293;
                (*(v148 + 32))(v151 + v149, v152, v147);
                *(v151 + v150) = v144;
                v153 = &v132[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
                v154 = *&v132[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
                v155 = *&v132[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler + 8];
                *v153 = sub_1003180C8;
                v153[1] = v151;
                v156 = v132;

                sub_10001F63C(v154, v155);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                type metadata accessor for VideoPlaybackCoordinator();
                type metadata accessor for BaseObjectGraph();
                v157 = v132;
                inject<A, B>(_:from:)();
                v158 = v302;
                swift_getObjectType();
                v159 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
                v160 = v157;
                dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
              }

              *&v297[0] = v132;
              *(&v297[0] + 1) = v248;
              v161 = v132;
              sub_10002849C(&qword_100980510, &qword_1007C7570);
              sub_10002849C(&qword_100980518, &qword_1007C7578);
              if (swift_dynamicCast())
              {
                sub_100005A38(&v299, &v302);
                type metadata accessor for VideoPlaybackCoordinator();
                type metadata accessor for BaseObjectGraph();
                inject<A, B>(_:from:)();
                v162 = v299;
                sub_10002A400(&v302, v303);
                dispatch thunk of ManagedVideoViewProviding.registerVideos(with:)();

                sub_100007000(&v302);
              }

              else
              {
                v301 = 0;
                v300 = 0u;
                v299 = 0u;
                sub_10002B894(&v299, &unk_100980520, &unk_1007C7580);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                type metadata accessor for PlaybackCoordinator();
                v163 = v161;
                BaseObjectGraph.optional<A>(_:)();
                v164 = v302;
                if (v302)
                {
                  v165 = v163;
                  v166 = v164;
                  dispatch thunk of PlaybackCoordinator.register(playableView:)();

                  v163 = v166;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                sub_10002C0AC(&v304, &v299);
                v167 = v161;
                sub_10002849C(&qword_100973D50, &unk_1007B3840);
                sub_10002849C(&unk_100980530, &qword_1007B69B0);
                if (swift_dynamicCast())
                {
                  sub_100005A38(v297, &v302);
                  sub_10002A400(&v302, v303);
                  if (dispatch thunk of SearchAdOpportunityProviding.searchAdOpportunity.getter())
                  {
                    SearchAdOpportunity.searchAd.getter();
                  }

                  swift_getObjectType();
                  dispatch thunk of SearchAdDisplaying.apply(searchAd:asPartOf:)();

                  sub_100007000(&v302);
                }

                else
                {

                  v298 = 0;
                  memset(v297, 0, sizeof(v297));
                  sub_10002B894(v297, &unk_100992FE0, &qword_1007BBDD0);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                swift_getObjectType();
                v168 = v161;
                dispatch thunk of AnyAvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)();
              }

              IndexPath.section.getter();
              dispatch thunk of ShelfPresenter.shelf(for:)();
              if (v266)
              {
                v169 = [v261 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v170 = swift_dynamicCastClass();
                if (v170)
                {
                  v171 = v170;
                  v172 = [v170 _orthogonalScrollingSections];
                  v173 = v255;
                  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

                  v174 = IndexPath.section.getter();
                  LOBYTE(v172) = IndexSet.contains(_:)(v174);
                  (*(v256 + 8))(v173, v257);
                  if (v172)
                  {
                    [v161 frame];
                    v176 = v175;
                    v178 = v177;
                    v180 = v179;
                    v182 = v181;
                    v183 = v251;
                    Shelf.impressionMetrics.getter();
                    v184 = v286;
                    v185 = *(v286 + 6);
                    v186 = v287;
                    if (v185(v183, 1, v287) == 1)
                    {

                      (*(v290 + 8))(v278, v291);
                      (v288[1])(v284, v289);
                      (*(v273 + 8))(v283, v274);
                      sub_100007000(&v304);
                      return sub_10002B894(v183, &qword_100973D30, &unk_1007B1DC0);
                    }

                    v296 = *(v184 + 4);
                    v296(v252, v183, v186);
                    sub_10002C0AC(&v304, &v302);
                    sub_10002A400(&v302, v303);
                    v218 = v250;
                    dispatch thunk of ViewModel.impressionMetrics.getter();
                    if (v185(v218, 1, v186) == 1)
                    {

                      (*(v184 + 1))(v252, v186);
                      (*(v290 + 8))(v278, v291);
                      (v288[1])(v284, v289);
                      (*(v273 + 8))(v283, v274);
                      sub_100007000(&v304);
                      v198 = v218;
                      goto LABEL_99;
                    }

                    v292 = v178;
                    v293 = v176;
                    v219 = v249;
                    v296(v249, v218, v186);
                    [v171 _layoutFrameForSection:IndexPath.section.getter()];
                    v221 = v220;
                    v223 = v222;
                    v225 = v224;
                    v227 = v226;
                    [v171 _offsetForOrthogonalScrollingSection:IndexPath.section.getter()];
                    v229 = v294;
                    v230 = *(v294 + 112);
                    v231 = v186;
                    v232 = v284;
                    if (v230)
                    {
                      v233 = v228;

                      v234 = v252;
                      v235 = v221;
                      ImpressionsCalculator.addElement(_:at:)();

                      v236 = v223;
                      if (*(v229 + 112))
                      {

                        v237 = v262;
                        ImpressionMetrics.id.getter();
                        v299 = v233;
                        *&v300 = v225;
                        *(&v300 + 1) = v227;
                        LOBYTE(v301) = 0;
                        v230 = ImpressionsCalculator.childCalculator(for:viewBounds:)();

                        (*(v280 + 8))(v237, v279);
                      }

                      else
                      {
                        v230 = 0;
                      }

                      v238 = *&v293;
                    }

                    else
                    {
                      v235 = v221;
                      v234 = v252;
                      v238 = *&v293;
                      v236 = v223;
                    }

                    v239 = *&v292;
                    v305.origin.x = v235;
                    v305.origin.y = v236;
                    v305.size.width = v225;
                    v305.size.height = v227;
                    v240 = -CGRectGetMinY(v305);
                    v306.origin.x = v238;
                    v306.origin.y = v239;
                    v306.size.width = v180;
                    v306.size.height = v182;
                    v307 = CGRectOffset(v306, 0.0, v240);
                    x = v307.origin.x;
                    y = v307.origin.y;
                    width = v307.size.width;
                    height = v307.size.height;
                    if (v230)
                    {

                      ImpressionsCalculator.addElement(_:at:)();
                    }

                    sub_1003161C8(&v302, v230, x, y, width, height);

                    v245 = *(v184 + 1);
                    v245(v219, v231);
                    v245(v234, v231);
                    (*(v290 + 8))(v278, v291);
                    (v288[1])(v232, v289);
                    goto LABEL_109;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v129)
              {
                v187 = v161;
                [v187 frame];
                sub_10030F8BC(v188, v189, v190, v191);
                swift_getObjectType();
                dispatch thunk of NestedModelImpressionsRecording.impressionsCalculator.setter();
              }

              v192 = v264;
              Shelf.impressionMetrics.getter();
              v193 = v286;
              v194 = *(v286 + 6);
              v195 = v287;
              if (v194(v192, 1, v287) == 1)
              {
                sub_10002B894(v192, &qword_100973D30, &unk_1007B1DC0);
                v196 = v265;
              }

              else
              {
                v197 = v259;
                (*(v193 + 4))(v259, v192, v195);
                v196 = v265;
                if (*(v134 + 112))
                {

                  [v161 frame];
                  ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)();
                }

                (*(v193 + 1))(v197, v195);
              }

              sub_10002C0AC(&v304, &v302);
              sub_10002A400(&v302, v303);
              dispatch thunk of ViewModel.impressionMetrics.getter();
              if (v194(v196, 1, v195) == 1)
              {

                (*(v290 + 8))(v278, v291);
                (v288[1])(v284, v289);
                (*(v273 + 8))(v283, v274);
                sub_100007000(&v304);
                v198 = v196;
LABEL_99:
                sub_10002B894(v198, &qword_100973D30, &unk_1007B1DC0);
                return sub_100007000(&v302);
              }

              (*(v193 + 4))(v247, v196, v195);
              v199 = v258;
              Shelf.impressionMetrics.getter();
              if (v194(v199, 1, v195) == 1)
              {
                sub_10002B894(v199, &qword_100973D30, &unk_1007B1DC0);
                v200 = 1;
                v201 = v280;
                v202 = v263;
              }

              else
              {
                v202 = v263;
                ImpressionMetrics.id.getter();
                (*(v193 + 1))(v199, v195);
                v200 = 0;
                v201 = v280;
              }

              v203 = v279;
              (*(v201 + 56))(v202, v200, 1, v279);
              if (*(v134 + 112))
              {
                v204 = v202;
                v205 = v253;
                sub_100318058(v204, v253);
                v206 = v201;
                v207 = (*(v201 + 48))(v205, 1, v203);

                if (v207 == 1)
                {
                  sub_10002B894(v205, &qword_100990A90, &unk_1007B5670);
                }

                else
                {
                  ImpressionMetrics.ID.element.getter();
                  (*(v206 + 8))(v205, v203);
                }

                v208 = v254;
                ImpressionMetrics.withParentId(_:)();

                [v161 frame];
                ImpressionsCalculator.addElement(_:at:)();

                (*(v193 + 1))(v208, v195);
                v202 = v263;
              }

              [v161 frame];
              v210 = v209;
              v212 = v211;
              v214 = v213;
              v216 = v215;
              v217 = *(v134 + 112);

              sub_1003161C8(&v302, v217, v210, v212, v214, v216);

              sub_10002B894(v202, &qword_100990A90, &unk_1007B5670);
              (*(v193 + 1))(v247, v195);
              (*(v290 + 8))(v278, v291);
              (v288[1])(v284, v289);
LABEL_109:
              (*(v273 + 8))(v283, v274);
              sub_100007000(&v304);
              return sub_100007000(&v302);
            }

            static ComponentLayoutOptions.isSingleVerticalColumn.getter();
            LODWORD(v266) = 0;
LABEL_52:
            v124 = v284;
            sub_10032B148(v28, v25);
            v125 = v288[1];
            v126 = v289;
            v125(v25, v289);
            v125(v28, v126);
            goto LABEL_53;
          }
        }
      }
    }

LABEL_39:
    static ComponentLayoutOptions.fixedHeightContainer.getter();
    LODWORD(v266) = 1;
    goto LABEL_52;
  }

  v289 = v66;
  v67 = a1;
  IndexPath.section.getter();
  type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v68 = dispatch thunk of ShelfPresenter.shelf(for:)();
  v288 = v67;
  [v67 frame];
  v69 = v294;
  v284 = sub_10030F8BC(v70, v71, v72, v73);
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v74 = v304;
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  v278 = v304;
  v283 = v68;
  Shelf.impressionMetrics.getter();
  v75 = v286;
  v76 = v287;
  if ((*(v286 + 6))(v54, 1, v287) == 1)
  {
    sub_10002B894(v54, &qword_100973D30, &unk_1007B1DC0);
    v77 = 1;
  }

  else
  {
    ImpressionMetrics.id.getter();
    (*(v75 + 1))(v54, v76);
    v77 = 0;
  }

  v98 = v280;
  v99 = v279;
  (*(v280 + 56))(v65, v77, 1, v279);
  v100 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  v101 = v74;
  v102 = CompoundScrollObserver.init(children:)();
  if (*(v69 + 112))
  {
    sub_100318058(v65, v61);
    if ((*(v98 + 48))(v61, 1, v99) == 1)
    {
      sub_10002B894(v61, &qword_100990A90, &unk_1007B5670);
    }

    else
    {
      v103 = v281;
      (*(v98 + 32))(v281, v61, v99);
      (*(v98 + 16))(v262, v103, v99);
      type metadata accessor for ImpressionIdScrollObserver();
      swift_allocObject();
      swift_retain_n();
      ImpressionIdScrollObserver.init(_:impressionID:collectionView:)();
      CompoundScrollObserver.addChild(_:)();

      (*(v98 + 8))(v103, v99);
    }
  }

  type metadata accessor for VideoPlaybackScrollObserver();
  swift_allocObject();
  v104 = v101;
  VideoPlaybackScrollObserver.init(_:)();
  CompoundScrollObserver.addChild(_:)();

  v105 = v278;
  v287 = v104;
  if (v278)
  {
    type metadata accessor for PlaybackScrollObserver();
    swift_allocObject();
    v106 = v105;
    PlaybackScrollObserver.init(_:)();
    CompoundScrollObserver.addChild(_:)();

    v286 = v106;
  }

  else
  {

    v286 = 0;
  }

  v107 = v102;
  sub_10002B894(v65, &qword_100990A90, &unk_1007B5670);
  v108 = v296;

  v109 = IndexPath.section.getter();
  v110 = v282;
  v111 = v283;
  Shelf.contentType.getter();
  v112 = Shelf.ContentType.doesModelContainment.getter();
  (*(v290 + 8))(v110, v291);
  v113 = *(v294 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10002849C(&qword_100980540, &qword_1007C7590);
  v115 = swift_allocObject();
  *(v115 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v115 + 16) = v108;
  *(v115 + 24) = v109;
  *(v115 + 32) = v112 & 1;
  *(v115 + 40) = v113;
  *(v115 + 64) = v107;
  *(v115 + 72) = &protocol witness table for CompoundScrollObserver;
  *(v115 + 80) = v284;
  swift_unknownObjectWeakAssign();

  v296 = v107;

  v116 = v288;
  v117 = swift_getObjectType();
  v118 = IndexPath.section.getter();
  v119 = sub_100097060(&qword_100980548, &qword_100980540, &qword_1007C7590, &unk_1007D65D0);
  v120 = v289;
  v121 = *(v289 + 32);

  v121(v111, v118, v285, v293, v115, v119, v292, v117, v120);
}

uint64_t sub_100313FF4(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v27 = v2;
  IndexPath.section.getter();
  type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  dispatch thunk of ShelfPresenter.contentType(for:)();
  IndexPath.section.getter();
  v13 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
  (*(v4 + 32))(v9, v12, v3);
  v14 = (*(v4 + 88))(v9, v3);
  if (v14 == enum case for Shelf.ContentType.smallLockup(_:) || v14 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    goto LABEL_11;
  }

  v20 = v14 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v14 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v20 || v14 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.editorialCard(_:) || v14 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.brick(_:) || v14 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.reviews(_:) || v14 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v14 == enum case for Shelf.ContentType.framedVideo(_:) || v14 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v14 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v14 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v14 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v14 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v14 == enum case for Shelf.ContentType.posterLockup(_:) || v14 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_6;
  }

  if (v14 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_11;
  }

  if (v14 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_6:
    if (v13)
    {
LABEL_11:
      IndexPath.section.getter();
      v18 = dispatch thunk of ShelfPresenter.rowsPerColumn(for:)();
      result = IndexPath.item.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else if (v18)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v18 != -1)
        {
          return (result + 1) % v18 == 0;
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
    (*(v4 + 8))(v9, v3);
  }

  v16 = IndexPath.section.getter();
  if (v16 >= dispatch thunk of ShelfPresenter.sectionCount.getter() || (dispatch thunk of ShelfPresenter.isShelfHidden(for:)() & 1) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
    if (sub_100647D6C(v16))
    {
      v17 = 1;
    }
  }

  IndexPath.section.getter();
  dispatch thunk of ShelfPresenter.contentType(for:)();
  IndexPath.section.getter();
  v23 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  v24 = sub_100316818(v6, v23, v28);
  result = (*(v4 + 8))(v6, v3);
  if (__OFSUB__(v17, 1))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!v24)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v17 == 0x8000000000000001 && v24 == -1)
  {
    goto LABEL_62;
  }

  v25 = (v17 - 1) % v24;
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    goto LABEL_59;
  }

  result = IndexPath.item.getter();
  if (__OFSUB__(v17, v26))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  return result >= v17 - v26;
}

uint64_t sub_100314558(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.section.getter();
  type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  v7 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  IndexPath.section.getter();
  dispatch thunk of ShelfPresenter.contentType(for:)();
  IndexPath.section.getter();
  v8 = dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  v9 = sub_100316818(v6, v8, a2);
  result = (*(v4 + 8))(v6, v3);
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 == 0x8000000000000001 && v9 == -1)
  {
    goto LABEL_12;
  }

  v11 = (v7 - 1) % v9;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = IndexPath.item.getter();
    if (!__OFSUB__(v7, v12))
    {
      return result >= v7 - v12;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

id sub_1003147E8(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_artworkLoader);
  v9 = OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_pageTraits;
  v10 = *(v3 + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_pageTraits);
  v11 = *(v3 + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_objectGraph);
  swift_unknownObjectRetain();
  sub_1003116A4(a2, a3, v8, v10, v11, a1);
  swift_unknownObjectRelease();
  v12 = [a2 contentView];
  [*(v4 + v9) pageMarginInsets];
  [v12 layoutMargins];
  [v12 setLayoutMargins:?];

  v13 = [a2 contentView];
  [*(v4 + v9) pageMarginInsets];
  [v13 layoutMargins];
  [v13 setLayoutMargins:?];

  type metadata accessor for SmallLockupCollectionViewTableCell();
  result = swift_dynamicCastClass();
  if (result)
  {

    return [result setSelectionStyle:0];
  }

  return result;
}

void sub_100314D38(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100985F30, &unk_1007B1ED0);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v33 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v27 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_shelfDataSource);
  v32 = *(v2 + OBJC_IVAR____TtC8AppStore31PurchasesCollectionViewDelegate_objectGraph);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = [a1 cellForItemAtIndexPath:isa];

  if (v14)
  {
    v31 = v9;
    swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = v15;
      v30 = a1;
      v17 = type metadata accessor for PurchasesContentPresenter();
      sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
      v27[1] = v17;
      dispatch thunk of ShelfPresenter.model(at:)();
      v28 = *(v34 + 16);
      v29 = v34 + 16;
      v28(v7, a2, v35);
      StatePath<A>.init(_:)();
      v36 = *(v12 + 24);

      sub_10002849C(&unk_100980500, &unk_1007C5220);
      sub_100097060(&qword_10097DB00, &unk_100980500, &unk_1007C5220, &protocol conformance descriptor for TransientStateStore<A>);
      WritableStateLens.init<A>(contentsOf:in:)();
      ObjectType = swift_getObjectType();
      v19 = (*(v16 + 88))(v37, v11, v32, ObjectType, v16);
      v20 = v19;
      if (v19)
      {
        dispatch thunk of ShelfPresenter.didSelectItem(at:)();
        v21 = v30;
        if ((v20 & 2) == 0)
        {
LABEL_5:
          if ((v20 & 4) == 0)
          {
LABEL_7:

            (*(v33 + 8))(v11, v31);
            sub_100007000(v37);
            return;
          }

LABEL_6:
          sub_10002849C(&qword_10096FCE8, qword_1007BCF50);
          v22 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1007B10D0;
          v28((v23 + v22), a2, v35);
          v24 = Array._bridgeToObjectiveC()().super.isa;

          [v21 reloadItemsAtIndexPaths:v24];

          v14 = v24;
          goto LABEL_7;
        }
      }

      else
      {
        v21 = v30;
        if ((v19 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v26 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v21 deselectItemAtIndexPath:v26 animated:1];

      if ((v20 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  type metadata accessor for PurchasesContentPresenter();
  sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  dispatch thunk of ShelfPresenter.didSelectItem(at:)();
  v35 = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:v35 animated:1];
  v25 = v35;
}

id sub_100315374()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100315640(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1003156C0(a6);
  }

  return a3(1);
}

uint64_t sub_1003156C0(uint64_t a1)
{
  v1 = type metadata accessor for PurchasesContentMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  PurchasesContentPresenter.mode.getter();
  (*(v2 + 104))(v4, enum case for PurchasesContentMode.hidden(_:), v1);
  sub_100318010(&qword_1009804E8, &type metadata accessor for PurchasesContentMode, &protocol conformance descriptor for PurchasesContentMode);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v8 = *(v2 + 8);
    v8(v4, v1);
    v8(v7, v1);

    return PurchasesContentPresenter.unhidePurchase(at:)();
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v7, v1);

  if (v9)
  {
    return PurchasesContentPresenter.unhidePurchase(at:)();
  }

  return PurchasesContentPresenter.hidePurchase(at:)();
}

uint64_t sub_100315A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100980550, &qword_1007B1290);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007B1890;
  *(v8 + 32) = IndexPath.section.getter();
  *(v8 + 40) = a1;
  IndexPath.init(arrayLiteral:)();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    type metadata accessor for PurchasesContentPresenter();
    sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    dispatch thunk of ShelfPresenter.didSelectNestedItem(at:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100315BDC(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10002849C(&qword_100990A90, &unk_1007B5670);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for ImpressionMetrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10002C0AC(a1, v53);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  sub_10002849C(&qword_100973D58, &qword_1007B5680);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100005A38(v51, v54);
    sub_10002A400(v54, v54[3]);
    v19 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10002C0AC(v21, v53);
          sub_10002A400(v53, v53[3]);
          v23 = v48;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10002B894(v23, &qword_100973D30, &unk_1007B1DC0);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10002A400(v44, v44[3]);
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10002B894(v10, &qword_100973D30, &unk_1007B1DC0);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              ImpressionMetrics.id.getter();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = type metadata accessor for ImpressionMetrics.ID();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_100318058(v27, v40);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10002B894(v31, &qword_100990A90, &unk_1007B5670);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10002B894(v32, &qword_100990A90, &unk_1007B5670);
              v35(v34, v37);
            }

            else
            {
              sub_10002B894(v27, &qword_100990A90, &unk_1007B5670);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_100007000(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10002B894(v51, &qword_100973D60, &qword_1007B5688);
  }
}

uint64_t sub_1003161C8(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_10002849C(&qword_100990A90, &unk_1007B5670);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v43 - v11;
  v12 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = type metadata accessor for ImpressionMetrics();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v45 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = &v43 - v22;
  v48 = a1;
  sub_10002C0AC(a1, v57);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  sub_10002849C(&qword_100973D58, &qword_1007B5680);
  if (swift_dynamicCast())
  {
    v52 = v17;
    v44 = v9;
    sub_100005A38(v55, v58);
    sub_10002A400(v58, v58[3]);
    v23 = dispatch thunk of ComponentModelContainer.children.getter();
    if (v23)
    {
      v54 = v18;
      v43 = v23;
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v43 + 32;
        v26 = (v19 + 48);
        v46 = (v19 + 32);
        v49 = (v19 + 8);
        v47 = v14;
        do
        {
          sub_10002C0AC(v25, v57);
          sub_10002A400(v57, v57[3]);
          v27 = v52;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          sub_100007000(v57);
          v28 = *v26;
          v29 = v54;
          if ((*v26)(v27, 1, v54) == 1)
          {
            sub_10002B894(v27, &qword_100973D30, &unk_1007B1DC0);
          }

          else
          {
            (*v46)(v53, v27, v29);
            sub_10002A400(v48, v48[3]);
            dispatch thunk of ViewModel.impressionMetrics.getter();
            if (v28(v14, 1, v29) == 1)
            {
              sub_10002B894(v14, &qword_100973D30, &unk_1007B1DC0);
              v30 = 1;
              v31 = v50;
            }

            else
            {
              v32 = v14;
              v31 = v50;
              ImpressionMetrics.id.getter();
              (*v49)(v32, v29);
              v30 = 0;
            }

            v33 = type metadata accessor for ImpressionMetrics.ID();
            v34 = *(v33 - 8);
            (*(v34 + 56))(v31, v30, 1, v33);
            if (v51)
            {
              v35 = v44;
              sub_100318058(v31, v44);
              if ((*(v34 + 48))(v35, 1, v33) == 1)
              {
                v36 = v31;
                sub_10002B894(v35, &qword_100990A90, &unk_1007B5670);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v34 + 8))(v35, v33);
                v36 = v50;
              }

              v37 = v45;
              v38 = v53;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.addElement(_:at:)();
              v39 = *v49;
              v40 = v37;
              v41 = v54;
              (*v49)(v40, v54);
              sub_10002B894(v36, &qword_100990A90, &unk_1007B5670);
              v39(v38, v41);
            }

            else
            {
              sub_10002B894(v31, &qword_100990A90, &unk_1007B5670);
              (*v49)(v53, v54);
            }

            v14 = v47;
          }

          v25 += 40;
          --v24;
        }

        while (v24);
      }
    }

    return sub_100007000(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    return sub_10002B894(v55, &qword_100973D60, &qword_1007B5688);
  }
}

uint64_t sub_100316818(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a2;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = v6[2];
  v13(&v21 - v11, a1, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 0;
  if (v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v25 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
    v22 = v6[1];
    v22(v12, v5);
    ObjectType = swift_getObjectType();
    v24 = a3;
    v18 = [a3 traitCollection];
    (v13)(v8, a1, v5);
    v19 = v14(v8, v5);
    if (v19 == enum case for Shelf.ContentType.artwork(_:) || v19 == enum case for Shelf.ContentType.ribbonBar(_:) || v19 == enum case for Shelf.ContentType.ribbonFlow(_:) || v19 == enum case for Shelf.ContentType.paragraph(_:) || v19 == enum case for Shelf.ContentType.footnote(_:) || v19 == enum case for Shelf.ContentType.titledParagraph(_:) || v19 == enum case for Shelf.ContentType.reviewsContainer(_:) || v19 == enum case for Shelf.ContentType.reviewSummary(_:) || v19 == enum case for Shelf.ContentType.editorialLink(_:) || v19 == enum case for Shelf.ContentType.quote(_:) || v19 == enum case for Shelf.ContentType.framedArtwork(_:) || v19 == enum case for Shelf.ContentType.screenshots(_:) || v19 == enum case for Shelf.ContentType.appShowcase(_:) || v19 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) || v19 == enum case for Shelf.ContentType.linkableText(_:) || v19 == enum case for Shelf.ContentType.framedVideo(_:) || v19 == enum case for Shelf.ContentType.productDescription(_:) || v19 == enum case for Shelf.ContentType.banner(_:) || v19 == enum case for Shelf.ContentType.roundedButton(_:) || v19 == enum case for Shelf.ContentType.titledButtonStack(_:) || v19 == enum case for Shelf.ContentType.smallStoryCard(_:) || v19 == v25 || v19 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v19 == enum case for Shelf.ContentType.upsellBreakout(_:) || v19 == enum case for Shelf.ContentType.smallBreakout(_:) || v19 == enum case for Shelf.ContentType.arcadeFooter(_:) || v19 == enum case for Shelf.ContentType.editorialQuote(_:) || v19 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v19 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) || v19 == enum case for Shelf.ContentType.preorderDisclaimer(_:) || v19 == enum case for Shelf.ContentType.privacyHeader(_:) || v19 == enum case for Shelf.ContentType.privacyFooter(_:) || v19 == enum case for Shelf.ContentType.privacyCategory(_:) || v19 == enum case for Shelf.ContentType.privacyDefinition(_:) || v19 == enum case for Shelf.ContentType.heroCarousel(_:) || v19 == enum case for Shelf.ContentType.unifiedMessage(_:) || (v22(v8, v5), (UITraitCollection.isSizeClassRegular.getter() & 1) == 0))
    {
    }

    else
    {
      v20 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if ((v20 & 1) == 0)
      {
        return sub_1005D8F34(v26, v24, a1);
      }
    }

    return 1;
  }

  return result;
}

void sub_100316CF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10002849C(&qword_100990A90, &unk_1007B5670);
  __chkstk_darwin(v9 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = &v86 - v13;
  v14 = type metadata accessor for Shelf.ContentType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v99 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v101 = &v86 - v18;
  v19 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v19 - 8);
  v93 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v94 = &v86 - v22;
  __chkstk_darwin(v23);
  v98 = &v86 - v24;
  v25 = type metadata accessor for ImpressionMetrics();
  v102 = *(v25 - 8);
  v103 = v25;
  __chkstk_darwin(v25);
  v92 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v95 = &v86 - v28;
  __chkstk_darwin(v29);
  v97 = &v86 - v30;
  if (IndexPath.count.getter() >= 2)
  {
    v88 = v11;
    v89 = *(v4 + 16);
    v31 = type metadata accessor for PurchasesContentPresenter();
    v90 = sub_100318010(&qword_10097B648, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
    v100 = a2;
    v32 = dispatch thunk of ShelfPresenter.doesModelExist(for:)();
    v110 = sub_100005744(0, &qword_100978E10, UICollectionViewCell_ptr);
    v109[0] = a1;
    v33 = a1;
    v91 = v32;
    tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)();
    sub_100007000(v109);
    swift_getObjectType();
    v34 = swift_conformsToProtocol2();
    v104 = a4;
    v105 = v31;
    if (v34 && v33)
    {
      type metadata accessor for VideoPlaybackCoordinator();
      v87 = v15;
      type metadata accessor for BaseObjectGraph();
      v35 = v33;
      inject<A, B>(_:from:)();
      v36 = v109[0];
      swift_getObjectType();
      v37 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
      v38 = v14;
      v39 = v5;
      v40 = v35;
      dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();

      v5 = v39;
      v14 = v38;

      v15 = v87;
    }

    v108 = v33;
    v41 = v33;
    sub_10002849C(&qword_100980518, &qword_1007C7578);
    if (swift_dynamicCast())
    {
      sub_100005A38(v106, v109);
      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v42 = *&v106[0];
      sub_10002A400(v109, v110);
      dispatch thunk of ManagedVideoViewProviding.unregisterVideos(with:)();

      sub_100007000(v109);
    }

    else
    {
      v107 = 0;
      memset(v106, 0, sizeof(v106));
      sub_10002B894(v106, &unk_100980520, &unk_1007C7580);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v33)
    {
      type metadata accessor for PlaybackCoordinator();
      v43 = v41;
      BaseObjectGraph.optional<A>(_:)();
      v44 = v109[0];
      if (v109[0])
      {
        v45 = v43;
        v46 = v44;
        dispatch thunk of PlaybackCoordinator.unregister(playableView:)();

        v43 = v46;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v33)
    {
      swift_getObjectType();
      v47 = v41;
      dispatch thunk of AnyAvatarShowcaseDisplaying.unapply()();
    }

    swift_getObjectType();
    v48 = swift_conformsToProtocol2();
    if (v48 && v33)
    {
      v49 = v48;
      ObjectType = swift_getObjectType();
      v51 = *(v49 + 8);
      v52 = v41;
      v51(ObjectType, v49);
    }

    if (v91)
    {
      swift_getObjectType();
      v53 = swift_conformsToProtocol2();
      if (v53 && v33)
      {
        v54 = v53;
        v55 = swift_getObjectType();
        v56 = *(v54 + 40);
        v57 = v41;
        v56(v55, v54);
      }

      v58 = IndexPath.section.getter();
      v59 = sub_100647D6C(v58);
      IndexPath.section.getter();
      if (v59)
      {
        dispatch thunk of ShelfPresenter.shelf(for:)();
        v60 = v98;
        Shelf.impressionMetrics.getter();
        v62 = v102;
        v61 = v103;
        if ((*(v102 + 48))(v60, 1, v103) == 1)
        {

          sub_10002B894(v60, &qword_100973D30, &unk_1007B1DC0);
        }

        else
        {
          v73 = v97;
          (*(v62 + 32))(v97, v60, v61);
          if (*(v5 + 112))
          {

            ImpressionsCalculator.removeElement(_:)();
          }

          (*(v62 + 8))(v73, v61);
        }

        return;
      }

      v63 = v101;
      dispatch thunk of ShelfPresenter.contentType(for:)();
      IndexPath.section.getter();
      v64 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
      v65 = v99;
      (*(v15 + 16))(v99, v63, v14);
      v66 = (*(v15 + 88))(v65, v14);
      if (v66 == enum case for Shelf.ContentType.smallLockup(_:) || v66 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v66 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v66 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.editorialCard(_:) || v66 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.brick(_:) || v66 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.reviews(_:) || v66 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v66 == enum case for Shelf.ContentType.framedVideo(_:) || v66 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v66 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v66 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v66 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v66 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v66 == enum case for Shelf.ContentType.posterLockup(_:) || v66 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v64)
        {
          goto LABEL_56;
        }
      }

      else
      {
        (*(v15 + 8))(v65, v14);
      }

      v67 = dispatch thunk of ShelfPresenter.sectionCount.getter();
      if (IndexPath.section.getter() < v67)
      {
        v68 = IndexPath.item.getter();
        IndexPath.section.getter();
        if (v68 < dispatch thunk of ShelfPresenter.numberOfRows(for:)())
        {
          dispatch thunk of ShelfPresenter.model(at:)();
          sub_10002A400(v109, v110);
          v69 = v94;
          dispatch thunk of ViewModel.impressionMetrics.getter();
          v70 = v102;
          v71 = *(v102 + 48);
          v72 = v103;
          if (v71(v69, 1, v103) == 1)
          {
            (*(v15 + 8))(v101, v14);
            sub_10002B894(v69, &qword_100973D30, &unk_1007B1DC0);
          }

          else
          {
            (*(v70 + 32))(v95, v69, v72);
            IndexPath.section.getter();
            dispatch thunk of ShelfPresenter.shelf(for:)();
            v74 = v93;
            Shelf.impressionMetrics.getter();
            if (v71(v74, 1, v72) == 1)
            {
              sub_10002B894(v74, &qword_100973D30, &unk_1007B1DC0);
              v75 = 1;
              v76 = v96;
            }

            else
            {
              v76 = v96;
              ImpressionMetrics.id.getter();
              (*(v70 + 8))(v74, v72);
              v75 = 0;
            }

            v77 = v88;
            v78 = type metadata accessor for ImpressionMetrics.ID();
            v79 = *(v78 - 8);
            (*(v79 + 56))(v76, v75, 1, v78);
            if (*(v5 + 112))
            {
              sub_100318058(v76, v77);
              v80 = (*(v79 + 48))(v77, 1, v78);

              if (v80 == 1)
              {
                sub_10002B894(v77, &qword_100990A90, &unk_1007B5670);
              }

              else
              {
                ImpressionMetrics.ID.element.getter();
                (*(v79 + 8))(v77, v78);
              }

              v84 = v95;
              v85 = v92;
              ImpressionMetrics.withParentId(_:)();

              ImpressionsCalculator.removeElement(_:)();

              v83 = v102;
              v82 = v103;
              (*(v102 + 8))(v85, v103);
              v81 = *(v5 + 112);
            }

            else
            {
              v81 = 0;
              v83 = v102;
              v82 = v103;
              v84 = v95;
            }

            sub_100315BDC(v109, v81);

            sub_10002B894(v96, &qword_100990A90, &unk_1007B5670);
            (*(v83 + 8))(v84, v82);
            (*(v15 + 8))(v101, v14);
          }

          sub_100007000(v109);
          return;
        }
      }

LABEL_56:
      (*(v15 + 8))(v63, v14);
    }
  }
}

id sub_100317B88(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PurchasesContentMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PurchasesContentPresenter.canHidePurchases.getter())
  {
    PurchasesContentPresenter.mode.getter();
    IsHidden = PurchasesContentMode.toggleIsHiddenText.getter();
    v24[0] = v11;
    v24[1] = IsHidden;
    (*(v7 + 8))(v9, v6);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v3 + 16))(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v13 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v3 + 32))(v14 + v13, v5, v2);

    v15 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100317F74;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100653848;
    aBlock[3] = &unk_1008BDEE0;
    v16 = _Block_copy(aBlock);
    v17 = [objc_opt_self() contextualActionWithStyle:1 title:v15 handler:v16];

    _Block_release(v16);

    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1007B0B70;
    *(v18 + 32) = v17;
    sub_100005744(0, &unk_100990AC0, UIContextualAction_ptr);
    v19 = v17;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = [objc_opt_self() configurationWithActions:isa];

    [v21 setPerformsFirstActionWithFullSwipe:0];
  }

  else
  {
    sub_100005744(0, &unk_100990AC0, UIContextualAction_ptr);
    v22 = Array._bridgeToObjectiveC()().super.isa;
    v21 = [objc_opt_self() configurationWithActions:v22];
  }

  return v21;
}

uint64_t sub_100317F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(type metadata accessor for IndexPath() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_100315640(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100318010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100318058(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100990A90, &unk_1007B5670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003180C8(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexPath() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100315A30(a1, v1 + v4, v5);
}

uint64_t sub_100318164()
{
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2448);
  qword_100980570 = v0;
  unk_100980578 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_100980558);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_100318220()
{
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2460);
  qword_100980598 = v0;
  unk_1009805A0 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_100980580);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_1003182FC(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticDimension();
  sub_100005644(v8, a3);
  sub_1000056A8(v8, a3);
  if (qword_10096DE30 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D0A10);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v14);
  (*(v5 + 16))(v11, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100318500()
{
  sub_10002849C(&qword_100975768, &qword_1007BA168);
  sub_100135E04();
  WritableStateLens<A>.updateValue(_:)();
  return 3;
}

unint64_t sub_10031857C()
{
  result = qword_1009805D8;
  if (!qword_1009805D8)
  {
    type metadata accessor for Paragraph();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009805D8);
  }

  return result;
}

unint64_t sub_1003185DC()
{
  result = qword_100980628;
  if (!qword_100980628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980628);
  }

  return result;
}

unint64_t sub_100318634()
{
  result = qword_100980630;
  if (!qword_100980630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100980630);
  }

  return result;
}

BOOL sub_100318688(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
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
    v25 = &v24[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
    *v25 = a3;
    v25[1] = a4;
    v25[2] = a5;
    v25[3] = a6;
    *&v24[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] = 4;
    v26 = &v24[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize];
    *v26 = a7;
    *(v26 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v24[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection] = v22;
    *&v24[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText] = v21;
    v47.receiver = v24;
    v47.super_class = v23;
    v27 = objc_msgSendSuper2(&v47, "init");
    if (qword_10096E9D0 != -1)
    {
      swift_once();
    }

    v28 = qword_10098CEC8;
    v29 = [qword_10098CEC8 objectForKey:v27];
    if (v29)
    {
      v30 = v29;

      v20 = *&v30[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements + 8];
    }

    else
    {
      v31 = qword_10096E9C8;
      v30 = v21;
      if (v31 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for FontUseCase();
      v33 = sub_1000056A8(v32, qword_10098CEB0);
      v34 = *(v32 - 8);
      (*(v34 + 16))(v18, v33, v32);
      (*(v34 + 56))(v18, 0, 1, v32);
      static TextMeasurable.defaultTextAlignment.getter();
      static TextMeasurable.defaultLineBreakMode.getter();
      static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)();
      v36 = v35;
      v38 = v37;
      v40 = v39;

      sub_10002B894(v18, &qword_100972ED0, &unk_1007B17B0);
      v20 = a3 + a5 + v36;
      v41 = type metadata accessor for ExpandableTextView.CacheValue();
      v42 = objc_allocWithZone(v41);
      v43 = &v42[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
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

double sub_100318A20(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Paragraph.Style();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 pageMarginInsets];
  v13 = v12;
  if (Paragraph.suppressVerticalMargins.getter())
  {
    return v13;
  }

  Paragraph.style.getter();
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
    if (qword_10096D8D0 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_100980558, qword_100980570);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v13 = v15;
    v16 = *(v4 + 8);
    v16(v6, v3);
    if (qword_10096D8D8 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_100980580, qword_100980598);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v16(v6, v3);
    return v13;
  }

  if (qword_10096D8E0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for StaticDimension();
  sub_1000056A8(v32, qword_1009805A8);
  if (qword_10096DE30 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  sub_1000056A8(v17, qword_1009D0A10);
  v18 = [a2 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v19 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  StaticDimension.value(compatibleWith:rounded:)();
  v21 = v20;
  UIFont.estimatedFirstBaseline.getter();
  v23 = v22;

  v24 = *(v4 + 8);
  v24(v6, v3);
  v25 = v21 - v23;
  if (qword_10096D8E8 != -1)
  {
    swift_once();
  }

  v13 = ceil(v25);
  sub_1000056A8(v32, qword_1009805C0);
  v26 = [a2 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  StaticDimension.value(compatibleWith:rounded:)();
  [v27 descender];

  v24(v6, v3);
  return v13;
}

void sub_100318F58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  sub_10002849C(&qword_100980638, &qword_1007C7640);
  sub_100135E04();
  StateLens<A>.currentValue.getter();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v24 = Paragraph.isCollapsed.getter();
  }

  else
  {
    v24 = aBlock[0];
  }

  v10 = Paragraph.text.getter();
  swift_getObjectType();
  v11 = [a4 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v13 = [v10 length];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 40) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100126854;
  *(v15 + 24) = v14;
  aBlock[4] = sub_100126848;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  aBlock[3] = &unk_1008BE100;
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
    [a4 pageMarginInsets];
    sub_100766148(v18, v24 & 1, a4, v20, v21, v22, v23, a5, a6);

    sub_100318A20(a1, a4);
  }
}

void sub_100319230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v117 = a2;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for Paragraph.Alignment();
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
  v16 = sub_10002849C(&qword_10097C3F0, &qword_1007C4208);
  __chkstk_darwin(v16 - 8);
  v112 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v106 - v19;
  __chkstk_darwin(v20);
  v110 = &v106 - v21;
  __chkstk_darwin(v22);
  v111 = &v106 - v23;
  v116 = type metadata accessor for Paragraph.Style();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v106 - v27;
  v124 = v5;
  v29 = [v5 contentView];
  [v29 setLayoutMargins:{sub_100318A20(a1, a5)}];

  v121 = a1;
  v30 = Paragraph.text.getter();
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
  *(v35 + 16) = sub_10010279C;
  *(v35 + 24) = v34;
  v129 = sub_1001027AC;
  v130 = v35;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_1006606C4;
  v128 = &unk_1008BE010;
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
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v50 = v49;
  v52 = v51;

  v120 = v38;
  LODWORD(v113) = sub_100318688(v38, a5, v40, v42, v44, v46, v50, v52);
  v53 = *&v47[OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_expandableTextView];
  Paragraph.style.getter();
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
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v64 = static UIColor.secondaryText.getter();
    goto LABEL_6;
  }

  if (v60 == enum case for Paragraph.Style.caption(_:) || v60 == enum case for Paragraph.Style.todayCardOverlay(_:) || v60 == enum case for Paragraph.Style.privacyDefinitions(_:))
  {
LABEL_3:
    v63 = a5;
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v64 = static UIColor.primaryText.getter();
LABEL_6:
    v65 = v64;
    (*(v54 + 8))(v28, v59);
    goto LABEL_7;
  }

  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v65 = static UIColor.primaryText.getter();
  ObjectType = a5;
  v97 = *(v54 + 8);
  v97(v28, v59);
  v97(v57, v59);
  v63 = ObjectType;
LABEL_7:
  ObjectType = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
  [*(v53 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setTextColor:v65];

  sub_10002849C(&qword_100975768, &qword_1007BA168);
  sub_100135E04();
  WritableStateLens<A>.currentValue.getter();
  v66 = aBlock;
  v67 = v118;
  v68 = v61;
  if (aBlock == 2)
  {
    v66 = Paragraph.isCollapsed.getter();
  }

  if ((v66 & v113 & 1) == 0)
  {
    v90 = v120;
    Paragraph.alignment.getter();
    (*(v61 + 56))(v67, 0, 1, v62);
    v91 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
    v92 = *(v53 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed);
    *(v53 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed) = 0;
    v93 = *&ObjectType[v53];
    v94 = v90;
    [v93 setNumberOfLines:0];
    if (v92 != *(v53 + v91))
    {
      sub_1005A0320();
    }

    v86 = v94;
    sub_10059FCD8(v94);
    *(v53 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed) = 0;
    v95 = v112;
    sub_10027D5B8(v67, v112);
    v96 = (*(v68 + 48))(v95, 1, v62);
    v89 = v124;
    if (v96 == 1)
    {
      sub_10002B894(v95, &qword_10097C3F0, &qword_1007C4208);
LABEL_42:
      [v53 setNeedsLayout];
LABEL_47:

      sub_10002B894(v67, &qword_10097C3F0, &qword_1007C4208);
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

  v69 = Paragraph.collapsedText.getter();
  v70 = [v63 traitCollection];
  v71 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v69];
  v72 = [v69 length];
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = v70;
  *(v73 + 32) = v71;
  *(v73 + 40) = 1;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_100126854;
  *(v74 + 24) = v73;
  v129 = sub_100126848;
  v130 = v74;
  aBlock = _NSConcreteStackBlock;
  v126 = 1107296256;
  v127 = sub_1006606C4;
  v128 = &unk_1008BE088;
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
    Paragraph.alignment.getter();
    v80 = v122;
    v79 = v123;
    (*(v122 + 56))(v67, 0, 1, v123);
    v81 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
    v82 = *(v53 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed);
    *(v53 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed) = 1;
    v83 = *(v53 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines);
    v84 = *&ObjectType[v53];
    v85 = v78;
    [v84 setNumberOfLines:v83];
    if (v82 != *(v53 + v81))
    {
      sub_1005A0320();
    }

    v86 = v85;
    sub_10059FCD8(v85);
    *(v53 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed) = 0;
    v87 = v110;
    sub_10027D5B8(v67, v110);
    v88 = (*(v80 + 48))(v87, 1, v79);
    v89 = v124;
    if (v88 == 1)
    {
      sub_10002B894(v87, &qword_10097C3F0, &qword_1007C4208);
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

char *sub_10031A0A0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  v4[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsCalculator] = 0;
  v11 = &v4[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsUpdateBlock];
  v12 = type metadata accessor for AppSearchResultContentView();
  *v11 = 0;
  v11[1] = 0;
  v19.receiver = v4;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots]];

  return v17;
}

void (*sub_10031A268(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a1 = Strong;
  return sub_10031A2E8;
}

void sub_10031A2E8(uint64_t a1, char a2)
{
  v26 = *a1;
  v4 = *(*(a1 + 8) + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100324304(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v10 = v4;
        v11 = static NSObject.== infix(_:_:)();

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
    if (v23)
    {
      v25 = v23;
      [v4 addSubview:v23];
    }

    sub_1001B8790(v24);
    [v4 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_100324304(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v16 = v4;
      v17 = static NSObject.== infix(_:_:)();

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
  if (v19)
  {
    v21 = v19;
    [v4 addSubview:v19];
  }

  sub_1001B8790(v20);
  [v4 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

id sub_10031A5B8()
{
  v1 = v0;
  v2 = type metadata accessor for SmallSearchLockupLayout();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v144 = *(v6 - 8);
  v145 = v6;
  __chkstk_darwin(v6);
  v134 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LabelPlaceholderCompatibility();
  v138 = *(v8 - 8);
  v139 = v8;
  __chkstk_darwin(v8);
  v137 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OfferButtonMetrics();
  v148 = *(v10 - 8);
  v149 = v10;
  __chkstk_darwin(v10);
  v136 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v147 = &v108 - v13;
  v152 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v146 = *(v152 - 8);
  __chkstk_darwin(v152);
  v142 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v153 = &v108 - v16;
  v17 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v17 - 8);
  v133 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v150 = &v108 - v20;
  v21 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v151 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v108 - v22;
  v24 = type metadata accessor for AppSearchResultContentView();
  v191.receiver = v0;
  v191.super_class = v24;
  objc_msgSendSuper2(&v191, "layoutSubviews");
  v25 = *&v0[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView];
  LayoutMarginsAware<>.layoutFrame.getter();
  sub_1000AB0CC(v26, v27);
  LayoutMarginsAware<>.layoutFrame.getter();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  result = [v25 setFrame:?];
  if (v0[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia] == 1)
  {
    v128 = v5;
    v129 = v3;
    v130 = v2;
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v29 = [v0 traitCollection];
    v30 = type metadata accessor for TraitEnvironmentPlaceholder();
    v125 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v31 = swift_allocObject();
    v141 = xmmword_1007B0B70;
    *(v31 + 16) = xmmword_1007B0B70;
    *(v31 + 32) = v29;
    v32 = v29;
    v135 = v30;
    v33 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    v123 = sub_1000320F0();
    dispatch thunk of AnyDimension.rawValue(in:)();

    v35 = v151 + 8;
    v34 = *(v151 + 8);
    v127 = v21;
    v124 = v34;
    v34(v23, v21);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v192);
    [v25 frame];
    MaxY = CGRectGetMaxY(v193);
    v37 = *&v25[OBJC_IVAR____TtC8AppStore14BaseLockupView_title + 8];
    v116 = *&v25[OBJC_IVAR____TtC8AppStore14BaseLockupView_title];
    v38 = *&v25[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    v115 = v37;

    v39 = [v38 text];
    if (v39)
    {
      v40 = v39;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v117 = v42;
      v118 = v41;
    }

    else
    {
      v117 = 0;
      v118 = 0;
    }

    v43 = [*&v25[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel] text];
    if (v43)
    {
      v44 = v43;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v46;
      v120 = v45;
    }

    else
    {
      v119 = 0;
      v120 = 0;
    }

    v47 = *&v25[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView];
    v48 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
    swift_beginAccess();
    v143 = *(v47 + v48);

    v49 = v150;
    static MetadataRibbonViewLayout.Metrics.standard.getter();
    (*(v144 + 56))(v49, 0, 1, v145);
    v50 = *(*&v25[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels);
    v109 = v25[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_shouldEvenlyDistribute];
    v140 = v50;

    LayoutMarginsAware<>.layoutFrame.getter();
    v52 = v51;
    v54 = v53;
    v55 = [v1 traitCollection];
    if (qword_10096CF70 != -1)
    {
      swift_once();
    }

    v56 = v152;
    v57 = sub_1000056A8(v152, qword_1009CDC00);
    v121 = *(v146 + 16);
    v122 = v146 + 16;
    v121(v153, v57, v56);
    v58 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v131 = v1;
    v151 = v35;
    v126 = v23;
    if (v58)
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v59 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v59 = qword_100991028;
    }

    v60 = v149;
    v61 = sub_1000056A8(v149, v59);
    v62 = v148;
    v63 = v136;
    (*(v148 + 16))(v136, v61, v60);
    (*(v62 + 32))(v147, v63, v60);
    v64 = [v55 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v114 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v136 = LayoutViewPlaceholder.init(representing:)();
    v65 = objc_opt_self();
    v112 = v65;
    v66 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
    v67 = type metadata accessor for Feature();
    v190[3] = v67;
    v68 = sub_100324304(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v190[4] = v68;
    v111 = v68;
    v69 = sub_1000056E0(v190);
    v70 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v71 = *(v67 - 8);
    v72 = *(v71 + 104);
    v113 = v71 + 104;
    v110 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v72(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
    isFeatureEnabled(_:)();
    v132 = v55;
    sub_100007000(v190);
    v73 = v137;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v74 = v139;
    v138 = *(*&v138 + 8);
    (*&v138)(v73, v139);
    v75 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v189[3] = v67;
    v189[4] = v68;
    v76 = sub_1000056E0(v189);
    v72(v76, v70, v67);
    isFeatureEnabled(_:)();
    sub_100007000(v189);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v77 = v138;
    (*&v138)(v73, v74);
    v78 = [v112 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v188[3] = v67;
    v188[4] = v111;
    v79 = sub_1000056E0(v188);
    v72(v79, v110, v67);
    isFeatureEnabled(_:)();
    sub_100007000(v188);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    (*&v77)(v73, v74);
    v80 = v143;
    LODWORD(v139) = sub_1000AE138() & (v80 != 0);
    if (v139 == 1)
    {
      v81 = v114;
      v138 = MaxY;
      v82 = objc_allocWithZone(v135);
      v83 = v132;
      v84 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v85 = v133;
      sub_100031660(v150, v133, &unk_1009912C0, &unk_1007B4130);
      v87 = v144;
      v86 = v145;
      v88 = *(v144 + 48);
      if (v88(v85, 1, v145) == 1)
      {
        v89 = v134;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        if (v88(v85, 1, v86) != 1)
        {
          sub_10002B894(v85, &unk_1009912C0, &unk_1007B4130);
        }
      }

      else
      {
        v89 = v134;
        (*(v87 + 32))(v134, v85, v86);
      }

      v92 = v84;
      sub_1000AD91C(v143, v89, v92, v52, v54);

      (*(v87 + 8))(v89, v86);
      v90 = v81;
      swift_allocObject();
      v91 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v90 = v114;
      swift_allocObject();
      v91 = LayoutViewPlaceholder.init(representing:)();
    }

    v145 = v91;

    v93 = v140;
    if ((sub_1000AE138() & (v93 != 0)) == 1)
    {
      v94 = v132;
      sub_100046528(v93, v109, v52, v54);
      swift_allocObject();
      v95 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      swift_allocObject();
      v95 = LayoutViewPlaceholder.init(representing:)();
      v94 = v132;
    }

    v121(v142, v153, v152);
    v187 = &protocol witness table for LayoutViewPlaceholder;
    v186 = v90;
    v185 = v136;
    v184 = 0;
    *&v182[40] = 0u;
    v183 = 0u;
    sub_10002C0AC(v190, v182);
    sub_10002C0AC(v189, &v181);
    v180 = 0;
    v178 = 0u;
    v179 = 0u;
    v177 = 0;
    v175 = 0u;
    v176 = 0u;

    v96 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v174 = &protocol witness table for LayoutViewPlaceholder;
    v173 = v90;
    v172 = v96;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    v165 = 0;
    v163 = 0u;
    v164 = 0u;
    v162 = 0;
    v161 = 0u;
    *&v160[40] = 0u;
    sub_10002C0AC(v188, v160);
    v158 = v90;
    v159 = &protocol witness table for LayoutViewPlaceholder;
    v156 = &protocol witness table for LayoutViewPlaceholder;
    v157 = v145;
    v155 = v90;
    v154 = v95;
    v97 = v128;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    v98 = swift_allocObject();
    *(v98 + 16) = v141;
    *(v98 + 32) = v94;
    v99 = v94;
    v100 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_100324304(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v101 = v130;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v129 + 8))(v97, v101);
    sub_100007000(v188);
    sub_100007000(v189);
    sub_100007000(v190);
    (*(v148 + 8))(v147, v149);
    (*(v146 + 8))(v153, v152);
    v102 = v126;
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v103 = swift_allocObject();
    *(v103 + 16) = v141;
    *(v103 + 32) = v99;
    v104 = v99;
    v105 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    v106 = v127;
    dispatch thunk of AnyDimension.rawValue(in:)();

    v124(v102, v106);
    sub_10002B894(v150, &unk_1009912C0, &unk_1007B4130);
    v107 = *&v131[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots];
    [v131 bounds];
    CGRect.withLayoutDirection(in:relativeTo:)();
    return [v107 setFrame:?];
  }

  return result;
}

id sub_10031B76C()
{
  v1 = v0;
  sub_1000ACF48();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots];
  result = sub_1001B8FAC();
  v4 = v1[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia];
  v1[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia] = 1;
  if ((v4 & 1) == 0)
  {
    [v2 setHidden:0];

    return [v1 setNeedsLayout];
  }

  return result;
}

unint64_t sub_10031B810(uint64_t a1, char *a2)
{
  v3 = v2;
  v257 = a2;
  swift_getObjectType();
  v5 = sub_10002849C(&qword_10097AE68, &qword_1007C2A38);
  __chkstk_darwin(v5 - 8);
  v218 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v224 = &v206 - v8;
  v9 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v9 - 8);
  v235 = &v206 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v236 = &v206 - v12;
  v13 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v13 - 8);
  v234 = &v206 - v14;
  v15 = type metadata accessor for VideoControls();
  __chkstk_darwin(v15 - 8);
  v222 = &v206 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v221 = &v206 - v18;
  __chkstk_darwin(v19);
  v228 = &v206 - v20;
  __chkstk_darwin(v21);
  v227 = &v206 - v22;
  v233 = type metadata accessor for VideoFillMode();
  v232 = *(v233 - 8);
  __chkstk_darwin(v233);
  v220 = &v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v226 = &v206 - v25;
  v229 = type metadata accessor for VideoConfiguration();
  v237 = *(v229 - 8);
  __chkstk_darwin(v229);
  v223 = &v206 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v244 = &v206 - v28;
  v217 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v242 = &v206 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002849C(&unk_100973C90, qword_1007B55A0);
  __chkstk_darwin(v30 - 8);
  v32 = &v206 - v31;
  v231 = type metadata accessor for AspectRatio();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v243 = &v206 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for LockupMediaLayout.Metrics();
  v240 = *(v241 - 8);
  __chkstk_darwin(v241);
  v239 = &v206 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for LockupMediaLayout.DisplayType();
  v251 = *(v249 - 8);
  __chkstk_darwin(v249);
  v215 = &v206 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v206 - v37;
  __chkstk_darwin(v39);
  v245 = &v206 - v40;
  __chkstk_darwin(v41);
  v225 = &v206 - v42;
  __chkstk_darwin(v43);
  v248 = &v206 - v44;
  v45 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v45 - 8);
  v219 = &v206 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v247 = &v206 - v48;
  __chkstk_darwin(v49);
  v255 = &v206 - v50;
  v51 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v51 - 8);
  v53 = &v206 - v52;
  v54 = type metadata accessor for PageGrid();
  v256 = *(v54 - 8);
  __chkstk_darwin(v54);
  v260 = &v206 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = type metadata accessor for ScreenshotsDisplayStyle();
  v56 = *(v259 - 8);
  __chkstk_darwin(v259);
  v238 = &v206 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v206 - v59;
  type metadata accessor for AppSearchResult();
  sub_100324304(&qword_1009806D0, 255, &type metadata accessor for AppSearchResult, &protocol conformance descriptor for SearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (!v262[0])
  {
    return result;
  }

  v250 = v56;
  v254 = v54;
  v62 = v262[0];
  v63 = AppSearchResult.lockup.getter();
  v258 = v60;
  v253 = v63;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v246 = v62;
  v64 = dispatch thunk of AppSearchResult.shouldDisplayMedia.getter();
  v65 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia;
  v66 = v2[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia];
  v2[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_shouldDisplayMedia] = v64 & 1;
  v67 = &StringUserDefaultsDebugSetting;
  if ((v64 & 1) != v66)
  {
    [*&v2[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots] setHidden:(v64 & 1) == 0];
    [v2 setNeedsLayout];
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  PageGrid.interColumnSpace.getter();
  v68 = *&v2[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_lockupView];
  *&v68[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing] = v69;
  [v68 setNeedsLayout];
  v70 = type metadata accessor for ItemLayoutContext();
  (*(*(v70 - 8) + 56))(v53, 1, 1, v70);
  v71 = v3;
  v72 = v253;
  sub_100279F24(v253, v53, v257);
  sub_10002B894(v53, &unk_1009731E0, &unk_1007B0B60);
  v252 = v71;
  v73 = v71[v65];
  v74 = v254;
  v75 = v250;
  v76 = v258;
  if (v73 != 1 || (ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {
LABEL_150:
    [v252 setNeedsLayout];

    (*(v256 + 8))(v260, v74);
    return (*(v75 + 8))(v76, v259);
  }

  v77 = MixedMediaLockup.screenshots.getter();
  if (v77 >> 62)
  {
    v78 = v77;
    v79 = _CocoaArrayWrapper.endIndex.getter();
    v77 = v78;
    if (v79)
    {
      goto LABEL_8;
    }

LABEL_13:

    v211 = 0;
    goto LABEL_14;
  }

  if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v77 & 0xC000000000000001) != 0)
  {
    v211 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_79;
    }

    v211 = *(v77 + 32);
  }

LABEL_14:
  v67 = *&v252[OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_screenshots];
  v212 = MixedMediaLockup.alignedRegionArtwork.getter();
  v214 = MixedMediaLockup.alignedRegionVideo.getter();
  v80 = MixedMediaLockup.trailers.getter();
  if (v80 >> 62)
  {
    v81 = v80;
    v82 = _CocoaArrayWrapper.endIndex.getter();
    v80 = v81;
    if (v82)
    {
      goto LABEL_16;
    }

LABEL_21:

    v213 = 0;
    goto LABEL_22;
  }

  if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v80 & 0xC000000000000001) != 0)
  {
    v213 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_81;
    }

    v213 = *(v80 + 32);
  }

LABEL_22:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v83 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v84 = v262[0];
  sub_1004BF564(v255);

  a1 = MixedMediaLockup.alignedRegionArtwork.getter();
  v53 = MixedMediaLockup.alignedRegionVideo.getter();
  v85 = MixedMediaLockup.screenshots.getter();
  if (v85 >> 62)
  {
    v86 = v85;
    v87 = _CocoaArrayWrapper.endIndex.getter();
    v85 = v86;
    if (v87)
    {
LABEL_24:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_83;
        }

        v84 = *(v85 + 32);

        goto LABEL_27;
      }

LABEL_79:
      v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_27:

      goto LABEL_30;
    }
  }

  else if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  v84 = 0;
LABEL_30:
  v85 = MixedMediaLockup.trailers.getter();
  if (v85 >> 62)
  {
    v89 = v85;
    v90 = _CocoaArrayWrapper.endIndex.getter();
    v85 = v89;
    v72 = v84;
    if (v90)
    {
LABEL_32:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v88 = *(v85 + 32);

LABEL_35:

          goto LABEL_38;
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_81:
      v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_35;
    }
  }

  else
  {
    v72 = v84;
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }
  }

  v88 = 0;
LABEL_38:
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {

    v53 = v251;
    v96 = v248;
    v84 = v249;
    (*(v251 + 104))(v248, enum case for LockupMediaLayout.DisplayType.none(_:), v249);
    v92 = v214;
LABEL_46:
    v38 = v211;
    goto LABEL_68;
  }

  v92 = v214;
  if (v53 | a1)
  {
    v97 = v225;
    AspectRatio.init(_:_:)();

    v53 = v251;
    v84 = v249;
    (*(v251 + 104))(v97, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v249);
    v96 = v248;
    (*(v53 + 32))(v248, v97, v84);
    goto LABEL_46;
  }

  v93 = sub_1001B9B24(v72, v88, 0, 1, v91);
  v53 = v93;
  v84 = (v93 >> 62);
  if (v93 >> 62)
  {
    goto LABEL_132;
  }

  for (i = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v210 = i;
    v95 = v72 ? Screenshots.mediaPlatform.getter() : 0;
    v98 = sub_1001B9E6C(v95);

    v207 = v98;
    v99 = v72 ? Screenshots.mediaPlatform.getter() : 0;
    v100 = v259;
    (*(v75 + 16))(v32, v258, v259);
    (*(v75 + 56))(v32, 0, 1, v100);
    a1 = sub_1001BA394(v99, v32);

    sub_10002B894(v32, &unk_100973C90, qword_1007B55A0);
    if (v84 ? _CocoaArrayWrapper.endIndex.getter() : *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_154;
        }
      }

      v102 = dispatch thunk of Artwork.isLandscape.getter();

      if (v102)
      {

        v53 = v251;
        v103 = v225;
        v84 = v249;
        (*(v251 + 104))(v225, enum case for LockupMediaLayout.DisplayType.landscape(_:), v249);
LABEL_66:
        v96 = v248;
        v92 = v214;
        v38 = v211;
        goto LABEL_67;
      }
    }

    else
    {
    }

    v104 = a1;
    v105 = v251;
    v106 = v249;
    v209 = *(v251 + 104);
    v208 = v251 + 104;
    (v209)(v38, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v249);
    v107 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v206 = *(v105 + 8);
    v206(v38, v106);
    if (((v210 >= v107) & v104) != 0 || ((v209)(v38, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v106), v108 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v206(v38, v106), ((v210 >= v108) & v207) != 0) || ((v209)(v38, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v106), v109 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v206(v38, v106), v210 >= v109))
    {

      v103 = v225;
      v209();
      v84 = v106;
      v53 = v251;
      goto LABEL_66;
    }

    (v209)(v38, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v106);
    LockupMediaLayout.DisplayType.numberOfViews.getter();

    v206(v38, v106);
    v110 = v106;
    v103 = v225;
    v209();
    v53 = v251;
    v96 = v248;
    v92 = v214;
    v38 = v211;
    v84 = v110;
LABEL_67:
    (*(v53 + 32))(v96, v103, v84);
LABEL_68:
    v32 = v245;

    v262[3] = &type metadata for CGFloat;
    v262[4] = &protocol witness table for CGFloat;
    v262[0] = 0x4021000000000000;
    sub_10002C0AC(v262, v261);
    v72 = v53 + 16;
    v111 = v96;
    a1 = *(v53 + 16);
    (a1)(v32, v111, v84);
    if (v92 | v212)
    {
      goto LABEL_86;
    }

    v85 = sub_1001B9B24(v38, v213, 0, 1, v112);
    if (v85 >> 62)
    {
      break;
    }

    if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

LABEL_71:
    if ((v85 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_74;
    }

    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_74:

      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      goto LABEL_87;
    }

    __break(1u);
LABEL_132:
    ;
  }

LABEL_84:
  v113 = v85;
  v114 = _CocoaArrayWrapper.endIndex.getter();
  v85 = v113;
  if (v114)
  {
    goto LABEL_71;
  }

LABEL_85:

LABEL_86:
  AspectRatio.init(_:_:)();
LABEL_87:
  sub_100031660(v255, v247, &unk_1009732A0, &unk_1007B4FE0);
  v115 = v239;
  LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
  sub_100007000(v262);
  v116 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  swift_beginAccess();
  v117 = v240;
  v118 = v67 + v116;
  v119 = v241;
  (*(v240 + 24))(v118, v115, v241);
  swift_endAccess();
  [(__objc2_class_ro *)v67 setNeedsLayout];
  (*(v117 + 8))(v115, v119);
  if (v38)
  {
    v120 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v120 = 0;
  }

  type metadata accessor for Screenshots();
  v121 = v242;
  sub_10061B788(v120, v242);

  v122 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1001BAB64(v121, v67 + v122, v123);
  swift_endAccess();
  sub_1001B7B88(v124);
  sub_1001BABC8(v121, v125);
  if (v38)
  {
    v126 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v126 = 0;
  }

  v127 = v238;
  *(&v67->flags + OBJC_IVAR____TtC8AppStore15LockupMediaView_platform) = v126;

  sub_1001B7D8C(v128);

  v129 = v259;
  (*(v75 + 16))(v127, v258, v259);
  v130 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v75 + 24))(v67 + v130, v127, v129);
  swift_endAccess();
  [(__objc2_class_ro *)v67 setNeedsLayout];
  (*(v75 + 8))(v127, v129);
  if (v214)
  {
    (*(v232 + 104))(v226, enum case for VideoFillMode.scaleAspectFill(_:), v233);

    Video.preview.getter();
    Artwork.size.getter();
    v131 = v247;
    AspectRatio.init(_:_:)();

    (*(v230 + 56))(v131, 0, 1, v231);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v132 = v67;
    v133 = v234;
    Video.videoUrl.getter();
    v134 = type metadata accessor for URL();
    (*(*(v134 - 8) + 56))(v133, 0, 1, v134);
    v135 = v236;
    Video.templateMediaEvent.getter();
    v136 = v235;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView(0);
    sub_100324304(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v137 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v136, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v135, &unk_100973A50, &unk_1007B4FD0);
    v138 = v133;
    v67 = v132;
    sub_10002B894(v138, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v262, &qword_10096FB90, &qword_1007B2A50);
    Strong = swift_unknownObjectWeakLoadStrong();
    v53 = v251;
    if (Strong)
    {
      v140 = Strong;
      v141 = [Strong superview];
      if (!v141)
      {
        goto LABEL_99;
      }

      v142 = v141;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v143 = v132;
      v144 = static NSObject.== infix(_:_:)();

      if (v144)
      {
        v145 = swift_unknownObjectWeakLoadStrong();
        if (v145)
        {
          v140 = v145;
          [v145 removeFromSuperview];
LABEL_99:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v146 = swift_unknownObjectWeakLoadStrong();
    if (v146)
    {
      v148 = v146;
      [(__objc2_class_ro *)v67 addSubview:v146];
    }

    sub_1001B8790(v147);
    [(__objc2_class_ro *)v67 setNeedsLayout];

    v149 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v150 = *(&v67->flags + OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView);
    v75 = v250;
    v151 = v229;
    if (v150)
    {
      [v150 removeFromSuperview];
      v152 = *(&v67->flags + v149);
    }

    else
    {
      v152 = 0;
    }

    v74 = v254;
    *(&v67->flags + v149) = 0;

    [(__objc2_class_ro *)v67 setNeedsLayout];

    (*(v237 + 8))(v244, v151);
LABEL_148:
    v190 = v248;
LABEL_149:
    [(__objc2_class_ro *)v67 setNeedsLayout];

    (*(v53 + 8))(v190, v249);
    sub_10002B894(v255, &unk_1009732A0, &unk_1007B4FE0);
    v76 = v258;
    goto LABEL_150;
  }

  v53 = v251;
  if (!v213)
  {
    goto LABEL_135;
  }

  result = Trailers.videos.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

LABEL_134:

LABEL_135:
    v193 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v194 = *(&v67->flags + OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView);
    if (v194)
    {
      [v194 removeFromSuperview];
      v195 = *(&v67->flags + v193);
    }

    else
    {
      v195 = 0;
    }

    v74 = v254;
    *(&v67->flags + v193) = 0;

    [(__objc2_class_ro *)v67 setNeedsLayout];
    v196 = swift_unknownObjectWeakLoadStrong();
    if (v196)
    {
      v197 = v196;
      sub_100324304(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
      v198 = [v197 superview];
      if (v198)
      {
        v199 = v198;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v200 = v67;
        v201 = static NSObject.== infix(_:_:)();

        v74 = v254;
        if (v201)
        {
          v202 = swift_unknownObjectWeakLoadStrong();
          if (v202)
          {
            v197 = v202;
            [v202 removeFromSuperview];
            goto LABEL_144;
          }
        }
      }

      else
      {
        v74 = v254;
LABEL_144:
      }
    }

    swift_unknownObjectWeakAssign();
    v203 = swift_unknownObjectWeakLoadStrong();
    if (v203)
    {
      v205 = v203;
      [(__objc2_class_ro *)v67 addSubview:v203];
    }

    sub_1001B8790(v204);
    [(__objc2_class_ro *)v67 setNeedsLayout];
    goto LABEL_148;
  }

  v191 = result;
  v192 = _CocoaArrayWrapper.endIndex.getter();
  result = v191;
  if (!v192)
  {
    goto LABEL_134;
  }

LABEL_107:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_154:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_110:
    v153 = v67;
    v211 = v38;

    v154 = v215;
    v155 = v249;
    (a1)(v215, v248, v249);
    v156 = (*(v53 + 88))(v154, v155);
    v157 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v53 + 8))(v154, v155);
    if (v156 == v157)
    {
      v158 = 1;
      v159 = v224;
    }

    else
    {
      v160 = Trailers.mediaPlatform.getter();
      v159 = v224;
      sub_10061B788(v160, v224);

      v158 = 0;
    }

    v161 = v236;
    v162 = v217;
    v163 = v233;
    v164 = v232;
    v165 = v216;
    v166 = v231;
    (*(v216 + 56))(v159, v158, 1, v217);
    (*(v164 + 104))(v220, enum case for VideoFillMode.scaleAspectFill(_:), v163);
    Video.preview.getter();
    Artwork.size.getter();
    v167 = v219;
    AspectRatio.init(_:_:)();

    (*(v230 + 56))(v167, 0, 1, v166);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    v168 = v159;
    v169 = v218;
    sub_100031660(v168, v218, &qword_10097AE68, &qword_1007C2A38);
    if ((*(v165 + 48))(v169, 1, v162) == 1)
    {
      sub_10002B894(v169, &qword_10097AE68, &qword_1007C2A38);
    }

    else
    {
      sub_1001BABC8(v169, v170);
    }

    v67 = v153;
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v171 = v234;
    Video.videoUrl.getter();
    v172 = type metadata accessor for URL();
    (*(*(v172 - 8) + 56))(v171, 0, 1, v172);
    Video.templateMediaEvent.getter();
    v173 = v235;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView(0);
    sub_100324304(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v174 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v173, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v161, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v171, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v262, &qword_10096FB90, &qword_1007B2A50);
    v175 = swift_unknownObjectWeakLoadStrong();
    if (v175)
    {
      v176 = v175;
      v177 = [v175 superview];
      if (v177)
      {
        v178 = v177;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v179 = v67;
        v180 = static NSObject.== infix(_:_:)();

        v75 = v250;
        if ((v180 & 1) == 0)
        {
          goto LABEL_124;
        }

        v181 = swift_unknownObjectWeakLoadStrong();
        if (!v181)
        {
          goto LABEL_124;
        }

        v176 = v181;
        [v181 removeFromSuperview];
      }
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v182 = swift_unknownObjectWeakLoadStrong();
    if (v182)
    {
      v184 = v182;
      [(__objc2_class_ro *)v67 addSubview:v182];
    }

    sub_1001B8790(v183);
    [(__objc2_class_ro *)v67 setNeedsLayout];

    v185 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v186 = *(&v67->flags + OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView);
    v53 = v251;
    v187 = v248;
    if (v186)
    {
      [v186 removeFromSuperview];
      v188 = *(&v67->flags + v185);
    }

    else
    {
      v188 = 0;
    }

    v189 = v229;
    *(&v67->flags + v185) = 0;

    [(__objc2_class_ro *)v67 setNeedsLayout];

    (*(v237 + 8))(v223, v189);
    sub_10002B894(v224, &qword_10097AE68, &qword_1007C2A38);
    v74 = v254;
    v190 = v187;
    goto LABEL_149;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_110;
  }

  __break(1u);
  return result;
}

uint64_t sub_10031DC18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  *(v1 + v3) = 0;

  v4 = (v1 + OBJC_IVAR____TtC8AppStore26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_10001F63C(v5, v6);
  return sub_1000AD1F8(a1);
}