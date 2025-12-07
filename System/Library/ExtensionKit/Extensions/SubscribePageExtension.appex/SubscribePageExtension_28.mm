uint64_t sub_100316868(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v6, &unk_100926C40, qword_1007B9FE0);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_100016B4C(v1 + v6, v5, &unk_100926C40, qword_1007B9FE0);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_10006644C(v5, v7 + v8, &unk_100926C40, qword_1007B9FE0);
  return swift_endAccess();
}

void sub_10031698C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isTransitioning) = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_100568B90();
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  v3 = *(v0 + v1);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isTransitioning) = v3;
  *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isTransitioning) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0xC8))(v3);
  }
}

void *sub_100316AFC()
{
  result = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_100316B34(char a1)
{
  if (a1)
  {

    sub_10031CC14();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_100316BB4()
{
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported] != 1)
  {
    goto LABEL_11;
  }

  v1 = [v0 traitCollection];
  v2 = sub_100753804();

  if ((v2 & 1) == 0)
  {
    if ((v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = [v0 traitCollection];
    v5 = sub_1007537E4();

    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 = v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
    v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
    goto LABEL_12;
  }

  v3 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v3 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v3] == 4)
  {
    if (!v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
LABEL_10:
      if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] != 4)
      {
        [v0 bounds];
        v7 = CGRectGetWidth(v9) < 405.0 && *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay) != 0;
        v6 = v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
        v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = v7;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
  v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = 1;
LABEL_12:

  sub_1003165E4(v6);
}

void sub_100316D50(char a1)
{
  v2 = a1 & 1;
  v3 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled] != v2)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = swift_weakLoadStrong();
      if (v12)
      {
        v13 = v12;
        v23 = v1;
        v26 = sub_10074FB64();
        sub_100745204();
        sub_10000C518(&qword_1009295D0, &unk_1007B9F70);
        if (swift_dynamicCast())
        {
          sub_100032CCC(v24, v27);
          sub_10000C888(v27, v28);
          v14 = [v23 traitCollection];
          v15 = sub_10074B8E4();

          if (v15)
          {
            v16 = v23;
            if (v23[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
            {
              v17 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
            }

            else
            {
              v17 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
            }

            v18 = v23[*v17];
            if (v18 != 7)
            {
              v19 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
              swift_beginAccess();
              sub_100016B4C(&v16[v19], v5, &unk_100926C40, qword_1007B9FE0);
              if ((*(v7 + 48))(v5, 1, v6) == 1)
              {

                sub_10000C8CC(v5, &unk_100926C40, qword_1007B9FE0);
                goto LABEL_12;
              }

              (*(v7 + 32))(v9, v5, v6);
              sub_10000C888(v27, v28);
              v20 = sub_10074B8C4();
              if (v20)
              {
                v21 = v20;
                if (([v23 isHidden] & 1) == 0)
                {
                  sub_100318D58(v15, v21, v13, v18, v9, v11);

                  (*(v7 + 8))(v9, v6);
                  goto LABEL_12;
                }

                (*(v7 + 8))(v9, v6);

                goto LABEL_11;
              }

              (*(v7 + 8))(v9, v6);
            }
          }

LABEL_11:

LABEL_12:
          sub_10000C620(v27);
          return;
        }

        v25 = 0;
        memset(v24, 0, sizeof(v24));
        sub_10000C8CC(v24, &qword_1009295D8, &unk_1007AD420);
      }

      else
      {
      }
    }
  }
}

void sub_1003171A8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled) = a1;
  sub_100316D50(v2);
}

