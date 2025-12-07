double sub_1004AC96C(void *a1, void *a2, uint64_t a3, double a4)
{
  sub_1004AC100(a1, a2, a3, a4);
  type metadata accessor for ProductLockupAccessibilityLayout(0);
  return a4;
}

uint64_t sub_1004AC9C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004ACA24()
{
  result = qword_10094F2B8;
  if (!qword_10094F2B8)
  {
    sub_10000CE78(&qword_100959510, &unk_1007A6560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F2B8);
  }

  return result;
}

uint64_t sub_1004ACA88(uint64_t a1)
{
  *(a1 + 8) = sub_1004ACB0C(&unk_100952290, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
  result = sub_1004ACB0C(&qword_100959518, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004ACB0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004ACB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1004ACC28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1004ACCCC(uint64_t a1)
{
  sub_100102F90(319, &unk_100950F60, &protocol descriptor for LayoutView);
  if (v1 <= 0x3F)
  {
    sub_100102F90(319, &qword_100953E00, &protocol descriptor for LayoutTextView);
    if (v2 <= 0x3F)
    {
      sub_1001A3380(319, &unk_100950F70, &unk_100953E10, &unk_100784160);
      if (v3 <= 0x3F)
      {
        sub_1001A3380(319, &qword_100950F80, &qword_10094CF50, &unk_100791F20);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ProductLockupAccessibilityLayout.Metrics(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1004ACE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1004ACEF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1004ACFA0(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    sub_100102F90(319, &qword_10094BAA0, &protocol descriptor for AnyDimension);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_100363428(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

char *sub_1004AD080(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC20ProductPageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator]];
  v15 = [v14 layer];
  [v15 setZPosition:1000.0];

  return v14;
}

void sub_1004AD310(uint64_t a1)
{
  v2 = sub_10076B66C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v21 = sub_100768BDC();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v3 + 96))(v5, v2);
    v13 = v5;
    v14 = v21;
    (*(v10 + 32))(v12, v13, v21);
    v15 = v23;
    v16 = *&v23[OBJC_IVAR____TtC20ProductPageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v17 = sub_100768BBC();
    [v16 setBackgroundColor:v17];

    sub_1002E65B0();
    sub_100768A3C();
    sub_100768A5C();
    sub_1007704EC();
    [v15 setLayoutMargins:?];
    (*(v10 + 8))(v12, v14);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v18 = *&v23[OBJC_IVAR____TtC20ProductPageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor:v19];
  }
}

id sub_1004AD734(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1004AD7A0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption2;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleFootnote;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_10099FCF8 = v2;
    unk_10099FD00 = v4;
    qword_10099FD08 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1004AD8B8()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightRegular];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleBody;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightRegular];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightRegular];

  if (v6)
  {
    qword_10099FD10 = v2;
    *algn_10099FD18 = v4;
    qword_10099FD20 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1004AD9D0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v1;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v3;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_10099FD28 = v2;
    unk_10099FD30 = v4;
    qword_10099FD38 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1004ADADC()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleFootnote;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = UIFontTextStyleSubheadline;
  v4 = [v0 preferredFontForTextStyle:v3];

  v5 = UIFontTextStyleBody;
  v6 = [v0 preferredFontForTextStyle:v5];

  qword_10099FD40 = v2;
  *algn_10099FD48 = v4;
  qword_10099FD50 = v6;
}

CGFloat sub_1004ADBF8(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  CGAffineTransformMakeTranslation(&v11, 0.0, a1);
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a3 = *&v11.a;
  *a4 = v9;
  *a5 = v10;
  return result;
}

void sub_1004ADC54(char a1)
{
  v2 = v1;
  v4 = *v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v2[5];
    ObjectType = swift_getObjectType();
    (*(*(v7 + 8) + 16))(*(v2 + 16), ObjectType);
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = v2[7];
    v12 = swift_getObjectType();
    (*(*(v11 + 8) + 16))(*(v2 + 16), v12);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 traitCollection];

    if (v15)
    {
      v16 = v15;
      if (sub_1007706EC())
      {
        v17 = sub_10077071C();

        if (v17)
        {
          v18 = swift_unknownObjectWeakLoadStrong();
          if (v18)
          {
            v19 = v18;
            [v18 setUserInteractionEnabled:0];
          }

          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            v22 = 1;
            [v20 setUserInteractionEnabled:1];
LABEL_18:

            goto LABEL_20;
          }

          v22 = 1;
          goto LABEL_20;
        }
      }

      else
      {
      }
    }
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    [v23 setUserInteractionEnabled:*(v2 + 16)];
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v21 = v25;
    [v25 setUserInteractionEnabled:(v2[2] & 1) == 0];
    v22 = 0;
    goto LABEL_18;
  }

  v22 = 0;
LABEL_20:
  v52 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v53 = 0;
  v26 = *(v2 + 16);
  if (v22)
  {
    v27 = swift_allocObject();
    v28 = 0;
    *(v27 + 16) = v2;
    *(v27 + 24) = v26;
    *(v27 + 32) = v4;
    v29 = sub_1004AF1B4;
    v54 = sub_1004AF1B4;
    v55 = v27;
    v30 = sub_1004AF1C4;
    v50 = sub_1004AF1C4;
    v51 = v2;
    v31 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  }

  else
  {
    if (v2[2])
    {
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = v32;
        [*(v32 + OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_contentView) _scrollToTopIfPossible:0];
      }

      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v4;
      v29 = sub_1004AF0F4;
      v54 = sub_1004AF0F4;
      v55 = v27;
      v31 = sub_1004AF0FC;
      v52 = sub_1004AF0FC;
      v53 = v2;
      v34 = sub_1004AF104;
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v2;
      *(v27 + 24) = v4;
      v29 = sub_1004AF16C;
      v54 = sub_1004AF16C;
      v55 = v27;
      v31 = sub_1004AF174;
      v52 = sub_1004AF174;
      v53 = v2;
      v34 = sub_1004AF204;
    }

    v30 = v34;
    v50 = v34;
    v51 = v2;

    v28 = v2;
  }

  swift_retain_n();
  v35 = objc_opt_self();
  if (a1)
  {
    v48 = v29;
    v49 = v27;
    v44 = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_10009AEDC;
    v47 = &unk_1008970B8;
    v36 = _Block_copy(&v44);

    v48 = v30;
    v49 = v2;
    v44 = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_1000513F0;
    v47 = &unk_1008970E0;
    v37 = _Block_copy(&v44);

    [v35 animateWithDuration:4 delay:v36 options:v37 animations:0.4 completion:0.0];
    _Block_release(v37);
    _Block_release(v36);
    v48 = v31;
    v49 = v28;
    v44 = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_10009AEDC;
    v47 = &unk_100897108;
    v38 = _Block_copy(&v44);

    [v35 animateWithDuration:4 delay:v38 options:0 animations:0.2 completion:0.2];
    _Block_release(v38);
    v39 = 0;
    v40 = 0;
LABEL_32:

    sub_1000167E0(v39, v40);
    return;
  }

  v40 = swift_allocObject();
  v40[2] = &v54;
  v40[3] = &v52;
  v40[4] = &v50;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1004AF138;
  *(v41 + 24) = v40;
  v48 = sub_1000349FC;
  v49 = v41;
  v44 = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_1001C5148;
  v47 = &unk_100897090;
  v42 = _Block_copy(&v44);

  [v35 performWithoutAnimation:v42];
  _Block_release(v42);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v39 = sub_1004AF138;
    goto LABEL_32;
  }

  __break(1u);
}

void sub_1004AE2EC(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(a1 + 56);
    v6 = Strong;
    ObjectType = swift_getObjectType();
    v8 = (*(*(v5 + 8) + 32))(ObjectType);

    v9 = *(v8 + 16);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        if (i >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v11 = *(v8 + 32 + 8 * i);
        if (v11)
        {
          [v11 setAlpha:0.0];
        }
      }
    }
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = *(a1 + 56);
  v14 = v12;
  v15 = swift_getObjectType();
  v8 = (*(*(v13 + 8) + 40))(v15);

  if (qword_100940630 != -1)
  {
    goto LABEL_56;
  }

  v16 = *(v8 + 16);
  if (v16)
  {
    goto LABEL_12;
  }

  while (1)
  {
LABEL_15:

LABEL_16:
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = *(a1 + 56);
      v22 = v20;
      v23 = swift_getObjectType();
      v8 = (*(*(v21 + 8) + 48))(v23);

      v24 = *(v8 + 16);
      if (v24)
      {
        v25 = 0;
        while (v25 < *(v8 + 16))
        {
          v26 = *(v8 + 32 + 8 * v25);
          if (v26)
          {
            [v26 setAlpha:0.0];
          }

          if (v24 == ++v25)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_53;
      }

LABEL_23:
    }

    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = *(a1 + 40);
      v29 = v27;
      v30 = swift_getObjectType();
      v8 = (*(*(v28 + 8) + 32))(v30);

      v31 = *(v8 + 16);
      if (v31)
      {
        v32 = 0;
        while (v32 < *(v8 + 16))
        {
          v33 = *(v8 + 32 + 8 * v32);
          if (v33)
          {
            [v33 setAlpha:1.0];
          }

          if (v31 == ++v32)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_54;
      }

LABEL_31:
    }

    v34 = swift_unknownObjectWeakLoadStrong();
    if (!v34)
    {
      break;
    }

    v35 = *(a1 + 40);
    v36 = v34;
    v37 = swift_getObjectType();
    v8 = (*(*(v35 + 8) + 40))(v37);

    v38 = *(v8 + 16);
    if (!v38)
    {
LABEL_37:

      break;
    }

    v39 = 0;
    while (v39 < *(v8 + 16))
    {
      v40 = v39 + 1;
      v41 = *(v8 + 32 + 8 * v39);
      *&v58 = 0;
      v57 = 0x3FF0000000000000uLL;
      *(&v58 + 1) = 0x3FF0000000000000;
      v59 = 0uLL;
      [v41 setTransform:&v57];
      v39 = v40;
      if (v38 == v40)
      {
        goto LABEL_37;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_56:
      swift_once();
      v16 = *(v8 + 16);
      if (!v16)
      {
        break;
      }

LABEL_12:
      v17 = 0;
      v55 = *algn_1009596F0;
      v56 = xmmword_1009596E0;
      v54 = xmmword_100959700;
      while (v17 < *(v8 + 16))
      {
        v18 = v17 + 1;
        v19 = *(v8 + 32 + 8 * v17);
        v57 = v56;
        v58 = v55;
        v59 = v54;
        [v19 setTransform:&v57];
        v17 = v18;
        if (v16 == v18)
        {
          goto LABEL_15;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
    v44 = *(v42 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_learnMoreButton);

    v45 = 1.0;
    if (a2)
    {
      v45 = 0.0;
    }

    [v44 setAlpha:{v45, v54, v55, v56}];
  }

  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    v48 = *(v46 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel);

    v49 = 0.0;
    if (a2)
    {
      v49 = 1.0;
    }

    [v48 setAlpha:{v49, v54, v55, v56}];
  }

  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = v50;
    [v50 setNeedsLayout];
  }

  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = v52;
    sub_1005053B8();
  }
}

