id sub_100567C10(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v29[-v8];
  v10 = a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory];
  v2[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory] = v10;
  if (v10 != 7)
  {
    v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer];
    v11[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_sizeCategory] = v10;
    if (v10 == 4)
    {
      v12 = v11[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v12 = 0;
    }

    [v11 setHidden:{v12 & 1, v7}];
    *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView] + qword_1009441B8) = v10;
    sub_100679A78();
  }

  v13 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_100037990(&a1[v13], v9);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_100037710(v9, &v3[v14]);
  swift_endAccess();
  sub_10067B5D0(*&a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView]);
  v15 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay];
  if (v15 && *&v3[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay])
  {
    v16 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay + 8];
    v17 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay + 8];
    ObjectType = swift_getObjectType();
    v19 = *(v16 + 120);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19(v15, v17, a2 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_100568A88(a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionMode]);
  [v3 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  v20 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView];
  v21 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView];
  v22 = *(v21 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_style);
  v23 = *(v21 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_style + 8);

  sub_1000F8070(v22, v23);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *(v20 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle) = *(v21 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle);
  v25 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView;
  v26 = *(v20 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView);

  sub_100016C60(0, &qword_10092BE10, UIVisualEffect_ptr);
  isa = sub_100753294().super.isa;

  [v26 setBackgroundEffects:isa];

  [*(v20 + v25) setOverrideUserInterfaceStyle:*(v20 + v24)];
  return [v3 setNeedsLayout];
}

uint64_t sub_100567F30(uint64_t a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay))
  {
    v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 128);
    swift_unknownObjectRetain();
    v6(a1, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;

  v7 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView);
  type metadata accessor for TodayCardLabelsView(0);
  sub_10056C270(&qword_10093E778, type metadata accessor for TodayCardLabelsView, &protocol conformance descriptor for NSObject);
  v8 = v7;
  sub_1007544E4();
  sub_100744264();
  return sub_100016994(v10);
}

id sub_100568064()
{
  v1 = v0;
  sub_100566480();
  [*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView) + qword_1009441D8) setImage:0];
  sub_10020D728();
  sub_10020D728();
  sub_10020D728();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;

  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_originalSizeCategory) = 7;
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionUpdateBlock);
  v3 = *v2;
  v4 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3, v4);
  v5 = *v2;
  if (*v2)
  {
    v6 = v2[1];

    v5(v7);
    sub_1000164A8(v5, v6);
  }

  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer);
  sub_10045F99C();
  v8[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isLayoutRequired] = 1;
  v8[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_sizeCategory] = 5;
  result = [v8 setHidden:0];
  v8[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_originalSizeCategory] = 5;
  return result;
}

uint64_t sub_1005681B0(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_originalSizeCategory) = result;
  if (result != 7)
  {
    *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer) + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_originalSizeCategory) = result;
    v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView);
    *(v2 + qword_1009441C0) = result;
    *(*(v2 + qword_1009441C8) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = result;
    *(*(v2 + qword_1009441D0) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = result;
    *(*(v2 + qword_1009441E0) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = result;
  }

  return result;
}

char *sub_100568248(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView;
  v46[0] = sub_100184128;
  v46[1] = 0;
  v46[2] = sub_10066891C;
  v46[3] = 0;
  v46[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v46[5] = 0;
  v46[6] = sub_100184128;
  v46[7] = 0;
  v46[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v46[9] = 0;
  v46[10] = sub_1000ED848;
  v46[11] = 0;
  v47 = 0x4000000000000000uLL;
  v48 = 0;
  v49 = 0x4018000000000000;
  v50 = 0;
  v51 = 1;
  v12 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v4[v11] = sub_100678FB8(v46, &v47);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey] = 0;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView;
  v14 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *&v4[v13] = sub_1000F744C(&off_100862680);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer;
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v5[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionMode] = 0;
  v16 = &v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionUpdateBlock];
  *v16 = 0;
  v16[1] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory] = 7;
  v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_originalSizeCategory] = 7;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_pageGrid;
  v18 = sub_10074F704();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isTransitioning] = 0;
  v19 = &v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayKind];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay];
  *v20 = 0;
  v20[1] = 0;
  swift_weakInit();
  v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isExpanded] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType] = 0;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView;
  v23 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView];
  v24 = v21;
  v25 = v23;
  [v25 _setContinuousCornerRadius:20.0];
  v26 = [v25 layer];
  [v26 setMaskedCorners:12];

  [*&v25[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView] _setCornerRadius:1 continuous:12 maskedCorners:20.0];
  v27 = *&v24[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType];
  if (v27)
  {
    v28 = *&v21[v22];
    v29 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType];
    *&v28[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType] = v27;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    v32 = v24[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory];
    v31 = *&v21[v22];
    if (v32 == 6 && (v33 = [v24 traitCollection], v34 = sub_100753804(), v33, (v34 & 1) == 0))
    {
      v35 = &kCAGradientLayerRadial;
    }

    else
    {
      v35 = &kCAGradientLayerAxial;
    }

    v36 = *v35;
    v29 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType];
    *&v31[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType] = v36;
    v30 = v36;
  }

  sub_1000F79C4();
  [v24 addSubview:*&v21[v22]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer]];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1007A5A00;
  *(v37 + 32) = sub_100751544();
  *(v37 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_100753D44();
  swift_unknownObjectRelease();

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1007A5A00;
  *(v38 + 32) = sub_1007519E4();
  *(v38 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();
  swift_unknownObjectRelease();

  v39 = [v24 traitCollection];
  LOBYTE(v38) = sub_1007537F4();

  v40 = *&v21[v22];
  v41 = 0.13962634;
  if (v38)
  {
    v41 = -0.13962634;
  }

  v42 = *(v40 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle);
  *(v40 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle) = v41;
  if (v41 != v42)
  {
    sub_1000F7CD8();
  }

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1007A5A00;
  *(v43 + 32) = sub_100751554();
  *(v43 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v24;
}

void sub_10056880C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView];
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "_continuousCornerRadius");
  v5 = v4;
  [v3 _setContinuousCornerRadius:?];
  v6 = [v3 layer];
  [v6 setMaskedCorners:12];

  [*&v3[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView] _setCornerRadius:1 continuous:12 maskedCorners:v5];
  v7 = &v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay];
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay])
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

      if (v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory] == 6)
      {
        v17 = [v1 traitCollection];
        v18 = sub_100753804();

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

id sub_100568A88(id result)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionMode;
  v3 = v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionMode];
  v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionMode] = result;
  if (v3 != result)
  {
    v4 = result != 1;
    if (result == 4)
    {
      v4 = 0;
    }

    v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView];
    v5[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_includeTopGradientFade] = v4;
    if (result == 1 || result == 4)
    {
      [*&v5[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView] removeFromSuperview];
    }

    else
    {
      [v5 insertSubview:*&v5[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView] aboveSubview:*&v5[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView]];
    }

    [v5 setHidden:v1[v2] == 4];

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_100568B90()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isTransitioning;
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isTransitioning);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isTransitioning;
  v1[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isTransitioning] = v3 & 1;
  [v1 setHidden:(v1[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v3 ^ 1u)];
  v1[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isLayoutRequired] = (v1[v4] & 1) == 0;
  [v1 setNeedsLayout];
  *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView) + qword_100944200) = *(v0 + v2);
  sub_100679F5C();
}

void sub_100568D08(uint64_t a1, uint64_t a2, __objc2_prop *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  v10 = a3;
  v11 = sub_10074A2E4();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10074FB54();
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
  sub_100039770(v18, a4, v19);
  sub_1006E88C4(v18);
  v64 = sub_10074F374();

  v20 = [v6 traitCollection];
  sub_100039770(a3, a4, v20);
  sub_1006E88C4(a3);
  v21 = sub_10074F374();

  v66 = v6;
  v22 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView];
  v23 = &v22[qword_1009441B0];
  v24 = *&v22[qword_1009441B0];
  v25 = *&v22[qword_1009441B0 + 32];
  v26 = v22[qword_1009441B0 + 40];
  v62 = v21;
  sub_100747FB4();
  *v23 = v24;
  *(v23 + 1) = v27;
  *(v23 + 2) = v28;
  *(v23 + 3) = 0x402C000000000000;
  *(v23 + 4) = v25;
  v23[40] = v26;
  [v22 setNeedsLayout];
  v29 = qword_1009441D8;
  v30 = [*&v22[qword_1009441D8] image];
  v67 = sub_10074FAA4();
  v32 = v31;
  v57 = v17;
  sub_10074FB74();
  v65 = a2;
  sub_10074FAE4();
  v33 = qword_1009441C8;
  [*(*&v22[qword_1009441C8] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label) setText:0];
  v34 = qword_1009441D0;
  [*(*&v22[qword_1009441D0] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label) setText:0];
  v35 = *&v22[v29];
  v56 = v30;
  [v35 setImage:v30];
  v36 = qword_1009441E0;
  v37 = *(*&v22[qword_1009441E0] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v38 = v37;
  if (v32)
  {
    v39 = sub_100753064();
  }

  else
  {
    v39 = 0;
  }

  [v37 setText:v39];

  [*(*&v22[v33] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label) setHidden:1];
  [*(*&v22[v34] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label) setHidden:1];
  [*&v22[v29] setHidden:0];
  v40 = *(*&v22[v36] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v41 = v69;
  v42 = sub_10074A2B4();
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

  sub_100679B2C();
  v46 = v58;
  v47 = v59;
  (*(v58 + 104))(v68, enum case for TodayCard.Style.white(_:), v59);
  sub_10056C270(&qword_1009239F0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  v48 = v57;
  sub_100753274();
  sub_100753274();
  if (v70[0] == v71 && v70[1] == v72)
  {
    v49 = 1;
  }

  else if (sub_100754754())
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
  sub_10067A04C();
  [v22 setNeedsLayout];

  (*(v60 + 8))(v41, v61);
  v50(v48, v47);
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v51 = v66;
  v52 = v64;
  *&v66[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey] = v64;

  v71 = v22;
  type metadata accessor for TodayCardLabelsView(0);
  sub_10056C270(&qword_10093E778, type metadata accessor for TodayCardLabelsView, &protocol conformance descriptor for NSObject);
  v53 = v22;
  sub_1007544E4();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v52;
  v55[4] = v65;

  sub_1007441F4();

  sub_10000C8CC(v70, &unk_1009276E0, &unk_1007A5C70);

  [v51 setNeedsLayout];
}

double sub_100569468(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v8 = sub_10056B6B4(a3, v7);
      sub_100568A88(v8);
      v9 = [v6 traitCollection];
      v11 = sub_10056B91C(v10, a3, v9);
      v13 = v12;

      v14 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView;
      v15 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView];
      sub_1000F8298(a3, v11, v13);

      v16 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType];
      if (v16)
      {
        v17 = *&v6[v14];
        v18 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType];
        *&v17[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType] = v16;
        v19 = v16;
        v20 = v17;
      }

      else
      {
        v21 = v6[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory];
        v20 = *&v6[v14];
        if (v21 == 6 && (v22 = [v6 traitCollection], v23 = sub_100753804(), v22, (v23 & 1) == 0))
        {
          v24 = &kCAGradientLayerRadial;
        }

        else
        {
          v24 = &kCAGradientLayerAxial;
        }

        v25 = *v24;
        v18 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType];
        *&v20[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType] = v25;
        v19 = v25;
      }

      sub_1000F79C4();
      [v6 setNeedsLayout];
    }

    else
    {
    }
  }

  return result;
}

void sub_100569670(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10074A2E4();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074FB54();
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
    v19 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey);

    if (v19)
    {
      v58 = v19;
      v54 = a6;
      sub_100748014();
      sub_10056C270(&qword_10093E788, &type metadata accessor for ArtworkLoaderConfig, &protocol conformance descriptor for ArtworkLoaderConfig);
      v20 = sub_100753014();

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
        v23 = &stru_1008F2000;
        if (v22)
        {
          v24 = v22;
          v25 = *(v22 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView);

          v26 = sub_10074FAA4();
          v28 = v27;
          sub_10074FB74();
          v29 = v28;
          sub_10074FAE4();
          v48 = qword_1009441C8;
          [*(*&v25[qword_1009441C8] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label) setText:0];
          v47 = qword_1009441D0;
          [*(*&v25[qword_1009441D0] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label) setText:0];
          v30 = qword_1009441D8;
          v31 = *&v25[qword_1009441D8];
          v49 = v21;
          [v31 setImage:v21];
          v32 = qword_1009441E0;
          v33 = *(*&v25[qword_1009441E0] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
          v46 = v26;
          v34 = v33;
          if (v29)
          {
            v35 = v29;
            v29 = sub_100753064();
          }

          else
          {
            v35 = 0;
          }

          [v33 setText:{v29, v46}];

          [*(*&v25[v48] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label) setHidden:1];
          [*(*&v25[v47] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label) setHidden:1];
          [*&v25[v30] setHidden:0];
          v36 = *(*&v25[v32] + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
          v37 = sub_10074A2B4();
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

          sub_100679B2C();
          v41 = v50;
          (*(v50 + 104))(v13, enum case for TodayCard.Style.white(_:), v11);
          sub_10056C270(&qword_1009239F0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
          sub_100753274();
          sub_100753274();
          if (v54 == v56 && v55 == v57)
          {
            v42 = 1;
          }

          else if (sub_100754754())
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
          sub_10067A04C();
          v23 = &stru_1008F2000;
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
          [v44 v23[51].attr];
        }
      }
    }
  }
}

uint64_t sub_100569C14()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory;
  sub_10056B184(v2, v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory], &v25);
  v4 = v28;

  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView];
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer];
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayKind];
  v8 = v1[v3];
  v9 = v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayKind + 8];
  v10 = v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_originalSizeCategory];
  v11 = v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isExpanded];
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
  sub_1005F7C10(v22, v15, v17, v19, v21);

  sub_100569DB8();
  return sub_100037A00(v34);
}

void sub_100569DB8()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = sub_10074F704();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v70 - v14;
  v16 = v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionMode];
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      if (v16 != 3)
      {
        return;
      }

      v17 = v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory];
      v18 = 0.0;
      if (v17 != 7)
      {
        v19 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_pageGrid;
        swift_beginAccess();
        sub_100037990(&v1[v19], v4);
        if ((*(v9 + 48))(v4, 1, v8) == 1)
        {
          sub_10000C8CC(v4, &unk_100926C40, qword_1007B9FE0);
        }

        else
        {
          (*(v9 + 32))(v11, v4, v8);
          v55 = [v1 traitCollection];
          v73.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v73.value._rawValue = 0;
          isa = sub_1007537C4(v73, v75).super.isa;

          sub_1000392FC(v17, v11, isa);
          v18 = v57;

          (*(v9 + 8))(v11, v8);
        }
      }

      v58 = [v1 traitCollection];
      if (qword_100920850 != -1)
      {
        swift_once();
      }

      v59 = sub_100230B00(v58, &xmmword_10097F3D0, 1);
      sub_100753804();
      sub_1007535D4();
      v61 = v60;
      sub_100753804();
      sub_1007535D4();
      v63 = v62;

      [v1 bounds];
      v64 = CGRectGetMaxY(v81) - (v59 + v61 + v63);
      v65 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView];
      [v65 frame];
      if (v64 >= CGRectGetMinY(v82))
      {
        [v65 frame];
        MinY = CGRectGetMinY(v83);
        v64 = MinY + sub_100678990();
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
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView] frame];
    v20 = CGRectGetMinY(v76);
    v21 = v20 + sub_100678990();
    [v1 bounds];
    MaxY = CGRectGetMaxY(v77);
    if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType])
    {
      v23 = MaxY;
      v24 = sub_100753094();
      v26 = v25;
      if (v24 == sub_100753094() && v26 == v27)
      {

LABEL_15:
        if (v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory] == 6)
        {
          v37 = v23 + -75.0;
          v38 = [v1 traitCollection];
          v39 = sub_100753804();

          if ((v39 & 1) == 0)
          {
            v21 = v37;
          }
        }

        goto LABEL_18;
      }

      v36 = sub_100754754();

      if (v36)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v40 = v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory];
    v41 = 0.0;
    if (v40 != 7)
    {
      v42 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_pageGrid;
      swift_beginAccess();
      sub_100037990(&v1[v42], v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_10000C8CC(v7, &unk_100926C40, qword_1007B9FE0);
      }

      else
      {
        (*(v9 + 32))(v15, v7, v8);
        v43 = [v1 traitCollection];
        v72.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
        v72.value._rawValue = 0;
        v44 = sub_1007537C4(v72, v74).super.isa;

        sub_1000392FC(v40, v15, v44);
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
    sub_10056BBC4(v1, v47);
    return;
  }

  if (!v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionMode])
  {
    goto LABEL_8;
  }

  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay])
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer] frame];
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

  v48 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView];
  [v1 bounds];
  MinX = CGRectGetMinX(v78);
  v79.origin.x = v29;
  v79.origin.y = v31;
  v79.size.width = v33;
  v79.size.height = v35;
  v50 = CGRectGetMinY(v79);
  v51 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory] == 6 && (v52 = [v1 traitCollection], v53 = sub_100753804(), v52, (v53 & 1) == 0))
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

  if (v1[v51] == 6 && (v67 = [v1 traitCollection], v68 = sub_100753804(), v67, (v68 & 1) == 0))
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

id sub_10056A5B8(uint64_t a1, double a2, double a3)
{
  if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay])
  {
    v4 = v3;
    v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay + 8];
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

uint64_t type metadata accessor for TodayCardInfoLayerView(uint64_t a1)
{
  result = qword_10093E760;
  if (!qword_10093E760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10056A988(uint64_t a1)
{
  sub_10020F754(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10056AA90()
{
  result = qword_10093E770;
  if (!qword_10093E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093E770);
  }

  return result;
}

uint64_t sub_10056AAFC(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_10056AB4C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double sub_10056AB78(uint64_t a1, __n128 a2)
{
  swift_weakAssign();

  return result;
}

void sub_10056ABF4(char *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 != [a2 layoutDirection])
  {
    v6 = [a1 traitCollection];
    v7 = sub_1007537F4();

    v8 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView];
    v9 = 0.13962634;
    if (v7)
    {
      v9 = -0.13962634;
    }

    v10 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle);
    *(v8 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle) = v9;
    if (v9 != v10)
    {
      sub_1000F7CD8();
    }
  }
}

id sub_10056ACD0(char *a1)
{
  sub_10056880C();
  v3 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionUpdateBlock];
  if (v3)
  {
    v4 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionUpdateBlock + 8];

    v3(v5);
    v2 = sub_1000164A8(v3, v4);
  }

  return [a1 setNeedsLayout];
}

id sub_10056AD50(uint64_t a1)
{
  v2 = sub_10074FB54();
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
  sub_100754534(44);

  v14 = 0xD00000000000002ALL;
  v15 = 0x800000010076F550;
  v16._countAndFlagsBits = sub_10074FB44();
  sub_1007531B4(v16);

  result = sub_100754644();
  __break(1u);
  return result;
}