id sub_1003171C4(uint64_t a1, __objc2_prop *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v9 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = sub_10074F704();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10006644C(v14, v4 + v17, &unk_100926C40, qword_1007B9FE0);
  swift_endAccess();
  v18 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_100016B4C(v4 + v17, v11, &unk_100926C40, qword_1007B9FE0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_10006644C(v11, v18 + v19, &unk_100926C40, qword_1007B9FE0);
  swift_endAccess();
  sub_1005F3E54(a2);
  v20 = [v4 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_10074FA74();
    if (!v22)
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v22 = sub_100753E64();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = &stru_1008F2000;
  if (sub_10074FAD4())
  {
    *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = 1;
  }

  else
  {
    v25 = [v5 traitCollection];
    v26 = sub_100753804();

    *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v26 & 1;
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v27 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror;
  if (!*(v5 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror))
  {
    v28 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
    v29 = v18;
    v30 = sub_1004FEB20(v29);
    v31 = *(v5 + v27);
    *(v5 + v27) = v30;
    v32 = v30;

    [v32 _setContinuousCornerRadius:*(v5 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius)];
    v33 = [v32 layer];
    [v33 setMaskedCorners:sub_1007535E4()];

    v34 = [v5 contentView];
    [v34 insertSubview:v32 belowSubview:v29];

    [v5 setNeedsLayout];
  }

LABEL_10:
  v53 = sub_10074FB64();
  sub_100745204();
  sub_10000C518(&qword_1009295D0, &unk_1007B9F70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_10000C8CC(&v50, &qword_1009295D8, &unk_1007AD420);
    goto LABEL_17;
  }

  sub_100032CCC(&v50, v54);
  sub_10000C888(v54, v55);
  v35 = [v5 traitCollection];
  v36 = sub_10074B8E4();

  if (!v36)
  {
LABEL_16:
    sub_10000C620(v54);
    v24 = &stru_1008F2000;
LABEL_17:
    v53 = sub_10074FB64();
    if (swift_dynamicCast())
    {
      sub_100032CCC(&v50, v54);
      sub_10000C888(v54, v55);
      v41 = [v5 traitCollection];
      v42 = sub_10074B8F4();

      if (v42)
      {
        sub_10000C888(v54, v55);
        v43 = sub_10074B8C4();
        if (v43)
        {
          v44 = v49;
          sub_100317890(v42, v43, a1, a2, a3, v49);

          sub_10000C620(v54);
          v40 = v44;
          goto LABEL_25;
        }
      }

      sub_10000C620(v54);
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      sub_10000C8CC(&v50, &qword_1009295D8, &unk_1007AD420);
    }

    v40 = v49;
    goto LABEL_25;
  }

  sub_10000C888(v54, v55);
  v37 = sub_10074B8C4();
  if (!v37)
  {

    goto LABEL_16;
  }

  v38 = v37;
  v39 = v49;
  swift_weakAssign();
  swift_weakAssign();
  sub_100318D58(v36, v38, a1, a2, a3, v39);

  sub_10000C620(v54);
  v40 = v39;
  v24 = &stru_1008F2000;
LABEL_25:
  v45 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer);
  sub_100566590(a1, a2, a3, v40);
  v46 = [v45 setUserInteractionEnabled:*(v5 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded)];
  (*((swift_isaMask & *v5) + 0x278))(v46);
  sub_100316BB4();
  return [v5 v24[51].attr];
}

void sub_100317890(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v157 = a6;
  v168 = a5;
  v169 = a2;
  LODWORD(v166) = a4;
  v9 = sub_10000C518(&qword_100925B80, &qword_1007A9620);
  __chkstk_darwin(v9 - 8);
  v134 = &v129 - v10;
  v161 = sub_10074F704();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v132 = v11;
  v140 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_100741494();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v12;
  __chkstk_darwin(v13);
  v141 = &v129 - v14;
  v135 = sub_10000C518(&qword_1009295F8, &qword_1007AD430);
  __chkstk_darwin(v135);
  v136 = &v129 - v15;
  v16 = sub_10000C518(&qword_100926DC0, &unk_1007C0DC0);
  __chkstk_darwin(v16 - 8);
  v133 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v130 = &v129 - v19;
  __chkstk_darwin(v20);
  v137 = &v129 - v21;
  __chkstk_darwin(v22);
  v138 = &v129 - v23;
  v24 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v24 - 8);
  v156 = &v129 - v25;
  v26 = sub_10074F344();
  __chkstk_darwin(v26 - 8);
  v162 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10074F164();
  v159 = *(v144 - 8);
  __chkstk_darwin(v144);
  v158 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_10074F3A4();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C518(&qword_1009295C8, &qword_1007AD3B8);
  __chkstk_darwin(v30 - 8);
  v32 = &v129 - v31;
  v33 = sub_10074F284();
  v164 = *(v33 - 8);
  v165 = v33;
  __chkstk_darwin(v33);
  v151 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v129 - v36;
  v150 = sub_100754724();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v146 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10074A174();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v40 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10074DAE4();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v129 - v46;
  v48 = sub_10074FA74();
  if (!v48)
  {
    v49 = sub_10074F1E4();
    if (!v49)
    {
      goto LABEL_7;
    }

    v163 = a1;
    v50 = v32;
    v51 = v49;
    v52 = [v6 backgroundView];
    if (v52)
    {
      v53 = v52;
      [v52 setBackgroundColor:v51];
    }

    v48 = v51;
    v32 = v50;
  }

LABEL_7:
  v152 = v37;
  v167 = v7;
  v148 = [v7 traitCollection];
  v54 = sub_100753824();
  v55 = v166;
  v163 = v54;
  sub_100039770(v166, v168, v54);
  v56.n128_f64[0] = sub_1006E88C4(v55);
  v57 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v58 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v55 != 6)
  {
    v58 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v55 != 4)
  {
    v57 = v58;
  }

  (*(v42 + 104))(v44, *v57, v41, v56);
  (*(v42 + 32))(v47, v44, v41);
  v59 = sub_1007532B4();
  (*(v42 + 8))(v47, v41);
  sub_10074DAC4();
  if (v60)
  {
    sub_10074F2A4();
  }

  v61 = v165;
  sub_10074DAD4();
  sub_10074A144();
  sub_100753BA4();
  sub_100753B64();
  v62 = v149;
  v63 = v146;
  v64 = v150;
  (*(v149 + 104))(v146, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v150);
  sub_100753B84();
  (*(v62 + 8))(v63, v64);
  (*(v145 + 8))(v40, v147);
  v150 = v59;
  sub_10074DAB4();
  v65 = v164;
  v66 = *(v164 + 48);
  v67 = v66(v32, 1, v61);
  v68 = v167;
  if (v67 == 1)
  {
    v69 = v152;
    sub_10074F294();
    v70 = v61;
    if (v66(v32, 1, v61) != 1)
    {
      sub_10000C8CC(v32, &qword_1009295C8, &qword_1007AD3B8);
    }
  }

  else
  {
    v69 = v152;
    (*(v65 + 32))(v152, v32, v61);
    v70 = v61;
  }

  v71 = v153;
  sub_10074F174();
  sub_10074F3C4();
  v72 = v163;
  [v163 displayScale];
  v73 = v164;
  (*(v164 + 16))(v151, v69, v70);
  sub_10074F384();
  sub_10074F394();
  sub_100748014();
  swift_allocObject();
  v74 = sub_100747FF4();

  (*(v154 + 8))(v71, v155);
  (*(v73 + 8))(v69, v165);
  v75 = *&v68[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  if (v68[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 7)
  {
    v76 = v166;
  }

  else
  {
    v76 = v68[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  }

  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v166 = v170;
  v164 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10020ED5C(Strong);

  v165 = v75;
  v162 = v74;
  v163 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView;
  v78 = *(v75 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView);
  sub_100747FB4();
  v80 = v79;
  v82 = v81;
  v83 = [*(v78 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView) image];
  v84 = v160;
  v85 = v156;
  v86 = v161;
  v154 = *(v160 + 16);
  (v154)(v156, v168, v161);
  (*(v84 + 56))(v85, 0, 1, v86);
  LODWORD(v155) = v76;
  sub_100527FD0(v83, v80, v82, 0, v169, v85, v76);

  sub_10000C8CC(v85, &unk_100926C40, qword_1007B9FE0);
  v87 = *(v78 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded);
  v157 = v78;
  if (v87)
  {
    v88 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v89 = v138;
    sub_100016B4C(v78 + v88, v138, &qword_100926DC0, &unk_1007C0DC0);
    v90 = v137;
    sub_100748004();
    v91 = v159;
    v92 = v144;
    (*(v159 + 56))(v90, 0, 1, v144);
    v93 = *(v135 + 48);
    v94 = v136;
    sub_100016B4C(v89, v136, &qword_100926DC0, &unk_1007C0DC0);
    sub_100016B4C(v90, v94 + v93, &qword_100926DC0, &unk_1007C0DC0);
    v95 = *(v91 + 48);
    if (v95(v94, 1, v92) == 1)
    {
      sub_10000C8CC(v90, &qword_100926DC0, &unk_1007C0DC0);
      sub_10000C8CC(v89, &qword_100926DC0, &unk_1007C0DC0);
      if (v95(v94 + v93, 1, v92) == 1)
      {
        sub_10000C8CC(v94, &qword_100926DC0, &unk_1007C0DC0);
        goto LABEL_29;
      }
    }

    else
    {
      v96 = v130;
      sub_100016B4C(v94, v130, &qword_100926DC0, &unk_1007C0DC0);
      if (v95(v94 + v93, 1, v92) != 1)
      {
        v125 = v159;
        v126 = v158;
        (*(v159 + 32))(v158, v94 + v93, v92);
        sub_10031E474(&qword_100926DC8, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
        v127 = sub_100753014();
        v128 = *(v125 + 8);
        v128(v126, v92);
        sub_10000C8CC(v137, &qword_100926DC0, &unk_1007C0DC0);
        sub_10000C8CC(v138, &qword_100926DC0, &unk_1007C0DC0);
        v128(v96, v92);
        sub_10000C8CC(v94, &qword_100926DC0, &unk_1007C0DC0);
        v78 = v157;
        if (v127)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10000C8CC(v137, &qword_100926DC0, &unk_1007C0DC0);
      sub_10000C8CC(v138, &qword_100926DC0, &unk_1007C0DC0);
      (*(v159 + 8))(v96, v92);
    }

    sub_10000C8CC(v94, &qword_1009295F8, &qword_1007AD430);
    v78 = v157;
  }

LABEL_27:
  if ((*(v78 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v97 = v141;
    sub_100741484();
    v98 = v142;
    v99 = *(v142 + 16);
    v100 = v139;
    v101 = v143;
    v99(v139, v97, v143);
    sub_10031E474(&qword_100929600, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1007544E4();
    v102 = swift_allocObject();
    v158 = v102;
    swift_unknownObjectWeakInit();
    v103 = v100;
    v104 = v101;
    v99(v103, v97, v101);
    (v154)(v140, v168, v161);
    v105 = (*(v98 + 80) + 24) & ~*(v98 + 80);
    v106 = (v131 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
    v107 = (v106 + 23) & 0xFFFFFFFFFFFFFFF8;
    v108 = v160;
    v109 = (*(v160 + 80) + v107 + 8) & ~*(v160 + 80);
    v110 = v109 + v132;
    v111 = swift_allocObject();
    *(v111 + 16) = v102;
    v112 = *(v98 + 32);
    v112(v111 + v105, v139, v104);
    v113 = (v111 + v106);
    *v113 = v80;
    v113[1] = v82;
    *(v111 + v107) = v169;
    (*(v108 + 32))(v111 + v109, v140, v161);
    *(v111 + v110) = v155;

    sub_1007441F4();

    sub_10000C8CC(&v170, &unk_1009276E0, &unk_1007A5C70);

    v114 = v133;
    sub_100748004();
    (*(v159 + 56))(v114, 0, 1, v144);
    v115 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
    v116 = v157;
    swift_beginAccess();
    v117 = v116;
    sub_10006644C(v114, v116 + v115, &qword_100926DC0, &unk_1007C0DC0);
    swift_endAccess();
    v118 = v134;
    v119 = v143;
    v112(v134, v141, v143);
    (*(v142 + 56))(v118, 0, 1, v119);
    v120 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_10006644C(v118, v117 + v120, &qword_100925B80, &qword_1007A9620);
    swift_endAccess();
  }

LABEL_29:
  v121 = v165;
  [*&v163[v165] setHidden:0];
  [*(v121 + v164) setHidden:1];

  *(v121 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) = 1;
  v122 = *&v167[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v122)
  {
    v123 = *&v122[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView];
    v124 = v122;
    [v123 setHidden:0];
    [*&v124[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView] setHidden:1];
  }
}

uint64_t sub_100318D58(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v220 = a6;
  v254 = a5;
  v255 = a4;
  v256 = a2;
  v7 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v7 - 8);
  v209 = &v208 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v213 = &v208 - v10;
  v11 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v11 - 8);
  v219 = &v208 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v218 = &v208 - v14;
  v251 = sub_100741264();
  v15 = *(v251 - 8);
  __chkstk_darwin(v251);
  v212 = &v208 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_10000C518(&unk_100932480, &unk_1007A9900);
  __chkstk_darwin(v249);
  v250 = &v208 - v17;
  v18 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v18 - 8);
  v217 = &v208 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v216 = &v208 - v21;
  __chkstk_darwin(v22);
  v258 = &v208 - v23;
  __chkstk_darwin(v24);
  v259 = &v208 - v25;
  v26 = sub_10074F344();
  __chkstk_darwin(v26 - 8);
  v247 = &v208 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10074F164();
  __chkstk_darwin(v28 - 8);
  v244 = &v208 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_10074F3A4();
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v245 = &v208 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000C518(&qword_1009295C8, &qword_1007AD3B8);
  __chkstk_darwin(v31 - 8);
  v240 = &v208 - v32;
  v243 = sub_10074F284();
  v265 = *(v243 - 8);
  __chkstk_darwin(v243);
  v241 = &v208 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v242 = &v208 - v35;
  v239 = sub_100754724();
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v236 = &v208 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_10074A174();
  v235 = *(v237 - 8);
  __chkstk_darwin(v237);
  v234 = &v208 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_10074DAE4();
  v232 = *(v233 - 8);
  __chkstk_darwin(v233);
  v230 = &v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v231 = &v208 - v40;
  v41 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v41 - 8);
  v229 = &v208 - v42;
  v227 = sub_100744894();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v228 = &v208 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_100747D94();
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v268 = &v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10000C518(&qword_1009295E0, &qword_1007D8650);
  __chkstk_darwin(v45 - 8);
  v211 = &v208 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v224 = &v208 - v48;
  __chkstk_darwin(v49);
  v215 = &v208 - v50;
  __chkstk_darwin(v51);
  v53 = &v208 - v52;
  v266 = sub_100744864();
  v271 = *(v266 - 8);
  __chkstk_darwin(v266);
  v264 = &v208 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v263 = &v208 - v56;
  __chkstk_darwin(v57);
  v210 = &v208 - v58;
  __chkstk_darwin(v59);
  v225 = &v208 - v60;
  __chkstk_darwin(v61);
  v223 = &v208 - v62;
  __chkstk_darwin(v63);
  v222 = &v208 - v64;
  __chkstk_darwin(v65);
  v67 = &v208 - v66;
  __chkstk_darwin(v68);
  v214 = &v208 - v69;
  __chkstk_darwin(v70);
  v72 = &v208 - v71;
  __chkstk_darwin(v73);
  v75 = &v208 - v74;
  __chkstk_darwin(v76);
  v78 = &v208 - v77;
  __chkstk_darwin(v79);
  v81 = &v208 - v80;
  __chkstk_darwin(v82);
  v84 = &v208 - v83;
  v85 = sub_10074FA74();
  v272 = a1;
  if (v85)
  {
    v86 = v85;
LABEL_3:

    goto LABEL_4;
  }

  sub_10074EC14();
  v98 = v15;
  v86 = sub_10074F1E4();

  if (v86)
  {
    v99 = [v273 backgroundView];
    if (v99)
    {
      v100 = v99;
      [v99 setBackgroundColor:v86];

      v15 = v98;
    }

    goto LABEL_3;
  }

LABEL_4:
  v260 = v15;
  v270 = v67;
  sub_10074EBF4();
  sub_100744834();
  v87 = v271;
  v88 = v266;
  v269 = *(v271 + 16);
  v257 = v271 + 16;
  v269(v75, v84, v266);
  sub_10031E474(&qword_1009295E8, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  sub_100754334();
  v89 = sub_100754354();
  v267 = v84;
  if (v89)
  {
    v90 = *(v87 + 8);
    v90(v78, v88);
    v90(v81, v88);
    v91 = 1;
  }

  else
  {
    sub_100754364();
    v90 = *(v87 + 8);
    v90(v81, v88);
    (*(v87 + 32))(v53, v78, v88);
    v91 = 0;
  }

  v261 = *(v87 + 56);
  v261(v53, v91, 1, v88);
  sub_10000C8CC(v53, &qword_1009295E0, &qword_1007D8650);
  v221 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v92 = v273[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4;
  v93 = v270;
  v262 = v90;
  v94 = v222;
  if (v92)
  {
    sub_100744844();
    v269(v75, v267, v88);
    v95 = v214;
    sub_100754334();
    if (sub_100754354())
    {
      v90 = v262;
      v262(v95, v88);
      v90(v72, v88);
      v96 = 1;
      v97 = v215;
    }

    else
    {
      sub_100754364();
      v101 = v271;
      v90 = v262;
      v262(v72, v88);
      v102 = *(v101 + 32);
      v97 = v215;
      v102(v215, v95, v88);
      v96 = 0;
    }

    v261(v97, v96, 1, v88);
    sub_10000C8CC(v97, &qword_1009295E0, &qword_1007D8650);
  }

  sub_10074EBB4();
  sub_100744834();
  v269(v75, v93, v88);
  v103 = v94;
  v104 = v223;
  sub_100754334();
  if (sub_100754354())
  {
    v90(v104, v88);
    v90(v103, v88);
    v105 = 1;
    v106 = v243;
    v107 = v224;
  }

  else
  {
    sub_100754364();
    v108 = v271;
    v90(v103, v88);
    v109 = *(v108 + 32);
    v107 = v224;
    v109(v224, v104, v88);
    v105 = 0;
    v106 = v243;
  }

  v261(v107, v105, 1, v88);
  sub_10000C8CC(v107, &qword_1009295E0, &qword_1007D8650);
  v110 = v225;
  if (v273[v221] == 4 && (v273[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    sub_100744844();
    v269(v75, v270, v88);
    v111 = v210;
    sub_100754334();
    if (sub_100754354())
    {
      v112 = v262;
      v262(v111, v88);
      v112(v110, v88);
      v113 = 1;
      v114 = v211;
    }

    else
    {
      sub_100754364();
      v115 = v271;
      v262(v110, v88);
      v116 = *(v115 + 32);
      v114 = v211;
      v116(v211, v111, v88);
      v113 = 0;
    }

    v261(v114, v113, 1, v88);
    sub_10000C8CC(v114, &qword_1009295E0, &qword_1007D8650);
  }

  (*(v226 + 104))(v228, enum case for VideoFillMode.scaleAspectFill(_:), v227);
  sub_10074EC14();
  sub_10074F2A4();
  v117 = v229;
  sub_100750504();

  v118 = sub_1007504F4();
  (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  v119 = v269;
  v269(v263, v270, v88);
  v119(v264, v267, v88);
  sub_10074EBC4();
  sub_10074EBA4();
  sub_10074EC04();
  sub_100747D74();
  sub_10074EC14();
  v269 = [v273 traitCollection];
  v120 = sub_100753824();
  v121 = v255;
  sub_100039770(v255, v254, v120);
  v122 = v121;
  v123.n128_f64[0] = sub_1006E88C4(v121);
  v124 = v232;
  v125 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v126 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v122 != 6)
  {
    v126 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v122 != 4)
  {
    v125 = v126;
  }

  v127 = v230;
  v128 = v233;
  (*(v232 + 104))(v230, *v125, v233, v123);
  v129 = v231;
  (*(v124 + 32))(v231, v127, v128);
  v130 = sub_1007532B4();
  (*(v124 + 8))(v129, v128);
  sub_10074DAC4();
  if (v131)
  {
    sub_10074F2A4();
  }

  v132 = v242;
  v133 = v240;
  v134 = v234;
  sub_10074DAD4();
  sub_10074A144();
  sub_100753BA4();
  sub_100753B64();
  v135 = v238;
  v136 = v236;
  v137 = v239;
  (*(v238 + 104))(v236, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v239);
  sub_100753B84();
  (*(v135 + 8))(v136, v137);
  (*(v235 + 8))(v134, v237);
  sub_10074DAB4();
  v138 = v265;
  v139 = *(v265 + 48);
  v140 = v139(v133, 1, v106);
  v263 = v130;
  if (v140 == 1)
  {
    sub_10074F294();
    v141 = v106;
    v142 = v132;
    if (v139(v133, 1, v106) != 1)
    {
      sub_10000C8CC(v133, &qword_1009295C8, &qword_1007AD3B8);
    }
  }

  else
  {
    (*(v138 + 32))(v132, v133, v106);
    v141 = v106;
    v142 = v132;
  }

  v143 = v245;
  sub_10074F174();
  sub_10074F3C4();
  [v120 displayScale];
  v261 = v120;
  v144 = v265;
  (*(v265 + 16))(v241, v142, v141);
  sub_10074F384();
  sub_10074F394();
  sub_100748014();
  swift_allocObject();
  v264 = sub_100747FF4();

  (*(v246 + 8))(v143, v248);
  (*(v144 + 8))(v142, v141);
  v145 = *&v273[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  v146 = v259;
  sub_10074EC24();
  v147 = v260;
  v148 = *(v260 + 56);
  v149 = 1;
  v150 = v251;
  (v148)(v146, 0, 1, v251);
  v265 = v145;
  v269 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v152 = Strong;
    v153 = v258;
    (*(v147 + 16))(v258, Strong + qword_100982250, v150);

    v149 = 0;
    v154 = v250;
  }

  else
  {
    v154 = v250;
    v153 = v258;
  }

  v263 = v148;
  (v148)(v153, v149, 1, v150);
  v155 = *(v249 + 48);
  sub_100016B4C(v146, v154, &unk_100923970, &qword_1007A6B90);
  sub_100016B4C(v153, v154 + v155, &unk_100923970, &qword_1007A6B90);
  v156 = *(v147 + 48);
  if (v156(v154, 1, v150) == 1)
  {
    sub_10000C8CC(v153, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v146, &unk_100923970, &qword_1007A6B90);
    v157 = v156(v154 + v155, 1, v150);
    v158 = v273;
    if (v157 == 1)
    {
      sub_10000C8CC(v154, &unk_100923970, &qword_1007A6B90);
      goto LABEL_61;
    }

    goto LABEL_43;
  }

  v159 = v216;
  sub_100016B4C(v154, v216, &unk_100923970, &qword_1007A6B90);
  if (v156(v154 + v155, 1, v150) == 1)
  {
    sub_10000C8CC(v258, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v259, &unk_100923970, &qword_1007A6B90);
    (*(v260 + 8))(v159, v150);
LABEL_43:
    sub_10000C8CC(v154, &unk_100932480, &unk_1007A9900);
    v160 = v265;
    goto LABEL_44;
  }

  v167 = v260;
  v168 = v212;
  (*(v260 + 32))(v212, v154 + v155, v150);
  sub_10031E474(&qword_100926240, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v169 = sub_100753014();
  v170 = *(v167 + 8);
  v170(v168, v150);
  sub_10000C8CC(v258, &unk_100923970, &qword_1007A6B90);
  sub_10000C8CC(v259, &unk_100923970, &qword_1007A6B90);
  v170(v159, v150);
  sub_10000C8CC(v154, &unk_100923970, &qword_1007A6B90);
  v158 = v273;
  v160 = v265;
  if ((v169 & 1) == 0)
  {
LABEL_44:
    sub_1007464C4();
    v265 = sub_100752764();
    sub_100752D34();
    v161 = v274;
    sub_10074EB94();
    v162 = v217;
    sub_10074EC24();
    (v263)(v162, 0, 1, v150);
    v163 = v218;
    sub_10074EBE4();
    v164 = v219;
    sub_10074EBD4();
    v165 = type metadata accessor for TodayCardVideoView(0);
    sub_10031E474(&qword_1009295B8, type metadata accessor for TodayCardVideoView, &unk_1007C8140);
    v263 = v165;
    v166 = sub_1007464A4();
    sub_10000C8CC(v164, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v163, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v162, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(&v274, &unk_1009276E0, &unk_1007A5C70);
    if (v166)
    {
      if ((v166[qword_100982C58] & 1) == 0)
      {
        v261 = v161;
        v166[qword_100982C50] = *(v160 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory);
        sub_100665360();
        swift_unknownObjectWeakAssign();
        v171 = v269;
        v172 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v173 = v166;
        sub_10020ED5C(v172);

        v174 = *(v171 + v160);
        v175 = v173;
        sub_10074EC14();
        sub_10074F2A4();
        v177 = v176;
        v179 = v178;

        v180 = sub_10074F704();
        v181 = *(v180 - 8);
        v182 = v213;
        (*(v181 + 16))(v213, v254, v180);
        (*(v181 + 56))(v182, 0, 1, v180);
        v183 = swift_unknownObjectWeakLoadStrong();
        v272 = v175;
        swift_unknownObjectWeakAssign();
        sub_10020ED5C(v183);

        v184 = &v174[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize];
        *v184 = v177;
        *(v184 + 1) = v179;
        v184[16] = 0;
        v185 = swift_unknownObjectWeakLoadStrong();
        if (v185)
        {
          v186 = v185;
          (*((swift_isaMask & *v185) + 0xE8))(v177, v179, 0);
        }

        v187 = v256;
        *&v174[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkLayoutWithMetrics] = v256;

        v188 = swift_unknownObjectWeakLoadStrong();
        if (v188)
        {
          v189 = v188;
          v190 = *((swift_isaMask & *v188) + 0xD0);
          swift_bridgeObjectRetain_n();
          v190(v187);
          v182 = v213;
        }

        else
        {
        }

        v191 = v209;
        sub_100016B4C(v182, v209, &unk_100926C40, qword_1007B9FE0);
        sub_10020E270(v191);
        v192 = v255;
        v174[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_sizeCategory] = v255;
        v193 = swift_unknownObjectWeakLoadStrong();
        if (v193)
        {
          v194 = v193;
          (*((swift_isaMask & *v193) + 0x118))(v192);
        }

        v195 = swift_unknownObjectWeakLoadStrong();
        if (v195)
        {
          v196 = v195;
          v197 = swift_unknownObjectWeakLoadStrong();
          (*((swift_isaMask & *v196) + 0x150))(v197, *v184, *(v184 + 1), v184[16], v256, v182, v192);
        }

        [v174 setNeedsLayout];
        v198 = v272;

        sub_10000C8CC(v182, &unk_100926C40, qword_1007B9FE0);
        sub_1007442C4();
        sub_100752D34();
        sub_10031E474(&qword_1009295F0, type metadata accessor for TodayCardVideoView, &unk_1007BAFA8);
        sub_100744204();
        [*(v269 + v160) setHidden:0];
        [*(v160 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView) setHidden:1];

        *(v160 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) = 1;
        goto LABEL_60;
      }
    }

LABEL_60:
    v158 = v273;
  }

LABEL_61:
  v199 = *&v158[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v199)
  {
    v200 = *&v199[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView];
    v201 = v199;
    [v200 setHidden:1];
    [*&v201[OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingVideoView] setHidden:0];
  }

  v202 = swift_unknownObjectWeakLoadStrong();
  v203 = v267;
  v204 = v262;
  if (v202)
  {
    *(v202 + qword_10093CB48 + 8) = &off_1008712A0;
    v205 = v202;
    swift_unknownObjectWeakAssign();
  }

  sub_10012A1C4();

  (*(v252 + 8))(v268, v253);
  v206 = v266;
  v204(v270, v266);
  return (v204)(v203, v206);
}

void sub_10031AF08(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  if (a3)
  {

    swift_dynamicCastClass();
  }

  else
  {
    v61 = v15;
    v62 = v14;
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v19 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10006644C(v17, v4 + v19, &unk_100926C40, qword_1007B9FE0);
    swift_endAccess();
    v20 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
    sub_100016B4C(v4 + v19, v12, &unk_100926C40, qword_1007B9FE0);
    v21 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    sub_10006644C(v12, v20 + v21, &unk_100926C40, qword_1007B9FE0);
    swift_endAccess();
    v22 = (*(a2 + 160))(ObjectType, a2);
    v23 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = v22;
    if (v22 == 4)
    {
      v24 = [v4 contentView];
      [v24 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v25 = *(v4 + v23);
    sub_1005681B0(v25);
    *(v20 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory) = v25;
    sub_1007217A8();
    v26 = (*(a2 + 136))(ObjectType, a2);
    sub_1005F3E54(v26);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = *(v27 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported);
      *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v29;
      if (v29 == 1 && (v30 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror, !*(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror)))
      {
        v52 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
        v53 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
        v54 = a1;
        v55 = v52;
        v56 = sub_1004FEB20(v55);
        v57 = *(v4 + v30);
        *(v4 + v30) = v56;
        v58 = v56;

        [v58 _setContinuousCornerRadius:*(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius)];
        v59 = [v58 layer];
        [v59 setMaskedCorners:sub_1007535E4()];

        v60 = [v4 contentView];
        [v60 insertSubview:v58 belowSubview:v55];

        [v4 setNeedsLayout];
      }

      else
      {
        v31 = a1;
      }

      v32 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground);
      *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground) = v28[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
      sub_1003165E4(v32);
      v33 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
      sub_100567C10(v33, 0);

      v34 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
      if (v34)
      {
        v35 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
        if (v35)
        {
          v36 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          v37 = v61;
          sub_100016B4C(v4 + v36, v61, &unk_100926C40, qword_1007B9FE0);
          v38 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
          if (*(v4 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
          {
            v38 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          v39 = *(v4 + *v38);
          v40 = v34;
          v41 = v35;
          sub_1004FE890(v40, 0, v37, v39);

          sub_10000C8CC(v37, &unk_100926C40, qword_1007B9FE0);
        }
      }

      v42 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
      v43 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      v44 = v62;
      sub_100016B4C(v4 + v43, v62, &unk_100926C40, qword_1007B9FE0);
      v45 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      if (*(v4 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
      {
        v45 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      v46 = *(v4 + *v45);
      v47 = v42;
      sub_100720AF4(v47, 0, v44, v46);

      sub_10000C8CC(v44, &unk_100926C40, qword_1007B9FE0);
      v48 = [v4 backgroundView];
      if (v48)
      {
        v49 = v48;
        v50 = [v28 backgroundView];
        v51 = [v50 backgroundColor];

        [v49 setBackgroundColor:v51];
      }

      (*((swift_isaMask & *v4) + 0x278))();
      [v4 setNeedsLayout];
    }
  }
}

void sub_10031B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_100567F30(a1, a3);
  sub_100720E8C(a1, v3);
}

void *sub_10031B600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v4 = sub_10074F344();
  __chkstk_darwin(v4 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074F164();
  __chkstk_darwin(v7 - 8);
  v82 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074F3A4();
  v84 = *(v9 - 8);
  __chkstk_darwin(v9);
  v83 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_1009295C8, &qword_1007AD3B8);
  __chkstk_darwin(v11 - 8);
  v77 = &v61 - v12;
  v81 = sub_10074F284();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v61 - v15;
  v76 = sub_100754724();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10074A174();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10074DAE4();
  v70 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  v24 = sub_10074F704();
  v87 = *(v24 - 8);
  v88 = v24;
  __chkstk_darwin(v24);
  v85 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v61 - v27;
  sub_10074FBB4();
  sub_10031E474(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  result = sub_1007468B4();
  v30 = v92;
  if (v92)
  {
    v91 = sub_10074FB64();
    sub_100745204();
    sub_10000C518(&qword_1009295D0, &unk_1007B9F70);
    if (swift_dynamicCast())
    {
      v64 = v18;
      v67 = v6;
      v69 = a2;
      sub_100032CCC(v89, &v92);
      type metadata accessor for TodayCardGridTracker();
      sub_100752764();
      sub_100752D34();
      v68 = *&v89[0];
      sub_1001217C4();
      v32 = v31;
      v33 = _swiftEmptyArrayStorage;
      *&v89[0] = _swiftEmptyArrayStorage;
      v86 = v30;
      v34 = sub_10074FA64();
      v66 = v9;
      LODWORD(v65) = v32;
      if (v34)
      {
        swift_getKeyPath();
        sub_100746914();

        swift_getKeyPath();
        sub_100746914();

        v35 = v91;
        sub_100039770(v32, v28, v91);
        sub_1006E88C4(v32);
        sub_10074F374();

        (*(v87 + 8))(v28, v88);
        sub_100753284();
        if (*((*&v89[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v89[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();

        v33 = *&v89[0];
      }

      sub_10000C888(&v92, v93);
      swift_getKeyPath();
      sub_100746914();

      v36 = v91;
      v37 = sub_10074B8D4();

      if (v37)
      {
        sub_10000C888(&v92, v93);
        if (sub_10074B8C4())
        {
          swift_getKeyPath();
          v38 = v85;
          sub_100746914();

          swift_getKeyPath();
          sub_100746914();

          v62 = v91;
          v39 = sub_100753824();
          v40 = v65;
          v63 = v39;
          sub_100039770(v65, v38, v39);
          v41.n128_f64[0] = sub_1006E88C4(v40);
          v42 = v70;
          v43 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
          v44 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
          if (v40 != 6)
          {
            v44 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
          }

          if (v40 != 4)
          {
            v43 = v44;
          }

          v45 = v64;
          (*(v70 + 104))(v20, *v43, v64, v41);
          (*(v42 + 32))(v23, v20, v45);
          v46 = sub_1007532B4();

          (*(v42 + 8))(v23, v45);
          sub_10074DAC4();
          if (v47)
          {
            sub_10074F2A4();
          }

          v48 = v81;
          v49 = v80;
          v50 = v77;
          v51 = v71;
          sub_10074DAD4();
          sub_10074A144();
          sub_100753BA4();
          sub_100753B64();
          v52 = v75;
          v53 = v73;
          v54 = v76;
          (*(v75 + 104))(v73, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v76);
          sub_100753B84();
          (*(v52 + 8))(v53, v54);
          (*(v72 + 8))(v51, v74);
          sub_10074DAB4();
          v55 = *(v49 + 48);
          v56 = v55(v50, 1, v48);
          v65 = v46;
          if (v56 == 1)
          {
            v57 = v79;
            sub_10074F294();
            if (v55(v50, 1, v48) != 1)
            {
              sub_10000C8CC(v50, &qword_1009295C8, &qword_1007AD3B8);
            }
          }

          else
          {
            v57 = v79;
            (*(v49 + 32))(v79, v50, v48);
          }

          v58 = v83;
          sub_10074F174();
          v81 = v37;
          sub_10074F3C4();
          v59 = v63;
          [v63 displayScale];
          (*(v49 + 16))(v78, v57, v48);
          sub_10074F384();
          sub_10074F394();
          sub_100748014();
          swift_allocObject();
          sub_100747FF4();

          (*(v84 + 8))(v58, v66);
          (*(v49 + 8))(v57, v48);
          (*(v87 + 8))(v85, v88);
          sub_100753284();
          if (*((*&v89[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v89[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();

          v33 = *&v89[0];
        }

        else
        {
        }
      }

      v60._rawValue = v33;
      sub_100744224(v60);

      return sub_10000C620(&v92);
    }

    else
    {

      v90 = 0;
      memset(v89, 0, sizeof(v89));
      return sub_10000C8CC(v89, &qword_1009295D8, &unk_1007AD420);
    }
  }

  return result;
}

id sub_10031C2B0()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_10074F704();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoryCardCollectionViewCell(0);
  v40.receiver = v0;
  v40.super_class = v9;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  sub_100316BB4();
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] == 1 && *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay))
  {
    v10 = [v0 traitCollection];
    if (qword_100920850 != -1)
    {
      swift_once();
    }

    sub_100230B00(v10, &xmmword_10097F3D0, 1);
    sub_100753804();
    sub_1007535D4();
    sub_100753804();
    sub_1007535D4();
  }

  else
  {
    v11 = [v0 traitCollection];
    v12 = sub_100753804();

    if (v12)
    {
      v13 = v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      v14 = v1[*v13];
      if (v14 != 7)
      {
        v15 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_100016B4C(&v1[v15], v4, &unk_100926C40, qword_1007B9FE0);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_10000C8CC(v4, &unk_100926C40, qword_1007B9FE0);
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          [v1 bounds];
          CGRectGetHeight(v43);
          v16 = [v1 traitCollection];
          v41.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v41.value._rawValue = 0;
          isa = sub_1007537C4(v41, v42).super.isa;

          sub_1000392FC(v14, v8, isa);
          (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  [v1 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1007535D4();
  [v18 setFrame:{sub_10010FD98(v20, v22, v24, v26, v27, v28)}];
  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v29)
  {
    v30 = v29;
    [v1 bounds];
    MinX = CGRectGetMinX(v44);
    [v18 frame];
    MaxY = CGRectGetMaxY(v45);
    [v18 frame];
    Width = CGRectGetWidth(v46);
    [v1 bounds];
    Height = CGRectGetHeight(v47);
    [v18 frame];
    [v30 setFrame:{MinX, MaxY, Width, Height - CGRectGetHeight(v48)}];
  }

  v35 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton];
  if (v35)
  {
    v36 = v35;
    [v1 bounds];
    [v36 setFrame:{CGRectGetMaxX(v49) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  [v1 bounds];
  return [v37 setFrame:?];
}

id sub_10031C834()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StoryCardCollectionViewCell(0);
  objc_msgSendSuper2(&v5, "prepareForReuse");
  swift_weakAssign();
  swift_weakAssign();
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton] = 0;
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  sub_10072082C();
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v3)
  {
    [*(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView) + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView) setImage:0];
  }

  return sub_100568064();
}

void sub_10031C970()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = v1[v2];
  sub_1005681B0(v4);
  *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory) = v4;
  sub_1007217A8();
}

uint64_t sub_10031CA28(void *a1)
{
  sub_10000C888(a1, a1[3]);
  v2 = sub_1007514C4();
  if (sub_100753944())
  {
    UIContentSizeCategoryExtraExtraExtraLarge;
  }

  sub_10007271C(a1, a1[3]);
  return sub_1007514D4();
}

void (*sub_10031CAF8(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10031CB6C;
}

void sub_10031CB6C(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    sub_10020ED5C(Strong);

    Strong = v4;
  }

  else
  {
    sub_10020ED5C(Strong);
  }
}

void sub_10031CC14()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_1006FF0CC(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton] = v7;
  if (v4)
  {
    v5 = v7;
    [v4 removeFromSuperview];
  }

  else
  {
    v6 = v7;
  }

  [v1 setNeedsLayout];
}

void sub_10031CD1C()
{
  v0 = sub_100749CD4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100749D14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[qword_10093CB70];
    if (v9)
    {
      v14 = Strong;
      v10 = v9;
      [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
      v11 = [v10 isMuted];
      [v14 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
      (*(v5 + 104))(v7, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v4);
      v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      if (!v11)
      {
        v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
      }

      (*(v1 + 104))(v3, *v12, v0);
      sub_10051D504(v7, v3);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }
  }
}

void sub_10031D000()
{
  sub_1005F48BC();
  v1 = [v0 contentView];
  sub_1006787A8();
  if (v2)
  {
    v3 = sub_100753064();
  }

  else
  {
    v3 = 0;
  }

  [v1 setAccessibilityLabel:v3];
}

uint64_t sub_10031D11C()
{
  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A5A00;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_100016C60(0, &qword_100922300, UIView_ptr);
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  *(v1 + 32) = v2;
  v4 = (v3 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay);
  if (*v4 && (v5 = v4[1], ObjectType = swift_getObjectType(), v7 = *(v5 + 144), swift_unknownObjectRetain(), v8 = v7(ObjectType, v5), swift_unknownObjectRelease(), v8))
  {
    v9 = v8;
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  sub_1004A0110(v9);
  return v1;
}

void sub_10031D2E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000164A8(v4, v5);
  v6 = (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay);
  if (*v6)
  {
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(ObjectType, v7);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      swift_getObjectType();
      sub_10074D394();
    }
  }
}

void sub_10031D440(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100749574();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000164A8(v4, v5);
  v6 = (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay);
  if (*v6)
  {
    v7 = v6[1];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(ObjectType, v7);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      swift_getObjectType();
      sub_10074D384();
    }
  }
}

void sub_10031D5B0()
{
  swift_weakDestroy();
  swift_weakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton);
}

id sub_10031D630()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StoryCardCollectionViewCell(uint64_t a1)
{
  result = qword_100932FA0;
  if (!qword_100932FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10031D7C4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10020ED5C(Strong);
}

uint64_t (*sub_10031D854(uint64_t **a1))()
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
  v2[4] = sub_10031CAF8(v2);
  return sub_1000181A8;
}

uint64_t sub_10031D8EC(uint64_t result, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_10031D95C(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double sub_10031D9A8(uint64_t a1, __n128 a2)
{
  swift_weakAssign();

  return result;
}

uint64_t sub_10031DA68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10031DABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10031DB28(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_10031DBC4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v5 = v2;
  v6 = sub_100753FC4();

  return v6 & 1;
}

void sub_10031DC6C(uint64_t a1)
{
  if (a1)
  {
    if ((*((swift_isaMask & *v1) + 0x330))())
    {
      v2 = [v1 backgroundView];
      if (v2)
      {
        v3 = v2;
        [v2 setBackgroundColor:0];
      }
    }
  }
}

uint64_t sub_10031DD68(uint64_t a1)
{
  result = sub_10031E474(&qword_100932FB8, type metadata accessor for StoryCardCollectionViewCell, &unk_1007CD02C);
  *(a1 + 8) = result;
  return result;
}

id sub_10031DE50(void *a1)
{
  sub_100316BB4();

  return [a1 setNeedsLayout];
}

id sub_10031DE90()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005F6EC0();
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v8 = v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isExpanded;
  v6[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isExpanded] = v8;
  [v6 setUserInteractionEnabled:?];
  *(*&v6[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer] + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isExpanded) = v6[v9];
  [v6 setNeedsLayout];
  [v6 setNeedsDisplay];
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  v11 = v1[v7];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded;
  *(v10 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded) = v11;
  v13 = *(v10 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView);
  v13[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded] = v11;
  [v13 setNeedsLayout];
  *(*(v10 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView) + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_isExpanded) = *(v10 + v12);
  sub_10020E198();
  if (v1[v7])
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 20.0;
  }

  v15 = type metadata accessor for TodayCardInfoLayerView(0);
  v22.receiver = v6;
  v22.super_class = v15;
  objc_msgSendSuper2(&v22, "_setContinuousCornerRadius:", v14);
  sub_10056880C();
  if (v1[v7])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 20.0;
  }

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = v16;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v17 = 3;
  }

  else
  {
    v17 = -1;
  }

  sub_10072118C(v5, v17, v16);
  (*(v3 + 8))(v5, v2);
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v18)
  {
    v19 = v18;
    [v19 _setContinuousCornerRadius:v16];
    v20 = [v19 layer];
    [v20 setMaskedCorners:sub_1007535E4()];
  }

  sub_100316BB4();
  sub_1005F4144();
  sub_10012A1C4();
  return [v1 setNeedsLayout];
}

void sub_10031E18C()
{
  v1 = v0;
  [v0 setNeedsLayout];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v5 = v1[*v4];
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory) = v5;
  if (v5 != 7)
  {
    v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer);
    v6[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_sizeCategory] = v5;
    if (v5 == 4)
    {
      v7 = v6[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    [v6 setHidden:v7 & 1];
    *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView) + qword_1009441B8) = v5;
    sub_100679A78();
  }

  if (v1[v3])
  {
    v8 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_sizeCategory) = v1[*v8];
  sub_100721640();
}

uint64_t sub_10031E2CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10031E304()
{
  v1 = sub_100741494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

uint64_t sub_10031E474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10031E4CC(uint64_t *a1@<X8>)
{
  v18[0] = sub_10074E984();
  v2 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v12 = *(v6 + 8);
  v12(v11, v5);
  if (v18[1] && (v13 = sub_100743A34(), , (v13 & 1) != 0))
  {
    a1[3] = &type metadata for CGFloat;
    a1[4] = &protocol witness table for CGFloat;
    *a1 = 0x4040000000000000;
  }

  else
  {
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v12(v8, v5);
    v14 = v18[0];
    if (*(v2 + 88))(v4, v18[0]) == enum case for Shelf.ContentType.ribbonBar(_:) && (sub_100747B74())
    {
      if (qword_100921728 != -1)
      {
        swift_once();
      }

      v15 = sub_100750B04();
      v16 = sub_10000D0FC(v15, qword_1009820F8);
      a1[3] = v15;
      a1[4] = &protocol witness table for StaticDimension;
      v17 = sub_10000D134(a1);
      (*(*(v15 - 8) + 16))(v17, v16, v15);
    }

    else
    {
      a1[3] = &type metadata for Double;
      a1[4] = &protocol witness table for Double;
      *a1 = 0;
    }

    (*(v2 + 8))(v4, v14);
  }
}

uint64_t sub_10031E808@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v133 = a2;
  v122 = sub_100750304();
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = (&v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = sub_10000C518(&qword_100923580, &unk_1007B93C0);
  __chkstk_darwin(v127);
  v131 = &v117 - v4;
  v5 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v5 - 8);
  v128 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v132 = &v117 - v8;
  v9 = sub_10074E984();
  v129 = *(v9 - 8);
  v130 = v9;
  __chkstk_darwin(v9);
  v135 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v11 - 8);
  v125 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v124 = &v117 - v14;
  __chkstk_darwin(v15);
  v126 = &v117 - v16;
  __chkstk_darwin(v17);
  v19 = &v117 - v18;
  __chkstk_darwin(v20);
  v22 = &v117 - v21;
  __chkstk_darwin(v23);
  v25 = &v117 - v24;
  v119 = sub_100754724();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v123 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v117 - v31;
  __chkstk_darwin(v33);
  v35 = &v117 - v34;
  v136 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v36 = *(v28 + 8);
  v36(v35, v27);
  v134 = v36;
  if (v137)
  {
    v37 = sub_100743A34();

    if (v37)
    {
      sub_100747C04();
      swift_getKeyPath();
      sub_1007525B4();

      v134(v32, v27);
      v38 = v138;
      if (v138)
      {
      }

      v39 = v119;
      v40 = v118;
      v41 = v117;
      if (qword_100921708 != -1)
      {
        swift_once();
      }

      v42 = sub_100750B04();
      sub_10000D0FC(v42, qword_100982098);
      sub_100747BA4();
      sub_1007502D4();
      sub_100750564();
      v44 = v43;
      swift_unknownObjectRelease();
      v45 = *(v40 + 8);
      v45(v41, v39);
      if (qword_100921710 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v42, qword_1009820B0);
      sub_100747BA4();
      sub_1007502D4();
      sub_100750564();
      v47 = v46;
      swift_unknownObjectRelease();
      result = (v45)(v41, v39);
      v49 = v44 + v47;
      if (v38)
      {
        v49 = v44;
      }

      v50 = v133;
      *(v133 + 3) = &type metadata for CGFloat;
      *(v50 + 4) = &protocol witness table for CGFloat;
      *v50 = v49;
      return result;
    }
  }

  sub_100747BB4();
  sub_10000C8CC(v22, &unk_10093D6E0, &unk_1007A6080);
  sub_100028CD0(v19, v25);
  v51 = *(v28 + 48);
  if (v51(v25, 1, v27) == 1)
  {
    sub_10000C8CC(v25, &unk_10093D6E0, &unk_1007A6080);
    v52 = v131;
LABEL_19:
    v59 = v123;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v60 = v59;
    v61 = v134;
    v134(v60, v27);
    v63 = v124;
    v62 = v125;
    sub_100747BB4();
    sub_10000C8CC(v63, &unk_10093D6E0, &unk_1007A6080);
    v64 = v126;
    sub_100028CD0(v62, v126);
    if (v51(v64, 1, v27) == 1)
    {
      sub_10000C8CC(v64, &unk_10093D6E0, &unk_1007A6080);
      v65 = 1;
      v66 = v132;
    }

    else
    {
      swift_getKeyPath();
      v66 = v132;
      sub_1007525B4();

      v61(v64, v27);
      v65 = 0;
    }

    v68 = v128;
    v67 = v129;
    v69 = v52;
    v70 = v130;
    (*(v129 + 56))(v66, v65, 1, v130);
    v71 = *(v127 + 48);
    (*(v67 + 16))(v69, v135, v70);
    sub_100028D40(v66, v69 + v71);
    if ((*(v67 + 48))(v69 + v71, 1, v70) == 1)
    {
      v72 = enum case for Shelf.ContentType.ribbonBar(_:);
      v73 = (*(v67 + 88))(v69, v70);
    }

    else
    {
      sub_100028D40(v69 + v71, v68);
      v74 = *(v67 + 88);
      v75 = v74(v68, v70);
      v72 = enum case for Shelf.ContentType.ribbonBar(_:);
      if (v75 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        v76 = v121;
        *v121 = UIFontTextStyleBody;
        v77 = v120;
        v78 = v122;
        (*(v120 + 104))(v76, enum case for FontSource.textStyle(_:), v122);
        v79 = sub_100750B04();
        v80 = v133;
        *(v133 + 3) = v79;
        v80[4] = &protocol witness table for StaticDimension;
        sub_10000D134(v80);
        v139 = v78;
        v140 = &protocol witness table for FontSource;
        v81 = sub_10000D134(&v137);
        (*(v77 + 16))(v81, v76, v78);
        v82 = UIFontTextStyleBody;
        sub_100750B14();
        (*(v77 + 8))(v76, v78);
        sub_10000C8CC(v66, &unk_100933370, &unk_1007A8CE0);
        v83 = *(v67 + 8);
        v83(v135, v70);
        sub_10000C8CC(v69 + v71, &unk_100933370, &unk_1007A8CE0);
        return (v83)(v69, v70);
      }

      (*(v67 + 8))(v68, v70);
      v73 = v74(v69, v70);
    }

    if (v73 == v72)
    {
      if ((sub_100747B74() & 1) == 0)
      {
        v93 = sub_100747B94();
        [v93 userInterfaceIdiom];

        v94 = v121;
        *v121 = UIFontTextStyleBody;
        v95 = v120 + 104;
        v96 = v122;
        (*(v120 + 104))(v94, enum case for FontSource.textStyle(_:), v122);
        v97 = sub_100750B04();
        v98 = v133;
        *(v133 + 3) = v97;
        v98[4] = &protocol witness table for StaticDimension;
        v136 = sub_10000D134(v98);
        v99 = (v95 - 88);
        v100 = v67;
        v101 = (v95 - 96);
        v102 = (v100 + 8);
        v139 = v96;
        v140 = &protocol witness table for FontSource;
        v103 = sub_10000D134(&v137);
        (*v99)(v103, v94, v96);
        v104 = UIFontTextStyleBody;
        sub_100750B14();
        (*v101)(v94, v96);
        sub_10000C8CC(v132, &unk_100933370, &unk_1007A8CE0);
        (*v102)(v135, v70);
LABEL_44:
        v110 = v69 + v71;
        v111 = &unk_100933370;
        v112 = &unk_1007A8CE0;
        return sub_10000C8CC(v110, v111, v112);
      }

      v84 = v121;
      *v121 = UIFontTextStyleBody;
      v85 = v120;
      v86 = v122;
      (*(v120 + 104))(v84, enum case for FontSource.textStyle(_:), v122);
      v87 = sub_100750B04();
      v88 = v133;
      *(v133 + 3) = v87;
      v88[4] = &protocol witness table for StaticDimension;
      sub_10000D134(v88);
      v139 = v86;
      v140 = &protocol witness table for FontSource;
      v89 = sub_10000D134(&v137);
      (*(v85 + 16))(v89, v84, v86);
      v90 = UIFontTextStyleBody;
      sub_100750B14();
      (*(v85 + 8))(v84, v86);
    }

    else
    {
      if (v73 == enum case for Shelf.ContentType.reviewSummary(_:))
      {
        v91 = v133;
        *(v133 + 3) = &type metadata for Double;
        v91[4] = &protocol witness table for Double;
        v92 = 0x4038000000000000;
      }

      else
      {
        if (v73 == enum case for Shelf.ContentType.productRatings(_:))
        {
          v105 = sub_100747B94();
          v106 = sub_1007537D4();

          v107 = 52.0;
          if (v106)
          {
            v107 = 36.0;
          }

          v108 = v133;
          *(v133 + 3) = &type metadata for Double;
          *(v108 + 4) = &protocol witness table for Double;
          *v108 = v107;
          goto LABEL_43;
        }

        if (v73 != enum case for Shelf.ContentType.productReviewAction(_:))
        {
          if (v73 != enum case for Shelf.ContentType.arcadeFooter(_:) && v73 != enum case for Shelf.ContentType.uber(_:))
          {
            if (qword_100921738 != -1)
            {
              swift_once();
            }

            v113 = sub_100750B04();
            v114 = sub_10000D0FC(v113, qword_100982128);
            v115 = v133;
            *(v133 + 3) = v113;
            v115[4] = &protocol witness table for StaticDimension;
            v116 = sub_10000D134(v115);
            (*(*(v113 - 8) + 16))(v116, v114, v113);
            sub_10000C8CC(v66, &unk_100933370, &unk_1007A8CE0);
            (*(v67 + 8))(v135, v70);
            v111 = &qword_100923580;
            v112 = &unk_1007B93C0;
            v110 = v69;
            return sub_10000C8CC(v110, v111, v112);
          }

          v109 = v133;
          *(v133 + 3) = &type metadata for Double;
          *(v109 + 4) = &protocol witness table for Double;
          *v109 = 0.0;
          goto LABEL_43;
        }

        v91 = v133;
        *(v133 + 3) = &type metadata for Double;
        v91[4] = &protocol witness table for Double;
        v92 = 0x4042000000000000;
      }

      *v91 = v92;
    }

LABEL_43:
    sub_10000C8CC(v66, &unk_100933370, &unk_1007A8CE0);
    (*(v67 + 8))(v135, v70);
    goto LABEL_44;
  }

  swift_getKeyPath();
  sub_1007525B4();

  v53 = v137;
  v134(v25, v27);
  v52 = v131;
  if (!v53)
  {
    goto LABEL_19;
  }

  v54 = sub_100743A34();

  if ((v54 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v55 = sub_100750B04();
  v56 = sub_10000D0FC(v55, qword_100982098);
  v57 = v133;
  *(v133 + 3) = v55;
  v57[4] = &protocol witness table for StaticDimension;
  v58 = sub_10000D134(v57);
  return (*(*(v55 - 8) + 16))(v58, v56, v55);
}

uint64_t sub_10031F808@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v54 = a2;
  v3 = sub_10074F704();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10000C518(&qword_100923580, &unk_1007B93C0) - 8;
  __chkstk_darwin(v53);
  v52 = &v46 - v5;
  v6 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v6 - 8);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v15 = sub_10074E984();
  v51 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v18 = *(v12 + 8);
  v18(v14, v11);
  v50 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v19 = v14;
  v20 = v17;
  v21 = v52;
  v18(v19, v11);
  v22 = v10;
  v23 = v15;
  v24 = v51;
  v25 = *(v53 + 56);
  (*(v51 + 16))(v21, v20, v23);
  sub_100028D40(v22, &v21[v25]);
  v26 = *(v24 + 88);
  v27 = v26(v21, v23);
  v28 = enum case for Shelf.ContentType.categoryBrick(_:);
  if (v27 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    sub_10000C8CC(&v21[v25], &unk_100933370, &unk_1007A8CE0);
    goto LABEL_3;
  }

  if ((*(v24 + 48))(&v21[v25], 1, v23) == 1)
  {
LABEL_14:
    if (v26(v21, v23) == enum case for Shelf.ContentType.action(_:))
    {
      v38 = v46;
      sub_100747B84();
      sub_10074F5B4();
      v40 = v39;
      (*(v47 + 8))(v38, v48);
      v41 = v54;
      *(v54 + 3) = &type metadata for CGFloat;
      *(v41 + 4) = &protocol witness table for CGFloat;
      *v41 = v40 * 0.5;
      sub_10000C8CC(v22, &unk_100933370, &unk_1007A8CE0);
      (*(v24 + 8))(v20, v23);
      v42 = &v21[v25];
      v43 = &unk_100933370;
      v44 = &unk_1007A8CE0;
    }

    else
    {
      v45 = v54;
      *(v54 + 3) = &type metadata for Double;
      *(v45 + 4) = &protocol witness table for Double;
      *v45 = 0.0;
      sub_10000C8CC(v22, &unk_100933370, &unk_1007A8CE0);
      (*(v24 + 8))(v20, v23);
      v43 = &qword_100923580;
      v44 = &unk_1007B93C0;
      v42 = v21;
    }

    return sub_10000C8CC(v42, v43, v44);
  }

  v35 = v49;
  sub_100028D40(&v21[v25], v49);
  if (v26(v35, v23) != v28)
  {
    (*(v24 + 8))(v35, v23);
    goto LABEL_14;
  }

  sub_10000C8CC(&v21[v25], &unk_100933370, &unk_1007A8CE0);
  (*(v24 + 8))(v21, v23);
LABEL_3:
  v29 = sub_10074F3F4();
  v55[3] = v29;
  v55[4] = sub_1001FC0C4();
  v30 = sub_10000D134(v55);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.shelf_header(_:), v29);
  LOBYTE(v29) = sub_10074FC74();
  sub_10000C620(v55);
  if ((v29 & 1) != 0 && (sub_100747B74() & 1) == 0)
  {
    v36 = v54;
    *(v54 + 3) = &type metadata for Double;
    *(v36 + 4) = &protocol witness table for Double;
    *v36 = 0.0;
  }

  else
  {
    if (qword_100921748 != -1)
    {
      swift_once();
    }

    v31 = sub_100750B04();
    v32 = sub_10000D0FC(v31, qword_100982158);
    v33 = v54;
    *(v54 + 3) = v31;
    v33[4] = &protocol witness table for StaticDimension;
    v34 = sub_10000D134(v33);
    (*(*(v31 - 8) + 16))(v34, v32, v31);
  }

  sub_10000C8CC(v22, &unk_100933370, &unk_1007A8CE0);
  return (*(v24 + 8))(v20, v23);
}

id sub_10031FF0C(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  LODWORD(v5) = a2;
  v53 = a1;
  swift_getObjectType();
  v6 = sub_10000C518(&unk_100923600, qword_1007A68D8);
  __chkstk_darwin(v6 - 8);
  v54 = &v42 - v7;
  v8 = sub_100750E94();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  __chkstk_darwin(v17);
  v18 = sub_100750BD4();
  v49 = *(v18 - 8);
  v50 = v18;
  __chkstk_darwin(v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_titleLabel];
  sub_1007477B4();
  v22 = v21;
  v55[5] = *&v3[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  sub_100750434();
  v23 = [v3 traitCollection];
  if (qword_10091FDE8 != -1)
  {
    swift_once();
  }

  if (sub_100753804() & 1) != 0 || (sub_1007537D4())
  {

    sub_10000C620(v55);
LABEL_6:
    v24._countAndFlagsBits = 0x525F4F545F504154;
    v24._object = 0xEB00000000455441;
    goto LABEL_7;
  }

  v46 = v20;
  v47 = v5;
  v43 = "ion";
  v56._object = 0x8000000100765D00;
  v56._countAndFlagsBits = 0xD000000000000016;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v32 = sub_1007458B4(v56, v58);
  v44 = v33;
  v45 = v32;
  sub_100750E84();
  if (qword_100921138 != -1)
  {
    swift_once();
  }

  v34 = sub_100750534();
  sub_10000D0FC(v34, qword_1009810E0);
  sub_100750E54();
  v35 = *(v48 + 8);
  v35(v10, v8);
  sub_100750E74();
  v35(v13, v8);
  sub_100750E64();
  v35(v16, v8);
  sub_100750BB4();
  v5 = v46;
  sub_100750BF4();
  sub_100750BC4();
  v37 = v36;
  sub_10000C888(v55, v55[3]);
  sub_100751254();
  v39 = v38;
  sub_10000C888(&qword_10097C968, qword_10097C980);
  sub_100750574();
  v41 = v40;

  (*(v49 + 8))(v5, v50);
  sub_10000C620(v55);
  LOBYTE(v5) = v47;
  if (v22 < v39 + v37 + v41)
  {
    goto LABEL_6;
  }

  v24._object = (v43 | 0x8000000000000000);
  v24._countAndFlagsBits = 0xD000000000000016;
LABEL_7:
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_1007458B4(v24, v57);
  v25 = v54;
  v26 = sub_100753064();

  [v52 setText:v26];

  v27 = sub_10074FA44();
  if (v27)
  {
    v55[0] = v27;
    sub_100742FE4();
    sub_100752764();
    sub_1003207C8();
    sub_100752684();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = sub_10000C518(&qword_1009235F8, &qword_1007A68B8);
  (*(*(v29 - 8) + 56))(v25, v28, 1, v29);
  v30 = OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_rateAction;
  swift_beginAccess();
  sub_100320758(v25, &v4[v30]);
  swift_endAccess();
  v4[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_isSingleColumn] = v5 & 1;
  [v4 setNeedsLayout];
  return [v4 setNeedsLayout];
}

double sub_100320524(void *a1)
{
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_1009202D8 != -1)
  {
    swift_once();
  }

  v18.is_nil = qword_1009292A0;
  v18.value._rawValue = 0;
  isa = sub_1007537C4(v18, v7).super.isa;
  sub_100321184();
  v10 = sub_100753A64();
  (*(v3 + 104))(v6, enum case for SystemImage.starFill(_:), v2);
  v11 = [v10 configurationWithTraitCollection:isa];
  v12 = sub_100743AE4();

  (*(v3 + 8))(v6, v2);
  v13 = [v12 imageWithRenderingMode:2];

  [v13 size];
  v15 = v14;

  return (v15 + 12.0) * 5.0 + -12.0;
}

uint64_t sub_100320758(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923600, qword_1007A68D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003207C8()
{
  result = qword_100932FC8;
  if (!qword_100932FC8)
  {
    sub_100742FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100932FC8);
  }

  return result;
}

double sub_100320820(void *a1, double a2, double a3)
{
  v5 = sub_100750E94();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v62 - v10;
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  __chkstk_darwin(v14);
  v71 = &v62 - v15;
  v16 = sub_100750BD4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v74 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v65 = &v62 - v20;
  v21 = sub_100750F34();
  swift_allocObject();
  v73 = sub_100750EF4();
  v75[0] = v73;
  v67 = v21;
  sub_100750434();
  v68 = a1;
  v22 = [a1 traitCollection];
  if (qword_10091FDE8 != -1)
  {
    swift_once();
  }

  v23 = sub_100753804();
  v24 = &qword_100921000;
  v66 = v8;
  v69 = v16;
  v72 = v17;
  if (v23 & 1) != 0 || (v24 = &qword_100921000, (sub_1007537D4()))
  {

    sub_10000C620(v76);
LABEL_6:
    v25 = v6;
    v26._countAndFlagsBits = 0x525F4F545F504154;
    v26._object = 0xEB00000000455441;
    goto LABEL_7;
  }

  v64 = "ion";
  v81._object = 0x8000000100765D00;
  v81._countAndFlagsBits = 0xD000000000000016;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  sub_1007458B4(v81, v85);
  sub_100750E84();
  if (qword_100921138 != -1)
  {
    swift_once();
  }

  v38 = sub_100750534();
  sub_10000D0FC(v38, qword_1009810E0);
  v39 = v70;
  sub_100750E54();
  v40 = *(v6 + 8);
  v40(v66, v5);
  sub_100750E74();
  v40(v39, v5);
  sub_100750E64();
  v40(v13, v5);
  v8 = v66;
  sub_100750BB4();
  v41 = v65;
  sub_100750BF4();
  sub_100750BC4();
  v43 = v42;
  sub_10000C888(v76, v77);
  sub_100751254();
  v45 = v44;
  sub_10000C888(&qword_10097C968, qword_10097C980);
  sub_100750574();
  v47 = v46;

  (*(v72 + 8))(v41, v69);
  sub_10000C620(v76);
  v24 = &qword_100921000;
  if (v45 + v43 + v47 > a2)
  {
    goto LABEL_6;
  }

  v25 = v6;
  v26._object = (v64 | 0x8000000000000000);
  v26._countAndFlagsBits = 0xD000000000000016;
LABEL_7:
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  v80._countAndFlagsBits = sub_1007458B4(v26, v83);
  v27 = v13;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  sub_1007458B4(v80, v84);

  sub_100750E84();
  if (v24[39] != -1)
  {
    swift_once();
  }

  v28 = sub_100750534();
  sub_10000D0FC(v28, qword_1009810E0);
  v29 = v70;
  sub_100750E54();
  v30 = v8;
  v31 = *(v25 + 8);
  v31(v30, v5);
  v32 = 1;
  sub_100750E74();
  v31(v29, v5);
  sub_100750E64();
  v63 = v27;
  v64 = v5;
  v31(v27, v5);
  sub_100750BB4();
  v33 = v74;
  sub_100750BF4();
  sub_10002C478(&qword_10097C968, v76);
  v34 = v69;
  v78[3] = v69;
  v78[4] = &protocol witness table for LabelPlaceholder;
  v35 = sub_10000D134(v78);
  v36 = v72;
  (*(v72 + 16))(v35, v33, v34);
  v75[0] = v73;
  sub_100750434();
  v37 = [v68 traitCollection];
  if ((sub_100753804() & 1) == 0)
  {
    if (sub_1007537D4())
    {
      v32 = 1;
      v36 = v72;
    }

    else
    {
      v82._object = 0x8000000100765D00;
      v82._countAndFlagsBits = 0xD000000000000016;
      v86._countAndFlagsBits = 0;
      v86._object = 0xE000000000000000;
      sub_1007458B4(v82, v86);
      v48 = v66;
      sub_100750E84();
      v49 = v70;
      sub_100750E54();
      v50 = v64;
      v31(v48, v64);
      v51 = v63;
      sub_100750E74();
      v31(v49, v50);
      sub_100750E64();
      v31(v51, v50);
      sub_100750BB4();
      v52 = v65;
      sub_100750BF4();
      sub_100750BC4();
      v54 = v53;
      sub_10000C888(v79, v79[3]);
      sub_100751254();
      v56 = v55;
      sub_10000C888(v76, v77);
      sub_100750574();
      v58 = v57;
      v36 = v72;
      (*(v72 + 8))(v52, v34);
      v32 = v56 + v54 + v58 > a2;
    }
  }

  sub_1003EBCE8(v32, v75);
  sub_10000C888(v75, v75[3]);
  sub_100751254();
  v60 = v59;

  (*(v36 + 8))(v74, v34);
  sub_10000C620(v75);
  sub_10002C528(v76);
  return v60;
}

unint64_t sub_100321184()
{
  result = qword_1009448C0;
  if (!qword_1009448C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009448C0);
  }

  return result;
}

id sub_1003211D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v45 = a6;
  v41 = a3;
  v8 = sub_10000C518(&qword_10093FDB0, &unk_1007AC460);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_100749A94();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_textLabel];
  sub_10074ECB4();
  sub_100745BD4();

  v42 = v6;
  v16 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_separatorView];
  sub_100749A44();
  sub_100321B68(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v43 = a4;
  v17 = sub_100754324();
  v44 = *(v12 + 8);
  v44(v14, v11);
  [v16 setHidden:v17 & 1];
  if ((sub_10074EC84() & 2) != 0)
  {
    [v15 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v15 _setTextColorFollowsTintColor:0];
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v18 = sub_100753DD4();
    [v15 setTextColor:v18];
  }

  v19 = v45;
  swift_getObjectType();
  v20 = sub_100321BB0(v19);
  v21 = type metadata accessor for Accessory(0);
  v22 = v42;
  if (v20)
  {
    swift_storeEnumTagMultiPayload();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(*(v21 - 8) + 56))(v10, v23, 1, v21);
  sub_100644C38(v10, v41);
  sub_10000C8CC(v10, &qword_10093FDB0, &unk_1007AC460);
  v24 = [v45 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 1 || (sub_100749A54(), v26 = sub_100754324(), v44(v14, v11), (v26 & 1) != 0))
  {
    v27 = [v22 contentView];
    [v45 pageMarginInsets];
  }

  else
  {
    v27 = [v22 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  [v27 setLayoutMargins:{top, left, bottom, right}];

  v32 = sub_10074ECC4();
  if (v32)
  {

    v33 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v33 && ([v33 isHidden] & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v34 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (!v34 || [v34 isHidden])
    {
      goto LABEL_18;
    }
  }

  v35 = v32 == 0;
  v36 = sub_1006459BC();
  [v36 setHidden:v35];

LABEL_18:
  sub_100749A54();
  v37 = sub_100754324();
  v44(v14, v11);
  v22[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isVertical] = (v37 & 1) == 0;
  if (v37)
  {
    v38 = 1;
  }

  else
  {
    v38 = 3;
  }

  [v15 setNumberOfLines:v38];
  [v22 setNeedsLayout];
  return [v22 setNeedsLayout];
}

double sub_1003216C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0));

    sub_100644FDC([v6 init]);
    v7 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      sub_10074F774();
      sub_10074ECB4();
      v11 = v10;

      if (v11)
      {
        v12 = sub_100753064();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v16 = *&v3[v7];
      if (v16)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = a2;
        *(v17 + 24) = a1;
        v18 = &v16[qword_100934DD0];
        v19 = *&v16[qword_100934DD0];
        v20 = *&v16[qword_100934DD0 + 8];
        *v18 = sub_100321ED0;
        v18[1] = v17;

        v21 = v16;

        sub_1000164A8(v19, v20);
      }
    }

    v3[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isDisplayingSearchAd] = 1;
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isDisplayingSearchAd] = 0;
    v13 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }

  return result;
}

uint64_t sub_1003218C8(uint64_t a1)
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

void sub_100321A5C(int a1, id a2)
{
  v2 = [a2 traitCollection];
  [v2 horizontalSizeClass];
}

uint64_t sub_100321B68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_100321BB0(void *a1)
{
  if ((sub_10074EC84() & 4) != 0)
  {
    return 1;
  }

  if ((sub_10074EC84() & 8) == 0)
  {
    return 0;
  }

  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  return v4 == 1;
}

double sub_100321C2C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = [a6 traitCollection];
  v13 = [v12 horizontalSizeClass];

  if (v13 == 1)
  {
    [a6 pageMarginInsets];
    top = v14;
    left = v16;
    bottom = v18;
    right = v20;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  sub_10074ECD4();

  sub_10000C518(&qword_1009253C0, &unk_1007A8D20);
  if (swift_dynamicCast())
  {
    sub_10000C888(&v32, *(&v33 + 1));
    v22 = sub_10074CA24();
    sub_10000C620(&v32);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_10000C8CC(&v32, &qword_1009253C8, qword_1007B15B0);
    v22 = 0;
  }

  v23 = sub_10074ECB4();
  v25 = v24;
  v26 = sub_10074ECC4();
  if (v26)
  {
  }

  v27 = sub_100321BB0(a6);
  if (qword_100921B28 != -1)
  {
    swift_once();
  }

  v28 = sub_100743CB4();
  v29 = sub_10000D0FC(v28, qword_100982A80);
  v30 = sub_100647CF4(v29, a6, v23, v25, v26 != 0, v27, v22 & 1, v7, a2, a3, top, left, bottom, right, ObjectType);

  return v30;
}

uint64_t sub_100321E90()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100321ED8(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v9 = v8;
  if (qword_100921B28 != -1)
  {
    swift_once();
  }

  v10 = sub_100743CB4();
  v11 = sub_10000D0FC(v10, qword_100982A80);
  v12 = sub_1006485E8(v11, a5, v9, a3);
  v14 = v13;
  v15 = objc_opt_self();
  v16 = [v15 absoluteDimension:v12];
  v17 = [v15 absoluteDimension:v14];
  v18 = objc_opt_self();
  v19 = [v18 sizeWithWidthDimension:v16 heightDimension:v17];

  v20 = [objc_opt_self() itemWithLayoutSize:v19];
  v21 = v14 * a1;
  v22 = [v15 absoluteDimension:v12];
  v23 = [v15 absoluteDimension:v21];
  v24 = [v18 sizeWithWidthDimension:v22 heightDimension:v23];

  v25 = objc_opt_self();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007A5CF0;
  *(v26 + 32) = v20;
  sub_100016C60(0, &qword_100923478, NSCollectionLayoutItem_ptr);
  v27 = v20;
  isa = sub_100753294().super.isa;

  v29 = [v25 verticalGroupWithLayoutSize:v24 subitems:isa];

  [v29 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v30 = [objc_opt_self() fixedSpacing:0.0];
  [v29 setInterItemSpacing:v30];

  return v29;
}

double sub_100322210()
{
  v0 = sub_10000C518(&qword_100933020, &qword_1007BA1E8);
  v54 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v37 - v1;
  v3 = sub_10074F704();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074DC24();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074DC44();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v50 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100750BD4();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v55 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100750E94();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  sub_100743EB4();
  sub_100322994(&qword_100933028, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_1007468B4();
  v16 = v56[0];
  if (!v56[0])
  {
    return 0.0;
  }

  v41 = v2;
  v42 = v0;
  sub_100038D38();
  if (qword_1009213D8 != -1)
  {
    swift_once();
  }

  v17 = sub_100750534();
  sub_10000D0FC(v17, qword_1009818C0);
  swift_getKeyPath();
  sub_100746914();

  v18 = v56[0];
  v19 = sub_100753C14();

  v37[1] = v16;
  sub_100743E94();
  v40 = v19;
  v20 = sub_100743074();

  sub_100750E84();
  sub_100750E54();
  v21 = v44;
  v38 = *(v10 + 8);
  v38(v12, v44);
  v22 = *(v10 + 16);
  v39 = v15;
  v22(v12, v15, v21);
  v37[0] = v20;
  sub_100750BB4();
  v23 = v55;
  sub_100750C14();
  if (qword_100920A60 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v5, qword_10097FCE0);
  (*(v43 + 16))(v45, v24, v5);
  v25 = v51;
  v56[3] = v51;
  v56[4] = &protocol witness table for LabelPlaceholder;
  v26 = sub_10000D134(v56);
  v27 = v49;
  (*(v49 + 16))(v26, v23, v25);
  v28 = v50;
  sub_10074DC34();
  swift_getKeyPath();
  v29 = v46;
  sub_100746914();

  sub_10074F674();
  (*(v47 + 8))(v29, v48);
  swift_getKeyPath();
  sub_100746914();

  v30 = v56[0];
  sub_100322994(&qword_100933030, &type metadata accessor for LinkableTextCollectionViewCellLayout, &protocol conformance descriptor for LinkableTextCollectionViewCellLayout);
  v31 = v41;
  v32 = v53;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  sub_100751254();
  v35 = v34;

  (*(v54 + 8))(v31, v33);
  (*(v52 + 8))(v28, v32);
  (*(v27 + 8))(v55, v25);
  v38(v39, v21);
  return v35;
}

uint64_t sub_100322994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100322A28()
{
  v102 = sub_10000C518(&qword_100927FD0, &qword_1007AB6D0);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v76 - v0;
  v95 = sub_100748604();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_100748624();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100750E94();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v88 = &v76 - v5;
  v85 = sub_100744654();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100750954();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v79 = &v76 - v9;
  __chkstk_darwin(v10);
  v80 = &v76 - v11;
  v93 = sub_100750BD4();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v111 = &v76 - v14;
  v15 = sub_100741084();
  v109 = *(v15 - 8);
  v110 = v15;
  __chkstk_darwin(v15);
  v108 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074F704();
  v106 = *(v17 - 1);
  v107 = v17;
  __chkstk_darwin(v17);
  v105 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10074EAB4();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v76 - v22;
  v24 = sub_100747C14();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  __chkstk_darwin(v28 - 8);
  v112 = sub_10000C518(&qword_10092A048, &qword_1007AE508);
  v86 = *(v112 - 8);
  __chkstk_darwin(v112);
  v30 = &v76 - v29;
  sub_100744694();
  sub_100323A2C(&qword_10092A050, &type metadata accessor for ReviewSummary, &protocol conformance descriptor for ReviewSummary);
  sub_1007468B4();
  v31 = aBlock[0];
  if (!aBlock[0])
  {
    return 0.0;
  }

  sub_100746964();
  sub_100752EB4();
  sub_100746884();
  sub_100747BD4();
  (*(v25 + 8))(v27, v24);
  sub_10074EA54();
  sub_100323A2C(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v32 = v104;
  v33 = sub_100754324();
  v34 = *(v103 + 8);
  v34(v20, v32);
  v34(v23, v32);
  swift_getKeyPath();
  sub_1001696DC();
  sub_100752E94();

  LODWORD(v104) = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  v35 = v105;
  sub_100746914();

  sub_10074F674();
  (*(v106 + 8))(v35, v107);
  swift_getKeyPath();
  sub_100746914();

  v36 = v118;
  v37 = v108;
  sub_100744644();
  v77 = v30;
  if ((v33 ^ 1))
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_1007537E4();
  }

  v40 = sub_1002AE534(v37, v38 & 1, v36);
  (*(v109 + 8))(v37, v110);
  v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v40];
  v42 = [v40 length];
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = v36;
  *(v43 + 32) = v41;
  *(v43 + 40) = 1;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_100047814;
  *(v44 + 24) = v43;
  v116 = sub_1000B18A8;
  v117 = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  v115 = &unk_100871498;
  v45 = _Block_copy(aBlock);
  v110 = v36;
  v46 = v41;

  [v40 enumerateAttributesInRange:0 options:v42 usingBlock:{0x100000, v45}];

  _Block_release(v45);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v78;
  sub_100750944();
  v48 = v79;
  sub_1007508F4();
  v49 = *(v81 + 8);
  v50 = v82;
  v49(v47, v82);
  sub_100750904();
  v49(v48, v50);
  sub_100750BB4();
  v108 = v46;
  sub_100750C04();
  v51 = sub_100744684();
  v53 = v52;
  v54 = sub_100744634();
  v55 = v83;
  v109 = v31;
  sub_100744664();
  v57 = sub_1002AF1FC(v51, v53, v54, v55, v56);

  (*(v84 + 8))(v55, v85);
  v107 = v57;
  v43 = v87;
  sub_100750E84();
  if (qword_100921190 != -1)
  {
LABEL_13:
    swift_once();
  }

  v58 = sub_100750534();
  sub_10000D0FC(v58, qword_1009811E8);
  sub_100750E54();
  (*(v89 + 8))(v43, v90);
  sub_100750BB4();
  v59 = v91;
  sub_100750C14();
  if (qword_1009207C8 != -1)
  {
    swift_once();
  }

  v60 = v95;
  v61 = sub_10000D0FC(v95, qword_10097EDD8);
  (*(v94 + 16))(v96, v61, v60);
  v62 = v93;
  v115 = v93;
  v116 = &protocol witness table for LabelPlaceholder;
  v63 = sub_10000D134(aBlock);
  v64 = v92;
  v65 = *(v92 + 16);
  v66 = v111;
  v65(v63, v111, v62);
  v113[3] = v62;
  v113[4] = &protocol witness table for LabelPlaceholder;
  v67 = sub_10000D134(v113);
  v65(v67, v59, v62);
  v68 = v97;
  sub_100748614();
  sub_100323A2C(&qword_100927FF0, &type metadata accessor for ReviewSummaryLayout, &protocol conformance descriptor for ReviewSummaryLayout);
  v69 = v100;
  v70 = v99;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v71 = v110;
  v72 = v102;
  sub_100751254();
  v39 = v73;

  (*(v101 + 8))(v69, v72);
  (*(v98 + 8))(v68, v70);
  v74 = *(v64 + 8);
  v74(v59, v62);
  v74(v66, v62);
  (*(v86 + 8))(v77, v112);
  return v39;
}

uint64_t sub_1003239BC()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_100323A14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100323A2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100323A74()
{
  v0 = sub_1007504F4();
  __chkstk_darwin(v0 - 8);
  v23[2] = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100747674();
  sub_100039C50(v6, qword_10097FA38);
  v23[1] = sub_10000D0FC(v6, qword_10097FA38);
  if (qword_100920FC0 != -1)
  {
    swift_once();
  }

  v7 = sub_100750534();
  v8 = sub_10000D0FC(v7, qword_100980C78);
  v9 = *(v7 - 8);
  v26 = *(v9 + 16);
  v25 = v9 + 16;
  v26(v5, v8, v7);
  v10 = v3[13];
  v24 = enum case for FontSource.useCase(_:);
  v27 = v10;
  v10(v5);
  v11 = sub_100750B04();
  v40[3] = v11;
  v40[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v40);
  v38 = v2;
  v39 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v37);
  v13 = v3[2];
  v13(v12, v5, v2);
  sub_100750B14();
  v14 = v3[1];
  v14(v5, v2);
  if (qword_100920FC8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v7, qword_100980C90);
  v26(v5, v15, v7);
  v27(v5, v24, v2);
  v38 = v11;
  v39 = &protocol witness table for StaticDimension;
  sub_10000D134(v37);
  v35 = v2;
  v36 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v34);
  v13(v16, v5, v2);
  sub_100750B14();
  v14(v5, v2);
  if (qword_100920FD0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v7, qword_100980CA8);
  v26(v5, v17, v7);
  v18 = v27;
  v27(v5, v24, v2);
  v35 = v11;
  v36 = &protocol witness table for StaticDimension;
  sub_10000D134(v34);
  v32 = v2;
  v33 = &protocol witness table for FontSource;
  v19 = sub_10000D134(v31);
  v13(v19, v5, v2);
  sub_100750B14();
  v14(v5, v2);
  *v5 = UIFontTextStyleBody;
  v18(v5, enum case for FontSource.textStyle(_:), v2);
  v32 = v11;
  v33 = &protocol witness table for StaticDimension;
  sub_10000D134(v31);
  v29 = v2;
  v30 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v28);
  v13(v20, v5, v2);
  v21 = UIFontTextStyleBody;
  sub_100750B14();
  v14(v5, v2);
  sub_100750504();
  v30 = &protocol witness table for Double;
  v29 = &type metadata for Double;
  v28[0] = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  return sub_100747644();
}

uint64_t sub_100324010()
{
  v0 = sub_100751344();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100751374();
  sub_100039C50(v4, qword_10097FA50);
  sub_10000D0FC(v4, qword_10097FA50);
  (*(v1 + 104))(v3, enum case for Separator.Position.top(_:), v0);
  v7[3] = sub_1007507D4();
  v7[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v7);
  sub_1007507C4();
  return sub_100751354();
}

uint64_t sub_100324148()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_10097FA68);
  sub_10000D0FC(v0, qword_10097FA68);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003242AC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  sub_100746F84();
  if (qword_100920F88 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_100980BE8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v9 = enum case for FontSource.useCase(_:);
  v10 = v1 + 13;
  v47 = v1[13];
  v47(v3, enum case for FontSource.useCase(_:), v0);
  v43 = sub_100750B04();
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v50);
  v12 = v1[2];
  v49 = v1 + 2;
  v42 = v12;
  v12(v11, v3, v0);
  sub_100750B14();
  v14 = v1[1];
  v13 = v1 + 1;
  v44 = v14;
  v14(v3, v0);
  sub_100746F64();
  if (qword_100920F90 != -1)
  {
    swift_once();
  }

  v40 = sub_10000D0FC(v4, qword_100980C00);
  v7(v3, v40, v4);
  HIDWORD(v39) = v9;
  v15 = v47;
  v47(v3, v9, v0);
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v45 = v10;
  v46 = v8;
  v48 = v7;
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v50);
  v42(v16, v3, v0);
  sub_100750B14();
  v41 = v13;
  v44(v3, v0);
  sub_100747034();
  v17 = v40;
  v18 = v4;
  v48(v3, v40, v4);
  v19 = HIDWORD(v39);
  v15(v3, HIDWORD(v39), v0);
  v20 = v43;
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v50);
  v22 = v42;
  v42(v21, v3, v0);
  sub_100750B14();
  v23 = v44;
  v44(v3, v0);
  sub_100747004();
  v48(v3, v17, v18);
  v24 = v19;
  v25 = v19;
  v26 = v47;
  v47(v3, v24, v0);
  v54 = v20;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v50);
  v22(v27, v3, v0);
  sub_100750B14();
  v23(v3, v0);
  sub_100746FF4();
  v28 = v40;
  v40 = v18;
  v48(v3, v28, v18);
  v26(v3, v25, v0);
  v29 = v43;
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v30 = sub_10000D134(v50);
  v31 = v42;
  v42(v30, v3, v0);
  sub_100750B14();
  v23(v3, v0);
  sub_100747054();
  if (qword_100920F98 != -1)
  {
    swift_once();
  }

  v32 = v40;
  v33 = sub_10000D0FC(v40, qword_100980C18);
  v48(v3, v33, v32);
  v47(v3, v25, v0);
  v54 = v29;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v34 = sub_10000D134(v50);
  v31(v34, v3, v0);
  sub_100750B14();
  v35 = v44;
  v44(v3, v0);
  sub_100746FB4();
  if (qword_100920FA0 != -1)
  {
    swift_once();
  }

  v36 = sub_10000D0FC(v32, qword_100980C30);
  v48(v3, v36, v32);
  v47(v3, v25, v0);
  v54 = v29;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v37 = sub_10000D134(v50);
  v31(v37, v3, v0);
  sub_100750B14();
  v35(v3, v0);
  sub_100746FC4();
  return sub_100746FA4();
}