double sub_1004AE748(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1[7];
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 32 + 8 * i);
        if (v9)
        {
          [v9 setAlpha:0.0];
        }
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = a1[7];
  v12 = v10;
  v13 = swift_getObjectType();
  v6 = (*(*(v11 + 8) + 40))(v13);

  if (qword_100940630 != -1)
  {
    goto LABEL_28;
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_15:
  while (1)
  {

LABEL_16:
    v18 = swift_unknownObjectWeakLoadStrong();
    if (!v18)
    {
      return result;
    }

    v20 = v18;
    v21 = a1[5];
    v22 = swift_getObjectType();
    a1 = (*(*(v21 + 8) + 48))(v22);

    v6 = a1[2];
    if (!v6)
    {
LABEL_23:

      return result;
    }

    v23 = 0;
    while (v23 < a1[2])
    {
      v24 = a1[v23 + 4];
      if (v24)
      {
        [v24 setAlpha:1.0];
      }

      if (v6 == ++v23)
      {
        goto LABEL_23;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      v14 = *(v6 + 16);
      if (!v14)
      {
        break;
      }

LABEL_12:
      v15 = 0;
      v26 = *algn_1009596F0;
      v27 = xmmword_1009596E0;
      v25 = xmmword_100959700;
      while (v15 < *(v6 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v6 + 32 + 8 * v15);
        v28[0] = v27;
        v28[1] = v26;
        v28[2] = v25;
        [v17 setTransform:v28];
        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_15;
        }
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_1004AE984(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + 40);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = *(v6 + 32 + 8 * v8);
        if (v9)
        {
          [v9 setAlpha:1.0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_8:
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = v10;
    v13 = swift_getObjectType();
    v14 = (*(*(v11 + 8) + 40))(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        v17 = v16 + 1;
        v18 = *(v14 + 32 + 8 * v16);
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x3FF0000000000000;
        v27[3] = 0x3FF0000000000000;
        v27[4] = 0;
        v27[5] = 0;
        [v18 setTransform:v27];
        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_14:
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(a1 + 56);
    v22 = swift_getObjectType();
    v23 = (*(*(v21 + 8) + 48))(v22);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v23 + 32 + 8 * v25);
        if (v26)
        {
          [v26 setAlpha:0.0];
        }

        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_26;
    }

LABEL_22:
  }
}

double sub_1004AEB80(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1[5];
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 32 + 8 * i);
        if (v9)
        {
          [v9 setAlpha:0.0];
        }
      }
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = a1[5];
  v12 = v10;
  v13 = swift_getObjectType();
  v6 = (*(*(v11 + 8) + 40))(v13);

  if (qword_100940638 != -1)
  {
    goto LABEL_28;
  }

  v14 = *(v6 + 16);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_15:
  while (1)
  {

LABEL_16:
    v18 = swift_unknownObjectWeakLoadStrong();
    if (!v18)
    {
      return result;
    }

    v20 = v18;
    v21 = a1[7];
    v22 = swift_getObjectType();
    a1 = (*(*(v21 + 8) + 48))(v22);

    v6 = a1[2];
    if (!v6)
    {
LABEL_23:

      return result;
    }

    v23 = 0;
    while (v23 < a1[2])
    {
      v24 = a1[v23 + 4];
      if (v24)
      {
        [v24 setAlpha:1.0];
      }

      if (v6 == ++v23)
      {
        goto LABEL_23;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_28:
      swift_once();
      v14 = *(v6 + 16);
      if (!v14)
      {
        break;
      }

LABEL_12:
      v15 = 0;
      v26 = xmmword_100959720;
      v27 = xmmword_100959710;
      v25 = xmmword_100959730;
      while (v15 < *(v6 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v6 + 32 + 8 * v15);
        v28[0] = v27;
        v28[1] = v26;
        v28[2] = v25;
        [v17 setTransform:v28];
        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_15;
        }
      }

LABEL_26:
      __break(1u);
    }
  }
}

void sub_1004AEDBC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + 56);
    v4 = Strong;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v3 + 8) + 32))(ObjectType);

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = *(v6 + 32 + 8 * v8);
        if (v9)
        {
          [v9 setAlpha:1.0];
        }

        if (v7 == ++v8)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_8:
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(a1 + 56);
    v12 = v10;
    v13 = swift_getObjectType();
    v14 = (*(*(v11 + 8) + 40))(v13);

    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      while (v16 < *(v14 + 16))
      {
        v17 = v16 + 1;
        v18 = *(v14 + 32 + 8 * v16);
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x3FF0000000000000;
        v27[3] = 0x3FF0000000000000;
        v27[4] = 0;
        v27[5] = 0;
        [v18 setTransform:v27];
        v16 = v17;
        if (v15 == v17)
        {
          goto LABEL_14;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_14:
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = *(a1 + 40);
    v22 = swift_getObjectType();
    v23 = (*(*(v21 + 8) + 48))(v22);

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26 = *(v23 + 32 + 8 * v25);
        if (v26)
        {
          [v26 setAlpha:0.0];
        }

        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_26;
    }

LABEL_22:
  }
}

double sub_1004AEFB8(void (**a1)(uint64_t), void (**a2)(uint64_t), void (**a3)(uint64_t))
{
  v5 = *a1;

  v5(v6);

  v7 = *a2;

  v7(v8);

  v9 = *a3;

  v9(1);

  return result;
}

uint64_t sub_1004AF048()
{
  swift_unknownObjectWeakDestroy();
  sub_10000CC8C(v0 + 32);
  sub_10000CC8C(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1004AF0BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1004AF154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004AF17C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_1004AF208()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_1004AF240(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1004AF298;
}

void sub_1004AF298(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1002D7138(v2);
  }

  else
  {
    sub_1002D7138(*a1);
  }
}

uint64_t sub_1004AF330(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004AF504(&qword_100951208, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007A6858);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_1004AF3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_1004AF504(&qword_100951208, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007A6858);

  return a3(ObjectType, v4);
}

uint64_t sub_1004AF504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1004AF54C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076F08C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F0CC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  aBlock[4] = sub_1004AF9B8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008971A8;
  v12 = _Block_copy(aBlock);

  sub_10076F0AC();
  v14[1] = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_1000852B8();
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);

  return result;
}

void sub_1004AF7BC(uint64_t a1)
{
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v16[0] = v3 + 8;
  v16[1] = v3 + 16;

  v10 = 0;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (v12 | (v10 << 6)), v2);
    v13 = sub_10041329C();
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    if (v13)
    {
      (*(v15 + 8))(v13, v15);
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(a1 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1004AF980()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1004AF9C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *sub_1004AF9D8(uint64_t a1, int *a2)
{
  v30 = a2;
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v11 + 8))(v13, v10);
  (*(v4 + 104))(v6, enum case for Shelf.ContentType.todayCard(_:), v3);
  sub_1004B115C(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v32 == v31)
  {
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  else
  {
    v15 = sub_10077167C();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);

    if ((v15 & 1) == 0)
    {
      return sub_100382B5C(a1, v30);
    }
  }

  v17 = COERCE_DOUBLE(sub_1004B0648(a1, v30));
  if (v19)
  {
    return _swiftEmptyArrayStorage;
  }

  v20 = v17;
  v21 = v18;
  v22 = v18 >= v17 ? v17 : v18;
  if (v22 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = objc_opt_self();
  v24 = [v23 absoluteDimension:v20];
  v25 = [v23 absoluteDimension:v21];
  v26 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v25];

  v27 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v26 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007841E0;
  *(v28 + 32) = v27;

  return v28;
}

double sub_1004AFDFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v65 = a4;
  v76 = a1;
  v77 = a2;
  v78 = a5;
  v6 = sub_10076469C();
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  __chkstk_darwin(v6);
  v72 = v8;
  v73 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1007621EC();
  v70 = *(v9 - 8);
  v71 = v9;
  __chkstk_darwin(v9);
  v69 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v68 = &v63[-v12];
  v13 = sub_10076B5BC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v63[-v18];
  v20 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v63[-v24];
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v66 = *(v21 + 8);
  v66(v25, v20);
  (*(v14 + 104))(v16, enum case for Shelf.ContentType.todayCard(_:), v13);
  sub_1004B115C(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v80 == v79)
  {
    v26 = *(v14 + 8);
    v26(v16, v13);
    v26(v19, v13);

LABEL_4:
    v29 = v67;
    sub_10076468C();
    swift_getKeyPath();
    v30 = v68;
    sub_10076F49C();

    v66(v29, v20);
    v32 = v69;
    v31 = v70;
    v33 = v71;
    (*(v70 + 104))(v69, enum case for ShelfBackground.interactive(_:), v71);
    sub_1004B115C(&qword_100949730, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
    v34 = sub_10076FF1C();
    v35 = *(v31 + 8);
    v35(v32, v33);
    v35(v30, v33);
    v28 = v34 ^ 1;
    goto LABEL_5;
  }

  v64 = sub_10077167C();
  v27 = *(v14 + 8);
  v27(v16, v13);
  v27(v19, v13);

  v28 = 0;
  if (v64)
  {
    goto LABEL_4;
  }

LABEL_5:
  v36 = sub_10076FF9C();
  v39 = v76;
  v38 = v77;
  if (v36 != v76 || v37 != v77)
  {
    v41 = sub_10077167C();

    if ((v41 & v28 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v42 = sub_10000A5D4(&qword_100954788, &qword_10079E258);
    v43 = v78;
    v78[3] = v42;
    v43[4] = sub_100120048(&qword_100954790, &qword_100954788, &qword_10079E258);
    v78 = sub_10000DB7C(v43);
    v44 = sub_10076FF9C();
    v76 = v45;
    v77 = v44;
    type metadata accessor for ShelfHeaderView(0);
    sub_1007708FC();
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = v74;
    v48 = v75;
    v49 = v73;
    (*(v75 + 16))(v73, a3, v74);
    v50 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v51 = (v72 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v46;
    (*(v48 + 32))(v52 + v50, v49, v47);
    *(v52 + v51) = v65;

LABEL_15:
    sub_10076A3BC();
    return result;
  }

  if (v28)
  {
    goto LABEL_12;
  }

LABEL_8:
  type metadata accessor for TodayDebugSectionBackgroundView();
  if (sub_1007708EC() == v39 && v40 == v38)
  {

LABEL_14:
    v54 = sub_10000A5D4(&qword_1009599A0, &unk_1007A6960);
    v55 = v78;
    v78[3] = v54;
    v55[4] = sub_100120048(&qword_1009599A8, &qword_1009599A0, &unk_1007A6960);
    v78 = sub_10000DB7C(v55);
    sub_1007708EC();
    sub_1007708FC();
    v56 = v74;
    v57 = v75;
    v58 = a3;
    v59 = v73;
    (*(v75 + 16))(v73, v58, v74);
    v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v61 = swift_allocObject();
    (*(v57 + 32))(v61 + v60, v59, v56);
    goto LABEL_15;
  }

  v53 = sub_10077167C();

  if (v53)
  {
    goto LABEL_14;
  }

  return sub_10037E460(v39, v38, a3, v65, v78);
}

uint64_t sub_1004B0648(uint64_t a1, int *a2)
{
  v37 = a2;
  v3 = sub_10076C38C();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076B5BC();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v42;
  if (v42)
  {
    v33 = a1;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v17(v13, v10);
    v20 = v38;
    v19 = v39;
    (*(v39 + 104))(v38, enum case for Shelf.ContentType.todayCard(_:), v5);
    sub_1004B115C(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
    sub_10077018C();
    sub_10077018C();
    if (v42 == v40 && v43 == v41)
    {
      v21 = *(v19 + 8);
      v21(v20, v5);
      v21(v9, v5);

LABEL_7:
      v25 = v33;
      v26 = v34;
      sub_10076464C();
      sub_10076C8BC();
      sub_10076C2FC();
      v28 = v27;
      v30 = v29;
      (*(v35 + 8))(v26, v36);
      type metadata accessor for ShelfHeaderView(0);
      v31 = sub_10042395C(v18, v25, v28, v30);

      return *&v31;
    }

    v23 = sub_10077167C();
    v24 = *(v19 + 8);
    v24(v20, v5);
    v24(v9, v5);

    if (v23)
    {
      goto LABEL_7;
    }

    v22 = v33;
  }

  else
  {
    v22 = a1;
  }

  return sub_10037F5E8(v22, v37);
}

void *sub_1004B0AC8()
{
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v21 - v5;
  v7 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v21 - v10;
  v12 = sub_100382E44(v9);
  v22 = v12;
  if (sub_1001E7560(v13))
  {
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v8 + 8))(v11, v7);
    (*(v1 + 104))(v3, enum case for Shelf.ContentType.todayCard(_:), v0);
    sub_1004B115C(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
    sub_10077018C();
    sub_10077018C();
    if (v21[3] == v21[1] && v21[4] == v21[2])
    {
      v14 = *(v1 + 8);
      v14(v3, v0);
      v14(v6, v0);
    }

    else
    {
      v15 = sub_10077167C();
      v16 = *(v1 + 8);
      v16(v3, v0);
      v16(v6, v0);

      if ((v15 & 1) == 0)
      {
        return v12;
      }
    }

    v17 = objc_opt_self();
    type metadata accessor for TodayDebugSectionBackgroundView();
    sub_1007708EC();
    v18 = sub_10076FF6C();

    v19 = [v17 backgroundDecorationItemWithElementKind:v18];

    sub_10077019C();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    return v22;
  }

  return v12;
}

uint64_t sub_1004B0E94()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1004B0F80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004B0FB8()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

double sub_1004B1090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10076469C() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100381918(a1, a2, a3, a4, v11, v4 + v10, v12);
}

uint64_t sub_1004B115C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1004B11A8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1004B11E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1004B122C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 sub_1004B12A8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004B12BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1004B1304(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1004B1364(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  sub_10000CF78((v5 + 64), *(v5 + 88));
  sub_10076E0FC();
  v11 = v10;
  v13 = v12;
  v15 = v14 + 4.0;
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  MinX = CGRectGetMinX(v31);
  sub_100083158(v5, v29);
  sub_10000CF78(v29, v30);
  sub_10076D41C();
  v17 = v16;
  sub_10000CD74(v29);
  v32.origin.y = v17 - v13;
  v32.origin.x = MinX;
  v32.size.width = v15;
  v32.size.height = v11;
  v18 = CGRectGetMaxX(v32) + *(v5 + 40);
  sub_10000CF78((v5 + 104), *(v5 + 128));
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetWidth(v33);
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  CGRectGetHeight(v34);
  sub_10076E0FC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_100083158(v5, v29);
  sub_10000CF78(v29, v30);
  sub_10076D41C();
  v26 = v25;
  sub_10000CD74(v29);
  v35.origin.x = v18;
  v35.origin.y = v26 - v24;
  v35.size.width = v20;
  v35.size.height = v22;
  CGRectGetMaxX(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  CGRectGetWidth(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetWidth(v37);
  sub_10000CF78((v5 + 144), *(v5 + 168));
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetHeight(v38);
  sub_10076E0FC();
  sub_100083158(v5, v29);
  sub_10000CF78(v29, v30);
  sub_10076D41C();
  sub_10000CD74(v29);
  sub_10000CF78((v5 + 64), *(v5 + 88));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v5 + 104), *(v5 + 128));
  sub_1007709CC();
  sub_10076E0EC();
  sub_10000CF78((v5 + 144), *(v5 + 168));
  sub_1007709CC();
  sub_10076E0EC();
}

double sub_1004B1714(uint64_t a1, double a2)
{
  sub_100083158(v2, v5);
  sub_10000CF78(v5, v5[3]);
  sub_10076D41C();
  sub_10000CD74(v5);
  return a2;
}

uint64_t sub_1004B17A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000831B4();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_1004B17FC()
{
  result = qword_1009599B0;
  if (!qword_1009599B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009599B0);
  }

  return result;
}

unint64_t sub_1004B1854()
{
  result = qword_1009599B8;
  if (!qword_1009599B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009599B8);
  }

  return result;
}

double sub_1004B1900(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for AppEventFormattedDatePresenter(0);
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_currentFormattedDate;
  v6 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v4 + 16) = a1;
  swift_beginAccess();
  *(v4 + 32) = &off_1008973F8;
  swift_unknownObjectWeakAssign();
  sub_1005E02D0();
  v7 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *(v2 + v7) = v4;

  return result;
}