id sub_10056AF80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer];
  sub_10045F99C();
  if (a1)
  {
    v8 = swift_getObjectType();
    v9 = *(a2 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, a2);
    v11 = OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView;
    v12 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView];
    *&v7[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView] = v10;
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
    if (*(v3 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory) == 6)
    {
      v16 = [v3 traitCollection];
      v17 = sub_100753804();

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

double sub_10056B184@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (sub_100753804())
  {
    if (qword_100920850 != -1)
    {
      swift_once();
    }

    v6 = sub_100230B00(a1, &xmmword_10097F3D0, 1);
    sub_100753804();
    sub_1007535D4();
    v9 = v8;
    sub_100753804();
    sub_1007535D4();
    v11 = v6 + v9 + v10;
    __asm { FMOV            V0.2D, #16.0 }

LABEL_16:
    *&_Q0 = v11;
    v26 = 16.0;
    goto LABEL_17;
  }

  if (a2 == 6)
  {
    if (qword_100920850 != -1)
    {
      swift_once();
    }

    v17 = sub_100230B00(a1, &xmmword_10097F3D0, 1);
    sub_100753804();
    sub_1007535D4();
    v24 = v23;
    sub_100753804();
    sub_1007535D4();
    __asm { FMOV            V0.2D, #30.0 }

    *&_Q0 = v17 + v24 + v25;
    v26 = 30.0;
  }

  else
  {
    if (a2 == 4)
    {
      if (qword_100920850 != -1)
      {
        swift_once();
      }

      v7 = sub_100230B00(a1, &xmmword_10097F3D0, 1);
      sub_100753804();
      sub_1007535D4();
      v20 = v19;
      sub_100753804();
      sub_1007535D4();
      v11 = v7 + v20 + v21;
      __asm { FMOV            V0.2D, #12.0 }

      goto LABEL_16;
    }

    if (qword_100920850 != -1)
    {
      swift_once();
    }

    v18 = sub_100230B00(a1, &xmmword_10097F3D0, 1);
    sub_100753804();
    sub_1007535D4();
    v28 = v27;
    sub_100753804();
    sub_1007535D4();
    __asm { FMOV            V0.2D, #20.0 }

    *&_Q0 = v18 + v28 + v29;
    v26 = 20.0;
  }

LABEL_17:
  *a3 = _Q0;
  *(a3 + 16) = v26;
  *(a3 + 24) = xmmword_1007CA6F0;
  result = 353.0;
  *(a3 + 40) = xmmword_1007CA700;
  return result;
}

void sub_10056B464()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView;
  v12[0] = sub_100184128;
  v12[1] = 0;
  v12[2] = sub_10066891C;
  v12[3] = 0;
  v12[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v12[5] = 0;
  v12[6] = sub_100184128;
  v12[7] = 0;
  v12[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v12[9] = 0;
  v12[10] = sub_1000ED848;
  v12[11] = 0;
  v13 = 0x4000000000000000uLL;
  v14 = 0;
  v15 = 0x4018000000000000;
  v16 = 0;
  v17 = 1;
  v3 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *(v0 + v2) = sub_100678FB8(v12, &v13);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView;
  v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *(v0 + v4) = sub_1000F744C(&off_100862680);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer;
  type metadata accessor for InfoLayerOverlayContainerView();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionMode) = 0;
  v7 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_protectionUpdateBlock);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_originalSizeCategory) = 7;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_pageGrid;
  v9 = sub_10074F704();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isTransitioning) = 0;
  v10 = v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayKind;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay);
  *v11 = 0;
  v11[1] = 0;
  swift_weakInit();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10056B6B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[0] = a2;
  v4 = sub_10074A2E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074FAE4();
  v8 = sub_10074A2A4();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) != 0 || !sub_10074FBA4())
  {
    v10 = 0;
  }

  else
  {

    v10 = 1;
  }

  v11 = [v3 traitCollection];
  v12 = sub_100753804();

  if (v12)
  {
    sub_10074FAE4();
    v13 = sub_10074A2A4();
    v9(v7, v4);
    if ((v13 & 1) == 0 && sub_10074FBA4() && (, type metadata accessor for TodayCardOverlayReusePool(), sub_100752754(), v19[1]))
    {

      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (v10 && (*(v3 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory) != 6 || (v15 = [v3 traitCollection], v16 = sub_100753804(), v15, (v16 & 1) != 0)))
  {
    sub_10074FAE4();
    v17 = sub_10074A2C4();
    v9(v7, v4);
    return (v17 & 1) == 0;
  }

  else
  {
    sub_10074FAE4();
    v18 = sub_10074A2C4();
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

id sub_10056B91C(__n128 a1, uint64_t a2, uint64_t a3)
{
  sub_10074FB64();
  sub_1007419C4();
  if (!swift_dynamicCastClass())
  {

    v10 = sub_10074FB64();
    sub_100745204();
    sub_10000C518(&qword_1009295D0, &unk_1007B9F70);
    if (swift_dynamicCast())
    {
      sub_100032CCC(v8, v11);
      sub_10000C888(v11, v11[3]);
      if (sub_10074B8E4())
      {

        if (qword_100920290 != -1)
        {
          swift_once();
        }

        v4 = qword_10097DAD0;

        sub_10000C620(v11);
        return v4;
      }

      sub_10000C620(v11);
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_10000C8CC(v8, &qword_1009295D8, &unk_1007AD420);
    }

    if (qword_100920280 != -1)
    {
      swift_once();
    }

    v4 = xmmword_10097DAB0;

    return v4;
  }

  v3 = sub_1007419B4();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5CF0;
  sub_100016C60(0, &unk_10092F760, UIColorEffect_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata effectCompositingColor:v3 withMode:0 alpha:1.0];
  if (result)
  {
    *(v4 + 32) = result;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1007A5CF0;
    result = [ObjCClassFromMetadata effectCompositingColor:v3 withMode:0 alpha:1.0];
    if (result)
    {
      *(v7 + 32) = result;

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10056BBC4(unsigned __int8 *a1, double a2)
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory;
  v5 = a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory];
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
  v8 = sub_100753804();

  if ((v8 & 1) != 0 || !*&a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType])
  {
    goto LABEL_11;
  }

  v9 = sub_100753094();
  v11 = v10;
  if (v9 == sub_100753094() && v11 == v12)
  {

    *&v15 = 100.0;
    goto LABEL_12;
  }

  v14 = sub_100754754();

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
  v19 = sub_100753804();

  if ((v19 & 1) != 0 || !*&a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType])
  {
    goto LABEL_21;
  }

  v20 = sub_100753094();
  v22 = v21;
  if (v20 == sub_100753094() && v22 == v23)
  {
  }

  else
  {
    v25 = sub_100754754();

    if ((v25 & 1) == 0)
    {
LABEL_21:
      v6 = 0.13962634;
      goto LABEL_23;
    }
  }

  v6 = 0.34906585;
LABEL_23:
  v26 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType;
  if (*&a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType])
  {
    v27 = sub_100753094();
    v29 = v28;
    if (v27 == sub_100753094() && v29 == v30)
    {
    }

    else
    {
      v32 = sub_100754754();

      if ((v32 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (a1[v4] == 6)
    {
      v33 = [a1 traitCollection];
      v34 = sub_100753804();

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
  v38 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_gradientBlurView];
  if (a1[v4] == 6)
  {
    v39 = [a1 traitCollection];
    v40 = sub_100753804();

    if ((v40 & 1) == 0)
    {
      if (*&a1[v26])
      {
        v41 = sub_100753094();
        v43 = v42;
        if (v41 == sub_100753094() && v43 == v44)
        {

          goto LABEL_42;
        }

        v45 = sub_100754754();

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
      sub_100753AA4();
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
  *&v38[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientStartY] = v36 / v37;
  sub_1000F7CD8();
  *&v38[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientEndY] = (v16 + v36) / v37;
  sub_1000F7CD8();
}

uint64_t sub_10056C12C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10056C164()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10056C1B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10056C1F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10056C210(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10056C270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10056C2DC()
{
  v33 = sub_100750304();
  v38 = *(v33 - 8);
  __chkstk_darwin(v33);
  v1 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100747344();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007473B4();
  sub_100039C50(v6, qword_10093E790);
  v35 = sub_10000D0FC(v6, qword_10093E790);
  v53[18] = &type metadata for CGFloat;
  v53[19] = &protocol witness table for CGFloat;
  v53[14] = &protocol witness table for CGFloat;
  v53[15] = 0x4024000000000000;
  v53[13] = &type metadata for CGFloat;
  v53[10] = 0xC04F000000000000;
  v53[8] = &type metadata for CGFloat;
  v53[9] = &protocol witness table for CGFloat;
  v53[5] = 0x4036000000000000;
  if (qword_100921860 != -1)
  {
    swift_once();
  }

  sub_10000C824(qword_10093E7C0, v53);
  v7 = *(v3 + 104);
  v36 = v5;
  v7(v5, enum case for ArcadeFooterLayout.ButtonLocation.bottom(_:), v2);
  v52[13] = &type metadata for Double;
  v52[14] = &protocol witness table for Double;
  v52[9] = &protocol witness table for Double;
  v52[10] = 0x402E000000000000;
  v52[8] = &type metadata for Double;
  v52[5] = 0x4040000000000000;
  if (qword_100921400 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v40 = sub_10000D0FC(v8, qword_100981938);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v10(v1, v40, v8);
  v31 = enum case for FontSource.useCase(_:);
  v12 = v38 + 104;
  v37 = *(v38 + 104);
  v13 = v33;
  v37(v1);
  v32 = sub_10074B2B4();
  v52[3] = v32;
  v14 = sub_10056F0C4(&unk_10093F5D0, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  v52[4] = v14;
  sub_10000D134(v52);
  v15 = UIContentSizeCategoryExtraExtraExtraLarge;
  sub_10074B2A4();
  v16 = v40;
  v34 = v8;
  v39 = v11;
  v40 = v10;
  v10(v1, v16, v8);
  v17 = v12;
  v18 = v1;
  v19 = v37;
  v20 = v31;
  (v37)(v18, v31, v13);
  v51[3] = v32;
  v51[4] = v14;
  sub_10000D134(v51);
  v21 = v15;
  sub_10074B2A4();
  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  v54 = xmmword_1007A97B0;
  v55 = xmmword_1007A97B0;
  v56 = 0;
  if (qword_100920FE0 != -1)
  {
    swift_once();
  }

  v22 = v34;
  v32 = sub_10000D0FC(v34, qword_100980CD8);
  v40(v18, v32, v22);
  v19(v18, v20, v13);
  v23 = sub_100750B04();
  v47[3] = v23;
  v47[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v47);
  v45 = v13;
  v46 = &protocol witness table for FontSource;
  v24 = sub_10000D134(v44);
  v25 = v38;
  v30 = v17;
  v26 = *(v38 + 16);
  v26(v24, v18, v13);
  sub_100750B14();
  v27 = *(v25 + 8);
  v27(v18, v13);
  v40(v18, v32, v22);
  (v37)(v18, v20, v13);
  v45 = v23;
  v46 = &protocol witness table for StaticDimension;
  sub_10000D134(v44);
  v42 = v13;
  v43 = &protocol witness table for FontSource;
  v28 = sub_10000D134(v41);
  v26(v28, v18, v13);
  sub_100750B14();
  v27(v18, v13);
  v43 = &protocol witness table for Double;
  v42 = &type metadata for Double;
  v41[0] = 0x3FF0000000000000;
  return sub_100747394();
}

double sub_10056C918(double result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = [swift_unknownObjectRetain() traitCollection];
    sub_1007537D4();

    sub_100747374();
    if (qword_100921868 != -1)
    {
      swift_once();
    }

    v4 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
    sub_10000D0FC(v4, qword_100982440);
    swift_unknownObjectRetain();
    sub_100743464();
    swift_unknownObjectRelease();
    sub_1007473A4();
    if (qword_100921858 != -1)
    {
      swift_once();
    }

    v5 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
    sub_10000D0FC(v5, qword_10093E7A8);
    swift_unknownObjectRetain();
    sub_100743464();
    swift_unknownObjectRelease();
    sub_100747384();
    swift_unknownObjectRelease();
  }

  return v6;
}

uint64_t sub_10056CAF8()
{
  v0 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  sub_100039C50(v0, qword_10093E7A8);
  sub_10000D0FC(v0, qword_10093E7A8);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  return sub_100743494();
}

uint64_t sub_10056CB90()
{
  v0 = sub_100750304();
  v1 = __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = UIFontTextStyleBody;
  (*(v4 + 104))(v3, enum case for FontSource.textStyle(_:), v1);
  qword_10093E7D8 = sub_10074B2B4();
  qword_10093E7E0 = sub_10056F0C4(&unk_10093F5D0, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  sub_10000D134(qword_10093E7C0);
  v5 = UIFontTextStyleBody;
  v6 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_10074B2A4();
}

double sub_10056CCE0()
{
  v0 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  sub_100039C50(v0, qword_100982440);
  sub_10000D0FC(v0, qword_100982440);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for CGSize(0);
  sub_100743484();
  return result;
}

UIFontTextStyle sub_10056CD8C()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100982458);
  v1 = sub_10000D0FC(v0, qword_100982458);
  *v1 = UIFontTextStyleBody;
  *(v1 + 8) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleBody;
}

uint64_t sub_10056CE48()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074B2B4();
  sub_100039C50(v4, qword_100982470);
  sub_10000D0FC(v4, qword_100982470);
  if (qword_100921870 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100982458);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_10074B2A4();
}

char *sub_10056CFE4(double a1, double a2, double a3, double a4)
{
  v105 = sub_100752AC4();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100746264();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v102 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v95 - v13;
  v101 = sub_10074B2B4();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100750534();
  v15 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007441C4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&qword_10093F5C0, &qword_1007A9CD0);
  __chkstk_darwin(v21 - 8);
  v23 = &v95 - v22;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v25 = sub_1007469A4();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_riverView] = 0;
  v26 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *&v4[v26] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v96 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_wordmarkView;
  v27 = sub_1007441E4();
  v28 = enum case for Wordmark.arcade(_:);
  v29 = sub_10074F7B4();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v23, v28, v29);
  (*(v30 + 56))(v23, 0, 1, v29);
  if (qword_100921860 != -1)
  {
    swift_once();
  }

  sub_10000C824(qword_10093E7C0, &v112);
  (*(v18 + 104))(v20, enum case for WordmarkView.Alignment.leading(_:), v17);
  v31 = *(&v113 + 1);
  v32 = v114;
  v33 = sub_10007271C(&v112, *(&v113 + 1));
  v34 = __chkstk_darwin(v33);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  v38 = sub_1004AFA30(v23, v36, v20, v27, v31, v32, 0.0, 0.0, 0.0, 0.0);
  sub_10000C620(&v112);
  *&v4[v96] = v38;
  v39 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_100921870 != -1)
  {
    swift_once();
  }

  v40 = v97;
  v41 = sub_10000D0FC(v97, qword_100982458);
  v42 = v98;
  (*(v15 + 16))(v98, v41, v40);
  if (qword_100921878 != -1)
  {
    swift_once();
  }

  v43 = v101;
  v44 = sub_10000D0FC(v101, qword_100982470);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton(0));
  v46 = v99;
  (*(v100 + 16))(v99, v44, v43);
  v47 = UIContentSizeCategoryExtraExtraExtraLarge;
  v48 = sub_10056F10C(v42, v46, UIContentSizeCategoryExtraExtraExtraLarge, v45);

  *&v4[v39] = v48;
  v49 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v49] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v50 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_metrics;
  v53 = sub_1007473B4();
  (*(*(v53 - 8) + 56))(&v4[v52], 1, 1, v53);
  v54 = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  v111.receiver = v4;
  v111.super_class = v54;
  v55 = objc_msgSendSuper2(&v111, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v59 = v55;
  [v59 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v60 = v59;
  v61 = [v60 contentView];
  [v61 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (qword_100921868 != -1)
  {
    swift_once();
  }

  v62 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  sub_10000D0FC(v62, qword_100982440);
  *&v109 = v60;
  sub_100743464();

  v63 = v112;
  sub_100746214();
  sub_100746224();
  sub_1007461C4();
  sub_100746204();
  v64 = v106;
  sub_100746244();
  type metadata accessor for ArcadeFooterRiverViewDataSource();
  v65 = swift_allocObject();
  *(v65 + 16) = 2;
  *(v65 + 48) = 0;
  *(v65 + 56) = 0;
  *(v65 + 40) = _swiftEmptyArrayStorage;
  *(v65 + 24) = v63;
  (*(v107 + 16))(v102, v64, v108);
  v66 = objc_allocWithZone(sub_10000C518(&qword_10093E980, &qword_1007CA9D0));
  v67 = sub_10074F994();
  v68 = *&v60[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_riverView];
  *&v60[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_riverView] = v67;
  v69 = v67;

  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v70 = v103;
  sub_100752A74();
  sub_10000C8CC(&v109, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v112, &unk_100923520, &qword_1007A5A70);
  v102 = v69;
  sub_100753C74();
  v71 = *(v104 + 8);
  v72 = v105;
  v71(v70, v105);
  v73 = [v60 contentView];
  [v73 addSubview:v69];

  v74 = [v60 contentView];
  [v74 addSubview:*&v60[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_wordmarkView]];

  v75 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonView;
  v76 = *&v60[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonView];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v77 = v76;
  v78 = sub_100753E44();
  [v77 setTintColor:v78];

  v79 = *&v60[v75];
  v80 = sub_100753E44();
  [v79 setTitleColor:v80 forState:0];

  v81 = *&v60[v75];
  v82 = sub_100753E94();
  [v81 _setBackgroundColor:v82];

  v83 = *&v60[v75];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v84 = v83;
  sub_100752A74();
  sub_10000C8CC(&v109, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v112, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v71(v70, v72);
  v85 = v60;
  v86 = [v85 contentView];
  [v86 addSubview:*&v60[v75]];

  v87 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  v88 = *&v85[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];
  [v88 addTarget:v85 action:"didTapFootnoteWithGestureRecognizer:"];

  v89 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteView;
  [*&v85[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteView] addGestureRecognizer:*&v85[v87]];
  v90 = *&v85[v89];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v91 = v90;
  sub_100752A74();
  sub_10000C8CC(&v109, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v112, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v71(v70, v72);
  v92 = [v85 contentView];

  v93 = *&v85[v89];
  [v92 addSubview:v93];

  (*(v107 + 8))(v106, v108);
  return v85;
}

uint64_t sub_10056DD5C()
{
  v1 = sub_100750354();
  v34 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_10093E988, qword_1007CA9D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_1007473B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  v37.receiver = v0;
  v37.super_class = v14;
  v35 = v14;
  objc_msgSendSuper2(&v37, "layoutSubviews");
  v15 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_10056FCB8(&v0[v15], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000C8CC(v6, &qword_10093E988, qword_1007CA9D8);
  }

  (*(v8 + 32))(v13, v6, v7);
  v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_riverView];
  if (v17)
  {
    v18 = v17;
    v33 = v18;
    sub_100747354();
    [v0 layoutMargins];
    sub_100747354();
    [v0 layoutMargins];
    sub_100747364();
    (*(v8 + 16))(v10, v13, v7);
    v36[18] = sub_10000C518(&qword_10093E980, &qword_1007CA9D0);
    v36[19] = &protocol witness table for UIView;
    v36[15] = v18;
    v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_wordmarkView];
    v36[13] = sub_1007441E4();
    v36[14] = &protocol witness table for UIView;
    v36[10] = v19;
    v31 = v3;
    v20 = v34;
    v21 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonView];
    v36[8] = type metadata accessor for CappedSizeRoundedTitledButton(0);
    v36[9] = &protocol witness table for UIView;
    v36[5] = v21;
    v32 = v1;
    v22 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteView];
    v23 = type metadata accessor for FootnoteView();
    v36[4] = &protocol witness table for UIView;
    v36[3] = v23;
    v36[0] = v22;
    sub_1007473D4();
    swift_allocObject();
    v33 = v33;
    v24 = v19;
    v25 = v21;
    v26 = v22;
    sub_1007473C4();
    v27 = [v0 contentView];
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    sub_1007477B4();

    v28 = v31;
    sub_100747334();
    (*(v20 + 8))(v28, v32);
    [v25 frame];
    Width = CGRectGetWidth(v38);
    sub_1007477B4();
    if (Width == CGRectGetWidth(v39))
    {
      [v25 setTitleEdgeInsets:{0.0, 32.0, 0.0, 32.0}];
    }

    else
    {
      [v25 setTitleEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }
  }

  return (*(v8 + 8))(v13, v7);
}

void sub_10056E344(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100746264();
  __chkstk_darwin(v3 - 8);
  if (qword_100921868 != -1)
  {
    swift_once();
  }

  v4 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  sub_10000D0FC(v4, qword_100982440);
  swift_unknownObjectRetain();
  sub_100743464();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_riverView;
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_riverView];
  if (!v6 || ((v7 = v6, v8 = sub_10074F9A4(), v7, swift_beginAccess(), v9 = *(v8 + 24), v10 = *(v8 + 32), , v27 == v9) ? (v11 = v28 == v10) : (v11 = 0), !v11))
  {
    type metadata accessor for ArcadeFooterRiverViewDataSource();
    v12 = swift_allocObject();
    *(v12 + 16) = 2;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 40) = _swiftEmptyArrayStorage;
    *(v12 + 24) = v27;
    *(v12 + 32) = v28;
    sub_100746214();
    sub_100746224();
    sub_1007461C4();
    sub_100746204();
    sub_100746244();
    v13 = objc_allocWithZone(sub_10000C518(&qword_10093E980, &qword_1007CA9D0));
    v14 = sub_10074F994();
    v15 = *&v2[v5];
    if (v15)
    {
      v16 = v15;
      v17 = v14;
      v18 = sub_100753FC4();

      v19 = *&v2[v5];
      if ((v18 & 1) == 0 && v19)
      {
        [*&v2[v5] removeFromSuperview];
        v19 = *&v2[v5];
      }
    }

    else
    {
      v19 = 0;
    }

    *&v2[v5] = v14;
    v20 = v14;

    v21 = *&v2[v5];
    if (v21)
    {
      if (v15)
      {
        v22 = v15;
        v23 = v21;
        v24 = sub_100753FC4();

        if (v24)
        {

          v21 = v23;
LABEL_22:

          return;
        }
      }

      else
      {
        v25 = v21;
      }

      v26 = [v2 contentView];
      [v26 addSubview:v21];

      if (v15)
      {
        sub_10074F9C4();
      }

      sub_10074F9D4();

      goto LABEL_22;
    }

    v21 = v15;
    goto LABEL_22;
  }
}

uint64_t sub_10056E6E0(uint64_t a1, uint64_t a2)
{
  sub_100016C60(0, &unk_100929820, UITouch_ptr);
  sub_1000665E0();
  isa = sub_100753474().super.isa;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  objc_msgSendSuper2(&v14, "touchesBegan:withEvent:", isa, a2);

  result = sub_100669078(a1);
  if (result)
  {
    v7 = result;
    [result locationInView:v2];
    v9 = v8;
    v11 = v10;

    v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteView];
    [v12 frame];
    v15.x = v9;
    v15.y = v11;
    result = CGRectContainsPoint(v16, v15);
    if (result)
    {
      v12[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_isHighlighted] = 1;
      if (v12[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLightensOnHighlight] == 1)
      {
        if (qword_100920310 != -1)
        {
          swift_once();
        }

        v13 = &qword_100929688;
      }

      else
      {
        if (qword_100920308 != -1)
        {
          swift_once();
        }

        v13 = &qword_100929680;
      }

      return [*&v12[OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel] setTextColor:*v13];
    }
  }

  return result;
}

id sub_10056EA80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeFooterCollectionViewCell(uint64_t a1)
{
  result = qword_10093E818;
  if (!qword_10093E818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10056EBE4(uint64_t a1)
{
  sub_10056ED0C(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_10056ED0C(319, &qword_10093E830, &type metadata accessor for ArcadeFooterLayout.Metrics);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10056ED0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_10056ED60(unint64_t result)
{
  v2 = *(v1 + 40);
  if (v2 >> 62)
  {
    v5 = result;
    v6 = sub_100754664();
    result = v5;
    if (v6 > v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
    return 0;
  }

LABEL_3:
  v3 = *(v1 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_100754574();

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {

LABEL_7:
    v4 = sub_100749514();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10056EE3C()
{

  return swift_deallocClassInstance();
}

void sub_10056EEDC(double a1, double a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

unint64_t sub_10056EF70@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_10056ED60(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10056EF98()
{
  sub_1007433C4();
  v0 = sub_1007431D4();
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  sub_100753E94();
  sub_100743224();
  return v0;
}

double sub_10056F000(uint64_t a1)
{
  sub_100743344();
  if (*(v1 + 56))
  {
    sub_1007433C4();
    sub_10056F0C4(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);

    sub_100744274();
  }

  return result;
}

uint64_t sub_10056F0C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10056F10C(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_10074B2B4();
  v26[3] = v12;
  v26[4] = sub_10056F0C4(&unk_10093F5D0, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  v13 = sub_10000D134(v26);
  (*(*(v12 - 8) + 32))(v13, a2, v12);
  v14 = &a4[qword_100936B20];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_10000C824(v26, &a4[qword_100936B18]);
  v25.receiver = a4;
  v25.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = a3;
  v17 = v15;
  sub_1004093EC(a3);
  v18 = sub_100750534();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, a1, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  v20 = v17;
  sub_1007466A4();

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v21 = sub_100753E84();
  [v20 _setBackgroundColor:v21];

  [v20 addTarget:v20 action:"didTapButton:" forControlEvents:64];
  v22 = sub_100753E44();
  [v20 setTintColor:v22];

  [v20 _setWantsAccessibilityUnderline:0];
  (*(v19 + 8))(a1, v18);
  sub_10000C620(v26);
  return v20;
}

void sub_10056F408()
{
  v1 = sub_10074B2B4();
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v46 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100750534();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007441C4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_10093F5C0, &qword_1007A9CD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v13 = sub_1007469A4();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_riverView) = 0;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v43 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_wordmarkView;
  v15 = sub_1007441E4();
  v16 = enum case for Wordmark.arcade(_:);
  v17 = sub_10074F7B4();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v11, v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  if (qword_100921860 != -1)
  {
    swift_once();
  }

  sub_10000C824(qword_10093E7C0, v49);
  (*(v6 + 104))(v8, enum case for WordmarkView.Alignment.leading(_:), v5);
  v19 = v50;
  v20 = v51;
  v21 = sub_10007271C(v49, v50);
  v22 = __chkstk_darwin(v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  v26 = sub_1004AFA30(v11, v24, v8, v15, v19, v20, 0.0, 0.0, 0.0, 0.0);
  sub_10000C620(v49);
  *(v0 + v43) = v26;
  v27 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_100921870 != -1)
  {
    swift_once();
  }

  v28 = v44;
  v29 = sub_10000D0FC(v44, qword_100982458);
  v30 = v45;
  (*(v3 + 16))(v45, v29, v28);
  if (qword_100921878 != -1)
  {
    swift_once();
  }

  v31 = v48;
  v32 = sub_10000D0FC(v48, qword_100982470);
  v33 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton(0));
  v34 = v46;
  (*(v47 + 16))(v46, v32, v31);
  v35 = UIContentSizeCategoryExtraExtraExtraLarge;
  v36 = sub_10056F10C(v30, v34, UIContentSizeCategoryExtraExtraExtraLarge, v33);

  *(v0 + v27) = v36;
  v37 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *(v0 + v37) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v38 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_metrics;
  v41 = sub_1007473B4();
  (*(*(v41 - 8) + 56))(v0 + v40, 1, 1, v41);
  sub_100754644();
  __break(1u);
}

double sub_10056FA28()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_isHighlighted) = 0;
  if (qword_100920308 != -1)
  {
    swift_once();
  }

  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel) setTextColor:qword_100929680];
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock + 8);

    v3(v5);

    return sub_1000164A8(v3, v4);
  }

  return result;
}

void sub_10056FB00(uint64_t a1, void *a2)
{
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  swift_beginAccess();
  [a2 contentMode];
  sub_10074F374();
  sub_10074F324();
  sub_100743364();
  [a2 setContentMode:sub_10074F184()];
  sub_100747FB4();
  sub_1007433A4();
  if (!sub_10074F1E4())
  {
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    sub_100753E34();
  }

  sub_100743224();
  if (*(v2 + 56))
  {
    sub_1007433C4();
    sub_10056F0C4(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);

    sub_100744204();
  }
}

uint64_t sub_10056FCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093E988, qword_1007CA9D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10056FD28()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  *&v38 = 0x4044000000000000;
  if (qword_100921010 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_100980D68);
  v6 = *(v4 - 8);
  v25 = *(v6 + 16);
  v26 = v6 + 16;
  v21 = v5;
  v22 = v4;
  v25(v3, v5, v4);
  v7 = enum case for FontSource.useCase(_:);
  v24 = v1[13];
  v20 = enum case for FontSource.useCase(_:);
  v24(v3, enum case for FontSource.useCase(_:), v0);
  v27 = sub_100750B04();
  v36 = v27;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(&v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v8 = sub_10000D134(&v32);
  v23 = v1[2];
  v23(v8, v3, v0);
  sub_100750B14();
  v19 = v1[1];
  v19(v3, v0);
  v9 = v4;
  v10 = v25;
  v25(v3, v5, v9);
  v11 = v7;
  v12 = v24;
  v24(v3, v11, v0);
  v33 = v27;
  v34 = &protocol witness table for StaticDimension;
  sub_10000D134(&v32);
  v30 = v0;
  v31 = &protocol witness table for FontSource;
  v13 = sub_10000D134(v29);
  v14 = v23;
  v23(v13, v3, v0);
  sub_100750B14();
  v15 = v19;
  v19(v3, v0);
  v10(v3, v21, v22);
  v12(v3, v20, v0);
  v30 = v27;
  v31 = &protocol witness table for StaticDimension;
  sub_10000D134(v29);
  v28[3] = v0;
  v28[4] = &protocol witness table for FontSource;
  v16 = sub_10000D134(v28);
  v14(v16, v3, v0);
  sub_100750B14();
  v15(v3, v0);
  unk_10093EA18 = 0u;
  qword_10093EA28 = 0;
  xmmword_10093EA08 = 0u;
  sub_100012160(&v38, &unk_10093E990);
  sub_100012160(&v35, &unk_10093E9B8);
  sub_100012160(&v32, &unk_10093E9E0);
  return sub_10049EDD4(v29, &xmmword_10093EA08);
}

char *sub_100570138(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100750534();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_label;
  if (qword_100921010 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v14, qword_100980D68);
  (*(v15 + 16))(v17, v19, v14);
  v20 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v5[v18] = sub_10004DA8C(v17, 0, 0, 1);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_topDivider;
  v22 = type metadata accessor for DividerView(0);
  *&v5[v21] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v22) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_topDivider;
  v30 = qword_100920D78;
  v31 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_topDivider];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_10000D0FC(v11, qword_100980640);
  sub_1001154F8(v32, v13);
  v33 = &v31[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style];
  swift_beginAccess();
  sub_10011555C(v13, v33);
  swift_endAccess();
  v34 = &v31[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v35 = *(v33 + 1);
  *v34 = *v33;
  *(v34 + 1) = v35;
  [v31 setNeedsLayout];
  [v31 setNeedsLayout];

  sub_1002FE2B0(v13);
  v36 = OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_bottomDivider;
  v37 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_bottomDivider];
  sub_1001154F8(v32, v13);
  v38 = &v37[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style];
  swift_beginAccess();
  v39 = v37;
  sub_10011555C(v13, v38);
  swift_endAccess();
  v40 = &v39[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v41 = *(v38 + 1);
  *v40 = *v38;
  *(v40 + 1) = v41;
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  sub_1002FE2B0(v13);
  v42 = OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_label;
  [*&v28[OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_label] setTextAlignment:1];
  [v28 addSubview:*&v28[v29]];
  [v28 addSubview:*&v28[v36]];
  [v28 addSubview:*&v28[v42]];

  return v28;
}

uint64_t sub_1005705B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = sub_100750354();
  v3 = *(v20 - 8);
  *&v4 = __chkstk_darwin(v20).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v4);
  if (qword_100921880 != -1)
  {
    swift_once();
  }

  sub_1001B63AC(&unk_10093E990, v21);
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_topDivider];
  v8 = type metadata accessor for DividerView(0);
  v21[23] = v8;
  v21[24] = &protocol witness table for UIView;
  v21[20] = v7;
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_label];
  v21[28] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v21[29] = &protocol witness table for UILabel;
  v21[25] = v9;
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_bottomDivider];
  v21[33] = v8;
  v21[34] = &protocol witness table for UIView;
  v21[30] = v10;
  v11 = v7;
  v12 = v9;
  v13 = v10;
  sub_1007477B4();
  LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(v1, v14, v15, v16, v17);
  (*(v3 + 8))(v6, v20);
  return sub_1001B6408(v21);
}

