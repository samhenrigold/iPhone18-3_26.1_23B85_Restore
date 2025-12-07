id sub_10030B644()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:0.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_10030B690()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10030B6DC(uint64_t a1, uint64_t a2, int a3, void *a4, char *a5)
{
  LODWORD(v7) = a3;
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v41 = a4;
    v14 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel;
    v15 = *&a5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
    if (v15)
    {
      goto LABEL_3;
    }

    v39 = a1;
    sub_1007626BC();
    v23 = sub_10076269C();
    v24 = v23;
    v25 = *&a5[v14];
    *&a5[v14] = v23;
    if (v23)
    {
      v40 = v7;
      if (!v25)
      {
        v29 = v23;
        v30 = v24;
        if (v24)
        {
LABEL_22:
          v31 = v30;
          v32 = [a5 contentView];
          [v32 addSubview:v31];

          sub_100301614();
          goto LABEL_23;
        }

LABEL_19:

LABEL_23:
        v7 = v25;
        goto LABEL_24;
      }

      v38 = v11;
      v26 = v23;
      v7 = v25;
      v37 = v26;
      v27 = sub_100770EEC();

      if (v27)
      {

        v11 = v38;
LABEL_24:

        v24 = *&a5[v14];
        LOBYTE(v7) = v40;
        goto LABEL_25;
      }

      v11 = v38;
    }

    else
    {
      if (!v25)
      {
LABEL_25:
        if (!v24 || (memset(v43, 0, sizeof(v43)), memset(v42, 0, sizeof(v42)), v33 = v24, sub_10076F95C(), sub_10000CFBC(v42, &unk_1009434C0, &qword_100783F60), sub_10000CFBC(v43, &unk_1009434C0, &qword_100783F60), sub_100770B9C(), v33, (*(v11 + 8))(v13, v10), (v34 = *&a5[v14]) == 0) || ([v34 setHidden:v7 & 1], (v15 = *&a5[v14]) == 0))
        {
LABEL_28:
          [a5 setNeedsLayout];
          goto LABEL_29;
        }

LABEL_3:
        v16 = v15;
        v17 = sub_10076FF6C();
        [v16 setText:v17];

        v18 = *&a5[v14];
        if (v18)
        {
          v19 = a5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer];
          v20 = v18;
          v21 = [v41 traitCollection];
          if ((a5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] & 1) != 0 || (v19 & 1) != 0 && (sub_1007706FC() & 1) == 0)
          {

            v22 = 1;
          }

          else
          {
            v28 = sub_10077070C();

            if (v28)
            {
              v22 = 2;
            }

            else
            {
              v22 = 0;
            }
          }

          [v20 setTextAlignment:v22];
        }

        goto LABEL_28;
      }

      v40 = v7;
      v7 = v25;
    }

    [v7 removeFromSuperview];
    v30 = *&a5[v14];
    if (v30)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_29:
  v35 = a5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible];
  a5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] = v7 & 1;
  sub_10030244C(v35);
}

void sub_10030BA80(__n128 a1)
{
  v2 = v1;
  v3 = sub_100760B4C();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076D1AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10076D9AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  __chkstk_darwin(v13 - 8);
  v46 = &v45 - v14;
  v15 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_itemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v2 + v15, 1, 1, v16);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance) = 0;
  v17 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v18 = [objc_allocWithZone(UIView) init];
  v19 = [objc_opt_self() systemBackgroundColor];
  [v18 setBackgroundColor:v19];

  *(v2 + v17) = v18;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView) = 0;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel;
  sub_1007626BC();
  *(v2 + v20) = sub_10076269C();
  v21 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerLabelPresenter);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel;
  *(v2 + v23) = sub_10076269C();
  v24 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel;
  *(v2 + v24) = sub_10076269C();
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v45 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView;
  v25 = sub_10076C43C();
  (*(*(v25 - 8) + 56))(v46, 1, 1, v25);
  *v8 = UIFontTextStyleFootnote;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v51 = v5;
  v52 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(v50);
  (*(v6 + 16))(v26, v8, v5);
  v27 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  (*(v6 + 8))(v8, v5);
  (*(v48 + 104))(v47, enum case for WordmarkView.Alignment.center(_:), v49);
  v51 = v9;
  v52 = &protocol witness table for StaticDimension;
  v28 = sub_10000DB7C(v50);
  (*(v10 + 16))(v28, v12, v9);
  v29 = objc_allocWithZone(sub_100760B6C());
  v30 = sub_100760B3C();
  (*(v10 + 8))(v12, v9);
  *(v2 + v45) = v30;
  v31 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton;
  v32 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v2 + v31) = sub_1001E89B8(0);
  v33 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *(v2 + v33) = sub_10076269C();
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerView) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight) = 0;
  v34 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer;
  *(v2 + v34) = [objc_allocWithZone(UIView) init];
  v35 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurEffect;
  *(v2 + v35) = [objc_opt_self() effectWithStyle:7];
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView) = 0;
  v36 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize);
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView;
  sub_10075FD2C();
  *(v2 + v37) = sub_10075FB3C();
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer) = 0;
  v38 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleText);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_theme;
  v41 = enum case for ProductPageTheme.infer(_:);
  v42 = sub_100762A7C();
  (*(*(v42 - 8) + 104))(v2 + v40, v41, v42);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible) = 0;
  sub_10076486C();
  v43 = v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_networkObservation;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0;
  v44 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerTapHandler);
  *v44 = 0;
  v44[1] = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) = 1;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount) = 0;
  sub_10077156C();
  __break(1u);
}

double sub_10030C210(void *a1, void *a2, double a3)
{
  v6 = sub_10077164C();
  v96 = *(v6 - 8);
  __chkstk_darwin(v6);
  v95 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64));
  v9 = *v8;
  v10 = a3 - v8[1] - v8[3];
  v91 = v8[2];
  v92 = v9;
  v11 = a3 - v9 - v91;
  v12 = [a1 traitCollection];
  v13 = sub_1007706FC();

  sub_100016E2C((a2 + 30), v106, &unk_10094DA00, &qword_100783FA0);
  if (v107)
  {
    sub_10000CF78(v106, v107);
    sub_10076D2BC();
    v15 = v14;
    sub_10000CD74(v106);
  }

  else
  {
    sub_10000CFBC(v106, &unk_10094DA00, &qword_100783FA0);
    v15 = 0.0;
  }

  sub_100016E2C((a2 + 30), v106, &unk_10094DA00, &qword_100783FA0);
  v16 = v107;
  sub_10000CFBC(v106, &unk_10094DA00, &qword_100783FA0);
  v97 = a2;
  v93 = v6;
  if (v16)
  {
    v17 = (v8 + *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48));
    v18 = v17[3];
    sub_10000CF78(v17, v18);
    v19 = v95;
    sub_1000FF02C(v18);
    sub_10076D40C();
    v21 = v20;
    (*(v96 + 8))(v19, v6);
    if (v13)
    {
LABEL_6:
      v22 = v8;
      v23 = v10 - v15 - v21;
      goto LABEL_9;
    }
  }

  else
  {
    v21 = 0.0;
    if (v13)
    {
      goto LABEL_6;
    }
  }

  v22 = v8;
  v23 = v10;
LABEL_9:
  v94 = v23;
  v24 = v97;
  sub_10000CF78(v97 + 5, v97[8]);
  sub_10076D2AC();
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v104 = a1;
  sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10075FDCC();
  *&v104 = v106[0];
  v89 = v26;
  v87 = v28;
  sub_10076D42C();
  v86 = v30;
  sub_10000CF78(v24 + 5, v24[8]);
  sub_10076D6EC();
  v85 = v31;
  v32 = v24[13];
  v84[0] = (v24 + 10);
  sub_10000CF78(v24 + 10, v32);
  sub_10076D2AC();
  v34 = v33;
  v36 = v35;
  v37 = *(v29 + 36);
  v38 = v29;
  *&v104 = a1;
  v39 = v22;
  v84[1] = v37;
  sub_10075FDCC();
  *&v104 = v106[0];
  sub_10076D42C();
  v40 = v11;
  v42 = v34 - v36 + v41;
  v43 = (v24 + 15);
  sub_10000CF78(v24 + 15, v24[18]);
  v90 = v40;
  sub_10076D2AC();
  v45 = v44;
  v47 = v46;
  v88 = v38;
  *&v104 = a1;
  sub_10075FDCC();
  *&v104 = v106[0];
  sub_10076D42C();
  v49 = v45 - v47 + v48;
  if (v49 >= v42)
  {
    sub_10000A570(v43, &v104);
    v43 = v84[0];
  }

  else
  {
    sub_10000A570(v84[0], &v104);
  }

  sub_10000A570(v43, &v102);
  v101[0] = a1;
  sub_10075FDCC();
  v50 = v106[0];
  v101[0] = a1;
  sub_10075FDCC();
  v51 = v106[0];
  if (v49 >= v42)
  {
    v52 = v106[0];
  }

  else
  {
    v52 = v50;
  }

  v101[3] = &type metadata for CGFloat;
  v101[4] = &protocol witness table for CGFloat;
  v101[0] = v52;
  if (v49 >= v42)
  {
    v51 = v50;
  }

  v99 = &type metadata for CGFloat;
  v100 = &protocol witness table for CGFloat;
  *&v98 = v51;
  sub_100012498(&v104, v106);
  sub_10000A570(v101, v108);
  sub_100012498(&v102, &v109);
  sub_100012498(&v98, &v110);
  sub_10000CD74(v101);
  sub_10000CF78(v106, v107);
  v53 = v94;
  v54 = v90;
  sub_10076D2AC();
  v56 = v55;
  v58 = v57;
  sub_10000CF78(v108, v108[3]);
  sub_10076D42C();
  v60 = v59;
  v61 = v97;
  sub_100016E2C((v97 + 20), &v102, &qword_10094BB30, qword_100796E40);
  v62 = v93;
  if (v103)
  {
    sub_100012498(&v102, &v104);
    sub_10000CF78(&v104, v105);
    sub_10076D2AC();
    v64 = v63;
    v66 = v65;
    v67 = v88;
    v101[0] = a1;
    sub_10075FDCC();
    v101[0] = v102;
    v53 = v94;
    sub_10076D42C();
    v69 = v64 - v66 + v68;
    sub_10000CD74(&v104);
    v70 = v96;
  }

  else
  {
    sub_10000CFBC(&v102, &qword_10094BB30, qword_100796E40);
    v69 = 0.0;
    v70 = v96;
    v67 = v88;
  }

  v71 = v69 + v56 - v58 + v60 + v89 - v87 + v86 + v85 + v22[15];
  v72 = (v22 + *(v67 + 52));
  v73 = v72[3];
  sub_10000CF78(v72, v73);
  v74 = v95;
  sub_1000FF02C(v73);
  sub_10076D40C();
  v76 = v75;
  v77 = *(v70 + 8);
  v77(v74, v62);
  v78 = v71 + v76 + sub_1003089E8(a1, v61, v53, v54);
  v79 = *(v39 + 7);
  sub_10000CF78(v39 + 4, v79);
  sub_1000FF02C(v79);
  sub_10076D40C();
  v81 = v80;
  v77(v74, v62);
  v82 = v91 + v92 + v78 + v81;
  sub_10000CFBC(v106, &unk_1009522A0, &qword_1007A6570);
  return v82;
}

id sub_10030CA7C()
{
  v1 = sub_10076F08C();
  __chkstk_darwin(v1);
  v2 = sub_10076F0EC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel);
  result = [v7 isHidden];
  if (result)
  {
    if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber) & 1) == 0)
    {
      sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      v9 = sub_10077068C();
      sub_10076F0DC();
      v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      *(v11 + 24) = v10;
      aBlock[4] = sub_10030D6DC;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_100890F80;
      _Block_copy(aBlock);
      v14[1] = _swiftEmptyArrayStorage;
      sub_10030D5FC(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v12 = v7;
      v13 = v10;
      sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
      sub_1000852B8();
      sub_1007712CC();
      sub_10076F12C();
      swift_allocObject();
      sub_10076F10C();

      sub_10077065C();

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

void sub_10030CD58(char a1, void *a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  v53 = a2;
  v11 = sub_10075EBAC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = sub_10076B96C();
  v19 = (*(*(v18 - 8) + 48))(a5, 1, v18);
  v54 = v11;
  v55 = v17;
  if (v19 == 1 || !*&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine])
  {
    (*(v12 + 104))(v17, enum case for LegacyAppState.unknown(_:), v11);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = v54;
    v17 = v55;
    sub_10075ED1C();
    swift_unknownObjectRelease();
  }

  v20 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton];
  [*&v20[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView] setContentMode:1];
  if (a4)
  {
    v21 = v20;
  }

  else
  {
    v20 = 0;
  }

  v22 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v22 && v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
  {
    goto LABEL_16;
  }

  (*(v12 + 16))(v14, v17, v11);
  v22 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v23 = [v22 text];
  if (v23)
  {
    v24 = v23;
    sub_10076FF9C();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_10075EB9C();
  (*(v12 + 8))(v14, v11);
  if (v27)
  {
    if (v26)
    {

LABEL_16:
      v28 = v22;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v22 = 0;
LABEL_19:
  sub_10000A5D4(&unk_100952248, &unk_10079B320);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100783C60;
  v30 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView];
  *(v29 + 32) = v30;
  *(v29 + 40) = v20;
  *(v29 + 48) = v22;
  v31 = v30;
  v32 = v31;
  if (a3)
  {
    v33 = a1 & 1;
    if (a1)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = 1.0;
    }

    [v31 setAlpha:v34];
    [v32 setHidden:a1 & 1];

    v35 = *(v29 + 40);
    [v35 setAlpha:v34];
    [v35 setHidden:v33];

    v36 = *(v29 + 48);
    [v36 setAlpha:v34];
    [v36 setHidden:v33];

    [v6 setNeedsLayout];
LABEL_31:

    (*(v12 + 8))(v55, v54);
    return;
  }

  v37 = 0.0;
  if (a1)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  [v31 setAlpha:v38];
  [v32 setHidden:0];

  v39 = *(v29 + 40);
  [v39 setAlpha:v38];
  [v39 setHidden:0];

  v40 = *(v29 + 48);
  [v40 setAlpha:v38];
  [v40 setHidden:0];

  v41 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (!v42)
  {
    v52 = a1 & 1;
    if ((a1 & 1) == 0)
    {
      v37 = 1.0;
    }

    v44 = *&v53;
    *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v43;
    v53 = objc_opt_self();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v37;
    *(v46 + 24) = v29;
    *(v46 + 32) = v45;
    v60 = sub_10030D41C;
    v61 = v46;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_10009AEDC;
    v59 = &unk_100890E40;
    v47 = _Block_copy(&aBlock);

    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v52;
    *(v49 + 32) = v29;
    v60 = sub_10030D468;
    v61 = v49;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_1000513F0;
    v59 = &unk_100890E90;
    v50 = _Block_copy(&aBlock);

    [v53 animateWithDuration:4 delay:v47 options:v50 animations:v44 completion:0.0];
    _Block_release(v50);
    _Block_release(v47);
    goto LABEL_31;
  }

  __break(1u);
}

uint64_t sub_10030D3A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10030D3DC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10030D428()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10030D484()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10030D4CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030D534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030D59C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10030D5FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10030D64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009522C0, &qword_10079B348);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030D704()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v5 = v4(ObjectType, v2);
    [v5 removeFromSuperview];
    swift_unknownObjectRelease();
  }

  if (swift_weakLoadStrong())
  {
    v6 = v1[1];
    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind);
    v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind + 8);
    v9 = swift_unknownObjectRetain();
    sub_1006BD2F4(v9, v6, v7, v8);

    swift_unknownObjectRelease();
  }

  v10 = v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v10 = 0;
  *(v10 + 8) = 1;
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();

  return swift_weakAssign();
}

uint64_t sub_10030D844()
{
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay];
  swift_unknownObjectRetain();
  sub_1005B9F80();
  [v0 setNeedsLayout];
  swift_unknownObjectRelease();
  if (swift_weakLoadStrong())
  {
    v2 = *(v1 + 1);
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind];
    v4 = v0[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind + 8];
    v5 = swift_unknownObjectRetain();
    sub_1006BD2F4(v5, v2, v3, v4);

    swift_unknownObjectRelease();
  }

  v6 = &v0[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind];
  *v6 = 0;
  v6[8] = 1;
  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectRelease();

  return swift_weakAssign();
}

char *sub_10030D954(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView;
  v46[0] = sub_1002091B8;
  v46[1] = 0;
  v46[2] = sub_1007333BC;
  v46[3] = 0;
  v46[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v46[5] = 0;
  v46[6] = sub_1002091B8;
  v46[7] = 0;
  v46[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v46[9] = 0;
  v46[10] = sub_100342B64;
  v46[11] = 0;
  v47 = 0x4000000000000000uLL;
  v48 = 0;
  v49 = 0x4018000000000000;
  v50 = 0;
  v51 = 1;
  v12 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v4[v11] = sub_1001ED0D8(v46, &v47);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey] = 0;
  v13 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView;
  v14 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *&v4[v13] = sub_1000E4B54(&off_100882C28);
  v15 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer;
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v5[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode] = 0;
  v16 = &v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock];
  *v16 = 0;
  v16[1] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] = 7;
  v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_originalSizeCategory] = 7;
  v17 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
  v18 = sub_10076C38C();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isTransitioning] = 0;
  v19 = &v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay];
  *v20 = 0;
  v20[1] = 0;
  swift_weakInit();
  v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isExpanded] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType] = 0;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView;
  v23 = *&v21[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
  v24 = v21;
  v25 = v23;
  [v25 _setContinuousCornerRadius:20.0];
  v26 = [v25 layer];
  [v26 setMaskedCorners:12];

  [*&v25[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView] _setCornerRadius:1 continuous:12 maskedCorners:20.0];
  v27 = *&v24[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType];
  if (v27)
  {
    v28 = *&v21[v22];
    v29 = *&v28[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType];
    *&v28[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType] = v27;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    v32 = v24[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory];
    v31 = *&v21[v22];
    if (v32 == 6 && (v33 = [v24 traitCollection], v34 = sub_10077071C(), v33, (v34 & 1) == 0))
    {
      v35 = &kCAGradientLayerRadial;
    }

    else
    {
      v35 = &kCAGradientLayerAxial;
    }

    v36 = *v35;
    v29 = *&v31[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType];
    *&v31[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType] = v36;
    v30 = v36;
  }

  sub_1000E50CC();
  [v24 addSubview:*&v21[v22]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100783DD0;
  *(v37 + 32) = sub_10076E3EC();
  *(v37 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100783DD0;
  *(v38 + 32) = sub_10076E88C();
  *(v38 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v39 = [v24 traitCollection];
  LOBYTE(v38) = sub_10077070C();

  v40 = *&v21[v22];
  v41 = 0.13962634;
  if (v38)
  {
    v41 = -0.13962634;
  }

  v42 = *(v40 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle);
  *(v40 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle) = v41;
  if (v41 != v42)
  {
    sub_1000E53E0();
  }

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100783DD0;
  *(v43 + 32) = sub_10076E3FC();
  *(v43 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v24;
}

void sub_10030DF18()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "_continuousCornerRadius");
  v5 = v4;
  [v3 _setContinuousCornerRadius:?];
  v6 = [v3 layer];
  [v6 setMaskedCorners:12];

  [*&v3[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView] _setCornerRadius:1 continuous:12 maskedCorners:v5];
  v7 = &v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay];
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay])
  {
    v8 = *(v7 + 1);
    v9 = swift_getObjectType();
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v11 = v10(v9, v8);
    swift_unknownObjectRelease();
    v20.receiver = v1;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "_continuousCornerRadius");
    [v11 _setContinuousCornerRadius:?];

    if (*v7)
    {
      v12 = *(v7 + 1);
      v13 = swift_getObjectType();
      v14 = *(v12 + 16);
      swift_unknownObjectRetain();
      v15 = v14(v13, v12);
      swift_unknownObjectRelease();
      v16 = [v15 layer];

      if (v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] == 6)
      {
        v17 = [v1 traitCollection];
        v18 = sub_10077071C();

        if (v18)
        {
          v19 = 12;
        }

        else
        {
          v19 = 15;
        }
      }

      else
      {
        v19 = 12;
      }

      [v16 setMaskedCorners:v19];
    }
  }
}

id sub_10030E194(id result)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode;
  v3 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode];
  v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode] = result;
  if (v3 != result)
  {
    v4 = result != 1;
    if (result == 4)
    {
      v4 = 0;
    }

    v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
    v5[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_includeTopGradientFade] = v4;
    if (result == 1 || result == 4)
    {
      [*&v5[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView] removeFromSuperview];
    }

    else
    {
      [v5 insertSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView] aboveSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView]];
    }

    [v5 setHidden:v1[v2] == 4];

    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_10030E29C(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_originalSizeCategory) = result;
  if (result != 7)
  {
    *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer) + OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_originalSizeCategory) = result;
    v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView);
    *(v2 + qword_10094D6B0) = result;
    *(*(v2 + qword_10094D6B8) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = result;
    *(*(v2 + qword_10094D6C0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = result;
    *(*(v2 + qword_10094D6D0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = result;
  }

  return result;
}

void sub_10030E334()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer);
  v2 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isTransitioning;
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isTransitioning);
  v4 = OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning;
  v1[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] = v3 & 1;
  [v1 setHidden:(v1[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v3 ^ 1u)];
  v1[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isLayoutRequired] = (v1[v4] & 1) == 0;
  [v1 setNeedsLayout];
  *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView) + qword_10094D6F0) = *(v0 + v2);
  sub_1001EE26C();
}

