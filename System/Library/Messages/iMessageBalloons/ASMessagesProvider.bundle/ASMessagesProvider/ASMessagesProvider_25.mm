void sub_2D14F4()
{
  v1 = sub_75BED0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_theme;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for ProductPageTheme.infer(_:))
  {
    sub_2D7930();
    return;
  }

  if (v6 == enum case for ProductPageTheme.blue(_:))
  {
    v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = qword_93CB38;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_99CCA8;
    goto LABEL_13;
  }

  if (v6 == enum case for ProductPageTheme.orange(_:))
  {
    v11 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = qword_93CB40;
    v9 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v10 = qword_99CCB0;
LABEL_13:
    [v9 setTextColor:v10];

LABEL_14:
    v13 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel);
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v14 = v0;
    v15 = sub_769FD0();
    [v13 setTextColor:v15];

    v16 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
    v17 = sub_769FF0();
    [v16 setTextColor:v17];

    v18 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView);
    v19 = sub_769FF0();
    [v18 setTintColor:v19];

    v20 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v21 = *(v14 + v20);
    if (v21)
    {
      v22 = v21;
      v23 = sub_769FE0();
      [v22 setTextColor:v23];
    }

    return;
  }

  if (v6 == enum case for ProductPageTheme.white(_:))
  {
    v24 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel);
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v25 = v0;
    v26 = sub_769FD0();
    [v24 setTextColor:v26];

    v27 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_93CB48 != -1)
    {
      v31 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
      swift_once();
      v27 = v31;
    }

    v28 = qword_99CCB8;
    [v27 setTextColor:qword_99CCB8];
    [*(v25 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView) setTintColor:v28];
    v29 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v30 = *(v25 + v29);
    if (v30)
    {
      [v30 setTextColor:v28];
    }
  }

  else
  {
    sub_2D7930();
    (*(v2 + 8))(v4, v1);
  }
}

void sub_2D191C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_B170((Strong + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_networkInquiry), *(Strong + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_networkInquiry + 24));
    if ((sub_75ACE0() & 1) == 0)
    {
      v4 = v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible];
      v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
      sub_2D34AC(v4);
    }
  }
}

void sub_2D19B8()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView];
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView];
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v5 = [v0 traitCollection];
    v6 = sub_7699D0();

    if (v6)
    {
      sub_2D3A08();
    }

    else
    {
      sub_2D44A0();
    }

    sub_2D4840();
  }
}

id sub_2D1AD8()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v2 = v0;
    sub_758210();

    swift_unknownObjectRelease();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ProductLockupCollectionViewCell(uint64_t a1)
{
  result = qword_94E588;
  if (!qword_94E588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2D1ED8(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView) = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *(v1 + v2);
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
    v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer);
    v7 = v5;
    [v6 insertSubview:v7 atIndex:0];
  }

LABEL_4:
}

void sub_2D1F94(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView);
  if (v3)
  {
    v4 = *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView);
    if (a1)
    {
      sub_2DE5C4(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v5 = v2;
      v6 = v14;
      v7 = [v5 superview];
      if (v7)
      {
        v8 = v7;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v9 = v4;
        v10 = sub_76A1C0();

        if (v10)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    else
    {
      v11 = v3;
    }

    v12 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v2;
    v13 = v2;
    sub_1F92A8(v12);

    if (v2)
    {
      *&v13[qword_940588 + 8] = &off_89A910;
      swift_unknownObjectWeakAssign();
    }

    a1 = v14;
  }
}

uint64_t sub_2D2148()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = result;
    v5 = v2;
    return v4;
  }

  return result;
}

uint64_t (*sub_2D21CC(uint64_t *a1))(id *a1, char a2)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4 && (v5 = *(*(*(v4 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents)) != 0)
  {
    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_2D227C;
}

uint64_t sub_2D227C(id *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + a1[1]);
  if (a2)
  {
    if (v3)
    {
      v4 = *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
      v25 = *a1;
      if (v2)
      {
        sub_2DE5C4(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
        v5 = v25;
        v6 = v3;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          sub_BE70(0, &qword_93E550, UIView_ptr);
          v9 = v4;
          v10 = sub_76A1C0();

          if (v10)
          {
            [v5 removeFromSuperview];
          }
        }

        else
        {
        }
      }

      else
      {
        v18 = v3;
        v5 = 0;
      }

      v20 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
      *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v25;
      v21 = v5;
      sub_1F92A8(v20);

      if (v25)
      {
        *&v21[qword_940588 + 8] = &off_89A910;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  else if (v3)
  {
    v11 = *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v26 = *a1;
    if (v2)
    {
      sub_2DE5C4(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
      v12 = v26;
      v13 = v3;
      v14 = [v12 superview];
      if (v14)
      {
        v15 = v14;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v16 = v11;
        v17 = sub_76A1C0();

        if (v17)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    else
    {
      v19 = v3;
      v12 = 0;
    }

    v22 = *&v11[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v11[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v26;
    v23 = v12;
    sub_1F92A8(v22);

    if (v26)
    {
      *&v23[qword_940588 + 8] = &off_89A910;
      swift_unknownObjectWeakAssign();
    }
  }

  return _objc_release_x2();
}

void sub_2D25D0(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *&v2[*a2];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = a1;
  v7 = a1;

  if (a1)
  {
    [v2 addSubview:v7];
  }
}

void sub_2D2674()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v1)
  {
    v2 = v0;
    v3 = v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber];
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v10 = v1;
    v4 = sub_769FF0();
    [v10 setTextColor:v4];

    if (v3 == 1)
    {
      if (qword_93CB90 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_99CD70];
      v5 = [v2 contentView];
      v6 = [v5 traitCollection];

      [v6 userInterfaceStyle];
      sub_769240();
      v7 = sub_769210();

      v8 = [v10 layer];
      v9 = v7;
      [v8 setCompositingFilter:v9];
    }

    else
    {
      if (qword_93CB88 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_99CD68];
      v9 = [v10 layer];
      [v9 setCompositingFilter:0];
    }
  }
}

void sub_2D28C8()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  if (v5)
  {
    v6 = v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber];
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v7 = v5;
    v8 = sub_769FF0();
    [v7 setTextColor:v8];

    if (v6 == 1)
    {
      if (qword_93D6C8 != -1)
      {
        swift_once();
      }

      v9 = sub_7666D0();
      v10 = sub_BE38(v9, qword_99EC50);
      v11 = *(v9 - 8);
      (*(v11 + 16))(v4, v10, v9);
      (*(v11 + 56))(v4, 0, 1, v9);
      sub_75BA40();
      [v7 setTextAlignment:1];
      v12 = [v1 contentView];
      v13 = [v12 traitCollection];

      [v13 userInterfaceStyle];
      sub_769240();
      v14 = sub_769210();

      v15 = [v7 layer];
      v16 = v14;
      [v15 setCompositingFilter:v16];
    }

    else
    {
      if (qword_93D6C0 != -1)
      {
        swift_once();
      }

      v17 = sub_7666D0();
      v18 = sub_BE38(v17, qword_99EC38);
      v19 = *(v17 - 8);
      (*(v19 + 16))(v4, v18, v17);
      (*(v19 + 56))(v4, 0, 1, v17);
      sub_75BA40();
      v16 = [v7 layer];
      [v16 setCompositingFilter:0];
    }
  }
}

void sub_2D2C40(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_760AD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v53 - v13;
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer] != v3)
  {
    if (v2[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer])
    {
      if (qword_93D6B8 != -1)
      {
        swift_once();
      }

      v15 = sub_7666D0();
      v16 = sub_BE38(v15, qword_99EC20);
      v17 = *(v15 - 8);
      v18 = *(v17 + 16);
      v53 = v16;
      v60 = v18;
      v61 = v17 + 16;
      (v18)(v14);
      v19 = *(v17 + 56);
      v62 = v17 + 56;
      v59 = v19;
      v19(v14, 0, 1, v15);
      if (qword_93CCE8 != -1)
      {
        swift_once();
      }

      v20 = sub_BD88(&unk_94B6E0, &qword_78E688);
      sub_BE38(v20, qword_99D1A8);
      v63 = v2;
      v21 = v2;
      v57 = v20;
      sub_7592B0();

      v22 = *(v5 + 104);
      v56 = enum case for DirectionalTextAlignment.none(_:);
      v58 = v5 + 104;
      v55 = v22;
      v22(v7);
      v54 = sub_75BB20();
      v23 = objc_allocWithZone(v54);
      v24 = sub_75BB10();
      v25 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v26 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
      if (v26)
      {
        [v26 removeFromSuperview];
        v27 = *&v21[v25];
      }

      else
      {
        v27 = 0;
      }

      *&v21[v25] = v24;
      v31 = v24;

      v60(v14, v53, v15);
      v59(v14, 0, 1, v15);
      sub_75BA40();
      v32 = [v21 contentView];
      [v32 addSubview:v31];

      [v21 setNeedsLayout];
      v33 = *&v21[v25];
      v34 = &selRef_setSpeed_;
      if (v33)
      {
        if (*&v21[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleText + 8])
        {
          v35 = v33;

          v36 = sub_769210();
        }

        else
        {
          v35 = v33;
          v36 = 0;
        }

        v34 = &selRef_setSpeed_;
        [v35 setText:v36];
      }

      if (v21[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber] == 1)
      {
        if (qword_93D6C8 != -1)
        {
          swift_once();
        }

        v40 = qword_99EC50;
      }

      else
      {
        if (qword_93D6C0 != -1)
        {
          swift_once();
        }

        v40 = qword_99EC38;
      }

      v41 = sub_BE38(v15, v40);
      v60(v10, v41, v15);
      v59(v10, 0, 1, v15);
      if (qword_93CCF0 != -1)
      {
        swift_once();
      }

      sub_BE38(v57, qword_99D1C0);
      v63 = v21;
      v42 = v21;
      sub_7592B0();

      v55(v7, v56, v4);
      v43 = objc_allocWithZone(v54);
      v44 = sub_75BB10();
      v45 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v46 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
      if (v46)
      {
        [v46 removeFromSuperview];
        v47 = *&v42[v45];
      }

      else
      {
        v47 = 0;
      }

      *&v42[v45] = v44;
      v48 = v44;

      sub_2D28C8();
      v49 = [v42 contentView];
      [v49 addSubview:v48];

      [v42 setNeedsLayout];
      v50 = *&v42[v45];
      if (v50)
      {
        if (*&v42[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleText + 8])
        {
          v51 = v50;

          v52 = sub_769210();
        }

        else
        {
          v51 = v50;
          v52 = 0;
        }

        [v51 v34[511]];
      }

      [*&v42[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel] setHidden:1];
      sub_2D14F4();
    }

    else
    {
      v28 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v29 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
      if (v29)
      {
        [v29 removeFromSuperview];
        v30 = *&v2[v28];
      }

      else
      {
        v30 = 0;
      }

      *&v2[v28] = 0;

      [v2 setNeedsLayout];
      v37 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v38 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
      if (v38)
      {
        [v38 removeFromSuperview];
        v39 = *&v2[v37];
      }

      else
      {
        v39 = 0;
      }

      *&v2[v37] = 0;

      [v2 setNeedsLayout];
    }

    [v2 setNeedsLayout];
  }
}

id sub_2D33E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = &v4[*a3];
  *v6 = a1;
  *(v6 + 1) = a2;

  v7 = *&v4[*a4];
  if (v7)
  {
    if (*(v6 + 1))
    {
      v8 = v7;

      v9 = sub_769210();
    }

    else
    {
      v8 = v7;
      v9 = 0;
    }

    [v8 setText:v9];
  }

  return [v4 setNeedsLayout];
}

void sub_2D34AC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (!v2)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible) == (a1 & 1))
  {
    return;
  }

  v22 = v2;
  if ([v22 isHidden])
  {
    if ((*(v1 + v3) & 1) == 0)
    {

      return;
    }
  }

  else if (!*(v1 + v3))
  {
    v4 = 1.0;
    tx = 0.0;
    ty = 0.0;
    [v22 setHidden:{0, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000}];
    goto LABEL_11;
  }

  v4 = 0.0;
  CGAffineTransformMakeTranslation(&aBlock, 0.0, 2.0);
  tx = aBlock.tx;
  ty = aBlock.ty;
  [v22 setHidden:{0, *&aBlock.a, *&aBlock.b, *&aBlock.c, *&aBlock.d}];
LABEL_11:
  [v22 setAlpha:v4];
  *&aBlock.a = v20;
  *&aBlock.c = v21;
  aBlock.tx = tx;
  aBlock.ty = ty;
  [v22 setTransform:&aBlock];
  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_disclosureArrow);
  if (v7)
  {
    v7[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_shouldAnimate] = (*(v1 + v3) & 1) == 0;
    v8 = v7;
    sub_3AB6E4();
  }

  if (*(v1 + v3))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v22;
  v12 = objc_allocWithZone(UIViewPropertyAnimator);
  *&aBlock.tx = sub_2DE6C0;
  *&aBlock.ty = v11;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_23F0CC;
  *&aBlock.d = &unk_88C7A8;
  v13 = _Block_copy(&aBlock);
  v14 = v22;

  v15 = [v12 initWithDuration:v9 curve:v13 animations:0.2];
  _Block_release(v13);

  aBlock.a = 1.0;
  aBlock.b = 0.0;
  aBlock.c = 0.0;
  aBlock.d = 1.0;
  aBlock.tx = 0.0;
  aBlock.ty = 0.0;
  [v14 setTransform:&aBlock];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  *&aBlock.tx = sub_2DE708;
  *&aBlock.ty = v17;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_19EE34;
  *&aBlock.d = &unk_88C7F8;
  v18 = _Block_copy(&aBlock);
  v19 = v14;

  [v15 addCompletion:v18];
  _Block_release(v18);
  [v15 startAnimation];
}

void sub_2D3890(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible;
    v6 = 0.0;
    if (*(Strong + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible))
    {
      v6 = 1.0;
    }

    [a2 setAlpha:v6];
    if (v4[v5])
    {
      v7 = xmmword_792920;
      v8 = xmmword_792930;
      v9 = 0uLL;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v10, 0.0, 2.0);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [a2 setTransform:&v10];
  }
}

void sub_2D396C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible) & 1) == 0)
    {
      [a3 setHidden:1];
      [a3 setText:0];
      [v5 setNeedsLayout];
    }
  }
}

void sub_2D3A08()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIVisualEffectView) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView;
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView) = v2;

  v5 = *(v0 + v3);
  if (v5)
  {
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_77B6C0;
    v7 = qword_93C8E8;
    v8 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_94E510;
    *(v6 + 32) = qword_94E510;
    v10 = qword_93C8F0;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_94E518;
    *(v6 + 40) = qword_94E518;
    sub_BE70(0, &qword_945800, UIVisualEffect_ptr);
    v13 = v12;
    isa = sub_769450().super.isa;

    [v8 setBackgroundEffects:isa];
  }

  v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView) = 0;

  v16 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView) = 0;

  v17 = [objc_allocWithZone(UIVisualEffectView) init];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_77D9F0;
  if (qword_93C8F8 != -1)
  {
    swift_once();
  }

  v19 = qword_94E520;
  *(v18 + 32) = qword_94E520;
  sub_BE70(0, &qword_945800, UIVisualEffect_ptr);
  v20 = v19;
  v21 = sub_769450().super.isa;

  [v17 setBackgroundEffects:v21];

  v22 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  v96 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = v17;
  v97 = v17;

  v23 = type metadata accessor for GradientView();
  v24 = [objc_allocWithZone(v23) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView;
  v26 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView) = v24;

  v27 = *(v1 + v25);
  v28 = &selRef_absoluteDimension_;
  if (v27)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_77FA60;
    v30 = objc_opt_self();
    v31 = v27;
    *(v29 + 32) = [v30 clearColor];
    v32 = [v30 blackColor];
    v33 = [v32 colorWithAlphaComponent:0.5];

    *(v29 + 40) = v33;
    v34 = [v30 blackColor];
    v35 = [v34 colorWithAlphaComponent:0.85];

    *(v29 + 48) = v35;
    v28 = &selRef_absoluteDimension_;
    *(v29 + 56) = [v30 blackColor];
    *&v31[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v29;

    sub_4AC204();

    v36 = *(v1 + v25);
    if (v36)
    {
      v37 = v36;
      sub_4AC060(&off_87EE98);

      v38 = *(v1 + v25);
      if (v38)
      {
        v39 = v38;
        v40 = [v39 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v41 = *(v1 + v25);
        if (v41)
        {
          v42 = v41;
          v43 = [v42 layer];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v44 = *(v1 + v3);
  if (v44)
  {
    v45 = [v44 v28[1]];
    v46 = *(v1 + v25);
    if (v46)
    {
      v47 = [v46 v28[1]];
      objc_opt_self();
      v48 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v48 = 0;
    }

    [v45 setMask:v48];
  }

  v49 = [objc_allocWithZone(v23) init];
  v50 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView;
  v51 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = v49;

  v52 = *(v1 + v50);
  if (v52)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_77FA60;
    v54 = objc_opt_self();
    v55 = v52;
    *(v53 + 32) = [v54 clearColor];
    v56 = [v54 blackColor];
    v57 = v23;
    v58 = v28;
    v59 = [v56 colorWithAlphaComponent:0.4];

    *(v53 + 40) = v59;
    v60 = [v54 blackColor];
    v61 = [v60 colorWithAlphaComponent:0.68];

    *(v53 + 48) = v61;
    v28 = v58;
    v23 = v57;
    v62 = [v54 blackColor];
    v63 = [v62 colorWithAlphaComponent:0.8];

    *(v53 + 56) = v63;
    *&v55[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v53;

    sub_4AC204();

    v64 = *(v1 + v50);
    if (v64)
    {
      v65 = v64;
      sub_4AC060(&off_87EED8);

      v66 = *(v1 + v50);
      if (v66)
      {
        v67 = v66;
        v68 = [v67 v28[1]];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v69 = *(v1 + v50);
        if (v69)
        {
          v70 = v69;
          v71 = [v70 v28[1]];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v72 = *(v1 + v96);
  if (v72)
  {
    v73 = [v72 v28[1]];
    v74 = *(v1 + v50);
    if (v74)
    {
      v75 = [v74 v28[1]];
      objc_opt_self();
      v76 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v76 = 0;
    }

    [v73 setMask:v76];
  }

  v77 = [objc_allocWithZone(v23) init];
  v78 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v79 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = v77;

  v80 = *(v1 + v78);
  if (v80)
  {
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_78D690;
    v82 = objc_opt_self();
    v83 = v80;
    *(v81 + 32) = [v82 blackColor];
    *(v81 + 40) = [v82 blackColor];
    *(v81 + 48) = [v82 blackColor];
    *&v83[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v81;

    sub_4AC204();

    v84 = *(v1 + v78);
    if (v84)
    {
      v85 = v84;
      sub_4AC060(&off_87EF18);

      v86 = *(v1 + v78);
      if (v86)
      {
        v87 = v86;
        v88 = [v87 v28[1]];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v89 = *(v1 + v78);
        if (v89)
        {
          v90 = v89;
          v91 = [v90 v28[1]];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v92 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer) v28[1]];
  v93 = *(v1 + v78);
  if (v93)
  {
    v94 = [v93 v28[1]];
    objc_opt_self();
    v95 = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v95 = 0;
  }

  v98 = v95;
  [v92 setMask:?];
}

void sub_2D44A0()
{
  v1 = v0;
  v2 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurEffect)];
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView) = v5;

  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;

  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView;
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView) = v8;

  v11 = *(v1 + v9);
  if (v11)
  {
    v12 = objc_allocWithZone(UIColor);
    v13 = v11;
    v14 = [v12 initWithWhite:1.0 alpha:0.1];
    [v13 setBackgroundColor:v14];
  }

  sub_758E80();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView;
  v17 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView) = v15;

  v18 = *(v1 + v16);
  if (v18)
  {
    v19 = qword_93C540;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_765080();
    v22 = sub_BE38(v21, qword_99B520);
    v23 = *(v21 - 8);
    (*(v23 + 16))(v4, v22, v21);
    (*(v23 + 56))(v4, 0, 1, v21);
    sub_758E60();

    v24 = *(v1 + v16);
    if (v24)
    {
      v25 = [v24 layer];
      v26 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView) layer];
      v27 = [v26 maskedCorners];

      [v25 setMaskedCorners:v27];
      v28 = *(v1 + v16);
      if (v28)
      {
        v29 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView);
        v30 = v28;
        [v29 _continuousCornerRadius];
        [v30 _setContinuousCornerRadius:?];

        v31 = *(v1 + v16);
        if (v31)
        {
          [v31 setAutoresizingMask:18];
        }
      }
    }
  }

  v32 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;

  v33 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;

  v34 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;

  v35 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer) layer];
  [v35 setMask:0];
}

void sub_2D4840()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
    v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer];
      v4 = v2;
      [v3 insertSubview:v15 aboveSubview:v4];
      v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v5)
      {
        v6 = v5;
        [v3 insertSubview:v6 aboveSubview:v4];
      }
    }

    else
    {
      v7 = v1;
      v8 = [v0 contentView];
      [v8 insertSubview:v7 atIndex:0];

      v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v9)
      {
        [*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v9 atIndex:0];
      }
    }

    v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView];
    if (v10)
    {
      [*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v10 aboveSubview:v15];
    }

    v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView];
    v12 = v15;
    if (v11)
    {
      v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer];
      v14 = v11;
      [v13 insertSubview:v14 aboveSubview:v15];

      v12 = v15;
    }
  }
}

