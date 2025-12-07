double sub_1003F5B90(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_100747064();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100749C94())
  {
    v13 = [a5 traitCollection];
    v14 = [v13 userInterfaceIdiom];

    if (v14 == 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView(0);
      sub_1003F58E8(v12);
      swift_getObjectType();
      a2 = sub_1001CF184(v12, a1, a2, a3);

      (*(v10 + 8))(v12, v9);
    }
  }

  return a2;
}

void sub_1003F5D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v97 = a2;
  v8 = sub_10074F284();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v86 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v10 - 8);
  v93 = &v82 - v11;
  v12 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v12 - 8);
  v92 = &v82 - v13;
  v14 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v14 - 8);
  v91 = &v82 - v15;
  v16 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v16 - 8);
  v90 = &v82 - v17;
  v18 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v18 - 8);
  v89 = &v82 - v19;
  v20 = sub_100747064();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v94 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10074F314();
  __chkstk_darwin(v23 - 8);
  v96 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&qword_100936790, qword_1007BF0E8);
  *&v26 = __chkstk_darwin(v25 - 8).n128_u64[0];
  v28 = &v82 - v27;
  v29 = [a5 snapshotPageTraitEnvironment];
  *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v6 setNeedsLayout];
  swift_unknownObjectRelease();
  v30 = sub_100749C54();
  [v6 setBackgroundColor:v30];

  sub_100749C14();
  if (v31)
  {
    v32 = sub_100753064();
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_opt_self() _systemImageNamed:v32];

  v34 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph];
  if (v33)
  {
    [v34 setImage:v33];
  }

  else
  {
    [v34 setImage:0];
  }

  v95 = v20;
  v35 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badge];
  sub_100749C74();
  if (v36)
  {
    v37 = sub_100753064();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_title];
  sub_100749C84();
  v39 = sub_100753064();

  [v38 setText:v39];

  v40 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_subtitle];
  sub_100749CA4();
  if (v41)
  {
    v42 = sub_100753064();
  }

  else
  {
    v42 = 0;
  }

  [v40 setText:v42];

  v43 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_heroContent];
  sub_100749C34();
  v44 = sub_10074FCD4();
  (*(*(v44 - 8) + 56))(v28, 0, 1, v44);
  sub_10074FD24();
  v45 = sub_100749C44();
  if (v45)
  {
    v46 = v45;
    v47 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_button];
    v48 = swift_allocObject();
    *(v48 + 16) = v97;
    *(v48 + 24) = v46;

    sub_100747774();
    sub_10074ECB4();
    if (v49)
    {
      v50 = sub_100753064();
    }

    else
    {
      v50 = 0;
    }

    [v47 setTitle:v50 forState:0];
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_button] setHidden:1];
  }

  [v43 removeAllGestureRecognizers];
  v51 = sub_100749C24();
  if (v51)
  {
    v52 = v51;
    v53 = type metadata accessor for TapActionGestureRecognizer();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC22SubscribePageExtension26TapActionGestureRecognizer_action] = v52;
    *&v54[OBJC_IVAR____TtC22SubscribePageExtension26TapActionGestureRecognizer_objectGraph] = v97;
    v98.receiver = v54;
    v98.super_class = v53;

    v55 = objc_msgSendSuper2(&v98, "initWithTarget:action:", 0, 0);
    [v55 addTarget:v55 action:"execute"];
    [v43 addGestureRecognizer:v55];
  }

  if (sub_100749C64())
  {
    v56 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_backgroundImage];
    [v56 setHidden:0];
    [v6 frame];
    [v6 frame];
    sub_10074F364();
    sub_10074F324();
    sub_100743364();
    [v56 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();
    sub_1007442C4();
    sub_100752764();
    sub_100752D34();
    sub_1007433C4();
    sub_1003F754C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744204();
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_backgroundImage] setHidden:1];
  }

  v57 = sub_100749C94();
  v58 = v94;
  if (v57)
  {
    v85 = v6;
    v59 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_lockup];
    v60 = v57;
    sub_1003F58E8(v94);
    v61 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v62 = v21;
    v63 = *(v21 + 24);
    v84 = v61;
    v64 = &v59[v61];
    v65 = v95;
    v63(v64, v58, v95);
    swift_endAccess();
    [v59 setNeedsLayout];
    v83 = *(v21 + 8);
    v83(v58, v65);
    v66 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
    v67 = v89;
    (*(*(v66 - 8) + 56))(v89, 1, 1, v66);
    v68 = sub_100742E24();
    v69 = v90;
    (*(*(v68 - 8) + 56))(v90, 1, 1, v68);
    v70 = sub_100745E94();
    v71 = v91;
    (*(*(v70 - 8) + 56))(v91, 1, 1, v70);
    v72 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
    v73 = v92;
    (*(*(v72 - 8) + 56))(v92, 1, 1, v72);
    v74 = sub_10074F8B4();
    v75 = v93;
    (*(*(v74 - 8) + 56))(v93, 1, 1, v74);
    sub_100656038(v60, v59, v67, v97, 0, 0, v69, v71, v75, v73);
    sub_10000C8CC(v75, &unk_100925520, &unk_1007A8120);
    v59[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v59 setNeedsLayout];
    sub_10000C8CC(v73, &unk_100925990, qword_1007BB900);
    sub_10000C8CC(v71, &unk_1009259A0, &unk_1007B0610);
    sub_10000C8CC(v69, &unk_100925530, &unk_1007A8130);
    sub_10000C8CC(v67, &unk_100925540, &qword_1007A8140);
    v93 = v60;
    if (sub_10074EF24())
    {
      v76 = v95;
      (*(v62 + 16))(v58, &v59[v84], v95);
      sub_100746F34();
      v83(v58, v76);
      v77 = v86;
      sub_10074F294();
      sub_10074F254();
      (*(v87 + 8))(v77, v88);
      sub_10074F374();
      v78 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
      v79 = *&v59[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
      sub_10074F324();
      sub_100743364();
      [v79 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();

      [v59 setContentMode:{objc_msgSend(v85, "contentMode")}];
      sub_1007442C4();
      sub_100752764();
      sub_100752D34();
      v80 = *&v59[v78];
      sub_1007433C4();
      sub_1003F754C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v81 = v80;
      sub_100744204();
    }
  }
}

uint64_t sub_1003F6B54(uint64_t a1, uint64_t a2)
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