id sub_10030E4AC(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v170 = a4;
  v9 = a2;
  ObjectType = swift_getObjectType();
  v159 = sub_100766EBC();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v167 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C7EC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v169 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v171 = &v139 - v15;
  __chkstk_darwin(v16);
  v163 = &v139 - v17;
  v18 = sub_10000A5D4(&qword_10094D760, &qword_1007947F0);
  __chkstk_darwin(v18 - 8);
  v164 = &v139 - v19;
  v20 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = &v139 - v22;
  v162 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory;
  v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] = a2;
  v24 = *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer];
  v24[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] = a2;
  v25 = a2;
  if (v9 == 4)
  {
    v26 = v24[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
  }

  else
  {
    v26 = 0;
  }

  [v24 setHidden:{v26 & 1, v21}];
  v27 = *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView];
  v27[qword_10094D6A8] = v25;
  sub_1001EDB98();
  v28 = sub_10076C38C();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v23, a3, v28);
  (*(v29 + 56))(v23, 0, 1, v28);
  v30 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_10003BD64(v23, &v5[v30]);
  swift_endAccess();
  v31 = a1;
  v32 = sub_10076C6FC();
  if (v32)
  {
    v33 = a1;
    v34 = v170;
    sub_10030FB2C(v32, v33, v25, a3, v170);

    v35 = a3;
    LODWORD(v36) = v25;
    goto LABEL_73;
  }

  v168 = v25;
  v160 = v27;
  v150 = a3;
  sub_10076C7FC();
  v37 = sub_100761BCC();

  v156 = v37;
  v152 = v11;
  v151 = v12;
  if (v37)
  {
    v38 = sub_1002091B8;
    if (v168 == 4)
    {
      v38 = sub_1000082CC;
    }

    v146 = v38;
    v147 = sub_1007333BC;
    v39 = sub_1002091B8;
    if (v168 == 4)
    {
      v39 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    v148 = v39;
  }

  else if (v168 == 4)
  {
    v146 = sub_1000082CC;
    v147 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v148 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v148 = sub_1002091B8;
    v147 = sub_1007333BC;
    v146 = sub_1002091B8;
  }

  v40 = sub_10076C82C();
  v155 = v41;
  v145 = sub_10076C81C();
  v161 = v42;
  v142 = sub_10076C6EC();
  v153 = v43;
  v44 = v164;
  sub_10076C75C();
  v45 = sub_10076637C();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = sub_10076C73C();
  v157 = v47;
  sub_10076C80C();
  sub_10076C77C();
  v48 = sub_10076C83C();
  v149 = v31;
  v144 = v46;
  if (!v48)
  {
    goto LABEL_22;
  }

  sub_100766D7C();
  if (!swift_dynamicCastClass())
  {
    sub_10076A0CC();
    if (swift_dynamicCastClass())
    {
      sub_10076A0AC();
      goto LABEL_20;
    }

LABEL_22:
    v143 = 0;
    v154 = 0;
    goto LABEL_23;
  }

  sub_100766D6C();
LABEL_20:
  v143 = sub_10076BB6C();
  v154 = v49;

LABEL_23:
  v50 = v168;
  v51 = v160;
  v160[qword_10094D6D8] = v156 & 1;
  v52 = *&v51[qword_10094D6C0];
  *(v52 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v53 = *&v51[qword_10094D6B8];
  sub_1001E44C4(v40, v155);
  v54 = sub_100766EAC();
  v55 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v56 = *&v53[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v50 != 4 || (v54 & 1) != 0)
  {
    v57 = [v56 text];
    if (v57)
    {
      v58 = v57;
      sub_10076FF9C();
    }

    v59 = v160;
    v60 = sub_10077002C();
    v61 = v60 & 1;

    if (v61 == [*&v53[v55] isHidden] || (v53[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v53[v55] setHidden:v61];
    }

    else
    {
      if ((v60 & 1) == 0)
      {
        [*&v53[v55] setAlpha:0.0];
        v62 = objc_opt_self();
        [v62 inheritedAnimationDuration];
        v64 = v63;
        v65 = swift_allocObject();
        *(v65 + 16) = v53;
        v176 = sub_100138CF0;
        v177 = v65;
        aBlock = _NSConcreteStackBlock;
        v173 = 1107296256;
        v141 = v60;
        v174 = sub_10009AEDC;
        v175 = &unk_1008911E8;
        v140 = _Block_copy(&aBlock);
        v66 = v53;

        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        v176 = sub_100138CFC;
        v177 = v67;
        v59 = v160;
        aBlock = _NSConcreteStackBlock;
        v173 = 1107296256;
        v174 = sub_1000513F0;
        v175 = &unk_100891238;
        v68 = _Block_copy(&aBlock);
        v69 = v66;
        LOBYTE(v60) = v141;

        v70 = v62;
        v71 = v140;
        [v70 animateWithDuration:0 delay:v140 options:v68 animations:v64 completion:0.0];
        _Block_release(v68);
        _Block_release(v71);
      }

      [*&v53[v55] setHidden:v60 & 1];
      v53[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v53 setNeedsLayout];
    }
  }

  else
  {
    if (([v56 isHidden] & 1) != 0 || (v53[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v53[v55] setHidden:1];
    }

    else
    {
      [*&v53[v55] setHidden:1];
      v53[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v53 setNeedsLayout];
    }

    v59 = v160;
  }

  v72 = &v59[qword_10094D6E0];
  *v72 = v146;
  v72[1] = 0;
  v72[2] = v147;
  v72[3] = 0;
  v72[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v72[5] = 0;
  v72[6] = v148;
  v72[7] = 0;
  v72[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v72[9] = 0;
  v72[10] = sub_100342B64;
  v72[11] = 0;

  sub_1001EDE3C();
  v74 = v157;
  v75 = v52;
  if (v161)
  {
    if (v156)
    {
      if (v168 != 4)
      {
        sub_1001EF628(v164, v73);
        v76 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
        [*(v52 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setAdjustsFontSizeToFitWidth:1];
        [*(v52 + v76) setMinimumScaleFactor:0.75];
        v77 = objc_allocWithZone(NSAttributedString);
        v78 = sub_10076FF6C();
        type metadata accessor for Key(0);
        sub_10031296C(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
        isa = sub_10076FE3C().super.isa;

        v80 = [v77 initWithString:v78 attributes:isa];

        v75 = v52;
        v81 = *(v52 + v76);
        v59 = v160;
        [v81 setAttributedText:v80];

        goto LABEL_53;
      }
    }

    else if (v168 != 4)
    {
      sub_1001EFB1C();
      goto LABEL_45;
    }

    sub_1001EFAF8();
LABEL_45:
    LODWORD(v148) = v168 != 4;
    v82 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
    v83 = *(v52 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    v84 = objc_allocWithZone(NSAttributedString);
    v85 = v83;
    v86 = sub_10076FF6C();
    type metadata accessor for Key(0);
    sub_10031296C(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
    v87 = sub_10076FE3C().super.isa;
    v75 = v52;

    v88 = [v84 initWithString:v86 attributes:v87];

    [v85 setAttributedText:v88];
    [*(v52 + v82) setAdjustsFontSizeToFitWidth:0];
    [*(v52 + v82) setMinimumScaleFactor:0.0];
    [*(v52 + v82) setAttributedText:0];
    if (v148 & 1 | ((v156 & 1) == 0) || !v154)
    {
      v59 = v160;
      v74 = v157;
      if (v153 && v160[qword_10094D6B0] == 4)
      {
        if (v168 == 4)
        {
          sub_1001E45BC(v145, v161, v142, v153);
        }

        else
        {
          sub_1001E45BC(v142, v153, v145, v161);
        }
      }

      else
      {
        sub_1001E44C4(v145, v161);
      }
    }

    else
    {
      sub_1001E44C4(v143, v154);
      v59 = v160;
      v74 = v157;
    }
  }

LABEL_53:
  v89 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v90 = *(v75 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v91 = [v90 text];
  if (v91 || (v91 = [*(v75 + v89) attributedText]) != 0)
  {

    v92 = 0;
  }

  else
  {
    v92 = 1;
  }

  v93 = v168;
  [v90 setHidden:v92];

  [v59 setNeedsLayout];
  v94 = *&v59[qword_10094D6C8];
  [v94 setImage:0];
  [v94 setHidden:1];
  if (v93 != 4 && (sub_100766E8C() & 1) == 0 && v74)
  {
    v99 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v99 = v144 & 0xFFFFFFFFFFFFLL;
    }

    v98 = v99 == 0;
    v95 = *&v59[qword_10094D6D0];
    v96 = &v95[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v97 = *&v95[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    goto LABEL_64;
  }

  v95 = *&v59[qword_10094D6D0];
  v96 = &v95[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  v97 = *&v95[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v74)
  {
    v98 = 1;
LABEL_64:
    v100 = v97;
    v74 = sub_10076FF6C();
    goto LABEL_66;
  }

  v100 = v97;
  v98 = 1;
LABEL_66:
  [v100 setText:v74];

  if (v98 == [*v96 isHidden] || (v95[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v96 setHidden:v98];
  }

  else
  {
    if (!v98)
    {
      [*v96 setAlpha:0.0];
      v101 = objc_opt_self();
      [v101 inheritedAnimationDuration];
      v103 = v102;
      v104 = swift_allocObject();
      *(v104 + 16) = v95;
      v176 = sub_100138AA8;
      v177 = v104;
      aBlock = _NSConcreteStackBlock;
      v173 = 1107296256;
      v174 = sub_10009AEDC;
      v175 = &unk_100891148;
      v105 = _Block_copy(&aBlock);
      v106 = v95;

      v107 = swift_allocObject();
      *(v107 + 16) = v106;
      v176 = sub_100138AC8;
      v177 = v107;
      v59 = v160;
      aBlock = _NSConcreteStackBlock;
      v173 = 1107296256;
      v174 = sub_1000513F0;
      v175 = &unk_100891198;
      v108 = _Block_copy(&aBlock);
      v109 = v106;

      [v101 animateWithDuration:0 delay:v105 options:v108 animations:v103 completion:0.0];
      _Block_release(v108);
      _Block_release(v105);
    }

    [*v96 setHidden:v98];
    v95[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v95 setNeedsLayout];
  }

  v34 = v170;
  v11 = v152;
  v110 = v163;
  sub_1001EE35C(v163, 1);
  [v59 setNeedsLayout];

  (*(v158 + 8))(v167, v159);
  v12 = v151;
  (*(v151 + 8))(v110, v11);
  sub_10000CFBC(v164, &qword_10094D760, &qword_1007947F0);
  [v5 setNeedsLayout];
  v35 = v150;
  LODWORD(v36) = v168;
  v31 = v149;
LABEL_73:
  sub_1005D2AD4(v31, v35, v36, v34);
  v111 = v169;
  if (*&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay])
  {
    v112 = v31;
    v113 = v12;
    v114 = v36;
    v36 = v11;
    v115 = *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay + 8];
    v116 = swift_getObjectType();
    v117 = *(v115 + 16);
    swift_unknownObjectRetain();
    v118 = v117(v116, v115);
    swift_unknownObjectRelease();
    v119 = [v118 layer];

    if (v5[v162] == 6)
    {
      v120 = v5;
      v121 = [v5 traitCollection];
      v122 = sub_10077071C();

      if (v122)
      {
        v123 = 12;
      }

      else
      {
        v123 = 15;
      }
    }

    else
    {
      v120 = v5;
      v123 = 12;
    }

    [v119 setMaskedCorners:v123];

    v11 = v36;
    LOBYTE(v36) = v114;
    v12 = v113;
    v5 = v120;
    v31 = v112;
    v111 = v169;
  }

  v165 = v5;
  sub_10076C80C();
  (*(v12 + 104))(v111, enum case for TodayCard.Style.white(_:), v11);
  sub_10031296C(&qword_100944B98, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  sub_10077018C();
  v124 = v111;
  sub_10077018C();
  if (aBlock == v178 && v173 == v179)
  {
    v125 = v31;
    v126 = 1;
  }

  else
  {
    v125 = v31;
    if (sub_10077167C())
    {
      v126 = 1;
    }

    else
    {
      v126 = 2;
    }
  }

  v127 = *(v12 + 8);
  v127(v124, v11);
  v127(v171, v11);

  v128 = v165;
  [v165 setOverrideUserInterfaceStyle:v126];
  v129 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v130 = swift_allocObject();
  swift_weakInit();
  v131 = swift_allocObject();
  *(v131 + 16) = v129;
  *(v131 + 24) = v130;
  *(v131 + 32) = v125;
  *(v131 + 40) = v36;
  *(v131 + 48) = ObjectType;
  v132 = &v128[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock];
  v133 = *&v128[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock];
  v134 = *&v128[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock + 8];
  *v132 = sub_1003128A0;
  v132[1] = v131;

  sub_1000167E0(v133, v134);
  v135 = *v132;
  if (*v132)
  {
    v136 = v132[1];

    (v135)(v137);

    sub_1000167E0(v135, v136);
  }

  else
  {
  }

  return [v128 setNeedsLayout];
}

void sub_10030FB2C(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  v10 = a3;
  v11 = sub_100766EBC();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10076C7EC();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v68 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v56 - v16;
  if (v10 == 4)
  {
    v18 = 5;
  }

  else
  {
    v18 = a3;
  }

  v19 = [v6 traitCollection];
  sub_1005DE768(v18, a4, v19);
  sub_1005B1CD8(v18);
  v64 = sub_10076BFCC();

  v20 = [v6 traitCollection];
  sub_1005DE768(a3, a4, v20);
  sub_1005B1CD8(a3);
  v21 = sub_10076BFCC();

  v66 = v6;
  v22 = *&v6[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView];
  v23 = &v22[qword_10094D6A0];
  v24 = *&v22[qword_10094D6A0];
  v25 = *&v22[qword_10094D6A0 + 32];
  v26 = v22[qword_10094D6A0 + 40];
  v62 = v21;
  sub_100764ADC();
  *v23 = v24;
  *(v23 + 1) = v27;
  *(v23 + 2) = v28;
  *(v23 + 3) = 0x402C000000000000;
  *(v23 + 4) = v25;
  v23[40] = v26;
  [v22 setNeedsLayout];
  v29 = qword_10094D6C8;
  v30 = [*&v22[qword_10094D6C8] image];
  v67 = sub_10076C73C();
  v32 = v31;
  v57 = v17;
  sub_10076C80C();
  v65 = a2;
  sub_10076C77C();
  v33 = qword_10094D6B8;
  [*(*&v22[qword_10094D6B8] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setText:0];
  v34 = qword_10094D6C0;
  [*(*&v22[qword_10094D6C0] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setText:0];
  v35 = *&v22[v29];
  v56 = v30;
  [v35 setImage:v30];
  v36 = qword_10094D6D0;
  v37 = *(*&v22[qword_10094D6D0] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v38 = v37;
  if (v32)
  {
    v39 = sub_10076FF6C();
  }

  else
  {
    v39 = 0;
  }

  [v37 setText:v39];

  [*(*&v22[v33] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setHidden:1];
  [*(*&v22[v34] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setHidden:1];
  [*&v22[v29] setHidden:0];
  v40 = *(*&v22[v36] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v41 = v69;
  v42 = sub_100766E8C();
  v43 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v43 = v67 & 0xFFFFFFFFFFFFLL;
  }

  v44 = v43 == 0;
  if (v42)
  {
    v44 = 1;
  }

  if (v32)
  {
    v45 = v44;
  }

  else
  {
    v45 = 1;
  }

  [v40 setHidden:v45];

  sub_1001EDE3C();
  v46 = v58;
  v47 = v59;
  (*(v58 + 104))(v68, enum case for TodayCard.Style.white(_:), v59);
  sub_10031296C(&qword_100944B98, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  v48 = v57;
  sub_10077018C();
  sub_10077018C();
  if (v70[0] == v71 && v70[1] == v72)
  {
    v49 = 1;
  }

  else if (sub_10077167C())
  {
    v49 = 1;
  }

  else
  {
    v49 = 2;
  }

  v50 = *(v46 + 8);
  v50(v68, v47);

  [v22 setOverrideUserInterfaceStyle:v49];
  sub_1001EE568();
  [v22 setNeedsLayout];

  (*(v60 + 8))(v41, v61);
  v50(v48, v47);
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v51 = v66;
  v52 = v64;
  *&v66[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey] = v64;

  v71 = v22;
  type metadata accessor for TodayCardLabelsView(0);
  sub_10031296C(&qword_100952350, type metadata accessor for TodayCardLabelsView, &protocol conformance descriptor for NSObject);
  v53 = v22;
  sub_10077140C();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v52;
  v55[4] = v65;

  sub_100760B7C();

  sub_10000CFBC(v70, &qword_100943310, &unk_100784150);

  [v51 setNeedsLayout];
}

double sub_10031028C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = sub_100312C04(a3, v7);
      sub_10030E194(v8);
      v9 = [v6 traitCollection];
      v10 = sub_100312E6C(a3, v9);
      v12 = v11;

      v13 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView;
      v14 = *&v6[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
      sub_1000E59A0(a3, v10, v12);

      v15 = *&v6[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType];
      if (v15)
      {
        v16 = *&v6[v13];
        v17 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType];
        *&v16[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType] = v15;
        v18 = v15;
        v19 = v16;
      }

      else
      {
        v20 = v6[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory];
        v19 = *&v6[v13];
        if (v20 == 6 && (v21 = [v6 traitCollection], v22 = sub_10077071C(), v21, (v22 & 1) == 0))
        {
          v23 = &kCAGradientLayerRadial;
        }

        else
        {
          v23 = &kCAGradientLayerAxial;
        }

        v24 = *v23;
        v17 = *&v19[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType];
        *&v19[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType] = v24;
        v18 = v24;
      }

      sub_1000E50CC();
      [v6 setNeedsLayout];
    }

    else
    {
    }
  }

  return result;
}

void sub_100310494(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_100766EBC();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C7EC();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey);

    if (v19)
    {
      v58 = v19;
      v54 = a6;
      sub_100764B3C();
      sub_10031296C(&qword_100952358, &type metadata accessor for ArtworkLoaderConfig, &protocol conformance descriptor for ArtworkLoaderConfig);
      v20 = sub_10076FF1C();

      if (v20)
      {
        if (a4)
        {
          v21 = 0;
        }

        else
        {
          v21 = a1;
        }

        swift_beginAccess();
        v22 = swift_unknownObjectWeakLoadStrong();
        v23 = &off_100911000;
        if (v22)
        {
          v24 = v22;
          v25 = *(v22 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView);

          v26 = sub_10076C73C();
          v28 = v27;
          sub_10076C80C();
          v29 = v28;
          sub_10076C77C();
          v48 = qword_10094D6B8;
          [*(*&v25[qword_10094D6B8] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setText:0];
          v47 = qword_10094D6C0;
          [*(*&v25[qword_10094D6C0] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setText:0];
          v30 = qword_10094D6C8;
          v31 = *&v25[qword_10094D6C8];
          v49 = v21;
          [v31 setImage:v21];
          v32 = qword_10094D6D0;
          v33 = *(*&v25[qword_10094D6D0] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
          v46 = v26;
          v34 = v33;
          if (v29)
          {
            v35 = v29;
            v29 = sub_10076FF6C();
          }

          else
          {
            v35 = 0;
          }

          [v33 setText:{v29, v46}];

          [*(*&v25[v48] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setHidden:1];
          [*(*&v25[v47] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setHidden:1];
          [*&v25[v30] setHidden:0];
          v36 = *(*&v25[v32] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
          v37 = sub_100766E8C();
          v38 = HIBYTE(v35) & 0xF;
          if ((v35 & 0x2000000000000000) == 0)
          {
            v38 = v46 & 0xFFFFFFFFFFFFLL;
          }

          v39 = v38 == 0;
          if (v37)
          {
            v39 = 1;
          }

          v48 = v35;
          if (v35)
          {
            v40 = v39;
          }

          else
          {
            v40 = 1;
          }

          [v36 setHidden:v40];

          sub_1001EDE3C();
          v41 = v50;
          (*(v50 + 104))(v13, enum case for TodayCard.Style.white(_:), v11);
          sub_10031296C(&qword_100944B98, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
          sub_10077018C();
          sub_10077018C();
          if (v54 == v56 && v55 == v57)
          {
            v42 = 1;
          }

          else if (sub_10077167C())
          {
            v42 = 1;
          }

          else
          {
            v42 = 2;
          }

          v43 = *(v41 + 8);
          v43(v13, v11);

          [v25 setOverrideUserInterfaceStyle:v42];
          sub_1001EE568();
          v23 = &off_100911000;
          [v25 setNeedsLayout];

          (*(v51 + 8))(v53, v52);
          v43(v16, v11);

          v21 = v49;
        }

        swift_beginAccess();
        v44 = swift_unknownObjectWeakLoadStrong();
        if (v44)
        {
          v45 = v44;
          [v44 v23[194]];
        }
      }
    }
  }
}

id sub_100310A38(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v29[-v8];
  v10 = a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory];
  v2[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] = v10;
  if (v10 != 7)
  {
    v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer];
    v11[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] = v10;
    if (v10 == 4)
    {
      v12 = v11[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v12 = 0;
    }

    [v11 setHidden:{v12 & 1, v7}];
    *(*&v2[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView] + qword_10094D6A8) = v10;
    sub_1001EDB98();
  }

  v13 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_10003BDD4(&a1[v13], v9);
  v14 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_10003BD64(v9, &v3[v14]);
  swift_endAccess();
  sub_1001EFCF0(*&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView]);
  v15 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay];
  if (v15 && *&v3[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay])
  {
    v16 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay + 8];
    v17 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay + 8];
    ObjectType = swift_getObjectType();
    v19 = *(v16 + 120);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19(v15, v17, a2 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_10030E194(a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode]);
  [v3 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  v20 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
  v21 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
  v22 = *(v21 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_style);
  v23 = *(v21 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_style + 8);

  sub_1000E5778(v22, v23);
  v24 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *(v20 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle) = *(v21 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle);
  v25 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView;
  v26 = *(v20 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView);

  sub_100016F40(0, &qword_1009492C0, UIVisualEffect_ptr);
  isa = sub_1007701AC().super.isa;

  [v26 setBackgroundEffects:isa];

  [*(v20 + v25) setOverrideUserInterfaceStyle:*(v20 + v24)];
  return [v3 setNeedsLayout];
}

id sub_100310D58()
{
  v1 = v0;
  sub_10030D844();
  [*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView) + qword_10094D6C8) setImage:0];
  sub_1001E47AC();
  sub_1001E47AC();
  sub_1001E47AC();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;

  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_originalSizeCategory) = 7;
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock);
  v3 = *v2;
  v4 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3, v4);
  v5 = *v2;
  if (*v2)
  {
    v6 = v2[1];

    v5(v7);
    sub_1000167E0(v5, v6);
  }

  v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer);
  sub_1005B9F80();
  v8[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isLayoutRequired] = 1;
  v8[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] = 5;
  result = [v8 setHidden:0];
  v8[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_originalSizeCategory] = 5;
  return result;
}

uint64_t sub_100310EA4()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory;
  sub_100312548(v2, v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory], &v25);
  v4 = v28;

  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView];
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer];
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind];
  v8 = v1[v3];
  v9 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind + 8];
  v10 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_originalSizeCategory];
  v11 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isExpanded];
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  *&v35 = v4;
  *(&v35 + 1) = v5;
  *v36 = v6;
  *&v36[8] = v7;
  v36[16] = v9;
  v36[17] = v8;
  v36[18] = v10;
  v36[19] = v11;
  v36[20] = 0;
  v29 = v25;
  v30 = v26;
  *(v33 + 13) = *&v36[13];
  v32 = v35;
  v33[0] = *v36;
  v31 = v27;
  v12 = v5;
  v13 = v6;
  [v1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v1 traitCollection];
  sub_10033FA50(v22, v15, v17, v19, v21);

  sub_100311048();
  return sub_100138C80(v34);
}

void sub_100311048()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v2 - 8);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = sub_10076C38C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v70 - v14;
  v16 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode];
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      if (v16 != 3)
      {
        return;
      }

      v17 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory];
      v18 = 0.0;
      if (v17 != 7)
      {
        v19 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
        swift_beginAccess();
        sub_10003BDD4(&v1[v19], v4);
        if ((*(v9 + 48))(v4, 1, v8) == 1)
        {
          sub_10000CFBC(v4, &unk_1009434A0, &unk_100787B90);
        }

        else
        {
          (*(v9 + 32))(v11, v4, v8);
          v55 = [v1 traitCollection];
          v73.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v73.value._rawValue = 0;
          isa = sub_1007706DC(v73, v75).super.isa;

          sub_1005DE2F4(v17, v11, isa);
          v18 = v57;

          (*(v9 + 8))(v11, v8);
        }
      }

      v58 = [v1 traitCollection];
      if (qword_100941428 != -1)
      {
        swift_once();
      }

      v59 = sub_100587DD0(v58, &xmmword_1009A2D20, 1);
      sub_10077071C();
      sub_1007704EC();
      v61 = v60;
      sub_10077071C();
      sub_1007704EC();
      v63 = v62;

      [v1 bounds];
      v64 = CGRectGetMaxY(v81) - (v59 + v61 + v63);
      v65 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView];
      [v65 frame];
      if (v64 >= CGRectGetMinY(v82))
      {
        [v65 frame];
        MinY = CGRectGetMinY(v83);
        v64 = MinY + sub_1001EDC4C();
      }

      if (v18 >= v64)
      {
        v47 = v64;
      }

      else
      {
        v47 = v18;
      }

      goto LABEL_40;
    }