void sub_1004B1A0C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer;
    v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30AppEventFormattedDatePresenter_updateTimer);

    if (v4)
    {
      [v4 invalidate];
      v4 = *(v2 + v3);
    }

    *(v2 + v3) = 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView);
    if (v6)
    {
      swift_beginAccess();
      v7 = v6;
      v8 = v5;
      v9 = sub_1004B83D0(v7);
      swift_endAccess();
    }

    else
    {
      v10 = v5;
    }

    v11 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v12 = *&v5[v11];
    if ((v12 & 0xC000000000000001) != 0)
    {

      v13 = sub_10077135C();

      if (v13)
      {
LABEL_12:

        return;
      }
    }

    else if (*(v12 + 16))
    {
      goto LABEL_12;
    }

    sub_1001776D4();
    goto LABEL_12;
  }
}

void sub_1004B1B8C()
{
  v1 = v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator];
  v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator] = 0;
  sub_1004B3E70(v1);
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v0 setNeedsLayout];
  }

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView];
    if (v5)
    {
      swift_beginAccess();
      v6 = v5;
      v7 = v4;
      v8 = sub_1004B83D0(v6);
      swift_endAccess();
    }

    else
    {
      v9 = v4;
    }

    v10 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v11 = *&v4[v10];
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = sub_10077135C();

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

    sub_1001776D4();
    goto LABEL_10;
  }
}

double sub_1004B1D04(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
  v6 = [v5 text];
  if (v6)
  {
    v8 = v6;
    v9 = sub_10076FF9C();
    v11 = v10;

    if (!a2)
    {
      v14 = 0;
      goto LABEL_12;
    }

    if (v9 == a1 && v11 == a2)
    {

LABEL_16:

      return result;
    }

    v13 = sub_10077167C();

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v14 = sub_10076FF6C();
LABEL_12:

  [v5 setText:v14];

  [v2 setNeedsLayout];
  return result;
}

uint64_t sub_1004B1E64()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009410D8 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v23 = sub_10000A61C(v4, qword_1009A2080);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v25);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_1007704BC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012498(&v31, &unk_10099FD58);
  sub_100012498(&v28, &unk_10099FD80);
  result = sub_100012498(&v25, &unk_10099FDA8);
  qword_10099FDD0 = 0;
  unk_10099FDD8 = 0;
  qword_10099FDE0 = v13;
  unk_10099FDE8 = v15;
  qword_10099FDF0 = v17;
  unk_10099FDF8 = v19;
  return result;
}

uint64_t sub_1004B2188()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009410F8 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v23 = sub_10000A61C(v4, qword_1009A20E0);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v25);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_1007704BC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012498(&v31, &unk_10099FE00);
  sub_100012498(&v28, &unk_10099FE28);
  result = sub_100012498(&v25, &unk_10099FE50);
  qword_10099FE78 = 0;
  unk_10099FE80 = 0;
  qword_10099FE88 = v13;
  unk_10099FE90 = v15;
  qword_10099FE98 = v17;
  unk_10099FEA0 = v19;
  return result;
}

uint64_t sub_1004B24AC()
{
  v0 = sub_1007640EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_10099F660);
  (*(v1 + 16))(v3, v4, v0);
  sub_1007640CC();
  (*(v1 + 8))(v3, v0);
  v19 = sub_10076D67C();
  v20 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v18);
  sub_10076D66C();
  v16 = &type metadata for Double;
  v17 = &protocol witness table for Double;
  *&v15 = 0x4018000000000000;
  sub_1007704BC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_100012498(&v21, &unk_10099FEA8);
  sub_100012498(&v18, &unk_10099FED0);
  result = sub_100012498(&v15, &unk_10099FEF8);
  qword_10099FF20 = 0;
  unk_10099FF28 = 0;
  qword_10099FF30 = v6;
  unk_10099FF38 = v8;
  qword_10099FF40 = v10;
  unk_10099FF48 = v12;
  return result;
}

double sub_1004B2674()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940F30 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v15 = sub_10000A61C(v4, qword_1009A1B88);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v17);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  qword_10099FFB8 = &type metadata for Double;
  unk_10099FFC0 = &protocol witness table for Double;
  qword_10099FFA0 = 0x4018000000000000;
  sub_100012498(&v21, &unk_10099FF50);
  sub_100012498(&v18, &unk_10099FF78);
  qword_10099FFC8 = 0;
  unk_10099FFD0 = 0;
  unk_10099FFD8 = xmmword_1007A6B30;
  result = 6.0;
  unk_10099FFE8 = xmmword_1007A6B40;
  return result;
}

double sub_1004B2960()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940F30 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v15 = sub_10000A61C(v4, qword_1009A1B88);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v17);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  qword_1009A0060 = &type metadata for Double;
  unk_1009A0068 = &protocol witness table for Double;
  qword_1009A0048 = 0x4018000000000000;
  sub_100012498(&v21, &unk_10099FFF8);
  sub_100012498(&v18, &unk_1009A0020);
  qword_1009A0070 = 0;
  unk_1009A0078 = 0;
  unk_1009A0080 = xmmword_1007A6B50;
  result = 3.0;
  unk_1009A0090 = xmmword_1007A6B60;
  return result;
}

double sub_1004B2C4C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940F30 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v15 = sub_10000A61C(v4, qword_1009A1B88);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v17);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  qword_1009A0108 = &type metadata for Double;
  unk_1009A0110 = &protocol witness table for Double;
  qword_1009A00F0 = 0x4018000000000000;
  sub_100012498(&v21, &unk_1009A00A0);
  sub_100012498(&v18, &unk_1009A00C8);
  qword_1009A0118 = 0;
  unk_1009A0120 = 0;
  unk_1009A0128 = xmmword_1007A6B70;
  result = 7.0;
  unk_1009A0138 = xmmword_1007A6B50;
  return result;
}

uint64_t sub_1004B2F38()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940F30 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v23 = sub_10000A61C(v4, qword_1009A1B88);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v25);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_1007704BC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012498(&v31, &unk_1009A0148);
  sub_100012498(&v28, &unk_1009A0170);
  result = sub_100012498(&v25, &unk_1009A0198);
  qword_1009A01C0 = 0;
  unk_1009A01C8 = 0;
  qword_1009A01D0 = v13;
  unk_1009A01D8 = v15;
  qword_1009A01E0 = v17;
  unk_1009A01E8 = v19;
  return result;
}

uint64_t sub_1004B325C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940F30 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v23 = sub_10000A61C(v4, qword_1009A1B88);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = sub_10076D9AC();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v25);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  sub_1007704BC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100012498(&v31, &unk_1009A01F0);
  sub_100012498(&v28, &unk_1009A0218);
  result = sub_100012498(&v25, &unk_1009A0240);
  qword_1009A0268 = 0;
  unk_1009A0270 = 0;
  qword_1009A0278 = v13;
  unk_1009A0280 = v15;
  qword_1009A0288 = v17;
  unk_1009A0290 = v19;
  return result;
}

uint64_t sub_1004B3580()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009599C0);
  sub_10000A61C(v4, qword_1009599C0);
  if (qword_1009410D8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A2080);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

id sub_1004B3754()
{
  result = [objc_opt_self() systemRedColor];
  qword_1009599D8 = result;
  return result;
}

void sub_1004B3790()
{
  v0 = [objc_opt_self() systemRedColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  qword_1009599E0 = v1;
}

char *sub_1004B381C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076771C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v37 - v19;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter] = 0;
  if (qword_1009410D8 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  v22 = sub_10000A61C(v21, qword_1009A2080);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, v22, v21);
  (*(v23 + 56))(v20, 0, 1, v21);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v24 = objc_allocWithZone(sub_1007626BC());
  v25 = sub_1007626AC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel] = v25;
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  v26 = v25;
  sub_10076F95C();
  sub_10000CFBC(v40, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v41, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v11 + 8))(v13, v10);
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setClipsToBounds:0];
  v32 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel;
  v33 = *&v31[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v34 = v33;
  v35 = sub_100770E1C();
  [v34 setTextColor:v35];

  [v31 addSubview:*&v31[v32]];
  return v31;
}

id sub_1004B3D24()
{
  ObjectType = swift_getObjectType();
  sub_1004B1A0C();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1004B3E70(id result)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator;
  v3 = v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator];
  if (v3 != (result & 1))
  {
    v4 = v1;
    v5 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView;
    if (v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator])
    {
      if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView])
      {
        sub_10076394C();
        v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_1004B8C08();
        v12 = *&v1[v5];
        *&v1[v5] = v11;
        v13 = v11;

        v14 = qword_100940688;
        v15 = v13;
        if (v14 != -1)
        {
          swift_once();
        }

        [v15 setBackgroundColor:qword_1009599D8];

        if (qword_100940690 != -1)
        {
          swift_once();
        }

        v16 = qword_1009599E0;
        sub_1007638DC();
        sub_1007638EC();
        [v4 addSubview:v15];

        [v4 setNeedsLayout];
        v5 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView;
        v3 = v4[v2];
        v6 = *&v4[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView];
        if (v6)
        {
LABEL_6:
          [v6 setHidden:v3 ^ 1u];
          if (v4[v2])
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }

LABEL_14:
        if (v3)
        {
LABEL_7:
          v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
          if (v7)
          {
            v8 = *&v4[v5];
            v9 = v7;
            v10 = v8;
            sub_100177368(v8);
          }

          return [v4 setNeedsLayout];
        }

LABEL_15:
        v17 = *&v4[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        if (!v17)
        {
          return [v4 setNeedsLayout];
        }

        v18 = *&v4[v5];
        if (v18)
        {
          swift_beginAccess();
          v19 = v18;
          v20 = v17;
          v21 = sub_1004B83D0(v19);
          swift_endAccess();
        }

        else
        {
          v22 = v17;
        }

        v23 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
        swift_beginAccess();
        v24 = *&v17[v23];
        if ((v24 & 0xC000000000000001) != 0)
        {

          v25 = sub_10077135C();

          if (v25)
          {
LABEL_22:

            return [v4 setNeedsLayout];
          }
        }

        else if (*(v24 + 16))
        {
          goto LABEL_22;
        }

        sub_1001776D4();
        goto LABEL_22;
      }

      v3 = 1;
    }

    v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView];
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  return result;
}

