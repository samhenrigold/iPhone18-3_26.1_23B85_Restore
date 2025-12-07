void sub_1006D0598()
{
  v1 = *(type metadata accessor for AdamId() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1006CFED4(v2);
}

id sub_1006D05F8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v59 - v16;
  v18 = *(v5 + 83);
  v19 = *(v5 + 81);
  if ((v18 & 1) != 0 || v19 != 6)
  {
    v22 = v19 == 4;
    v23 = v19 == 6;
    v21 = *(v6 + 8);
  }

  else
  {
    v20 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v21 = *(v5 + 8);
    if ((v20 & 1) == 0)
    {
      v67.origin.x = a2;
      v67.origin.y = a3;
      v67.size.width = a4;
      v67.size.height = a5;
      v68 = CGRectInset(v67, *(v5 + 8), 0.0);
      v22 = 0;
      if (v68.size.width * *(v5 + 32) > *(v5 + 40))
      {
        width = v68.size.width * *(v5 + 32);
      }

      else
      {
        width = *(v5 + 40);
      }

      v25 = 1;
      goto LABEL_13;
    }

    v22 = 0;
    v23 = 1;
  }

  v64.origin.x = a2;
  v64.origin.y = a3;
  v64.size.width = a4;
  v64.size.height = a5;
  v65 = CGRectInset(v64, v21, 0.0);
  width = v65.size.width;
  if (!v23)
  {
    v66.origin.x = a2;
    v66.origin.y = a3;
    v66.size.width = a4;
    v66.size.height = a5;
    v25 = 0;
    v26 = CGRectGetWidth(v66) - width - v21;
    goto LABEL_14;
  }

  v25 = 0;
LABEL_13:
  v69.origin.x = a2;
  v69.origin.y = a3;
  v69.size.width = a4;
  v69.size.height = a5;
  v26 = (CGRectGetWidth(v69) - width - v21) * 0.5;
LABEL_14:
  v27 = *(v6 + 84);
  v28 = *(v6 + 56);
  v63 = v21;
  if ((v27 & 1) == 0)
  {
    LODWORD(v61) = v18;
    *&v59[1] = a1;
    v30 = *(v13 + 104);
    v31 = v17;
    v59[0] = v26;
    v30(v17, enum case for FloatingPointRoundingRule.up(_:), v12);
    v32 = v62;
    v30(v62, enum case for FloatingPointRoundingRule.down(_:), v12);
    CGRect.rounded(originRule:sizeRule:)();
    v34 = v33;
    v36 = v35;
    v60 = a2;
    v37 = a3;
    v38 = a4;
    v39 = a5;
    v40 = width;
    v42 = v41;
    v44 = v43;
    v45 = *(v13 + 8);
    v45(v32, v12);
    v45(v31, v12);
    v18 = v61;
    v70.origin.x = v34;
    v70.origin.y = v36;
    v70.size.width = v42;
    width = v40;
    a5 = v39;
    a4 = v38;
    a3 = v37;
    a2 = v60;
    v70.size.height = v44;
    CGRectInset(v70, v59[0], 0.0);
    CustomLayoutView.sizeThatFits(_:)();
    v62 = v46;
    if (v25)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [v28 bounds];
  v62 = v29;
  if ((v25 & 1) == 0)
  {
LABEL_18:
    v71.origin.x = a2;
    v71.origin.y = a3;
    v71.size.width = a4;
    v71.size.height = a5;
    width = CGRectGetWidth(v71);
  }

LABEL_19:
  v72.origin.x = a2;
  v72.origin.y = a3;
  v72.size.width = a4;
  v72.size.height = a5;
  Height = CGRectGetHeight(v72);
  v48 = *(v6 + 64);
  if (v48)
  {
    [*(v6 + 64) sizeThatFits:{width, Height}];
    v61 = v49;
    v51 = v50;
    if (*&v48[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView])
    {
      v52 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v61 = 0;
    v51 = 0.0;
  }

  v52 = 1;
LABEL_24:
  v53 = *(v6 + 82);
  v60 = v51;
  if (v53 == 4)
  {
    if (((v22 | v18 ^ 1 | v52) & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    v74.origin.x = a2;
    v74.origin.y = a3;
    v74.size.width = a4;
    v74.size.height = a5;
    CGRectGetMaxY(v74);
    v75.origin.x = a2;
    v75.origin.y = a3;
    v75.size.width = a4;
    v75.size.height = a5;
    CGRectGetMaxY(v75);
    if (v25)
    {
      goto LABEL_33;
    }

LABEL_30:
    v54 = a2;
    v55 = a3;
    v56 = a4;
    v57 = a5;
    if (v18)
    {
      CGRectGetMinX(*&v54);
    }

    else
    {
      CGRectGetMidX(*&v54);
    }

    goto LABEL_33;
  }

  if ((v22 | v52) == 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  v73.origin.x = a2;
  v73.origin.y = a3;
  v73.size.width = a4;
  v73.size.height = a5;
  CGRectGetMaxY(v73);
  if (!v25)
  {
    goto LABEL_30;
  }

LABEL_33:
  CGRect.withLayoutDirection(using:relativeTo:)();
  result = [v28 setFrame:?];
  if (v48)
  {
    CGRect.withLayoutDirection(using:relativeTo:)();
    return [v48 setFrame:?];
  }

  return result;
}

__n128 sub_1006D0B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1006D0B60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 85))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006D0BA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 85) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 85) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006D0C18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006D0C38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

void sub_1006D0CC8()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for OSLogger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v60 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PageGrid();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnifiedMessage();
  sub_1006D1410(&qword_10098BA08, &type metadata accessor for UnifiedMessage, &protocol conformance descriptor for UnifiedMessage);
  ItemLayoutContext.typedModel<A>(as:)();
  v8 = v63[0];
  if (v63[0])
  {
    v59 = v2;
    type metadata accessor for InlineUnifiedMessagePresenter();
    BaseObjectGraph.optional<A>(_:)();
    v9 = v63[0];
    if (!v63[0])
    {

      return;
    }

    v58 = v1;
    UnifiedMessage.placement.getter();
    v10 = v9;
    v11 = InlineUnifiedMessagePresenter.inlineViewController(for:)();

    if (!v11)
    {

      return;
    }

    v57 = v10;
    sub_10002849C(&qword_10097F468, &qword_1007C6918);
    BaseObjectGraph.optional<A>(_:)();
    if (!v63[0])
    {

      return;
    }

    v56 = v63[0];
    v12 = v11;
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 superview];

      if (!v15)
      {
        v16 = [v12 view];
        if (!v16)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v17 = v16;
        [v16 setHidden:1];

        v18 = [v56 view];
        if (!v18)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v19 = v18;
        v20 = [v12 view];
        if (!v20)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v15 = v20;
        [v19 insertSubview:v20 atIndex:0];
      }

      v21 = [v12 view];
      if (v21)
      {
        v22 = v21;
        [v21 updateTraitsIfNeeded];

        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        PageGrid.componentMeasuringSize(spanning:)();
        v24 = v23;
        v26 = v25;
        (*(v61 + 8))(v6, v4);
        v27 = (*(v62 + 144))(v24, v26);
        v29 = v28;
        v30 = [v12 view];
        if (v30)
        {
          v31 = v30;
          v32 = v12;
          [v30 sizeThatFits:{v27, v29}];
          v34 = v33;
          v36 = v35;

          v37 = v60;
          static OSLogger.inlineUnifiedMessage.getter();
          sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = xmmword_1007B10D0;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v38._object = 0x8000000100821340;
          v38._countAndFlagsBits = 0xD00000000000002CLL;
          LogMessage.StringInterpolation.appendLiteral(_:)(v38);
          v64 = v7;
          v63[0] = v8;

          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10003D444(v63);
          v39._countAndFlagsBits = 8250;
          v39._object = 0xE200000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v39);
          type metadata accessor for CGSize(0);
          v64 = v40;
          v63[0] = v34;
          v63[1] = v36;
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10003D444(v63);
          v41._countAndFlagsBits = 0;
          v41._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v41);
          LogMessage.init(stringInterpolation:)();
          v42 = v58;
          Logger.debug(_:)();

          (*(v59 + 8))(v37, v42);
          v43 = [v12 view];
          v44 = v57;
          if (v43)
          {
            v45 = v43;
            v46 = [v43 superview];

            v47 = v56;
            v48 = [v56 view];
            v49 = v48;
            if (v46)
            {
              if (v48)
              {
                sub_100028004();
                v50 = static NSObject.== infix(_:_:)();

                if ((v50 & 1) == 0)
                {
LABEL_28:
                  v54 = [v32 view];

                  if (v54)
                  {
                    [v54 setHidden:0];

                    return;
                  }

                  goto LABEL_34;
                }

                goto LABEL_23;
              }

              v49 = v46;
            }

            else if (!v48)
            {
LABEL_23:
              v51 = [v32 view];
              if (!v51)
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              v52 = v51;
              [v51 removeFromSuperview];

              v53 = [v32 view];
              if (!v53)
              {
LABEL_39:
                __break(1u);
                return;
              }

              v49 = v53;
              [v53 updateTraitsIfNeeded];
            }

            goto LABEL_28;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

uint64_t sub_1006D1410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1006D1458(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1006D14B8()
{
  v0 = sub_10002849C(&qword_10097ABD8, qword_1007DEBB0);
  sub_100005644(v0, qword_100992510);
  sub_1000056A8(v0, qword_100992510);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for UIRectEdge(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1006D155C(void *a1, void *a2, char a3)
{
  v61 = a1;
  v62 = a2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for AutomationSemantics();
  v59 = *(v6 - 8);
  *&v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissTapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_transitioningViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures] = 0;
  v12 = &v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissCompleted] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_isScrollDismissActive] = 0;
  v13 = [objc_opt_self() effectWithBlurRadius:50.0];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView] = v14;
  v15 = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView] = v15;
  type metadata accessor for ShadowView();
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView;
  *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView] = v16;
  v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shouldUseReducedMotionTransition] = a3;
  v18 = type metadata accessor for Feature.iOS();
  *(&v66 + 1) = v18;
  v67 = sub_1005C7530();
  v19 = sub_1000056E0(&v65);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v18);
  LOBYTE(v18) = isFeatureEnabled(_:)();
  sub_100007000(&v65);
  if ((v18 & 1) == 0)
  {
    [*&v3[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v64.receiver = v3;
  v64.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v64, "initWithPresentedViewController:presentingViewController:", v61, v62);
  v21 = objc_allocWithZone(UITapGestureRecognizer);
  v22 = v20;
  v23 = [v21 initWithTarget:v22 action:"dismissTapDidChange:"];
  v24 = *&v22[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissTapGestureRecognizer];
  *&v22[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissTapGestureRecognizer] = v23;
  v25 = v23;

  if (!v25)
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = *&v22[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView];
  [v26 addGestureRecognizer:v25];

  v27 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView;
  [*&v22[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView] setUserInteractionEnabled:0];
  v28 = *&v22[v27];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  [v30 setBackgroundColor:v31];

  [*&v22[v27] setAlpha:0.0];
  v32 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v22 action:"edgePanDidChange:"];
  v33 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer;
  v34 = *&v22[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  *&v22[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = v32;
  v35 = v32;

  if (!v35)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (qword_10096EE30 != -1)
  {
    swift_once();
  }

  v36 = sub_10002849C(&qword_10097ABD8, qword_1007DEBB0);
  sub_1000056A8(v36, qword_100992510);
  v63 = v22;
  v37 = v22;
  Conditional.evaluate(with:)();

  [v35 setEdges:v65];
  if (!*&v22[v33])
  {
    goto LABEL_13;
  }

  v38 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView;
  [*&v37[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView] addGestureRecognizer:?];
  v39 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView;
  v40 = qword_10096DA38;
  v41 = *&v37[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Shadow();
  v43 = sub_1000056A8(v42, qword_1009CFD08);
  v44 = *(v42 - 8);
  (*(v44 + 16))(v11, v43, v42);
  (*(v44 + 56))(v11, 0, 1, v42);
  dispatch thunk of ShadowView.shadow.setter();

  v45 = [*&v37[v39] layer];
  [v45 setMaskedCorners:3];

  [*&v37[v39] _setContinuousCornerRadius:20.0];
  [*&v37[v39] setAutoresizingMask:18];
  v46 = *&v37[v39];
  dispatch thunk of ShadowView.shouldAnimateBoundsChange.setter();

  [*&v37[v38] setClipsToBounds:0];
  v47 = *&v37[v38];
  v48 = *&v37[v39];
  [v47 bounds];
  [v48 setFrame:?];

  [*&v37[v38] addSubview:*&v37[v39]];
  v49 = *&v37[v38];
  v65 = 0u;
  v66 = 0u;
  v50 = v49;
  static AutomationSemantics.page(name:id:)();
  sub_10002B894(&v65, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (*(v59 + 8))(v8, v60);
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v51 = swift_allocObject();
  v60 = xmmword_1007B10D0;
  *(v51 + 16) = xmmword_1007B10D0;
  *(v51 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = ObjectType;
  v54 = v37;
  UIPresentationController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v55 = swift_allocObject();
  *(v55 + 16) = v60;
  *(v55 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v55 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = ObjectType;
  UIPresentationController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
}

void sub_1006D1E20(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong traitCollection];
    v7 = [v6 layoutDirection];

    if (v7 == [a2 layoutDirection])
    {
    }

    else
    {
      v8 = *&v5[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v8)
      {
        v9 = qword_10096EE30;
        v10 = v8;
        if (v9 != -1)
        {
          swift_once();
        }

        v11 = sub_10002849C(&qword_10097ABD8, qword_1007DEBB0);
        sub_1000056A8(v11, qword_100992510);
        v12 = v5;
        Conditional.evaluate(with:)();

        [v10 setEdges:v13];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1006D1F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1006D4C74();
  }
}

void sub_1006D1FD0(char a1)
{
  if (v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures] == (a1 & 1))
  {
    return;
  }

  v2 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissTapGestureRecognizer];
  if (v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures])
  {
    if (v2)
    {
      [v2 setEnabled:0];
      v3 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v3)
      {
        [v3 setEnabled:0];
        v4 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal];
        swift_beginAccess();
        if (*(v4 + 24))
        {
          sub_10002C0AC(v4, &v11);
          v5 = *(&v12 + 1);
          v6 = v13;
          sub_10002A400(&v11, *(&v12 + 1));
          (*(v6 + 32))(v5, v6);
          sub_100007000(&v11);
        }

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        swift_beginAccess();
        sub_100245DF0(&v11, v4);
        swift_endAccess();
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v2)
  {
    goto LABEL_15;
  }

  [v2 setEnabled:1];
  v7 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = v7;
  v8 = [v1 traitCollection];
  v9 = [v8 horizontalSizeClass];

  [v10 setEnabled:v9 != 2];
}

void sub_1006D2210()
{
  v1 = type metadata accessor for PageGrid.Direction();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = type metadata accessor for PageGrid();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 containerView];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v37 = v9;
  v15 = [v0 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 != 2)
  {
    [v14 bounds];

    return;
  }

  v36 = v8;
  (*(v2 + 104))(v7, enum case for PageGrid.Direction.vertical(_:), v1);
  v17 = [v0 presentingViewController];
  v18 = [v17 view];

  if (!v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v18 bounds];
  v20 = v19;
  v22 = v21;

  v23 = [v0 presentingViewController];
  v24 = [v23 view];

  if (!v24)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v24 safeAreaInsets];

  (*(v2 + 16))(v4, v7, v1);
  v25 = v36;
  if (qword_10096E9A0 != -1)
  {
    swift_once();
  }

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v2 + 8))(v7, v1);
  v26 = [v0 presentingViewController];
  v27 = [v26 traitCollection];

  PageGrid.containerWidth.getter();
  v29 = v28;
  LOBYTE(v26) = UITraitCollection.isSizeClassRegular.getter();

  if (v26)
  {
    if (v29 + -160.0 <= 672.0)
    {
      v29 = v29 + -160.0;
    }

    else
    {
      v29 = 672.0;
    }

    if (v29 < 533.0)
    {
      v29 = 533.0;
    }
  }

  [v14 bounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v34 = CGRectGetMidX(v38) + v29 * -0.5;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  CGRectGetHeight(v40);

  sub_1006D4EA4(v34);
  (*(v37 + 8))(v12, v25);
}

void *sub_1006D2724()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = sub_100301D04();
      swift_unknownObjectRelease();

      return v2;
    }

    swift_unknownObjectRelease();
  }

  return _swiftEmptyArrayStorage;
}