uint64_t sub_2D49F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_76A920();
  v180 = *(v182 - 8);
  *&v7 = __chkstk_darwin(v182).n128_u64[0];
  v181 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191.receiver = v1;
  v191.super_class = ObjectType;
  objc_msgSendSuper2(&v191, "layoutSubviews", v7);
  if ([*&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel] isHidden])
  {
    v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel];
    if ([v9 isHidden])
    {
      [v9 setHidden:0];
    }
  }

  v10 = &selRef_setTextAlignment_;
  v11 = [v1 traitCollection];
  v12 = sub_769A00();

  sub_2DBD4C(v1, v1);
  sub_2DC2A4(v1, v1);
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v14 = [v1 contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16 + 0.0;
  v24 = v18 + 0.0;
  v179 = v20;
  v25 = v20 + 0.0;
  v26 = v13 + v22;
  v27 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v28 = [v1 traitCollection];
    v29 = sub_7699E0();

    if (v29)
    {
      v30 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView;
      v31 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
      if (v31)
      {
        v32 = qword_93CD00;
        v33 = v31;
        if (v32 != -1)
        {
          swift_once();
        }

        v34 = sub_BD88(&qword_940AD0, &unk_78F910);
        sub_BE38(v34, qword_99D1F0);
        v35 = v181;
        sub_766470();
        sub_759360();
        v37 = v36;
        v38 = *(v180 + 8);
        *&v184 = v180 + 8;
        y = *&v38;
        v38(v35, v182);
        [v33 _setCornerRadius:v37];

        v39 = *&v1[v30];
        if (v39)
        {
          v40 = [v39 contentView];
          v41 = [v40 layer];

          if (qword_93CD18 != -1)
          {
            swift_once();
          }

          [v41 setBorderColor:qword_99D238];

          v42 = *&v1[v30];
          if (v42)
          {
            v43 = [v42 contentView];
            v44 = [v43 layer];

            if (qword_93CD08 != -1)
            {
              swift_once();
            }

            v45 = sub_BD88(&qword_940AD0, &unk_78F910);
            sub_BE38(v45, qword_99D208);
            v46 = v181;
            sub_766470();
            sub_759360();
            v48 = v47;
            (*&y)(v46, v182);
            v49 = [v1 traitCollection];
            [v49 displayScale];
            v51 = v50;

            [v44 setBorderWidth:v48 / v51];
          }
        }
      }
    }

    v186 = sub_2D5840(v190, v23, v24, v25, v26);
    v187 = v52;
    v188 = v53;
    v189 = v54;
    v55 = v13 + v52;
    v10 = &selRef_setTextAlignment_;
  }

  else
  {
    v56 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
    if (v56)
    {
      v57 = [v56 contentView];
      v58 = [v57 layer];

      [v58 setBorderWidth:0.0];
    }

    if (v12)
    {
      v59 = sub_2D6508(v190, v23, v24, v25);
    }

    else
    {
      v59 = sub_2D6B74(v190, v23, v24, v25, v26);
    }

    v55 = v60;
    v186 = v59;
    v187 = v60;
    v188 = v61;
    v189 = v62;
  }

  v63 = v13;
  v192.origin.x = v23;
  v192.origin.y = v24;
  v192.size.width = v25;
  v192.size.height = v26;
  v64 = CGRectGetMaxY(v192) - v55;
  v193.origin.x = v23;
  v193.origin.y = v24;
  v193.size.width = v25;
  v193.size.height = v26;
  MinX = CGRectGetMinX(v193);
  v194.origin.y = v24;
  v66 = v23;
  v194.origin.x = v23;
  v194.size.width = v25;
  v194.size.height = v26;
  y = v194.origin.y;
  v67 = v55;
  Width = CGRectGetWidth(v194);
  sub_B170(v190, v190[3]);
  v177 = MinX;
  v178 = v64;
  v176 = Width;
  v69 = v67;
  sub_7672C0();
  (*(v4 + 8))(v6, v3);
  v70 = [v1 v10[23]];
  v71 = sub_7699E0();

  v72 = &unk_99C000;
  v184 = v63;
  if ((v71 & 1) != 0 && v1[v27] == 1)
  {
    if (v26 >= v179)
    {
      v73 = v25;
    }

    else
    {
      v73 = v26;
    }

    if (v73 <= 31.0)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v73 * 0.5;
    }

    sub_759160();
    v75 = CGRectGetMinY(v195) + -34.0;
    v76 = 30.0;
    if (v73 <= 60.0)
    {
      v76 = v74;
    }

    v77 = v75 - v76;
    v78 = v66;
    v196.origin.x = v66;
    v79 = y;
    v196.origin.y = y;
    v196.size.width = v25;
    v196.size.height = v26;
    MidY = CGRectGetMidY(v196);
    v81 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
    if (v77 >= MidY)
    {
      v63 = v184;
      if (v81)
      {
        v82 = *(*(v81 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
        v91 = &v82[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
        v92 = v82[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride + 8];
        *v91 = 0;
        v91[8] = 1;
        if ((v92 & 1) == 0)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v63 = v184;
      if (v81)
      {
        v82 = *(*(v81 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
        v83 = &v82[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
        MidY = *&v82[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
        v84 = v82[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride + 8];
        *v83 = v77;
        *(v83 + 8) = 0;
        if ((v84 & 1) != 0 || v77 != MidY)
        {
LABEL_45:
          [v82 setNeedsLayout];
        }
      }
    }
  }

  else
  {
    v85 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
    v78 = v66;
    v79 = y;
    if (v85)
    {
      v86 = *(*(*(v85 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      if (v86)
      {
        type metadata accessor for VideoView(0);
        v87 = swift_dynamicCastClass();
        if (v87)
        {
          v88 = v87 + qword_99A1B8;
          v89 = *(v87 + qword_99A1B8 + 16);
          *v88 = 0;
          *(v88 + 8) = 0;
          *(v88 + 16) = 1;
          if ((v89 & 1) == 0)
          {
            v90 = v86;
            sub_539CC();
          }
        }
      }
    }
  }

  v93 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer];
  [v93 setFrame:{v78, v79, v25, v26}];
  v94 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v95 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
  if (v95)
  {
    v96 = v95;
    [v93 bounds];
    [v96 setFrame:?];
  }

  v97 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView;
  v98 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
  if (v1[v27] == 1)
  {
    if (v98)
    {
      v99 = v98;
      [v1 bounds];
      v100 = CGRectGetMinX(v197);
      [v1 bounds];
      v101 = CGRectGetWidth(v198);
      [v1 bounds];
      [v99 setFrame:{v100, 0.0, v101, v63 + CGRectGetHeight(v199)}];

      v102 = *&v1[v97];
      if (v102)
      {
        v103 = v102;
        v104 = [v1 traitCollection];
        v105 = sub_7699E0();

        v106 = 418.0;
        if (v105)
        {
          v106 = 0.0;
        }

        *&v103[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset] = v106;
        v107 = *&v103[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView];
        v108 = *(v107 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount);
        *(v107 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount) = v106;
        if (v106 != v108)
        {
          sub_1F7F5C();
        }
      }
    }

    v109 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView];
    if (v109)
    {
      v110 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
      v111 = v109;
      if (v110)
      {
        [v110 bounds];
      }

      else
      {
        v112 = 0.0;
        v113 = 0.0;
        v114 = 0.0;
        v115 = 0.0;
      }

      [v111 setFrame:{v112, v113, v114, v115}];
    }

    v129 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView];
    if (v129)
    {
      v130 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      v120 = v129;
      if (v130)
      {
        [v130 bounds];
      }

      else
      {
        v126 = 0.0;
        v128 = 0.0;
        v124 = 0.0;
        v127 = 0.0;
      }

      goto LABEL_71;
    }
  }

  else if (v98)
  {
    v116 = 0.0;
    if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight] != 0.0)
    {
      goto LABEL_64;
    }

    if (qword_93CBD0 != -1)
    {
      swift_once();
    }

    v117 = qword_99CE38;
    sub_B170(qword_99CE20, qword_99CE38);
    v118 = v181;
    sub_33964(v117);
    sub_766700();
    v116 = v119;
    (*(v180 + 8))(v118, v182);
    v98 = *&v1[v97];
    v72 = &unk_99C000;
    if (v98)
    {
LABEL_64:
      v120 = v98;
      [v1 bounds];
      v121 = CGRectGetMinX(v200);
      [v1 bounds];
      v122 = CGRectGetWidth(v201);
      v202.origin.x = v177;
      v202.origin.y = v178;
      v202.size.width = v176;
      v202.size.height = v69;
      MinY = CGRectGetMinY(v202);
      v124 = v122;
      v125 = MinY;
      v126 = v121;
      v127 = v125 - v116;
      v128 = 0.0;
LABEL_71:
      [v120 setFrame:{v126, v128, v124, v127}];
    }
  }

  v131 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupContentBackgroundView];
  v132 = [v1 contentView];
  [v132 bounds];
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;

  v203.origin.x = v134;
  v203.origin.y = v136;
  v203.size.width = v138;
  v203.size.height = v140;
  v141 = CGRectGetMinX(v203);
  v142 = v72[234];
  v143 = *&v1[v142];
  v144 = 0.0;
  MaxY = 0.0;
  if (v143)
  {
    [v143 frame];
    MaxY = CGRectGetMaxY(v204);
  }

  v146 = [v1 contentView];
  [v146 bounds];
  v148 = v147;
  v150 = v149;
  v152 = v151;
  v154 = v153;

  v205.origin.x = v148;
  v205.origin.y = v150;
  v205.size.width = v152;
  v205.size.height = v154;
  v155 = CGRectGetWidth(v205);
  v156 = [v1 contentView];
  [v156 bounds];
  v158 = v157;
  v160 = v159;
  v162 = v161;
  v164 = v163;

  v206.origin.x = v158;
  v206.origin.y = v160;
  v206.size.width = v162;
  v206.size.height = v164;
  Height = CGRectGetHeight(v206);
  v166 = *&v1[v142];
  if (v166)
  {
    [v166 frame];
    v144 = CGRectGetMaxY(v207);
  }

  v167 = v184;
  [v131 setFrame:{v141, MaxY, v155, v184 + Height - v144}];
  v168 = *&v1[v94];
  if (v168)
  {
    v169 = v168;
    [v1 bounds];
    v170 = v167 + CGRectGetHeight(v208);
    v171 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton];
    v172 = type metadata accessor for OfferButton();
    v185.receiver = v171;
    v185.super_class = v172;
    objc_msgSendSuper2(&v185, "frame");
    v173 = CGRectGetMinY(v209) / v170;
    sub_BD88(&qword_9419F0, &unk_781020);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77DC20;
    *(inited + 32) = v173;
    *(inited + 40) = 1.0 - v167 / v170;
    *(inited + 48) = 0x3FF0000000000000;
    sub_4AC060(inited);
  }

  return sub_10A2C(&v186, &qword_94E5C8, &unk_792B20);
}

double sub_2D5840(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v153 = a5;
  v148 = a1;
  v8 = sub_76A920();
  v149 = *(v8 - 8);
  v150 = v8;
  __chkstk_darwin(v8);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v11);
  v152 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v134 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v134 - v18;
  v20 = [v5 contentView];
  [v20 layoutMargins];

  v21 = [v6 contentView];
  [v21 layoutMargins];
  v23 = v22;

  v24 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v25 = [v6 contentView];
  [v25 layoutMargins];
  v27 = v26;

  v28 = &v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize];
  v29 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize];
  v30 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize + 8];
  v147 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight;
  v31 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight];
  v146 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerViewHeight;
  v32 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  if (qword_93CB28 != -1)
  {
    swift_once();
  }

  v145 = sub_BE38(v11, qword_99CC78);
  sub_2DE494(v145, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  *(v19 + 4) = v29;
  *(v19 + 5) = v30;
  *(v19 + 1) = v23;
  *(v19 + 2) = v24;
  *(v19 + 3) = v27;
  *v19 = 0;
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v31;
  v33 = v11[15];
  sub_BEB8(&v19[v33]);
  sub_10914(&v176, &v19[v33]);
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v32;
  v34 = v11[16];
  sub_BEB8(&v19[v34]);
  sub_10914(&v176, &v19[v34]);
  *&v176 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel];
  v151 = v176;
  v35 = [v6 traitCollection];
  v36 = sub_7699E0();

  v37 = v19;
  if (v36)
  {
    sub_766470();
    sub_759360();
    (*(v149 + 8))(v10, v150);
  }

  sub_769DA0();
  sub_769DA0();
  v38 = v151;
  [v151 measurementsWithFitting:v6 in:?];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = sub_75BB20();
  v181.var0 = v40;
  v181.var1 = v42;
  v181.var2 = v44;
  v181.var3 = v46;
  v48 = sub_766A10(v181);

  v150 = v37;
  if (v48 >= 2)
  {
    v49 = *v28;
    v50 = *(v28 + 1);
    v51 = *&v6[v147];
    v52 = *&v6[v146];
    sub_2DE494(v145, v15, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    *(v15 + 4) = v49;
    *(v15 + 5) = v50;
    *(v15 + 1) = v23;
    *(v15 + 2) = v24;
    *(v15 + 3) = v27;
    *v15 = 0;
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v51;
    v53 = v11[15];
    sub_BEB8(&v15[v53]);
    sub_10914(&v176, &v15[v53]);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v52;
    v54 = v11[16];
    sub_BEB8(&v15[v54]);
    sub_10914(&v176, &v15[v54]);
    if (qword_93CC48 != -1)
    {
      swift_once();
    }

    v55 = sub_BD88(&qword_940AD0, &unk_78F910);
    v56 = sub_BE38(v55, qword_99CFC8);
    v57 = *(*(v55 - 8) + 24);
    v57(&v15[v11[7]], v56, v55);
    if (qword_93CC38 != -1)
    {
      swift_once();
    }

    v58 = sub_BE38(v55, qword_99CF98);
    v57(&v15[v11[6]], v58, v55);
    if (qword_93CC60 != -1)
    {
      swift_once();
    }

    v59 = sub_BE38(v55, qword_99D010);
    v57(&v15[v11[8]], v59, v55);
    if (qword_93CC08 != -1)
    {
      swift_once();
    }

    v60 = sub_BD88(&qword_94E5D0, &qword_783580);
    v61 = sub_BE38(v60, qword_99CF08);
    (*(*(v60 - 8) + 24))(&v15[v11[13]], v61, v60);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = 0x401C000000000000;
    v37 = v150;
    sub_2DE564(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v62 = v11[9];
    sub_BEB8(&v15[v62]);
    sub_10914(&v176, &v15[v62]);
    sub_2DE4FC(v15, v37, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    if (qword_93CB60 != -1)
    {
      swift_once();
    }

    v63 = sub_BD88(&unk_94E7B0, &qword_792B30);
    sub_BE38(v63, qword_99CCF0);
    v175 = v6;
    v64 = v6;
    sub_7592B0();

    v65 = v176;
    v38 = v151;
    [v151 setFont:v176];
  }

  sub_2DE494(v37, v152, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v66 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView];
  if (v66)
  {
    v146 = sub_BE70(0, &qword_93E550, UIView_ptr);
    v145 = &protocol witness table for UIView;
  }

  else
  {
    v145 = 0;
    v146 = 0;
  }

  v67 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
  v68 = sub_BE70(0, &qword_93E550, UIView_ptr);
  v173 = v68;
  v174 = &protocol witness table for UIView;
  if (v67)
  {
    v69 = v66;
    v70 = v67;
  }

  else
  {
    v71 = objc_allocWithZone(UIView);
    v72 = v66;
    v70 = [v71 init];
  }

  *&v172 = v70;
  v151 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  v147 = v66;
  if (v151)
  {
    v144 = sub_BE70(0, &unk_944FA0, UIVisualEffectView_ptr);
    v143 = &protocol witness table for UIView;
  }

  else
  {
    v143 = 0;
    v144 = 0;
  }

  v73 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView];
  v170 = sub_75A030();
  v171 = &protocol witness table for UIView;
  *&v169 = v73;
  v74 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView];
  v167 = sub_759210();
  v168 = &protocol witness table for UIView;
  *&v166 = v74;
  v164 = v47;
  v165 = &protocol witness table for UILabel;
  v162 = &protocol witness table for UILabel;
  *&v163 = v38;
  v75 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel];
  v149 = v47;
  v161 = v47;
  *&v160 = v75;
  v76 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton];
  v158 = type metadata accessor for OfferButton();
  v159 = &protocol witness table for UIView;
  *&v157 = v76;
  v77 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v78 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
  v142 = v77;
  if (v78)
  {
    v79 = v77;
    v80 = v78;
    v81 = v67;
    v82 = v151;
    v83 = v73;
    v84 = v74;
    v85 = v75;
    v86 = v76;
    [v80 transform];
    v176 = 0x3FF0000000000000uLL;
    v177 = 0;
    v178 = 0x3FF0000000000000;
    v179 = 0;
    v180 = 0;
    if (sub_769910())
    {
      *(&v155 + 1) = v68;
      v156 = &protocol witness table for UIView;
      *&v154 = v80;
      v87 = v149;
      goto LABEL_32;
    }

    sub_769E80();
  }

  else
  {
    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    v88 = v77;
    v89 = v67;
    v90 = v151;
    v91 = v73;
    v92 = v74;
    v93 = v75;
    v94 = v76;
  }

  v87 = v149;
LABEL_32:
  v95 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_disclosureArrow];
  if (v95)
  {
    v149 = type metadata accessor for ChevronView();
    v141 = &protocol witness table for UIView;
  }

  else
  {
    v141 = 0;
    v149 = 0;
  }

  v96 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView];
  v97 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerView];
  v98 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView];
  if (v98)
  {
    v139 = sub_758E80();
    v140 = &protocol witness table for UIView;
  }

  else
  {
    v139 = 0;
    v140 = 0;
  }

  if (v97)
  {
    v99 = v68;
  }

  else
  {
    v99 = 0;
  }

  if (v97)
  {
    v100 = &protocol witness table for UIView;
  }

  else
  {
    v100 = 0;
  }

  v137 = v100;
  v138 = v99;
  if (v96)
  {
    v101 = v68;
  }

  else
  {
    v101 = 0;
  }

  if (v96)
  {
    v102 = &protocol witness table for UIView;
  }

  else
  {
    v102 = 0;
  }

  v135 = v102;
  v136 = v101;
  v103 = v142;
  v104 = &protocol witness table for UILabel;
  if (!v142)
  {
    v104 = 0;
  }

  v134 = v104;
  if (!v142)
  {
    v87 = 0;
  }

  v105 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v106 = v148;
  v148[3] = v105;
  v106[4] = sub_2DE5C4(&qword_943B20, type metadata accessor for ProductLockupInlineUberLayout, &protocol conformance descriptor for ProductLockupInlineUberLayout);
  v107 = sub_B1B4(v106);
  sub_2DE4FC(v152, v107, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v108 = (v107 + v105[5]);
  v109 = v146;
  *v108 = v147;
  v108[1] = 0;
  v108[2] = 0;
  v108[3] = v109;
  v108[4] = v145;
  sub_10914(&v172, v107 + v105[6]);
  v110 = (v107 + v105[7]);
  *v110 = v151;
  v110[1] = 0;
  v111 = v143;
  v112 = v144;
  v110[2] = 0;
  v110[3] = v112;
  v110[4] = v111;
  sub_10914(&v169, v107 + v105[10]);
  sub_10914(&v166, v107 + v105[8]);
  sub_10914(&v163, v107 + v105[9]);
  sub_10914(&v160, v107 + v105[11]);
  v113 = v107 + v105[12];
  *(v113 + 4) = 0;
  *v113 = 0u;
  *(v113 + 1) = 0u;
  sub_10914(&v157, v107 + v105[13]);
  v114 = (v107 + v105[14]);
  *v114 = v103;
  v114[1] = 0;
  v114[2] = 0;
  v114[3] = v87;
  v114[4] = v134;
  v115 = v107 + v105[15];
  v116 = v155;
  *v115 = v154;
  *(v115 + 1) = v116;
  *(v115 + 4) = v156;
  v117 = (v107 + v105[16]);
  *v117 = v95;
  v117[1] = 0;
  v118 = v149;
  v117[2] = 0;
  v117[3] = v118;
  v117[4] = v141;
  v119 = (v107 + v105[17]);
  *v119 = v96;
  v119[1] = 0;
  v120 = v135;
  v121 = v136;
  v119[2] = 0;
  v119[3] = v121;
  v119[4] = v120;
  v122 = (v107 + v105[18]);
  *v122 = v97;
  v122[1] = 0;
  v123 = v137;
  v124 = v138;
  v122[2] = 0;
  v122[3] = v124;
  v122[4] = v123;
  v125 = (v107 + v105[19]);
  *v125 = v98;
  v125[1] = 0;
  v127 = v139;
  v126 = v140;
  v125[2] = 0;
  v125[3] = v127;
  v125[4] = v126;
  v128 = v98;
  v129 = v95;
  v130 = v96;
  v131 = v97;
  v132 = sub_2D8F08(v6, v107, a4, v153);
  sub_2DE564(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  return v132;
}

double sub_2D6508(uint64_t *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize];
  v86 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize + 8];
  v84 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight];
  v85 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v83 = v12;
  v15 = [v5 contentView];
  [v15 layoutMargins];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (qword_93CB30 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v8, qword_99CC90);
  __chkstk_darwin(v24);
  *&v25 = v86.n128_u64[0];
  *&v26 = v85.n128_u64[0];
  *(&v25 + 1) = v84.n128_u64[0];
  *(&v26 + 1) = v83.n128_u64[0];
  *(&v71 - 4) = v25;
  *(&v71 - 3) = v26;
  *(&v71 - 4) = v17;
  *(&v71 - 3) = v19;
  *(&v71 - 2) = v21;
  *(&v71 - 1) = v23;
  sub_2DE5C4(&qword_94E5D8, type metadata accessor for ProductLockupAccessibilityLayout.Metrics, &protocol conformance descriptor for ProductLockupAccessibilityLayout.Metrics);
  sub_765470();
  v27 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v27)
  {
    v28 = v27;
    if (([v28 isHidden] & 1) == 0)
    {
      [v28 transform];
      v107 = 0x3FF0000000000000;
      v108 = 0;
      v109 = 0;
      v110 = 0x3FF0000000000000;
      v111 = 0;
      v112 = 0;
      if (sub_769910())
      {
        v105 = sub_BE70(0, &qword_93E550, UIView_ptr);
        v106 = &protocol witness table for UIView;

        v104[0] = v28;
      }

      else
      {
        sub_769E80();
      }

      goto LABEL_7;
    }
  }

  v29 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v105 = sub_75BB20();
  v106 = &protocol witness table for UIView;
  v104[0] = v29;
  v30 = v29;