double sub_1005707C4(uint64_t a1, double a2, double a3)
{
  if (qword_100921880 != -1)
  {
    swift_once();
  }

  sub_1001B63AC(&unk_10093E990, v16);
  v7 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_topDivider);
  v8 = type metadata accessor for DividerView(0);
  v16[23] = v8;
  v16[24] = &protocol witness table for UIView;
  v16[20] = v7;
  v9 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_label);
  v16[28] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v16[29] = &protocol witness table for UILabel;
  v16[25] = v9;
  v10 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_bottomDivider);
  v16[33] = v8;
  v16[34] = &protocol witness table for UIView;
  v16[30] = v10;
  swift_getObjectType();
  v11 = v7;
  v12 = v9;
  v13 = v10;
  v14 = sub_10049F2B8(a1, v16, a2, a3);
  sub_1001B6408(v16);
  return v14;
}

double sub_10057099C(uint64_t a1, double a2)
{
  type metadata accessor for DividerView(0);
  if (qword_100920D78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DividerView.Style(0);
  v5 = sub_10000D0FC(v4, qword_100980640);
  swift_getObjectType();
  sub_1004CB0AC(v5, a1);
  return a2;
}

void sub_100570AD0()
{
  v1 = v0;
  v2 = sub_100750534();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_label;
  if (qword_100921010 != -1)
  {
    swift_once();
  }

  v7 = sub_10000D0FC(v2, qword_100980D68);
  (*(v3 + 16))(v5, v7, v2);
  v8 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *(v1 + v6) = sub_10004DA8C(v5, 0, 0, 1);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_topDivider;
  v10 = type metadata accessor for DividerView(0);
  *(v1 + v9) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_bottomDivider;
  *(v1 + v11) = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100754644();
  __break(1u);
}

void sub_100570CA4(char a1)
{
  v2 = qword_10097EE50;
  v3 = *(v1 + qword_10097EE50);
  if (v3 != (a1 & 1))
  {
    v4 = qword_1009306A8;
    if ((v3 & 1) != 0 && !*(v1 + qword_1009306A8))
    {
      type metadata accessor for BarButtonItemHidingScrollObserver();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v1 + v4) = v6;
      *(v6 + 24) = 0;
      sub_100578FF0(&qword_100930978, type metadata accessor for BarButtonItemHidingScrollObserver, &unk_1007BBBF4);

      sub_100749AD4();

      v5 = *(v1 + qword_1009306A8);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = *(v1 + qword_1009306A8);
      if (!v5)
      {
        return;
      }
    }

    *(v5 + 24) = *(v1 + v2);

    sub_1003773B8();
  }
}

id sub_100570DFC()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___resultsMessageView;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___resultsMessageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___resultsMessageView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchResultsMessageView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setPreservesSuperviewLayoutMargins:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_100570E94()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___tokenPalette;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___tokenPalette);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___tokenPalette);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_onSelect];
    v7 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_onSelect];
    v8 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_onSelect + 8];
    *v6 = sub_1005790CC;
    v6[1] = v5;

    sub_1000164A8(v7, v8);

    v9 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_100570F8C(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {

    v3 = sub_100570DFC();

    sub_1004FDB8C(v4);

    v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_palettePresenter);
    v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___resultsMessageView);
    v64[3] = type metadata accessor for SearchResultsMessageView();
    v64[4] = &protocol witness table for UIView;
    v64[0] = v6;
    sub_10000C824(v64, v63);
    sub_10000C824(v63, v62);
    v7 = swift_allocObject();
    sub_100012160(v63, v7 + 16);
    v8 = swift_allocObject();
    v8[2] = sub_1002C2AEC;
    v8[3] = v7;
    v8[4] = 0x3FD999999999999ALL;
    v9 = v6;

    sub_10000C620(v64);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_10000C620(v62);

LABEL_28:
      v55 = *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v55)
      {
        v56 = [v55 collectionView];
        if (v56)
        {
          v57 = v56;
          sub_1002C33A0(v56);
          v58 = UIAccessibilityScreenChangedNotification;
          v59 = v57;
          UIAccessibilityPostNotification(v58, v59);
        }
      }

      return;
    }

    v11 = Strong;
    v60 = v6;
    v12 = *(v5 + 24);
    if (v12)
    {
      [v12 setHidden:1];
    }

    v13 = v9;
    [v13 setHidden:0];
    v14 = [v13 superview];
    v15 = [v11 contentView];
    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v17 = sub_100753FC4();

        v18 = &selRef_viewSafeAreaInsetsDidChange;
        if (v17)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v16 = v14;
      v18 = &selRef_viewSafeAreaInsetsDidChange;
    }

    else
    {
      v18 = &selRef_viewSafeAreaInsetsDidChange;
      if (!v15)
      {
        goto LABEL_25;
      }
    }

LABEL_24:
    v27 = [v11 v18[482]];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [v13 setFrame:{v29, v31, v33, v35}];
    [v13 setAutoresizingMask:18];
    v36 = [v11 v18[482]];
    [v36 addSubview:v13];

LABEL_25:
    v37 = *(v5 + 24);
    *(v5 + 24) = v60;
    v38 = v13;

    if (*(v5 + 65))
    {
      v39 = [v11 v18[482]];
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      sub_1007477B4();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v66.origin.x = v41;
      v66.origin.y = v43;
      v66.size.width = v45;
      v66.size.height = v47;
      CGRectGetWidth(v66);
      v48 = [v11 v18[482]];
      sub_10000C888(v62, v62[3]);
      sub_100750404();
      v50 = v49;

      [v11 setPreferredHeight:v50];
      [v11 setMinimumHeight:0.0];
    }

    v51 = *(v5 + 32);
    v52 = *(v5 + 40);
    v53 = *(v5 + 48);
    v54 = *(v5 + 56);
    *(v5 + 32) = sub_1002C2AEC;
    *(v5 + 40) = v7;
    *(v5 + 48) = sub_1005790C0;
    *(v5 + 56) = v8;
    *(v5 + 64) = 1;
    sub_1002C2AF4(v51, v52, v53, v54);
    sub_10000C620(v62);

    goto LABEL_28;
  }

  v19 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_palettePresenter);
  v20 = sub_100570DFC();
  if (*(v19 + 65) == 1 && (v21 = *(v19 + 24)) != 0)
  {
    v61 = v20;
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v22 = v21;
    v23 = sub_100753FC4();

    if (v23)
    {
      v24 = *(v19 + 24);
      if (v24)
      {
        if (*(v19 + 65) == 1)
        {
          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            [v24 setHidden:1];
            [v26 setMinimumHeight:0.0];
            [v26 setPreferredHeight:0.0];

            *(v19 + 65) = 0;
          }
        }
      }
    }
  }

  else
  {
  }
}

void sub_100571568()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_palettePresenter);
  v3 = sub_100570E94();
  if (*(v2 + 65) != 1 || (v4 = *(v2 + 24)) == 0)
  {

LABEL_6:
    v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___tokenPalette);
    v49[3] = type metadata accessor for GuidedSearchTokenPaletteView(0);
    v49[4] = &protocol witness table for UIView;
    v49[0] = v8;
    sub_10000C824(v49, v48);
    sub_10000C824(v48, v47);
    v9 = swift_allocObject();
    sub_100012160(v48, v9 + 16);
    v10 = v8;
    sub_10000C620(v49);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_10000C620(v47);
LABEL_22:

      sub_1002C2D14();
      return;
    }

    v12 = Strong;
    v13 = *(v2 + 24);
    if (v13)
    {
      [v13 setHidden:1];
    }

    v14 = v10;
    [v14 setHidden:0];
    v15 = [v14 superview];
    v16 = [v12 contentView];
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v18 = sub_100753FC4();

        if (v18)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v17 = v15;
    }

    else if (!v16)
    {
      goto LABEL_19;
    }

LABEL_18:
    v19 = [v12 contentView];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [v14 setFrame:{v21, v23, v25, v27}];
    [v14 setAutoresizingMask:18];
    v28 = [v12 contentView];
    [v28 addSubview:v14];

LABEL_19:
    v29 = *(v2 + 24);
    *(v2 + 24) = v8;
    v30 = v14;

    if (*(v2 + 65))
    {
      v31 = [v12 contentView];
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      sub_1007477B4();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v50.origin.x = v33;
      v50.origin.y = v35;
      v50.size.width = v37;
      v50.size.height = v39;
      CGRectGetWidth(v50);
      v40 = [v12 contentView];
      sub_10000C888(v47, v47[3]);
      sub_100750404();
      v42 = v41;

      [v12 setPreferredHeight:v42];
      [v12 preferredHeight];
      [v12 setMinimumHeight:?];
    }

    v43 = *(v2 + 32);
    v44 = *(v2 + 40);
    v45 = *(v2 + 48);
    v46 = *(v2 + 56);
    *(v2 + 32) = sub_1002C2AEC;
    *(v2 + 40) = v9;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    sub_1002C2AF4(v43, v44, v45, v46);
    sub_10000C620(v47);

    goto LABEL_22;
  }

  v5 = v3;
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v6 = v4;
  v7 = sub_100753FC4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_100571958()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_palettePresenter);
  v3 = sub_100570E94();
  if (*(v2 + 65) == 1 && (v4 = *(v2 + 24)) != 0)
  {
    v14 = v3;
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v5 = v4;
    v6 = sub_100753FC4();

    if (v6)
    {
      v7 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___tokenPalette;
      v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___tokenPalette);
      sub_10064E930(_swiftEmptyArrayStorage);

      v9 = *(v1 + v7);
      *&v9[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
      v10 = v9;

      *&v10[OBJC_IVAR____TtC22SubscribePageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;

      v11 = objc_opt_self();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100579048;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_10087B818;
      v13 = _Block_copy(aBlock);

      [v11 animateWithDuration:v13 animations:0.3];
      _Block_release(v13);
    }
  }

  else
  {
  }
}