void sub_1006D27A8(void *a1, void *a2)
{
  v3 = v2;
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v6 = *&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (v6)
  {
    v7 = v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures];
    v8 = v6;
    v9 = (v7 & 1) == 0 && [a1 horizontalSizeClass] != 2;
    [v8 setEnabled:v9];

    v10 = [v3 containerView];
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      v12[2] = v3;
      v12[3] = a1;
      v12[4] = v11;
      v17[4] = sub_1006D4EEC;
      v17[5] = v12;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_1006D1458;
      v17[3] = &unk_1008CF420;
      v13 = _Block_copy(v17);
      v14 = v3;
      v15 = a1;
      v16 = v11;

      [a2 animateAlongsideTransition:v13 completion:0];
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1006D294C(int a1, char *a2, void *a3, void *a4)
{
  v7 = [a2 presentedViewController];
  v18 = [v7 view];

  if ([a3 horizontalSizeClass] == 2)
  {
    if (v18)
    {
      v8 = *&a2[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView];
      v9 = v18;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v18)
  {
    [v18 _setContinuousCornerRadius:0.0];
  }

  [a4 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&a2[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView] setFrame:?];
  [*&a2[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView] setFrame:{v11, v13, v15, v17}];
}

void sub_1006D2B38(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView] + OBJC_IVAR____TtC8AppStore35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_1006D4EC8;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1006D1458;
  v10[3] = &unk_1008CF3D0;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_1006D2CEC()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v10 = v1;
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [*&v0[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    [*&v0[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView] setFrame:{v3, v5, v7, v9}];
    sub_1006D2210();
    [*&v0[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView] setFrame:?];
  }
}

void sub_1006D2E34()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *&v0[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView];
    [*&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    v13 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView];
    [v13 setFrame:{v5, v7, v9, v11}];
    [v3 addSubview:v13];
    [v3 addSubview:v12];
    v14 = [v1 presentedViewController];
    v15 = [v14 view];

    if (v15)
    {
      v16 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView];
      [v16 bounds];
      [v15 setFrame:?];
      [v15 setAutoresizingMask:18];
      [v16 addSubview:v15];
    }

    v17 = v13;
    v18 = v12;
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v20)
    {
      v21 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_transitioningViewProvider];
      Strong = swift_unknownObjectWeakLoadStrong();
      v23 = *(v21 + 1);
      v24 = [v1 traitCollection];
      v25 = v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shouldUseReducedMotionTransition];
      type metadata accessor for TodayTransitionCompanionAnimations();
      v26 = swift_allocObject();
      *(v26 + 88) = 0;
      swift_unknownObjectWeakInit();
      *(v26 + 104) = 0;
      *(v26 + 112) = 0;
      *(v26 + 32) = v17;
      *(v26 + 40) = v18;
      *(v26 + 56) = v20;
      if (Strong)
      {
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          v28 = v27;
          swift_unknownObjectRetain();
          v29 = sub_100301D04();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = _swiftEmptyArrayStorage;
        }

        *(v26 + 64) = v29;
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          v32 = v31;
          v33 = [v31 collectionView];
        }

        else
        {
          v33 = 0;
        }

        *(v26 + 48) = v33;
        swift_unknownObjectRetain();
        v34 = sub_10078702C();
        swift_unknownObjectRelease();
        *(v26 + 16) = v34;
        swift_unknownObjectRetain();
        v30 = sub_1007870B0();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        *(v26 + 64) = _swiftEmptyArrayStorage;
        *(v26 + 48) = 0;
        *(v26 + 16) = 0;
      }

      *(v26 + 24) = v30;
      *(v26 + 88) = v23;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(v26 + 96) = v24;
      *(v26 + 72) = v25;
      v35 = objc_opt_self();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_1006D4E68;
      *(v36 + 24) = v26;
      v46 = sub_10006F258;
      v47 = v36;
      v42 = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_1000489A8;
      v45 = &unk_1008CF330;
      v37 = _Block_copy(&v42);

      [v35 performWithoutAnimation:v37];
      _Block_release(v37);
      LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

      if ((v35 & 1) == 0)
      {
        v38 = [v1 presentedViewController];
        v39 = [v38 transitionCoordinator];

        if (v39)
        {
          v46 = sub_1006D4E70;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1006D1458;
          v45 = &unk_1008CF358;
          v40 = _Block_copy(&v42);

          v46 = sub_1006D4E74;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1006D1458;
          v45 = &unk_1008CF380;
          v41 = _Block_copy(&v42);

          [v39 animateAlongsideTransition:v40 completion:v41];

          _Block_release(v41);
          _Block_release(v40);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_1006D3444(char a1)
{
  if (a1)
  {
    v2 = [v1 presentedViewController];
    v3 = [v2 isViewLoaded];

    if (!v3)
    {
      return;
    }

    v4 = [v1 presentedViewController];
    v7 = [v4 contentScrollView];

    sub_1006D4D94(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
    swift_unknownObjectWeakAssign();
    sub_1006D4D94(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView] removeFromSuperview];
    [*&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView] removeFromSuperview];
    v5 = [v1 presentedViewController];
    v7 = [v5 view];

    if (!v7)
    {
      return;
    }

    [v7 setClipsToBounds:0];
    v6 = [v7 layer];
    [v6 setMaskedCorners:15];

    [v7 _setContinuousCornerRadius:0.0];
  }
}

void sub_1006D365C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayBlurView];
  v3 = *&v0[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_overlayTintView];
  v4 = v2;
  v5 = [v1 presentedViewController];
  v6 = [v5 view];

  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_transitioningViewProvider];
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 1);
  v10 = [v1 traitCollection];
  v11 = v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shouldUseReducedMotionTransition];
  type metadata accessor for TodayTransitionCompanionAnimations();
  v12 = swift_allocObject();
  *(v12 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 32) = v3;
  *(v12 + 40) = v4;
  *(v12 + 56) = v6;
  if (Strong)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = sub_100301D04();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    *(v12 + 64) = v15;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = [v17 collectionView];
    }

    else
    {
      v19 = 0;
    }

    *(v12 + 48) = v19;
    swift_unknownObjectRetain();
    v20 = sub_10078702C();
    swift_unknownObjectRelease();
    *(v12 + 16) = v20;
    swift_unknownObjectRetain();
    v16 = sub_1007870B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    *(v12 + 64) = _swiftEmptyArrayStorage;
    *(v12 + 48) = 0;
    *(v12 + 16) = 0;
  }

  *(v12 + 24) = v16;
  *(v12 + 88) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v12 + 96) = v10;
  *(v12 + 72) = v11;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1006D4D54;
  *(v22 + 24) = v12;
  v34 = sub_10006F094;
  v35 = v22;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000489A8;
  v33 = &unk_1008CF268;
  v23 = _Block_copy(&v30);

  [v21 performWithoutAnimation:v23];
  _Block_release(v23);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v24 = [v1 presentedViewController];
  v25 = [v24 transitionCoordinator];

  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v12;
    *(v26 + 24) = v1;
    v34 = sub_1006D4D5C;
    v35 = v26;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1006D1458;
    v33 = &unk_1008CF2B8;
    v27 = _Block_copy(&v30);

    v28 = v1;

    v34 = sub_1006D4D64;
    v35 = v12;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1006D1458;
    v33 = &unk_1008CF2E0;
    v29 = _Block_copy(&v30);

    [v25 animateAlongsideTransition:v27 completion:v29];

    _Block_release(v29);
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1006D3B1C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100038414();
  v4 = [a3 presentedViewController];
  [v4 setNeedsStatusBarAppearanceUpdate];
}

double sub_1006D3B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a1);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v9 = *(v7 + 48);
      if (v9)
      {
        v10 = *(v7 + 56);

        v9(v11);

        sub_10001F63C(v9, v10);
      }

      else
      {
      }

      ++v6;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return result;
}

void sub_1006D3E14(void *a1)
{
  [*&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView] frame];
  v3 = CGRectGetWidth(v30) * 0.28;
  [a1 translationInView:0];
  v5 = fabs(v4);
  if (v5 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 / v3;
  v7 = [a1 state];
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != 3)
      {
        return;
      }

      if (v6 == 1.0)
      {
LABEL_16:
        v11 = [v1 presentedViewController];
        [v11 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }

    goto LABEL_10;
  }

  switch(v7)
  {
    case 0:
LABEL_10:
      if (v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissCompleted])
      {
        return;
      }

      v8 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v8 + 24))
      {
        sub_10002C0AC(v8, &v27);
        v9 = *(&v28 + 1);
        v10 = v29;
        sub_10002A400(&v27, *(&v28 + 1));
        (v10[4])(v9, v10);
        sub_100007000(&v27);
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      swift_beginAccess();
      sub_100245DF0(&v27, v8);
      goto LABEL_21;
    case 1:
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1007B15F0;
      v13 = [v1 presentedViewController];
      v14 = [v13 view];

      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView];
      *(v12 + 32) = v14;
      *(v12 + 40) = v15;
      v16 = v15;
      v17 = v1;
      v18 = sub_1006D2724();
      if (v18 >> 62)
      {
        sub_100028004();
        v19 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100028004();
        v19 = v18;
      }

      v20 = v17;
      v21 = [v17 traitCollection];
      *(&v28 + 1) = &type metadata for ScaleDownInteractiveDismissal;
      v29 = &off_1008B8010;
      v22 = swift_allocObject();
      *&v27 = v22;
      *(v22 + 16) = v12;
      *(v22 + 24) = v19;
      *(v22 + 32) = v21;
      *(v22 + 40) = 1;
      *(v22 + 48) = 0x3FEA3D70A3D70A3DLL;
      v23 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal;
      swift_beginAccess();
      sub_100245DF0(&v27, v20 + v23);
LABEL_21:
      swift_endAccess();
      return;
    case 2:
      if (v6 == 1.0)
      {
        goto LABEL_16;
      }

      v24 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v24 + 24))
      {
        sub_10002C0AC(v24, &v27);
        v25 = *(&v28 + 1);
        v26 = v29;
        sub_10002A400(&v27, *(&v28 + 1));
        (v26[2])(v25, v26, v6);
        sub_100007000(&v27);
      }

      break;
  }
}

void sub_1006D4274(void *a1)
{
  if (v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures])
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v52 = Strong;
  v4 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_isScrollDismissActive;
  if (v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_isScrollDismissActive] != 1)
  {
    if ([a1 state] != 1 && objc_msgSend(a1, "state") != 2)
    {
      goto LABEL_36;
    }

    [v52 contentOffset];
    v14 = v13;
    [v52 adjustedContentInset];
    if (v14 + v15 > 0.0)
    {
      goto LABEL_36;
    }

    [a1 velocityInView:v52];
    if (v16 <= 0.0)
    {
      goto LABEL_36;
    }

    [v52 adjustedContentInset];
    [v52 contentOffset];
    [v52 setContentOffset:?];
    v17 = [v1 traitCollection];
    v18 = [v17 horizontalSizeClass];

    if (v18 == 1)
    {
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1007B15F0;
      v20 = [v1 presentedViewController];
      v21 = [v20 view];

      if (v21)
      {
        v22 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView];
        *(v19 + 32) = v21;
        *(v19 + 40) = v22;
        v23 = v22;
        v24 = sub_1006D2724();
        if (v24 >> 62)
        {
          sub_100028004();
          v25 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100028004();
          v25 = v24;
        }

        v26 = [v1 traitCollection];
        *(&v54 + 1) = &type metadata for ScaleDownInteractiveDismissal;
        v55 = &off_1008B8010;
        v27 = swift_allocObject();
        *&v53 = v27;
        *(v27 + 16) = v19;
        *(v27 + 24) = v25;
        *(v27 + 32) = v26;
        *(v27 + 40) = 1;
        *(v27 + 48) = 0x3FEA3D70A3D70A3DLL;
        v28 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal;
        swift_beginAccess();
        v29 = &v1[v28];
LABEL_43:
        sub_100245DF0(&v53, v29);
        swift_endAccess();
        v45 = swift_unknownObjectWeakLoadStrong();
        if (v45)
        {
          v46 = v45;
          [v45 setShowsVerticalScrollIndicator:0];
        }

        [a1 translationInView:0];
        v48 = v47;

        *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_scrollDismissInitialTranslationY] = v48;
        v1[v4] = 1;
        return;
      }

      __break(1u);
    }

    else
    {
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1007B15F0;
      v37 = [v1 presentedViewController];
      v38 = [v37 view];

      if (v38)
      {
        v39 = *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_shadowView];
        *(v36 + 32) = v38;
        *(v36 + 40) = v39;
        v40 = v39;
        v41 = v1;
        v42 = sub_1006D2724();
        if (v42 >> 62)
        {
          sub_100028004();
          v43 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100028004();
          v43 = v42;
        }

        *(&v54 + 1) = &type metadata for PullDownInteractiveDismissal;
        v55 = &off_1008B8038;
        *&v53 = v36;
        *(&v53 + 1) = v43;
        *&v54 = 0x3FB1EB851EB851ECLL;
        v44 = OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal;
        v1 = v41;
        swift_beginAccess();
        v29 = &v41[v44];
        goto LABEL_43;
      }
    }

    __break(1u);
    return;
  }

  [*&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_presentedContainerView] frame];
  v5 = CGRectGetHeight(v57) * 0.18;
  [a1 translationInView:0];
  v7 = v6 - *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6 - *&v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  }

  v9 = 0.0;
  if (v5 <= 0.0)
  {
    v9 = v5;
  }

  if (v7 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 / v5;
  v12 = [a1 state];
  if (v12 > 2)
  {
    if ((v12 - 4) >= 2)
    {
      if (v12 != 3)
      {
        goto LABEL_36;
      }

      if (v11 == 1.0)
      {
LABEL_35:
        v35 = [v1 presentedViewController];
        [v35 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }
  }

  else if (v12)
  {
    if (v12 == 2)
    {
      if (v11 == 1.0)
      {
        goto LABEL_35;
      }

      v49 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v49 + 24))
      {
        sub_10002C0AC(v49, &v53);
        v50 = *(&v54 + 1);
        v51 = v55;
        sub_10002A400(&v53, *(&v54 + 1));
        (v51[2])(v50, v51, v11);

        sub_100007000(&v53);
        return;
      }

LABEL_38:

      return;
    }

LABEL_36:

    goto LABEL_38;
  }

  if (v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_dismissCompleted])
  {
    goto LABEL_36;
  }

  v30 = &v1[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal];
  swift_beginAccess();
  if (*(v30 + 24))
  {
    sub_10002C0AC(v30, &v53);
    v31 = *(&v54 + 1);
    v32 = v55;
    sub_10002A400(&v53, *(&v54 + 1));
    (v32[4])(v31, v32);
    sub_100007000(&v53);
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  swift_beginAccess();
  sub_100245DF0(&v53, v30);
  swift_endAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    [v33 setShowsVerticalScrollIndicator:1];
  }

  v1[v4] = 0;
}

void sub_1006D4AD4(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures);
    v4[OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_disableDismissGestures] = v2;
    sub_1006D1FD0(v5);
  }
}

void sub_1006D4C74()
{
  v1 = [v0 traitCollection];
  if ([v1 userInterfaceIdiom] == 1)
  {
    v2 = 32.0;
  }

  else
  {
    [v1 displayCornerRadius];
    v2 = v3;
  }

  v4 = [v0 presentedViewController];
  v5 = [v4 view];

  [v5 _setContinuousCornerRadius:v2];
}