double sub_1003F6D78(uint64_t a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_10074C764();
  __chkstk_darwin(v8 - 8);
  v38 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074C784();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v39 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074CD14();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100749C74();
  v15 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921550 != -1)
  {
    swift_once();
  }

  v47 = sub_100750534();
  sub_10000D0FC(v47, qword_100981D28);
  v16 = [a6 traitCollection];
  sub_100753C14();

  v17 = sub_10074F3F4();
  v66[3] = v17;
  v46 = sub_1003F754C(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v66[4] = v46;
  v18 = sub_10000D134(v66);
  v19 = *(v17 - 8);
  v20 = *(v19 + 104);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v43 = v19 + 104;
  v44 = v20;
  v20(v18);
  sub_10074FC74();
  sub_10000C620(v66);
  sub_10074CD04();
  sub_10074CCE4();
  v42 = v15;
  v21 = *(v48 + 8);
  v21(v14, v49);
  sub_100749C84();
  v48 = a1;
  if (qword_100921558 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v47, qword_100981D40);
  v22 = [a6 traitCollection];
  sub_100753C14();

  v65[3] = v17;
  v65[4] = v46;
  v23 = sub_10000D134(v65);
  v44(v23, v45, v17);
  sub_10074FC74();
  sub_10000C620(v65);
  sub_10074CD04();
  sub_10074CCE4();
  v21(v14, v49);
  sub_100749CA4();
  if (qword_100921560 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v47, qword_100981D58);
  v24 = [a6 traitCollection];
  sub_100753C14();

  v64[3] = v17;
  v64[4] = v46;
  v25 = sub_10000D134(v64);
  v44(v25, v45, v17);
  sub_10074FC74();
  sub_10000C620(v64);
  sub_10074CD04();
  sub_10074CCE4();
  v21(v14, v49);
  v26 = sub_100750F34();
  swift_allocObject();
  v27 = sub_100750F04();
  v28 = swift_allocObject();
  v28[2] = v48;
  v28[3] = a6;
  v28[4] = v37[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v29 = sub_100750EF4();
  sub_10027FF90(a6, v38);
  v63 = 0;
  *&v61[40] = 0u;
  v62 = 0u;
  sub_10000C824(v66, v61);
  sub_10000C824(v65, &v60);
  sub_10000C824(v64, &v59);
  v57 = v26;
  v58 = &protocol witness table for LayoutViewPlaceholder;
  v56 = v27;

  v30 = [a6 traitCollection];
  sub_100751364();

  swift_allocObject();
  v31 = sub_100750F14();
  v54 = v26;
  v55 = &protocol witness table for LayoutViewPlaceholder;
  v52 = &protocol witness table for LayoutViewPlaceholder;
  v53 = v31;
  v51 = v26;
  v50 = v29;

  v32 = v39;
  sub_10074C774();
  sub_1003F754C(&qword_100933280, &type metadata accessor for GameCenterReengagementLayout, &protocol conformance descriptor for GameCenterReengagementLayout);
  v33 = v41;
  sub_100750404();
  v35 = v34;

  (*(v40 + 8))(v32, v33);
  sub_10000C620(v64);
  sub_10000C620(v65);
  sub_10000C620(v66);
  return v35;
}

uint64_t sub_1003F754C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003F7594(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_10062AA10() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_10097D2C8]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_1003F77FC(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_10097D2D0];
        if (v13)
        {
          v14 = *&v6[qword_10097D2C8];

          if (v14 || (v15 = [v6 traitCollection], v16 = sub_1007537B4(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_10097D2C8];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_1003F77FC(char a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_1007537B4();

  if (v5)
  {
    if (a1)
    {
      sub_10000D198();
      v6 = sub_100753EF4();
    }

    else
    {
      v6 = [objc_opt_self() whiteColor];
    }

    v12 = v6;
    v10 = [v2 navigationItem];
    v11 = [v10 rightBarButtonItem];

    if (!v11)
    {
      goto LABEL_13;
    }

    v9 = [v11 customView];

    if (!v9)
    {
      goto LABEL_13;
    }

    [v9 setTintColor:v12];
  }

  else
  {
    v7 = [v2 navigationItem];
    v8 = [v7 rightBarButtonItem];

    if (!v8)
    {
      return;
    }

    v9 = [v8 customView];

    if (!v9)
    {
      return;
    }

    v12 = [objc_opt_self() whiteColor];
    [v9 setTintColor:v12];
  }

LABEL_13:
}

id sub_1003F79D0()
{
  result = [objc_opt_self() systemGray6Color];
  qword_1009801D8 = result;
  return result;
}

void sub_1003F7A0C()
{
  v0 = [objc_opt_self() systemBlackColor];
  v1 = [v0 colorWithAlphaComponent:0.05];

  qword_1009801E0 = v1;
}

id sub_1003F7A78(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC22SubscribePageExtension38CondensedSearchEditorialBackgroundView_isBorderHidden] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_100920B90;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_1009801D8];
  v13 = [v12 layer];
  if (qword_100920B98 != -1)
  {
    swift_once();
  }

  v14 = [qword_1009801E0 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setBorderWidth:1.0 / v18];
  [v12 _setContinuousCornerRadius:16.0];

  return v12;
}

void sub_1003F7CF0(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if ((!a1 || v3 != v5) && (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension38CondensedSearchEditorialBackgroundView_isBorderHidden) & 1) == 0)
  {
    v6 = [v1 layer];
    if (qword_100920B98 != -1)
    {
      swift_once();
    }

    v7 = [qword_1009801E0 CGColor];
    [v6 setBorderColor:v7];
  }
}

uint64_t sub_1003F7F08(void *a1)
{
  if (a1)
  {
    v2 = [a1 superview];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 contentView];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_100009D34();
      v5 = sub_100753FC4();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

void sub_1003F7FBC(void *a1)
{
  sub_1003F89C8();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_1003F806C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension23VideoCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1003F80C0;
}

void sub_1003F80C0(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1003F89C8();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_1003F89C8();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1003F8354()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VideoCollectionViewCell(0);
  objc_msgSendSuper2(&v4, "prepareForReuse");
  sub_1003F89C8();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [v0 contentView];
    [v3 addSubview:v2];

    [v0 setNeedsLayout];
  }
}

id sub_1003F8524()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoCollectionViewCell(uint64_t a1)
{
  result = qword_1009367F0;
  if (!qword_1009367F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003F862C(uint64_t a1)
{
  result = sub_100747D94();
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

uint64_t (*sub_1003F86D8(uint64_t **a1))()
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
  v2[4] = sub_1003F806C(v2);
  return sub_10001BB78;
}

uint64_t sub_1003F8748(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1003F879C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1003F8808(uint64_t *a1, uint64_t a2))()
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
  return sub_1000181A8;
}

uint64_t sub_1003F8980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003F89C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1003F8980(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    Strong = v1;
  }

  v2 = sub_1003F7F08(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t ButtonPlaceholder.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration;
  v4 = sub_1007541F4();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ButtonPlaceholder.init(configuration:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration;
  v4 = sub_1007541F4();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t ButtonPlaceholder.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration;
  v4 = sub_1007541F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1003F8C1C()
{
  v1 = sub_1007541F4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button;
  v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button);
  }

  else
  {
    sub_1003F9034();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration, v1);
    v8 = v0;
    v9 = sub_100754204();
    v10 = *(v0 + v5);
    *(v8 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

double ButtonPlaceholder.measure(toFit:with:)(double a1, double a2)
{
  v2 = sub_1003F8C1C();
  sub_100754004();
  v4 = v3;

  return v4;
}

uint64_t ButtonPlaceholder.deinit()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration;
  v2 = sub_1007541F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ButtonPlaceholder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration;
  v2 = sub_1007541F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1003F8ED0(double a1, double a2)
{
  v2 = sub_1003F8C1C();
  sub_100754004();
  v4 = v3;

  return v4;
}

uint64_t type metadata accessor for ButtonPlaceholder(uint64_t a1)
{
  result = qword_100936838;
  if (!qword_100936838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003F8F9C(uint64_t a1)
{
  result = sub_1007541F4();
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

unint64_t sub_1003F9034()
{
  result = qword_10093B420;
  if (!qword_10093B420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093B420);
  }

  return result;
}

uint64_t sub_1003F9090@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a13@<D6>, double a14@<D7>, double a15, double a16)
{
  v109 = a5;
  v110 = a4;
  v121 = a3;
  v122 = a2;
  v117 = a13;
  v118 = a14;
  v115 = a1;
  v116 = a6;
  v106 = sub_1007428D4();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10074EA34();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100748D64();
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100751BC4();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100744604();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v97 = &v91 - v23;
  v24 = sub_10074E984();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10074F6E4();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v114 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v91 - v32;
  v34 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  __chkstk_darwin(v34);
  v108 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v91 - v37;
  sub_100016B4C(v122, &v91 - v37, &unk_10093D6E0, &unk_1007A6080);
  v107 = v34;
  v39 = *(v34 + 48);
  v122 = v38;
  sub_100016B4C(v121, &v38[v39], &unk_10093D6E0, &unk_1007A6080);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  sub_1007525B4();

  v121 = v29;
  v40 = *(v29 + 104);
  v41 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v124)
  {
    v41 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v42 = *v41;
  v119 = v33;
  v120 = v28;
  v40(v33, v42, v28);
  swift_getKeyPath();
  sub_1007525B4();

  v43 = v25;
  v44 = (*(v25 + 88))(v27, v24);
  if (v44 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    if (v44 == enum case for Shelf.ContentType.productReview(_:))
    {
      swift_getKeyPath();
      sub_1007525B4();

      if (*(v123 + 16))
      {
        sub_10000C824(v123 + 32, &v124);

        sub_10000C518(&qword_1009242A0, &qword_1007A6400);
        sub_100744624();
        v57 = swift_dynamicCast();
        v53 = v119;
        if (v57)
        {
          v58 = v94;
          sub_100744614();
          v59 = v95;
          v60 = v96;
          v61 = (*(v95 + 88))(v58, v96);
          if (v61 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
          {
            (*(v59 + 8))(v58, v60);
            v56 = v120;
            v55 = v121;
            (*(v121 + 16))(v114, v53, v120);
            if (qword_1009207D8 != -1)
            {
              swift_once();
            }

            sub_10074F6B4();
          }

          else
          {
            v56 = v120;
            v55 = v121;
            v85 = v114;
            if (v61 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
            {
              v87 = v91;
              sub_1007455F4();
              (*(v55 + 16))(v85, v53, v56);
              sub_10044F7B0(v87, 0);
              sub_10074F6B4();

              (*(v92 + 8))(v87, v93);
              (*(v55 + 8))(v53, v56);
              sub_10000C8CC(v122, &qword_100923228, &unk_1007AB120);
              return (*(v59 + 8))(v58, v60);
            }

            (*(v59 + 8))(v58, v60);
            v86 = v91;
            sub_1007455F4();
            (*(v55 + 16))(v85, v53, v56);
            sub_10044F7B0(v86, 1);
            sub_10074F6B4();

            (*(v92 + 8))(v86, v93);
          }

          goto LABEL_36;
        }
      }

      else
      {

        v53 = v119;
      }

      v124 = v109;
      v77 = v122;
      v78 = v108;
      sub_100016B4C(v122, v108, &qword_100923228, &unk_1007AB120);
      v79 = *(v107 + 48);
      sub_1000E1F2C();
      sub_100745684();
      (*(v121 + 8))(v53, v120);
      sub_10000C8CC(v77, &qword_100923228, &unk_1007AB120);
      sub_10000C8CC(v78 + v79, &unk_10093D6E0, &unk_1007A6080);
      v80 = v78;
      v81 = &unk_10093D6E0;
      v82 = &unk_1007A6080;
      return sub_10000C8CC(v80, v81, v82);
    }

    if (v44 != enum case for Shelf.ContentType.productBadge(_:))
    {
      v124 = v109;
      v73 = v122;
      v74 = v108;
      sub_100016B4C(v122, v108, &qword_100923228, &unk_1007AB120);
      v75 = *(v107 + 48);
      sub_1000E1F2C();
      sub_100745684();
      (*(v121 + 8))(v119, v120);
      sub_10000C8CC(v73, &qword_100923228, &unk_1007AB120);
      sub_10000C8CC(v74 + v75, &unk_10093D6E0, &unk_1007A6080);
      sub_10000C8CC(v74, &unk_10093D6E0, &unk_1007A6080);
      return (*(v43 + 8))(v27, v24);
    }

    v65 = v97;
    sub_10074F604();
    v66 = v98;
    sub_10074F604();
    v63 = v120;
    v62 = v121;
    v64 = v119;
    (*(v121 + 16))(v114, v119, v120);
    sub_100632ED4(v65, v66);
    sub_10074F6B4();
    v67 = *(v99 + 8);
    v68 = v66;
    v69 = v100;
    v67(v68, v100);
    v67(v65, v69);
LABEL_22:
    (*(v62 + 8))(v64, v63);
LABEL_45:
    v81 = &qword_100923228;
    v82 = &unk_1007AB120;
    v80 = v122;
    return sub_10000C8CC(v80, v81, v82);
  }

  swift_getKeyPath();
  v45 = v111;
  sub_1007525B4();

  v46 = v112;
  v47 = v113;
  if ((*(v112 + 88))(v45, v113) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v46 + 8))(v45, v47);
    v63 = v120;
    v62 = v121;
    v64 = v119;
    (*(v121 + 16))(v114, v119, v120);
    if (qword_100920200 != -1)
    {
      swift_once();
    }

    sub_10074F6B4();
    goto LABEL_22;
  }

  (*(v46 + 96))(v45, v47);
  v48 = v103;
  v49 = v101;
  v50 = v102;
  (*(v103 + 32))(v101, v45, v102);
  sub_100748D54();
  v51 = v104;
  sub_1007444B4();

  v52 = (*(v105 + 88))(v51, v106);
  v53 = v119;
  v54 = v114;
  if (v52 == enum case for AppPlatform.phone(_:))
  {
    goto LABEL_6;
  }

  if (v52 == enum case for AppPlatform.pad(_:))
  {
    v70 = sub_100748CF4();
    v72 = v120;
    v71 = v121;
    (*(v121 + 16))(v54, v53, v120);
    if (v70)
    {
      if (qword_100920558 == -1)
      {
        goto LABEL_38;
      }
    }

    else if (qword_100920200 == -1)
    {
LABEL_38:

      sub_10074F6B4();
      (*(v48 + 8))(v49, v50);
      (*(v71 + 8))(v53, v72);
      goto LABEL_45;
    }

    swift_once();
    goto LABEL_38;
  }

  if (v52 == enum case for AppPlatform.messages(_:))
  {
LABEL_6:
    if (sub_100748CF4())
    {
      v56 = v120;
      v55 = v121;
      (*(v121 + 16))(v54, v53, v120);
      if (qword_1009217D8 != -1)
      {
        swift_once();
      }

      sub_10074F6B4();
      (*(v48 + 8))(v49, v50);
LABEL_36:
      (*(v55 + 8))(v53, v56);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v52 == enum case for AppPlatform.watch(_:))
  {
    v84 = v120;
    v83 = v121;
    (*(v121 + 16))(v114, v119, v120);
    if (qword_100920A18 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  if (v52 == enum case for AppPlatform.tv(_:) || v52 == enum case for AppPlatform.mac(_:) || v52 == enum case for AppPlatform.vision(_:))
  {
LABEL_43:
    v84 = v120;
    v83 = v121;
    (*(v121 + 16))(v54, v53, v120);
    if (qword_100920200 == -1)
    {
LABEL_44:

      sub_10074F6B4();
      (*(v48 + 8))(v49, v50);
      (*(v83 + 8))(v53, v84);
      goto LABEL_45;
    }

LABEL_48:
    swift_once();
    goto LABEL_44;
  }

  v124 = v109;
  v88 = v122;
  v89 = v108;
  sub_100016B4C(v122, v108, &qword_100923228, &unk_1007AB120);
  v90 = *(v107 + 48);
  sub_1000E1F2C();
  sub_100745684();
  (*(v48 + 8))(v49, v50);
  (*(v121 + 8))(v53, v120);
  sub_10000C8CC(v88, &qword_100923228, &unk_1007AB120);
  sub_10000C8CC(v89 + v90, &unk_10093D6E0, &unk_1007A6080);
  sub_10000C8CC(v89, &unk_10093D6E0, &unk_1007A6080);
  return (*(v105 + 8))(v104, v106);
}

uint64_t sub_1003FA698@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v32 = a6;
  v33 = a3;
  v34 = a5;
  v35 = a7;
  v38 = a4;
  v36 = a14;
  v37 = a15;
  v18 = sub_10074E984();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  __chkstk_darwin(v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v31 - v26;
  sub_100016B4C(a2, &v31 - v26, &unk_10093D6E0, &unk_1007A6080);
  sub_100016B4C(v33, &v27[*(v22 + 48)], &unk_10093D6E0, &unk_1007A6080);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  sub_1007525B4();

  v33 = v19;
  if ((*(v19 + 88))(v21, v18) == enum case for Shelf.ContentType.productBadge(_:))
  {
    v39 = v34;
    v40 = v32;
    sub_100016B4C(v27, v24, &qword_100923228, &unk_1007AB120);
    v28 = *(v22 + 48);
    sub_1003FACA8();
    sub_100745684();
    sub_10000C8CC(v27, &qword_100923228, &unk_1007AB120);
    sub_10000C8CC(&v24[v28], &unk_10093D6E0, &unk_1007A6080);
    return sub_10000C8CC(v24, &unk_10093D6E0, &unk_1007A6080);
  }

  else
  {
    v39 = v34;
    sub_100016B4C(v27, v24, &qword_100923228, &unk_1007AB120);
    v30 = *(v22 + 48);
    sub_1000E1F2C();
    sub_100745674();
    sub_10000C8CC(v27, &qword_100923228, &unk_1007AB120);
    sub_10000C8CC(&v24[v30], &unk_10093D6E0, &unk_1007A6080);
    sub_10000C8CC(v24, &unk_10093D6E0, &unk_1007A6080);
    return (*(v33 + 8))(v21, v18);
  }
}

uint64_t sub_1003FAA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1003FACA8();

  return sub_100745684();
}

uint64_t sub_1003FAB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1003FACA8();

  return sub_100745674();
}

uint64_t sub_1003FAC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003FAD0C();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

unint64_t sub_1003FACA8()
{
  result = qword_1009368F0;
  if (!qword_1009368F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009368F0);
  }

  return result;
}

unint64_t sub_1003FAD0C()
{
  result = qword_1009368F8;
  if (!qword_1009368F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009368F8);
  }

  return result;
}

void sub_1003FAD60(uint64_t a1)
{
  v37 = sub_1007418C4();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v29 = v1;
    v43 = _swiftEmptyArrayStorage;
    sub_10001E6FC(0, v5, 0);
    v42 = v43;
    v6 = a1 + 56;
    v7 = sub_1007543B4();
    v8 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v5;
    v32 = v3;
    v33 = a1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      v38 = *(a1 + 36);
      v11 = v36;
      v12 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v7, v37);
      v13 = sub_1007418B4();
      v40 = v14;
      v41 = v13;
      v39 = sub_1007418A4();
      v16 = v15;
      (*(v3 + 8))(v11, v12);
      v17 = v42;
      v43 = v42;
      v19 = v42[2];
      v18 = v42[3];
      if (v19 >= v18 >> 1)
      {
        sub_10001E6FC((v18 > 1), v19 + 1, 1);
        v17 = v43;
      }

      v17[2] = v19 + 1;
      v20 = &v17[4 * v19];
      v21 = v40;
      v20[4] = v41;
      v20[5] = v21;
      v20[6] = v39;
      v20[7] = v16;
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_22;
      }

      v6 = v33;
      v22 = *(v33 + 8 * v10);
      if ((v22 & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      v42 = v17;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v23 = v22 & (-2 << (v7 & 0x3F));
      if (v23)
      {
        v9 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (v30 + 8 * v10);
        v3 = v32;
        while (v25 < (v9 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_1001D3DC4(v7, v38, 0);
            v9 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_1001D3DC4(v7, v38, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v31)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

Swift::Int sub_1003FB078()
{
  sub_100754834();
  sub_100753174();
  sub_100753174();
  return sub_100754884();
}

uint64_t sub_1003FB0E0(uint64_t a1)
{
  sub_100753174();

  return sub_100753174();
}

Swift::Int sub_1003FB130(uint64_t a1)
{
  sub_100754834();
  sub_100753174();
  sub_100753174();
  return sub_100754884();
}

uint64_t sub_1003FB194(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_100754754(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_100754754();
    }
  }

  return result;
}

uint64_t sub_1003FB238()
{
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  result = sub_100753DF4();
  qword_100980200 = result;
  return result;
}

uint64_t sub_1003FB27C()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_100743AE4();
  result = (*(v1 + 8))(v4, v0);
  qword_100936900 = v5;
  return result;
}

uint64_t sub_1003FB374()
{
  v34 = sub_10074BCF4();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v35 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_100750304();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100750B04();
  __chkstk_darwin(v5 - 8);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v25 - v8;
  __chkstk_darwin(v9);
  v37 = &v25 - v10;
  v11 = sub_10074BD24();
  sub_100039C50(v11, qword_100936908);
  v32 = sub_10000D0FC(v11, qword_100936908);
  v46 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  v45 = 0x4024000000000000;
  if (qword_100921018 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_100980D80);
  v14 = *(v12 - 8);
  v30 = *(v14 + 16);
  v15 = v14 + 16;
  v30(v4, v13, v12);
  v28 = v15;
  v29 = enum case for FontSource.useCase(_:);
  v36 = v2[13];
  v36(v4);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v42);
  v17 = v2[2];
  v17(v16, v4, v1);
  v27 = v17;
  sub_100750B14();
  v26 = v2[1];
  v26(v4, v1);
  v18 = v30;
  v30(v4, v13, v12);
  v19 = v29;
  (v36)(v4, v29, v1);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v42);
  v17(v20, v4, v1);
  sub_100750B14();
  v21 = v26;
  v26(v4, v1);
  v18(v4, v13, v12);
  (v36)(v4, v19, v1);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v42);
  v27(v22, v4, v1);
  sub_100750B14();
  v21(v4, v1);
  v44 = &protocol witness table for Double;
  v43 = &type metadata for Double;
  v42[0] = 0x4024000000000000;
  if (qword_100920BA8 != -1)
  {
    swift_once();
  }

  v23 = qword_100936900;
  [v23 contentInsets];

  (*(v33 + 104))(v35, enum case for PlatformSelectorViewLayout.Metrics.AccessoryAlignment.inline(_:), v34);
  v40 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v39 = 0x402C000000000000;
  return sub_10074BD04();
}

char *sub_1003FB914(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10074AB44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v13 - 8);
  v15 = &ObjectType - v14;
  v16 = &v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_text];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_pageTraits] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_numberOfBadges] = 0;
  v17 = &v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_didSelectHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  if (qword_100921018 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v53 = sub_10000D0FC(v18, qword_100980D80);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v15, v53, v18);
  v54 = *(v19 + 56);
  v54(v15, 0, 1, v18);
  v57 = enum case for DirectionalTextAlignment.none(_:);
  v56 = *(v10 + 104);
  v56(v12);
  v55 = sub_100745C84();
  v21 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel] = sub_100745C74();
  v20(v15, v53, v18);
  v54(v15, 0, 1, v18);
  (v56)(v12, v57, v9);
  v22 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel] = sub_100745C74();
  v20(v15, v53, v18);
  v54(v15, 0, 1, v18);
  (v56)(v12, v57, v9);
  v23 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel] = sub_100745C74();
  v24 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView] = v24;
  v58.receiver = v4;
  v58.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v58, "initWithFrame:", a1, a2, a3, a4);
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007AC000;
  v27 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel];
  *(inited + 32) = v27;
  v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel];
  *(inited + 40) = v28;
  v29 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel];
  *(inited + 48) = v29;
  v30 = inited & 0xC000000000000001;
  v31 = v25;
  v32 = v27;
  v33 = v28;
  v34 = v29;
  if ((inited & 0xC000000000000001) != 0)
  {
    v35 = sub_100754574();
  }

  else
  {
    v35 = v32;
  }

  v36 = v35;
  if (qword_100920BA0 != -1)
  {
    swift_once();
  }

  [v36 setTextColor:{qword_100980200, ObjectType}];
  [v31 addSubview:v36];

  if (v30)
  {
    v37 = sub_100754574();
  }

  else
  {
    v37 = *(inited + 40);
  }

  v38 = v37;
  if (qword_100920BA0 != -1)
  {
    swift_once();
  }

  [v38 setTextColor:qword_100980200];
  [v31 addSubview:v38];

  if (v30)
  {
    v39 = sub_100754574();
  }

  else
  {
    v39 = *(inited + 48);
  }

  v40 = v39;
  if (qword_100920BA0 != -1)
  {
    swift_once();
  }

  v41 = qword_100980200;
  [v40 setTextColor:qword_100980200];
  [v31 addSubview:v40];

  swift_setDeallocating();
  swift_arrayDestroy();
  v42 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView;
  [*&v31[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView] setTintColor:v41];
  v43 = *&v31[v42];
  v44 = v31;
  [v44 addSubview:v43];
  [v44 layoutMargins];
  v46 = v45;
  [v44 layoutMargins];
  v48 = v47;
  [v44 layoutMargins];
  [v44 setLayoutMargins:{v46, 0.0, v48}];
  v49 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v44 action:"didTapSelectorView"];

  [v44 addGestureRecognizer:v49];
  v50 = [objc_opt_self() defaultCenter];
  [v50 addObserver:v44 selector:"smartInvertDidChange" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  sub_100016C60(0, &qword_1009239F8, UITraitCollection_ptr);
  sub_100753844();
  sub_100753D44();

  swift_unknownObjectRelease();

  return v44;
}

void sub_1003FC0B4()
{
  swift_getObjectType();
  v1 = sub_100746584();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v54 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v37 - v5;
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_text + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images))
    {
      v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images);
      v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_pageTraits);
      if (v13)
      {
        v49 = v9;
        v50 = v0;
        v47 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_text);
        swift_getObjectType();

        swift_unknownObjectRetain();
        v51 = sub_1003FD11C(v12, v13);
        if (qword_100920BB0 != -1)
        {
          swift_once();
        }

        v14 = sub_10074BD24();
        v46 = sub_10000D0FC(v14, qword_100936908);
        sub_10074BD14();
        v15 = v56;
        sub_10000C888(v55, v56);
        sub_100536120(v15);
        v52 = v13;
        sub_100750564();
        v17 = v16;
        (*(v8 + 8))(v11, v49);
        v18 = sub_1003FD42C(v12, v17);

        sub_10000C620(v55);
        sub_10000C518(&unk_100936990, &qword_1007BF5F0);
        v19 = *(v2 + 72);
        v20 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v38 = swift_allocObject();
        v21 = v38 + v20;
        v22 = *(v2 + 104);
        v43 = enum case for BadgeDisplayStyle.above(_:);
        (v22)(v38 + v20);
        v45 = v19;
        v40 = enum case for BadgeDisplayStyle.inline(_:);
        (v22)(v21 + v19);
        v23 = v21 + 2 * v19;
        *v23 = v18;
        *(v23 + 8) = 0;
        v44 = enum case for BadgeDisplayStyle.left(_:);
        v22();
        v41 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
        v42 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel;
        v26 = *(v2 + 16);
        v24 = v2 + 16;
        v25 = v26;
        v27 = (v24 + 72);
        v39 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel;
        v49 = v24;
        v28 = (v24 - 8);
        v29 = 3;
        v37[1] = v21;
        v48 = v1;
        while (1)
        {
          v25(v6, v21, v1);
          v34 = v54;
          v25(v54, v6, v1);
          v35 = (*v27)(v34, v1);
          if (v35 == v44)
          {
            v30 = v50;
            v31 = v42;
          }

          else if (v35 == v43)
          {
            v30 = v50;
            v31 = v41;
          }

          else
          {
            if (v35 != v40)
            {
              v36 = *v28;
              v32 = *(v50 + v41);
              v36(v54, v1);
              goto LABEL_9;
            }

            v30 = v50;
            v31 = v39;
          }

          v32 = *(v30 + v31);
LABEL_9:

          swift_unknownObjectRetain();
          v33 = sub_10074BCD4();

          swift_unknownObjectRelease();
          [v32 setAttributedText:v33];

          v1 = v48;
          (*v28)(v6, v48);
          v21 += v45;
          if (!--v29)
          {

            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            swift_unknownObjectRelease();

            return;
          }
        }
      }
    }
  }
}

uint64_t sub_1003FC7C0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100750354();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074BD24();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074BD44();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100746584();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v31 - v17;
  v48.receiver = v0;
  v48.super_class = ObjectType;
  v38 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v16);
  sub_100746574();
  v19 = *(v10 + 16);
  v19(v14, v18, v9);
  v20 = (*(v10 + 88))(v14, v9);
  if (v20 == enum case for BadgeDisplayStyle.left(_:))
  {
    v21 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel;
LABEL_7:
    v22 = *&v0[v21];
    goto LABEL_8;
  }

  if (v20 == enum case for BadgeDisplayStyle.above(_:))
  {
    v21 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
    goto LABEL_7;
  }

  if (v20 == enum case for BadgeDisplayStyle.inline(_:))
  {
    v21 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel;
    goto LABEL_7;
  }

  v29 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel];
  v30 = *(v10 + 8);
  v31 = v10 + 8;
  v32 = v30;
  v22 = v29;
  v32(v14, v9);
LABEL_8:
  sub_1003FCCC0(v22);
  if (qword_100920BB0 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v4, qword_100936908);
  (*(v34 + 16))(v35, v23, v4);
  v19(v33, v18, v9);
  v46 = sub_100745C84();
  v47 = &protocol witness table for UILabel;
  v45 = v22;
  v24 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView];
  v43 = sub_100016C60(0, &qword_10092BFC0, UIImageView_ptr);
  v44 = &protocol witness table for UIView;
  v42 = v24;
  v25 = v22;
  v26 = v24;
  sub_10074BD34();
  sub_1007477B4();
  v27 = v39;
  sub_10074BCE4();

  (*(v40 + 8))(v27, v41);
  (*(v36 + 8))(v8, v37);
  return (*(v10 + 8))(v18, v9);
}

id sub_1003FCCC0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel);
  sub_100745C84();
  v3 = v2;
  v4 = sub_100753FC4();

  [v3 setHidden:(v4 & 1) == 0];
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel);
  v6 = sub_100753FC4();

  [v5 setHidden:(v6 & 1) == 0];
  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel);
  v8 = sub_100753FC4();

  return [v7 setHidden:(v8 & 1) == 0];
}

double sub_1003FCE0C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

double sub_1003FCE18@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;

  return result;
}

id sub_1003FCE68(__n128 a1)
{
  v2 = sub_100746584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  sub_100746574();
  (*(v3 + 32))(v5, v8, v2);
  v9 = (*(v3 + 88))(v5, v2);
  if (v9 == enum case for BadgeDisplayStyle.left(_:))
  {
    v10 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel;
  }

  else if (v9 == enum case for BadgeDisplayStyle.above(_:))
  {
    v10 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
  }

  else
  {
    if (v9 != enum case for BadgeDisplayStyle.inline(_:))
    {
      v13 = *(v3 + 8);
      v14 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel);
      v13(v5, v2);
      return v14;
    }

    v10 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel;
  }

  v11 = *(v1 + v10);

  return v11;
}