void sub_100324A1C(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

char *sub_100324AE4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v121 = sub_100747064();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v113 - v12;
  v116 = sub_100743584();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074AB44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v131 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v17 - 8);
  v19 = &v113 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_itemLayoutContext;
  v21 = sub_1007469A4();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase] = 0;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer;
  *&v5[v22] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer] = 0;
  v24 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_initialLongPressLocation];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_clickAction;
  v26 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
  (*(*(v26 - 8) + 56))(&v5[v25], 1, 1, v26);
  v27 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView] = v27;
  v28 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardView] = v28;
  sub_1007433C4();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_artworkView] = sub_1007431C4();
  if (qword_100920FC0 != -1)
  {
    swift_once();
  }

  v29 = sub_100750534();
  v30 = sub_10000D0FC(v29, qword_100980C78);
  v31 = *(v29 - 8);
  v32 = v31 + 16;
  v33 = *(v31 + 16);
  v33(v19, v30, v29);
  v36 = *(v31 + 56);
  v34 = v31 + 56;
  v35 = v36;
  v36(v19, 0, 1, v29);
  v37 = *(v15 + 104);
  v129 = enum case for DirectionalTextAlignment.none(_:);
  v127 = v15 + 104;
  v128 = v37;
  v37(v131);
  v38 = sub_100745C84();
  v126 = v14;
  v39 = v38;
  v40 = objc_allocWithZone(v38);
  v132 = v19;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel] = sub_100745C74();
  if (qword_100920FC8 != -1)
  {
    swift_once();
  }

  v41 = sub_10000D0FC(v29, qword_100980C90);
  v42 = v132;
  v33(v132, v41, v29);
  v35(v42, 0, 1, v29);
  v128(v131, v129, v126);
  v43 = objc_allocWithZone(v39);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_titleLabel] = sub_100745C74();
  if (qword_100920FD0 != -1)
  {
    swift_once();
  }

  v44 = sub_10000D0FC(v29, qword_100980CA8);
  v45 = v132;
  v123 = v33;
  v124 = v32;
  v33(v132, v44, v29);
  v118 = v29;
  v125 = v34;
  v122 = v35;
  v35(v45, 0, 1, v29);
  v128(v131, v129, v126);
  v46 = objc_allocWithZone(v39);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_subtitleLabel] = sub_100745C74();
  v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView] = sub_10016AB14(1);
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v133.receiver = v5;
  v133.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v133, "initWithFrame:", a1, a2, a3, a4);
  v49 = [v48 contentView];
  [v49 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v50 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel;
  [*(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel) _setTextColorFollowsTintColor:1];
  v51 = *(v48 + v50);
  sub_100745C34();

  v52 = [v48 contentView];
  [v52 addSubview:*(v48 + v50)];

  v53 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_titleLabel;
  v54 = *(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_titleLabel);
  sub_100745C34();

  v55 = [v48 contentView];
  [v55 addSubview:*(v48 + v53)];

  v56 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_subtitleLabel;
  v57 = *(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_subtitleLabel);
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v58 = v57;
  v59 = sub_100753DF4();
  [v58 setTextColor:v59];

  v60 = *(v48 + v56);
  sub_100745C34();

  v61 = [v48 contentView];
  [v61 addSubview:*(v48 + v56)];

  v62 = [v48 contentView];
  v63 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView;
  [v62 addSubview:*(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView)];

  v64 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardView;
  [*(v48 + v63) addSubview:*(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardView)];
  [*(v48 + v64) setAccessibilityIgnoresInvertColors:1];
  v131 = v64;
  v65 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_artworkView;
  [*(v48 + v64) addSubview:*(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_artworkView)];
  v66 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView;
  v67 = *(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView);
  v68 = v115;
  v69 = v114;
  v70 = v116;
  (*(v115 + 104))(v114, enum case for CornerStyle.arc(_:), v116);
  v71 = v67;
  sub_10016A650(v69, 12, 20.0);

  (*(v68 + 8))(v69, v70);
  v72 = *(v48 + v65);
  v73 = sub_100746E54();

  if (v73)
  {
    [*(v48 + v65) insertSubview:*(v48 + v66) belowSubview:v73];
  }

  else
  {
    [*(v48 + v65) addSubview:*(v48 + v66)];
  }

  sub_100325B38();
  v74 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView;
  v75 = qword_100920970;
  v76 = *(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView);
  if (v75 != -1)
  {
    swift_once();
  }

  v77 = v121;
  v78 = sub_10000D0FC(v121, qword_10097FA68);
  v79 = v120;
  v80 = *(v120 + 16);
  v81 = v119;
  v80(v119, v78, v77);
  v82 = *&v76[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  v83 = v117;
  v80(v117, v81, v77);
  v84 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v79 + 24))(&v82[v84], v83, v77);
  swift_endAccess();
  [v82 setNeedsLayout];
  v85 = *(v79 + 8);
  v85(v83, v77);
  [v76 setNeedsLayout];

  v85(v81, v77);
  [*(v48 + v74) setLayoutMargins:{0.0, 14.0, 3.0, 14.0}];
  [*(v48 + v74) setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v86 = qword_100920F90;
  v87 = *(*(*(v48 + v74) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  v88 = v74;
  if (v86 != -1)
  {
    swift_once();
  }

  v89 = v118;
  v90 = sub_10000D0FC(v118, qword_100980C00);
  v91 = v132;
  v92 = v123;
  v123(v132, v90, v89);
  v93 = v122;
  v122(v91, 0, 1, v89);
  sub_100745BA4();

  v94 = qword_100920F98;
  v95 = *(*(*(v48 + v88) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  if (v94 != -1)
  {
    swift_once();
  }

  v96 = sub_10000D0FC(v89, qword_100980C18);
  v92(v91, v96, v89);
  v93(v91, 0, 1, v89);
  sub_100745BA4();

  v97 = qword_100920FA0;
  v98 = *(*(*(v48 + v88) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  if (v97 != -1)
  {
    swift_once();
  }

  v99 = sub_10000D0FC(v89, qword_100980C30);
  v92(v91, v99, v89);
  v93(v91, 0, 1, v89);
  sub_100745BA4();

  v100 = qword_100920F50;
  v101 = *(*(v48 + v88) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel);
  if (v100 != -1)
  {
    swift_once();
  }

  v102 = sub_10000D0FC(v89, qword_100980B40);
  v92(v91, v102, v89);
  v93(v91, 0, 1, v89);
  sub_100745BA4();

  v103 = qword_100920F58;
  v104 = *(*(v48 + v88) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel);
  if (v103 != -1)
  {
    swift_once();
  }

  v105 = sub_10000D0FC(v89, qword_100980B58);
  v92(v91, v105, v89);
  v93(v91, 0, 1, v89);
  sub_100745BA4();

  swift_unknownObjectWeakAssign();
  v106 = *&v131[v48];
  v107 = *(v48 + v88);
  v108 = v48;
  [v106 addSubview:v107];
  v109 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer;
  [*&v108[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer] setDelegate:v108];
  v110 = *&v108[v109];
  [v110 addTarget:v108 action:"handleTapWithGestureRecognizer:"];

  [*(v48 + v88) addGestureRecognizer:*&v108[v109]];
  [*(v48 + v88) setUserInteractionEnabled:1];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1007A5A00;
  *(v111 + 32) = sub_100751554();
  *(v111 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v108;
}

void sub_100325B38()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_100753964();
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView];
    v4 = (v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY);
    *(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY) = 0x3FE0000000000000;
    v5 = 0.5;
  }

  else
  {
    v6 = [v0 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = sub_100753944();
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView];
    v4 = (v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY);
    if (v6)
    {
      *v4 = 0.45;
      v5 = 0.45;
    }

    else
    {
      *v4 = 0.4;
      v5 = 0.4;
    }
  }

  v8 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView;
  v9 = [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v11 = v10;

  v12 = *v4;
  v13 = [*(v3 + v8) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v12}];

  v14 = [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v12}];

  v15 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY) = v5;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
  v17 = [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v19 = v18;

  v20 = *(v3 + v15);
  v21 = [*(v3 + v16) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v19, v20}];
}

id sub_100325EBC()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer] removeTarget:v0 action:0];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for EditorialCardCollectionViewCell(uint64_t a1)
{
  result = qword_100933070;
  if (!qword_100933070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1003260F8(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v15 = a1;
    v16 = sub_100754664();
    a1 = v15;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v3 = a1;
    v4 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView;
    v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
    if (!v5)
    {
      v8 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v9 = *&v2[v4];
      if (v9)
      {
        [v9 removeFromSuperview];
        v10 = *&v2[v4];
      }

      else
      {
        v10 = 0;
      }

      *&v2[v4] = v8;
      v11 = v8;

      if (v11)
      {
        v12 = v11[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style];
        v11[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] = 2;
        sub_1000C95D0(v12);
        v13 = [v2 contentView];
        [v13 addSubview:v11];
      }

      [v2 setNeedsLayout];

      v14 = *&v2[v4];
      if (!v14)
      {
        goto LABEL_13;
      }

      *(v14 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_1008714F0;
      swift_unknownObjectWeakAssign();
      v5 = *&v2[v4];
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    [v5 setHidden:0];
    v6 = *&v2[v4];
    if (v6)
    {
      v7 = v6;
      sub_1000C94C4(v3);
    }

    else
    {
LABEL_13:
    }

    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel] setHidden:1];
    sub_100326380([objc_allocWithZone(UILongPressGestureRecognizer) init]);
    goto LABEL_22;
  }

  v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v17)
  {
    [v17 setHidden:1];
  }

  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel] setHidden:0];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer;
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer])
  {
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView] removeGestureRecognizer:?];
    v19 = *&v2[v18];
  }

  else
  {
    v19 = 0;
  }

  *&v2[v18] = 0;