void sub_1006D4D94(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

void sub_1006D4F30(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(UIScreenEdgePanGestureRecognizer);
  sub_10002A400(a1, a1[3]);
  v6 = [v5 initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:a2];
  swift_unknownObjectRelease();
  [v6 setEdges:2];
  v7 = objc_allocWithZone(UIScreenEdgePanGestureRecognizer);
  sub_10002A400(a1, a1[3]);
  v8 = [v7 initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:a2];
  swift_unknownObjectRelease();
  [v8 setEdges:8];
  v9 = *(v2 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  [v10 addGestureRecognizer:v6];

  v12 = [v9 view];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 addGestureRecognizer:v8];
}

id sub_1006D50BC()
{
  v0 = sub_100006C54();

  return v0;
}

uint64_t sub_1006D50E8(uint64_t a1)
{
  v3 = type metadata accessor for Bag();
  v4 = __chkstk_darwin(v3);
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  (*(v7 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  objc_allocWithZone(type metadata accessor for CommerceDialogHandler());
  v8 = v6;
  return CommerceDialogHandler.init(_:_:)();
}

uint64_t sub_1006D51D4(uint64_t a1)
{
  v56 = type metadata accessor for Dependency();
  v2 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricsPipeline();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  __chkstk_darwin(v4);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TabBadgingFieldsProvider();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  __chkstk_darwin(v9);
  v10 = sub_10002849C(&qword_1009927C8, &unk_1007DEC40);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v57 = swift_allocObject();
  v50 = sub_10073DA60(a1);
  sub_10002849C(&qword_1009844F0, &qword_1007B12D0);
  v55 = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007B5370;
  type metadata accessor for PersonalizationDataProvider();
  v62 = sub_1006D793C(a1);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for TodayCardTriggerController();
  v62 = sub_1006D7AD4(a1);
  Dependency.init<A>(satisfying:with:)();
  v14 = type metadata accessor for URLProtocolDelegate();
  v15 = type metadata accessor for URLProtocolDelegate.DialogStyle();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = objc_allocWithZone(v14);
  v62 = URLProtocolDelegate.init(dialogStyle:)();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for SearchGhostHintMetricsTracker();
  swift_allocObject();
  v62 = SearchGhostHintMetricsTracker.init()();
  Dependency.init<A>(satisfying:with:)();
  v62 = [objc_allocWithZone(type metadata accessor for AppEventLiveIndicatorAnimationCoordinator()) init];
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for ImpressionsAppendixMetricsTracker();
  swift_allocObject();
  v62 = ImpressionsAppendixMetricsTracker.init()();
  Dependency.init<A>(satisfying:with:)();
  sub_10002849C(&qword_100977130, &unk_1007BC300);
  type metadata accessor for AppDeviceWindowDataProvider();
  v17 = swift_allocObject();
  v18 = sub_1006D7E8C(&qword_1009927D0, type metadata accessor for AppDeviceWindowDataProvider, &unk_1007D68DC);
  v62 = v17;
  v63 = v18;
  Dependency.init<A>(satisfying:with:)();
  v19 = v49;
  sub_1006D5BF0();
  Dependency.init<A>(satisfying:with:)();
  v62 = v13;
  sub_10002849C(&qword_100984B10, &qword_1007CC608);
  sub_100097060(&qword_100984B18, &qword_100984B10, &qword_1007CC608, &protocol conformance descriptor for [A]);
  v20 = dispatch thunk of BaseObjectGraph.adding<A>(allDependencies:)();

  v21 = v57;
  *(v57 + 16) = v20;
  v22 = (v21 + 16);
  v23 = *(v19 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  v64 = type metadata accessor for StoreTabBarController();
  v65 = sub_1006D7E8C(&qword_1009927D8, type metadata accessor for StoreTabBarController, &protocol conformance descriptor for UITabBarController);
  v62 = v23;
  v24 = v23;
  v25 = v58;
  TabBadgingFieldsProvider.init(tabController:)();
  sub_10002849C(&qword_1009927E0, &unk_1007DEC50);
  v26 = (sub_10002849C(&qword_1009828A0, &qword_1007CA230) - 8);
  v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007B10D0;
  v29 = v28 + v27;
  v30 = (v28 + v27 + v26[14]);
  static MetricsFieldExclusionRequest.tabBadging.getter();
  v31 = v60;
  v30[3] = v60;
  v30[4] = sub_1006D7E8C(&qword_1009927E8, &type metadata accessor for TabBadgingFieldsProvider, &protocol conformance descriptor for TabBadgingFieldsProvider);
  v32 = sub_1000056E0(v30);
  (*(v59 + 16))(v32, v25, v31);
  sub_10039980C(v28);
  swift_setDeallocating();
  sub_10002B894(v29, &qword_1009828A0, &qword_1007CA230);
  swift_deallocClassInstance();

  sub_1006D7ED4(_swiftEmptyArrayStorage);
  static MetricsPipeline.objectGraphWithNewPipelineConfiguredWith(optInProviders:optOutProviders:asPartOf:)();

  type metadata accessor for BaseObjectGraph();

  *v22 = BaseObjectGraph.__allocating_init(_:)();

  type metadata accessor for InAppMessagesManager();
  inject<A, B>(_:from:)();

  v33 = v62;

  v35 = v51;
  v34 = v52;
  inject<A, B>(_:from:)();

  v50 = v33;
  v36 = v33[4];
  v37 = OBJC_IVAR____TtC8AppStore28InAppMessagesMetricsDelegate_metricsPipeline;
  swift_beginAccess();
  (*(v53 + 40))(v36 + v37, v35, v34);
  swift_endAccess();
  v38 = *(v19 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_debugMetricsEventRecorder);
  if (v38)
  {
    type metadata accessor for DebugMetricsEventRecorder();
    v62 = v38;
    swift_retain_n();

    v39 = v54;
    Dependency.init<A>(satisfying:with:)();
    v40 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

    v42 = v55;
    v41 = v56;
    (*(v55 + 8))(v39, v56);
    *v22 = v40;
  }

  else
  {
    v42 = v55;
    v41 = v56;
    v39 = v54;
  }

  v43 = objc_allocWithZone(type metadata accessor for FloatingUnifiedMessageCoordinator());

  v44 = FloatingUnifiedMessageCoordinator.init(objectGraph:)();
  v45 = v57;

  FloatingUnifiedMessageCoordinator.actionHandler.setter();
  FloatingUnifiedMessageCoordinator.registerViewController(forAppLevelMessages:)(v24);
  swift_beginAccess();
  v61 = v44;

  v46 = v44;
  Dependency.init<A>(satisfying:with:)();
  v47 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v42 + 8))(v39, v41);
  (*(v59 + 8))(v58, v60);
  *(v45 + 16) = v47;

  return v47;
}

uint64_t sub_1006D5BF0()
{
  v1 = sub_10002849C(&qword_1009927F0, &qword_1007DEC68);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  type metadata accessor for BaseObjectGraph();
  ActionDispatcher.init()();
  sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  sub_1006D8128();
  ActionDispatcher.add<A>(_:)();
  sub_1006D817C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D81D0();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8224();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8278();
  ActionDispatcher.add<A>(_:)();
  sub_1006D82CC();
  ActionDispatcher.add<A>(_:)();
  ArcadeLaunchAttributionActionImplementation.init()();
  sub_100097060(&qword_100992828, &qword_1009927F0, &qword_1007DEC68, &protocol conformance descriptor for ArcadeLaunchAttributionActionImplementation<A>);
  ActionDispatcher.add<A>(_:)();
  (*(v2 + 8))(v4, v1);
  sub_1006D8320();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8374();
  ActionDispatcher.add<A>(_:)();
  sub_1006D83C8();
  ActionDispatcher.add<A>(_:)();
  sub_1006D841C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8470();
  ActionDispatcher.add<A>(_:)();
  sub_1006D84C4();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8518();
  ActionDispatcher.add<A>(_:)();
  sub_1006D856C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D85C0();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8614();
  ActionDispatcher.add<A>(_:)();
  sub_100538614();
  ActionDispatcher.add<A>(_:)();
  v5 = *(v0 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  swift_unknownObjectUnownedInit();
  sub_1006D8668();
  v6 = v5;
  ActionDispatcher.add<A>(_:)();
  sub_1006D86BC(&v15);
  sub_10002849C(&qword_100992888, &unk_1007DEC70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B5360;
  *(v7 + 56) = &type metadata for ArticlePresentingFlowActionLogic;
  *(v7 + 64) = &off_1008C6DF0;
  *(v7 + 96) = &type metadata for ArcadeWelcomeFlowActionLogic;
  *(v7 + 104) = &off_1008B5770;
  *(v7 + 136) = &type metadata for NavigationControllerFlowActionLogic;
  *(v7 + 144) = &off_1008D1C38;
  *(v7 + 176) = &type metadata for TabBarControllerFlowActionLogic;
  *(v7 + 184) = &off_1008B8A18;
  *(v7 + 216) = &type metadata for RootFlowActionLogic;
  *(v7 + 224) = &off_1008CCCA0;
  type metadata accessor for FlowActionImplementation();
  v8 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  *(v8 + 24) = v7;
  v15 = v8;
  sub_1006D7E8C(&qword_100992890, type metadata accessor for FlowActionImplementation, &unk_1007C3E7C);
  ActionDispatcher.add<A>(_:)();

  sub_100006C54();
  swift_unknownObjectUnownedInit();
  sub_1006D8710();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8764(&v15);
  sub_1006D87B8();
  ActionDispatcher.add<A>(_:)();
  sub_1006D880C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8860();
  ActionDispatcher.add<A>(_:)();
  sub_1006D88B4();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8908();
  ActionDispatcher.add<A>(_:)();
  sub_1006D895C();
  ActionDispatcher.add<A>(_:)();
  swift_unknownObjectUnownedInit();

  sub_1006D89B0();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8A04(&v15);
  sub_1006D8A58();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8AAC();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8B00();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8B54();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8BA8();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8BFC();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8C50();
  ActionDispatcher.add<A>(_:)();
  v16 = 0;
  swift_unknownObjectWeakInit();
  v16 = 0;
  swift_unknownObjectWeakAssign();
  sub_1006D8CA4();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8CF8(&v15);
  sub_1006D8D4C();
  ActionDispatcher.add<A>(_:)();
  v16 = 0;
  swift_unknownObjectWeakInit();
  v16 = 0;
  swift_unknownObjectWeakAssign();
  sub_1006D8DA0();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8DF4(&v15);
  sub_1006D8E48();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8E9C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8EF0();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8F44();
  ActionDispatcher.add<A>(_:)();
  sub_100094F68();
  ActionDispatcher.add<A>(_:)();
  swift_unknownObjectUnownedInit();

  sub_1006D8F98();
  ActionDispatcher.add<A>(_:)();
  sub_1006D8FEC(&v15);
  swift_unknownObjectUnownedInit();

  sub_1006D9040();
  ActionDispatcher.add<A>(_:)();
  sub_1006D9094(&v15);
  sub_1006D90E8();
  ActionDispatcher.add<A>(_:)();
  swift_unknownObjectUnownedInit();

  sub_1006D913C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D9190(&v15);
  swift_unknownObjectUnownedInit();

  sub_1006D91E4();
  ActionDispatcher.add<A>(_:)();
  sub_1006D9238(&v15);
  sub_1006D928C();
  ActionDispatcher.add<A>(_:)();
  sub_1006D92E0();
  ActionDispatcher.add<A>(_:)();
  swift_unknownObjectUnownedInit();

  sub_1006D9334();
  ActionDispatcher.add<A>(_:)();
  sub_1006D9388(&v15);
  v16 = [objc_allocWithZone(type metadata accessor for SignInActionImplementation.SignInDelegate()) init];
  swift_unknownObjectUnownedInit();

  sub_1006D93DC();
  ActionDispatcher.add<A>(_:)();
  sub_1006D9430(&v15);
  sub_1006D9484();
  ActionDispatcher.add<A>(_:)();
  swift_unknownObjectUnownedInit();
  sub_1006D94D8();
  ActionDispatcher.add<A>(_:)();
  sub_1006D952C(&v15);
  v9 = type metadata accessor for TabChangeActionImplementation();
  v10 = objc_allocWithZone(v9);
  swift_unknownObjectUnownedInit();
  v11 = [objc_allocWithZone(UINavigationController) init];
  *&v10[OBJC_IVAR____TtC8AppStore29TabChangeActionImplementation_loadingNavigationController] = v11;
  v14.receiver = v10;
  v14.super_class = v9;
  v12 = objc_msgSendSuper2(&v14, "init");

  v15 = v12;
  sub_1006D7E8C(&qword_1009929A0, type metadata accessor for TabChangeActionImplementation, &unk_1007D7C90);
  ActionDispatcher.add<A>(_:)();

  sub_1006D9580();
  ActionDispatcher.add<A>(_:)();
  sub_1006D95D4();
  ActionDispatcher.add<A>(_:)();
  sub_1006D9628();
  ActionDispatcher.add<A>(_:)();
  sub_1006D967C();
  ActionDispatcher.add<A>(_:)();
  sub_100006C54();
  swift_unknownObjectUnownedInit();
  sub_1006D96D0();
  ActionDispatcher.add<A>(_:)();
  return sub_1006D9724(&v15);
}

uint64_t sub_1006D665C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-v5];
  swift_beginAccess();
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
  }

  swift_beginAccess();
  v10 = *(a2 + 16);

  sub_1005F9AF4(a1, 1, v10, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_1006D6800(char *a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_10002849C(&qword_1009927C8, &unk_1007DEC40);
  __chkstk_darwin(v5 - 8);
  v7 = (&v33 - v6);
  v8 = type metadata accessor for EntitlementRefeshCondition();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v12 = v38;
  *v11 = 1;
  (*(v9 + 104))(v11, enum case for EntitlementRefeshCondition.ifCacheIsExpired(_:), v8);
  v37 = v12;
  ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)();

  (*(v9 + 8))(v11, v8);
  sub_100005744(0, &unk_100989C60, AMSURLSession_ptr);
  inject<A, B>(_:from:)();
  v13 = v38;
  type metadata accessor for URLProtocolDelegate();
  inject<A, B>(_:from:)();
  v14 = v38;
  v15 = *(v3 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  *v7 = v15;
  v16 = enum case for URLProtocolDelegate.DialogStyle.alert(_:);
  v17 = type metadata accessor for URLProtocolDelegate.DialogStyle();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v7, v16, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = v15;
  URLProtocolDelegate.dialogStyle.setter();
  v35 = v13;
  [v13 setDelegate:v14];
  type metadata accessor for GameCenterFriendRequestCoordinator();
  inject<A, B>(_:from:)();
  v34 = v38;
  dispatch thunk of GameCenterFriendRequestCoordinator.start()();
  type metadata accessor for InAppMessagesManager();
  inject<A, B>(_:from:)();
  sub_1000EF498(a1);
  *&v19[OBJC_IVAR____TtC8AppStore21StoreTabBarController_objectGraph] = a1;

  sub_100005744(0, &qword_10098D1A0, ACAccountStore_ptr);

  inject<A, B>(_:from:)();
  v20 = v38;
  type metadata accessor for QuickActionsController();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v33 = v20;
  sub_1001BAE6C();
  type metadata accessor for SheetEngagementManager();
  inject<A, B>(_:from:)();
  v22 = v38;
  v23 = [v19 view];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 window];

    SheetEngagementManager.presentationWindow.setter();
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = a1;

    SheetEngagementManager.flowActionViewControllerFactory.setter();

    swift_unknownObjectUnownedLoadStrong();
    sub_10043FCF8(v19, v21, v36, a1);
    swift_unknownObjectRelease();
    v28 = [objc_opt_self() sharedApplication];
    LODWORD(v26) = [v28 launchedToTest];

    if (v26)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      v30 = v19;

      v31 = (Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy);
      v32 = *(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy);
      *v31 = v30;
      v31[1] = a1;
      sub_100442854(v32);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006D6D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v5 - 8);
  v7 = v24 - v6;
  v8 = sub_10002849C(&unk_1009796F0, &unk_1007BA400);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = type metadata accessor for FlowDestination(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v16 = [*(Strong + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController) traitCollection];
  v26 = 0;
  memset(v25, 0, sizeof(v25));

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, v24, v10);
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v17(v10, 1, v11) != 1)
    {
      sub_10002B894(v10, &unk_1009796F0, &unk_1007BA400);
    }
  }

  else
  {
    sub_10013A05C(v10, v14);
  }

  v19 = FlowAction.referrerUrl.getter();
  v21 = v20;
  FlowAction.referrerData.getter();
  sub_1003C1668(v14, v16, v19, v21, v7, v25, a3, 1);
  v18 = v22;

  sub_10002B894(v7, &unk_1009767C0, &unk_1007B1880);
  sub_1001181EC(v14);
  sub_10002B894(v25, &unk_100981880, &unk_1007BECD0);
  return v18;
}

double sub_1006D706C()
{
  v0 = type metadata accessor for BootstrapPhase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (qword_10096DC28 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSLogger();
  sub_1000056A8(v5, qword_1009D0440);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  (*(v1 + 104))(v3, enum case for BootstrapPhase.initialBootstrap(_:), v0);
  BootstrapPendingClosuresHandler.didComplete(bootstrapPhase:)();
  (*(v1 + 8))(v3, v0);
  if (*(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_freshnessWatchdog))
  {

    JSFreshnessWatchdog.didFinishBootstrap()();
  }

  swift_unknownObjectRelease();
  return result;
}

void sub_1006D72CC(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = type metadata accessor for JUContentUnavailableViewController.PresentationContext();
  __chkstk_darwin(v4 - 8);
  static JUContentUnavailableViewController.PresentationContext.placeholder.getter();
  v5 = objc_allocWithZone(type metadata accessor for JUContentUnavailableViewController());

  swift_errorRetain();
  v6 = JUContentUnavailableViewController.init(error:presentationContext:retry:)();
  v7 = *(v3 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_tabBarController);
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007B0B70;
  *(v8 + 32) = v6;
  sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  v9 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setViewControllers:isa];

  type metadata accessor for AppStoreApplication();
  v17.receiver = swift_getObjCClassFromMetadata();
  v17.super_class = &OBJC_METACLASS____TtC8AppStore19AppStoreApplication;
  v11 = objc_msgSendSuper2(&v17, "sharedApplication");
  v12 = swift_dynamicCastClassUnconditional();
  swift_errorRetain();
  sub_10002849C(&qword_10098A690, qword_1007B39A0);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  if (ASKBuildTypeIsPerformanceTesting() && ([v12 shouldRecordExtendedLaunchTime] & 1) != 0 && (v16 = OBJC_IVAR____TtC8AppStore19AppStoreApplication_hasConcludedExtendedLaunchTest, (*(v12 + OBJC_IVAR____TtC8AppStore19AppStoreApplication_hasConcludedExtendedLaunchTest) & 1) == 0))
  {
    sub_10045B064(v13, v15, v12);

    *(v12 + v16) = 1;
  }

  else
  {
  }
}

double sub_1006D7520()
{
  sub_1006D76AC(v0 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_delegate);

  return result;
}

uint64_t sub_1006D7570()
{
  sub_10001F64C(v0 + 16);
  v1 = OBJC_IVAR____TtC8AppStore13BaseBootstrap_logger;
  v2 = type metadata accessor for CompoundLogger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1006D76AC(v0 + OBJC_IVAR____TtC8AppStore17AppStoreBootstrap_delegate);

  return v0;
}

uint64_t sub_1006D764C()
{
  sub_1006D7570();

  return swift_deallocClassInstance();
}

unint64_t sub_1006D76E4(uint64_t a1)
{
  type metadata accessor for MetricsFieldInclusionRequest();
  sub_1006D7E8C(&qword_1009726B8, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1006D777C(a1, v2);
}

unint64_t sub_1006D777C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for MetricsFieldInclusionRequest();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1006D7E8C(&qword_1009726C0, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1006D793C(uint64_t a1)
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B0B70;
  type metadata accessor for AccountChannelsProvider();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v2 selector:"notifyObserver" name:VSAccountStoreDidChangeNotification object:0];

  sub_1006D7E8C(&qword_1009929F8, type metadata accessor for AccountChannelsProvider, &protocol conformance descriptor for AccountChannelsProvider);
  type metadata accessor for MSOPersonalizationDataSource();
  swift_allocObject();

  *(inited + 32) = MSOPersonalizationDataSource.init(objectGraph:accountChannelsProvider:)();
  sub_1002A6638(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for PersonalizationDataProvider();
  swift_allocObject();
  return PersonalizationDataProvider.init(dataSources:)();
}

uint64_t sub_1006D7AD4(uint64_t a1)
{
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v1 = v22[0];
  sub_10002849C(&qword_100988670, qword_1007D1340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 0;
  sub_100398EF4(inited);
  swift_setDeallocating();
  sub_10002B894(inited + 32, &unk_100982880, &unk_1007DEC80);
  v4 = objc_allocWithZone(CBCentralManager);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithDelegate:0 queue:0 options:isa];

  sub_10002849C(&unk_100975540, &qword_1007B77A0);
  inject<A, B>(_:from:)();
  sub_10002C0AC(v22, &v19);
  v7 = [objc_opt_self() sharedInstance];
  if (v7)
  {
    v8 = sub_100005744(0, &qword_1009929E8, NRPairedDeviceRegistry_ptr);
    v9 = sub_1006D9788(&qword_1009929F0, &qword_1009929E8, NRPairedDeviceRegistry_ptr, &protocol conformance descriptor for NRPairedDeviceRegistry);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = sub_100005744(0, &qword_1009929D0, CBCentralManager_ptr);
  v11 = sub_1006D9788(&qword_1009929D8, &qword_1009929D0, CBCentralManager_ptr, &protocol conformance descriptor for CBCentralManager);
  v12 = type metadata accessor for AppStoreTodayCardTriggerBuilder();
  v13 = swift_allocObject();
  v13[12] = v1;
  sub_100005A38(&v19, (v13 + 13));
  v13[2] = v7;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = v8;
  v13[6] = v9;
  v13[7] = v6;
  v13[10] = v10;
  v13[11] = v11;
  type metadata accessor for TodayCardTriggerController();
  v20 = v12;
  v21 = sub_1006D7E8C(&qword_1009929E0, type metadata accessor for AppStoreTodayCardTriggerBuilder, &protocol conformance descriptor for AppStoreTodayCardTriggerBuilder);
  *&v19 = v13;
  v14 = objc_opt_self();
  v15 = v6;

  v16 = [v14 standardUserDefaults];
  sub_100737D84();

  [v14 standardUserDefaults];
  sub_100005744(0, &qword_100980E88, NSUserDefaults_ptr);
  v17 = TodayCardTriggerController.__allocating_init(builder:bag:fastExpirationEnabled:persistantStore:)();

  sub_100007000(v22);
  return v17;
}

uint64_t sub_1006D7E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1006D7ED4(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009828B0, &qword_1007CA240);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002849C(&qword_1009828B8, &qword_1007DEC60);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1006D80B8(v9, v5);
      result = sub_1006D76E4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MetricsFieldInclusionRequest();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100005A38(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1006D80B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009828B0, &qword_1007CA240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006D8128()
{
  result = qword_1009927F8;
  if (!qword_1009927F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009927F8);
  }

  return result;
}

unint64_t sub_1006D817C()
{
  result = qword_100992800;
  if (!qword_100992800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992800);
  }

  return result;
}

unint64_t sub_1006D81D0()
{
  result = qword_100992808;
  if (!qword_100992808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992808);
  }

  return result;
}

unint64_t sub_1006D8224()
{
  result = qword_100992810;
  if (!qword_100992810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992810);
  }

  return result;
}

unint64_t sub_1006D8278()
{
  result = qword_100992818;
  if (!qword_100992818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992818);
  }

  return result;
}

unint64_t sub_1006D82CC()
{
  result = qword_100992820;
  if (!qword_100992820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992820);
  }

  return result;
}

unint64_t sub_1006D8320()
{
  result = qword_100992830;
  if (!qword_100992830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992830);
  }

  return result;
}

unint64_t sub_1006D8374()
{
  result = qword_100992838;
  if (!qword_100992838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992838);
  }

  return result;
}

unint64_t sub_1006D83C8()
{
  result = qword_100992840;
  if (!qword_100992840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992840);
  }

  return result;
}

unint64_t sub_1006D841C()
{
  result = qword_100992848;
  if (!qword_100992848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992848);
  }

  return result;
}

unint64_t sub_1006D8470()
{
  result = qword_100992850;
  if (!qword_100992850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992850);
  }

  return result;
}

unint64_t sub_1006D84C4()
{
  result = qword_100992858;
  if (!qword_100992858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992858);
  }

  return result;
}

unint64_t sub_1006D8518()
{
  result = qword_100992860;
  if (!qword_100992860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992860);
  }

  return result;
}

unint64_t sub_1006D856C()
{
  result = qword_100992868;
  if (!qword_100992868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992868);
  }

  return result;
}

unint64_t sub_1006D85C0()
{
  result = qword_100992870;
  if (!qword_100992870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992870);
  }

  return result;
}

unint64_t sub_1006D8614()
{
  result = qword_100992878;
  if (!qword_100992878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992878);
  }

  return result;
}

unint64_t sub_1006D8668()
{
  result = qword_100992880;
  if (!qword_100992880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992880);
  }

  return result;
}

unint64_t sub_1006D8710()
{
  result = qword_100992898;
  if (!qword_100992898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992898);
  }

  return result;
}

unint64_t sub_1006D87B8()
{
  result = qword_1009928A0;
  if (!qword_1009928A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928A0);
  }

  return result;
}

unint64_t sub_1006D880C()
{
  result = qword_1009928A8;
  if (!qword_1009928A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928A8);
  }

  return result;
}

unint64_t sub_1006D8860()
{
  result = qword_1009928B0;
  if (!qword_1009928B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928B0);
  }

  return result;
}

unint64_t sub_1006D88B4()
{
  result = qword_1009928B8;
  if (!qword_1009928B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928B8);
  }

  return result;
}

unint64_t sub_1006D8908()
{
  result = qword_1009928C0;
  if (!qword_1009928C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928C0);
  }

  return result;
}

unint64_t sub_1006D895C()
{
  result = qword_1009928C8;
  if (!qword_1009928C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928C8);
  }

  return result;
}

unint64_t sub_1006D89B0()
{
  result = qword_1009928D0;
  if (!qword_1009928D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928D0);
  }

  return result;
}

unint64_t sub_1006D8A58()
{
  result = qword_1009928D8;
  if (!qword_1009928D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928D8);
  }

  return result;
}

unint64_t sub_1006D8AAC()
{
  result = qword_1009928E0;
  if (!qword_1009928E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928E0);
  }

  return result;
}

unint64_t sub_1006D8B00()
{
  result = qword_1009928E8;
  if (!qword_1009928E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928E8);
  }

  return result;
}

unint64_t sub_1006D8B54()
{
  result = qword_1009928F0;
  if (!qword_1009928F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928F0);
  }

  return result;
}

unint64_t sub_1006D8BA8()
{
  result = qword_1009928F8;
  if (!qword_1009928F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009928F8);
  }

  return result;
}

unint64_t sub_1006D8BFC()
{
  result = qword_100992900;
  if (!qword_100992900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992900);
  }

  return result;
}

unint64_t sub_1006D8C50()
{
  result = qword_100992908;
  if (!qword_100992908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992908);
  }

  return result;
}