void sub_1004B413C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_10075FEEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v9 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v11 = &v73[-v10];
  v12 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style;
  v13 = v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
  if (v13 != a1)
  {
    v14 = &qword_100959000;
    if (v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] > 3u)
    {
      if ((v13 - 5) >= 2)
      {
        if (v13 != 4)
        {
          v52 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
          if (v52)
          {
            [v52 setHidden:{1, v9}];
          }

          v53 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
          swift_beginAccess();
          v54 = *&v2[v53];
          if (v54)
          {
            [v54 setHidden:1];
          }

          v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
          sub_100016F40(0, &qword_100942F10, UIColor_ptr);
          v55 = sub_100770E1C();
          [v18 setTextColor:v55];

          if (qword_100941150 != -1)
          {
            swift_once();
          }

          v20 = sub_10076D3DC();
          v21 = v20;
          v22 = qword_1009A21E8;
          goto LABEL_52;
        }

        v23 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
        if (v23)
        {
          [v23 setHidden:{1, v9}];
        }

        v24 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v25 = *&v2[v24];
        if (v25 || (v26 = [objc_allocWithZone(sub_10076394C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], sub_1004B4FD0(v26), (v25 = *&v2[v24]) != 0))
        {
          [v25 setHidden:0];
        }

        v27 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        v28 = sub_100770CFC();
        [v27 setTextColor:v28];

        if (qword_100940B48 != -1)
        {
          swift_once();
        }

        v29 = sub_10076D3DC();
        sub_10000A61C(v29, qword_1009A0FD0);
        v30.super.isa = [v2 traitCollection];
        isa = v30.super.isa;
        v32 = sub_10076D3BC(v30).super.isa;

        v33 = [(objc_class *)v32 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
        if (v33)
        {
          v34 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
          [v27 setFont:v34];
        }

        else
        {
          sub_100016F40(0, &qword_100942F00, UIFont_ptr);
          v71 = [v2 traitCollection];
          v34 = sub_100770B3C();

          [v27 setFont:v34];
        }

        if (v2[v12] == 5)
        {
          v72 = 2;
        }

        else
        {
          v72 = 1;
        }

        [v27 setNumberOfLines:v72];
        v14 = &qword_100959000;
        goto LABEL_53;
      }
    }

    else
    {
      if (v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] <= 1u)
      {
        if (!v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style])
        {
          v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
          if (v15)
          {
            [v15 setHidden:{1, v9}];
          }

          v16 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
          swift_beginAccess();
          v17 = *&v2[v16];
          if (v17)
          {
            [v17 setHidden:1];
          }

          v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
          sub_100016F40(0, &qword_100942F10, UIColor_ptr);
          v19 = sub_100770E1C();
          [v18 setTextColor:v19];

          if (qword_1009410D8 != -1)
          {
            swift_once();
          }

          v20 = sub_10076D3DC();
          v21 = v20;
          v22 = qword_1009A2080;
LABEL_52:
          v56 = sub_10000A61C(v20, v22);
          v57 = *(v21 - 8);
          (*(v57 + 16))(v11, v56, v21);
          (*(v57 + 56))(v11, 0, 1, v21);
          sub_1007625DC();
          [v18 setNumberOfLines:1];
          goto LABEL_53;
        }

        v46 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v47 = *&v2[v46];
        if (v47)
        {
          [v47 setHidden:1];
        }

        v48 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
        if (qword_1009410F8 != -1)
        {
          swift_once();
        }

        v49 = sub_10076D3DC();
        v50 = sub_10000A61C(v49, qword_1009A20E0);
        v51 = *(v49 - 8);
        (*(v51 + 16))(v11, v50, v49);
        (*(v51 + 56))(v11, 0, 1, v49);
        sub_1007625DC();
        sub_1004B4CD0();
        [v48 setNumberOfLines:2];
LABEL_53:
        sub_1004B506C();
        v58 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
        if (!v58)
        {
LABEL_72:
          v64 = v14[326];
          swift_beginAccess();
          v65 = *&v2[v64];
          if (!v65)
          {
            goto LABEL_82;
          }

          (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
          v66 = v65;
          sub_1007638BC();

          (*(v5 + 8))(v7, v4);
          v67 = *&v2[v64];
          if (!v67)
          {
            goto LABEL_82;
          }

          v68 = v2[v12];
          if (v68 <= 2)
          {
            goto LABEL_80;
          }

          if (v2[v12] > 5u)
          {
            if (v68 != 6)
            {
LABEL_80:
              v69 = v67;
              goto LABEL_81;
            }
          }

          else if (v68 - 3 >= 2)
          {
            goto LABEL_80;
          }

          v69 = v67;
          v70 = [v2 traitCollection];
          sub_10077070C();

LABEL_81:
          sub_10076392C();

LABEL_82:
          [v2 setNeedsLayout];
          return;
        }

        v59 = v2[v12];
        v60 = 0.0;
        if (v59 > 3)
        {
          if (v2[v12] <= 5u)
          {
            v61 = 8.0;
            v60 = 10.0;
            if (v59 == 4)
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }

          if (v59 != 6)
          {
LABEL_56:
            if (v2[v12] > 2u)
            {
LABEL_57:
              if (v2[v12] <= 5u)
              {
                v61 = v60;
                if (v59 - 3 >= 2)
                {
                  goto LABEL_67;
                }

LABEL_69:
                v62 = v58;
                v63 = [v2 traitCollection];
                sub_10077070C();

                goto LABEL_71;
              }

              if (v59 == 6)
              {
                goto LABEL_69;
              }

LABEL_70:
              v62 = v58;
              goto LABEL_71;
            }

            if (v59 != 1)
            {
              goto LABEL_70;
            }

            v61 = 0.0;
LABEL_67:
            v62 = v58;
            v60 = v61;
LABEL_71:
            [v62 _setCornerRadius:1 continuous:sub_1007704FC() maskedCorners:v60];

            goto LABEL_72;
          }
        }

        else if (v59 < 3)
        {
          goto LABEL_56;
        }

        v60 = 20.0;
        goto LABEL_57;
      }

      if (v13 == 2)
      {
        v35 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
        if (v35)
        {
          [v35 setHidden:{1, v9}];
        }

        v36 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v37 = *&v2[v36];
        if (v37)
        {
          [v37 setHidden:1];
        }

        v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        v38 = sub_100770E1C();
        [v18 setTextColor:v38];

        if (qword_100940B30 != -1)
        {
          swift_once();
        }

        v20 = sub_10076D3DC();
        v21 = v20;
        v22 = qword_1009A0F88;
        goto LABEL_52;
      }
    }

    v39 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
    if (v39)
    {
      [v39 setHidden:{1, v9}];
    }

    v40 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v41 = *&v2[v40];
    if (v41 || (v42 = [objc_allocWithZone(sub_10076394C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], sub_1004B4FD0(v42), (v41 = *&v2[v40]) != 0))
    {
      [v41 setHidden:0];
    }

    v43 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v44 = sub_100770CFC();
    [v43 setTextColor:v44];

    if (v2[v12] == 5)
    {
      v45 = 2;
    }

    else
    {
      v45 = 1;
    }

    [v43 setNumberOfLines:v45];
    goto LABEL_53;
  }
}

void sub_1004B4CD0()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] != 1)
  {
    return;
  }

  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    if (qword_1009406A0 != -1)
    {
      swift_once();
    }

    v3 = &qword_1009599F0;
  }

  else
  {
    if (qword_100940698 != -1)
    {
      swift_once();
    }

    v3 = &qword_1009599E8;
  }

  v4 = *v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView;
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
  if (!v6)
  {
    sub_1004B5570([objc_allocWithZone(UIVisualEffectView) initWithEffect:v4]);
    v7 = *&v0[v5];
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [v6 setEffect:v4];
  v7 = *&v0[v5];
  if (v7)
  {
LABEL_12:
    [v7 setHidden:0];
  }

LABEL_13:
  v8 = [v0 traitCollection];
  v9 = [v8 userInterfaceStyle] != 2;

  v10 = [objc_opt_self() effectForBlurEffect:v4 style:4 * v9];
  v11 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView;
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView];
  if (v12)
  {
    [v12 setEffect:v10];
  }

  else
  {
    v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];
    v14 = *&v0[v11];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v11];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v11] = v13;
    v16 = v13;

    sub_1004B561C();
  }

  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
  v18 = [v0 traitCollection];
  v19 = [v18 userInterfaceStyle];

  if (v19 == 2)
  {
    v20 = [objc_opt_self() whiteColor];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  [v17 setTextColor:?];
}

void sub_1004B4FD0(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v4 = *&v1[v3];
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
    [v1 insertSubview:v6 atIndex:0];
  }
}

void sub_1004B506C()
{
  v1 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
  if (v4 > 3)
  {
    if (v4 - 5 >= 2)
    {
      if (v4 != 4)
      {
        if (qword_100941150 != -1)
        {
          swift_once();
        }

        v5 = sub_10076D3DC();
        v6 = v5;
        v7 = qword_1009A21E8;
        goto LABEL_28;
      }

      if (qword_100940B48 != -1)
      {
        swift_once();
      }

      v8 = sub_10076D3DC();
      sub_10000A61C(v8, qword_1009A0FD0);
      v9.super.isa = [v0 traitCollection];
      isa = v9.super.isa;
      v11 = sub_10076D3BC(v9).super.isa;

      v12 = [(objc_class *)v11 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
      v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
      if (v12)
      {
        goto LABEL_20;
      }

LABEL_29:
      sub_100016F40(0, &qword_100942F00, UIFont_ptr);
      v20 = [v0 traitCollection];
      v23 = sub_100770B3C();

      [v13 setFont:v23];
      goto LABEL_30;
    }
  }

  else
  {
    if (v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] <= 1u)
    {
      if (v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style])
      {
        if (qword_1009410F8 != -1)
        {
          swift_once();
        }

        v5 = sub_10076D3DC();
        v6 = v5;
        v7 = qword_1009A20E0;
      }

      else
      {
        if (qword_1009410D8 != -1)
        {
          swift_once();
        }

        v5 = sub_10076D3DC();
        v6 = v5;
        v7 = qword_1009A2080;
      }

LABEL_28:
      v18 = sub_10000A61C(v5, v7);
      v19 = *(v6 - 8);
      (*(v19 + 16))(v3, v18, v6);
      (*(v19 + 56))(v3, 0, 1, v6);
      sub_1007625DC();
      return;
    }

    if (v4 == 2)
    {
      if (qword_100940B30 != -1)
      {
        swift_once();
      }

      v5 = sub_10076D3DC();
      v6 = v5;
      v7 = qword_1009A0F88;
      goto LABEL_28;
    }
  }

  if (qword_100940F30 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  sub_10000A61C(v14, qword_1009A1B88);
  v15.super.isa = [v0 traitCollection];
  v16 = v15.super.isa;
  v17 = sub_10076D3BC(v15).super.isa;

  v12 = [(objc_class *)v17 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
  if (!v12)
  {
    goto LABEL_29;
  }

LABEL_20:
  v23 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  [v13 setFont:v23];

LABEL_30:
  v21 = v23;
}

void sub_1004B5570(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
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
    [v1 insertSubview:v6 atIndex:0];
  }
}

void sub_1004B561C()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView];
  if (v1)
  {
    v6 = v1;
    v2 = [v6 contentView];
    [v2 addSubview:*&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel]];

    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
    if (v3)
    {
      v4 = [v3 contentView];
      [v4 addSubview:v6];
    }
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];

    [v0 addSubview:v5];
  }
}

void sub_1004B57F0(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v4)
  {
    if (!a1 || (type metadata accessor for AppEventLiveIndicatorAnimationCoordinator(), v6 = v4, v7 = a1, v8 = sub_100770EEC(), v6, v7, (v8 & 1) == 0) && (v4 = *(v2 + v3)) != 0)
    {
      v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView);
      if (v9)
      {
        swift_beginAccess();
        v10 = v9;
        v11 = v4;
        v12 = sub_1004B83D0(v10);
        swift_endAccess();
      }

      else
      {
        v13 = v4;
      }

      v14 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
      swift_beginAccess();
      v15 = *&v4[v14];
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = sub_10077135C();

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

      sub_1001776D4();
      goto LABEL_11;
    }
  }
}

void sub_1004B5954(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
      v6 = v5;
      v7 = a1;
      v8 = sub_100770EEC();

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
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator) != 1)
  {
    if (!v9)
    {
      return;
    }

    v12 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView);
    if (v12)
    {
      swift_beginAccess();
      v13 = v12;
      v14 = v9;
      v15 = sub_1004B83D0(v13);
      swift_endAccess();
    }

    else
    {
      v16 = v9;
    }

    v17 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v18 = *&v9[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v19 = sub_10077135C();

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

    sub_1001776D4();
    goto LABEL_18;
  }

  if (v9)
  {
    v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView);
    v11 = v9;
    v20 = v10;
    sub_100177368(v10);
  }
}