LABEL_8:
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView] frame];
    v20 = CGRectGetMinY(v76);
    v21 = v20 + sub_1001EDC4C();
    [v1 bounds];
    MaxY = CGRectGetMaxY(v77);
    if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType])
    {
      v23 = MaxY;
      v24 = sub_10076FF9C();
      v26 = v25;
      if (v24 == sub_10076FF9C() && v26 == v27)
      {

LABEL_15:
        if (v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] == 6)
        {
          v37 = v23 + -75.0;
          v38 = [v1 traitCollection];
          v39 = sub_10077071C();

          if ((v39 & 1) == 0)
          {
            v21 = v37;
          }
        }

        goto LABEL_18;
      }

      v36 = sub_10077167C();

      if (v36)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v40 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory];
    v41 = 0.0;
    if (v40 != 7)
    {
      v42 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(&v1[v42], v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_10000CFBC(v7, &unk_1009434A0, &unk_100787B90);
      }

      else
      {
        (*(v9 + 32))(v15, v7, v8);
        v43 = [v1 traitCollection];
        v72.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
        v72.value._rawValue = 0;
        v44 = sub_1007706DC(v72, v74).super.isa;

        sub_1005DE2F4(v40, v15, v44);
        v41 = v45;

        (*(v9 + 8))(v15, v8);
      }
    }

    if (v41 < v21 && v16 == 2)
    {
      v47 = v41;
    }

    else
    {
      v47 = v21;
    }

LABEL_40:
    sub_100313114(v1, v47);
    return;
  }

  if (!v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode])
  {
    goto LABEL_8;
  }

  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay])
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer] frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
  }

  else
  {
    v29 = 0.0;
    v31 = 0.0;
    v33 = 0.0;
    v35 = 0.0;
  }

  v48 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
  [v1 bounds];
  MinX = CGRectGetMinX(v78);
  v79.origin.x = v29;
  v79.origin.y = v31;
  v79.size.width = v33;
  v79.size.height = v35;
  v50 = CGRectGetMinY(v79);
  v51 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] == 6 && (v52 = [v1 traitCollection], v53 = sub_10077071C(), v52, (v53 & 1) == 0))
  {
    Width = 570.0;
  }

  else
  {
    v80.origin.x = v29;
    v80.origin.y = v31;
    v80.size.width = v33;
    v80.size.height = v35;
    Width = CGRectGetWidth(v80);
  }

  if (v1[v51] == 6 && (v67 = [v1 traitCollection], v68 = sub_10077071C(), v67, (v68 & 1) == 0))
  {
    Height = 325.0;
  }

  else
  {
    v84.origin.x = v29;
    v84.origin.y = v31;
    v84.size.width = v33;
    v84.size.height = v35;
    Height = CGRectGetHeight(v84);
  }

  [v48 setFrame:{MinX, v50, Width, Height}];
}

id sub_100311848(uint64_t a1, double a2, double a3)
{
  if (*&v3[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay])
  {
    v4 = v3;
    v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay + 8];
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    swift_unknownObjectRelease();
    [v4 convertPoint:v11 toCoordinateSpace:{a2, a3}];
    v13 = v12;
    v15 = v14;
    if ([v11 pointInside:a1 withEvent:?])
    {
      v16 = [v11 hitTest:a1 withEvent:{v13, v15}];

      return v16;
    }
  }

  return 0;
}

uint64_t sub_1003119E0(uint64_t a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay))
  {
    v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 128);
    swift_unknownObjectRetain();
    v6(a1, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;

  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView);
  type metadata accessor for TodayCardLabelsView(0);
  sub_10031296C(&qword_100952350, type metadata accessor for TodayCardLabelsView, &protocol conformance descriptor for NSObject);
  v8 = v7;
  sub_10077140C();
  sub_100760BEC();
  return sub_100016C74(v10);
}

uint64_t type metadata accessor for TodayCardInfoLayerView(uint64_t a1)
{
  result = qword_100952338;
  if (!qword_100952338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100311D4C(uint64_t a1)
{
  sub_100276FE0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_100311E54()
{
  result = qword_100952348;
  if (!qword_100952348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952348);
  }

  return result;
}

uint64_t sub_100311EC0(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_100311F10(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double sub_100311F3C(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

void sub_100311FB8(char *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 != [a2 layoutDirection])
  {
    v6 = [a1 traitCollection];
    v7 = sub_10077070C();

    v8 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
    v9 = 0.13962634;
    if (v7)
    {
      v9 = -0.13962634;
    }

    v10 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle);
    *(v8 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle) = v9;
    if (v9 != v10)
    {
      sub_1000E53E0();
    }
  }
}

id sub_100312094(char *a1)
{
  sub_10030DF18();
  v3 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock];
  if (v3)
  {
    v4 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock + 8];

    v3(v5);
    v2 = sub_1000167E0(v3, v4);
  }

  return [a1 setNeedsLayout];
}

id sub_100312114(uint64_t a1)
{
  v2 = sub_10076C7EC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0.1;
  if (v7 == enum case for TodayCard.Style.automatic(_:) || v7 == enum case for TodayCard.Style.white(_:))
  {
    goto LABEL_8;
  }

  if (v7 == enum case for TodayCard.Style.dark(_:))
  {
    v10 = &selRef_whiteColor;
    v8 = 0.16;
LABEL_9:
    v11 = [objc_opt_self() *v10];
    v12 = [v11 colorWithAlphaComponent:v8];

    return v12;
  }

  if (v7 == enum case for TodayCard.Style.light(_:))
  {
LABEL_8:
    v10 = &selRef_blackColor;
    goto LABEL_9;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_10077145C(44);

  v14 = 0xD00000000000002ALL;
  v15 = 0x80000001007D3D40;
  v16._countAndFlagsBits = sub_10076C7DC();
  sub_1007700CC(v16);

  result = sub_10077156C();
  __break(1u);
  return result;
}

id sub_100312344(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer];
  sub_1005B9F80();
  if (a1)
  {
    v8 = swift_getObjectType();
    v9 = *(a2 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, a2);
    v11 = OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView;
    v12 = *&v7[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView];
    *&v7[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView] = v10;
    v13 = v10;

    [v13 setAnchorPoint:{0.0, 1.0}];
    v14 = *&v7[v11];
    if (v14)
    {
      v21[0] = 0x3FF0000000000000;
      v21[1] = 0;
      v21[2] = 0;
      v21[3] = 0x3FF0000000000000;
      v21[4] = 0;
      v21[5] = 0;
      [v14 setTransform:v21];
    }

    [v7 addSubview:v13];
    [v13 setOverrideUserInterfaceStyle:{objc_msgSend(v3, "overrideUserInterfaceStyle")}];
    v20.receiver = v3;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "_continuousCornerRadius");
    [v13 _setContinuousCornerRadius:?];
    v15 = [v13 layer];
    if (*(v3 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory) == 6)
    {
      v16 = [v3 traitCollection];
      v17 = sub_10077071C();

      if (v17)
      {
        v18 = 12;
      }

      else
      {
        v18 = 15;
      }
    }

    else
    {
      v18 = 12;
    }

    [v15 setMaskedCorners:v18];
    swift_unknownObjectRelease();
  }

  return [v3 setNeedsLayout];
}

double sub_100312548@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (sub_10077071C())
  {
    if (qword_100941428 != -1)
    {
      swift_once();
    }

    v6 = sub_100587DD0(a1, &xmmword_1009A2D20, 1);
    sub_10077071C();
    sub_1007704EC();
    v9 = v8;
    sub_10077071C();
    sub_1007704EC();
    v11 = v6 + v9 + v10;
    __asm { FMOV            V0.2D, #16.0 }

LABEL_16:
    *&_Q0 = v11;
    v26 = 16.0;
    goto LABEL_17;
  }

  if (a2 == 6)
  {
    if (qword_100941428 != -1)
    {
      swift_once();
    }

    v17 = sub_100587DD0(a1, &xmmword_1009A2D20, 1);
    sub_10077071C();
    sub_1007704EC();
    v24 = v23;
    sub_10077071C();
    sub_1007704EC();
    __asm { FMOV            V0.2D, #30.0 }

    *&_Q0 = v17 + v24 + v25;
    v26 = 30.0;
  }

  else
  {
    if (a2 == 4)
    {
      if (qword_100941428 != -1)
      {
        swift_once();
      }

      v7 = sub_100587DD0(a1, &xmmword_1009A2D20, 1);
      sub_10077071C();
      sub_1007704EC();
      v20 = v19;
      sub_10077071C();
      sub_1007704EC();
      v11 = v7 + v20 + v21;
      __asm { FMOV            V0.2D, #12.0 }

      goto LABEL_16;
    }

    if (qword_100941428 != -1)
    {
      swift_once();
    }

    v18 = sub_100587DD0(a1, &xmmword_1009A2D20, 1);
    sub_10077071C();
    sub_1007704EC();
    v28 = v27;
    sub_10077071C();
    sub_1007704EC();
    __asm { FMOV            V0.2D, #20.0 }

    *&_Q0 = v18 + v28 + v29;
    v26 = 20.0;
  }

LABEL_17:
  *a3 = _Q0;
  *(a3 + 16) = v26;
  *(a3 + 24) = xmmword_10079B350;
  result = 353.0;
  *(a3 + 40) = xmmword_10079B360;
  return result;
}

uint64_t sub_100312828()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100312860()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003128B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1003128EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10031290C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10031296C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003129B4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView;
  v12[0] = sub_1002091B8;
  v12[1] = 0;
  v12[2] = sub_1007333BC;
  v12[3] = 0;
  v12[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v12[5] = 0;
  v12[6] = sub_1002091B8;
  v12[7] = 0;
  v12[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v12[9] = 0;
  v12[10] = sub_100342B64;
  v12[11] = 0;
  v13 = 0x4000000000000000uLL;
  v14 = 0;
  v15 = 0x4018000000000000;
  v16 = 0;
  v17 = 1;
  v3 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *(v0 + v2) = sub_1001ED0D8(v12, &v13);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView;
  v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *(v0 + v4) = sub_1000E4B54(&off_100882C28);
  v6 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer;
  type metadata accessor for InfoLayerOverlayContainerView();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode) = 0;
  v7 = (v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_originalSizeCategory) = 7;
  v8 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
  v9 = sub_10076C38C();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isTransitioning) = 0;
  v10 = v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay);
  *v11 = 0;
  v11[1] = 0;
  swift_weakInit();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100312C04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[0] = a2;
  v4 = sub_100766EBC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C77C();
  v8 = sub_100766E7C();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) != 0 || !sub_10076C83C())
  {
    v10 = 0;
  }

  else
  {

    v10 = 1;
  }

  v11 = [v3 traitCollection];
  v12 = sub_10077071C();

  if (v12)
  {
    sub_10076C77C();
    v13 = sub_100766E7C();
    v9(v7, v4);
    if ((v13 & 1) == 0 && sub_10076C83C() && (, type metadata accessor for TodayCardOverlayReusePool(), sub_10076F63C(), v19[1]))
    {

      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (v10 && (*(v3 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory) != 6 || (v15 = [v3 traitCollection], v16 = sub_10077071C(), v15, (v16 & 1) != 0)))
  {
    sub_10076C77C();
    v17 = sub_100766E9C();
    v9(v7, v4);
    return (v17 & 1) == 0;
  }

  else
  {
    sub_10076C77C();
    v18 = sub_100766E9C();
    v9(v7, v4);
    if (v18)
    {
      return 0;
    }

    else
    {
      return 4;
    }
  }
}

id sub_100312E6C(uint64_t a1, uint64_t a2)
{
  sub_10076C7FC();
  sub_10075E2EC();
  if (!swift_dynamicCastClass())
  {

    v9 = sub_10076C7FC();
    sub_100761BFC();
    sub_10000A5D4(&qword_100945700, &qword_100787BA0);
    if (swift_dynamicCast())
    {
      sub_100012498(v7, v10);
      sub_10000CF78(v10, v10[3]);
      if (sub_1007684EC())
      {

        if (qword_10093F708 != -1)
        {
          swift_once();
        }

        v3 = qword_10099CED0;

        sub_10000CD74(v10);
        return v3;
      }

      sub_10000CD74(v10);
    }

    else
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      sub_10000CFBC(v7, &qword_1009456F8, &unk_1007AB1E0);
    }

    if (qword_10093F6F8 != -1)
    {
      swift_once();
    }

    v3 = xmmword_10099CEB0;

    return v3;
  }

  v2 = sub_10075E2DC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007841E0;
  sub_100016F40(0, &qword_100952240, UIColorEffect_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata effectCompositingColor:v2 withMode:0 alpha:1.0];
  if (result)
  {
    *(v3 + 32) = result;
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007841E0;
    result = [ObjCClassFromMetadata effectCompositingColor:v2 withMode:0 alpha:1.0];
    if (result)
    {
      *(v6 + 32) = result;

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100313114(unsigned __int8 *a1, double a2)
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory;
  v5 = a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory];
  v6 = 0.174532925;
  if (v5 == 4)
  {
    v16 = 48.0;
    goto LABEL_23;
  }

  if (v5 != 6)
  {
    goto LABEL_11;
  }

  v7 = [a1 traitCollection];
  v8 = sub_10077071C();

  if ((v8 & 1) != 0 || !*&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType])
  {
    goto LABEL_11;
  }

  v9 = sub_10076FF9C();
  v11 = v10;
  if (v9 == sub_10076FF9C() && v11 == v12)
  {

    *&v15 = 100.0;
    goto LABEL_12;
  }

  v14 = sub_10077167C();

  if (v14)
  {
    *&v15 = 100.0;
  }

  else
  {
LABEL_11:
    *&v15 = 80.0;
  }

LABEL_12:
  v16 = *&v15;
  v17 = a1[v4];
  if (v17 == 4)
  {
    goto LABEL_23;
  }

  if (v17 != 6)
  {
    goto LABEL_21;
  }

  v18 = [a1 traitCollection];
  v19 = sub_10077071C();

  if ((v19 & 1) != 0 || !*&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType])
  {
    goto LABEL_21;
  }

  v20 = sub_10076FF9C();
  v22 = v21;
  if (v20 == sub_10076FF9C() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_10077167C();

    if ((v25 & 1) == 0)
    {
LABEL_21:
      v6 = 0.13962634;
      goto LABEL_23;
    }
  }

  v6 = 0.34906585;
LABEL_23:
  v26 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType;
  if (*&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType])
  {
    v27 = sub_10076FF9C();
    v29 = v28;
    if (v27 == sub_10076FF9C() && v29 == v30)
    {
    }

    else
    {
      v32 = sub_10077167C();

      if ((v32 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (a1[v4] == 6)
    {
      v33 = [a1 traitCollection];
      v34 = sub_10077071C();

      if ((v34 & 1) == 0)
      {
        v35 = 385.0;
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  [a1 bounds];
  v35 = CGRectGetWidth(v58) * 0.5;
LABEL_34:
  v36 = v35 * tan(v6);
  [a1 bounds];
  v37 = ceil(v36 + v16 + CGRectGetHeight(v59) - a2);
  v38 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
  if (a1[v4] == 6)
  {
    v39 = [a1 traitCollection];
    v40 = sub_10077071C();

    if ((v40 & 1) == 0)
    {
      if (*&a1[v26])
      {
        v41 = sub_10076FF9C();
        v43 = v42;
        if (v41 == sub_10076FF9C() && v43 == v44)
        {

          goto LABEL_42;
        }

        v45 = sub_10077167C();

        if (v45)
        {
          goto LABEL_42;
        }
      }

      [a1 bounds];
      CGRectGetMinX(v63);
      [a1 bounds];
      CGRectGetHeight(v64);
      v51 = [a1 traitCollection];
      [a1 bounds];
      sub_1007709CC();
      MinX = v52;
      v48 = v53;
      v55 = v54;
      v57 = v56;

      v50 = v57;
      Width = v55;
      goto LABEL_46;
    }
  }

LABEL_42:
  [a1 bounds];
  MinX = CGRectGetMinX(v60);
  [a1 bounds];
  v47 = CGRectGetHeight(v61) - v37;
  if (v47 < 0.0)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = v47;
  }

  [a1 bounds];
  Width = CGRectGetWidth(v62);
  v50 = v37;
LABEL_46:
  [v38 setFrame:{MinX, v48, Width, v50}];
  *&v38[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientStartY] = v36 / v37;
  sub_1000E53E0();
  *&v38[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientEndY] = (v16 + v36) / v37;
  sub_1000E53E0();
}

uint64_t sub_1003136A0()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronForward(_:), v0, v2);
  v5 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_100952360 = v5;
  return result;
}

uint64_t sub_100313798()
{
  v2._object = 0x80000001007DEC20;
  v2._countAndFlagsBits = 0xD000000000000016;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  result = sub_1007622EC(v2, v3);
  qword_100952368 = result;
  unk_100952370 = v1;
  return result;
}

uint64_t sub_1003137DC()
{
  v0 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v0, qword_100952378);
  sub_10000A61C(v0, qword_100952378);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FECC();
}

void sub_100313878(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  if (sub_1007706EC() & 1) != 0 || (sub_10077071C())
  {
    v4 = sub_10077070C();

    v5 = 2;
    if ((v4 & 1) == 0)
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = sub_10077070C();

    v5 = 2;
    if (v6)
    {
      v5 = 0;
    }
  }

  *a2 = v5;
}

uint64_t sub_100313904()
{
  v0 = sub_10076D9AC();
  __chkstk_darwin(v0 - 8);
  v17[2] = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  __chkstk_darwin(v6 - 8);
  v7 = sub_100767AFC();
  sub_10000DB18(v7, qword_10099E5C8);
  v17[1] = sub_10000A61C(v7, qword_10099E5C8);
  if (qword_100940CC0 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1438);
  v10 = *(*(v8 - 8) + 16);
  v10(v5, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v3 + 104);
  v12(v5, enum case for FontSource.useCase(_:), v2);
  sub_10075FE4C();
  if (qword_100940CC8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v8, qword_1009A1450);
  v10(v5, v13, v8);
  v12(v5, v11, v2);
  v19 = v2;
  v20 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v18);
  (*(v3 + 16))(v14, v5, v2);
  sub_10076D9BC();
  (*(v3 + 8))(v5, v2);
  v19 = &type metadata for Double;
  v20 = &protocol witness table for Double;
  v18[0] = 0x4030000000000000;
  if (qword_10093FDD0 != -1)
  {
    swift_once();
  }

  v15 = qword_100952360;
  [v15 size];

  return sub_100767AEC();
}