unint64_t sub_1006D8CA4()
{
  result = qword_100992910;
  if (!qword_100992910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992910);
  }

  return result;
}

unint64_t sub_1006D8D4C()
{
  result = qword_100992918;
  if (!qword_100992918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992918);
  }

  return result;
}

unint64_t sub_1006D8DA0()
{
  result = qword_100992920;
  if (!qword_100992920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992920);
  }

  return result;
}

unint64_t sub_1006D8E48()
{
  result = qword_100992928;
  if (!qword_100992928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992928);
  }

  return result;
}

unint64_t sub_1006D8E9C()
{
  result = qword_100992930;
  if (!qword_100992930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992930);
  }

  return result;
}

unint64_t sub_1006D8EF0()
{
  result = qword_100992938;
  if (!qword_100992938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992938);
  }

  return result;
}

unint64_t sub_1006D8F44()
{
  result = qword_100992940;
  if (!qword_100992940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992940);
  }

  return result;
}

unint64_t sub_1006D8F98()
{
  result = qword_100992948;
  if (!qword_100992948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992948);
  }

  return result;
}

unint64_t sub_1006D9040()
{
  result = qword_100992950;
  if (!qword_100992950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992950);
  }

  return result;
}

unint64_t sub_1006D90E8()
{
  result = qword_100992958;
  if (!qword_100992958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992958);
  }

  return result;
}

unint64_t sub_1006D913C()
{
  result = qword_100992960;
  if (!qword_100992960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992960);
  }

  return result;
}

unint64_t sub_1006D91E4()
{
  result = qword_100992968;
  if (!qword_100992968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992968);
  }

  return result;
}

unint64_t sub_1006D928C()
{
  result = qword_100992970;
  if (!qword_100992970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992970);
  }

  return result;
}

unint64_t sub_1006D92E0()
{
  result = qword_100992978;
  if (!qword_100992978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992978);
  }

  return result;
}

unint64_t sub_1006D9334()
{
  result = qword_100992980;
  if (!qword_100992980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992980);
  }

  return result;
}

unint64_t sub_1006D93DC()
{
  result = qword_100992988;
  if (!qword_100992988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992988);
  }

  return result;
}

unint64_t sub_1006D9484()
{
  result = qword_100992990;
  if (!qword_100992990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992990);
  }

  return result;
}

unint64_t sub_1006D94D8()
{
  result = qword_100992998;
  if (!qword_100992998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992998);
  }

  return result;
}

unint64_t sub_1006D9580()
{
  result = qword_1009929A8;
  if (!qword_1009929A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009929A8);
  }

  return result;
}

unint64_t sub_1006D95D4()
{
  result = qword_1009929B0;
  if (!qword_1009929B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009929B0);
  }

  return result;
}

unint64_t sub_1006D9628()
{
  result = qword_1009929B8;
  if (!qword_1009929B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009929B8);
  }

  return result;
}

unint64_t sub_1006D967C()
{
  result = qword_1009929C0;
  if (!qword_1009929C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009929C0);
  }

  return result;
}

unint64_t sub_1006D96D0()
{
  result = qword_1009929C8;
  if (!qword_1009929C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009929C8);
  }

  return result;
}

uint64_t sub_1006D9788(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005744(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1006D97CC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_1009D36B8 = 1.0 / v2;
  return result;
}

uint64_t sub_1006D9858(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for StaticDimension();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DividerView.Style(0);
  sub_100005644(v12, a3);
  v13 = sub_1000056A8(v12, a3);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v19[3] = v4;
  v19[4] = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v19);
  (*(v5 + 16))(v14, v7, v4);
  v15 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v5 + 8))(v7, v4);
  v16 = *&UIEdgeInsetsZero.bottom;
  *v13 = *&UIEdgeInsetsZero.top;
  *(v13 + 1) = v16;
  return (*(v9 + 32))(&v13[*(v12 + 20)], v11, v8);
}

char *sub_1006D9A84(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = OBJC_IVAR____TtC8AppStore11DividerView_style;
  if (qword_10096EE40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for DividerView.Style(0);
  v14 = sub_1000056A8(v13, qword_1009D36C0);
  sub_1002BB2D0(v14, &v4[v12]);
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore11DividerView_separatorView] = v15;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC8AppStore11DividerView_separatorView;
  v18 = *&v16[OBJC_IVAR____TtC8AppStore11DividerView_separatorView];
  sub_100028BB8();
  v19 = v16;
  v20 = v18;
  v21 = static UIColor.defaultLine.getter();
  [v20 setBackgroundColor:v21];

  [v19 addSubview:*&v16[v17]];
  return v19;
}

id sub_1006D9EEC()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_10096EE38 != -1)
  {
    swift_once();
  }

  v9 = *&qword_1009D36B8;
  v10 = *&v0[OBJC_IVAR____TtC8AppStore11DividerView_separatorView];
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  MinX = CGRectGetMinX(v17);
  v12 = &v0[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v13 = MinX + v12[1];
  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  v14 = CGRectGetMidY(v18) + v9 * -0.5;
  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  return [v10 setFrame:{v13, v14, CGRectGetWidth(v19) - v12[1] - v12[3], v9}];
}

uint64_t sub_1006DA0F4(uint64_t a1)
{
  result = type metadata accessor for DividerView.Style(319);
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

void sub_1006DA1E4(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for StaticDimension();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1006DA268(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EE38 != -1)
  {
    swift_once();
  }

  v6 = floor(*&qword_1009D36B8);
  type metadata accessor for DividerView.Style(0);
  static Dimensions.defaultRoundingRule.getter();
  type metadata accessor for StaticDimension();
  AnyDimension.value(in:rounded:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  return v6 + v8;
}

uint64_t sub_1006DA3B4()
{
  v1 = type metadata accessor for Adaptive();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v0 + 424))
  {
    sub_1006DA648(v0 + 56, v7);
    sub_10002C0AC(v0 + 224, v11);
    sub_10002C0AC(v0 + 304, v13);
    sub_10002C0AC(v0 + 344, &v14);
    sub_10002C0AC(v0 + 384, &v15);
    sub_100472554();
  }

  else
  {
    sub_10051E578(v0, v7);
    sub_10002C0AC(v0 + 224, &v8);
    sub_10002C0AC(v0 + 264, &v10);
    sub_10002C0AC(v0 + 344, &v12);
    sub_10051E5B0();
  }

  Adaptive.init<A>(_:)();
  swift_getKeyPath();
  sub_100067E04(v0 + 160, v7);
  sub_10002C0AC(v0 + 224, &v9);
  sub_10002C0AC(v0 + 344, v11);
  sub_10002C0AC(v0 + 384, v13);
  sub_100067E3C();

  Adaptive.onCustom<A>(_:_:)();

  sub_1006DA710(v7);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1006DA6A4(void *a1, uint64_t a2)
{
  v2 = a1;
  swift_getAtKeyPath();

  return v4;
}

uint64_t sub_1006DA770(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 425))
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

uint64_t sub_1006DA7B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 424) = 0;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 425) = 1;
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

    *(result + 425) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1006DA878(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1006DA8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1006DA8FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1006DA990(uint64_t a1, double a2, double a3)
{
  v3 = type metadata accessor for Adaptive();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006DA3B4();
  dispatch thunk of Placeable.measure(toFit:with:)();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_1006DAAB4(uint64_t a1, double a2)
{
  v2 = type metadata accessor for Adaptive();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006DA3B4();
  dispatch thunk of Placeable.place(at:with:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1006DABC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006DAC94();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_1006DAC24()
{
  result = qword_100992AF0;
  if (!qword_100992AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992AF0);
  }

  return result;
}

unint64_t sub_1006DAC94()
{
  result = qword_100992AF8;
  if (!qword_100992AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992AF8);
  }

  return result;
}

void sub_1006DACEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10002849C(&qword_100972C98, &unk_1007E20D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  if (a2)
  {
    v10 = type metadata accessor for PageFacets.Facet.Option();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v9, a4, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    PageFacetsPresenter.didSelect(option:in:)();
    sub_10002B894(v9, &qword_100972C98, &unk_1007E20D0);
  }
}

void *sub_1006DAE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageFacets.Facet();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v75 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v7;
  v8 = type metadata accessor for PageFacets.Facet.Option();
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v71 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v9;
  v10 = type metadata accessor for PageFacets.Facet.DisplayType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v80 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  v81 = a3;
  v19 = PageFacetsPresenter.selectedFacetOptions.getter();
  if (*(v19 + 16) && (v20 = sub_1003D7A9C(a1), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);

    v23 = sub_10029615C(a2, v22);
  }

  else
  {

    v23 = 0;
  }

  PageFacets.Facet.displayType.getter();
  v24 = *(v11 + 104);
  v64 = enum case for PageFacets.Facet.DisplayType.singleSelection(_:);
  v24(v15);
  sub_1006DD19C(&qword_100972CA0, &type metadata accessor for PageFacets.Facet.DisplayType, &protocol conformance descriptor for PageFacets.Facet.DisplayType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v82 = v10;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v85 != v83 || (v25 = v23, v86 != v84))
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)() & v23;
  }

  v77 = v11;
  v26 = *(v11 + 8);
  v27 = v15;
  v28 = v82;
  v26(v27, v82);
  v62 = v11 + 8;
  v61 = v26;
  v26(v18, v28);

  v70 = v25 ^ 1;
  PageFacets.Facet.Option.systemImageName.getter();
  if (v29)
  {
    v30 = String._bridgeToObjectiveC()();

    v69 = [objc_opt_self() systemImageNamed:v30];
  }

  else
  {
    v69 = 0;
  }

  v31 = PageFacets.Facet.Option.title.getter();
  v67 = v32;
  v68 = v31;
  v66 = v23 & 1;
  v65 = sub_100005744(0, &qword_10097CD40, UIAction_ptr);
  v33 = v73;
  v34 = *(v73 + 16);
  v35 = v71;
  v63 = a2;
  v36 = v74;
  v34(v71, a2, v74);
  v37 = v78;
  v38 = v79;
  v39 = v75;
  (*(v78 + 16))(v75, a1, v79);
  v40 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v41 = *(v37 + 80);
  v42 = v72 + v41 + v40;
  v72 = a1;
  v43 = v42 & ~v41;
  v44 = swift_allocObject();
  *(v44 + 16) = v70 & 1;
  *(v44 + 24) = v81;
  (*(v33 + 32))(v44 + v40, v35, v36);
  (*(v37 + 32))(v44 + v43, v39, v38);
  v45 = v69;

  v46 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v47 = v80;
  PageFacets.Facet.displayType.getter();
  v48 = v82;
  v49 = (*(v77 + 88))(v47, v82);
  if (v49 == enum case for PageFacets.Facet.DisplayType.toggle(_:))
  {
    v85 = 0x2D7465636166;
    v86 = 0xE600000000000000;
    v50 = v46;
    v51._countAndFlagsBits = PageFacets.Facet.id.getter();
    String.append(_:)(v51);

    v52 = String._bridgeToObjectiveC()();

    [v50 setAccessibilityIdentifier:v52];

    goto LABEL_18;
  }

  if (v49 == v64 || v49 == enum case for PageFacets.Facet.DisplayType.multipleSelection(_:))
  {
    v53 = PageFacets.Facet.Option.metricsValue.getter();
    if (!v54)
    {
LABEL_19:

      return v46;
    }

    v55 = v53;
    v56 = v54;
    v85 = 0x2D7465636166;
    v86 = 0xE600000000000000;
    v57 = v46;
    v58._countAndFlagsBits = v55;
    v58._object = v56;
    String.append(_:)(v58);

    v52 = String._bridgeToObjectiveC()();

    [v57 setAccessibilityIdentifier:v52];

LABEL_18:
    goto LABEL_19;
  }

  v61(v47, v48);
  return v46;
}