LABEL_7:
  v86.n128_u64[0] = v10;
  sub_2DE494(v14, v10, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  v31 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView];
  v102 = sub_759210();
  v103 = &protocol witness table for UIView;
  v85.n128_u64[0] = v31;
  *&v101 = v31;
  v32 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel];
  v33 = sub_75BB20();
  v99 = v33;
  v100 = &protocol witness table for UILabel;
  v84.n128_u64[0] = v32;
  v97 = &protocol witness table for UILabel;
  *&v98 = v32;
  v34 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel];
  v35 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel];
  v96 = v33;
  v82 = v35;
  v83.n128_u64[0] = v34;
  v94 = &protocol witness table for UILabel;
  *&v95 = v34;
  v93 = v33;
  *&v92 = v35;
  v36 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v37 = *&v5[v36];
  v38 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton];
  v90 = type metadata accessor for OfferButton();
  v91 = &protocol witness table for UIView;
  v81 = v38;
  *&v89 = v38;
  sub_134D8(v104, v88);
  v39 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v40 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v80 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView];
  if (v80)
  {
    v78 = sub_BE70(0, &qword_93E550, UIView_ptr);
    v79 = &protocol witness table for UIView;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v41 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerView];
  v87 = v14;
  if (v41)
  {
    v76 = sub_BE70(0, &qword_93E550, UIView_ptr);
    v77 = &protocol witness table for UIView;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  if (v40)
  {
    v42 = v33;
  }

  else
  {
    v42 = 0;
  }

  if (v40)
  {
    v43 = &protocol witness table for UILabel;
  }

  else
  {
    v43 = 0;
  }

  v74 = v43;
  v75 = v42;
  if (v39)
  {
    v44 = &protocol witness table for UILabel;
  }

  else
  {
    v44 = 0;
  }

  v72 = v40;
  v73 = v44;
  if (v39)
  {
    v45 = v33;
  }

  else
  {
    v45 = 0;
  }

  v71 = v45;
  v46 = v37 == 0;
  v47 = v37;
  if (v37)
  {
    v48 = &protocol witness table for UILabel;
  }

  else
  {
    v48 = 0;
  }

  v49 = v39;
  if (v46)
  {
    v50 = 0;
  }

  else
  {
    v50 = v33;
  }

  v51 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  a1[3] = v51;
  a1[4] = sub_2DE5C4(&qword_941800, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
  v52 = sub_B1B4(a1);
  sub_2DE4FC(v86.n128_i64[0], v52 + *(v51 + 64), type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_10914(&v101, v52);
  sub_10914(&v98, (v52 + 5));
  sub_10914(&v95, (v52 + 10));
  sub_10914(&v92, (v52 + 15));
  v52[20] = v47;
  v52[21] = 0;
  v52[22] = 0;
  v52[23] = v50;
  v52[24] = v48;
  sub_10914(&v89, (v52 + 25));
  *(v52 + 15) = 0u;
  *(v52 + 16) = 0u;
  v52[34] = 0;
  sub_10914(v88, (v52 + 35));
  v52[40] = v49;
  v52[41] = 0;
  v53 = v71;
  v54 = v72;
  v52[42] = 0;
  v52[43] = v53;
  v52[44] = v73;
  v52[45] = v54;
  v52[46] = 0;
  v52[47] = 0;
  v55 = v74;
  v52[48] = v75;
  v52[49] = v55;
  v56 = v80;
  v52[50] = v80;
  v52[51] = 0;
  v58 = v78;
  v57 = v79;
  v52[52] = 0;
  v52[53] = v58;
  v52[54] = v57;
  v52[55] = v41;
  v52[56] = 0;
  v52[57] = 0;
  v59 = v77;
  v52[58] = v76;
  v52[59] = v59;
  v60 = v41;
  v61 = v85.n128_u64[0];
  v62 = v84.n128_u64[0];
  v63 = v83.n128_u64[0];
  v64 = v82;
  v65 = v47;
  v66 = v81;
  v67 = v49;
  v68 = v54;
  v69 = v56;
  sub_2DD920(v5, v52, a4);
  sub_2DE564(v87, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_BEB8(v104);
  return a4;
}

double sub_2D6B74(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v125 = a1;
  v9 = sub_BD88(&unk_953FF0, &qword_792B18);
  __chkstk_darwin(v9 - 8);
  v11 = &v108 - v10;
  v129 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v129);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v108 - v15;
  __chkstk_darwin(v17);
  v19 = &v108 - v18;
  *&v126 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v20 = *(v126 - 8);
  *&v21 = __chkstk_darwin(v126).n128_u64[0];
  v23 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
  v25 = &selRef_setTextAlignment_;
  v127 = v13;
  v128 = v23;
  if (!v24)
  {
LABEL_4:
    v27 = [v6 v25[23]];
    sub_34A75C(v27, v19);

    sub_2DE494(&v19[*(v129 + 19)], v23, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
    sub_2DE564(v19, type metadata accessor for ProductLockupLayout.Metrics);
    v28 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel];
    v147 = sub_75BB20();
    v148 = &protocol witness table for UIView;
    v146[0] = v28;
    v29 = [v28 text];
    if (v29)
    {
      v30 = v29;
      v31 = sub_769240();
      v123 = v32;
      v124 = v31;
    }

    else
    {
      v123 = 0;
      v124 = 0;
    }

    v41 = v126;
    goto LABEL_19;
  }

  v26 = v24;
  if ([v26 isHidden])
  {

    v25 = &selRef_setTextAlignment_;
    goto LABEL_4;
  }

  v124 = v20;
  v23[3] = &type metadata for Double;
  v23[4] = &protocol witness table for Double;
  *v23 = 0;
  v33 = v23;
  if (qword_93CB88 != -1)
  {
    swift_once();
  }

  v149 = qword_99CD68;
  v34 = v126;
  v35 = qword_99CD68;
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  sub_7592F0();
  v36 = (v23 + *(v34 + 24));
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x7FF0000000000000;
  if (qword_93CC88 != -1)
  {
    swift_once();
  }

  v37 = sub_766CA0();
  v38 = sub_BE38(v37, qword_99D088);
  v39 = (v33 + *(v34 + 28));
  v39[3] = v37;
  v39[4] = &protocol witness table for StaticDimension;
  v40 = sub_B1B4(v39);
  (*(*(v37 - 8) + 16))(v40, v38, v37);
  [v26 transform];
  v149 = 0x3FF0000000000000;
  v150 = 0;
  v151 = 0;
  v152 = 0x3FF0000000000000;
  v153 = 0;
  v154 = 0;
  if (sub_769910())
  {
    v147 = sub_BE70(0, &qword_93E550, UIView_ptr);
    v148 = &protocol witness table for UIView;
    v146[0] = v26;
  }

  else
  {
    sub_769E80();
  }

  v20 = v124;
  v42 = [v26 text];
  v23 = v128;
  v41 = v126;
  if (v42)
  {
    v43 = v42;
    v44 = sub_769240();
    v123 = v45;
    v124 = v44;
  }

  else
  {

    v123 = 0;
    v124 = 0;
  }

  v13 = v127;
LABEL_19:
  v126 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize];
  *&v46 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight];
  *(&v46 + 1) = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v122 = v46;
  v47 = [v6 contentView];
  [v47 layoutMargins];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  sub_2DE494(v23, v11, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  (*(v20 + 56))(v11, 0, 1, v41);
  v56 = [v6 traitCollection];
  v57 = sub_34A75C(v56, v19);
  __chkstk_darwin(v57);
  v58 = v122;
  *(&v108 - 5) = v126;
  *(&v108 - 4) = v58;
  *(&v108 - 6) = v49;
  *(&v108 - 5) = v51;
  *(&v108 - 4) = v53;
  *(&v108 - 3) = v55;
  *(&v108 - 2) = v11;
  sub_2DE5C4(&qword_94E5E8, type metadata accessor for ProductLockupLayout.Metrics, &protocol conformance descriptor for ProductLockupLayout.Metrics);
  sub_765470();

  sub_2DE564(v19, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10A2C(v11, &unk_953FF0, &qword_792B18);
  v129 = v16;
  sub_2DE494(v16, v13, type metadata accessor for ProductLockupLayout.Metrics);
  v59 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView];
  v144 = sub_759210();
  v145 = &protocol witness table for UIView;
  *&v126 = v59;
  *&v143 = v59;
  v60 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel];
  v61 = sub_75BB20();
  v141 = v61;
  v142 = &protocol witness table for UILabel;
  v139 = &protocol witness table for UILabel;
  *&v140 = v60;
  v62 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel];
  v63 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel];
  v138 = v61;
  v121 = v62;
  *&v122 = v60;
  v136 = &protocol witness table for UILabel;
  *&v137 = v62;
  v135 = v61;
  v120 = v63;
  *&v134 = v63;
  v64 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v65 = *&v6[v64];
  v66 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton];
  v132 = type metadata accessor for OfferButton();
  v133 = &protocol witness table for UIView;
  v119 = v66;
  *&v131 = v66;
  sub_134D8(v146, v130);
  v67 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v68 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v117 = v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer];
  v118 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView];
  if (v118)
  {
    v115 = sub_BE70(0, &qword_93E550, UIView_ptr);
    v116 = &protocol witness table for UIView;
  }

  else
  {
    v115 = 0;
    v116 = 0;
  }

  v69 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerView];
  if (v69)
  {
    v113 = sub_BE70(0, &qword_93E550, UIView_ptr);
    v114 = &protocol witness table for UIView;
  }

  else
  {
    v113 = 0;
    v114 = 0;
  }

  if (v68)
  {
    v70 = v61;
  }

  else
  {
    v70 = 0;
  }

  if (v68)
  {
    v71 = &protocol witness table for UILabel;
  }

  else
  {
    v71 = 0;
  }

  v111 = v71;
  v112 = v70;
  if (v67)
  {
    v72 = &protocol witness table for UILabel;
  }

  else
  {
    v72 = 0;
  }

  if (v67)
  {
    v73 = v61;
  }

  else
  {
    v73 = 0;
  }

  v109 = v73;
  v110 = v72;
  if (v65)
  {
    v74 = &protocol witness table for UILabel;
  }

  else
  {
    v74 = 0;
  }

  if (v65)
  {
    v75 = v61;
  }

  else
  {
    v75 = 0;
  }

  v76 = type metadata accessor for ProductLockupLayout(0);
  v77 = v125;
  v125[3] = v76;
  v77[4] = sub_2DE5C4(&unk_94E5F0, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
  v78 = sub_B1B4(v77);
  sub_2DE4FC(v127, v78, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10914(&v143, v78 + v76[5]);
  sub_10914(&v140, v78 + v76[6]);
  sub_10914(&v137, v78 + v76[7]);
  sub_10914(&v134, v78 + v76[8]);
  v79 = (v78 + v76[9]);
  *v79 = v65;
  v79[1] = 0;
  v79[2] = 0;
  v79[3] = v75;
  v79[4] = v74;
  v80 = v78 + v76[10];
  *(v80 + 4) = 0;
  *v80 = 0u;
  *(v80 + 1) = 0u;
  sub_10914(&v131, v78 + v76[11]);
  sub_10914(v130, v78 + v76[12]);
  v81 = (v78 + v76[13]);
  *v81 = v67;
  v81[1] = 0;
  v83 = v109;
  v82 = v110;
  v81[2] = 0;
  v81[3] = v83;
  v81[4] = v82;
  v84 = (v78 + v76[14]);
  *v84 = v68;
  v84[1] = 0;
  v85 = v111;
  v86 = v112;
  v84[2] = 0;
  v84[3] = v86;
  v84[4] = v85;
  *(v78 + v76[15]) = v117;
  v87 = (v78 + v76[16]);
  v88 = v123;
  *v87 = v124;
  v87[1] = v88;
  v89 = (v78 + v76[17]);
  v90 = v118;
  *v89 = v118;
  v89[1] = 0;
  v92 = v115;
  v91 = v116;
  v89[2] = 0;
  v89[3] = v92;
  v89[4] = v91;
  v93 = (v78 + v76[18]);
  *v93 = v69;
  v93[1] = 0;
  v95 = v113;
  v94 = v114;
  v93[2] = 0;
  v93[3] = v95;
  v93[4] = v94;
  v96 = v69;
  v97 = v126;
  v98 = v122;
  v99 = v121;
  v100 = v120;
  v101 = v65;
  v102 = v119;
  v103 = v67;
  v104 = v68;
  v105 = v90;
  v106 = sub_2D9FD0(v6, v78, a4, a5);
  sub_2DE564(v129, type metadata accessor for ProductLockupLayout.Metrics);
  sub_2DE564(v128, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_BEB8(v146);
  return v106;
}

uint64_t sub_2D7648(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v20 = sub_BD88(&unk_953FF0, &qword_792B18);
  __chkstk_darwin(v20 - 8);
  v22 = &v30 - v21;
  v23 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 112) = a3;
  *(a1 + 120) = a4;
  v32 = &type metadata for CGFloat;
  v33 = &protocol witness table for CGFloat;
  *&v31 = a5;
  sub_BEB8((a1 + 32));
  sub_10914(&v31, a1 + 32);
  v32 = &type metadata for CGFloat;
  v33 = &protocol witness table for CGFloat;
  *&v31 = a6;
  sub_BEB8((a1 + 72));
  sub_10914(&v31, a1 + 72);
  *a1 = a7;
  *(a1 + 8) = a8;
  *(a1 + 16) = a9;
  *(a1 + 24) = a10;
  sub_1ED18(a2, v22, &unk_953FF0, &qword_792B18);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10A2C(v22, &unk_953FF0, &qword_792B18);
  }

  sub_2DE4FC(v22, v26, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  return sub_2DC644(v26, a1 + *(v28 + 76), v29);
}

uint64_t sub_2D7880(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a4;
  sub_BEB8((a1 + 32));
  sub_10914(&v16, a1 + 32);
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a5;
  sub_BEB8((a1 + 72));
  result = sub_10914(&v16, a1 + 72);
  *a1 = a6;
  *(a1 + 8) = a7;
  *(a1 + 16) = a8;
  *(a1 + 24) = a9;
  return result;
}

void sub_2D7930()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
  if (v2)
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v3 = v2;
    v4 = sub_769FD0();
    [v3 setTextColor:v4];
  }

  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v6 = sub_769FD0();
  [v5 setTextColor:v6];

  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
  v8 = sub_769FF0();
  [v7 setTextColor:v8];

  v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView);
  v10 = sub_769FF0();
  [v9 setTintColor:v10];

  v11 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12)
  {
    v13 = v12;
    v14 = sub_769FE0();
    [v13 setTextColor:v14];
  }
}

void sub_2D7AA4(void *a1)
{
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView;
  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
  if (v3)
  {
    if (v5)
    {
      v6 = v3;
      v7 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY);
      v8 = *(*(v5 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
      v9 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY];
      *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = v7;
      v10 = a1;
      if (v7 == v9)
      {
        v11 = *&v1[v4];
        if (!v11)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }

      [v8 setNeedsLayout];
      v11 = *&v1[v4];
      if (v11)
      {
LABEL_16:
        v18 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding);
        *(v11 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_isRubberbanding) = v18;
        v19 = *(v11 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
        *(v19 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding) = v18;
        if (*(*(v19 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
        {
          type metadata accessor for VideoView(0);
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            *(v20 + qword_9405A0) = v18;
          }
        }

        return;
      }
    }

    else
    {
      v17 = a1;
    }

LABEL_14:

    return;
  }

  if (v5)
  {
    v12 = *(*(v5 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v13 = *&v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY];
    *&v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = 0;
    if (v13 != 0.0)
    {
      [v12 setNeedsLayout];
    }

    v14 = *&v1[v4];
    if (v14)
    {
      *(v14 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_isRubberbanding) = 0;
      v15 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
      *(v15 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding) = 0;
      if (*(*(v15 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
      {
        type metadata accessor for VideoView(0);
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          *(v16 + qword_9405A0) = 0;
        }
      }
    }
  }
}

uint64_t sub_2D7E34()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) == 1)
  {
    swift_unknownObjectWeakInit();
    sub_2D7E8C(v3);
    result = swift_unknownObjectWeakDestroy();
    *(v0 + v1) = 0;
  }

  return result;
}

void sub_2D7E8C(uint64_t a1)
{
  v1 = sub_768380();
  __chkstk_darwin(v1);
  v2 = sub_7683E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel;
    v12 = [*(Strong + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel) text];
    if (v12 && (v12, ([*&v10[v11] isHidden] & 1) != 0))
    {
      sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
      v22 = sub_769970();
      sub_7683D0();
      sub_768450();
      v21 = *(v3 + 8);
      v21(v5, v2);
      v13 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel];
      v14 = *&v10[v11];
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v13;
      aBlock[4] = sub_2DC6E8;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_88C640;
      v20[1] = _Block_copy(aBlock);
      v23 = _swiftEmptyArrayStorage;
      sub_2DE5C4(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v16 = v13;
      v17 = v14;
      v18 = v16;
      sub_BD88(&qword_940350, &unk_77F850);
      sub_4C874();
      sub_76A5A0();
      sub_768420();
      swift_allocObject();
      sub_768400();

      v19 = v22;
      sub_769940();

      v21(v8, v2);
    }

    else
    {
    }
  }
}

void sub_2D8214(void *a1, void *a2)
{
  [a1 setAlpha:0.0];
  [a1 setHidden:0];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v16 = sub_2DC708;
  v17 = v5;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_23F0CC;
  v15 = &unk_88C690;
  v6 = _Block_copy(&v12);
  v7 = a2;
  v8 = a1;

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v16 = sub_2DC78C;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_3D6D80;
  v15 = &unk_88C6E0;
  v10 = _Block_copy(&v12);
  v11 = v7;

  [v4 animateWithDuration:v6 animations:v10 completion:1.0];
  _Block_release(v10);
  _Block_release(v6);
}

void sub_2D83D0(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      [v6 setAlpha:a3];
      --v3;
    }

    while (v3);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_2D8468(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      __break(1u);
      return;
    }

    *&Strong[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v9;
  }

  if ((a3 & 1) != 0 && (swift_beginAccess(), (v10 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v11 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount];

    v12 = v11 == 0;
    v13 = *(a4 + 16);
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v12 = 0;
    v13 = *(a4 + 16);
    if (!v13)
    {
      return;
    }
  }

  v14 = (a4 + 32);
  do
  {
    v15 = *v14++;
    [v15 setHidden:v12];
    --v13;
  }

  while (v13);
}

void sub_2D8704(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    sub_75BED0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_2D8888()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView);
  v2 = v1;
  return v1;
}

uint64_t (*sub_2D88C4(uint64_t **a1))()
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
  v2[4] = sub_2D21CC(v2);
  return sub_21028;
}

uint64_t sub_2D8934()
{
  ObjectType = swift_getObjectType();
  v1 = sub_2DE5C4(&unk_94E5B0, type metadata accessor for ProductLockupCollectionViewCell, &unk_792AB8);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_2D89A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_2DE5C4(&unk_94E5B0, type metadata accessor for ProductLockupCollectionViewCell, &unk_792AB8);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_2D8A34(uint64_t *a1))()
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
  sub_2DE5C4(&unk_94E5B0, type metadata accessor for ProductLockupCollectionViewCell, &unk_792AB8);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_2D8AF0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView);
  if (v2 && a1)
  {
    v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView];
    v5 = v2;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      v8 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v9 = v8;
      v10 = sub_76A1C0();

      v5 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_2D8CA0(void *a1, double *a2, void *a3, double a4, double a5)
{
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a3 traitCollection];
  v13 = sub_7699E0();

  if (v13)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_766470();
    sub_759360();
    (*(v8 + 8))(v11, v7);
  }

  sub_769DA0();
  sub_769DA0();
  sub_B170(a1, a1[3]);
  sub_B170(a1, a1[3]);
  sub_7665A0();
  return sub_766A10(v16) > 1;
}

uint64_t sub_2D8E78(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (sub_7699E0() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = sub_7699F0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 1;
  }
}