char *sub_100313CA8(double a1, double a2, double a3, double a4)
{
  v9 = sub_10076771C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v52 - v13;
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_tapHandler];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v57 = v4;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_disclosureImageView] = v16;
  if (qword_100940CC0 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  v18 = sub_10000A61C(v17, qword_1009A1438);
  v19 = *(v17 - 8);
  v55 = *(v19 + 16);
  v55(v14, v18, v17);
  v20 = *(v19 + 56);
  v20(v14, 0, 1, v17);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v54 = *(v10 + 104);
  v54(v56, enum case for DirectionalTextAlignment.none(_:), v9);
  v22 = sub_1007626BC();
  v53 = v9;
  v23 = v22;
  v24 = objc_allocWithZone(v22);
  *&v57[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_primaryLabel] = sub_1007626AC();
  if (qword_100940CC8 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v17, qword_1009A1450);
  v55(v14, v25, v17);
  v20(v14, 0, 1, v17);
  v54(v56, v21, v53);
  v26 = objc_allocWithZone(v23);
  v27 = sub_1007626AC();
  v28 = v57;
  *&v57[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_secondaryLabel] = v27;
  v29 = type metadata accessor for DeveloperLinkView();
  v60.receiver = v28;
  v60.super_class = v29;
  v30 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v34 = v30;
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v35 = OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_disclosureImageView;
  v36 = *&v34[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_disclosureImageView];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v37 = v36;
  v38 = sub_100770D1C();
  [v37 setTintColor:v38];

  v39 = qword_10093FDD0;
  v40 = *&v34[v35];
  if (v39 != -1)
  {
    swift_once();
  }

  [v40 setImage:qword_100952360];

  if (qword_10093FDE0 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000A61C(v41, qword_100952378);
  v58 = v34;
  v42 = v34;
  sub_10075FDCC();

  v43 = v59;
  v44 = OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_primaryLabel;
  [*&v42[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_primaryLabel] setTextAlignment:v59];
  [*&v42[v44] _setTextColorFollowsTintColor:1];
  v45 = OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_secondaryLabel;
  [*&v42[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_secondaryLabel] setTextAlignment:v43];
  v46 = *&v42[v45];
  v61._object = 0x80000001007DEC20;
  v61._countAndFlagsBits = 0xD000000000000016;
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  sub_1007622EC(v61, v62);
  v47 = sub_10076FF6C();

  [v46 setText:v47];

  v48 = *&v42[v45];
  v49 = sub_100770D1C();
  [v48 setTextColor:v49];

  v50 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v42 action:"didTapLink:"];
  [v42 addGestureRecognizer:v50];
  [v42 addSubview:*&v34[v35]];
  [v42 addSubview:*&v42[v44]];
  [v42 addSubview:*&v42[v45]];

  return v42;
}

uint64_t sub_1003143A0()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v27 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100767AFC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100767B1C();
  v8 = *(v26 - 8);
  __chkstk_darwin(v26);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DeveloperLinkView();
  v39.receiver = v0;
  v39.super_class = v11;
  v25[1] = v11;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_disclosureImageView];
  v13 = [v0 traitCollection];
  v14 = sub_1007706FC();

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [v1 traitCollection];
    v15 = sub_10077071C();
  }

  [v12 setHidden:v15 & 1];
  if (qword_10093FDE8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v4, qword_10099E5C8);
  (*(v5 + 16))(v7, v17, v4);
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_primaryLabel];
  v37 = sub_1007626BC();
  v38 = &protocol witness table for UILabel;
  v35 = &protocol witness table for UILabel;
  v36 = v18;
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_secondaryLabel];
  v34 = v37;
  v33 = v19;
  v31 = sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
  v32 = &protocol witness table for UIView;
  v30 = v12;
  v20 = v18;
  v21 = v19;
  v22 = v12;
  sub_100767B0C();
  sub_10076422C();
  v23 = v27;
  sub_100767ADC();
  (*(v28 + 8))(v23, v29);
  return (*(v8 + 8))(v10, v26);
}

double sub_100314778(uint64_t a1, __n128 a2, double a3)
{
  v4 = sub_100767AFC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100767B1C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FDE8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v4, qword_10099E5C8);
  (*(v5 + 16))(v7, v12, v4);
  v13 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_primaryLabel);
  v23 = sub_1007626BC();
  v24 = &protocol witness table for UILabel;
  v22[10] = &protocol witness table for UILabel;
  v22[11] = v13;
  v14 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_secondaryLabel);
  v22[9] = v23;
  v22[6] = v14;
  v15 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_disclosureImageView);
  v22[4] = sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
  v22[5] = &protocol witness table for UIView;
  v22[1] = v15;
  v16 = v13;
  v17 = v14;
  v18 = v15;
  sub_100767B0C();
  sub_100767ACC();
  v20 = v19;
  (*(v9 + 8))(v11, v8);
  return v20;
}

double sub_100314A80(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v46 = a6;
  v45 = a5;
  v49 = sub_10076997C();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_100767AFC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v54 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100767B1C();
  v51 = *(v52 - 8);
  *&v14 = __chkstk_darwin(v52).n128_u64[0];
  v50 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 traitCollection];
  v17 = sub_1007706FC();

  v18 = 2;
  if ((v17 & 1) == 0)
  {
    v18 = 0;
  }

  v44 = v18;
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940CC0 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  sub_10000A61C(v19, qword_1009A1438);
  v20 = [a1 traitCollection];
  v21 = sub_100770B3C();

  if (qword_100940CC8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v19, qword_1009A1450);
  v53 = a1;
  v22 = [a1 traitCollection];
  v43 = sub_100770B3C();

  if (qword_10093FDE8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v11, qword_10099E5C8);
  (*(v12 + 16))(v54, v23, v11);
  v24 = sub_10076C04C();
  v59[3] = v24;
  v42 = sub_10004C7BC();
  v59[4] = v42;
  v25 = sub_10000DB7C(v59);
  v26 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v27 = *(*(v24 - 8) + 104);
  v27(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);

  v28 = v21;
  sub_10076C90C();
  sub_10000CD74(v59);
  v46 = v28;
  sub_10076996C();
  sub_10076994C();
  v29 = *(v48 + 8);
  v30 = v10;
  v31 = v49;
  v29(v30, v49);
  if (qword_10093FDD8 != -1)
  {
    swift_once();
  }

  v58[3] = v24;
  v58[4] = v42;
  v32 = sub_10000DB7C(v58);
  v27(v32, v26, v24);

  v33 = v43;
  sub_10076C90C();
  sub_10000CD74(v58);
  v34 = v47;
  sub_10076996C();
  sub_10076994C();
  v29(v34, v31);
  if (qword_10093FDD0 != -1)
  {
    swift_once();
  }

  [qword_100952360 size];
  v35 = sub_10076DDDC();
  swift_allocObject();
  v36 = sub_10076DDBC();
  v56 = v35;
  v57 = &protocol witness table for LayoutViewPlaceholder;
  v55 = v36;
  v37 = v50;
  sub_100767B0C();
  sub_100767ACC();
  v39 = v38;

  (*(v51 + 8))(v37, v52);
  return v39;
}

id sub_1003151C4(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for DeveloperLinkView();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10093FDE0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v6, qword_100952378);
    v7 = v1;
    sub_10075FDCC();

    [*&v7[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_primaryLabel] setTextAlignment:{v8, v1}];
    return [*&v7[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_secondaryLabel] setTextAlignment:v8];
  }

  return result;
}

id sub_1003153A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeveloperLinkView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100315468()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata + 8);
  v4 = v2;
  if (v3 >> 60 == 15)
  {
    swift_unknownObjectWeakInit();
    v4 = sub_100315520(v10);
    v6 = v5;
    swift_unknownObjectWeakDestroy();
    v7 = *v1;
    v8 = v1[1];
    *v1 = v4;
    v1[1] = v6;
    sub_100316098(v4, v6);
    sub_1003160EC(v7, v8);
  }

  sub_100316154(v2, v3);
  return v4;
}

void *sub_100315520(uint64_t a1)
{
  v1 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - v2;
  v4 = sub_10075DB7C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_10000A5D4(&qword_100952410, qword_10079B5B0);
    inited = swift_initStackObject();
    v35 = xmmword_100783DD0;
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    v11 = sub_10076740C();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v11;
    *(inited + 56) = v12;
    v13 = sub_1000FD3F0(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &qword_100948BD0, &unk_10078B5B0);
    sub_1007673DC();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000CFBC(v3, &unk_1009435D0, &qword_100785850);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v39 = v4;
      v14 = sub_10000DB7C(&v38);
      (*(v5 + 16))(v14, v7, v4);
      sub_10000CD64(&v38, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_10024AD30(v37, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      (*(v5 + 8))(v7, v4);
      v13 = v36;
    }

    v16 = sub_10076741C();
    if (v17)
    {
      v39 = &type metadata for String;
      *&v38 = v16;
      *(&v38 + 1) = v17;
      sub_10000CD64(&v38, v37);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_10024AD30(v37, 0x796E61706D6F63, 0xE700000000000000, v18);
      v13 = v36;
    }

    v19 = sub_1007673EC();
    if (v20)
    {
      v39 = &type metadata for String;
      *&v38 = v19;
      *(&v38 + 1) = v20;
      sub_10000CD64(&v38, v37);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_10024AD30(v37, 0x79726F6765746163, 0xE800000000000000, v21);
      v13 = v36;
    }

    v22 = sub_1007673FC();
    if ((v23 & 1) == 0)
    {
      v39 = &type metadata for Int64;
      *&v38 = v22;
      sub_10000CD64(&v38, v37);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_10024AD30(v37, 0x7A69735F656C6966, 0xE900000000000065, v24);
      v13 = v36;
    }

    v25 = sub_10076742C();
    if (v26)
    {
      v39 = &type metadata for String;
      *&v38 = v25;
      *(&v38 + 1) = v26;
      sub_10000CD64(&v38, v37);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      sub_10024AD30(v37, 0x79745F616964656DLL, 0xEA00000000006570, v27);
    }

    v28 = objc_opt_self();
    isa = sub_10076FE3C().super.isa;

    *&v38 = 0;
    v30 = [v28 archivedDataWithRootObject:isa requiringSecureCoding:0 error:&v38];

    v31 = v38;
    if (v30)
    {
      v32 = sub_10075DB9C();

      return v32;
    }

    else
    {
      v33 = v31;
      sub_10075DA4C();

      swift_willThrow();
      if (qword_1009412D8 != -1)
      {
        swift_once();
      }

      v34 = sub_10076FD4C();
      sub_10000A61C(v34, qword_1009A25D0);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = v35;
      sub_10076F27C();
      sub_10076FBEC();

      return 0;
    }
  }

  return result;
}

void sub_100315BE0(uint64_t *a1@<X8>)
{
  v3 = [v1 activityType];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_10076FF9C();
  v7 = v6;
  if (v5 == sub_10076FF9C() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_10077167C();

    if ((v10 & 1) == 0)
    {

LABEL_8:
      a1[3] = &type metadata for String;
      *a1 = 0;
      a1[1] = 0xE000000000000000;
      return;
    }
  }

  v11 = sub_100315468();
  v13 = v12;
  a1[3] = &type metadata for Data;

  *a1 = v11;
  a1[1] = v13;
}

void sub_100315CDC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = sub_10076FF9C();
  v5 = v4;
  if (v3 == sub_10076FF9C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_10077167C();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  v9 = sub_100315468();
  *(a2 + 24) = &type metadata for Data;
  *a2 = v9;
  *(a2 + 8) = v10;
}

id sub_100315FF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesMetadataActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100316098(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

double sub_1003160EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100316100(a1, a2);
  }

  return result;
}

double sub_100316100(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

double sub_100316154(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100316098(a1, a2);
  }

  return result;
}

void *sub_100316168(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_10076FF9C();
    v4 = v3;
    if (v2 == sub_10076FF9C() && v4 == v5)
    {
      v9 = v1;
    }

    else
    {
      v7 = sub_10077167C();
      v8 = v1;

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }

    return 0xD00000000000001ELL;
  }

  return result;
}

id sub_100316250@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000A5D4(&unk_10094FD50, &unk_100788D10);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = sub_100770BFC();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076C36C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = v29 - v16;
  v18 = [a1 presentingViewController];
  if (!v18)
  {
    v18 = a1;
  }

  result = [v18 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = result;
  v30 = v13;
  v31 = a2;
  [result bounds];
  v22 = v21;
  v24 = v23;

  (*(v11 + 104))(v17, enum case for PageGrid.Direction.vertical(_:), v10);
  result = [v18 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v25 = result;
  v29[0] = v22;
  v29[1] = v24;
  v26 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
  v27 = sub_100770BDC();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v6, v26, v27);
  (*(v28 + 56))(v6, 0, 1, v27);
  sub_100770BEC();
  sub_100317990(v6);
  sub_100770BBC();

  (*(v32 + 8))(v9, v33);
  (*(v11 + 16))(v30, v17, v10);
  if (qword_100940280 != -1)
  {
    swift_once();
  }

  sub_10076C33C();

  return (*(v11 + 8))(v17, v10);
}

void sub_100316818()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8);
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isCardModeEnabled;
  (*(v3 + 96))((*(v0 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isCardModeEnabled) & 1) == 0, ObjectType, v3);
  if ((*(v3 + 136))(ObjectType, v3) != 6 && *(v0 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell))
  {
    v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell + 8);
    v7 = swift_getObjectType();
    (*(v6 + 96))((*(v0 + v5) & 1) == 0, v7, v6);
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    v11 = swift_getObjectType();
    v12 = *(v10 + 32);
    v13 = v2;
    if (v12(v11, v10))
    {
      v15 = v14;
      v16 = swift_getObjectType();
      (*(v15 + 32))((*(v0 + v5) & 1) == 0, v16, v15);
      swift_unknownObjectRelease();
    }
  }

  v17 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell);
  if (v17)
  {
    v18 = swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = *(v19 + 32);
      v21 = v19;
      v25 = v17;
      if (v20(v18, v21))
      {
        v23 = v22;
        v24 = swift_getObjectType();
        (*(v23 + 32))((*(v1 + v5) & 1) == 0, v24, v23);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_100316A90(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets);
  v6 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets);
  v7 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 8);
  v8 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 16);
  v9 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 24);
  if (v6 != a1 || v7 != a2 || v8 != a3 || v9 != a4)
  {
    v13 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8);
    ObjectType = swift_getObjectType();
    *v20 = v6;
    *&v20[1] = v7;
    *&v20[2] = v8;
    *&v20[3] = v9;
    v21 = 0;
    (*(v13 + 224))(v20, ObjectType, v13);
    if (*(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell))
    {
      v15 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell + 8);
      v16 = swift_getObjectType();
      v17 = v5[1];
      v18[0] = *v5;
      v18[1] = v17;
      v19 = 0;
      (*(v15 + 224))(v18, v16, v15);
    }
  }
}

void sub_100316C7C()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 addSubview:v1];

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v0 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 addSubview:v5];
}

void sub_100316E04(void *a1, uint64_t a2, uint64_t a3, const char **a4, void *a5, char a6)
{
  v12.receiver = a1;
  v12.super_class = swift_getObjectType();
  v10 = *a4;
  v11 = v12.receiver;
  objc_msgSendSuper2(&v12, v10, a3);
  v11[*a5] = a6;
}

void sub_100316E7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_10094FD50, &unk_100788D10);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  v6 = sub_100770BFC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "viewDidLayoutSubviews", v8);
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
  v14 = sub_100770BDC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_100770BEC();
  sub_100317990(v5);
  sub_100770BBC();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  (*(v7 + 8))(v10, v6);
  v24 = &v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets];
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 8];
  v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 16];
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_verticalSafeAreaInsets + 24];
  *v24 = v17;
  *(v24 + 1) = v19;
  *(v24 + 2) = v21;
  *(v24 + 3) = v23;
  sub_100316A90(v25, v26, v27, v28);
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell];
  if (v29)
  {
    v30 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell + 8];
    v31 = v29;
    sub_100317204(v31, v30);
    v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell];
    v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8];
    v34 = [v1 view];
    if (v34)
    {
      v35 = v34;
      [v34 bounds];
      v37 = v36;

      v38 = sub_1003175A4(v33, v32, v37);
      [v33 setFrame:{0.0, 0.0, v38, v39}];

      return;
    }

    goto LABEL_8;
  }

  v40 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    [v40 setFrame:{v44, v46, v48, v50}];
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100317204(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for ListTodayCardCollectionViewCell(0);
  if (swift_dynamicCastClass())
  {
    v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8];
    ObjectType = swift_getObjectType();
    if ((*(v6 + 160))(ObjectType, v6) == 4)
    {
      if (v2[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isDisappearing])
      {
        return;
      }

      if (v2[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isAppearing] == 1)
      {
        v8 = objc_opt_self();
        v9 = swift_allocObject();
        v9[2] = a1;
        v9[3] = a2;
        v9[4] = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_100317A38;
        *(v10 + 24) = v9;
        aBlock[4] = sub_1000349FC;
        aBlock[5] = v10;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001C5148;
        aBlock[3] = &unk_1008912D8;
        v11 = _Block_copy(aBlock);
        v12 = a1;
        v13 = v3;

        [v8 performWithoutAnimation:v11];
        _Block_release(v11);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  type metadata accessor for RiverTodayCardCollectionViewCell(0);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    v27 = [v2 view];
    if (v27)
    {
LABEL_15:
      v28 = v27;
      [v27 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      [a1 setFrame:{v30, v32, v34, v36}];
      return;
    }

    __break(1u);
LABEL_14:
    v27 = [v2 view];
    if (!v27)
    {
LABEL_20:
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  v16 = v15;
  *(v15 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_isDisappearing) = *(v3 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isDisappearing);
  v37 = a1;
  v17 = [v3 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame:{v20, v22, v24, v26}];
}

double sub_1003175A4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_isCardModeEnabled])
  {
    return a3;
  }

  v12 = [v3 traitCollection];
  v13 = sub_1007706CC();
  type metadata accessor for ListTodayCardCollectionViewCell(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  v15 = (*(a2 + 160))(ObjectType, a2);

  if (v15 != 6)
  {
LABEL_6:
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 6;
LABEL_7:
  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = 5;
  }

  sub_100316250(v4, v11);
  v18 = swift_getObjectType();
  v19 = *&v4[OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_todayCard];
  v20 = [v4 traitCollection];
  v21 = [v4 view];
  (*(a2 + 80))(v19, v17, 1, v11, v20, v21, v18, a2);

  (*(v8 + 8))(v11, v7);
  return a3;
}

id sub_10031781C(void *a1, int a2, id a3)
{
  result = [a3 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    return [a1 setFrame:{v7, v9, v11, v13}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100317990(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094FD50, &unk_100788D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003179F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100317A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100317A6C()
{
  sub_10000A5D4(&unk_100948AD0, "ޢ\a");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DE0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_1000FC71C(inited);
  swift_setDeallocating();
  sub_10000A5D4(&qword_100948AA0, &qword_10078B350);
  result = swift_arrayDestroy();
  qword_1009524A0 = v1;
  return result;
}

Class sub_100317C6C()
{
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100784DC0;
  sub_1001E2870();
  *(v0 + 32) = sub_100770EBC(0.0);
  v1 = objc_allocWithZone(NSNumber);
  LODWORD(v2) = 1057253870;
  *(v0 + 40) = [v1 initWithFloat:v2];
  result = sub_100770EBC(1.0).super.super.isa;
  *(v0 + 48) = result;
  qword_1009524B0 = v0;
  return result;
}

void sub_100317D0C()
{
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100784DC0;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.32];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.16];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.0];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  qword_1009524B8 = v0;
}

Class sub_100317EB0()
{
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10079B610;
  sub_1001E2870();
  *(v0 + 32) = sub_100770EBC(0.0);
  v1 = objc_allocWithZone(NSNumber);
  LODWORD(v2) = 1036831949;
  *(v0 + 40) = [v1 initWithFloat:v2];
  v3 = objc_allocWithZone(NSNumber);
  LODWORD(v4) = 1050141873;
  *(v0 + 48) = [v3 initWithFloat:v4];
  v5 = objc_allocWithZone(NSNumber);
  LODWORD(v6) = 0.5;
  *(v0 + 56) = [v5 initWithFloat:v6];
  result = sub_100770EBC(1.0).super.super.isa;
  *(v0 + 64) = result;
  qword_1009524C8 = v0;
  return result;
}

void sub_100317F90()
{
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10079B610;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.0];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.15];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.85];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  v11 = [v1 blackColor];
  v12 = [v11 CGColor];

  *(v0 + 56) = v12;
  v13 = [v1 blackColor];
  v14 = [v13 CGColor];

  *(v0 + 64) = v14;
  qword_1009524D0 = v0;
}