uint64_t sub_1006DB518(uint64_t a1)
{
  v2 = type metadata accessor for PageFacets.Facet.Option();
  v75 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v49 - v6;
  v8 = type metadata accessor for PageFacets.Facet();
  v68 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for PageFacets.FacetGroup();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_10097CD30, &qword_1007B3D60);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for PageFacets();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  PageFacetsPresenter.pageFacets.getter();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10002B894(v14, &qword_10097CD30, &qword_1007B3D60);
    return 0;
  }

  v71 = v16;
  (*(v16 + 32))(v18, v14, v15);
  result = PageFacets.facetGroups.getter();
  v51 = *(result + 16);
  if (!v51)
  {

    v22 = v71;
LABEL_41:
    (*(v22 + 8))(v18, v15);
    return 0;
  }

  v50 = v15;
  v20 = 0;
  v55 = result + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v54 = v59 + 16;
  v64 = v68 + 16;
  v21 = (v68 + 8);
  v79 = v75 + 16;
  v80 = (v75 + 8);
  v52 = (v59 + 8);
  v81 = v7;
  v22 = v71;
  v57 = v8;
  v69 = v18;
  v70 = v10;
  v53 = result;
  v56 = (v68 + 8);
  while (v20 < *(result + 16))
  {
    v24 = *(v59 + 72);
    v58 = v20;
    (*(v59 + 16))(v60, v55 + v24 * v20, v61);
    result = PageFacets.FacetGroup.facets.getter();
    v67 = *(result + 16);
    if (v67)
    {
      v25 = 0;
      v26 = *(v68 + 80);
      v65 = result;
      v66 = result + ((v26 + 32) & ~v26);
      while (v25 < *(result + 16))
      {
        (*(v68 + 16))(v10, v66 + *(v68 + 72) * v25, v8);
        if ((PageFacets.Facet.isHiddenFromMenu.getter() & 1) == 0)
        {
          v63 = v25;
          v27 = PageFacetsPresenter.selectedFacetOptions.getter();
          if (*(v27 + 16))
          {
            v28 = sub_1003D7A9C(v10);
            if (v29)
            {
              v30 = *(*(v27 + 56) + 8 * v28);

              result = PageFacets.Facet.options.getter();
              v31 = result;
              v74 = *(result + 16);
              if (v74)
              {
                v32 = 0;
                v72 = result + ((*(v75 + 80) + 32) & ~*(v75 + 80));
                v73 = result;
                v77 = v30 + 56;
                v78 = v30;
                while (v32 < *(v31 + 16))
                {
                  v33 = *(v75 + 72);
                  v34 = *(v75 + 16);
                  v34(v7, v72 + v33 * v32, v2);
                  v35 = PageFacets.Facet.defaultOptions.getter();
                  v36 = *(v35 + 16);
                  v76 = v32;
                  if (v36 && (sub_1006DD19C(&qword_100972C70, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option), v37 = dispatch thunk of Hashable._rawHashValue(seed:)(), v38 = -1 << *(v35 + 32), v39 = v37 & ~v38, ((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
                  {
                    v40 = ~v38;
                    do
                    {
                      v34(v4, *(v35 + 48) + v39 * v33, v2);
                      sub_1006DD19C(&qword_100972D20, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
                      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
                      (*v80)(v4, v2);
                      if (v41)
                      {
                        break;
                      }

                      v39 = (v39 + 1) & v40;
                    }

                    while (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v42 = v78;
                  if (*(v78 + 16))
                  {
                    sub_1006DD19C(&qword_100972C70, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
                    v7 = v81;
                    v43 = dispatch thunk of Hashable._rawHashValue(seed:)();
                    v44 = -1 << *(v42 + 32);
                    v45 = v43 & ~v44;
                    if ((*(v77 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
                    {
                      v46 = ~v44;
                      while (1)
                      {
                        v34(v4, *(v78 + 48) + v45 * v33, v2);
                        sub_1006DD19C(&qword_100972D20, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
                        v47 = dispatch thunk of static Equatable.== infix(_:_:)();
                        v48 = *v80;
                        (*v80)(v4, v2);
                        if (v47)
                        {
                          break;
                        }

                        v45 = (v45 + 1) & v46;
                        if (((*(v77 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                        {
                          v7 = v81;
                          goto LABEL_36;
                        }
                      }

                      v7 = v81;
                      result = (v48)(v81, v2);
                      v10 = v70;
                      v22 = v71;
                      v18 = v69;
                      v31 = v73;
                      if ((v41 & 1) == 0)
                      {

                        (*v56)(v10, v57);
                        (*v52)(v60, v61);
                        (*(v22 + 8))(v18, v50);
                        return 1;
                      }
                    }

                    else
                    {
                      v48 = *v80;
LABEL_36:
                      v22 = v71;
                      v18 = v69;
                      v31 = v73;
                      result = (v48)(v7, v2);
                      v10 = v70;
                    }
                  }

                  else
                  {
                    v7 = v81;
                    result = (*v80)(v81, v2);
                    v10 = v70;
                    v22 = v71;
                    v18 = v69;
                    v31 = v73;
                  }

                  v32 = v76 + 1;
                  if (v76 + 1 == v74)
                  {

                    v8 = v57;
                    v21 = v56;
                    goto LABEL_11;
                  }
                }

                __break(1u);
                break;
              }
            }
          }

LABEL_11:
          v25 = v63;
        }

        ++v25;
        (*v21)(v10, v8);
        result = v65;
        if (v25 == v67)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:

    v23 = v58 + 1;
    (*v52)(v60, v61);
    v20 = v23;
    result = v53;
    if (v23 == v51)
    {

      v15 = v50;
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

Class sub_1006DBEF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v132 = a4;
  v133 = a3;
  v100 = type metadata accessor for SystemImage();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageFacets.Facet.DisplayType();
  v128 = *(v6 - 8);
  __chkstk_darwin(v6);
  v130 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v129 = &v96 - v9;
  v126 = type metadata accessor for PageFacets.Facet();
  v102 = *(v126 - 8);
  __chkstk_darwin(v126);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for PageFacets.FacetGroup();
  v111 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097CD30, &qword_1007B3D60);
  __chkstk_darwin(v13 - 8);
  v131 = (&v96 - v14);
  v101 = type metadata accessor for PageFacets();
  v112 = *(v101 - 8);
  __chkstk_darwin(v101);
  v97 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = _swiftEmptyArrayStorage;
  (*(v17 + 104))(v20, enum case for ArcadeSeeAllGamesPage.DisplayStyle.default(_:), v16, v18);
  sub_1006DD19C(&qword_10097CC88, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle, &protocol conformance descriptor for ArcadeSeeAllGamesPage.DisplayStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v134 != v135)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v17 + 8))(v20, v16);

  v21._object = 0x8000000100821530;
  v21._countAndFlagsBits = 0xD000000000000021;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  localizedString(_:comment:)(v21, v22);
  v23 = String._bridgeToObjectiveC()();

  v24 = [objc_opt_self() systemImageNamed:v23];

  sub_100005744(0, &qword_10097CD40, UIAction_ptr);

  v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v96 = v25;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = v136;
    v27 = v131;
    PageFacetsPresenter.pageFacets.getter();
    v25 = v112;
    v28 = v101;
    if (v112[6](v27, 1, v101) == 1)
    {
      sub_10002B894(v27, &qword_10097CD30, &qword_1007B3D60);
      goto LABEL_72;
    }

    (*(v25 + 32))(v97, v27, v28);
    v29 = PageFacets.facetGroups.getter();
    v108 = *(v29 + 16);
    if (!v108)
    {
      break;
    }

    v30 = 0;
    v107 = v29 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v106 = v111 + 16;
    v105 = v111 + 8;
    v125 = enum case for PageFacets.Facet.DisplayType.singleSelection(_:);
    v124 = (v128 + 104);
    v123 = (v128 + 8);
    v31 = (v102 + 8);
    v120 = v6;
    v32 = v126;
    v104 = v29;
    v121 = (v102 + 8);
    v122 = v102 + 16;
    v103 = a1;
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        goto LABEL_77;
      }

      v127 = v26;
      v33 = v111;
      v34 = *(v111 + 72);
      v116 = v30;
      v35 = v109;
      v36 = v110;
      (*(v111 + 16))(v109, v107 + v34 * v30, v110);
      v37 = PageFacets.FacetGroup.facets.getter();
      (*(v33 + 8))(v35, v36);
      v38 = *(v37 + 16);
      if (v38)
      {
        break;
      }

      v26 = v127;
LABEL_9:
      v30 = v116 + 1;
      v25 = v112;
      v29 = v104;
      if (v116 + 1 == v108)
      {

        v28 = v101;
        goto LABEL_71;
      }
    }

    v25 = 0;
    v39 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v113 = v37;
    v133 = v37 + v39;
    v40 = *(v102 + 72);
    v131 = *(v102 + 16);
    v132 = v40;
    v26 = v127;
    v114 = v38;
    v131(v11, v133, v32);
    while (1)
    {
      if (PageFacets.Facet.isHiddenFromMenu.getter())
      {
        goto LABEL_15;
      }

      v127 = v26;
      v128 = v25;
      v41 = PageFacets.Facet.options.getter();
      v42 = *(v41 + 16);
      if (v42)
      {
        *&v134 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v43 = *(type metadata accessor for PageFacets.Facet.Option() - 8);
        v44 = v41 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v45 = *(v43 + 72);
        do
        {
          sub_1006DAE2C(v11, v44, a1);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v44 += v45;
          --v42;
        }

        while (v42);

        v46 = v134;
        v6 = v120;
      }

      else
      {

        v46 = _swiftEmptyArrayStorage;
      }

      PageFacets.Facet.displayType.getter();
      (*v124)(v130, v125, v6);
      sub_1006DD19C(&qword_100972CA0, &type metadata accessor for PageFacets.Facet.DisplayType, &protocol conformance descriptor for PageFacets.Facet.DisplayType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v134 == v135)
      {
        v47 = *v123;
        (*v123)(v130, v6);
        v47(v129, v6);

        goto LABEL_26;
      }

      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v49 = *v123;
      (*v123)(v130, v6);
      v49(v129, v6);

      if ((v48 & 1) == 0)
      {
        break;
      }

LABEL_26:
      if (PageFacets.Facet.displayOptionsInline.getter())
      {
        v50 = 0;
        v51 = 0xE000000000000000;
        v52.value = 1;
        if (!(v46 >> 62))
        {
          goto LABEL_30;
        }
      }

      else
      {
        v50 = PageFacets.Facet.title.getter();
        v51 = v54;
        v52.value = 0;
        if (!(v46 >> 62))
        {
LABEL_30:

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);
          preferredElementSize = v46;
          goto LABEL_31;
        }
      }

      sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);

      preferredElementSize = _bridgeCocoaArray<A>(_:)();

LABEL_31:

      sub_100005744(0, &qword_10097AAF0, UIMenu_ptr);
      v55._countAndFlagsBits = v50;
      v55._object = v51;
      v137.value.super.isa = 0;
      v137.is_nil = 0;
      v56.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v55, 0, v137, v52, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v95).super.super.isa;
      v57 = PageFacets.Facet.metricsParameterName.getter();
      if (v58)
      {
        v59 = v57;
        v60 = v58;
        *&v134 = 0x2D7465636166;
        *(&v134 + 1) = 0xE600000000000000;
        v61 = v56.super.super.isa;
        v62._countAndFlagsBits = v59;
        v62._object = v60;
        String.append(_:)(v62);

        v63 = String._bridgeToObjectiveC()();

        [(objc_class *)v61 setAccessibilityIdentifier:v63];
      }

      v64 = v56.super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v31 = v121;
      if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v26 = v136;
      v32 = v126;
      v25 = v128;
LABEL_15:
      ++v25;
      (*v31)(v11, v32);
      if (v25 == v38)
      {

        goto LABEL_9;
      }

      v131(v11, v133 + v132 * v25, v32);
    }

    if (v46 >> 62)
    {
      sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);

      v65 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);

      v65 = v46;
    }

    v26 = v127;
    v66 = v65 >> 62;
    v119 = v65;
    if (v65 >> 62)
    {
      v67 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v67 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v26 >> 62;
    if (!(v26 >> 62))
    {
      v68 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v69 = v68 + v67;
      if (__OFADD__(v68, v67))
      {
        goto LABEL_75;
      }

LABEL_42:
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v25)
        {
          v70 = v26 & 0xFFFFFFFFFFFFFF8;
          if (v69 > *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_48:
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v70 = v26 & 0xFFFFFFFFFFFFFF8;
          }

          v117 = v67;
          v25 = *(v70 + 16);
          v71 = (*(v70 + 24) >> 1) - v25;
          v118 = v70;
          if (v66)
          {
            v6 = v119;
            v74 = _CocoaArrayWrapper.endIndex.getter();
            if (!v74)
            {
              goto LABEL_13;
            }

            v75 = v74;
            v76 = _CocoaArrayWrapper.endIndex.getter();
            if (v71 < v76)
            {
              goto LABEL_79;
            }

            if (v75 < 1)
            {
              goto LABEL_81;
            }

            v115 = v76;
            v127 = v26;
            v77 = v118 + 8 * v25 + 32;
            sub_1006DD05C();
            v78 = 0;
            v79 = v119;
            do
            {
              sub_10002849C(&qword_100992B00, qword_1007DEEA8);
              v80 = sub_100548FEC(&v134, v78, v79);
              v82 = *v81;
              (v80)(&v134, 0);
              *(v77 + 8 * v78++) = v82;
            }

            while (v75 != v78);
            v6 = v120;
            a1 = v103;
            v38 = v114;
            v26 = v127;
            v73 = v115;
LABEL_59:

            v32 = v126;
            v31 = v121;
            v25 = v128;
            if (v73 < v117)
            {
              goto LABEL_76;
            }

            if (v73 > 0)
            {
              v83 = *(v118 + 16);
              v84 = __OFADD__(v83, v73);
              v85 = v83 + v73;
              if (v84)
              {
                goto LABEL_78;
              }

              *(v118 + 16) = v85;
            }
          }

          else
          {
            v72 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v72)
            {
              v6 = v120;
              if (v71 < v72)
              {
                goto LABEL_80;
              }

              sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);
              v73 = v72;
              swift_arrayInitWithCopy();
              goto LABEL_59;
            }

LABEL_13:

            v32 = v126;
            v31 = v121;
            v25 = v128;
            v6 = v120;
            if (v117 > 0)
            {
              goto LABEL_76;
            }
          }

          v136 = v26;
          goto LABEL_15;
        }
      }

      else if (!v25)
      {
        goto LABEL_48;
      }

      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_48;
    }

    v86 = _CocoaArrayWrapper.endIndex.getter();
    v69 = v86 + v67;
    if (!__OFADD__(v86, v67))
    {
      goto LABEL_42;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_71:
  (*(v25 + 8))(v97, v28);
LABEL_72:
  v87 = v100;
  v88 = v99;
  v89 = v98;
  v90 = sub_1006DB518(a1);
  v91 = &enum case for SystemImage.line3HorizontalDecreaseCircleFill(_:);
  if ((v90 & 1) == 0)
  {
    v91 = &enum case for SystemImage.line3HorizontalDecreaseCircle(_:);
  }

  (*(v88 + 104))(v89, *v91, v87);
  sub_100005744(0, &qword_10097AAF0, UIMenu_ptr);
  v138.value.super.isa = static SystemImage.load(_:with:)();
  v92._countAndFlagsBits = 0;
  v92._object = 0xE000000000000000;
  v138.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v92, 0, v138, 1, 0xFFFFFFFFFFFFFFFFLL, v26, v95).super.super.isa;

  (*(v88 + 8))(v89, v87);
  return isa;
}

unint64_t sub_1006DD05C()
{
  result = qword_100992B08;
  if (!qword_100992B08)
  {
    sub_10002D1A8(&qword_100992B00, qword_1007DEEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992B08);
  }

  return result;
}

void sub_1006DD0C0(uint64_t a1)
{
  v3 = *(type metadata accessor for PageFacets.Facet.Option() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PageFacets.Facet() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1006DACEC(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_1006DD19C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006DD1E4(uint64_t a1)
{
  v3 = type metadata accessor for FontUseCase();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v38[-v7];
  v9 = sub_10002849C(&qword_100973860, &qword_1007B48A0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v38[-v11];
  v13 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v13 - 8);
  v42 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v38[-v16];
  __chkstk_darwin(v18);
  v20 = &v38[-v19];
  __chkstk_darwin(v21);
  v23 = &v38[-v22];
  v43 = v1;
  v41 = *&v1[OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel];
  dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
  v24 = *(v10 + 56);
  sub_1003DB684(v23, v12);
  v45 = a1;
  sub_1003DB684(a1, &v12[v24]);
  v44 = v4;
  v25 = *(v4 + 48);
  if (v25(v12, 1, v3) == 1)
  {
    sub_10002B894(v23, &qword_100972ED0, &unk_1007B17B0);
    if (v25(&v12[v24], 1, v3) == 1)
    {
      sub_10002B894(v12, &qword_100972ED0, &unk_1007B17B0);
      return sub_10002B894(v45, &qword_100972ED0, &unk_1007B17B0);
    }
  }

  else
  {
    sub_1003DB684(v12, v20);
    if (v25(&v12[v24], 1, v3) != 1)
    {
      v36 = v44;
      (*(v44 + 32))(v8, &v12[v24], v3);
      sub_1006DEF18(&qword_100973878, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v36 + 8);
      v37(v8, v3);
      sub_10002B894(v23, &qword_100972ED0, &unk_1007B17B0);
      v37(v20, v3);
      sub_10002B894(v12, &qword_100972ED0, &unk_1007B17B0);
      if (v39)
      {
        return sub_10002B894(v45, &qword_100972ED0, &unk_1007B17B0);
      }

      goto LABEL_7;
    }

    sub_10002B894(v23, &qword_100972ED0, &unk_1007B17B0);
    (*(v44 + 8))(v20, v3);
  }

  sub_10002B894(v12, &qword_100973860, &qword_1007B48A0);
LABEL_7:
  v26 = v45;
  sub_1003DB684(v45, v17);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v27 = v43;
  v28 = *&v43[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView];
  v29 = [v43 traitCollection];
  v30 = v42;
  sub_1003DB684(v26, v42);
  if (v25(v30, 1, v3) == 1)
  {

    sub_10002B894(v30, &qword_100972ED0, &unk_1007B17B0);
  }

  else
  {
    v31 = v44;
    v32 = v40;
    (*(v44 + 32))(v40, v30, v3);
    sub_1000367E8();
    v33 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    v34 = [objc_opt_self() configurationWithFont:v33];
    [v28 setPreferredSymbolConfiguration:v34];

    (*(v31 + 8))(v32, v3);
  }

  [v27 setNeedsLayout];
  return sub_10002B894(v45, &qword_100972ED0, &unk_1007B17B0);
}

char *sub_1006DD744(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = &v5[OBJC_IVAR____TtC8AppStore16ImageHeadingView_metrics];
  *(v17 + 3) = &type metadata for Double;
  *(v17 + 4) = &protocol witness table for Double;
  *v17 = 0;
  v18 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView] = v18;
  *v16 = UIFontTextStyleBody;
  *(v16 + 2) = 0;
  v19 = enum case for FontUseCase.preferredFont(_:);
  v20 = type metadata accessor for FontUseCase();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v16, v19, v20);
  (*(v21 + 56))(v16, 0, 1, v20);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v22 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView]];
  v29 = *&v27[v28];
  v30 = [v27 tintColor];
  [v29 setTintColor:v30];

  v31 = OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel]];
  v32 = *&v27[v31];
  v33 = [v27 tintColor];

  [v32 setTextColor:v33];
  return v27;
}

uint64_t sub_1006DDB98()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView];
  v9 = *&v1[OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel];
  v10 = OBJC_IVAR____TtC8AppStore16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1000FE7DC(&v1[v10], v12);
  sub_1006DDD30(v8, &protocol witness table for UIView, v9, &protocol witness table for UIView, v12, v13);
  sub_1000FE894(v12);
  sub_10002A400(v13, v13[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  (*(v4 + 8))(v7, v3);
  return sub_100007000(v13);
}

uint64_t sub_1006DDD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v101 = a5;
  v100 = a4;
  v99 = a3;
  v105 = a2;
  v104 = a1;
  v106 = a6;
  v112 = type metadata accessor for HorizontalAlignmentLayout.SizingPolicy.Priority();
  v118 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for HorizontalAlignmentLayout.SizingPolicy();
  v119 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for HorizontalAlignmentLayout.HorizontalGravity();
  v8 = *(v109 - 8);
  __chkstk_darwin(v109);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HorizontalAlignmentLayout.ContainerDestinationOffset();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for HorizontalAlignmentLayout.ChildSourceOffset();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for HorizontalAlignmentLayout.VerticalAnchor();
  v117 = *(v114 - 8);
  __chkstk_darwin(v114);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for HorizontalAlignmentLayout.Child();
  v102 = *(v115 - 8);
  v103 = v115 - 8;
  v113 = v102;
  __chkstk_darwin(v115 - 8);
  v98 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v108 = &v77 - v24;
  v83 = *(v16 + 104);
  v84 = v16 + 104;
  v107 = v18;
  (v83)(v18, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v15, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = v14;
  v81 = v14;
  *v14 = v25;
  v27 = *(v12 + 104);
  v96 = v12 + 104;
  v97 = v27;
  v88 = v11;
  v27(v14, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v11);
  v28 = v20;
  static HorizontalAlignmentLayout.VerticalAnchor.anchor(child:at:)();
  v29 = *(v12 + 8);
  v94 = v12 + 8;
  v95 = v29;
  v29(v26, v11);
  v30 = *(v16 + 8);
  v92 = v16 + 8;
  v93 = v30;
  v30(v18, v15);
  v122 = &type metadata for Double;
  v123 = &protocol witness table for Double;
  v121 = 0;
  v91 = enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:);
  v31 = v8;
  v32 = *(v8 + 104);
  v89 = v8 + 104;
  v90 = v32;
  v33 = v10;
  v34 = v10;
  v35 = v109;
  v32(v34);
  v87 = enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:);
  v36 = v118;
  v37 = *(v118 + 104);
  v85 = v118 + 104;
  v86 = v37;
  v39 = v111;
  v38 = v112;
  v37(v111);
  v40 = v110;
  static HorizontalAlignmentLayout.SizingPolicy.policy(priority:constrainedTo:)();
  v41 = *(v36 + 8);
  v118 = v36 + 8;
  v82 = v41;
  v41(v39, v38);
  v42 = v108;
  v78 = v28;
  v79 = v33;
  static HorizontalAlignmentLayout.Child.child(view:leadingSpace:trailingSpace:verticalAnchor:horizontalGravity:sizingPolicy:)();
  v43 = *(v119 + 8);
  v119 += 8;
  v101 = v43;
  v43(v40, v116);
  v44 = *(v31 + 8);
  v99 = v31 + 8;
  v100 = v44;
  v44(v33, v35);
  v45 = *(v117 + 8);
  v117 += 8;
  v80 = v45;
  v45(v28, v114);
  sub_100007000(&v121);
  v122 = &type metadata for CGFloat;
  v123 = &protocol witness table for CGFloat;
  v121 = 0;
  v46 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:);
  v47 = v83;
  v83(v107, enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:), v15);
  v48 = sub_10002849C(&qword_100985BB8, &qword_1007CD660);
  v49 = swift_allocBox();
  v51 = v50;
  v52 = *(v48 + 48);
  v53 = *(v113 + 16);
  v53(v50, v42, v115);
  v47(v51 + v52, v46, v15);
  v54 = v81;
  *v81 = v49;
  v55 = v88;
  v97(v54, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v88);
  v56 = v78;
  v57 = v107;
  static HorizontalAlignmentLayout.VerticalAnchor.anchor(child:at:)();
  v95(v54, v55);
  v93(v57, v15);
  v120[4] = &protocol witness table for Double;
  v120[3] = &type metadata for Double;
  v120[0] = 0;
  v58 = v79;
  v59 = v109;
  v90(v79, v91, v109);
  v61 = v111;
  v60 = v112;
  v86(v111, v87, v112);
  v62 = v110;
  static HorizontalAlignmentLayout.SizingPolicy.policy(priority:constrainedTo:)();
  v82(v61, v60);
  v63 = v98;
  static HorizontalAlignmentLayout.Child.child(view:leadingSpace:trailingSpace:verticalAnchor:horizontalGravity:sizingPolicy:)();
  v101(v62, v116);
  v100(v58, v59);
  v80(v56, v114);
  sub_100007000(v120);
  sub_100007000(&v121);
  sub_10002849C(&qword_100985BC0, qword_1007CD668);
  v64 = *(v102 + 72);
  v65 = v113;
  v66 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1007B1890;
  v68 = v67 + v66;
  v69 = v63;
  v70 = v63;
  v71 = v115;
  v53(v68, v69, v115);
  v72 = v108;
  v53(v68 + v64, v108, v71);
  v73 = type metadata accessor for HorizontalAlignmentLayout();
  v74 = v106;
  v106[3] = v73;
  v74[4] = sub_1006DEF18(&qword_100985BC8, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
  v74[5] = sub_1006DEF18(&unk_100985BD0, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
  sub_1000056E0(v74);
  HorizontalAlignmentLayout.init(children:)();
  v75 = *(v65 + 8);
  v75(v70, v71);
  return (v75)(v72, v71);
}

void sub_1006DE868(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v33 - v14;
  v35.receiver = v2;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, "traitCollectionDidChange:", a1, v13);
  v16 = [v2 traitCollection];
  v17 = [v16 preferredContentSizeCategory];

  if (!a1)
  {
    v34 = v8;
    v23 = v6;

LABEL_7:
    v25 = *&v2[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView];
    dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
    v26 = [v2 traitCollection];
    sub_1003DB684(v15, v11);
    v27 = v23;
    if ((*(v23 + 48))(v11, 1, v5) == 1)
    {

      sub_10002B894(v15, &qword_100972ED0, &unk_1007B17B0);
      v28 = v11;
    }

    else
    {
      v29 = *(v23 + 32);
      v30 = v34;
      v29(v34, v11, v5);
      sub_1000367E8();
      v31 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
      v32 = [objc_opt_self() configurationWithFont:v31];
      [v25 setPreferredSymbolConfiguration:v32];

      (*(v27 + 8))(v30, v5);
      v28 = v15;
    }

    sub_10002B894(v28, &qword_100972ED0, &unk_1007B17B0);
    return;
  }

  v18 = [a1 preferredContentSizeCategory];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {

    return;
  }

  v34 = v8;
  v23 = v6;
  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }
}