id sub_100571B40(id result)
{
  v2 = v1[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_showSearchLanding];
  v1[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_showSearchLanding] = result;
  if (v2 != (result & 1))
  {
    v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchLandingViewController];
    if (result)
    {
      [v1 addChildViewController:*&v1[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchLandingViewController]];
      result = [v1 view];
      if (result)
      {
        v4 = result;
        result = [v3 view];
        if (result)
        {
          v5 = result;
          [v4 addSubview:result];

          v6 = "didMoveToParentViewController:";
          v7 = v3;
          v8 = v1;

          return [v7 v6];
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchLandingViewController] willMoveToParentViewController:0];
      result = [v3 view];
      if (result)
      {
        v9 = result;
        [result removeFromSuperview];

        v6 = "removeFromParentViewController";
        v7 = v3;

        return [v7 v6];
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_100571CA8()
{
  v1 = sub_10000C518(&unk_10093EC70, &unk_1007B9670);
  v14 = *(v1 - 8);
  v15 = v1;
  __chkstk_darwin(v1);
  v13 = &v11 - v2;
  v12 = sub_10000C518(&qword_1009324C0, &unk_1007BE6D0);
  v3 = *(v12 - 8);
  __chkstk_darwin(v12);
  v5 = &v11 - v4;
  v11 = v0;
  sub_100748394();
  v6 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v7 = sub_100753774();
  v17 = v6;
  v18 = &protocol witness table for OS_dispatch_queue;
  v16[0] = v7;
  sub_10000C518(&unk_10093EC80, &qword_1007B2D10);
  type metadata accessor for SearchViewController(0);
  sub_10002DDC8(&unk_1009324F0, &unk_10093EC80, &qword_1007B2D10, &protocol conformance descriptor for AsyncEvent<A>);
  sub_100752584();

  (*(v3 + 8))(v5, v12);
  sub_10000C620(v16);
  sub_100748344();
  v8 = sub_100753774();
  v17 = v6;
  v18 = &protocol witness table for OS_dispatch_queue;
  v16[0] = v8;
  sub_10000C518(&unk_10093EC90, &qword_1007BE6E0);
  sub_10002DDC8(&unk_100932500, &unk_10093EC90, &qword_1007BE6E0, &protocol conformance descriptor for SyncEvent<A>);
  v9 = v13;
  sub_100752584();

  (*(v14 + 8))(v9, v15);
  return sub_10000C620(v16);
}

void sub_100571FC4(void *a1)
{
  v2 = v1;
  v4 = sub_100742CF4();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v69 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1007493D4();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10074A304();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752614();
  __chkstk_darwin(v8 - 8);
  v60[2] = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v10 - 8);
  v71 = v60 - v11;
  v12 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v12 - 8);
  v70 = v60 - v13;
  v14 = sub_10074F4D4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v18 - 8);
  v20 = v60 - v19;
  v21 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetsPresenter);
  v22 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_objectGraph);
  v23 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v24 = sub_1003E80B4(v21, 1, v22);

  v25 = v22;

  *&v24[OBJC_IVAR____TtC22SubscribePageExtension24PageFacetsViewController_delegate + 8] = &off_10087B4D8;
  swift_unknownObjectWeakAssign();
  v26 = objc_allocWithZone(UINavigationController);
  v72 = v24;
  v27 = [v26 initWithRootViewController:v24];
  v28 = [v27 navigationBar];
  [v28 setPrefersLargeTitles:0];

  v29 = v27;
  [v29 setModalPresentationStyle:7];
  v30 = [v29 presentationController];
  if (v30)
  {
    v31 = v30;
    [v30 setDelegate:v2];
  }

  v32 = [v29 popoverPresentationController];
  if (v32)
  {
    v33 = v32;
    [v32 setSourceView:a1];
  }

  v73 = v2;
  v34 = [v29 popoverPresentationController];
  if (v34)
  {
    v35 = v34;
    [v34 setPermittedArrowDirections:1];
  }

  v36 = [v29 popoverPresentationController];

  if (v36)
  {
    v37 = [a1 titleLabel];
    if (v37)
    {
      v38 = v37;
      [v37 frame];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = v46;
      v48 = v44;
      v49 = v42;
      v50 = v40;
    }

    else
    {
      [a1 bounds];
    }

    MidX = CGRectGetMidX(*&v50);
    [a1 bounds];
    [v36 setSourceRect:{MidX, CGRectGetMaxY(v79), 10.0, 10.0}];
  }

  v52 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v20, 1, v52) == 1)
  {
    sub_10000C8CC(v20, &unk_100923960, &qword_1007A6240);
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v54 = *(v15 + 104);
    v60[1] = v17;
    v54(v17, enum case for FlowPage.viewController(_:), v14);
    v55 = sub_100741264();
    (*(*(v55 - 8) + 56))(v70, 1, 1, v55);
    v56 = sub_100743FE4();
    (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
    v75 = sub_100016C60(0, &qword_100924658, UINavigationController_ptr);
    v74 = v29;
    v57 = v29;
    v60[0] = v25;
    sub_1007525F4();
    (*(v61 + 104))(v62, enum case for FlowPresentationContext.infer(_:), v63);
    (*(v65 + 104))(v64, enum case for FlowAnimationBehavior.infer(_:), v66);
    (*(v67 + 104))(v69, enum case for FlowOrigin.inapp(_:), v68);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v58 = sub_100742C84();
    sub_1003C1424(v58, 1, v60[0], v20);

    (*(v53 + 8))(v20, v52);
  }

  v59 = *(v73 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController);
  *(v73 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController) = v29;
}

void sub_1005728A0(void *a1)
{
  v2 = [a1 searchResultsController];
  if (!v2)
  {
    return;
  }

  v7 = v2;
  [v1 addChildViewController:?];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v7 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v4 addSubview:v5];

  [v7 didMoveToParentViewController:v1];
}

void sub_100572998(void *a1)
{
  sub_1002C35BC();
  v2 = [a1 searchResultsController];
  if (v2)
  {
    v5 = v2;
    [v2 willMoveToParentViewController:0];
    v3 = [v5 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];

      [v5 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100572A80(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_activeSearchBarObservingViewController))
  {
    v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_activeSearchBarObservingViewController + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = a1(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_objectGraph);
      v10 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
      sub_1007526C4();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {

        sub_10000C8CC(v5, &unk_100923960, &qword_1007A6240);
      }

      else
      {
        sub_1003C0E00(v8, 1, v9, v5);

        (*(v11 + 8))(v5, v10);
      }
    }
  }
}

void sub_100572C34(void *a1)
{
  v2 = v1;
  v4 = [a1 searchBar];
  v5 = [v4 text];

  if (!v5)
  {
LABEL_8:
    if ([a1 isActive] && *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchFocusViewController))
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    sub_1006AB550(v13, v12);
    sub_1007483B4();
    v14 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController);
    *(v2 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController) = 0;
    if (v14)
    {
      v15 = [v14 presentingViewController];
      if (v15)
      {
        v16 = v15;
        [v15 dismissViewControllerAnimated:1 completion:0];
      }
    }

    goto LABEL_17;
  }

  v6 = sub_100753094();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = sub_1006AAD2C(v6, v8);

  if (v10)
  {
    return;
  }

  sub_1006AB550(1, v11);
  sub_1007483B4();
LABEL_17:

  sub_100570F8C(0);
}

void sub_100572DE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController);
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSection) == 2)
  {
    if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsViewController))
    {
    }
  }
}

uint64_t sub_100572E44()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController);
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSection))
  {
    v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
    if (v2 && (sub_100016C60(0, &qword_1009450A0, UICollectionViewController_ptr), v3 = v2, sub_10000C518(&unk_10093EC60, &unk_1007CAB90), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v9 + 1))
      {
        sub_100012160(&v8, v11);
        v4 = v12;
        v5 = v13;
        sub_10000C888(v11, v12);
        v6 = (*(v5 + 8))(v4, v5);
        sub_10000C620(v11);
        return v6;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }

    sub_10000C8CC(&v8, &unk_10093EC50, &qword_1007CAB88);
  }

  return 0;
}

void sub_100572F80(uint64_t a1, __n128 a2)
{
  v4 = sub_1007440E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = v20 - v10;
  if ([v2 isViewLoaded])
  {
    sub_1007440A4();
    (*(v5 + 104))(v7, enum case for SearchOrigin.tabBar(_:), v4);
    sub_100578FF0(&qword_10093EC48, &type metadata accessor for SearchOrigin, &protocol conformance descriptor for SearchOrigin);
    sub_100753274();
    sub_100753274();
    if (v20[2] == v20[0] && v20[3] == v20[1])
    {
      v12 = *(v5 + 8);
      v12(v7, v4);
      v12(v11, v4);

LABEL_9:
      sub_1005787DC();
      return;
    }

    v13 = sub_100754754();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v14(v11, v4);

    if (v13)
    {
      goto LABEL_9;
    }

    v15 = sub_100744074();
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = v15;
    v18 = v16;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      sub_10057358C(a1);
    }

    else
    {
LABEL_16:
      sub_10057325C(0);
    }
  }

  else
  {
    *&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_pendingSearchAction] = a1;
  }
}

uint64_t sub_10057325C(char a1)
{
  v3 = sub_1007521E4();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100752224();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController);
  v11 = [v10 searchBar];
  [v11 becomeFirstResponder];

  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v12 = sub_100753774();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a1;
  aBlock[4] = sub_100578FE4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10087B778;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100578FF0(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_10002DDC8(&qword_1009236C0, &unk_10092F750, &qword_1007A6920, &protocol conformance descriptor for [A]);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v14);

  (*(v18 + 8))(v5, v3);
  return (*(v6 + 8))(v9, v17);
}

uint64_t sub_10057358C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007521E4();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100752224();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100570F8C(0);
  v10 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController] searchBar];
  [v10 resignFirstResponder];

  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v11 = sub_100753774();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100578FA4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10087B728;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100578FF0(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_10002DDC8(&qword_1009236C0, &unk_10092F750, &qword_1007A6920, &protocol conformance descriptor for [A]);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

void sub_1005738C8(uint64_t a1)
{
  v3 = sub_1007521E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752224();
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074C2F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  if ([*(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController) isActive] && *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSection) == 2)
  {
    v19 = v4;
    v20 = v1;
    sub_100578FF0(&qword_10093EC30, &type metadata accessor for GuidedSearchTokenCollection, &protocol conformance descriptor for GuidedSearchTokenCollection);
    sub_1007534C4();
    sub_1007534F4();
    if (aBlock[0] == aBlock[6])
    {
      sub_100571958();
    }

    else
    {
      sub_100571568();
      sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
      v18 = sub_100753774();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
      v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      (*(v11 + 32))(v15 + v14, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      aBlock[4] = sub_100578EEC;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_10087B6D8;
      v16 = _Block_copy(aBlock);

      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100578FF0(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000C518(&unk_10092F750, &qword_1007A6920);
      sub_10002DDC8(&qword_1009236C0, &unk_10092F750, &qword_1007A6920, &protocol conformance descriptor for [A]);
      sub_1007543A4();
      v17 = v18;
      sub_100753784();
      _Block_release(v16);

      (*(v19 + 8))(v6, v3);
      (*(v21 + 8))(v9, v22);
    }
  }
}

char *sub_100573D5C(unint64_t a1)
{
  v2 = sub_10000C518(&unk_100940810, qword_1007C7BF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_100742A34();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v8 = a1 >> 62;
  if (!v8)
  {
    v36 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v36 = sub_100754664();
  if (!v36)
  {
    return 0;
  }

LABEL_3:
  if (v36 < 1)
  {
    __break(1u);
LABEL_33:
    result = sub_100754664();
    v22 = result;
    if (result)
    {
      goto LABEL_18;
    }

LABEL_34:

    return v6;
  }

  v27 = v8;
  v9 = 0;
  v32 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_objectGraph;
  v10 = v37 & 0xC000000000000001;
  v11 = (v6 + 48);
  v29 = (v6 + 8);
  v30 = (v6 + 32);
  v33 = v37 & 0xC000000000000001;
  v31 = (v6 + 48);
  v28 = v4;
  do
  {
    if (v10)
    {
      v12 = sub_100754574();
    }

    else
    {
      v12 = *(v37 + 8 * v9 + 32);
    }

    v13 = v12;
    type metadata accessor for AccountButton(0);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v35 = v14;
      sub_100016B4C(v14 + qword_100982860, v4, &unk_100940810, qword_1007C7BF0);
      if ((*v11)(v4, 1, v5) == 1)
      {

        sub_10000C8CC(v4, &unk_100940810, qword_1007C7BF0);
      }

      else
      {
        v15 = v34;
        (*v30)(v34, v4, v5);
        sub_10074D714();
        sub_100752764();
        sub_100752D34();
        v16 = v38;
        v4 = v28;
        v11 = v31;
        sub_10074D704();

        v17 = v15;
        v10 = v33;
        (*v29)(v17, v5);
      }
    }

    else
    {
    }

    ++v9;
  }

  while (v36 != v9);
  if (!v27)
  {
    result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  result = sub_100754664();
  if (result == 1)
  {
LABEL_25:
    if (v10)
    {
      return sub_100754574();
    }

    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    return *(v37 + 32);
  }

LABEL_16:
  v19 = [objc_allocWithZone(sub_10000C518(&unk_10093EC20 qword_1007B6C40))];
  *&v19[qword_10093A0F0] = 0;
  v6 = v19;
  [v6 setNeedsLayout];
  *&v6[qword_10093A0F8] = 5;
  [v6 setNeedsLayout];
  *&v6[qword_10093A100] = 0x4028000000000000;
  [v6 setNeedsLayout];
  v6[qword_10093A108] = 0;
  [v6 setNeedsLayout];
  sub_10000C518(&qword_10092E9D0, qword_1007B41A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = v37;

  sub_100620BCC(inited);
  v8 = v21;
  swift_setDeallocating();
  result = sub_10000C8CC(inited + 32, &qword_1009423E0, &unk_1007CE740);
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v22 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (v22 >= 1)
  {
    for (i = 0; i != v22; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v24 = sub_100754574();
      }

      else
      {
        v24 = *(v8 + 8 * i + 32);
      }

      v25 = v24;
      [v6 addSubview:{v24, v27}];
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_1005742B0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_navigationAccessories;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_navigationAccessories];

  v3 = [v0 traitCollection];
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_objectGraph];
  v5 = v3;

  v6 = sub_10057736C(v2, v5, 0, v4);

  v27 = sub_100573D5C(v6);

  v7 = [v0 navigationItem];
  v8 = *&v0[v1];

  v9 = [v0 traitCollection];

  v10 = v9;
  v11 = sub_10057736C(v8, v10, 1u, v4);

  v12 = sub_100573D5C(v11);

  if (v12)
  {
    v13 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v12];
  }

  else
  {
    v13 = 0;
  }

  [v7 setLeftBarButtonItem:{v13, v27}];

  v14 = [v0 navigationItem];
  v15 = *&v0[v1];

  v16 = [v0 traitCollection];

  v17 = v16;
  v18 = sub_10057736C(v15, v17, 2u, v4);

  v19 = sub_100573D5C(v18);

  if (v19)
  {
    v20 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v19];
  }

  else
  {
    v20 = 0;
  }

  [v14 setRightBarButtonItem:v20];

  v21 = [v0 navigationItem];
  v22 = [v21 rightBarButtonItem];

  if (v22)
  {
    [v22 setHidesSharedBackground:1];
  }

  v23 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchLandingViewController];
  v24 = [v0 traitCollection];
  v25 = sub_1007537D4();

  v26 = *(v23 + qword_10097EE50);
  *(v23 + qword_10097EE50) = v25 & 1;
  sub_100570CA4(v26);
}

uint64_t sub_1005745F0()
{
  v1 = v0;
  v2 = sub_1007521E4();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100752224();
  v5 = *(v15 - 8);
  *&v6 = __chkstk_darwin(v15).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController] searchBar];
  [v9 resignFirstResponder];

  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v10 = sub_100753774();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_100578DB8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10087B660;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100578FF0(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_10002DDC8(&qword_1009236C0, &unk_10092F750, &qword_1007A6920, &protocol conformance descriptor for [A]);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v12);

  (*(v16 + 8))(v4, v2);
  return (*(v5 + 8))(v8, v15);
}

void sub_100574918(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  sub_10074E344();
  swift_allocObject();
  v6 = sub_10074E334();
  v7 = sub_100577100(v5, v6, a3);

  v8 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchFocusViewController);
  *(a2 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchFocusViewController) = v7;
}

void (*sub_1005749A8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100578B08;
}

double sub_100574A40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    swift_allocObject();
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_100749414();
  }

  return result;
}

double sub_100574B2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(*(Strong + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController) && (type metadata accessor for StoreCollectionViewController(), (v6 = swift_dynamicCastClass()) != 0))
    {
      v7 = &OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph;
    }

    else
    {
      v7 = &OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_objectGraph;
      v6 = v5;
    }

    v8 = *(v6 + *v7);
    sub_10074CC44();
    v9 = swift_dynamicCastClass() == 0;

    sub_10052AB60(a1, v9, v8);
  }

  return result;
}

double sub_100574C28(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_palettePresenter);
    v4 = Strong;

    v5 = *(v3 + 24);
    if (v5 && *(v3 + 65) == 1)
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        [v5 setHidden:1];
        [v7 setMinimumHeight:0.0];
        [v7 setPreferredHeight:0.0];

        *(v3 + 65) = 0;
      }
    }
  }

  return result;
}

double sub_100574D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchTextInput);
  if (v3 && v3[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled] != 1)
  {
    v6 = OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_textField;
    v7 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension30SearchTextInputSourceTextField_textField];
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8 && v7 != 0)
    {
      v11 = v8;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 40);
      v21 = v3;
      v14 = v7;
      v15 = v13(a1, a2, ObjectType, v11);

      if ((v15 & 1) == 0 || ((v16 = *&v3[v6], swift_getObjectType(), (v17 = swift_conformsToProtocol2()) != 0) ? (v18 = v16 == 0) : (v18 = 1), v18))
      {
      }

      else
      {
        v19 = v17;
        v20 = v16;

        sub_1001C725C(v21, v20, v19, a1, a2);
      }
    }
  }

  return result;
}

uint64_t (*sub_100574EC4(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100578BE4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100578C24;
}

id sub_100574F54()
{
  v1 = v0;
  v2 = sub_100752AC4();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_10093EBF8, &qword_1007CAB70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = type metadata accessor for SearchViewController(0);
  v42.receiver = v0;
  v42.super_class = v8;
  objc_msgSendSuper2(&v42, "viewDidLoad");
  v9 = [v0 navigationItem];
  sub_1002C2B68(v9, 2, 1);

  sub_100748694();
  v10 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v11 = sub_100753774();
  *(&v40 + 1) = v10;
  v41 = &protocol witness table for OS_dispatch_queue;
  *&v39 = v11;
  sub_10000C518(&qword_10093EC08, &unk_1007CAB78);
  sub_10002DDC8(&unk_10093EC10, &qword_10093EC08, &unk_1007CAB78, &protocol conformance descriptor for AsyncEvent<A>);
  sub_100752584();

  (*(v5 + 8))(v7, v4);
  sub_10000C620(&v39);
  sub_100571CA8();
  v12 = [v1 navigationItem];
  result = [v1 tabBarItem];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  v15 = [result title];

  if (v15 || (v15 = [v1 title]) != 0)
  {
    sub_100753094();

    v15 = sub_100753064();
  }

  [v12 setTitle:v15];

  v16 = [v1 navigationItem];
  sub_10009AFC4();

  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController];
  [v17 setSearchResultsUpdater:v1];
  [v17 setDelegate:v1];
  [v17 setObscuresBackgroundDuringPresentation:0];
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v19 = &v17[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButtonHandler];
  v20 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButtonHandler];
  v21 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButtonHandler + 8];
  *v19 = sub_100578BC0;
  v19[1] = v18;
  v22 = v1;
  v23 = [v22 navigationItem];
  [v23 setLargeTitleDisplayMode:3];

  v24 = [v22 navigationItem];
  [v24 setSearchController:v17];

  v25 = [v22 navigationItem];
  [v25 setPreferredSearchBarPlacement:2];

  v26 = [v22 navigationItem];
  [v26 setHidesSearchBarWhenScrolling:0];

  [v22 setDefinesPresentationContext:1];
  sub_1000C3F1C();
  result = [v22 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v27 = result;
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v28 = sub_100753E04();
  [v27 setBackgroundColor:v28];

  result = [v22 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = result;
  v39 = 0u;
  v40 = 0u;
  v30 = v36;
  sub_100752A84();
  sub_10000C8CC(&v39, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  result = (*(v37 + 8))(v30, v38);
  v31 = v22[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_showSearchLanding];
  v22[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_showSearchLanding] = 1;
  if (v31 == 1)
  {
    return result;
  }

  v32 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchLandingViewController];
  [v22 addChildViewController:v32];
  result = [v22 view];
  if (!result)
  {
    goto LABEL_15;
  }

  v33 = result;
  result = [v32 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v34 = result;
  [v33 addSubview:result];

  return [v32 didMoveToParentViewController:v22];
}

double sub_100575600(char a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for SearchViewController(0);
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  v4 = *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController] + OBJC_IVAR____TtC22SubscribePageExtension16SearchController_searchTextInput);
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchTextInput];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchTextInput] = v4;
  v6 = v4;

  if (v4)
  {
    v4 = type metadata accessor for SearchTextInputSourceTextField();
    v7 = sub_100578FF0(&qword_10093EBF0, type metadata accessor for SearchTextInputSourceTextField, &unk_1007B0C00);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    *(&v12 + 1) = 0;
    *&v13 = 0;
  }

  *&v12 = v6;
  *(&v13 + 1) = v4;
  v14 = v7;
  sub_100748684();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_pendingSearchAction;
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_pendingSearchAction])
  {
    v12 = 0u;
    v13 = 0u;

    sub_100572F80(v10, v11);

    sub_10000C8CC(&v12, &unk_100923520, &qword_1007A5A70);
    *&v2[v9] = 0;
  }

  return result;
}

id sub_100575814(void *a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SearchViewController(0);
  objc_msgSendSuper2(&v7, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  if ([a1 horizontalSizeClass] == 1)
  {
    v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController];
    if (v5)
    {
      [v5 dismissViewControllerAnimated:0 completion:0];
    }
  }

  return [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController] willTransitionToTraitCollection:a1 withTransitionCoordinator:a2];
}

void sub_100575944(void *a1)
{
  v2 = v1;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for SearchViewController(0);
  objc_msgSendSuper2(&v21, "traitCollectionDidChange:", a1);
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController] traitCollectionDidChange:a1];
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController];
  v5 = [v4 traitCollection];
  v6 = [v5 horizontalSizeClass];
  if (a1 && v6 == [a1 horizontalSizeClass])
  {

LABEL_7:
    v12 = [a1 preferredContentSizeCategory];
    goto LABEL_11;
  }

  v7 = sub_1007537B4();
  v8 = sub_1000C3E54();
  [v8 _additionalPaddingForSearchFieldAtLeadingEdge];
  v10 = v9;

  v11 = 0.0;
  if ((v7 & 1) == 0)
  {
    if (v10 == 0.0)
    {
      goto LABEL_6;
    }

LABEL_9:
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension16SearchController____lazy_storage____searchBar] _setAdditionalPaddingForSearchFieldAtLeadingEdge:v11];

    if (a1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  [*&v4[OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton] sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v11 = v13 + 15.0;
  if (v11 != v10)
  {
    goto LABEL_9;
  }

LABEL_6:

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_10:
  v12 = 0;
LABEL_11:
  v14 = [v2 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!v12)
  {

LABEL_17:
    sub_1002C2F20();
    return;
  }

  v16 = sub_100753094();
  v18 = v17;
  if (v16 == sub_100753094() && v18 == v19)
  {

    return;
  }

  v20 = sub_100754754();

  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }
}

