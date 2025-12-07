void sub_1000CAAB0()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_vibrancyView];
  if (v1)
  {
    v6 = v1;
    v2 = [v6 contentView];
    [v2 addSubview:*&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel]];

    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
    if (v3)
    {
      v4 = [v3 contentView];
      [v4 addSubview:v6];
    }
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];

    [v0 addSubview:v5];
  }
}

void sub_1000CAC84(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v4)
  {
    if (!a1 || (type metadata accessor for AppEventLiveIndicatorAnimationCoordinator(), v6 = v4, v7 = a1, v8 = sub_100753FC4(), v6, v7, (v8 & 1) == 0) && (v4 = *(v2 + v3)) != 0)
    {
      v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView);
      if (v9)
      {
        swift_beginAccess();
        v10 = v9;
        v11 = v4;
        v12 = sub_1000CCCD4(v10);
        swift_endAccess();
      }

      else
      {
        v13 = v4;
      }

      v14 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
      swift_beginAccess();
      v15 = *&v4[v14];
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = sub_100754434();

        if (v16)
        {
LABEL_11:

          return;
        }
      }

      else if (*(v15 + 16))
      {
        goto LABEL_11;
      }

      sub_1001A5FF8();
      goto LABEL_11;
    }
  }
}

void sub_1000CADE8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
      v6 = v5;
      v7 = a1;
      v8 = sub_100753FC4();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = *(v2 + v4);
  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_showLiveIndicator) != 1)
  {
    if (!v9)
    {
      return;
    }

    v12 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView);
    if (v12)
    {
      swift_beginAccess();
      v13 = v12;
      v14 = v9;
      v15 = sub_1000CCCD4(v13);
      swift_endAccess();
    }

    else
    {
      v16 = v9;
    }

    v17 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v18 = *&v9[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v19 = sub_100754434();

      if (v19)
      {
LABEL_18:

        return;
      }
    }

    else if (*(v18 + 16))
    {
      goto LABEL_18;
    }

    sub_1001A5FF8();
    goto LABEL_18;
  }

  if (v9)
  {
    v10 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView);
    v11 = v9;
    v20 = v10;
    sub_1001A5BA4(v10);
  }
}

void sub_1000CAFC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100743584();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100750354();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v99 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100741574();
  v97 = *(v7 - 8);
  v98 = v7;
  __chkstk_darwin(v7);
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100754724();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v1;
  v109.super_class = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v11);
  v81 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
  if (v14)
  {
    v15 = v14;
    if (![v15 isHidden])
    {
      goto LABEL_7;
    }
  }

  v16 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v14 = *&v1[v16];
  if (v14)
  {
    v17 = v14;
    if ([v17 isHidden])
    {

      v14 = 0;
    }
  }

LABEL_7:
  v103 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style;
  v18 = v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style];
  if (v18 > 3)
  {
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] > 5u)
    {
      if (v18 == 6)
      {
        if (qword_1009201B0 != -1)
        {
          swift_once();
        }

        v19 = &unk_10097D7B0;
      }

      else
      {
        if (qword_1009201B8 != -1)
        {
          swift_once();
        }

        v19 = &unk_10097D858;
      }
    }

    else if (v18 == 4)
    {
      if (qword_1009201A0 != -1)
      {
        swift_once();
      }

      v19 = &unk_10097D660;
    }

    else
    {
      if (qword_1009201A8 != -1)
      {
        swift_once();
      }

      v19 = &unk_10097D708;
    }
  }

  else if (v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] > 1u)
  {
    if (v18 == 2)
    {
      if (qword_100920190 != -1)
      {
        swift_once();
      }

      v19 = &unk_10097D510;
    }

    else
    {
      if (qword_100920198 != -1)
      {
        swift_once();
      }

      v19 = &unk_10097D5B8;
    }
  }

  else if (v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style])
  {
    if (qword_100920188 != -1)
    {
      swift_once();
    }

    v19 = &unk_10097D468;
  }

  else
  {
    if (qword_100920180 != -1)
    {
      swift_once();
    }

    v19 = &unk_10097D3C0;
  }

  sub_1000CD660(v19, v107);
  if (qword_1009201C0 != -1)
  {
    swift_once();
  }

  v20 = sub_100750B04();
  v21 = sub_10000D0FC(v20, qword_100927068);
  sub_1007502D4();
  v83 = v21;
  v84 = v20;
  sub_100750564();
  v23 = v22;
  v25 = *(v10 + 8);
  v24 = v10 + 8;
  v82 = v25;
  v25(v13, v9);
  v107[15] = v23;
  v107[16] = v23;
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
  v27 = sub_100745C84();
  v106[4] = &protocol witness table for UILabel;
  v106[3] = v27;
  v106[0] = v26;
  v95 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView;
  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView];
  if (v28)
  {
    v94 = sub_100746ED4();
    v93 = &protocol witness table for UIView;
  }

  else
  {
    v93 = 0;
    v94 = 0;
  }

  v104 = v14;
  v85 = v13;
  if (v14)
  {
    v92 = sub_100016C60(0, &qword_100922300, UIView_ptr);
    v91 = &protocol witness table for UIView;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v86 = v24;
  v87 = v9;
  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_vibrancyView];
  if (v29)
  {
    v30 = sub_100016C60(0, &qword_100927120, UIVisualEffectView_ptr);
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  sub_1000CD660(v107, v105);
  v32 = v29;
  v33 = v26;
  v34 = v28;
  v102 = v104;
  v35 = v96;
  sub_100741544();
  v36 = sub_100741554();
  (*(v97 + 8))(v35, v98);
  if (v36)
  {
    sub_100750884();
    sub_1000CD6BC(v107);
  }

  else
  {
    sub_1000CD6BC(v107);
    sub_10000C824(v106, &v105[21]);
  }

  v105[26] = v28;
  v105[27] = 0;
  v105[28] = 0;
  v105[29] = v94;
  v105[30] = v93;
  v105[31] = v104;
  v105[32] = 0;
  v105[33] = 0;
  v105[34] = v92;
  v105[35] = v91;
  v105[36] = v29;
  v105[37] = 0;
  v105[38] = 0;
  v105[39] = v30;
  v105[40] = v31;
  memcpy(v108, v105, sizeof(v108));
  sub_10000C620(v106);
  [v1 bounds];
  v37 = v99;
  AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(v1, v38, v39, v40, v41);
  (*(v100 + 8))(v37, v101);
  v42 = *&v1[v95];
  v43 = v103;
  if (v42)
  {
    v44 = v1[v103];
    if (v44 > 3)
    {
      v45 = v85;
      if (v1[v103] > 5u)
      {
        if (v44 == 6)
        {
          v53 = qword_1009201B0;
          v54 = v42;
          if (v53 != -1)
          {
            swift_once();
          }

          v48 = &unk_10097D7B0;
        }

        else
        {
          v61 = qword_1009201B8;
          v62 = v42;
          if (v61 != -1)
          {
            swift_once();
          }

          v48 = &unk_10097D858;
        }
      }

      else if (v44 == 4)
      {
        v49 = qword_1009201A0;
        v50 = v42;
        if (v49 != -1)
        {
          swift_once();
        }

        v48 = &unk_10097D660;
      }

      else
      {
        v57 = qword_1009201A8;
        v58 = v42;
        if (v57 != -1)
        {
          swift_once();
        }

        v48 = &unk_10097D708;
      }
    }

    else
    {
      v45 = v85;
      if (v1[v103] > 1u)
      {
        if (v44 == 2)
        {
          v51 = qword_100920190;
          v52 = v42;
          if (v51 != -1)
          {
            swift_once();
          }

          v48 = &unk_10097D510;
        }

        else
        {
          v59 = qword_100920198;
          v60 = v42;
          if (v59 != -1)
          {
            swift_once();
          }

          v48 = &unk_10097D5B8;
        }
      }

      else if (v1[v103])
      {
        v55 = qword_100920188;
        v56 = v42;
        if (v55 != -1)
        {
          swift_once();
        }

        v48 = &unk_10097D468;
      }

      else
      {
        v46 = qword_100920180;
        v47 = v42;
        if (v46 != -1)
        {
          swift_once();
        }

        v48 = &unk_10097D3C0;
      }
    }

    sub_1000CD660(v48, v105);
    sub_1007502D4();
    sub_100750564();
    v64 = v63;
    v82(v45, v87);
    v105[15] = v64;
    v105[16] = v64;
    sub_1000CD6BC(v105);
    v66 = v88;
    v65 = v89;
    v67 = v90;
    (*(v89 + 104))(v88, enum case for CornerStyle.arc(_:), v90);
    sub_100746E44();

    (*(v65 + 8))(v66, v67);
  }

  v68 = v102;
  if (v1[v43] != 1)
  {

    goto LABEL_100;
  }

  if (!v104)
  {
LABEL_100:
    sub_1000CD59C(v108);
    return;
  }

  [v102 bounds];
  v70 = v69 * 0.5;
  v71 = *&v1[v81];
  if (!v71)
  {
    goto LABEL_98;
  }

  v72 = v1[v43];
  if (v72 <= 2)
  {
    goto LABEL_96;
  }

  if (v1[v43] <= 5u)
  {
    if (v72 - 3 < 2)
    {
      goto LABEL_95;
    }

LABEL_96:
    v73 = v71;
    goto LABEL_97;
  }

  if (v72 != 6)
  {
    goto LABEL_96;
  }

LABEL_95:
  v73 = v71;
  v74 = [v1 traitCollection];
  sub_1007537F4();

LABEL_97:
  [v73 _setCornerRadius:1 continuous:sub_1007535E4() maskedCorners:v70];

LABEL_98:
  v75 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v76 = *&v1[v75];
  if (v76)
  {
    swift_endAccess();
    v78 = v88;
    v77 = v89;
    v79 = v90;
    (*(v89 + 104))(v88, enum case for CornerStyle.continuous(_:), v90);
    v80 = v76;
    sub_100746E44();

    (*(v77 + 8))(v78, v79);
    goto LABEL_100;
  }

  sub_1000CD59C(v108);
  swift_endAccess();
}

uint64_t sub_1000CBC6C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_100741574();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style);
  if (v10 > 3)
  {
    if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style) > 5u)
    {
      if (v10 == 6)
      {
        if (qword_1009201B0 != -1)
        {
          swift_once();
        }

        v11 = &unk_10097D7B0;
      }

      else
      {
        if (qword_1009201B8 != -1)
        {
          swift_once();
        }

        v11 = &unk_10097D858;
      }
    }

    else if (v10 == 4)
    {
      if (qword_1009201A0 != -1)
      {
        swift_once();
      }

      v11 = &unk_10097D660;
    }

    else
    {
      if (qword_1009201A8 != -1)
      {
        swift_once();
      }

      v11 = &unk_10097D708;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style) > 1u)
  {
    if (v10 == 2)
    {
      if (qword_100920190 != -1)
      {
        swift_once();
      }

      v11 = &unk_10097D510;
    }

    else
    {
      if (qword_100920198 != -1)
      {
        swift_once();
      }

      v11 = &unk_10097D5B8;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style))
  {
    if (qword_100920188 != -1)
    {
      swift_once();
    }

    v11 = &unk_10097D468;
  }

  else
  {
    if (qword_100920180 != -1)
    {
      swift_once();
    }

    v11 = &unk_10097D3C0;
  }

  sub_1000CD660(v11, v37);
  if (qword_1009201C0 != -1)
  {
    swift_once();
  }

  v12 = sub_100750B04();
  sub_10000D0FC(v12, qword_100927068);
  sub_1007502D4();
  sub_100750564();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v37[15] = v14;
  v37[16] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel);
  v36[3] = sub_100745C84();
  v36[4] = &protocol witness table for UILabel;
  v36[0] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView);
  if (v16)
  {
    v31 = sub_100746ED4();
    v30 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v17 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView);
  if (v17)
  {
    v18 = sub_100016C60(0, &qword_100927120, UIVisualEffectView_ptr);
    v29 = &protocol witness table for UIView;
  }

  else
  {
    v18 = 0;
    v29 = 0;
  }

  v19 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_vibrancyView);
  if (v19)
  {
    v20 = sub_100016C60(0, &qword_100927120, UIVisualEffectView_ptr);
    v21 = &protocol witness table for UIView;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_1000CD660(v37, v35);
  v22 = v19;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v5;
  sub_100741544();
  v27 = sub_100741554();
  (*(v32 + 8))(v26, v33);
  if (v27)
  {
    sub_100750884();
    sub_1000CD6BC(v37);
  }

  else
  {
    sub_1000CD6BC(v37);
    sub_10000C824(v36, &v35[21]);
  }

  v35[26] = v16;
  v35[27] = 0;
  v35[28] = 0;
  v35[29] = v31;
  v35[30] = v30;
  v35[31] = v17;
  v35[32] = 0;
  v35[33] = 0;
  v35[34] = v18;
  v35[35] = v29;
  v35[36] = v19;
  v35[37] = 0;
  v35[38] = 0;
  v35[39] = v20;
  v35[40] = v21;
  memcpy(v34, v35, 0x148uLL);
  return sub_10000C620(v36);
}

double sub_1000CC2CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_100752404();
  __chkstk_darwin(v8 - 8);

  sub_1000C9098(a1, a2);
  v9 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_showLiveIndicator);
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_showLiveIndicator) = a3;
  sub_1000C91F8(v9);
  v10 = v4 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v4, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100921ED0 != -1)
    {
      swift_once();
    }

    v14 = sub_100752E44();
    sub_10000D0FC(v14, qword_1009832E8);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v16._object = 0x8000000100769BD0;
    v16._countAndFlagsBits = 0xD000000000000014;
    sub_1007523E4(v16);
    sub_1007523D4();
    v17._countAndFlagsBits = 0xD000000000000050;
    v17._object = 0x8000000100769BF0;
    sub_1007523E4(v17);
    sub_100752414();
    sub_100752D14();
  }

  return result;
}

double sub_1000CC5BC(void *a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_100753804();

  if (!a1 || ((sub_100753804() ^ v5) & 1) != 0)
  {
    goto LABEL_3;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_100753094();
  v12 = v11;
  if (v10 == sub_100753094() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_100754754();

    if ((v14 & 1) == 0)
    {
LABEL_3:
      sub_1000CA500();
    }
  }

  return result;
}

void sub_1000CC798()
{
  v1 = v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_showLiveIndicator];
  v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_showLiveIndicator] = 0;
  sub_1000C91F8(v1);
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v0 setNeedsLayout];
  }

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView];
    if (v5)
    {
      swift_beginAccess();
      v6 = v5;
      v7 = v4;
      v8 = sub_1000CCCD4(v6);
      swift_endAccess();
    }

    else
    {
      v9 = v4;
    }

    v10 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v11 = *&v4[v10];
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = sub_100754434();

      if (v12)
      {
LABEL_10:

        return;
      }
    }

    else if (*(v11 + 16))
    {
      goto LABEL_10;
    }

    sub_1001A5FF8();
    goto LABEL_10;
  }
}

uint64_t getEnumTagSinglePayload for AppPromotionFormattedDateView.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppPromotionFormattedDateView.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000CCA98()
{
  result = qword_100927118;
  if (!qword_100927118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927118);
  }

  return result;
}

double sub_1000CCAEC()
{
  swift_beginAccess();

  return result;
}

double sub_1000CCB34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double sub_1000CCBF4(void *a1, double a2, double a3)
{
  sub_1000CBC6C(v10);
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5CF0;
  *(v4 + 32) = a1;
  v5 = a1;
  v6 = sub_100751044();
  sub_1000CD178(v6, v10);
  v8 = v7;

  sub_1000CD59C(v10);
  return v8;
}

uint64_t sub_1000CCCD4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_100754474();

    if (v6)
    {
      v7 = sub_1000CCE6C(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v10 = sub_100753FB4(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_100753FC4();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001A819C();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1000CCFD4(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1000CCE6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_100754434();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1001A7408(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = sub_100753FB4(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_100753FC4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_1000CCFD4(v10);
  result = sub_100753FC4();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000CCFD4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1007543C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_100753FB4(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_1000CD178(uint64_t a1, void *a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[17];
  v10[0] = a2[18];
  v10[1] = v7;
  sub_100753BA4();
  sub_1000CD5F0((a2 + 26), &v11);
  if (v12)
  {
    sub_100012160(&v11, v13);
    sub_10000C888(v13, v13[3]);
    if ((sub_1007503A4() & 1) == 0)
    {
      v8 = a2[13];
      sub_10000C888(a2 + 10, v8);
      sub_100536120(v8);
      sub_100750564();
      (*(v4 + 8))(v6, v3);
    }

    sub_10000C620(v13);
  }

  else
  {
    sub_10000C8CC(&v11, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_10000C888(a2 + 21, a2[24]);
  sub_100750404();
  sub_10000C888(a2, a2[3]);
  sub_100750584();
  v9 = a2[8];
  sub_10000C888(a2 + 5, v9);
  sub_100536120(v9);
  sub_100750564();
  (*(v4 + 8))(v6, v3);
  sub_100753BC4();
}

void sub_1000CD474()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView);
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v3)
  {
    v4 = *(v0 + v1);
    if (v4)
    {
      swift_beginAccess();
      v5 = v4;
      v6 = v3;
      v7 = sub_1000CCCD4(v5);
      swift_endAccess();
    }

    else
    {
      v8 = v3;
    }

    v9 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v10 = *&v3[v9];
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = sub_100754434();

      if (v11)
      {
LABEL_10:

        return;
      }
    }

    else if (*(v10 + 16))
    {
      goto LABEL_10;
    }

    sub_1001A5FF8();
    goto LABEL_10;
  }
}

uint64_t sub_1000CD5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100928A00, &qword_1007A5AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000CD710()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_showLiveIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_blurredBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_vibrancyView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1000CD7E8(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  [*&v3[qword_100924670] setHidden:(sub_100744434() & 1) == 0];
  v7 = *&v3[qword_100924678];
  sub_100744454();
  if (v8)
  {
    v9 = sub_100753064();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  sub_10000D198();
  if (a3)
  {
    v10 = [objc_allocWithZone(UIColor) initWithRed:0.388235294 green:0.388235294 blue:0.4 alpha:1.0];
    v11 = [objc_allocWithZone(UIColor) initWithRed:0.282352941 green:0.282352941 blue:0.290196078 alpha:1.0];
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.682352941 green:0.682352941 blue:0.698039216 alpha:1.0];
    v13.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
    v14.super.isa = v10;
    v15.super.isa = v11;
    v16.super.isa = v12;
    v17.super.isa = sub_100753F14(v14, v15, v16, v13).super.isa;
  }

  else
  {
    v17.super.isa = sub_100753DF4();
  }

  isa = v17.super.isa;
  [v7 setTextColor:v17.super.isa];

  v19 = v4[qword_100924688];
  v4[qword_100924688] = a2 & 1;
  if (v19 != (a2 & 1))
  {
    if (a2)
    {
      v20 = 0;
    }

    else
    {
      v20 = 6;
    }

    [v7 setNumberOfLines:v20];
    [v4 setNeedsLayout];
  }

  return sub_100750B34();
}

unint64_t sub_1000CDA04()
{
  result = qword_100927128;
  if (!qword_100927128)
  {
    type metadata accessor for EditorialStoryCardCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927128);
  }

  return result;
}

double sub_1000CDA5C()
{
  v0 = sub_1007504F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100747C14();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  sub_100747B84();
  sub_10074F674();
  (*(v8 + 8))(v10, v7);
  sub_100747BA4();
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_100921C80 != -1)
    {
      swift_once();
    }

    v14 = qword_100944288;
  }

  else
  {
    if (qword_100921C78 != -1)
    {
      swift_once();
    }

    v14 = qword_100944270;
  }

  v15 = sub_10000D0FC(v0, v14);
  (*(v1 + 16))(v3, v15, v0);
  (*(v1 + 32))(v6, v3, v0);
  sub_1007504C4();
  v17 = v16;
  (*(v1 + 8))(v6, v0);
  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v20);
  return round(v17);
}

double sub_1000CDD94()
{
  v0 = sub_1007504F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  (*(v8 + 8))(v10, v7);
  sub_100747BA4();
  if (JUScreenClassGetMain() == 1)
  {
    if (qword_100921C80 != -1)
    {
      swift_once();
    }

    v11 = qword_100944288;
  }

  else
  {
    if (qword_100921C78 != -1)
    {
      swift_once();
    }

    v11 = qword_100944270;
  }

  v12 = sub_10000D0FC(v0, v11);
  (*(v1 + 16))(v3, v12, v0);
  (*(v1 + 32))(v6, v3, v0);
  sub_1007504C4();
  v14 = v13;
  (*(v1 + 8))(v6, v0);
  swift_unknownObjectRelease();
  return round(v14);
}

uint64_t sub_1000CE058(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750B04();
  sub_100039C50(v8, a3);
  sub_10000D0FC(v8, a3);
  if (qword_1009201F8 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  v10 = sub_10000D0FC(v9, qword_10097D930);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_100750B14();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000CE234()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_10097D930);
  v1 = sub_10000D0FC(v0, qword_10097D930);
  if (qword_100921468 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100981A70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000CE3B4()
{
  v1 = v0;
  sub_10000C518(&unk_100929CA0, &qword_1007A6610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = NSFontAttributeName;
  v3 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v4 = qword_1009201F8;
  v5 = NSFontAttributeName;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  sub_10000D0FC(v6, qword_10097D930);
  v7 = [v1 traitCollection];
  v8 = sub_100753C14();

  *(inited + 64) = v3;
  *(inited + 40) = v8;
  v9 = sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C8CC(inited + 32, &unk_100923510, &unk_1007A6620);
  v10 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v11 = v10;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_isCentered) == 1)
  {
    [v10 setAlignment:1];
  }

  else
  {
    v12 = [v1 traitCollection];
    v13 = sub_1007537F4();

    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    [v11 setAlignment:v14];
  }

  v28 = sub_100016C60(0, &qword_10093F2D0, NSMutableParagraphStyle_ptr);
  *&v27 = v11;
  sub_10000C610(&v27, v26);
  v15 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1006734F4(v26, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
  v17 = v9;
  v29 = v9;
  v18 = NSForegroundColorAttributeName;
  v19 = [v1 tintColor];
  if (v19)
  {
    v20 = v19;
    v28 = sub_100016C60(0, &qword_100923500, UIColor_ptr);
    *&v27 = v20;
    sub_10000C610(&v27, v26);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1006734F4(v26, v18, v21);

    v29 = v17;
  }

  else
  {
    sub_1003DD56C(&v27);

    sub_10000C8CC(&v27, &unk_100923520, &qword_1007A5A70);
  }

  v22 = objc_allocWithZone(NSAttributedString);

  v23 = sub_100753064();

  type metadata accessor for Key(0);
  sub_1000CF6A4(&qword_1009276F0, type metadata accessor for Key, &unk_1007A543C);
  isa = sub_100752F34().super.isa;

  v25 = [v22 initWithString:v23 attributes:isa];

  sub_100745C24();
  [v1 setNeedsLayout];
}

void sub_1000CE7C0()
{
  ObjectType = swift_getObjectType();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = ObjectType;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000CF79C;
  *(v4 + 24) = v3;
  v8[4] = sub_100045E0C;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10011B528;
  v8[3] = &unk_1008672D0;
  v5 = _Block_copy(v8);
  v6 = v0;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_1000CE940(uint64_t a1, uint64_t a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_titleLabel);
  sub_1007477B4();
  [v7 sizeThatFits:{v8, v9}];
  sub_1007477B4();
  CGRectGetWidth(v14);
  sub_1007477B4();
  CGRectGetMinX(v15);
  sub_1007477B4();
  CGRectGetMinY(v16);
  if (qword_1009201E8 != -1)
  {
    swift_once();
  }

  v10 = sub_100750B04();
  sub_10000D0FC(v10, qword_10097D900);
  sub_1007502D4();
  v11 = [v7 traitCollection];
  sub_100750AD4();

  [v7 firstBaselineFromTop];
  (*(v4 + 8))(v6, v3);
  sub_1007477B4();
  sub_100753B24();
  return [v7 setFrame:?];
}

void sub_1000CEC24()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "tintColorDidChange");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_titleLabel];
  v3 = [v2 attributedText];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 tintColor];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v4];
      v8 = [v4 length];
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1000CF72C;
      *(v10 + 24) = v9;
      v14[4] = sub_1000CF744;
      v14[5] = v10;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_1001529B4;
      v14[3] = &unk_100867258;
      v11 = _Block_copy(v14);
      v12 = v7;
      v13 = v6;

      [v4 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v8 usingBlock:{0x100000, v11}];

      _Block_release(v11);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        [v2 setAttributedText:v12];

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