double sub_2D8F08(void *a1, double *a2, double a3, double a4)
{
  v7 = sub_BD88(&qword_940AD0, &unk_78F910);
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin(v7);
  v64 = v60 - v8;
  v9 = sub_76A920();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_7699D0();

  v63 = v10;
  if ((v15 & 1) == 0)
  {
    v16 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    v17 = (a2 + v16[15]);
    v18 = v17[3];
    sub_B170(v17, v18);
    sub_33964(v18);
    sub_766700();
    v19 = *(v10 + 8);
    v19(v13, v9);
    v20 = (a2 + v16[16]);
    v21 = v20[3];
    sub_B170(v20, v21);
    sub_33964(v21);
    sub_766700();
    v19(v13, v9);
    v22 = (a2 + v16[17]);
    v23 = v22[3];
    sub_B170(v22, v23);
    sub_33964(v23);
    v24 = v64;
    sub_766700();
    v19(v13, v9);
    sub_766470();
    sub_759360();
    v19(v13, v9);
    sub_BD88(&qword_94E5D0, &qword_783580);
    sub_759380();
    sub_766470();
    sub_759360();
    v19(v13, v9);
    v10 = v63;
    (*(v65 + 8))(v24, v66);
  }

  sub_769DA0();
  v26 = v25;
  v27 = [a1 traitCollection];
  v28 = sub_7699E0();

  if (v28)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_766470();
    sub_759360();
    (*(v10 + 8))(v13, v9);
  }

  v62 = v26;
  v29 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_B170((a2 + *(v29 + 36)), *(a2 + *(v29 + 36) + 24));
  sub_7665A0();
  v60[2] = v30;
  v60[4] = v31;
  v60[1] = v32;
  v60[3] = v33;
  v61 = v29;
  v34 = (a2 + *(v29 + 44));
  sub_B170(v34, v34[3]);
  sub_7665A0();
  sub_B170(v34, v34[3]);
  if (sub_766500())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_766470();
    sub_759360();
    v36 = v35;
    (*(v10 + 8))(v13, v9);
    v69[0] = v36;
    sub_766720();
  }

  sub_C64E0(&v67);
  if (v68)
  {
    sub_10914(&v67, v69);
    sub_B170(v69, v70);
    sub_7665A0();
    v37 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_B170((a2 + *(v37 + 44)), *(a2 + *(v37 + 44) + 24));
    sub_766720();
    v38 = (a2 + *(v37 + 48));
    v39 = v38[3];
    sub_B170(v38, v39);
    sub_33964(v39);
    sub_766700();
    (*(v10 + 8))(v13, v9);
    sub_BEB8(v69);
  }

  else
  {
    sub_10A2C(&v67, &unk_943B10, &qword_77E080);
  }

  v40 = v65;
  sub_C64E0(v69);
  v41 = v70;
  sub_10A2C(v69, &unk_943B10, &qword_77E080);
  if (!v41)
  {
    v42 = [a1 traitCollection];
    v43 = sub_7699E0();

    if (v43 & 1) != 0 || (v44 = [a1 traitCollection], v45 = sub_769A00(), v44, (v45))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      sub_766470();
      sub_759360();
      (*(v10 + 8))(v13, v9);
    }
  }

  v46 = [a1 traitCollection];
  v47 = sub_7699D0();

  if (v47)
  {
    sub_C64E0(v69);
    sub_10A2C(v69, &unk_943B10, &qword_77E080);
  }

  v48 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_BD88(&qword_94E5D0, &qword_783580);
  v49 = v64;
  sub_759380();
  sub_766470();
  sub_759360();
  v50 = *(v63 + 8);
  v50(v13, v9);
  (*(v40 + 8))(v49, v66);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_766470();
  sub_759360();
  v50(v13, v9);
  sub_766470();
  sub_759360();
  v52 = v51;
  v50(v13, v9);
  v69[0] = v52;
  sub_766720();
  v53 = (a2 + v48[9]);
  v54 = v53[3];
  sub_B170(v53, v54);
  sub_33964(v54);
  sub_766700();
  v50(v13, v9);
  sub_B170((a2 + *(v61 + 52)), *(a2 + *(v61 + 52) + 24));
  sub_7665B0();
  v55 = (a2 + v48[15]);
  v56 = v55[3];
  sub_B170(v55, v56);
  sub_33964(v56);
  sub_766700();
  v50(v13, v9);
  v57 = (a2 + v48[16]);
  v58 = v57[3];
  sub_B170(v57, v58);
  sub_33964(v58);
  sub_766700();
  v50(v13, v9);
  return a3;
}

double sub_2D9A48(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a2 + 35, a2[38]);
  v10 = sub_766540();
  v11 = 0.0;
  v12 = 0.0;
  if ((v10 & 1) == 0)
  {
    sub_B170(a2 + 35, a2[38]);
    sub_7665A0();
    v14 = v13;
    v11 = v15;
    v16 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v17 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_B170(&v16[*(v17 + 56)], *&v16[*(v17 + 56) + 24]);
    sub_766720();
    v12 = v14 - v11 + v18;
  }

  v51 = v12;
  sub_1ED18((a2 + 40), &v53, &qword_9417D0, &unk_780EA0);
  if (v54)
  {
    sub_10914(&v53, v55);
    sub_B170(v55, v56);
    sub_7665A0();
    v20 = v19;
    v11 = v21;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v52 = a1;
    sub_BD88(&qword_940AD0, &unk_78F910);
    sub_7592B0();
    v52 = v53;
    v22 = v20;
    sub_766720();
    v24 = v23;
    sub_BEB8(v55);
    v50 = v11;
  }

  else
  {
    sub_10A2C(&v53, &qword_9417D0, &unk_780EA0);
    v22 = JUMeasurementsZero[1];
    v50 = JUMeasurementsZero[3];
    v24 = 0.0;
  }

  sub_1ED18((a2 + 45), &v53, &qword_9417D0, &unk_780EA0);
  if (v54)
  {
    sub_10914(&v53, v55);
    sub_B170(v55, v56);
    sub_7665A0();
    v26 = v25;
    v49 = v24;
    v11 = v27;
    v28 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v29 = &v28[*(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64)];
    v30 = *(v29 + 3);
    sub_B170(v29, v30);
    sub_33964(v30);
    sub_766700();
    v32 = v31;
    (*(v7 + 8))(v9, v6);
    *&v53 = v32;
    v24 = v49;
    sub_766720();
    v34 = v33;
    sub_BEB8(v55);
    v35 = v11;
  }

  else
  {
    sub_10A2C(&v53, &qword_9417D0, &unk_780EA0);
    v26 = JUMeasurementsZero[1];
    v35 = JUMeasurementsZero[3];
    v34 = 0.0;
  }

  sub_B170(a2 + 25, a2[28]);
  sub_7665B0();
  v37 = v26 - v35 + v34 + v22 - v50 + v24 + v51 + v36;
  v38 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  v39 = *(v38 + 12);
  sub_B170(v38 + 9, v39);
  sub_33964(v39);
  sub_766700();
  v41 = v40;
  v42 = *(v7 + 8);
  v42(v9, v6);
  v43 = v37 + v41;
  v44 = &v38[*(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68)];
  v45 = *(v44 + 3);
  sub_B170(v44, v45);
  sub_33964(v45);
  sub_766700();
  v47 = v46;
  v42(v9, v6);
  return v11 + v43 + v47;
}

double sub_2D9FD0(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_7699E0();

  v15 = *(a2 + 56);
  sub_B170((a2 + 32), v15);
  sub_33964(v15);
  sub_766700();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v17 = *(a2 + 96);
  sub_B170((a2 + 72), v17);
  sub_33964(v17);
  sub_766700();
  v16(v12, v8);
  v18 = a3 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v19 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v23[0] = a1;
  sub_BD88(&qword_940AD0, &unk_78F910);
  sub_7592B0();
  sub_2DA2B4(a1, a2, v18 - *&v23[1], a4);
  v20 = (a2 + *(v19 + 96));
  v21 = v20[3];
  sub_B170(v20, v21);
  sub_33964(v21);
  sub_766700();
  v16(v12, v8);
  if (v14 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_2DA834(a1, a2, a3, a4);
  }

  return a3;
}

double sub_2DA2B4(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_7699E0();

  v52 = type metadata accessor for ProductLockupLayout(0);
  v15 = v52[10];
  sub_1ED18(a2 + v15, v53, &unk_943B10, &qword_77E080);
  if (v54)
  {
    sub_B170(v53, v54);
    sub_7665B0();
    v17 = v16;
    sub_BEB8(v53);
  }

  else
  {
    sub_10A2C(v53, &unk_943B10, &qword_77E080);
    v17 = 0.0;
  }

  v18 = sub_2DB76C(a1, a2, a3, a4);
  sub_1ED18(a2 + v15, v53, &unk_943B10, &qword_77E080);
  v19 = v54;
  sub_10A2C(v53, &unk_943B10, &qword_77E080);
  if (v19)
  {
    v20 = v52;
    if ((v14 & 1) == 0)
    {
      if (*(a2 + v52[15]))
      {
        v21 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92));
        v22 = v21[3];
        sub_B170(v21, v22);
        sub_33964(v22);
        sub_766700();
        v24 = v23;
        (*(v9 + 8))(v12, v8);
        v18 = v18 + v17 + v24;
      }

LABEL_9:
      if (*(a2 + v20[15]))
      {
        return v18;
      }
    }
  }

  else
  {
    v20 = v52;
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v51 = *(a2 + 120);
  v25 = (a2 + v20[11]);
  sub_B170(v25, v25[3]);
  sub_7665B0();
  v27 = v26;
  sub_1ED18(a2 + v15, v53, &unk_943B10, &qword_77E080);
  v28 = v54;
  sub_10A2C(v53, &unk_943B10, &qword_77E080);
  if (v28)
  {
    v29 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80));
    v30 = v29[3];
    sub_B170(v29, v30);
    sub_33964(v30);
    sub_766700();
    (*(v9 + 8))(v12, v8);
  }

  v31 = a2;
  v32 = v8;
  v49 = v31;
  v50 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v33 = v31 + *(v50 + 76);
  v34 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v35 = (v33 + *(v34 + 28));
  v36 = v35[3];
  sub_B170(v35, v36);
  sub_33964(v36);
  sub_766700();
  v37 = *(v9 + 8);
  v37(v12, v32);
  v38 = (v33 + *(v34 + 24));
  v39 = v38[3];
  sub_B170(v38, v39);
  sub_33964(v39);
  sub_766700();
  v37(v12, v32);
  v40 = v49;
  sub_B170((v49 + v52[12]), *(v49 + v52[12] + 24));
  sub_7665B0();
  v42 = v41;
  sub_B170(v25, v25[3]);
  if (sub_766540())
  {
    v27 = v42;
  }

  v43 = (v40 + *(v50 + 72));
  v44 = v43[3];
  sub_B170(v43, v44);
  sub_33964(v44);
  sub_766700();
  v46 = v45;
  v37(v12, v32);
  if (v18 < v51 - v46 - v27)
  {
    v18 = v51 - v46 - v27;
  }

  return sub_2DA834(a1, v40, a3, a4) + v18;
}

double sub_2DA834(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_76A920();
  v47 = *(v8 - 8);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v48[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = sub_7699E0();

  v14 = type metadata accessor for ProductLockupLayout(0);
  sub_B170((a2 + v14[11]), *(a2 + v14[11] + 24));
  sub_7665B0();
  v16 = v15;
  v17 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v18 = (a2 + v17[18]);
  v19 = v18[3];
  sub_B170(v18, v19);
  sub_33964(v19);
  v20 = v8;
  v21 = v47;
  sub_766700();
  v23 = v22;
  v24 = *(v21 + 8);
  v24(v11, v20);
  if ((v13 & 1) != 0 || *(a2 + v14[15]) == 1)
  {
    v25 = a2 + v17[19];
    v26 = (v25 + *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28));
    v27 = v26[3];
    sub_B170(v26, v27);
    sub_33964(v27);
    sub_766700();
    v29 = v28;
    v24(v11, v20);
    sub_2DAC70(a1, a2, a3, a4, a3 - (v16 + v29));
    v31 = v30;
    v32 = sub_2DB4F0(a1, a2, a3, a4);
    if (v31 > v32)
    {
      v32 = v31;
    }
  }

  else
  {
    v33 = v14[10];
    sub_1ED18(a2 + v33, v48, &unk_943B10, &qword_77E080);
    if (v49)
    {
      sub_B170(v48, v49);
      sub_7665B0();
      v35 = v34;
      sub_BEB8(v48);
    }

    else
    {
      sub_10A2C(v48, &unk_943B10, &qword_77E080);
      v35 = 0.0;
    }

    sub_1ED18(a2 + v33, v48, &unk_943B10, &qword_77E080);
    v36 = v49;
    sub_10A2C(v48, &unk_943B10, &qword_77E080);
    if (v36)
    {
      v37 = (a2 + v17[20]);
      v38 = v37[3];
      sub_B170(v37, v38);
      sub_33964(v38);
      sub_766700();
      v40 = v39;
      v24(v11, v20);
    }

    else
    {
      v40 = 0.0;
    }

    v41 = a2 + v17[19];
    v42 = (v41 + *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28));
    v43 = v42[3];
    sub_B170(v42, v43);
    sub_33964(v43);
    sub_766700();
    v45 = v44;
    v24(v11, v20);
    sub_2DAC70(a1, a2, a3, a4, a3 - (v40 + v35 + v16 + v45));
  }

  return v23 + 0.0 + v32;
}

void sub_2DAC70(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v8 = sub_762D10();
  v83 = *(v8 - 8);
  v84 = v8;
  __chkstk_darwin(v8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v78 = &v72 - v12;
  v13 = sub_76A920();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v79 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_756CB0();
  v81 = *(v16 - 8);
  v82 = v16;
  __chkstk_darwin(v16);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ProductLockupLayout(0);
  v20 = (a2 + v19[11]);
  sub_B170(v20, v20[3]);
  sub_7665B0();
  v21 = (a2 + v19[16]);
  v80 = v21[1];
  if (v80)
  {
    v75 = v14;
    v76 = v13;
    v77 = *v21;
    v22 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76));
    type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v85[0] = a1;
    sub_BD88(&unk_94E7B0, &qword_792B30);
    v72 = v22;
    sub_7592B0();
    v23 = v88;
    v73 = v19;
    v24 = v19[15];
    v74 = a2;
    v25 = *(a2 + v24);
    sub_B170(v20, v20[3]);
    if (sub_766540())
    {
    }

    else
    {
      v26 = v25;
      v27 = objc_opt_self();
      v28 = v80;

      v29 = [v27 mainScreen];
      [v29 bounds];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v89.origin.x = v31;
      v89.origin.y = v33;
      v89.size.width = v35;
      v89.size.height = v37;
      Width = CGRectGetWidth(v89);
      JUScreenClassGetPortraitWidth();
      v39 = v23;
      if (Width > v40 || (sub_756CA0(), v85[0] = v77, v85[1] = v28, sub_12EC40(), sub_76A4C0(), v42 = v41, v81[1](v18, v82), (v42)) && (!v26 || (v43 = [a1 traitCollection], v44 = sub_7699E0(), v43, (v44)))
      {
        v45 = sub_2E8950(v77, v28);
        v46 = *(v45 + 16);
        v81 = (v83 + 8);
        LODWORD(v82) = enum case for Feature.measurement_with_labelplaceholder(_:);
        v47 = v45 + 40;
        v83 = -v46;
        v48 = -1;
        while (v83 + v48 != -1)
        {
          if (++v48 >= *(v45 + 16))
          {
            __break(1u);
            return;
          }

          v49 = v47 + 16;
          v50 = a1;
          v51 = sub_7653B0();
          v86 = v51;
          v87 = sub_2DE5C4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v52 = sub_B1B4(v85);
          (*(*(v51 - 8) + 104))(v52, v82, v51);
          v53 = v39;

          v54 = v39;
          sub_765C30();
          sub_BEB8(v85);
          a1 = v50;
          sub_762D00();
          sub_2DE5C4(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
          v55 = v84;
          sub_7665A0();
          v57 = v56;
          v58 = v55;
          v39 = v54;
          (*v81)(v10, v58);
          v47 = v49;
          if (v57 > a5)
          {

            goto LABEL_13;
          }
        }

        v65 = sub_7653B0();
        v86 = v65;
        v87 = sub_2DE5C4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v66 = sub_B1B4(v85);
        (*(*(v65 - 8) + 104))(v66, v82, v65);
        v67 = v39;
        sub_765C30();
        sub_BEB8(v85);
        v68 = v78;
        sub_762D00();
        sub_2DE5C4(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
        v69 = v84;
        sub_7665A0();
        v71 = v70;

        (*v81)(v68, v69);
        v59 = v76;
        v60 = v75;
        v61 = v74;
        v62 = v73;
        if (v71 > a5)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_13:

        v59 = v76;
        v60 = v75;
        v61 = v74;
        v62 = v73;
LABEL_14:
        sub_B170((v61 + v62[12]), *(v61 + v62[12] + 24));
        sub_7665A0();
        v63 = v72[3];
        sub_B170(v72, v63);
        v64 = v79;
        sub_33964(v63);
        sub_766700();
        (*(v60 + 8))(v64, v59);
      }
    }
  }
}

double sub_2DB4F0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProductLockupLayout(0);
  sub_1ED18(a2 + *(v9 + 52), &v25, &qword_9417D0, &unk_780EA0);
  if (!v26)
  {
    sub_10A2C(&v25, &qword_9417D0, &unk_780EA0);
    return 0.0;
  }

  sub_10914(&v25, v27);
  sub_1ED18(a2 + *(v9 + 56), &v23, &qword_9417D0, &unk_780EA0);
  if (!v24)
  {
    sub_10A2C(&v23, &qword_9417D0, &unk_780EA0);
    sub_BEB8(v27);
    return 0.0;
  }

  sub_10914(&v23, &v25);
  sub_B170(v27, v27[3]);
  sub_7665A0();
  v11 = v10;
  v13 = v12;
  sub_B170(&v25, v26);
  sub_7665A0();
  v15 = v14;
  v16 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84));
  v17 = v16[3];
  sub_B170(v16, v17);
  sub_33964(v17);
  sub_766700();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v20 = v15 + v11 - v13 + v19;
  sub_BEB8(&v25);
  sub_BEB8(v27);
  return v20;
}

double sub_2DB76C(void *a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 traitCollection];
  v58 = sub_7699E0();

  v12 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v59 = a1;
  v13 = sub_BD88(&qword_940AD0, &unk_78F910);
  sub_7592B0();
  v14 = *v62;
  v15 = v12;
  *&v59 = a1;
  v57 = v13;
  sub_7592B0();
  v16 = *v62;
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = v17[10];
  sub_1ED18(a2 + v18, v62, &unk_943B10, &qword_77E080);
  if (v63)
  {
    sub_B170(v62, v63);
    sub_7665B0();
    sub_BEB8(v62);
  }

  else
  {
    sub_10A2C(v62, &unk_943B10, &qword_77E080);
  }

  sub_1ED18(a2 + v18, v62, &unk_943B10, &qword_77E080);
  v19 = v63;
  sub_10A2C(v62, &unk_943B10, &qword_77E080);
  if (v19)
  {
    v20 = (a2 + *(v15 + 80));
    v21 = v20[3];
    sub_B170(v20, v21);
    sub_33964(v21);
    sub_766700();
    (*(v7 + 8))(v10, v6);
  }

  v22 = (a2 + v17[6]);
  sub_B170(v22, v22[3]);
  sub_7665A0();
  v25 = v24;
  v27 = v26;
  v28 = v23;
  v30 = v29;
  if (v14 - v23 > 0.0)
  {
    v31 = v14 - v23;
  }

  else
  {
    v31 = 0.0;
  }

  sub_B170(v22, v22[3]);
  sub_7669E0();
  v33 = v27 - v30 + v31 + v32;
  sub_134D8(v22, v62);
  *&v59 = a1;
  sub_BD88(&unk_94B6E0, &qword_78E688);
  sub_7592B0();
  v34 = v17[9];
  sub_1ED18(a2 + v34, &v59, &qword_9417D0, &unk_780EA0);
  sub_10A2C(&v59, &qword_9417D0, &unk_780EA0);
  sub_B170(v62, v63);
  v64.var0 = v25;
  v64.var1 = v27;
  v64.var2 = v28;
  v64.var3 = v30;
  sub_766A10(v64);
  sub_BEB8(v62);
  v35 = (a2 + v17[8]);
  sub_B170(v35, v35[3]);
  sub_7669D0();
  v36 = (a2 + v17[7]);
  sub_B170(v36, v36[3]);
  sub_7669D0();
  sub_B170(v35, v35[3]);
  sub_7665A0();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_B170(v36, v36[3]);
  sub_7665A0();
  v44 = v43;
  v45 = v16 - v40 + v38 - v42;
  v48 = v16 - v46 + v47 - v43;
  if (v45 > v48)
  {
    v49 = v45;
  }

  else
  {
    v49 = v48;
  }

  v50 = v33 + v49;
  sub_1ED18(a2 + v34, &v59, &qword_9417D0, &unk_780EA0);
  if (v60)
  {
    sub_10914(&v59, v62);
    v61 = a1;
    sub_7592B0();
    v51 = *&v59;
    sub_B170(v62, v63);
    sub_7665A0();
    v53 = v52;
    v50 = v50 + v51 - v54 + v55 - v52;
    sub_BEB8(v62);
  }

  else
  {
    if (v45 >= v48)
    {
      v53 = v42;
    }

    else
    {
      v53 = v44;
    }

    sub_10A2C(&v59, &qword_9417D0, &unk_780EA0);
  }

  return v50 + v53;
}

void sub_2DBD4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  if (*(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_93CBA0 != -1)
    {
      swift_once();
    }

    v7 = sub_7666D0();
    v8 = sub_BE38(v7, qword_99CD90);
    v9 = *(v7 - 8);
    (*(v9 + 16))(v6, v8, v7);
    (*(v9 + 56))(v6, 0, 1, v7);
    sub_75BA40();
    v10 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_93CB70 != -1)
    {
      swift_once();
    }

    v11 = sub_BD88(&unk_94E7B0, &qword_792B30);
    sub_BE38(v11, qword_99CD20);
    v23 = a1;
    sub_7592B0();
    v12 = v24;
    [v10 setFont:v24];
  }

  else
  {
    if (qword_93CB98 != -1)
    {
      swift_once();
    }

    v13 = sub_BD88(&qword_94E610, &qword_792B38);
    sub_BE38(v13, qword_99CD78);
    v24 = a1;
    sub_7592B0();
    v14 = sub_7666D0();
    v15 = *(*(v14 - 8) + 56);
    v15(v6, 0, 1, v14);
    sub_75BA40();
    if (qword_93CBA8 != -1)
    {
      swift_once();
    }

    sub_BE38(v13, qword_99CDA8);
    v24 = a1;
    sub_7592B0();
    v15(v6, 0, 1, v14);
    sub_75BA40();
  }

  if (qword_93CBA8 != -1)
  {
    swift_once();
  }

  v16 = sub_BD88(&qword_94E610, &qword_792B38);
  sub_BE38(v16, qword_99CDA8);
  v24 = a1;
  sub_7592B0();
  v17 = sub_7666D0();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 0, 1, v17);
  sub_75BA40();
  if (qword_93CBC0 != -1)
  {
    swift_once();
  }

  sub_BE38(v16, qword_99CDF0);
  v24 = a1;
  sub_7592B0();
  v18(v6, 0, 1, v17);
  sub_75BA40();
  v19 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v20 = *(a2 + v19);
  if (v20)
  {
    v21 = qword_93CBB8;
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    sub_BE38(v16, qword_99CDD8);
    v23 = a1;
    sub_7592B0();
    v18(v6, 0, 1, v17);
    sub_75BA40();
  }
}