void sub_100575D5C()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for SearchViewController(0);
  objc_msgSendSuper2(&v25, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchLandingViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame:{v6, v8, v10, v12}];
  v13 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController] view];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    [v15 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v14 setFrame:{v18, v20, v22, v24}];
    sub_1002C2F20();
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_100575F28(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&qword_100932510, &qword_1007BE6B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController);
  sub_100748364();
  v7 = sub_100742F84();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_10000C8CC(v5, &qword_100932510, &qword_1007BE6B0);
  return [*(v6 + OBJC_IVAR____TtC22SubscribePageExtension16SearchController_filterButton) setEnabled:v8];
}

id (*sub_100576038(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100579040;
}

uint64_t sub_10057609C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_objectGraph);
  v8 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_10000C8CC(v6, &unk_100923960, &qword_1007A6240);
  }

  sub_1003C0E00(a1, 1, v7, v6);

  return (*(v9 + 8))(v6, v8);
}

uint64_t (*sub_1005761EC(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100579038;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1003053CC;
}

void sub_1005764B8(void *a1, char a2)
{
  [a1 setActive:1];
  v4 = [a1 searchBar];
  v5 = v4;
  if (a2)
  {
    v7 = [v4 searchField];

    if (!v7)
    {
      __break(1u);
      return;
    }

    [v7 selectAll];
  }

  else
  {
    v6 = [v4 isFirstResponder];

    if (v6)
    {
      return;
    }

    v7 = [a1 searchBar];
    [v7 becomeFirstResponder];
  }
}

double sub_1005765C4(char *a1, uint64_t a2)
{
  sub_1006AA4B8(a2, a2);
  sub_1006AB550(2, v3);
  v4 = [a1 navigationController];
  v5 = [v4 topViewController];

  if (!v5 || (sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr), v6 = a1, v7 = sub_100753FC4(), v5, v6, (v7 & 1) == 0))
  {
    v8 = [a1 navigationController];
    if (v8)
    {
      v9 = v8;
    }
  }

  v10 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController];
  v11 = [v10 searchBar];
  sub_100744074();
  if (v12)
  {
    v13 = sub_100753064();
  }

  else
  {
    v13 = 0;
  }

  [v11 setText:v13];

  [v10 setActive:1];
  *&a1[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_pendingSearchAction] = 0;

  return result;
}

void sub_10057676C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_10074C2F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v11 = Strong;
  v12 = sub_100572E44();

  if (!v12)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_8;
  }

  sub_1007495B4();
  swift_allocObject();
  swift_unknownObjectRetain();
  v14 = sub_100749584();
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {

LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v16 = v15;
  v17 = sub_100570E94();

  (*(v7 + 16))(v9, a2, v6);
  sub_100578FF0(&unk_10093EC38, &type metadata accessor for GuidedSearchTokenCollection, &protocol conformance descriptor for GuidedSearchTokenCollection);
  v18 = sub_100753264();
  v19 = sub_1001586D4(v18);

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_guidedSearchContainerImpressionMetrics;
    v22 = v20;
    swift_beginAccess();
    sub_100016B4C(v22 + v21, v5, &unk_100925380, qword_1007A8E40);
  }

  else
  {
    v23 = sub_100752914();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  }

  sub_10064BA9C(v14, v19, v5);
  swift_unknownObjectRelease();

  sub_10000C8CC(v5, &unk_100925380, qword_1007A8E40);
LABEL_11:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = sub_100570E94();

    sub_10036BB70();
  }
}

id sub_100576B34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchViewController(uint64_t a1)
{
  result = qword_10093EB88;
  if (!qword_10093EB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100576D0C(uint64_t a1)
{
  sub_100400C0C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100576E50(uint64_t a1)
{
  v2 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100068C18(a1, v4);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    result = *v4;
    if (*v4)
    {

      return 1;
    }
  }

  else
  {
    sub_1000AC948(v4);
    return 0;
  }

  return result;
}

uint64_t sub_100576F4C(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  sub_100016B4C(a1, &v8 - v4, &unk_100925380, qword_1007A8E40);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_guidedSearchContainerImpressionMetrics;
  swift_beginAccess();
  sub_100577090(v5, v1 + v6);
  return swift_endAccess();
}

id sub_100577020(id result)
{
  if (!result)
  {
    sub_100571B40(1);
    v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController);

    return [v2 setShowsSearchResultsController:0];
  }

  return result;
}

uint64_t sub_100577090(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_100577100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = sub_10074E344();
  v13[4] = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
  v13[0] = a2;
  sub_10000C824(v13, v12);
  sub_10074D5D4();
  swift_allocObject();

  v5 = sub_10074D5C4();
  v6 = sub_100578FF0(&unk_10093EBE0, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  sub_10000C518(&qword_100938E30, &qword_1007C2720);
  sub_100752314();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007A5A00;
  sub_10074D4D4();
  sub_10000C824(v13, v12);
  swift_allocObject();

  v12[0] = sub_10074D4B4();
  sub_1007522F4();
  v8 = sub_1006B94B0(a3, v5, v6, v7, 0x6F46686372616573, 0xEF65676150737563);

  v9 = objc_allocWithZone(type metadata accessor for SearchFocusDiffablePageViewController(0));
  v10 = sub_10041F880(v5, v8);
  sub_10000C620(v13);
  return v10;
}

void *sub_10057736C(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v6 = _swiftEmptyArrayStorage;
    v7 = &qword_1009423E0;
    v31 = v4;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_100754574();
        v8 = isUniquelyReferenced_nonNull_bridgeObject;
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        v8 = *(v33 + 8 * v5);

        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_43;
        }
      }

      v10 = _swiftEmptyArrayStorage;
      if ((*(v8 + 16))(a2) == a3)
      {
        v10 = sub_10050C5CC(a4);
      }

      v11 = v10 >> 62;
      v12 = v10 >> 62 ? sub_100754664() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v6 >> 62;
      if (v6 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
      {
        goto LABEL_42;
      }

LABEL_15:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          goto LABEL_22;
        }

LABEL_21:
        sub_100754664();
        goto LABEL_22;
      }

      if (v13)
      {
        goto LABEL_21;
      }

      v15 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = v6;
        goto LABEL_23;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_100754584();
      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = sub_100754664();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v17 >> 1) - v16) < v12)
          {
            goto LABEL_46;
          }

          v20 = v15 + 8 * v16 + 32;
          v38 = v5;
          v32 = v15;
          if (v11)
          {
            if (v18 < 1)
            {
              goto LABEL_48;
            }

            sub_10002DDC8(&qword_100939AD0, v7, &unk_1007CE740, &protocol conformance descriptor for [A]);
            v21 = v7;
            for (i = 0; i != v18; ++i)
            {
              sub_10000C518(v7, &unk_1007CE740);
              v23 = sub_1004A2704(v39, i, v10);
              v25 = *v24;
              (v23)(v39, 0);
              *(v20 + 8 * i) = v25;
            }
          }

          else
          {
            sub_100016C60(0, &qword_100922300, UIView_ptr);
            swift_arrayInitWithCopy();
            v21 = v7;
          }

          v4 = v31;
          v7 = v21;
          v5 = v38;
          v6 = v40;
          if (v12 >= 1)
          {
            v26 = *(v32 + 16);
            v9 = __OFADD__(v26, v12);
            v27 = v26 + v12;
            if (v9)
            {
              goto LABEL_47;
            }

            *(v32 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      v6 = v40;
      if (v12 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v5 == v4)
      {
        return v6;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_100754664();
    v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
    {
      goto LABEL_15;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_100754664();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_10057772C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v41[1] = ObjectType;
  v7 = sub_10000C518(&qword_10093EB98, &qword_1007CAB48);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v41 - v8;
  v9 = sub_10000C518(&qword_10093EBA0, &qword_1007CAB50);
  v43 = *(v9 - 8);
  *&v44 = v9;
  __chkstk_darwin(v9);
  v42 = v41 - v10;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_palettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v12 + 50) = 0u;
  *(v12 + 40) = 0u;
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___resultsMessageView] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___tokenPalette] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchTextInput] = 0;
  v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_showSearchLanding] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController] = 0;
  *(v12 + 24) = 0u;
  v13 = &v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_activeSearchBarObservingViewController];
  *v13 = 0;
  v13[1] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_pendingSearchAction] = 0;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_guidedSearchContainerImpressionMetrics;
  v15 = sub_100752914();
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_prefersLargeTitle] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_navigationAccessories] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetsPresenter] = a1;
  sub_100744AC4();

  sub_1007526E4();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_bag] = v50[0];

  sub_100744994();
  v17 = v16;

  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_paletteImpressionableThreshold] = v17;
  sub_100749444();
  sub_1007526E4();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_guidedSearchPresenter] = v50[0];
  sub_10074CE34();
  sub_100752754();
  sub_1007486B4();
  swift_allocObject();
  v18 = sub_1007486A4();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchTextPresenter] = v18;
  v19 = objc_allocWithZone(type metadata accessor for SearchResultsContainerViewController());

  v20 = sub_1006AB2C0(a1, v18, a2);

  v21 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController] = v20;
  v22 = [objc_allocWithZone(type metadata accessor for SearchController()) initWithSearchResultsController:v20];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController] = v22;
  [v22 setShowsSearchResultsController:0];
  v23 = sub_10074E344();
  swift_allocObject();
  v24 = sub_10074E334();
  v50[3] = v23;
  v50[4] = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
  v50[0] = v24;
  sub_10000C824(v50, v49);
  sub_10074D904();
  swift_allocObject();

  v25 = sub_10074D8F4();
  sub_10074D8E4();
  v26 = *&v3[v21];
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a2;
  v27[4] = ObjectType;
  sub_10000C518(&qword_10093EBA8, &unk_1007CAB58);
  sub_10002DDC8(&qword_10093EBB0, &qword_10093EBA8, &unk_1007CAB58, &protocol conformance descriptor for SyncEvent<A>);

  v28 = v26;
  sub_100752574();
  v29 = v42;
  sub_100752594();

  sub_10000C620(v49);
  (*(v43 + 8))(v29, v44);
  v30 = sub_100578FF0(&unk_10093EBB8, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  sub_10000C518(&qword_100938E30, &qword_1007C2720);
  sub_100752314();
  v31 = swift_allocObject();
  v44 = xmmword_1007A5A00;
  *(v31 + 16) = xmmword_1007A5A00;
  sub_10074D4D4();
  sub_10000C824(v50, v49);
  swift_allocObject();
  swift_retain_n();
  v49[0] = sub_10074D4B4();
  sub_1007522F4();
  v32 = sub_1006B94B0(a2, v25, v30, v31, 0xD000000000000011, 0x80000001007845B0);

  v33 = objc_allocWithZone(type metadata accessor for SearchLandingDiffablePageViewController(0));
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchLandingViewController] = sub_10000AD68(v25, v32);
  v34 = type metadata accessor for SearchViewController(0);
  v48.receiver = v3;
  v48.super_class = v34;
  v35 = objc_msgSendSuper2(&v48, "initWithNibName:bundle:", 0, 0);
  v36 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController;
  *(*&v35[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchResultsDelegate + 8) = &off_10087B510;
  swift_unknownObjectWeakAssign();
  *(*&v35[v36] + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_delegate + 8) = &off_10087B4E8;
  swift_unknownObjectWeakAssign();
  *(*&v35[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchLandingViewController] + qword_10097C8B0 + 8) = &off_10087B500;
  swift_unknownObjectWeakAssign();
  v37 = v35;

  sub_100749424();

  sub_10000C518(&qword_10093EBC8, &qword_1007CAB68);
  sub_10002DDC8(&unk_10093EBD0, &qword_10093EBC8, &qword_1007CAB68, &protocol conformance descriptor for SyncEvent<A>);
  sub_100752574();
  v38 = v45;
  sub_100752584();

  sub_10000C620(v49);
  (*(v46 + 8))(v38, v47);
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v39 = swift_allocObject();
  *(v39 + 16) = v44;
  *(v39 + 32) = sub_1007516F4();
  *(v39 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100753704();

  swift_unknownObjectRelease();

  sub_10000C620(v50);
  return v37;
}

uint64_t sub_100578040(uint64_t a1, uint64_t a2)
{
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5CF0;
  sub_10000C518(&qword_10093ECA0, qword_1007CABA0);
  v5 = *(type metadata accessor for Accessory(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007A5A00;
  v8 = (v7 + v6);
  v9 = *(sub_10000C518(&qword_1009262D8, &unk_1007A99A0) + 48);
  *v8 = 1;
  sub_100016B4C(a2, &v8[v9], &unk_100940810, qword_1007C7BF0);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_100413848(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_1000AE7AC;
  v11[3] = v10;
  sub_10050C5CC(a1);

  *(v4 + 32) = v11;
  return v4;
}

void sub_1005781FC(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchController];
  v5 = [v4 searchBar];
  v6 = v5;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      [v5 _setDisableDictationButton:1];

      v25 = v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_showSearchLanding];
      v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_showSearchLanding] = 0;
      if (v25)
      {
        v26 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchLandingViewController];
        [v26 willMoveToParentViewController:0];
        v27 = [v26 view];
        if (!v27)
        {
LABEL_41:
          __break(1u);
          return;
        }

        v28 = v27;
        [v27 removeFromSuperview];

        [v26 removeFromParentViewController];
      }

      [v4 setShowsSearchResultsController:1];
      v29 = *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v29)
      {
        v29 = [v29 collectionView];
      }

      v7 = v29;
      v8 = [v2 navigationItem];
      v9 = [v2 navigationController];
      if (v9)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    [v5 _setDisableDictationButton:1];

    v10 = v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_showSearchLanding];
    v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_showSearchLanding] = 0;
    if (v10)
    {
      v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchLandingViewController];
      [v11 willMoveToParentViewController:0];
      v12 = [v11 view];
      if (!v12)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v13 = v12;
      [v12 removeFromSuperview];

      [v11 removeFromParentViewController];
    }

    [v4 setShowsSearchResultsController:1];
    v14 = *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
    if (v14)
    {
      v14 = [v14 collectionView];
    }

    v7 = v14;
    v15 = [v2 navigationItem];
    v16 = [v2 navigationController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationBar];

      v19 = [v18 standardAppearance];
    }

    else
    {
      v19 = 0;
    }

    [v15 setScrollEdgeAppearance:v19];

    goto LABEL_31;
  }

  if (a1)
  {
    [v5 _setDisableDictationButton:0];

    v20 = v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_showSearchLanding];
    v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_showSearchLanding] = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }

    v21 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchLandingViewController];
    [v21 willMoveToParentViewController:0];
    v22 = [v21 view];
    if (v22)
    {
      v23 = v22;
      [v22 removeFromSuperview];

      [v21 removeFromParentViewController];
LABEL_16:
      [v4 setShowsSearchResultsController:1];
      v24 = *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v24)
      {
        v24 = [v24 collectionView];
      }

      v7 = v24;
      v8 = [v2 navigationItem];
      v9 = [v2 navigationController];
      if (v9)
      {
        goto LABEL_26;
      }

LABEL_27:
      v32 = 0;
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  [v5 _setDisableDictationButton:0];

  v7 = [*&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchLandingViewController] collectionView];
  v8 = [v2 navigationItem];
  v9 = [v2 navigationController];
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_26:
  v30 = v9;
  v31 = [v9 navigationBar];

  v32 = [v31 scrollEdgeAppearance];
LABEL_28:
  [v8 setScrollEdgeAppearance:v32];

  sub_100571958();
LABEL_31:
  v33 = [v2 navigationItem];
  sub_10009AFC4();

  [v2 setContentScrollView:v7 forEdge:15];
  v34 = *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v34)
  {
    swift_getObjectType();
    v35 = swift_conformsToProtocol2();
    if (v35)
    {
      v36 = v34;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  v37 = &v2[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_activeSearchBarObservingViewController];
  *v37 = v34;
  v37[1] = v35;

  swift_unknownObjectRelease();
}

void sub_1005787DC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController);
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v3)
  {
    type metadata accessor for SearchResultsDiffablePageViewController(0);
    if (swift_dynamicCastClass())
    {
      v20 = v3;
      sub_1006AB550(1, v4);
      sub_1007483B4();
      v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController);
      *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController) = 0;
      if (v5)
      {
        v6 = [v5 presentingViewController];
        if (v6)
        {
          v7 = v6;
          [v6 dismissViewControllerAnimated:1 completion:0];
        }
      }

      sub_100570F8C(0);
      sub_10057325C(1);
LABEL_8:

      return;
    }

    type metadata accessor for SearchHintsViewController();
    if (swift_dynamicCastClass())
    {
      v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_searchFocusViewController);
      v20 = v3;
      if (v9)
      {
        sub_1006AB550(3, v10);
        sub_1007483B4();
        v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController);
        *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController) = 0;
        if (v11)
        {
          v12 = [v11 presentingViewController];
          if (v12)
          {
            v13 = v12;
            [v12 dismissViewControllerAnimated:1 completion:0];
          }
        }

        sub_100570F8C(0);
      }

      else
      {
        sub_1006AB550(0, v10);
        sub_1007483B4();
        v17 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController);
        *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController) = 0;
        if (v17)
        {
          v18 = [v17 presentingViewController];
          if (v18)
          {
            v19 = v18;
            [v18 dismissViewControllerAnimated:1 completion:0];
          }
        }

        sub_100570F8C(0);
        sub_1005745F0();
      }

      goto LABEL_8;
    }

    sub_1006AB550(0, v8);
    sub_1007483B4();
    v14 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController);
    *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController) = 0;
    if (v14)
    {
      v15 = [v14 presentingViewController];
      if (v15)
      {
        v16 = v15;
        [v15 dismissViewControllerAnimated:1 completion:0];
      }
    }

    sub_100570F8C(0);

    sub_1005745F0();
  }

  else
  {

    sub_10057325C(0);
  }
}

uint64_t sub_100578AD0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100578B2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController) = 0;
  if (v1)
  {
    v4 = v1;
    v2 = [v1 presentingViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_100578BEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100578C54()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_palettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 50) = 0u;
  *(v2 + 40) = 0u;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___resultsMessageView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController____lazy_storage___tokenPalette) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchTextInput) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_showSearchLanding) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_facetNavigationController) = 0;
  *(v2 + 24) = 0u;
  v3 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_activeSearchBarObservingViewController);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_pendingSearchAction) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_guidedSearchContainerImpressionMetrics;
  v5 = sub_100752914();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_prefersLargeTitle) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_navigationAccessories) = _swiftEmptyArrayStorage;
  sub_100754644();
  __break(1u);
}