double sub_1000CEEB8()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_text];
  *v1 = 0;
  *(v1 + 1) = 0;

  sub_1000CE3B4();
  v0[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_isCentered] = 0;
  sub_1000CE3B4();
  v2 = &v0[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_buttonAction];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_buttonAction];
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_buttonAction + 8];
  *v2 = 0;
  *(v2 + 1) = 0;
  return sub_1000164A8(v3, v4);
}

void sub_1000CF0D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10074AB44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_tapGestureRecognizer] = 0;
  v1[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_isCentered] = 0;
  v10 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_text];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_buttonAction];
  *v11 = 0;
  v11[1] = 0;
  if (qword_1009201F8 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_10097D930);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v9, v13, v12);
  (*(v14 + 56))(v9, 0, 1, v12);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.none(_:), v3);
  v15 = objc_allocWithZone(sub_100745C84());
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_titleLabel] = sub_100745C74();
  v24.receiver = v1;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_titleLabel;
  v18 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_titleLabel];
  v19 = v16;
  [v19 addSubview:v18];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v19 action:"buttonTapped"];
  v21 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_tapGestureRecognizer];
  *&v19[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_tapGestureRecognizer] = v20;
  v22 = v20;

  if (v22)
  {
    v23 = *&v16[v17];
    [v23 addGestureRecognizer:v22];

    [*&v16[v17] setUserInteractionEnabled:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000CF40C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a2)
  {
    if (qword_1009201F8 != -1)
    {
      swift_once();
    }

    v8 = sub_100750534();
    sub_10000D0FC(v8, qword_10097D930);
    v9 = sub_10074F3F4();
    v12[3] = v9;
    v12[4] = sub_1000CF6A4(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v10 = sub_10000D134(v12);
    (*(*(v9 - 8) + 104))(v10, enum case for Feature.measurement_with_labelplaceholder(_:), v9);
    sub_10074FC74();
    sub_10000C620(v12);
    sub_10074CCB4();
    if (qword_1009201E8 != -1)
    {
      swift_once();
    }

    v11 = sub_100750B04();
    sub_10000D0FC(v11, qword_10097D900);
    sub_100750584();
    if (qword_1009201F0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v11, qword_10097D918);
    sub_100750554();
  }
}

uint64_t sub_1000CF6A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000CF6EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000CF74C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000CF764()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000CF7B0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_1000CF7F4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v43 = a3;
  v44 = a2;
  v6 = sub_1007521E4();
  v51 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100752224();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10074ED34();
  v9 = *(v53 - 8);
  __chkstk_darwin(v53);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100927230, qword_1007AA6E0);
  v45 = sub_100752DE4();
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  v46 = a1;
  if (v12)
  {
    v41 = v3;
    v42 = v6;
    v60 = _swiftEmptyArrayStorage;
    sub_10001E1E8(0, v12, 0);
    v13 = v60;
    v14 = *(sub_100749784() - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = (v9 + 8);
    v52 = *(v14 + 72);
    do
    {
      sub_100749764();
      v17 = sub_10074ECF4();
      v19 = v18;
      (*v16)(v11, v53);
      aBlock = v17;
      v55 = v19;
      v61._countAndFlagsBits = 8250;
      v61._object = 0xE200000000000000;
      sub_1007531B4(v61);
      v20._countAndFlagsBits = sub_100749724();
      if (v20._object)
      {
        object = v20._object;
      }

      else
      {
        v20._countAndFlagsBits = 0x746C7561666564;
        object = 0xE700000000000000;
      }

      v20._object = object;
      sub_1007531B4(v20);

      v22 = aBlock;
      v23 = v55;
      v60 = v13;
      v25 = v13[2];
      v24 = v13[3];
      if (v25 >= v24 >> 1)
      {
        sub_10001E1E8((v24 > 1), v25 + 1, 1);
        v13 = v60;
      }

      v13[2] = v25 + 1;
      v26 = &v13[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      v15 += v52;
      --v12;
    }

    while (v12);
    v4 = v41;
    v6 = v42;
  }

  aBlock = v13;
  sub_10000C518(&unk_100928A70, &unk_1007AC470);
  sub_10002DDC8(&qword_10092FA00, &unk_100928A70, &unk_1007AC470, &protocol conformance descriptor for [A]);
  v27 = sub_100752FF4();
  v29 = v28;

  if (qword_100921EF0 != -1)
  {
    swift_once();
  }

  v30 = sub_100752E44();
  sub_10000D0FC(v30, qword_100983348);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A97A0;
  sub_100752434();
  sub_1007523A4();
  sub_1007523A4();
  v57 = &type metadata for String;
  aBlock = v27;
  v55 = v29;
  sub_100752424();
  sub_1000277BC(&aBlock);
  sub_100752CE4();

  v31 = *(v4 + 16);
  v32 = swift_allocObject();
  v33 = v44;
  v34 = v45;
  *(v32 + 16) = v31;
  *(v32 + 24) = v33;
  *(v32 + 32) = v46;
  *(v32 + 40) = v34;
  *(v32 + 48) = v43 & 1;
  *(v32 + 56) = v4;
  v58 = sub_1000D1E64;
  v59 = v32;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_1000CF7B0;
  v57 = &unk_100867320;
  v35 = _Block_copy(&aBlock);
  v36 = v31;

  v37 = v47;
  sub_100752204();
  v60 = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_10002DDC8(&qword_1009236C0, &unk_10092F750, &qword_1007A6920, &protocol conformance descriptor for [A]);
  v38 = v49;
  sub_1007543A4();
  sub_100753784();
  _Block_release(v35);
  (*(v51 + 8))(v38, v6);
  (*(v48 + 8))(v37, v50);

  return v34;
}

void sub_1000CFEEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v51 = a6;
  v50 = a5;
  v60 = a3;
  v9 = sub_10074D404();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v57 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100749784();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v55 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v54 = &v49[-v14];
  v15 = sub_10074ED34();
  v67 = *(v15 - 8);
  __chkstk_darwin(v15);
  v53 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10074A0D4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v68 = &v49[-v22];
  v23 = *(a2 + 16);
  v61 = a1;
  v62 = a4;
  if (v23)
  {
    v52 = v11;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1007545C4();
    v25 = *(v18 + 16);
    v24 = (v18 + 16);
    v26 = (a2 + ((v24[64] + 32) & ~v24[64]));
    v65 = *(v24 + 7);
    v66 = v25;
    v27 = v68;
    v63 = v15;
    v64 = (v67 + 8);
    v67 = v24;
    v28 = v24 - 8;
    v29 = v53;
    do
    {
      v30 = v66;
      v66(v27, v26, v17);
      v30(v20, v27, v17);
      v31 = objc_allocWithZone(ADAppRepresentation);
      sub_10074A0C4();
      sub_10074ECF4();
      (*v64)(v29, v63);
      v32 = sub_100753064();

      sub_10074A0B4();
      isa = sub_100752F34().super.isa;

      [v31 initWithAdamID:v32 assetInformation:isa];

      v27 = v68;
      v34 = *v28;
      (*v28)(v20, v17);
      v34(v27, v17);
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      v26 += v65;
      --v23;
    }

    while (v23);
    a1 = v61;
    a4 = v62;
    v11 = v52;
  }

  sub_100016C60(0, &qword_100927238, ADAppRepresentation_ptr);
  v35 = sub_100753294().super.isa;

  [a1 setOrganics:v35];

  v36 = v60;
  v37 = *(v60 + 16);
  if (v37)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1007545C4();
    v38 = sub_100016C60(0, &qword_100927240, ADAppAdvertisement_ptr);
    v39 = v55;
    v67 = *(v56 + 16);
    v68 = v38;
    v40 = v36 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v66 = *(v56 + 72);
    v41 = (v56 + 8);
    v42 = v54;
    do
    {
      v43 = v67;
      (v67)(v42, v40, v11);
      v43(v39, v42, v11);
      sub_1000D0688(v39);
      (*v41)(v42, v11);
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      v40 += v66;
      --v37;
    }

    while (v37);
    a1 = v61;
    a4 = v62;
  }

  sub_100016C60(0, &qword_100927240, ADAppAdvertisement_ptr);
  v44 = sub_100753294().super.isa;

  v45 = [a1 setAdvertisementsWithPolicy:v44];

  if (v45)
  {
    v46 = v57;
    sub_10074D3F4();
    sub_100752DB4();
    (*(v58 + 8))(v46, v59);
  }

  else
  {
    v47 = swift_allocObject();
    *(v47 + 16) = v50 & 1;
    *(v47 + 24) = v51;
    *(v47 + 32) = a4;
    aBlock[4] = sub_1000D1ED0;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D1CEC;
    aBlock[3] = &unk_100867370;
    v48 = _Block_copy(aBlock);

    [a1 orderedAdsWithODMLSuccess:v48];
    _Block_release(v48);
  }
}