double sub_1006DEC78(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();
  v4 = *(v3 + OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView);
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel);
  v6 = OBJC_IVAR____TtC8AppStore16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1000FE7DC(v3 + v6, v10);
  sub_1006DDD30(v4, &protocol witness table for UIView, v5, &protocol witness table for UIView, v10, v11);
  sub_1000FE894(v10);
  sub_10002A400(v11, v11[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v8 = v7;
  sub_100007000(v11);
  return v8;
}

uint64_t sub_1006DEF18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1006DEF60(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = ArcadeDownloadPackCard.numberOfPlaceholders.getter();
  if (v10)
  {
    v11 = ArcadeDownloadPackCard.lockups.getter();
    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v12 = v9;
  }

  v13 = [a7 traitCollection];
  sub_1002F4FF4(v12, v13);

  return a2;
}

void sub_1006DF01C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10002849C(&unk_1009732C0, &unk_1007C6CB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = ArcadeDownloadPackCard.numberOfPlaceholders.getter();
  if (v9)
  {
    v10 = ArcadeDownloadPackCard.lockups.getter();
    v11 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_1002F1F30(v10, v7, 1, a3);

    sub_1006DF228(v7);
    [v3 layoutIfNeeded];
  }

  else
  {
    sub_1002F1C34(v8);
  }
}

uint64_t sub_1006DF1E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006DF228(uint64_t a1)
{
  v2 = sub_10002849C(&unk_1009732C0, &unk_1007C6CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1006DF2A0(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v66 = a4;
  v68 = a2;
  v12 = type metadata accessor for PerformanceTestCase();
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  __chkstk_darwin(v12);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v14 - 8);
  v16 = &v55 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v67 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v20 - 8);
  v69 = sub_1006DFB5C(a1, a6, a7);
  if (v69 && (objc_opt_self(), (v21 = swift_dynamicCastObjCClass()) != 0))
  {
    v62 = v21;
    v69 = v69;
    v22 = PerformanceTestCase.popToRoot.getter();
    v59 = a5;
    v60 = a3;
    v61 = v18;
    if (v22)
    {

      if (qword_10096D140 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for OSLogger();
      v58 = sub_1000056A8(v23, qword_1009CE278);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v24._countAndFlagsBits = 0x2074736554;
      v24._object = 0xE500000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v25 = PerformanceTestCase.name.getter();
      v72 = &type metadata for String;
      v70 = v25;
      v71 = v26;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002B894(&v70, &unk_1009711D0, &unk_1007B1A10);
      v27._countAndFlagsBits = 0x7420706F70202D20;
      v27._object = 0xEE00746F6F72206FLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v18 = v61;
    }

    PerformanceTestCase.pushToURL.getter();
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      v28 = v69;

      sub_10002B894(v16, &qword_100982460, &unk_1007B5C90);
      v29 = [v62 visibleViewController];
      v68();
    }

    else
    {
      v31 = v67;
      (*(v18 + 32))(v67, v16, v17);
      v58 = sub_1006E0C1C(v31, v62, a7);
      if (qword_10096D140 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for OSLogger();
      v55 = sub_1000056A8(v56, qword_1009CE278);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v32._countAndFlagsBits = 0x2074736554;
      v32._object = 0xE500000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v33 = PerformanceTestCase.name.getter();
      v72 = &type metadata for String;
      v70 = v33;
      v71 = v34;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002B894(&v70, &unk_1009711D0, &unk_1007B1A10);
      v35._object = 0x80000001008215A0;
      v35._countAndFlagsBits = 0xD000000000000010;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      v72 = v17;
      v36 = sub_1000056E0(&v70);
      (*(v61 + 16))(v36, v31, v17);
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002B894(&v70, &unk_1009711D0, &unk_1007B1A10);
      v37._object = 0x80000001008215C0;
      v37._countAndFlagsBits = 0xD000000000000010;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      v72 = sub_100005744(0, &qword_100975960, UINavigationController_ptr);
      v57 = v17;
      v38 = v62;
      v70 = v62;
      v69 = v69;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002B894(&v70, &unk_1009711D0, &unk_1007B1A10);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v40 = v63;
      v41 = v64;
      v42 = v65;
      (*(v64 + 16))(v63, a1, v65);
      v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v44 = v31;
      v45 = (v13 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      (*(v41 + 32))(v46 + v43, v40, v42);
      *(v46 + v45) = v38;
      v47 = (v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8));
      v48 = v60;
      *v47 = v68;
      v47[1] = v48;
      v49 = swift_allocObject();
      v50 = v59;
      *(v49 + 16) = v66;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v58;
      *(v51 + 16) = v38;
      *(v51 + 24) = v52;
      v53 = v69;

      v54 = v52;
      sub_10021CE9C(sub_1006E1714, v46, sub_1006E17B0, v49, sub_1006E17D8, v51);

      (*(v61 + 8))(v44, v57);
    }
  }

  else
  {
    (v68)(v69);
    v30 = v69;
  }
}

void *sub_1006DFB5C(uint64_t a1, void *a2, uint64_t a3)
{
  v55 = a3;
  v5 = sub_10002849C(&unk_100982A90, &unk_1007CAFC0);
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v54 = v50 - v6;
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v51 = v50 - v8;
  v9 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v9 - 8);
  v50[1] = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NavigationTab();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v64 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for OSLogger();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a2;
  v19 = [a2 viewControllers];
  if (v19)
  {
    v20 = v19;
    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v19);
  v50[-2] = a1;
  v59 = sub_1004F6538(sub_1006E17E0, &v50[-4], v21);

  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v14, qword_1009CE278);
  v62 = v18;
  v63 = v15;
  (*(v15 + 16))(v18, v22, v14);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x2074736554;
  v23._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  v24 = PerformanceTestCase.name.getter();
  v68 = &type metadata for String;
  v65 = v24;
  v66 = v25;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v65, &unk_1009711D0, &unk_1007B1A10);
  v26._object = 0x80000001008216B0;
  v26._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v64;
  v50[2] = a1;
  PerformanceTestCase.tab.getter();
  v28 = NavigationTab.rawValue.getter();
  v30 = v29;
  (*(v60 + 8))(v27, v61);
  v68 = &type metadata for String;
  v65 = v28;
  v66 = v30;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v65, &unk_1009711D0, &unk_1007B1A10);
  v31._countAndFlagsBits = 0xD000000000000012;
  v31._object = 0x80000001008216D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v59;
  if (v59)
  {
    v33 = sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v34 = v32;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v66 = 0;
    v67 = 0;
  }

  v65 = v34;
  v68 = v33;
  v35 = v34;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v65, &unk_1009711D0, &unk_1007B1A10);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v36);
  LogMessage.init(stringInterpolation:)();
  v37 = v62;
  Logger.info(_:)();

  (*(v63 + 8))(v37, v14);
  if (v32)
  {
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      v39 = [v38 topViewController];
      if (v39)
      {
        v40 = v39;
        type metadata accessor for TabPlaceholderViewController(0);
        v41 = swift_dynamicCastClass();

        if (v41)
        {
          PerformanceTestCase.tab.getter();
          static ActionMetrics.notInstrumented.getter();
          v42 = type metadata accessor for TabChangeAction();
          swift_allocObject();
          v43 = TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
          v44 = v51;
          v45 = v53;
          BaseObjectGraph.inject<A>(_:)();
          v68 = v42;
          v69 = sub_1006E1800(&qword_10098DBF8, &type metadata accessor for TabChangeAction, &protocol conformance descriptor for Action);
          v65 = v43;
          v47 = v56;
          v46 = v57;
          v48 = v54;
          (*(v56 + 104))(v54, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v57);

          ActionDispatcher.perform(_:withMetrics:asPartOf:)();

          (*(v47 + 8))(v48, v46);
          (*(v52 + 8))(v44, v45);
          sub_100007000(&v65);
        }
      }
    }

    [v58 setSelectedViewController:v35];
  }

  return v32;
}

id sub_1006E0360(id *a1)
{
  v2 = type metadata accessor for NavigationTab();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_10098DC00, &qword_1007B76A0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_10002849C(&qword_100975528, &unk_1007BECC0);
  __chkstk_darwin(v8 - 8);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v26 - v15;
  result = [*a1 tabBarItem];
  if (result)
  {
    v18 = result;
    [result tag];
    NavigationTab.init(intValue:)();

    PerformanceTestCase.tab.getter();
    (*(v3 + 56))(v12, 0, 1, v2);
    v19 = *(v5 + 48);
    sub_100127D74(v16, v7);
    sub_100127D74(v12, &v7[v19]);
    v20 = *(v3 + 48);
    if (v20(v7, 1, v2) == 1)
    {
      sub_10002B894(v12, &qword_100975528, &unk_1007BECC0);
      sub_10002B894(v16, &qword_100975528, &unk_1007BECC0);
      if (v20(&v7[v19], 1, v2) == 1)
      {
        sub_10002B894(v7, &qword_100975528, &unk_1007BECC0);
        v21 = 1;
        return (v21 & 1);
      }
    }

    else
    {
      v22 = v27;
      sub_100127D74(v7, v27);
      if (v20(&v7[v19], 1, v2) != 1)
      {
        v23 = &v7[v19];
        v24 = v26;
        (*(v3 + 32))(v26, v23, v2);
        sub_1006E1800(&unk_10098DC10, &type metadata accessor for NavigationTab, &protocol conformance descriptor for NavigationTab);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *(v3 + 8);
        v25(v24, v2);
        sub_10002B894(v12, &qword_100975528, &unk_1007BECC0);
        sub_10002B894(v16, &qword_100975528, &unk_1007BECC0);
        v25(v27, v2);
        sub_10002B894(v7, &qword_100975528, &unk_1007BECC0);
        return (v21 & 1);
      }

      sub_10002B894(v12, &qword_100975528, &unk_1007BECC0);
      sub_10002B894(v16, &qword_100975528, &unk_1007BECC0);
      (*(v3 + 8))(v22, v2);
    }

    sub_10002B894(v7, &qword_10098DC00, &qword_1007B76A0);
    v21 = 0;
    return (v21 & 1);
  }

  __break(1u);
  return result;
}

void sub_1006E07B8(uint64_t a1, void *a2, void (*a3)(void))
{
  v24 = a3;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OSLogger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v9 = sub_1000056A8(v5, qword_1009CE278);
  (*(v6 + 16))(v8, v9, v5);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x2074736554;
  v10._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = PerformanceTestCase.name.getter();
  v28 = &type metadata for String;
  v25 = v11;
  v26 = v12;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v25, &unk_1009711D0, &unk_1007B1A10);
  v13._object = 0x80000001008215E0;
  v13._countAndFlagsBits = 0xD000000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  v14 = [a2 visibleViewController];
  v15 = v14;
  if (v14)
  {
    v14 = sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v25 = v15;
  v28 = v14;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v25, &unk_1009711D0, &unk_1007B1A10);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  (*(v6 + 8))(v8, v5);
  v17 = [a2 visibleViewController];
  v24();

  v18 = [a2 visibleViewController];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for ArticleContainerViewController();
    v20 = swift_dynamicCastClass();

    if (v20)
    {
      v21 = [a2 visibleViewController];
      if (v21)
      {
        v22 = v21;
        [v21 dismissViewControllerAnimated:0 completion:0];
      }
    }
  }
}

uint64_t sub_1006E0B8C(void *a1, void *a2)
{
  v3 = [a1 visibleViewController];
  if (v3)
  {
    v4 = v3;
    sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
    v5 = a2;
    v6 = static NSObject.== infix(_:_:)();

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_1006E0C1C(uint64_t a1, void *a2, uint64_t a3)
{
  v71 = a3;
  v72 = a2;
  v64 = a1;
  v58 = type metadata accessor for LogMessage.StringInterpolation();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v51 - v5;
  v56 = type metadata accessor for OSLogger();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10002849C(&unk_100982A90, &unk_1007CAFC0);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v51 - v7;
  v66 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v51 - v8;
  v63 = type metadata accessor for FlowOrigin();
  v9 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for FlowPresentationContext();
  v11 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for FlowAnimationBehavior();
  v13 = *(v59 - 8);
  __chkstk_darwin(v59);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v17 - 8);
  v19 = &v51 - v18;
  v20 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v20 - 8);
  v22 = &v51 - v21;
  v23 = type metadata accessor for FlowPage();
  __chkstk_darwin(v23);
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  (*(v25 + 104))(&v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.unknown(_:));
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v22, v64, v26);
  (*(v27 + 56))(v22, 0, 1, v26);
  v28 = type metadata accessor for ReferrerData();
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  v73 = 0u;
  v74 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v13 + 104))(v15, enum case for FlowAnimationBehavior.never(_:), v59);
  (*(v11 + 104))(v60, enum case for FlowPresentationContext.infer(_:), v61);
  (*(v9 + 104))(v62, enum case for FlowOrigin.inapp(_:), v63);
  static FlowActionPresentation.stackPush.getter();
  v29 = type metadata accessor for FlowAction();
  swift_allocObject();
  v30 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v32 = v65;
  v31 = v66;
  BaseObjectGraph.inject<A>(_:)();
  *(&v76 + 1) = v29;
  v77 = sub_1006E1800(&qword_100986BA0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  *&v75 = v30;
  v34 = v67;
  v33 = v68;
  v35 = v70;
  (*(v68 + 104))(v67, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v70);

  ActionDispatcher.perform(_:withMetrics:asPartOf:)();

  (*(v33 + 8))(v34, v35);
  (*(v69 + 8))(v32, v31);
  sub_100007000(&v75);
  v36 = v72;
  v37 = [v72 visibleViewController];
  if (v37)
  {
    v38 = v37;
    type metadata accessor for LoadingPageViewController();
    v39 = swift_dynamicCastClass();
    if (v39)
    {
      v40 = v39;

      return v40;
    }
  }

  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v42 = v56;
  v43 = sub_1000056A8(v56, qword_1009CE278);
  (*(v55 + 16))(v52, v43, v42);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v44._countAndFlagsBits = 0xD000000000000036;
  v44._object = 0x8000000100821610;
  LogMessage.StringInterpolation.appendLiteral(_:)(v44);
  v45 = [v36 visibleViewController];
  v46 = v45;
  if (v45)
  {
    v45 = sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  }

  else
  {
    *(&v75 + 1) = 0;
    *&v76 = 0;
  }

  *&v75 = v46;
  *(&v76 + 1) = v45;
  v47 = v53;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v75, &unk_1009711D0, &unk_1007B1A10);
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v48);
  (*(v57 + 16))(v54, v47, v58);
  LogMessage.init(stringInterpolation:)();
  v49 = v56;
  v50 = v52;
  Logger.error(_:)();

  (*(v55 + 8))(v50, v49);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1006E1714()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1006E07B8(v0 + v2, v4, v5);
}