LABEL_22:

  return [v2 setNeedsLayout];
}

void sub_100326380(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer])
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView] removeGestureRecognizer:?];
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
    [v6 addTarget:v1 action:"stateChangedFor:"];
    [v6 setMinimumPressDuration:0.1];
    [v6 setDelegate:v1];

    v7 = [v1 contentView];
    [v7 addGestureRecognizer:v6];
  }
}

uint64_t sub_1003264A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v77 = sub_1007479B4();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v75 = &v73 - v5;
  v81 = sub_100747064();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v73 - v9;
  v78 = sub_100750354();
  v10 = *(v78 - 8);
  __chkstk_darwin(v78);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100747674();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100747694();
  v82 = *(v83 - 8);
  *&v17 = __chkstk_darwin(v83).n128_u64[0];
  v87 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97.receiver = v1;
  v97.super_class = ObjectType;
  v84 = ObjectType;
  objc_msgSendSuper2(&v97, "layoutSubviews", v17);
  v19 = [v1 contentView];
  v20 = sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();

  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
  v79 = v7;
  if (v21)
  {
    v22 = v21;
    if (![v22 isHidden])
    {
      goto LABEL_5;
    }
  }

  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel];
LABEL_5:
  v23 = qword_100920960;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v13, qword_10097FA38);
  (*(v14 + 16))(v16, v25, v13);
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView];
  v95 = v20;
  v96 = &protocol witness table for UIView;
  v93 = &protocol witness table for UIView;
  v94 = v26;
  v92 = v20;
  v85 = v24;
  v91 = v24;
  v27 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_titleLabel];
  v89 = sub_100745C84();
  v90 = &protocol witness table for UILabel;
  v88[5] = v27;
  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_subtitleLabel];
  v88[4] = &protocol witness table for UILabel;
  v88[3] = v89;
  v88[0] = v28;
  v29 = v26;
  v30 = v27;
  v31 = v28;
  sub_100747684();
  sub_100747634();
  (*(v10 + 8))(v12, v78);
  v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardView];
  v33 = [v32 superview];
  if (v33)
  {
    v34 = v33;
    v35 = sub_100753FC4();

    v36 = v80;
    v37 = v79;
    if (v35)
    {
      [v29 bounds];
      [v32 setBounds:{0.0, 0.0}];
      [v29 bounds];
      v39 = v38 * 0.5;
      [v29 bounds];
      [v32 setCenter:{v39, v40 * 0.5}];
    }
  }

  else
  {

    v36 = v80;
    v37 = v79;
  }

  [v29 bounds];
  v42 = v41;
  v44 = v43;
  sub_100743324();
  v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView];
  v46 = v86;
  sub_1001F5A40(v86);
  [v45 layoutMargins];
  v48 = v47;
  v50 = v49;
  v51 = [v45 traitCollection];
  v52 = v81;
  (*(v36 + 16))(v37, v46, v81);
  v53 = sub_100746FD4();
  v55 = v85;
  if ((v56 & 1) == 0 && ((v53 | v54) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v57 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v57 = qword_10093FF58;
    }

    v58 = v77;
    v59 = sub_10000D0FC(v77, v57);
    v60 = v76;
    v61 = v74;
    (*(v76 + 16))(v74, v59, v58);
    v62 = v75;
    (*(v60 + 32))(v75, v61, v58);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v60 + 8))(v62, v58);
    v46 = v86;
    v55 = v85;
  }

  sub_100746F14();
  v64 = v63;
  v66 = v65;

  v67 = *(v36 + 8);
  v67(v37, v52);
  v68 = v50 + v48 + v66;
  v67(v46, v52);
  v98.origin.x = 0.0;
  v98.origin.y = 0.0;
  v98.size.width = v42;
  v98.size.height = v44;
  MinX = CGRectGetMinX(v98);
  v99.origin.x = 0.0;
  v99.origin.y = 0.0;
  v99.size.width = v42;
  v99.size.height = v44;
  [v45 setFrame:{MinX, CGRectGetMaxY(v99) - v68, v64, v68}];
  [v45 setNeedsLayout];
  v70 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView];
  v100.origin.x = 0.0;
  v100.origin.y = 0.0;
  v100.size.width = v42;
  v100.size.height = v44;
  Width = CGRectGetWidth(v100);
  v101.origin.x = 0.0;
  v101.origin.y = 0.0;
  v101.size.width = v42;
  v101.size.height = v44;
  [v70 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v101)}];
  sub_100328DC0(&qword_100933098, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007C7820);
  sub_10074AAF4();

  return (*(v82 + 8))(v87, v83);
}