id sub_1000D0688(uint64_t a1)
{
  v2 = sub_10074ED34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100749764();
  sub_10074ECF4();
  (*(v3 + 8))(v5, v2);
  v6 = sub_100753064();

  if (sub_100749774())
  {
    v7.super.isa = sub_100753294().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  sub_100749724();
  if (v8)
  {
    v9 = sub_100753064();
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100749754();
  v11 = objc_allocWithZone(ADDataObject);
  isa = sub_100752F34().super.isa;

  v13 = [v11 initWith:isa andError:0];

  sub_100749714();
  v14 = sub_100753064();

  v15 = [v10 initWithAdamID:v6 cppIDs:v7.super.isa serverCppID:v9 adData:v13 instanceID:v14];

  v16 = v15;
  if (sub_100749744())
  {
    v17.super.isa = sub_100753294().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  [v16 setAppBinaryTraits:v17.super.isa];

  v18 = sub_100749784();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v16;
}

uint64_t sub_1000D0948(unint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v122 = a5;
  v123 = a4;
  v119 = a2;
  v121 = sub_10074D404();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_100752E44();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_10074ED34();
  v117 = *(v148 - 8);
  __chkstk_darwin(v148);
  v135 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = &v116 - v11;
  __chkstk_darwin(v12);
  v147 = &v116 - v13;
  v14 = sub_100742284();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v134 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v116 - v18;
  __chkstk_darwin(v20);
  v136 = &v116 - v21;
  __chkstk_darwin(v22);
  v144 = &v116 - v23;
  v24 = sub_100749784();
  v150 = *(v24 - 8);
  __chkstk_darwin(v24);
  v146 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  v138 = &v116 - v28;
  __chkstk_darwin(v29);
  v32 = &v116 - v31;
  if (!a1)
  {
    v139 = 0;
    v140 = 0;
    v149 = 0;
    v15 = 0;
    v34 = 0;
    goto LABEL_63;
  }

  v133 = v30;
  v116 = v15;
  if (a1 >> 62)
  {
    v33 = sub_100754664();
  }

  else
  {
    v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = _swiftEmptyArrayStorage;
  v151 = v24;
  v145 = v14;
  if (!v33)
  {
LABEL_14:
    v149 = v34;
    v39 = v138;
    if (a3)
    {
      v132 = v19;

      v139 = sub_100414C18(_swiftEmptyArrayStorage);
      v143 = v34[2];
      if (v143)
      {
        v40 = 0;
        v142 = (v34 + ((*(v150 + 80) + 32) & ~*(v150 + 80)));
        v141 = v150 + 16;
        v131 = (v117 + 8);
        v41 = *(v123 + 24);
        v130 = *(v123 + 32);
        v129 = (v116 + 32);
        v128 = (v116 + 8);
        v140 = (v150 + 8);
        v127 = v41;
        v42 = (v117 + 8);
        v43 = v144;
        do
        {
          if (v40 >= v34[2])
          {
            goto LABEL_69;
          }

          (*(v150 + 16))(v39, v142 + *(v150 + 72) * v40, v24);
          if (!v41)
          {
            (*v140)(v39, v24);
            goto LABEL_18;
          }

          swift_getObjectType();
          v44 = v147;
          sub_100749764();
          sub_1007424E4();
          v45 = *v42;
          v46 = v148;
          (*v42)(v44, v148);
          swift_getObjectType();
          v47 = v136;
          sub_1007423D4();
          swift_unknownObjectRelease();
          (*v129)(v43, v47, v14);
          v15 = v137;
          sub_100749764();
          v39 = sub_10074ECF4();
          v49 = v48;
          v45(v15, v46);
          v50 = sub_100742234();
          v34 = v139;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v153 = v34;
          v53 = sub_1003861D0(v39, v49);
          v54 = v34[2];
          v55 = (v52 & 1) == 0;
          v56 = v54 + v55;
          if (__OFADD__(v54, v55))
          {
            goto LABEL_70;
          }

          v15 = v52;
          if (v34[3] >= v56)
          {
            v34 = v149;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_27;
            }

            sub_100675A34();
          }

          else
          {
            sub_10067166C(v56, isUniquelyReferenced_nonNull_native);
            v57 = sub_1003861D0(v39, v49);
            if ((v15 & 1) != (v58 & 1))
            {
              goto LABEL_77;
            }

            v53 = v57;
          }

          v34 = v149;
LABEL_27:
          if (v15)
          {

            v139 = v153;
            *(v153[7] + v53) = v50 & 1;
            v14 = v145;
            (*v128)(v144, v145);
            v39 = v138;
            v24 = v151;
            (*v140)(v138, v151);
          }

          else
          {
            v15 = v153;
            v153[(v53 >> 6) + 8] |= 1 << v53;
            v59 = (*(v15 + 48) + 16 * v53);
            *v59 = v39;
            v59[1] = v49;
            *(*(v15 + 56) + v53) = v50 & 1;
            v14 = v145;
            (*v128)(v144, v145);
            v39 = v138;
            v24 = v151;
            (*v140)(v138, v151);
            v60 = *(v15 + 16);
            v61 = __OFADD__(v60, 1);
            v62 = v60 + 1;
            if (v61)
            {
              goto LABEL_72;
            }

            v139 = v15;
            *(v15 + 16) = v62;
          }

          v41 = v127;
LABEL_18:
          ++v40;
        }

        while (v143 != v40);
      }

      v140 = sub_10038664C(_swiftEmptyArrayStorage);
      v64 = v34[2];
      if (v64)
      {
        v65 = *(v123 + 24);
        v137 = *(v123 + 32);
        v142 = *(v150 + 16);
        v39 = v34 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
        v136 = (v117 + 8);
        v141 = *(v150 + 72);
        v131 = (v116 + 32);
        v129 = (v116 + 8);
        v143 = v150 + 16;
        v138 = (v150 + 8);
        v66 = v132;
        v67 = v133;
        v130 = v65;
        v142(v133, v39, v24);
        while (1)
        {
          if (v65)
          {
            v144 = v64;
            swift_getObjectType();
            v69 = v147;
            sub_100749764();
            sub_1007424E4();
            v70 = *v136;
            v71 = v148;
            (*v136)(v69, v148);
            swift_getObjectType();
            v72 = v134;
            sub_1007423D4();
            swift_unknownObjectRelease();
            (*v131)(v66, v72, v14);
            v15 = v135;
            sub_100749764();
            v73 = sub_10074ECF4();
            v75 = v74;
            v70(v15, v71);
            v76 = sub_100742214();
            v78 = v77;
            v34 = v140;
            v79 = swift_isUniquelyReferenced_nonNull_native();
            v153 = v34;
            v81 = sub_1003861D0(v73, v75);
            v82 = v34[2];
            v83 = (v80 & 1) == 0;
            v84 = v82 + v83;
            if (__OFADD__(v82, v83))
            {
              goto LABEL_71;
            }

            v15 = v80;
            if (v34[3] >= v84)
            {
              v34 = v149;
              if ((v79 & 1) == 0)
              {
                sub_1006758BC();
                v34 = v149;
              }
            }

            else
            {
              sub_1006713AC(v84, v79);
              v85 = sub_1003861D0(v73, v75);
              if ((v15 & 1) != (v86 & 1))
              {
                goto LABEL_77;
              }

              v81 = v85;
              v34 = v149;
            }

            v66 = v132;
            v87 = v153;
            v140 = v153;
            if (v15)
            {
              v68 = (v153[7] + 16 * v81);
              *v68 = v76;
              v68[1] = v78;
            }

            else
            {
              v153[(v81 >> 6) + 8] |= 1 << v81;
              v88 = (v87[6] + 16 * v81);
              *v88 = v73;
              v88[1] = v75;
              v89 = (v87[7] + 16 * v81);
              *v89 = v76;
              v89[1] = v78;
              v90 = v87[2];
              v61 = __OFADD__(v90, 1);
              v91 = v90 + 1;
              if (v61)
              {
                goto LABEL_73;
              }

              v87[2] = v91;
            }

            v14 = v145;
            (*v129)(v66, v145);
            v24 = v151;
            v67 = v133;
            v65 = v130;
            v64 = v144;
          }

          (*v138)(v67, v24);
          v39 += v141;
          if (!--v64)
          {
            break;
          }

          v142(v67, v39, v24);
        }
      }

      v63 = v140;
    }

    else
    {
      v139 = 0;
      v63 = 0;
    }

    v140 = v63;
    v15 = v34[2];
    v39 = _swiftEmptyArrayStorage;
    if (v15)
    {
      v152 = _swiftEmptyArrayStorage;

      v34 = &v152;
      sub_10001E1E8(0, v15, 0);
      v92 = v149;
      v93 = 0;
      v144 = v149 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
      v39 = v152;
      v143 = v150 + 16;
      v141 = v150 + 8;
      v142 = (v117 + 8);
      v145 = v15;
      v94 = v150;
      while (v93 < v92[2])
      {
        v95 = v146;
        v96 = v151;
        (*(v94 + 16))(v146, &v144[*(v94 + 72) * v93], v151);
        v97 = v147;
        sub_100749764();
        v98 = sub_10074ECF4();
        v100 = v99;
        (*v142)(v97, v148);
        v153 = v98;
        v154 = v100;
        v157._countAndFlagsBits = 8250;
        v157._object = 0xE200000000000000;
        sub_1007531B4(v157);
        v101._countAndFlagsBits = sub_100749734();
        if (v101._object)
        {
          object = v101._object;
        }

        else
        {
          v101._countAndFlagsBits = 0x746C7561666564;
          object = 0xE700000000000000;
        }

        v34 = &v153;
        v101._object = object;
        sub_1007531B4(v101);

        v103 = v153;
        v104 = v154;
        (*(v94 + 8))(v95, v96);
        v152 = v39;
        v106 = *(v39 + 16);
        v105 = *(v39 + 24);
        if (v106 >= v105 >> 1)
        {
          v34 = &v152;
          sub_10001E1E8((v105 > 1), v106 + 1, 1);
          v39 = v152;
        }

        ++v93;
        *(v39 + 16) = v106 + 1;
        v107 = v39 + 16 * v106;
        *(v107 + 32) = v103;
        *(v107 + 40) = v104;
        v15 = v145;
        v92 = v149;
        if (v145 == v93)
        {

          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_62:
    v153 = v39;
    sub_10000C518(&unk_100928A70, &unk_1007AC470);
    sub_10002DDC8(&qword_10092FA00, &unk_100928A70, &unk_1007AC470, &protocol conformance descriptor for [A]);
    v15 = sub_100752FF4();
    v34 = v108;

LABEL_63:
    LOBYTE(v39) = v119;
    if (qword_100921EF0 == -1)
    {
LABEL_64:
      v109 = v126;
      v110 = sub_10000D0FC(v126, qword_100983348);
      (*(v125 + 16))(v124, v110, v109);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A7250;
      sub_100752434();
      sub_1007523A4();
      sub_1007523A4();
      v156 = &type metadata for Bool;
      LOBYTE(v153) = v39 & 1;
      sub_100752424();
      sub_1000277BC(&v153);
      sub_1007523A4();
      if (v34)
      {
        v111 = &type metadata for String;
      }

      else
      {
        v15 = 0;
        v111 = 0;
        v155 = 0;
      }

      v153 = v15;
      v154 = v34;
      v156 = v111;
      sub_100752424();
      sub_1000277BC(&v153);
      v112 = v126;
      v113 = v124;
      sub_100752CE4();

      (*(v125 + 8))(v113, v112);
      v114 = v118;
      sub_10074D3F4();
      sub_100752DB4();
      return (*(v120 + 8))(v114, v121);
    }

LABEL_74:
    swift_once();
    goto LABEL_64;
  }

  v153 = _swiftEmptyArrayStorage;
  sub_10001E4CC(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    LODWORD(v149) = a3;
    v35 = 0;
    v34 = v153;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v36 = sub_100754574();
      }

      else
      {
        v36 = *(a1 + 8 * v35 + 32);
      }

      sub_1000D1A80(v36);
      v153 = v34;
      v38 = v34[2];
      v37 = v34[3];
      v15 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_10001E4CC((v37 > 1), v38 + 1, 1);
        v34 = v153;
      }

      ++v35;
      v34[2] = v15;
      (*(v150 + 32))(v34 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v38, v32, v151);
    }

    while (v33 != v35);
    v24 = v151;
    v14 = v145;
    LOBYTE(a3) = v149;
    goto LABEL_14;
  }

  __break(1u);
LABEL_77:
  result = sub_1007547B4();
  __break(1u);
  return result;
}

void sub_1000D1A80(void *a1)
{
  v3 = sub_10074ED34();
  v4 = [a1 instanceID];
  sub_100753094();

  v5 = a1;
  v6 = [v5 adamID];
  sub_100753094();

  sub_10074ED14();
  v7 = [v5 assetInformation];

  sub_100752F44();
  v8 = [v5 adData];
  v9 = [v8 adData];

  if (v9)
  {
    sub_100752F44();
  }

  else
  {
    sub_100414D14(_swiftEmptyArrayStorage);
  }

  v10 = [v5 selectedCppID];
  if (v10)
  {
    v11 = v10;
    sub_100753094();
  }

  v12 = [v5 appBinaryTraits];
  if (v12)
  {
    v13 = v12;
    sub_1007532A4();
  }

  sub_100749704();
}

double sub_1000D1CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100016C60(0, &qword_100927240, ADAppAdvertisement_ptr);
    v4 = sub_1007532A4();
  }

  v5(v4, a3);

  return result;
}

uint64_t sub_1000D1D7C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000D1E0C()
{

  return _swift_deallocObject(v0, 64, 7);
}

double sub_1000D1E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000D1E90()
{

  return _swift_deallocObject(v0, 40, 7);
}

__n128 sub_1000D1EE4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000D1EF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D1F40(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1000D1FA8(double a1)
{
  v2 = v1;
  v4 = sub_100743B54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100940720, qword_1007AA7F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v40.a = 1.0;
  v41 = v2[4];
  v12 = *(v5 + 104);
  v32 = enum case for TimingCurve.easeInOut(_:);
  v36 = v4;
  v34 = v5 + 104;
  v31 = v12;
  v12(v7);
  sub_100743E74();
  sub_100743E54();
  v13 = *(v9 + 8);
  v35 = v8;
  v33 = v9 + 8;
  v30 = v13;
  v13(v11, v8);
  CGAffineTransformMakeScale(&v40, v40.a, v40.a);
  v38 = *&v40.a;
  v39 = *&v40.c;
  tx = v40.tx;
  ty = v40.ty;
  v16 = sub_1000D30B0(v2[2], a1);
  v37 = v2;
  v17 = *v2;
  if (*v2 >> 62)
  {
    v18 = sub_100754664();
    if (!v18)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_12;
    }
  }

  if (v18 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v19 = 0;
  v20 = *(v37 + 24);
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = sub_100754574();
    }

    else
    {
      v21 = *(v17 + 8 * v19 + 32);
    }

    v22 = v21;
    *&v40.a = v38;
    *&v40.c = v39;
    v40.tx = tx;
    v40.ty = ty;
    [v21 setTransform:&v40];
    if (v20)
    {
      [v22 _setContinuousCornerRadius:v16];
    }

    ++v19;
  }

  while (v18 != v19);
LABEL_12:
  v40.a = 1.0;
  v41 = 0;
  v31(v7, v32, v36);
  sub_100743E74();
  v23 = v35;
  sub_100743E54();
  v30(v11, v23);
  a = v40.a;
  v25 = v37[1];
  if (v25 >> 62)
  {
    v26 = sub_100754664();
    if (!v26)
    {
      return;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return;
    }
  }

  if (v26 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = sub_100754574();
    }

    else
    {
      v28 = *(v25 + 8 * i + 32);
    }

    v29 = v28;
    [v28 setAlpha:a];
  }
}

void sub_1000D23A8()
{
  v1 = objc_opt_self();
  v2 = *v0;
  v19 = v0[1];
  v20 = v2;
  v3 = v0[2];
  v4 = swift_allocObject();
  v5 = *(v0 + 1);
  *(v4 + 16) = *v0;
  *(v4 + 32) = v5;
  *(v4 + 48) = v0[4];
  v17 = sub_1000D2FE4;
  v18 = v4;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000CF7B0;
  v16 = &unk_100867578;
  v6 = _Block_copy(&aBlock);
  sub_1000D2FEC(&v20, v12);
  sub_1000D2FEC(&v19, v12);
  v7 = v3;

  v8 = swift_allocObject();
  v9 = *(v0 + 1);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v9;
  *(v8 + 48) = v0[4];
  v17 = sub_1000D30A8;
  v18 = v8;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100144DD8;
  v16 = &unk_1008675C8;
  v10 = _Block_copy(&aBlock);
  sub_1000D2FEC(&v20, v12);
  sub_1000D2FEC(&v19, v12);
  v11 = v7;

  [v1 animateWithDuration:v6 animations:v10 completion:0.15];
  _Block_release(v10);
  _Block_release(v6);
}

void sub_1000D2590(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    v2 = sub_100754664();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = 0;
  v4 = *(a1 + 24);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_100754574();
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v13[1] = 0;
    v13[2] = 0;
    v13[0] = 0x3FF0000000000000;
    v13[3] = 0x3FF0000000000000;
    v13[4] = 0;
    v13[5] = 0;
    [v5 setTransform:v13];
    if (v4)
    {
      [v6 _setContinuousCornerRadius:0.0];
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_12:
  v7 = a1[1];
  if (v7 >> 62)
  {
    v8 = sub_100754664();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_100754574();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setAlpha:1.0];
  }
}

void sub_1000D2730(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 >> 62)
  {
    v9 = a2;
    v10 = sub_100754664();
    a2 = v9;
    v3 = v10;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 24);
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_100754574();
        if (v5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
        if (v5)
        {
LABEL_10:
          v7 = v6;
          v8 = [v6 layer];
          [v8 setMaskedCorners:15];

          v6 = v8;
        }
      }

      ++v4;

      if (v3 == v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1000D2834()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_100754664();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100754574();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6[1] = 0;
      v6[2] = 0;
      v6[0] = 0x3FF0000000000000;
      v6[3] = 0x3FF0000000000000;
      v6[4] = 0;
      v6[5] = 0;
      [v4 setTransform:v6];
    }

    while (v2 != v3);
  }
}

void sub_1000D2918(unint64_t a1, unint64_t a2, double a3, double a4)
{
  v35 = sub_100743B54();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_100940720, qword_1007AA7F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  if (a1 >> 62)
  {
    v14 = sub_100754664();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_11:
    v24 = enum case for TimingCurve.easeInOut(_:);
    v22 = *(v7 + 104);
    goto LABEL_12;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v14 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v32 = a2;
  v15 = 0;
  v16 = a1;
  v33 = a1 & 0xC000000000000001;
  v34 = enum case for TimingCurve.easeInOut(_:);
  v17 = v7 + 104;
  v18 = (v11 + 8);
  v30 = v17 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v31 = v11;
  do
  {
    v23 = v14;
    if (v33)
    {
      v19 = sub_100754574();
    }

    else
    {
      v19 = *(v16 + 8 * v15 + 32);
    }

    v20 = v19;
    ++v15;
    [v19 frame];
    Height = CGRectGetHeight(v38);
    v36.a = 0.0;
    v37 = Height * a4;
    v22 = *v17;
    (*v17)(v9, v34, v35);
    sub_100743E74();
    sub_100743E54();
    (*v18)(v13, v10);
    CGAffineTransformMakeTranslation(&v36, 0.0, v36.a);
    [v20 setTransform:&v36];

    v14 = v23;
  }

  while (v23 != v15);
  v11 = v31;
  a2 = v32;
  v24 = v34;
LABEL_12:
  v36.a = 1.0;
  v37 = 0.0;
  v22(v9, v24, v35);
  sub_100743E74();
  sub_100743E54();
  (*(v11 + 8))(v13, v10);
  a = v36.a;
  if (a2 >> 62)
  {
    v26 = sub_100754664();
    if (!v26)
    {
      return;
    }
  }

  else
  {
    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return;
    }
  }

  if (v26 < 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v28 = sub_100754574();
    }

    else
    {
      v28 = *(a2 + 8 * i + 32);
    }

    v29 = v28;
    [v28 setAlpha:a];
  }
}

void sub_1000D2CE8(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_100754664();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_100754574();
    }

    else
    {
      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    v12[1] = 0;
    v12[2] = 0;
    v12[0] = 0x3FF0000000000000;
    v12[3] = 0x3FF0000000000000;
    v12[4] = 0;
    v12[5] = 0;
    [v6 setTransform:v12];
  }

  while (v4 != v5);
LABEL_10:
  if (a2 >> 62)
  {
    v8 = sub_100754664();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = sub_100754574();
    }

    else
    {
      v10 = *(a2 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setAlpha:1.0];
  }
}

void sub_1000D2E68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v7[4] = sub_1000D2FC0;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000CF7B0;
  v7[3] = &unk_100867528;
  v6 = _Block_copy(v7);

  [v4 animateWithDuration:v6 animations:0.15];
  _Block_release(v6);
}

uint64_t sub_1000D2F80()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1000D2FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000D2FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009423E0, &unk_1007CE740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D3060()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_1000D30B0(void *a1, double a2)
{
  v3 = sub_100743B54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_100940720, qword_1007AA7F0);
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v14 - v10;
  if ([a1 userInterfaceIdiom] == 1)
  {
    v12 = 0x4040000000000000;
  }

  else
  {
    [a1 displayCornerRadius];
  }

  v15 = *&v12;
  v14 = 0x4034000000000000;
  (*(v4 + 104))(v6, enum case for TimingCurve.easeInOut(_:), v3);
  sub_100743E74();
  sub_100743E54();
  (*(v8 + 8))(v11, v7);
  return v15;
}

uint64_t sub_1000D32C0()
{
  v0 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v0 - 8);
  v2 = &v41 - v1;
  v55 = sub_10074F654();
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v4 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  __chkstk_darwin(v11);
  v54 = &v41 - v12;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  v16 = *(sub_10074F584() - 8);
  v57 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v48 = v18;
  *(v18 + 16) = xmmword_1007A7250;
  v56 = v18 + v17;
  v60 = 0x3FF0000000000000;
  sub_10001CC10();
  v19 = v15;
  sub_10074F614();
  v59 = 0x4030000000000000;
  v60 = 0x4020000000000000;
  sub_10074F5F4();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v25 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v58 + 104);
  v58 += 104;
  v52 = v26;
  v51 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = v55;
  v26(v4, enum case for PageGrid.HorizontalMargins.absolute(_:), v55);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v60) = 0;
  v29 = v2;
  sub_10074F614();
  v60 = 0;
  v50 = v7;
  sub_10074F614();
  v53 = v19;
  sub_10074F544();
  v60 = 0x3FF0000000000000;
  sub_10074F614();
  v59 = 0x4034000000000000;
  v60 = 0x4024000000000000;
  sub_10074F5F4();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  v30 = v10;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v32 = v52;
  v52(v4, v25, v27);
  LOBYTE(v60) = 0;
  sub_10074F614();
  v60 = 0;
  sub_10074F614();
  v33 = v57;
  top = UIEdgeInsetsZero.top;
  v47 = left;
  v49 = v30;
  sub_10074F544();
  v34 = 2 * v33;
  v59 = 0x4000000000000000;
  v60 = 0x3FF8000000000000;
  sub_10074F5F4();
  v60 = 0x4034000000000000;
  sub_10074F614();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_10074F5F4();
  v45 = vdupq_n_s64(0x4041000000000000uLL);
  v42 = v4;
  *v4 = v45;
  v35 = v51;
  v36 = v55;
  v37 = v32;
  v32(v4, v51, v55);
  LOBYTE(v60) = 0;
  sub_10074F614();
  v60 = 0;
  sub_10074F614();
  v38 = v29;
  v39 = v42;
  sub_10074F544();
  v44 = v34 + v57;
  v60 = 0x4000000000000000;
  sub_10074F614();
  v60 = 0x4034000000000000;
  sub_10074F614();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_10074F5F4();
  *v39 = v45;
  v37(v39, v35, v36);
  sub_1007535A4();
  LOBYTE(v60) = 0;
  v43 = v38;
  sub_10074F614();
  v60 = 0;
  sub_10074F614();
  sub_10074F544();
  v59 = 0x4000000000000000;
  v60 = 0x4004000000000000;
  sub_10074F5F4();
  v60 = 0x4038000000000000;
  sub_10074F614();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_10074F5F4();
  v45 = vdupq_n_s64(0x404A000000000000uLL);
  *v39 = v45;
  v52(v39, v51, v55);
  LOBYTE(v60) = 0;
  sub_10074F614();
  v60 = 0;
  sub_10074F614();
  sub_10074F544();
  v60 = 0x4008000000000000;
  sub_10074F614();
  v60 = 0x4038000000000000;
  sub_10074F614();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  sub_10074F5F4();
  *v39 = v45;
  v52(v39, v51, v55);
  LOBYTE(v60) = 0;
  sub_10074F614();
  v60 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_10097D948 = v48;
  return result;
}

uint64_t sub_1000D3CDC()
{
  type metadata accessor for DebugMetricsViewModel(0);
  swift_allocObject();
  return sub_1000D5414();
}

uint64_t sub_1000D3D14@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_10000C518(&qword_100927338, &qword_1007AA988);
  __chkstk_darwin(v2 - 8);
  v57 = &v37 - v3;
  v4 = sub_100751D84();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v49 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100751B84();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10000C518(&qword_100927340, &qword_1007AA990);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v37 - v8;
  v45 = sub_10000C518(&qword_100927348, &qword_1007AA998);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v37 - v10;
  v47 = sub_10000C518(&qword_100927350, &qword_1007AA9A0);
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v38 = &v37 - v12;
  v50 = sub_10000C518(&qword_100927358, &qword_1007AA9A8);
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v41 = &v37 - v13;
  v14 = *(v1 + 16);
  v54 = *(v1 + 8);
  v53 = v14;
  v52 = *(v1 + 24);
  type metadata accessor for DebugMetricsViewModel(0);
  sub_1000D5BC4(&qword_100927360, type metadata accessor for DebugMetricsViewModel, &unk_1007AA858);
  sub_100751B24();
  v44 = v1;
  v67 = *(v1 + 32);
  v15 = *(v1 + 48);
  v62 = *(v1 + 32);
  v63 = v15;
  v37 = v15;
  sub_10000C518(&qword_100927368, &qword_1007AA9B0);
  sub_100752084();
  v16 = sub_1000D45EC(v65, *(&v65 + 1));

  *&v62 = v16;
  v59 = &v62;
  v60 = sub_1000D4A40;
  v61 = 0;
  sub_10000C518(&qword_100927370, &qword_1007AA9B8);
  sub_1000D5924();
  sub_100751ED4();

  sub_100751B74();
  v17 = sub_10002DDC8(&qword_100927390, &qword_100927340, &qword_1007AA990, &protocol conformance descriptor for List<A, B>);
  v18 = v11;
  v19 = v39;
  v20 = v42;
  sub_100752044();
  (*(v43 + 8))(v7, v20);
  (*(v40 + 8))(v9, v19);
  v65 = v67;
  v66 = v15;
  sub_100752094();
  v21 = v49;
  sub_100751D74();
  *&v62 = v19;
  *(&v62 + 1) = v20;
  v63 = v17;
  v64 = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v45;
  v23 = v38;
  sub_100751F94();

  (*(v55 + 8))(v21, v56);
  (*(v46 + 8))(v18, v22);
  v62 = __PAIR128__(OpaqueTypeConformance2, v22);
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v41;
  v26 = v47;
  sub_100751FB4();
  (*(v48 + 8))(v23, v26);
  v27 = v57;
  sub_100751E34();
  v28 = sub_100751E44();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  *&v62 = v26;
  *(&v62 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v29 = v58;
  v30 = v50;
  sub_100752024();
  sub_10000C8CC(v27, &qword_100927338, &qword_1007AA988);
  (*(v51 + 8))(v25, v30);
  v31 = v44;
  v62 = v67;
  v68 = v37;
  v32 = swift_allocObject();
  v33 = *(v31 + 16);
  *(v32 + 16) = *v31;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(v31 + 32);
  *(v32 + 64) = *(v31 + 48);
  v34 = (v29 + *(sub_10000C518(&qword_100927398, &qword_1007AA9C8) + 36));
  *v34 = sub_1000D5A30;
  v34[1] = v32;
  v34[2] = 0;
  v34[3] = 0;

  sub_1000D5A38(v54, v53);
  sub_1000C0664(&v62, &v65);
  return sub_1000D5A40(&v68, &v65);
}