void sub_2DC2A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel);
  if (*(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_93CCD0 != -1)
    {
      swift_once();
    }

    v5 = sub_BD88(&unk_94B6E0, &qword_78E688);
    v6 = qword_99D160;
  }

  else
  {
    if (qword_93CCC8 != -1)
    {
      swift_once();
    }

    v5 = sub_BD88(&unk_94B6E0, &qword_78E688);
    v6 = qword_99D148;
  }

  sub_BE38(v5, v6);
  sub_7592B0();
  [v4 setNumberOfLines:v18];
  v7 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel);
  if (qword_93CCF8 != -1)
  {
    swift_once();
  }

  v8 = sub_BD88(&unk_94B6E0, &qword_78E688);
  sub_BE38(v8, qword_99D1D8);
  sub_7592B0();
  [v7 setNumberOfLines:v18];
  v9 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel);
  if (qword_93CCD8 != -1)
  {
    swift_once();
  }

  sub_BE38(v8, qword_99D178);
  sub_7592B0();
  [v9 setNumberOfLines:v18];
  v10 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
  sub_7592B0();
  [v10 setNumberOfLines:v18];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if (v12)
  {
    v13 = qword_93CCE0;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    sub_BE38(v8, qword_99D190);
    sub_7592B0();
    [v14 setNumberOfLines:a1];
  }

  v15 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (v15)
  {
    v16 = qword_93CCC0;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    sub_BE38(v8, qword_99D130);
    sub_7592B0();
    [v17 setNumberOfLines:a1];
  }
}

uint64_t sub_2DC644(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2DC6A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_2DC6F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_2DC708()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:0.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_2DC754()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_2DC7A0(char a1, void *a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  v53 = a2;
  v11 = sub_7580D0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = sub_764CF0();
  v19 = (*(*(v18 - 8) + 48))(a5, 1, v18);
  v54 = v11;
  v55 = v17;
  if (v19 == 1 || !*&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_appStateMachine])
  {
    (*(v12 + 104))(v17, enum case for LegacyAppState.unknown(_:), v11);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = v54;
    v17 = v55;
    sub_758220();
    swift_unknownObjectRelease();
  }

  v20 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton];
  [*&v20[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView] setContentMode:1];
  if (a4)
  {
    v21 = v20;
  }

  else
  {
    v20 = 0;
  }

  v22 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v22 && v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
  {
    goto LABEL_16;
  }

  (*(v12 + 16))(v14, v17, v11);
  v22 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v23 = [v22 text];
  if (v23)
  {
    v24 = v23;
    sub_769240();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_7580C0();
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
  sub_BD88(&unk_94E620, qword_79B350);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_77DC20;
  v30 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView];
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

  v41 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
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
    *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v43;
    v53 = objc_opt_self();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v37;
    *(v46 + 24) = v29;
    *(v46 + 32) = v45;
    v60 = sub_2DE750;
    v61 = v46;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_23F0CC;
    v59 = &unk_88C848;
    v47 = _Block_copy(&aBlock);

    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v52;
    *(v49 + 32) = v29;
    v60 = sub_2DE79C;
    v61 = v49;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_3D6D80;
    v59 = &unk_88C898;
    v50 = _Block_copy(&aBlock);

    [v53 animateWithDuration:4 delay:v47 options:v50 animations:v44 completion:0.0];
    _Block_release(v50);
    _Block_release(v47);
    goto LABEL_31;
  }

  __break(1u);
}

void sub_2DCDEC(uint64_t a1, uint64_t a2, int a3, void *a4, char *a5)
{
  LODWORD(v7) = a3;
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v41 = a4;
    v14 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel;
    v15 = *&a5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
    if (v15)
    {
      goto LABEL_3;
    }

    v39 = a1;
    sub_75BB20();
    v23 = sub_75BB00();
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

          sub_2D2674();
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
      v27 = sub_76A1C0();

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
        if (!v24 || (memset(v43, 0, sizeof(v43)), memset(v42, 0, sizeof(v42)), v33 = v24, sub_768C10(), sub_10A2C(v42, &unk_93FBD0, &qword_77DFA0), sub_10A2C(v43, &unk_93FBD0, &qword_77DFA0), sub_769E70(), v33, (*(v11 + 8))(v13, v10), (v34 = *&a5[v14]) == 0) || ([v34 setHidden:v7 & 1], (v15 = *&a5[v14]) == 0))
        {
LABEL_28:
          [a5 setNeedsLayout];
          goto LABEL_29;
        }

LABEL_3:
        v16 = v15;
        v17 = sub_769210();
        [v16 setText:v17];

        v18 = *&a5[v14];
        if (v18)
        {
          v19 = a5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer];
          v20 = v18;
          v21 = [v41 traitCollection];
          if ((a5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber] & 1) != 0 || (v19 & 1) != 0 && (sub_7699E0() & 1) == 0)
          {

            v22 = 1;
          }

          else
          {
            v28 = sub_7699F0();

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
  v35 = a5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible];
  a5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible] = v7 & 1;
  sub_2D34AC(v35);
}

void sub_2DD190(__n128 a1)
{
  v2 = v1;
  v3 = sub_75A010();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7664A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_766CA0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_95F810, &unk_780110);
  __chkstk_darwin(v13 - 8);
  v46 = &v45 - v14;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_itemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v2 + v15, 1, 1, v16);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bottomSafeAreaDistance) = 0;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v18 = [objc_allocWithZone(UIView) init];
  v19 = [objc_opt_self() systemBackgroundColor];
  [v18 setBackgroundColor:v19];

  *(v2 + v17) = v18;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView) = 0;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel;
  sub_75BB20();
  *(v2 + v20) = sub_75BB00();
  v21 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_appStateMachine);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerLabelPresenter);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel;
  *(v2 + v23) = sub_75BB00();
  v24 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel;
  *(v2 + v24) = sub_75BB00();
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v45 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView;
  v25 = sub_765770();
  (*(*(v25 - 8) + 56))(v46, 1, 1, v25);
  *v8 = UIFontTextStyleFootnote;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v51 = v5;
  v52 = &protocol witness table for FontSource;
  v26 = sub_B1B4(v50);
  (*(v6 + 16))(v26, v8, v5);
  v27 = UIFontTextStyleFootnote;
  sub_766CB0();
  (*(v6 + 8))(v8, v5);
  (*(v48 + 104))(v47, enum case for WordmarkView.Alignment.center(_:), v49);
  v51 = v9;
  v52 = &protocol witness table for StaticDimension;
  v28 = sub_B1B4(v50);
  (*(v10 + 16))(v28, v12, v9);
  v29 = objc_allocWithZone(sub_75A030());
  v30 = sub_75A000();
  (*(v10 + 8))(v12, v9);
  *(v2 + v45) = v30;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton;
  v32 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v2 + v31) = sub_1DD00C(0);
  v33 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *(v2 + v33) = sub_75BB00();
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_disclosureArrow) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerView) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerViewHeight) = 0;
  v34 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer;
  *(v2 + v34) = [objc_allocWithZone(UIView) init];
  v35 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurEffect;
  *(v2 + v35) = [objc_opt_self() effectWithStyle:7];
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView) = 0;
  v36 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize);
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView;
  sub_759210();
  *(v2 + v37) = sub_759020();
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer) = 0;
  v38 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleText);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleText);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_theme;
  v41 = enum case for ProductPageTheme.infer(_:);
  v42 = sub_75BED0();
  (*(*(v42 - 8) + 104))(v2 + v40, v41, v42);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible) = 0;
  sub_75DC80();
  v43 = v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_networkObservation;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  *(v43 + 32) = 0;
  v44 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerTapHandler);
  *v44 = 0;
  v44[1] = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) = 1;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount) = 0;
  sub_76A840();
  __break(1u);
}

double sub_2DD920(void *a1, void *a2, double a3)
{
  v6 = sub_76A920();
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
  v13 = sub_7699E0();

  sub_1ED18((a2 + 30), v106, &unk_943B10, &qword_77E080);
  if (v107)
  {
    sub_B170(v106, v107);
    sub_7665B0();
    v15 = v14;
    sub_BEB8(v106);
  }

  else
  {
    sub_10A2C(v106, &unk_943B10, &qword_77E080);
    v15 = 0.0;
  }

  sub_1ED18((a2 + 30), v106, &unk_943B10, &qword_77E080);
  v16 = v107;
  sub_10A2C(v106, &unk_943B10, &qword_77E080);
  v97 = a2;
  v93 = v6;
  if (v16)
  {
    v17 = (v8 + *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48));
    v18 = v17[3];
    sub_B170(v17, v18);
    v19 = v95;
    sub_33964(v18);
    sub_766700();
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
  sub_B170(v97 + 5, v97[8]);
  sub_7665A0();
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v104 = a1;
  sub_BD88(&qword_940AD0, &unk_78F910);
  sub_7592B0();
  *&v104 = v106[0];
  v89 = v26;
  v87 = v28;
  sub_766720();
  v86 = v30;
  sub_B170(v24 + 5, v24[8]);
  sub_7669E0();
  v85 = v31;
  v32 = v24[13];
  v84[0] = (v24 + 10);
  sub_B170(v24 + 10, v32);
  sub_7665A0();
  v34 = v33;
  v36 = v35;
  v37 = *(v29 + 36);
  v38 = v29;
  *&v104 = a1;
  v39 = v22;
  v84[1] = v37;
  sub_7592B0();
  *&v104 = v106[0];
  sub_766720();
  v40 = v11;
  v42 = v34 - v36 + v41;
  v43 = (v24 + 15);
  sub_B170(v24 + 15, v24[18]);
  v90 = v40;
  sub_7665A0();
  v45 = v44;
  v47 = v46;
  v88 = v38;
  *&v104 = a1;
  sub_7592B0();
  *&v104 = v106[0];
  sub_766720();
  v49 = v45 - v47 + v48;
  if (v49 >= v42)
  {
    sub_134D8(v43, &v104);
    v43 = v84[0];
  }

  else
  {
    sub_134D8(v84[0], &v104);
  }

  sub_134D8(v43, &v102);
  v101[0] = a1;
  sub_7592B0();
  v50 = v106[0];
  v101[0] = a1;
  sub_7592B0();
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
  sub_10914(&v104, v106);
  sub_134D8(v101, v108);
  sub_10914(&v102, &v109);
  sub_10914(&v98, &v110);
  sub_BEB8(v101);
  sub_B170(v106, v107);
  v53 = v94;
  v54 = v90;
  sub_7665A0();
  v56 = v55;
  v58 = v57;
  sub_B170(v108, v108[3]);
  sub_766720();
  v60 = v59;
  v61 = v97;
  sub_1ED18((v97 + 20), &v102, &qword_9417D0, &unk_780EA0);
  v62 = v93;
  if (v103)
  {
    sub_10914(&v102, &v104);
    sub_B170(&v104, v105);
    sub_7665A0();
    v64 = v63;
    v66 = v65;
    v67 = v88;
    v101[0] = a1;
    sub_7592B0();
    v101[0] = v102;
    v53 = v94;
    sub_766720();
    v69 = v64 - v66 + v68;
    sub_BEB8(&v104);
    v70 = v96;
  }

  else
  {
    sub_10A2C(&v102, &qword_9417D0, &unk_780EA0);
    v69 = 0.0;
    v70 = v96;
    v67 = v88;
  }

  v71 = v69 + v56 - v58 + v60 + v89 - v87 + v86 + v85 + v22[15];
  v72 = (v22 + *(v67 + 52));
  v73 = v72[3];
  sub_B170(v72, v73);
  v74 = v95;
  sub_33964(v73);
  sub_766700();
  v76 = v75;
  v77 = *(v70 + 8);
  v77(v74, v62);
  v78 = v71 + v76 + sub_2D9A48(a1, v61, v53, v54);
  v79 = *(v39 + 7);
  sub_B170(v39 + 4, v79);
  sub_33964(v79);
  sub_766700();
  v81 = v80;
  v77(v74, v62);
  v82 = v91 + v92 + v78 + v81;
  sub_10A2C(v106, &qword_94E5E0, &qword_780ED0);
  return v82;
}

id sub_2DE18C()
{
  v1 = sub_768380();
  __chkstk_darwin(v1);
  v2 = sub_7683E0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel);
  result = [v7 isHidden];
  if (result)
  {
    if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber) & 1) == 0)
    {
      sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
      v9 = sub_769970();
      sub_7683D0();
      v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      *(v11 + 24) = v10;
      aBlock[4] = sub_2DE7CC;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_88C730;
      _Block_copy(aBlock);
      v14[1] = _swiftEmptyArrayStorage;
      sub_2DE5C4(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v12 = v7;
      v13 = v10;
      sub_BD88(&qword_940350, &unk_77F850);
      sub_4C874();
      sub_76A5A0();
      sub_768420();
      swift_allocObject();
      sub_768400();

      sub_769940();

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_2DE494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2DE4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2DE564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2DE5C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2DE60C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2DE64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94E618, qword_792B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2DE6C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2DE710()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2DE75C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2DE83C(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_766690();
  __chkstk_darwin(v4 - 8);
  v5 = sub_7620D0();
  sub_161DC(v5, a3);
  sub_BE38(v5, a3);
  sub_7666A0();
  return sub_7620C0();
}

uint64_t sub_2DE98C()
{
  v0 = sub_766690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E700, "H+\b");
  sub_161DC(v7, qword_94E690);
  sub_BE38(v7, qword_94E690);
  if (qword_93C918 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_94E678);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93C910 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_94E660);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  return sub_7592D0();
}

char *sub_2DEB6C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artwork] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkLoader] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_shouldUpdateArtwork] = 0;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_headlineLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_bodyLabel] = v12;
  sub_759210();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_headlineLabel];
  v15 = v13;
  [v15 addSubview:v14];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_bodyLabel]];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView]];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v17 = *&v15[v16];
  sub_759070();

  sub_2DED10();
  return v15;
}

id sub_2DED10()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_769A00();

  if (v8)
  {
    v9 = enum case for DirectionalTextAlignment.leading(_:);
    v10 = *(v3 + 104);
    v10(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_75BA90();
    v10(v6, v9, v2);
    return sub_75BA90();
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_headlineLabel] setTextAlignment:1];
    v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_bodyLabel];

    return [v12 setTextAlignment:1];
  }
}

id sub_2DF0B4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_7699D0();

  if ((v3 & 1) == 0)
  {
    return &dword_0 + 1;
  }

  result = [v1 window];
  if (result)
  {
    v5 = result;
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == &dword_0 + 1)
    {
      [v5 frame];
      Width = CGRectGetWidth(v10);
      [v1 bounds];
      v9 = CGRectGetWidth(v11);

      return (v9 < Width);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2DF1B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_7620F0();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7620D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v31 - v15;
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v36 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v14);
  if (sub_2DF0B4())
  {
    if (qword_93C908 != -1)
    {
      swift_once();
    }

    v17 = qword_94E648;
  }

  else
  {
    if (qword_93C900 != -1)
    {
      swift_once();
    }

    v17 = qword_94E630;
  }

  v18 = sub_BE38(v6, v17);
  v19 = *(v7 + 16);
  v20 = v19(v12, v18, v6);
  __chkstk_darwin(v20);
  *(&v31 - 2) = v1;
  sub_765470();
  v21 = *(v7 + 8);
  v21(v12, v6);
  v19(v9, v16, v6);
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_headlineLabel];
  v46 = sub_75BB20();
  v47 = &protocol witness table for UILabel;
  v44 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_bodyLabel];
  v43 = v46;
  v42 = v23;
  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView];
  v40 = sub_759210();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v28 = v32;
  sub_7620E0();
  sub_75D650();
  v29 = v34;
  sub_7620A0();
  (*(v37 + 8))(v29, v38);
  sub_2DF668();
  (*(v33 + 8))(v28, v35);
  return (v21)(v16, v6);
}

uint64_t sub_2DF608()
{
  swift_getObjectType();
  sub_75D650();
  CGRectGetWidth(v1);
  return sub_7620B0();
}

void sub_2DF668()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D650();
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = 0.0;
  v15.size.height = 0.0;
  if (!CGRectEqualToRect(v14, v15))
  {
    v6 = OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_shouldUpdateArtwork;
    if (v0[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_shouldUpdateArtwork] == 1)
    {
      if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artwork])
      {
        v7 = qword_93C920;

        if (v7 != -1)
        {
          swift_once();
        }

        v8 = sub_BD88(&qword_94E700, "H+\b");
        sub_BE38(v8, qword_94E690);
        v13 = v1;
        v9 = v1;
        sub_7592B0();

        sub_75D650();
        sub_766610();
        (*(v3 + 8))(v5, v2);
        sub_765320();
        if (*&v9[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkLoader])
        {
          v12 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView];
          v10 = v12;
          sub_759210();
          sub_2E00D8();

          v11 = v10;
          sub_76A6E0();
          swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_75A040();

          sub_160090(&v13);
        }

        else
        {
        }
      }

      *(v1 + v6) = 0;
    }
  }
}

double sub_2DF988(uint64_t a1, __n128 a2, double a3)
{
  v4 = v3;
  v34 = a1;
  v6 = a2.n128_u64[0];
  v35 = sub_7620F0();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7620D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  if (sub_2DF0B4())
  {
    if (qword_93C908 != -1)
    {
      swift_once();
    }

    v18 = qword_94E648;
  }

  else
  {
    if (qword_93C900 != -1)
    {
      swift_once();
    }

    v18 = qword_94E630;
  }

  v19 = sub_BE38(v9, v18);
  v20 = *(v10 + 16);
  v21 = v20(v14, v19, v9);
  __chkstk_darwin(v21);
  *(&v32 - 2) = v6;
  *(&v32 - 1) = a3;
  sub_765470();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v20(v32, v17, v9);
  v23 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_headlineLabel);
  v43 = sub_75BB20();
  v44 = &protocol witness table for UILabel;
  v41 = &protocol witness table for UILabel;
  v42 = v23;
  v24 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_bodyLabel);
  v40 = v43;
  v39 = v24;
  v25 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView);
  v37 = sub_759210();
  v38 = &protocol witness table for UIView;
  v36 = v25;
  v26 = v23;
  v27 = v24;
  v28 = v25;
  sub_7620E0();
  sub_762090();
  v30 = v29;
  (*(v33 + 8))(v8, v35);
  v22(v17, v9);
  return v30;
}

void sub_2DFDCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView;
      v8 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView);
      v9 = Strong;
      v10 = a1;
      v11 = v8;
      [v10 size];
      sub_7591E0();
      sub_769D70();
      sub_7591F0();

      v12 = *&v9[v7];
      v13 = v10;
      v14 = v12;
      v16.value.super.isa = a1;
      v16.is_nil = 0;
      sub_7591D0(v16, v15);
    }
  }
}

id sub_2DFEC4(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_769A00();

  if (!a1 || (sub_769A00() & 1) != (v5 & 1))
  {
    sub_2DED10();
  }

  return [v2 setNeedsLayout];
}

unint64_t sub_2E00D8()
{
  result = qword_9496B0;
  if (!qword_9496B0)
  {
    sub_759210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9496B0);
  }

  return result;
}

uint64_t sub_2E0130()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_2E0188()
{
  result = [objc_opt_self() configurationWithPointSize:12.0];
  qword_94E718 = result;
  return result;
}

void sub_2E01D4(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = UIFontTextStyleTitle3;
  v5 = [v3 configurationWithTextStyle:v4];

  *a2 = v5;
}