uint64_t sub_1006E1800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006E1848(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v14 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        LOBYTE(v4) = sub_1005F2EF8(v14);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v15 = (v3 + 32);
    v16 = (a2 + 32);
    v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v5 - 1;
    while (1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      if (!v18)
      {
        break;
      }

      v20 = *v15++;
      a2 = v20;
      v21 = *v16++;
      v3 = v21;

      v4 = sub_1005F2EF8(v22);

      v24 = v19-- != 0;
      if (v4)
      {
        --v18;
        --v17;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_1006E1A84(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 96))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006E1C58(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v16 = i - 4;
        v17 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v4 = *(a1 + 8 * i);

          if (!v11)
          {
LABEL_29:
            if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v13 = *(a2 + 8 * i);

            goto LABEL_19;
          }
        }

        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
        v14 = *(v4 + 16);

        v4 = *(v13 + 16);

        result = v14 == v4;
        if (v14 != v4 || v17 == v5)
        {
          return result;
        }
      }
    }

    v18 = (a1 + 32);
    v19 = (a2 + 32);
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v5 - 1;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_42;
      }

      if (!v21)
      {
        break;
      }

      v24 = *v18++;
      v23 = v24;
      v25 = *v19++;
      v26 = *(v23 + 16);
      v27 = *(v25 + 16);
      v29 = v22-- != 0;
      result = v26 == v27;
      if (v26 == v27)
      {
        --v21;
        --v20;
        if (v29)
        {
          continue;
        }
      }

      return result;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1006E1EBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 6)
      {
        if (v7 != 6)
        {
          return 0;
        }
      }

      else if (v5 == 5)
      {
        if (v7 != 5)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if ((v7 - 7) > 0xFFFFFFFC || v5 != v7)
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1006E1FA0(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    v22 = a3;
    result = _CocoaArrayWrapper.endIndex.getter();
    a3 = v22;
    if (v9 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v19 = 0;
    return v19 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v9)
  {
    goto LABEL_28;
  }

  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  v12 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v11 = a1;
  }

  if (v8)
  {
    v12 = v11;
  }

  v13 = a2 & 0xFFFFFFFFFFFFFF8;
  v14 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v13 = a2;
  }

  if (a2 >> 62)
  {
    v14 = v13;
  }

  if (v12 == v14)
  {
LABEL_28:
    v19 = 1;
    return v19 & 1;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    a3(0);
    v15 = a2 & 0xC000000000000001;
    v16 = 4;
    v8 = v9;
    while (1)
    {
      v17 = v16 - 4;
      v18 = v16 - 3;
      if (__OFADD__(v16 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v20 = a3;
        v21 = _CocoaArrayWrapper.endIndex.getter();
        a3 = v20;
        v9 = v21;
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v15)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v15)
        {
LABEL_20:
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_25;
        }
      }

      if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_1006E3544(a4, a5, a6);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v19)
      {
        ++v16;
        if (v18 != v8)
        {
          continue;
        }
      }

      return v19 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006E21AC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_100028BB8();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1006E23EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdamId();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1006E3544(&qword_100972728, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_1006E2600()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = ItemLayoutContext.index.getter();
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v5 = sub_1006E2728(v3);
  sub_1006E2DD4(v5);
  v7 = v6;

  v8 = *(v7 + 16);
  if (v8)
  {
    if (((v4 % v8) & 0x8000000000000000) == 0)
    {

      (*(v1 + 8))(v3, v0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *sub_1006E2728(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37[-1] - v10;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v9 + 8))(v11, v8);
  if ((v37[0] & 1) == 0)
  {
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.columnCount.getter();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 <= 1.0)
    {
      sub_1005E9D74(a1);
      return v12;
    }

    sub_1006E3174(v37);
    v15 = v37[0];
    v16 = v37[1];
    v17 = *&v37[2];
    if (v38)
    {
      v18 = 0;
    }

    else
    {
      v21 = v37[3];
      v20 = v37[4];
      v22 = *&v37[5];
      swift_beginAccess();
      v23 = *(v1 + 16);
      if (*(v23 + 16) && (v24 = sub_1003D750C(v21, v20, v22), (v25 & 1) != 0))
      {
        v18 = *(*(v23 + 56) + 8 * v24);
      }

      else
      {
        v18 = 0;
      }

      swift_endAccess();
    }

    swift_beginAccess();
    v26 = *(v2 + 16);
    if (*(v26 + 16) && (v27 = sub_1003D750C(v15, v16, v17), (v28 & 1) != 0))
    {
      v19 = *(*(v26 + 56) + 8 * v27);
      swift_endAccess();

      if (!v18)
      {
LABEL_16:

        goto LABEL_23;
      }
    }

    else
    {
      swift_endAccess();
      sub_1005E9D74(a1);
      v19 = v29;
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    v30 = *(v18 + 16);
    if (v30)
    {
      v31 = *(v18 + 8 * v30 + 24);

      if (*(v19 + 2))
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_23:
    v31 = 0;
    if (*(v19 + 2))
    {
LABEL_24:
      v32 = *(v19 + 4);

      if (v31)
      {
        if (!v32)
        {
          goto LABEL_31;
        }

        v33 = sub_1006E1EBC(v31, v32);

        if ((v33 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v32)
      {
LABEL_31:

LABEL_32:
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v2 + 16);
        *(v2 + 16) = 0x8000000000000000;
        sub_1000514BC(v19, v15, v16, isUniquelyReferenced_nonNull_native, v17);
        *(v2 + 16) = v36;
        swift_endAccess();
        return v19;
      }

LABEL_30:
      v19 = sub_1005E7908(v19);
      goto LABEL_31;
    }

LABEL_20:

    if (v31)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return sub_1005E9F84(a1);
}

Swift::Int sub_1006E2B3C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  Hasher._combine(_:)(*&v4);
  return Hasher._finalize()();
}

void sub_1006E2BBC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  Hasher._combine(_:)(*&v3);
}

Swift::Int sub_1006E2C18(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  Hasher._combine(_:)(*&v5);
  return Hasher._finalize()();
}

uint64_t sub_1006E2CC4()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TodayCardGridTracker.TrackedSectionKey(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TodayCardGridTracker.TrackedSectionKey(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1006E2D80()
{
  result = qword_100992C38;
  if (!qword_100992C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992C38);
  }

  return result;
}

void sub_1006E2DD4(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 32;
  v5 = _swiftEmptyArrayStorage;
  v6 = &_swiftEmptyArrayStorage[4];
LABEL_3:
  v8 = *(a1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(a1 + 16);
        if (v3 == v10)
        {
          goto LABEL_25;
        }

        if (v3 >= v10)
        {
          goto LABEL_29;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + v11 + 32);
        if (!v2)
        {
          v13 = *(v5 + 3);
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_32;
          }

          v26 = *(v9 + v11 + 32);
          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          sub_10002849C(&qword_10096FC68, &unk_1007D8FD0);
          v16 = swift_allocObject();
          v17 = 2 * j__malloc_size_2(v16) - 64;
          *(v16 + 2) = v15;
          *(v16 + 3) = v17;
          v18 = v16 + 32;
          v19 = *(v5 + 3) >> 1;
          if (*(v5 + 2))
          {
            v20 = v5 + 32;
            if (v16 != v5 || v18 >= &v20[v19])
            {
              v21 = v17;
              memmove(v16 + 32, v20, v19);
              v17 = v21;
            }

            *(v5 + 2) = 0;
          }

          v6 = &v18[v19];
          v2 = (v17 >> 1) - v19;

          v5 = v16;
          v12 = v26;
        }

        v22 = __OFSUB__(v2--, 1);
        if (v22)
        {
          goto LABEL_31;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_25:

  v23 = *(v5 + 3);
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v22 = __OFSUB__(v24, v2);
    v25 = v24 - v2;
    if (v22)
    {
LABEL_33:
      __break(1u);
      return;
    }

    *(v5 + 2) = v25;
  }
}

void sub_1006E2FBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = &_swiftEmptyArrayStorage[4];
    while (1)
    {
      *&v21[0] = v3;
      sub_1000073E8(v5, v21 + 8);
      v23 = v21[0];
      v24 = v21[1];
      v25 = v22;
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_10002849C(&unk_100992C40, &qword_1007DF0C8);
        v10 = swift_allocObject();
        v11 = (j__malloc_size_2(v10) - 32) / 40;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[5 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 40 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + 40 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v23;
      v17 = v24;
      v6[4] = v25;
      *v6 = v16;
      *(v6 + 1) = v17;
      v6 += 5;
      v5 += 32;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 >= 2)
  {
    v19 = v18 >> 1;
    v15 = __OFSUB__(v19, v4);
    v20 = v19 - v4;
    if (v15)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v2[2] = v20;
  }
}

uint64_t sub_1006E3174@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v1 - 8);
  v37 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v29 - v4;
  v5 = type metadata accessor for PageGrid();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v34 = ShelfLayoutContext.index.getter();
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v30 = *(v10 + 8);
  v30(v14, v9);
  v32 = *(v38 + 16);

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v16 = v15;
  v17 = *(v6 + 8);
  v31 = v5;
  v29 = v17;
  v17(v8, v5);
  v18 = v36;
  v19 = v37;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10013DAA8(v19);
  v20 = (*(v10 + 48))(v18, 1, v9);
  if (v20 == 1)
  {
    result = sub_10013DAA8(v18);
    v22 = 0;
    v23 = 0;
    v24 = 0;
LABEL_5:
    v27 = v35;
    v28 = v32;
    *v35 = v34;
    v27[1] = v28;
    v27[2] = v16;
    v27[3] = v22;
    v27[4] = v23;
    v27[5] = v24;
    *(v27 + 48) = v20 == 1;
    return result;
  }

  (*(v10 + 32))(v33, v18, v9);
  result = ShelfLayoutContext.index.getter();
  v22 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    swift_getKeyPath();
    v25 = v33;
    ReadOnlyLens.subscript.getter();

    v23 = *(v38 + 16);

    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.containerWidth.getter();
    v24 = v26;
    v29(v8, v31);
    result = (v30)(v25, v9);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006E3544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006E358C(void *a1, uint64_t a2, char a3)
{
  _s18PaletteContentViewCMa();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = &v7[OBJC_IVAR____TtCC8AppStore29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  v10 = *&v7[OBJC_IVAR____TtCC8AppStore29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  v11 = *&v7[OBJC_IVAR____TtCC8AppStore29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews + 8];
  *v9 = sub_1006E42C4;
  v9[1] = v8;

  sub_10001F63C(v10, v11);

  v12 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v7];
  [v12 _setDisplaysWhenSearchActive:a3 & 1];
  [v12 _setContentViewMarginType:a2];
  [v12 setClipsToBounds:0];
  *(v3 + 65) = 0;
  [v12 setPreferredHeight:1.0];
  [v12 setMinimumHeight:0.0];
  [v12 setPreferredHeight:0.0];
  v13 = v12;
  [a1 _setBottomPalette:v13];

  swift_unknownObjectWeakAssign();
}

void sub_1006E3738(void *a1)
{
  if (*(v1 + 24))
  {
    if ((*(v1 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = *(v1 + 32);
        if (!v5)
        {

          if (!*(v1 + 32))
          {
            return;
          }

          goto LABEL_9;
        }

        v24 = *(v1 + 64);
        v7 = *(v1 + 48);
        v6 = *(v1 + 56);

        sub_10000827C(v7, v6);
        v8 = [v4 contentView];
        sub_100028004();
        LayoutMarginsAware<>.layoutFrame.getter();
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v26.origin.x = v10;
        v26.origin.y = v12;
        v26.size.width = v14;
        v26.size.height = v16;
        Width = CGRectGetWidth(v26);
        v18 = [v4 contentView];
        v19 = v5(Width);

        [v4 setPreferredHeight:v19];
        v20 = 0.0;
        if ((v24 & 1) == 0)
        {
          v20 = v19;
        }

        [v4 setMinimumHeight:v20];

        sub_10001F63C(v7, v6);
        *(v1 + 65) = 1;
      }
    }
  }

  if (!*(v1 + 32))
  {
    return;
  }

LABEL_9:
  v22 = *(v1 + 48);
  v21 = *(v1 + 56);
  v23 = *(v1 + 64);

  sub_10000827C(v22, v21);
  if (v23)
  {
    [a1 _scrollToTopIfPossible:1];
  }

  sub_10001F63C(v22, v21);
}

void sub_1006E3954()
{
  if (*(v0 + 24))
  {
    if ((*(v0 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = *(v0 + 32);
        if (v2)
        {
          v3 = *(v0 + 64);
          v5 = *(v0 + 48);
          v4 = *(v0 + 56);
          v19 = Strong;

          sub_10000827C(v5, v4);
          v6 = [v19 contentView];
          sub_100028004();
          LayoutMarginsAware<>.layoutFrame.getter();
          v8 = v7;
          v10 = v9;
          v12 = v11;
          v14 = v13;

          v21.origin.x = v8;
          v21.origin.y = v10;
          v21.size.width = v12;
          v21.size.height = v14;
          Width = CGRectGetWidth(v21);
          v16 = [v19 contentView];
          v17 = v2(Width);

          [v19 setPreferredHeight:v17];
          v18 = 0.0;
          if ((v3 & 1) == 0)
          {
            v18 = v17;
          }

          [v19 setMinimumHeight:v18];

          sub_10001F63C(v5, v4);
          *(v0 + 65) = 1;
        }

        else
        {
        }
      }
    }
  }
}

void sub_1006E3B08()
{
  if (*(v0 + 24))
  {
    if (*(v0 + 65) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v3 = *(v0 + 32);
        if (v3)
        {
          v5 = *(v0 + 48);
          v4 = *(v0 + 56);
          v6 = *(v0 + 64);
          v20 = Strong;

          sub_10000827C(v5, v4);
          v7 = [v20 contentView];
          sub_100028004();
          LayoutMarginsAware<>.layoutFrame.getter();
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          v22.origin.x = v9;
          v22.origin.y = v11;
          v22.size.width = v13;
          v22.size.height = v15;
          Width = CGRectGetWidth(v22);
          v17 = [v20 contentView];
          v18 = v3(Width);

          [v20 preferredHeight];
          if (v19 != v18)
          {
            [v20 setPreferredHeight:v18];
            [v20 setMinimumHeight:v18];
            if (v6)
            {
              [v20 setMinimumHeight:0.0];
            }

            sub_1006E3D2C();
          }

          Strong = sub_10001F63C(v5, v4);
          v2 = v20;
        }

        _objc_release_x1(Strong, v2);
      }
    }
  }
}

double sub_1006E3CD4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1006E3D2C();
  }

  return result;
}

void sub_1006E3D2C()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return;
  }

  if (*(v0 + 65) != 1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = *(v0 + 32);
  if (!v3)
  {
    goto LABEL_15;
  }

  v26 = Strong;
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  if (!v4)
  {
    sub_1006E42CC(v3, *(v0 + 40), 0, *(v0 + 56));
    v24 = v1;
    [v24 setAlpha:1.0];

    Strong = v26;
LABEL_15:

    return;
  }

  sub_1006E42CC(v3, *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_10000827C(v4, v5);
  v6 = [v26 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  Width = CGRectGetWidth(v28);
  v16 = [v26 contentView];
  v17 = v3(Width);

  v18 = [v26 contentView];
  v19 = v4(Width);

  [v26 frame];
  Height = CGRectGetHeight(v29);
  v21 = *(v0 + 24);
  if (v21)
  {
    v22 = (Height - v19) / (v17 - v19);
    if (v22 <= 0.0)
    {
      v22 = 0.0;
    }

    if (v22 <= 1.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 1.0;
    }

    v25 = v21;
    [v25 setAlpha:v23];

    sub_10001F63C(v4, v5);

    sub_10001F63C(v4, v5);
    Strong = v25;
    goto LABEL_15;
  }

  sub_10001F63C(v4, v5);

  sub_10001F63C(v4, v5);
}

uint64_t sub_1006E3FE0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 32);
    if (v3)
    {
      v4 = *(v0 + 48);
      v5 = *(v0 + 56);
      v18 = v2;
      if (*(v0 + 64))
      {
        v6 = *(v0 + 24);
        if (v6)
        {

          sub_10000827C(v4, v5);
          v7 = [v6 isHidden];
          Height = 0.0;
          if ((v7 & 1) == 0)
          {
            v9 = [v18 contentView];
            [v9 frame];
            v11 = v10;
            v13 = v12;
            v15 = v14;
            v17 = v16;

            v20.origin.x = v11;
            v20.origin.y = v13;
            v20.size.width = v15;
            v20.size.height = v17;
            Height = CGRectGetHeight(v20);
          }
        }

        else
        {

          sub_10000827C(v4, v5);
          Height = 0.0;
        }

        [v18 setMinimumHeight:Height];
        [v18 minimumHeight];
        [v18 setPreferredHeight:?];
      }

      else
      {
        sub_1006E42CC(v3, *(v0 + 40), v4, v5);
      }

      return sub_10001F63C(v4, v5);
    }

    else
    {

      return _objc_release_x1(0, v2);
    }
  }

  return result;
}

uint64_t sub_1006E419C()
{
  swift_unknownObjectWeakDestroy();

  sub_10040392C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1006E4210(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1006E4228(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1006E4270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006E42CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_10000827C(a3, a4);
  }

  return result;
}

uint64_t sub_1006E432C()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetadataRibbonTextStyle();
  sub_100005644(v4, qword_1009D3710);
  sub_1000056A8(v4, qword_1009D3710);
  if (qword_10096E000 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D0F80);
  (*(v1 + 16))(v3, v5, v0);
  static MetadataRibbonTextStyle.useCase(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006E44AC(uint64_t a1, uint64_t *a2, NSString **a3)
{
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MetadataRibbonTextStyle();
  sub_100005644(v9, a2);
  sub_1000056A8(v9, a2);
  v10 = *a3;
  *v8 = UIFontTextStyleCaption1;
  v8[1] = v10;
  (*(v6 + 104))(v8, enum case for FontUseCase.preferredFontDerivative(_:), v5);
  v11 = UIFontTextStyleCaption1;
  static MetadataRibbonTextStyle.useCase(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1006E45E8()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetadataRibbonTextStyle();
  sub_100005644(v4, qword_1009D3758);
  sub_1000056A8(v4, qword_1009D3758);
  *v3 = 0xD000000000000018;
  *(v3 + 1) = 0x80000001008217A0;
  *(v3 + 2) = sub_1006E4748;
  *(v3 + 3) = 0;
  *(v3 + 4) = UIFontWeightRegular;
  (*(v1 + 104))(v3, enum case for FontUseCase.systemFont(_:), v0);
  static MetadataRibbonTextStyle.useCase(_:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_1006E474C(uint64_t a1)
{
  v1 = UIContentSizeCategoryExtraSmall;
  v2 = UIContentSizeCategoryLarge;
  if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (static UIContentSizeCategory.<= infix(_:_:)())
  {
    v3 = static UIContentSizeCategory.< infix(_:_:)();

    if (v3)
    {
      return;
    }
  }

  else
  {
  }

  v4 = v2;
  v5 = UIContentSizeCategoryAccessibilityMedium;
  if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (static UIContentSizeCategory.<= infix(_:_:)())
  {
    static UIContentSizeCategory.< infix(_:_:)();
  }
}

uint64_t AppEventFormattedDatePresenter.__allocating_init(formattedDates:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1006E6CE8(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

Swift::Void __swiftcall AppEventFormattedDatePresenter.tearDown()()
{
  v1 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

double sub_1006E4910(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for Calendar();
  v135 = *(v4 - 8);
  object = v4;
  __chkstk_darwin(v4);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DateComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v132 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = &v103 - v11;
  __chkstk_darwin(v12);
  v138 = &v103 - v13;
  v14 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v14 - 8);
  v133 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v103 - v17;
  __chkstk_darwin(v19);
  v21 = &v103 - v20;
  v140 = type metadata accessor for Date();
  v22 = *(v140 - 8);
  __chkstk_darwin(v140);
  v131 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v134 = &v103 - v25;
  __chkstk_darwin(v26);
  v28 = &v103 - v27;
  __chkstk_darwin(v29);
  v139 = &v103 - v30;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v128 = v8;
    v32 = *(v2 + 32);
    if (!a1)
    {
      ObjectType = swift_getObjectType();
      (*(v32 + 32))(0, 0xE000000000000000, 0, ObjectType, v32);
      swift_unknownObjectRelease();
      return result;
    }

    v127 = v7;
    v130 = v32;

    v33 = AppEventFormattedDate.displayText.getter();
    v129 = a1;
    if (v34)
    {
      v35 = v33;
      v36 = v34;
LABEL_14:
      v68 = swift_getObjectType();
      v69 = AppEventFormattedDate.showLiveIndicator.getter();
      (*(v130 + 32))(v35, v36, v69 & 1, v68);

      swift_unknownObjectRelease();

      return result;
    }

    AppEventFormattedDate.countdownToDate.getter();
    v38 = v22;
    v41 = *(v22 + 48);
    v39 = v22 + 48;
    v40 = v41;
    v42 = v140;
    if (v41(v21, 1, v140) != 1)
    {
      v123 = v40;
      v124 = v39;
      v44 = v139;
      v45 = v21;
      v46 = *(v38 + 32);
      v46(v139, v45, v42);
      v47 = AppEventFormattedDate.countdownStringKey.getter();
      if (!v48)
      {
        (*(v38 + 8))(v44, v42);
        goto LABEL_13;
      }

      v106 = v46;
      v107 = v38 + 32;
      v104 = v47;
      v117 = v48;
      static Calendar.current.getter();
      v121 = sub_10002849C(&qword_10098C3C0, &unk_1007D54F0);
      v49 = type metadata accessor for Calendar.Component();
      v50 = *(v49 - 8);
      v51 = *(v50 + 72);
      v119 = *(v50 + 80);
      v52 = (v119 + 32) & ~v119;
      v122 = v52;
      v125 = 4 * v51;
      v115 = 5 * v51;
      v53 = swift_allocObject();
      v114 = xmmword_1007B5360;
      v116 = v53;
      *(v53 + 1) = xmmword_1007B5360;
      v126 = v38;
      v54 = v53 + v52;
      v113 = enum case for Calendar.Component.year(_:);
      v105 = v50;
      v55 = *(v50 + 104);
      v55(v53 + v52);
      v112 = enum case for Calendar.Component.month(_:);
      v56 = v51;
      v55(&v54[v51]);
      v51 *= 2;
      v120 = v56;
      v111 = enum case for Calendar.Component.day(_:);
      v108 = v51;
      v55(&v54[v51]);
      v110 = v51 + v56;
      v109 = enum case for Calendar.Component.hour(_:);
      v55(&v54[v51 + v56]);
      v118 = enum case for Calendar.Component.minute(_:);
      v55(&v54[v125]);
      sub_100082EBC(v116);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Date.init()();
      Calendar.dateComponents(_:from:)();

      v57 = *(v126 + 8);
      v126 += 8;
      v116 = v57;
      v57(v28, v140);
      v58 = *(v135 + 1);
      v58(v6, object);
      static Calendar.current.getter();
      v59 = v122;
      v60 = swift_allocObject();
      *(v60 + 16) = v114;
      v61 = v60 + v59;
      (v55)(v61, v113, v49);
      (v55)(v61 + v120, v112, v49);
      (v55)(v61 + v108, v111, v49);
      (v55)(v61 + v110, v109, v49);
      v115 = v50 + 104;
      *&v114 = v55;
      (v55)(v61 + v125, v118, v49);
      sub_100082EBC(v60);
      swift_setDeallocating();
      v125 = v49;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Calendar.dateComponents(_:from:)();
      v62 = v138;
      v63 = object;
      v64 = v140;

      v58(v6, v63);
      static Calendar.current.getter();
      Calendar.date(from:)();
      v135 = v58;
      v58(v6, v63);
      v65 = v123;
      if (v123(v18, 1, v64) == 1)
      {

        v66 = v127;
        v67 = *(v128 + 8);
        v67(v137, v127);
        v67(v62, v66);
        v116(v139, v64);
        v43 = v18;
        goto LABEL_11;
      }

      v70 = v18;
      v71 = v106;
      v106(v134, v70, v64);
      static Calendar.current.getter();
      v72 = v133;
      Calendar.date(from:)();
      v73 = v72;
      v135(v6, v63);
      v74 = v65(v72, 1, v64);
      v75 = v64;
      v76 = v128;
      if (v74 != 1)
      {
        v80 = v131;
        v71(v131, v73, v64);
        static Calendar.current.getter();
        v81 = v122;
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_1007B10D0;
        v83 = v125;
        (v114)(v82 + v81, v118, v125);
        sub_100082EBC(v82);
        swift_setDeallocating();
        v84 = v83;
        v85 = v80;
        (*(v105 + 8))(v82 + v81, v84);
        swift_deallocClassInstance();
        v86 = v132;
        v87 = v134;
        Calendar.dateComponents(_:from:to:)();

        v135(v6, v63);
        v88 = DateComponents.minute.getter();
        v90 = v89;
        v91 = *(v76 + 8);
        v92 = v127;
        v91(v86, v127);
        if ((v90 & 1) == 0)
        {
          v96._countAndFlagsBits = v104;
          v96._object = v117;
          v97._countAndFlagsBits = 0;
          v97._object = 0xE000000000000000;
          v98 = localizedStringWithCount(_:count:comment:)(v96, v88, v97);
          object = v98._object;

          v141 = v98;
          sub_10007FED4();
          v35 = StringProtocol.localizedUppercase.getter();
          v36 = v99;
          v100 = v85;
          v101 = v140;
          v102 = v116;
          v116(v100, v140);
          v102(v87, v101);
          v91(v137, v92);
          v91(v138, v92);
          v102(v139, v101);

          goto LABEL_14;
        }

        v93 = v85;
        v94 = v140;
        v95 = v116;
        v116(v93, v140);
        v95(v87, v94);
        v91(v137, v92);
        v91(v138, v92);
        v95(v139, v94);
        goto LABEL_13;
      }

      v77 = v116;
      v116(v134, v64);
      v21 = v73;
      v78 = *(v76 + 8);
      v79 = v127;
      v78(v137, v127);
      v78(v138, v79);
      v77(v139, v75);
    }

    v43 = v21;
LABEL_11:
    sub_10002B894(v43, &qword_100979710, &qword_1007BB7C0);
LABEL_13:
    v35 = 0;
    v36 = 0xE000000000000000;
    goto LABEL_14;
  }

  return result;
}

double AppEventFormattedDatePresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_currentFormattedDate;
  swift_beginAccess();
  v5 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v7 = 0;
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    v7 = *(v2 + v4);
  }

  sub_1006E4910(v7, v6);
  swift_unknownObjectRelease();

  return result;
}

void (*AppEventFormattedDatePresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1006E57F0;
}

void sub_1006E57F0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_currentFormattedDate;
    swift_beginAccess();
    v6 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
    v8 = 0;
    if (!(*(*(v6 - 8) + 48))(v4 + v5, 1, v6))
    {
      v8 = *(v4 + v5);
    }

    sub_1006E4910(v8, v7);
  }

  free(v3);
}

uint64_t AppEventFormattedDatePresenter.init(formattedDates:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1006E6CE8(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1006E592C()
{
  v1 = sub_10002849C(&qword_100992D18, &qword_1007DF190);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  sub_1006E5BEC((&v9 - v2));
  v4 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_currentFormattedDate;
  swift_beginAccess();
  sub_1006E7080(v3, v0 + v4);
  swift_endAccess();
  v5 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v7 = 0;
  if (!(*(*(v5 - 8) + 48))(v0 + v4, 1, v5))
  {
    v7 = *(v0 + v4);
  }

  sub_1006E4910(v7, v6);

  sub_100031660(v0 + v4, v3, &qword_100992D18, &qword_1007DF190);
  sub_1006E60C8(v3);
  return sub_10002B894(v3, &qword_100992D18, &qword_1007DF190);
}

uint64_t AppEventFormattedDatePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_10001F64C(v0 + 24);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_currentFormattedDate, &qword_100992D18, &qword_1007DF190);

  return v0;
}

uint64_t AppEventFormattedDatePresenter.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_10001F64C(v0 + 24);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_currentFormattedDate, &qword_100992D18, &qword_1007DF190);

  return swift_deallocClassInstance();
}

uint64_t sub_1006E5BEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v34 - v7);
  v9 = type metadata accessor for Date();
  v38 = *(v9 - 1);
  __chkstk_darwin(v9);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v43 = &v34 - v13;
  v14 = *(v1 + 16);
  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_28:
    v32 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(v16);
    v33 = *(*(v32 - 8) + 56);

    return v33(a1, 1, 1, v32);
  }