uint64_t sub_1003FD11C(uint64_t a1, void *a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921018 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  sub_10000D0FC(v8, qword_100980D80);
  v9 = [a2 traitCollection];
  v10 = sub_100753C14();

  v18[1] = sub_100016C60(0, &qword_10092E500, NSAttributedString_ptr);

  v18[0] = [a2 traitCollection];
  if (qword_100920BB0 != -1)
  {
    swift_once();
  }

  v11 = sub_10074BD24();
  sub_10000D0FC(v11, qword_100936908);
  sub_10074BD14();
  v12 = v20;
  sub_10000C888(v19, v20);
  sub_100536120(v12);
  sub_100750564();
  (*(v4 + 8))(v6, v3);
  sub_10000C518(&unk_100929CA0, &qword_1007A6610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v10;
  v14 = NSFontAttributeName;
  v15 = v10;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_100168AA4(inited + 32);
  v16 = sub_100753874();

  sub_10000C620(v19);
  return v16;
}

double sub_1003FD42C(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v5 = 0;
    v6 = 0.0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100754574();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v7 size];
      v11 = v10;

      v6 = v6 + v11 + a2;
      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0.0;
}

char *sub_1003FD52C(unint64_t a1, __n128 a2)
{
  v27 = sub_1007428D4();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v6 = 0;
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = a1 & 0xC000000000000001;
    v21 = (v3 + 8);
    v22 = i;
    v23 = a1;
    while (v25)
    {
      sub_100754574();
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v8 = v26;
      sub_1007444B4();
      v28 = sub_1007428C4();
      v10 = v9;
      (*v21)(v8, v27);
      v11 = sub_1007444E4();
      v13 = v12;
      v14 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1002563A4(0, *(v14 + 2) + 1, 1, v14);
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_1002563A4((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v17 = &v14[32 * v16];
      *(v17 + 4) = v28;
      *(v17 + 5) = v10;
      *(v17 + 6) = v11;
      *(v17 + 7) = v13;
      v29 = v14;
      v3 = sub_1007444A4();
      sub_1003FAD60(v3);
      v19 = v18;

      sub_1004A0208(v19);

      ++v6;
      a1 = v23;
      if (v7 == v22)
      {
        return v29;
      }
    }

    if (v6 >= *(v24 + 16))
    {
      goto LABEL_16;
    }

    v7 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003FD7B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1003FD7FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003FD850()
{
  result = qword_1009369A0;
  if (!qword_1009369A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009369A0);
  }

  return result;
}

void sub_1003FD8A4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000C518(&unk_100923200, &unk_1007A5C50);
  __chkstk_darwin(v8 - 8);
  v10 = &v179 - v9;
  v11 = sub_10074A0A4();
  if (v11)
  {
    v12 = v11;
    v13 = [a1 traitCollection];
    v14 = sub_10074A094();

    *&v188 = v12;
    sub_100744104();
    if ((sub_10074CA34() & 1) != 0 && *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
    {

      sub_10074AA74();
    }

    sub_100742374();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for ContentSearchResultCollectionViewCell();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
LABEL_10:

        return;
      }

      v16 = v15;
      v17 = a2;
      sub_100742364();
      goto LABEL_8;
    }

    sub_1007474C4();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for BundleSearchResultCollectionViewCell();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        goto LABEL_10;
      }

      v20 = v19;
      v21 = a2;
      v22 = sub_1007474B4();
      v23 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
      v24 = [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
      v25 = [v24 horizontalSizeClass];

      if (v25 == 1)
      {
        [*(v4 + v23) pageMarginInsets];
        top = v26;
        left = v28;
        bottom = v30;
        right = v32;
      }

      else
      {
        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
      }

      v50 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph);
      v51 = [v20 contentView];
      [v51 setLayoutMargins:{top, left, bottom, right}];

      v52 = sub_1007469A4();
      (*(*(v52 - 8) + 56))(v10, 1, 1, v52);
      sub_100028DB0(v22, v10, v50);
      sub_10000C8CC(v10, &unk_100923200, &unk_1007A5C50);
      v53 = sub_10074EFA4();
      if (v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = _swiftEmptyArrayStorage;
      }

      sub_10070E31C(v54);

      [v20 setNeedsLayout];

      v55 = sub_1007474B4();
      sub_1005060C0(v55, *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader));

      v56 = sub_1007474B4();
      sub_100400C68(v56, v21, v4);

LABEL_27:

      return;
    }

    sub_100747E74();
    if (!swift_dynamicCastClass())
    {
      sub_1007493C4();
      v57 = swift_dynamicCastClass();
      if (v57)
      {
        v58 = v57;
        type metadata accessor for EditorialSearchResultCollectionViewCell();
        v59 = swift_dynamicCastClass();
        if (v59)
        {
          v60 = v59;
          v61 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          v62 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits);
          ObjectType = swift_getObjectType();
          v187 = a2;
          v63 = [swift_unknownObjectRetain() traitCollection];
          v64 = [v63 horizontalSizeClass];

          if (v64 == 1)
          {
            [*(v4 + v61) pageMarginInsets];
            v66 = v65;
            v68 = v67;
            v70 = v69;
            v72 = v71;
          }

          else
          {
            v66 = UIEdgeInsetsZero.top;
            v68 = UIEdgeInsetsZero.left;
            v70 = UIEdgeInsetsZero.bottom;
            v72 = UIEdgeInsetsZero.right;
          }

          v81 = ASKDeviceTypeGetCurrent();
          v82 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph);
          v83 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkIconFetcher);
          v84 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
          swift_unknownObjectRetain();
          sub_1006D5DA8(v58, v62, v82, v83, v84, v60, v66, v68, v70, v72);

          swift_unknownObjectRelease_n();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {

            sub_10074B184();
            sub_100752764();
            sub_100752D34();
            ObjectType = v188;
            v86 = swift_unknownObjectWeakLoadStrong();
            if (v86)
            {
              sub_10040831C(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
            }

            sub_10040831C(&qword_100936A98, type metadata accessor for EditorialSearchResultCollectionViewCell, &unk_1007C62B8);
            v130 = v187;
            v131 = ObjectType;
            sub_10074B164();
          }
        }

        sub_100401148(v58, a2, v4);
      }

      else
      {
        sub_100741ED4();
        if (swift_dynamicCastClass())
        {
          type metadata accessor for InAppPurchaseSearchResultCollectionViewCell(0);
          if (swift_dynamicCastClass())
          {
            v187 = a2;
            v73 = sub_100741EC4();
            v74 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
            ObjectType = [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
            v75 = [*(v3 + v74) traitCollection];
            v76 = [v75 horizontalSizeClass];

            if (v76 == 1)
            {
              [*(v4 + v74) pageMarginInsets];
            }

            else
            {
              v77 = UIEdgeInsetsZero.top;
              v78 = UIEdgeInsetsZero.left;
              v79 = UIEdgeInsetsZero.bottom;
              v80 = UIEdgeInsetsZero.right;
            }

            sub_1000E5BA0(v73, *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph), *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader), v77, v78, v79, v80);
          }

          v132 = sub_100741EC4();
          sub_100401628(v132, a2, v4);
          goto LABEL_9;
        }

        sub_10074C814();
        v99 = swift_dynamicCastClass();
        if (v99)
        {
          v100 = v99;
          type metadata accessor for SearchLockupListCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            v187 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
            *&v185 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph);
            v101 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
            v102 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits);
            ObjectType = a2;
            v103 = [swift_unknownObjectRetain() traitCollection];
            v104 = [v103 horizontalSizeClass];

            if (v104 == 1)
            {
              [*(v3 + v101) pageMarginInsets];
            }

            else
            {
              v105 = UIEdgeInsetsZero.top;
              v106 = UIEdgeInsetsZero.left;
              v107 = UIEdgeInsetsZero.bottom;
              v108 = UIEdgeInsetsZero.right;
            }

            sub_10032D230(v100, v187, v185, v102, v105, v106, v107, v108);

            swift_unknownObjectRelease();
          }

          sub_100401B08(v100, a2, v3);
        }

        else
        {
          sub_100742574();
          v187 = swift_dynamicCastClass();
          if (!v187)
          {
            goto LABEL_10;
          }

          type metadata accessor for AppEventSearchResultCollectionViewCell();
          v133 = swift_dynamicCastClass();
          if (!v133)
          {
            type metadata accessor for ContentSearchResultCollectionViewCell();
            v150 = swift_dynamicCastClass();
            if (!v150)
            {
              goto LABEL_10;
            }

            v16 = v150;
            v17 = a2;
            sub_100742564();
LABEL_8:
            v18 = sub_100668924(v14 & 1);

            sub_1003FEC50(v18, v16, a3, a1);

LABEL_9:

            goto LABEL_10;
          }

          v134 = v133;
          v135 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          v136 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits);
          ObjectType = a2;
          [v136 pageMarginInsets];
          v138 = v137;
          v139 = [*(v4 + v135) traitCollection];
          v140 = [v139 horizontalSizeClass];

          v141 = v134;
          if (v140 == 1)
          {
            [*(v4 + v135) pageMarginInsets];
            v143 = v142;
            v145 = v144;
            v147 = v146;
            v149 = v148;
          }

          else
          {
            v143 = UIEdgeInsetsZero.top;
            v145 = UIEdgeInsetsZero.left;
            v147 = UIEdgeInsetsZero.bottom;
            v149 = UIEdgeInsetsZero.right;
          }

          v151 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph);
          *&v185 = *(v4 + v135);
          swift_unknownObjectRetain();
          v152 = [v141 contentView];
          [v152 setLayoutMargins:{v143, v145, v147, v149}];

          v153 = *&v141[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_lockupView];
          *&v153[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = v138;
          [v153 setNeedsLayout];
          sub_100016C60(0, &qword_100923500, UIColor_ptr);
          v154 = sub_100753E04();
          [v141 setBackgroundColor:v154];

          v155 = sub_100742564();
          v156 = sub_1007469A4();
          (*(*(v156 - 8) + 56))(v10, 1, 1, v156);
          sub_100028DB0(v155, v10, v151);

          sub_10000C8CC(v10, &unk_100923200, &unk_1007A5C50);
          v184 = OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView;
          v157 = sub_100742554();
          v158 = v151;
          v159 = v141;
          sub_100195300(v157, v158);

          v160 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v161 = swift_allocObject();
          v162 = v187;
          *(v161 + 2) = v160;
          *(v161 + 3) = v162;
          *(v161 + 4) = v158;
          v163 = &v141[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
          v164 = *&v141[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
          v165 = *&v141[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction + 8];
          *v163 = sub_100408308;
          v163[1] = v161;

          v183 = v158;

          sub_1000164A8(v164, v165);

          [v141 setNeedsLayout];
          swift_unknownObjectRelease();
          isa = sub_100741704().super.isa;
          v167 = [a1 layoutAttributesForItemAtIndexPath:isa];

          if (v167)
          {
            [v167 frame];
            v181 = v168;
            v182 = v169;
            v180 = v170;
            v185 = v171;

            *&v173 = v180;
            *&v172 = v181;
            *(&v172 + 1) = v182;
            *(&v173 + 1) = v185;
          }

          else
          {
            v172 = 0uLL;
            v173 = 0uLL;
          }

          v174 = ObjectType;
          v188 = v172;
          v189 = v173;
          v190 = v167 == 0;
          sub_1003FFD38(v187, v159, &v188);
          v175 = swift_unknownObjectWeakLoadStrong();
          if (v175)
          {

            sub_10074B184();
            sub_100752764();
            sub_100752D34();
            v176 = v191;
            v177 = swift_unknownObjectWeakLoadStrong();
            if (v177)
            {
              sub_10040831C(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
            }

            sub_10040831C(&qword_100929478, type metadata accessor for AppEventSearchResultCollectionViewCell, &unk_1007AD078);
            v178 = v174;
            sub_10074B164();
          }

          sub_100401FE8(v187, v159, v4);
        }
      }

LABEL_59:

      return;
    }

    type metadata accessor for AdvertSearchResultCollectionViewCell();
    v34 = swift_dynamicCastClass();
    if (!v34 || !*(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
    {
      goto LABEL_10;
    }

    v35 = v34;
    v21 = a2;

    sub_10074AA64();

    sub_10000C518(&qword_100927780, &qword_1007AAB80);
    sub_100745E64();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    v184 = v21;
    v187 = v191;
    v36 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
    v38 = v37;
    v39 = swift_unknownObjectRetain();
    v40 = [v39 traitCollection];
    v41 = [v40 horizontalSizeClass];

    v183 = v36;
    if (v41 == 1)
    {
      [*(v4 + v36) pageMarginInsets];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
    }

    else
    {
      v43 = UIEdgeInsetsZero.top;
      v45 = UIEdgeInsetsZero.left;
      v47 = UIEdgeInsetsZero.bottom;
      v49 = UIEdgeInsetsZero.right;
    }

    v87 = ASKDeviceTypeGetCurrent();
    v88 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph);
    ObjectType = OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
    v89 = *(v35 + OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView);
    *&v182 = v39;
    v90 = [v39 traitCollection];
    *&v185 = v88;
    sub_10054F6E0(v187, v90, v87, v88, v38, v43, v45, v47, v49);

    [v35 setNeedsLayout];
    swift_unknownObjectRelease();

    v91 = sub_100741704().super.isa;
    v92 = [a1 layoutAttributesForItemAtIndexPath:v91];

    if (v92)
    {
      [v92 frame];
      v180 = v93;
      v181 = v94;
      v179 = v95;
      v182 = v96;

      *&v98 = v179;
      *&v97 = v180;
      *(&v97 + 1) = v181;
      *(&v98 + 1) = v182;
    }

    else
    {
      v97 = 0uLL;
      v98 = 0uLL;
    }

    v188 = v97;
    v189 = v98;
    v190 = v92 == 0;
    v109 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
    v110 = *(v4 + v183);
    v111 = ObjectType;
    v112 = *&ObjectType[v35];
    swift_unknownObjectRetain();
    v113 = v112;
    v114 = [v110 traitCollection];
    sub_100551AD0(v187, &v188, v109, v114);
    swift_unknownObjectRelease();

    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    v115 = v191;
    v116 = *&v111[v35];
    v117 = swift_unknownObjectWeakLoadStrong();
    if (v117)
    {
      sub_10040831C(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    }

    sub_10040831C(&unk_100936AA0, type metadata accessor for AdvertsSearchResultContentView, &unk_1007C2CA0);
    v118 = v116;
    sub_10074B164();

    v120 = v184;
    sub_100400C68(v119, v184, v4);
    v121 = sub_10074EED4();

    if (v121)
    {
      v122 = sub_100748644();

      v123 = *&ObjectType[v35];
      if (v122)
      {
        v124 = objc_opt_self();
        v125 = v123;
        v126 = [v124 clearColor];
        [v125 setBackgroundColor:v126];

LABEL_55:
        [v125 setNeedsLayout];

        [v35 setNeedsLayout];

        v127 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v128 = *&ObjectType[v35];

        v129 = v128;
        sub_10048862C(sub_100408314, v127);

        goto LABEL_59;
      }
    }

    else
    {
      v123 = *&ObjectType[v35];
    }

    v125 = v123;
    v122 = 0;
    goto LABEL_55;
  }
}

double sub_1003FEBC4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController);
    v4 = Strong;

    if (v3)
    {
      sub_10074AA54();
    }
  }

  return result;
}

void sub_1003FEC50(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
  [*(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
  v11 = v10;
  v12 = *(v4 + v9);
  v13 = [swift_unknownObjectRetain() traitCollection];
  v14 = [v13 horizontalSizeClass];

  if (v14 == 1)
  {
    [*(v5 + v9) pageMarginInsets];
    top = v15;
    left = v17;
    bottom = v19;
    right = v21;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v23 = ASKDeviceTypeGetCurrent();
  sub_1002207E8(a1, v12, v23, *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph), v11, top, left, bottom, right);
  swift_unknownObjectRelease();

  isa = sub_100741704().super.isa;
  v25 = [a4 layoutAttributesForItemAtIndexPath:isa];

  if (v25)
  {
    [v25 frame];
    v36 = v26;
    v37 = v27;
    v35 = v28;
    v38 = v29;

    *&v31 = v35;
    *&v30 = v36;
    *(&v30 + 1) = v37;
    *(&v31 + 1) = v38;
  }

  else
  {
    v30 = 0uLL;
    v31 = 0uLL;
  }

  v40[0] = v30;
  v40[1] = v31;
  v41 = v25 == 0;
  v32 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
  v33 = *(v5 + v9);
  swift_unknownObjectRetain();
  sub_100222DA4(a1, v40, v32, v33);
  swift_unknownObjectRelease();
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10040831C(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  }

  sub_10040831C(&unk_100936A40, type metadata accessor for ContentSearchResultCollectionViewCell, &unk_1007B1878);
  sub_10074B164();

  sub_100400C68(a1, a2, v5);
}

void sub_1003FEF5C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v6 = swift_dynamicCastClass();
  v55 = a2;
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_screenshots);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v10 = *(v8 + v9);
  if (v10 >> 62)
  {
    v11 = sub_100754664();
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_4:
      if (v11 < 1)
      {
        __break(1u);
        return;
      }

      v53 = v3;
      v12 = v55;

      v13 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = sub_100754574();
        }

        else
        {
          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = v14;
        ++v13;
        v56 = v14;
        type metadata accessor for BorderedScreenshotView(0);
        sub_10040831C(&qword_100923470, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
        v16 = v15;
        sub_1007544E4();
        sub_100744264();
        sub_100016994(v57);
        v17 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
        v58.value.super.isa = 0;
        v58.is_nil = 0;
        sub_100743384(v58, v18);
      }

      while (v11 != v13);

      v4 = v53;
      a2 = v55;
      goto LABEL_13;
    }
  }

  a2 = v55;
  v19 = v55;
LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    [*(Strong + qword_10093CB50) setImage:0];
    v56 = v21;
    type metadata accessor for VideoView(0);
    sub_10040831C(&qword_10093DD00, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v22 = v21;
    sub_1007544E4();
    sub_100744264();

    sub_100016994(v57);
  }

  v23 = OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView;
  v24 = *(*(v7 + OBJC_IVAR____TtC22SubscribePageExtension37ContentSearchResultCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v59.value.super.isa = 0;
  v59.is_nil = 0;
  sub_100743384(v59, v25);

  v26 = *(*(v7 + v23) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_10040831C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v27 = v26;
  sub_100744274();

  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v28 = v57[0];
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    sub_10040831C(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  }

  sub_10040831C(&unk_100936A40, type metadata accessor for ContentSearchResultCollectionViewCell, &unk_1007B1878);
  v30 = a2;
  sub_10074B124();

LABEL_18:
  if (!sub_10074A0A4())
  {
    return;
  }

  type metadata accessor for AppEventSearchResultCollectionViewCell();
  v31 = swift_dynamicCastClass();
  if (v31)
  {
    v32 = v31;
    v33 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
    v34 = OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_lockupView;
    v35 = *(*(v31 + OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    v54 = a2;
    v36 = v35;
    v60.value.super.isa = 0;
    v60.is_nil = 0;
    sub_100743384(v60, v37);

    v38 = *(*(v32 + v34) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_1007433C4();
    sub_10040831C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v39 = v38;
    sub_100744274();

    sub_10051207C(v33, 1, v40);
    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    v41 = v57[0];
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      sub_10040831C(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    }

    sub_10040831C(&qword_100929478, type metadata accessor for AppEventSearchResultCollectionViewCell, &unk_1007AD078);
    v43 = v54;
    sub_10074B124();

    a2 = v55;
  }

  type metadata accessor for AdvertSearchResultCollectionViewCell();
  if (swift_dynamicCastClass() && *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
  {
    v44 = a2;

    sub_10074AA84();
  }

  sub_100742374();
  if (!swift_dynamicCastClass())
  {
    sub_100747E74();
    if (swift_dynamicCastClass())
    {
      if (!*(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
      {
        goto LABEL_30;
      }

      sub_10074AA64();

      sub_10000C518(&qword_100927780, &qword_1007AAB80);
      sub_100745E64();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_30;
      }

      v45 = v56;
      goto LABEL_28;
    }

    sub_1007493C4();
    v46 = swift_dynamicCastClass();
    if (v46)
    {
      v47 = v46;

      sub_100402EFC(v47, v4);
    }

    else
    {
      sub_100741ED4();
      if (swift_dynamicCastClass())
      {
        v48 = sub_100741EC4();
        sub_100403160(v48, v4);
        goto LABEL_29;
      }

      sub_1007474C4();
      if (swift_dynamicCastClass())
      {
        v45 = sub_1007474B4();
        goto LABEL_28;
      }

      sub_10074C814();
      v49 = swift_dynamicCastClass();
      if (v49)
      {
        v50 = v49;

        sub_1004033C4(v50, v4);
      }

      else
      {
        sub_100742574();
        v51 = swift_dynamicCastClass();
        if (!v51)
        {
          goto LABEL_30;
        }

        v52 = v51;
        if ((sub_10074A054() & 1) == 0)
        {
          v45 = sub_100742564();
          goto LABEL_28;
        }

        sub_100403628(v52, v4);
      }
    }

    return;
  }

  v45 = sub_100742364();
LABEL_28:
  sub_100402C98(v45, v4);
LABEL_29:

LABEL_30:
}

uint64_t sub_1003FF850(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, char *))
{
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v14, v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_1003FFD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  if ((*(a3 + 32) & 1) == 0)
  {
    v7 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
    v8 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_lockupView);
    v9 = *(a3 + 16);
    v10 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v11 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    v25.value.super.isa = 0;
    v25.is_nil = 0;
    sub_100743384(v25, v12);

    v13 = *(v8 + v10);
    sub_1007433C4();
    sub_10040831C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v14 = v13;
    sub_100744274();

    v15 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView);
    v16 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView;
    sub_10051207C(v7, 1, v17);
    sub_100742564();
    v18 = sub_10074EF24();

    if (v18)
    {
      v24 = v15;
      v19 = qword_100920548;
      v20 = *(v8 + v10);
      if (v19 != -1)
      {
        swift_once();
      }

      v21 = sub_100747064();
      sub_10000D0FC(v21, qword_10097E3A8);
      sub_100746F34();
      [v20 contentMode];
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v20 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();
      v22 = *(v8 + v10);
      sub_100744204();

      v15 = v24;
    }

    v23 = sub_100742554();
    sub_10001AB74(v23, v7, *(v15 + v16), v9);
  }
}

void sub_10040008C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6)
{
  v81 = a6;
  v80 = a5;
  v88 = sub_1007521E4();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100752224();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007521D4();
  v79 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_100752244();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v70 - v19;
  type metadata accessor for AdvertSearchResultCollectionViewCell();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v77 = v12;
    sub_1001A41D4(a2, aBlock);
    v23 = a1;
    sub_10000C518(&qword_100927780, &qword_1007AAB80);
    sub_100745E64();
    if (swift_dynamicCast())
    {
      v78 = v23;
      v24 = v90[0];
      sub_1001A41D4(a3, aBlock);
      if (swift_dynamicCast())
      {
        v25 = v90[0];

        sub_100402C98(v26, v6);
        v74 = v24;

        sub_100400C68(v27, v78, v6);
        v75 = v25;

        v28 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
        [*(v6 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
        v71 = v29;
        v76 = [*(v6 + v28) traitCollection];
        v30 = [*(v6 + v28) traitCollection];
        v31 = [v30 horizontalSizeClass];

        v72 = v20;
        if (v31 == 1)
        {
          [*(v6 + v28) pageMarginInsets];
          top = v32;
          left = v34;
          bottom = v36;
          right = v38;
        }

        else
        {
          top = UIEdgeInsetsZero.top;
          left = UIEdgeInsetsZero.left;
          bottom = UIEdgeInsetsZero.bottom;
          right = UIEdgeInsetsZero.right;
        }

        v40 = ASKDeviceTypeGetCurrent();
        v73 = v40;
        v70 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_artworkLoader);
        [v22 setUserInteractionEnabled:0];
        v41 = OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
        [*&v22[OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView] frame];
        v46 = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{v42, v43, v44, v45}];
        v47 = v75;
        v48 = v76;
        v49 = v40;
        v50 = v81;
        sub_10054F6E0(v75, v76, v49, v81, *&v71, top, left, bottom, right);
        [v46 layoutIfNeeded];
        [*&v22[v41] frame];
        v90[0] = v51;
        v90[1] = v52;
        v90[2] = v53;
        v90[3] = v54;
        v91 = 0;
        sub_100551AD0(v47, v90, v70, v48);
        v55 = (*&v22[v41] + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
        swift_beginAccess();
        v56 = *v55;
        v57 = v55[1];
        sub_10001B5AC(*v55, v57);
        sub_10048862C(v56, v57);
        sub_1000164A8(v56, v57);
        sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
        v71 = sub_100753774();
        sub_100752234();
        v58 = 333;
        if ((v80 & 1) == 0)
        {
          v58 = 0;
        }

        *v15 = v58;
        v59 = v79;
        (*(v79 + 104))(v15, enum case for DispatchTimeInterval.milliseconds(_:), v13);
        v60 = v72;
        sub_1007522A4();
        (*(v59 + 8))(v15, v13);
        v82 = *(v82 + 8);
        v61 = v83;
        (v82)(v17, v83);
        v62 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v63 = swift_allocObject();
        v63[2] = v62;
        v63[3] = v46;
        v63[4] = v50;
        aBlock[4] = sub_100403B70;
        aBlock[5] = v63;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000CF7B0;
        aBlock[3] = &unk_100874FD8;
        v64 = _Block_copy(aBlock);
        v65 = v46;

        v66 = v77;
        sub_100752204();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10040831C(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10000C518(&unk_10092F750, &qword_1007A6920);
        sub_1000A8054();
        v67 = v85;
        v68 = v88;
        sub_1007543A4();
        v69 = v71;
        sub_100753734();
        _Block_release(v64);

        (*(v87 + 8))(v67, v68);
        (*(v84 + 8))(v66, v86);
        (v82)(v60, v61);
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

id sub_10040099C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsCollectionViewDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultsCollectionViewDelegate(uint64_t a1)
{
  result = qword_100936A10;
  if (!qword_100936A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100400B24(uint64_t a1)
{
  sub_100400C0C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100400C0C(uint64_t a1)
{
  if (!qword_100936A20)
  {
    sub_100752914();
    v1 = sub_100754284();
    if (!v2)
    {
      atomic_store(v1, &qword_100936A20);
    }
  }
}

uint64_t sub_100400C68(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a2;
  v5 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_100752914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v44 = sub_100745E64();
  v48[3] = v44;
  v48[4] = sub_10040831C(&qword_100923400, &type metadata accessor for MixedMediaLockup, &protocol conformance descriptor for Lockup);
  v48[0] = a1;
  sub_100016B4C(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_100925380, qword_1007A8E40);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v46 = a3;
  if (v18 == 1)
  {

    sub_10000C8CC(v10, &unk_100925380, qword_1007A8E40);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v45;
      [v45 frame];
      sub_100749594();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v45;
LABEL_7:
  sub_10000C824(v48, v47);
  sub_10040831C(&unk_100936A30, &type metadata accessor for MixedMediaLockup, &protocol conformance descriptor for Lockup);
  sub_100752F24();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380, qword_1007A8E40);
    v25 = v46;
  }

  else
  {
    v26 = v43;
    (*(v12 + 32))(v43, v7, v11);
    v25 = v46;
    v27 = *(v46 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_100749544();
    }

    [v21 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = sub_10000C888(v47, v47[3]);
    sub_100403B94(*v36, v27, v29, v31, v33, v35);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000C620(v47);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v37 = v21;
    [v37 frame];
    sub_1004029A8(v19, v25, &type metadata accessor for MixedMediaLockup, &unk_100936A30, &type metadata accessor for MixedMediaLockup, &protocol conformance descriptor for Lockup, v38, v39, v40, v41);
    swift_getObjectType();
    sub_10074D3A4();
  }

  return sub_10000C620(v48);
}

uint64_t sub_100401148(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a2;
  v5 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_100752914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v44 = sub_1007493C4();
  v48[3] = v44;
  v48[4] = sub_10040831C(&qword_100936A50, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  v48[0] = a1;
  sub_100016B4C(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_100925380, qword_1007A8E40);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v46 = a3;
  if (v18 == 1)
  {

    sub_10000C8CC(v10, &unk_100925380, qword_1007A8E40);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v45;
      [v45 frame];
      sub_100749594();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v45;
LABEL_7:
  sub_10000C824(v48, v47);
  sub_10040831C(&qword_100936A58, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  sub_100752F24();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380, qword_1007A8E40);
    v25 = v46;
  }

  else
  {
    v26 = v43;
    (*(v12 + 32))(v43, v7, v11);
    v25 = v46;
    v27 = *(v46 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_100749544();
    }

    [v21 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = sub_10000C888(v47, v47[3]);
    sub_1004042D0(*v36, v27, v29, v31, v33, v35);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000C620(v47);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v37 = v21;
    [v37 frame];
    sub_1004029A8(v19, v25, &type metadata accessor for EditorialSearchResult, &qword_100936A58, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult, v38, v39, v40, v41);
    swift_getObjectType();
    sub_10074D3A4();
  }

  return sub_10000C620(v48);
}

uint64_t sub_100401628(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a2;
  v5 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_100752914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v44 = sub_100741D54();
  v48[3] = v44;
  v48[4] = sub_10040831C(&qword_100936A60, &type metadata accessor for InAppPurchaseLockup, &protocol conformance descriptor for Lockup);
  v48[0] = a1;
  sub_100016B4C(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_100925380, qword_1007A8E40);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v46 = a3;
  if (v18 == 1)
  {

    sub_10000C8CC(v10, &unk_100925380, qword_1007A8E40);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v45;
      [v45 frame];
      sub_100749594();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v45;
LABEL_7:
  sub_10000C824(v48, v47);
  sub_10040831C(&qword_100936A68, &type metadata accessor for InAppPurchaseLockup, &protocol conformance descriptor for Lockup);
  sub_100752F24();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380, qword_1007A8E40);
    v25 = v46;
  }

  else
  {
    v26 = v43;
    (*(v12 + 32))(v43, v7, v11);
    v25 = v46;
    v27 = *(v46 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_100749544();
    }

    [v21 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = sub_10000C888(v47, v47[3]);
    sub_100404A0C(*v36, v27, v29, v31, v33, v35);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000C620(v47);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v37 = v21;
    [v37 frame];
    sub_1004029A8(v19, v25, &type metadata accessor for InAppPurchaseLockup, &qword_100936A68, &type metadata accessor for InAppPurchaseLockup, &protocol conformance descriptor for Lockup, v38, v39, v40, v41);
    swift_getObjectType();
    sub_10074D3A4();
  }

  return sub_10000C620(v48);
}

uint64_t sub_100401B08(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a2;
  v5 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_100752914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v44 = sub_10074C814();
  v48[3] = v44;
  v48[4] = sub_10040831C(&qword_100936A70, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  v48[0] = a1;
  sub_100016B4C(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_100925380, qword_1007A8E40);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v46 = a3;
  if (v18 == 1)
  {

    sub_10000C8CC(v10, &unk_100925380, qword_1007A8E40);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v45;
      [v45 frame];
      sub_100749594();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v45;
LABEL_7:
  sub_10000C824(v48, v47);
  sub_10040831C(&unk_100936A78, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  sub_100752F24();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380, qword_1007A8E40);
    v25 = v46;
  }

  else
  {
    v26 = v43;
    (*(v12 + 32))(v43, v7, v11);
    v25 = v46;
    v27 = *(v46 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_100749544();
    }

    [v21 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = sub_10000C888(v47, v47[3]);
    sub_100405148(*v36, v27, v29, v31, v33, v35);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000C620(v47);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v37 = v21;
    [v37 frame];
    sub_1004029A8(v19, v25, &type metadata accessor for LockupCollectionSearchResult, &unk_100936A78, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult, v38, v39, v40, v41);
    swift_getObjectType();
    sub_10074D3A4();
  }

  return sub_10000C620(v48);
}

uint64_t sub_100401FE8(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a2;
  v5 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_100752914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v44 = sub_100742574();
  v48[3] = v44;
  v48[4] = sub_10040831C(&qword_100923190, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  v48[0] = a1;
  sub_100016B4C(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_100925380, qword_1007A8E40);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v46 = a3;
  if (v18 == 1)
  {

    sub_10000C8CC(v10, &unk_100925380, qword_1007A8E40);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v45;
      [v45 frame];
      sub_100749594();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v45;
LABEL_7:
  sub_10000C824(v48, v47);
  sub_10040831C(&unk_100936A88, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_100752F24();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380, qword_1007A8E40);
    v25 = v46;
  }

  else
  {
    v26 = v43;
    (*(v12 + 32))(v43, v7, v11);
    v25 = v46;
    v27 = *(v46 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_100749544();
    }

    [v21 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = sub_10000C888(v47, v47[3]);
    sub_100405884(*v36, v27, v29, v31, v33, v35);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000C620(v47);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v37 = v21;
    [v37 frame];
    sub_1004029A8(v19, v25, &type metadata accessor for AppEventSearchResult, &unk_100936A88, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult, v38, v39, v40, v41);
    swift_getObjectType();
    sub_10074D3A4();
  }

  return sub_10000C620(v48);
}

uint64_t sub_1004024C8(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a2;
  v5 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_100752914();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v44 = sub_100743EB4();
  v48[3] = v44;
  v48[4] = sub_10040831C(&qword_100933028, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  v48[0] = a1;
  sub_100016B4C(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_100925380, qword_1007A8E40);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v46 = a3;
  if (v18 == 1)
  {

    sub_10000C8CC(v10, &unk_100925380, qword_1007A8E40);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v45;
      [v45 frame];
      sub_100749594();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v45;
LABEL_7:
  sub_10000C824(v48, v47);
  sub_10040831C(&unk_100936AB0, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_100752F24();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10000C8CC(v7, &unk_100925380, qword_1007A8E40);
    v25 = v46;
  }

  else
  {
    v26 = v43;
    (*(v12 + 32))(v43, v7, v11);
    v25 = v46;
    v27 = *(v46 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_100749544();
    }

    [v21 frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = sub_10000C888(v47, v47[3]);
    sub_100408364(*v36, v27, v29, v31, v33, v35);
    (*(v12 + 8))(v26, v11);
  }

  sub_10000C620(v47);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v37 = v21;
    [v37 frame];
    sub_1004029A8(v19, v25, &type metadata accessor for LinkableText, &unk_100936AB0, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText, v38, v39, v40, v41);
    swift_getObjectType();
    sub_10074D3A4();
  }

  return sub_10000C620(v48);
}

uint64_t sub_1004029A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6, double a7, double a8, double a9, double a10)
{
  v30 = a2;
  v15 = sub_1007528E4();
  v28 = *(v15 - 8);
  v29 = v15;
  __chkstk_darwin(v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v18 - 8);
  v20 = &v28 - v19;
  v21 = sub_100752914();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  a3(0, v23);
  sub_10040831C(a4, a5, a6);
  sub_100752F24();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000C8CC(v20, &unk_100925380, qword_1007A8E40);
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    if (*(v30 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      sub_100749544();
      sub_1007528F4();
      v26 = sub_100749534();
      (*(v28 + 8))(v17, v29);
      (*(v22 + 8))(v25, v21);
      return v26;
    }

    (*(v22 + 8))(v25, v21);
  }

  return 0;
}

uint64_t sub_100402C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_100745E64();
  v15[4] = sub_10040831C(&qword_100923400, &type metadata accessor for MixedMediaLockup, &protocol conformance descriptor for Lockup);
  v15[0] = a1;
  sub_10000C824(v15, v14);
  sub_10040831C(&unk_100936A30, &type metadata accessor for MixedMediaLockup, &protocol conformance descriptor for Lockup);

  sub_100752F24();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_100749564();
    }

    v12 = sub_10000C888(v14, v14[3]);
    sub_100405FC0(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000C620(v14);
  return sub_10000C620(v15);
}

uint64_t sub_100402EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_1007493C4();
  v15[4] = sub_10040831C(&qword_100936A50, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  v15[0] = a1;
  sub_10000C824(v15, v14);
  sub_10040831C(&qword_100936A58, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);

  sub_100752F24();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_100749564();
    }

    v12 = sub_10000C888(v14, v14[3]);
    sub_1004066C0(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000C620(v14);
  return sub_10000C620(v15);
}

uint64_t sub_100403160(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_100741D54();
  v15[4] = sub_10040831C(&qword_100936A60, &type metadata accessor for InAppPurchaseLockup, &protocol conformance descriptor for Lockup);
  v15[0] = a1;
  sub_10000C824(v15, v14);
  sub_10040831C(&qword_100936A68, &type metadata accessor for InAppPurchaseLockup, &protocol conformance descriptor for Lockup);

  sub_100752F24();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_100749564();
    }

    v12 = sub_10000C888(v14, v14[3]);
    sub_100406DC0(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000C620(v14);
  return sub_10000C620(v15);
}

uint64_t sub_1004033C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_10074C814();
  v15[4] = sub_10040831C(&qword_100936A70, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  v15[0] = a1;
  sub_10000C824(v15, v14);
  sub_10040831C(&unk_100936A78, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);

  sub_100752F24();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_100749564();
    }

    v12 = sub_10000C888(v14, v14[3]);
    sub_1004074C0(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000C620(v14);
  return sub_10000C620(v15);
}

uint64_t sub_100403628(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_100742574();
  v15[4] = sub_10040831C(&qword_100923190, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  v15[0] = a1;
  sub_10000C824(v15, v14);
  sub_10040831C(&unk_100936A88, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);

  sub_100752F24();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_100749564();
    }

    v12 = sub_10000C888(v14, v14[3]);
    sub_100407BC0(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000C620(v14);
  return sub_10000C620(v15);
}

uint64_t sub_10040388C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_100743EB4();
  v15[4] = sub_10040831C(&qword_100933028, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  v15[0] = a1;
  sub_10000C824(v15, v14);
  sub_10040831C(&unk_100936AB0, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);

  sub_100752F24();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_100749564();
    }

    v12 = sub_10000C888(v14, v14[3]);
    sub_100408C4C(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_10000C620(v14);
  return sub_10000C620(v15);
}

uint64_t sub_100403AF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100403B28()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100403B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100403B94(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v41 - v11;
  v12 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v12 - 8);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v54 = &v41 - v15;
  v16 = sub_100752914();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  v49 = sub_100745E64();
  v59[3] = v49;
  v59[4] = sub_10040831C(&qword_100923400, &type metadata accessor for MixedMediaLockup, &protocol conformance descriptor for Lockup);
  v59[0] = a1;
  sub_10000C824(v59, v57);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v44 = v9;
    sub_100012160(v55, v58);
    sub_10000C888(v58, v58[3]);
    v22 = sub_10074A234();
    if (v22)
    {
      v42 = v22;
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v42 + 32;
        v25 = (v17 + 48);
        v46 = (v17 + 32);
        v50 = (v17 + 8);
        v26 = &qword_10093FDE0;
        v27 = &unk_1007A8CF0;
        v48 = v21;
        v47 = (v17 + 48);
        v43 = v16;
        do
        {
          v28 = v27;
          v29 = v26;
          sub_10000C824(v24, v57);
          sub_10000C888(v57, v57[3]);
          v30 = v54;
          sub_100752F24();
          sub_10000C620(v57);
          v31 = *v25;
          if ((*v25)(v30, 1, v16) == 1)
          {
            sub_10000C8CC(v54, &unk_100925380, qword_1007A8E40);
            v26 = v29;
            v27 = v28;
          }

          else
          {
            (*v46)(v21, v54, v16);
            sub_10040831C(&unk_100936A30, &type metadata accessor for MixedMediaLockup, &protocol conformance descriptor for Lockup);
            v32 = v52;
            sub_100752F24();
            if (v31(v32, 1, v16) == 1)
            {
              sub_10000C8CC(v52, &unk_100925380, qword_1007A8E40);
              v33 = 1;
            }

            else
            {
              v34 = v52;
              sub_1007528F4();
              (*v50)(v34, v16);
              v33 = 0;
            }

            v26 = v29;
            v35 = sub_1007528E4();
            v36 = *(v35 - 8);
            (*(v36 + 56))(v53, v33, 1, v35);
            v27 = v28;
            if (v51)
            {
              v37 = v44;
              sub_100016B4C(v53, v44, v29, v28);
              if ((*(v36 + 48))(v37, 1, v35) == 1)
              {
                sub_10000C8CC(v37, v29, v28);
              }

              else
              {
                sub_1007528D4();
                (*(v36 + 8))(v37, v35);
                v16 = v43;
              }

              v38 = v45;
              v21 = v48;
              sub_1007528A4();

              sub_100749544();
              v39 = *v50;
              (*v50)(v38, v16);
              sub_10000C8CC(v53, v29, v28);
              v39(v21, v16);
              v25 = v47;
              v26 = v29;
            }

            else
            {
              sub_10000C8CC(v53, v29, v28);
              v21 = v48;
              (*v50)(v48, v16);
              v25 = v47;
            }
          }

          v24 += 40;
          --v23;
        }

        while (v23);
      }
    }

    sub_10000C620(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_10000C8CC(v55, &unk_1009253F0, &unk_1007CCB70);
  }

  return sub_10000C620(v59);
}

uint64_t sub_1004042D0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v41 - v11;
  v12 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v12 - 8);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v54 = &v41 - v15;
  v16 = sub_100752914();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  v49 = sub_1007493C4();
  v59[3] = v49;
  v59[4] = sub_10040831C(&qword_100936A50, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  v59[0] = a1;
  sub_10000C824(v59, v57);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v44 = v9;
    sub_100012160(v55, v58);
    sub_10000C888(v58, v58[3]);
    v22 = sub_10074A234();
    if (v22)
    {
      v42 = v22;
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v42 + 32;
        v25 = (v17 + 48);
        v46 = (v17 + 32);
        v50 = (v17 + 8);
        v26 = &qword_10093FDE0;
        v27 = &unk_1007A8CF0;
        v48 = v21;
        v47 = (v17 + 48);
        v43 = v16;
        do
        {
          v28 = v27;
          v29 = v26;
          sub_10000C824(v24, v57);
          sub_10000C888(v57, v57[3]);
          v30 = v54;
          sub_100752F24();
          sub_10000C620(v57);
          v31 = *v25;
          if ((*v25)(v30, 1, v16) == 1)
          {
            sub_10000C8CC(v54, &unk_100925380, qword_1007A8E40);
            v26 = v29;
            v27 = v28;
          }

          else
          {
            (*v46)(v21, v54, v16);
            sub_10040831C(&qword_100936A58, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
            v32 = v52;
            sub_100752F24();
            if (v31(v32, 1, v16) == 1)
            {
              sub_10000C8CC(v52, &unk_100925380, qword_1007A8E40);
              v33 = 1;
            }

            else
            {
              v34 = v52;
              sub_1007528F4();
              (*v50)(v34, v16);
              v33 = 0;
            }

            v26 = v29;
            v35 = sub_1007528E4();
            v36 = *(v35 - 8);
            (*(v36 + 56))(v53, v33, 1, v35);
            v27 = v28;
            if (v51)
            {
              v37 = v44;
              sub_100016B4C(v53, v44, v29, v28);
              if ((*(v36 + 48))(v37, 1, v35) == 1)
              {
                sub_10000C8CC(v37, v29, v28);
              }

              else
              {
                sub_1007528D4();
                (*(v36 + 8))(v37, v35);
                v16 = v43;
              }

              v38 = v45;
              v21 = v48;
              sub_1007528A4();

              sub_100749544();
              v39 = *v50;
              (*v50)(v38, v16);
              sub_10000C8CC(v53, v29, v28);
              v39(v21, v16);
              v25 = v47;
              v26 = v29;
            }

            else
            {
              sub_10000C8CC(v53, v29, v28);
              v21 = v48;
              (*v50)(v48, v16);
              v25 = v47;
            }
          }

          v24 += 40;
          --v23;
        }

        while (v23);
      }
    }

    sub_10000C620(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_10000C8CC(v55, &unk_1009253F0, &unk_1007CCB70);
  }

  return sub_10000C620(v59);
}

uint64_t sub_100404A0C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v41 - v11;
  v12 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v12 - 8);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v54 = &v41 - v15;
  v16 = sub_100752914();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  v49 = sub_100741D54();
  v59[3] = v49;
  v59[4] = sub_10040831C(&qword_100936A60, &type metadata accessor for InAppPurchaseLockup, &protocol conformance descriptor for Lockup);
  v59[0] = a1;
  sub_10000C824(v59, v57);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v44 = v9;
    sub_100012160(v55, v58);
    sub_10000C888(v58, v58[3]);
    v22 = sub_10074A234();
    if (v22)
    {
      v42 = v22;
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v42 + 32;
        v25 = (v17 + 48);
        v46 = (v17 + 32);
        v50 = (v17 + 8);
        v26 = &qword_10093FDE0;
        v27 = &unk_1007A8CF0;
        v48 = v21;
        v47 = (v17 + 48);
        v43 = v16;
        do
        {
          v28 = v27;
          v29 = v26;
          sub_10000C824(v24, v57);
          sub_10000C888(v57, v57[3]);
          v30 = v54;
          sub_100752F24();
          sub_10000C620(v57);
          v31 = *v25;
          if ((*v25)(v30, 1, v16) == 1)
          {
            sub_10000C8CC(v54, &unk_100925380, qword_1007A8E40);
            v26 = v29;
            v27 = v28;
          }

          else
          {
            (*v46)(v21, v54, v16);
            sub_10040831C(&qword_100936A68, &type metadata accessor for InAppPurchaseLockup, &protocol conformance descriptor for Lockup);
            v32 = v52;
            sub_100752F24();
            if (v31(v32, 1, v16) == 1)
            {
              sub_10000C8CC(v52, &unk_100925380, qword_1007A8E40);
              v33 = 1;
            }

            else
            {
              v34 = v52;
              sub_1007528F4();
              (*v50)(v34, v16);
              v33 = 0;
            }

            v26 = v29;
            v35 = sub_1007528E4();
            v36 = *(v35 - 8);
            (*(v36 + 56))(v53, v33, 1, v35);
            v27 = v28;
            if (v51)
            {
              v37 = v44;
              sub_100016B4C(v53, v44, v29, v28);
              if ((*(v36 + 48))(v37, 1, v35) == 1)
              {
                sub_10000C8CC(v37, v29, v28);
              }

              else
              {
                sub_1007528D4();
                (*(v36 + 8))(v37, v35);
                v16 = v43;
              }

              v38 = v45;
              v21 = v48;
              sub_1007528A4();

              sub_100749544();
              v39 = *v50;
              (*v50)(v38, v16);
              sub_10000C8CC(v53, v29, v28);
              v39(v21, v16);
              v25 = v47;
              v26 = v29;
            }

            else
            {
              sub_10000C8CC(v53, v29, v28);
              v21 = v48;
              (*v50)(v48, v16);
              v25 = v47;
            }
          }

          v24 += 40;
          --v23;
        }

        while (v23);
      }
    }

    sub_10000C620(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_10000C8CC(v55, &unk_1009253F0, &unk_1007CCB70);
  }

  return sub_10000C620(v59);
}

uint64_t sub_100405148(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v41 - v11;
  v12 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v12 - 8);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v54 = &v41 - v15;
  v16 = sub_100752914();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  v49 = sub_10074C814();
  v59[3] = v49;
  v59[4] = sub_10040831C(&qword_100936A70, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  v59[0] = a1;
  sub_10000C824(v59, v57);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v44 = v9;
    sub_100012160(v55, v58);
    sub_10000C888(v58, v58[3]);
    v22 = sub_10074A234();
    if (v22)
    {
      v42 = v22;
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v42 + 32;
        v25 = (v17 + 48);
        v46 = (v17 + 32);
        v50 = (v17 + 8);
        v26 = &qword_10093FDE0;
        v27 = &unk_1007A8CF0;
        v48 = v21;
        v47 = (v17 + 48);
        v43 = v16;
        do
        {
          v28 = v27;
          v29 = v26;
          sub_10000C824(v24, v57);
          sub_10000C888(v57, v57[3]);
          v30 = v54;
          sub_100752F24();
          sub_10000C620(v57);
          v31 = *v25;
          if ((*v25)(v30, 1, v16) == 1)
          {
            sub_10000C8CC(v54, &unk_100925380, qword_1007A8E40);
            v26 = v29;
            v27 = v28;
          }

          else
          {
            (*v46)(v21, v54, v16);
            sub_10040831C(&unk_100936A78, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
            v32 = v52;
            sub_100752F24();
            if (v31(v32, 1, v16) == 1)
            {
              sub_10000C8CC(v52, &unk_100925380, qword_1007A8E40);
              v33 = 1;
            }

            else
            {
              v34 = v52;
              sub_1007528F4();
              (*v50)(v34, v16);
              v33 = 0;
            }

            v26 = v29;
            v35 = sub_1007528E4();
            v36 = *(v35 - 8);
            (*(v36 + 56))(v53, v33, 1, v35);
            v27 = v28;
            if (v51)
            {
              v37 = v44;
              sub_100016B4C(v53, v44, v29, v28);
              if ((*(v36 + 48))(v37, 1, v35) == 1)
              {
                sub_10000C8CC(v37, v29, v28);
              }

              else
              {
                sub_1007528D4();
                (*(v36 + 8))(v37, v35);
                v16 = v43;
              }

              v38 = v45;
              v21 = v48;
              sub_1007528A4();

              sub_100749544();
              v39 = *v50;
              (*v50)(v38, v16);
              sub_10000C8CC(v53, v29, v28);
              v39(v21, v16);
              v25 = v47;
              v26 = v29;
            }

            else
            {
              sub_10000C8CC(v53, v29, v28);
              v21 = v48;
              (*v50)(v48, v16);
              v25 = v47;
            }
          }

          v24 += 40;
          --v23;
        }

        while (v23);
      }
    }

    sub_10000C620(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_10000C8CC(v55, &unk_1009253F0, &unk_1007CCB70);
  }

  return sub_10000C620(v59);
}

uint64_t sub_100405884(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v41 - v11;
  v12 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v12 - 8);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v54 = &v41 - v15;
  v16 = sub_100752914();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  v49 = sub_100742574();
  v59[3] = v49;
  v59[4] = sub_10040831C(&qword_100923190, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  v59[0] = a1;
  sub_10000C824(v59, v57);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v44 = v9;
    sub_100012160(v55, v58);
    sub_10000C888(v58, v58[3]);
    v22 = sub_10074A234();
    if (v22)
    {
      v42 = v22;
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v42 + 32;
        v25 = (v17 + 48);
        v46 = (v17 + 32);
        v50 = (v17 + 8);
        v26 = &qword_10093FDE0;
        v27 = &unk_1007A8CF0;
        v48 = v21;
        v47 = (v17 + 48);
        v43 = v16;
        do
        {
          v28 = v27;
          v29 = v26;
          sub_10000C824(v24, v57);
          sub_10000C888(v57, v57[3]);
          v30 = v54;
          sub_100752F24();
          sub_10000C620(v57);
          v31 = *v25;
          if ((*v25)(v30, 1, v16) == 1)
          {
            sub_10000C8CC(v54, &unk_100925380, qword_1007A8E40);
            v26 = v29;
            v27 = v28;
          }

          else
          {
            (*v46)(v21, v54, v16);
            sub_10040831C(&unk_100936A88, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
            v32 = v52;
            sub_100752F24();
            if (v31(v32, 1, v16) == 1)
            {
              sub_10000C8CC(v52, &unk_100925380, qword_1007A8E40);
              v33 = 1;
            }

            else
            {
              v34 = v52;
              sub_1007528F4();
              (*v50)(v34, v16);
              v33 = 0;
            }

            v26 = v29;
            v35 = sub_1007528E4();
            v36 = *(v35 - 8);
            (*(v36 + 56))(v53, v33, 1, v35);
            v27 = v28;
            if (v51)
            {
              v37 = v44;
              sub_100016B4C(v53, v44, v29, v28);
              if ((*(v36 + 48))(v37, 1, v35) == 1)
              {
                sub_10000C8CC(v37, v29, v28);
              }

              else
              {
                sub_1007528D4();
                (*(v36 + 8))(v37, v35);
                v16 = v43;
              }

              v38 = v45;
              v21 = v48;
              sub_1007528A4();

              sub_100749544();
              v39 = *v50;
              (*v50)(v38, v16);
              sub_10000C8CC(v53, v29, v28);
              v39(v21, v16);
              v25 = v47;
              v26 = v29;
            }

            else
            {
              sub_10000C8CC(v53, v29, v28);
              v21 = v48;
              (*v50)(v48, v16);
              v25 = v47;
            }
          }

          v24 += 40;
          --v23;
        }

        while (v23);
      }
    }

    sub_10000C620(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_10000C8CC(v55, &unk_1009253F0, &unk_1007CCB70);
  }

  return sub_10000C620(v59);
}

uint64_t sub_100405FC0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100745E64();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100923400, &type metadata accessor for MixedMediaLockup, &protocol conformance descriptor for Lockup);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380, qword_1007A8E40);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&unk_100936A30, &type metadata accessor for MixedMediaLockup, &protocol conformance descriptor for Lockup);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380, qword_1007A8E40);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25, v24);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25, v24);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749564();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25, v24);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25, v24);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0, &unk_1007CCB70);
  }

  return sub_10000C620(v55);
}

uint64_t sub_1004066C0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_1007493C4();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100936A50, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380, qword_1007A8E40);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&qword_100936A58, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380, qword_1007A8E40);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25, v24);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25, v24);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749564();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25, v24);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25, v24);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0, &unk_1007CCB70);
  }

  return sub_10000C620(v55);
}