double sub_100578DD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100578DF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100578E28()
{
  v1 = sub_10074C2F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100578EEC()
{
  v1 = *(sub_10074C2F4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_10057676C(v2, v3);
}

uint64_t sub_100578F58(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100578FAC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100578FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100579050()
{
  sub_10000C620((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100579088()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100579128(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "setBackgroundColor:", a1);
  [*(*&v1[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) setBackgroundColor:a1];
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView];
  if (v3)
  {
    v4 = v3;
    [v4 setBackgroundColor:a1];
  }
}

void sub_1005791C8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView];
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount] > 0.0)
  {
    if (v2)
    {
      return;
    }

    v3 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v3)
    {
      type metadata accessor for VideoView(0);
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale];
        v7 = v0;
        v8 = -*&v0[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset];
        v9 = qword_100920650;
        v10 = v3;
        if (v9 != -1)
        {
          swift_once();
        }

        v70 = *&byte_10097E808[64];
        v71 = *&byte_10097E808[80];
        v72 = *&byte_10097E808[96];
        v73 = *&byte_10097E808[112];
        v66 = *byte_10097E808;
        v67 = *&byte_10097E808[16];
        v68 = *&byte_10097E808[32];
        v69 = *&byte_10097E808[48];
        v11 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
        v12 = sub_1004A8A4C(v5, &v66, v6, v8);
        v13 = *&v7[v1];
        if (v13)
        {
          type metadata accessor for MirrorView();
          v14 = v13;
          v15 = v12;
          v0 = v7;
          v16 = sub_100753FC4();

          v17 = *&v7[v1];
          if ((v16 & 1) == 0)
          {
            if (v17)
            {
              [*&v7[v1] removeFromSuperview];
              v17 = *&v7[v1];
            }
          }
        }

        else
        {
          v0 = v7;
          v17 = 0;
        }

        *&v0[v1] = v12;
        v53 = v12;

        v54 = *&v0[v1];
        if (v54)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          type metadata accessor for MirrorView();
          v55 = v13;
          v56 = v54;
          v57 = sub_100753FC4();

          if (v57)
          {

            v0 = v7;
LABEL_56:
            [v0 setNeedsLayout];
            return;
          }

          v0 = v7;
          v54 = *&v7[v1];
          if (v54)
          {
LABEL_42:
            [v0 addSubview:v54];

            goto LABEL_56;
          }
        }

        else
        {
          if (!v13)
          {

            goto LABEL_56;
          }

          v55 = v13;
        }

LABEL_44:
        goto LABEL_56;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v25 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale];
        v26 = -*&v0[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset];
        v27 = qword_100920650;
        v28 = v3;
        if (v27 != -1)
        {
          swift_once();
        }

        v29 = v0;
        v70 = *&byte_10097E808[64];
        v71 = *&byte_10097E808[80];
        v72 = *&byte_10097E808[96];
        v73 = *&byte_10097E808[112];
        v66 = *byte_10097E808;
        v67 = *&byte_10097E808[16];
        v68 = *&byte_10097E808[32];
        v69 = *&byte_10097E808[48];
        v30 = type metadata accessor for MirrorView();
        v31 = objc_allocWithZone(v30);
        swift_unknownObjectWeakInit();
        v32 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer;
        *&v31[v32] = [objc_allocWithZone(CALayer) init];
        *&v31[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageKVOContext] = 0;
        v31[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageObserversAdded] = 0;
        swift_unknownObjectWeakAssign();
        *&v31[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_contentsScaleFactor] = v25;
        *&v31[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_contentsVerticalOffset] = v26;
        v65.receiver = v31;
        v65.super_class = v30;
        v33 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v33 setClipsToBounds:1];
        [v33 setUserInteractionEnabled:0];
        v34 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer;
        [*&v33[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
        LODWORD(v35) = 1.0;
        [*&v33[v34] setOpacity:v35];
        [*&v33[v34] setAnchorPoint:{0.5, 0.5}];
        v36 = qword_100920648;
        v37 = *&v33[v34];
        if (v36 != -1)
        {
          swift_once();
        }

        sub_10000C518(&qword_100939AA0, qword_1007C4530);
        isa = sub_100752F34().super.isa;
        [v37 setActions:isa];

        v39 = *&v33[v34];
        v40 = objc_opt_self();
        v41 = v39;
        v42 = [v40 mainScreen];
        [v42 scale];
        v44 = v43;

        [v41 setContentsScale:v44];
        [*&v33[v34] setMasksToBounds:1];
        v45 = *&v33[v34];
        v64[4] = v70;
        v64[5] = v71;
        v64[6] = v72;
        v64[7] = v73;
        v64[0] = v66;
        v64[1] = v67;
        v64[2] = v68;
        v64[3] = v69;
        [v45 setTransform:v64];
        sub_10022A458();
        v46 = [v33 layer];

        [v46 addSublayer:*&v33[v34]];
        v47 = *&v29[v1];
        if (v47)
        {
          v48 = v47;
          v49 = v33;
          v50 = v48;
          v0 = v29;
          v51 = sub_100753FC4();

          v52 = *&v29[v1];
          if ((v51 & 1) == 0 && v52)
          {
            [*&v29[v1] removeFromSuperview];
            v52 = *&v29[v1];
          }
        }

        else
        {
          v0 = v29;
          v52 = 0;
        }

        *&v0[v1] = v33;
        v55 = v33;

        v58 = *&v0[v1];
        if (v58)
        {
          if (!v47)
          {
            goto LABEL_54;
          }

          v59 = v47;
          v60 = v58;
          v61 = sub_100753FC4();

          if (v61)
          {

            v0 = v29;
            goto LABEL_56;
          }

          v0 = v29;
          v58 = *&v29[v1];
          if (v58)
          {
LABEL_54:
            [v0 addSubview:v58];

            goto LABEL_56;
          }
        }

        else
        {
          if (!v47)
          {

            goto LABEL_44;
          }

          v59 = v47;
        }

        goto LABEL_56;
      }

      v24 = *&v0[v1];
    }

    else
    {
      v24 = 0;
    }

    *&v0[v1] = 0;

    if (*&v0[v1])
    {
      [v0 addSubview:?];
    }

    goto LABEL_56;
  }

  if (!v2)
  {
    return;
  }

  v62 = v2;
  [v62 removeFromSuperview];
  v18 = *&v0[v1];
  *&v0[v1] = 0;

  v19 = *&v0[v1];
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = v0;
  type metadata accessor for MirrorView();
  v63 = v62;
  v21 = v19;
  v22 = sub_100753FC4();

  if ((v22 & 1) == 0)
  {
    if (*&v20[v1])
    {
      [v20 addSubview:?];
      goto LABEL_16;
    }

LABEL_17:
    v23 = v62;
    goto LABEL_18;
  }

LABEL_16:
  v23 = v63;
LABEL_18:
}

uint64_t (*sub_1005799BC(uint64_t *a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  v4 = OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(v3 + v4);
  if (v5)
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
  return sub_10057B108;
}

id sub_100579B7C()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  [v0 bounds];
  v1 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount;
  v6 = sub_10010FD98(v2, v3, v4, v5, 0.0, 0.0);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] setFrame:?];
  [v0 bounds];
  MinX = CGRectGetMinX(v18);
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  MaxY = CGRectGetMaxY(v19);
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  Width = CGRectGetWidth(v20);
  result = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView];
  if (result)
  {
    return [result setFrame:{MinX, MaxY, Width, *&v0[v1]}];
  }

  return result;
}

uint64_t sub_100579D80()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_100579DE4(void *a1)
{
  sub_10057AF88(a1);
}

uint64_t (*sub_100579E30(uint64_t **a1))()
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
  v2[4] = sub_1005799BC(v2);
  return sub_10001BB78;
}

uint64_t sub_100579EA0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10057B0C0(&unk_10093ED70, v1, type metadata accessor for MediaView, &unk_1007CAD28);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_100579F14(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10057B0C0(&unk_10093ED70, v5, type metadata accessor for MediaView, &unk_1007CAD28);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_100579FA0(uint64_t *a1))()
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

  v4 = v2;
  *a1 = v2;
  sub_10057B0C0(&unk_10093ED70, v3, type metadata accessor for MediaView, &unk_1007CAD28);
  *(v4 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_10057A05C(void *a1)
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
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  sub_100009D34();
  v5 = v4;
  v6 = sub_100753FC4();

  return v6 & 1;
}

char *sub_10057A0E4(uint64_t a1)
{
  v2 = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = 0;
  v3 = &v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
  v3[8] = 1;
  *v3 = 0;
  v4 = &v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_systemBackgroundExtensionOutsets];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  v6 = *(a1 + 32);
  v4[32] = v6;
  if ((v6 & 1) == 0)
  {
    v2 = [objc_allocWithZone(UIBackgroundExtensionView) init];
    [v2 setAutomaticallyPlacesContentView:0];
  }

  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView] = v2;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for UberContentContainer();
  result = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (*&result[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView])
  {
    v8 = result;
    [result addSubview:?];
    return v8;
  }

  return result;
}

uint64_t (*sub_10057A274(uint64_t *a1))()
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    type metadata accessor for VideoView(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_10057A2F8;
}

void sub_10057A2FC(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      sub_10057B0C0(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
      v4 = v3;
      v5 = [v4 superview];
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 8);
        sub_100009D34();
        v8 = v7;
        v9 = sub_100753FC4();

        if (v9)
        {
          [v4 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *(a1 + 8);
    v16 = *(a1 + 16);
    v18 = *(v17 + v16);
    *(v17 + v16) = v3;
    v19 = v3;
    sub_10057A514(v18);

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_10057B0C0(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 8);
        sub_100009D34();
        v14 = v13;
        v15 = sub_100753FC4();

        if (v15)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v24 = *(v22 + v21);
    *(v22 + v21) = v3;
    v23 = v3;
    sub_10057A514(v24);

    v20 = v24;
  }
}

void sub_10057A514(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    type metadata accessor for VideoView(0);
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      return;
    }

    v8 = v7;
    sub_10057B0C0(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v18 = a1;
    v9 = [v8 superview];
    if (v9)
    {
      v10 = v9;
      sub_100009D34();
      v11 = v2;
      v12 = sub_100753FC4();

      if (v12)
      {
        [v8 removeFromSuperview];
      }
    }

    goto LABEL_10;
  }

  if (!a1)
  {
    v14 = v4;
    goto LABEL_12;
  }

  sub_100009D34();
  v18 = v4;
  v5 = a1;
  v6 = sub_100753FC4();

  if ((v6 & 1) == 0)
  {
LABEL_12:
    sub_1007433C4();
    if (swift_dynamicCastClass())
    {
      v15 = v4;
      sub_100743284();
    }

    [v4 setContentMode:2];
    [v4 setAccessibilityIgnoresInvertColors:1];
    v16 = *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView];
    if (v16)
    {
      v17 = v16;
      [v17 setContentView:v4];
    }

    else
    {

      [v2 addSubview:v4];
    }

    v13 = v4;
    goto LABEL_19;
  }

LABEL_10:
  v13 = v18;
LABEL_19:
}

void sub_10057A758()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for UberContentContainer();
  objc_msgSendSuper2(&v38, "layoutSubviews");
  [v0 bounds];
  MinX = CGRectGetMinX(v39);
  [v0 bounds];
  MinY = CGRectGetMinY(v40);
  v4 = OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY;
  v5 = MinY + *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY];
  [v0 bounds];
  Width = CGRectGetWidth(v41);
  [v0 bounds];
  Height = CGRectGetHeight(v42);
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView];
  if (v8)
  {
    v9 = v8;
    [v9 setFrame:{MinX, v5, Width, Height}];
    v43.origin.x = MinX;
    v43.origin.y = v5;
    v43.size.width = Width;
    v43.size.height = Height;
    v10 = CGRectGetWidth(v43);
    v44.origin.x = MinX;
    v44.origin.y = v5;
    v44.size.width = Width;
    v44.size.height = Height;
    v11 = CGRectGetHeight(v44);
    v12 = 0.0;
    if (v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_systemBackgroundExtensionOutsets + 32])
    {
      v13 = 0.0;
    }

    else
    {
      v14 = [v1 traitCollection];
      [v14 layoutDirection];

      sub_1007539B4();
      v12 = sub_10010FD98(0.0, 0.0, v10, v11, v15, v16);
      v13 = v17;
      v10 = v18;
      v11 = v19;
    }

    v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    [v20 setFrame:{v12, v13, v10, v11}];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] setFrame:{MinX, v5, Width, Height}];
  }

  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
  if (v21)
  {
    type metadata accessor for VideoView(0);
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      if (v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride + 8])
      {
        v24 = v21;
        [v1 bounds];
        MidY = CGRectGetMidY(v45);
      }

      else
      {
        MidY = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
        v26 = v21;
      }

      [v1 bounds];
      MidX = CGRectGetMidX(v46);
      v28 = MidY - *&v1[v4];
      v29 = v23 + qword_100982240;
      v30 = *(v23 + qword_100982240);
      v31 = *(v23 + qword_100982240 + 8);
      v32 = *(v23 + qword_100982240 + 16);
      *v29 = MidX;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0;
      if ((v32 & 1) != 0 || (MidX == v30 ? (v33 = v28 == v31) : (v33 = 0), !v33))
      {
        sub_10051A1A4();
      }

      v34 = *&v1[v4];
      v35 = (v23 + qword_100982238);
      v36 = *(v23 + qword_100982238);
      v37 = *(v23 + qword_100982238 + 16);
      *v35 = 0;
      v35[1] = 0;
      v35[2] = v34;
      v35[3] = 0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqzq_f64(v36), vceqq_f64(v37, v34)))) & 1) == 0)
      {
        sub_10051B68C();
      }
    }
  }
}

id sub_10057AB0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberContentContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10057ABB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_10057AC0C(void *a1)
{
  sub_10057AF88(a1);
}

uint64_t (*sub_10057AC44(uint64_t **a1))()
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
  v2[4] = sub_10057A274(v2);
  return sub_1000181A8;
}

uint64_t sub_10057ACB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10057AD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10057AD74(uint64_t *a1, uint64_t a2))()
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

void sub_10057AF88(void *a1)
{
  if (a1)
  {
    sub_10057B0C0(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v3 = a1;
    v4 = [v3 superview];
    if (v4)
    {
      v5 = v4;
      sub_100009D34();
      v6 = v1;
      v7 = sub_100753FC4();

      if (v7)
      {
        [v3 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = a1;
  v8 = a1;
  sub_10057A514(v9);
}

uint64_t sub_10057B0C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata accessor for ProductRatingsView(uint64_t a1)
{
  result = qword_10093EDB0;
  if (!qword_10093EDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10057B1C0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009210E0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v30 = sub_10000D0FC(v4, qword_100980FD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v31 = v5 + 16;
  v6(v3, v30, v4);
  v23 = enum case for FontSource.useCase(_:);
  v28 = v1[13];
  v28(v3);
  v29 = sub_100750B04();
  *(&v43 + 1) = v29;
  *v44 = &protocol witness table for StaticDimension;
  sub_10000D134(&v42);
  *(&v37 + 1) = v0;
  *&v38[0] = &protocol witness table for FontSource;
  v7 = sub_10000D134(&v36);
  v8 = v1[2];
  v8(v7, v3, v0);
  sub_100750B14();
  v22 = v1[1];
  v22(v3, v0);
  *&v44[8] = xmmword_1007CAD80;
  v9 = v30;
  v24 = v4;
  v30 = v6;
  v6(v3, v9, v4);
  v10 = v23;
  (v28)(v3, v23, v0);
  *(&v37 + 1) = v29;
  *&v38[0] = &protocol witness table for StaticDimension;
  sub_10000D134(&v36);
  *(&v34 + 1) = v0;
  *&v35[0] = &protocol witness table for FontSource;
  v11 = sub_10000D134(&v33);
  v25 = v8;
  v26 = v1 + 2;
  v8(v11, v3, v0);
  v12 = v22;
  sub_100750B14();
  v27 = v1 + 1;
  v12(v3, v0);
  if (qword_1009210F0 != -1)
  {
    swift_once();
  }

  v13 = v24;
  v14 = sub_10000D0FC(v24, qword_100981008);
  v30(v3, v14, v13);
  v15 = v28;
  (v28)(v3, v10, v0);
  v16 = v10;
  if (qword_100921898 != -1)
  {
    swift_once();
  }

  v17 = qword_1009825D0;
  *&v39 = sub_10074B2B4();
  *(&v39 + 1) = sub_10057CA64(&unk_10093F5D0, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  sub_10000D134(v38 + 1);
  v18 = v17;
  sub_10074B2A4();
  v40 = xmmword_1007CAD90;
  v41 = 0x4069C00000000000;
  if (qword_1009210E8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v13, qword_100980FF0);
  v30(v3, v19, v13);
  (v15)(v3, v16, v0);
  *(&v34 + 1) = v29;
  *&v35[0] = &protocol witness table for StaticDimension;
  sub_10000D134(&v33);
  v32[3] = v0;
  v32[4] = &protocol witness table for FontSource;
  v20 = sub_10000D134(v32);
  v25(v20, v3, v0);
  sub_100750B14();
  v12(v3, v0);
  *(v35 + 8) = xmmword_1007CADA0;
  xmmword_1009824D8 = v42;
  unk_1009824E8 = v43;
  xmmword_1009824F8 = *v44;
  unk_100982540 = v38[1];
  unk_100982550 = v39;
  unk_100982560 = v40;
  unk_100982510 = v36;
  *(&v35[1] + 1) = 0x4077000000000000;
  qword_100982508 = *&v44[16];
  qword_100982570 = v41;
  unk_100982520 = v37;
  unk_100982530 = v38[0];
  xmmword_100982598 = v35[0];
  unk_1009825A8 = v35[1];
  result = *&v34;
  xmmword_100982578 = v33;
  unk_100982588 = v34;
  return result;
}

double sub_10057B738()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&qword_100923C40, &qword_1007B5CB0);
  sub_100039C50(v7, qword_1009825B8);
  sub_10000D0FC(v7, qword_1009825B8);
  if (qword_1009210E8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100980FF0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_1009210E0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_100980FD8);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
  return result;
}

char *sub_10057B948(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v80 = sub_100750E94();
  v10 = *(v80 - 8);
  __chkstk_darwin(v80);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v4[qword_10093EDA8] = 0;
  sub_100750614();
  *&v4[qword_10093ED80] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = type metadata accessor for RatingView();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating] = 0;
  *&v15[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor] = 0;
  v16 = &v15[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding];
  *v16 = 0;
  v16[8] = 1;
  *&v15[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_100921700 != -1)
  {
    swift_once();
  }

  v17 = qword_10093B668;
  *&v15[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor] = qword_10093B668;
  v15[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starSize] = 0;
  *v16 = 0;
  v16[8] = 1;
  v15[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_useCase] = 1;
  v18 = type metadata accessor for StarRow();
  v19 = objc_allocWithZone(v18);
  v20 = v17;
  *&v15[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView] = sub_1004FC838(5, 1, 0, 0, 1, 0, 1);
  v15[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars] = 0;
  v21 = objc_allocWithZone(v18);
  *&v15[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView] = sub_1004FC838(5, 0, 0, 0, 1, 0, 1);
  v83.receiver = v15;
  v83.super_class = v14;
  v22 = objc_msgSendSuper2(&v83, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1004FA474();
  v23 = OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView;
  v24 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView];
  v25 = *&v24[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating];
  *&v24[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating] = *&v22[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating];
  v26 = v24;
  sub_1004FAF60(v25);

  if (*&v22[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView])
  {
    [v22 addSubview:?];
  }

  [v22 addSubview:{*&v22[v23], v80}];

  *&v5[qword_10093ED88] = v22;
  sub_100750E84();
  if (qword_1009210F0 != -1)
  {
    swift_once();
  }

  v27 = sub_100750534();
  sub_10000D0FC(v27, qword_100981008);
  sub_100750E54();
  v28 = *(v10 + 8);
  v29 = v80;
  v28(v12, v80);
  *&v5[qword_10093ED90] = sub_100750604();
  sub_100750E84();
  sub_100750E54();
  v28(v12, v29);
  *&v5[qword_10093ED98] = sub_100750604();
  *&v5[qword_10093EDA0] = [objc_allocWithZone(type metadata accessor for ProductRatingsHistogramView()) init];
  v82.receiver = v5;
  v82.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v82, "initWithFrame:", a1, a2, a3, a4);
  v31 = qword_10093ED80;
  v32 = *&v30[qword_10093ED80];
  sub_10000D198();
  v33 = v30;
  v34 = v32;
  v35 = sub_100753DD4();
  [v34 setTextColor:v35];

  v36 = *&v30[v31];
  v37 = v33;
  [v37 addSubview:v36];
  v38 = qword_10093ED88;
  v39 = *&v37[qword_10093ED88];
  v40 = sub_100753DD4();
  v41 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor];
  *&v39[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor] = v40;
  v42 = v40;
  if ((sub_100753FC4() & 1) == 0)
  {
    sub_1004FA474();
  }

  v43 = *&v37[v38];
  v44 = sub_100753DE4();
  v45 = sub_100753DD4();
  v46 = sub_100753DE4();
  v47.super.isa = sub_100753DD4();
  v48.super.isa = v44;
  v49.super.isa = v45;
  v50.super.isa = v46;
  v51.super.isa = sub_100753F14(v48, v49, v50, v47).super.isa;
  isa = v51.super.isa;
  v53 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor];
  *&v43[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor] = v51;
  if (v53)
  {
    v54 = v51.super.isa;
    v55 = v53;
    v56 = sub_100753FC4();

    if (v56)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v57 = v51.super.isa;
    v55 = 0;
  }

  sub_1004FA474();
  v54 = isa;
LABEL_14:

  v58 = *&v37[v38];
  v59 = [v37 traitCollection];

  v60 = [v59 accessibilityContrast];
  v61 = v60 == 0;
  v62 = v58[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars];
  v58[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars] = v61;
  if ((v61 ^ v62))
  {
    v63 = *&v58[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView];
    if (v63)
    {
      v64 = *(v63 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_filled);
      *(v63 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_filled) = v61;
      if (((v60 == 0) ^ v64))
      {
        sub_1004FBA08();
      }
    }
  }

  v65 = qword_1009218A0;
  v66 = *&v37[v38];
  if (v65 != -1)
  {
    swift_once();
  }

  [v66 setMaximumContentSizeCategory:qword_1009825D8];

  [v37 addSubview:*&v37[v38]];
  v67 = qword_10093ED90;
  v68 = qword_100921898;
  v69 = *&v37[qword_10093ED90];
  if (v68 != -1)
  {
    swift_once();
  }

  v70 = qword_1009825D0;
  [v69 setMaximumContentSizeCategory:qword_1009825D0];

  v71 = *&v37[v67];
  v84._object = 0x800000010077CE70;
  v84._countAndFlagsBits = 0xD000000000000012;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  sub_10074B194(v84, 5, v85);
  v72 = sub_100753064();

  [v71 setText:v72];

  v73 = *&v37[v67];
  v74 = sub_100753DF4();
  [v73 setTextColor:v74];

  [v37 addSubview:*&v37[v67]];
  v75 = qword_10093ED98;
  [*&v37[qword_10093ED98] setMaximumContentSizeCategory:v70];
  v76 = *&v37[v75];
  v77 = sub_100753DF4();
  [v76 setTextColor:v77];

  [v37 addSubview:*&v37[v75]];
  [v37 addSubview:*&v37[qword_10093EDA0]];
  sub_10057C248();
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1007A6580;
  *(v78 + 32) = sub_1007516F4();
  *(v78 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v78 + 48) = sub_1007517B4();
  *(v78 + 56) = &protocol witness table for UITraitAccessibilityContrast;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v37;
}

void sub_10057C248()
{
  v19 = sub_100750534();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750E94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  sub_10057C5A0();
  v18[1] = *&v0[qword_10093ED80];
  sub_100750E84();
  if (qword_100921890 != -1)
  {
    swift_once();
  }

  v9 = sub_10000C518(&qword_100923C40, &qword_1007B5CB0);
  sub_10000D0FC(v9, qword_1009825B8);
  v20 = v0;
  v10 = v0;
  sub_100743464();

  sub_100750E54();
  (*(v1 + 8))(v3, v19);
  (*(v5 + 8))(v7, v4);
  sub_1007505F4();
  v11 = *&v10[qword_10093ED88];
  v12 = [v10 traitCollection];
  v13 = [v12 accessibilityContrast];

  v14 = v13 == 0;
  v15 = *(v11 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars);
  *(v11 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars) = v14;
  if (v14 != v15)
  {
    v16 = *(v11 + OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView);
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_filled);
      *(v16 + OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_filled) = v14;
      if (((v13 == 0) ^ v17))
      {
        sub_1004FBA08();
      }
    }
  }
}