void sub_1004B5B2C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075FEEC();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076D1FC();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v99 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075DE9C();
  v97 = *(v7 - 8);
  v98 = v7;
  __chkstk_darwin(v7);
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10077164C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v1;
  v109.super_class = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v11);
  v81 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView];
  if (v14)
  {
    v15 = v14;
    if (![v15 isHidden])
    {
      goto LABEL_7;
    }
  }

  v16 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
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
  v103 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style;
  v18 = v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
  if (v18 > 3)
  {
    if (v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] > 5u)
    {
      if (v18 == 6)
      {
        if (qword_100940670 != -1)
        {
          swift_once();
        }

        v19 = &unk_1009A0148;
      }

      else
      {
        if (qword_100940678 != -1)
        {
          swift_once();
        }

        v19 = &unk_1009A01F0;
      }
    }

    else if (v18 == 4)
    {
      if (qword_100940660 != -1)
      {
        swift_once();
      }

      v19 = &unk_10099FFF8;
    }

    else
    {
      if (qword_100940668 != -1)
      {
        swift_once();
      }

      v19 = &unk_1009A00A0;
    }
  }

  else if (v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] > 1u)
  {
    if (v18 == 2)
    {
      if (qword_100940650 != -1)
      {
        swift_once();
      }

      v19 = &unk_10099FEA8;
    }

    else
    {
      if (qword_100940658 != -1)
      {
        swift_once();
      }

      v19 = &unk_10099FF50;
    }
  }

  else if (v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style])
  {
    if (qword_100940648 != -1)
    {
      swift_once();
    }

    v19 = &unk_10099FE00;
  }

  else
  {
    if (qword_100940640 != -1)
    {
      swift_once();
    }

    v19 = &unk_10099FD58;
  }

  sub_1002ED13C(v19, v107);
  if (qword_100940680 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D9AC();
  v21 = sub_10000A61C(v20, qword_1009599C0);
  sub_10076D17C();
  v83 = v21;
  v84 = v20;
  sub_10076D40C();
  v23 = v22;
  v25 = *(v10 + 8);
  v24 = v10 + 8;
  v82 = v25;
  v25(v13, v9);
  v107[15] = v23;
  v107[16] = v23;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel];
  v27 = sub_1007626BC();
  v106[4] = &protocol witness table for UILabel;
  v106[3] = v27;
  v106[0] = v26;
  v95 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView;
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView];
  if (v28)
  {
    v94 = sub_10076394C();
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
    v92 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v91 = &protocol witness table for UIView;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v86 = v24;
  v87 = v9;
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView];
  if (v29)
  {
    v30 = sub_100016F40(0, &qword_100952278, UIVisualEffectView_ptr);
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  sub_1002ED13C(v107, v105);
  v32 = v29;
  v33 = v26;
  v34 = v28;
  v102 = v104;
  v35 = v96;
  sub_10075DE6C();
  v36 = sub_10075DE7C();
  (*(v97 + 8))(v35, v98);
  if (v36)
  {
    sub_10076D72C();
    sub_1002ED174(v107);
  }

  else
  {
    sub_1002ED174(v107);
    sub_10000A570(v106, &v105[21]);
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
  sub_10000CD74(v106);
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
          v53 = qword_100940670;
          v54 = v42;
          if (v53 != -1)
          {
            swift_once();
          }

          v48 = &unk_1009A0148;
        }

        else
        {
          v61 = qword_100940678;
          v62 = v42;
          if (v61 != -1)
          {
            swift_once();
          }

          v48 = &unk_1009A01F0;
        }
      }

      else if (v44 == 4)
      {
        v49 = qword_100940660;
        v50 = v42;
        if (v49 != -1)
        {
          swift_once();
        }

        v48 = &unk_10099FFF8;
      }

      else
      {
        v57 = qword_100940668;
        v58 = v42;
        if (v57 != -1)
        {
          swift_once();
        }

        v48 = &unk_1009A00A0;
      }
    }

    else
    {
      v45 = v85;
      if (v1[v103] > 1u)
      {
        if (v44 == 2)
        {
          v51 = qword_100940650;
          v52 = v42;
          if (v51 != -1)
          {
            swift_once();
          }

          v48 = &unk_10099FEA8;
        }

        else
        {
          v59 = qword_100940658;
          v60 = v42;
          if (v59 != -1)
          {
            swift_once();
          }

          v48 = &unk_10099FF50;
        }
      }

      else if (v1[v103])
      {
        v55 = qword_100940648;
        v56 = v42;
        if (v55 != -1)
        {
          swift_once();
        }

        v48 = &unk_10099FE00;
      }

      else
      {
        v46 = qword_100940640;
        v47 = v42;
        if (v46 != -1)
        {
          swift_once();
        }

        v48 = &unk_10099FD58;
      }
    }

    sub_1002ED13C(v48, v105);
    sub_10076D17C();
    sub_10076D40C();
    v64 = v63;
    v82(v45, v87);
    v105[15] = v64;
    v105[16] = v64;
    sub_1002ED174(v105);
    v66 = v88;
    v65 = v89;
    v67 = v90;
    (*(v89 + 104))(v88, enum case for CornerStyle.arc(_:), v90);
    sub_1007638BC();

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
    sub_10005AE58(v108);
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
  sub_10077070C();

LABEL_97:
  [v73 _setCornerRadius:1 continuous:sub_1007704FC() maskedCorners:v70];

LABEL_98:
  v75 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView;
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
    sub_1007638BC();

    (*(v77 + 8))(v78, v79);
    goto LABEL_100;
  }

  sub_10005AE58(v108);
  swift_endAccess();
}

uint64_t sub_1004B67D8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_10075DE9C();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style);
  if (v10 > 3)
  {
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style) > 5u)
    {
      if (v10 == 6)
      {
        if (qword_100940670 != -1)
        {
          swift_once();
        }

        v11 = &unk_1009A0148;
      }

      else
      {
        if (qword_100940678 != -1)
        {
          swift_once();
        }

        v11 = &unk_1009A01F0;
      }
    }

    else if (v10 == 4)
    {
      if (qword_100940660 != -1)
      {
        swift_once();
      }

      v11 = &unk_10099FFF8;
    }

    else
    {
      if (qword_100940668 != -1)
      {
        swift_once();
      }

      v11 = &unk_1009A00A0;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style) > 1u)
  {
    if (v10 == 2)
    {
      if (qword_100940650 != -1)
      {
        swift_once();
      }

      v11 = &unk_10099FEA8;
    }

    else
    {
      if (qword_100940658 != -1)
      {
        swift_once();
      }

      v11 = &unk_10099FF50;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style))
  {
    if (qword_100940648 != -1)
    {
      swift_once();
    }

    v11 = &unk_10099FE00;
  }

  else
  {
    if (qword_100940640 != -1)
    {
      swift_once();
    }

    v11 = &unk_10099FD58;
  }

  sub_1002ED13C(v11, v37);
  if (qword_100940680 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D9AC();
  sub_10000A61C(v12, qword_1009599C0);
  sub_10076D17C();
  sub_10076D40C();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v37[15] = v14;
  v37[16] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_textLabel);
  v36[3] = sub_1007626BC();
  v36[4] = &protocol witness table for UILabel;
  v36[0] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView);
  if (v16)
  {
    v31 = sub_10076394C();
    v30 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v17 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView);
  if (v17)
  {
    v18 = sub_100016F40(0, &qword_100952278, UIVisualEffectView_ptr);
    v29 = &protocol witness table for UIView;
  }

  else
  {
    v18 = 0;
    v29 = 0;
  }

  v19 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView);
  if (v19)
  {
    v20 = sub_100016F40(0, &qword_100952278, UIVisualEffectView_ptr);
    v21 = &protocol witness table for UIView;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_1002ED13C(v37, v35);
  v22 = v19;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v5;
  sub_10075DE6C();
  v27 = sub_10075DE7C();
  (*(v32 + 8))(v26, v33);
  if (v27)
  {
    sub_10076D72C();
    sub_1002ED174(v37);
  }

  else
  {
    sub_1002ED174(v37);
    sub_10000A570(v36, &v35[21]);
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
  return sub_10000CD74(v36);
}

double sub_1004B6E24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10076F2EC();
  __chkstk_darwin(v8 - 8);

  sub_1004B1D04(a1, a2);
  v9 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator);
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator) = a3;
  sub_1004B3E70(v9);
  v10 = v4 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate;
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
    if (qword_1009412D8 != -1)
    {
      swift_once();
    }

    v14 = sub_10076FD4C();
    sub_10000A61C(v14, qword_1009A25D0);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v16._object = 0x80000001007E9C00;
    v16._countAndFlagsBits = 0xD000000000000014;
    sub_10076F2CC(v16);
    sub_10076F2AC();
    v17._countAndFlagsBits = 0xD000000000000050;
    v17._object = 0x80000001007E9C20;
    sub_10076F2CC(v17);
    sub_10076F2FC();
    sub_10076FBFC();
  }

  return result;
}