char *sub_100318188(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsTopEffect] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsBottomEffect] = 1;
  v9 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  *&v4[v10] = [objc_allocWithZone(CAGradientLayer) init];
  v11 = [objc_opt_self() effectWithBlurRadius:50.0];
  v12 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView;
  v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradient;
  *&v4[v14] = [objc_allocWithZone(CAGradientLayer) init];
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradientHeight];
  *v15 = 0;
  v15[8] = 1;
  v62.receiver = v4;
  v62.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  v16 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupBlending:0];

  [v16 setUserInteractionEnabled:0];
  v18 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer] setAnchorPoint:{0.0, 0.0}];
  v19 = qword_10093FE18;
  v20 = *&v16[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_1001E2870();
  isa = sub_1007701AC().super.isa;
  [v20 setLocations:isa];

  v22 = qword_10093FE20;
  v23 = *&v16[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  sub_10016D8F8(qword_1009524D0);
  v24 = sub_1007701AC().super.isa;

  [v23 setColors:v24];

  v25 = qword_10093FDF0;
  v26 = *&v16[v18];
  if (v25 != -1)
  {
    swift_once();
  }

  sub_10000A5D4(&qword_100948AE0, qword_1007988E0);
  v27 = sub_10076FE3C().super.isa;
  [v26 setActions:v27];

  v61 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView;
  v28 = [*&v16[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView] layer];
  [v28 setMask:*&v16[v18]];

  v29 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradient;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradient] setAnchorPoint:{0.0, 0.0}];
  v30 = *&v16[v29];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100785D70;
  v32 = v30;
  *(v31 + 32) = sub_100770EBC(0.0);
  *(v31 + 40) = sub_100770EBC(1.0);
  v33 = sub_1007701AC().super.isa;

  [v32 setLocations:v33];

  v34 = *&v16[v29];
  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100784500;
  v36 = objc_opt_self();
  v37 = v34;
  v38 = [v36 blackColor];
  v39 = [v38 colorWithAlphaComponent:0.5];

  v40 = [v39 CGColor];
  type metadata accessor for CGColor(0);
  v42 = v41;
  *(v35 + 56) = v41;
  *(v35 + 32) = v40;
  v43 = [v36 blackColor];
  v44 = [v43 colorWithAlphaComponent:0.25];

  v45 = [v44 CGColor];
  *(v35 + 88) = v42;
  *(v35 + 64) = v45;
  v46 = sub_1007701AC().super.isa;

  [v37 setColors:v46];

  v47 = *&v16[v29];
  v48 = sub_10076FE3C().super.isa;
  [v47 setActions:v48];

  v49 = [*&v16[v61] layer];
  [v49 addSublayer:*&v16[v29]];

  [v16 addSubview:*&v16[v61]];
  v50 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient;
  [*&v16[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient] setAnchorPoint:{0.0, 0.0}];
  v51 = qword_10093FE00;
  v52 = *&v16[v50];
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = sub_1007701AC().super.isa;
  [v52 setLocations:v53];

  v54 = qword_10093FE08;
  v55 = *&v16[v50];
  if (v54 != -1)
  {
    swift_once();
  }

  sub_10016D8F8(qword_1009524B8);
  v56 = sub_1007701AC().super.isa;

  [v55 setColors:v56];

  v57 = *&v16[v50];
  v58 = sub_10076FE3C().super.isa;
  [v57 setActions:v58];

  v59 = [v16 layer];
  [v59 addSublayer:*&v16[v50]];

  return v16;
}

id sub_1003189B0(uint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  [v1 bounds];
  Height = CGRectGetHeight(v16);
  if (qword_10093FDF8 != -1)
  {
    swift_once();
  }

  v3 = Height * *&qword_1009524A8;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient];
  [v1 bounds];
  MinX = CGRectGetMinX(v17);
  [v1 bounds];
  MinY = CGRectGetMinY(v18);
  [v1 bounds];
  [v4 setFrame:{MinX, MinY, CGRectGetWidth(v19), v3}];
  if (v1[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradientHeight + 8])
  {
    if (qword_10093FE10 != -1)
    {
      swift_once();
    }

    v7 = Height * *&qword_1009524C0;
  }

  else
  {
    v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradientHeight];
  }

  [v1 bounds];
  v8 = CGRectGetMinX(v20);
  [v1 bounds];
  v9 = CGRectGetMaxY(v21) - v7;
  [v1 bounds];
  Width = CGRectGetWidth(v22);
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView];
  [v11 setFrame:{v8, v9, Width, v7}];
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer];
  [v11 bounds];
  [v12 setFrame:?];
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradient];
  [v11 bounds];
  return [v13 setFrame:?];
}

id sub_100318C0C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100318CD0()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsTopEffect) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsBottomEffect) = 1;
  v1 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient;
  *(v0 + v1) = [objc_allocWithZone(CAGradientLayer) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  *(v0 + v2) = [objc_allocWithZone(CAGradientLayer) init];
  v3 = [objc_opt_self() effectWithBlurRadius:50.0];
  v4 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v3];

  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradient;
  *(v0 + v6) = [objc_allocWithZone(CAGradientLayer) init];
  v7 = v0 + OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradientHeight;
  *v7 = 0;
  *(v7 + 8) = 1;
  sub_10077156C();
  __break(1u);
}

BOOL sub_100318E24()
{
  ObjectType = swift_getObjectType();
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076727C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  __chkstk_darwin(v15);
  v19 = &v69 - v18;
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    return 1;
  }

  v72 = v10;
  v73 = v8;
  v75 = v4;
  v76 = v14;
  v74 = v12;
  v20 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems;
  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems];
  if (v21 >> 62)
  {
    v70 = v16;
    v62 = v17;
    v63 = v19;
    v64 = sub_10077158C();
    v19 = v63;
    v17 = v62;
    v22 = v64;
    v16 = v70;
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v3;
  if (v22 != 1)
  {
    return 1;
  }

  v24 = v11;
  v25 = *&v0[v20];
  if (v25 >> 62)
  {
    v70 = v16;
    v65 = v17;
    v66 = v19;
    v67 = sub_10077158C();
    v19 = v66;
    v17 = v65;
    v68 = v67;
    v16 = v70;
    v26 = v6;
    if (!v68)
    {
      return 1;
    }
  }

  else
  {
    v26 = v6;
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 1;
    }
  }

  v70 = v16;
  v71 = v0;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = v19;
    v28 = v17;

    sub_10077149C();
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_17;
    }

    v27 = v19;
    v28 = v17;
  }

  v29 = sub_10076157C();
  if (v29 >> 62)
  {
    v30 = sub_10077158C();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v71;

  if (v30)
  {

    return 1;
  }

  v33 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  if (!(*(v28 + 48))(&v31[v33], 1, v70))
  {
    v50 = &v31[v33];
    v51 = v70;
    (*(v28 + 16))(v27, v50, v70);
    sub_100761FEC();
    (*(v28 + 8))(v27, v51);
    sub_10076B8EC();
    v31 = v71;
    v53 = v52;

    if (v53)
    {

      return 1;
    }
  }

  v34 = *&v31[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];
  sub_10076422C();
  [v34 sizeThatFits:{v35, v36}];
  v1 = v37;
  v2 = v38;
  if (qword_10093FE40 != -1)
  {
    goto LABEL_34;
  }

LABEL_17:
  v39 = sub_10000A5D4(&unk_100952630, &qword_10079B710);
  sub_10000A61C(v39, qword_10099E610);
  v78[0] = v71;
  v40 = v71;
  sub_10075FDCC();

  if (sub_10076722C())
  {
    sub_10076422C();
    Width = CGRectGetWidth(v81);
    sub_10076422C();
    Height = CGRectGetHeight(v82) - v2;
  }

  else
  {
    sub_10076726C();
    v43 = v79;
    sub_10000CF78(v78, v79);
    v44 = v72;
    sub_1000FF02C(v43);
    sub_10076D40C();
    v46 = v45;
    (*(v73 + 8))(v44, v7);
    sub_10000CD74(v78);
    sub_10076422C();
    Width = CGRectGetWidth(v83) - (v1 + v46);
    sub_10076422C();
    Height = CGRectGetHeight(v84);
  }

  v47 = *&v40[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel];
  v48 = [v47 text];
  if (v48)
  {
    v49 = v48;
    ObjectType = sub_10076FF9C();
  }

  else
  {
    ObjectType = 0;
  }

  if (qword_10093FE38 != -1)
  {
    swift_once();
  }

  v54 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000A61C(v54, qword_100952540);
  v78[0] = v40;
  v55 = v40;
  sub_10075FDCC();

  [v47 numberOfLines];
  v56 = sub_10076C04C();
  v79 = v56;
  v80 = sub_10031DD98(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v57 = sub_10000DB7C(v78);
  (*(*(v56 - 8) + 104))(v57, enum case for Feature.measurement_with_labelplaceholder(_:), v56);
  sub_10076C90C();
  sub_10000CD74(v78);
  sub_10076991C();
  v59 = v58;

  (*(v75 + 8))(v26, v23);
  [v47 sizeThatFits:{Width, Height}];
  v61 = v60;

  (*(v74 + 8))(v76, v24);
  return floor(v61 - v59) > 0.0;
}

uint64_t sub_100319684()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076727C();
  sub_10000DB18(v4, qword_10099E5E0);
  v30 = sub_10000A61C(v4, qword_10099E5E0);
  if (qword_10093FE60 != -1)
  {
    swift_once();
  }

  v5 = qword_1009525A0;
  [v5 size];

  v6 = qword_1009525A0;
  [v6 contentInsets];

  v52[8] = &type metadata for Double;
  v52[9] = &protocol witness table for Double;
  v52[5] = 0x401C000000000000;
  if (qword_100940C28 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D3DC();
  v8 = sub_10000A61C(v7, qword_1009A1270);
  v9 = *(v7 - 8);
  v32 = *(v9 + 16);
  v10 = v9 + 16;
  v11 = v8;
  v34 = v7;
  v32(v3);
  v31 = enum case for FontSource.useCase(_:);
  v37 = v1[13];
  v38 = v1 + 13;
  v37(v3);
  v36 = sub_10076D9AC();
  v52[3] = v36;
  v52[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v49);
  v35 = v1[2];
  v35(v12, v3, v0);
  v29 = v1 + 2;
  sub_10076D9BC();
  v33 = v1[1];
  v33(v3, v0);
  v27 = v10;
  v28 = v1 + 1;
  v26 = v11;
  v13 = v7;
  v14 = v32;
  (v32)(v3, v11, v13);
  v15 = v31;
  (v37)(v3, v31, v0);
  v50 = v36;
  v51 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v46);
  v35(v16, v3, v0);
  sub_10076D9BC();
  v33(v3, v0);
  v48 = &protocol witness table for Double;
  v47 = &type metadata for Double;
  v46[0] = 0x4030000000000000;
  v14(v3, v11, v34);
  v17 = v15;
  v18 = v37;
  (v37)(v3, v17, v0);
  v19 = v36;
  v45[3] = v36;
  v45[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v42);
  v21 = v35;
  v35(v20, v3, v0);
  sub_10076D9BC();
  v22 = v33;
  v33(v3, v0);
  (v32)(v3, v26, v34);
  (v18)(v3, v31, v0);
  v43 = v19;
  v44 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v23 = sub_10000DB7C(v39);
  v21(v23, v3, v0);
  sub_10076D9BC();
  v22(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4034000000000000;
  return sub_10076723C();
}

uint64_t sub_100319C08()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076727C();
  sub_10000DB18(v4, qword_10099E5F8);
  v24[2] = sub_10000A61C(v4, qword_10099E5F8);
  if (qword_10093FE60 != -1)
  {
    swift_once();
  }

  v5 = qword_1009525A0;
  [v5 size];

  v6 = qword_1009525A0;
  [v6 contentInsets];

  v45[8] = &type metadata for Double;
  v45[9] = &protocol witness table for Double;
  v45[5] = 0x401C000000000000;
  if (qword_100940C20 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D3DC();
  v8 = sub_10000A61C(v7, qword_1009A1258);
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v29 = v8;
  v31 = v10;
  v11 = v9 + 16;
  (v10)(v3);
  v12 = v1[13];
  v27 = enum case for FontSource.useCase(_:);
  v28 = v1 + 13;
  v13 = v12;
  (v12)(v3);
  v26 = sub_10076D9AC();
  v45[3] = v26;
  v45[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v42);
  v30 = v1[2];
  v30(v14, v3, v0);
  sub_10076D9BC();
  v25 = v1[1];
  v25(v3, v0);
  if (qword_100940C28 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v7, qword_1009A1270);
  v31(v3, v15, v7);
  v24[0] = v7;
  v24[1] = v11;
  v13(v3, v27, v0);
  v43 = v26;
  v44 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v39);
  v30(v16, v3, v0);
  sub_10076D9BC();
  v25(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4030000000000000;
  v31(v3, v29, v7);
  v17 = v27;
  v18 = v13;
  v13(v3, v27, v0);
  v19 = v26;
  v38[3] = v26;
  v38[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v38);
  v36 = v0;
  v37 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v35);
  v30(v20, v3, v0);
  sub_10076D9BC();
  v21 = v25;
  v25(v3, v0);
  v31(v3, v29, v24[0]);
  v18(v3, v17, v0);
  v36 = v19;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v32);
  v30(v22, v3, v0);
  sub_10076D9BC();
  v21(v3, v0);
  v34 = &protocol witness table for Double;
  v33 = &type metadata for Double;
  v32[0] = 0x4034000000000000;
  return sub_10076723C();
}

uint64_t sub_10031A1BC()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000DB18(v7, qword_100952540);
  sub_10000A61C(v7, qword_100952540);
  if (qword_100940C28 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A1270);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940C20 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A1258);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDEC();
}

uint64_t sub_10031A39C(__n128 a1)
{
  v1 = sub_10076727C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  v8 = sub_10000A5D4(&unk_100952630, &qword_10079B710);
  sub_10000DB18(v8, qword_10099E610);
  sub_10000A61C(v8, qword_10099E610);
  if (qword_10093FE28 != -1)
  {
    swift_once();
  }

  v9 = sub_10000A61C(v1, qword_10099E5E0);
  v10 = *(v2 + 16);
  v10(v7, v9, v1);
  if (qword_10093FE30 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v1, qword_10099E5F8);
  v10(v4, v11, v1);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDEC();
}

uint64_t sub_10031A588()
{
  v0 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v0, qword_100952570);
  sub_10000A61C(v0, qword_100952570);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FECC();
}

uint64_t sub_10031A624@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = sub_10077070C();

  result = sub_10076722C();
  v6 = 2;
  if ((v4 ^ result))
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_10031A6A0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

uint64_t sub_10031A738()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_1009525A0 = v5;
  return result;
}

char *sub_10031A830(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_100952620, &qword_10079B6C8);
  __chkstk_darwin(v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_itemLayoutContext;
  v12 = sub_10076341C();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel] = 0;
  _s8ItemViewCMa();
  sub_10076D4CC();
  sub_100071820(&qword_100952628, &qword_100952620, &qword_10079B6C8, &protocol conformance descriptor for ViewRecycler<A>);
  sub_10076E18C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_separatorLineView] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isSeparatorDisplayed] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded] = 0;
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleText];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
  v16 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  if (qword_10093FE60 != -1)
  {
    swift_once();
  }

  v17 = [objc_allocWithZone(UIImageView) initWithImage:qword_1009525A0];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView] = v17;
  sub_1007626BC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel] = v19;
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel] = v20;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 contentView];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v23 = sub_100770D2C();
  [v22 setBackgroundColor:v23];

  v24 = [v21 contentView];
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v25 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView;
  v26 = *&v21[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView];
  v27 = sub_100770D1C();
  [v26 setTintColor:v27];

  v28 = [v21 contentView];
  [v28 addSubview:*&v21[v25]];

  v29 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel;
  v30 = *&v21[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];
  sub_10076266C();

  [*&v21[v29] setNumberOfLines:1];
  v31 = *&v21[v29];
  v32 = sub_100770D1C();
  [v31 setTextColor:v32];

  v33 = *&v21[v29];
  v34 = sub_100770D2C();
  [v33 setBackgroundColor:v34];

  v35 = [v21 contentView];
  [v35 addSubview:*&v21[v29]];

  v36 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel;
  v37 = *&v21[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel];
  sub_10076266C();

  [*&v21[v36] setNumberOfLines:1];
  v38 = *&v21[v36];
  v39 = sub_100770CFC();
  [v38 setTextColor:v39];

  v40 = *&v21[v36];
  v41 = sub_100770D2C();
  [v40 setBackgroundColor:v41];

  v42 = [v21 contentView];
  [v42 addSubview:*&v21[v36]];

  sub_10031ADC0();
  return v21;
}

void sub_10031ADC0()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];
  if (qword_10093FE48 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000A61C(v2, qword_100952558);
  v3 = v0;
  sub_10075FDCC();

  [v1 setTextAlignment:{v11, v0}];
  v4 = *&v3[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel];
  if (qword_10093FE50 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v2, qword_100952570);
  v5 = v3;
  sub_10075FDCC();

  [v4 setTextAlignment:{v11, v3}];
  v6 = *&v5[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel];
  if (v6)
  {
    v7 = qword_10093FE58;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v2, qword_100952588);
    v10 = v5;
    v9 = v5;
    sub_10075FDCC();

    [v8 setTextAlignment:{v11, v10}];
  }
}

void sub_10031AFEC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17[-v4];
  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "prepareForReuse", v3);
  v6 = &v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleText];
  *v6 = 0;
  *(v6 + 1) = 0;

  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel] setText:0];
  [v0 setNeedsLayout];
  v7 = &v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary];
  *v7 = 0;
  *(v7 + 1) = 0;

  sub_10031C0A4(v8);
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView] setHidden:0];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;

  v9 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailViews;
  swift_beginAccess();
  v10 = *&v0[v9];
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    *&v0[v9] = _swiftEmptyArrayStorage;

    v15 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_10031DCE8(v5, &v0[v16]);
    swift_endAccess();
    sub_10031C22C();
    sub_10000CFBC(v5, &qword_100952650, &unk_10079B720);
    return;
  }

  v11 = sub_10077158C();
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 >= 1)
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_10077149C();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      [v13 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_10031B2D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v63 = sub_10076E1EC();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10076E21C();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10076D1FC();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10076729C();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10076727C();
  v73 = *(v66 - 8);
  __chkstk_darwin(v66);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v52 - v9;
  v10 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_10076D3DC();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81.receiver = v1;
  v81.super_class = ObjectType;
  objc_msgSendSuper2(&v81, "layoutSubviews", v15);
  v18 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();

  if (qword_10093FE38 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000A61C(v19, qword_100952540);
  v78 = v1;
  v20 = v1;
  sub_10075FDCC();

  v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];
  v22 = *(v14 + 16);
  v22(v12, v17, v13);
  v61 = v14;
  v23 = *(v14 + 56);
  v23(v12, 0, 1, v13);
  v54 = v21;
  sub_1007625DC();
  v24 = *&v20[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel];
  v22(v12, v17, v13);
  v23(v12, 0, 1, v13);
  sub_1007625DC();
  v53 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel;
  v25 = *&v20[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel];
  if (v25)
  {
    v22(v12, v17, v13);
    v23(v12, 0, 1, v13);
    v26 = v25;
    sub_1007625DC();
  }

  v59 = v13;
  v60 = v17;
  v27 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded;
  [v24 setHidden:v20[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded]];
  v28 = *&v20[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView];
  if (v20[v27])
  {
    LOBYTE(v29) = 1;
  }

  else
  {
    v29 = !sub_100318E24();
  }

  v30 = v66;
  v31 = v55;
  [v28 setHidden:v29];
  if (qword_10093FE40 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A5D4(&unk_100952630, &qword_10079B710);
  sub_10000A61C(v32, qword_10099E610);
  v78 = v20;
  v33 = v72;
  sub_10075FDCC();
  sub_10076724C();
  v34 = [v20 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  sub_100770A8C();
  sub_10076725C();
  (*(v73 + 16))(v31, v33, v30);
  v35 = sub_1007626BC();
  v79 = v35;
  v80 = &protocol witness table for UILabel;
  v36 = v54;
  v77 = &protocol witness table for UILabel;
  v78 = v54;
  v76 = v35;
  v75 = v24;
  swift_beginAccess();
  v37 = v36;
  v38 = v24;

  sub_10016E560(v39);

  v40 = *&v20[v53];
  if (v40)
  {
    v41 = &protocol witness table for UIView;
  }

  else
  {
    v35 = 0;
    v41 = 0;
    v74[7] = 0;
    v74[6] = 0;
  }

  v74[5] = v40;
  v74[8] = v35;
  v74[9] = v41;
  v42 = sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
  v74[4] = &protocol witness table for UIView;
  v74[3] = v42;
  v74[0] = v28;
  v43 = v28;
  v44 = v40;
  v45 = v65;
  sub_10076728C();
  v46 = v56;
  sub_10076721C();
  (*(v57 + 8))(v46, v58);
  (*(v62 + 104))(v64, enum case for Separator.Position.bottom(_:), v63);
  v79 = sub_10076D67C();
  v80 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v78);
  sub_10076D66C();
  v47 = v69;
  sub_10076E1FC();
  v48 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_separatorLineView;
  swift_beginAccess();
  v49 = *&v20[v48];
  if (v49)
  {
    swift_endAccess();
    v50 = v49;
    sub_10076E1CC();
    [v50 setFrame:?];

    (*(v70 + 8))(v47, v71);
    (*(v67 + 8))(v45, v68);
    (*(v73 + 8))(v72, v30);
    return (*(v61 + 8))(v60, v59);
  }

  else
  {
    (*(v70 + 8))(v47, v71);
    (*(v67 + 8))(v45, v68);
    (*(v73 + 8))(v72, v30);
    (*(v61 + 8))(v60, v59);
    return swift_endAccess();
  }
}

void sub_10031BDF8()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded] != 1)
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView] setHidden:0];
LABEL_15:
    [v0 setNeedsLayout];
    return;
  }

  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_14:
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_disclosureView] setHidden:1];
    goto LABEL_15;
  }

  v2 = sub_10077158C();
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailViews;

    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_10077149C();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_10000A5D4(&unk_100952640, &qword_10079B718);
      sub_10076E15C();
      swift_endAccess();
      sub_10056D108(v5);
      v6 = [v0 contentView];
      [v6 addSubview:v8];

      swift_beginAccess();
      v7 = v8;
      sub_10077019C();
      if (*((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      ++v4;
      sub_10077025C();
      swift_endAccess();
    }

    while (v2 != v4);

    goto LABEL_14;
  }

  __break(1u);
}