void sub_100326E70(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer);
  if (!v16)
  {
    return;
  }

  v56 = v13;
  sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
  v57 = v16;
  if ((sub_100753FC4() & 1) == 0)
  {
    goto LABEL_16;
  }

  v54 = ObjectType;
  v55 = v12;
  v17 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView);
  v18 = [v17 superview];
  v19 = [v1 contentView];
  v20 = v19;
  if (v18)
  {
    if (!v19)
    {

      goto LABEL_16;
    }

    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v21 = sub_100753FC4();

    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v19)
  {

    goto LABEL_16;
  }

  v22 = [a1 state];
  if (v22 > 3)
  {
    if ((v22 - 4) >= 2)
    {
      goto LABEL_16;
    }

    v56 = [v17 superview];
    v26 = [v2 contentView];
    if (v56)
    {
      if (!v26)
      {
LABEL_33:

        v25 = v56;
        goto LABEL_17;
      }

      v55 = v26;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v27 = sub_100753FC4();

      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v26)
    {
      goto LABEL_39;
    }

    v37 = objc_opt_self();
    v38 = swift_allocObject();
    *(v38 + 16) = v2;
    *(v38 + 24) = 0x3FF0000000000000;
    v62 = sub_100328D30;
    v63 = v38;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1000CF7B0;
    v61 = &unk_100871538;
    v39 = _Block_copy(&aBlock);
    v40 = v2;

    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = v40;
    v62 = sub_100328D54;
    v63 = v41;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v42 = &unk_100871588;
LABEL_41:
    v60 = sub_100144DD8;
    v61 = v42;
    v50 = _Block_copy(&aBlock);
    v51 = v40;

    [v37 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v39 options:v50 animations:0.0 completion:1.0];
    _Block_release(v50);
    _Block_release(v39);

    return;
  }

  if (v22 != 1)
  {
    if (v22 == 2)
    {
      [a1 locationInView:v17];
      v34 = v32;
      v35 = v33;
      v36 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_initialLongPressLocation);
      if (v36[2])
      {

        *v36 = v34;
        v36[1] = v35;
        *(v36 + 16) = 0;
        return;
      }

      v43 = sqrt((v33 - v36[1]) * (v33 - v36[1]) + (v32 - *v36) * (v32 - *v36));
      [v57 allowableMovement];
      if (v44 < v43)
      {
        [a1 setEnabled:0];
      }
    }

    else if (v22 == 3)
    {
      v23 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_clickAction;
      swift_beginAccess();
      sub_1001E899C(v2 + v23, v10);
      v24 = v55;
      if ((*(v55 + 6))(v10, 1, v56) == 1)
      {

        sub_10000C8CC(v10, &qword_100933090, &unk_1007B1B00);
      }

      else
      {
        v24[4](v15, v10, v56);
        sub_1007455C4();
        v61 = v54;
        aBlock = v2;
        v45 = v2;
        sub_10074EC54();

        sub_1007455B4();
        v46 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
        sub_1007526C4();

        v47 = *(v46 - 8);
        if ((*(v47 + 48))(v7, 1, v46) == 1)
        {
          (v24[1])(v15, v56);

          sub_10000C8CC(v7, &unk_100923960, &qword_1007A6240);
        }

        else
        {
          v52 = v56;
          sub_1007455C4();
          v53 = sub_1007455B4();
          sub_1003C0E00(aBlock, 1, v53, v7);

          (v24[1])(v15, v52);

          (*(v47 + 8))(v7, v46);
        }
      }

      return;
    }

    goto LABEL_16;
  }

  [a1 locationInView:v17];
  v28 = v2 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_initialLongPressLocation;
  *v28 = v29;
  *(v28 + 1) = v30;
  v28[16] = 0;
  v56 = [v17 superview];
  v26 = [v2 contentView];
  if (!v56)
  {
    if (!v26)
    {
LABEL_40:
      v37 = objc_opt_self();
      v48 = swift_allocObject();
      *(v48 + 16) = v2;
      *(v48 + 24) = 0x3FEEB851EB851EB8;
      v62 = sub_100328F8C;
      v63 = v48;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_1000CF7B0;
      v61 = &unk_1008715D8;
      v39 = _Block_copy(&aBlock);
      v40 = v2;

      v49 = swift_allocObject();
      *(v49 + 16) = 1;
      *(v49 + 24) = v40;
      v62 = sub_100328F9C;
      v63 = v49;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v42 = &unk_100871628;
      goto LABEL_41;
    }

LABEL_39:
    v55 = v26;

    v25 = v55;
    goto LABEL_17;
  }

  if (!v26)
  {
    goto LABEL_33;
  }

  v55 = v26;
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v31 = sub_100753FC4();

  if (v31)
  {
    goto LABEL_40;
  }

LABEL_16:
  v25 = v57;
LABEL_17:
}

id sub_100327824(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

id sub_100327884()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "prepareForReuse");
  v2 = &v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction + 8];
  *v2 = 0;
  *(v2 + 1) = 0;
  sub_1000164A8(v3, v4);
  sub_1003260F8(_swiftEmptyArrayStorage);
  v15.value.super.isa = 0;
  v15.is_nil = 0;
  sub_100743384(v15, v5);
  v6 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  sub_100743384(v16, v7);

  v8 = &v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_initialLongPressLocation];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v9)
  {
    [v9 setEnabled:1];
  }

  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView];
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardView];
  [v10 addSubview:v11];
  v13[0] = 0x3FF0000000000000;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0x3FF0000000000000;
  v13[4] = 0;
  v13[5] = 0;
  [v11 setTransform:v13];
  [v11 setAlpha:1.0];
  return [v11 setHidden:0];
}

void sub_100327A2C(void *a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  sub_100325B38();
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

  if (!a1 || v3 != v5)
  {
    sub_100327AE4();
  }
}

void sub_100327AE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView);
  v2 = [v1 traitCollection];
  [v2 userInterfaceStyle];

  sub_100753094();
  v3 = sub_100753064();

  v4 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel] layer];
  [v4 setCompositingFilter:v3];

  v5 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView;
  v6 = [*(*&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v3];

  v7 = [*(*(*&v1[v5] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v3];

  v8 = [*(*&v1[v5] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel) layer];
  [v8 setCompositingFilter:v3];
}

BOOL sub_100327D44(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v37 - v8;
  v10 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v10)
  {
    sub_100016C60(0, &unk_10092C570, UIGestureRecognizer_ptr);
    v11 = a1;
    v12 = v10;
    v13 = sub_100753FC4();

    if (v13)
    {
      v14 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView];
      [a2 locationInView:v14];
      v16 = v15;
      v18 = v17;
      [v14 bounds];
      v38.x = v16;
      v38.y = v18;
      if (CGRectContainsPoint(v41, v38))
      {
        return 0;
      }

      [a2 locationInView:v3];
      v20 = v19;
      v22 = v21;
      v23 = [v3 hitTest:0 withEvent:?];
      [v3 bounds];
      v39.x = v20;
      v39.y = v22;
      if (CGRectContainsPoint(v42, v39))
      {
        if (!v23 || (objc_opt_self(), v24 = swift_dynamicCastObjCClass(), v23, !v24))
        {
          v25 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_clickAction;
          swift_beginAccess();
          sub_1001E899C(&v3[v25], v9);
          v26 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
          v27 = (*(*(v26 - 8) + 48))(v9, 1, v26) != 1;
          sub_10000C8CC(v9, &qword_100933090, &unk_1007B1B00);
          return v27;
        }

        return 0;
      }

LABEL_12:

      return 0;
    }
  }

  [a2 locationInView:{v3, v7}];
  v30 = v29;
  v32 = v31;
  v23 = [v3 hitTest:0 withEvent:?];
  [v3 bounds];
  v40.x = v30;
  v40.y = v32;
  if (!CGRectContainsPoint(v43, v40))
  {
    goto LABEL_12;
  }

  if (v23)
  {
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v33 = v23;
    v34 = v3;
    v35 = sub_100753FC4();

    if (v35)
    {

      return 0;
    }

    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();

    if (v36)
    {
      return 0;
    }
  }

  return *&v3[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction] != 0;
}

void sub_1003281D4(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    sub_1001E5A54(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003282E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100743204();
  sub_1007433C4();
  sub_100328DC0(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100744274();
  v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView;
  v6 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  sub_100743204();

  v7 = *(v4 + v5);
  sub_100744274();
}

void sub_1003283FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView);
  if (v1)
  {
    v2 = v1;
    sub_1000C8E14();
  }
}