char *sub_1000D45EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000C518(&qword_1009273F8, &qword_1007B35F0);
  __chkstk_darwin(v4 - 8);
  v38 = &v29 - v5;
  v29 = sub_100746674();
  v39 = *(v29 - 8);
  __chkstk_darwin(v29);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  if (!a2)
  {
    goto LABEL_17;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_17:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100751AB4();

    return v42;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100751AB4();

  result = v42;
  v36 = *(v42 + 2);
  if (!v36)
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_19:

    return v13;
  }

  v34 = a1;
  v35 = a2;
  v12 = 0;
  v31 = (v39 + 32);
  v32 = v39 + 16;
  v30 = (v39 + 8);
  v13 = _swiftEmptyArrayStorage;
  v14 = v29;
  v33 = v42;
  while (v12 < *(result + 2))
  {
    v15 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v16 = *(v39 + 72);
    (*(v39 + 16))(v9, &result[v15 + v16 * v12], v14);
    v17 = v14;
    sub_100746654();
    v18 = sub_100752F54();
    v20 = v19;

    v42 = v18;
    v43 = v20;
    v40 = v34;
    v41 = v35;
    v21 = sub_100741574();
    v22 = v38;
    (*(*(v21 - 8) + 56))(v38, 1, 1, v21);
    sub_1000D5C0C();
    sub_100754304();
    v24 = v23;
    sub_10000C8CC(v22, &qword_1009273F8, &qword_1007B35F0);

    if (v24)
    {
      (*v30)(v9, v17);
      v14 = v17;
    }

    else
    {
      v25 = *v31;
      (*v31)(v37, v9, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v17;
      }

      else
      {
        sub_10001E510(0, v13[2] + 1, 1);
        v14 = v29;
        v13 = v44;
      }

      v28 = v13[2];
      v27 = v13[3];
      if (v28 >= v27 >> 1)
      {
        sub_10001E510((v27 > 1), v28 + 1, 1);
        v14 = v29;
        v13 = v44;
      }

      v13[2] = v28 + 1;
      v25(v13 + v15 + v28 * v16, v37, v14);
    }

    ++v12;
    result = v33;
    if (v36 == v12)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D4A40(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView(0);
  __chkstk_darwin(v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1;
  v5 = sub_100746674();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  sub_1000D5BC4(&qword_1009273E8, type metadata accessor for DebugMetricsEventDetailView.Summary, &unk_1007D4334);
  sub_1000D5BC4(&qword_1009273F0, type metadata accessor for DebugMetricsEventDetailView, &unk_1007D42E4);
  return sub_100751B64();
}

double sub_1000D4BB4(uint64_t *a1)
{
  type metadata accessor for DebugMetricsViewModel(0);
  sub_1000D5BC4(&qword_100927360, type metadata accessor for DebugMetricsViewModel, &unk_1007AA858);
  *(sub_100751B24() + OBJC_IVAR____TtC22SubscribePageExtensionP33_17375FEEA59F428BB04A47F3A54B437721DebugMetricsViewModel_recorder) = *a1;
  swift_retain_n();

  sub_1000D4D2C();

  return result;
}

uint64_t sub_1000D4CB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100751AB4();

  return v1;
}

double sub_1000D4D2C()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_1009273A8, &qword_1007AA9D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10000C518(&qword_1009273B0, &qword_1007AA9E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_10000C518(&qword_1009273B8, &qword_1007AA9E8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  if (_swiftEmptyArrayStorage >> 62 && sub_100754664())
  {
    sub_1001A9C6C(_swiftEmptyArrayStorage);
    v13 = v21;
  }

  else
  {
    v13 = _swiftEmptySetSingleton;
  }

  v14 = OBJC_IVAR____TtC22SubscribePageExtensionP33_17375FEEA59F428BB04A47F3A54B437721DebugMetricsViewModel_cancellables;
  swift_beginAccess();
  *(v1 + v14) = v13;

  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtensionP33_17375FEEA59F428BB04A47F3A54B437721DebugMetricsViewModel_recorder))
  {
    v25 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtensionP33_17375FEEA59F428BB04A47F3A54B437721DebugMetricsViewModel_recorder);

    sub_10074B3C4();
    sub_1000A7FA0();
    v16 = sub_100753774();
    v23 = v8;
    v24 = v9;
    v17 = v16;
    v26 = v16;
    v18 = sub_100753754();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    sub_10002DDC8(&qword_1009273C0, &qword_1009273B0, &qword_1007AA9E0, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1000D5BC4(&qword_1009273C8, sub_1000A7FA0, &protocol conformance descriptor for OS_dispatch_queue);
    v19 = v23;
    sub_100751AE4();
    sub_10000C8CC(v4, &qword_1009273A8, &qword_1007AA9D8);

    (*(v6 + 8))(v19, v5);
    swift_allocObject();
    swift_weakInit();
    sub_10002DDC8(&qword_1009273D0, &qword_1009273B8, &qword_1007AA9E8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v20 = v24;
    sub_100751AF4();

    (*(v10 + 8))(v12, v20);
    swift_beginAccess();
    sub_100751A64();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1000D5144(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_10053AE88(v3, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_100751AC4();
  }

  return result;
}

uint64_t sub_1000D51E0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtensionP33_17375FEEA59F428BB04A47F3A54B437721DebugMetricsViewModel__eventsSnapshot;
  v2 = sub_10000C518(&qword_100927330, &qword_1007AA890);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugMetricsViewModel(uint64_t a1)
{
  result = qword_100927288;
  if (!qword_100927288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D52FC(uint64_t a1)
{
  sub_1000D53A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000D53A4(uint64_t a1)
{
  if (!qword_100927298)
  {
    sub_10000C724(&unk_1009272A0, &qword_1007AA838);
    v1 = sub_100751AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_100927298);
    }
  }
}

uint64_t sub_1000D5414()
{
  v1 = sub_10000C518(&qword_100927330, &qword_1007AA890);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtensionP33_17375FEEA59F428BB04A47F3A54B437721DebugMetricsViewModel__eventsSnapshot;
  v8[1] = _swiftEmptyArrayStorage;
  sub_10000C518(&unk_1009272A0, &qword_1007AA838);
  sub_100751AA4();
  (*(v2 + 32))(v0 + v5, v4, v1);
  if (_swiftEmptyArrayStorage >> 62 && sub_100754664())
  {
    sub_1001A9C6C(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = _swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC22SubscribePageExtensionP33_17375FEEA59F428BB04A47F3A54B437721DebugMetricsViewModel_cancellables) = v6;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtensionP33_17375FEEA59F428BB04A47F3A54B437721DebugMetricsViewModel_recorder) = 0;
  return v0;
}

uint64_t sub_1000D5568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100751A94();
  *a1 = result;
  return result;
}

void sub_1000D55B8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100751AB4();

  *a2 = v3;
}

uint64_t sub_1000D5638(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100751AC4();
}

uint64_t sub_1000D56B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_10000C518(&unk_1009272A0, &qword_1007AA838);
  sub_100741494();
  sub_10000C518(&qword_100927388, &qword_1007AA9C0);
  sub_10002DDC8(&qword_1009273D8, &unk_1009272A0, &qword_1007AA838, &protocol conformance descriptor for [A]);
  sub_10002DDC8(&qword_100927380, &qword_100927388, &qword_1007AA9C0, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_1000D5BC4(&qword_1009273E0, &type metadata accessor for DebugMetricsEvent, &protocol conformance descriptor for DebugMetricsEvent);
  return sub_1007520B4();
}

uint64_t sub_1000D5858(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000D58A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000D5924()
{
  result = qword_100927378;
  if (!qword_100927378)
  {
    sub_10000C724(&qword_100927370, &qword_1007AA9B8);
    sub_10002DDC8(&qword_100927380, &qword_100927388, &qword_1007AA9C0, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927378);
  }

  return result;
}

uint64_t sub_1000D59D4()
{

  sub_1000D5A28(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000D5A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009273A0, &qword_1007AA9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D5AB0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000D5AF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000D5B58@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 16);
  v5 = sub_100746674();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v4, v5);
}

uint64_t sub_1000D5BC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000D5C0C()
{
  result = qword_100928A20;
  if (!qword_100928A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100928A20);
  }

  return result;
}

unint64_t sub_1000D5C64()
{
  result = qword_100927400;
  if (!qword_100927400)
  {
    sub_10000C724(&qword_100927398, &qword_1007AA9C8);
    sub_10000C724(&qword_100927358, &qword_1007AA9A8);
    sub_10000C724(&qword_100927350, &qword_1007AA9A0);
    sub_10000C724(&qword_100927348, &qword_1007AA998);
    sub_10000C724(&qword_100927340, &qword_1007AA990);
    sub_100751B84();
    sub_10002DDC8(&qword_100927390, &qword_100927340, &qword_1007AA990, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927400);
  }

  return result;
}

id UIView.withAccessibilityIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100753064();
  [v3 setAccessibilityIdentifier:v4];

  return v3;
}

uint64_t sub_1000D5E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1007417F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100749B94();
  __chkstk_darwin(v8 - 8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10074F4D4();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100927510, &unk_1007AAB30);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = a2;
    v43 = a1;
    sub_10074CD34();

    v20 = sub_10000C518(&unk_100930810, &unk_1007B7670);
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      v22 = &qword_100927510;
      v23 = &unk_1007AAB30;
      v24 = v16;
LABEL_11:
      sub_10000C8CC(v24, v22, v23);
      a2 = v19;
      goto LABEL_16;
    }

    sub_1007525C4();
    (*(v21 + 8))(v16, v20);
    sub_100012160(&v49, v51);
    sub_10000C824(v51, v47);
    sub_10000C518(&qword_1009242A0, &qword_1007A6400);
    sub_10000C518(&qword_100927558, &qword_1007AABB8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      sub_10000C620(v51);
      v22 = &qword_100927560;
      v23 = &unk_1007AABC0;
      v24 = &v44;
      goto LABEL_11;
    }

    sub_100012160(&v44, &v49);
    sub_10000C888(&v49, v50);
    a2 = v19;
    if (sub_100744C74())
    {
      sub_100742CD4();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        v26 = v40;
        v38 = v25;
        sub_100742C94();
        v27 = sub_10074F4C4();
        (*(v41 + 8))(v26, v42);
        if ((v27 & 1) == 0)
        {
          sub_10000C620(v51);

          goto LABEL_15;
        }

        sub_10000C824(v51, v47);
        sub_10074FBB4();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C888(&v49, v50);

          sub_100744C84();
          sub_1000D6804(v51, v39);
          sub_100749B74();

          sub_10000C620(v51);
          v37 = sub_100749BC4();
          (*(*(v37 - 8) + 56))(a2, 0, 1, v37);
          return sub_10000C620(&v49);
        }
      }
    }

    sub_10000C620(v51);
LABEL_15:
    sub_10000C620(&v49);
  }

LABEL_16:
  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
LABEL_29:
    v35 = sub_100749BC4();
    return (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
  }

  v29 = v28;
  sub_100741784();
  sub_100741764();
  sub_10074CD34();

  (*(v5 + 8))(v7, v4);
  v30 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v13, 1, v30) == 1)
  {
    sub_10000C8CC(v13, &qword_100927510, &unk_1007AAB30);
    goto LABEL_29;
  }

  sub_1007525C4();
  (*(v31 + 8))(v13, v30);
  sub_100012160(&v49, v51);
  sub_10000C824(v51, v47);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_100927540, &qword_1007AABA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_10000C620(v51);
    sub_10000C8CC(&v44, &qword_100927548, &qword_1007AABA8);
    goto LABEL_29;
  }

  sub_100012160(&v44, &v49);
  sub_10000C888(&v49, v50);
  sub_100741774();
  sub_10074B5A4();
  if (!v44)
  {
    sub_10000C620(v51);
    sub_10000C8CC(&v44, &qword_100927550, &qword_1007AABB0);
    sub_10000C620(&v49);
    goto LABEL_29;
  }

  v47[0] = v44;
  v47[1] = v45;
  v48 = v46;
  sub_100016B4C(v47, &v44, &unk_100930870, &unk_1007BB180);
  sub_100742CD4();
  if (!swift_dynamicCastClass())
  {

    sub_10000C8CC(v47, &unk_100930870, &unk_1007BB180);
    sub_10000C620(v51);
    sub_10000C8CC(&v44 + 8, &unk_100923520, &qword_1007A5A70);
LABEL_28:
    sub_10000C620(&v49);
    goto LABEL_29;
  }

  sub_10000C8CC(&v44 + 8, &unk_100923520, &qword_1007A5A70);
  v32 = v40;
  sub_100742C94();
  v33 = sub_10074F4C4();
  (*(v41 + 8))(v32, v42);
  if ((v33 & 1) == 0)
  {

    sub_10000C8CC(v47, &unk_100930870, &unk_1007BB180);
    sub_10000C620(v51);
    goto LABEL_28;
  }

  sub_100016B4C(v47, &v44, &unk_100930870, &unk_1007BB180);

  sub_1000D6804(v51, v39);
  sub_100749B74();

  sub_10000C8CC(v47, &unk_100930870, &unk_1007BB180);
  sub_10000C620(v51);
  v34 = sub_100749BC4();
  (*(*(v34 - 8) + 56))(a2, 0, 1, v34);
  return sub_10000C620(&v49);
}

uint64_t sub_1000D6804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000C824(a1, v8);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074F074();
  if (swift_dynamicCast() || (sub_1007461B4(), swift_dynamicCast()))
  {

    sub_10000C620(v8);
    v3 = enum case for FlowPreviewDestination.ContentType.source(_:);
    v4 = sub_100749B94();
    return (*(*(v4 - 8) + 104))(a2, v3, v4);
  }

  else
  {
    v6 = enum case for FlowPreviewDestination.ContentType.flowDestination(_:);
    v7 = sub_100749B94();
    (*(*(v7 - 8) + 104))(a2, v6, v7);
    return sub_10000C620(v8);
  }
}

uint64_t sub_1000D6940(uint64_t a1)
{
  v37 = sub_1007417F4();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v2 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&qword_100927510, &unk_1007AAB30);
  __chkstk_darwin(v3 - 8);
  v35 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_7;
  }

  v16 = Strong;
  sub_10074CD34();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_7:
    v17 = &qword_100927510;
    v18 = &unk_1007AAB30;
    v19 = v10;
LABEL_8:
    sub_10000C8CC(v19, v17, v18);
    goto LABEL_9;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_1007525C4();
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_100927528, &qword_1007AAB88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v12 + 8))(v14, v11);
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v17 = &qword_100927530;
    v18 = &qword_1007AAB90;
    v19 = &v40;
    goto LABEL_8;
  }

  sub_100012160(&v40, v43);
  sub_1007525C4();
  sub_10074FBB4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10000C888(v43, v44);
    v22 = sub_1007493E4();
    (*(v12 + 8))(v14, v11);
    goto LABEL_33;
  }

  (*(v12 + 8))(v14, v11);

  sub_10000C620(v43);
LABEL_9:
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
    (*(v12 + 56))(v7, 1, 1, v11);
    goto LABEL_16;
  }

  v21 = v20;
  sub_100741784();
  sub_100741764();
  sub_10074CD34();

  (*(v36 + 8))(v2, v37);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
LABEL_16:
    sub_10000C8CC(v7, &qword_100927510, &unk_1007AAB30);
    goto LABEL_17;
  }

  sub_10000C518(&qword_100927538, &qword_1007AAB98);
  if (!swift_dynamicCast())
  {
LABEL_17:
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    goto LABEL_18;
  }

  if (!*(&v47 + 1))
  {
LABEL_18:
    sub_10000C8CC(&v46, &qword_100927518, &qword_1007AAB78);
    goto LABEL_19;
  }

  sub_100012160(&v46, v43);
  sub_10000C888(v43, v44);
  sub_100741774();
  sub_10074B2F4();
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_100927528, &qword_1007AAB88);
  if (swift_dynamicCast())
  {
    sub_100012160(v38, &v46);
    sub_10000C888(&v46, *(&v47 + 1));
    v22 = sub_1007493E4();
    sub_10000C620(&v46);
LABEL_33:
    sub_10000C620(v43);
    return v22;
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_10000C8CC(v38, &qword_100927530, &qword_1007AAB90);
  sub_10000C620(v43);
LABEL_19:
  sub_10074D4D4();
  sub_100752754();
  if (v43[0])
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v25 = v35;
      sub_10074CD34();

      if ((*(v12 + 48))(v25, 1, v11) == 1)
      {

        v26 = &qword_100927510;
        v27 = &unk_1007AAB30;
        v28 = v25;
LABEL_23:
        sub_10000C8CC(v28, v26, v27);
        return 0;
      }

      sub_1007525C4();
      (*(v12 + 8))(v25, v11);
      sub_10000C518(&qword_1009242A0, &qword_1007A6400);
      v29 = sub_100747E74();
      if (swift_dynamicCast())
      {
        v30 = v46;
        v44 = v29;
        v45 = sub_1000D7974(&qword_100927520, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
        v43[0] = v30;

        v31 = sub_10074D494();
        sub_10000C620(v43);
        if (v31)
        {
          sub_10074AA64();
          sub_10000C518(&qword_100927780, &qword_1007AAB80);
          sub_10000C518(&qword_100927528, &qword_1007AAB88);
          if (swift_dynamicCast())
          {
            sub_100012160(&v40, &v46);
            sub_10000C888(&v46, *(&v47 + 1));
            v32 = sub_1007493E4();

            sub_10000C620(&v46);
            return v32;
          }

          v42 = 0;
          v40 = 0u;
          v41 = 0u;
          v26 = &qword_100927530;
          v27 = &qword_1007AAB90;
          v28 = &v40;
          goto LABEL_23;
        }
      }
    }
  }

  return 0;
}

id sub_1000D71B8(uint64_t a1)
{
  v2 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_1007457B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925330, &unk_1007A67B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_10000C518(&qword_100927510, &unk_1007AAB30);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v16 = Strong;
  v17 = v5;
  v18 = v6;
  v33 = a1;
  sub_10074CD34();

  v19 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    sub_10000C8CC(v14, &qword_100927510, &unk_1007AAB30);
    v6 = v18;
    v5 = v17;
LABEL_4:
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_5;
  }

  sub_1007525C4();
  (*(v20 + 8))(v14, v19);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10000C518(&qword_100923570, &qword_1007AAB70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v6 = v18;
    v5 = v17;
    goto LABEL_5;
  }

  v6 = v18;
  v5 = v17;
  if (!*(&v35 + 1))
  {
LABEL_5:
    sub_10000C8CC(&v34, &qword_100923578, &qword_1007A67F0);
    goto LABEL_6;
  }

  sub_100012160(&v34, v37);
  sub_10000C888(v37, v37[3]);
  sub_10074A4F4();
  v25 = sub_100744E64();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    sub_10000C8CC(v11, &unk_100925330, &unk_1007A67B0);
  }

  else
  {
    v31 = sub_100744E44();
    (*(v26 + 8))(v11, v25);
    if (v31)
    {
      if (qword_100920358 != -1)
      {
        swift_once();
      }

      v32 = qword_10097DD28;
      sub_10000C620(v37);
      return v32;
    }
  }

  sub_10000C620(v37);