id sub_10031C058@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(_s8ItemViewCMa()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_10031C0A4(double a1)
{
  if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel];
    v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems];
    if (v5 >> 62)
    {
      result = sub_10077158C();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v7 = v1;

          sub_10077149C();
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v7 = v1;
        }

        sub_10076151C();
        v9 = v8;

        if (v9)
        {
          v3 = sub_10076FF6C();
        }

        else
        {
          v3 = 0;
        }

        v1 = v7;
        goto LABEL_14;
      }
    }

    v3 = 0;
LABEL_14:
    [v4 setText:v3];
    goto LABEL_15;
  }

  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_summaryLabel];

  v3 = sub_10076FF6C();

  [v2 setText:v3];
LABEL_15:

  return [v1 setNeedsLayout];
}

void sub_10031C22C()
{
  v1 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded] == 1 && (v5 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction, swift_beginAccess(), !(*(v2 + 48))(&v0[v5], 1, v1)) && ((*(v2 + 16))(v4, &v0[v5], v1), v9 = v0, sub_100761FEC(), (*(v2 + 8))(v4, v1), sub_10076B8EC(), v11 = v10, , v11))
  {
    sub_1007626BC();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_10076260C();

    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v13 = v12;
    v14 = sub_100770E1C();
    [v13 setTextColor:v14];

    v15 = v13;
    v16 = sub_100770D2C();
    [v15 setBackgroundColor:v16];

    [v15 setUserInteractionEnabled:1];
    v17 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v9 action:"linkLabelTapped:"];
    [v15 addGestureRecognizer:v17];

    v18 = [v9 contentView];
    [v18 addSubview:v15];

    v19 = *&v9[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel];
    *&v9[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel] = v15;
    v8 = v15;

    [v9 setNeedsLayout];
  }

  else
  {
    v6 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel;
    v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel];
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *&v0[v6];
    }

    else
    {
      v8 = 0;
    }

    *&v0[v6] = 0;
  }
}

void sub_10031C59C(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = sub_10077070C();

  if (!a1 || (sub_10077070C() & 1) != (v4 & 1))
  {
    sub_10031ADC0();
  }
}

char *sub_10031C708()
{
  isUniquelyReferenced_nonNull_native = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_native = v44)
  {
    v48 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v46 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;

    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v47 = i;
    while (v48)
    {
      isUniquelyReferenced_nonNull_native = sub_10077149C();
      v5 = __OFADD__(v3, 1);
      v6 = v3 + 1;
      if (v5)
      {
        goto LABEL_41;
      }

LABEL_10:
      sub_10000A5D4(&qword_100952660, &qword_10079B730);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100783C60;
      *(inited + 32) = sub_10076152C();
      *(inited + 40) = v8;
      *(inited + 48) = sub_10076151C();
      *(inited + 56) = v9;
      *(inited + 64) = sub_10076156C();
      *(inited + 72) = v10;
      isUniquelyReferenced_nonNull_native = sub_10076157C();
      v11 = isUniquelyReferenced_nonNull_native;
      if (isUniquelyReferenced_nonNull_native >> 62)
      {
        isUniquelyReferenced_nonNull_native = sub_10077158C();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      else
      {
        v12 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v6;
      v50 = v4;
      if (v12)
      {
        if (v12 < 1)
        {
          goto LABEL_42;
        }

        v13 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
          }

          else
          {
          }

          v14 = sub_10076153C();
          v17 = *(inited + 16);
          v16 = *(inited + 24);
          if (v17 >= v16 >> 1)
          {
            v25 = v14;
            v26 = v15;
            v27 = sub_10049D6EC((v16 > 1), v17 + 1, 1, inited);
            v15 = v26;
            inited = v27;
            v14 = v25;
          }

          *(inited + 16) = v17 + 1;
          v18 = inited + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v15;
          v19 = sub_10076154C();
          v21 = v20;
          v23 = *(inited + 16);
          v22 = *(inited + 24);
          if (v23 >= v22 >> 1)
          {
            inited = sub_10049D6EC((v22 > 1), v23 + 1, 1, inited);
          }

          ++v13;

          *(inited + 16) = v23 + 1;
          v24 = inited + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
        }

        while (v12 != v13);
      }

      v28 = 0;
      v29 = *(inited + 16);
      v30 = _swiftEmptyArrayStorage;
LABEL_24:
      v31 = 16 * v28 + 40;
      while (v29 != v28)
      {
        if (v28 >= *(inited + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        ++v28;
        v32 = v31 + 16;
        v33 = *(inited + v31);
        v31 += 16;
        if (v33)
        {
          v34 = *(inited + v32 - 24);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_10049D954(0, *(v30 + 2) + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          v36 = *(v30 + 2);
          v35 = *(v30 + 3);
          if (v36 >= v35 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_10049D954((v35 > 1), v36 + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          *(v30 + 2) = v36 + 1;
          v37 = &v30[16 * v36];
          *(v37 + 4) = v34;
          *(v37 + 5) = v33;
          goto LABEL_24;
        }
      }

      sub_10000A5D4(&unk_10094BB60, &unk_100785530);
      sub_100071820(&qword_100943480, &unk_10094BB60, &unk_100785530, &protocol conformance descriptor for [A]);
      v38 = sub_10076FEFC();
      v40 = v39;

      v4 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_10049D954(0, *(v50 + 2) + 1, 1, v50);
      }

      v3 = v49;
      v42 = *(v4 + 2);
      v41 = *(v4 + 3);
      if (v42 >= v41 >> 1)
      {
        v4 = sub_10049D954((v41 > 1), v42 + 1, 1, v4);
      }

      *(v4 + 2) = v42 + 1;
      v43 = &v4[16 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v40;
      if (v49 == v47)
      {

        return v4;
      }
    }

    if (v3 >= *(v46 + 16))
    {
      goto LABEL_43;
    }

    v5 = __OFADD__(v3, 1);
    v6 = v3 + 1;
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v44 = isUniquelyReferenced_nonNull_native;
    i = sub_10077158C();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t type metadata accessor for AnnotationCollectionViewCell(uint64_t a1)
{
  result = qword_100952600;
  if (!qword_100952600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10031CDF0(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    sub_10031CF38(319);
    if (v2 <= 0x3F)
    {
      sub_1001D92E0(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10031CF38(uint64_t a1)
{
  if (!qword_100952618)
  {
    sub_10000CE78(&qword_100952620, &qword_10079B6C8);
    sub_100071820(&qword_100952628, &qword_100952620, &qword_10079B6C8, &protocol conformance descriptor for ViewRecycler<A>);
    v1 = sub_10076E19C();
    if (!v2)
    {
      atomic_store(v1, &qword_100952618);
    }
  }
}

void *sub_10031CFDC(char *a1, int a2, void *a3, __n128 a4, double a5)
{
  v78 = a2;
  v7 = sub_10076729C();
  v82 = *(v7 - 8);
  v83 = v7;
  __chkstk_darwin(v7);
  v79 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10076727C();
  v88 = *(v80 - 8);
  __chkstk_darwin(v80);
  v86 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v70 - v11;
  v85 = sub_10076997C();
  v89 = *(v85 - 8);
  __chkstk_darwin(v85);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076D3DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_10093FE38 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v18 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
    sub_10000A61C(v18, qword_100952540);
    v108[0] = a3;
    sub_10075FDCC();
    v81 = a3;
    v19 = [a3 traitCollection];
    v20 = sub_100770B3C();

    (*(v15 + 8))(v17, v14);
    sub_10075F4FC();
    v21 = sub_10076C04C();
    v108[3] = v21;
    v84 = sub_10031DD98(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v108[4] = v84;
    v22 = sub_10000DB7C(v108);
    v90 = a1;
    v23 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v24 = *(v21 - 8);
    v25 = *(v24 + 104);
    v26 = v24 + 104;
    v25(v22, enum case for Feature.measurement_with_labelplaceholder(_:), v21);
    v93 = v20;
    sub_10076C90C();
    sub_10000CD74(v108);
    sub_10076996C();
    sub_10076994C();
    v27 = v89 + 8;
    v28 = *(v89 + 8);
    v29 = v85;
    v28(v13, v85);
    sub_10075F50C();
    v92 = v30;
    v107[3] = v21;
    v107[4] = v84;
    v31 = sub_10000DB7C(v107);
    v75 = v23;
    v32 = v23;
    v33 = v21;
    v73 = v26;
    v74 = v25;
    v25(v31, v32, v21);
    v34 = v93;
    v17 = sub_10076C90C();
    sub_10000CD74(v107);
    sub_10076996C();
    sub_10076994C();
    v72 = v28;
    v28(v13, v29);
    v35 = sub_10075F4EC();
    v36 = v35;
    v15 = v35 >> 62;
    v37 = v35 >> 62 ? sub_10077158C() : *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v89 = v27;
    v76 = v33;
    v77 = v13;
    if (!v37)
    {
      break;
    }

    *&v101 = _swiftEmptyArrayStorage;
    result = sub_1004BB7D4(0, v37 & ~(v37 >> 63), 0);
    if (v37 < 0)
    {
      __break(1u);
      return result;
    }

    a3 = v101;
    v71 = v34;
    v92 = v37;
    v91 = v36 & 0xFFFFFFFFFFFFFF8;
    if (v15)
    {
      v39 = sub_10077158C();
    }

    else
    {
      v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v36;
    v93 = (v36 & 0xC000000000000001);
    v43 = _s8ItemViewCMa();
    a1 = 0;
    v13 = (v39 & ~(v39 >> 63));
    while (v13 != a1)
    {
      if (v93)
      {
        v44 = sub_10077149C();
      }

      else
      {
        if (a1 >= *(v91 + 16))
        {
          goto LABEL_30;
        }

        v44 = *(v14 + 8 * a1 + 32);
      }

      v45 = swift_allocObject();
      *(v45 + 16) = v43;
      *(v45 + 24) = v44;
      v46 = sub_10076DDDC();
      swift_allocObject();

      v47 = sub_10076DD9C();
      *(&v105 + 1) = v46;
      v106 = &protocol witness table for LayoutViewPlaceholder;

      *&v104 = v47;
      *&v101 = a3;
      v49 = a3[2];
      v48 = a3[3];
      if (v49 >= v48 >> 1)
      {
        sub_1004BB7D4((v48 > 1), v49 + 1, 1);
      }

      ++a1;
      v50 = *(&v105 + 1);
      v15 = v106;
      v51 = sub_10008B8A4(&v104, *(&v105 + 1));
      v52 = __chkstk_darwin(v51);
      v17 = &v70 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v17, v52);
      sub_10016FC14(v49, v17, &v101, v50, v15);
      sub_10000CD74(&v104);
      a3 = v101;
      if (v92 == a1)
      {

        v41 = v82;
        v40 = v83;
        v42 = v81;
        v34 = v71;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v41 = v82;
  v40 = v83;
  v42 = v81;
LABEL_20:
  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  if (sub_10075F4CC())
  {
    sub_10076B8EC();
    v56 = v55;

    if (v56)
    {
      v57 = v76;
      *(&v102 + 1) = v76;
      v103 = v84;
      v58 = sub_10000DB7C(&v101);
      v74(v58, v75, v57);
      v59 = v34;
      sub_10076C90C();
      sub_10000CD74(&v101);
      v60 = v77;
      sub_10076996C();
      sub_10076994C();
      v72(v60, v85);
      sub_10000CFBC(&v104, &qword_10094BB30, qword_100796E40);
      v104 = v101;
      v105 = v102;
      v106 = v103;
    }
  }

  if (qword_10093FE40 != -1)
  {
    swift_once();
  }

  v61 = sub_10000A5D4(&unk_100952630, &qword_10079B710);
  sub_10000A61C(v61, qword_10099E610);
  *&v101 = v42;
  v62 = v87;
  sub_10075FDCC();
  sub_10076724C();
  v63 = [v42 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  sub_100770A8C();
  sub_10076725C();
  v64 = v80;
  (*(v88 + 16))(v86, v62, v80);
  sub_10000A570(v108, &v101);
  sub_10000A570(v107, &v100);
  sub_100016E2C(&v104, &v94, &qword_10094BB30, qword_100796E40);
  v65 = *(&v95 + 1);
  if (*(&v95 + 1))
  {
    v66 = v96;
    v67 = sub_10000CF78(&v94, *(&v95 + 1));
    *(&v98 + 1) = v65;
    v99 = *(v66 + 8);
    v68 = sub_10000DB7C(&v97);
    (*(*(v65 - 8) + 16))(v68, v67, v65);
    sub_10000CD74(&v94);
  }

  else
  {
    sub_10000CFBC(&v94, &qword_10094BB30, qword_100796E40);
    v97 = 0u;
    v98 = 0u;
    v99 = 0;
  }

  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v69 = v79;
  sub_10076728C();
  sub_10031DD98(&qword_100952658, &type metadata accessor for ProductAnnotationLayout, &protocol conformance descriptor for ProductAnnotationLayout);
  sub_10076D2AC();

  (*(v41 + 8))(v69, v40);
  (*(v88 + 8))(v87, v64);
  sub_10000CFBC(&v104, &qword_10094BB30, qword_100796E40);
  sub_10000CD74(v107);
  return sub_10000CD74(v108);
}

void sub_10031DB84()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;

    return;
  }

  v4 = sub_10077158C();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      swift_beginAccess();
      sub_10000A5D4(&unk_100952640, &qword_10079B718);
      sub_10076E17C();
      swift_endAccess();
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_10031DCE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031DD58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10031DD98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10031DDE0()
{
  v1 = sub_10000A5D4(&qword_100952620, &qword_10079B6C8);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_itemLayoutContext;
  v3 = sub_10076341C();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkLabel) = 0;
  _s8ItemViewCMa();
  sub_10076D4CC();
  sub_100071820(&qword_100952628, &qword_100952620, &qword_10079B6C8, &protocol conformance descriptor for ViewRecycler<A>);
  sub_10076E18C();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_separatorLineView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isSeparatorDisplayed) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
  v7 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10031E00C()
{
  v1 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_100016E2C(v0 + v11, v6, &qword_100952650, &unk_10079B720);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_100952650;
    v13 = &unk_10079B720;
    v14 = v6;
    return sub_10000CFBC(v14, v12, v13);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_100761FDC();
  v15 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();

  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v3, 1, v15) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_100943200;
    v13 = &unk_100785840;
    v14 = v3;
    return sub_10000CFBC(v14, v12, v13);
  }

  sub_100761FEC();
  v18 = sub_100761FDC();
  sub_100263BF0(v19, 1, v18, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v16 + 8))(v3, v15);
}

double sub_10031E38C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076219C();
  sub_10031E588(&qword_100952668, &type metadata accessor for PrivacyCategory, &protocol conformance descriptor for PrivacyCategory);
  sub_10076332C();
  v4 = v11;
  if (!v11)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v1 + 8))(v3, v0);
  v5 = sub_100630CB4();
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v11 = sub_1001052B0(v4, v5, v6);
  sub_10076DDDC();
  sub_10076D2AC();
  v8 = v7;

  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_10031E588(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10031E5D4(__int32 a1)
{
  v54.i32[0] = a1;
  v1 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v1 - 8);
  v56 = v40 - v2;
  v55 = sub_10076C2DC();
  v3 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v48 = (v40 - v6);
  __chkstk_darwin(v7);
  v9 = (v40 - v8);
  v10 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v10 - 8);
  v51 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v50 = v40 - v13;
  __chkstk_darwin(v14);
  v49 = v40 - v15;
  __chkstk_darwin(v16);
  v45 = v40 - v17;
  __chkstk_darwin(v18);
  v44 = v40 - v19;
  __chkstk_darwin(v20);
  v43 = v40 - v21;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v26 = *(sub_10076C20C() - 8);
  v42 = *(v26 + 72);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v46 = 2 * v42;
  v28 = swift_allocObject();
  v47 = v28;
  *(v28 + 16) = xmmword_100783C60;
  v29 = v28 + v27;
  v57 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  sub_10076C28C();
  v57 = 0x4034000000000000;
  sub_10076C29C();
  v30 = vdup_n_s32((v54.i8[0] & 1) == 0);
  v31.i64[0] = v30.u32[0];
  v31.i64[1] = v30.u32[1];
  v54 = vcltzq_s64(vshlq_n_s64(v31, 0x3FuLL));
  *v9 = vbslq_s8(v54, xmmword_10079B7D0, xmmword_10079B7C0);
  v41 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v32 = *(v3 + 104);
  v40[2] = v3 + 104;
  v53 = v32;
  v33 = v9;
  v34 = v55;
  (v32)(v33);
  LOBYTE(v57) = 0;
  sub_10076C29C();
  v57 = 0;
  sub_10076C29C();
  v40[1] = v29;
  sub_10076C1CC();
  v57 = 0x3FF0000000000000;
  sub_10076C29C();
  sub_10076C28C();
  v57 = 0x4034000000000000;
  sub_10076C29C();
  v35 = v48;
  *v48 = vbslq_s8(v54, xmmword_10079B7F0, xmmword_10079B7E0);
  v36 = v41;
  v53(v35, v41, v34);
  LOBYTE(v57) = 0;
  sub_10076C29C();
  v57 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v57 = 0x3FF0000000000000;
  sub_10076C29C();
  sub_10076C28C();
  v57 = 0x4034000000000000;
  sub_10076C29C();
  v38 = v52;
  v37 = v53;
  *v52 = vbslq_s8(v54, xmmword_10079B810, xmmword_10079B800);
  v37(v38, v36, v55);
  LOBYTE(v57) = 0;
  sub_10076C29C();
  v57 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v47;
}

uint64_t sub_10031ED1C()
{
  v0 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_10076C2DC();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v15 = *(sub_10076C20C() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007844F0;
  v43 = v17 + v16;
  v49 = 0x4000000000000000;
  sub_10001E290();
  sub_10076C29C();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_10076C27C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
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
  sub_10076C29C();
  v49 = 0;
  v41 = v7;
  sub_10076C29C();
  v38 = v14;
  v42 = v11;
  sub_10076C1CC();
  v49 = 0x4000000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_10076C27C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_10076C1CC();
  v49 = 0x4008000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v33 = 2 * v27 + v45;
  v49 = 0x4008000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_1007704BC();
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v33 = 4 * v45;
  v49 = 0x4010000000000000;
  sub_10076C29C();
  v49 = 0x4038000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v49 = 0x4014000000000000;
  sub_10076C29C();
  v49 = 0x4038000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_100952670 = v37;
  return result;
}

uint64_t sub_10031F6EC()
{
  v0 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_10076C2DC();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v15 = *(sub_10076C20C() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007844F0;
  v43 = v17 + v16;
  v49 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_10076C27C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
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
  sub_10076C29C();
  v49 = 0;
  v41 = v7;
  sub_10076C29C();
  v38 = v14;
  v42 = v11;
  sub_10076C1CC();
  v49 = 0x3FF8000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_10076C27C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_10076C1CC();
  v49 = 0x4000000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v33 = 2 * v27 + v45;
  v49 = 0x4000000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_1007704BC();
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v33 = 4 * v45;
  v49 = 0x4008000000000000;
  sub_10076C29C();
  v49 = 0x4038000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v49 = 0x4010000000000000;
  sub_10076C29C();
  v49 = 0x4038000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_100952678 = v37;
  return result;
}

void sub_1003200BC()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    sub_10023428C(_swiftEmptyArrayStorage);

    return;
  }

  sub_1004BBAA4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_10077149C();
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      [v4 contentOffset];
      v7 = v6;
      [v5 adjustedContentInset];
      v9 = v8;

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_1004BBAA4((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *&_swiftEmptyArrayStorage[v11 + 4] = v7 + v9;
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_100320250()
{

  sub_1000167E0(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

void sub_1003202B4()
{
  sub_1003200BC();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v1;
    v4 = *(v0 + 32);

    v2(v5, v3);

    sub_1000167E0(v2, v4);
  }
}

char *sub_100320328(double a1, double a2, double a3, double a4)
{
  v9 = sub_10076F9AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_itemLayoutContext;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_reviewsView;
  type metadata accessor for ProductReviewView();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = type metadata accessor for ProductReviewCollectionViewCell(0);
  v26.receiver = v4;
  v26.super_class = v16;
  v17 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v18 = objc_allocWithZone(UIView);
  v19 = v17;
  v20 = [v18 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21 = [v20 layer];
  [v21 setCornerRadius:20.0];

  [v19 setBackgroundView:v20];
  v22 = [v19 contentView];

  [v22 addSubview:*&v19[OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_reviewsView]];
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  sub_10076F91C();
  sub_10000CFBC(v24, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v25, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v10 + 8))(v12, v9);
  return v19;
}

double sub_1003206DC()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductReviewCollectionViewCell(0);
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_reviewsView];
  v2 = (v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler);
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3, v4);
  v5 = (v1 + OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler);
  v6 = *v5;
  v7 = v5[1];
  *v5 = 0;
  v5[1] = 0;
  sub_1000167E0(v6, v7);
  v8 = *v2;
  v9 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v8, v9);
  v10 = *v5;
  v11 = v5[1];
  *v5 = 0;
  v5[1] = 0;
  return sub_1000167E0(v10, v11);
}

id sub_1003207C0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProductReviewCollectionViewCell(0);
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_reviewsView];
  [v0 bounds];
  return [v4 setFrame:?];
}

uint64_t sub_100320908(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v7 = a1;
  }

  v8 = *&a1[OBJC_IVAR____TtC20ProductPageExtension31ProductReviewCollectionViewCell_reviewsView] + *a4;
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v9(v11);
    sub_1000167E0(v9, v10);
  }

  return sub_10000CFBC(v13, &unk_1009434C0, &qword_100783F60);
}

id sub_100320AC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductReviewCollectionViewCell(uint64_t a1)
{
  result = qword_100952750;
  if (!qword_100952750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100320BB0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20ProductPageExtension28TabPlaceholderViewController_storeTab;
  v6 = sub_10075F37C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  v10 = sub_1006FC188(v9);
  if (v10)
  {
    v11 = v10;
    [v8 setTabBarItem:v10];
    v12 = [v8 title];
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = [v8 title];
    if (v13)
    {
      v14 = v13;
      v15 = sub_10076FF9C();
      v17 = v16;

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (!v18)
      {
LABEL_7:
        v19 = [v11 title];
        if (v19)
        {
          v20 = v19;
          sub_10076FF9C();
        }

        else
        {
          sub_10075F36C();
          if (!v22)
          {
            v23 = 0;
            goto LABEL_15;
          }
        }

        v23 = sub_10076FF6C();

LABEL_15:
        [v8 setTitle:v23];
      }
    }
  }

  else
  {
    sub_10075F36C();
    if (v21)
    {
      v11 = sub_10076FF6C();
    }

    else
    {
      v11 = 0;
    }

    [v8 setTitle:v11];
  }

  result = [v8 view];
  if (result)
  {
    v25 = result;
    v26 = [objc_opt_self() systemBackgroundColor];
    [v25 setBackgroundColor:v26];

    (*(v7 + 8))(a1, v6);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100320E9C(uint64_t a1)
{
  v91 = a1;
  v84 = sub_10000A5D4(&unk_100964140, &unk_1007869B0);
  __chkstk_darwin(v84);
  v85 = &v82 - v1;
  v2 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v2 - 8);
  v82 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = &v82 - v5;
  __chkstk_darwin(v6);
  v88 = &v82 - v7;
  v8 = sub_10075DB7C();
  v9 = *(v8 - 8);
  v89 = v8;
  v90 = v9;
  __chkstk_darwin(v8);
  v83 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v82 - v12;
  v13 = sub_10000A5D4(&qword_100952798, qword_10079B960);
  __chkstk_darwin(v13);
  v15 = &v82 - v14;
  v16 = sub_10000A5D4(&unk_10094A890, &unk_100786A70);
  __chkstk_darwin(v16 - 8);
  v18 = &v82 - v17;
  v19 = type metadata accessor for FlowDestination(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v82 - v24;
  __chkstk_darwin(v26);
  v28 = &v82 - v27;
  __chkstk_darwin(v29);
  v31 = &v82 - v30;
  sub_1006FB794(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v33 = &unk_10094A890;
    v34 = &unk_100786A70;
    v35 = v18;
LABEL_27:
    sub_10000CFBC(v35, v33, v34);
    v47 = 0;
    return v47 & 1;
  }

  sub_10005DAD8(v18, v31, v32);
  v36 = &v15[*(v13 + 48)];
  sub_10005C684(v31, v15, v37);
  sub_10005C684(v91, v36, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_10005C684(v15, v25, v40);

        v51 = sub_10000A5D4(&unk_100964150, &qword_1007869C0);
        v52 = *(v51 + 48);
        if (swift_getEnumCaseMultiPayload() == 8)
        {

          v54 = *(v51 + 48);
          v55 = v88;
          sub_100050DA4(&v25[v52], v88);
          v56 = v36 + v54;
          v57 = v87;
          sub_100050DA4(v56, v87);
          v58 = v85;
          v59 = *(v84 + 48);
          sub_100050CC0(v55, v85);
          sub_100050CC0(v57, v58 + v59);
          v60 = v89;
          v61 = *(v90 + 48);
          if (v61(v58, 1, v89) == 1)
          {
            sub_10000CFBC(v57, &unk_1009435D0, &qword_100785850);
            sub_10000CFBC(v55, &unk_1009435D0, &qword_100785850);
            sub_10005C6E8(v31, v62);
            if (v61(v58 + v59, 1, v60) == 1)
            {
              sub_10000CFBC(v58, &unk_1009435D0, &qword_100785850);
              v47 = 1;
              goto LABEL_33;
            }
          }

          else
          {
            v73 = v82;
            sub_100050CC0(v58, v82);
            if (v61(v58 + v59, 1, v60) != 1)
            {
              v75 = v90;
              v76 = v86;
              v77 = (*(v90 + 32))(v86, v58 + v59, v60);
              sub_100321948(v77, v78, v79);
              v47 = sub_10076FF1C();
              v80 = *(v75 + 8);
              v80(v76, v60);
              sub_10000CFBC(v87, &unk_1009435D0, &qword_100785850);
              sub_10000CFBC(v88, &unk_1009435D0, &qword_100785850);
              sub_10005C6E8(v31, v81);
              v80(v73, v60);
              sub_10000CFBC(v58, &unk_1009435D0, &qword_100785850);
              goto LABEL_33;
            }

            sub_10000CFBC(v87, &unk_1009435D0, &qword_100785850);
            sub_10000CFBC(v88, &unk_1009435D0, &qword_100785850);
            sub_10005C6E8(v31, v74);
            (*(v90 + 8))(v73, v60);
          }

          sub_10000CFBC(v58, &unk_100964140, &unk_1007869B0);
          v47 = 0;
          goto LABEL_33;
        }

        sub_10005C6E8(v31, v53);
        sub_10000CFBC(&v25[v52], &unk_1009435D0, &qword_100785850);
LABEL_26:
        v33 = &qword_100952798;
        v34 = qword_10079B960;
        v35 = v15;
        goto LABEL_27;
      }

LABEL_22:
      sub_10005C6E8(v31, v40);
      goto LABEL_26;
    }

    sub_10005C6E8(v31, v40);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_26;
    }

    sub_10005C6E8(v36, v70);
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 13:
        sub_10005C6E8(v31, v40);
        sub_10005C684(v15, v22, v63);

        v64 = sub_10000A5D4(&qword_1009499D0, &unk_10078C7C0);
        v65 = *(v64 + 48);
        if (swift_getEnumCaseMultiPayload() != 13)
        {
          v71 = sub_1007615AC();
          (*(*(v71 - 8) + 8))(&v22[v65], v71);
          goto LABEL_26;
        }

        v66 = *(v64 + 48);
        v67 = sub_1007615AC();
        v68 = *(*(v67 - 8) + 8);
        v68(v36 + v66, v67);
        v68(&v22[v65], v67);
        break;
      case 44:
        sub_10005C6E8(v31, v40);
        if (swift_getEnumCaseMultiPayload() != 44)
        {
          goto LABEL_26;
        }

        break;
      case 20:
        sub_10005C684(v15, v28, v40);
        if (swift_getEnumCaseMultiPayload() == 20)
        {
          v42 = v89;
          v43 = v90;
          v44 = *(v90 + 32);
          v45 = v86;
          v44(v86, v28, v89);
          v46 = v83;
          v44(v83, v36, v42);
          v47 = sub_10075DB2C();
          v48 = *(v43 + 8);
          v48(v46, v42);
          v49.n128_f64[0] = v48(v45, v42);
          sub_10005C6E8(v31, v49);
LABEL_33:
          sub_10005C6E8(v15, v50);
          return v47 & 1;
        }

        sub_10005C6E8(v31, v41);
        (*(v90 + 8))(v28, v89);
        goto LABEL_26;
      default:
        goto LABEL_22;
    }
  }

  sub_10005C6E8(v15, v69);
  v47 = 1;
  return v47 & 1;
}

uint64_t type metadata accessor for TabPlaceholderViewController(uint64_t a1)
{
  result = qword_100952788;
  if (!qword_100952788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100321890(uint64_t a1)
{
  result = sub_10075F37C();
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

unint64_t sub_100321948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100944C38;
  if (!qword_100944C38)
  {
    sub_10075DB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C38);
  }

  return result;
}

uint64_t sub_1003219A0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_100321A10(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076340C();
  v9 = sub_10075E0AC();
  (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      if (a1)
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 8);
        v14 = a1;
        v15 = v13(ObjectType, v11);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
          v18 = [Strong view];

          if (!v18)
          {
            __break(1u);
            return;
          }

          v19 = [v18 safeAreaLayoutGuide];

          [v19 layoutFrame];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v39.origin.x = v21;
          v39.origin.y = v23;
          v39.size.width = v25;
          v39.size.height = v27;
          MinY = CGRectGetMinY(v39);
        }

        else
        {
          MinY = 0.0;
        }

        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v31 = *&v29[qword_10099CC30];
          if (v31)
          {
            v32 = v15 - MinY;

            if (v32 == *(v31 + 32))
            {

              return;
            }

            *(v31 + 32) = v32;
            [a3 _systemContentInset];
            v34 = v33;
            [a3 contentOffset];
            v36 = v35;
            [a3 contentInset];
            (*(v31 + 16))(v34 + v36 + v37 > *(v31 + 32));
          }

          else
          {
          }
        }
      }
    }
  }
}