double sub_1003284C4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView;
  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView) bounds];
  v4 = v3 * 0.5;
  [*(v1 + v2) bounds];
  return v4;
}

void sub_100328528(uint64_t a1, uint64_t a2)
{
  v4 = sub_100747064();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v55 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007504F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074F284();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v51 - v18;
  sub_10000C824(a1, v60);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_1007443D4();
  if (swift_dynamicCast())
  {
    v51[1] = v8;
    v52 = v14;
    v20 = v59;
    v21 = sub_1007443A4();
    v53 = v20;
    v54 = a2;
    if (v21)
    {
      sub_10074F294();
      sub_10074F244();
      sub_100328DC0(&qword_1009290A0, &type metadata accessor for Artwork.Crop, &protocol conformance descriptor for Artwork.Crop);
      v22 = sub_100753014();
      v23 = *(v52 + 8);
      v23(v16, v13);
      if (v22)
      {
        v51[0] = 5;
      }

      else
      {
        v51[0] = sub_10074F254();
      }

      v23(v19, v13);
      v24 = v58;
      v25 = [v58 contentView];
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      sub_1007477B4();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      if (qword_100920960 != -1)
      {
        swift_once();
      }

      v34 = sub_100747674();
      sub_10000D0FC(v34, qword_10097FA38);
      sub_100747664();
      v61.origin.x = v27;
      v61.origin.y = v29;
      v61.size.width = v31;
      v61.size.height = v33;
      CGRectGetWidth(v61);
      v62.origin.x = v27;
      v62.origin.y = v29;
      v62.size.width = v31;
      v62.size.height = v33;
      CGRectGetWidth(v62);
      sub_1007504C4();
      (*(v10 + 8))(v12, v9);
      v35 = v51[0];
      sub_10074F374();
      v36 = *&v24[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_artworkView];
      sub_10074F324();
      sub_100743364();
      [v36 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();
      [v36 setContentMode:v35];
      sub_1007433C4();
      sub_100328DC0(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100744204();
    }

    if (sub_100744394())
    {
      v37 = sub_10074EF64();

      if (v37)
      {
        v38 = *&v58[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView];
        v39 = *(v38 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView);
        v40 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
        swift_beginAccess();
        v41 = v56;
        v42 = v39 + v40;
        v43 = v55;
        v44 = v57;
        (*(v56 + 16))(v55, v42, v57);
        sub_100746F34();
        (*(v41 + 8))(v43, v44);
        sub_10074F294();
        sub_10074F254();
        v58 = *(v52 + 8);
        (v58)(v16, v13);
        sub_10074F374();
        v45 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView;
        v46 = *(v38 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
        sub_10074F324();
        sub_100743364();
        [v46 setContentMode:sub_10074F184()];
        sub_100747FB4();
        sub_1007433A4();
        if (!sub_10074F1E4())
        {
          sub_100016C60(0, &qword_100923500, UIColor_ptr);
          sub_100753E34();
        }

        sub_100743224();

        v47 = *(v38 + v45);
        sub_10074F294();
        v48 = sub_10074F254();
        (v58)(v16, v13);
        [v47 setContentMode:v48];

        v49 = *(v38 + v45);
        sub_1007433C4();
        sub_100328DC0(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        v50 = v49;
        sub_100744204();
      }
    }
  }
}

uint64_t sub_100328CF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100328D3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100328D58()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100328D90()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *(*(v0 + 24) + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer);
    if (v1)
    {
      [v1 setEnabled:1];
    }
  }
}

uint64_t sub_100328DC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100328E08()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer) = 0;
  v5 = v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_initialLongPressLocation;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_clickAction;
  v7 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_100754644();
  __break(1u);
}

uint64_t sub_100328FA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v57 = a7;
  v58 = a8;
  v55 = a6;
  v52 = a5;
  v50 = a2;
  v48[1] = a1;
  v10 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v56 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = v48 - v14;
  __chkstk_darwin(v15);
  v49 = v48 - v16;
  __chkstk_darwin(v17);
  v19 = v48 - v18;
  __chkstk_darwin(v20);
  v22 = v48 - v21;
  v23 = sub_10074FF64();
  __chkstk_darwin(v23 - 8);
  v54 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10074FF24();
  v26 = __chkstk_darwin(v25);
  v53 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v26);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10032A6EC(a4, v22);
  sub_10032A6EC(a3, v19);
  v30 = *(v11 + 80);
  v31 = (v30 + 16) & ~v30;
  v32 = (v12 + v30 + v31) & ~v30;
  v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_10032A8EC(v22, v35 + v31);
  sub_10032A8EC(v19, v35 + v32);
  *(v35 + v33) = v29;
  v36 = v50;
  *(v35 + v34) = v50;
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v49;
  sub_10032A6EC(v52, v49);
  v39 = (v30 + 32) & ~v30;
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v36;
  sub_10032A8EC(v38, v40 + v39);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v51;
  sub_10032A6EC(v55, v51);
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v36;
  sub_10032A8EC(v42, v43 + v39);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v56;
  sub_10032A6EC(v57, v56);
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v36;
  sub_10032A8EC(v45, v46 + v39);
  swift_retain_n();
  sub_10074FF54();
  return sub_10074FEE4();
}

void *sub_10032949C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_10000C518(&unk_100933300, qword_1007BA6F0);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = v29 - v4;
  v5 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v29 - v9;
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  __chkstk_darwin(v17);
  v19 = v29 - v18;
  v20 = sub_10074FF24();
  v32 = *(v20 - 8);
  v33 = v20;
  __chkstk_darwin(v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074BC74();
  sub_10032BA24(&qword_1009330D8, &type metadata accessor for GameCenterActivityFeedCard, &protocol conformance descriptor for GameCenterActivityFeedCard);
  result = sub_1007468B4();
  if (v36[0])
  {
    sub_10074BC64();
    sub_10074BC24();
    v30 = v16;
    sub_10074BC54();
    sub_10074BC44();
    sub_10074BC34();
    v24 = sub_10074BC14();
    v29[2] = v29;
    __chkstk_darwin(v24);
    v29[1] = v29;
    v29[-8] = v22;
    v29[-7] = v2;
    v29[-6] = v31;
    v29[-5] = v19;
    v29[-4] = v16;
    v29[-3] = v13;
    v29[-2] = v10;
    v29[-1] = v7;
    __chkstk_darwin(v25);
    v29[-4] = sub_10032B79C;
    v29[-3] = v26;
    v29[-2] = v27;
    v29[-1] = v2;
    sub_10000C518(&unk_100933310, &qword_1007BA480);
    v31 = v2;
    sub_10032B7BC();
    v28 = v34;
    sub_100751DF4();
    sub_100751E54();
    v36[3] = v3;
    v36[4] = sub_10002DDC8(&qword_1009330F8, &unk_100933300, qword_1007BA6F0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10000D134(v36);
    sub_100751DE4();
    (*(v35 + 8))(v28, v3);
    sub_1007538E4();

    sub_10000C8CC(v7, &qword_100927E40, &unk_1007BA470);
    sub_10000C8CC(v10, &qword_100927E40, &unk_1007BA470);
    sub_10000C8CC(v13, &qword_100927E40, &unk_1007BA470);
    sub_10000C8CC(v30, &qword_100927E40, &unk_1007BA470);
    sub_10000C8CC(v19, &qword_100927E40, &unk_1007BA470);
    return (*(v32 + 8))(v22, v33);
  }

  return result;
}

uint64_t sub_100329938(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v28 = a7;
  v11 = sub_100752614();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  if (a3)
  {
    v21 = a4;
  }

  else
  {
    v21 = a5;
  }

  sub_10032A6EC(v21, &v26 - v19);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_10032A6EC(v20, v17);
    v24 = *(v12 + 48);
    if (v24(v17, 1, v11) == 1)
    {
      sub_1007525F4();
      if (v24(v17, 1, v11) != 1)
      {
        sub_10000C8CC(v17, &qword_100927E40, &unk_1007BA470);
      }
    }

    else
    {
      (*(v12 + 32))(v14, v17, v11);
    }

    sub_10032AD6C(a1, v27, v28, v14);

    (*(v12 + 8))(v14, v11);
  }

  return sub_10000C8CC(v20, &qword_100927E40, &unk_1007BA470);
}

void *sub_100329B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[1] = a1;
  v30 = a8;
  v10 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v10 - 8);
  v12 = v29 - v11;
  v13 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  __chkstk_darwin(v13 - 8);
  v15 = v29 - v14;
  v16 = sub_100752614();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v29 - v21;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29[0] = a5;

    sub_10032A6EC(a9, v15);
    v24 = *(v17 + 48);
    if (v24(v15, 1, v16) == 1)
    {
      sub_1007525F4();
      if (v24(v15, 1, v16) != 1)
      {
        sub_10000C8CC(v15, &qword_100927E40, &unk_1007BA470);
      }
    }

    else
    {
      (*(v17 + 32))(v22, v15, v16);
    }

    (*(v17 + 16))(v19, v22, v16);
    sub_10074C734();
    swift_allocObject();

    v25 = sub_10074C704();
    v26 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    v27 = v30;
    sub_1007526C4();
    v28 = *(v26 - 8);
    if ((*(v28 + 48))(v12, 1, v26) == 1)
    {
      (*(v17 + 8))(v22, v16);

      return sub_10000C8CC(v12, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      sub_1003C15C4(v25, 1, v27, v12);

      (*(v17 + 8))(v22, v16);
      return (*(v28 + 8))(v12, v26);
    }
  }

  return result;
}

void *sub_100329F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[1] = a4;
  v29 = a7;
  v9 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  __chkstk_darwin(v12 - 8);
  v14 = v28 - v13;
  v15 = sub_100752614();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v28 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_10032A6EC(a8, v14);
    v23 = *(v16 + 48);
    if (v23(v14, 1, v15) == 1)
    {
      sub_1007525F4();
      if (v23(v14, 1, v15) != 1)
      {
        sub_10000C8CC(v14, &qword_100927E40, &unk_1007BA470);
      }
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
    }

    (*(v16 + 16))(v18, v21, v15);
    sub_10074C6C4();
    swift_allocObject();

    v24 = sub_10074C6A4();
    v25 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    v26 = v29;
    sub_1007526C4();
    v27 = *(v25 - 8);
    if ((*(v27 + 48))(v11, 1, v25) == 1)
    {
      (*(v16 + 8))(v21, v15);

      return sub_10000C8CC(v11, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      sub_1003C15F8(v24, 1, v26, v11);

      (*(v16 + 8))(v21, v15);
      return (*(v27 + 8))(v11, v25);
    }
  }

  return result;
}

void *sub_10032A2FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_100752614();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_10032A6EC(a6, v12);
    v19 = *(v14 + 48);
    if (v19(v12, 1, v13) == 1)
    {
      sub_1007525F4();
      if (v19(v12, 1, v13) != 1)
      {
        sub_10000C8CC(v12, &qword_100927E40, &unk_1007BA470);
      }
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
    }

    sub_10032AF9C(a1, a2, a5, v16);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t type metadata accessor for GameCenterActivityFeedCollectionViewCell(uint64_t a1)
{
  result = qword_1009330C8;
  if (!qword_1009330C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10032A640(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_10074FED4();
  return a2;
}

uint64_t sub_10032A6B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10032A6EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032A75C()
{
  v1 = *(sub_10000C518(&qword_100927E40, &unk_1007BA470) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = sub_100752614();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10032A8EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032A95C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(sub_10000C518(&qword_100927E40, &unk_1007BA470) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v12);
  v14 = *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100329938(a1, a2, a3, v3 + v9, v3 + v11, v13, v14);
}

void *sub_10032AAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_10000C518(&qword_100927E40, &unk_1007BA470) - 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return sub_100329F48(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_10032ABAC()
{
  v1 = *(sub_10000C518(&qword_100927E40, &unk_1007BA470) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_100752614();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void *sub_10032ACD4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(sub_10000C518(&qword_100927E40, &unk_1007BA470) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10032A2FC(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_10032AD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_100752614();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  sub_10074CC34();
  swift_allocObject();

  v13 = sub_10074CC14();
  v14 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {

    return sub_10000C8CC(v8, &unk_100923960, &qword_1007A6240);
  }

  else
  {
    sub_1003C1590(v13, 1, a3, v8);

    return (*(v15 + 8))(v8, v14);
  }
}

uint64_t sub_10032AF9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v53 = a3;
  v55._countAndFlagsBits = a1;
  v55._object = a2;
  v4 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v4 - 8);
  v54 = &v40 - v5;
  v51 = sub_100742CF4();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v52 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007493D4();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10074A304();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100752614();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_10074F4D4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v40 - v23;
  v25 = sub_100741264();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v56 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v59 = 0;
  *(&v59 + 1) = 0xE000000000000000;
  sub_100754534(29);

  *&v59 = 0xD00000000000001BLL;
  *(&v59 + 1) = 0x80000001007663C0;
  sub_1007531B4(v55);
  sub_100741254();

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v28 = &unk_100923970;
    v29 = &qword_1007A6B90;
    v30 = v24;
    return sub_10000C8CC(v30, v28, v29);
  }

  v31 = v56;
  (*(v26 + 32))(v56, v24, v25);
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v32 = *(v16 + 104);
  v40 = v18;
  v32(v18, enum case for FlowPage.product(_:), v15);
  (*(v26 + 16))(v21, v31, v25);
  (*(v26 + 56))(v21, 0, 1, v25);
  v33 = sub_100743FE4();
  (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
  v57 = 0u;
  v58 = 0u;
  (*(v41 + 16))(v11, v50, v42);
  (*(v44 + 104))(v43, enum case for FlowPresentationContext.infer(_:), v45);
  (*(v46 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v47);
  (*(v48 + 104))(v52, enum case for FlowOrigin.inapp(_:), v51);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v34 = sub_100742C84();
  v35 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v36 = v53;
  v37 = v54;
  sub_1007526C4();
  v38 = *(v35 - 8);
  if ((*(v38 + 48))(v37, 1, v35) == 1)
  {
    (*(v26 + 8))(v56, v25);

    v28 = &unk_100923960;
    v29 = &qword_1007A6240;
    v30 = v37;
    return sub_10000C8CC(v30, v28, v29);
  }

  sub_1003C1424(v34, 1, v36, v37);

  (*(v26 + 8))(v56, v25);
  return (*(v38 + 8))(v37, v35);
}

unint64_t sub_10032B7BC()
{
  result = qword_1009330E0;
  if (!qword_1009330E0)
  {
    sub_10000C724(&unk_100933310, &qword_1007BA480);
    sub_10032B874();
    sub_10002DDC8(&qword_100924AD8, &unk_100933360, &qword_1007A8530, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009330E0);
  }

  return result;
}

unint64_t sub_10032B874()
{
  result = qword_100933320;
  if (!qword_100933320)
  {
    sub_10000C724(&qword_1009330E8, &qword_1007BA488);
    sub_10000C724(&unk_100933330, &qword_1007BA490);
    sub_10000C724(&qword_1009330F0, &qword_1007BA498);
    sub_100752764();
    sub_10074FEF4();
    sub_10032BA24(&unk_100933340, &type metadata accessor for ActivityFeedPlatterView, &protocol conformance descriptor for ActivityFeedPlatterView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10002DDC8(&qword_10092AE10, &unk_100933350, qword_1007BA4A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100933320);
  }

  return result;
}

uint64_t sub_10032BA24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10032BA74()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_10097FAF8);
  sub_10000D0FC(v0, qword_10097FAF8);
  sub_100750504();
  return result;
}

uint64_t sub_10032BAC8()
{
  v0 = sub_10000C518(&qword_100933148, &unk_1007BA570);
  __chkstk_darwin(v0 - 8);
  v20 = v19 - v1;
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007504F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100743424();
  sub_100039C50(v10, qword_10097FB10);
  v19[2] = sub_10000D0FC(v10, qword_10097FB10);
  if (qword_100920978 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v6, qword_10097FAF8);
  (*(v7 + 16))(v9, v11, v6);
  v19[1] = v9;
  if (qword_100921480 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v19[0] = sub_10000D0FC(v12, qword_100981AB8);
  v13 = *(*(v12 - 8) + 16);
  v13(v5, v19[0], v12);
  v14 = enum case for FontSource.useCase(_:);
  v15 = *(v3 + 104);
  v15(v5, enum case for FontSource.useCase(_:), v2);
  v22[3] = sub_100750B04();
  v22[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v22);
  v21[3] = v2;
  v21[4] = &protocol witness table for FontSource;
  v16 = sub_10000D134(v21);
  (*(v3 + 16))(v16, v5, v2);
  sub_100750B14();
  (*(v3 + 8))(v5, v2);
  v17 = v20;
  v13(v20, v19[0], v12);
  v15(v17, v14, v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  return sub_100743414();
}

uint64_t sub_10032BE6C()
{
  v0 = sub_10000C518(&qword_100933148, &unk_1007BA570);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = sub_1007504F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100743424();
  sub_100039C50(v7, qword_10097FB28);
  sub_10000D0FC(v7, qword_10097FB28);
  if (qword_100920978 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v3, qword_10097FAF8);
  (*(v4 + 16))(v6, v8, v3);
  v9 = sub_100750304();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_100743414();
}

char *sub_10032C054(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_itemLayoutContext;
  v12 = sub_1007469A4();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabel] = 0;
  v13 = &v5[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
  sub_1007433C4();
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_artworkView] = sub_1007431E4();
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v16 = [v14 contentView];
  [v16 addSubview:*&v14[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_artworkView]];

  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007A5A00;
  *(v17 + 32) = sub_100751554();
  *(v17 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v14;
}

id sub_10032C34C()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v30 - v8;
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabelText + 8];
  if (v10)
  {
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabelText] & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabel;
      v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabel];
      v14 = &stru_1008F2000;
      if (v13)
      {
      }

      else
      {
        v17 = qword_100921480;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = sub_100750534();
        v19 = sub_10000D0FC(v18, qword_100981AB8);
        v20 = *(v18 - 8);
        (*(v20 + 16))(v9, v19, v18);
        (*(v20 + 56))(v9, 0, 1, v18);
        (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
        v21 = objc_allocWithZone(sub_100745C84());
        v22 = sub_100745C74();
        v23 = *&v1[v12];
        if (v23)
        {
          [v23 removeFromSuperview];
          v24 = *&v1[v12];
        }

        else
        {
          v24 = 0;
        }

        v14 = &stru_1008F2000;
        *&v1[v12] = v22;
        v25 = v22;

        v26 = [v1 contentView];
        [v26 addSubview:v25];

        [v1 setNeedsLayout];
        v13 = *&v1[v12];
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      [v13 setHidden:0];
      v27 = *&v1[v12];
      if (v27)
      {
        v28 = v27;
        v29 = sub_100753064();

        [v28 setText:v29];

        return [v1 v14[51].attr];
      }

LABEL_20:

      return [v1 v14[51].attr];
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabel];
  if (v15)
  {
    [v15 setHidden:{1, v7}];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_10032C700()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100743424();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v33 = sub_100743444();
  v13 = *(v33 - 8);
  *&v14 = __chkstk_darwin(v33).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "layoutSubviews", v14);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabel;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabel];
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = v18;
  if ([v19 isHidden])
  {

LABEL_4:
    if (qword_100920988 != -1)
    {
      swift_once();
    }

    v20 = sub_10000D0FC(v6, qword_10097FB28);
    (*(v7 + 16))(v9, v20, v6);
    v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_artworkView];
    v40 = sub_1007433C4();
    v41 = &protocol witness table for UIView;
    v39 = v21;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v22 = v21;
    sub_100743434();
    goto LABEL_13;
  }

  if (qword_100920980 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v6, qword_10097FB10);
  (*(v7 + 16))(v12, v23, v6);
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_artworkView];
  v40 = sub_1007433C4();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = *&v1[v17];
  if (v25)
  {
    v26 = sub_100745C84();
    v27 = &protocol witness table for UILabel;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    *(&v36 + 1) = 0;
    *&v37 = 0;
  }

  *&v36 = v25;
  *(&v37 + 1) = v26;
  v38 = v27;
  v28 = v24;
  v29 = v25;
  sub_100743434();

LABEL_13:
  v30 = [v1 contentView];
  sub_100009D34();
  sub_1007477B4();

  sub_100743404();
  (*(v34 + 8))(v5, v35);
  return (*(v13 + 8))(v16, v33);
}

uint64_t type metadata accessor for BrickCollectionViewCell(uint64_t a1)
{
  result = qword_100933130;
  if (!qword_100933130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10032CCA8(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10032CD68()
{
  v1 = v0;
  if (qword_100920978 != -1)
  {
    swift_once();
  }

  v2 = sub_1007504F4();
  sub_10000D0FC(v2, qword_10097FAF8);
  v3 = [v0 contentView];
  sub_100009D34();
  sub_1007477B4();

  sub_1007504C4();
  v4 = [v1 contentView];
  sub_1007477B4();
  v6 = v5;

  return v6;
}

uint64_t sub_10032CE60(uint64_t a1, uint64_t a2)
{
  sub_100743204();
  sub_1007433C4();
  sub_10032CF50(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_100744274();
}

uint64_t sub_10032CEF8(uint64_t a1)
{
  result = sub_10032CF50(&qword_100933140, type metadata accessor for BrickCollectionViewCell, &unk_1007BA518);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10032CF50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10032CF98()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_100754664();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    sub_10018875C(_swiftEmptyArrayStorage);

    return;
  }

  sub_10001E46C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100754574();
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
        sub_10001E46C((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *&_swiftEmptyArrayStorage[v11 + 4] = v7 + v9;
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_10032D12C()
{

  sub_1000164A8(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

void sub_10032D190()
{
  sub_10032CF98();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v1;
    v4 = *(v0 + 32);

    v2(v5, v3);

    sub_1000164A8(v2, v4);
  }
}

uint64_t sub_10032D204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074C7E4();
  *a1 = result;
  return result;
}

void sub_10032D230(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v59 = a2;
  ObjectType = swift_getObjectType();
  v17 = sub_10000C518(&qword_10092E2A8, &qword_1007B3098);
  v60 = *(v17 - 8);
  v61 = v17;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v59 - v19;
  v21 = [v8 contentView];
  [v21 setLayoutMargins:{a5, a6, a7, a8}];

  *&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_objectGraph] = a3;

  v22 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_iconHeadingView];
  sub_10074C804();
  v23 = *(v22 + OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel);
  v24 = sub_100753064();

  [v23 setText:v24];

  v25 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_titleHeadingView];
  sub_10074C7F4();
  v26 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel);
  v27 = sub_100753064();

  [v26 setText:v27];

  v28 = sub_10074C7C4();
  if (v28)
  {
    v29 = v28;
    sub_10074ECB4();
    if (v30)
    {
      v31 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton);
      v32 = sub_100753064();

      [v31 setTitle:v32 forState:0];

      v33 = swift_allocObject();
      *(v33 + 16) = a3;
      *(v33 + 24) = v29;
      v34 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
      v35 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
      v36 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler + 8);
      *v34 = sub_10032E350;
      v34[1] = v33;

      v37 = v35;
      v38 = v36;
      goto LABEL_6;
    }
  }

  [*(v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton) setTitle:0 forState:{0, v59}];
  v39 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
  v37 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
  v38 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler + 8);
  *v39 = 0;
  v39[1] = 0;
LABEL_6:
  sub_1000164A8(v37, v38);
  swift_getObjectType();
  v40 = sub_10032E1E4(a4);
  v42 = v41;
  v43 = v40;
  sub_1004240E4(v40, v41);
  if (!*&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator])
  {
    __break(1u);
    goto LABEL_12;
  }

  v44 = sub_10074C7E4();
  sub_1001582F4(v44);

  sub_10074E234();

  v45 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
  if (!v45)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v48 = v59;
  v47[2] = v46;
  v47[3] = v48;
  v47[4] = ObjectType;
  v49 = objc_allocWithZone(sub_10000C518(&unk_10092E2B0, &unk_1007B30A0));

  v50 = v45;
  v51 = sub_100751884();
  v52 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource;
  v53 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource];
  *&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource] = v51;
  v54 = v51;

  v55 = swift_allocObject();
  *(v55 + 16) = v43;
  *(v55 + 24) = v42;
  sub_100751894();

  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1007A5CF0;
  *(v56 + 32) = a1;
  swift_getKeyPath();
  sub_10032E358(&qword_10092E2C0, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10032E358(&unk_10092E2C8, &type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);

  sub_1007505D4();

  v57 = *&v9[v52];
  if (v57)
  {
    v58 = v57;
    sub_1007518C4();
  }

  [v9 setNeedsLayout];
  (*(v60 + 8))(v20, v61);
}