id sub_2E0248(unsigned __int8 a1)
{
  v2 = sub_759950();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
      if (qword_93C930 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
      if (qword_93C928 == -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
    if (qword_93C938 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    v7 = sub_56E958(0x654C6C657275614CLL, 0xEF656772614C7466, 0);
    v8 = [v7 imageWithRenderingMode:2];

    return v8;
  }

  (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
  if (qword_93C940 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_13:
  v10 = sub_759930();
  (*(v3 + 8))(v6, v2);
  return v10;
}

id sub_2E0514(unsigned __int8 a1)
{
  v2 = sub_759950();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
      if (qword_93C930 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
      if (qword_93C928 == -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
    if (qword_93C938 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    v7 = sub_56E958(0xD000000000000010, 0x80000000007D9FC0, 0);
    v8 = [v7 imageWithRenderingMode:2];

    return v8;
  }

  (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
  if (qword_93C940 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_13:
  v10 = sub_759930();
  (*(v3 + 8))(v6, v2);
  return v10;
}

unint64_t sub_2E07E0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2E352C(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_2E080C()
{
  v1 = *v0;
  sub_76AA30();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_76AA40(v2);
  return sub_76AA80();
}

void sub_2E085C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  sub_76AA40(v1);
}

Swift::Int sub_2E0894(uint64_t a1)
{
  v2 = *v1;
  sub_76AA30();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  sub_76AA40(v3);
  return sub_76AA80();
}

void *sub_2E08E0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2E0900(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_2E0918@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    if (sub_757360())
    {
      if (qword_93D7F8 != -1)
      {
        swift_once();
      }

      v4 = sub_7666D0();
      v5 = v4;
      v6 = qword_99EFE0;
      goto LABEL_27;
    }

    if (sub_757310())
    {
      if (qword_93D800 != -1)
      {
        swift_once();
      }

      v4 = sub_7666D0();
      v5 = v4;
      v6 = qword_99EFF8;
      goto LABEL_27;
    }

    if (sub_757350())
    {
      if (qword_93D808 != -1)
      {
        swift_once();
      }

      v4 = sub_7666D0();
      v5 = v4;
      v6 = qword_99F010;
      goto LABEL_27;
    }
  }

  else if (a1 == 1)
  {
    if (sub_757360())
    {
      if (qword_93D7C8 != -1)
      {
        swift_once();
      }

      v4 = sub_7666D0();
      v5 = v4;
      v6 = qword_99EF50;
LABEL_27:
      v7 = sub_BE38(v4, v6);
      v14 = *(v5 - 8);
      (*(v14 + 16))(a2, v7, v5);
      v8 = *(v14 + 56);
      v9 = a2;
      v10 = 0;
      v11 = v5;
      goto LABEL_29;
    }

    if (sub_757310())
    {
      if (qword_93D7D0 != -1)
      {
        swift_once();
      }

      v4 = sub_7666D0();
      v5 = v4;
      v6 = qword_99EF68;
      goto LABEL_27;
    }

    if (sub_757350())
    {
      if (qword_93D7D8 != -1)
      {
        swift_once();
      }

      v4 = sub_7666D0();
      v5 = v4;
      v6 = qword_99EF80;
      goto LABEL_27;
    }
  }

  v12 = sub_7666D0();
  v8 = *(*(v12 - 8) + 56);
  v11 = v12;
  v9 = a2;
  v10 = 1;
LABEL_29:

  return v8(v9, v10, 1, v11);
}

char *sub_2E0BE8(char a1, char a2, char a3, char a4, unsigned __int8 a5)
{
  v6 = v5;
  LODWORD(v87) = a5;
  ObjectType = swift_getObjectType();
  v12 = sub_7573C0();
  v82 = *(v12 - 8);
  v83 = v12;
  __chkstk_darwin(v12);
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_7666D0();
  v86 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = &v77 - v16;
  v17 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v17 - 8);
  v80 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v85 = &v77 - v20;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useAdsLocale;
  v6[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useAdsLocale] = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel;
  sub_75BB20();
  *&v6[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView;
  *&v6[v23] = [objc_allocWithZone(UIImageView) init];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView;
  *&v6[v24] = [objc_allocWithZone(UIImageView) init];
  v6[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_size] = a1;
  v6[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_preferredLineCount] = a2 & 1;
  v6[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_shouldCapWidthByAvailableWidth] = a3;
  v6[v21] = a4;
  v6[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useCase] = a5;
  v25 = type metadata accessor for EditorsChoiceView();
  v90.receiver = v6;
  v90.super_class = v25;
  v26 = objc_msgSendSuper2(&v90, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [objc_opt_self() clearColor];
  [v30 setBackgroundColor:v31];

  v32 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel;
  v33 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel];
  v34 = [v30 tintColor];

  [v33 setTextColor:v34];
  [*&v30[v32] setLineBreakMode:4];
  v35 = *&v30[v32];
  if (v87)
  {
    v36 = v35;
    v37 = [v30 traitCollection];
    v38 = a1;
    v39 = a1;
    *&v87 = v36;
    v77 = v37;
    if (a1 <= 1u)
    {
      v40 = v86;
      v41 = v84;
      v42 = v79;
      if (v38)
      {
        if (qword_93D7C0 != -1)
        {
          swift_once();
        }

        v43 = qword_99EF38;
      }

      else
      {
        if (qword_93D7B8 != -1)
        {
          swift_once();
        }

        v43 = qword_99EF20;
      }
    }

    else
    {
      v40 = v86;
      v41 = v84;
      v42 = v79;
      if (v38 == 2)
      {
        if (qword_93D7E0 != -1)
        {
          swift_once();
        }

        v43 = qword_99EF98;
      }

      else if (v38 == 3)
      {
        if (qword_93D810 != -1)
        {
          swift_once();
        }

        v43 = qword_99F028;
      }

      else
      {
        if (qword_93D818 != -1)
        {
          swift_once();
        }

        v43 = qword_99F040;
      }
    }

    v48 = sub_BE38(v42, v43);
    (*(v40 + 16))(v41, v48, v42);
    v49 = v81;
    sub_757390();
    v50 = v80;
    sub_2E0918(v39, v80);
    (*(v82 + 8))(v49, v83);
    if ((*(v40 + 48))(v50, 1, v42) == 1)
    {

      sub_11A38(v50);
      v51 = v85;
      (*(v40 + 32))(v85, v41, v42);
    }

    else
    {
      v52 = v78;
      v84 = *(v40 + 32);
      (v84)(v78, v50, v42);
      v53 = v77;
      v54.super.isa = v77;
      isa = sub_7666B0(v54).super.isa;
      [(objc_class *)isa pointSize];
      v57 = v56;
      v58.super.isa = v53;
      v59 = sub_7666B0(v58).super.isa;
      [(objc_class *)v59 pointSize];
      v61 = v60;

      v40 = v86;
      v62 = *(v40 + 8);
      if (v61 >= v57)
      {
        v62(v52, v42);
        v51 = v85;
        v63 = v85;
        v64 = v41;
      }

      else
      {
        v62(v41, v42);
        v51 = v85;
        v63 = v85;
        v64 = v52;
      }

      (v84)(v63, v64, v42);
    }

    v65 = v87;
    (*(v40 + 56))(v51, 0, 1, v42);
    sub_75BA40();
  }

  else
  {
    v44 = v35;
    sub_766B40();
    if (qword_93C750 != -1)
    {
      swift_once();
    }

    v45 = sub_760500();
    v46 = sub_BE38(v45, qword_99BB30);
    v89[3] = v45;
    v89[4] = sub_2E34E4(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
    v47 = sub_B1B4(v89);
    (*(*(v45 - 8) + 16))(v47, v46, v45);
    sub_75BA60();
  }

  [*&v30[v32] setAdjustsFontSizeToFitWidth:{1, v77}];
  v66 = *&v30[v32];
  v67 = v30;
  [v67 addSubview:v66];
  if (v67[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_size] == 4)
  {

    [v67 setContentMode:3];
  }

  else
  {
    v68 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView;
    v69 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView];
    v70 = [v67 tintColor];
    [v69 setTintColor:v70];

    v71 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView;
    v72 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView];
    v73 = [v67 tintColor];

    [v72 setTintColor:v73];
    [*&v67[v68] setSemanticContentAttribute:3];
    [*&v67[v71] setSemanticContentAttribute:3];
    [v67 addSubview:*&v67[v71]];
    [v67 addSubview:*&v67[v68]];
  }

  sub_2E2120();
  sub_2E228C();
  sub_BD88(&qword_9477F0, qword_780200);
  v74 = swift_allocObject();
  v87 = xmmword_77B6D0;
  *(v74 + 16) = xmmword_77B6D0;
  *(v74 + 32) = sub_7677C0();
  *(v74 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_769F40();
  swift_unknownObjectRelease();

  v75 = swift_allocObject();
  *(v75 + 16) = v87;
  *(v75 + 32) = sub_767B80();
  *(v75 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();

  swift_unknownObjectRelease();

  return v67;
}

void sub_2E17BC()
{
  ObjectType = swift_getObjectType();
  v54.receiver = v0;
  v54.super_class = type metadata accessor for EditorsChoiceView();
  objc_msgSendSuper2(&v54, "layoutSubviews");
  v2 = v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_preferredLineCount];
  v3 = v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_size];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useAdsLocale;
  v5 = v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useAdsLocale];
  v6 = v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useCase];
  sub_75D650();
  v7.n128_f64[0] = CGRectGetWidth(v56);
  v8 = sub_4E78BC(v2, v3, v5, v6, v0, ObjectType, v7);
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel];
  v11 = v10 & 1;
  [v9 setNumberOfLines:{(v11 + 1), v8}];
  v55._object = v0[v4];
  v55._countAndFlagsBits = v11;
  sub_2E353C(v55);
  v12 = sub_769210();

  [v9 setText:v12];

  v13 = [v0 traitCollection];
  if (v6 == 1)
  {
    v14 = v13;
    v15 = [v13 preferredContentSizeCategory];
    v16 = sub_769B20();

    if (v16)
    {
      [*&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView] setHidden:1];
      [*&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView] setHidden:1];
      sub_75D650();
      Width = CGRectGetWidth(v57);
      sub_75D650();
      [v9 sizeThatFits:{Width, CGRectGetHeight(v58)}];
      v19 = v18;
      v21 = v20;
      sub_75D650();
      v22 = CGRectGetMidX(v59) - v19 * 0.5;
      sub_75D650();
      [v9 setFrame:{v22, CGRectGetMidY(v60) - v21 * 0.5, Width, v21}];
      return;
    }
  }

  else
  {
  }

  v23 = v3;
  v24 = sub_2E0248(v3);
  v25 = sub_2E0514(v23);
  v26 = 12.0;
  if (v23 != 4)
  {
    [v0 bounds];
    Height = CGRectGetHeight(v61);
    [v24 size];
    if (v28 < Height)
    {
      Height = v28;
    }

    [v24 size];
    v30 = Height * v29;
    [v24 size];
    v32 = v30 / v31;
    [v0 bounds];
    MinX = CGRectGetMinX(v62);
    [v0 bounds];
    v34 = CGRectGetMidY(v63) - Height * 0.5;
    v35 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView];
    [v35 setHidden:0];
    [v35 setImage:v24];
    [v35 setFrame:{MinX, v34, v32, Height}];
    [v0 bounds];
    v36 = CGRectGetHeight(v64);
    [v25 size];
    if (v37 < v36)
    {
      v36 = v37;
    }

    [v25 size];
    v39 = v36 * v38;
    [v25 size];
    v41 = v39 / v40;
    [v0 bounds];
    v42 = CGRectGetMaxX(v65) - v41;
    [v0 bounds];
    v43 = CGRectGetMidY(v66) - v36 * 0.5;
    v44 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView];
    [v44 setHidden:0];
    [v44 setImage:v25];
    [v44 setFrame:{v42, v43, v41, v36}];
    v26 = dbl_792DE8[v23];
  }

  sub_75D650();
  v45 = CGRectGetWidth(v67);
  [v24 size];
  v47 = v26 + v26 + v46;
  [v25 size];
  v49 = v45 - (v47 + v48);
  sub_75D650();
  [v9 sizeThatFits:{v49, CGRectGetHeight(v68)}];
  v51 = v50;
  [v24 size];
  v53 = v26 + v52;
  sub_75D650();
  [v9 setFrame:{v53, CGRectGetMidY(v69) + v51 * -0.5, v49, v51}];
}

void sub_2E1CC0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (*(v5 + OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_size) != 4)
  {
    v32.receiver = v5;
    v32.super_class = type metadata accessor for EditorsChoiceView();
    objc_msgSendSuper2(&v32, "drawRect:", a2, a3, a4, a5);
    return;
  }

  v6 = UIGraphicsGetCurrentContext();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = [v5 tintColor];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    v11 = [v9 CGColor];

    CGContextSetFillColorWithColor(v8, v11);
  }

  v12 = sub_2E0248(4u);
  [v5 bounds];
  Height = CGRectGetHeight(v34);
  [v12 size];
  if (v14 < Height)
  {
    Height = v14;
  }

  [v12 size];
  v16 = Height * v15;
  [v12 size];
  v18 = v16 / v17;
  [v5 bounds];
  MinX = CGRectGetMinX(v35);
  [v5 bounds];
  [v12 drawInRect:{MinX, CGRectGetMidY(v36) - Height * 0.5, v18, Height}];
  v31 = sub_2E0514(4u);
  [v5 bounds];
  v20 = CGRectGetHeight(v37);
  [v31 size];
  if (v21 < v20)
  {
    v20 = v21;
  }

  [v31 size];
  v23 = v20 * v22;
  [v31 size];
  v25 = v23 / v24;
  [v5 bounds];
  v26 = CGRectGetMaxX(v38) - v25;
  [v5 bounds];
  [v31 drawInRect:{v26, CGRectGetMidY(v39) - v20 * 0.5, v25, v20}];
}

void sub_2E1FB4()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel];
  v2 = [v0 tintColor];
  [v1 setTextColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView];
  v4 = [v0 tintColor];
  [v3 setTintColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView];
  v6 = [v0 tintColor];
  [v5 setTintColor:v6];

  if (v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_size] == 4)
  {

    [v0 setNeedsDisplay];
  }
}

void sub_2E2120()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useCase] == 1)
  {
    v1 = [v0 layer];
    [v1 setAllowsGroupBlending:0];

    v2 = [v0 traitCollection];
    [v2 userInterfaceStyle];

    sub_769240();
    v3 = sub_769210();

    v4 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView] layer];
    [v4 setCompositingFilter:v3];

    v5 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView] layer];
    [v5 setCompositingFilter:v3];
  }
}

id sub_2E228C()
{
  v1 = v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useCase];
  v2 = [v0 traitCollection];
  if (v1 == 1)
  {
    v3 = v2;
    v4 = [v2 preferredContentSizeCategory];
    v5 = sub_769B20();

    if (v5)
    {
      v6 = 4;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = 1;
LABEL_6:
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel];

  return [v7 setTextAlignment:v6];
}

id sub_2E23A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditorsChoiceView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for RatingView.StarSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RatingView.StarSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2E25C8()
{
  result = qword_94E790;
  if (!qword_94E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94E790);
  }

  return result;
}

unint64_t sub_2E2620()
{
  result = qword_94E798;
  if (!qword_94E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94E798);
  }

  return result;
}

unint64_t sub_2E2678()
{
  result = qword_94E7A0;
  if (!qword_94E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94E7A0);
  }

  return result;
}

double sub_2E26CC(char a1, uint64_t a2, int a3, int a4, void *a5, uint64_t a6, __n128 a7)
{
  LODWORD(v109) = a3;
  v113 = a2;
  v114 = a6;
  v117 = a4;
  v9 = a4;
  v10 = sub_7573C0();
  v111 = *(v10 - 8);
  v112 = v10;
  __chkstk_darwin(v10);
  v110 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v12 - 8);
  v107 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v105 - v15;
  v17 = sub_7666D0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v115 = v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v108 = v105 - v21;
  __chkstk_darwin(v22);
  v116 = v105 - v23;
  __chkstk_darwin(v24);
  v26 = v105 - v25;
  __chkstk_darwin(v27);
  v29 = v105 - v28;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v106 = v105 - v32;
  v118 = a5;
  v33 = [a5 traitCollection];
  if (v9 != 1)
  {

    goto LABEL_5;
  }

  v34 = v33;
  v35 = [v33 preferredContentSizeCategory];
  v36 = sub_769B20();

  if ((v36 & 1) == 0)
  {
LABEL_5:
    v38 = v113;
    v39 = sub_2E0248(v113);
    v40 = sub_2E0514(v38);
    [v39 size];
    [v40 size];

    v37 = v115;
    goto LABEL_6;
  }

  v37 = v115;
  v38 = v113;
LABEL_6:
  if (a1)
  {
    goto LABEL_44;
  }

  v41._countAndFlagsBits = 0xD00000000000001ALL;
  v41._object = 0x80000000007CF720;
  if (v109)
  {
    v42 = sub_762F40(v41);
  }

  else
  {
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    v42 = sub_75B750(v41, v122);
  }

  v44 = v42;
  v45 = v43;
  v46 = [v118 traitCollection];
  v105[2] = v45;
  v105[1] = v44;
  if (v38 <= 1u)
  {
    if (v38)
    {
      if (qword_93D7C0 != -1)
      {
        swift_once();
      }

      v47 = qword_99EF38;
    }

    else
    {
      if (qword_93D7B8 != -1)
      {
        swift_once();
      }

      v47 = qword_99EF20;
    }
  }

  else if (v38 == 2)
  {
    if (v117)
    {
      if (qword_93D7E0 != -1)
      {
        swift_once();
      }

      v47 = qword_99EF98;
    }

    else
    {
      if (qword_93D7E8 != -1)
      {
        swift_once();
      }

      v47 = qword_99EFB0;
    }
  }

  else if (v38 == 3)
  {
    if (qword_93D810 != -1)
    {
      swift_once();
    }

    v47 = qword_99F028;
  }

  else
  {
    if (qword_93D818 != -1)
    {
      swift_once();
    }

    v47 = qword_99F040;
  }

  v48 = sub_BE38(v17, v47);
  (*(v18 + 16))(v29, v48, v17);
  v49 = v110;
  sub_757390();
  sub_2E0918(v38, v16);
  (*(v111 + 8))(v49, v112);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {

    sub_11A38(v16);
    v50 = v106;
    (*(v18 + 32))(v106, v29, v17);
    v37 = v115;
  }

  else
  {
    v51 = *(v18 + 32);
    v51(v26, v16, v17);
    v52.super.isa = v46;
    isa = sub_7666B0(v52).super.isa;
    [(objc_class *)isa pointSize];
    v55 = v54;
    v56.super.isa = v46;
    v57 = sub_7666B0(v56).super.isa;
    [(objc_class *)v57 pointSize];
    v59 = v58;

    v60 = *(v18 + 8);
    if (v59 >= v55)
    {
      v60(v26, v17);
      v50 = v106;
      v61 = v106;
      v62 = v29;
    }

    else
    {
      v60(v29, v17);
      v50 = v106;
      v61 = v106;
      v62 = v26;
    }

    v51(v61, v62, v17);
    v37 = v115;
    v38 = v113;
  }

  v63 = v117;
  v64 = [v118 traitCollection];
  if (v63 == 1)
  {
    v65 = v64;
    v66 = [v64 preferredContentSizeCategory];
    sub_769B20();
  }

  else
  {
  }

  v67 = sub_7653B0();
  v120 = v67;
  v121 = sub_2E34E4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v68 = sub_B1B4(v119);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_765C30();
  sub_BEB8(v119);
  sub_762CB0();
  v70 = v69;

  (*(v18 + 8))(v50, v17);
  v71 = sub_765BF0();
  if (v117)
  {
    if ((v71 & 1) == 0)
    {
LABEL_44:
      v72._object = 0x80000000007D9F40;
      if (v109)
      {
        v72._countAndFlagsBits = 0xD000000000000017;
        v73 = sub_762F40(v72);
      }

      else
      {
        v123._countAndFlagsBits = 0xD000000000000050;
        v123._object = 0x80000000007D9F60;
        v72._countAndFlagsBits = 0xD000000000000017;
        v73 = sub_75B750(v72, v123);
      }

      v75 = v73;
      v76 = v74;
      v78 = v107;
      v77 = v108;
      v79 = [v118 traitCollection];
      v113 = v76;
      v109 = v75;
      if (v38 <= 1u)
      {
        if (v38)
        {
          if (qword_93D7C0 != -1)
          {
            swift_once();
          }

          v80 = qword_99EF38;
        }

        else
        {
          if (qword_93D7B8 != -1)
          {
            swift_once();
          }

          v80 = qword_99EF20;
        }
      }

      else if (v38 == 2)
      {
        if (v117)
        {
          if (qword_93D7E0 != -1)
          {
            swift_once();
          }

          v80 = qword_99EF98;
        }

        else
        {
          if (qword_93D7E8 != -1)
          {
            swift_once();
          }

          v80 = qword_99EFB0;
        }
      }

      else if (v38 == 3)
      {
        if (qword_93D810 != -1)
        {
          swift_once();
        }

        v80 = qword_99F028;
      }

      else
      {
        if (qword_93D818 != -1)
        {
          swift_once();
        }

        v80 = qword_99F040;
      }

      v81 = sub_BE38(v17, v80);
      (*(v18 + 16))(v77, v81, v17);
      v82 = v110;
      sub_757390();
      sub_2E0918(v38, v78);
      (*(v111 + 8))(v82, v112);
      if ((*(v18 + 48))(v78, 1, v17) == 1)
      {

        sub_11A38(v78);
        (*(v18 + 32))(v116, v77, v17);
      }

      else
      {
        v83 = v77;
        v84 = *(v18 + 32);
        v84(v37, v78, v17);
        v85.super.isa = v79;
        v86 = sub_7666B0(v85).super.isa;
        [(objc_class *)v86 pointSize];
        v88 = v87;
        v89.super.isa = v79;
        v90 = sub_7666B0(v89).super.isa;
        [(objc_class *)v90 pointSize];
        v92 = v91;

        v93 = *(v18 + 8);
        if (v92 >= v88)
        {
          v93(v37, v17);
          v94 = v116;
          v95 = v83;
        }

        else
        {
          v93(v83, v17);
          v94 = v116;
          v95 = v37;
        }

        v84(v94, v95, v17);
      }

      v96 = v117;
      v97 = [v118 traitCollection];
      if (v96 == 1)
      {
        v98 = v97;
        v99 = [v97 preferredContentSizeCategory];
        sub_769B20();
      }

      else
      {
      }

      v100 = sub_7653B0();
      v120 = v100;
      v121 = sub_2E34E4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v101 = sub_B1B4(v119);
      (*(*(v100 - 8) + 104))(v101, enum case for Feature.measurement_with_labelplaceholder(_:), v100);
      sub_765C30();
      sub_BEB8(v119);
      v102 = v116;
      sub_762CB0();
      v70 = v103;

      (*(v18 + 8))(v102, v17);
    }
  }

  return v70;
}

uint64_t sub_2E34E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2E352C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_2E353C(Swift::String a1)
{
  if (a1._countAndFlagsBits)
  {
    if (a1._object)
    {
      a1._object = 0x80000000007D9F40;
      a1._countAndFlagsBits = 0xD000000000000017;
      return sub_762F40(a1);
    }

    a1._object = 0x80000000007D9F40;
    v2._countAndFlagsBits = 0xD000000000000050;
    v2._object = 0x80000000007D9F60;
    a1._countAndFlagsBits = 0xD000000000000017;
  }

  else
  {
    a1._countAndFlagsBits = 0xD00000000000001ALL;
    if (a1._object)
    {
      a1._object = 0x80000000007CF720;
      return sub_762F40(a1);
    }

    a1._object = 0x80000000007CF720;
    v2._countAndFlagsBits = 0;
    v2._object = 0xE000000000000000;
  }

  return sub_75B750(a1, v2);
}