double sub_1004B7114(void *a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077071C();

  if (!a1 || ((sub_10077071C() ^ v5) & 1) != 0)
  {
    goto LABEL_3;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_10076FF9C();
  v12 = v11;
  if (v10 == sub_10076FF9C() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_10077167C();

    if ((v14 & 1) == 0)
    {
LABEL_3:
      sub_1004B506C();
    }
  }

  return result;
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

unint64_t sub_1004B7478()
{
  result = qword_100959A70;
  if (!qword_100959A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959A70);
  }

  return result;
}

double sub_1004B74CC()
{
  swift_beginAccess();

  return result;
}

double sub_1004B7514(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double sub_1004B75D4(void *a1, double a2, double a3)
{
  sub_1004B67D8(v12);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007841E0;
  *(v6 + 32) = a1;
  v7 = a1;
  v8 = sub_10076DEEC();
  sub_1004B890C(v8, v12, a2, a3);
  v10 = v9;

  sub_10005AE58(v12);
  return v10;
}

Swift::Int sub_1004B76B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000A5D4(&qword_10094B0B0, &qword_100790F60);
    v2 = sub_10077143C();
    v15 = v2;
    sub_10077131C();
    if (sub_10077138C())
    {
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1004B78A4(v9 + 1);
        }

        v2 = v15;
        result = sub_100770EDC(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_10077138C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v2;
}

void sub_1004B78A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000A5D4(&qword_10094B0B0, &qword_100790F60);
  v4 = sub_10077142C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_100770EDC(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1004B7ACC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000A5D4(&qword_10094B0C0, &qword_100790F70);
  v4 = sub_10077142C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_10076FF9C();
      sub_10077175C();
      sub_10077008C();
      v18 = sub_1007717AC();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1004B7D48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000A5D4(&qword_10094B0E0, &qword_100790F80);
  v4 = sub_10077142C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_10077174C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_1004B7F6C(uint64_t a1, void *a2)
{
  sub_100770EDC(a2[5]);
  result = sub_1007712FC();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_1004B7FF0()
{
  v1 = v0;
  sub_10000A5D4(&qword_10094B0B0, &qword_100790F60);
  v2 = *v0;
  v3 = sub_10077141C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1004B8140()
{
  v1 = v0;
  sub_10000A5D4(&qword_10094B0C0, &qword_100790F70);
  v2 = *v0;
  v3 = sub_10077141C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1004B8290()
{
  v1 = v0;
  sub_10000A5D4(&qword_10094B0E0, &qword_100790F80);
  v2 = *v0;
  v3 = sub_10077141C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_1004B83D0(void *a1)
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
    v6 = sub_10077139C();

    if (v6)
    {
      v7 = sub_1004B8568(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v10 = sub_100770EDC(*(v3 + 40));
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
    v15 = sub_100770EEC();

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
    sub_1004B7FF0();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1004B86D0(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1004B8568(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_10077135C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1004B76B4(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = sub_100770EDC(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_100770EEC();

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
  sub_1004B86D0(v10);
  result = sub_100770EEC();
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

void sub_1004B86D0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1007712EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_100770EDC(v10);

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

double sub_1004B8870(uint64_t a1, double a2, double a3)
{
  sub_1004B67D8(v9);
  sub_1002ED1A4(a1, v9, a2, a3);
  v7 = v6;
  sub_10005AE58(v9);
  return v7;
}

void sub_1004B890C(uint64_t a1, void *a2, double a3, double a4)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[17];
  v12[0] = a2[18];
  v12[1] = v9;
  sub_100770ACC();
  sub_100102958((a2 + 26), &v13);
  if (v14)
  {
    sub_100012498(&v13, v15);
    sub_10000CF78(v15, v15[3]);
    if ((sub_10076D24C() & 1) == 0)
    {
      v10 = a2[13];
      sub_10000CF78(a2 + 10, v10);
      sub_1000FF02C(v10);
      sub_10076D40C();
      (*(v6 + 8))(v8, v5);
    }

    sub_10000CD74(v15);
  }

  else
  {
    sub_10000CFBC(&v13, &unk_10094DA00, &qword_100783FA0);
  }

  sub_10000CF78(a2 + 21, a2[24]);
  sub_10076D2AC();
  sub_10000CF78(a2, a2[3]);
  sub_10076D42C();
  v11 = a2[8];
  sub_10000CF78(a2 + 5, v11);
  sub_1000FF02C(v11);
  sub_10076D40C();
  (*(v6 + 8))(v8, v5);
  sub_100770AEC();
}

void sub_1004B8C08()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView);
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v3)
  {
    v4 = *(v0 + v1);
    if (v4)
    {
      swift_beginAccess();
      v5 = v4;
      v6 = v3;
      v7 = sub_1004B83D0(v5);
      swift_endAccess();
    }

    else
    {
      v8 = v3;
    }

    v9 = OBJC_IVAR____TtC20ProductPageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v10 = *&v3[v9];
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = sub_10077135C();

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

    sub_1001776D4();
    goto LABEL_10;
  }
}

void sub_1004B8D30()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_showLiveIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_blurredBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_vibrancyView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_1004B901C()
{
  v1 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v1 - 8);
  v37 = v36 - v2;
  v3 = sub_100768FEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v7 = *(v36[0] - 8);
  __chkstk_darwin(v36[0]);
  v9 = v36 - v8;
  v10 = sub_10076443C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  v39.receiver = v0;
  v39.super_class = v17;
  v36[1] = v17;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v38 = v0;
  v18 = [v0 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v19 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v19 = qword_100944CA0;
  }

  v20 = sub_10000A61C(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v16, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v37, 1, 1, v3);
  sub_10033350C();
  sub_10076759C();
  v21 = v38;
  sub_10076440C();
  v23 = v22;
  v25 = v24;
  (*(v7 + 8))(v9, v36[0]);
  (*(v11 + 8))(v16, v10);
  v26 = *&v21[OBJC_IVAR____TtCV20ProductPageExtension17PlaceholderHelperP33_1824C6005CF15D4BC8A78ADADD15571721PlacholderOfferButton_button];
  [v26 frame];
  [v26 setFrame:?];
  v27 = [v26 layer];
  v28 = v27;
  if (v23 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v23;
  }

  [v27 setCornerRadius:{v29 * 0.5, v36[0]}];

  sub_10076422C();
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  return [v26 setCenter:{MidX, CGRectGetMidY(v41)}];
}

id sub_1004B9520(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1004B958C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = sub_10076FF6C();
  [v4 setText:v5];

  [v4 setNumberOfLines:1];
  [v4 setLineBreakMode:1];
  [v4 setAdjustsFontForContentSizeCategory:1];
  v6 = [objc_opt_self() preferredFontForTextStyle:a3];
  [v4 setFont:v6];

  v7 = [objc_opt_self() secondarySystemBackgroundColor];
  [v4 setTextColor:v7];

  return v4;
}

id sub_1004B96BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10076771C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_10076D3DC();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a3, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  (*(v5 + 104))(v7, enum case for DirectionalTextAlignment.none(_:), v4);
  v13 = objc_allocWithZone(sub_1007626BC());
  v14 = sub_1007626AC();
  v15 = sub_10076FF6C();
  [v14 setText:v15];

  sub_10076266C();
  v16 = objc_opt_self();
  v17 = v14;
  v18 = [v16 secondarySystemBackgroundColor];
  [v17 setTextColor:v18];

  return v17;
}

double sub_1004B9924()
{
  v1 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v1 - 8);
  v26 = &v24 - v2;
  v3 = sub_100768FEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = sub_10076443C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v24 - v16;
  v27 = v0;
  v18 = [v0 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v19 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v19 = qword_100944CA0;
  }

  v20 = sub_10000A61C(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v17, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v26, 1, 1, v3);
  sub_10033350C();
  sub_10076759C();
  sub_10076440C();
  v22 = v21;
  (*(v7 + 8))(v9, v25);
  (*(v11 + 8))(v17, v10);
  return v22;
}

double sub_1004B9CF4(__n128 a1)
{
  v1 = a1.n128_f64[0];
  sub_10076BEFC();
  sub_10076BEFC();
  return v1;
}

uint64_t sub_1004B9DC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1004B9E0C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_10000A5D4(&unk_10095E850, &qword_10078B130);
  __chkstk_darwin(v5 - 8);
  v60 = &v55 - v6;
  v59 = sub_100770F9C();
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v8 - 8);
  v10 = &v55 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a1 + 40;
    v14 = _swiftEmptyArrayStorage;
    v57 = a1 + 40;
    while (2)
    {
      v15 = (v13 + 16 * v12);
      v16 = v12;
      while (1)
      {
        if (v16 >= v11)
        {
          goto LABEL_41;
        }

        v12 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v17 = *(v15 - 1);
        v18 = *v15;

        a1 = v17;
        sub_10076B8EC();
        if (v19)
        {
          break;
        }

        ++v16;
        v15 += 16;
        if (v12 == v11)
        {
          goto LABEL_16;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a1 = v63;
        sub_1004BB8B4(0, v14[2] + 1, 1);
        v14 = v63[0];
      }

      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        a1 = v63;
        sub_1004BB8B4((v21 > 1), v22 + 1, 1);
        v14 = v63[0];
      }

      v14[2] = v22 + 1;
      v23 = &v14[2 * v22];
      v23[4] = v17;
      *(v23 + 40) = v18;
      v13 = v57;
      if (v12 != v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_16:
  a1 = v14[2];
  v11 = OBJC_IVAR____TtC20ProductPageExtension15BannerButtonRow_buttonViews;
  swift_beginAccess();
  v24 = *&v3[v11];
  if (v24 >> 62)
  {
LABEL_44:
    result = sub_10077158C();
    v26 = a1 - result;
    if (!__OFSUB__(a1, result))
    {
      goto LABEL_18;
    }

LABEL_46:
    __break(1u);
    return result;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    goto LABEL_46;
  }

LABEL_18:
  v57 = v14;
  if (v26 <= 0)
  {
    if (v26 < 0)
    {
      for (i = &result[-a1]; i; --i)
      {
        swift_beginAccess();
        a1 = *&v3[v11];
        v14 = (a1 >> 62);
        if (a1 >> 62)
        {
          if (!sub_10077158C())
          {
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }
        }

        else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v3[v11] = a1;
        if (v14 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          a1 = sub_1004BDB38(a1);
        }

        v52 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v52)
        {
          goto LABEL_43;
        }

        v53 = v52 - 1;
        v54 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v53 + 0x20);
        *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v53;
        *&v3[v11] = a1;
        swift_endAccess();
        [v54 removeFromSuperview];
        v62 = v54;
        swift_beginAccess();
        sub_10000A5D4(&qword_10094E540, &qword_1007A6DC0);
        sub_10076E17C();
        swift_endAccess();
      }
    }
  }

  else
  {
    do
    {
      swift_beginAccess();
      sub_10000A5D4(&qword_10094E540, &qword_1007A6DC0);
      sub_10076E15C();
      swift_endAccess();
      v27 = v62;
      swift_beginAccess();
      v28 = v27;
      sub_10077019C();
      if (*((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((*&v3[v11] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10077021C();
      }

      sub_10077025C();
      swift_endAccess();
      [v3 addSubview:v28];

      --v26;
    }

    while (v26);
  }

  v63[0] = *&v3[v11];
  v63[1] = 0;
  v63[2] = v57;
  v63[3] = 0;
  v64 = 0;

  v29 = sub_1004BA658();
  if (v29)
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
    v57 = sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
    LODWORD(v56) = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
    v55 += 13;
    do
    {
      if (qword_1009406A8 != -1)
      {
        swift_once();
      }

      v35 = qword_100959AF0;
      v36 = swift_allocObject();
      *(v36 + 16) = v61;
      *(v36 + 24) = v33;
      v37 = v34 & 1;
      *(v36 + 32) = v34 & 1;
      v38 = v35;

      v39 = sub_100770F1C();
      v40 = v32;
      [v40 removeActionForIdentifier:v38 forControlEvents:0x2000];

      sub_10076B8EC();

      sub_10077108C();
      sub_1007710EC();
      v41 = objc_opt_self();
      v42 = [v41 tintColor];
      v43 = [v42 colorWithAlphaComponent:0.08];

      sub_10077103C();
      v44 = [v41 tintColor];
      sub_10077104C();
      (*v55)(v58, v56, v59);
      sub_100770FAC();
      sub_100770FEC();
      v45 = v60;
      sub_10076E8AC();
      v46 = sub_10076E89C();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      sub_10077106C();
      v47 = sub_10077111C();
      (*(*(v47 - 8) + 56))(v10, 0, 1, v47);
      sub_10077114C();
      [v40 setEnabled:v37];

      [v40 addAction:v39 forControlEvents:0x2000];

      v32 = sub_1004BA658();
      v33 = v48;
      v34 = v49;
    }

    while (v32);
  }

  return [v3 setNeedsLayout];
}

id sub_1004BA658()
{
  if (v0[4])
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    result = sub_10077158C();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    result = *(v2 + 8 * v3 + 32);
    v4 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_10;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_10077149C();
  v4 = (v3 + 1);
  if (__OFADD__(v3, 1))
  {
    goto LABEL_18;
  }

LABEL_10:
  v0[1] = v4;
  v5 = v0[3];
  v6 = *(v0[2] + 16);
  if (v5 == v6)
  {

LABEL_12:
    result = 0;
    *(v0 + 32) = 1;
    return result;
  }

  if (v5 < v6)
  {
    v7 = result;
    v0[3] = v5 + 1;

    return v7;
  }

LABEL_21:
  __break(1u);
  return result;
}

NSString sub_1004BA778()
{
  result = sub_10076FF6C();
  qword_100959AF0 = result;
  return result;
}

id sub_1004BAA24@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(UIButton) init];
  *a1 = result;
  return result;
}

uint64_t sub_1004BAA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CFBC(v7, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(a3, 1, a2, v7);

  return (*(v9 + 8))(v7, v8);
}

uint64_t sub_1004BABA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10075D9EC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  sub_100016BD0();
  return sub_10075D9FC();
}

void sub_1004BAC64()
{
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v1 = OBJC_IVAR____TtC20ProductPageExtension15BannerButtonRow_buttonViews;
  swift_beginAccess();
  sub_100016F40(0, &qword_100947240, UIButton_ptr);

  v2 = sub_1007701EC();

  if (v2)
  {
    [v0 bounds];
    v4 = v3;
    v5 = *&v0[v1];
    if (v5 >> 62)
    {
      goto LABEL_38;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v6 < 1)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = (v4 + (v6 - 1) * -10.0) / v6;
    }

    v7 = *&v0[v1];
    if (v7 >> 62)
    {
      v8 = sub_10077158C();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    do
    {
      if (v8 == v9)
      {

        [v0 bounds];
        MinX = CGRectGetMinX(v43);
        v17 = *&v0[v1];
        if (v17 >> 62)
        {
          v18 = sub_10077158C();
          if (!v18)
          {
            return;
          }
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v18)
          {
            return;
          }
        }

        if (v18 >= 1)
        {

          v19 = 0;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v20 = sub_10077149C();
            }

            else
            {
              v20 = *(v17 + 8 * v19 + 32);
            }

            v21 = v20;
            ++v19;
            [v0 bounds];
            [v21 sizeThatFits:{v22, v23}];
            [v0 bounds];
            CGRectGetMinY(v44);
            [v0 bounds];
            sub_100770A4C();
            [v21 setFrame:?];

            MinX = v4 + 10.0 + MinX;
          }

          while (v18 != v19);
          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_45;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_10077149C();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v6 = sub_10077158C();
        goto LABEL_4;
      }

      [v0 bounds];
      [v11 sizeThatFits:{v12, v13}];
      v15 = v14;

      ++v9;
    }

    while (v4 >= v15);

    [v0 bounds];
    MinY = CGRectGetMinY(*&v24);
    v29 = *&v0[v1];
    if (!(v29 >> 62))
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        return;
      }

LABEL_28:
      if (v30 >= 1)
      {

        v31 = 0;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v32 = sub_10077149C();
          }

          else
          {
            v32 = *(v29 + 8 * v31 + 32);
          }

          v33 = v32;
          ++v31;
          [v0 bounds];
          [v33 sizeThatFits:{v34, v35}];
          v37 = v36;
          [v0 bounds];
          v38 = CGRectGetMinX(v45);
          [v0 bounds];
          v40 = v39;
          [v0 bounds];
          sub_100770A4C();
          [v33 setFrame:?];
          v46.origin.x = v38;
          v46.origin.y = MinY;
          v46.size.width = v40;
          v46.size.height = fmax(v37, 30.0);
          MaxY = CGRectGetMaxY(v46);

          MinY = MinY + MaxY + 10.0;
        }

        while (v30 != v31);
LABEL_34:

        return;
      }

LABEL_45:
      __break(1u);
      return;
    }

    v30 = sub_10077158C();
    if (v30)
    {
      goto LABEL_28;
    }
  }
}