uint64_t sub_10032D7CC(uint64_t a1, uint64_t a2)
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

void *sub_10032D910(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v58 = a3;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v9 - 8);
  v61 = v53 - v10;
  v11 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v11 - 8);
  v13 = v53 - v12;
  v14 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v14 - 8);
  v60 = v53 - v15;
  v16 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v16 - 8);
  v59 = v53 - v17;
  v18 = sub_100742E24();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v53 - v23;
  v25 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v25 - 8);
  v27 = v53 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v55 = v13;
  v57 = v27;
  type metadata accessor for SmallSearchLockupCollectionViewCell();
  sub_1007539D4();
  v28 = sub_100753064();

  isa = sub_100741704().super.isa;
  v54 = a1;
  v30 = [a1 dequeueReusableCellWithReuseIdentifier:v28 forIndexPath:isa];

  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v53[1] = v8;
    sub_10000C518(&qword_100937CD0, &qword_1007B3030);
    sub_100752564();
    v58 = v64;
    if (sub_10074EF04())
    {
      sub_100749F04();
      v31 = *(v19 + 104);
      v31(v21, enum case for OfferStyle.infer(_:), v18);
      v32 = sub_100742E14();
      v33 = *(v19 + 8);
      v33(v21, v18);
      v33(v24, v18);
      if (v32 & 1) != 0 && (v34 = [v54 traitCollection], v35 = sub_1007537E4(), v34, (v35))
      {
        v36 = v57;
        v31(v57, enum case for OfferStyle.white(_:), v18);
        v37 = v36;
        (*(v19 + 56))(v36, 0, 1, v18);
      }

      else
      {
        v37 = v57;
        (*(v19 + 56))(v57, 1, 1, v18);
      }
    }

    else
    {
      v37 = v57;
      (*(v19 + 56))(v57, 1, 1, v18);
    }

    v38 = v56;
    v39 = *(v56 + OBJC_IVAR____TtC22SubscribePageExtension35SmallSearchLockupCollectionViewCell_lockupView);
    v40 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
    v41 = v59;
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v42 = sub_100745E94();
    v43 = v60;
    (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
    v44 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
    v45 = v55;
    (*(*(v44 - 8) + 56))(v55, 1, 1, v44);
    v46 = sub_10074F8B4();
    v47 = v61;
    (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
    sub_100656038(v58, v39, v41, Strong, 0, 0, v37, v43, v47, v45);
    sub_10000C8CC(v47, &unk_100925520, &unk_1007A8120);
    v39[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v39 setNeedsLayout];
    sub_10000C8CC(v45, &unk_100925990, qword_1007BB900);
    sub_10000C8CC(v43, &unk_1009259A0, &unk_1007B0610);
    sub_10000C8CC(v41, &unk_100925540, &qword_1007A8140);
    v48 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v49 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
    sub_100743344();
    sub_1007433C4();
    sub_10032E358(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744274();
    if (sub_10074EF24())
    {
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v50 = sub_100747064();
      sub_10000D0FC(v50, qword_10097E3A8);
      sub_100746F34();
      [v49 contentMode];
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v49 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_10000D198();
        sub_100753E34();
      }

      sub_100743224();
      v51 = *&v39[v48];
      sub_100744204();

      v38 = v56;
      v37 = v57;
    }

    [v38 setNeedsLayout];

    sub_10000C8CC(v37, &unk_100925530, &unk_1007A8130);
  }

  else
  {

    return 0;
  }

  return v38;
}

BOOL sub_10032E1E4(void *a1)
{
  v1 = a1;
  v2 = [a1 traitCollection];
  sub_100753804();

  v3 = [v1 traitCollection];
  LOBYTE(v1) = sub_1007537D4();

  return (v1 & 1) == 0;
}

uint64_t sub_10032E274()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10032E2D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074C7E4();
  *a1 = result;
  return result;
}

uint64_t sub_10032E304(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10032E358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10032E3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

double sub_10032E454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v33 = a6;
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a2;
  v26 = a1;
  v28 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v26 - v15;
  swift_getAssociatedTypeWitness();
  v27 = sub_100752EA4();
  v17 = *(v27 - 8);
  __chkstk_darwin(v27);
  v19 = &v26 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v23 = &v26 - v22;
  sub_10000C824(v26, v34);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  swift_dynamicCast();
  (*(v14 + 16))(v16, v29, v28);
  sub_100752EB4();
  v24 = (*(a8 + 48))(v23, v30, v19, v31, v32, v33, a7, a8, a9, a10);
  (*(v17 + 8))(v19, v27);
  (*(v21 + 8))(v23, AssociatedTypeWitness);
  return v24;
}

uint64_t sub_10032E740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_10032E7DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v21[0] = a6;
  v10 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - v12;
  v14 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v21 - v16;
  sub_10000C824(a1, v22);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100745324();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v21[2];
    (*(v11 + 16))(v13, a2, v10);
    sub_100752DF4();
    sub_100752994();
    sub_1003C388C(v19, a4, a3, v21[0], v20);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_10032E9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v71 = a4;
  v67 = a3;
  v9 = sub_10000C518(&qword_10093FDB0, &unk_1007AC460);
  __chkstk_darwin(v9 - 8);
  v66 = &v60 - v10;
  v11 = sub_100749A94();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  v19 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v68 = *(v19 - 8);
  v69 = v19;
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  sub_10000C824(a1, v73);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074ECD4();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v63 = a6;
  v23 = v72;
  (*(v16 + 16))(v18, a2, v15);
  sub_100752DF4();
  v64 = v21;
  sub_100752994();
  v24 = v65;
  v25 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_textLabel];
  sub_10074ECB4();
  sub_100745BD4();

  v26 = v24;
  v27 = *&v24[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_separatorView];
  sub_100749A44();
  sub_1003495BC(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v28 = sub_100754324();
  v29 = *(v12 + 8);
  v30 = v14;
  v31 = v14;
  v62 = v12 + 8;
  v32 = v29;
  v29(v31, v11);
  [v27 setHidden:v28 & 1];
  v70 = v23;
  v33 = sub_10074EC84();
  v34 = v11;
  v61 = v25;
  if ((v33 & 2) != 0)
  {
    [v25 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v25 _setTextColorFollowsTintColor:0];
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v35 = sub_100753DD4();
    [v25 setTextColor:v35];
  }

  v36 = v63;
  swift_getObjectType();
  v37 = sub_100321BB0(v36);
  v38 = type metadata accessor for Accessory(0);
  v39 = v26;
  if (v37)
  {
    v40 = v66;
    swift_storeEnumTagMultiPayload();
    v41 = 0;
    v42 = v32;
  }

  else
  {
    v41 = 1;
    v42 = v32;
    v40 = v66;
  }

  (*(*(v38 - 8) + 56))(v40, v41, 1, v38);
  sub_100644C38(v40, v67);
  sub_10000C8CC(v40, &qword_10093FDB0, &unk_1007AC460);
  v43 = [v36 traitCollection];
  v44 = [v43 horizontalSizeClass];

  if (v44 == 1 || (sub_100749A54(), v45 = sub_100754324(), v42(v30, v34), (v45 & 1) != 0))
  {
    v46 = [v39 contentView];
    [v36 pageMarginInsets];
  }

  else
  {
    v46 = [v39 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v51 = v64;
  v52 = v61;
  [v46 setLayoutMargins:{top, left, bottom, right}];

  v53 = sub_10074ECC4();
  if (v53)
  {

    v54 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v54 && ([v54 isHidden] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    v56 = v53 == 0;
    v57 = sub_1006459BC();
    [v57 setHidden:v56];

    goto LABEL_19;
  }

  v55 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v55 && ![v55 isHidden])
  {
    goto LABEL_18;
  }

LABEL_19:
  sub_100749A54();
  v58 = sub_100754324();
  v42(v30, v34);
  v39[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isVertical] = (v58 & 1) == 0;
  if (v58)
  {
    v59 = 1;
  }

  else
  {
    v59 = 3;
  }

  [v52 setNumberOfLines:v59];
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  return (*(v68 + 8))(v51, v69);
}

uint64_t sub_10032F0AC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v76 = a6;
  v79 = a4;
  v88 = a3;
  v75 = a2;
  v7 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v7 - 8);
  v86 = &v73 - v8;
  v9 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v9 - 8);
  v87 = &v73 - v10;
  v11 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v11 - 8);
  v85 = &v73 - v12;
  v13 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v13 - 8);
  v84 = &v73 - v14;
  v15 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v15 - 8);
  v83 = &v73 - v16;
  v17 = sub_10000C518(&qword_100933250, &unk_1007B3A50);
  __chkstk_darwin(v17 - 8);
  v77 = &v73 - v18;
  v91 = sub_100749A94();
  v78 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100750304();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_100751344();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v74 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100751374();
  v82 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v73 - v30;
  v81 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v33 = &v73 - v32;
  sub_10000C824(a1, v95);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074EFD4();
  result = swift_dynamicCast();
  if (result)
  {
    v73 = v94[0];
    (*(v29 + 16))(v31, v75, v28);
    sub_100752DF4();
    v75 = v33;
    sub_100752994();
    v35 = [v76 traitCollection];
    (*(v25 + 104))(v74, enum case for Separator.Position.bottom(_:), v24);
    *v23 = UIFontTextStyleBody;
    (*(v21 + 104))(v23, enum case for FontSource.textStyle(_:), v20);
    v96 = sub_100750B04();
    v97 = &protocol witness table for StaticDimension;
    sub_10000D134(v95);
    v94[3] = v20;
    v94[4] = &protocol witness table for FontSource;
    v36 = sub_10000D134(v94);
    (*(v21 + 16))(v36, v23, v20);
    v37 = UIFontTextStyleBody;
    sub_100750B14();
    (*(v21 + 8))(v23, v20);
    v38 = v93;
    sub_100751354();
    v39 = v90;
    sub_100749A44();
    sub_1003495BC(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
    v40 = v91;
    v41 = sub_100754324();
    v42 = *(v78 + 8);
    v42(v39, v40);
    v76 = v35;
    if (v41)
    {
      v43 = v82;
      v44 = v77;
      (*(v82 + 56))(v77, 1, 1, v92);
      v45 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_100349358(v44, &v46[v45], &qword_100933250, &unk_1007B3A50);
      swift_endAccess();
      sub_100228B80();
      sub_10000C8CC(v44, &qword_100933250, &unk_1007B3A50);
      v47 = v90;
      sub_100749A54();
      v48 = v91;
      LOBYTE(v45) = sub_100754324();
      v42(v47, v48);
      v49 = [v46 contentView];
      v50 = v49;
      if (v45)
      {
        [v49 layoutMargins];
        [v50 setLayoutMargins:?];
      }

      else
      {
        sub_100751304();
        sub_10000C888(v95, v96);
        sub_100750574();
        [v50 layoutMargins];
        [v50 setLayoutMargins:?];

        sub_10000C620(v95);
      }
    }

    else
    {
      v51 = v38;
      v43 = v82;
      v52 = v77;
      v53 = v92;
      (*(v82 + 16))(v77, v51, v92);
      (*(v43 + 56))(v52, 0, 1, v53);
      v54 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_100349358(v52, &v46[v54], &qword_100933250, &unk_1007B3A50);
      swift_endAccess();
      sub_100228B80();
      sub_10000C8CC(v52, &qword_100933250, &unk_1007B3A50);
      v55 = [v46 contentView];
      [v55 layoutMargins];
      [v55 setLayoutMargins:?];

      v56 = v90;
      sub_100749A24();
      v57 = v91;
      v58 = sub_100754324();
      v42(v56, v57);
      v59 = v46[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
      v46[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v58 & 1;
      if ((v58 & 1) != v59)
      {
        v60 = *&v46[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView];
        if (v60)
        {
          v61 = 1.0;
          if (v58)
          {
            v61 = 0.0;
          }

          [v60 setAlpha:v61];
        }
      }
    }

    v62 = *&v46[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView];
    v63 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
    v64 = v83;
    (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
    v65 = sub_100742E24();
    v66 = v84;
    (*(*(v65 - 8) + 56))(v84, 1, 1, v65);
    v67 = sub_100745E94();
    v68 = v85;
    (*(*(v67 - 8) + 56))(v85, 1, 1, v67);
    v69 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
    v70 = v87;
    (*(*(v69 - 8) + 56))(v87, 1, 1, v69);
    v71 = sub_10074F8B4();
    v72 = v86;
    (*(*(v71 - 8) + 56))(v86, 1, 1, v71);
    sub_100656038(v73, v62, v64, v88, 0, 0, v66, v68, v72, v70);
    sub_10000C8CC(v72, &unk_100925520, &unk_1007A8120);
    v62[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v62 setNeedsLayout];
    sub_10000C8CC(v70, &unk_100925990, qword_1007BB900);
    sub_10000C8CC(v68, &unk_1009259A0, &unk_1007B0610);
    sub_10000C8CC(v66, &unk_100925530, &unk_1007A8130);
    sub_10000C8CC(v64, &unk_100925540, &qword_1007A8140);
    [v46 setNeedsLayout];

    (*(v43 + 8))(v93, v92);
    return (*(v80 + 8))(v75, v81);
  }

  return result;
}

uint64_t sub_10032FE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_10000C824(a1, v28);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    sub_100752DF4();
    sub_100752994();
    v26(v21, v19, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_100330074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26 = a6;
  v10 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v14 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  sub_10000C824(a1, v27);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100743FA4();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    sub_100752DF4();
    sub_100752994();
    v19 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph);
    *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph) = a3;

    sub_100111078(v19);

    v20 = v26;
    v21 = [v26 snapshotPageTraitEnvironment];
    *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits) = v21;
    swift_unknownObjectRelease();
    v22 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_flowLayout);
    [v20 pageMarginInsets];
    [v22 setSectionInset:?];

    sub_100110F6C(v23, v24);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

double sub_100330308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v20 = a3;
  v21 = a4;
  ObjectType = swift_getObjectType();
  v9 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_10000C824(a1, v25);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_1007445B4();
  if (swift_dynamicCast())
  {
    v26 = v24;
    (*(v10 + 16))(v12, a2, v9);
    sub_100752DF4();
    sub_100752994();
    v18 = sub_1003495BC(&qword_100933288, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_1007C5C20);
    (*(v18 + 56))(&v26, v16, v20, v21, v22, v23, ObjectType, v18);
    (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_10033056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v50 = a2;
  v51 = a6;
  v53 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000C518(&qword_100935130, qword_1007BDC20);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v48 - v16);
  v18 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  v56 = *(v18 - 8);
  v57 = v18;
  __chkstk_darwin(v18);
  v52 = &v48 - v19;
  v20 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v48 - v22;
  v24 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v54 = *(v24 - 8);
  v55 = v24;
  __chkstk_darwin(v24);
  v26 = &v48 - v25;
  sub_10000C824(a1, v61);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_1007447D4();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v21 + 16))(v23, v50, v20);
    sub_100752DF4();
    sub_100752994();
    v28 = [v51 snapshotPageTraitEnvironment];
    *&v7[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v7 setNeedsLayout];
    swift_unknownObjectRelease();
    sub_1007447C4();
    v29 = sub_1007453B4();

    v49 = v26;
    if (v29)
    {
      if (qword_100921BB8 != -1)
      {
        swift_once();
      }

      v30 = sub_10000D0FC(v12, qword_100982C08);
      sub_100121090(v30, v17, v31);
      v32 = *v17;
      v33 = v29;

      *v17 = v29;
      sub_100121090(v17, v14, v34);
      sub_10000C518(&unk_100923AE0, &qword_1007A8370);
      v35 = v52;
      sub_1007434A4();

      sub_10024144C(v17, v36);
    }

    else
    {
      if (qword_100921BB8 != -1)
      {
        swift_once();
      }

      v37 = sub_10000D0FC(v12, qword_100982C08);
      sub_100121090(v37, v17, v38);
      sub_10000C518(&unk_100923AE0, &qword_1007A8370);
      v35 = v52;
      sub_1007434A4();
    }

    v39 = v57;
    v40 = sub_1007447C4();
    v41 = v56;
    (*(v56 + 16))(v11, v35, v39);
    (*(v41 + 56))(v11, 0, 1, v39);
    sub_10013C000(v40, v11, v53);

    sub_10000C8CC(v11, &qword_100935130, qword_1007BDC20);
    v42 = sub_1007447B4();
    if (!v42)
    {
      v42 = [objc_opt_self() clearColor];
    }

    v43 = v42;
    v44 = ObjectType;
    v60.receiver = v7;
    v60.super_class = ObjectType;
    objc_msgSendSuper2(&v60, "setBackgroundColor:", v42);
    v45 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView];
    v59.receiver = v7;
    v59.super_class = v44;
    v46 = v45;
    v47 = objc_msgSendSuper2(&v59, "backgroundColor");
    sub_100743224();

    [v7 setNeedsLayout];

    (*(v41 + 8))(v35, v39);
    return (*(v54 + 8))(v49, v55);
  }

  return result;
}