void sub_2E35B8()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useAdsLocale) = 0;
  v1 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel;
  sub_75BB20();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  sub_76A840();
  __break(1u);
}

void sub_2E368C(uint64_t a1, char a2, int a3, id a4, double a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  v15 = a7;
  v16 = [a4 traitCollection];
  if (v15 == 1)
  {
    v17 = v16;
    v18 = [v16 preferredContentSizeCategory];
    v19 = sub_769B20();

    if (v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v21 = sub_2E0248(a1);
  v22 = sub_2E0514(a1);
  [v21 size];
  [v22 size];

LABEL_6:
  v20.n128_f64[0] = a5;
  sub_4E78BC(a2 & 1, a1, a6 & 1, v9, a4, a8, v20);
}

void sub_2E380C(uint64_t a1, char a2, int a3, id a4, double a5, char a6, int a7, uint64_t a8)
{
  v15 = a7;
  v16 = [a4 traitCollection];
  if (v15 == 1)
  {
    v17 = v16;
    v18 = [v16 preferredContentSizeCategory];
    v19 = sub_769B20();

    if (v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v21 = sub_2E0248(a1);
  v22 = sub_2E0514(a1);
  [v21 size];
  [v22 size];

LABEL_6:
  v20.n128_f64[0] = a5;
  sub_2E26CC(a2 & 1, a1, a6 & 1, a7, a4, a8, v20);
}

__n128 ProductLockupLayout.init(metrics:iconView:titleLabel:developerLabel:taglineLabel:tertiaryTitleLabel:shareButton:offerButton:offerSubtitleLabel:expandedOfferTitleLabel:expandedOfferSubtitleLabel:hasExpandedOffer:offerSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_2EA218(a1, a9, type metadata accessor for ProductLockupLayout.Metrics);
  v23 = type metadata accessor for ProductLockupLayout(0);
  sub_10914(a2, a9 + v23[5]);
  sub_10914(a3, a9 + v23[6]);
  sub_10914(a4, a9 + v23[7]);
  sub_10914(a5, a9 + v23[8]);
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
  sub_10914(a8, a9 + v23[11]);
  sub_10914(a10, a9 + v23[12]);
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

double ProductLockupLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  return sub_2E9F00(a1, v3, ObjectType, a2, a3);
}

uint64_t ProductLockupLayout.offerSubtitleText.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProductLockupLayout(0) + 64));

  return v1;
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v5 = sub_BD88(&unk_94E7B0, &qword_792B30);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.setter(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v5 = sub_BD88(&unk_94E7B0, &qword_792B30);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.maxWidth.setter(__int128 *a1, __n128 a2)
{
  v4 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 24);
  sub_BEB8((v2 + v4));

  return sub_10914(a1, v2 + v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.leadingMargin.setter(__int128 *a1, __n128 a2)
{
  v4 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28);
  sub_BEB8((v2 + v4));

  return sub_10914(a1, v2 + v4);
}

uint64_t ProductLockupLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:iconHorizontalMargin:titleSpace:titleFont:titleMaxNumberOfLines:subtitleSpace:subtitleFont:subtitleMaxNumberOfLines:tertiaryTitleSpace:tertiaryTitleFont:tertiaryTitleMaxNumberOfLines:offerTopSpace:offerSubtitleMetrics:shareButtonLeadingMargin:expandedOfferSubtitleSpace:expandedOfferHorizontalMargin:compactExpandedOfferShareButtonTopSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 *a20, uint64_t a21, __int128 *a22, __int128 *a23, uint64_t a24, __int128 *a25, __int128 *a26)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_10914(a1, (a9 + 4));
  sub_10914(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v33 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = v33[8];
  v35 = sub_BD88(&qword_940AD0, &unk_78F910);
  v44 = *(*(v35 - 8) + 32);
  v44(a9 + v34, a3, v35);
  v44(a9 + v33[9], a4, v35);
  v36 = v33[10];
  v37 = sub_BD88(&unk_94E7B0, &qword_792B30);
  v43 = *(*(v37 - 8) + 32);
  v43(a9 + v36, a5, v37);
  v38 = v33[11];
  v39 = sub_BD88(&unk_94B6E0, &qword_78E688);
  v40 = *(*(v39 - 8) + 32);
  v40(a9 + v38, a6, v39);
  v44(a9 + v33[12], a7, v35);
  v43(a9 + v33[13], a8, v37);
  v40(a9 + v33[14], a16, v39);
  v44(a9 + v33[15], a17, v35);
  v43(a9 + v33[16], a18, v37);
  v40(a9 + v33[17], a19, v39);
  sub_10914(a20, a9 + v33[18]);
  sub_2EA218(a21, a9 + v33[19], type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_10914(a22, a9 + v33[20]);
  sub_10914(a23, a9 + v33[21]);
  v44(a9 + v33[22], a24, v35);
  sub_10914(a25, a9 + v33[23]);
  v41 = a9 + v33[24];

  return sub_10914(a26, v41);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 40);
  v4 = sub_BD88(&unk_94E7B0, &qword_792B30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 44);
  v4 = sub_BD88(&unk_94B6E0, &qword_78E688);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 52);
  v4 = sub_BD88(&unk_94E7B0, &qword_792B30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_BD88(&unk_94B6E0, &qword_78E688);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_BD88(&unk_94B6E0, &qword_78E688);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 64);
  v4 = sub_BD88(&unk_94E7B0, &qword_792B30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_BD88(&unk_94B6E0, &qword_78E688);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_BD88(&unk_94B6E0, &qword_78E688);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 72);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.offerSubtitleMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);

  return sub_2DC644(a1, v3, v4);
}

uint64_t ProductLockupLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.compactExpandedOfferShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 96);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v267 = a6;
  v268 = a3;
  v249 = a2;
  v13 = sub_76A920();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v231 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*&v6 + 56);
  sub_B170((*&v6 + 32), v17);
  sub_33964(v17);
  sub_766700();
  v19 = v18;
  v22 = *(v14 + 8);
  v20 = v14 + 8;
  v21 = v22;
  v22(v16, v13);
  v23 = *(*&v6 + 96);
  sub_B170((*&v7 + 72), *(*&v7 + 96));
  sub_33964(v23);
  sub_766700();
  v25 = v24;
  v266 = v13;
  v22(v16, v13);
  v26 = **&v6;
  v27 = *(*&v6 + 8);
  v238 = v19;
  v239 = v25;
  v28 = sub_705B8(a3, a4, a5, a6, v19 + v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = *(*&v6 + 112);
  v35 = *(*&v6 + 120);
  *&v37 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  sub_B170((*&v7 + v37[5]), *(*&v7 + v37[5] + 24));
  v264 = a4;
  v263 = a5;
  sub_769D20();
  sub_766530();
  v285.origin.x = v28;
  v285.origin.y = v30;
  v285.size.width = v36;
  v250 = v35;
  v285.size.height = v35;
  MaxX = CGRectGetMaxX(v285);
  v38 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v279 = a1;
  *&v39 = COERCE_DOUBLE(sub_BD88(&qword_940AD0, &unk_78F910));
  sub_7592B0();
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
  sub_7592B0();
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
  sub_1ED18(*&v6 + v257, &v282, &unk_943B10, &qword_77E080);
  v270 = v32;
  if (v283)
  {
    sub_B170(&v282, v283);
    sub_7665B0();
    v259 = v43;
    v235 = v44;
    sub_BEB8(&v282);
  }

  else
  {
    sub_10A2C(&v282, &unk_943B10, &qword_77E080);
    v259 = 0.0;
    v235 = 0.0;
  }

  v45 = v34;
  v46 = MaxX + v40;
  v47 = Width - v42;
  sub_1ED18(*&v6 + v257, &v282, &unk_943B10, &qword_77E080);
  v48 = v283;
  sub_10A2C(&v282, &unk_943B10, &qword_77E080);
  v49 = 0.0;
  if (v48)
  {
    v50 = (*&v6 + *(v38 + 80));
    v51 = v50[3];
    sub_B170(v50, v51);
    sub_33964(v51);
    sub_766700();
    v49 = v52;
    v21(v16, v266);
  }

  v255 = v38;
  v53 = (*&v6 + v37[11]);
  v54 = v53[3];
  v248 = v53;
  sub_B170(v53, v54);
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
  sub_7665B0();
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
  sub_B170(v63, v64);
  MaxX = v7;
  v65 = v37;
  v66 = a1;
  v67 = v21;
  sub_33964(v64);
  sub_766700();
  v68 = v266;
  v67(v16, v266);
  v252 = v59;
  v69 = v46;
  v70 = v259;
  v71 = (v61 + *(v62 + 24));
  v72 = v71[3];
  v231 = v71;
  sub_B170(v71, v72);
  sub_33964(v72);
  sub_766700();
  v253 = v16;
  v254 = v20;
  v260 = v67;
  v67(v16, v68);
  v73 = v66;
  v74 = (*&MaxX + v65[12]);
  v75 = v74[3];
  v234 = v74;
  sub_B170(v74, v75);
  v292.origin.x = v55;
  v76 = v56;
  v292.origin.y = v56;
  v77 = v270;
  v292.size.width = v270;
  v292.size.height = v45;
  CGRectGetHeight(v292);
  sub_7665A0();
  v246 = v78;
  v79 = [v66 traitCollection];
  LOBYTE(v75) = sub_7699D0();

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
  sub_B170(v85, v85[3]);
  v294.origin.x = v55;
  v294.origin.y = v76;
  v294.size.width = v77;
  v86 = v269;
  v294.size.height = v269;
  CGRectGetHeight(v294);
  sub_7665A0();
  v262 = v87;
  v243 = v88;
  v90 = v89;
  v256 = v89;
  v261 = v91;
  v92 = v255;
  *&v279 = v73;
  sub_7592B0();
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

  sub_B170(v85, v85[3]);
  sub_7669E0();
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
  sub_B170(v85, v85[3]);
  v102 = v95;
  sub_769D20();
  sub_766530();
  v232 = v85;
  sub_134D8(v85, &v282);
  *&v279 = v73;
  sub_BD88(&unk_94B6E0, &qword_78E688);
  sub_7592B0();
  *&v245 = v65[9];
  sub_1ED18(*&MaxX + *&v245, &v279, &qword_9417D0, &unk_780EA0);
  sub_10A2C(&v279, &qword_9417D0, &unk_780EA0);
  sub_B170(&v282, v283);
  v298.var0 = v262;
  v298.var1 = v101;
  v298.var2 = v256;
  v298.var3 = v261;
  sub_766A10(v298);
  sub_BEB8(&v282);
  v103 = (*&MaxX + v65[7]);
  sub_B170(v103, v103[3]);
  sub_7669D0();
  v256 = *&v65;
  v104 = v65[8];
  v105 = *&MaxX;
  v106 = (*&MaxX + v104);
  sub_B170((*&MaxX + v104), *(*&MaxX + v104 + 24));
  sub_7669D0();
  *&v279 = v73;
  sub_7592B0();
  v107 = v282;
  sub_B170(v103, v103[3]);
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
  sub_7665A0();
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
  sub_B170(v106, v106[3]);
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
  sub_7665A0();
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
  sub_B170(v103, v103[3]);
  v129 = MinX;
  v130 = v243;
  sub_769D20();
  sub_766530();
  sub_B170(v106, v106[3]);
  v131 = v241;
  v240 = v128;
  v132 = v244;
  sub_769D20();
  sub_766530();
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
  sub_1ED18(v105 + *&v245, &v279, &qword_9417D0, &unk_780EA0);
  if (v280)
  {
    v148 = v237;
    if (v146 < v244)
    {
      v148 = v236;
    }

    v262 = v147 - v148;
    sub_10914(&v279, &v282);
    *&v277 = v73;
    sub_7592B0();
    v261 = *&v279;
    sub_B170(&v282, v283);
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
    sub_7665A0();
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
    sub_B170(&v282, v283);
    sub_769D20();
    sub_766530();
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
    sub_BEB8(&v282);
    v163 = v92;
  }

  else
  {
    sub_10A2C(&v279, &qword_9417D0, &unk_780EA0);
    v163 = v92;
    v162 = v147;
  }

  v164 = v248;
  sub_B170(v248, v248[3]);
  v165 = sub_766540();
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
  sub_B170(v169, v170);
  v171 = v253;
  sub_33964(v170);
  sub_766700();
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

  sub_B170(v164, v164[3]);
  v177 = v268;
  v178 = v267;
  v261 = v176;
  v262 = v168;
  v179 = v252;
  sub_769D20();
  sub_766530();
  v180 = *&v256;
  if (*(v105 + *(*&v256 + 60)) == 1)
  {
    v181 = *(*&v256 + 52);
    sub_1ED18(v105 + v181, &v279, &qword_9417D0, &unk_780EA0);
    if (v280)
    {
      sub_10914(&v279, &v282);
      sub_1ED18(v105 + v180[14], &v277, &qword_9417D0, &unk_780EA0);
      v182 = v178;
      v183 = v264;
      if (v278)
      {
        v184 = v163;
        sub_10914(&v277, &v279);
        v185 = [v73 traitCollection];
        v186 = sub_7699D0();

        v187 = v283;
        v188 = v284;
        v189 = sub_B170(&v282, v283);
        v190 = v280;
        v191 = v281;
        v192 = sub_B170(&v279, v280);
        v193 = *(v188 + 8);
        v194 = *(v191 + 8);
        if (v186)
        {
          sub_2E8EAC(v273, v274, v251, v250, v259, v235, v261, v262, v189, v192, v73, v105, v187, v190, v193, v194, v179, v258, v247, v273, v274, v270, v269);
        }

        else
        {
          sub_2EBDD4(v259, v235, v261, v262, v179, v258, v273, v274, v189, v192, v73, v105, v187, v190, v193, v194, v270, v269, v265, v175, v272, Height);
        }

        sub_BEB8(&v279);
        sub_BEB8(&v282);
        v180 = *&v256;
        v163 = v184;
        goto LABEL_67;
      }

      sub_10A2C(&v277, &qword_9417D0, &unk_780EA0);
      sub_BEB8(&v282);
    }

    else
    {
      sub_10A2C(&v279, &qword_9417D0, &unk_780EA0);
      v182 = v178;
      v183 = v264;
    }

    sub_1ED18(v105 + v181, &v282, &qword_9417D0, &unk_780EA0);
    v200 = v263;
    if (v283)
    {
      sub_B170(&v282, v283);
      sub_766530();
      sub_BEB8(&v282);
    }

    else
    {
      sub_10A2C(&v282, &qword_9417D0, &unk_780EA0);
    }

    sub_1ED18(v105 + v180[14], &v282, &qword_9417D0, &unk_780EA0);
    if (v283)
    {
      sub_B170(&v282, v283);
LABEL_81:
      sub_766530();
      sub_BEB8(&v282);
      goto LABEL_84;
    }

    v205 = &qword_9417D0;
    v206 = &unk_780EA0;
    v207 = &v282;
  }

  else
  {
    sub_1ED18(v105 + *(*&v256 + 52), &v282, &qword_9417D0, &unk_780EA0);
    if (v283)
    {
      sub_B170(&v282, v283);
      sub_766530();
      sub_BEB8(&v282);
    }

    else
    {
      sub_10A2C(&v282, &qword_9417D0, &unk_780EA0);
    }

    v195 = v270;
    v182 = v178;
    v183 = v264;
    sub_1ED18(v105 + v180[14], &v282, &qword_9417D0, &unk_780EA0);
    if (v283)
    {
      sub_B170(&v282, v283);
      sub_766530();
      sub_BEB8(&v282);
    }

    else
    {
      sub_10A2C(&v282, &qword_9417D0, &unk_780EA0);
    }

    v196 = Height;
    v197 = [v73 traitCollection];
    v198 = sub_7699D0();

    if (v198)
    {
      sub_2E76C4(v73, v261, v262, v179, v258, v259, v235, v273, v274, v195, v269, v265, v175, v272, v196);
LABEL_67:
      v200 = v263;
      goto LABEL_84;
    }

    v199 = v234;
    sub_B170(v234, v234[3]);
    if (sub_766540())
    {
      sub_B170(v199, v199[3]);
      sub_766530();
      v163 = v255;
      v200 = v263;
    }

    else
    {
      sub_1ED18(v105 + v257, &v282, &unk_943B10, &qword_77E080);
      v201 = v283;
      sub_10A2C(&v282, &unk_943B10, &qword_77E080);
      if (v201)
      {
        v202 = (v105 + *(v255 + 80));
        v203 = v202[3];
        sub_B170(v202, v203);
        sub_33964(v203);
        sub_766700();
        v251 = v204;
        v260(v171, v266);
      }

      else
      {
        v251 = 0.0;
      }

      v208 = v272;
      v209 = v261;
      sub_1ED18(v105 + v257, &v282, &unk_943B10, &qword_77E080);
      if (v283)
      {
        sub_B170(&v282, v283);
        sub_7665B0();
        sub_BEB8(&v282);
      }

      else
      {
        sub_10A2C(&v282, &unk_943B10, &qword_77E080);
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
      sub_B170(v233, v212);
      sub_33964(v212);
      sub_766700();
      v213 = v171;
      v214 = v266;
      v215 = v171;
      v216 = v260;
      v260(v213, v266);
      v217 = v261;
      v218 = v179;
      v219 = v231[3];
      sub_B170(v231, v219);
      sub_33964(v219);
      sub_766700();
      v216(v215, v214);
      sub_B170(v234, v234[3]);
      sub_7665A0();
      v221 = v220;
      v321.origin.x = v217;
      v321.origin.y = v210;
      v321.size.width = v218;
      v321.size.height = v211;
      CGRectGetMidY(v321);
      sub_B170(v164, v164[3]);
      if ((sub_766540() & 1) != 0 || (v322.origin.x = v217, v322.origin.y = v210, v322.size.width = v218, v322.size.height = v211, CGRectGetHeight(v322) < v221))
      {
        v323.origin.x = v217;
        v323.origin.y = v210;
        v323.size.width = v218;
        v323.size.height = v211;
        CGRectGetMinY(v323);
      }

      v200 = v263;
      sub_B170(v164, v164[3]);
      v222 = sub_766540();
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
        sub_B170(v233, v227);
        sub_33964(v227);
        sub_766700();
        v260(v171, v266);
      }

      v183 = v264;
      sub_B170(v234, v234[3]);
      sub_769D20();
      sub_766530();
      v177 = v268;
      v175 = MinY;
      v196 = Height;
    }

    sub_1ED18(v105 + v257, &v279, &unk_943B10, &qword_77E080);
    v180 = *&v256;
    if (v280)
    {
      sub_10914(&v279, &v282);
      sub_B170(v232, v232[3]);
      sub_766520();
      CGRectGetMidY(v324);
      v325.size.height = v196;
      v325.origin.x = v265;
      v325.origin.y = v175;
      v325.size.width = v272;
      CGRectGetMaxX(v325);
      sub_B170(&v282, v283);
      sub_769D20();
      goto LABEL_81;
    }

    v205 = &unk_943B10;
    v206 = &qword_77E080;
    v207 = &v279;
  }

  sub_10A2C(v207, v205, v206);
LABEL_84:
  sub_1ED18(v105 + v180[17], &v279, &unk_943B10, &qword_77E080);
  if (v280)
  {
    sub_10914(&v279, &v282);
    sub_B170(&v282, v283);
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
    sub_766530();
    sub_BEB8(&v282);
  }

  else
  {
    sub_10A2C(&v279, &unk_943B10, &qword_77E080);
  }

  sub_1ED18(v105 + v180[18], &v279, &unk_943B10, &qword_77E080);
  if (v280)
  {
    sub_10914(&v279, &v282);
    sub_B170(&v282, v283);
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
    sub_B170(v228, v229);
    sub_33964(v229);
    sub_766700();
    v260(v171, v266);
    v331.origin.x = v177;
    v331.origin.y = v183;
    v331.size.width = v200;
    v331.size.height = v182;
    CGRectGetWidth(v331);
    sub_766530();
    sub_BEB8(&v282);
  }

  else
  {
    sub_10A2C(&v279, &unk_943B10, &qword_77E080);
  }

  return sub_7664B0();
}