LABEL_6:
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_100741784();
    sub_10074CD54();

    v23 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v4, 1, v23) == 1)
    {
      sub_10000C8CC(v4, &unk_10093D6E0, &unk_1007A6080);
    }

    else
    {
      swift_getKeyPath();
      sub_1007525B4();

      (*(v24 + 8))(v4, v23);
      if ((*(v6 + 88))(v8, v5) == enum case for ShelfBackground.color(_:))
      {
        (*(v6 + 96))(v8, v5);
        v27 = *v8;
        v28 = *(sub_10000C518(&unk_100930940, qword_1007A9000) + 48);
        v29 = sub_100748E34();
        (*(*(v29 - 8) + 8))(&v8[v28], v29);
        return v27;
      }

      (*(v6 + 8))(v8, v5);
    }
  }

  return [objc_opt_self() clearColor];
}

uint64_t sub_1000D77D4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1000D78AC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_100016B4C(a2, &v4, &unk_100923520, &qword_1007A5A70);

  sub_100752EF4();
  return sub_10000C8CC(&v3, &unk_100930870, &unk_1007BB180);
}

uint64_t sub_1000D7974(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000D79BC(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 16) == 1)
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();
    v8 = *(v6 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 24) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_100255968(0, v8[2] + 1, 1, v8);
      *(v6 + 24) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_100255968((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_100045E0C;
    v12[5] = v7;
    *(v6 + 24) = v8;
    return swift_endAccess();
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

double sub_1000D7ADC()
{
  v1 = sub_1007521E4();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752224();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000D831C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100867768;
  v8 = _Block_copy(aBlock);

  sub_100752204();
  v13 = _swiftEmptyArrayStorage;
  sub_1000D835C(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000D83A4(&qword_1009236C0, &unk_10092F750, &qword_1007A6920);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);

  return result;
}

double sub_1000D7DB0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 16) == 1)
    {
      *(Strong + 16) = 0;
      v3 = Strong;
      swift_beginAccess();
      v4 = *(v3 + 24);
      v5 = *(v4 + 16);
      if (v5)
      {

        v6 = v4 + 40;
        do
        {
          v7 = *(v6 - 8);

          v7(v8);

          v6 += 16;
          --v5;
        }

        while (v5);

        v9 = v3;
      }

      else
      {
        v9 = v3;
      }

      *(v9 + 24) = _swiftEmptyArrayStorage;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000D7EA8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000D7F0C()
{
  v9 = sub_100753764();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100753724();
  __chkstk_darwin(v4);
  v5 = sub_100752224();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  v6 = sub_1000A7FA0();
  v8[0] = "isScrollingAccessQueue";
  v8[1] = v6;
  sub_100752204();
  v10 = _swiftEmptyArrayStorage;
  sub_1000D835C(&qword_100927678, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000C518(&qword_100927680, &qword_1007AAC90);
  sub_1000D83A4(&qword_100927688, &qword_100927680, &qword_1007AAC90);
  sub_1007543A4();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *(v0 + 32) = sub_100753794();
  return v0;
}

double sub_1000D816C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1000D7ADC();
  }

  return result;
}

void sub_1000D8178()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000D82B0;
  *(v2 + 24) = v0;
  v4[4] = sub_100045E0C;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10011B528;
  v4[3] = &unk_100867718;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

double sub_1000D82CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000D82E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000D8324()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000D835C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D83A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C724(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MetadataRibbonHighlightedTextViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_100920208 != -1)
  {
    swift_once();
  }

  v0 = sub_10074E014();

  return sub_10000D0FC(v0, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
}

char *sub_1000D8464(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074E014();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_metrics;
  if (qword_100920208 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v11, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_itemType;
  v20 = sub_100749D24();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_allowsTruncation] = 2;
  sub_100745C84();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_descriptionLabel] = sub_100745C64();
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_descriptionLabel;
  v29 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_descriptionLabel];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v30 = v29;
  v31 = sub_100753DF4();
  [v30 setTextColor:v31];

  v32 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_metrics], v11);
  v33 = v32;
  v34 = sub_10074E004();
  (*(v12 + 8))(v14, v11);
  [v33 setNumberOfLines:v34];

  v35 = *&v27[v28];
  sub_1007509A4();
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v36 = sub_10074A584();
  v37 = sub_10000D0FC(v36, qword_10097D9F0);
  v41[3] = v36;
  v41[4] = sub_1000DA3D8(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v38 = sub_10000D134(v41);
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  sub_100745BC4();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_1000D88D4()
{
  ObjectType = swift_getObjectType();
  v18 = sub_100750354();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074E014();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074E024();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_descriptionLabel];
  v20 = sub_100745C84();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_metrics], v5);
  v14 = v13;
  sub_10074DFC4();
  sub_1007477B4();
  sub_10074DFE4();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

id sub_1000D8DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_descriptionLabel];
    if (a4)
    {
      v6 = sub_1000D8E34(a1, a2, a3, a4);
      [v5 setAttributedText:v6];
    }

    else
    {
      v6 = sub_100753064();
      [v5 setText:v6];
    }
  }

  return [v4 setNeedsLayout];
}

id sub_1000D8E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1007509A4();
  if (qword_100920228 != -1)
  {
    swift_once();
  }

  v5 = sub_10074A584();
  sub_10000D0FC(v5, qword_10097DA38);
  v6.super.isa = [v4 traitCollection];
  isa = v6.super.isa;
  v36.super.isa = sub_10074A564(v6).super.isa;

  sub_1007509A4();
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v5, qword_10097D9F0);
  v8.super.isa = [v4 traitCollection];
  v9 = v8.super.isa;
  v10 = sub_10074A564(v8).super.isa;

  v35 = sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v11 = [objc_allocWithZone(UIColor) initWithRed:0.450980392 green:0.450980392 blue:0.494117647 alpha:1.0];
  v12.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.682352941 green:0.682352941 blue:0.698039216 alpha:1.0];
  v13.super.isa = v11;
  v14 = sub_100753EC4(v13, v12).super.isa;
  sub_10000C518(&unk_100929CA0, &qword_1007A6610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = NSFontAttributeName;
  v16 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  *(inited + 64) = v16;
  *(inited + 40) = v10;
  v17 = NSFontAttributeName;
  v34 = v10;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C8CC(inited + 32, &unk_100923510, &unk_1007A6620);
  v18 = objc_allocWithZone(NSMutableAttributedString);
  v19 = sub_100753064();
  type metadata accessor for Key(0);
  sub_1000DA3D8(&qword_1009276F0, type metadata accessor for Key, &unk_1007A543C);
  v20 = sub_100752F34().super.isa;

  v21 = [v18 initWithString:v19 attributes:v20];

  v22 = swift_initStackObject();
  *(v22 + 32) = NSForegroundColorAttributeName;
  *(v22 + 16) = xmmword_1007A6580;
  *(v22 + 40) = v14;
  *(v22 + 64) = v35;
  *(v22 + 72) = v17;
  *(v22 + 104) = v16;
  *(v22 + 80) = v36;
  v23 = NSForegroundColorAttributeName;
  v24 = v14;
  v25 = v36.super.isa;
  sub_100413A18(v22);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510, &unk_1007A6620);
  swift_arrayDestroy();
  v26.super.isa = sub_100752F34().super.isa;

  v27 = v21;
  result = [v27 string];
  if (result)
  {
    v29 = result;

    v30 = sub_100753064();
    v31 = [v29 rangeOfString:v30 options:1];
    v33 = v32;

    [v27 addAttributes:v26.super.isa range:{v31, v33}];
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1000D9368()
{
  v0 = sub_100747914();
  v2 = v1;
  v3 = sub_100747874();
  sub_1000D8DA4(v0, v2, v3, v4);

  return result;
}

uint64_t sub_1000D93E4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_100749DE4();
}

uint64_t sub_1000D9430(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_100749E04();
}

uint64_t sub_1000D948C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_itemType;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &qword_100924B30, &unk_1007A8690);
}

uint64_t sub_1000D94F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_itemType;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &qword_100924B30, &unk_1007A8690);
  return swift_endAccess();
}

void sub_1000D95D0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1000D969C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3 + *a3;
  swift_beginAccess();
  return *v4;
}

void sub_1000D96E4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1000D97A4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_100749E24();
}

uint64_t sub_1000D97E0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1000D9824(char a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1000D98D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_id;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_1009276E0, &unk_1007A5C70);
}

uint64_t sub_1000D993C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_id;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_1009276E0, &unk_1007A5C70);
  return swift_endAccess();
}