uint64_t sub_100330B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v54 = a6;
  v65 = a3;
  v53 = a2;
  v7 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v7 - 8);
  v62 = &v51 - v8;
  v60 = sub_10074C3E4();
  v56 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - v10;
  v11 = sub_10000C518(&unk_1009259B0, &unk_1007B0620);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v14 = sub_10074D734();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v51 - v23;
  v25 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v63 = *(v25 - 8);
  v64 = v25;
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  sub_10000C824(a1, v67);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100744C54();
  result = swift_dynamicCast();
  if (result)
  {
    v51 = v13;
    v29 = v66;
    (*(v22 + 16))(v24, v53, v21);
    sub_100752DF4();
    sub_100752994();
    v30 = v55;
    v31 = [v55 contentView];
    [v54 pageMarginInsets];
    [v31 setLayoutMargins:?];

    v54 = v29;
    v32 = sub_100744BF4();
    v33 = v30;
    v52 = v27;
    if (v32)
    {
      if (v32 >> 62)
      {
        v37 = v32;
        v38 = sub_100754664();
        v32 = v37;
        if (v38)
        {
          goto LABEL_5;
        }
      }

      else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v34 = v32;
        sub_1007442C4();
        sub_100752764();
        sub_100752D34();
        v35 = v67[0];
        v36 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v36 setHidden:0];
        *&v36[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_impressionableArtworks] = v34;

        *&v36[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkLoader] = v35;

        sub_10071A850(v34, v35);

LABEL_9:
        v55 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerButton];
        v39 = sub_100744C34();
        v40 = sub_100744C14();
        v41 = sub_100744C04();
        (*(v15 + 104))(v17, enum case for OfferButtonPresenterViewAlignment.center(_:), v14);
        (*(v15 + 56))(v51, 1, 1, v14);
        sub_1003495BC(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
        sub_10074A9C4();
        v42 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
        (*(*(v42 - 8) + 56))(v20, 0, 1, v42);
        v43 = v56;
        v44 = v60;
        (*(v56 + 104))(v57, enum case for OfferButtonSubtitlePosition.above(_:), v60);
        (*(v43 + 56))(v62, 1, 1, v44);
        sub_1003495BC(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
        v45 = v58;
        sub_10074A9C4();
        sub_10015DE40(v39, v40, v41, v20, v45, v65, 0, 0);

        (*(v59 + 8))(v45, v61);
        sub_10000C8CC(v20, &unk_100925540, &qword_1007A8140);
        sub_10074B294();
        sub_100752764();
        sub_100752D34();
        v46 = v67[0];
        sub_100744C24();
        sub_100744C44();
        v47 = sub_10074B1F4();
        swift_allocObject();
        v48 = v46;
        v49 = sub_10074B1D4();
        sub_1003495BC(&unk_1009332C8, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_1007CA140);
        swift_unknownObjectRetain();
        sub_10074B1E4();
        v67[3] = v47;
        v67[0] = v49;
        v50 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_10006644C(v67, &v33[v50], &unk_100923520, &qword_1007A5A70);
        swift_endAccess();
        [v33 setNeedsLayout];

        return (*(v63 + 8))(v52, v64);
      }
    }

    [*&v30[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10033152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - v14;
  v16 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v40 = *(v16 - 8);
  v41 = v16;
  __chkstk_darwin(v16);
  v18 = v39 - v17;
  sub_10000C824(a1, v43);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100741D54();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v42;
    (*(v13 + 16))(v15, a2, v12);
    sub_100752DF4();
    sub_100752994();
    v21 = v39[1];
    sub_1006FF748(v20, a3, a4, a5, a6);
    sub_100741D44();
    v22 = sub_10074EF34();
    v24 = v23;

    if (v24)
    {
      v44._countAndFlagsBits = 0x465F4E4F5F444441;
      v44._object = 0xEE005050415F524FLL;
      v45._object = 0x8000000100777750;
      v45._countAndFlagsBits = 0xD000000000000031;
      sub_1007458B4(v44, v45);
      sub_10000C518(&unk_100927770, &unk_1007BA6E0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1007A5A00;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_1000DD048();
      *(v25 + 32) = v22;
      *(v25 + 40) = v24;

      sub_1007530B4();

      v26 = objc_allocWithZone(NSMutableAttributedString);
      v27 = sub_100753064();
      v28 = [v26 initWithString:v27];

      v29 = objc_allocWithZone(NSString);
      v30 = sub_100753064();

      v31 = [v29 initWithString:v30];

      v32 = sub_100753064();

      v33 = [v31 rangeOfString:v32 options:4];
      v35 = v34;

      v36 = [v21 tintColor];
      v43[0] = v36;
      sub_10000C518(&unk_100935100, &unk_1007C7BE0);
      v37 = sub_100754274();

      [v28 addAttribute:NSForegroundColorAttributeName value:v37 range:{v33, v35}];
      swift_unknownObjectRelease();
      v38 = *(*&v21[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel);
      if (!v38)
      {

        return (*(v40 + 8))(v18, v41);
      }

      [v38 setAttributedText:v28];
    }

    return (*(v40 + 8))(v18, v41);
  }

  return result;
}

uint64_t sub_1003319CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_10000C824(a1, v28);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    sub_100752DF4();
    sub_100752994();
    v26(v21, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_100331BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a3;
  v38 = a1;
  v10 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v28[1] = swift_getAssociatedTypeWitness();
  v13 = sub_100752984();
  v29 = *(v13 - 8);
  v30 = v13;
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_100754284();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v28 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  sub_10000C824(v38, v39);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if (v25)
  {
    v26(v20, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
    (*(v31 + 16))(v12, v33, v32);
    sub_100752994();
    (*(a8 + 56))(v24, v15, v34, v35, v36, v37, a7, a8);
    (*(v29 + 8))(v15, v30);
    return (*(v21 + 8))(v24, AssociatedTypeWitness);
  }

  else
  {
    v26(v20, 1, 1, AssociatedTypeWitness);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_100331FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100332020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v23 = a2;
  v20 = a1;
  v22 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v19 - v8;
  swift_getAssociatedTypeWitness();
  v21 = sub_100752984();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v19 - v15;
  sub_10000C824(v20, v25);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  swift_dynamicCast();
  (*(v7 + 16))(v9, v23, v22);
  sub_100752994();
  v17 = (*(a5 + 64))(v16, v12, v24, a4, a5);
  (*(v10 + 8))(v12, v21);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  return v17;
}

uint64_t sub_1003322F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_100752DF4();
  sub_100752994();
  (*(v8 + 8))(v11, v7);
  return 0;
}

double sub_100332480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100332534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003325D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_10033264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100332700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_10033279C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100332818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003328CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100332968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_1003329E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100332A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100332B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100332BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100332C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100332D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100332D7C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, a4, v6, v12);
  sub_100752DF4();
  sub_100752EB4();
  if (qword_100920978 != -1)
  {
    swift_once();
  }

  v15 = sub_1007504F4();
  sub_10000D0FC(v15, qword_10097FAF8);
  sub_1007504C4();
  (*(v11 + 8))(v14, v10);
  return a1;
}

double sub_100332FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_10033306C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100333108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_1003331FC(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26[-v16];
  v18 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v26[-v20];
  sub_10000C824(a1, v26);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100742954();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a5, v14);
  sub_100752DF4();
  sub_100752EB4();
  v22 = v27;
  ObjectType = swift_getObjectType();
  v24 = sub_100198620(v22, a8, v8, ObjectType, a2, a3);
  (*(v19 + 8))(v21, v18);

  return v24;
}

double sub_10033346C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a5, v9, v15);
  sub_100752DF4();
  sub_100752EB4();
  sub_10074FEA4();
  sub_10074FE74();
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  return v19;
}

double sub_100333684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100333738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003337D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100333850(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v20 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  sub_100752DF4();
  sub_100752EB4();
  sub_1004E226C(a7);
  (*(v15 + 8))(v18, v14);
  return a1;
}

double sub_100333A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a3, v9, v15);
  sub_100752DF4();
  sub_100752EB4();
  sub_10027D010(a2, a6);
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  return v19;
}

double sub_100333C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100333CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100333D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100333E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100333EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100333F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100334028(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  v7 = sub_10000C518(&unk_100933230, &qword_1007BA6B0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13[-v10];
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_100752994();
  sub_100168504();
  sub_100752954();
  (*(v8 + 8))(v11, v7);
  return 3;
}

void sub_100334248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v9 = __chkstk_darwin(v8 - 8);
  (*(v5 + 16))(v7, a3, v4, v9);
  sub_100752DF4();
  sub_100752EB4();
  sub_100754644();
  __break(1u);
}

double sub_1003343B8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v23 - v16;
  (*(v10 + 16))(v12, a5, v9, v15);
  sub_100752DF4();
  sub_100752EB4();
  if (qword_100920960 != -1)
  {
    swift_once();
  }

  v18 = sub_100747674();
  sub_10000D0FC(v18, qword_10097FA38);
  sub_100747694();
  sub_1003495BC(&qword_100933258, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  sub_100750D34();
  if (qword_100920968 != -1)
  {
    swift_once();
  }

  v19 = sub_100751374();
  sub_10000D0FC(v19, qword_10097FA50);
  sub_100753BD4();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  return v21;
}

double sub_1003346C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100334778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100334814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100334890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100334944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003349E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100334A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v31 = a6;
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v11 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = sub_10000C518(&qword_100933270, &qword_1007BA6C8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  v19 = sub_100742BB4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v32);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  swift_dynamicCast();
  (*(v12 + 16))(v14, v27, v11);
  sub_100752EB4();
  v23 = sub_1003495BC(&qword_100933278, type metadata accessor for AnnotationCollectionViewCell, &unk_1007BC348);
  v24 = (*(v23 + 48))(v22, v28, v18, v29, v30, v31, a7, a8);
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  return v24;
}

double sub_100334D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v13 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_10000C824(a1, v23);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100745324();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a3, v13);
  sub_100752DF4();
  sub_100752EB4();
  v21 = sub_1003C5678(a7, a8, v24, a6);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_100334FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003350AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100335148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_1003351C4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_10000C824(a1, v23);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100743FA4();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_100752DF4();
  sub_100752EB4();
  v21 = sub_1001130AC(v24, 0, 0, a8, 0.0, 0.0, a2, a3, a2);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_1003354B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100335568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100335604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_1003356B4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[0] = a11;
  v17 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v29 - v19;
  v21 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v29 - v23;
  sub_10000C824(a1, v30);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_1007428B4();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a5, v17);
  sub_100752DF4();
  sub_100752EB4();
  v25 = v31;
  ObjectType = swift_getObjectType();
  v27 = (v29[0])(v25, a8, a6, v29[1], ObjectType, a2, a3);
  (*(v22 + 8))(v24, v21);

  return v27;
}

double sub_10033593C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22[-v15];
  v17 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v22[-v19];
  sub_10000C824(a1, v22);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100742924();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_100752DF4();
  sub_100752EB4();
  sub_1004ABD20(v23, a8, a2, a3);
  (*(v18 + 8))(v20, v17);

  return a2;
}

double sub_100335B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100335C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100335CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100335D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100335E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100335EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100335F2C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25[-v15];
  v17 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v25[-v19];
  sub_10000C824(a1, v25);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100742954();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_100752DF4();
  sub_100752EB4();
  v21 = v26;
  ObjectType = swift_getObjectType();
  v23 = sub_1005867E4(v21, a8, ObjectType, a2, a3);
  (*(v18 + 8))(v20, v17);

  return v23;
}

double sub_1003361EC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v25 - v19;
  (*(v13 + 16))(v15, a5, v12, v18);
  sub_100752DF4();
  sub_100752EB4();
  if (qword_100921A40 != -1)
  {
    swift_once();
  }

  ObjectType = swift_getObjectType();
  v22 = type metadata accessor for VideoCardView(0);
  v23 = sub_1005FA0C8(a1, a2, &qword_1009828D0, a8, v22, ObjectType);
  (*(v17 + 8))(v20, v16);
  return v23;
}

double sub_100336448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003364FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100336598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100336634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003366E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100336784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100336800(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_10000C824(a1, v23);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074F474();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_100752DF4();
  sub_100752EB4();
  v21 = sub_10044B250(v24, a8, 1, a2, a3);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_100336A2C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v22 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  sub_100752DF4();
  sub_100752EB4();
  v19 = [a7 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v20 = sub_10032A640(v19, a1);
  swift_unknownObjectRelease();
  (*(v15 + 8))(v18, v14);
  return v20;
}

uint64_t sub_100336C38(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10000C518(&unk_1009400F0, &unk_1007BA690);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_100752DF4();
  sub_100752994();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_100336DC4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-v11];
  v13 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  sub_10000C824(a1, v23);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100749984();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_100752DF4();
  sub_100752EB4();
  v17 = sub_100749964();
  if (v18)
  {
    v19 = sub_100749974();
    if (v19 >> 62)
    {
      v20 = sub_100754664();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v20 = v17;
  }

  v21 = [a5 traitCollection];
  sub_100677794(v20, v21);

  (*(v14 + 8))(v16, v13);

  return a3;
}

double sub_100337040(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-v13];
  v15 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27[-v17];
  sub_10000C824(a1, v27);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100746DB4();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_100752DF4();
  sub_100752EB4();
  v19 = sub_100746D84();
  v21 = v20;
  v22 = sub_100746DA4();
  v23 = sub_100746D94();
  swift_getObjectType();
  v24.n128_f64[0] = a3;
  v25 = sub_1001BF6CC(v19, v21, v22, v23, a6, v24, a4);

  (*(v16 + 8))(v18, v15);

  return v25;
}

double sub_1003372B4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - v12;
  v14 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  sub_10000C824(a1, v24);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_100744424();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  sub_100752DF4();
  sub_100752EB4();
  v18 = v24[5];
  sub_10000C518(&qword_100924B88, &unk_1007BD1D0);
  sub_100752764();
  sub_100752D34();
  v23[1] = v18;
  sub_100742DE4();

  v19 = v24[0];
  if ((~v24[0] & 0xF000000000000007) != 0)
  {
    v20 = v24[1];
  }

  else
  {

    v20 = 0;
    v19 = v18;
  }

  v21 = sub_1001910D0(v19, v20, a6, a4);
  sub_100079128(v19, v20);
  (*(v15 + 8))(v17, v14);

  return v21;
}

double sub_10033755C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_100754724();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v82 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1007504F4();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v12 - 8);
  v89 = &v81 - v13;
  v14 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin(v18);
  v20 = &v81 - v19;
  sub_10000C824(a1, &v106);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074E934();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  sub_100752DF4();
  v90 = v20;
  sub_100752EB4();
  v21 = v105;
  [a5 pageMarginInsets];
  v110._object = 0x800000010076DF60;
  v110._countAndFlagsBits = 0xD000000000000010;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v22 = sub_1007458B4(v110, v111);
  v24 = sub_10017093C(v22, v23);
  if (v24 > 2)
  {
    if (v24 - 3 < 2)
    {
      if (qword_100920390 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_10097DE88;
      goto LABEL_21;
    }

    if (v24 == 5)
    {
      if (qword_100920398 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_10097DEE0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v24)
  {
LABEL_15:
    if (qword_100920378 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_10097DD80;
    goto LABEL_21;
  }

  if (v24 == 1)
  {
    if (qword_100920380 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_10097DDD8;
  }

  else
  {
    if (qword_100920388 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_10097DE30;
  }

LABEL_21:
  v26 = v25[4];
  *&v108[16] = v25[3];
  *&v108[32] = v26;
  v109 = *(v25 + 10);
  v27 = v25[2];
  v107 = v25[1];
  *v108 = v27;
  v106 = *v25;
  v28 = *&v108[40];
  v29 = v109;
  v97 = *&v108[24];
  v98 = *&v108[8];
  v30 = *(&v107 + 1);
  v31 = v27;
  v33 = *(&v106 + 1);
  v32 = v107;
  v34 = v106;
  sub_100170CF0(&v106, v102);
  v102[0] = __PAIR128__(v33, v34);
  v102[1] = __PAIR128__(v30, v32);
  *&v103[0] = v31;
  *(v103 + 8) = v98;
  *(&v103[1] + 8) = v97;
  *(&v103[2] + 1) = v28;
  v104 = v29;
  v109 = v29;
  v106 = __PAIR128__(v33, v34);
  v107 = __PAIR128__(v30, v32);
  *v108 = v103[0];
  *&v108[16] = v103[1];
  *&v108[32] = v103[2];
  [a5 pageMarginInsets];
  v35 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v96 = sub_100170988(&v106);

  *&v97 = v21;
  sub_10074E904();
  v37 = v36;
  v38 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_1009203B8 != -1)
  {
    swift_once();
  }

  v94 = sub_100750534();
  v39 = sub_10000D0FC(v94, qword_10097DF38);
  *&v98 = a5;
  v40 = [a5 traitCollection];
  v88 = v39;
  v41 = sub_100753C14();

  sub_10000C518(&unk_100929CA0, &qword_1007A6610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v43 = qword_100920138;
  v44 = NSParagraphStyleAttributeName;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = [qword_10097D250 paragraphStyleWithBaseWritingDirection:-1];
  v46 = sub_100016C60(0, &qword_10092A248, NSParagraphStyle_ptr);
  *(inited + 40) = v45;
  *(inited + 64) = v46;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v38;
  *(inited + 80) = v41;
  v47 = NSFontAttributeName;
  v87 = v41;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510, &unk_1007A6620);
  swift_arrayDestroy();
  v48 = objc_allocWithZone(NSMutableAttributedString);
  v49 = sub_100753064();
  type metadata accessor for Key(0);
  sub_1003495BC(&qword_1009276F0, type metadata accessor for Key, &unk_1007A543C);
  v50.super.isa = sub_100752F34().super.isa;
  v86 = v37;
  isa = v50.super.isa;

  v52 = [v48 initWithString:v49 attributes:isa];

  v95 = v52;
  if (v96)
  {
    v53 = v96;
    sub_100413A18(_swiftEmptyArrayStorage);
    v54 = objc_allocWithZone(NSAttributedString);
    v55 = sub_100753064();
    v56 = sub_100752F34().super.isa;

    v57 = [v54 initWithString:v55 attributes:v56];

    v58 = v95;
    [v58 appendAttributedString:v57];
    v59 = [objc_allocWithZone(NSTextAttachment) init];
    [v59 setImage:v53];
    [(UIImage *)v53 size];
    [v59 setBounds:{0.0, -v28, v60, v61}];
    v62 = [objc_opt_self() attributedStringWithAttachment:v59];
    [v58 appendAttributedString:v62];

    sub_100170D28(v102);
  }

  else
  {

    sub_100170D28(v102);
  }

  v63 = v94;
  v64 = *(v94 - 8);
  v65 = v89;
  (*(v64 + 16))(v89, v88, v94);
  (*(v64 + 56))(v65, 0, 1, v63);
  v66 = sub_10074F3F4();
  v100 = v66;
  v67 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v101 = v67;
  v68 = sub_10000D134(v99);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v70 = *(*(v66 - 8) + 104);
  v70(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
  sub_10074FC74();
  sub_10000C620(v99);
  sub_10074CCA4();
  sub_10000C8CC(v65, &unk_100928A40, qword_1007A6630);
  if (qword_1009203C8 != -1)
  {
    swift_once();
  }

  v71 = sub_100750B04();
  sub_10000D0FC(v71, qword_10097DF68);
  sub_100750584();
  if (qword_1009203D0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v71, qword_10097DF80);
  sub_100750554();
  v89 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v89 setMaximumNumberOfLines:0];
  sub_10074E914();
  if (v72)
  {
    if (qword_1009203C0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v94, qword_10097DF50);
    v100 = v66;
    v101 = v67;
    v73 = sub_10000D134(v99);
    v70(v73, v69, v66);
    sub_10074FC74();
    sub_10000C620(v99);
    v74 = v98;
    sub_10074CCB4();

    if (qword_1009203D8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v71, qword_10097DF98);
    sub_100750584();
    v75 = v74;
    v76 = v93;
    v77 = &stru_1008F2000;
    if (qword_1009203E0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v71, qword_10097DFB0);
    sub_100750554();
  }

  else
  {
    v75 = v98;
    v76 = v93;
    v77 = &stru_1008F2000;
  }

  if (sub_10074E924())
  {
    sub_10074F2A4();
    sub_10074F2A4();
    sub_100750504();
    if ((sub_10074E8F4() & 1) == 0)
    {
      [v75 v77[109].name];
      [v75 v77[109].name];
    }

    sub_1007504C4();
    v78 = v95;
    if (qword_1009203E8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v71, qword_10097DFC8);
    v79 = v82;
    sub_1007502D4();
    sub_100750564();

    (*(v84 + 8))(v79, v85);
    (*(v81 + 8))(v76, v83);
    (*(v91 + 8))(v90, v92);
  }

  else
  {

    (*(v91 + 8))(v90, v92);
  }

  return a3;
}

double sub_100338520(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v41 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v15 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v40 - v16;
  sub_10000C824(a1, &v44);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074ECD4();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_100752DF4();
  sub_100752EB4();
  v18 = v47;
  ObjectType = swift_getObjectType();
  v20 = [a6 traitCollection];
  v21 = [v20 horizontalSizeClass];

  if (v21 == 1)
  {
    [a6 pageMarginInsets];
    top = v22;
    left = v24;
    bottom = v26;
    right = v28;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v43 = v18;

  sub_10000C518(&qword_1009253C0, &unk_1007A8D20);
  if (swift_dynamicCast())
  {
    sub_10000C888(&v44, *(&v45 + 1));
    v30 = sub_10074CA24();
    sub_10000C620(&v44);
  }

  else
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_10000C8CC(&v44, &qword_1009253C8, qword_1007B15B0);
    v30 = 0;
  }

  v31 = sub_10074ECB4();
  v33 = v32;
  v34 = sub_10074ECC4();
  if (v34)
  {
  }

  v35 = sub_100321BB0(a6);
  if (qword_100921B28 != -1)
  {
    swift_once();
  }

  v36 = sub_100743CB4();
  v37 = sub_10000D0FC(v36, qword_100982A80);
  v38 = sub_100647CF4(v37, a6, v31, v33, v34 != 0, v35, v30 & 1, v42, a3, a4, top, left, bottom, right, ObjectType);

  (*(v15 + 8))(v17, v41);

  return v38;
}

double sub_100338920(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26[-v13];
  v15 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26[-v17];
  sub_10000C824(a1, v26);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_1007428B4();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_100752DF4();
  sub_100752EB4();
  v19 = v27;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v22 = v21;
  v23 = type metadata accessor for AppEventView(0);
  v24 = sub_100194FE8(v19, a6, a3, v22, a4, v23, ObjectType);
  (*(v16 + 8))(v18, v15);

  return v24;
}

double sub_100338B68(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, void *a5)
{
  v41 = sub_100744D64();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100744D84();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074CD14();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  v40 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v19 = &v37 - v18;
  sub_10000C824(a1, v52);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074F524();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  sub_100752DF4();
  v37 = v19;
  sub_100752EB4();
  sub_10074F514();
  v20 = sub_10074F504();
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100920FE0 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  sub_10000D0FC(v21, qword_100980CD8);
  v46 = a5;
  v22 = [a5 traitCollection];
  v23 = sub_100753C14();

  v24 = sub_10074F3F4();
  v52[3] = v24;
  v52[4] = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v25 = sub_10000D134(v52);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
  v26 = v23;
  sub_10074FC74();
  sub_10000C620(v52);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v11 + 8))(v13, v10);
  if ((v20 & 2) != 0)
  {
    if (qword_100920318 != -1)
    {
      swift_once();
    }

    [qword_10097DC60 size];
    v27 = sub_100750F34();
    swift_allocObject();
    v28 = sub_100750F14();
    *(&v50 + 1) = v27;
    v51 = &protocol witness table for LayoutViewPlaceholder;
    *&v49 = v28;
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
  }

  v29 = v46;
  if (qword_100920300 != -1)
  {
    swift_once();
  }

  v30 = v41;
  v31 = sub_10000D0FC(v41, qword_10097DC48);
  (*(v39 + 16))(v42, v31, v30);
  sub_10000C824(v52, v48);
  sub_1000CD5F0(&v49, v47);
  v32 = v43;
  sub_100744D74();
  [v29 pageMarginInsets];
  sub_100753BA4();
  sub_1003495BC(&qword_1009296E8, &type metadata accessor for FootnoteLayout, &protocol conformance descriptor for FootnoteLayout);
  v33 = v45;
  sub_100750404();
  sub_100753BC4();
  v35 = v34;

  (*(v44 + 8))(v32, v33);
  sub_10000C620(v52);
  (*(v38 + 8))(v37, v40);
  sub_10000C8CC(&v49, &unk_100928A00, &qword_1007A5AB0);

  return v35;
}

void sub_100339308(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v34 - v13;
  v15 = sub_10000C518(&unk_100933240, &qword_1007AE3E8);
  v37 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  sub_10000C824(a1, aBlock);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074F984();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_100752EB4();
  v18 = aBlock[6];
  sub_100168504();
  v38 = v15;
  v36 = v17;
  sub_100752E84();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v35 = sub_10074F8D4();
  }

  else
  {
    v35 = LOBYTE(aBlock[0]);
  }

  v19 = sub_10074F914();
  v34[1] = swift_getObjectType();
  v20 = [a6 traitCollection];
  v34[0] = v18;
  v21 = v20;
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v19];
  v23 = [v19 length];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v21;
  *(v24 + 32) = v22;
  *(v24 + 40) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1002B1424;
  *(v25 + 24) = v24;
  aBlock[4] = sub_1002B1408;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  aBlock[3] = &unk_100871998;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = v22;

  [v19 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    v29 = v28;
    [a6 pageMarginInsets];
    sub_1002D8C5C(v28, v35 & 1, a6, v30, v31, v32, v33, a3, a4);

    sub_100353C14(v34[0], a6);
    (*(v37 + 8))(v36, v38);
  }
}