double sub_1004BB138(double a1, double a2)
{
  v5 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v5 - 8);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v32 - v9;
  v11 = [v2 traitCollection];
  v12 = OBJC_IVAR____TtC20ProductPageExtension15BannerButtonRow_buttonViews;
  swift_beginAccess();
  v13 = *&v2[v12];
  if (v13 >> 62)
  {
LABEL_28:
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = sub_10077158C();
  }

  else
  {
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v15 = 0;
  v37 = v13 & 0xC000000000000001;
  v16 = _swiftEmptyArrayStorage;
  v33 = v11;
  v36 = v13;
  do
  {
    v34 = v16;
    v17 = v15;
    while (1)
    {
      if (v37)
      {
        v18 = sub_10077149C();
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v17 >= *(v38 + 16))
        {
          goto LABEL_27;
        }

        v18 = *(v13 + 8 * v17 + 32);
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      v19 = v18;
      sub_10077113C();
      v20 = sub_10077111C();
      v11 = *(v20 - 8);
      if (v11[6](v10, 1, v20) != 1)
      {
        break;
      }

      sub_10000CFBC(v10, &unk_10095B400, &unk_100783F80);

LABEL_7:
      ++v17;
      v13 = v36;
      if (v15 == v14)
      {
        v11 = v33;
        v16 = v34;
        goto LABEL_25;
      }
    }

    v21 = v35;
    sub_10014D2A4(v10, v35);
    v22 = sub_1007710DC();
    v24 = v23;
    v25 = v11[1];
    ++v11;
    (v25)(v21, v20);
    sub_10000CFBC(v10, &unk_10095B400, &unk_100783F80);

    if (!v24)
    {
      goto LABEL_7;
    }

    v16 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_10049D954(0, *(v16 + 2) + 1, 1, v16);
    }

    v11 = v33;
    v28 = *(v16 + 2);
    v27 = *(v16 + 3);
    if (v28 >= v27 >> 1)
    {
      v16 = sub_10049D954((v27 > 1), v28 + 1, 1, v16);
    }

    *(v16 + 2) = v28 + 1;
    v29 = &v16[16 * v28];
    *(v29 + 4) = v22;
    *(v29 + 5) = v24;
    v13 = v36;
  }

  while (v15 != v14);
LABEL_25:

  v30 = sub_1004BDBB0(v11, v16, a1, a2);

  return v30;
}