uint64_t sub_100406DC0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100741D54();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100936A60, &type metadata accessor for InAppPurchaseLockup, &protocol conformance descriptor for Lockup);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380, qword_1007A8E40);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&qword_100936A68, &type metadata accessor for InAppPurchaseLockup, &protocol conformance descriptor for Lockup);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380, qword_1007A8E40);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25, v24);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25, v24);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749564();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25, v24);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25, v24);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0, &unk_1007CCB70);
  }

  return sub_10000C620(v55);
}

uint64_t sub_1004074C0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_10074C814();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100936A70, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380, qword_1007A8E40);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&unk_100936A78, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380, qword_1007A8E40);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25, v24);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25, v24);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749564();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25, v24);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25, v24);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0, &unk_1007CCB70);
  }

  return sub_10000C620(v55);
}

uint64_t sub_100407BC0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100742574();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100923190, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380, qword_1007A8E40);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&unk_100936A88, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380, qword_1007A8E40);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25, v24);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25, v24);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749564();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25, v24);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25, v24);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0, &unk_1007CCB70);
  }

  return sub_10000C620(v55);
}

uint64_t sub_1004082C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10040831C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100408364(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v41 - v11;
  v12 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v12 - 8);
  v52 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v54 = &v41 - v15;
  v16 = sub_100752914();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  v49 = sub_100743EB4();
  v59[3] = v49;
  v59[4] = sub_10040831C(&qword_100933028, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  v59[0] = a1;
  sub_10000C824(v59, v57);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v44 = v9;
    sub_100012160(v55, v58);
    sub_10000C888(v58, v58[3]);
    v22 = sub_10074A234();
    if (v22)
    {
      v42 = v22;
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v42 + 32;
        v25 = (v17 + 48);
        v46 = (v17 + 32);
        v50 = (v17 + 8);
        v26 = &qword_10093FDE0;
        v27 = &unk_1007A8CF0;
        v48 = v21;
        v47 = (v17 + 48);
        v43 = v16;
        do
        {
          v28 = v27;
          v29 = v26;
          sub_10000C824(v24, v57);
          sub_10000C888(v57, v57[3]);
          v30 = v54;
          sub_100752F24();
          sub_10000C620(v57);
          v31 = *v25;
          if ((*v25)(v30, 1, v16) == 1)
          {
            sub_10000C8CC(v54, &unk_100925380, qword_1007A8E40);
            v26 = v29;
            v27 = v28;
          }

          else
          {
            (*v46)(v21, v54, v16);
            sub_10040831C(&unk_100936AB0, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
            v32 = v52;
            sub_100752F24();
            if (v31(v32, 1, v16) == 1)
            {
              sub_10000C8CC(v52, &unk_100925380, qword_1007A8E40);
              v33 = 1;
            }

            else
            {
              v34 = v52;
              sub_1007528F4();
              (*v50)(v34, v16);
              v33 = 0;
            }

            v26 = v29;
            v35 = sub_1007528E4();
            v36 = *(v35 - 8);
            (*(v36 + 56))(v53, v33, 1, v35);
            v27 = v28;
            if (v51)
            {
              v37 = v44;
              sub_100016B4C(v53, v44, v29, v28);
              if ((*(v36 + 48))(v37, 1, v35) == 1)
              {
                sub_10000C8CC(v37, v29, v28);
              }

              else
              {
                sub_1007528D4();
                (*(v36 + 8))(v37, v35);
                v16 = v43;
              }

              v38 = v45;
              v21 = v48;
              sub_1007528A4();

              sub_100749544();
              v39 = *v50;
              (*v50)(v38, v16);
              sub_10000C8CC(v53, v29, v28);
              v39(v21, v16);
              v25 = v47;
              v26 = v29;
            }

            else
            {
              sub_10000C8CC(v53, v29, v28);
              v21 = v48;
              (*v50)(v48, v16);
              v25 = v47;
            }
          }

          v24 += 40;
          --v23;
        }

        while (v23);
      }
    }

    sub_10000C620(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    sub_10000C8CC(v55, &unk_1009253F0, &unk_1007CCB70);
  }

  return sub_10000C620(v59);
}