LABEL_3:
  result = Date.init(timeIntervalSinceNow:)();
  v18 = v14 & 0xC000000000000001;
  v37 = a1;
  v42 = v11;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v14 + 32);
  }

  v20 = v38 + 56;
  a1 = v9;
  v35 = *(v38 + 56);
  v35(v8, 1, 1, v9);
  if (!v15)
  {
    v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v8;
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  v36 = v8;
  if (v9)
  {
LABEL_8:
    v34 = v20;
    v15 = 0;
    v8 = (v38 + 48);
    v41 = (v38 + 32);
    v39 = v14 & 0xFFFFFFFFFFFFFF8;
    v40 = (v38 + 8);
    while (1)
    {
      if (v18)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_26;
        }

        v11 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v16 = _CocoaArrayWrapper.endIndex.getter();
          if (!v16)
          {
            goto LABEL_28;
          }

          goto LABEL_3;
        }
      }

      v45 = v22;
      AppEventFormattedDate.displayFromDate.getter();
      if ((*v8)(v5, 1, a1) == 1)
      {

        sub_10002B894(v5, &qword_100979710, &qword_1007BB7C0);
      }

      else
      {
        v44 = v19;
        v23 = v9;
        v24 = v14;
        v25 = v18;
        v26 = v42;
        v27 = *v41;
        (*v41)(v42, v5, a1);
        if (static Date.> infix(_:_:)())
        {

          v29 = v36;
          sub_10002B894(v36, &qword_100979710, &qword_1007BB7C0);
          (*v40)(v43, a1);
          v27(v29, v26, a1);
          v35(v29, 0, 1, a1);
          v28 = v44;
          goto LABEL_24;
        }

        (*v40)(v26, a1);

        v18 = v25;
        v14 = v24;
        v9 = v23;
      }

      ++v15;
      v21 = v45;
      v19 = v45;
      if (v11 == v9)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_21:
  v21 = v19;
LABEL_22:
  (*(v38 + 8))(v43, a1);
  v28 = v21;
  v29 = v36;
LABEL_24:
  v30 = v37;
  *v37 = v28;
  v31 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  sub_1006E714C(v29, v30 + *(v31 + 20));
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

void sub_1006E60C8(uint64_t a1)
{
  v3 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Calendar.SearchDirection();
  v67 = *(v76 - 8);
  __chkstk_darwin(v76);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Calendar.MatchingPolicy();
  v65 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Calendar();
  v78 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DateComponents();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v77 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Date();
  v9 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v62 - v12;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v16 = sub_10002849C(&qword_100992D18, &qword_1007DF190);
  __chkstk_darwin(v16 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v22 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  __chkstk_darwin(v22 - 8);
  v81 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v71 = &v62 - v25;
  __chkstk_darwin(v26);
  v28 = &v62 - v27;
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = &v62 - v31;
  v82 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer;
  v83 = v1;
  v33 = *(v1 + OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer);
  if (v33)
  {
    [v33 invalidate];
  }

  v34 = a1;
  sub_100031660(a1, v21, &qword_100992D18, &qword_1007DF190);
  v35 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v36 = *(*(v35 - 8) + 48);
  if (v36(v21, 1, v35) == 1)
  {
    sub_10002B894(v21, &qword_100992D18, &qword_1007DF190);
    v37 = v84;
    (*(v9 + 56))(v32, 1, 1, v84);
  }

  else
  {
    sub_100031660(&v21[*(v35 + 20)], v32, &qword_100979710, &qword_1007BB7C0);
    sub_1006E70F0(v21);
    v37 = v84;
  }

  Date.init()();
  sub_100031660(v34, v18, &qword_100992D18, &qword_1007DF190);
  if (v36(v18, 1, v35) == 1)
  {
    sub_10002B894(v18, &qword_100992D18, &qword_1007DF190);
    (*(v9 + 56))(v28, 1, 1, v37);
  }

  else
  {

    sub_1006E70F0(v18);
    AppEventFormattedDate.countdownToDate.getter();

    if ((*(v9 + 48))(v28, 1, v37) != 1)
    {
      v46 = v79;
      (*(v9 + 32))(v79, v28, v37);
      if (static Date.> infix(_:_:)())
      {
        v47 = v72;
        static Calendar.current.getter();
        sub_10002849C(&qword_10098C3C0, &unk_1007D54F0);
        v48 = type metadata accessor for Calendar.Component();
        v49 = *(v48 - 8);
        v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1007B10D0;
        (*(v49 + 104))(v51 + v50, enum case for Calendar.Component.second(_:), v48);
        sub_100082EBC(v51);
        swift_setDeallocating();
        (*(v49 + 8))(v51 + v50, v48);
        swift_deallocClassInstance();
        Calendar.dateComponents(_:from:)();

        v52 = *(v78 + 8);
        v78 += 8;
        v62 = v52;
        v52(v47, v73);
        static Calendar.current.getter();
        v53 = v65;
        (*(v65 + 104))(v74, enum case for Calendar.MatchingPolicy.nextTime(_:), v75);
        v55 = v66;
        v54 = v67;
        (*(v67 + 104))(v66, enum case for Calendar.SearchDirection.forward(_:), v76);
        v57 = v69;
        v56 = v70;
        v58 = v15;
        v59 = v68;
        (*(v69 + 104))(v68, enum case for Calendar.RepeatedTimePolicy.first(_:), v70);
        v60 = v72;
        Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
        v61 = v59;
        v15 = v58;
        v37 = v84;
        (*(v57 + 8))(v61, v56);
        (*(v54 + 8))(v55, v76);
        (*(v53 + 8))(v74, v75);
        v62(v60, v73);
        (*(v63 + 8))(v77, v64);
        (*(v9 + 8))(v79, v37);
        sub_10002B894(v32, &qword_100979710, &qword_1007BB7C0);
        sub_1006E714C(v71, v32);
      }

      else
      {
        (*(v9 + 8))(v46, v37);
      }

      goto LABEL_10;
    }
  }

  sub_10002B894(v28, &qword_100979710, &qword_1007BB7C0);
LABEL_10:
  v38 = v83;
  v39 = v81;
  sub_100031660(v32, v81, &qword_100979710, &qword_1007BB7C0);
  if ((*(v9 + 48))(v39, 1, v37) == 1)
  {
    (*(v9 + 8))(v15, v37);
    sub_10002B894(v32, &qword_100979710, &qword_1007BB7C0);
    sub_10002B894(v39, &qword_100979710, &qword_1007BB7C0);
    v40 = 0;
  }

  else
  {
    v41 = v80;
    (*(v9 + 32))(v80, v39, v37);
    isa = Date._bridgeToObjectiveC()().super.isa;

    v40 = [objc_allocWithZone(NSTimer) initWithFireDate:isa interval:v38 target:"update" selector:0 userInfo:0 repeats:0.0];

    v43 = [objc_opt_self() mainRunLoop];
    [v43 addTimer:v40 forMode:NSRunLoopCommonModes];

    v44 = *(v9 + 8);
    v44(v41, v37);
    v44(v15, v37);
    sub_10002B894(v32, &qword_100979710, &qword_1007BB7C0);
  }

  v45 = *(v38 + v82);
  *(v38 + v82) = v40;
}

double sub_1006E6C1C(uint64_t a1)
{

  sub_1006E592C();

  return result;
}

uint64_t sub_1006E6CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_currentFormattedDate;
  v7 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v3 + 16) = a1;
  swift_beginAccess();
  *(v3 + 32) = a3;
  swift_unknownObjectWeakAssign();
  sub_1006E592C();
  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  [v9 addObserver:v3 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v10 = [v8 defaultCenter];
  [v10 addObserver:v3 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  return v3;
}

void sub_1006E6E98(uint64_t a1)
{
  sub_1006E702C(319, &unk_100992D58, type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006E6F8C(uint64_t a1)
{
  type metadata accessor for AppEventFormattedDate();
  if (v1 <= 0x3F)
  {
    sub_1006E702C(319, &qword_10098BDD0, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1006E702C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1006E7080(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100992D18, &qword_1007DF190);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006E70F0(uint64_t a1)
{
  v2 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006E714C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006E72E4()
{
  v1 = type metadata accessor for LayoutRect();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OffsetGridLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for IconGridView(0);
  v14.receiver = v0;
  v14.super_class = v6;
  objc_msgSendSuper2(&v14, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  sub_1006E751C(v7, v8, v9, v10);
  static OffsetGridLayout.Metrics.centerOffsetLayout(with:interItemSpacing:lineSpacing:numberOfRows:originOffset:)();
  swift_beginAccess();

  sub_1002A51C0(v11);

  type metadata accessor for OffsetGridLayout();
  swift_allocObject();
  OffsetGridLayout.init(metrics:views:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  dispatch thunk of OffsetGridLayout.placeChildren(relativeTo:in:)();

  return (*(v2 + 8))(v4, v1);
}

void sub_1006E751C(__n128 a1, double a2, double a3, double a4)
{
  v5 = v4;
  v6 = type metadata accessor for OffsetGridLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OffsetGridLayout();
  static OffsetGridLayout.Metrics.centerOffsetLayout(with:interItemSpacing:lineSpacing:numberOfRows:originOffset:)();
  v10 = static OffsetGridLayout.numberOfViewsNeeded(toFill:with:)();
  (*(v7 + 8))(v9, v6);
  v11 = OBJC_IVAR____TtC8AppStore12IconGridView_artworkViews;
  swift_beginAccess();
  v12 = *&v4[v11];
  if (v12 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() == v10)
    {
      return;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) == v10)
  {
    return;
  }

  v13 = *&v4[v11];
  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  if (v14 < 1)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v15 = 0;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    ++v15;
    v27 = v16;
    swift_beginAccess();
    sub_10002849C(&qword_100977078, qword_1007BC1F8);
    ReusePool.recycle(_:)();
    swift_endAccess();
  }

  while (v14 != v15);

LABEL_12:
  *&v4[v11] = _swiftEmptyArrayStorage;

  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  for (; v10; --v10)
  {
    swift_beginAccess();
    sub_10002849C(&qword_100977078, qword_1007BC1F8);
    ReusePool.dequeue(or:)();
    swift_endAccess();
    v18 = v27;
    swift_beginAccess();
    v19 = v18;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v5 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v20 = [v19 superview];
    if (!v20 || (v21 = v20, sub_100028004(), v22 = v5, v23 = static NSObject.== infix(_:_:)(), v21, v22, (v23 & 1) == 0))
    {
      [v5 addSubview:v19];
    }
  }

  v24 = *(v5 + OBJC_IVAR____TtC8AppStore12IconGridView_impressionableArtworks);
  if (v24)
  {
    v25 = *(v5 + OBJC_IVAR____TtC8AppStore12IconGridView_artworkLoader);
    if (v25)
    {

      sub_1006E7990(v24, v25);
    }
  }
}

uint64_t sub_1006E795C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArtworkView();
  result = static ArtworkView.iconArtworkView.getter();
  *a1 = result;
  return result;
}

void sub_1006E7990(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  v5 = OBJC_IVAR____TtC8AppStore12IconGridView_artworkViews;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_41;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v22 = a1 >> 62;
      v7 = a1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = *(v2 + v5);
      v8 = v5 >> 62;
      if (!v7)
      {
        break;
      }

      if (v8)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v9)
      {
        goto LABEL_34;
      }

      v10 = 0;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      v21 = a1 & 0xC000000000000001;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v12 = *(v5 + 8 * v10 + 32);
        }

        v13 = v12;
        a1 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v22)
        {
          v14 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v14 = *(v11 + 16);
        }

        if (!v14)
        {
          goto LABEL_38;
        }

        v15 = v10 % v14;
        if (v21)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          if (v15 >= *(v11 + 16))
          {
            goto LABEL_40;
          }
        }

        ImpressionableArtwork.art.getter();

        Artwork.config(using:)();
        Artwork.style.getter();
        ArtworkView.style.setter();
        type metadata accessor for ArtworkView();
        sub_10009A098();
        v2 = a2;
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

        ++v10;
        if (a1 == v9)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    if (v8)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if (!v16)
      {
        return;
      }
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        return;
      }
    }

    if (v16 >= 1)
    {

      v17 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = *(v5 + 8 * v17 + 32);
        }

        v20 = v18;
        ++v17;
        v24.value.super.isa = 0;
        v24.is_nil = 1;
        ArtworkView.show(image:isAnimationPermitted:)(v24, v19);
      }

      while (v16 != v17);
LABEL_34:

      return;
    }

    __break(1u);
  }
}

id sub_1006E7D04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconGridView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IconGridView(uint64_t a1)
{
  result = qword_100992EC0;
  if (!qword_100992EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006E7E38(uint64_t a1)
{
  sub_10017CFA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006E7F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a13@<D6>, double a14@<D7>, double a15, double a16)
{
  v44 = a5;
  v45 = a4;
  v50 = a3;
  v51 = a6;
  v52 = a13;
  v53 = a14;
  v48 = a1;
  v17 = type metadata accessor for Shelf.ContentType();
  v54 = *(v17 - 8);
  __chkstk_darwin(v17);
  v47 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PageGrid.Direction();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v43 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v42 - v23;
  v25 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  __chkstk_darwin(v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v42 - v29;
  sub_100031660(a2, &v42 - v29, &unk_10098FFB0, qword_1007B3890);
  sub_100031660(v50, &v30[*(v25 + 48)], &unk_10098FFB0, qword_1007B3890);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  ReadOnlyLens.subscript.getter();

  v31 = *(v20 + 104);
  v32 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v56)
  {
    v32 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v33 = *v32;
  v49 = v24;
  v50 = v19;
  v34 = v19;
  v35 = v47;
  v31(v24, v33, v34);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v36 = *(v54 + 88);
  v46 = v17;
  v37 = v36(v35, v17);
  if (v37 == enum case for Shelf.ContentType.accessibilityFeatures(_:) || v37 == enum case for Shelf.ContentType.accessibilityParagraph(_:))
  {
    v41 = v49;
    v40 = v50;
    (*(v20 + 16))(v43, v49, v50);
    sub_1006E8884();
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v20 + 8))(v41, v40);
    return sub_10002B894(v30, &qword_100974650, &unk_1007B6B70);
  }

  else
  {
    v55 = v44;
    sub_100031660(v30, v27, &qword_100974650, &unk_1007B6B70);
    v38 = *(v25 + 48);
    sub_10010E37C();
    PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
    (*(v20 + 8))(v49, v50);
    sub_10002B894(v30, &qword_100974650, &unk_1007B6B70);
    sub_10002B894(&v27[v38], &unk_10098FFB0, qword_1007B3890);
    sub_10002B894(v27, &unk_10098FFB0, qword_1007B3890);
    return (*(v54 + 8))(v35, v46);
  }
}

uint64_t sub_1006E840C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1006E8830();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1006E84F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1006E8830();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1006E85D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006E91BC();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1006E8630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a12@<D6>, double a13@<D7>, double a14, double a15)
{
  v28[4] = a4;
  *&v28[2] = a12;
  *&v28[3] = a13;
  v28[0] = a5;
  v28[1] = a1;
  v18 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  v25 = *v15;
  sub_100031660(a2, v28 - v23, &unk_10098FFB0, qword_1007B3890);
  sub_100031660(a3, &v24[*(v19 + 56)], &unk_10098FFB0, qword_1007B3890);
  v28[5] = v25;
  sub_100031660(v24, v21, &qword_100974650, &unk_1007B6B70);
  v26 = *(v19 + 56);
  sub_10010E37C();

  PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v24, &qword_100974650, &unk_1007B6B70);

  sub_10002B894(&v21[v26], &unk_10098FFB0, qword_1007B3890);
  return sub_10002B894(v21, &unk_10098FFB0, qword_1007B3890);
}

unint64_t sub_1006E8830()
{
  result = qword_100992ED0;
  if (!qword_100992ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992ED0);
  }

  return result;
}

uint64_t sub_1006E8884()
{
  v0 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v0 - 8);
  v34 = &v31 - v1;
  v39 = type metadata accessor for PageGrid.HorizontalMargins();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v5 - 8);
  v43 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v16 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v40 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v32 = v18;
  *(v18 + 16) = xmmword_1007B23A0;
  v19 = v18 + v17;
  v45 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v44 = 0x4030000000000000;
  v45 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v35 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v42 = *(v2 + 104);
  v38 = v2 + 104;
  v42(v4);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v37 = v19;
  v41 = v15;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v44 = 0x4034000000000000;
  v45 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  (v42)(v4, v35, v39);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v26 = v40;
  v36 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v31 = 2 * v26;
  v45 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = vdupq_n_s64(0x4041000000000000uLL);
  (v42)(v4, v35, v39);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v33 = v9;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v27 = v40;
  v45 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v35 = enum case for PageGrid.HorizontalMargins.readableContentGuide(_:);
  v28 = v42;
  v42(v4);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v31 = 4 * v27;
  v45 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v29 = v39;
  v28(v4, v35, v39);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  (v42)(v4, v35, v29);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v32;
}