uint64_t sub_2E76C4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, double a10, double a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15)
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
  v179 = sub_762D10();
  v25 = *(v179 - 8);
  __chkstk_darwin(v179);
  v27 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v145 - v29;
  v176 = sub_756CB0();
  v151 = *(v176 - 1);
  __chkstk_darwin(v176);
  v150 = &v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_76A920();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for ProductLockupLayout(0);
  v171 = *(v177 + 40);
  sub_1ED18(v15 + v171, v182, &unk_943B10, &qword_77E080);
  v35 = v183;
  sub_10A2C(v182, &unk_943B10, &qword_77E080);
  v147 = v27;
  v175 = v25;
  if (v35)
  {
    v36 = (v15 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80));
    v37 = v36[3];
    sub_B170(v36, v37);
    sub_33964(v37);
    sub_766700();
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
  sub_B170(v43, v44);
  sub_33964(v44);
  sub_766700();
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
  sub_BD88(&unk_94E7B0, &qword_792B30);
  v157 = v41;
  v51 = v50;
  sub_7592B0();
  v52 = v180;
  v53 = *(v15 + *(v48 + 60));
  v54 = (v15 + *(v48 + 44));
  v55 = v54[3];
  v170 = v54;
  sub_B170(v54, v55);
  v56 = sub_766540();
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
    sub_B170(v104, v104[3]);
    if ((sub_766540() & 1) == 0)
    {
      v145 = v57;
      if (v58)
      {
        v106 = v174;
        sub_B170(v104, v104[3]);
        sub_7665A0();
        v108 = v107;
        sub_B170(v157, v157[3]);
        v179 = v108;
        sub_766720();
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
        sub_B170(v170, v170[3]);
        v110 = sub_766540();
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
        sub_1ED18(v16 + v171, v182, &unk_943B10, &qword_77E080);
        v116 = v183;
        sub_10A2C(v182, &unk_943B10, &qword_77E080);
        if (v116)
        {
          v117 = (v16 + *(v148 + 80));
          v118 = v117[3];
          sub_B170(v117, v118);
          v119 = v159;
          sub_33964(v118);
          sub_766700();
          v179 = v120;
          v158(v119, v146);
        }

        else
        {
          v179 = 0;
        }

        sub_1ED18(v16 + v115, v182, &unk_943B10, &qword_77E080);
        if (v183)
        {
          sub_B170(v182, v183);
          sub_7665B0();
          v178 = v121;
          sub_BEB8(v182);
        }

        else
        {
          sub_10A2C(v182, &unk_943B10, &qword_77E080);
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
        sub_B170(v154, v125);
        v126 = v159;
        sub_33964(v125);
        sub_766700();
        v127 = a3;
        v128 = v146;
        v129 = v158;
        v158(v126, v146);
        v130 = v124;
        v131 = (v157 + *(v149 + 24));
        v132 = v131[3];
        sub_B170(v131, v132);
        sub_33964(v132);
        sub_766700();
        v133 = v126;
        v134 = v128;
        v129(v133, v128);
        sub_B170(v104, v104[3]);
        sub_7665A0();
        v136 = v135;
        v193.origin.x = v122;
        v193.origin.y = v127;
        v193.size.width = v123;
        v193.size.height = v130;
        CGRectGetMidY(v193);
        sub_B170(v170, v170[3]);
        if ((sub_766540() & 1) != 0 || (v194.origin.x = v122, v194.origin.y = v127, v194.size.width = v123, v194.size.height = v130, CGRectGetHeight(v194) < v136))
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

        sub_B170(v170, v170[3]);
        v138 = sub_766540();
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
          sub_B170(v154, v143);
          v144 = v159;
          sub_33964(v143);
          sub_766700();
          v158(v144, v134);
        }

        v22 = v156;
      }

      sub_B170(v104, v104[3]);
      sub_769D20();
      sub_766530();
      v23 = v155;
      v24 = v161;
      v59 = v172;
      a3 = v162;
      goto LABEL_44;
    }

LABEL_21:
    sub_B170((v16 + *(v60 + 48)), *(v16 + *(v60 + 48) + 24));
    sub_766530();
    v105 = v171;
LABEL_44:
    sub_1ED18(v16 + v105, &v180, &unk_943B10, &qword_77E080);
    if (!v181)
    {
      return sub_10A2C(&v180, &unk_943B10, &qword_77E080);
    }

    sub_10914(&v180, v182);
    sub_B170(v170, v170[3]);
    if (sub_766540())
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
    sub_B170(v182, v183);
    sub_769D20();
    sub_766530();
    return sub_BEB8(v182);
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
    sub_756CA0();
    v182[0] = v163;
    v182[1] = v51;
    sub_12EC40();
    sub_76A4C0();
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
    v80 = sub_7699E0();

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
  result = sub_2E8950(v163, v51);
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

      v97 = sub_7653B0();
      v183 = v97;
      v184 = sub_2ECB6C(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v98 = sub_B1B4(v182);
      (*(*(v97 - 8) + 104))(v98, v175, v97);
      v99 = v176;
      sub_765C30();
      sub_BEB8(v182);
      v100 = v147;
      sub_762D00();
      sub_2ECB6C(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
      v101 = v179;
      sub_7665A0();
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
    v90 = sub_7653B0();
    v183 = v90;
    v184 = sub_2ECB6C(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v91 = sub_B1B4(v182);
    (*(*(v90 - 8) + 104))(v91, v175, v90);

    v92 = v176;
    sub_765C30();
    sub_BEB8(v182);
    v93 = v178;
    sub_762D00();
    sub_2ECB6C(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
    v94 = v179;
    sub_7665A0();
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

uint64_t sub_2E8950(uint64_t a1, unint64_t a2)
{
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = (v2 + 16);

  sub_BD88(&unk_94EA60, &qword_792F28);
  sub_12EC40();
  sub_2ED768();
  sub_76A4E0();

  swift_beginAccess();
  v4 = *v3;

  return v4;
}

double ProductLockupLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProductLockupLayout(0);
  sub_B170((v3 + v12[11]), *(v3 + v12[11] + 24));
  sub_7665B0();
  v14 = rint(v13);
  v38 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v15 = (v3 + *(v38 + 96));
  v16 = v15[3];
  sub_B170(v15, v16);
  sub_33964(v16);
  sub_766700();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v11, v8);
  v20 = *(v4 + 96);
  sub_B170((v4 + 72), v20);
  sub_33964(v20);
  sub_766700();
  v22 = v21;
  v19(v11, v8);
  swift_getObjectType();
  v23 = [a1 traitCollection];
  v24 = sub_7699E0();

  if ((v24 & 1) == 0 && *(v4 + v12[15]) == 1)
  {
    v25 = sub_2EB578(a1, v4, a2, a3);
    v26 = (v4 + v12[12]);
    sub_B170(v26, v26[3]);
    if ((sub_766540() & 1) == 0)
    {
      sub_B170(v26, v26[3]);
      sub_7665A0();
      v28 = v27;
      v30 = v29;
      v31 = (v4 + *(v38 + 76));
      v32 = v31[3];
      sub_B170(v31, v32);
      sub_33964(v32);
      sub_766700();
      v34 = v33;
      v19(v11, v8);
      v35 = v34 - v30;
      if (v34 - v30 <= 0.0)
      {
        v35 = 0.0;
      }

      v14 = v14 + v28 + v35;
    }

    if (v14 <= v25)
    {
      v14 = v25;
    }
  }

  return v18 + v22 + v14;
}

uint64_t sub_2E8DC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(a8 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_7B5CC(0, *(v11 + 2) + 1, 1, v11);
      *(a8 + 16) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_7B5CC((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[2 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = a2;
    *(a8 + 16) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2E8EAC(CGFloat a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CGFloat a17, CGFloat a18, double a19, CGFloat a20, CGFloat a21, CGFloat a22, CGFloat a23)
{
  v167 = a16;
  v162 = a15;
  v179 = *&a11;
  v177 = a8;
  v159 = a6;
  v176 = a4;
  v173 = a3;
  v171 = a2;
  v160 = a1;
  v29 = a22;
  v174 = a18;
  v30 = a17;
  *&v31 = COERCE_DOUBLE(sub_76A920());
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a14 - 8);
  __chkstk_darwin(v36);
  v38 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v39);
  v164 = v42;
  v43 = *(v42 + 16);
  v163 = &v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = a13;
  v43(v40);
  v166 = v35;
  v44 = *(v35 + 16);
  v165 = v38;
  v169 = a14;
  v44(v38, a10, a14);
  v45 = type metadata accessor for ProductLockupLayout(0);
  v46 = v45[10];
  sub_1ED18(a12 + v46, &v181, &unk_943B10, &qword_77E080);
  v170 = a20;
  v172 = a7;
  if (v182)
  {
    sub_10914(&v181, &v183);
    v47 = (a12 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92));
    v48 = v47[3];
    sub_B170(v47, v48);
    sub_33964(v48);
    v49 = v179;
    sub_766700();
    v161 = a17;
    v51 = v50;
    (*(v32 + 8))(v34, v31);
    v185.origin.x = v160;
    v185.origin.y = v171;
    v185.size.width = v173;
    v185.size.height = v176;
    MaxY = CGRectGetMaxY(v185);
    v53 = v159;
    v54 = MaxY - v159;
    if (v54 > v51 + a19)
    {
      v55 = v54;
    }

    else
    {
      v55 = v51 + a19;
    }

    v186.origin.x = a20;
    v186.origin.y = a21;
    v186.size.width = a22;
    v186.size.height = a23;
    v56 = CGRectGetMaxX(v186) - a5;
    sub_B170(&v183, v184);
    sub_769D20();
    sub_766530();
    v187.origin.x = v56;
    v187.origin.y = v55;
    a7 = v172;
    v30 = v161;
    v187.size.width = a5;
    v187.size.height = v53;
    v29 = a22;
    v176 = CGRectGetMaxY(v187);
    sub_BEB8(&v183);
    v57 = v170;
  }

  else
  {
    sub_10A2C(&v181, &unk_943B10, &qword_77E080);
    v188.origin.x = v160;
    v188.origin.y = v171;
    v188.size.width = v173;
    v188.size.height = v176;
    v58 = CGRectGetMaxY(v188);
    if (v58 <= a19)
    {
      v58 = a19;
    }

    v176 = v58;
    v57 = a20;
    v49 = v179;
  }

  v178 = a21;
  v175 = v29;
  v189.origin.x = v57;
  v189.origin.y = a21;
  v189.size.width = v29;
  v189.size.height = a23;
  MaxX = CGRectGetMaxX(v189);
  v190.origin.x = a7;
  v60 = v177;
  v190.origin.y = v177;
  v190.size.width = v30;
  v61 = v174;
  v190.size.height = v174;
  v179 = MaxX - CGRectGetWidth(v190);
  v171 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout.Metrics(0));
  v62 = (a12 + *(*&v171 + 72));
  v63 = v62[3];
  sub_B170(v62, v63);
  sub_33964(v63);
  sub_766700();
  v65 = v64;
  v66 = *(v32 + 8);
  v158 = v34;
  v160 = *&v31;
  *&v159 = v32 + 8;
  v157 = v66;
  v66(v34, v31);
  v67 = v176 + v65;
  v191.origin.x = a7;
  v191.origin.y = v60;
  v191.size.width = v30;
  v191.size.height = v61;
  Width = CGRectGetWidth(v191);
  v192.origin.x = a7;
  v192.origin.y = v60;
  v69 = v30;
  v192.size.width = v30;
  v192.size.height = v61;
  Height = CGRectGetHeight(v192);
  v71 = (a12 + v45[11]);
  v72 = v49;
  sub_B170(v71, v71[3]);
  v180 = a23;
  v176 = Height;
  sub_769D20();
  sub_766530();
  sub_B170(v71, v71[3]);
  v73 = sub_766540();
  sub_B170(v71, v71[3]);
  if ((sub_766540() & 1) == 0)
  {
    v172 = v179;
    v177 = v67;
    v69 = Width;
    v174 = v176;
  }

  v74 = (a12 + v45[12]);
  sub_B170(v74, v74[3]);
  v75 = sub_766540();
  v173 = v67;
  if (v75)
  {
    sub_B170(v74, v74[3]);
    sub_766530();
    v76 = *&v171;
    v77 = v175;
    v78 = v180;
    v79 = v178;
    v80 = v57;
  }

  else
  {
    v76 = *&v171;
    v156 = Width;
    if (v73)
    {
      v81 = v57;
      sub_1ED18(a12 + v46, &v183, &unk_943B10, &qword_77E080);
      v82 = v184;
      sub_10A2C(&v183, &unk_943B10, &qword_77E080);
      v161 = v69;
      v83 = v172;
      if (v82)
      {
        v84 = (a12 + v76[20]);
        v85 = v84[3];
        sub_B170(v84, v85);
        v86 = v158;
        sub_33964(v85);
        sub_766700();
        v155 = v87;
        v157(v86, *&v160);
      }

      else
      {
        v155 = 0.0;
      }

      v99 = v177;
      sub_1ED18(a12 + v46, &v183, &unk_943B10, &qword_77E080);
      if (v184)
      {
        sub_B170(&v183, v184);
        v100 = v175;
        v101 = v180;
        sub_7665B0();
        v153 = v102;
        sub_BEB8(&v183);
      }

      else
      {
        sub_10A2C(&v183, &unk_943B10, &qword_77E080);
        v153 = 0;
        v101 = v180;
        v100 = v175;
      }

      v195.origin.x = v81;
      v195.origin.y = v178;
      v195.size.width = v100;
      v195.size.height = v101;
      CGRectGetWidth(v195);
      v196.origin.x = v83;
      v196.origin.y = v99;
      v177 = v99;
      v103 = v161;
      v196.size.width = v161;
      v104 = v174;
      v196.size.height = v174;
      CGRectGetWidth(v196);
      v105 = v76[19];
      v154 = a12;
      v106 = a12 + v105;
      v152 = a12 + v105;
      v107 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
      v108 = (v106 + *(v107 + 28));
      v109 = v108[3];
      v151 = v108;
      sub_B170(v108, v109);
      v110 = v158;
      sub_33964(v109);
      sub_766700();
      v111 = v83;
      v112 = v160;
      v113 = v157;
      v157(v110, *&v160);
      v114 = (v152 + *(v107 + 24));
      v115 = v114[3];
      sub_B170(v114, v115);
      sub_33964(v115);
      sub_766700();
      v113(v110, *&v112);
      v116 = v103;
      sub_B170(v74, v74[3]);
      v78 = v101;
      v117 = v177;
      sub_7665A0();
      v119 = v118;
      v197.origin.x = v111;
      v197.origin.y = v117;
      v197.size.width = v116;
      v197.size.height = v104;
      CGRectGetMidY(v197);
      sub_B170(v71, v71[3]);
      v120 = sub_766540();
      v155 = v119;
      if ((v120 & 1) != 0 || (v198.origin.x = v111, v198.origin.y = v117, v198.size.width = v116, v198.size.height = v104, CGRectGetHeight(v198) < v119))
      {
        v199.size.width = v116;
        v121 = v111;
        v199.origin.x = v111;
        v199.origin.y = v117;
        v199.size.height = v104;
        CGRectGetMinY(v199);
      }

      else
      {
        v121 = v111;
      }

      sub_B170(v71, v71[3]);
      v122 = sub_766540();
      v76 = *&v171;
      a12 = v154;
      v123 = v121;
      v124 = v117;
      v125 = v161;
      v126 = v174;
      if (v122)
      {
        CGRectGetMinX(*&v123);
      }

      else
      {
        CGRectGetMaxX(*&v123);
        v127 = v151[3];
        sub_B170(v151, v127);
        v128 = v158;
        sub_33964(v127);
        sub_766700();
        v157(v128, *&v160);
      }

      v79 = v178;
      v80 = v170;
    }

    else
    {
      v88 = v172;
      v89 = v69;
      sub_B170(v74, v74[3]);
      sub_7665A0();
      v91 = v90;
      sub_B170((a12 + v76[19]), *(a12 + v76[19] + 24));
      v155 = v91;
      sub_766720();
      v193.origin.x = v88;
      v92 = v177;
      v193.origin.y = v177;
      v193.size.width = v89;
      v93 = v174;
      v193.size.height = v174;
      CGRectGetMinX(v193);
      v194.origin.x = v88;
      v194.origin.y = v92;
      v194.size.width = v89;
      v194.size.height = v93;
      CGRectGetWidth(v194);
      sub_B170(v71, v71[3]);
      v94 = sub_766540();
      v95 = v88;
      v96 = v92;
      v97 = v89;
      v98 = v93;
      if (v94)
      {
        CGRectGetMinY(*&v95);
      }

      else
      {
        CGRectGetMaxY(*&v95);
      }

      v79 = v178;
      v80 = v170;
      v78 = v180;
    }

    sub_B170(v74, v74[3]);
    v77 = v175;
    sub_769D20();
    sub_766530();
    Width = v156;
  }

  v200.origin.x = v80;
  v200.origin.y = v79;
  v200.size.width = v77;
  v200.size.height = v78;
  v129 = CGRectGetWidth(v200);
  v201.origin.x = v179;
  v201.origin.y = v173;
  v201.size.width = Width;
  v201.size.height = v176;
  v130 = v77;
  v131 = v129 - CGRectGetWidth(v201);
  *&v181 = v72;
  sub_BD88(&qword_940AD0, &unk_78F910);
  sub_7592B0();
  if (v131 - v183 > 0.0)
  {
    v132 = v131 - v183;
  }

  else
  {
    v132 = 0.0;
  }

  v202.origin.x = v80;
  v202.origin.y = v79;
  v202.size.width = v77;
  v133 = v180;
  v202.size.height = v180;
  CGRectGetHeight(v202);
  v134 = v163;
  v135 = v168;
  sub_7665A0();
  v136 = Width;
  v138 = v137;
  v140 = v139;
  v177 = v141;
  v203.origin.x = v80;
  v203.origin.y = v79;
  v203.size.width = v130;
  v203.size.height = v133;
  MinX = CGRectGetMinX(v203);
  v204.origin.x = v179;
  v204.origin.y = v173;
  v204.size.width = v136;
  v204.size.height = v176;
  MinY = CGRectGetMinY(v204);
  if (v132 < v138)
  {
    v138 = v132;
  }

  v205.origin.x = MinX;
  v205.origin.y = MinY;
  v205.size.width = v138;
  v205.size.height = v140;
  v179 = CGRectGetMaxY(v205) - v177;
  sub_769D20();
  sub_766530();
  v206.origin.x = v80;
  v144 = v178;
  v206.origin.y = v178;
  v206.size.width = v130;
  v145 = v180;
  v206.size.height = v180;
  CGRectGetHeight(v206);
  v146 = v165;
  v147 = v169;
  sub_7665A0();
  v176 = v148;
  v207.origin.x = v80;
  v207.origin.y = v144;
  v207.size.width = v130;
  v207.size.height = v145;
  v177 = CGRectGetMinX(v207);
  sub_B170((a12 + v76[21]), *(a12 + v76[21] + 24));
  sub_766720();
  sub_769D20();
  sub_766530();
  (*(v164 + 8))(v134, v135);
  return (*(v166 + 8))(v146, v147);
}

double sub_2E9F00(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_76A920();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v25 = sub_7699E0();

  v16 = *(a2 + 56);
  sub_B170((a2 + 32), v16);
  sub_33964(v16);
  sub_766700();
  v17 = *(v11 + 8);
  v17(v14, v10);
  v18 = *(a2 + 96);
  sub_B170((a2 + 72), v18);
  sub_33964(v18);
  sub_766700();
  v17(v14, v10);
  v19 = a4 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v20 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v26 = a1;
  sub_BD88(&qword_940AD0, &unk_78F910);
  sub_7592B0();
  v24 = a3;
  sub_2EA2E8(a1, a2, a3, v19 - v27, a5);
  v21 = (a2 + *(v20 + 96));
  v22 = v21[3];
  sub_B170(v21, v22);
  sub_33964(v22);
  sub_766700();
  v17(v14, v10);
  if (v25 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_2EA88C(a1, a2, v24, a4, a5);
  }

  return a4;
}

uint64_t sub_2EA218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2EA280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_2EA2E8(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_76A920();
  v56 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_7699E0();

  v57 = type metadata accessor for ProductLockupLayout(0);
  v16 = v57[10];
  sub_1ED18(a2 + v16, v58, &unk_943B10, &qword_77E080);
  if (v59)
  {
    sub_B170(v58, v59);
    sub_7665B0();
    v18 = v17;
    sub_BEB8(v58);
  }

  else
  {
    sub_10A2C(v58, &unk_943B10, &qword_77E080);
    v18 = 0.0;
  }

  v19 = sub_2EB7F4(a1, a2, a4, a5);
  sub_1ED18(a2 + v16, v58, &unk_943B10, &qword_77E080);
  v20 = v59;
  sub_10A2C(v58, &unk_943B10, &qword_77E080);
  if (v20)
  {
    v21 = v57;
    if ((v15 & 1) == 0)
    {
      if (*(a2 + v57[15]))
      {
        v22 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92));
        v23 = v22[3];
        sub_B170(v22, v23);
        sub_33964(v23);
        sub_766700();
        v25 = v24;
        (*(v56 + 8))(v13, v10);
        v19 = v19 + v18 + v25;
      }

LABEL_9:
      if (*(a2 + v21[15]))
      {
        return v19;
      }
    }
  }

  else
  {
    v21 = v57;
    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v54 = *(a2 + 120);
  v26 = (a2 + v21[11]);
  v27 = v26[3];
  v53 = v26;
  sub_B170(v26, v27);
  sub_7665B0();
  v29 = v28;
  sub_1ED18(a2 + v16, v58, &unk_943B10, &qword_77E080);
  v30 = v59;
  sub_10A2C(v58, &unk_943B10, &qword_77E080);
  v55 = a3;
  if (v30)
  {
    v31 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80));
    v32 = v31[3];
    sub_B170(v31, v32);
    sub_33964(v32);
    sub_766700();
    v33 = a1;
    v34 = v56;
    (*(v56 + 8))(v13, v10);
    v35 = v10;
  }

  else
  {
    v35 = v10;
    v33 = a1;
    v34 = v56;
  }

  v52 = a2;
  v56 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v36 = a2 + *(v56 + 76);
  v37 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v38 = (v36 + *(v37 + 28));
  v39 = v38[3];
  sub_B170(v38, v39);
  sub_33964(v39);
  sub_766700();
  v40 = *(v34 + 8);
  v40(v13, v35);
  v41 = v40;
  v42 = (v36 + *(v37 + 24));
  v43 = v42[3];
  sub_B170(v42, v43);
  sub_33964(v43);
  sub_766700();
  v40(v13, v35);
  v44 = v52;
  sub_B170((v52 + v57[12]), *(v52 + v57[12] + 24));
  sub_7665B0();
  v46 = v45;
  sub_B170(v53, v53[3]);
  if (sub_766540())
  {
    v29 = v46;
  }

  v47 = (v44 + *(v56 + 72));
  v48 = v47[3];
  sub_B170(v47, v48);
  sub_33964(v48);
  sub_766700();
  v50 = v49;
  v41(v13, v35);
  if (v19 < v54 - v50 - v29)
  {
    v19 = v54 - v50 - v29;
  }

  return sub_2EA88C(v33, v44, v55, a4, a5) + v19;
}