void sub_100408AA0(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SearchTransparencyView();
  if (sub_1007539C4() == a2 && v7 == a3)
  {
  }

  else
  {
    v9 = sub_100754754();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v18 = a1;
    v12 = sub_10074A074();
    if (v12)
    {
      v13 = v12;
      v14 = sub_100743EA4();
      sub_1001D3738(v14, sub_1000E12F0);
      v16 = v15;

      v17 = sub_100743E94();
      sub_10004DF04(v17, 0, v16);

      [v11 setNeedsLayout];
      sub_1004024C8(v13, v18, v3);
    }
  }
}

uint64_t sub_100408C4C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0, &unk_1007A8CF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_100752914();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_100743EB4();
  v55[3] = v45;
  v55[4] = sub_10040831C(&qword_100933028, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  v55[0] = a1;
  sub_10000C824(v55, v53);

  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_1009253E8, qword_1007A8D40);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v18 = sub_10074A234();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_10093FDE0;
        v23 = &unk_1007A8CF0;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_10000C824(v20, v53);
          sub_10000C888(v53, v53[3]);
          v26 = v50;
          sub_100752F24();
          sub_10000C620(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10000C8CC(v50, &unk_100925380, qword_1007A8E40);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_10040831C(&unk_100936AB0, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
            v28 = v48;
            sub_100752F24();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10000C8CC(v48, &unk_100925380, qword_1007A8E40);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_1007528F4();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_1007528E4();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_100016B4C(v49, v40, v25, v24);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10000C8CC(v33, v25, v24);
              }

              else
              {
                sub_1007528D4();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_1007528A4();

              sub_100749564();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10000C8CC(v49, v25, v24);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10000C8CC(v49, v25, v24);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000C8CC(v51, &unk_1009253F0, &unk_1007CCB70);
  }

  return sub_10000C620(v55);
}

uint64_t type metadata accessor for CappedSizeDynamicTypeButton(uint64_t a1)
{
  result = qword_100936AC8;
  if (!qword_100936AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1004093EC(void *a1)
{
  v3 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_100750534();
  v7 = *(v6 - 8);
  *&result = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[qword_100936AC0];
  *&v1[qword_100936AC0] = a1;
  v22 = v11;
  if (!a1)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (!v11)
  {
    v20 = a1;
    goto LABEL_14;
  }

  v12 = sub_100753094();
  v14 = v13;
  if (v12 != sub_100753094() || v14 != v15)
  {
    v17 = sub_100754754();
    v18 = a1;

    if (v17)
    {

      v19 = v22;

      return result;
    }

LABEL_14:
    sub_100746694();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_10006A144(v5);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      sub_100746684();
      [v1 setNeedsLayout];

      (*(v7 + 8))(v10, v6);
    }

    return result;
  }

  return result;
}

id sub_1004096A0()
{
  v1 = *(v0 + qword_100936AC0);
  if (v1)
  {
    sub_1007466C4();
    v2 = sub_1007466D4();
    v3 = v1;
    v4 = v2();
    v5 = [v4 preferredContentSizeCategory];

    LOBYTE(v4) = sub_100753934();
    if (v4)
    {
      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1007A7210;
      *(v6 + 32) = v2();
      v7 = objc_opt_self();
      *(v6 + 40) = [v7 traitCollectionWithPreferredContentSizeCategory:v3];
      sub_10021C300();
      isa = sub_100753294().super.isa;

      v9 = [v7 traitCollectionWithTraitsFromCollections:isa];

      return v9;
    }
  }

  sub_1007466C4();
  v11 = sub_1007466D4();

  return v11();
}

id sub_100409848(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_100936AC0] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for CappedSizeDynamicTypeButton(0);
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1004098D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CappedSizeDynamicTypeButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100409928(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  sub_100750794();
  if (*(v6 + 1) == 1)
  {
    v12 = sub_100751154();
    v13 = &protocol witness table for Resize;
    v8 = sub_10000D134(v11);
    sub_100409B1C(a1, v8);
  }

  else
  {
    sub_10000C824(v6 + 104, v10);
    v12 = sub_1007511A4();
    v13 = &protocol witness table for Margins;
    sub_10000D134(v11);
    sub_100751194();
  }

  sub_100750754();
  sub_10000C620(v11);
  sub_1007535A4();
  sub_10000C888((v6 + 144), *(v6 + 168));
  sub_100750434();
  v10[3] = sub_1007511A4();
  v10[4] = &protocol witness table for Margins;
  sub_10000D134(v10);
  sub_100751194();
  sub_1007510F4();
  v12 = sub_100751104();
  v13 = &protocol witness table for Center;
  sub_10000D134(v11);
  sub_100751114();
  sub_100750754();
  return sub_10000C620(v11);
}

uint64_t sub_100409B1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v6;
  v48 = a2;
  v45 = sub_100751144();
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v49 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v47 = (&v37 - v12);
  __chkstk_darwin(v13);
  v46 = (&v37 - v14);
  __chkstk_darwin(v15);
  v17 = (&v37 - v16);
  v18 = sub_1007511A4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1007506E4();
  v44 = *(v39 - 8);
  __chkstk_darwin(v39);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007506B4();
  sub_1007506C4();
  sub_100753B14();
  CGRectGetWidth(v54);
  v24 = [a1 preferredContentSizeCategory];
  sub_100753954();

  v40 = v7;
  sub_10000C824(v7 + 104, v51);
  v42 = v21;
  sub_100751194();
  v50[3] = v18;
  v50[4] = &protocol witness table for Margins;
  v41 = v18;
  v25 = sub_10000D134(v50);
  v43 = v19;
  (*(v19 + 16))(v25, v21, v18);
  *v17 = sub_1000B2740;
  v17[1] = 0;
  v26 = *(v9 + 104);
  v27 = v45;
  v26(v17, enum case for Resize.Rule.recalculated(_:), v45);
  v28 = enum case for Resize.Rule.unchanged(_:);
  v29 = v46;
  v26(v46, enum case for Resize.Rule.unchanged(_:), v27);
  v30 = v47;
  v26(v47, v28, v27);
  v26(v49, v28, v27);
  v52 = sub_100751154();
  v53 = &protocol witness table for Resize;
  sub_10000D134(v51);
  sub_100751164();
  v31 = v23;
  v38 = v23;
  sub_1007506C4();
  sub_10000C620(v51);
  v32 = v39;
  v52 = v39;
  v53 = &protocol witness table for DisjointStack;
  v33 = sub_10000D134(v51);
  v34 = v44;
  (*(v44 + 16))(v33, v31, v32);
  v26(v17, v28, v27);
  v35 = *(v40 + 48);
  v29[3] = &type metadata for CGFloat;
  v29[4] = &protocol witness table for CGFloat;
  *v29 = v35;
  v26(v29, enum case for Resize.Rule.replaced(_:), v27);
  v26(v30, v28, v27);
  v26(v49, v28, v27);
  sub_100751164();
  (*(v43 + 8))(v42, v41);
  return (*(v34 + 8))(v38, v32);
}

uint64_t sub_10040A0F4()
{
  v0 = sub_1007506A4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1007507D4();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  sub_100750694();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v6(v3, v5, v0);
  sub_100750664();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v6(v3, v5, v0);
  sub_100750654();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v3);
  sub_1007507C4();
  v6(v3, v5, v0);
  return sub_100750674();
}

uint64_t sub_10040A29C()
{
  v0 = sub_1007506A4();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  (v6)(v4, enum case for DisjointStack.EdgePosition.anchored(_:), v0, v2);
  sub_100750654();
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v6(v4, v5, v0);
  return sub_100750664();
}

uint64_t sub_10040A3C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10040A408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10040A484(void *a1, double a2, double a3)
{
  v6 = sub_1007507B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100409928(a1, 0.0, 0.0, a2, a3);
  sub_100751254();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_10040A5BC(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_1007507B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100409928(a1, a2, a3, a4, a5);
  sub_100751244();
  return (*(v11 + 8))(v13, v10);
}

__n128 sub_10040A6E4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 sub_10040A6F8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10040A70C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10040A760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_10040A7C4(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v74 = a3;
  v72 = a2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074ED34();
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v75 = &v65 - v11;
  v12 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v12 - 8);
  v14 = &v65 - v13;
  v15 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v15 - 8);
  v17 = &v65 - v16;
  v18 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v18 - 8);
  v20 = &v65 - v19;
  v21 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v21 - 8);
  v23 = &v65 - v22;
  v24 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  *&v25 = __chkstk_darwin(v24 - 8).n128_u64[0];
  v27 = &v65 - v26;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView;
  v29 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView];
  v78 = a1;
  if (v29 || (v30 = [v4 traitCollection], v31 = v8, v32 = v4, v33 = sub_100667CFC(v30), v30, v34 = v33, v4 = v32, v8 = v31, sub_100667524(v34), sub_100667530(0), (v29 = *&v4[v28]) != 0))
  {
    v35 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
    v36 = *(*(v35 - 8) + 56);
    v77 = v27;
    v36(v27, 1, 1, v35);
    v70 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView;
    v37 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView];
    v76 = v29;
    v38 = sub_10074EF24();
    if (v38)
    {
    }

    [v37 setHidden:v38 == 0];
    v39 = v76;
    v40 = *&v76[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
    v41 = sub_100742E24();
    (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
    v42 = sub_100745E94();
    (*(*(v42 - 8) + 56))(v20, 1, 1, v42);
    v43 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
    (*(*(v43 - 8) + 56))(v17, 1, 1, v43);
    v44 = sub_10074F8B4();
    (*(*(v44 - 8) + 56))(v14, 1, 1, v44);
    sub_100656038(v78, v40, v77, v74, 1, 0, v23, v20, v14, v17);
    sub_10000C8CC(v14, &unk_100925520, &unk_1007A8120);
    v40[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v40 setNeedsLayout];
    sub_10000C8CC(v17, &unk_100925990, qword_1007BB900);
    sub_10000C8CC(v20, &unk_1009259A0, &unk_1007B0610);
    sub_10000C8CC(v23, &unk_100925530, &unk_1007A8130);
    v45 = v75;
    sub_10074EF44();
    v46 = sub_10074EE24();
    v48 = v47;
    v68 = sub_10074EE84();
    v50 = v49;
    v51 = sub_10074EE44();
    if (v48 && v50)
    {
      v52 = v51;
      v67 = v46;
      v53 = v73;
      v54 = v69;
      (*(v73 + 16))(v69, v45, v8);
      sub_10000C518(&unk_100925780, qword_1007AC630);
      sub_100752764();
      sub_100752D34();
      v66 = v8;
      v55 = v79[0];
      type metadata accessor for CrossLinkPresenter(0);
      swift_allocObject();
      v56 = v76;
      v74 = v4;
      v57 = v56;
      v39 = v76;
      v58 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v54, v67, v48, v68, v50, v52 & 1, v29, &off_10086C378, v55, *(&v55 + 1));
      (*(v53 + 8))(v75, v66);
      sub_10000C8CC(v77, &unk_100925540, &qword_1007A8140);
      v59 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v57[v59] = v58;
      v4 = v74;
    }

    else
    {

      v60 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v39[v60] = 0;

      v61 = sub_1001F6890(0, 0);
      (*(v73 + 8))(v45, v8, v61);
      sub_10000C8CC(v77, &unk_100925540, &qword_1007A8140);
    }

    if (sub_10074EF24())
    {
      if (qword_100921BD0 != -1)
      {
        swift_once();
      }

      v62 = sub_100747064();
      sub_10000D0FC(v62, qword_100982C70);
      sub_100746F34();
      v63 = v70;
      [*&v29[v70] contentMode];
      sub_10074F374();
      v64 = *&v29[v63];
      sub_10074F324();
      sub_100743364();
      [v64 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_10000D198();
        sub_100753E34();
      }

      sub_100743224();

      v80 = 0;
      memset(v79, 0, sizeof(v79));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1007441F4();

      sub_10000C8CC(v79, &unk_1009276E0, &unk_1007A5C70);
    }

    [v4 setNeedsLayout];
  }
}

void sub_10040B110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100747424();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v2[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_lockupView])
  {
    v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_arcadeLockupView];
    if (v18)
    {
      goto LABEL_9;
    }
  }

  sub_100667524(0);
  if (qword_100920F10 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v10, qword_100980A80);
  (*(v11 + 16))(v13, v14, v10);
  if (qword_100921BD8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v6, qword_100982C88);
  (*(v7 + 16))(v9, v15, v6);
  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  v17 = sub_1004AE6A0(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  [v17 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];
  sub_100667530(v17);
  v18 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension16FooterLockupView_arcadeLockupView];
  if (v18)
  {
LABEL_9:
    v19 = v18;
    [v3 setNeedsLayout];
  }
}

void sub_10040B3D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);

    v9 = a1;
    sub_100743344();
  }
}

uint64_t sub_10040B458()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for CappedSizeRoundedTitledButton(uint64_t a1)
{
  result = qword_100936B28;
  if (!qword_100936B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10040B538(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v11 = a1;
  objc_msgSendSuper2(&v16, "sizeThatFits:", a2, a3);
  v13 = v12;
  v14 = *&v11[qword_100936B18 + 24];
  sub_10000C888(&v11[qword_100936B18], v14);
  sub_100536120(v14);
  sub_100750564();

  (*(v8 + 8))(v10, v7);
  return v13;
}

void sub_10040B6A0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

double sub_10040B71C(char *a1)
{
  v1 = *&a1[qword_100936B20];
  if (v1)
  {
    v2 = *&a1[qword_100936B20 + 8];
    v3 = a1;
    v4 = sub_10001B5AC(v1, v2);
    v1(v4);

    return sub_1000164A8(v1, v2);
  }

  return result;
}

id sub_10040B7A0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

double sub_10040B838()
{
  sub_10000C620((v0 + qword_100936B18));
  v1 = *(v0 + qword_100936B20);
  v2 = *(v0 + qword_100936B20 + 8);

  return sub_1000164A8(v1, v2);
}

double sub_10040B87C(uint64_t a1)
{
  sub_10000C620((a1 + qword_100936B18));
  v2 = *(a1 + qword_100936B20);
  v3 = *(a1 + qword_100936B20 + 8);

  return sub_1000164A8(v2, v3);
}

unint64_t sub_10040B8E8()
{
  result = qword_100936B78;
  if (!qword_100936B78)
  {
    sub_10074A294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936B78);
  }

  return result;
}

uint64_t sub_10040B940()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100743FE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745584();
  sub_100745564();
  sub_10074A284();
  sub_1007454F4();

  (*(v5 + 8))(v7, v4);
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_100752D84();
}

id sub_10040BB08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v5 - 8);
  v97 = &v81 - v6;
  v96 = sub_10074C3E4();
  v93 = *(v96 - 8);
  __chkstk_darwin(v96);
  v91 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v92 = &v81 - v9;
  v10 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v10 - 8);
  v90 = &v81 - v11;
  v12 = sub_10000C518(&qword_100923590, &unk_1007A6860);
  __chkstk_darwin(v12 - 8);
  v86 = &v81 - v13;
  v14 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v14 - 8);
  v85 = &v81 - v15;
  v16 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v16 - 8);
  v84 = &v81 - v17;
  v18 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v18 - 8);
  v83 = &v81 - v19;
  v20 = objc_opt_self();
  v88 = [v20 areAnimationsEnabled];
  v89 = v20;
  [v20 setAnimationsEnabled:0];
  v21 = sub_100741EA4();
  v22 = sub_100741E94();
  v98 = a2;
  if (v21)
  {
    v23 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView];
    sub_1007442C4();
    sub_100752764();

    sub_100752D34();
    sub_1006C2A3C(116.0, 116.0, v21, v23, *&v99[0]);

    v24 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel];

    sub_10074EF34();
    v26 = v25;

    if (v26)
    {
      v27 = sub_100753064();
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v24 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel];
  }

  [v24 setText:v27];

  v87 = v21;
  if (v22 && (, v28 = sub_10074EF34(), v30 = v29, , v30))
  {
    v31 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel];
    v100._object = 0x800000010077B8B0;
    v100._countAndFlagsBits = 0xD00000000000001FLL;
    v102._countAndFlagsBits = 0;
    v102._object = 0xE000000000000000;
    sub_1007458B4(v100, v102);
    sub_10000C518(&unk_100927770, &unk_1007BA6E0);
    v32 = v3;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1007A5A00;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_1000DD048();
    *(v33 + 32) = v28;
    *(v33 + 40) = v30;
    v3 = v32;
    sub_1007530B4();

    v34 = sub_100753064();

    [v31 setText:v34];

    v35 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel];
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel] setText:0];
    v35 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel];
    if (!v22)
    {
      goto LABEL_12;
    }
  }

  sub_10074EE64();
  v37 = v36;

  if (v37)
  {
    v38 = sub_100753064();

    goto LABEL_13;
  }

LABEL_12:
  v38 = 0;
LABEL_13:
  [v35 setText:v38];

  v39 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel];
  sub_100741E84();
  if (v40)
  {
    v41 = sub_100753064();
  }

  else
  {
    v41 = 0;
  }

  [v39 setText:v41];

  if (v22 && (, sub_10074EFC4(), v43 = v42, , v43))
  {
    v44 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge];
    v45 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel];
    v46 = sub_100753064();
    [v45 setText:v46];

    [v44 setNeedsLayout];
    [v44 setNeedsDisplay];

    [v44 setHidden:0];
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge] setHidden:1];
  }

  sub_10000C518(&qword_100936B80, &qword_1007BF9B8);
  v47 = (sub_10000C518(&qword_100936B88, &qword_1007BF9C0) - 8);
  v48 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1007A5A00;
  v50 = v49 + v48;
  v51 = (v49 + v48 + v47[14]);
  v52 = enum case for OfferTitleType.standard(_:);
  v53 = sub_100744EA4();
  (*(*(v53 - 8) + 104))(v50, v52, v53);
  v101._countAndFlagsBits = 0xD000000000000020;
  v101._object = 0x800000010077B880;
  v103._countAndFlagsBits = 0;
  v103._object = 0xE000000000000000;
  *v51 = sub_1007458B4(v101, v103);
  v51[1] = v54;
  sub_100414F4C(v49);
  swift_setDeallocating();
  sub_10000C8CC(v50, &qword_100936B88, &qword_1007BF9C0);
  swift_deallocClassInstance();
  if (v22)
  {

    v55 = sub_10074EF04();

    if (v55)
    {
      v56 = enum case for OfferStyle.colored(_:);
      v57 = sub_100742E24();
      v58 = *(v57 - 8);
      v59 = *(v58 + 104);
      v82 = v3;
      v60 = v83;
      v59(v83, v56, v57);
      (*(v58 + 56))(v60, 0, 1, v57);
      v61 = sub_100745E94();
      v62 = v84;
      (*(*(v61 - 8) + 56))(v84, 1, 1, v61);
      v63 = enum case for OfferTint.blue(_:);
      v64 = sub_10074F8B4();
      v65 = *(v64 - 8);
      v66 = v85;
      (*(v65 + 104))(v85, v63, v64);
      (*(v65 + 56))(v66, 0, 1, v64);
      v67 = sub_1007455E4();
      v68 = v86;
      (*(*(v67 - 8) + 56))(v86, 1, 1, v67);
      memset(v99, 0, 32);
      v69 = sub_100749EA4();

      sub_10000C8CC(v99, &unk_100923520, &qword_1007A5A70);
      sub_10000C8CC(v68, &qword_100923590, &unk_1007A6860);
      sub_10000C8CC(v66, &unk_100925520, &unk_1007A8120);
      sub_10000C8CC(v62, &unk_1009259A0, &unk_1007B0610);
      v70 = v60;
      v3 = v82;
      sub_10000C8CC(v70, &unk_100925530, &unk_1007A8130);
    }

    else
    {

      v69 = 0;
    }

    v73 = v98;
    v86 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton];

    v71 = sub_10074EDF4();

    v74 = v3;
    v72 = v69;
  }

  else
  {

    v71 = 0;
    v72 = 0;
    v86 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton];
    v73 = v98;
    v74 = v3;
  }

  v75 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
  v76 = v90;
  (*(*(v75 - 8) + 56))(v90, 1, 1, v75);
  v77 = v93;
  v78 = v96;
  (*(v93 + 104))(v91, enum case for OfferButtonSubtitlePosition.below(_:), v96);
  (*(v77 + 56))(v97, 1, 1, v78);
  sub_1001F750C();
  v79 = v92;
  sub_10074A9C4();
  sub_10015DE40(v72, v71, 0, v76, v79, v73, 0, 0);

  (*(v94 + 8))(v79, v95);
  sub_10000C8CC(v76, &unk_100925540, &qword_1007A8140);
  [v74 setNeedsLayout];

  return [v89 setAnimationsEnabled:v88];
}