uint64_t sub_100321CD8()
{
  v0 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v0, qword_100952860);
  sub_10000A61C(v0, qword_100952860);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

uint64_t sub_100321D8C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10076D9AC();
  __chkstk_darwin(v26);
  v25 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  if (qword_100940CB8 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A1420);
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
  v17 = sub_10000DB7C(v28);
  v18 = v4[2];
  v18(v17, v6, v3);
  sub_10076D9BC();
  v23[1] = v10;
  v19 = v4[1];
  v19(v6, v3);
  if (qword_100940CB0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v11, qword_1009A1408);
  v24(v6, v20, v11);
  v16(v6, v15, v3);
  v29 = v3;
  v30 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v28);
  v18(v21, v6, v3);
  sub_10076D9BC();
  v19(v6, v3);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDEC();
}

uint64_t sub_1003220C4()
{
  v0 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000DB18(v0, qword_10099E680);
  sub_10000A61C(v0, qword_10099E680);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDEC();
}

uint64_t sub_10032215C()
{
  v0 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10000DB18(v0, qword_10099E698);
  sub_10000A61C(v0, qword_10099E698);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDFC();
}

char *sub_1003221F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38[-1] - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView] = 0;
  v15 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_textLabel;
  sub_1007626BC();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage] = 0;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_textLabel;
  v19 = qword_10093FE88;
  v20 = *&v16[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_textLabel];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10000A61C(v21, qword_10099E698);
  v22 = [v16 traitCollection];
  sub_10075FDBC();

  [v20 setNumberOfLines:v38[0]];
  [*&v16[v18] _setTextColorFollowsTintColor:1];
  v23 = *&v16[v18];
  v24 = [v16 traitCollection];

  v25 = sub_1007706FC();
  if (v25)
  {
    if (qword_100940CB8 != -1)
    {
      swift_once();
    }

    v26 = qword_1009A1420;
  }

  else
  {
    if (qword_100940CB0 != -1)
    {
      swift_once();
    }

    v26 = qword_1009A1408;
  }

  v27 = sub_10076D3DC();
  v28 = sub_10000A61C(v27, v26);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v12, v28, v27);
  (*(v29 + 56))(v12, 0, 1, v27);
  sub_1007625DC();

  v30 = qword_10093FE78;
  v31 = *&v16[v18];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000A61C(v32, qword_100952860);
  v38[4] = v16;
  v33 = v16;
  sub_10075FDCC();

  sub_100770E7C();
  v34 = [v33 contentView];
  [v34 addSubview:*&v16[v18]];

  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100783DD0;
  *(v35 + 32) = sub_10076E88C();
  *(v35 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v38[3] = ObjectType;
  v38[0] = v33;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v38);
  return v33;
}

void sub_100322748(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView];
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

id sub_10032280C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView];
  if (v2 || (sub_100322748([objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}]), (v2 = *&v0[v1]) != 0))
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage];
    v4 = v2;
    if (v3)
    {
      v3 = [v3 imageWithRenderingMode:2];
    }

    [v4 setImage:v3];
  }

  return [v0 setNeedsLayout];
}

id sub_10032295C()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v2 = [v0 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  v12 = sub_1007706FC();

  v13 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView];
  if (v14)
  {
    [v14 sizeThatFits:{v8, v10}];
    v15 = [v1 traitCollection];
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

    sub_100770A8C();
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
    sub_100770A4C();
    [v31 setFrame:?];
  }

  if (qword_10093FE80 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000A61C(v32, qword_10099E680);
  v33 = v1;
  sub_10075FDCC();

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
  v35 = *&v33[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_textLabel];
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
  sub_100770A4C();
  return [v35 setFrame:?];
}

double sub_100322D48(uint64_t a1)
{
  v25 = sub_10077164C();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_1009528B8, &qword_10079BB08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_10076D9AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100321D8C(v8);
  v26 = a1;
  sub_10075FDCC();
  v13 = v6 + 8;
  v14 = *(v6 + 8);
  v24[3] = v13;
  v14(v8, v5);
  sub_10076D17C();
  sub_10076D40C();
  v16 = v15;
  v17 = v2 + 8;
  v18 = *(v2 + 8);
  v24[2] = v17;
  v18(v4, v25);
  v19 = v10 + 8;
  v20 = *(v10 + 8);
  v24[1] = v19;
  v20(v12, v9);
  sub_100321D8C(v8);
  v26 = a1;
  sub_10075FDCC();
  v14(v8, v5);
  sub_10076D17C();
  sub_10076D40C();
  v22 = v21;
  v18(v4, v25);
  v20(v12, v9);
  return v16 + v22;
}

id sub_100323054(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10093FE78 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v6, qword_100952860);
    v7 = v1;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

id sub_1003231F4()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = v16 - v4;
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_textLabel];
  v7 = [v0 traitCollection];
  v8 = sub_1007706FC();

  if (v8)
  {
    if (qword_100940CB8 != -1)
    {
      swift_once();
    }

    v9 = qword_1009A1420;
  }

  else
  {
    if (qword_100940CB0 != -1)
    {
      swift_once();
    }

    v9 = qword_1009A1408;
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, v9);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v5, v11, v10);
  sub_10076D3DC();
  (*(v12 + 56))(v5, 0, 1, v10);
  sub_1007625DC();
  if (qword_10093FE88 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10000A61C(v13, qword_10099E698);
  v14 = [v1 traitCollection];
  sub_10075FDBC();

  [v6 setNumberOfLines:v16[1]];
  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for ProductPageLinkCollectionViewCell(uint64_t a1)
{
  result = qword_1009528A0;
  if (!qword_1009528A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10032358C(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100323634()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImageView) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_textLabel;
  sub_1007626BC();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10032371C()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099E6D0);
  sub_10000A61C(v0, qword_10099E6D0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100323880(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  v36 = a1;
  sub_1007639FC();
  if (qword_100940AF0 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0EE0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = sub_10076D9AC();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  sub_10076D9BC();
  v14 = v3[1];
  v14(v5, v2);
  sub_100763ABC();
  if (qword_100940AE8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v6, qword_1009A0EC8);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v38);
  v34(v15, v5, v2);
  sub_10076D9BC();
  v14(v5, v2);
  sub_100763A3C();
  v32 = v14;
  if (qword_100940AD8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_1009A0E98);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v38);
  v34(v18, v5, v2);
  sub_10076D9BC();
  v32(v5, v2);
  sub_1007639DC();
  v19 = v11;
  if (qword_100940AE0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v6, qword_1009A0EB0);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  sub_10076D9BC();
  v24 = v32;
  v32(v5, v2);
  sub_100763ACC();
  sub_100763A1C();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v38);
  v23(v25, v5, v2);
  sub_10076D9BC();
  v24(v5, v2);
  return sub_100763A2C();
}

uint64_t sub_100323E68()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099E6E8);
  sub_10000A61C(v0, qword_10099E6E8);
  if (qword_10093FE90 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099E6D0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100323FCC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D39C();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_10000DB18(v7, qword_10099E700);
  v74 = v7;
  v75 = sub_10000A61C(v7, qword_10099E700);
  v76 = v6;
  sub_10076D3AC();
  v167 = &type metadata for Double;
  v168 = &protocol witness table for Double;
  v165 = &protocol witness table for Double;
  *&v166 = 0x4030000000000000;
  v164 = &type metadata for Double;
  *&v163 = 0x4030000000000000;
  if (qword_10093FED0 != -1)
  {
    swift_once();
  }

  v8 = qword_1009528E0;
  *v3 = qword_1009528E0;
  v80 = enum case for FontSource.textStyle(_:);
  v82 = v1[13];
  v82(v3);
  v81 = sub_10076D9AC();
  v161 = v81;
  v162 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v160);
  v158 = v0;
  v159 = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(&v157);
  v10 = v1[2];
  v10(v9, v3, v0);
  v11 = v8;
  sub_10076D9BC();
  v12 = v1[1];
  v12(v3, v0);
  v158 = &type metadata for Double;
  v159 = &protocol witness table for Double;
  *&v157 = 0x4030000000000000;
  v156 = &protocol witness table for Double;
  v155 = &type metadata for Double;
  *&v154 = 0x4030000000000000;
  v13 = sub_10076D67C();
  v152 = v13;
  v153 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v151);
  sub_10076D66C();
  v73 = v13;
  v149 = v13;
  v150 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v148);
  sub_10076D66C();
  v14 = qword_1009528E0;
  *v3 = qword_1009528E0;
  v86 = v1 + 13;
  (v82)(v3, v80, v0);
  v146 = v81;
  v147 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v145);
  v143 = v0;
  v144 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v142);
  v83 = v10;
  v84 = v1 + 2;
  v10(v15, v3, v0);
  v16 = v14;
  sub_10076D9BC();
  v85 = v1 + 1;
  v79 = v12;
  v12(v3, v0);
  if (qword_10093FED8 != -1)
  {
    swift_once();
  }

  v17 = qword_1009528E8;
  *v3 = qword_1009528E8;
  v18 = v80;
  v19 = v82;
  (v82)(v3, v80, v0);
  v143 = v81;
  v144 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v142);
  v140 = v0;
  v141 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(&v139);
  v21 = v83;
  v83(v20, v3, v0);
  v22 = v17;
  sub_10076D9BC();
  v23 = v79;
  v79(v3, v0);
  v141 = &protocol witness table for Double;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v24 = qword_1009528E0;
  *v3 = qword_1009528E0;
  v19(v3, v18, v0);
  v25 = v81;
  v137 = v81;
  v138 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v136);
  v134 = v0;
  v135 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(&v133);
  v21(v26, v3, v0);
  v27 = v24;
  sub_10076D9BC();
  v23(v3, v0);
  v28 = v73;
  v134 = v73;
  v135 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v133);
  sub_10076D66C();
  v131 = v28;
  v132 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v130);
  sub_10076D66C();
  v128 = v28;
  v129 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v127);
  sub_10076D66C();
  if (qword_10093FEE0 != -1)
  {
    swift_once();
  }

  v29 = qword_1009528F0;
  *v3 = qword_1009528F0;
  v30 = v80;
  v31 = v82;
  (v82)(v3, v80, v0);
  v125 = v25;
  v126 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(&v121);
  v83(v32, v3, v0);
  v33 = v29;
  sub_10076D9BC();
  v79(v3, v0);
  v34 = qword_1009528F0;
  *v3 = qword_1009528F0;
  v31(v3, v30, v0);
  v35 = v81;
  v122 = v81;
  v123 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(&v118);
  v83(v36, v3, v0);
  v37 = v34;
  sub_10076D9BC();
  v38 = v79;
  v79(v3, v0);
  v39 = qword_1009528F0;
  *v3 = qword_1009528F0;
  v31(v3, v30, v0);
  v119 = v35;
  v120 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v118);
  v116 = v0;
  v117 = &protocol witness table for FontSource;
  v40 = sub_10000DB7C(&v115);
  v83(v40, v3, v0);
  v41 = v39;
  sub_10076D9BC();
  v38(v3, v0);
  if (qword_10093FEE8 != -1)
  {
    swift_once();
  }

  v42 = qword_1009528F8;
  *v3 = qword_1009528F8;
  (v82)(v3, v30, v0);
  v116 = v35;
  v117 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v115);
  v113 = v0;
  v114 = &protocol witness table for FontSource;
  v43 = sub_10000DB7C(&v112);
  v83(v43, v3, v0);
  v44 = v42;
  sub_10076D9BC();
  v45 = v79;
  v79(v3, v0);
  v46 = qword_1009528F8;
  *v3 = qword_1009528F8;
  (v82)(v3, v30, v0);
  v113 = v35;
  v114 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v112);
  v110 = v0;
  v111 = &protocol witness table for FontSource;
  v47 = sub_10000DB7C(&v109);
  v48 = v83;
  v83(v47, v3, v0);
  v49 = v46;
  sub_10076D9BC();
  v45(v3, v0);
  v111 = &protocol witness table for Double;
  v110 = &type metadata for Double;
  *&v109 = 0x4032000000000000;
  v50 = v80;
  v51 = qword_1009528F8;
  *v3 = qword_1009528F8;
  (v82)(v3, v50, v0);
  v107 = v81;
  v108 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v106);
  v104 = v0;
  v105 = &protocol witness table for FontSource;
  v52 = sub_10000DB7C(&v103);
  v48(v52, v3, v0);
  v53 = v48;
  v54 = v51;
  sub_10076D9BC();
  v55 = v79;
  v79(v3, v0);
  v105 = &protocol witness table for Double;
  v104 = &type metadata for Double;
  v102 = &protocol witness table for Double;
  *&v103 = 0x4032000000000000;
  v101 = &type metadata for Double;
  *&v100 = 0x4024000000000000;
  v56 = qword_1009528F8;
  *v3 = qword_1009528F8;
  v57 = v82;
  (v82)(v3, v50, v0);
  v98 = v81;
  v99 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v97);
  v95 = v0;
  v96 = &protocol witness table for FontSource;
  v58 = sub_10000DB7C(&v94);
  v53(v58, v3, v0);
  v59 = v56;
  sub_10076D9BC();
  v55(v3, v0);
  v60 = qword_1009528F8;
  *v3 = qword_1009528F8;
  v57(v3, v50, v0);
  v61 = v81;
  v95 = v81;
  v96 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v94);
  v92 = v0;
  v93 = &protocol witness table for FontSource;
  v62 = sub_10000DB7C(&v91);
  v53(v62, v3, v0);
  v63 = v60;
  sub_10076D9BC();
  v55(v3, v0);
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  *&v91 = 0x4024000000000000;
  if (qword_10093FEC0 != -1)
  {
    swift_once();
  }

  v64 = qword_1009528D0;
  *v3 = qword_1009528D0;
  v57(v3, v80, v0);
  v89 = v61;
  v90 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v88);
  v87[3] = v0;
  v87[4] = &protocol witness table for FontSource;
  v65 = sub_10000DB7C(v87);
  v83(v65, v3, v0);
  v66 = v64;
  sub_10076D9BC();
  v55(v3, v0);
  v67 = v75;
  (*(v77 + 32))(v75, v76, v78);
  v68 = v74;
  sub_100012498(&v166, v67 + v74[5]);
  sub_100012498(&v163, v67 + v68[6]);
  sub_100012498(&v160, v67 + v68[7]);
  sub_100012498(&v157, v67 + v68[8]);
  sub_100012498(&v154, v67 + v68[9]);
  v69 = (v67 + v68[10]);
  *v69 = 0;
  v69[1] = 0;
  sub_100012498(&v151, v67 + v68[11]);
  sub_100012498(&v148, v67 + v68[12]);
  sub_100012498(&v145, v67 + v68[13]);
  sub_100012498(&v142, v67 + v68[14]);
  sub_100012498(&v139, v67 + v68[15]);
  sub_100012498(&v136, v67 + v68[16]);
  v70 = (v67 + v68[17]);
  *v70 = 0;
  v70[1] = 0;
  sub_100012498(&v133, v67 + v68[18]);
  sub_100012498(&v130, v67 + v68[19]);
  sub_100012498(&v127, v67 + v68[20]);
  sub_100012498(&v124, v67 + v68[21]);
  sub_100012498(&v121, v67 + v68[22]);
  sub_100012498(&v118, v67 + v68[23]);
  sub_100012498(&v115, v67 + v68[24]);
  sub_100012498(&v112, v67 + v68[25]);
  sub_100012498(&v109, v67 + v68[26]);
  sub_100012498(&v106, v67 + v68[27]);
  sub_100012498(&v103, v67 + v68[28]);
  sub_100012498(&v100, v67 + v68[29]);
  sub_100012498(&v97, v67 + v68[30]);
  sub_100012498(&v94, v67 + v68[31]);
  sub_100012498(&v91, v67 + v68[32]);
  return sub_100012498(&v88, v67 + v68[33]);
}