uint64_t sub_1000D9A0C()
{
  v0 = sub_10000C518(&unk_100923180, &unk_1007A5F40);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_10074E014();
  sub_100039C50(v4, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  sub_10000D0FC(v4, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743564();
  sub_10074DFF4();
  return (*(v1 + 8))(v3, v0);
}

void sub_1000D9B4C(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (sub_100753924())
  {

    v5 = 6.0;
    goto LABEL_12;
  }

  v6 = sub_100753094();
  v8 = v7;
  if (v6 != sub_100753094() || v8 != v9)
  {
    v11 = sub_100754754();

    if (v11)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_10:
  v12 = sub_100753964();

  v5 = 2.0;
  if (v12)
  {
    v5 = 4.0;
  }

LABEL_12:
  *a2 = v5;
}

uint64_t static MetadataRibbonHighlightedTextViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100920208 != -1)
  {
    swift_once();
  }

  v2 = sub_10074E014();
  v3 = sub_10000D0FC(v2, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonHighlightedTextView(uint64_t a1)
{
  result = qword_1009276C8;
  if (!qword_1009276C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D9D68(uint64_t a1)
{
  sub_10074E014();
  if (v1 <= 0x3F)
  {
    sub_1000D9E5C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000D9E5C(uint64_t a1)
{
  if (!qword_1009276D8)
  {
    sub_100749D24();
    v1 = sub_100754284();
    if (!v2)
    {
      atomic_store(v1, &qword_1009276D8);
    }
  }
}

double sub_1000D9EB4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v39 = a2;
  v33 = a1;
  v4 = sub_10074E014();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074E024();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100750BD4();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100750E94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  if (qword_100920208 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v4, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  sub_100750E84();
  sub_1007509A4();
  v30 = v4;
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v21 = sub_10074A584();
  v22 = sub_10000D0FC(v21, qword_10097D9F0);
  v41[3] = v21;
  v41[4] = sub_1000DA3D8(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v23 = sub_10000D134(v41);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  sub_100750DE4();
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_10000C620(v41);
  sub_10074E004();
  sub_100750E74();
  v24(v16, v10);
  sub_100747914();
  (*(v11 + 16))(v16, v19, v10);
  sub_100750BB4();
  sub_100750BF4();
  sub_100750BA4();
  (*(v31 + 8))(v9, v32);
  sub_10000C824(v41, v40);
  (*(v36 + 16))(v35, v20, v30);
  v25 = v34;
  sub_10074DFC4();
  sub_10074DFD4();
  v27 = v26;
  (*(v37 + 8))(v25, v38);
  sub_10000C620(v41);
  v24(v19, v10);
  return v27;
}

uint64_t sub_1000DA3D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000DA420()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_metrics;
  if (qword_100920208 != -1)
  {
    swift_once();
  }

  v2 = sub_10074E014();
  v3 = sub_10000D0FC(v2, static MetadataRibbonHighlightedTextViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_itemType;
  v6 = sub_100749D24();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33MetadataRibbonHighlightedTextView_allowsTruncation) = 2;
  sub_100754644();
  __break(1u);
}

void sub_1000DA628(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100741784();
  v36 = a2;
  sub_1000DB9B8(v10, a2);
  v11 = sub_1000DBBE8(a1);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
  swift_beginAccess();
  if (!*(*(v2 + v12) + 16) || (sub_100412104(v11), (v13 & 1) == 0))
  {
    v34 = v12;
    sub_1000DBC98(a1);
    v16 = 0.0;
    v17 = 0.0;
    if (v14 == v15)
    {
LABEL_15:
      v31 = sub_1000DBBE8(a1);
      v32 = v34;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v3 + v32);
      *(v3 + v32) = 0x8000000000000000;
      sub_100673968(v31, isUniquelyReferenced_nonNull_native, v16, v17);
      *(v3 + v32) = v37;
      swift_endAccess();
    }

    else
    {
      v18 = v14;
      v19 = v15;
      if (v15 >= v14)
      {
        v35 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
        v20 = (v7 + 8);
        v21 = 0.0;
        while (v18 < v19)
        {
          sub_100741784();
          sub_100741764();
          v22 = sub_10074A0A4();
          if (v22)
          {
            v23 = v22;
            v24 = sub_100741774() == 0;
            [*(v3 + v35) pageContainerSize];
            v27 = sub_1000DAA50(v23, v36, v24, v25, v26);
            v29 = v28;
            LOBYTE(v24) = v30;

            (*v20)(v9, v6);
            if (v24)
            {
              v16 = v27;
              v17 = v29;
              goto LABEL_15;
            }

            if (v21 < v29)
            {
              v16 = v27;
              v17 = v29;
              v21 = v29;
            }
          }

          else
          {
            (*v20)(v9, v6);
          }

          if (v19 == ++v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

double sub_1000DAA50(uint64_t a1, void *a2, int a3, double a4, double a5)
{
  LODWORD(v100) = a3;
  v9 = sub_1007479B4();
  v98 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v97 - v13;
  v15 = sub_100742014();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000DB694(a1);
  v101 = v5;
  v99 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
  [*(v5 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
  v22 = a4 - v20 - v21;
  [a2 minimumInteritemSpacing];
  v24 = (v22 - v23) * 0.5;
  sub_100747E74();
  if (swift_dynamicCastClass())
  {
    if (v19 & 1 | ((v100 & 1) == 0))
    {
      v25 = v101;
      if (*(v101 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
      {

        sub_10074AA64();

        sub_10000C518(&qword_100927780, &qword_1007AAB80);
        sub_100745E64();
        if (swift_dynamicCast())
        {
          v26 = v102;
          v27 = type metadata accessor for AdvertSearchResultCollectionViewCell();
          v28 = *(v25 + v99);
          ObjectType = swift_getObjectType();
          left = UIEdgeInsetsZero.left;
          bottom = UIEdgeInsetsZero.bottom;
          right = UIEdgeInsetsZero.right;
          swift_unknownObjectRetain();
          v33 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_1005540B4(v26, v28, v33, v24, 1.79769313e308, UIEdgeInsetsZero.top, left, bottom, right, v27, ObjectType);
          v24 = v34;

LABEL_8:
          swift_unknownObjectRelease_n();
          return v24;
        }
      }
    }

    else
    {
      v44 = v101;
      if (*(v101 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
      {

        sub_10074AA64();

        sub_10000C518(&qword_100927780, &qword_1007AAB80);
        sub_100745E64();
        if (swift_dynamicCast())
        {
          v45 = v102;
          v46 = type metadata accessor for ContentSearchResultCollectionViewCell();
          v47 = *(v44 + v99);
          v48 = swift_getObjectType();
          swift_unknownObjectRetain();
          v49 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_100223690(v45, v47, v49, v46, v48);
          v24 = v50;

          swift_unknownObjectRelease_n();
          return v24;
        }
      }
    }

    return 0.0;
  }

  v35 = v11;
  v36 = v16;
  v37 = v98;
  sub_100742374();
  if (swift_dynamicCastClass())
  {
    v38 = type metadata accessor for ContentSearchResultCollectionViewCell();
    v39 = sub_100742364();
    v40 = *(v101 + v99);
    v41 = swift_getObjectType();
    swift_unknownObjectRetain();
    v42 = ASKDeviceTypeGetCurrent();
    swift_unknownObjectRetain();
    sub_100223690(v39, v40, v42, v38, v41);
    v24 = v43;

    goto LABEL_8;
  }

  sub_1007474C4();
  if (swift_dynamicCastClass())
  {
    sub_1007474B4();
    v51 = sub_10074EF34();
    v53 = v52;
    v54 = sub_10074EFB4();
    v56 = v55;
    v57 = sub_10074EFA4();
    v24 = sub_100506638(v51, v53, v54, v56, v57, [*(v101 + v99) snapshotPageTraitEnvironment], v24);
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  sub_1007493C4();
  v58 = swift_dynamicCastClass();
  if (v58)
  {
    v24 = sub_1006D5410(v24, v58, [*(v101 + v99) snapshotPageTraitEnvironment]);
    swift_unknownObjectRelease();
    return v24;
  }

  sub_100741ED4();
  if (!swift_dynamicCastClass())
  {
    sub_10074C814();
    if (!swift_dynamicCastClass())
    {
      sub_100742574();
      v84 = swift_dynamicCastClass();
      if (v84)
      {
        v85 = v84;
        v86 = v101;
        if (sub_10074A054())
        {
          v87 = type metadata accessor for AppEventSearchResultCollectionViewCell();
          v88 = [*(v86 + v99) snapshotPageTraitEnvironment];
          v89 = swift_getObjectType();
          v90 = *(v86 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph);
          swift_unknownObjectRetain();
          v24 = sub_100723554(v85, v88, v90, v24, v87, v89);
        }

        else
        {
          v91 = type metadata accessor for ContentSearchResultCollectionViewCell();
          v92 = sub_100742564();
          v93 = *(v86 + v99);
          v94 = swift_getObjectType();
          swift_unknownObjectRetain();
          v95 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_100223690(v92, v93, v95, v91, v94);
          v24 = v96;
        }

        goto LABEL_8;
      }

      return 0.0;
    }

    v67 = type metadata accessor for SearchLockupListCollectionViewCell();
    v68 = [*(v101 + v99) snapshotPageTraitEnvironment];
    v69 = UIEdgeInsetsZero.left;
    v70 = UIEdgeInsetsZero.bottom;
    v71 = UIEdgeInsetsZero.right;
    swift_getObjectType();
    LODWORD(v100) = sub_10032E1E4(v68);
    v101 = v72;
    v73 = sub_10074C804();
    v75 = v74;
    v76 = sub_10074C7F4();
    v78 = v77;
    if (sub_10074C7C4())
    {
      v79 = sub_10074ECB4();
      v81 = v80;
    }

    else
    {
      v79 = 0;
      v81 = 0;
    }

    v24 = sub_100425630(v73, v75, v76, v78, v79, v81, v100 & 1, v101, v24, 1.79769313e308, UIEdgeInsetsZero.top, v69, v70, v71, v68, v67);
    swift_unknownObjectRelease();

LABEL_15:

    return v24;
  }

  v59 = sub_100741EC4();
  v100 = [*(v101 + v99) snapshotPageTraitEnvironment];
  v101 = v59;
  sub_100741D44();
  v60 = sub_10074EF34();
  v62 = v61;

  if (v62)
  {
    v103._object = 0x800000010076A180;
    v103._countAndFlagsBits = 0xD000000000000035;
    v104._countAndFlagsBits = 0;
    v104._object = 0xE000000000000000;
    v99 = sub_1007458B4(v103, v104);
    v97 = v60;
    sub_10000C518(&unk_100927770, &unk_1007BA6E0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1007A5A00;
    *(v63 + 56) = &type metadata for String;
    *(v63 + 64) = sub_1000DD048();
    *(v63 + 32) = v97;
    *(v63 + 40) = v62;
    sub_1007530B4();
  }

  sub_10074EF34();

  sub_100753BA4();
  if (qword_100921778 != -1)
  {
    swift_once();
  }

  v64 = sub_10000D0FC(v15, qword_100982190);
  (*(v36 + 16))(v18, v64, v15);
  v65 = [v100 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v66 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v66 = qword_10093FF58;
  }

  v82 = sub_10000D0FC(v9, v66);
  (*(v37 + 16))(v35, v82, v9);

  (*(v37 + 32))(v14, v35, v9);
  sub_100747964();
  sub_100747994();
  sub_100742004();
  sub_100741FE4();

  swift_unknownObjectRelease();
  (*(v37 + 8))(v14, v9);
  (*(v36 + 8))(v18, v15);
  return v24;
}

uint64_t sub_1000DB694(uint64_t a1)
{
  v2 = sub_10074A7F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742374();
  if (swift_dynamicCastClass())
  {
    sub_100742364();
  }

  else
  {
    sub_100742574();
    if (swift_dynamicCastClass())
    {
      if (sub_10074A054())
      {
        return 0;
      }

      sub_100742564();
    }

    else
    {
      sub_100747E74();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      if (!*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
      {
        return 0;
      }

      sub_10074AA64();

      sub_10000C518(&qword_100927780, &qword_1007AAB80);
      sub_100745E64();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }
    }
  }

  sub_100745E24();
  v6 = sub_10074A7E4();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = sub_100745DD4();
  if (v7 >> 62)
  {
    v10 = sub_100754664();

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v8)
    {
LABEL_6:

      return 1;
    }
  }

  v11 = sub_100745E54();
  v12 = v11;
  if (v11 >> 62)
  {
    result = sub_100754664();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_25:

    return 0;
  }

LABEL_18:
  if ((v12 & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v13 = sub_10074F794();

  if (v13 >> 62)
  {
    v14 = sub_100754664();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v14 != 0;
}

void sub_1000DB9B8(uint64_t a1, void *a2)
{
  v4 = sub_1007417F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_isFirstItemFullWidth;
  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_isFirstItemFullWidth) == 2)
  {
    sub_100741764();
    v9 = sub_10074A0A4();
    if (v9)
    {
      v10 = v9;
      [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageContainerSize];
      v13 = sub_1000DAA50(v10, a2, 1, v11, v12);
      v16 = v15;
      if (v15)
      {
        v17 = v13;
        v18 = v14;
        v19 = sub_1000DBBE8(v7);
        v20 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v2 + v20);
        *(v2 + v20) = 0x8000000000000000;
        sub_100673968(v19, isUniquelyReferenced_nonNull_native, v17, v18);
        *(v2 + v20) = v22;
        swift_endAccess();

        (*(v5 + 8))(v7, v4);
      }

      else
      {
        (*(v5 + 8))(v7, v4, v13);
      }

      *(v2 + v8) = v16 & 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1000DBBE8(uint64_t a1)
{
  result = sub_100741774();
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_isFirstItemFullWidth);
  v4 = v3 != 2 && (v3 & 1) != 0;
  v5 = result + v4;
  if (__OFADD__(result, v4))
  {
    __break(1u);
  }

  else
  {
    v6 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
    v7 = [v6 horizontalSizeClass];

    v8 = 1;
    if (v7 != 1)
    {
      v8 = 2;
    }

    return v5 / v8;
  }

  return result;
}

void sub_1000DBC98(uint64_t a1)
{
  v2 = sub_1000DBBE8(a1);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
  v4 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = v2 * v6;
  if ((v2 * v6) >> 64 != (v2 * v6) >> 63)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_isFirstItemFullWidth);
  v9 = v8 != 2 && (v8 & 1) != 0;
  v10 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
    goto LABEL_16;
  }

  v11 = [*(v1 + v3) traitCollection];
  v12 = [v11 horizontalSizeClass];

  v13 = 1;
  if (v12 != 1)
  {
    v13 = 2;
  }

  if (__OFADD__(v10, v13))
  {
    goto LABEL_17;
  }

  if (v10 + v13 < v10)
  {
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_1000DBDB4(uint64_t a1)
{
  result = sub_10074A0A4();
  if (result)
  {
    sub_100747E74();
    if (swift_dynamicCastClass())
    {

      return 3;
    }

    else
    {
      sub_10074C814();
      if (swift_dynamicCastClass() && (sub_10074A044() & 1) == 0)
      {
        v3 = [objc_msgSend(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) "snapshotPageTraitEnvironment")];
        swift_unknownObjectRelease();
        v4 = sub_1007537E4();

        if (v4)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

double sub_1000DBF28(void *a1)
{
  v2 = v1;
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v10 == 2)
  {
    if (qword_100921718 != -1)
    {
      swift_once();
    }

    v11 = sub_100750B04();
    sub_10000D0FC(v11, qword_1009820C8);
    v12 = [a1 traitCollection];
    sub_100751034();
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007A5CF0;
    *(v13 + 32) = v12;
    v14 = v12;
    v15 = sub_100751044();
    sub_100750544();
    v17 = v16;

    v18 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
    [*(v2 + v18) pageMarginInsets];
  }

  else
  {
    if (qword_100920CC8 != -1)
    {
      swift_once();
    }

    v19 = sub_100750B04();
    sub_10000D0FC(v19, qword_100980498);
    v20 = [a1 traitCollection];
    sub_1007502D4();
    sub_100750AD4();
    v17 = v21;

    (*(v5 + 8))(v8, v4);
  }

  return v17;
}

double sub_1000DC1D8(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_1007479B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v115 - v13;
  v15 = sub_100742014();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742374();
  v122 = a1;
  if (swift_dynamicCastClass())
  {
    v19 = type metadata accessor for ContentSearchResultCollectionViewCell();
    sub_100742364();
    v20 = sub_100668924(a2 & 1);

    v21 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits);
    ObjectType = swift_getObjectType();
    [swift_unknownObjectRetain() pageMarginInsets];
    v23 = ASKDeviceTypeGetCurrent();
    swift_unknownObjectRetain();
    v24 = v20;
    v25 = v21;
    v26 = v23;
    v27 = v19;
    v28 = ObjectType;
LABEL_3:
    sub_100223690(v24, v25, v26, v27, v28);
    a3 = v29;

LABEL_4:
    swift_unknownObjectRelease_n();
    return a3;
  }

  v116 = v11;
  v117 = v18;
  v120 = v9;
  v121 = v4;
  v118 = v14;
  v119 = v16;
  sub_1007474C4();
  if (swift_dynamicCastClass())
  {
    sub_1007474B4();
    v30 = sub_10074EF34();
    v32 = v31;
    v33 = sub_10074EFB4();
    v35 = v34;
    v36 = sub_10074EFA4();
    v37 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    v38 = v121;
    v39 = [*(v121 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v38 + v37) pageMarginInsets];
    a3 = sub_100506638(v30, v32, v33, v35, v36, v39, a3);
    swift_unknownObjectRelease();

    return a3;
  }

  sub_100747E74();
  if (swift_dynamicCastClass())
  {
    v40 = v121;
    if (*(v121 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_advertRotationController))
    {

      sub_10074AA64();

      sub_10000C518(&qword_100927780, &qword_1007AAB80);
      sub_100745E64();
      if (swift_dynamicCast())
      {
        v41 = type metadata accessor for AdvertSearchResultCollectionViewCell();
        v42 = sub_100668924(a2 & 1);
        v43 = *(v40 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits);
        v44 = swift_getObjectType();
        [swift_unknownObjectRetain() pageMarginInsets];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v53 = ASKDeviceTypeGetCurrent();
        swift_unknownObjectRetain();
        sub_1005540B4(v42, v43, v53, a3, 1.79769313e308, v46, v48, v50, v52, v41, v44);
        a3 = v54;

        goto LABEL_4;
      }
    }

    return 0.0;
  }

  sub_1007493C4();
  v55 = swift_dynamicCastClass();
  if (v55)
  {
    v56 = v55;
    v57 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    v58 = v121;
    v59 = [*(v121 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v58 + v57) pageMarginInsets];
    a3 = sub_1006D5410(a3, v56, v59);
    swift_unknownObjectRelease();
    return a3;
  }

  sub_100741ED4();
  if (swift_dynamicCastClass())
  {
    sub_100741EC4();
    v60 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    v61 = v121;
    v62 = [*(v121 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v61 + v60) pageMarginInsets];
    sub_100741D44();
    v63 = sub_10074EF34();
    v65 = v64;

    if (v65)
    {
      v123._object = 0x800000010076A180;
      v123._countAndFlagsBits = 0xD000000000000035;
      v124._countAndFlagsBits = 0;
      v124._object = 0xE000000000000000;
      sub_1007458B4(v123, v124);
      sub_10000C518(&unk_100927770, &unk_1007BA6E0);
      v66 = v62;
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1007A5A00;
      *(v67 + 56) = &type metadata for String;
      *(v67 + 64) = sub_1000DD048();
      *(v67 + 32) = v63;
      *(v67 + 40) = v65;
      v62 = v66;
      sub_1007530B4();
    }

    sub_10074EF34();

    sub_100753BA4();
    v68 = v8;
    v70 = v116;
    v69 = v117;
    if (qword_100921778 != -1)
    {
      swift_once();
    }

    v71 = v15;
    v72 = sub_10000D0FC(v15, qword_100982190);
    v73 = v119;
    (*(v119 + 16))(v69, v72, v15);
    v74 = [v62 traitCollection];
    v75 = sub_100753804();
    v76 = v120;
    if (v75)
    {
      v77 = v118;
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v78 = qword_10093FF40;
    }

    else
    {
      v77 = v118;
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v78 = qword_10093FF58;
    }

    v101 = sub_10000D0FC(v68, v78);
    (*(v76 + 16))(v70, v101, v68);

    (*(v76 + 32))(v77, v70, v68);
    sub_100747964();
    sub_100747994();
    sub_100742004();
    sub_100741FE4();

    swift_unknownObjectRelease();
    (*(v76 + 8))(v77, v68);
    (*(v73 + 8))(v69, v71);
  }

  else
  {
    sub_10074C814();
    if (!swift_dynamicCastClass())
    {
      sub_100742574();
      v102 = swift_dynamicCastClass();
      if (v102)
      {
        v103 = v102;
        v104 = v121;
        if (sub_10074A054())
        {
          v105 = type metadata accessor for AppEventSearchResultCollectionViewCell();
          v106 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          v107 = [*(v104 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
          v108 = swift_getObjectType();
          [*(v104 + v106) pageMarginInsets];
          v109 = *(v104 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_objectGraph);
          swift_unknownObjectRetain();
          a3 = sub_100723554(v103, v107, v109, a3, v105, v108);
          goto LABEL_4;
        }

        v111 = type metadata accessor for ContentSearchResultCollectionViewCell();
        sub_100742564();
        v112 = sub_100668924(a2 & 1);

        v113 = *(v104 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits);
        v114 = swift_getObjectType();
        [swift_unknownObjectRetain() pageMarginInsets];
        v23 = ASKDeviceTypeGetCurrent();
        swift_unknownObjectRetain();
        v24 = v112;
        v25 = v113;
        v26 = v23;
        v27 = v111;
        v28 = v114;
        goto LABEL_3;
      }

      return 0.0;
    }

    v79 = type metadata accessor for SearchLockupListCollectionViewCell();
    v80 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    v81 = v121;
    v82 = [*(v121 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v81 + v80) pageMarginInsets];
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    swift_getObjectType();
    LODWORD(v121) = sub_10032E1E4(v82);
    v122 = v91;
    v92 = sub_10074C804();
    v94 = v93;
    v95 = sub_10074C7F4();
    v97 = v96;
    if (sub_10074C7C4())
    {
      v98 = sub_10074ECB4();
      v100 = v99;
    }

    else
    {
      v98 = 0;
      v100 = 0;
    }

    a3 = sub_100425630(v92, v94, v95, v97, v98, v100, v121 & 1, v122, a3, 1.79769313e308, v84, v86, v88, v90, v82, v79);
    swift_unknownObjectRelease();
  }

  return a3;
}

double sub_1000DCD94(void *a1, uint64_t a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    v9 = a1;
    v10 = sub_10074A0A4();
    if (v10)
    {
      v11 = v10;
      v12 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
      v13 = [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
      v14 = [v13 horizontalSizeClass];

      if (v14 == 1)
      {
        v15 = [*(v2 + v12) traitCollection];
        v16 = sub_10074A094();

        [*(v3 + v12) pageContainerSize];
        v18 = sub_1000DC1D8(v11, v16 & 1, v17);
      }

      else
      {
        sub_1000DA628(a2, v8);
      }

      v7 = v18;
    }

    else
    {
    }
  }

  return v7;
}

unint64_t sub_1000DCF04()
{
  sub_10000C518(&qword_100927760, &qword_1007AE390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5620;
  sub_100753094();
  sub_1007544E4();
  *(inited + 96) = &type metadata for UInt32;
  *(inited + 72) = 0;
  sub_100753094();
  sub_1007544E4();
  *(inited + 168) = &type metadata for UInt32;
  *(inited + 144) = 0;
  sub_100753094();
  sub_1007544E4();
  *(inited + 240) = &type metadata for UInt32;
  *(inited + 216) = 0;
  v1 = sub_100414D14(inited);
  swift_setDeallocating();
  sub_10000C518(&qword_100927768, qword_1007AAE20);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_1000DD048()
{
  result = qword_1009332F0;
  if (!qword_1009332F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009332F0);
  }

  return result;
}

char *sub_1000DD09C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_contentView] = 0;
  sub_1000DDB7C(a1, &v1[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_layoutMetrics]);
  v3 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_contentScrollView] = v3;
  sub_10000C824(a1 + 80, v18);
  sub_10000C824(a1 + 40, &v19);
  sub_10000C824(a1 + 120, &v20);
  v4 = type metadata accessor for OnboardingTrayView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingTrayView_itemViewLayoutItems] = _swiftEmptyArrayStorage;
  sub_1000DDBB4(v18, &v5[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingTrayView_layoutMetrics]);
  v17.receiver = v5;
  v17.super_class = v4;
  v6 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_1000DDC10(v18);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_trayView] = v6;
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_trayBackgroundView] = v10;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for OnboardingPageView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_contentScrollView;
  [*&v11[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_contentScrollView] setContentInsetAdjustmentBehavior:2];
  [*&v11[v12] setShowsVerticalScrollIndicator:0];
  [*&v11[v12] setShowsHorizontalScrollIndicator:0];
  [v11 addSubview:*&v11[v12]];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_trayBackgroundView;
  [v11 addSubview:*&v11[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_trayBackgroundView]];
  v14 = [*&v11[v13] contentView];
  [v14 addSubview:*&v11[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_trayView]];

  sub_1000DDC64(a1);
  return v11;
}

id sub_1000DD384()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for OnboardingPageView();
  objc_msgSendSuper2(&v37, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_trayView];
  v2 = [v1 isHidden];
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if ((v2 & 1) == 0)
  {
    sub_1007477B4();
    [v1 measurementsWithFitting:v0 in:{v8, v9}];
    v6 = v10;
    v7 = v11;
    sub_1007477B4();
    v4 = floor(CGRectGetMidX(v38) + v6 * -0.5);
    sub_1007477B4();
    MaxY = CGRectGetMaxY(v39);
    v5 = MaxY - v7;
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_trayBackgroundView] setFrame:{v4, MaxY - v7, v6, v7}];
    [v1 setFrame:{0.0, 0.0, v6, v7}];
  }

  [v0 bounds];
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_contentScrollView];
  [v13 setFrame:?];
  v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_contentView];
  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    rect = v5;
    v17 = v14;
    sub_1007477B4();
    MinX = CGRectGetMinX(v40);
    sub_1007477B4();
    MinY = CGRectGetMinY(v41);
    sub_1007477B4();
    Width = CGRectGetWidth(v42);
    v34 = v4;
    v35 = v6;
    if (v2)
    {
      sub_1007477B4();
      Height = CGRectGetHeight(v43);
    }

    else
    {
      v44.origin.x = v4;
      v44.origin.y = rect;
      v44.size.width = v6;
      v44.size.height = v7;
      Height = CGRectGetMinY(v44);
    }

    v22 = Height;
    [v17 measurementsWithFitting:v0 in:{Width, Height}];
    v15 = v23;
    v16 = v24;
    v45.origin.x = MinX;
    v45.origin.y = MinY;
    v45.size.width = Width;
    v45.size.height = v22;
    v25 = floor(CGRectGetMidX(v45) + v15 * -0.5);
    v46.origin.x = MinX;
    v46.origin.y = MinY;
    v46.size.width = Width;
    v46.size.height = v22;
    v26 = CGRectGetMinY(v46);
    sub_1007477B4();
    sub_100753B24();
    [v17 setFrame:?];
    if ((v2 & 1) != 0 || (v47.origin.x = v25, v47.origin.y = v26, v47.size.width = v15, v47.size.height = v16, v27 = CGRectGetMaxY(v47), v48.origin.x = v34, v48.size.width = v35, v48.origin.y = rect, v48.size.height = v7, CGRectGetMinY(v48) > v27))
    {
      [*&v0[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_trayBackgroundView] setEffect:0];
      v3 = 0.0;
    }

    else
    {
      v49.origin.x = v34;
      v49.origin.y = rect;
      v49.size.width = v35;
      v49.size.height = v7;
      v33 = CGRectGetHeight(v49);
      v50.origin.x = v25;
      v50.origin.y = v26;
      v50.size.width = v15;
      v50.size.height = v16;
      v28 = CGRectGetMaxY(v50);
      v51.origin.x = v34;
      v51.origin.y = rect;
      v51.size.width = v35;
      v51.size.height = v7;
      v29 = v28 - CGRectGetMinY(v51);
      if (v29 >= v33)
      {
        v3 = v33;
      }

      else
      {
        v3 = v29;
      }

      v30 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension18OnboardingPageView_trayBackgroundView];
      v31 = [objc_opt_self() effectWithStyle:4];
      [v30 setEffect:v31];
    }
  }

  [v13 setContentSize:{v15, v16, *&v33}];
  [v13 setContentInset:{0.0, 0.0, v3, 0.0}];
  return [v13 setContentOffset:{0.0, 0.0}];
}

id sub_1000DD7AC(void *a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for OnboardingPageView();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_100753804();

  if (!a1 || ((sub_100753804() ^ v5) & 1) != 0)
  {
    return [v2 setNeedsLayout];
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_100753094();
  v12 = v11;
  if (v10 == sub_100753094() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_100754754();

    if ((v14 & 1) == 0)
    {
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_1000DD9BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingPageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1000DDA90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1000DDABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1000DDB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000DDC98()
{
  if ([v0 isViewLoaded])
  {
    v1 = [v0 view];
    if (!v1)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {

      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
LABEL_8:
        [v5 safeAreaInsets];

        return;
      }

      goto LABEL_11;
    }
  }

  v6 = [v0 parentViewController];
  if (v6)
  {
    v7 = v6;
    v5 = [v6 viewIfLoaded];

    if (v5)
    {
      goto LABEL_8;
    }
  }
}

char *sub_1000DDDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  *(v3 + qword_1009277D8) = 0;
  v7 = v3 + qword_10097D998;
  *(v3 + qword_10097D998 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_100744074();
  if (!v8)
  {

    sub_10000C4F0(v7);
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_10074D4D4();
  sub_100752764();
  sub_100752D34();
  *(v3 + qword_1009277E0) = v15;
  *(v3 + qword_10097D990) = a2;

  v9 = sub_10046C2C4(a1, a3);
  v10 = *&v9[qword_10097EE38];
  v11 = v9;
  v12 = v10;

  sub_100749AD4();

  result = [v11 collectionView];
  if (result)
  {
    v14 = result;
    [result setKeyboardDismissMode:1];

    return v11;
  }

  __break(1u);
  return result;
}

id sub_1000DDFF0(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_100752AC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = a1;
  v11.super_class = ObjectType;
  v7 = a1;
  objc_msgSendSuper2(&v11, "viewDidLoad");
  result = [v7 collectionView];
  if (result)
  {
    v9 = result;
    memset(v10, 0, sizeof(v10));
    sub_100752A84();
    sub_10000C8CC(v10, &unk_100923520, &qword_1007A5A70);
    sub_100753C74();

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000DE1C4(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10074D4C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10074D484();
  (*(v9 + 8))(v11, v8);
}

void sub_1000DE30C(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10074D4C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_10074D484();
  (*(v11 + 8))(v13, v10);
}

void sub_1000DE448(void *a1, double a2, double a3)
{
  v14.receiver = v3;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v13[4] = sub_1000E12F8;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1003ED3AC;
  v13[3] = &unk_1008679E8;
  v11 = _Block_copy(v13);
  v12 = v3;

  [a1 animateAlongsideTransition:v11 completion:0];
  _Block_release(v11);
}

void sub_1000DE5AC(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000E1350;
  *(v4 + 24) = v3;
  v6[4] = sub_100045E0C;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10011B528;
  v6[3] = &unk_100867A60;
  v5 = _Block_copy(v6);

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_1000DE714(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong collectionView];

    [v3 reloadData];
  }
}

void sub_1000DE790(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1000DE448(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1000DE810()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10000C518(&qword_100927DD0, &qword_1007AAFC0);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_10000C518(&qword_100927DD8, &qword_1007AAFC8);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_10000C518(&qword_100927DE0, &qword_1007AAFD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_100358748();
  sub_10074D914();
  sub_10000C518(&qword_100927DE8, &qword_1007AAFD8);
  sub_10002DDC8(&qword_100927DF0, &qword_100927DE8, &qword_1007AAFD8, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  sub_100752584();

  sub_10000C620(v18);
  (*(v5 + 8))(v7, v4);
  sub_10074D934();
  sub_10000C518(&qword_100927DF8, &qword_1007AAFE0);
  sub_10002DDC8(&qword_100927E00, &qword_100927DF8, &qword_1007AAFE0, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v8 = v12;
  sub_100752584();

  sub_10000C620(v18);
  (*(v13 + 8))(v8, v14);
  sub_10074D924();
  sub_10000C518(&qword_100927E08, &qword_1007AAFE8);
  sub_10002DDC8(&qword_100927E10, &qword_100927E08, &qword_1007AAFE8, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v9 = v15;
  sub_100752584();

  sub_10000C620(v18);
  return (*(v16 + 8))(v9, v17);
}

uint64_t sub_1000DEC48(uint64_t a1, uint64_t a2)
{
  v3 = a2 + qword_10097D998;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_1000DECD8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1000E12E8;
}

uint64_t sub_1000DED3C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + qword_10097D998;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_1000DEDCC(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000E12A8;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000C0B24;
}

id sub_1000DEE5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100751874();
  v72 = *(v4 - 8);
  __chkstk_darwin(v4);
  v70 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v67 - v7;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v71 = v67 - v11;
  v12 = [v1 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setHidden:1];
  }

  sub_10074D054();
  v15 = v14;
  sub_10074D074();
  v16 = sub_10074D064();
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
  v73 = v15;
  v74 = v17;
  v69 = a1;
  if (v16)
  {
    v68 = v4;
    v18 = sub_10074ECB4();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v67[1] = v20;
    v21 = sub_10074ECC4();
    if (v21)
    {
      v22 = v21;
      if (sub_10074F1D4())
      {
        sub_100743AC4();
      }

      else if (sub_10074F1C4())
      {
        sub_10056028C(v23, v22, 0);
      }
    }

    sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
    v24 = swift_allocObject();
    *(v24 + 16) = v74;
    *(v24 + 24) = v16;

    v16 = sub_100753FF4();
    v4 = v68;
  }

  sub_100751864();

  sub_100751844();
  sub_100751814();
  if (v16)
  {
    v25 = v16;
    v26 = [v25 title];
    v27 = sub_100753094();
    v29 = v28;

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v31 = [v25 title];
      sub_100753094();

      v32 = sub_100751854();
      sub_1007541C4();
      v32(v75, 0);
    }

    v33 = [v25 image];
    if (v33)
    {
      v34 = v33;
      v35 = sub_100751854();
      sub_100754194();
      v35(v75, 0);
      v36 = sub_100751854();
      sub_100754094();
      v36(v75, 0);
      v37 = sub_100751854();
      sub_1007540D4();
      v37(v75, 0);
      v38 = [objc_opt_self() configurationWithScale:1];
      v39 = sub_100751854();
      sub_100754024();
      v39(v75, 0);
    }

    v40 = v25;
    v41 = sub_100751834();
    sub_100751824();
    v41(v75, 0);
  }

  else
  {
  }

  v43 = v71;
  v42 = v72;
  (*(v72 + 32))(v71, v8, v4);
  v44 = sub_10074D044();
  if (v44)
  {
    v45 = v44;
    v46 = v70;
    (*(v42 + 16))(v70, v43, v4);
    v47 = objc_allocWithZone(type metadata accessor for ContextualContentUnavailableView());
    v48 = v74;

    v49 = sub_100066BF4(v46, v45, v48);
  }

  else
  {
    sub_100016C60(0, &qword_100924610, UIContentUnavailableView_ptr);
    (*(v42 + 16))(v70, v43, v4);
    v49 = sub_100753A24();
  }

  v50 = objc_allocWithZone(sub_1007495D4());
  v51 = v49;
  v52 = sub_1007495C4();
  v53 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v54 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v55 = *&v2[v53];
  *&v2[v53] = v52;
  v56 = v52;

  result = [v2 view];
  if (result)
  {
    v58 = result;
    [result bounds];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;

    v75[0] = v60;
    v75[1] = v62;
    v75[2] = v64;
    v75[3] = v66;
    v76 = 0;
    sub_10074B964();

    return (*(v42 + 8))(v43, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id (*sub_1000DF4F8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1000E1244;
}

void sub_1000DF584(void *a1)
{
  v1 = a1;
  sub_1000DF55C();
}

uint64_t sub_1000DF5F4(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_10074D4C4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100742964();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_10000C7B4(v6 + v15, v22);
  if (v23)
  {
    sub_10000C824(v22, v21);
    sub_10000C8CC(v22, &unk_100930240, qword_1007A56E0);
    v18 = a2;
    v19 = v7;
    sub_10000C888(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_100742974();
    (*(v12 + 8))(v14, v11);
    v16 = sub_10000C620(v21);
  }

  else
  {
    v16 = sub_10000C8CC(v22, &unk_100930240, qword_1007A56E0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_10074D484();
  return (*(v8 + 8))(v10, v7);
}

void sub_1000DF888(void *a1)
{
  v1 = a1;
  sub_1000DF5CC();
}

uint64_t sub_1000DF8D0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1000E11C4(&qword_100927DC8, type metadata accessor for SearchResultsDiffablePageViewController, &unk_1007B7520);
  v2 = sub_10074DA44();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_10074DA34();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_10000C5B4(v18, v17);
  sub_10000C610(v17, v16);
  sub_10000C518(&qword_100922CC0, &unk_1007AAFB0);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100254A80((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000C5B4(v19, v17);
  sub_10000C610(v17, v16);
  sub_10000C518(&qword_100922CC0, &unk_1007AAFB0);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_100254A80((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_10074DA64();
  v10 = type metadata accessor for SearchResultsPageLayoutSectionProvider(0);
  swift_allocObject();
  sub_10000C824(v17, v16);
  sub_10000C824(v16, v15);

  v11 = sub_10074CB64();
  sub_10000C620(v16);
  result = sub_10000C620(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

id sub_1000DFBE4()
{
  v1 = v0;
  swift_getObjectType();
  sub_10000C518(&qword_100922CE0, &qword_1007A56D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007A97A0;
  sub_10000C518(&qword_100927DB0, &qword_1007AAFA8);
  swift_allocObject();
  swift_retain_n();

  v3 = sub_10074DB94();
  v4 = sub_10002DDC8(&qword_100927DB8, &qword_100927DB0, &qword_1007AAFA8, &protocol conformance descriptor for SearchAdsCollectionElementsObserver<A, B>);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for SearchResultsCollectionElementsObserver();
  v5 = swift_allocObject();
  v6 = sub_1000E11C4(&qword_100927DC0, type metadata accessor for SearchResultsCollectionElementsObserver, &unk_1007D0CC8);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v7 = swift_allocObject();
  *(v7 + 16) = 2;
  v8 = sub_1000E11C4(&qword_100922CF8, type metadata accessor for BackgroundConfigurationCollectionElementsObserver, "me\t");
  *(v2 + 64) = v7;
  *(v2 + 72) = v8;
  sub_1000E11C4(&qword_100927DC8, type metadata accessor for SearchResultsDiffablePageViewController, &unk_1007B7520);
  sub_10074DA64();
  sub_10074B884();

  result = [v1 collectionView];
  if (result)
  {
    sub_10074E304();
    swift_allocObject();
    *(v2 + 80) = sub_10074E2F4();
    *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
    sub_10074D7C4();
    swift_allocObject();
    v10 = sub_10074D7B4();
    sub_1006B5B04();
    if (swift_dynamicCastClass())
    {
      sub_10074D794();
      sub_10074D7A4();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000DFF10@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchResultsPageShelfLayoutSpacingProvider;
  result = sub_1000E1170();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000DFF44()
{
  sub_10000C518(&qword_100927D80, &qword_1007AAFA0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A6580;
  v2 = [v0 collectionView];
  type metadata accessor for SearchResultItemSupplementaryProvider();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(v3 + 24) = &off_100867878;
  swift_unknownObjectWeakAssign();
  v4 = sub_1000E11C4(&qword_100927D88, type metadata accessor for SearchResultItemSupplementaryProvider, &unk_1007B6998);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  sub_10000C518(&qword_100927D90, &qword_1007BB1B0);
  sub_10002DDC8(&qword_100927D98, &qword_100927D90, &qword_1007BB1B0, &unk_1007B7520);
  sub_10074DA64();
  type metadata accessor for GenericPageItemSupplementaryProvider();
  v5 = swift_allocObject();
  sub_10000C824(v9, v5 + 16);
  type metadata accessor for GenericPageSeparatorItemSupplementaryProvider();
  v6 = swift_allocObject();
  sub_100012160(v9, v6 + 16);
  *(v5 + 56) = v6;
  v7 = sub_1000E11C4(&qword_100927DA0, type metadata accessor for GenericPageItemSupplementaryProvider, &unk_1007C1138);
  *(v1 + 48) = v5;
  *(v1 + 56) = v7;
  sub_10074D6D4();
  swift_allocObject();
  return sub_10074D6C4();
}

void sub_1000E015C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_100927D78, &unk_1007C06C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  sub_10041CB60(a1);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  LODWORD(a1) = enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:);
  (*(v5 + 8))(v7, v4);
  if (v8 == a1)
  {
    *(v2 + qword_1009277D8) = sub_10074D964() & 1;
    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    v9 = v10[1];
    sub_10074B134();
  }
}

void sub_1000E02FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100753064();
  isa = sub_100741704().super.isa;
  v22.receiver = v5;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", a1, a2, v11, isa);

  type metadata accessor for SearchTransparencyView();
  if (sub_1007539C4() == a3 && v13 == a4)
  {
  }

  else
  {
    v14 = sub_100754754();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = a2;
    if (sub_10074D954())
    {
      v18 = sub_100743EA4();
      sub_1001D3738(v18, sub_1000E12F0);
      v20 = v19;

      v21 = sub_100743E94();
      sub_10004DF04(v21, 0, v20);

      [v16 setNeedsLayout];
    }

    else
    {
    }
  }
}

uint64_t sub_1000E04D8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1007417F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100753094();
  v15 = v14;
  sub_100741744();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_1000E02FC(v16, v17, v13, v15);

  return (*(v10 + 8))(v12, v9);
}

id sub_1000E061C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10074F704();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    sub_1000E078C(result);

    sub_10074F594();
    sub_10074D974();
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      sub_100741764();
      v11 = 0;
    }

    (*(v4 + 8))(v7, v3);
    v12 = sub_1007417F4();
    return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E078C(void *a1)
{
  v2 = sub_100745644();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074F6E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = v18 - v12;
  (*(v7 + 104))(v18 - v12, enum case for PageGrid.Direction.vertical(_:), v6, v11);
  [a1 bounds];
  v18[0] = v14;
  v18[1] = v15;
  sub_1000DDC98();
  v16 = [a1 traitCollection];
  sub_100745604();
  (*(v7 + 16))(v9, v13, v6);
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  sub_10074F6B4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v13, v6);
}

double sub_1000E0A6C(void *a1)
{
  v2 = sub_10074F704();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074D954();
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    sub_1000E078C(a1);
    sub_10074FC24();
    sub_10074F674();
    sub_1000E0DC4(v9, v10, v8, a1);
    v12 = v11;

    v13 = *(v3 + 8);
    v13(v5, v2);
    if (v12 != 0.0)
    {
      sub_1000E078C(a1);
      sub_10074F5B4();
      v15 = v14;
      v13(v5, v2);
      return v12 + v15;
    }
  }

  return v7;
}

double sub_1000E0BD8()
{

  sub_10000C4F0(v0 + qword_10097D998);

  return result;
}

double sub_1000E0C28(uint64_t a1)
{

  sub_10000C4F0(a1 + qword_10097D998);

  return result;
}

uint64_t type metadata accessor for SearchResultsDiffablePageViewController(uint64_t a1)
{
  result = qword_100927810;
  if (!qword_100927810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000E0D68@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + qword_10097EE08);
  a1[3] = sub_10074D994();
  a1[4] = &protocol witness table for SearchResultsDiffablePagePresenter;
  *a1 = v3;

  return result;
}

double sub_1000E0DC4(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = sub_10074CD14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100743E84();
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921340 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  sub_10000D0FC(v10, qword_1009816F8);
  v11 = [a4 traitCollection];
  sub_100753C14();

  v12 = sub_10074F3F4();
  v17 = v12;
  v18 = sub_1000E11C4(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v13 = sub_10000D134(v16);
  (*(*(v12 - 8) + 104))(v13, enum case for Feature.measurement_with_labelplaceholder(_:), v12);
  sub_10074FC74();
  sub_10000C620(v16);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v7 + 8))(v9, v6);
  sub_10000C888(v16, v17);
  sub_100750404();
  if (qword_10091FDD0 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_10097C8B8, qword_10097C8D0);
  sub_100750584();
  if (qword_10091FDD8 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_10097C8E0, qword_10097C8F8);
  sub_100750554();
  sub_10000C620(v16);
  return a1;
}

unint64_t sub_1000E1170()
{
  result = qword_100927DA8;
  if (!qword_100927DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927DA8);
  }

  return result;
}

uint64_t sub_1000E11C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E120C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E1268()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E12B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000E1300(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000E1318()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_1000E1380(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000E1394(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E13DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000E1430@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, double a13@<D4>, double a14@<D5>, double a17, double a18)
{
  v52 = a7;
  v53 = a6;
  v51 = a5;
  v60 = a8;
  v61 = a4;
  v58 = a2;
  v59 = a3;
  v55 = a13;
  v56 = a14;
  v50 = sub_100751BC4();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10074E984();
  v62 = *(v57 - 8);
  __chkstk_darwin(v57);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10074F6E4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v48 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v46 - v25;
  v27 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  __chkstk_darwin(v27);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v46 - v31;
  sub_100016B4C(v58, &v46 - v31, &unk_10093D6E0, &unk_1007A6080);
  sub_100016B4C(v59, &v32[*(v27 + 48)], &unk_10093D6E0, &unk_1007A6080);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  sub_1007525B4();

  v58 = v22;
  v33 = *(v22 + 104);
  v34 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v64)
  {
    v34 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v35 = *v34;
  v59 = v21;
  v33(v26, v35, v21);
  swift_getKeyPath();
  sub_1007525B4();

  v36 = *(v62 + 88);
  v54 = v20;
  v37 = v57;
  if (v36(v20) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v38 = v32;
    v39 = v58;
    v40 = v59;
    if (v52)
    {
      v41 = 2;
    }

    else
    {
      v41 = v53;
    }

    v42 = v47;
    sub_1007455F4();
    v43 = sub_100751BA4();
    (*(v49 + 8))(v42, v50);
    if (v43 & 1) != 0 && (sub_100745614())
    {
      v41 = 1;
    }

    (*(v39 + 16))(v48, v26, v40);
    sub_10005672C(v41);
    sub_10074F6B4();
    (*(v39 + 8))(v26, v40);
    return sub_10000C8CC(v38, &qword_100923228, &unk_1007AB120);
  }

  else
  {
    v63 = v51;
    sub_100016B4C(v32, v29, &qword_100923228, &unk_1007AB120);
    v45 = *(v27 + 48);
    sub_1000E1F2C();
    sub_100745684();
    (*(v58 + 8))(v26, v59);
    sub_10000C8CC(v32, &qword_100923228, &unk_1007AB120);
    sub_10000C8CC(&v29[v45], &unk_10093D6E0, &unk_1007A6080);
    sub_10000C8CC(v29, &unk_10093D6E0, &unk_1007A6080);
    return (*(v62 + 8))(v54, v37);
  }
}

uint64_t sub_1000E1A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1000E1ED0();

  return sub_100745684();
}

uint64_t sub_1000E1B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1000E1ED0();

  return sub_100745674();
}

uint64_t sub_1000E1BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E1F80();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1000E1C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v31[6] = a5;
  v31[7] = a6;
  v31[5] = a4;
  *&v31[3] = a14;
  *&v31[4] = a15;
  v31[1] = a7;
  v31[2] = a1;
  v20 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v31 - v25;
  v27 = *(v17 + 2);
  v28 = *(v17 + 24);
  sub_100016B4C(a2, v31 - v25, &unk_10093D6E0, &unk_1007A6080);
  sub_100016B4C(a3, &v26[*(v21 + 56)], &unk_10093D6E0, &unk_1007A6080);
  v32 = *v17;
  v33 = v27;
  v34 = v28;
  sub_100016B4C(v26, v23, &qword_100923228, &unk_1007AB120);
  v29 = *(v21 + 56);
  sub_100745684();
  sub_10000C8CC(v26, &qword_100923228, &unk_1007AB120);
  sub_10000C8CC(&v23[v29], &unk_10093D6E0, &unk_1007A6080);
  return sub_10000C8CC(v23, &unk_10093D6E0, &unk_1007A6080);
}

uint64_t sub_1000E1E54()
{
  v1 = *v0;
  sub_10000C518(&qword_100927E30, qword_1007BF5A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007A5A00;
  *(v2 + 56) = &type metadata for GenericPageGridProvider;
  *(v2 + 64) = sub_1000E1F2C();
  *(v2 + 72) = sub_1000E1FD4();
  *(v2 + 32) = v1;

  return v2;
}

unint64_t sub_1000E1ED0()
{
  result = qword_100927E18;
  if (!qword_100927E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927E18);
  }

  return result;
}

unint64_t sub_1000E1F2C()
{
  result = qword_100927E20;
  if (!qword_100927E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927E20);
  }

  return result;
}

unint64_t sub_1000E1F80()
{
  result = qword_100927E28;
  if (!qword_100927E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927E28);
  }

  return result;
}

unint64_t sub_1000E1FD4()
{
  result = qword_1009308B0;
  if (!qword_1009308B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009308B0);
  }

  return result;
}

unint64_t sub_1000E203C()
{
  result = qword_100927E38;
  if (!qword_100927E38)
  {
    sub_100741CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927E38);
  }

  return result;
}

uint64_t sub_1000E2094(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  __chkstk_darwin(v4 - 8);
  v72 = &v68 - v5;
  v70 = sub_100752614();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100748314();
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v71 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100742284();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin(v9);
  v85 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074ED34();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v68 - v15;
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  v78 = sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v89 = sub_100752DE4();
  sub_10000C518(&unk_100925780, qword_1007AC630);
  sub_100752764();
  sub_100752D34();
  swift_getObjectType();
  sub_100741CE4();
  v88 = sub_1007424E4();
  v86 = v20;
  swift_unknownObjectRelease();
  v21 = *(v12 + 8);
  v21(v19, v11);
  if (!sub_100741C64())
  {
LABEL_6:
    v68 = a2;
    v80 = sub_100741C94();
    v29 = v28;
    v79 = sub_100741CB4();
    v77 = v30;
    v87 = a1;
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v76 = sub_100752E44();
    v75 = sub_10000D0FC(v76, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007AB1A0;
    sub_1007523A4();
    sub_1007523A4();
    v94 = &type metadata for String;
    aBlock = v80;
    v92 = v29;

    sub_1007523B4();
    sub_10000C8CC(&aBlock, &unk_100923520, &qword_1007A5A70);
    sub_1007523A4();
    v94 = &type metadata for String;
    v31 = v77;
    aBlock = v79;
    v92 = v77;

    sub_1007523B4();
    sub_10000C8CC(&aBlock, &unk_100923520, &qword_1007A5A70);
    sub_100752CF4();

    sub_100741CD4();
    v33 = v32;
    sub_100741CA4();
    v35 = v34;
    v76 = v29;
    v36 = sub_100753064();
    v37 = sub_100753064();
    if (v33)
    {
      v38 = sub_100753064();

      v39 = v31;
      if (v35)
      {
LABEL_10:
        v40 = sub_100753064();

        goto LABEL_13;
      }
    }

    else
    {
      v38 = 0;
      v39 = v31;
      if (v35)
      {
        goto LABEL_10;
      }
    }

    v40 = 0;
LABEL_13:
    v41 = v85;
    v42 = [objc_allocWithZone(SKPurchaseIntent) initWithBundleId:v36 productIdentifier:v37 appName:v38 productName:v40];

    sub_100741CC4();
    if (v43)
    {
      v44 = sub_100753064();
    }

    else
    {
      v44 = 0;
    }

    v45 = v76;
    [v42 setAdditionalBuyParams:v44];

    swift_getObjectType();
    sub_1007423D4();
    v47 = v83;
    v46 = v84;
    if ((*(v83 + 88))(v41, v84) != enum case for LegacyAppState.openable(_:))
    {

      (*(v47 + 8))(v41, v46);
      goto LABEL_30;
    }

    (*(v47 + 96))(v41, v46);

    (*(v81 + 8))(v41, v82);
    sub_100741C84();
    if (v48)
    {
      v49 = sub_100741C94();
      v51 = v50;
      v52 = objc_allocWithZone(LSApplicationRecord);
      v53 = sub_1000E34B8(v49, v51, 1);
      if (!v53)
      {

LABEL_29:

        goto LABEL_30;
      }

      v88 = v53;
      v54 = [v53 shortVersionString];
      if (v54)
      {
        v55 = v54;
        sub_100753094();

        LOBYTE(v55) = sub_1007471D4();

        if (v55)
        {
          v56 = swift_allocObject();
          v56[2] = v80;
          v56[3] = v45;
          v56[4] = v79;
          v56[5] = v39;
          v95 = sub_1000E35D4;
          v96 = v56;
          aBlock = _NSConcreteStackBlock;
          v92 = 1107296256;
          v93 = sub_1000CF7B0;
          v94 = &unk_100867B58;
          v57 = _Block_copy(&aBlock);

          [v42 send:v57];
          _Block_release(v57);
          sub_100741CE4();
          (*(v81 + 104))(v71, enum case for OpenableDestination.app(_:), v82);
          if (sub_100741C74())
          {
            v58 = v72;
            sub_10074EC64();

            v59 = v69;
            v60 = v70;
            (*(v69 + 56))(v58, 0, 1, v70);
            (*(v59 + 32))(v73, v58, v60);
            v27 = v89;
          }

          else
          {
            v63 = v69;
            v64 = v72;
            v65 = v70;
            (*(v69 + 56))(v72, 1, 1, v70);
            sub_1007525F4();
            v66 = (*(v63 + 48))(v64, 1, v65);
            v27 = v89;
            if (v66 != 1)
            {
              sub_10000C8CC(v64, &qword_100927E40, &unk_1007BA470);
            }
          }

          sub_100742174();
          swift_allocObject();
          v67 = sub_100742154();
          sub_10052ADAC(v67, 1, v68);
          sub_100752D54();

          goto LABEL_34;
        }

LABEL_30:
        v61 = sub_100741C74();
        if (v61)
        {
          sub_10052AB60(v61, 1, v68);
        }

        else
        {
          sub_1000E3464();
          swift_allocError();
          sub_100752D74();
        }

        v27 = v89;
        sub_100752D54();
LABEL_34:

        swift_unknownObjectRelease();

        return v27;
      }
    }

    goto LABEL_29;
  }

  sub_100743724();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    goto LABEL_6;
  }

  v23 = v22;
  sub_100743704();
  sub_100741CE4();
  v24 = sub_1000E35F8(v19, v16, a1, a2);
  v25 = a2;
  v26 = v24;
  v21(v16, v11);
  v21(v19, v11);
  if (v26)
  {

    swift_unknownObjectRelease();

    return v26;
  }

  else
  {
    sub_1007436C4();
    sub_1000E2D84(v90, &aBlock);
    sub_10000C620(v90);
    sub_1007436D4();

    sub_10052ADC4(v23, 1, v25);

    v27 = v89;
    sub_100752D54();
    swift_unknownObjectRelease();
  }

  return v27;
}

uint64_t sub_1000E2D84@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = sub_100742284();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  swift_getObjectType();
  sub_1007423E4();
  (*(v6 + 16))(v8, v11, v5);
  v12 = (*(v6 + 88))(v8, v5);
  v13 = enum case for LegacyAppState.openable(_:);
  if (v12 == enum case for LegacyAppState.openable(_:))
  {
    (*(v6 + 96))(v8, v5);

    v14 = sub_100748314();
    (*(*(v14 - 8) + 8))(v8, v14);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  sub_10000C5B4(a1, v33);
  sub_100016C60(0, &qword_100927E50, NSDictionary_ptr);
  if (swift_dynamicCast())
  {
    v15 = a3;
    v16 = v31;
    v17 = sub_100753064();
    v28 = v16;
    v18 = [v16 valueForKey:v17];

    if (v18)
    {
      sub_100754314();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33[0] = v31;
    v33[1] = v32;
    a3 = v15;
    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v19 = v30;
        if (v12 != v13)
        {
          v21 = v29;
          v22 = sub_100016C60(0, &qword_100927E58, NSMutableDictionary_ptr);
          v23 = v28;
          v24 = a3;
          v25 = sub_100753594();
          *&v33[0] = v21;
          *(&v33[0] + 1) = v19;

          v34._object = 0x800000010076A3F0;
          v34._countAndFlagsBits = 0xD000000000000013;
          sub_1007531B4(v34);

          v26 = sub_100753064();

          *&v33[0] = 0x6D61726150797562;
          *(&v33[0] + 1) = 0xE900000000000073;
          [v25 __swift_setObject:v26 forKeyedSubscript:sub_100754794()];

          swift_unknownObjectRelease();
          v24[3] = v22;

          *v24 = v25;
          return (*(v6 + 8))(v11, v5);
        }

        (*(v6 + 8))(v11, v5);
      }

      else
      {
        (*(v6 + 8))(v11, v5);
      }
    }

    else
    {
      (*(v6 + 8))(v11, v5);

      sub_10000C8CC(v33, &unk_100923520, &qword_1007A5A70);
    }
  }

  else
  {
    (*(v6 + 8))(v11, v5);
  }

  return sub_10000C5B4(a1, a3);
}

double sub_1000E3220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v7 = sub_100752E44();
  sub_10000D0FC(v7, qword_100983318);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007AB1A0;
  sub_1007523A4();
  sub_1007523A4();
  v12 = &type metadata for String;
  v10 = a1;
  v11 = a2;

  sub_1007523B4();
  sub_10000C8CC(&v10, &unk_100923520, &qword_1007A5A70);
  sub_1007523A4();
  v12 = &type metadata for String;
  v10 = a3;
  v11 = a4;

  sub_1007523B4();
  sub_10000C8CC(&v10, &unk_100923520, &qword_1007A5A70);
  sub_100752CF4();

  return result;
}

unint64_t sub_1000E3464()
{
  result = qword_100927E48;
  if (!qword_100927E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927E48);
  }

  return result;
}

id sub_1000E34B8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100753064();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100741134();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1000E3594()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_1000E35E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000E35F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v54 = a2;
  v52 = a1;
  v5 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_100752614();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100748314();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v48 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074ED34();
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v44 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100742284();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100741C44();
  v53 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741894();
  result = sub_100741874();
  if (result)
  {
    v50 = v19;
    v37 = v7;
    v38 = v10;
    sub_10000C518(&unk_100925780, qword_1007AC630);
    sub_100752764();
    v39 = a4;
    sub_100752D34();
    v23 = v55;
    swift_getObjectType();
    v51 = sub_1007424E4();
    v49 = v23;
    sub_1007424E4();
    sub_100741F24();
    if ((sub_100741C34() & 1) != 0 || (swift_getObjectType(), sub_1007423D4(), v24 = sub_100742224(), (*(v16 + 8))(v18, v15), (v24)) && (swift_getObjectType(), sub_1007423D4(), v25 = sub_100742234(), (*(v16 + 8))(v18, v15), (v25))
    {
      (*(v40 + 16))(v44, v54, v41);
      (*(v42 + 104))(v48, enum case for OpenableDestination.app(_:), v43);
      if (sub_100741C74())
      {
        v26 = v37;
        sub_10074EC64();

        v28 = v46;
        v27 = v47;
        (*(v46 + 56))(v26, 0, 1, v47);
        (*(v28 + 32))(v38, v26, v27);
        v29 = v50;
      }

      else
      {
        v31 = v46;
        v30 = v47;
        v32 = v37;
        (*(v46 + 56))(v37, 1, 1, v47);
        sub_1007525F4();
        v33 = (*(v31 + 48))(v32, 1, v30);
        v29 = v50;
        if (v33 != 1)
        {
          sub_10000C8CC(v32, &qword_100927E40, &unk_1007BA470);
        }
      }

      sub_100742174();
      swift_allocObject();
      v34 = sub_100742154();
      v35 = sub_10052ADAC(v34, 1, v39);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*(v53 + 8))(v21, v29);
      return v35;
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      (*(v53 + 8))(v21, v50);
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000E3C60()
{
  result = qword_100927E60;
  if (!qword_100927E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927E60);
  }

  return result;
}

id sub_1000E3CB4(uint64_t a1, uint64_t a2, void *a3)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B6430;
  aBlock[3] = &unk_100867C38;
  v5 = _Block_copy(aBlock);

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v6 = objc_msgSendSuper2(&v11, "initWithSectionProvider:configuration:", v5, a3);
  _Block_release(v5);
  type metadata accessor for SearchTransparencyView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = v6;
  sub_1007539C4();
  v9 = sub_100753064();

  [v8 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v9];

  return v8;
}

double sub_1000E3EA8()
{
  v1 = v0;
  v2 = sub_10074F704();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v28.receiver = v0;
  v28.super_class = v12;
  objc_msgSendSuper2(&v28, "collectionViewContentSize");
  v14 = v13;
  v15 = [v0 collectionView];
  if (!v15)
  {
    return v14;
  }

  v16 = v15;
  v17 = [v0 collectionView];
  if (!v17 || (v18 = v17, v19 = [v17 delegate], v18, !v19))
  {

    return v14;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return v14;
  }

  sub_1000E078C(v16);
  swift_unknownObjectRelease();
  (*(v3 + 32))(v11, v8, v2);
  v20 = [v1 collectionView];
  if (!v20 || (v21 = v20, v22 = [v20 delegate], v21, !v22))
  {

LABEL_12:
    (*(v3 + 8))(v11, v2);
    return v14;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v23 = sub_10074D954();
  if (v23)
  {
    v24 = v23;
    sub_1000E078C(v16);
    sub_10074FC24();
    sub_10074F674();
    sub_1000E0DC4(v25, v26, v24, v16);
    swift_unknownObjectRelease();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10074F5B4();

  (*(v3 + 8))(v11, v2);
  return v14;
}

uint64_t sub_1000E41E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v64 = sub_10000C518(&qword_100938C30, &unk_1007C2580);
  __chkstk_darwin(v64);
  v8 = &v53 - v7;
  v9 = sub_1007417F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v68 = &v53 - v14;
  v15 = sub_10000C518(&unk_100923C00, qword_1007AB3D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  __chkstk_darwin(v21);
  v66 = &v53 - v22;
  v23 = sub_1000E4CB0(a1);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v70.receiver = v4;
  v70.super_class = v30;
  result = objc_msgSendSuper2(&v70, "layoutAttributesForElementsInRect:", v23, v25, v27, v29);
  if (!result)
  {
    return result;
  }

  v32 = result;
  sub_1000E5AA4();
  v58 = sub_1007532A4();

  v33 = [v5 collectionView];
  if (!v33)
  {
    return v58;
  }

  v34 = v33;
  v35 = [v33 delegate];

  if (!v35)
  {
    return v58;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    return v58;
  }

  sub_1000E061C(v66);
  v69 = _swiftEmptyArrayStorage;
  if (v58 >> 62)
  {
    result = sub_100754664();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_30:
    v52 = _swiftEmptyArrayStorage;
LABEL_31:
    swift_unknownObjectRelease();

    sub_10000C8CC(v66, &unk_100923C00, qword_1007AB3D0);
    return v52;
  }

  result = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_7:
  v53 = v35;
  v57 = v17;
  v55 = v12;
  v65 = v5;
  if (result >= 1)
  {
    v36 = 0;
    v37 = v58;
    v61 = (v10 + 16);
    v62 = v58 & 0xC000000000000001;
    v60 = (v10 + 56);
    v38 = (v10 + 48);
    v54 = (v10 + 32);
    v67 = (v10 + 8);
    v59 = (v10 + 48);
    v63 = result;
    while (1)
    {
      v39 = v62 ? sub_100754574() : *(v37 + 8 * v36 + 32);
      v40 = v39;
      v41 = [v39 indexPath];
      v42 = v68;
      sub_100741744();

      (*v61)(v20, v42, v9);
      (*v60)(v20, 0, 1, v9);
      v43 = *(v64 + 48);
      sub_10003E0A0(v20, v8);
      sub_10003E0A0(v66, &v8[v43]);
      v44 = *v38;
      if ((*v38)(v8, 1, v9) == 1)
      {
        break;
      }

      v45 = v57;
      sub_10003E0A0(v8, v57);
      if (v44(&v8[v43], 1, v9) == 1)
      {
        sub_10000C8CC(v20, &unk_100923C00, qword_1007AB3D0);
        (*v67)(v45, v9);
        v37 = v58;
LABEL_17:
        sub_10000C8CC(v8, &qword_100938C30, &unk_1007C2580);
        goto LABEL_23;
      }

      v46 = v55;
      (*v54)(v55, &v8[v43], v9);
      sub_1000E5AF0();
      v56 = sub_100753014();
      v47 = *v67;
      (*v67)(v46, v9);
      sub_10000C8CC(v20, &unk_100923C00, qword_1007AB3D0);
      v47(v45, v9);
      sub_10000C8CC(v8, &unk_100923C00, qword_1007AB3D0);
      v37 = v58;
      if (v56)
      {
        goto LABEL_19;
      }

LABEL_23:
      sub_1000E4DC4(v40);
      sub_100753284();
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      ++v36;
      sub_100753344();

      (*v67)(v68, v9);
      v38 = v59;
      if (v63 == v36)
      {
        v52 = v69;
        goto LABEL_31;
      }
    }

    sub_10000C8CC(v20, &unk_100923C00, qword_1007AB3D0);
    if (v44(&v8[v43], 1, v9) == 1)
    {
      sub_10000C8CC(v8, &unk_100923C00, qword_1007AB3D0);
LABEL_19:
      type metadata accessor for SearchTransparencyView();
      sub_1007539C4();
      v48 = sub_100753064();

      isa = sub_100741704().super.isa;
      v50 = [v65 layoutAttributesForDecorationViewOfKind:v48 atIndexPath:isa];

      if (v50)
      {
        v51 = v50;
        sub_100753284();
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

double sub_1000E4CB0(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 collectionView];
    if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_1000E0A6C(v4);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return a1;
}

id sub_1000E4DC4(void *a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_10000C518(&unk_100923C00, qword_1007AB3D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v27 - v12;
  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 collectionView];
    if (v16 && (v17 = v16, v18 = [v16 delegate], v17, v18))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_1000E061C(v5);
        swift_unknownObjectRelease();
        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {

LABEL_9:
          sub_10000C8CC(v5, &unk_100923C00, qword_1007AB3D0);
          goto LABEL_10;
        }

        (*(v7 + 32))(v13, v5, v6);
        v21 = [v28 indexPath];
        sub_100741744();

        LOBYTE(v21) = sub_100741714();
        v22 = *(v7 + 8);
        v22(v9, v6);
        if ((v21 & 1) == 0)
        {
          v22(v13, v6);

          goto LABEL_10;
        }

        sub_1000E5AA4();
        v23 = sub_100754244();
        v24 = [v2 collectionView];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 delegate];

          if (v26)
          {
            swift_getObjectType();
            if (!swift_conformsToProtocol2())
            {

              swift_unknownObjectRelease();
              goto LABEL_20;
            }

            sub_1000E0A6C(v15);
            swift_unknownObjectRelease();
            [v23 frame];
            [v23 setFrame:?];
          }
        }

LABEL_20:
        v22(v13, v6);
        return v23;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_9;
  }

LABEL_10:
  v19 = v28;

  return v19;
}

id sub_1000E519C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a2;
  v71 = a1;
  v6 = sub_10074F704();
  v66 = *(v6 - 8);
  v67 = v6;
  __chkstk_darwin(v6);
  v64 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v65 = &v60[-v9];
  v10 = sub_1007417F4();
  v69 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000C518(&qword_100938C30, &unk_1007C2580);
  __chkstk_darwin(v13);
  v15 = &v60[-v14];
  v16 = sub_10000C518(&unk_100923C00, qword_1007AB3D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v60[-v20];
  __chkstk_darwin(v22);
  v24 = &v60[-v23];
  v68 = a3;
  isa = sub_100741704().super.isa;
  v26 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v72.receiver = v4;
  v72.super_class = v26;
  v27 = objc_msgSendSuper2(&v72, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v27)
  {
    return 0;
  }

  v28 = [v4 collectionView];
  if (!v28)
  {
    goto LABEL_19;
  }

  v63 = v28;
  v29 = [v4 collectionView];
  if (!v29 || (v30 = v29, v31 = [v29 delegate], v30, !v31))
  {

LABEL_19:
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v62 = v31;
  type metadata accessor for SearchTransparencyView();
  if (sub_1007539C4() == v71 && v32 == v70)
  {
  }

  else
  {
    v33 = sub_100754754();

    if ((v33 & 1) == 0)
    {
LABEL_18:

      swift_unknownObjectRelease();
      goto LABEL_19;
    }
  }

  v34 = v69;
  (*(v69 + 16))(v24, v68, v10);
  (*(v34 + 56))(v24, 0, 1, v10);
  sub_1000E061C(v21);
  v35 = *(v13 + 48);
  sub_10003E0A0(v24, v15);
  sub_10003E0A0(v21, &v15[v35]);
  v36 = *(v34 + 48);
  if (v36(v15, 1, v10) != 1)
  {
    sub_10003E0A0(v15, v18);
    if (v36(&v15[v35], 1, v10) != 1)
    {
      v38 = v69;
      (*(v69 + 32))(v12, &v15[v35], v10);
      sub_1000E5AF0();
      v61 = sub_100753014();
      v39 = *(v38 + 8);
      v39(v12, v10);
      sub_10000C8CC(v21, &unk_100923C00, qword_1007AB3D0);
      sub_10000C8CC(v24, &unk_100923C00, qword_1007AB3D0);
      v39(v18, v10);
      sub_10000C8CC(v15, &unk_100923C00, qword_1007AB3D0);
      if (v61)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    sub_10000C8CC(v21, &unk_100923C00, qword_1007AB3D0);
    sub_10000C8CC(v24, &unk_100923C00, qword_1007AB3D0);
    (*(v69 + 8))(v18, v10);
    goto LABEL_17;
  }

  sub_10000C8CC(v21, &unk_100923C00, qword_1007AB3D0);
  sub_10000C8CC(v24, &unk_100923C00, qword_1007AB3D0);
  if (v36(&v15[v35], 1, v10) != 1)
  {
LABEL_17:
    sub_10000C8CC(v15, &qword_100938C30, &unk_1007C2580);
    goto LABEL_18;
  }

  sub_10000C8CC(v15, &unk_100923C00, qword_1007AB3D0);
LABEL_22:
  v40 = sub_100753064();
  v41 = sub_100741704().super.isa;
  v42 = [objc_opt_self() layoutAttributesForDecorationViewOfKind:v40 withIndexPath:v41];

  v43 = v65;
  v44 = v63;
  sub_1000E078C(v63);
  sub_10074F664();
  v46 = v45;
  [v27 frame];
  MaxY = CGRectGetMaxY(v73);
  sub_10074F5B4();
  v49 = v48;
  v50 = sub_10074D954();
  if (v50)
  {
    v51 = v50;
    v52 = v64;
    sub_1000E078C(v44);
    sub_10074FC24();
    sub_10074F674();
    v55 = sub_1000E0DC4(v53, v54, v51, v44);
    v57 = v56;

    v59 = v66;
    v58 = v67;
    (*(v66 + 8))(v52, v67);
  }

  else
  {
    v55 = 0.0;
    v57 = 0.0;
    v59 = v66;
    v58 = v67;
  }

  [v42 setFrame:{v46, MaxY + v49, v55, v57}];
  swift_unknownObjectRelease();

  (*(v59 + 8))(v43, v58);
  return v42;
}