double sub_10040C8BC(uint64_t a1, uint64_t a2)
{
  v94 = a2;
  v93 = sub_100748E94();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1007504F4();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10074E3A4();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074EAB4();
  v100 = *(v6 - 8);
  v101 = v6;
  __chkstk_darwin(v6);
  v99 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v98 = &v87 - v9;
  v10 = sub_100743424();
  v103 = *(v10 - 8);
  v104 = v10;
  __chkstk_darwin(v10);
  v102 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100747C14();
  v106 = *(v12 - 8);
  v107 = v12;
  __chkstk_darwin(v12);
  v105 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100747814();
  v109 = *(v14 - 8);
  v110 = v14;
  __chkstk_darwin(v14);
  v108 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10074F704();
  v17 = *(v16 - 8);
  v112 = v16;
  v113 = v17;
  __chkstk_darwin(v16);
  v111 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v19 - 8);
  v21 = &v87 - v20;
  v22 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v87 - v24;
  v26 = sub_10074E984();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v87 - v31;
  swift_getKeyPath();
  v114 = a1;
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v33 = v25;
  v34 = v27;
  (*(v23 + 8))(v33, v22);
  if ((*(v27 + 48))(v21, 1, v26) != 1)
  {
    (*(v27 + 32))(v32, v21, v26);
    (*(v27 + 16))(v29, v32, v26);
    v36 = (*(v27 + 88))(v29, v26);
    v37 = v32;
    if (v36 == enum case for Shelf.ContentType.smallLockup(_:))
    {
      swift_getKeyPath();
      v38 = v111;
      sub_100746914();

      sub_10074F674();
      (*(v113 + 8))(v38, v112);
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v39 = sub_100747064();
      sub_10000D0FC(v39, qword_10097E3A8);
      sub_10007DC04();
      sub_100747084();
      v40 = &unk_100936BA0;
      v41 = &type metadata accessor for SmallLockupLayout;
      v42 = &protocol conformance descriptor for SmallLockupLayout;
LABEL_8:
      sub_10040DAE8(v40, v41, v42);
      sub_100750D34();
      v35 = v43;
      swift_unknownObjectRelease();
LABEL_22:
      (*(v34 + 8))(v37, v26);
      return v35;
    }

    if (v36 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      swift_getKeyPath();
      v44 = v111;
      sub_100746914();

      sub_10074F674();
      (*(v113 + 8))(v44, v112);
      type metadata accessor for MediumLockupCollectionViewCell(0);
      swift_getKeyPath();
      sub_100746914();

      v45 = v115;
      v46 = v108;
      sub_10024BBC0(v108);

      sub_10007DC04();
      sub_100747834();
      sub_10040DAE8(&qword_10092F010, &type metadata accessor for MediumLockupLayout, &protocol conformance descriptor for MediumLockupLayout);
      sub_100750D34();
      v35 = v47;
      swift_unknownObjectRelease();
      (*(v109 + 8))(v46, v110);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      swift_getKeyPath();
      v48 = v111;
      sub_100746914();

      sub_10074F674();
      (*(v113 + 8))(v48, v112);
      if (qword_100920690 != -1)
      {
        swift_once();
      }

      v49 = sub_100746A54();
      sub_10000D0FC(v49, qword_10097E958);
      sub_10007DC04();
      sub_100746A74();
      v40 = &qword_10092F0B8;
      v41 = &type metadata accessor for LargeLockupLayout;
      v42 = &protocol conformance descriptor for LargeLockupLayout;
      goto LABEL_8;
    }

    if (v36 == enum case for Shelf.ContentType.ribbonBar(_:) || v36 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v59 = v105;
      sub_100746884();
      v35 = sub_100559274(v59);
      (*(v106 + 8))(v59, v107);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.videoCard(_:))
    {
      swift_getKeyPath();
      v50 = v111;
      sub_100746914();

      sub_10074F674();
      v52 = v51;
      v54 = v53;
      (*(v113 + 8))(v50, v112);
      if (qword_100921A40 != -1)
      {
        swift_once();
      }

      v55 = sub_10007DC04();
      ObjectType = swift_getObjectType();
      v57 = type metadata accessor for VideoCardView(0);
      sub_1005FA0C8(v52, v54, &qword_1009828D0, v55, v57, ObjectType);
      v35 = v58;
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.brick(_:))
    {
      swift_getKeyPath();
      v61 = v98;
      sub_100746914();

      v62 = v99;
      sub_10074EA74();
      sub_10040DAE8(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      v63 = v101;
      v64 = sub_100754324();
      v65 = *(v100 + 8);
      v65(v62, v63);
      v65(v61, v63);
      if (v64)
      {
        if (qword_100920980 != -1)
        {
          swift_once();
        }

        v66 = qword_10097FB10;
      }

      else
      {
        if (qword_100920988 != -1)
        {
          swift_once();
        }

        v66 = qword_10097FB28;
      }

      v70 = v104;
      v71 = sub_10000D0FC(v104, v66);
      v73 = v102;
      v72 = v103;
      (*(v103 + 16))(v102, v71, v70);
      swift_getKeyPath();
      v74 = v111;
      sub_100746914();

      sub_10074F674();
      (*(v113 + 8))(v74, v112);
      sub_10007DC04();
      sub_100743444();
      sub_10040DAE8(&qword_100926410, &type metadata accessor for BrickLayout, &protocol conformance descriptor for BrickLayout);
      sub_100750D34();
      v35 = v75;
      swift_unknownObjectRelease();
      (*(v72 + 8))(v73, v70);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_30:
      swift_getKeyPath();
      v67 = v111;
      sub_100746914();

      sub_10074F674();
      (*(v113 + 8))(v67, v112);
      v68 = v95;
      sub_10074B2C4();
      sub_10007DC04();
      sub_10074E3C4();
      sub_10040DAE8(&qword_100936B98, &type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout, &protocol conformance descriptor for ChartOrCategoryBrickCollectionViewCellLayout);
      sub_100750D34();
      v35 = v69;
      swift_unknownObjectRelease();
      (*(v96 + 8))(v68, v97);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      type metadata accessor for BaseTodayCardCollectionViewCell(0);
      v76 = sub_1005F4D6C(v114, v94);
      goto LABEL_37;
    }

    if (v36 == enum case for Shelf.ContentType.appTrailerLockup(_:))
    {
      type metadata accessor for AppTrailerLockupCollectionViewCell(0);
    }

    else
    {
      if (v36 != enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        if (v36 == enum case for Shelf.ContentType.smallStoryCard(_:))
        {
          swift_getKeyPath();
          v78 = v111;
          sub_100746914();

          sub_10074F674();
          (*(v113 + 8))(v78, v112);
          swift_getKeyPath();
          sub_100746914();

          v79 = v115;
          v80 = v91;
          sub_10028FD28(v115, v91);
          sub_100748E64();
          v35 = v81;

          (*(v92 + 8))(v80, v93);
          goto LABEL_22;
        }

        if (v36 == enum case for Shelf.ContentType.posterLockup(_:))
        {
          v82 = v105;
          sub_100746884();
          v83 = v88;
          sub_1007479D4();
          v84 = v111;
          sub_100747B84();
          sub_10074F684();
          (*(v113 + 8))(v84, v112);
          sub_1007504C4();
          v35 = v85;
          (*(v89 + 8))(v83, v90);
          (*(v106 + 8))(v82, v107);
          goto LABEL_22;
        }

        if (v36 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          if (v36 != enum case for Shelf.ContentType.tagBrick(_:))
          {
            v86 = *(v27 + 8);
            v86(v32, v26);
            v86(v29, v26);
            return 0.0;
          }

          goto LABEL_30;
        }

        v76 = sub_10003B5AC(v114, 1);
LABEL_37:
        v35 = v76;
        goto LABEL_22;
      }

      type metadata accessor for ScreenshotsLockupCollectionViewCell(0);
    }

    v77 = v105;
    sub_100746884();
    v35 = sub_10050EA98(v77);
    (*(v106 + 8))(v77, v107);
    goto LABEL_22;
  }

  sub_10040DA74(v21);
  return 0.0;
}

uint64_t sub_10040DA74(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10040DAE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10040DB30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_presenter] = a1;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_objectGraph] = a2;
  v11.receiver = v3;
  v11.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  sub_10040E770(&qword_100936BF8, v8, type metadata accessor for PersonalizationTransparencyPageViewController, &unk_1007BFB98);
  v9 = v7;
  sub_10074E094();

  return v9;
}

void sub_10040DD00(uint64_t a1)
{
  v2 = sub_10040E010(a1);
  v3 = [v1 childViewControllers];
  sub_100032B70();
  v4 = sub_1007532A4();

  if (v4 >> 62)
  {
    if (sub_100754664())
    {
      goto LABEL_3;
    }

LABEL_11:

    v8 = 0;
    goto LABEL_12;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_100754574();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  type metadata accessor for GenericAccountPageViewController();
  v7 = swift_dynamicCastClass();
  v8 = v7;
  if (v7)
  {
    [v7 willMoveToParentViewController:0];
    v9 = [v8 view];
    if (!v9)
    {
LABEL_28:
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 removeFromSuperview];

    [v8 removeFromParentViewController];
  }

  else
  {
  }

LABEL_12:
  v11 = v2;
  [v1 addChildViewController:v11];
  v12 = [v11 view];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v14 = [v1 view];
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame:{v17, v19, v21, v23}];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = v24;
  v26 = [v11 view];

  if (!v26)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v25 addSubview:v26];

  [v11 didMoveToParentViewController:v1];
  v27 = [v1 navigationItem];
  sub_1007476A4();
  if (v28)
  {
    v29 = sub_100753064();
  }

  else
  {
    v29 = 0;
  }

  [v27 setTitle:v29];
}

id sub_10040E010(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_objectGraph);
  v6 = sub_100741264();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_10074C2E4();
  swift_allocObject();

  v7 = sub_10074C244();
  v8 = sub_10040E770(&qword_100938E80, 255, &type metadata accessor for GenericAccountPagePresenter, &protocol conformance descriptor for BasePresenter);

  v9 = sub_1006B94B0(v5, v7, v8, _swiftEmptyArrayStorage, 0xD000000000000012, 0x800000010077B920);

  v10 = type metadata accessor for GenericAccountPageViewController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController] = 0;
  *&v11[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_presenter] = v7;
  *&v11[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_objectGraph] = v9;
  v13.receiver = v11;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "initWithStyle:", 2);
}

void sub_10040E1E4()
{
  v1 = v0;
  v2 = sub_100750FA4();
  v3 = [v0 childViewControllers];
  sub_100032B70();
  sub_1007532A4();

  LOBYTE(v3) = sub_1007532D4();

  if (v3)
  {
    v4 = OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController;
    v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController];
    sub_10074B974();

    v6 = *&v0[v4];
    *&v0[v4] = 0;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 bounds];

      sub_10074B964();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_100750F94();
    v9 = objc_allocWithZone(sub_100750FC4());
    v10 = sub_100750FB4();
    v11 = OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController;
    v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController];
    sub_10074B974();

    v13 = *&v1[v11];
    *&v1[v11] = v10;
    v14 = v10;

    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];

      sub_10074B964();
      return;
    }
  }

  __break(1u);
}

id sub_10040E424()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController];
  sub_10074B974();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_10074B964();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10040E4EC(uint64_t a1)
{
  v2 = v1;
  sub_100751094();
  sub_10040E770(&qword_100936BF0, 255, &type metadata accessor for PersonalizationTransparencyPagePresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = sub_100751054();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension45PersonalizationTransparencyPageViewController_overlayViewController];
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

uint64_t sub_10040E770(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_10040E7BC()
{
  result = qword_100936C00;
  if (!qword_100936C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C00);
  }

  return result;
}

unint64_t sub_10040E814()
{
  result = qword_100936C08;
  if (!qword_100936C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C08);
  }

  return result;
}

uint64_t sub_10040E86C()
{
  v0 = sub_10000C518(&qword_100936C98, &qword_1007CF020);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100741164();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100740E14();
  sub_100039C50(v5, qword_100980258);
  sub_10000D0FC(v5, qword_100980258);
  sub_100741144();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100740E04();
}

uint64_t sub_10040E9FC@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = sub_10000C518(&qword_100936C90, &unk_1007C0000);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = sub_10000C518(&qword_100936C98, &qword_1007CF020);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  v7 = sub_100741164();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = sub_100753054();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  sub_100753044();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100753034(v15);
  sub_100740CD4();
  sub_100753024(v14);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100753034(v16);
  sub_100741154();
  sub_100753044();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_100753034(v17);
  sub_100740CD4();
  sub_100753024(v14);

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_100753034(v18);
  sub_100741154();
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = sub_100740D14();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_100740D24();
}

uint64_t sub_10040ECE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1004100BC;

  return sub_10040FD5C(a1, v4);
}

uint64_t sub_10040ED90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000A27FC;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_10040EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10040EF04;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10040EF04(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_10040F008()
{
  result = qword_100936C10;
  if (!qword_100936C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C10);
  }

  return result;
}

unint64_t sub_10040F060()
{
  result = qword_100936C18;
  if (!qword_100936C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C18);
  }

  return result;
}

unint64_t sub_10040F0B8()
{
  result = qword_100936C20;
  if (!qword_100936C20)
  {
    sub_10000C724(&qword_100936C28, qword_1007BFC48);
    sub_10040F060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C20);
  }

  return result;
}

uint64_t sub_10040F13C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10040F3B8();
  *v5 = v2;
  v5[1] = sub_1000A4868;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10040F1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000A27FC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10040F2B0()
{
  result = qword_100936C30;
  if (!qword_100936C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C30);
  }

  return result;
}

unint64_t sub_10040F308()
{
  result = qword_100936C38;
  if (!qword_100936C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C38);
  }

  return result;
}

unint64_t sub_10040F360()
{
  result = qword_100936C40;
  if (!qword_100936C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C40);
  }

  return result;
}

unint64_t sub_10040F3B8()
{
  result = qword_100936C48;
  if (!qword_100936C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C48);
  }

  return result;
}

unint64_t sub_10040F41C()
{
  result = qword_100936C50;
  if (!qword_100936C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C50);
  }

  return result;
}

uint64_t sub_10040F470(uint64_t a1)
{
  v1 = sub_10000C518(&qword_100936CA8, &qword_1007C0010);
  __chkstk_darwin(v1);
  sub_1000C06C0();
  sub_100740DE4();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  sub_100740DD4(v3);
  swift_getKeyPath();
  sub_10000C518(&qword_100936CB0, &qword_1007C0040);
  sub_100740DC4();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_100740DD4(v4);
  return sub_100740DF4();
}

unint64_t sub_10040F590()
{
  result = qword_100936C58;
  if (!qword_100936C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C58);
  }

  return result;
}

unint64_t sub_10040F5E8()
{
  result = qword_100936C60;
  if (!qword_100936C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C60);
  }

  return result;
}

unint64_t sub_10040F640()
{
  result = qword_100936C68;
  if (!qword_100936C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C68);
  }

  return result;
}