void sub_10057C538(uint64_t a1)
{
  *(a1 + qword_10093EDA8) = 0;
  sub_100754644();
  __break(1u);
}

id sub_10057C5A0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007537D4();

  v4 = qword_10093EDA8;
  v5 = v1[qword_10093EDA8] | v3 ^ 1;
  [*&v1[qword_10093ED88] setHidden:v5 & 1];
  [*&v1[qword_10093EDA0] setHidden:(v5 & 1) == 0];
  v6 = *&v1[qword_10093ED90];
  v7 = (v1[v4] & v3 & 1) == 0;

  return [v6 setHidden:v7];
}

id sub_10057C670@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (qword_100921888 != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for ProductRatingsLayout;
  a1[4] = sub_10004B790();
  v4 = swift_allocObject();
  *a1 = v4;
  sub_10004B858(&xmmword_1009824D8, v4 + 16);
  v5 = *(v2 + qword_10093ED80);
  v6 = sub_100750614();
  *(v4 + 264) = v6;
  *(v4 + 272) = &protocol witness table for UILabel;
  *(v4 + 240) = v5;
  type metadata accessor for RatingView();
  v7 = v5;
  sub_100750434();
  v8 = *(v2 + qword_10093ED90);
  *(v4 + 344) = v6;
  *(v4 + 352) = &protocol witness table for UILabel;
  *(v4 + 320) = v8;
  v9 = *(v2 + qword_10093ED98);
  *(v4 + 384) = v6;
  *(v4 + 392) = &protocol witness table for UILabel;
  *(v4 + 360) = v9;
  v13 = *(v2 + qword_10093EDA0);
  *(v4 + 424) = type metadata accessor for ProductRatingsHistogramView();
  *(v4 + 432) = sub_10057CA64(&qword_10093EE18, type metadata accessor for ProductRatingsHistogramView, &unk_1007A8324);
  *(v4 + 400) = v13;
  *(v4 + 440) = *(v2 + qword_10093EDA8);
  v10 = v8;
  v11 = v9;

  return v13;
}

void sub_10057C86C()
{
  v1 = *(v0 + qword_10093EDA0);
}

void sub_10057C8DC(uint64_t a1)
{
  v2 = *(a1 + qword_10093EDA0);
}

unint64_t sub_10057C974()
{
  result = qword_10093EE00;
  if (!qword_10093EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EE00);
  }

  return result;
}

uint64_t sub_10057C9EC()
{
  sub_10000C620(v0 + 2);
  sub_10000C620(v0 + 9);
  sub_10000C620(v0 + 14);
  sub_10000C620(v0 + 22);
  sub_10000C620(v0 + 30);
  sub_10000C620(v0 + 35);
  sub_10000C620(v0 + 40);
  sub_10000C620(v0 + 45);
  sub_10000C620(v0 + 50);

  return _swift_deallocObject(v0, 441, 7);
}

uint64_t sub_10057CA64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10057CAAC()
{
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007AB1A0;
  v1 = sub_100751624();
  *(v0 + 32) = v1;
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v0 + 48) = sub_1007519E4();
  *(v0 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v0 + 64) = sub_100751544();
  *(v0 + 72) = &protocol witness table for UITraitLayoutDirection;
  *(v0 + 80) = v1;
  *(v0 + 88) = &protocol witness table for UITraitUserInterfaceStyle;
  result = sub_1007516F4();
  *(v0 + 96) = result;
  *(v0 + 104) = &protocol witness table for UITraitHorizontalSizeClass;
  qword_10093EE20 = v0;
  return result;
}

double sub_10057CB60()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_1009825F0);
  sub_10000D0FC(v0, qword_1009825F0);
  sub_100750504();
  return result;
}

__n128 sub_10057CBB4()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_100982610 = *&UIEdgeInsetsZero.top;
  *&qword_100982620 = v1;
  return result;
}

uint64_t sub_10057CBD0()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_10093EE28);
  sub_10000D0FC(v0, qword_10093EE28);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10057CD34(uint64_t a1)
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

uint64_t sub_10057D31C()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_10093EE40);
  sub_10000D0FC(v0, qword_10093EE40);
  if (qword_1009218C0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10093EE28);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10057D480(uint64_t a1)
{
  v2 = v1;
  v113 = a1;
  v110[1] = swift_getObjectType();
  v3 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v3 - 8);
  v5 = v110 - v4;
  v6 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v6 - 8);
  v8 = v110 - v7;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_displayModeTransitionCoordinator] = 0;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageScrollView;
  *&v1[v9] = [objc_allocWithZone(UIScrollView) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_shadowView;
  sub_100743034();
  *&v1[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageContainerView;
  sub_100746ED4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView;
  *&v1[v13] = [objc_allocWithZone(type metadata accessor for AppPromotionMediaContainerView(0)) init];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView;
  v15 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageContentView(0));
  *&v1[v14] = sub_1006220F8(0);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_learnMoreView;
  v17 = objc_allocWithZone(type metadata accessor for AppPromotionLearnMoreView(0));
  *&v1[v16] = sub_1006CE724(0);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_separatorView;
  type metadata accessor for SeparatorView(0);
  *&v2[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *&v2[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_borderView;
  *&v2[v20] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaReplicationView] = 0;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  *&v2[v21] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_videoBackgroundColor] = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_haveFlashedScrollIndicators] = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_isCollapsing] = 0;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
  v23 = enum case for MediaOverlayStyle.matchSystem(_:);
  v24 = sub_100746BA4();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v2[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_includeBorderInDarkMode] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_defaultPageMargin] = 0;
  v25 = [objc_opt_self() buttonWithType:7];
  sub_1007541D4();
  v26 = sub_1007541F4();
  (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
  sub_100754224();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_closeButton] = v25;
  v27 = type metadata accessor for AppPromotionDetailPageView(0);
  v115.receiver = v2;
  v115.super_class = v27;
  v28 = v25;
  v29 = objc_msgSendSuper2(&v115, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v29;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v33 setClipsToBounds:0];
  v34 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageScrollView;
  [*(v33 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageScrollView) setClipsToBounds:0];
  [*(v33 + v34) setContentInsetAdjustmentBehavior:2];
  [v33 addSubview:*(v33 + v34)];
  v35 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_shadowView;
  v36 = qword_1009204D0;
  v37 = *(v33 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_shadowView);
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_10074F0C4();
  v39 = sub_10000D0FC(v38, qword_10097E230);
  v40 = *(v38 - 8);
  (*(v40 + 16))(v5, v39, v38);
  (*(v40 + 56))(v5, 0, 1, v38);
  sub_100743014();

  v41 = *(v33 + v35);
  sub_100742FF4();

  [*(v33 + v34) addSubview:*(v33 + v35)];
  v42 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageContainerView;
  [*(v33 + v34) addSubview:*(v33 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageContainerView)];
  v43 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView;
  *(*(v33 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_delegate + 8) = &off_10087BA58;
  swift_unknownObjectWeakAssign();
  [*(v33 + v42) addSubview:*(v33 + v43)];
  v44 = *(v33 + v42);
  v112 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView;
  [v44 addSubview:*(v33 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView)];
  v45 = *(v33 + v42);
  v110[0] = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_learnMoreView;
  [v45 addSubview:*(v33 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_learnMoreView)];
  v46 = *(v33 + v42);
  v111 = v28;
  [v46 addSubview:v28];
  v47 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_separatorView;
  v48 = *(v33 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_separatorView);
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 labelColor];
  v52 = [v51 colorWithAlphaComponent:0.5];

  v53 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineColor];
  *&v50[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineColor] = v52;
  v54 = v52;

  [*&v50[OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_lineView] setBackgroundColor:v54];
  [*(v33 + v42) addSubview:*(v33 + v47)];
  v55 = *(v33 + v42);
  v56 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_lockupView;
  [v55 addSubview:*(v33 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_lockupView)];
  v57 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_borderView;
  v58 = *(v33 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_borderView);
  v59 = [v49 whiteColor];
  v60 = [v59 colorWithAlphaComponent:0.2];

  sub_100746E64();
  v61 = *(v33 + v57);
  sub_100746E74();

  [*(v33 + v57) setUserInteractionEnabled:0];
  [*(v33 + v57) setHidden:1];
  [*(v33 + v34) addSubview:*(v33 + v57)];
  v62 = v112;
  v63 = *&v112[v33];
  sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v63;
  v65 = sub_100753FF4();
  sub_100621074(v65);

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = *&v62[v33];
  v68 = (*&v67[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_lockupTapBlock);
  v69 = *v68;
  v70 = v68[1];
  *v68 = sub_100582110;
  v68[1] = v66;
  swift_retain_n();
  v71 = v67;
  sub_1000164A8(v69, v70);
  sub_10060792C();

  v72 = *(v33 + v56);
  v73 = &v72[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_lockupTapBlock];
  v74 = *&v72[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_lockupTapBlock];
  v75 = *&v72[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_lockupTapBlock + 8];
  *v73 = sub_100582110;
  v73[1] = v66;

  v76 = v72;
  v77 = v110[0];
  v78 = v76;
  sub_1000164A8(v74, v75);
  sub_10060792C();

  v79 = *(v33 + v77);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = v79;
  v81 = sub_100753FF4();
  sub_1006CE650(v81);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v82 = v33;
  v83 = sub_100753FF4();
  v84 = v111;
  [v111 addAction:v83 forControlEvents:64];

  if (qword_1009218A8 != -1)
  {
    swift_once();
  }

  sub_100753D44();
  swift_unknownObjectRelease();
  v85 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  [*&v82[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_dismissTapGestureRecognizer] addTarget:v82 action:"dismissTapGestureRecognized"];
  v86 = *&v82[v85];
  [v86 setDelegate:v82];

  [v82 addGestureRecognizer:*&v82[v85]];
  sub_1005809B8(0);
  v87 = *&v112[v33];
  v88 = *(v33 + v77);
  sub_10074B184();
  sub_100752764();
  v89 = v87;
  v90 = v88;
  sub_100752D34();
  v91 = v114;
  type metadata accessor for AppPromotionDisplayModeTransitionCoordinator();
  v92 = swift_allocObject();
  *(v92 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v92 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v92 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v92 + 16) = 0;
  swift_unknownObjectWeakAssign();
  *(v92 + 40) = &off_10087E6C8;
  swift_unknownObjectWeakAssign();
  *(v92 + 56) = &off_100881128;
  swift_unknownObjectWeakAssign();
  *(v92 + 64) = v91;
  Strong = swift_unknownObjectWeakLoadStrong();
  v112 = v91;
  if (Strong)
  {
    v94 = Strong;
    v95 = *(v92 + 40);
    ObjectType = swift_getObjectType();
    v97 = v91;
    v98 = ObjectType;
    v99 = *(v95 + 8);
    v100 = v89;
    v101 = *(v99 + 16);
    v102 = v97;
    v103 = v99;
    v84 = v111;
    v101(0, v98, v103);
    v89 = v100;
  }

  else
  {
    v104 = v91;
  }

  v105 = swift_unknownObjectWeakLoadStrong();
  if (v105)
  {
    v106 = v105;
    v107 = *(v92 + 56);
    v108 = swift_getObjectType();
    (*(*(v107 + 8) + 16))(0, v108);
  }

  sub_10004490C(0);

  *&v82[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_displayModeTransitionCoordinator] = v92;

  return v82;
}

void sub_10057E130(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004DA240();
      swift_unknownObjectRelease();
    }

    v4 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_displayModeTransitionCoordinator];
    if (v4)
    {
      v5 = *(v4 + 16);
      *(v4 + 16) = 1;

      sub_10004490C((v5 & 1) == 0);
    }
  }
}

void sub_10057E1E0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004D9B64();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10057E25C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004DA24C();
      swift_unknownObjectRelease();
    }

    v4 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_displayModeTransitionCoordinator];
    if (v4)
    {
      v5 = *(v4 + 16);
      *(v4 + 16) = 0;

      sub_10004490C(v5);
    }
  }
}

void sub_10057E308(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000C8E14();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004D9D8C();
      swift_unknownObjectRelease();
    }
  }
}

void sub_10057E3C0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100746BA4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v11 = v4[2];
  v11(v9, v1 + v10, v3);
  sub_100582060(&qword_10093B418, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
  v12 = sub_100753014();
  v29 = v4[1];
  v29(v9, v3);
  if ((v12 & 1) == 0)
  {
    v13 = v11;
    v27 = v11;
    v14 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView);
    v13(v9, v2 + v10, v3);
    v15 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_mediaOverlayStyle;
    swift_beginAccess();
    v28 = v10;
    v26 = v4[3];
    v26(&v14[v15], v9, v3);
    swift_endAccess();
    v16 = v27;
    v27(v6, &v14[v15], v3);
    v17 = sub_100746B84();
    v18 = v6;
    v19 = v29;
    v29(v18, v3);
    [v14 setOverrideUserInterfaceStyle:v17];
    v19(v9, v3);
    v20 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView);
    v16(v9, v2 + v28, v3);
    v21 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
    swift_beginAccess();
    v22 = v26;
    v26((v20 + v21), v9, v3);
    swift_endAccess();
    sub_1006229FC();
    v23 = v29;
    v29(v9, v3);
    v24 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_learnMoreView);
    v27(v9, v2 + v28, v3);
    v25 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_mediaOverlayStyle;
    swift_beginAccess();
    v22(v24 + v25, v9, v3);
    swift_endAccess();
    sub_1006CEE34();
    v23(v9, v3);
    sub_100580F24();
    sub_100580E0C(0);
  }
}

void (*sub_10057E74C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView);
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_videoView;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10057E7B4;
}

void sub_10057E7B4(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100582060(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      v8 = v5;
      v9 = [v7 superview];
      if (v9)
      {
        v10 = v9;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v11 = v4;
        v12 = sub_100753FC4();

        v13 = *(a1 + 16);
        if (v12)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }

          [*(v13 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v5;
    }

    v24 = *(a1 + 8);
    swift_unknownObjectWeakAssign();
    sub_1000EDDDC();
    v25 = [v24 traitCollection];
    LOBYTE(v24) = sub_1007537E4();

    v26 = *(a1 + 8);
    if (v24)
    {
      sub_1005801F8();
    }

    [v26 setNeedsLayout];

    v27 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_100582060(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      v31 = v5;
      v16 = [v7 superview];
      if (v16)
      {
        v17 = v16;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v18 = v4;
        v19 = sub_100753FC4();

        v20 = *(a1 + 16);
        if (v19)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }

          [*(v20 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }

      v23 = v31;
    }

    else
    {
      v23 = v5;
    }

    v28 = *(a1 + 8);
    v32 = v23;
    swift_unknownObjectWeakAssign();
    sub_1000EDDDC();

    v29 = [v28 traitCollection];
    LOBYTE(v28) = sub_1007537E4();

    v30 = *(a1 + 8);
    if (v28)
    {
      sub_1005801F8();
    }

    [v30 setNeedsLayout];
    v27 = v32;
  }
}

uint64_t sub_10057EAEC()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for AppPromotionDetailPageView(0);
  objc_msgSendSuper2(&v22, "layoutSubviews");
  [v0 bounds];
  result = CGRectIsEmpty(v23);
  if ((result & 1) == 0)
  {
    v3 = [v0 traitCollection];
    v4 = sub_1007537E4();

    if (v4)
    {
      sub_10057F114();
    }

    else
    {
      sub_10057ED9C();
    }

    v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageScrollView];
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageContainerView] bounds];
    [v5 setContentSize:{v6, v7}];
    [v1 bounds];
    [v5 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v8 = CGRectGetWidth(v24) * 0.5;
    [v1 bounds];
    [v5 setCenter:{v8, CGRectGetHeight(v25) * 0.5}];
    v9 = [v1 traitCollection];
    v10 = sub_1007537E4();

    if (v10)
    {
      sub_10058012C();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = [v1 traitCollection];
      v14 = sub_1007537D4();

      if (v14)
      {
        [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_closeButton] frame];
        v16 = v15;
        [v12 frame];
        v18.f64[0] = v17 + -53.0;
        v19 = &v12[qword_100982238];
        v20 = *&v12[qword_100982238];
        v21 = *&v12[qword_100982238 + 16];
        *v19 = xmmword_1007C6E90;
        *(v19 + 2) = *&v18.f64[0];
        *(v19 + 3) = v16 + 25.0;
        v18.f64[1] = v16 + 25.0;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_1007C6E90, v20), vceqq_f64(v18, v21)))) & 1) == 0)
        {
          sub_10051B68C();
        }
      }
    }

    sub_10057F46C();
    return sub_10057FD00();
  }

  return result;
}

id sub_10057ED9C()
{
  v1 = v0;
  [v0 bounds];
  Height = CGRectGetHeight(v33);
  if (qword_1009218B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1007504F4();
  sub_10000D0FC(v3, qword_1009825F0);
  [v0 bounds];
  CGRectGetWidth(v34);
  sub_1007504C4();
  if (v4 >= Height)
  {
    v4 = Height;
  }

  v5 = ceil(v4);
  [v0 bounds];
  Width = CGRectGetWidth(v35);
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView];
  v8 = type metadata accessor for AppPromotionMediaContainerView(0);
  v32.receiver = v7;
  v32.super_class = v8;
  objc_msgSendSuper2(&v32, "frame");
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v31.receiver = v7;
  v31.super_class = v8;
  objc_msgSendSuper2(&v31, "setFrame:", 0.0, 0.0, Width, v5);
  sub_1000EE300(v10, v12, v14, v16);
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_learnMoreView] setFrame:{0.0, 0.0, Width, v5}];
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView];
  sub_100622FBC(v30, v5);
  sub_100623208(v30, v28);
  v18 = [v17 traitCollection];
  if (sub_1007537D4())
  {
    v19 = sub_100753804();

    if (v19)
    {
      v20 = *v28;
      sub_10060BBE0(v18, v29, v26);
      sub_10000C888(v26, v27);
      sub_100751254();
      v22 = v20 + v21;
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (sub_1007537D4())
  {
    sub_100609CEC(v18, v26, 0.0, 0.0, Width, v5);
  }

  else
  {
    sub_10060A6F4(v18, v26, 0.0, 0.0, Width, v5);
  }

  sub_10000C888(v26, v27);
  sub_100751254();
  Width = v23;
  v22 = v24;
LABEL_13:
  sub_10000C620(v26);

  sub_100582178(v28);
  sub_1005821CC(v30);
  [v17 setFrame:{0.0, 0.0, Width, v22}];
  [v17 setNeedsLayout];
  [v17 layoutIfNeeded];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_shadowView] setFrame:{0.0, 0.0, Width, v22}];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageContainerView] setFrame:{0.0, 0.0, Width, v22}];
  return [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_borderView] setFrame:{0.0, 0.0, Width, v22}];
}

id sub_10057F114()
{
  v1 = v0;
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_shadowView] setFrame:{0.0, 0.0}];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageContainerView] setFrame:{0.0, 0.0, v3, v5}];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_borderView] setFrame:{0.0, 0.0, v3, v5}];
  if (qword_1009218B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1007504F4();
  sub_10000D0FC(v6, qword_1009825F0);
  [v0 bounds];
  CGRectGetHeight(v42);
  sub_1007504B4();
  v39 = ceil(v7);
  [v0 bounds];
  Height = CGRectGetHeight(v43);
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView];
  v9 = [v1 traitCollection];
  [v1 bounds];
  sub_100753AA4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = type metadata accessor for AppPromotionMediaContainerView(0);
  v41.receiver = v8;
  v41.super_class = v18;
  objc_msgSendSuper2(&v41, "frame");
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v40.receiver = v8;
  v40.super_class = v18;
  objc_msgSendSuper2(&v40, "setFrame:", v11, v13, v15, v17);
  sub_1000EE300(v20, v22, v24, v26);
  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  v44.size.width = v39;
  v44.size.height = Height;
  CGRectGetMaxX(v44);
  [v1 bounds];
  CGRectGetWidth(v45);
  v46.origin.x = 0.0;
  v46.origin.y = 0.0;
  v46.size.width = v39;
  v46.size.height = Height;
  CGRectGetWidth(v46);
  [v1 bounds];
  CGRectGetHeight(v47);
  v27 = [v1 traitCollection];
  [v1 bounds];
  sub_100753AA4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView];
  [v36 setFrame:{v29, v31, v33, v35}];
  [v36 setNeedsLayout];
  [v36 layoutIfNeeded];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_learnMoreView] setFrame:{v29, v31, v33, v35}];
  result = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaReplicationView];
  if (result)
  {
    return [result setFrame:{v29, v31, v33, v35}];
  }

  return result;
}