uint64_t sub_100324E20()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D39C();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_10000DB18(v7, qword_10099E718);
  v52 = v7;
  v53 = sub_10000A61C(v7, qword_10099E718);
  v54 = v6;
  sub_10076D3AC();
  v143 = &type metadata for Double;
  v144 = &protocol witness table for Double;
  v141 = &protocol witness table for Double;
  *&v142 = 0x4034000000000000;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v8 = sub_10076D67C();
  v137 = v8;
  v138 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v136);
  sub_10076D66C();
  v134 = &type metadata for Double;
  v135 = &protocol witness table for Double;
  *&v133 = 0x4034000000000000;
  v132 = &protocol witness table for Double;
  v131 = &type metadata for Double;
  *&v130 = 0x4034000000000000;
  v58 = v8;
  v128 = v8;
  v129 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v127);
  sub_10076D66C();
  if (qword_10093FEB0 != -1)
  {
    swift_once();
  }

  v9 = qword_1009528C0;
  *v3 = qword_1009528C0;
  v63 = enum case for FontSource.textStyle(_:);
  v10 = v1[13];
  v10(v3);
  v62 = sub_10076D9AC();
  v125 = v62;
  v126 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v121);
  v12 = v1[2];
  v12(v11, v3, v0);
  v13 = v9;
  sub_10076D9BC();
  v14 = v1[1];
  v14(v3, v0);
  v15 = qword_1009528C0;
  *v3 = qword_1009528C0;
  v61 = v10;
  v59 = v1 + 13;
  (v10)(v3, v63, v0);
  v122 = v62;
  v123 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(&v118);
  v60 = v1 + 2;
  v12(v16, v3, v0);
  v17 = v12;
  v18 = v15;
  sub_10076D9BC();
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
  sub_10000DB7C(&v112);
  sub_10076D66C();
  if (qword_10093FEB8 != -1)
  {
    swift_once();
  }

  v20 = qword_1009528C8;
  *v3 = qword_1009528C8;
  v61(v3, v63, v0);
  v110 = v62;
  v111 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v109);
  v107 = v0;
  v108 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(&v106);
  v12(v21, v3, v0);
  v22 = v20;
  sub_10076D9BC();
  v14(v3, v0);
  v107 = v19;
  v108 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v106);
  sub_10076D66C();
  v104 = v19;
  v105 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v103);
  sub_10076D66C();
  if (qword_10093FEC0 != -1)
  {
    swift_once();
  }

  v23 = qword_1009528D0;
  *v3 = qword_1009528D0;
  v61(v3, v63, v0);
  v101 = v62;
  v102 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v100);
  v98 = v0;
  v99 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(&v97);
  v12(v24, v3, v0);
  v25 = v23;
  sub_10076D9BC();
  v14(v3, v0);
  v98 = v19;
  v99 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v97);
  sub_10076D66C();
  v95 = v19;
  v96 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v94);
  sub_10076D66C();
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  v90 = &protocol witness table for ZeroDimension;
  *&v91 = 0x4022000000000000;
  v89 = v19;
  sub_10000DB7C(&v88);
  sub_10076D66C();
  v26 = v1 + 1;
  v51 = v14;
  if (qword_10093FEC8 != -1)
  {
    swift_once();
  }

  v27 = qword_1009528D8;
  *v3 = qword_1009528D8;
  v28 = v63;
  v29 = v61;
  v61(v3, v63, v0);
  v30 = v29;
  v86 = v62;
  v87 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(&v82);
  v17(v31, v3, v0);
  v32 = v27;
  sub_10076D9BC();
  v33 = v51;
  v51(v3, v0);
  v57 = v26;
  v83 = v58;
  v84 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v82);
  sub_10076D66C();
  v34 = qword_1009528D8;
  *v3 = qword_1009528D8;
  v30(v3, v28, v0);
  v35 = v62;
  v80 = v62;
  v81 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(&v76);
  v17(v36, v3, v0);
  v37 = v34;
  sub_10076D9BC();
  v33(v3, v0);
  v38 = qword_1009528D8;
  *v3 = qword_1009528D8;
  v61(v3, v63, v0);
  v77 = v35;
  v78 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v39 = sub_10000DB7C(&v73);
  v17(v39, v3, v0);
  v40 = v38;
  sub_10076D9BC();
  v33(v3, v0);
  v41 = v58;
  v74 = v58;
  v75 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v73);
  sub_10076D66C();
  v71 = v41;
  v72 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v70);
  sub_10076D66C();
  v42 = qword_1009528D8;
  *v3 = qword_1009528D8;
  v61(v3, v63, v0);
  v68 = v62;
  v69 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v43 = sub_10000DB7C(&v64);
  v17(v43, v3, v0);
  v44 = v42;
  sub_10076D9BC();
  v33(v3, v0);
  v65 = v41;
  v66 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v64);
  sub_10076D66C();
  v45 = v53;
  (*(v55 + 32))(v53, v54, v56);
  v46 = v52;
  sub_100012498(&v142, v45 + v52[5]);
  sub_100012498(&v139, v45 + v46[6]);
  sub_100012498(&v136, v45 + v46[7]);
  sub_100012498(&v133, v45 + v46[8]);
  sub_100012498(&v130, v45 + v46[9]);
  v47 = (v45 + v46[10]);
  *v47 = 0;
  v47[1] = 0;
  sub_100012498(&v127, v45 + v46[11]);
  sub_100012498(&v124, v45 + v46[12]);
  sub_100012498(&v121, v45 + v46[13]);
  sub_100012498(&v118, v45 + v46[14]);
  sub_100012498(&v115, v45 + v46[15]);
  sub_100012498(&v112, v45 + v46[16]);
  v48 = (v45 + v46[17]);
  *v48 = 0;
  v48[1] = 0;
  sub_100012498(&v109, v45 + v46[18]);
  sub_100012498(&v106, v45 + v46[19]);
  sub_100012498(&v103, v45 + v46[20]);
  sub_100012498(&v100, v45 + v46[21]);
  sub_100012498(&v97, v45 + v46[22]);
  sub_100012498(&v94, v45 + v46[23]);
  sub_100012498(&v91, v45 + v46[24]);
  sub_100012498(&v88, v45 + v46[25]);
  sub_100012498(&v85, v45 + v46[26]);
  sub_100012498(&v82, v45 + v46[27]);
  sub_100012498(&v79, v45 + v46[28]);
  sub_100012498(&v76, v45 + v46[29]);
  sub_100012498(&v73, v45 + v46[30]);
  sub_100012498(&v70, v45 + v46[31]);
  sub_100012498(&v67, v45 + v46[32]);
  return sub_100012498(&v64, v45 + v46[33]);
}

void sub_100325A70()
{
  v0 = objc_opt_self();
  if (qword_10093FEB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1009528C8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_100952908 = v2;
}

void sub_100325B4C()
{
  v0 = objc_opt_self();
  if (qword_10093FEC8 != -1)
  {
    swift_once();
  }

  v1 = qword_1009528D8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_100952918 = v2;
}

void sub_100325C54(uint64_t a1, void *a2, id *a3, void *a4, uint64_t a5)
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

void sub_100325D34(uint64_t a1, void *a2, id *a3, void *a4, uint64_t a5)
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

void sub_100325DD0()
{
  v0 = objc_opt_self();
  if (qword_10093FEE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1009528F8;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_100952938 = v2;
}

void sub_100325E80()
{
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  qword_100952940 = sub_100770DEC(v3, v2).super.isa;
}

id sub_100325F14()
{
  result = [objc_opt_self() blackColor];
  qword_100952948 = result;
  return result;
}

uint64_t sub_100325F50()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10077111C();
  sub_10000DB18(v4, qword_100952950);
  sub_10000A61C(v4, qword_100952950);
  sub_1007710CC();
  sub_100770FEC();
  v5 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle3 scale:2];
  sub_100770F4C();
  (*(v1 + 104))(v3, enum case for SystemImage.squareAndArrowUp(_:), v0);
  sub_10076046C();
  (*(v1 + 8))(v3, v0);
  return sub_1007710BC();
}

id sub_1003260D0()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_1007706EC();

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView];
    [v10 contentSize];
    v12 = v11;
    [v10 bounds];
    v9 = v12 <= CGRectGetHeight(v51);
  }

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView] setAlwaysBounceVertical:v9];
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardContentView];
  v14 = [v1 traitCollection];
  v15 = sub_1007706FC();

  if (v15)
  {
    if (qword_10093FF38 != -1)
    {
      swift_once();
    }

    v16 = &qword_100952948;
  }

  else
  {
    if (qword_10093FF30 != -1)
    {
      swift_once();
    }

    v16 = &qword_100952940;
  }

  [v13 setBackgroundColor:*v16];
  v17 = [v1 traitCollection];
  sub_1007706FC();

  v18 = enum case for CornerStyle.continuous(_:);
  v19 = *(v3 + 104);
  v19(v6, enum case for CornerStyle.continuous(_:), v2);
  sub_1007638AC();
  v20 = *(v3 + 8);
  v20(v6, v2);
  v19(v6, v18, v2);
  sub_10075F98C();
  v20(v6, v2);
  v19(v6, v18, v2);
  sub_1007638AC();
  v20(v6, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    [Strong _setCornerRadius:26.0];
  }

  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel];
  v24 = [v1 traitCollection];
  v25 = sub_1007706FC();

  if (v25)
  {
    if (qword_10093FEF0 != -1)
    {
      swift_once();
    }

    v26 = &qword_100952900;
  }

  else
  {
    if (qword_10093FF10 != -1)
    {
      swift_once();
    }

    v26 = &qword_100952920;
  }

  [v23 setFont:*v26];
  v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_titleLabel];
  v28 = [v1 traitCollection];
  v29 = sub_1007706FC();

  if (v29)
  {
    if (qword_10093FEF8 != -1)
    {
      swift_once();
    }

    v30 = &qword_100952908;
  }

  else
  {
    if (qword_10093FF18 != -1)
    {
      swift_once();
    }

    v30 = &qword_100952928;
  }

  [v27 setFont:*v30];
  v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel];
  v32 = [v1 traitCollection];
  v33 = sub_1007706FC();

  if (v33)
  {
    if (qword_10093FF00 != -1)
    {
      swift_once();
    }

    v34 = &qword_100952910;
  }

  else
  {
    if (qword_10093FF20 != -1)
    {
      swift_once();
    }

    v34 = &qword_100952930;
  }

  [v31 setFont:*v34];
  v35 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel];
  if (v35)
  {
    v36 = v35;
    v37 = [v1 traitCollection];
    v38 = sub_1007706FC();

    if (v38)
    {
      if (qword_10093FF08 != -1)
      {
        swift_once();
      }

      v39 = &qword_100952918;
    }

    else
    {
      if (qword_10093FF28 != -1)
      {
        swift_once();
      }

      v39 = &qword_100952938;
    }

    [v36 setFont:*v39];
  }

  v40 = [v1 traitCollection];
  v41 = sub_1007706FC();

  v42 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView;
  v43 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView];
  if (v41)
  {
    if (v43)
    {
      [v43 setHidden:1];
    }

    sub_100328530();
    sub_10032A938();
  }

  else
  {
    if (v43 || (v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView()), v48 = sub_10046D7FC(0), sub_10032C990(v48), v48, (v49 = *&v1[v42]) != 0) && ([v49 setUserInteractionEnabled:0], (v43 = *&v1[v42]) != 0))
    {
      [v43 setHidden:0];
    }

    v44 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView];
    if (v44)
    {
      [v44 setHidden:1];
    }

    v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView];
    if (v45)
    {
      [v45 setHidden:1];
    }
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1003267F0()
{
  v1 = v0;
  v2 = sub_100763ADC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_10077071C();
  v46 = v2;
  if ((v8 & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = sub_1007706EC();

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView];
    v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel];
    [v16 addSubview:{v17, v46}];
    v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton];
    [v16 addSubview:v18];
    [v16 addSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView]];
    v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
    [v16 addSubview:v13];
    v19 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel;
    if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel])
    {
      [v16 addSubview:?];
    }

    v20 = *(v18 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style);
    *(v18 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style) = 1;
    if (v20 == 1)
    {
      v21 = v6;
    }

    else
    {
      v21 = v6;
      v22 = sub_10077167C();

      if ((v22 & 1) == 0)
      {
        sub_10050E5DC();
      }
    }

    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v23 = sub_100770CFC();
    v24 = [v23 colorWithAlphaComponent:0.7];

    [v17 setTextColor:v24];
    v25 = *&v1[v19];
    if (!v25)
    {
      v29 = v21;
      v28 = &selRef_initWithTabBarSystemItem_tag_;
      v30 = &selRef_initWithTabBarSystemItem_tag_;
      goto LABEL_23;
    }

    v26 = v25;
    v27 = sub_100770CFC();
    [v26 setTextColor:v27];
    v28 = &selRef_initWithTabBarSystemItem_tag_;
    goto LABEL_22;
  }

  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView];
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel];
  [v10 addSubview:v11];
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton];
  [v10 addSubview:v12];
  [v10 addSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView]];
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
  [v10 addSubview:v13];
  v14 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel])
  {
    [v10 addSubview:?];
  }

  v15 = *(v12 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style);
  *(v12 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style) = 2;
  if (v15 > 1)
  {
    v21 = v6;
  }

  else
  {
    v21 = v6;
    v31 = sub_10077167C();

    if ((v31 & 1) == 0)
    {
      sub_10050E5DC();
    }
  }

  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v32 = sub_100770CFC();
  [v11 setTextColor:v32];

  v33 = *&v1[v14];
  v28 = &selRef_initWithTabBarSystemItem_tag_;
  if (v33)
  {
    v26 = v33;
    v27 = sub_100770D1C();
    [v26 setTextColor:v27];
LABEL_22:
    v30 = &selRef_initWithTabBarSystemItem_tag_;

    v29 = v21;
    goto LABEL_23;
  }

  v29 = v21;
  v30 = &selRef_initWithTabBarSystemItem_tag_;
LABEL_23:
  v34 = [v1 v28[274]];
  v35 = sub_1007706EC();
  v36 = v46;
  if (v35)
  {
    v37 = [v34 preferredContentSizeCategory];
    v38 = sub_10077087C();

    if (v38)
    {
      v39 = &OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView;
      goto LABEL_28;
    }
  }

  else
  {
  }

  v39 = &OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView;
LABEL_28:
  [*&v1[*v39] v30[88]];
  v40 = [v1 v28[274]];
  v41 = sub_10077071C();

  if (v41)
  {
    if (qword_10093FE98 != -1)
    {
      swift_once();
    }

    v42 = qword_10099E6E8;
  }

  else
  {
    if (qword_10093FE90 != -1)
    {
      swift_once();
    }

    v42 = qword_10099E6D0;
  }

  v43 = sub_10000A61C(v36, v42);
  (*(v3 + 16))(v29, v43, v36);
  v44 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v13[v44], v29, v36);
  swift_endAccess();
  [v13 setNeedsLayout];
  return (*(v3 + 8))(v29, v36);
}

void sub_100326E58()
{
  v1 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView] traitCollection];
  [v1 userInterfaceStyle];

  sub_10076FF9C();
  v15 = sub_10076FF6C();

  v2 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView] layer];
  [v2 setCompositingFilter:v15];

  v3 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel] layer];
  [v3 setCompositingFilter:v15];

  v4 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel] layer];
  [v4 setCompositingFilter:v15];

  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
  v6 = [*(v5 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v15];

  v7 = [*(*(v5 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v15];

  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton];
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

  if (v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_includeBorderInDarkMode] == 1)
  {
    v12 = [v0 traitCollection];
    v13 = [v12 userInterfaceStyle];

    v14 = v13 != 2;
  }

  else
  {
    v14 = 1;
  }

  [*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_borderView] setHidden:v14];
  sub_10050E5DC();
}

void sub_100327178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076771C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v39 - v12;
  v14 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel;
  v15 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel];
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
  v20 = sub_10076FF9C();
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
    v24 = sub_10077167C();

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
    v25 = sub_10076D3DC();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
    v26 = objc_allocWithZone(sub_1007626BC());
    v27 = sub_1007626AC();
    v28 = [v3 traitCollection];
    v29 = sub_1007706FC();

    if (v29)
    {
      if (qword_10093FF08 != -1)
      {
        swift_once();
      }

      v30 = &qword_100952918;
    }

    else
    {
      if (qword_10093FF28 != -1)
      {
        swift_once();
      }

      v30 = &qword_100952938;
    }

    [v27 setFont:*v30];
    if (a2)
    {
      v31 = sub_10076FF6C();
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
    if (sub_10077071C())
    {
      v35 = sub_1007706EC();

      if (v35)
      {
        [*&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView] addSubview:v33];
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        v36 = v33;
        v37 = sub_100770D1C();
LABEL_33:
        v38 = v37;
        [v36 setTextColor:v37];

        goto LABEL_34;
      }
    }

    else
    {
    }

    [*&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView] addSubview:v33];
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v36 = v33;
    v37 = sub_100770CFC();
    goto LABEL_33;
  }

LABEL_19:
}

void sub_100327628(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer])
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

void sub_100327714()
{
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock])
  {
    v1 = [objc_allocWithZone(UITapGestureRecognizer) init];

    sub_100327628(v1);
  }

  else
  {
    v2 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer;
    if (*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer])
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