double sub_10040F6A0@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_10040F6AC(uint64_t a1)
{
  sub_10040FCDC();
  v2 = sub_100740DA4();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10040F718@<X0>(uint64_t a1@<X8>)
{
  if (qword_100920BB8 != -1)
  {
    swift_once();
  }

  v3 = sub_100740E14();
  v4 = sub_10000D0FC(v3, qword_100980258);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

unint64_t sub_10040F7C4()
{
  result = qword_100936C70;
  if (!qword_100936C70)
  {
    sub_10000C724(&qword_100936C78, &qword_1007BFEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C70);
  }

  return result;
}

uint64_t sub_10040F828(uint64_t a1)
{
  v2 = sub_1000C06C0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10040F878()
{
  result = qword_100936C80;
  if (!qword_100936C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936C80);
  }

  return result;
}

uint64_t sub_10040F8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000A4868;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10040F994(uint64_t a1)
{
  v2 = sub_10040F640();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10040F9E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10040FA28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10040FA90(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v13 = sub_100741164();
  __chkstk_darwin(v13 - 8);
  sub_10000C518(&qword_100936C88, &qword_1007CF000);
  sub_100741144();
  v14 = sub_100740D04();

  sub_100741144();
  v15 = sub_100740D04();

  sub_100741144();
  v16 = sub_100740D04();

  sub_100740CE4();
  sub_100740CE4();
  if (a8)
  {
    v17 = a1;
  }

  else
  {
    sub_100754534(33);

    v17 = a1;
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    sub_1007531B4(v19);
  }

  sub_100740CE4();

  *a9 = v17;
  a9[1] = a2;
  a9[2] = v14;
  a9[3] = v15;
  a9[4] = v16;
}

unint64_t sub_10040FCDC()
{
  result = qword_100936CA0;
  if (!qword_100936CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936CA0);
  }

  return result;
}

uint64_t sub_10040FD30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100740CF4();
  *a1 = result;
  return result;
}

uint64_t sub_10040FD5C(uint64_t a1, __n128 a2)
{
  *(v2 + 64) = a1;
  sub_100741164();
  *(v2 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10040FDEC, 0, 0);
}

uint64_t sub_10040FDEC()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_10001E71C(0, v2, 0);
    sub_10000C518(&qword_100936C88, &qword_1007CF000);
    v3 = (v1 + 40);
    do
    {
      v14 = v2;
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_100741144();
      v6 = sub_100740D04();

      sub_100741144();
      v7 = sub_100740D04();

      sub_100741144();
      v8 = sub_100740D04();
      v0[2] = 0;
      v0[3] = 0xE000000000000000;

      sub_100740CE4();
      v0[4] = 0xD000000000000016;
      v0[5] = 0x800000010077BA00;
      sub_100740CE4();
      sub_100754534(33);

      v16._countAndFlagsBits = v4;
      v16._object = v5;
      sub_1007531B4(v16);
      v0[6] = 0xD00000000000001FLL;
      v0[7] = 0x800000010077BA20;
      sub_100740CE4();

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_10001E71C((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[5 * v10];
      v11[4] = v4;
      v11[5] = v5;
      v11[6] = v6;
      v11[7] = v7;
      v11[8] = v8;
      v3 += 2;
      v2 = v14 - 1;
    }

    while (v14 != 1);
  }

  v12 = v0[1];

  return v12(_swiftEmptyArrayStorage);
}

id sub_1004100C8()
{
  result = [objc_allocWithZone(UISegmentedControl) init];
  qword_100936CB8 = result;
  return result;
}

double sub_100410108(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 40;
    do
    {
      v7 = qword_100920BC0;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = qword_100936CB8;
      v9 = sub_100753064();
      [v8 addSegmentWithTitle:v9];

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  if (qword_100920BC0 != -1)
  {
    swift_once();
  }

  v10 = qword_100936CB8;
  [qword_100936CB8 sizeThatFits:{a2, a3}];
  v12 = v11;
  [v10 removeAllSegments];
  return v12;
}

unint64_t sub_10041027C()
{
  result = qword_100936CC0;
  if (!qword_100936CC0)
  {
    sub_100748A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936CC0);
  }

  return result;
}

uint64_t sub_1004102D4(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v3 = sub_100752624();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752404();
  __chkstk_darwin(v7 - 8);
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v8 = sub_100752E44();
  sub_10000D0FC(v8, qword_100983318);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523F4();
  v14._object = 0x800000010077BA60;
  v14._countAndFlagsBits = 0xD000000000000018;
  sub_1007523E4(v14);
  v9 = sub_100744EE4();
  v13[3] = v9;
  v10 = sub_10000D134(v13);
  (*(*(v9 - 8) + 16))(v10, a1, v9);
  sub_1007523C4();
  sub_1000277BC(v13);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1007523E4(v15);
  sub_100752414();
  sub_100752CE4();

  (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
  sub_100752DB4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004105BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_100752404();
  __chkstk_darwin(v5 - 8);
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v6 = sub_100752E44();
  sub_10000D0FC(v6, qword_100983318);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523F4();
  v11._object = 0x800000010077BA40;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1007523E4(v11);
  swift_getErrorValue();
  v10[3] = v9;
  v7 = sub_10000D134(v10);
  (*(*(v9 - 8) + 16))(v7);
  sub_1007523C4();
  sub_1000277BC(v10);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1007523E4(v12);
  sub_100752414();
  sub_100752D04();

  swift_getObjectType();
  sub_100742514();
  return sub_100752DA4();
}

uint64_t sub_100410820(uint64_t a1, uint64_t a2)
{
  v2 = sub_10074ED34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v9 = sub_100752DE4();
  sub_100748A04();
  sub_100748A14();
  sub_10074F4A4();
  sub_100752764();
  sub_100752D34();
  sub_10000C518(&unk_100925780, qword_1007AC630);
  sub_100752D34();
  v16 = v17;
  sub_10074F484();
  (*(v3 + 16))(v5, v8, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v16;
  (*(v3 + 32))(v12 + v10, v5, v2);
  *(v12 + v11) = v9;
  v13 = sub_1000A7FA0();
  swift_retain_n();
  swift_unknownObjectRetain();
  v14 = sub_100753774();
  v18 = v13;
  v19 = &protocol witness table for OS_dispatch_queue;
  *&v17 = v14;
  sub_100752D64();
  swift_unknownObjectRelease();

  (*(v3 + 8))(v8, v2);
  sub_10000C620(&v17);
  return v9;
}

uint64_t sub_100410AF8()
{
  v1 = sub_10074ED34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100410BD0(uint64_t a1)
{
  v3 = *(sub_10074ED34() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_1004105BC(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_100410C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_10074E984();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  swift_getKeyPath();
  v23 = a1;
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_10040DA74(v5);
    v17 = sub_100747564();
    return (*(*(v17 - 8) + 56))(v24, 1, 1, v17);
  }

  v19 = v24;
  (*(v11 + 32))(v16, v5, v10);
  (*(v11 + 16))(v13, v16, v10);
  v20 = (*(v11 + 88))(v13, v10);
  if (v20 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    type metadata accessor for SmallLockupCollectionViewCell(0);
    sub_1001EAEC4(v19);
    return (*(v11 + 8))(v16, v10);
  }

  if (v20 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    type metadata accessor for MediumLockupCollectionViewCell(0);
    sub_1003F2CAC(v19);
    return (*(v11 + 8))(v16, v10);
  }

  v21 = *(v11 + 8);
  v21(v16, v10);
  v22 = sub_100747564();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  return (v21)(v13, v10);
}

uint64_t Badge.enrich(objectGraph:)(uint64_t a1)
{
  v57 = a1;
  v1 = sub_100744794();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v4 - 8);
  v6 = v51 - v5;
  v7 = sub_100741264();
  v58 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074F7D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100936CC8, &qword_1007C0200);
  v14 = sub_100752DE4();
  sub_10074E854();
  if ((*(v11 + 88))(v13, v10) == enum case for BadgeType.friendsPlaying(_:))
  {
    v15 = sub_10074E894();
    v16 = sub_10074DF54();
    if (*(v15 + 16))
    {
      v18 = sub_1003861D0(v16, v17);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_10000C5B4(*(v15 + 56) + 32 * v18, &v59);

      sub_100016C60(0, &qword_10092BE20, NSNumber_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v21 = v63;
      v22 = [v63 integerValue];

      v23 = sub_10074E894();
      v24 = sub_10074E484();
      if (*(v23 + 16))
      {
        v53 = v22;
        v54 = sub_1003861D0(v24, v25);
        v27 = v26;

        if (v27)
        {
          sub_10000C5B4(*(v23 + 56) + 32 * v54, &v59);

          if (swift_dynamicCast())
          {
            v28 = v63;
            v29 = [v63 integerValue];

            v30 = sub_10074E894();
            v31 = sub_100749004();
            if (*(v30 + 16))
            {
              v54 = v29;
              v33 = sub_1003861D0(v31, v32);
              v35 = v34;

              if (v35)
              {
                sub_10000C5B4(*(v30 + 56) + 32 * v33, &v59);

                if (swift_dynamicCast())
                {
                  v36 = v63;
                  v37 = v64;
                  v59 = 0;
                  v60 = 0xE000000000000000;
                  sub_100754534(91);
                  v65._countAndFlagsBits = 0xD000000000000059;
                  v65._object = 0x800000010077BA80;
                  sub_1007531B4(v65);
                  v66._countAndFlagsBits = v36;
                  v66._object = v37;
                  sub_1007531B4(v66);

                  sub_100741254();

                  v38 = v58;
                  if ((*(v58 + 48))(v6, 1, v7) != 1)
                  {
                    (*(v38 + 32))(v9, v6, v7);
                    sub_1007442C4();
                    v51[1] = sub_100752764();
                    sub_100752D34();
                    v52 = v59;
                    sub_10000C518(&qword_100936CD0, &qword_1007C0208);
                    v40 = (sub_10000C518(&qword_100936CD8, &qword_1007C0210) - 8);
                    v41 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
                    v42 = swift_allocObject();
                    *(v42 + 16) = xmmword_1007A5A00;
                    v43 = v42 + v41;
                    v44 = v40[14];
                    v59 = 0xD000000000000015;
                    v60 = 0x800000010077BAE0;
                    sub_1007544E4();
                    (*(v38 + 16))(v43 + v44, v9, v7);
                    sub_10041466C(v42);
                    swift_setDeallocating();
                    sub_10000C8CC(v43, &qword_100936CD8, &qword_1007C0210);
                    swift_deallocClassInstance();
                    sub_100744784();
                    sub_1007477A4();
                    sub_100752D34();
                    sub_100415A94(&qword_100936CE0, &type metadata accessor for ShelvesIntent, &protocol conformance descriptor for ShelvesIntent);
                    v45 = v56;
                    sub_100747794();
                    v46 = swift_allocObject();
                    swift_weakInit();
                    v47 = swift_allocObject();
                    v47[2] = v46;
                    v47[3] = 0xD000000000000015;
                    v47[4] = 0x800000010077BAE0;
                    v47[5] = v14;
                    v48 = v52;
                    v47[6] = v53;
                    v47[7] = v48;
                    v47[8] = v54;
                    v49 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);

                    v50 = sub_100753774();
                    v61 = v49;
                    v62 = &protocol witness table for OS_dispatch_queue;
                    v59 = v50;
                    sub_100752D64();

                    (*(v55 + 8))(v3, v45);
                    (*(v58 + 8))(v9, v7);
                    sub_10000C620(&v59);
                    return v14;
                  }

                  sub_10000C8CC(v6, &unk_100923970, &qword_1007A6B90);
                }

                goto LABEL_16;
              }

              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_16:
          v59 = 0;
          sub_100752DB4();
          return v14;
        }

LABEL_15:

        goto LABEL_16;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v59 = 0;
  sub_100752DB4();
  (*(v11 + 8))(v13, v10);
  return v14;
}

double sub_1004118DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a8;
  v49 = a7;
  v12 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v12 - 8);
  v53 = v43 - v13;
  v14 = sub_100742BD4();
  __chkstk_darwin(v14 - 8);
  v52 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100746594();
  __chkstk_darwin(v16 - 8);
  v51 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&qword_100936E60, &qword_1007C0300);
  __chkstk_darwin(v18 - 8);
  v54 = v43 - v19;
  v20 = sub_10074F7D4();
  __chkstk_darwin(v20 - 8);
  v21 = sub_10074D6B4();
  __chkstk_darwin(v21 - 8);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v25 = sub_100743044();
    v55 = a3;
    v56 = a4;

    sub_1007544E4();
    if (*(v25 + 16) && (sub_100412148(v57), (v26 & 1) != 0))
    {

      sub_100016994(v57);

      v27 = sub_10074EB24();

      v28 = sub_10070CF40(v27);

      if (v28)
      {
        v29 = v28 >> 62;
        if (v28 >> 62)
        {
LABEL_34:
          v30 = sub_100754664();
          if (v30 >= 1)
          {
LABEL_7:
            v44 = v30;
            if (v30 < a6)
            {
              a6 = v30;
            }

            sub_10074D6A4();
            v46 = type metadata accessor for AvatarShowcaseView(0);
            v31 = objc_allocWithZone(v46);
            v45 = sub_1005B832C(a6, v23);
            v57[0] = _swiftEmptyArrayStorage;
            v47 = a5;
            if (v29)
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = sub_100754664();
            }

            else
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v32 = 0;
            a5 = v28 & 0xC000000000000001;
            v48 = _swiftEmptyArrayStorage;
            while (a6 != v32)
            {
              if (a5)
              {
                sub_100754574();
                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_32;
                }
              }

              else
              {
                if (v32 >= *(v29 + 16))
                {
                  goto LABEL_33;
                }

                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }
              }

              v23 = sub_100745CE4();

              ++v32;
              if (v23)
              {
                sub_100753284();
                if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100753304();
                }

                sub_100753344();
                v48 = v57[0];
                v32 = v33;
              }
            }

            v34 = v45;
            sub_1005B869C(v48, v49);

            v35 = v50;
            if (v44 <= v50)
            {
              v36._object = 0x800000010077BB30;
              v36._countAndFlagsBits = 0xD00000000000001DLL;
              v35 = v44;
            }

            else
            {
              v36._countAndFlagsBits = 0xD000000000000021;
              v36._object = 0x800000010077BB50;
            }

            v58._countAndFlagsBits = 0;
            v58._object = 0xE000000000000000;
            v50 = sub_10074B194(v36, v35, v58);
            v49 = v37;
            sub_10074E834();
            sub_10074E854();
            sub_10074E844();
            v48 = sub_10074E8A4();
            v44 = v38;
            v43[3] = sub_10074E7A4();
            v43[2] = v39;
            sub_10000C518(&qword_10092C1F8, &qword_1007B0C50);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1007A5A00;
            *(inited + 32) = sub_100741BF4();
            *(inited + 72) = v46;
            *(inited + 40) = v41;
            *(inited + 48) = v34;
            v46 = v34;
            v45 = sub_100414AE8(inited);
            swift_setDeallocating();
            sub_10000C8CC(inited + 32, &qword_10092C200, &qword_1007B0C58);
            sub_10074E7C4();
            sub_10074E864();
            v43[1] = sub_10074E7F4();
            v43[0] = v42;
            sub_10074E804();
            sub_10074E794();
            sub_10074E874();
            sub_10074E7E4();
            sub_10074E8B4();
            swift_allocObject();
            v57[0] = sub_10074E824();

            sub_100752DB4();

            goto LABEL_13;
          }
        }

        else
        {
          v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30 >= 1)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {

      sub_100016994(v57);
    }

    v57[0] = 0;
    sub_100752DB4();
LABEL_13:
  }

  return result;
}

double sub_100412034(uint64_t a1)
{
  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A5A00;
  swift_getErrorValue();
  *(v1 + 56) = v4;
  v2 = sub_10000D134((v1 + 32));
  (*(*(v4 - 8) + 16))(v2);
  sub_100754814();

  return result;
}

unint64_t sub_100412104(uint64_t a1)
{
  v2 = sub_100754824();

  return sub_100412C64(a1, v2);
}

unint64_t sub_100412148(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007544B4(*(v2 + 40));

  return sub_100412CD0(a1, v4);
}

unint64_t sub_10041218C(uint64_t a1)
{
  v1 = a1;
  sub_100754834();
  if ((v1 - 4) >= 3u)
  {
    sub_100754844(2uLL);
    v2 = v1;
  }

  else
  {
    v2 = qword_1007C0310[(v1 - 4)];
  }

  sub_100754844(v2);
  v3 = sub_100754884();

  return sub_100412D98(v1, v3);
}

unint64_t sub_100412228(double *a1)
{
  sub_100754834();
  sub_10050B5A8(v4);
  v2 = sub_100754884();

  return sub_100412E50(a1, v2);
}

unint64_t sub_100412298(uint64_t a1)
{
  sub_100753094();
  sub_100754834();
  sub_100753174();
  v2 = sub_100754884();

  return sub_100413328(a1, v2);
}

unint64_t sub_100412328(uint64_t a1)
{
  sub_10074ED34();
  sub_100415A94(&qword_100936CF0, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for AdamId, &qword_100929298, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
}

unint64_t sub_1004123FC(uint64_t a1)
{
  sub_1007417F4();
  sub_100415A94(&qword_100947C40, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for IndexPath, &qword_100927EA0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
}

unint64_t sub_1004124D0(uint64_t a1)
{
  sub_100745CA4();
  sub_100415A94(&qword_100926258, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for EditorialPageKey, &qword_100926260, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
}

unint64_t sub_1004125A4(Swift::UInt a1, Swift::UInt a2, double a3)
{
  sub_100754834();
  sub_100754844(a1);
  sub_100754844(a2);
  v6 = 0.0;
  if (a3 != 0.0)
  {
    v6 = a3;
  }

  sub_100754864(*&v6);
  v7 = sub_100754884();

  return sub_100413128(a1, a2, v7, a3);
}

unint64_t sub_10041264C(double a1, double a2)
{
  sub_100754834();
  sub_1004B5A14(a1, a2);
  v4 = sub_100754884();

  return sub_1004131B4(v4, a1, a2);
}

unint64_t sub_1004126C0(uint64_t a1, __n128 a2)
{
  sub_10074F3D4();
  sub_100415A94(&qword_100936D20, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v3 = sub_100752FA4();
  return sub_10041322C(a1, v3, v4);
}

unint64_t sub_10041276C(uint64_t a1)
{
  sub_10074F7D4();
  sub_100415A94(&qword_100936108, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for BadgeType, &qword_100936D18, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
}

unint64_t sub_100412840(uint64_t a1)
{
  sub_100742F74();
  sub_100415A94(&qword_1009362C0, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for PageFacets.Facet, &qword_100936E08, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
}

unint64_t sub_100412914(uint64_t a1, __n128 a2)
{
  sub_100744EA4();
  sub_100415A94(&qword_100936D30, &type metadata accessor for OfferTitleType, &protocol conformance descriptor for OfferTitleType);
  v3 = sub_100752FA4();
  return sub_100412F88(a1, v3, &type metadata accessor for OfferTitleType, &qword_100936D38, &type metadata accessor for OfferTitleType, &protocol conformance descriptor for OfferTitleType);
}

unint64_t sub_1004129E8(uint64_t a1, __n128 a2)
{
  sub_100748674();
  sub_100415A94(&qword_100936D60, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &protocol conformance descriptor for SearchAdOpportunity.LifecycleEventType);
  v3 = sub_100752FA4();
  return sub_100412F88(a1, v3, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &qword_100936D68, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &protocol conformance descriptor for SearchAdOpportunity.LifecycleEventType);
}

unint64_t sub_100412ABC(uint64_t a1)
{
  sub_100752C34();
  sub_100415A94(&qword_100936DC8, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for MetricsFieldExclusionRequest, &qword_100936DD0, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
}

unint64_t sub_100412B90(uint64_t a1)
{
  sub_100752C84();
  sub_100415A94(&qword_10092B4D0, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
  v2 = sub_100752FA4();
  return sub_100412F88(a1, v2, &type metadata accessor for MetricsFieldInclusionRequest, &qword_10092B4D8, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
}

unint64_t sub_100412C64(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100412CD0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100066198(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1007544C4();
      sub_100016994(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100412D98(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      switch(v7)
      {
        case 6:
          if (a1 == 6)
          {
            return result;
          }

          break;
        case 5:
          if (a1 == 5)
          {
            return result;
          }

          break;
        case 4:
          if (a1 == 4)
          {
            return result;
          }

          break;
        default:
          if (a1 - 7 <= 0xFFFFFFFC && v7 == a1)
          {
            return result;
          }

          break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100412E50(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for Accessory(0) - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_100415A30(*(v2 + 48) + v12 * v10, v8);
      v13 = sub_10050D4C8(v8, a1);
      sub_10007A554(v8);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100412F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_100415A94(v24, v25, v26);
      v20 = sub_100753014();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_100413128(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = -1 << *(v4 + 32);
  result = a3 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *(v9 + 16);
      v12 = *v9 == a1 && *(v9 + 8) == a2;
      if (v10 != a4)
      {
        v12 = 0;
      }

      if (v12)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1004131B4(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10041322C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_10074F3D4();
    sub_100415A94(&unk_100928A50, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    do
    {
      if (sub_100753014())
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100413328(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_100753094();
      v8 = v7;
      if (v6 == sub_100753094() && v8 == v9)
      {
        break;
      }

      v11 = sub_100754754();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}