uint64_t type metadata accessor for BannerButtonRow(uint64_t a1)
{
  result = qword_100959B30;
  if (!qword_100959B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004BB5E0(uint64_t a1)
{
  sub_1004BB680(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004BB680(uint64_t a1)
{
  if (!qword_100959B40)
  {
    sub_10000CE78(&qword_10094E548, &qword_100796800);
    sub_1004BB6F0();
    v1 = sub_10076E19C();
    if (!v2)
    {
      atomic_store(v1, &qword_100959B40);
    }
  }
}

unint64_t sub_1004BB6F0()
{
  result = qword_10094E550;
  if (!qword_10094E550)
  {
    sub_10000CE78(&qword_10094E548, &qword_100796800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094E550);
  }

  return result;
}

void *sub_1004BB754(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD678(a1, a2, a3, *v3, &qword_100959238, &unk_1007A5EB0, &qword_1009425C8, &qword_100783F70);
  *v3 = result;
  return result;
}

void *sub_1004BB794(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BC744(a1, a2, a3, *v3, &qword_1009591C0, &qword_1007A6E60, &qword_1009591C8, &qword_1007A5E30);
  *v3 = result;
  return result;
}

void *sub_1004BB7D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD678(a1, a2, a3, *v3, &qword_100959198, &unk_1007A5DF0, &qword_10094CF50, &unk_100791F20);
  *v3 = result;
  return result;
}

void *sub_1004BB814(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BBE34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BB834(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD678(a1, a2, a3, *v3, &unk_10094D050, &unk_1007A6E40, &qword_100948D00, &qword_10078B680);
  *v3 = result;
  return result;
}

char *sub_1004BB874(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BBF68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BB894(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BC078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BB8B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BC198(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1004BB8D4()
{

  return _swift_deallocObject(v0, 33, 7);
}

void *sub_1004BB920(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BCCE4(a1, a2, a3, *v3, &qword_100959B88, &qword_1007A6E18, &unk_1009567A0, &unk_1007A6E20);
  *v3 = result;
  return result;
}

void *sub_1004BB960(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BCCE4(a1, a2, a3, *v3, &qword_100959B60, &unk_1007A6DF0, &qword_100959B68, &qword_1007AAD30);
  *v3 = result;
  return result;
}

void *sub_1004BB9A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BC2CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BB9C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD8E0(a1, a2, a3, *v3, &qword_10094E588, &unk_1007968F0, &type metadata accessor for AdamId);
  *v3 = result;
  return result;
}

void *sub_1004BBA04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BC400(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBA24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BC640(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BBA44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BC744(a1, a2, a3, *v3, &qword_1009591F8, qword_1007B6280, &unk_100948BD8, &unk_100790A20);
  *v3 = result;
  return result;
}

void *sub_1004BBA84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BC878(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBAA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BC9AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBAC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BCAB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BBAE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD678(a1, a2, a3, *v3, &qword_100959BC8, &unk_1007A6E90, &qword_1009575A0, &unk_100784980);
  *v3 = result;
  return result;
}

char *sub_1004BBB24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BC534(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BBB44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD8E0(a1, a2, a3, *v3, &qword_100959B58, &qword_1007A6DE8, &type metadata accessor for SponsoredSearchAdvert);
  *v3 = result;
  return result;
}

char *sub_1004BBB88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BCBD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BBBA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BCCE4(a1, a2, a3, *v3, &qword_100948210, qword_10078A940, &qword_100948208, &qword_10078A938);
  *v3 = result;
  return result;
}

char *sub_1004BBBE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BCECC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBC08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BCFD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBC28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD0F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBC48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD1F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBC68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD314(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BBC88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD678(a1, a2, a3, *v3, &qword_100959260, &unk_1007A5EF0, &qword_10094AE80, &unk_100790A30);
  *v3 = result;
  return result;
}

void *sub_1004BBCC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD8E0(a1, a2, a3, *v3, &qword_100944C48, &unk_10079AFF0, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

char *sub_1004BBD0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004BBD2C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD558(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BBD4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD678(a1, a2, a3, *v3, &qword_1009591D0, &qword_1007A5E38, &unk_100953E10, &unk_100784160);
  *v3 = result;
  return result;
}

void *sub_1004BBD8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD8E0(a1, a2, a3, *v3, &qword_100959BB8, &qword_1007A6E80, &type metadata accessor for PageFacets.Facet.Option);
  *v3 = result;
  return result;
}

char *sub_1004BBDD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD7C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004BBDF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004BD8E0(a1, a2, a3, *v3, &qword_1009592C0, qword_1007A6EC0, &type metadata accessor for DebugMetricsEvent);
  *v3 = result;
  return result;
}

void *sub_1004BBE34(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959B78, &qword_1007A6E08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_100959B80, &qword_1007A6E10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BBF68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&unk_1009434B0, &unk_100785550);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BC078(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959B50, &unk_1007A6DD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004BC198(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959B48, &unk_1007A6DC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&unk_10094C3B0, qword_10078C480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004BC2CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959B70, &qword_1007A6E00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_10094D7A8, &qword_1007948E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004BC400(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100952660, &qword_10079B730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&unk_100943470, &qword_10078C740);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BC534(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100944FF0, &unk_1007873B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BC640(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_1009591F0, &unk_1007A5E60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1004BC744(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000A5D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1004BC878(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959BA0, &qword_1007A6E68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_100959BA8, &qword_1007A6E70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BC9AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&unk_100952260, &unk_1007A6250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1004BCAB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959B98, &unk_1007A6E50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BCBD8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959188, &qword_1007A5DC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004BCCE4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A5D4(a5, a6);
  v16 = *(sub_10000A5D4(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10000A5D4(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1004BCECC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_10094E568, &unk_1007968D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1004BCFD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959B90, &unk_1007A6E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BD0F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100952110, qword_100790770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1004BD1F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959BE0, &qword_1007A6EB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BD314(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959BC0, &qword_1007A6E88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004BD458(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959BD0, &unk_1007A6EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1004BD558(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959BD8, &qword_1007A6EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004BD678(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000A5D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1004BD7C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000A5D4(&qword_100959BB0, &qword_1007A6E78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004BD8E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A5D4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1004BDB38(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_10077158C();
  }

  return sub_1007714AC();
}

double sub_1004BDBB0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v59[1] = a1;
  v7 = sub_10000A5D4(&unk_10095E850, &qword_10078B130);
  __chkstk_darwin(v7 - 8);
  v69 = v59 - v8;
  v68 = sub_100770F9C();
  v9 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10077111C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v66 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v59 - v15;
  v17 = *(a2 + 16);
  if (!v17)
  {

    return -10.0;
  }

  v70 = _swiftEmptyArrayStorage;
  sub_1004BBBE8(0, v17, 0);
  v18 = v70;
  v65 = objc_opt_self();
  v64 = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
  v62 = (v12 + 16);
  v63 = (v9 + 104);
  v60 = (v12 + 8);
  v61 = (v12 + 32);
  v19 = a2 + 40;
  v20 = 0.0;
  v59[0] = v17;
  v21 = 0.0;
  do
  {

    sub_10077108C();

    sub_1007710EC();
    v22 = v65;
    v23 = [v65 tintColor];
    v24 = [v23 colorWithAlphaComponent:0.08];

    sub_10077103C();
    v25 = [v22 tintColor];
    sub_10077104C();
    (*v63)(v67, v64, v68);
    sub_100770FAC();
    sub_100770FEC();
    v26 = v69;
    sub_10076E8AC();
    v27 = sub_10076E89C();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    sub_10077106C();
    v28 = v66;
    (*v62)(v66, v16, v11);
    type metadata accessor for ButtonPlaceholder(0);
    v29 = swift_allocObject();
    *(v29 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
    (*v61)(v29 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration, v28, v11);
    v30 = sub_100409724();
    [v30 sizeThatFits:{a3, a4}];
    v32 = v31;
    v33 = [v30 titleLabel];
    if (!v33)
    {
      goto LABEL_6;
    }

    v34 = v33;
    v35 = [v30 subtitleLabel];
    if (v35)
    {
      v36 = v35;

LABEL_6:
      sub_10076D83C();
      v38 = v37;
      v32 = v39;
      goto LABEL_8;
    }

    sub_100770E9C();
    sub_10076D83C();
    v38 = v40;

LABEL_8:

    swift_setDeallocating();
    v41 = *v60;
    (*v60)(v29 + OBJC_IVAR____TtC20ProductPageExtension17ButtonPlaceholder_configuration, v11);

    swift_deallocClassInstance();
    v41(v16, v11);
    v42 = fmax(v32, 30.0);
    if (v20 <= v38)
    {
      v20 = v38;
    }

    if (v21 <= v42)
    {
      v21 = v42;
    }

    v70 = v18;
    v44 = v18[2];
    v43 = v18[3];
    if (v44 >= v43 >> 1)
    {
      sub_1004BBBE8((v43 > 1), v44 + 1, 1);
      v18 = v70;
    }

    v18[2] = v44 + 1;
    v45 = &v18[2 * v44];
    v45[4] = v38;
    v45[5] = v42;
    v19 += 16;
    --v17;
  }

  while (v17);
  v46 = v59[0] - 1;
  v47 = a3 + (v59[0] - 1) * -10.0;
  v48 = v59[0];
  if (v47 / v59[0] < v20)
  {
    if (v44)
    {
      v49 = (v44 + 1) & 0x7FFFFFFFFFFFFFFELL;
      v50 = (v18 + 7);
      v51 = 0.0;
      v52 = v49;
      do
      {
        v53 = *(v50 - 2);
        v54 = *v50;
        v50 += 4;
        v51 = v51 + v53 + v54;
        v52 -= 2;
      }

      while (v52);
      if (v44 + 1 == v49)
      {
LABEL_26:

        return v20;
      }
    }

    else
    {
      v49 = 0;
      v51 = 0.0;
    }

    v55 = v44 - v49 + 1;
    v56 = &v18[2 * v49 + 5];
    do
    {
      v57 = *v56;
      v56 += 2;
      v51 = v51 + v57;
      --v55;
    }

    while (v55);
    goto LABEL_26;
  }

  return v46 * 10.0 + v20 * v48;
}

char *sub_1004BE298()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension10PlayButton_backgroundView;
  *&v0[v1] = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension10PlayButton_glyphView;
  *&v0[v2] = [objc_allocWithZone(UIImageView) init];
  v3 = &v0[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapGestureRecognizer] = 0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for PlayButton();
  v4 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension10PlayButton_glyphView;
  v6 = *&v4[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_glyphView];
  v7 = v4;
  v8 = v6;
  v9 = sub_1005A5DB8(0xD000000000000012, 0x80000001007E9E90, 0);
  v10 = [v9 imageWithRenderingMode:2];

  [v8 setImage:v10];
  v11 = qword_1009406B0;
  v12 = *&v4[v5];
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setTintColor:qword_100959BE8];

  [*&v4[v5] setUserInteractionEnabled:0];
  if (ASKPerformanceProfileGetForCurrentDevice() != 2)
  {
    [*&v7[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_backgroundView] setPrefersLowQualityEffects:1];
  }

  v13 = OBJC_IVAR____TtC20ProductPageExtension10PlayButton_backgroundView;
  [*&v7[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_backgroundView] addSubview:*&v4[v5] applyingMaterialStyle:0 tintEffectStyle:0];
  [*&v7[v13] setUserInteractionEnabled:0];
  [*&v7[v13] setCircular:1];
  [v7 addSubview:*&v7[v13]];
  [v7 addTarget:v7 action:"didTap" forControlEvents:64];

  return v7;
}

id sub_1004BE564(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PlayButton();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_backgroundView];
  [v1 bounds];
  [v2 setFrame:?];
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension10PlayButton_glyphView];
  [v1 bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;
  [v1 bounds];
  v10 = CGRectGetMidX(v13) - v7 * 0.5;
  [v1 bounds];
  return [v3 setFrame:{v10, CGRectGetMidY(v14) - v9 * 0.5, v7, v9}];
}

id sub_1004BE764(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1004BE82C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension10PlayButton_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension10PlayButton_glyphView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension10PlayButton_tapGestureRecognizer) = 0;
  sub_10077156C();
  __break(1u);
}

double sub_1004BE8F0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_10093F650 != -1)
  {
    swift_once();
  }

  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for VideoCardView(0);

  return sub_1000C31A8(a1, a2, &qword_10099CD08, a8, v12, ObjectType);
}

uint64_t sub_1004BEA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = a3;
  v4 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v4 - 8);
  v83 = &v76 - v5;
  v6 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v6 - 8);
  v85 = &v76 - v7;
  v8 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v8 - 8);
  v84 = &v76 - v9;
  v10 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v10 - 8);
  v82 = &v76 - v11;
  v12 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v12 - 8);
  v81 = &v76 - v13;
  v14 = sub_10076361C();
  __chkstk_darwin(v14 - 8);
  v80 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10075FEEC();
  v78 = *(v16 - 8);
  v79 = v16;
  __chkstk_darwin(v16);
  v77 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v18 - 8);
  v87 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v86 = &v76 - v21;
  v22 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v22 - 8);
  v24 = &v76 - v23;
  v25 = sub_1007611EC();
  __chkstk_darwin(v25 - 8);
  __chkstk_darwin(v26);
  v27 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v27 - 8);
  v29 = &v76 - v28;
  v30 = sub_10076121C();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10076481C();
  v90 = *(v34 - 8);
  v91 = v34;
  __chkstk_darwin(v34);
  v36 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a1;
  sub_10076C86C();
  (*(v31 + 104))(v33, enum case for VideoFillMode.scaleAspectFill(_:), v30);
  sub_10076B84C();
  sub_10076BEFC();
  sub_10076D3AC();

  v37 = sub_10076D39C();
  (*(*(v37 - 8) + 56))(v29, 0, 1, v37);
  sub_10076B7EC();
  sub_10076B82C();
  sub_10076B7FC();
  sub_10076B7DC();
  sub_10076B83C();
  sub_1007647FC();
  sub_100762F0C();
  sub_10076F5CC();
  v38 = v94[0];
  sub_10076B7CC();
  sub_10076B85C();
  v39 = sub_10075DB7C();
  (*(*(v39 - 8) + 56))(v24, 0, 1, v39);
  v40 = v86;
  sub_10076B81C();
  v41 = v87;
  sub_10076B80C();
  type metadata accessor for VideoView(0);
  sub_1004C0018(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
  v89 = v36;
  v42 = sub_100762EEC();
  sub_10000CFBC(v41, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v40, &unk_10094C030, &unk_10078D680);
  sub_10000CFBC(v24, &unk_1009435D0, &qword_100785850);
  sub_10000CFBC(v94, &qword_100943310, &unk_100784150);
  v43 = *(v88 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    v46 = [Strong superview];
    if (!v46)
    {
LABEL_6:

      goto LABEL_7;
    }

    v47 = v46;
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v48 = v43;
    v49 = sub_100770EEC();

    if (v49)
    {
      v50 = swift_unknownObjectWeakLoadStrong();
      if (v50)
      {
        v45 = v50;
        [v50 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v54 = v78;
    v53 = v79;
    v55 = v77;
    (*(v78 + 104))(v77, enum case for CornerStyle.continuous(_:), v79);
    sub_1007638AC();
    (*(v54 + 8))(v55, v53);
    [v43 addSubview:v52];
    [v43 sendSubviewToBack:v52];
    [v43 setNeedsLayout];
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {
    v56[qword_1009602D8] = 1;
  }

  v57 = *&v43[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_overlayView];
  v58 = sub_10076C87C();
  if (v58)
  {
    v59 = v58;
    [v57 setHidden:0];
    v88 = v38;
    v60 = v80;
    sub_10076C85C();
    sub_1000C1B9C(v60, v61);
    v62 = *&v43[OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView];
    v63 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    v64 = v81;
    (*(*(v63 - 8) + 56))(v81, 1, 1, v63);
    v65 = sub_10075F78C();
    v66 = v82;
    (*(*(v65 - 8) + 56))(v82, 1, 1, v65);
    v67 = sub_1007628DC();
    v68 = v84;
    (*(*(v67 - 8) + 56))(v84, 1, 1, v67);
    v69 = sub_10000A5D4(&unk_100946750, qword_100787A30);
    v70 = v85;
    (*(*(v69 - 8) + 56))(v85, 1, 1, v69);
    v71 = sub_10076C54C();
    v72 = v83;
    (*(*(v71 - 8) + 56))(v83, 1, 1, v71);
    v73 = v62;
    sub_1004D0A60(v59, v73, v64, v93, 0, 0, v66, v68, v72, v70);
    sub_10000CFBC(v72, &unk_100949290, &unk_10078BBF0);
    v73[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v73 setNeedsLayout];

    sub_10000CFBC(v70, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v68, &unk_1009492A0, &unk_10078BC00);
    sub_10000CFBC(v66, &unk_10094D210, &qword_10078DE20);
    sub_10000CFBC(v64, &unk_100946760, &unk_100787A20);
  }

  else
  {
    v74 = v57;
    [v74 setHidden:1];
  }

  return (*(v90 + 8))(v89, v91);
}

void sub_1004BF628(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  swift_getObjectType();
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076BEDC();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100763ADC();
  v35 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076D39C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v41);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10076C88C();
  if (swift_dynamicCast())
  {
    v34[1] = v7;
    v36 = v40;
    sub_10076C86C();
    v18 = sub_10076B84C();

    sub_10076422C();
    CGRectGetWidth(v42);
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D36C();
    (*(v15 + 8))(v17, v14);
    v34[2] = v18;
    v19 = sub_10076BFCC();
    v20 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      type metadata accessor for VideoView(0);
      sub_1004C0018(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
      sub_100760B8C();
    }

    else
    {
      sub_100760B9C();
    }

    v23 = v38;
    v24 = *(v20 + OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView);
    if (sub_10076C87C())
    {
      if (sub_10076BB9C())
      {
        v34[0] = v19;
        v25 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
        swift_beginAccess();
        v26 = v35;
        (*(v35 + 16))(v13, &v24[v25], v11);
        sub_1007639AC();
        (*(v26 + 8))(v13, v11);
        sub_10076BEEC();
        sub_10076BE9C();
        v35 = *(v37 + 1);
        (v35)(v10, v23);
        sub_10076BFCC();
        v27 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
        v28 = *&v24[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
        v37 = v24;
        v29 = v28;
        sub_10076BF7C();
        sub_10075FCCC();
        [v29 setContentMode:sub_10076BDBC()];
        sub_100764ADC();
        sub_10075FD0C();
        if (!sub_10076BE1C())
        {
          sub_100016F40(0, &qword_100942F10, UIColor_ptr);
          sub_100770D5C();
        }

        sub_10075FB8C();

        v30 = *&v24[v27];
        sub_10076BEEC();
        v31 = sub_10076BE9C();
        (v35)(v10, v38);
        [v30 setContentMode:v31];

        v32 = *&v24[v27];
        v33 = v37;

        sub_10075FD2C();
        sub_1004C0018(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_100760B8C();

        goto LABEL_12;
      }
    }

LABEL_12:
  }
}

id sub_1004BFC64(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_10093F650 != -1)
  {
    swift_once();
  }

  sub_1004C0018(&qword_100959C88, type metadata accessor for VideoCardCollectionViewCell, &unk_1007A8A88);
  sub_10076DBFC();
  v3 = v2;
  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 absoluteDimension:v3];
  v8 = [v6 absoluteDimension:v5];
  v9 = [objc_opt_self() sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = [objc_opt_self() itemWithLayoutSize:v9];
  v11 = objc_opt_self();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007841E0;
  *(v12 + 32) = v10;
  sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
  v13 = v10;
  isa = sub_1007701AC().super.isa;

  v15 = [v11 verticalGroupWithLayoutSize:v9 subitems:isa];

  return v15;
}

void sub_1004BFE9C(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for VideoView(0);
    sub_1004C0018(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
    sub_100760BFC();
  }

  v6 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_lockupView);
  v7 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v8 = *&v6[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
  v9 = v6;
  v10 = v8;
  sub_10075FB6C();

  v11 = *&v6[v7];
  sub_10075FD2C();
  sub_1004C0018(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v12 = v11;
  sub_100760BFC();
}

uint64_t sub_1004C0018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004C0060(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v24[2] = a1;
  v24[3] = a2;
  v4 = sub_10076BEDC();
  __chkstk_darwin(v4 - 8);
  v24[0] = sub_10076BF6C();
  v5 = *(v24[0] - 8);
  __chkstk_darwin(v24[0]);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = sub_10000A5D4(&qword_100959C90, qword_1007A6F78);
  __chkstk_darwin(v11 - 8);
  v13 = v24 - v12;
  v14 = sub_10076BD9C();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10075D86C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D85C();
  sub_10076BD6C();
  sub_10075D83C();
  sub_10075D82C();
  sub_10075D84C();
  if (v19)
  {
    sub_10076BD7C();
    v20 = sub_10076BD2C();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    v21 = sub_10076F7FC();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    (*(v5 + 104))(v7, enum case for Artwork.Style.unspecified(_:), v24[0]);
    sub_10076BE8C();
    v22 = sub_10076BE6C();
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    (*(v16 + 8))(v18, v15);
    return 0;
  }

  return v22;
}

uint64_t sub_1004C0434()
{
  v0 = sub_10076118C();
  v2 = v1;
  if (v1)
  {
    v17._countAndFlagsBits = 0x5F53455441445055;
    v17._object = 0xEF4E4F4953524556;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    sub_1007622EC(v17, v19);
    sub_10000A5D4(&qword_100966CF0, qword_100795350);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100783DD0;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_1000A9040();
    *(v3 + 32) = v0;
    *(v3 + 40) = v2;
    v0 = sub_10076FFCC();
    v5 = v4;

    v6 = sub_10076117C();
    if ((v7 & 1) == 0)
    {
      v8.super.super.isa = [objc_allocWithZone(NSNumber) initWithLongLong:v6];
      isa = v8.super.super.isa;
      v10 = sub_100763CFC(v8);
      v12 = v11;

      if (v12)
      {
        sub_10000A5D4(&unk_100954470, &qword_10079DCB8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100784500;
        *(inited + 32) = 0x6E6F6973726576;
        *(inited + 40) = 0xE700000000000000;
        *(inited + 48) = v0;
        *(inited + 56) = v5;
        strcpy((inited + 64), "version_size");
        *(inited + 77) = 0;
        *(inited + 78) = -5120;
        *(inited + 80) = v10;
        *(inited + 88) = v12;
        v14 = sub_1000FD520(inited);
        swift_setDeallocating();
        sub_10000A5D4(&qword_100961DD0, &qword_10079DCC0);
        swift_arrayDestroy();
        v18._object = 0x80000001007E9EB0;
        v18._countAndFlagsBits = 0xD000000000000017;
        v15._rawValue = v14;
        v0 = sub_1007622DC(v18, v15);
      }
    }
  }

  return v0;
}