uint64_t sub_10057F46C()
{
  v1 = v0;
  v80 = sub_100751374();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v3 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1007479B4();
  v4 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v73 - v7;
  v8 = sub_100747064();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  *&v85 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v73 - v13;
  v15 = [v0 traitCollection];
  sub_1007537D4();

  v83 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView];
  [v83 frame];
  sub_100753B14();
  v82 = v16;
  v81 = v17;
  v19 = v18;
  v21 = v20;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_lockupView];
  if (qword_100921A60 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v8, qword_100982960);
  v24 = type metadata accessor for SubscriptionLockupView();
  v90.receiver = v22;
  v90.super_class = v24;
  v84 = v24;
  objc_msgSendSuper2(&v90, "layoutMargins");
  v26 = v25;
  v28 = v27;
  v29 = [v22 traitCollection];
  v86 = v9;
  v30 = *(v9 + 16);
  v79 = v8;
  v77 = v30;
  v30(v14, v23, v8);
  v31 = sub_100746FD4();
  if ((v33 & 1) == 0 && ((v31 | v32) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v34 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v34 = qword_10093FF58;
    }

    v35 = v76;
    v36 = sub_10000D0FC(v76, v34);
    v37 = v74;
    (*(v4 + 16))(v74, v36, v35);
    v38 = v75;
    (*(v4 + 32))(v75, v37, v35);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v4 + 8))(v38, v35);
  }

  sub_100746F14();
  v76 = v39;
  v41 = v40;

  v42 = *(v86 + 8);
  v43 = v79;
  v86 += 8;
  v42(v14, v79);
  v44 = v28 + v26 + v41;
  v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_separatorView];
  v46 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  v47 = v78;
  v48 = v80;
  (*(v78 + 16))(v3, &v45[v46], v80);
  sub_100751334();
  v50 = v49;
  (*(v47 + 8))(v3, v48);
  v51 = [v1 traitCollection];
  v52 = v19;
  if (sub_100753804())
  {
    v53 = v85;
    if (qword_1009218C8 != -1)
    {
      swift_once();
    }

    v54 = qword_10093EE40;
  }

  else
  {
    v53 = v85;
    if (qword_1009218C0 != -1)
    {
      swift_once();
    }

    v54 = qword_10093EE28;
  }

  v55 = sub_10000D0FC(v43, v54);
  v77(*&v53, v55, v43);

  sub_100746F34();
  v57 = (v44 - v56) * 0.5;
  v58 = [v1 traitCollection];
  v59 = sub_100753804();

  if (v59)
  {
    v60 = 18.0;
  }

  else
  {
    v60 = 18.0 - v57;
  }

  v61 = v21 + v57;
  v62 = v50 + v44 + v60;
  v85 = v44;
  v63 = v50;
  v64 = v82;
  v91.origin.x = v82;
  v65 = v81;
  v91.origin.y = v81;
  v91.size.width = v52;
  v91.size.height = v61;
  MinX = CGRectGetMinX(v91);
  v92.origin.x = v64;
  v92.origin.y = v65;
  v92.size.width = v52;
  v92.size.height = v61;
  [v45 setFrame:{MinX, CGRectGetMaxY(v92) - v62, v52, v63}];
  v93.origin.x = v64;
  v93.origin.y = v65;
  v93.size.width = v52;
  v93.size.height = v61;
  v67 = CGRectGetMinX(v93);
  [v45 frame];
  [v22 setFrame:{v67, v60 + CGRectGetMaxY(v94), *&v76, v85}];
  v68 = v83;
  [v45 setHidden:{objc_msgSend(*&v83[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_separatorView], "isHidden") ^ 1}];
  [v22 setHidden:{objc_msgSend(*&v68[OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_lockupView], "isHidden") ^ 1}];
  if (qword_1009218B8 != -1)
  {
    swift_once();
  }

  v69 = v84;
  v89.receiver = v22;
  v89.super_class = v84;
  objc_msgSendSuper2(&v89, "setLayoutMargins:", xmmword_100982610, *&qword_100982620, unk_100982628);
  v70 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView];
  v88.receiver = v22;
  v88.super_class = v69;
  objc_msgSendSuper2(&v88, "layoutMargins");
  [v70 setLayoutMargins:?];
  v71 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
  v87.receiver = v22;
  v87.super_class = v69;
  objc_msgSendSuper2(&v87, "layoutMargins");
  [v71 setLayoutMargins:?];
  return (v42)(*&v53, v43);
}

id sub_10057FD00()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1007537D4();

  [v1 bounds];
  CGRectGetMaxX(v15);
  [v1 bounds];
  CGRectGetMinY(v16);
  v3 = [v1 traitCollection];
  [v1 bounds];
  sub_100753AA4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_closeButton];

  return [v12 setFrame:{v5, v7, v9, v11}];
}

id sub_10057FE30()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007537E4();

  if (v3)
  {
    sub_10057F114();
  }

  else
  {
    sub_10057ED9C();
  }

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView] layoutIfNeeded];
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageScrollView];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageContainerView] bounds];

  return [v4 setContentSize:{v5, v6}];
}

void sub_100580030()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators;
  if ((*(v1 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent;
    [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent) contentSize];
    v5 = v4;
    [*(v1 + v3) bounds];
    if (CGRectGetHeight(v10) < v5)
    {
      [*(v1 + v3) flashScrollIndicators];
      *(v1 + v2) = 1;
    }
  }

  v6 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageScrollView);
    [v7 contentSize];
    v9 = v8;
    [v7 bounds];
    if (CGRectGetHeight(v11) < v9)
    {
      [v7 flashScrollIndicators];
      *(v0 + v6) = 1;
    }
  }
}

id sub_10058012C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007537D4();

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView];
    v6 = OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent;
    [*(v5 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_primaryContent) contentSize];
    v8 = v7;
    [*(v5 + v6) bounds];
    v4 = CGRectGetHeight(v12) >= v8;
  }

  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageScrollView];

  return [v9 setAlwaysBounceVertical:v4];
}

id sub_1005801F8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
  }

  v5 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView;
  v6 = [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView) isHidden];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaReplicationView];
  if (v4 || (v6 & 1) == 0)
  {
    if (v8)
    {
      v10 = v6;
      type metadata accessor for VideoMirrorView();
      if (swift_dynamicCastClass())
      {
        if (v10)
        {
LABEL_25:
          v45 = *&v1[v7];
          if (v45)
          {
            [v45 setHidden:0];
          }

          return [v1 setNeedsLayout];
        }

LABEL_13:
        v11 = *(v2 + v5);
        v12 = type metadata accessor for MirrorView();
        v13 = objc_allocWithZone(v12);
        swift_unknownObjectWeakInit();
        v14 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer;
        v15 = objc_allocWithZone(CALayer);
        v16 = v11;
        *&v13[v14] = [v15 init];
        *&v13[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageKVOContext] = 0;
        v13[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageObserversAdded] = 0;
        swift_unknownObjectWeakAssign();
        *&v13[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
        *&v13[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_contentsVerticalOffset] = 0;
        v46.receiver = v13;
        v46.super_class = v12;
        v17 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v17 setClipsToBounds:1];
        [v17 setUserInteractionEnabled:0];
        v18 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer;
        [*&v17[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
        LODWORD(v19) = 1.0;
        [*&v17[v18] setOpacity:v19];
        [*&v17[v18] setAnchorPoint:{0.5, 0.5}];
        v20 = qword_100920648;
        v21 = *&v17[v18];
        if (v20 != -1)
        {
          swift_once();
        }

        sub_10000C518(&qword_100939AA0, qword_1007C4530);
        isa = sub_100752F34().super.isa;
        [v21 setActions:isa];

        v23 = *&v17[v18];
        v24 = objc_opt_self();
        v25 = v23;
        v26 = [v24 mainScreen];
        [v26 scale];
        v28 = v27;

        [v25 setContentsScale:v28];
        [*&v17[v18] setMasksToBounds:1];
        v29 = *&v17[v18];
        v30 = *&CATransform3DIdentity.m33;
        v51 = *&CATransform3DIdentity.m31;
        v52 = v30;
        v31 = *&CATransform3DIdentity.m43;
        v53 = *&CATransform3DIdentity.m41;
        v54 = v31;
        v32 = *&CATransform3DIdentity.m13;
        v47 = *&CATransform3DIdentity.m11;
        v48 = v32;
        v33 = *&CATransform3DIdentity.m23;
        v49 = *&CATransform3DIdentity.m21;
        v50 = v33;
        [v29 setTransform:&v47];
        sub_10022A458();
        v34 = [v17 layer];

        [v34 addSublayer:*&v17[v18]];
        v35 = *&v1[v7];
        if (!v35)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }

      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else if (!v4)
    {
      if (v6)
      {
        return [v1 setNeedsLayout];
      }

      goto LABEL_13;
    }

    v38 = swift_unknownObjectWeakLoadStrong();
    v39 = *&CATransform3DIdentity.m33;
    v51 = *&CATransform3DIdentity.m31;
    v52 = v39;
    v40 = *&CATransform3DIdentity.m43;
    v53 = *&CATransform3DIdentity.m41;
    v54 = v40;
    v41 = *&CATransform3DIdentity.m13;
    v47 = *&CATransform3DIdentity.m11;
    v48 = v41;
    v42 = *&CATransform3DIdentity.m23;
    v49 = *&CATransform3DIdentity.m21;
    v50 = v42;
    v43 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
    v17 = sub_1004A8A4C(v38, &v47, 1.0, 0.0);
    v35 = *&v1[v7];
    if (!v35)
    {
LABEL_16:
      v36 = 0;
LABEL_24:
      *&v1[v7] = v17;
      v44 = v17;

      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_25;
    }

LABEL_23:
    [v35 removeFromSuperview];
    v36 = *&v1[v7];
    goto LABEL_24;
  }

  if (v8)
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaReplicationView] removeFromSuperview];
    v9 = *&v1[v7];
  }

  else
  {
    v9 = 0;
  }

  *&v1[v7] = 0;

  return [v1 setNeedsLayout];
}

void sub_10058070C(char a1, char a2)
{
  v5 = [v2 traitCollection];
  v6 = sub_1007537E4();

  if ((v6 & 1) == 0)
  {
    if (a1)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    if (a2)
    {
      v10 = objc_opt_self();
      v16[4] = sub_1000F03EC;
      v16[5] = v9;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_1000CF7B0;
      v16[3] = &unk_10087BAB8;
      v11 = _Block_copy(v16);

      [v10 animateWithDuration:4 delay:v11 options:0 animations:0.3 completion:0.0];

      _Block_release(v11);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView);
        v14 = Strong;

        [v13 setAlpha:v7];
        v15 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_closeButton];
        [v15 setAlpha:v7];
      }
    }
  }
}

void sub_100580924(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView) setAlpha:a2];
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_closeButton] setAlpha:a2];
  }
}

id sub_1005809B8(void *a1)
{
  v2 = v1;
  sub_100580B4C(a1);
  sub_100580E0C(a1);
  v4 = [v1 traitCollection];
  v5 = sub_1007537F4();

  if (v5)
  {
    v6 = -*&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_defaultPageMargin];
  }

  else
  {
    v6 = 0.0;
  }

  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v6}];
  sub_100581374();
  sub_100580F24();
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_displayModeTransitionCoordinator])
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v8 = [Strong traitCollection];

      if (v8)
      {
        v9 = v8;
        if (sub_1007537D4())
        {
          LODWORD(v8) = sub_100753804();
        }

        else
        {
          LODWORD(v8) = 0;
        }

        if (!a1)
        {
LABEL_18:
          if ((v8 & 1) == 0)
          {
LABEL_20:

            goto LABEL_21;
          }

LABEL_19:
          sub_10004490C(0);
          goto LABEL_20;
        }

LABEL_11:
        v10 = a1;
        if (sub_1007537D4())
        {
          v11 = sub_100753804();

          if (((v8 ^ v11) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {

          if ((v8 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (!a1)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

LABEL_21:

  return [v2 setNeedsLayout];
}

void sub_100580B4C(void *a1)
{
  v2 = v1;
  v4 = sub_100743584();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [a1 horizontalSizeClass];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v2 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (!a1 || v9 != v11)
  {
    sub_10058012C();
    v12 = [v2 traitCollection];
    sub_1007537E4();

    v13 = enum case for CornerStyle.continuous(_:);
    v14 = *(v5 + 104);
    v14(v8, enum case for CornerStyle.continuous(_:), v4);
    sub_100746E34();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v14(v8, v13, v4);
    sub_100743024();
    v15(v8, v4);
    v14(v8, v13, v4);
    sub_100746E34();
    v15(v8, v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong _setCornerRadius:26.0];

    v17 = [v2 traitCollection];
    v18 = sub_1007537E4();

    if (v18)
    {
      sub_1005801F8();
    }

    else
    {
      v19 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaReplicationView];
      if (v19)
      {
        [v19 setHidden:1];
      }
    }

    [v2 setNeedsLayout];
  }
}

void sub_100580E0C(id a1)
{
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
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_includeBorderInDarkMode] == 1)
    {
      v6 = [v1 traitCollection];
      v7 = [v6 userInterfaceStyle];

      v8 = v7 != 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_borderView];

    [v9 setHidden:v8];
  }
}

void sub_100580F24()
{
  v1 = v0;
  v2 = sub_100746BA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v43 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_separatorView);
  v8 = v43;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v10 = *(v3 + 16);
  v48 = v3 + 16;
  v10(v7, v0 + v9, v2);
  v11 = sub_100746B84();
  v12 = *(v3 + 8);
  v12(v7, v2);
  [v8 setOverrideUserInterfaceStyle:v11];
  v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_lockupView);
  v44 = v9;
  v45 = v1;
  v14 = v7;
  v42 = v7;
  v15 = v7;
  v16 = v2;
  v10(v15, v1 + v9, v2);
  v41 = v10;
  v17 = sub_100746B84();
  v18 = v14;
  v19 = v16;
  v46 = v3 + 8;
  v12(v18, v16);
  v47 = v12;
  v20 = v13;
  [v13 setOverrideUserInterfaceStyle:v17];
  v21 = v40;
  v22 = v19;
  v10(v40, v1 + v9, v19);
  sub_100746B84();
  v12(v21, v19);
  sub_100753094();
  v23 = sub_100753064();

  v49[3] = sub_100016C60(0, &qword_10093EF30, NSString_ptr);
  v49[0] = v23;
  v24 = v23;
  sub_1006B85A4(v49);
  v25 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView;
  v26 = [*&v20[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView] isHidden];
  v27 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView;
  if (!v26)
  {
    v27 = v25;
  }

  v28 = [*(*&v20[v27] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) layer];
  [v28 setCompositingFilter:v24];

  v29 = [*&v20[v25] isHidden];
  v30 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView;
  if (!v29)
  {
    v30 = v25;
  }

  v31 = [*(*(*&v20[v30] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel) layer];
  [v31 setCompositingFilter:v24];

  v32 = [*&v20[v25] isHidden];
  v33 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView;
  if (!v32)
  {
    v33 = v25;
  }

  v34 = *(*&v20[v33] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  v35 = v42;
  v41(v42, v45 + v44, v22);
  v36 = v34;
  v37 = sub_100746B84();
  v47(v35, v22);
  if (v37 == 1)
  {
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v38 = sub_100753EF4();
  }

  else
  {
    v38 = [objc_opt_self() whiteColor];
  }

  v39 = v38;
  [v36 setTintColor:v38];
}

uint64_t sub_100581374()
{
  v1 = sub_100747064();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v18 - v7;
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_lockupView];
  v10 = [v0 traitCollection];
  if (sub_100753804())
  {
    if (qword_1009218C8 != -1)
    {
      swift_once();
    }

    v11 = qword_10093EE40;
  }

  else
  {
    if (qword_1009218C0 != -1)
    {
      swift_once();
    }

    v11 = qword_10093EE28;
  }

  v12 = sub_10000D0FC(v1, v11);
  v13 = *(v2 + 16);
  v13(v8, v12, v1);

  v14 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView];
  v13(v4, v8, v1);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 24))(&v14[v15], v4, v1);
  swift_endAccess();
  [v14 setNeedsLayout];
  v16 = *(v2 + 8);
  v16(v4, v1);
  [v9 setNeedsLayout];
  return (v16)(v8, v1);
}

uint64_t sub_10058160C(uint64_t a1, id a2)
{
  [a2 locationInView:v2];
  v4 = v3;
  v6 = v5;
  v7 = [v2 hitTest:0 withEvent:?];
  sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
  if ((sub_100753FC4() & 1) == 0)
  {

    return 1;
  }

  [v2 bounds];
  v12.x = v4;
  v12.y = v6;
  if (!CGRectContainsPoint(v13, v12))
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    return 0;
  }

  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v7 = v7;
  v8 = v2;
  v9 = sub_100753FC4();

  if ((v9 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return 0;
}

id sub_100581904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppPromotionDetailPageView(uint64_t a1)
{
  result = qword_10093EF08;
  if (!qword_10093EF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100581AEC(uint64_t a1)
{
  result = sub_100746BA4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_100581BE4()
{
  result = qword_10093EF18;
  if (!qword_10093EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093EF18);
  }

  return result;
}

void sub_100581C58(void *a1)
{
  v2 = v1;
  sub_1000F0204();
  swift_unknownObjectWeakAssign();
  sub_1000EDDDC();
  v3 = [v1 traitCollection];
  v4 = sub_1007537E4();

  if (v4)
  {
    sub_1005801F8();
  }

  [v2 setNeedsLayout];
}

uint64_t (*sub_100581D10(uint64_t **a1))()
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
  v2[4] = sub_10057E74C(v2);
  return sub_1000181A8;
}

uint64_t sub_100581D94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100581DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100581E54(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_100581EF0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView);
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

uint64_t sub_100582060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005820D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100582128()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100582160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100582220()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_displayModeTransitionCoordinator) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageScrollView;
  *(v1 + v2) = [objc_allocWithZone(UIScrollView) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_shadowView;
  sub_100743034();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageContainerView;
  sub_100746ED4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for AppPromotionMediaContainerView(0)) init];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView;
  v8 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageContentView(0));
  *(v1 + v7) = sub_1006220F8(0);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_learnMoreView;
  v10 = objc_allocWithZone(type metadata accessor for AppPromotionLearnMoreView(0));
  *(v1 + v9) = sub_1006CE724(0);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_separatorView;
  type metadata accessor for SeparatorView(0);
  *(v1 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_borderView;
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaReplicationView) = 0;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  *(v1 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_videoBackgroundColor) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_haveFlashedScrollIndicators) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_isCollapsing) = 0;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
  v16 = enum case for MediaOverlayStyle.matchSystem(_:);
  v17 = sub_100746BA4();
  (*(*(v17 - 8) + 104))(v1 + v15, v16, v17);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_includeBorderInDarkMode) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_defaultPageMargin) = 0;
  sub_100754644();
  __break(1u);
}

double sub_1005824A4(uint64_t a1, CGFloat a2, CGFloat a3, double a4, double a5, double a6, double a7, uint64_t a8, int a9)
{
  v17 = sub_10000C518(&qword_10093EF38, qword_1007CB050);
  __chkstk_darwin(v17 - 8);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  v23 = sub_10074A174();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v60 - v28;
  v62 = a1;
  sub_10074DAD4();
  v63 = a9;
  if (a9)
  {
    v61 = sub_10074A154();
    sub_10074DA94();
  }

  else
  {
    v61 = sub_10074A164();
    sub_10074DAA4();
  }

  sub_10058283C(v22, v19);
  v30 = sub_10074DA84();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v19, 1, v30) == 1)
  {
    sub_1005828AC(v19);
  }

  else
  {
    sub_100582BC8(a6, a7, a4, a5);
    a6 = v32;
    a7 = v33;
    (*(v31 + 8))(v19, v30);
  }

  sub_100582EF4(a6, a7, a4, a5);
  v35 = v34;
  v37 = v36;
  sub_1005828AC(v22);
  v38.n128_u64[0] = 0;
  v39.n128_u64[0] = 0;
  v40.n128_u64[0] = v35;
  v41.n128_u64[0] = v37;
  v64 = a2;
  v65 = a4;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = sub_100583080(v61, v38, v39, v40, v41, v42, a3, v44, a5);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_10074DAD4();
  if (v63)
  {
    sub_10074A134();
  }

  else
  {
    sub_10074A144();
  }

  v55 = v53;
  v56 = v54;
  v57 = *(v24 + 8);
  v57(v26, v23);
  v58 = sub_100582914(v56, v55, v64, v43, v65, v45, v46, v48, v50, v52);
  v57(v29, v23);
  return v58;
}