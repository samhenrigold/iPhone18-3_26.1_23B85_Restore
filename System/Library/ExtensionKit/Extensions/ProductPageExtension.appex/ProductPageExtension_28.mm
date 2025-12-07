void sub_1003277B4(void *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v8 = *a2;
  if (*(v4 + *a2))
  {
    [*(v4 + *a3) removeGestureRecognizer:?];
    v9 = *(v4 + v8);
  }

  else
  {
    v9 = 0;
  }

  *(v4 + v8) = a1;
  v10 = a1;

  if (a1)
  {
    v11 = *a4;
    v12 = v10;
    [v12 addTarget:v4 action:v11];
    [v12 setDelegate:v4];

    [*(v4 + *a3) addGestureRecognizer:v12];
  }
}

void sub_1003278B4()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock))
  {
    sub_1003277B4([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer, &OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView, &selRef_lockupTapGestureRecognized_);
  }

  else
  {
    v1 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer;
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer))
    {
      [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView) removeGestureRecognizer:?];
      v2 = *(v0 + v1);
    }

    else
    {
      v2 = 0;
    }

    *(v0 + v1) = 0;
  }
}

void sub_100327968(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3 & 1;
  v8 = sub_10076BEDC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkViewSize];
  v17 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkViewSize];
  v18 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkViewSize + 8];
  v19 = v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkViewSize + 16];
  *v16 = *&a1;
  v16[1] = *&a2;
  *(v16 + 16) = v7;
  if ((a3 & 1) == 0)
  {
    if ((v19 & 1) != 0 || (v17 == *&a1 ? (v20 = v18 == *&a2) : (v20 = 0), !v20))
    {
      if ((*&a1 != 0.0 || *&a2 != 0.0) && (v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_isCollapsing] & 1) == 0 && *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mainArtwork] && *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkLoader] != 0)
      {
        v22 = v13;
        v23 = v3;
        v24 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView];
        swift_retain_n();
        swift_retain_n();
        v25 = sub_10076BE1C();
        if (!v25)
        {
          sub_100016F40(0, &qword_100942F10, UIColor_ptr);
          v25 = sub_100770D5C();
        }

        v26 = v25;
        [v24 setBackgroundColor:v25];

        v27 = [v23 traitCollection];
        v28 = sub_1007706FC();

        if (v28)
        {
          if (qword_10093FEA8 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_10099E718;
        }

        else
        {
          if (qword_10093FEA0 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_10099E700;
        }

        v31 = sub_10000A61C(v29, v30);
        sub_10019E1C8(v31, v15);
        [v23 bounds];
        sub_10076D36C();
        [v23 bounds];
        sub_10076BEEC();
        v32 = sub_10076BE9C();
        (*(v9 + 8))(v11, v8);
        sub_10076BFCC();
        [*&v23[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView] setContentMode:v32];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v34 = Strong;
          type metadata accessor for VideoView(0);
          sub_10032C900(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
          sub_100760B8C();
        }

        else
        {
          sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
          sub_10032E104();
          sub_100760B8C();
        }

        sub_10032E0A4(v15, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }
    }
  }
}

double sub_100327DC0(uint64_t a1, __n128 a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupArtwork);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupArtwork) = a1;
  if (a1)
  {
    if (v3)
    {
      sub_10076C02C();
      sub_10032C900(&unk_10094BB10, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      swift_retain_n();
      v4 = sub_10076FF1C();

      if (v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkLoader);

    sub_10049A8F8(v6, v5);

LABEL_9:

    return result;
  }

  if (v3)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_100327EFC(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoBackgroundColor;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoBackgroundColor);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoBackgroundColor) = a1;
  v7 = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v1 + v2);
    [v5 setBackgroundColor:v6];
  }
}

id sub_100327F98()
{
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_titleLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel) setAlpha:0.0];
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel);
  if (v1)
  {
    [v1 setAlpha:0.0];
  }

  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton);
  if (v2)
  {
    [v2 setAlpha:0.0];
  }

  [*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton) setAlpha:0.0];
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView);

  return [v3 setAlpha:0.0];
}

void sub_1003280A4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10076361C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, v1 + v7, v3);
  sub_10032C900(&unk_100952B00, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
  v9 = sub_10076FF1C();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v9 & 1) == 0)
  {
    v11 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView);
    v8(v6, v2 + v7, v3);
    v12 = sub_1007635FC();
    v10(v6, v3);
    [v11 setOverrideUserInterfaceStyle:v12];
    v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView);
    v8(v6, v2 + v7, v3);
    v14 = sub_1007635FC();
    v10(v6, v3);
    [v13 setOverrideUserInterfaceStyle:v14];
    v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView);
    v8(v6, v2 + v7, v3);
    v16 = sub_10076360C();
    v10(v6, v3);
    [v15 setOverrideUserInterfaceStyle:v16];
    v17 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView);
    if (v17)
    {
      v8(v6, v2 + v7, v3);
      v18 = v17;
      v19 = sub_1007635FC();
      v10(v6, v3);
      [v18 setOverrideUserInterfaceStyle:v19];
    }

    sub_100326E58();
  }
}

void sub_100328388()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView];
    v6 = Strong;
    [v3 setHidden:1];
    v6[qword_1009A2560] = 1;
    *&v6[qword_1009602B8 + 8] = &off_1008913D8;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    sub_1007706FC();

    [v6 _setCornerRadius:26.0];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView] insertSubview:v6 aboveSubview:v3];
    sub_1003277B4([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer, &OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView, &selRef_videoTapGestureRecognized_);
    v5 = [v1 traitCollection];
    LOBYTE(v3) = sub_1007706FC();

    if (v3)
    {
      sub_100328530();
    }

    [v1 setNeedsLayout];
  }
}

id sub_100328530()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView;
    if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView] || (type metadata accessor for VideoMirrorView(), !swift_dynamicCastClass()))
    {
      v10 = *&CATransform3DIdentity.m33;
      v52 = *&CATransform3DIdentity.m31;
      v53 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v54 = *&CATransform3DIdentity.m41;
      v55 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v48 = *&CATransform3DIdentity.m11;
      v49 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v50 = *&CATransform3DIdentity.m21;
      v51 = v13;
      objc_allocWithZone(type metadata accessor for VideoMirrorView());
      v14 = v3;
      v15 = sub_1002831F8(v3, &v48, 1.0, 0.0);
      v16 = *&v1[v4];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v1[v4];
      }

      else
      {
        v17 = 0;
      }

      *&v1[v4] = v15;
      v44 = v15;

      [*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_22;
    }
  }

  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView];
  v6 = [v5 isHidden];
  v7 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView];
  if (v6)
  {
    if (!v8)
    {
      v9 = 0;
LABEL_17:
      *&v1[v7] = 0;

      [v1 setNeedsLayout];
      goto LABEL_23;
    }

LABEL_16:
    [v8 removeFromSuperview];
    v9 = *&v1[v7];
    goto LABEL_17;
  }

  if (v8)
  {
    type metadata accessor for VideoMirrorView();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_16;
    }
  }

  v18 = type metadata accessor for MirrorView();
  v19 = objc_allocWithZone(v18);
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
  v21 = objc_allocWithZone(CALayer);
  v22 = v5;
  *&v19[v20] = [v21 init];
  v23 = v22;
  *&v19[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageKVOContext] = 0;
  v19[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageObserversAdded] = 0;
  swift_unknownObjectWeakAssign();
  *&v19[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
  *&v19[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsVerticalOffset] = 0;
  v47.receiver = v19;
  v47.super_class = v18;
  v24 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v24 setClipsToBounds:1];
  [v24 setUserInteractionEnabled:0];
  v25 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
  [*&v24[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
  LODWORD(v26) = 1.0;
  [*&v24[v25] setOpacity:v26];
  [*&v24[v25] setAnchorPoint:{0.5, 0.5}];
  v27 = qword_10093F780;
  v28 = *&v24[v25];
  if (v27 != -1)
  {
    swift_once();
  }

  sub_10000A5D4(&qword_100948AE0, qword_1007988E0);
  isa = sub_10076FE3C().super.isa;
  [v28 setActions:isa];

  v30 = *&v24[v25];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 mainScreen];
  [v33 scale];
  v35 = v34;

  [v32 setContentsScale:v35];
  [*&v24[v25] setMasksToBounds:1];
  v36 = *&v24[v25];
  v37 = *&CATransform3DIdentity.m33;
  v52 = *&CATransform3DIdentity.m31;
  v53 = v37;
  v38 = *&CATransform3DIdentity.m43;
  v54 = *&CATransform3DIdentity.m41;
  v55 = v38;
  v39 = *&CATransform3DIdentity.m13;
  v48 = *&CATransform3DIdentity.m11;
  v49 = v39;
  v40 = *&CATransform3DIdentity.m23;
  v50 = *&CATransform3DIdentity.m21;
  v51 = v40;
  [v36 setTransform:&v48];
  sub_1000F8300();
  v41 = [v24 layer];

  [v41 addSublayer:*&v24[v25]];
  v42 = *&v1[v7];
  if (v42)
  {
    [v42 removeFromSuperview];
    v43 = *&v1[v7];
  }

  else
  {
    v43 = 0;
  }

  *&v1[v7] = v24;
  v44 = v24;

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
  [v1 setNeedsLayout];
LABEL_22:

LABEL_23:
  v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView];
  if (v45)
  {
    [v45 setHidden:0];
  }

  return [v1 setNeedsLayout];
}

void (*sub_100328A74(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100328AC8;
}

void sub_100328AC8(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_10032DD5C();
    swift_unknownObjectWeakAssign();
    sub_100328388();
  }

  else
  {
    v2 = *a1;
    sub_10032DD5C();
    swift_unknownObjectWeakAssign();
    sub_100328388();
  }
}

uint64_t sub_100328B4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v234 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D1FC();
  v236 = *(v6 - 1);
  v237 = v6;
  __chkstk_darwin(v6);
  v235 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppEventDetailPageLayout(0);
  __chkstk_darwin(v8);
  v10 = (&v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v11);
  v239 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v192 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v192 - v18;
  v273.receiver = v1;
  v273.super_class = ObjectType;
  objc_msgSendSuper2(&v273, "layoutSubviews", v17);
  [v1 bounds];
  result = CGRectIsEmpty(v274);
  if ((result & 1) == 0)
  {
    v195 = v5;
    v196 = v3;
    sub_10076422C();
    v238 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoView;
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = [v1 traitCollection];
    v22 = sub_1007706FC();

    if (v22)
    {
      if (qword_10093FEA8 != -1)
      {
        swift_once();
      }

      v23 = qword_10099E718;
    }

    else
    {
      if (qword_10093FEA0 != -1)
      {
        swift_once();
      }

      v23 = qword_10099E700;
    }

    v24 = sub_10000A61C(v11, v23);
    sub_10019E1C8(v24, v15);
    *&v15[*(v11 + 40)] = vdupq_n_s64(0x4046000000000000uLL);
    if (qword_10093FF40 != -1)
    {
      swift_once();
    }

    v231 = ObjectType;
    v25 = sub_10077111C();
    sub_10000A61C(v25, qword_100952950);
    swift_beginAccess();
    v26 = sub_1007710AC();
    v233 = v19;
    if (v26)
    {
      v27 = v26;
      v28 = v11;
      swift_endAccess();
      swift_beginAccess();
      v29 = sub_100770F3C();
      if (v29)
      {
        v30 = v29;
        swift_endAccess();
        v31 = [v27 imageWithConfiguration:v30];
        [v31 size];
        v32 = &v15[v28[17]];
        *v32 = v33;
        *(v32 + 1) = v34;
        [v31 contentInsets];
        v271 = &type metadata for CGFloat;
        v272 = &protocol witness table for CGFloat;
        *&v270 = v35;
        v36 = v28[20];
        sub_10000CD74(&v15[v36]);
        sub_100012498(&v270, &v15[v36]);
        v37 = [v1 traitCollection];
        LODWORD(v230) = sub_10077070C();

        [v31 contentInsets];
        v39 = v38;
        v41 = v40;
        v271 = &type metadata for CGFloat;
        v272 = &protocol witness table for CGFloat;

        if (v230)
        {
          *&v270 = v41;
        }

        else
        {
          *&v270 = v39;
        }

        v42 = v28[19];
        sub_10000CD74(&v15[v42]);
        sub_100012498(&v270, &v15[v42]);
        v19 = v233;
      }

      else
      {
        swift_endAccess();
      }

      v11 = v28;
    }

    else
    {
      swift_endAccess();
    }

    v43 = [v1 traitCollection];
    v44 = sub_1007706EC();

    if (v44)
    {
      if (Strong)
      {
        v271 = &type metadata for Double;
        v272 = &protocol witness table for Double;

        *&v270 = 0x404E000000000000;
        v45 = *(v11 + 44);
        sub_10000CD74(&v15[v45]);
        sub_100012498(&v270, &v15[v45]);
      }
    }

    else
    {
    }

    v194 = v11;
    sub_10019EB78(v15, v19);
    sub_10019E1C8(v19, v239);
    v46 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shadowView];
    v271 = sub_10075F99C();
    v272 = &protocol witness table for UIView;
    v229 = v46;
    *&v270 = v46;
    v47 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardContentView];
    v268 = sub_10076394C();
    v269 = &protocol witness table for UIView;
    *&v267 = v47;
    v48 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_borderView];
    v266 = &protocol witness table for UIView;
    v265 = v268;
    v227 = v48;
    v228 = v47;
    *&v264 = v48;
    v49 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView];
    v50 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v263 = &protocol witness table for UIView;
    v262 = v50;
    *&v261 = v49;
    v51 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView];
    v260 = &protocol witness table for UIView;
    v259 = v50;
    v225 = v51;
    v226 = v49;
    *&v258 = v51;
    v52 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView];
    v53 = sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
    v257 = &protocol witness table for UIView;
    v256 = v53;
    v224 = v52;
    *&v255 = v52;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v211 = type metadata accessor for VideoView(0);
      v219 = &protocol witness table for UIView;
    }

    else
    {
      Strong = 0;
      v211 = 0;
      v219 = 0;
    }

    v230 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView;
    v223 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView];
    if (v223)
    {
      v54 = type metadata accessor for MediaOverlayGradientBlurView();
      v217 = &protocol witness table for UIView;
    }

    else
    {
      v54 = 0;
      v217 = 0;
    }

    v222 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView];
    if (v222)
    {
      v214 = type metadata accessor for MirrorView();
      v213 = &protocol witness table for UIView;
    }

    else
    {
      v213 = 0;
      v214 = 0;
    }

    v55 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView];
    v56 = type metadata accessor for OverlayContentContainerView();
    v254 = &protocol witness table for UIView;
    v253 = v56;
    *&v252 = v55;
    v57 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView];
    v220 = v55;
    v221 = v57;
    if (v57)
    {
      v207 = sub_100016F40(0, &qword_100952278, UIVisualEffectView_ptr);
      v206 = &protocol witness table for UIView;
    }

    else
    {
      v206 = 0;
      v207 = 0;
    }

    v218 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView];
    v58 = v218;
    v59 = type metadata accessor for AppPromotionFormattedDateView();
    v251 = &protocol witness table for UIView;
    v250 = v59;
    *&v249 = v58;
    v205 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton];
    v60 = sub_100016F40(0, &qword_100947240, UIButton_ptr);
    v199 = v60;
    v216 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel];
    v61 = v216;
    v62 = sub_1007626BC();
    v63 = &protocol witness table for UILabel;
    v247 = v62;
    v248 = &protocol witness table for UILabel;
    v245 = &protocol witness table for UILabel;
    *&v246 = v61;
    v215 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_titleLabel];
    v193 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton;
    v64 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton];
    v200 = v64;
    v244 = v62;
    v242 = &protocol witness table for UILabel;
    *&v243 = v215;
    if (v64)
    {
      v65 = v60;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = &protocol witness table for UIView;
    }

    else
    {
      v66 = 0;
    }

    v201 = v66;
    v202 = v65;
    v212 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel];
    v241 = v62;
    *&v240 = v212;
    v67 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel];
    if (v67)
    {
      v68 = v62;
    }

    else
    {
      v68 = 0;
    }

    if (!v67)
    {
      v63 = 0;
    }

    v203 = v63;
    v204 = v68;
    v69 = v10 + v8[23];
    v210 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton];
    v70 = v210;
    *(v69 + 3) = type metadata accessor for NotifyMeButton();
    *(v69 + 4) = &protocol witness table for UIView;
    v71 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView];
    *v69 = v70;
    v72 = v10 + v8[24];
    *(v72 + 3) = v50;
    *(v72 + 4) = &protocol witness table for UIView;
    *v72 = v71;
    v208 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
    v73 = v208;
    v209 = v71;
    v74 = v10 + v8[25];
    *(v74 + 3) = type metadata accessor for SmallLockupView(0);
    *(v74 + 4) = &protocol witness table for UIView;
    *v74 = v73;
    v197 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_isCollapsing;
    v198 = v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_isCollapsing];
    sub_10019EB78(v239, v10);
    sub_100012498(&v270, v10 + v8[5]);
    sub_100012498(&v267, v10 + v8[6]);
    sub_100012498(&v264, v10 + v8[7]);
    sub_100012498(&v261, v10 + v8[8]);
    sub_100012498(&v258, v10 + v8[9]);
    sub_100012498(&v255, v10 + v8[10]);
    v75 = v10 + v8[11];
    *v75 = Strong;
    *(v75 + 1) = 0;
    v76 = v211;
    *(v75 + 2) = 0;
    *(v75 + 3) = v76;
    *(v75 + 4) = v219;
    v77 = v10 + v8[12];
    v78 = v222;
    v79 = v223;
    *v77 = v223;
    *(v77 + 1) = 0;
    *(v77 + 2) = 0;
    *(v77 + 3) = v54;
    *(v77 + 4) = v217;
    v80 = v10 + v8[13];
    *v80 = v78;
    *(v80 + 1) = 0;
    v81 = v213;
    v82 = v214;
    *(v80 + 2) = 0;
    *(v80 + 3) = v82;
    *(v80 + 4) = v81;
    sub_100012498(&v252, v10 + v8[14]);
    v83 = v10 + v8[15];
    v84 = v221;
    *v83 = v221;
    *(v83 + 1) = 0;
    v85 = v206;
    v86 = v207;
    *(v83 + 2) = 0;
    *(v83 + 3) = v86;
    *(v83 + 4) = v85;
    sub_100012498(&v249, v10 + v8[16]);
    v87 = v10 + v8[17];
    v88 = v205;
    *v87 = v205;
    *(v87 + 3) = v199;
    *(v87 + 4) = &protocol witness table for UIView;
    sub_100012498(&v246, v10 + v8[18]);
    sub_100012498(&v243, v10 + v8[19]);
    v89 = v10 + v8[20];
    v90 = v200;
    *v89 = v200;
    *(v89 + 1) = 0;
    v91 = v201;
    v92 = v202;
    *(v89 + 2) = 0;
    *(v89 + 3) = v92;
    *(v89 + 4) = v91;
    sub_100012498(&v240, v10 + v8[21]);
    v93 = v10 + v8[22];
    *v93 = v67;
    *(v93 + 1) = 0;
    v94 = v203;
    v95 = v204;
    *(v93 + 2) = 0;
    *(v93 + 3) = v95;
    *(v93 + 4) = v94;
    *(v10 + v8[26]) = v198;
    v96 = v67;
    v97 = v229;
    v98 = v228;
    v99 = v227;
    v100 = v226;
    v227 = v225;
    v239 = v224;
    Strong = v220;
    v226 = v218;
    v228 = v88;
    v101 = v216;
    v102 = v215;
    v103 = v212;
    v104 = v210;
    v105 = v209;
    v229 = v208;
    v106 = v79;
    v107 = v78;
    v108 = v84;
    v109 = v90;
    sub_10076422C();
    v110 = v235;
    AppEventDetailPageLayout.placeChildren(relativeTo:in:)(v1, v111, v112, v113, v114);
    v236[1](v110, v237);
    v115 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView];
    [v100 bounds];
    [v115 setContentSize:{v116, v117}];
    [v1 bounds];
    [v115 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v118 = CGRectGetWidth(v275) * 0.5;
    [v1 bounds];
    Height = CGRectGetHeight(v276);
    v237 = v115;
    [v115 setCenter:{v118, Height * 0.5}];
    v120 = *&v1[v230];
    if (v120 && (v1[v197] & 1) == 0)
    {
      v121 = v101;
      v122 = v120;
      [v122 frame];
      v123 = CGRectGetHeight(v277);
      v124 = [v1 traitCollection];
      v125 = sub_10077071C();

      if (v125)
      {
        if (*&v1[v193])
        {
          v121 = *&v1[v193];
        }

        else
        {
          v121 = v226;
        }
      }

      v126 = v121;
      v236 = v126;
      [v227 frame];
      v127 = CGRectGetHeight(v278);
      [v126 frame];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;

      v279.origin.x = v129;
      v279.origin.y = v131;
      v279.size.width = v133;
      v279.size.height = v135;
      v136 = v123 - (v127 - CGRectGetMinY(v279));
      v137 = (v136 + -100.0) / v123;
      v138 = (v136 + 30.0) / v123;
      v139 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v122[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = v137;
      v140 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView;
      v141 = [*&v122[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v143 = v142;

      v144 = *&v122[v139];
      v145 = [*&v122[v140] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v146 = [*&v122[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v147 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v122[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = v137;
      v148 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
      v149 = [*&v122[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v151 = v150;

      v152 = *&v122[v147];
      v153 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v151, v152}];

      sub_10046CAB0(v138);
      v154 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v122[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = v138;
      v155 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v157 = v156;

      v158 = *&v122[v154];
      v159 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v157, v158}];
    }

    v160 = [v1 traitCollection];
    v161 = sub_1007706FC();

    if (v161)
    {
      v236 = v10;
      [v229 frame];
      MaxY = CGRectGetMaxY(v280);
      v163 = v233;
      v164 = &v233[*(v194 + 128)];
      v165 = *(v164 + 3);
      sub_10000CF78(v164, v165);
      v166 = v195;
      sub_1000FF02C(v165);
      sub_10076D40C();
      v168 = v167;
      (*(v234 + 8))(v166, v196);
      v169 = Strong;
      [Strong bounds];
      [v169 setContentSize:{CGRectGetWidth(v281), MaxY + v168 * 0.8}];
      v170 = [v1 traitCollection];
      v171 = sub_1007706EC();

      if (v171)
      {
        v172 = 1;
      }

      else
      {
        [v169 contentSize];
        v178 = v177;
        [v169 bounds];
        v172 = v178 <= CGRectGetHeight(v282);
      }

      v176 = v239;
      [v237 setAlwaysBounceVertical:v172];
      v10 = v236;
    }

    else
    {
      v173 = Strong;
      [Strong bounds];
      [v173 setContentSize:{v174, v175}];
      v163 = v233;
      v176 = v239;
    }

    [v176 bounds];
    sub_100327968(v179, v180, 0);
    v181 = swift_unknownObjectWeakLoadStrong();
    if (v181)
    {
      v182 = v181;
      v183 = [v1 traitCollection];
      v184 = sub_1007706EC();

      if ((v184 & 1) == 0)
      {
        sub_10032E0A4(v10, type metadata accessor for AppEventDetailPageLayout);

        return sub_10032E0A4(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }

      [v228 frame];
      v186 = v185;
      [v182 frame];
      v188.f64[0] = v187 + -53.0;
      v189 = &v182[qword_1009A2508];
      v190 = *&v182[qword_1009A2508];
      v191 = *&v182[qword_1009A2508 + 16];
      *v189 = xmmword_10079BB10;
      *(v189 + 2) = *&v188.f64[0];
      *(v189 + 3) = v186 + 25.0;
      v188.f64[1] = v186 + 25.0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_10079BB10, v190), vceqq_f64(v188, v191)))) & 1) == 0)
      {
        sub_1005EEA78();
      }
    }

    sub_10032E0A4(v10, type metadata accessor for AppEventDetailPageLayout);
    return sub_10032E0A4(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
  }

  return result;
}

double sub_100329E30(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v8 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v8)
    {
      [v8 invalidate];
      v8 = *(v6 + v7);
    }

    *(v6 + v7) = 0;
  }

  sub_1004B1A0C();
  v10 = v4 + *a2;
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 8);

    v11(a1);

    return sub_1000167E0(v11, v12);
  }

  return result;
}

uint64_t sub_100329F30(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_10077123C();
  swift_unknownObjectRelease();
  sub_100329E30(v8, a4);

  return sub_10000CD74(v8);
}

uint64_t sub_100329FA8(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_10076F13C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 bounds];
  LOBYTE(v45[0]) = 1;
  *&v27 = a1;
  *(&v27 + 1) = v10;
  *&v28 = v11;
  *(&v28 + 1) = v12;
  *&v29 = v13;
  BYTE8(v29) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v30 = _Q0;
  v31 = _Q0;
  v32 = 15;
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v19 = a1;
  *v9 = sub_10077068C();
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  LOBYTE(a1) = sub_10076F16C();
  result = (*(v6 + 8))(v9, v5);
  if (a1)
  {
    v35 = xmmword_10094FFF8;
    v36 = xmmword_100950008;
    v37 = xmmword_100950018;
    v33 = xmmword_10094FFD8;
    v34 = xmmword_10094FFE8;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v45[0] = xmmword_10094FFD8;
    v45[1] = xmmword_10094FFE8;
    v45[3] = xmmword_100950008;
    v45[4] = xmmword_100950018;
    v38 = qword_100950028;
    v44 = v32;
    v46 = qword_100950028;
    v45[2] = xmmword_10094FFF8;
    sub_10014F864(&v33, v25);
    xmmword_10094FFF8 = v41;
    xmmword_100950008 = v42;
    xmmword_100950018 = v43;
    qword_100950028 = v44;
    xmmword_10094FFD8 = v39;
    xmmword_10094FFE8 = v40;
    sub_10032E03C(v45);
    v21 = v3 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButtonActionBlock;
    v22 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButtonActionBlock);
    if (v22)
    {
      v23 = *(v21 + 8);
      sub_1001F9960(&v27, v25);
      v24 = sub_10001CE50(v22, v23);
      v22(v24);
      sub_1000167E0(v22, v23);
    }

    else
    {
      sub_1001F9960(&v27, v25);
    }

    v25[2] = xmmword_10094FFF8;
    v25[3] = xmmword_100950008;
    v25[4] = xmmword_100950018;
    v26 = qword_100950028;
    v25[0] = xmmword_10094FFD8;
    v25[1] = xmmword_10094FFE8;
    xmmword_10094FFD8 = v33;
    xmmword_10094FFE8 = v34;
    xmmword_10094FFF8 = v35;
    xmmword_100950008 = v36;
    xmmword_100950018 = v37;
    qword_100950028 = v38;
    sub_10032E03C(v25);
    return sub_1001F99BC(&v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10032A2D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[qword_1009602F8];
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6[4] = sub_10032E034;
      v6[5] = v3;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 1107296256;
      v6[2] = sub_1005F04D8;
      v6[3] = &unk_100891558;
      v4 = _Block_copy(v6);
      v5 = v2;

      [v5 enterFullScreenAnimated:1 completionHandler:v4];

      _Block_release(v4);
    }

    else
    {
    }
  }

  sub_10032A410(0, 0);
}

void sub_10032A410(char a1, char a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = sub_1007706FC();

  if ((v7 & 1) == 0)
  {
    if (a1)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoBackgroundColor];
      [v10 setBackgroundColor:v11];

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v8;
      v14 = sub_10032DF88;
      if (a2)
      {
LABEL_7:
        v15 = v14;
        v16 = objc_opt_self();
        v23[4] = v15;
        v23[5] = v13;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 1107296256;
        v23[2] = sub_10009AEDC;
        v23[3] = &unk_100891440;
        v17 = _Block_copy(v23);

        [v16 animateWithDuration:4 delay:v17 options:0 animations:0.3 completion:0.0];

        _Block_release(v17);
        return;
      }
    }

    else
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v18;
      *(v13 + 24) = v8;
      v14 = sub_10032E184;
      if (a2)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView);
      v21 = v19;

      [v20 setAlpha:v8];
      v22 = *&v21[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton];
      [v22 setAlpha:v8];
    }
  }
}

void sub_10032A86C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView);
    [v2 contentSize];
    v4 = v3;
    [v2 bounds];
    if (CGRectGetHeight(v7) < v4 || (v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView), [v2 contentSize], v6 = v5, objc_msgSend(v2, "bounds"), CGRectGetHeight(v8) < v6))
    {
      [v2 flashScrollIndicators];
      *(v0 + v1) = 1;
    }
  }
}

void sub_10032A938()
{
  v1 = sub_10076361C();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView];
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = [objc_opt_self() effectWithStyle:7];
  v9 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v8];
  v10 = *&v0[v6];
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *&v0[v6];
  }

  else
  {
    v11 = 0;
  }

  *&v0[v6] = v9;
  v12 = v9;

  if (v12)
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView] insertSubview:v12 belowSubview:*&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView]];
  }

  [v0 setNeedsLayout];

  v7 = *&v0[v6];
  if (v7)
  {
LABEL_8:
    [v7 setHidden:{0, v3}];
    v13 = *&v0[v6];
    if (v13)
    {
      v14 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaOverlayStyle;
      swift_beginAccess();
      (*(v2 + 16))(v5, &v0[v14], v1);
      v15 = v13;
      v16 = sub_1007635FC();
      (*(v2 + 8))(v5, v1);
      [v15 setOverrideUserInterfaceStyle:v16];
    }
  }
}

void sub_10032AB60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_1009602F8);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setShowsPlaybackControls:1];
    }
  }
}

void sub_10032ABF4(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView) setAlpha:a2];
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton] setAlpha:a2];
  }
}

void sub_10032AC88(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

uint64_t (*sub_10032AD1C(void *a1))()
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter;
  a1[2] = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_10032AD74;
}

double sub_10032AD74(void *a1, char a2)
{
  if (a2)
  {

    sub_10032AC88(v2);
  }

  else
  {
    v4 = a1[1];
    v3 = a1[2];
    v5 = *(v4 + v3);
    *(v4 + v3) = *a1;
    if (!v5)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v7 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;
  }

  return result;
}

void sub_10032AE1C(char a1, char a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton];
      if ([v4 isHidden])
      {
        [v4 setAlpha:0.0];
        [v4 setHidden:0];
      }
    }

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = a1 & 1;
    *(v7 + 24) = a1 & 1;
    v19 = sub_10032E01C;
    v20 = v7;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_10009AEDC;
    v18 = &unk_1008914B8;
    v9 = _Block_copy(&v15);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    v19 = sub_10032E028;
    v20 = v11;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_1000513F0;
    v18 = &unk_100891508;
    v12 = _Block_copy(&v15);

    [v5 animateWithDuration:v9 animations:v12 completion:0.3];
    _Block_release(v12);
    _Block_release(v9);
  }

  else
  {
    v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton];
    if (a1)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 1.0;
    }

    [*&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton] setHidden:a1 & 1];
    [v13 setAlpha:v14];

    [v2 setNeedsLayout];
  }
}

void sub_10032B0C0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton);

    v6 = 1.0;
    if (a2)
    {
      v6 = 0.0;
    }

    [v5 setAlpha:v6];
  }
}

void sub_10032B154(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton);

    [v6 setHidden:a3 & 1];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }
}

BOOL sub_10032B210(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer);
  if (v4)
  {
    sub_100016F40(0, &unk_10094F000, UIGestureRecognizer_ptr);
    v6 = a1;
    v7 = v4;
    v8 = sub_100770EEC();

    if (v8)
    {
      v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer);
      if (v9)
      {
        v10 = a2;
        v11 = v9;
        v12 = sub_100770EEC();

        if (v12)
        {
          return 0;
        }
      }
    }
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() == 0;
}

BOOL sub_10032B368(void *a1, id a2)
{
  v3 = v2;
  [a2 locationInView:v2];
  v7 = v6;
  v9 = v8;
  v10 = [v2 hitTest:0 withEvent:?];
  v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer];
  if (v11)
  {
    sub_100016F40(0, &unk_10094F000, UIGestureRecognizer_ptr);
    v12 = a1;
    v13 = v11;
    v14 = sub_100770EEC();

    if (v14)
    {
      [v3 bounds];
      v62.x = v7;
      v62.y = v9;
      if (CGRectContainsPoint(v65, v62))
      {
        if (v10)
        {
          sub_100016F40(0, &qword_1009441F0, UIView_ptr);
          v15 = v10;
          v3 = v3;
          v16 = sub_100770EEC();

          if (v16)
          {
            v17 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock;
            return *&v3[v17] != 0;
          }
        }

        return 0;
      }

      goto LABEL_27;
    }
  }

  v18 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer];
  if (!v18 || (sub_100016F40(0, &unk_10094F000, UIGestureRecognizer_ptr), v19 = a1, v20 = v18, v21 = sub_100770EEC(), v20, v19, (v21 & 1) == 0))
  {
    v41 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer];
    if (!v41 || (sub_100016F40(0, &unk_10094F000, UIGestureRecognizer_ptr), v42 = a1, v43 = v41, v44 = sub_100770EEC(), v43, v42, (v44 & 1) == 0))
    {

      return 1;
    }

    v45 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
    [a2 locationInView:v45];
    v47 = v46;
    v49 = v48;
    [v45 bounds];
    v64.x = v47;
    v64.y = v49;
    if (CGRectContainsPoint(v67, v64))
    {
      if (!v10 || (objc_opt_self(), v50 = swift_dynamicCastObjCClass(), v10, !v50))
      {
        v17 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock;
        return *&v3[v17] != 0;
      }

      return 0;
    }

    goto LABEL_27;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_27;
  }

  v23 = Strong;
  [Strong frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v66.origin.x = v25;
  v66.origin.y = v27;
  v66.size.width = v29;
  v66.size.height = v31;
  v63.x = v7;
  v63.y = v9;
  if (!CGRectContainsPoint(v66, v63))
  {
    goto LABEL_27;
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    goto LABEL_27;
  }

  v33 = v32;
  v34 = *&v32[qword_1009602F0];
  if (!v34)
  {

    goto LABEL_27;
  }

  v35 = v34;
  v36 = sub_1007605AC();

  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

  v37 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton];
  if (!v10)
  {
    if (!v37)
    {
      v60 = 0;
      return 0;
    }

    return 1;
  }

  if (v37)
  {
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v38 = v10;
    v39 = v37;
    v40 = sub_100770EEC();

    if (v40)
    {

      return 0;
    }

    v52 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton];
  }

  else
  {
    v52 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton];
    v53 = 0;
  }

  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v10 = v10;
  v54 = v52;
  v55 = sub_100770EEC();

  if (v55)
  {
LABEL_27:

    return 0;
  }

  v56 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
  v57 = v10;
  v58 = v56;
  v59 = sub_100770EEC();

  if (v59)
  {

    return 0;
  }

  objc_opt_self();
  v61 = swift_dynamicCastObjCClass() == 0;

  return v61;
}

id sub_10032B864(void *a1)
{
  v2 = v1;
  v26.receiver = v1;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_1007706FC() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_1007706FC();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    sub_1003260D0();
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v7 = 2;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = sub_10077071C() & 1;
LABEL_10:
  v8 = [v2 traitCollection];
  v9 = sub_10077071C();

  if (v7 == 2 || ((v9 ^ v7) & 1) != 0)
  {
    goto LABEL_18;
  }

  v10 = [v2 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_18;
  }

  v12 = [a1 preferredContentSizeCategory];
  v13 = sub_10076FF9C();
  v15 = v14;
  if (v13 != sub_10076FF9C() || v15 != v16)
  {
    v17 = sub_10077167C();

    if (v17)
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_1003267F0();
    goto LABEL_19;
  }

LABEL_19:
  v18 = [v2 traitCollection];
  v19 = [v18 userInterfaceStyle];

  if (!a1 || v19 != [a1 userInterfaceStyle])
  {
    sub_100326E58();
  }

  v20 = [v2 traitCollection];
  v21 = [v20 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v21 != result))
  {
    v23 = [v2 traitCollection];
    v24 = sub_10077070C();

    if (v24)
    {
      v25 = -*&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_defaultPageMargin];
    }

    else
    {
      v25 = 0.0;
    }

    return [*&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView] setScrollIndicatorInsets:{0.0, v25}];
  }

  return result;
}

uint64_t type metadata accessor for AppEventDetailPageView(uint64_t a1)
{
  result = qword_100952AA8;
  if (!qword_100952AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10032BF68(uint64_t a1)
{
  result = sub_10076361C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10032C09C(void *a1)
{
  sub_10032DD5C();
  swift_unknownObjectWeakAssign();
  sub_100328388();
}

uint64_t (*sub_10032C0EC(uint64_t **a1))()
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
  v2[4] = sub_100328A74(v2);
  return sub_100019A4C;
}

uint64_t (*sub_10032C180(void *a1))()
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
  v2[4] = sub_10032AD1C(v2);
  return sub_10001D41C;
}

id sub_10032C1F0(char a1, uint64_t a2)
{
  v3 = a2;
  *(*&v2[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton] + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_isActive) = a1;
  sub_10050F6AC();
  sub_10050F7B0(v3);

  return [v2 setNeedsLayout];
}

CGFloat sub_10032C2A0()
{
  v1 = *v0;
  [*v0 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

uint64_t sub_10032C2FC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10032C900(&qword_100952AF8, type metadata accessor for AppEventDetailPageView, &unk_10079BC9C);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10032C370(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10032C900(&qword_100952AF8, type metadata accessor for AppEventDetailPageView, &unk_10079BC9C);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10032C3FC(uint64_t *a1))()
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
  sub_10032C900(&qword_100952AF8, type metadata accessor for AppEventDetailPageView, &unk_10079BC9C);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10032C4B8(void *a1)
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
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView);
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v5 = v4;
  v6 = sub_100770EEC();

  return v6 & 1;
}

uint64_t sub_10032C550(uint64_t a1, double a2, double a3)
{
  v6 = [v3 subviews];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v7 = sub_1007701BC();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_10077149C();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (([v10 isHidden] & 1) != 0 || !objc_msgSend(v11, "isUserInteractionEnabled"))
      {
      }

      else
      {
        [v17 convertPoint:v11 toCoordinateSpace:{a2, a3}];
        v13 = [v11 pointInside:a1 withEvent:?];

        if (v13)
        {
          v14 = 1;
          goto LABEL_19;
        }
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v14 = 0;
LABEL_19:

  return v14;
}

uint64_t sub_10032C900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10032C990(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView];
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
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView];
    if (Strong)
    {
      [v8 insertSubview:v6 aboveSubview:Strong];
    }

    else
    {
      [v8 insertSubview:v6 aboveSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView]];
    }
  }

  return [v1 setNeedsLayout];
}

id sub_10032CA74()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v2 - 8);
  v102 = &v95[-v3];
  v4 = sub_10076771C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v95[-v9];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel] = 0;
  v11 = &v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButtonActionBlock];
  *v11 = 0;
  v11[1] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer] = 0;
  v12 = &v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock];
  *v12 = 0;
  v12[1] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer] = 0;
  v13 = &v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButtonActionBlock];
  *v13 = 0;
  v13[1] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer] = 0;
  v14 = &v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkViewSize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mainArtwork] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupArtwork] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkLoader] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoBackgroundColor] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_haveFlashedScrollIndicators] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_isCollapsing] = 0;
  v16 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaOverlayStyle;
  v17 = enum case for MediaOverlayStyle.matchSystem(_:);
  v18 = sub_10076361C();
  (*(*(v18 - 8) + 104))(&v1[v16], v17, v18);
  v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_includeBorderInDarkMode] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_defaultPageMargin] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter] = 0;
  v19 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView] = v19;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shadowView] = [objc_allocWithZone(sub_10075F99C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10076394C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardContentView] = v20;
  v21 = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView] = v21;
  v22 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView] = v22;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView] = [objc_allocWithZone(type metadata accessor for OverlayContentContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView] = v23;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = sub_10076D3DC();
  v103 = *(v24 - 8);
  v25 = v103 + 56;
  v26 = *(v103 + 56);
  v26(v10, 1, 1, v24);
  v27 = *(v5 + 104);
  v100 = (v5 + 104);
  v106 = v27;
  v28 = enum case for DirectionalTextAlignment.none(_:);
  v96 = enum case for DirectionalTextAlignment.none(_:);
  v97 = v4;
  (v27)(v7);
  v29 = sub_1007626BC();
  v30 = objc_allocWithZone(v29);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel] = sub_1007626AC();
  v26(v10, 1, 1, v24);
  v106(v7, v28, v4);
  v31 = objc_allocWithZone(v29);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_titleLabel] = sub_1007626AC();
  v101 = v24;
  v104 = v26;
  v105 = v25;
  v26(v10, 1, 1, v24);
  v106(v7, v96, v97);
  v32 = objc_allocWithZone(v29);
  v100 = v10;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_detailLabel] = sub_1007626AC();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton] = [objc_allocWithZone(type metadata accessor for NotifyMeButton()) init];
  v33 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView] = v33;
  type metadata accessor for SmallLockupView(0);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_borderView] = v34;
  v35 = sub_1002B3CD0();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButton] = v35;
  v107.receiver = v1;
  v107.super_class = ObjectType;
  v36 = v35;
  v37 = objc_msgSendSuper2(&v107, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v41 = v37;
  [v41 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v41 setClipsToBounds:0];
  v42 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView;
  [*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardScrollView) setClipsToBounds:0];
  [*(v41 + v42) setContentInsetAdjustmentBehavior:2];
  [v41 addSubview:*(v41 + v42)];
  v43 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shadowView;
  v44 = qword_10093F8D0;
  v45 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shadowView);
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_10076BCFC();
  v47 = sub_10000A61C(v46, qword_10099D510);
  v48 = *(v46 - 8);
  v49 = v102;
  (*(v48 + 16))(v102, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  sub_10075F97C();

  v50 = *(v41 + v43);
  sub_10075F95C();

  [*(v41 + v42) addSubview:*(v41 + v43)];
  v102 = v42;
  v51 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardContentView;
  [*(v41 + v42) addSubview:*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_cardContentView)];
  v52 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView;
  [*(v41 + v51) addSubview:*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentContainerView)];
  v53 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView;
  [*(v41 + v52) addSubview:*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView)];
  v54 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView;
  [*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView) setContentMode:2];
  [*(v41 + v54) setClipsToBounds:1];
  [*(v41 + v54) setAccessibilityIgnoresInvertColors:1];
  [*(v41 + v53) addSubview:*(v41 + v54)];
  v55 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView;
  [*(v41 + v52) addSubview:*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView)];
  v56 = *(v41 + v51);
  v106 = v36;
  [v56 addSubview:v36];
  v57 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView;
  v58 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView);
  LOBYTE(v51) = v58[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style];
  v58[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_style] = 1;
  v59 = v58;
  sub_1004B413C(v51);

  *(*(v41 + v57) + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_100891398;
  swift_unknownObjectWeakAssign();
  [*(v41 + v55) addSubview:*(v41 + v57)];
  v60 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel;
  v61 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_kindLabel);
  v62 = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v63 = v61;
  v64 = sub_100770CFC();
  v65 = [v64 colorWithAlphaComponent:0.7];

  [v63 setTextColor:v65];
  [*(v41 + v55) addSubview:*(v41 + v60)];
  v66 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_titleLabel);
  v67 = sub_100770CFC();
  [v66 setTextColor:v67];

  v68 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButton);
  [v68 addTarget:v41 action:"notifyMeButtonTapped:" forControlEvents:64];

  v69 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView;
  v70 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_separatorView);
  ObjectType = v62;
  v71 = sub_100770CFC();
  v72 = [v71 colorWithAlphaComponent:0.5];

  [v70 setBackgroundColor:v72];
  [*(v41 + v52) addSubview:*(v41 + v69)];
  v73 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView;
  v74 = qword_100940AE0;
  v75 = *(*(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  if (v74 != -1)
  {
    swift_once();
  }

  v76 = v101;
  v77 = sub_10000A61C(v101, qword_1009A0EB0);
  v78 = *(v103 + 16);
  v79 = v100;
  v78(v100, v77, v76);
  v80 = v104;
  v104(v79, 0, 1, v76);
  sub_1007625DC();

  v81 = qword_100940AE8;
  v82 = *(*(v41 + v73) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  if (v81 != -1)
  {
    swift_once();
  }

  v83 = sub_10000A61C(v76, qword_1009A0EC8);
  v78(v79, v83, v76);
  v80(v79, 0, 1, v76);
  sub_1007625DC();

  v84 = *(*(v41 + v73) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v85 = sub_100770CFC();
  v86 = [v85 colorWithAlphaComponent:0.7];

  [v84 setTextColor:v86];
  v87 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_borderView;
  v88 = *(v41 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_borderView);
  v89 = objc_opt_self();
  v90 = v88;
  v91 = [v89 whiteColor];
  v92 = [v91 colorWithAlphaComponent:0.2];

  sub_1007638DC();
  v93 = *(v41 + v87);
  sub_1007638EC();

  [*(v41 + v87) setUserInteractionEnabled:0];
  [*(v41 + v87) setHidden:1];
  [*&v102[v41] addSubview:*(v41 + v87)];
  sub_1003260D0();
  sub_1003267F0();
  sub_100326E58();

  return v41;
}

void sub_10032D864()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_gradientBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_contentBackgroundBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_requirementsLabel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_closeButtonActionBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureRecognizer) = 0;
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_dismissTapGestureActionBlock);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer) = 0;
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButtonActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureRecognizer) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupTapGestureActionBlock);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkViewSize;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mainArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_haveFlashedScrollIndicators) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_isCollapsing) = 0;
  v6 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaOverlayStyle;
  v7 = enum case for MediaOverlayStyle.matchSystem(_:);
  v8 = sub_10076361C();
  (*(*(v8 - 8) + 104))(v0 + v6, v7, v8);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_includeBorderInDarkMode) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_defaultPageMargin) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_notifyMeButtonPresenter) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_10032DA50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10077111C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButtonActionBlock];
  v12 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButtonActionBlock];
  if (!v12)
  {
    v13 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton;
    v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v3[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v3[v13] = 0;

    [v3 setNeedsLayout];
    v12 = *v11;
  }

  v16 = v11[1];
  *v11 = a1;
  v11[1] = a2;
  sub_10001CE50(a1, a2);
  sub_1000167E0(v12, v16);
  if (*v11)
  {
    v17 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton;
    if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_shareButton])
    {
      sub_100016F40(0, &qword_100947240, UIButton_ptr);
      if (qword_10093FF40 != -1)
      {
        swift_once();
      }

      v18 = sub_10000A61C(v6, qword_100952950);
      swift_beginAccess();
      (*(v7 + 16))(v10, v18, v6);
      v19 = sub_10077112C();
      v20 = *&v3[v17];
      if (v20)
      {
        [v20 removeFromSuperview];
        v21 = *&v3[v17];
      }

      else
      {
        v21 = 0;
      }

      *&v3[v17] = v19;
      v22 = v19;

      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v23 = sub_100770CFC();
      v24 = [v23 colorWithAlphaComponent:0.7];

      [v22 setTintColor:v24];
      [v22 setHitTestInsets:{-10.0, -10.0, -10.0, -10.0}];
      [*&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_overlayContentContainerView] addSubview:v22];
      sub_100326E58();

      [v3 setNeedsLayout];
      v25 = *&v3[v17];
      if (v25)
      {
        [v25 addTarget:v3 action:"didTapShareButton:" forControlEvents:64];
      }
    }
  }
}

void sub_10032DD5C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10032C900(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v2 = [Strong superview];
    if (v2)
    {
      v3 = v2;
      v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaContainerView];
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v5 = v4;
      v6 = sub_100770EEC();

      if (v6)
      {
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v8 = v7;
          [v7 removeFromSuperview];
        }

        [*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_artworkView] setHidden:0];
        v9 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer;
        if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_videoTapGestureRecognizer])
        {
          [v5 removeGestureRecognizer:?];
          v10 = *&v1[v9];
        }

        else
        {
          v10 = 0;
        }

        *&v1[v9] = 0;

        v11 = OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView;
        v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_mediaReplicationView];
        if (v12)
        {
          [v12 removeFromSuperview];
          v13 = *&v1[v11];
        }

        else
        {
          v13 = 0;
        }

        *&v1[v11] = 0;

        [v1 setNeedsLayout];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10032DF50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10032DF94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10032DFAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10032DFE4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10032E03C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009505F0, &qword_1007A2110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10032E0A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10032E104()
{
  result = qword_100952B10;
  if (!qword_100952B10)
  {
    sub_100016F40(255, &qword_10094A280, UIImageView_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952B10);
  }

  return result;
}

uint64_t sub_10032E194()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10032E1F0(void *a1)
{
  [a1 _systemContentInset];
  v4 = v3;
  [a1 contentOffset];
  v6 = v5;
  [a1 contentInset];
  return (*(v1 + 16))(v4 + v6 + v7 > *(v1 + 32));
}

id sub_10032E26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = sub_10032E2D0();

  return v5;
}

id sub_10032E2D0()
{
  v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] = 0;
  v1 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths;
  if (!*(*&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths] + 16))
  {
    return 0;
  }

  [v0 bounds];
  if (qword_100940728 != -1)
  {
    swift_once();
  }

  v2 = sub_100765C9C();
  sub_10000A61C(v2, qword_1009A04D8);
  v3 = [v0 traitCollection];
  sub_100765BDC();
  v5 = v4;

  v6 = *&v0[v1];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = objc_opt_self();

    v11 = 0.0;
    v12 = 32;
    do
    {
      v13 = *(v6 + v12);
      v14 = [v8 absoluteDimension:{v13, v27}];
      v15 = [v8 absoluteDimension:v5];
      v16 = [v9 sizeWithWidthDimension:v14 heightDimension:v15];

      v17 = [v10 itemWithLayoutSize:v16];
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10077021C();
      }

      v11 = v11 + v13;
      sub_10077025C();

      v12 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = 0.0;
  }

  v19 = objc_opt_self();
  v20 = [v19 absoluteDimension:v11];
  v21 = [v19 absoluteDimension:v5];
  v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

  v23 = objc_opt_self();
  sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
  isa = sub_1007701AC().super.isa;

  v25 = [v23 horizontalGroupWithLayoutSize:v22 subitems:isa];

  v18 = [objc_opt_self() sectionWithGroup:v25];
  return v18;
}

void sub_10032E6B0()
{
  v52.receiver = v0;
  v52.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon])
  {
    swift_beginAccess();

    v2 = sub_10032EB68(v1);

    v3 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths;
    v4 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths] + 16);
    if (v2 >> 62)
    {
      if (v4 != sub_10077158C())
      {
        goto LABEL_31;
      }
    }

    else if (v4 != *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_pageTraits];
    if (!v5)
    {
      goto LABEL_31;
    }

    swift_unknownObjectRetain();
    [v0 bounds];
    CGRectGetMinX(v53);
    [v0 bounds];
    CGRectGetWidth(v54);
    v6 = [v0 traitCollection];
    [v6 displayScale];

    v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator];
    if (v7)
    {
      swift_unknownObjectRetain();
      v8 = v7;
      [v0 bounds];
      sub_100770A4C();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      swift_unknownObjectRelease();
      [v8 setFrame:{v10, v12, v14, v16}];
    }

    v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator];
    if (v17)
    {
      v18 = v17;
      [v0 bounds];
      CGRectGetMaxY(v55);
      swift_unknownObjectRetain();
      [v0 bounds];
      sub_100770A4C();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      swift_unknownObjectRelease();
      [v18 setFrame:{v20, v22, v24, v26}];
    }

    [v5 pageMarginInsets];
    v28 = v27;
    [v5 pageMarginInsets];
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v30 = v28 + v29;
      if (!v4)
      {
        goto LABEL_19;
      }

      v31 = *&v0[v3];
      if (v4 <= *(v31 + 16))
      {
        if (v4 >= 4)
        {
          v32 = v4 & 0x7FFFFFFFFFFFFFFCLL;
          v33 = (v31 + 48);
          v34 = v4 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v30 = v30 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
            v33 += 4;
            v34 -= 4;
          }

          while (v34);
          if (v4 == v32)
          {
LABEL_19:
            [v0 bounds];
            Width = CGRectGetWidth(v56);
            v39 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView;
            v40 = *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView];
            if (v40)
            {
              v41 = (Width - v30) * 0.5;
              if (v41 < 0.0)
              {
                v42 = 0.0;
              }

              else
              {
                v42 = v41;
              }

              v43 = v40;
              [v0 bounds];
              MinY = CGRectGetMinY(v57);
              [v0 bounds];
              v45 = CGRectGetWidth(v58);
              if (v45 >= v30)
              {
                v46 = v30;
              }

              else
              {
                v46 = v45;
              }

              [v0 bounds];
              [v43 setFrame:{v42, MinY, v46, CGRectGetHeight(v59)}];

              v47 = *&v0[v39];
              if (v47)
              {
                v48 = v47;
                [v0 bounds];
                [v48 setScrollEnabled:CGRectGetWidth(v60) < v30];

                if (v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] == 1)
                {
                  v49 = *&v0[v39];
                  if (v49)
                  {
                    v50 = v49;

                    v51 = [v50 collectionViewLayout];

                    [v51 invalidateLayout];
                    swift_unknownObjectRelease();
LABEL_32:

                    return;
                  }

LABEL_40:
                  __break(1u);
                  return;
                }

                swift_unknownObjectRelease();
LABEL_31:

                goto LABEL_32;
              }

LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        else
        {
          v32 = 0;
        }

        v35 = v4 - v32;
        v36 = (v31 + 8 * v32 + 32);
        do
        {
          v37 = *v36++;
          v30 = v30 + v37;
          --v35;
        }

        while (v35);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_38;
  }
}

void *sub_10032EB68(uint64_t a1)
{
  v25 = a1;
  v24 = sub_10076C45C();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_1007632BC();
  v8 = v7;
  v26 = _swiftEmptyArrayStorage;
  if (!(v7 >> 62))
  {
    v23 = v7 & 0xFFFFFFFFFFFFFF8;
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v23 = v8 & 0xFFFFFFFFFFFFFF8;
  v9 = sub_10077158C();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_3:
  v10 = 0;
  v22 = v8 & 0xC000000000000001;
  v11 = (v1 + 8);
  v12 = _swiftEmptyArrayStorage;
  do
  {
    v21 = v12;
    v13 = v10;
    while (1)
    {
      if (v22)
      {
        v1 = sub_10077149C();
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v13 >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        v1 = *(v8 + 8 * v13 + 32);

        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v14 = v9;
      sub_10076B48C();
      v15 = sub_10076C44C();
      v16 = *v11;
      (*v11)(v6, v24);
      if ((v15 & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_10076B48C();
      if (*(v25 + 16))
      {
        v17 = sub_1006108B4(v3);
        if (v18)
        {
          break;
        }
      }

      v16(v3, v24);
      ++v13;
      v9 = v14;
      if (v10 == v14)
      {
        v12 = v21;
        goto LABEL_25;
      }
    }

    v19 = *(*(v25 + 56) + 8 * v17);

    v16(v3, v24);
    v1 = v19;
LABEL_16:
    sub_10077019C();
    v9 = v14;
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
      v9 = v14;
    }

    sub_10077025C();
    v12 = v26;
  }

  while (v10 != v9);
LABEL_25:

  return v12;
}

uint64_t sub_10032EF38(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_10032F1F4(void (*a1)(char *, uint64_t), void (*a2)(char *, uint64_t), void (*a3)(char *, uint64_t), void *a4)
{
  v5 = v4;
  v88 = a4;
  ObjectType = swift_getObjectType();
  v81 = sub_1007632CC();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10076C45C();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v78 - v12;
  v82 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_isApplyingModel;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_isApplyingModel) = 1;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_artworkLoader) = a2;

  *(v4 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_objectGraph) = a3;
  v85 = a2;

  *(v4 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon) = a1;
  v86 = a3;

  v89 = a1;
  v14 = sub_1007632BC();
  v15 = v14;
  v94[0] = _swiftEmptyArrayStorage;
  if (v14 >> 62)
  {
LABEL_16:
    v16 = sub_10077158C();
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_3:
      v91 = v5;
      v17 = 0;
      v5 = (v90 + 1);
      v92 = (v90 + 1);
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          sub_10077149C();
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v20 = v94[0];
            v5 = v91;
            goto LABEL_18;
          }
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_13;
          }
        }

        sub_10076B48C();
        v19 = sub_10076C44C();
        (*v5)(v13, v93);
        if (v19)
        {
          sub_1007714CC();
          sub_1007714FC();
          v5 = v92;
          sub_10077150C();
          sub_1007714DC();
        }

        else
        {
        }

        ++v17;
        if (v18 == v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_18:

  v21 = v87;
  if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
  {
    v22 = sub_10077158C();
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v22 = *(v20 + 16);
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
    goto LABEL_64;
  }

  v23 = 0;
  v91 = v20 & 0xC000000000000001;
  v92 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  v24 = v89;
  ++v90;
  v83 = v22;
  v84 = v20;
  do
  {
    if (v91)
    {
      sub_10077149C();
    }

    else
    {
    }

    sub_10076B48C();
    v30 = v92;
    swift_beginAccess();
    if (*(v5 + v30))[2] && (sub_1006108B4(v21), (v31))
    {
      swift_endAccess();
      v32 = *v90;

      v32(v21, v93);
    }

    else
    {
      swift_endAccess();
      (*v90)(v21, v93);
      v25 = v86;
      Badge.enrich(objectGraph:)(v86);
      v26 = swift_allocObject();
      v26[2] = v5;
      v26[3] = v24;
      v26[4] = v85;
      v26[5] = v25;
      v26[6] = v88;
      v27 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);

      v21 = v87;

      v28 = v5;
      swift_unknownObjectRetain();
      v29 = sub_10077068C();
      v94[3] = v27;
      v94[4] = &protocol witness table for OS_dispatch_queue;
      v94[0] = v29;
      sub_10076FC6C();
      v22 = v83;

      sub_10000CD74(v94);
    }

    ++v23;
  }

  while (v22 != v23);
LABEL_32:

  v33 = v88;
  v34 = swift_getObjectType();
  v35 = [v33 snapshotPageTraitEnvironment];
  *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_pageTraits) = v35;
  swift_unknownObjectRelease();
  if (sub_10076328C() & 1) != 0 && (sub_1007632AC())
  {
    v36 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator;
    v37 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator);
    if (!v37)
    {
      sub_100301570([objc_allocWithZone(UIView) init], &OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator);
      v37 = *(v5 + v36);
      if (!v37)
      {
        goto LABEL_42;
      }
    }

    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v38 = v37;
    v39 = sub_100770CDC();
    [v38 setBackgroundColor:v39];
  }

  else
  {
    v40 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator;
    v41 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator);
    if (v41)
    {
      [v41 removeFromSuperview];
      v39 = *(v5 + v40);
    }

    else
    {
      v39 = 0;
    }

    *(v5 + v40) = 0;
  }

LABEL_42:
  if ((sub_10076329C() & 1) == 0 && *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) != 1 || (sub_1007632AC() & 1) == 0)
  {
    v46 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator;
    v47 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator);
    if (v47)
    {
      [v47 removeFromSuperview];
      v45 = *(v5 + v46);
    }

    else
    {
      v45 = 0;
    }

    *(v5 + v46) = 0;
    goto LABEL_52;
  }

  v42 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator;
  v43 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator);
  if (v43 || (sub_100301570([objc_allocWithZone(UIView) init], &OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator), (v43 = *(v5 + v42)) != 0))
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v44 = v43;
    v45 = sub_100770CDC();
    [v44 setBackgroundColor:v45];

LABEL_52:
  }

  v48 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView;
  v49 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView);
  if (!v49)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v50 = v49;
  v51 = v88;
  [v88 pageMarginInsets];
  v53 = v52;
  [v51 pageMarginInsets];
  v55 = v54;
  [v51 pageMarginInsets];
  v57 = v56;
  [v51 pageMarginInsets];
  [v50 setContentInset:{v53, v55, v57}];

  swift_beginAccess();

  v59 = sub_10032EB68(v58);

  v60 = v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken;
  if ((*(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken + 8) & 1) != 0 || (v61 = *v60, v61 != sub_100330A24(v59)))
  {
    *v60 = sub_100330A24(v59);
    v60[8] = 0;
    [v5 bounds];
    v63 = *(v5 + v48);
    if (!v63)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v64 = v62;
    [v63 contentInset];
    v66 = *(v5 + v48);
    if (!v66)
    {
LABEL_67:
      __break(1u);
      return;
    }

    v67 = v64 - v65;
    [v66 contentInset];
    v69 = v67 - v68;
    [v5 bounds];
    v71 = v70;
    v72 = v78;
    sub_1007632DC();
    v73.n128_f64[0] = v69;
    sub_1003302CC(v59, v72, v88, v73, v71, ObjectType, v34);
    v75 = v74;
    (*(v79 + 8))(v72, v81);
    *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths) = v75;

    *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate) = 1;
  }

  v76 = *(v5 + v48);
  if (!v76)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v77 = v76;

  [v77 reloadData];

  [v5 setNeedsLayout];
  *(v5 + v82) = 0;
  if (*(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel) == 1)
  {
    *(v5 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel) = 0;
    sub_10032F1F4(v89, v85, v86, v88);
  }
}

double sub_10032FBEC(void *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t), uint64_t (*a4)(char *, uint64_t), uint64_t (*a5)(char *, uint64_t), void *a6)
{
  v12 = sub_10076C45C();
  *&result = __chkstk_darwin(v12 - 8).n128_u64[0];
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {

    sub_10076B48C();
    swift_beginAccess();

    sub_100098764(v16, v15);
    swift_endAccess();
    if (*(a2 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_isApplyingModel) == 1)
    {

      *(a2 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel) = 1;
    }

    else
    {
      sub_10032F1F4(a3, a4, a5, a6);
    }
  }

  return result;
}

double sub_10032FD28(uint64_t a1)
{
  if (qword_1009412D8 != -1)
  {
    swift_once();
  }

  v1 = sub_10076FD4C();
  sub_10000A61C(v1, qword_1009A25D0);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v4[3] = &type metadata for String;
  v4[0] = sub_1007716EC();
  v4[1] = v2;
  sub_10076F30C();
  sub_10000CFBC(v4, &unk_1009434C0, &qword_100783F60);
  sub_10076FBEC();

  return result;
}

id sub_10032FECC()
{
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon] = 0;

  v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator] = 0;
  v1 = sub_1000FDD24(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  swift_beginAccess();
  *&v0[v2] = v1;

  v3 = &v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v3 = 0;
  v3[8] = 1;
  result = *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView];
  if (result)
  {
    [result reloadData];
    return [v0 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for InformationRibbonCollectionViewCell(uint64_t a1)
{
  result = qword_100952C50;
  if (!qword_100952C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003300C8(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100330194(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (qword_100940728 != -1)
  {
    swift_once();
  }

  v10 = sub_100765C9C();
  sub_10000A61C(v10, qword_1009A04D8);
  v11 = [a8 traitCollection];
  sub_100765BDC();

  return a1;
}

double sub_10033024C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_100330914(a1);
  if (v10)
  {
    sub_10032F1F4(v10, a3, a4, a7);
  }

  return result;
}

void sub_1003302CC(unint64_t a1, char *a2, void *a3, __n128 a4, double a5, uint64_t a6, uint64_t a7)
{
  v10 = a4.n128_f64[0];
  v13 = sub_1007632CC();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v19)
  {
    return;
  }

  v20 = [a3 traitCollection];
  v21 = sub_10077071C();

  if (v21)
  {
    if (!v18)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v23 = sub_10077158C();
    if ((v23 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v23)
      {
        v25 = sub_10077023C();
        *(v25 + 16) = v23;
        memset_pattern16((v25 + 32), &unk_10078C990, 8 * v23);
      }

      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v18)
  {
    v24 = sub_10077158C();
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v22 = floor(v10 / v24);
  if (*&v22 <= 136.0)
  {
    if (v24 < 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v24)
    {
      a2 = _swiftEmptyArrayStorage;
      if (v10 > 0.0)
      {
        v13 = _swiftEmptyArrayStorage[2];
        if (!v13)
        {
LABEL_62:

          return;
        }

        goto LABEL_45;
      }

      return;
    }

    v30 = type metadata accessor for BadgeView(0);
    v31 = 0;
    v14 = a1 & 0xC000000000000001;
    a2 = _swiftEmptyArrayStorage;
    v32 = 0.0;
    while (1)
    {
      if (v14)
      {
        v33 = sub_10077149C();
      }

      else
      {
        v33 = *(a1 + 8 * v31 + 32);
      }

      v34 = sub_1004FE3F8(v33, v31, 0, v24, a3, v10, a5, v30, a7);

      if (v34 >= 105.0)
      {
        if (v34 >= 136.0)
        {
          v35 = 136.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_28;
          }

LABEL_34:
          a2 = sub_10049D1CC(0, *(a2 + 2) + 1, 1, a2);
          goto LABEL_28;
        }

        v35 = floor(v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v35 = 105.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v18 = *(a2 + 2);
      v36 = *(a2 + 3);
      v13 = v18 + 1;
      if (v18 >= v36 >> 1)
      {
        a2 = sub_10049D1CC((v36 > 1), v18 + 1, 1, a2);
      }

      ++v31;
      *(a2 + 2) = v13;
      *&a2[8 * v18 + 32] = v35;
      v32 = v32 + v35;
      if (v24 == v31)
      {
        v10 = v10 - v32;
        if (v10 <= 0.0)
        {
          return;
        }

LABEL_45:
        a3 = a2 + 32;
        v55 = _swiftEmptyArrayStorage;
        sub_1004BBAA4(0, v13, 0);
        v17 = 0;
        v38 = v55;
        a7 = v55[2];
        do
        {
          v39 = *(a3 + v17);
          v55 = v38;
          v40 = v38[3];
          if (&v17[a7] >= v40 >> 1)
          {
            sub_1004BBAA4((v40 > 1), &v17[a7 + 1], 1);
            v38 = v55;
          }

          v41 = v17 + 1;
          v38[2] = &v17[a7 + 1];
          *&v38[a7 + 4 + v17] = 136.0 - v39;
          v17 = v41;
        }

        while (v13 != v41);
        v42 = &v41[a7];
        if (&v41[a7 - 1] <= 2)
        {
          v43 = 0;
          a5 = 0.0;
          goto LABEL_54;
        }

        v43 = v42 & 0x7FFFFFFFFFFFFFFCLL;
        v44 = (v38 + 6);
        a5 = 0.0;
        v45 = v42 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          a5 = a5 + *(v44 - 2) + *(v44 - 1) + *v44 + v44[1];
          v44 += 4;
          v45 -= 4;
        }

        while (v45);
        if (v42 != v43)
        {
LABEL_54:
          v46 = &v41[a7 - v43];
          v47 = &v38[v43 + 4];
          do
          {
            v48 = *v47++;
            a5 = a5 + v48;
            --v46;
          }

          while (v46);
        }

        if (v13 <= v42)
        {
          a1 = 4;
          while (1)
          {
            v49 = *&v38[a1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_1004BDB10(a2);
            }

            if (a1 - 4 >= *(a2 + 2))
            {
              break;
            }

            *&a2[8 * a1] = floor(v10 * (v49 / a5)) + *&a2[8 * a1];
            ++a1;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }

          __break(1u);
LABEL_72:
          v19 = sub_10077158C();
          goto LABEL_3;
        }

LABEL_77:
        __break(1u);
        return;
      }
    }
  }

  v54 = v22;
  (*(v14 + 16))(v17, a2, v13);
  if ((*(v14 + 88))(v17, v13) == enum case for InformationRibbon.Alignment.justified(_:))
  {
    if (v24 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v24)
    {
      return;
    }

    v26 = sub_10077023C();
    *(v26 + 16) = v24;
    v27 = (v26 + 32);
    if (v24 < 4)
    {
      v28 = 0;
      v29 = v54;
LABEL_67:
      v53 = v24 - v28;
      do
      {
        *v27++ = v29;
        --v53;
      }

      while (v53);
      return;
    }

    v28 = v24 & 0x7FFFFFFFFFFFFFFCLL;
    v27 += v24 & 0x7FFFFFFFFFFFFFFCLL;
    v29 = v54;
    v50 = vdupq_lane_s64(v54, 0);
    v51 = (v26 + 48);
    v52 = v24 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 4;
    }

    while (v52);
    if (v24 != v28)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v24 < 0)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v24)
    {
      v37 = sub_10077023C();
      *(v37 + 16) = v24;
      memset_pattern16((v37 + 32), &unk_10078C980, 8 * v24);
    }

    (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_100330914(uint64_t a1)
{
  v1 = *(sub_10076B75C() + 16);

  if (v1)
  {
    result = sub_10076B75C();
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    sub_10000A570(result + 32, v4);

    sub_10000A5D4(&qword_1009575A0, &unk_100784980);
    sub_1007632EC();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  return 0;
}

uint64_t sub_1003309BC()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100330A24(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }

LABEL_7:

      v5._countAndFlagsBits = sub_10076B4BC();
      if (v5._object)
      {
        object = v5._object;
      }

      else
      {
        v5._countAndFlagsBits = 0;
        object = 0xE000000000000000;
      }

      v5._object = object;
      sub_1007700CC(v5);

      v7._countAndFlagsBits = sub_10076B4DC();
      if (v7._object)
      {
        v8 = v7._object;
      }

      else
      {
        v7._countAndFlagsBits = 0;
        v8 = 0xE000000000000000;
      }

      v7._object = v8;
      sub_1007700CC(v7);

      ++v3;
      if (v4 == i)
      {
        goto LABEL_20;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v4 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v9 = sub_10077012C();

  return v9;
}

void sub_100330BA4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_itemLayoutContext;
  v3 = sub_10076341C();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon] = 0;
  v4 = &v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v4 = 0;
  v4[8] = 1;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_artworkLoader] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_objectGraph] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_pageTraits] = 0;
  v5 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  *&v0[v5] = sub_1000FDD24(_swiftEmptyArrayStorage);
  v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel] = 0;
  v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_isApplyingModel] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths] = _swiftEmptyArrayStorage;
  v28.receiver = v0;
  v28.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v27[4] = sub_100331A24;
  v27[5] = v7;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  v27[2] = sub_1002BAFEC;
  v27[3] = &unk_100891600;
  v9 = _Block_copy(v27);
  v10 = v6;

  v11 = [v8 initWithSectionProvider:v9];
  _Block_release(v9);

  v12 = [objc_allocWithZone(UICollectionView) initWithFrame:v11 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView;
  v14 = *&v10[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView];
  *&v10[OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView] = v12;
  v15 = v12;

  if (!v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v15 setShowsHorizontalScrollIndicator:0];

  v16 = *&v10[v13];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v16 setAlwaysBounceVertical:0];
  v17 = *&v10[v13];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for BadgeCollectionViewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = v17;
  v20 = sub_10076FF6C();
  [v19 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v20];

  v21 = *&v10[v13];
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  v25 = *&v10[v13];
  if (!v25)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v25 setDataSource:v10];
  v26 = *&v10[v13];
  if (!v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v26 setDelegate:v10];
  if (*&v10[v13])
  {
    [v10 addSubview:?];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_100330F94()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_badgeCollectionView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon) = 0;
  v3 = v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_topSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_bottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_pageTraits) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  *(v0 + v4) = sub_1000FDD24(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_isApplyingModel) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_1003310F4(void *a1, uint64_t a2)
{
  v5 = sub_10076C45C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon))
  {
    v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_objectGraph);
    if (v13)
    {
      v43 = v10;
      v44 = a2;
      v14 = OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
      swift_beginAccess();
      v42 = v2;

      v16 = sub_10032EB68(v15);

      type metadata accessor for BadgeCollectionViewCell(0);
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v41 = v17;
        v18 = a1;
        v19 = sub_10075E09C();
        if (v16 >> 62)
        {
          v38 = v19;
          v20 = sub_10077158C();
          if (v38 < v20)
          {
LABEL_6:
            v39 = v20;
            v21 = sub_10075E09C();
            v22 = v16 & 0xC000000000000001;
            v40 = v18;
            if ((v16 & 0xC000000000000001) == 0)
            {
              if ((v21 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v21 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {

                goto LABEL_10;
              }

              __break(1u);
              goto LABEL_42;
            }

            sub_10077149C();
LABEL_10:
            sub_10076B48C();

            v23 = sub_10076C44C();
            v24 = *(v6 + 8);
            v24(v12, v43);
            if (v23)
            {
              v25 = sub_10075E09C();
              if (v22)
              {
                sub_10077149C();
              }

              else
              {
                if ((v25 & 0x8000000000000000) != 0)
                {
LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

                if (v25 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_45:
                  __break(1u);
                  return;
                }
              }

              sub_10076B48C();

              v26 = v42;
              swift_beginAccess();
              v27 = *(v26 + v14);
              if (*(v27 + 16))
              {
                v28 = sub_1006108B4(v8);
                if (v29)
                {
                  v30 = *(*(v27 + 56) + 8 * v28);
                  swift_endAccess();

                  v24(v8, v43);
                  goto LABEL_26;
                }
              }

              swift_endAccess();
              v24(v8, v43);
            }

            v31 = sub_10075E09C();
            if (v22)
            {
              v30 = sub_10077149C();
LABEL_25:

LABEL_26:

              if ((sub_10076329C() & 1) != 0 || *(v42 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) == 1)
              {
                v32 = sub_1007632AC();
              }

              else
              {
                v32 = 1;
              }

              v33 = sub_10075E09C();
              if (sub_10076328C())
              {
                v34 = sub_1007632AC();
              }

              else
              {
                v34 = 1;
              }

              v35 = sub_10076B3CC();
              v36 = v41;
              v37 = v39;
              sub_1004FD0B0(v30, v33, 0, v39, v35, v13);
              [*&v36[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_topSeparatorView] setHidden:v34 & 1];
              [*&v36[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_bottomSeparatorView] setHidden:v32 & 1];
              [*&v36[OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_verticalSeparatorView] setHidden:v33 == v37 - 1];
              [v36 setNeedsLayout];

              goto LABEL_37;
            }

            if ((v31 & 0x8000000000000000) == 0)
            {
              if (v31 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v30 = *(v16 + 8 * v31 + 32);

                goto LABEL_25;
              }

              goto LABEL_43;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        else
        {
          v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19 < v20)
          {
            goto LABEL_6;
          }
        }
      }

LABEL_37:
    }
  }
}

double sub_1003315C8(void *a1)
{
  v3 = sub_10076C45C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  type metadata accessor for BadgeCollectionViewCell(0);
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_artworkLoader))
    {
      v12 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension23BadgeCollectionViewCell_badgeView);
      v13 = *(v12 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_artworkView);
      if (v13)
      {
        v14 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_badgeType;
        swift_beginAccess();
        (*(v4 + 16))(v9, v12 + v14, v3);
        (*(v4 + 104))(v6, enum case for BadgeType.artwork(_:), v3);
        sub_1003319A4(&unk_100952C60, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
        v19[0] = a1;

        v15 = v13;
        sub_10077018C();
        sub_10077018C();
        if (v19[3] == v19[1] && v19[4] == v19[2])
        {
          v16 = *(v4 + 8);
          v16(v6, v3);
          v16(v9, v3);
        }

        else
        {
          v17 = sub_10077167C();
          v18 = *(v4 + 8);
          v18(v6, v3);
          v18(v9, v3);

          if ((v17 & 1) == 0)
          {
LABEL_9:

            return result;
          }
        }

        sub_10075FD2C();
        sub_1003319A4(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_100760BFC();
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_1003318E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35InformationRibbonCollectionViewCell_informationRibbon);
  if (v1)
  {
    swift_beginAccess();

    v3 = sub_10032EB68(v2);

    if (v3 >> 62)
    {
      v1 = sub_10077158C();
    }

    else
    {
      v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  return v1;
}

uint64_t sub_1003319A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003319EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100331A2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100331A88()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v3 - 8);
  v33 = &v30 - v4;
  v5 = sub_100768FEC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_10076443C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v30 - v18;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v17);
  v20 = [v1 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v21 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v21 = qword_100944CA0;
  }

  v22 = sub_10000A61C(v12, v21);
  (*(v13 + 16))(v15, v22, v12);

  (*(v13 + 32))(v19, v15, v12);
  (*(v6 + 104))(v8, enum case for OfferButtonSubtitlePosition.below(_:), v5);
  (*(v6 + 56))(v33, 1, 1, v5);
  sub_10033350C();
  sub_10076759C();
  sub_10076440C();
  v24 = v23;
  v26 = v25;
  (*(v31 + 8))(v11, v32);
  (*(v13 + 8))(v19, v12);
  v27 = [v1 layer];
  v28 = v27;
  if (v24 >= v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = v24;
  }

  [v27 setCornerRadius:v29 * 0.5];
}

char *sub_100331FD8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  sub_10075FD2C();
  v12 = sub_10075FB3C();
  sub_1007638EC();

  *&v5[v11] = v12;
  v13 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  sub_1007600FC();
  v14 = sub_1007600BC();
  v16 = sub_1004B958C(v14, v15, UIFontTextStyleFootnote);

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v18 = sub_1007600EC();
  v20 = sub_1004B958C(v18, v19, UIFontTextStyleBody);

  *&v5[v17] = v20;
  v21 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder]];

  return v26;
}

uint64_t sub_100332210@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  sub_10015E5E0(&xmmword_1009A2D20, v101);
  v71 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder);
  [v71 sizeThatFits:{0.0, 0.0}];
  v101[34] = v3;
  v101[35] = v4;
  v102 = 0;
  sub_10015E5E0(v101, v100);
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder);
  v99 = &protocol witness table for UIView;
  v98 = sub_10075FD2C();
  v97[0] = v5;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder);
  v94 = &protocol witness table for UILabel;
  v93 = sub_100016F40(0, &qword_100956550, UILabel_ptr);
  v92[0] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder);
  v91[4] = &protocol witness table for UILabel;
  v91[3] = v93;
  v91[0] = v7;
  v8 = objc_allocWithZone(UILabel);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v90 = &protocol witness table for UILabel;
  v89 = v93;
  v88[0] = [v8 init];
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v72 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_100333934();
  v12 = swift_allocObject();
  *a1 = v12;
  sub_10015E5E0(v100, v79);
  BYTE8(v79[47]) = 0;
  v13 = v98;
  v14 = v99;
  sub_10000CF78(v97, v98);
  v15 = sub_1007711AC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  v71 = v71;
  sub_10076D21C();
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v13;
    v78 = v14;
    v20 = sub_10000DB7C(&v76);
    (*(v19 + 32))(v20, v18, v13);
  }

  *(&v79[22] + 8) = v76;
  *(&v79[23] + 8) = v77;
  *(&v79[24] + 1) = v78;
  sub_1001A8FD8(v95, v73);
  v21 = v74;
  if (v74)
  {
    v22 = v75;
    sub_10000CF78(v73, v74);
    v23 = sub_1007711AC();
    v24 = *(v23 - 8);
    __chkstk_darwin(v23);
    v26 = &v70 - v25;
    sub_10076D6BC();
    v27 = *(v21 - 8);
    if ((*(v27 + 48))(v26, 1, v21) == 1)
    {
      (*(v24 + 8))(v26, v23);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v21;
      v78 = v22;
      v28 = sub_10000DB7C(&v76);
      (*(v27 + 32))(v28, v26, v21);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_100333A90(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[25] = v76;
  v79[26] = v77;
  *&v79[27] = v78;
  sub_1001A8FD8(v92, v73);
  v29 = v74;
  if (v74)
  {
    v30 = v75;
    sub_10000CF78(v73, v74);
    v31 = sub_1007711AC();
    v32 = *(v31 - 8);
    __chkstk_darwin(v31);
    v34 = &v70 - v33;
    sub_10076D6BC();
    v35 = *(v29 - 8);
    if ((*(v35 + 48))(v34, 1, v29) == 1)
    {
      (*(v32 + 8))(v34, v31);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v29;
      v78 = v30;
      v36 = sub_10000DB7C(&v76);
      (*(v35 + 32))(v36, v34, v29);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_100333A90(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[27] + 8) = v76;
  *(&v79[28] + 8) = v77;
  *(&v79[29] + 1) = v78;
  sub_10000A570(v91, &v79[30]);
  v37 = v89;
  v38 = v90;
  sub_10000CF78(v88, v89);
  v39 = sub_1007711AC();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v70 - v41;
  sub_10076D6BC();
  v43 = *(v37 - 8);
  if ((*(v43 + 48))(v42, 1, v37) == 1)
  {
    (*(v40 + 8))(v42, v39);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v37;
    v78 = v38;
    v44 = sub_10000DB7C(&v76);
    (*(v43 + 32))(v44, v42, v37);
  }

  *(&v79[32] + 8) = v76;
  *(&v79[33] + 8) = v77;
  *(&v79[34] + 1) = v78;
  sub_1001A8FD8(v86, v73);
  v45 = v74;
  if (v74)
  {
    v46 = v75;
    sub_10000CF78(v73, v74);
    v47 = sub_1007711AC();
    v48 = *(v47 - 8);
    __chkstk_darwin(v47);
    v50 = &v70 - v49;
    sub_10076D6BC();
    v51 = *(v45 - 8);
    if ((*(v51 + 48))(v50, 1, v45) == 1)
    {
      (*(v48 + 8))(v50, v47);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v45;
      v78 = v46;
      v52 = sub_10000DB7C(&v76);
      (*(v51 + 32))(v52, v50, v45);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_100333A90(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[35] = v76;
  v79[36] = v77;
  *&v79[37] = v78;
  sub_1001A8FD8(v84, &v79[37] + 8);
  sub_1001A8FD8(v82, v73);
  v53 = v74;
  if (v74)
  {
    v54 = v75;
    sub_10000CF78(v73, v74);
    v55 = sub_1007711AC();
    v56 = *(v55 - 8);
    __chkstk_darwin(v55);
    v58 = &v70 - v57;
    sub_10076D6AC();
    v59 = *(v53 - 8);
    if ((*(v59 + 48))(v58, 1, v53) == 1)
    {
      (*(v56 + 8))(v58, v55);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v53;
      v78 = v54;
      v60 = sub_10000DB7C(&v76);
      (*(v59 + 32))(v60, v58, v53);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_100333A90(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[40] = v76;
  v79[41] = v77;
  *&v79[42] = v78;
  sub_1001A8FD8(v80, v73);
  v61 = v74;
  if (v74)
  {
    v62 = v75;
    sub_10000CF78(v73, v74);
    v63 = sub_1007711AC();
    v64 = *(v63 - 8);
    __chkstk_darwin(v63);
    v66 = &v70 - v65;
    sub_10076D6BC();
    v67 = *(v61 - 8);
    if ((*(v67 + 48))(v66, 1, v61) == 1)
    {
      sub_100333A90(v80);
      sub_100333A90(v82);
      sub_100333A90(v86);
      sub_100333A90(v95);
      sub_10015E58C(v100);
      sub_10000CD74(v91);
      sub_100333A90(v92);
      sub_100333A90(v84);
      (*(v64 + 8))(v66, v63);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v61;
      v78 = v62;
      v68 = sub_10000DB7C(&v76);
      (*(v67 + 32))(v68, v66, v61);
      sub_100333A90(v80);
      sub_100333A90(v82);
      sub_100333A90(v86);
      sub_100333A90(v95);
      sub_10015E58C(v100);
      sub_10000CD74(v91);
      sub_100333A90(v92);
      sub_100333A90(v84);
    }

    sub_10000CD74(v73);
  }

  else
  {
    sub_100333A90(v80);
    sub_100333A90(v82);
    sub_100333A90(v86);
    sub_100333A90(v95);
    sub_10015E58C(v100);
    sub_10000CD74(v91);
    sub_100333A90(v92);
    sub_100333A90(v84);
    sub_100333A90(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[42] + 8) = v76;
  *(&v79[43] + 8) = v77;
  *(&v79[44] + 1) = v78;
  *&v79[45] = v71;
  *(&v79[45] + 8) = v76;
  *(&v79[46] + 1) = v72;
  *&v79[47] = &protocol witness table for UIView;
  memcpy((v12 + 16), v79, 0x2F9uLL);
  sub_10015E58C(v101);
  sub_10000CD74(v88);
  return sub_10000CD74(v97);
}

double sub_100333214(double a1)
{
  v3 = sub_10076443C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v20[-v8 - 8];
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  if (qword_100941430 != -1)
  {
    swift_once();
  }

  v10 = [v1 traitCollection];
  [v1 layoutMargins];
  if (sub_10077071C())
  {
    v11 = &xmmword_1009A2E90;
  }

  else
  {
    v11 = &xmmword_1009A2D20;
  }

  sub_10015E5E0(v11, v20);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v12 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v12 = qword_100944CA0;
  }

  v13 = sub_10000A61C(v3, v12);
  (*(v4 + 16))(v6, v13, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    sub_1007643EC();
    v15 = v14;
    sub_1007643EC();
    v21 = v15;
    v22 = v16;
    v23 = 0;
  }

  v17 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, v10, a1);

  (*(v4 + 8))(v9, v3);
  sub_10015E58C(v20);
  return v17;
}

unint64_t sub_10033350C()
{
  result = qword_100945580;
  if (!qword_100945580)
  {
    sub_100768FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945580);
  }

  return result;
}

double sub_100333564()
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

unint64_t sub_100333934()
{
  result = qword_100952CE8;
  if (!qword_100952CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952CE8);
  }

  return result;
}

uint64_t sub_100333988()
{
  sub_10000CD74(v0 + 4);

  sub_10000CD74(v0 + 11);
  sub_10000CD74(v0 + 16);
  sub_10000CD74(v0 + 21);
  sub_10000CD74(v0 + 26);
  sub_10000CD74(v0 + 31);
  sub_10000CD74(v0 + 39);
  if (v0[50])
  {
    sub_10000CD74(v0 + 47);
  }

  if (v0[55])
  {
    sub_10000CD74(v0 + 52);
  }

  if (v0[60])
  {
    sub_10000CD74(v0 + 57);
  }

  sub_10000CD74(v0 + 62);
  if (v0[70])
  {
    sub_10000CD74(v0 + 67);
  }

  if (v0[75])
  {
    sub_10000CD74(v0 + 72);
  }

  if (v0[80])
  {
    sub_10000CD74(v0 + 77);
  }

  if (v0[85])
  {
    sub_10000CD74(v0 + 82);
  }

  if (v0[90])
  {
    sub_10000CD74(v0 + 87);
  }

  if (v0[95])
  {
    sub_10000CD74(v0 + 92);
  }

  return _swift_deallocObject(v0, 777, 7);
}

uint64_t sub_100333A90(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10094BB30, qword_100796E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100333AF8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  sub_10075FD2C();
  v3 = sub_10075FB3C();
  sub_1007638EC();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  sub_1007600FC();
  v5 = sub_1007600BC();
  v7 = sub_1004B958C(v5, v6, UIFontTextStyleFootnote);

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v9 = sub_1007600EC();
  v11 = sub_1004B958C(v9, v10, UIFontTextStyleBody);

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

id sub_100333C2C(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v9 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = sub_10076C38C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003837C(v14, v4 + v17, &unk_1009434A0, &unk_100787B90);
  swift_endAccess();
  v18 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_100016E2C(v4 + v17, v11, &unk_1009434A0, &unk_100787B90);
  v19 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_10003837C(v11, v18 + v19, &unk_1009434A0, &unk_100787B90);
  swift_endAccess();
  sub_1003DC6B0(a2);
  v20 = [v4 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_10076C70C();
    if (!v22)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v22 = sub_100770D8C();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = &off_100911000;
  if (sub_10076C76C())
  {
    *(v5 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = 1;
  }

  else
  {
    v25 = [v5 traitCollection];
    v26 = sub_10077071C();

    *(v5 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v26 & 1;
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v27 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror;
  if (!*(v5 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror))
  {
    v28 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
    v29 = v18;
    v30 = sub_10052C358(v29);
    v31 = *(v5 + v27);
    *(v5 + v27) = v30;
    v32 = v30;

    [v32 _setContinuousCornerRadius:*(v5 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius)];
    v33 = [v32 layer];
    [v33 setMaskedCorners:sub_1007704FC()];

    v34 = [v5 contentView];
    [v34 insertSubview:v32 belowSubview:v29];

    [v5 setNeedsLayout];
  }

LABEL_10:
  v53 = sub_10076C7FC();
  sub_100761BFC();
  sub_10000A5D4(&qword_100945700, &qword_100787BA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_10000CFBC(&v50, &qword_1009456F8, &unk_1007AB1E0);
    goto LABEL_17;
  }

  sub_100012498(&v50, v54);
  sub_10000CF78(v54, v55);
  v35 = [v5 traitCollection];
  v36 = sub_1007684EC();

  if (!v36)
  {
LABEL_16:
    sub_10000CD74(v54);
    v24 = &off_100911000;
LABEL_17:
    v53 = sub_10076C7FC();
    if (swift_dynamicCast())
    {
      sub_100012498(&v50, v54);
      sub_10000CF78(v54, v55);
      v41 = [v5 traitCollection];
      v42 = sub_1007684FC();

      if (v42)
      {
        sub_10000CF78(v54, v55);
        v43 = sub_1007684CC();
        if (v43)
        {
          v44 = v49;
          sub_100335F64(v42, v43, a1, a2, a3, v49);

          sub_10000CD74(v54);
          v40 = v44;
          goto LABEL_25;
        }
      }

      sub_10000CD74(v54);
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      sub_10000CFBC(&v50, &qword_1009456F8, &unk_1007AB1E0);
    }

    v40 = v49;
    goto LABEL_25;
  }

  sub_10000CF78(v54, v55);
  v37 = sub_1007684CC();
  if (!v37)
  {

    goto LABEL_16;
  }

  v38 = v37;
  v39 = v49;
  swift_weakAssign();
  swift_weakAssign();
  sub_10033742C(v36, v38, a1, a2, a3, v39);

  sub_10000CD74(v54);
  v40 = v39;
  v24 = &off_100911000;
LABEL_25:
  v45 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer);
  sub_10030E4AC(a1, a2, a3, v40);
  v46 = [v45 setUserInteractionEnabled:*(v5 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded)];
  (*((swift_isaMask & *v5) + 0x278))(v46);
  sub_100335DC8();
  return [v5 v24[194]];
}

void sub_1003342F8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
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
    v19 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003837C(v17, v4 + v19, &unk_1009434A0, &unk_100787B90);
    swift_endAccess();
    v20 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
    sub_100016E2C(v4 + v19, v12, &unk_1009434A0, &unk_100787B90);
    v21 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    sub_10003837C(v12, v20 + v21, &unk_1009434A0, &unk_100787B90);
    swift_endAccess();
    v22 = (*(a2 + 160))(ObjectType, a2);
    v23 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = v22;
    if (v22 == 4)
    {
      v24 = [v4 contentView];
      [v24 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v25 = *(v4 + v23);
    sub_10030E29C(v25);
    *(v20 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory) = v25;
    sub_100275F40();
    v26 = (*(a2 + 136))(ObjectType, a2);
    sub_1003DC6B0(v26);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = *(v27 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported);
      *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v29;
      if (v29 == 1 && (v30 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror, !*(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror)))
      {
        v52 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
        v53 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
        v54 = a1;
        v55 = v52;
        v56 = sub_10052C358(v55);
        v57 = *(v4 + v30);
        *(v4 + v30) = v56;
        v58 = v56;

        [v58 _setContinuousCornerRadius:*(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius)];
        v59 = [v58 layer];
        [v59 setMaskedCorners:sub_1007704FC()];

        v60 = [v4 contentView];
        [v60 insertSubview:v58 belowSubview:v55];

        [v4 setNeedsLayout];
      }

      else
      {
        v31 = a1;
      }

      v32 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground);
      *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground) = v28[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
      sub_10033A568(v32);
      v33 = *&v28[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
      sub_100310A38(v33, 0);

      v34 = *&v28[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
      if (v34)
      {
        v35 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
        if (v35)
        {
          v36 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          v37 = v61;
          sub_100016E2C(v4 + v36, v61, &unk_1009434A0, &unk_100787B90);
          v38 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
          if (*(v4 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
          {
            v38 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          v39 = *(v4 + *v38);
          v40 = v34;
          v41 = v35;
          sub_10052C0C8(v40, 0, v37, v39);

          sub_10000CFBC(v37, &unk_1009434A0, &unk_100787B90);
        }
      }

      v42 = *&v28[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
      v43 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      v44 = v62;
      sub_100016E2C(v4 + v43, v62, &unk_1009434A0, &unk_100787B90);
      v45 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      if (*(v4 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
      {
        v45 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      v46 = *(v4 + *v45);
      v47 = v42;
      sub_100276360(v47, 0, v44, v46);

      sub_10000CFBC(v44, &unk_1009434A0, &unk_100787B90);
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

void sub_10033499C()
{
  sub_1003DC268();
  v1 = [v0 contentView];
  sub_1001EEC4C();
  if (v2)
  {
    v3 = sub_10076FF6C();
  }

  else
  {
    v3 = 0;
  }

  [v1 setAccessibilityLabel:v3];
}

uint64_t sub_100334A48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009434A0, &unk_100787B90);
}

uint64_t sub_100334AB4(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v6, &unk_1009434A0, &unk_100787B90);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_100016E2C(v1 + v6, v5, &unk_1009434A0, &unk_100787B90);
  v8 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_10003837C(v5, v7 + v8, &unk_1009434A0, &unk_100787B90);
  return swift_endAccess();
}

void sub_100334C00(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled) = a1;
  sub_10033A910(v2);
}

void *sub_100334C4C()
{
  result = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_100334C84(char a1)
{
  if (a1)
  {

    sub_1003396F8();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_100334D3C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = v1[v2];
  sub_10030E29C(v4);
  *(*&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory) = v4;
  sub_100275F40();
}

void *sub_100334DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v4 = sub_10076BF9C();
  __chkstk_darwin(v4 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076BD9C();
  __chkstk_darwin(v7 - 8);
  v82 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076BFFC();
  v84 = *(v9 - 8);
  __chkstk_darwin(v9);
  v83 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100952D60, &qword_10079C098);
  __chkstk_darwin(v11 - 8);
  v77 = &v61 - v12;
  v81 = sub_10076BEDC();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v61 - v15;
  v76 = sub_10077164C();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100766D4C();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076A75C();
  v70 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  v24 = sub_10076C38C();
  v87 = *(v24 - 8);
  v88 = v24;
  __chkstk_darwin(v24);
  v85 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v61 - v27;
  sub_10076C84C();
  sub_10033CF0C(&qword_100947150, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  result = sub_10076332C();
  v30 = v92;
  if (v92)
  {
    v91 = sub_10076C7FC();
    sub_100761BFC();
    sub_10000A5D4(&qword_100945700, &qword_100787BA0);
    if (swift_dynamicCast())
    {
      v64 = v18;
      v67 = v6;
      v69 = a2;
      sub_100012498(v89, &v92);
      type metadata accessor for TodayCardGridTracker();
      sub_10076F64C();
      sub_10076FC1C();
      v68 = *&v89[0];
      sub_1003B1704();
      v32 = v31;
      v33 = _swiftEmptyArrayStorage;
      *&v89[0] = _swiftEmptyArrayStorage;
      v86 = v30;
      v34 = sub_10076C6FC();
      v66 = v9;
      LODWORD(v65) = v32;
      if (v34)
      {
        swift_getKeyPath();
        sub_10076338C();

        swift_getKeyPath();
        sub_10076338C();

        v35 = v91;
        sub_1005DE768(v32, v28, v91);
        sub_1005B1CD8(v32);
        sub_10076BFCC();

        (*(v87 + 8))(v28, v88);
        sub_10077019C();
        if (*((*&v89[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v89[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();

        v33 = *&v89[0];
      }

      sub_10000CF78(&v92, v93);
      swift_getKeyPath();
      sub_10076338C();

      v36 = v91;
      v37 = sub_1007684DC();

      if (v37)
      {
        sub_10000CF78(&v92, v93);
        if (sub_1007684CC())
        {
          swift_getKeyPath();
          v38 = v85;
          sub_10076338C();

          swift_getKeyPath();
          sub_10076338C();

          v62 = v91;
          v39 = sub_10077073C();
          v40 = v65;
          v63 = v39;
          sub_1005DE768(v65, v38, v39);
          v41.n128_f64[0] = sub_1005B1CD8(v40);
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
          v46 = sub_1007701CC();

          (*(v42 + 8))(v23, v45);
          sub_10076A73C();
          if (v47)
          {
            sub_10076BEFC();
          }

          v48 = v81;
          v49 = v80;
          v50 = v77;
          v51 = v71;
          sub_10076A74C();
          sub_100766D1C();
          sub_100770ACC();
          sub_100770A8C();
          v52 = v75;
          v53 = v73;
          v54 = v76;
          (*(v75 + 104))(v73, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v76);
          sub_100770AAC();
          (*(v52 + 8))(v53, v54);
          (*(v72 + 8))(v51, v74);
          sub_10076A72C();
          v55 = *(v49 + 48);
          v56 = v55(v50, 1, v48);
          v65 = v46;
          if (v56 == 1)
          {
            v57 = v79;
            sub_10076BEEC();
            if (v55(v50, 1, v48) != 1)
            {
              sub_10000CFBC(v50, &qword_100952D60, &qword_10079C098);
            }
          }

          else
          {
            v57 = v79;
            (*(v49 + 32))(v79, v50, v48);
          }

          v58 = v83;
          sub_10076BDAC();
          v81 = v37;
          sub_10076C01C();
          v59 = v63;
          [v63 displayScale];
          (*(v49 + 16))(v78, v57, v48);
          sub_10076BFDC();
          sub_10076BFEC();
          sub_100764B3C();
          swift_allocObject();
          sub_100764B1C();

          (*(v84 + 8))(v58, v66);
          (*(v49 + 8))(v57, v48);
          (*(v87 + 8))(v85, v88);
          sub_10077019C();
          if (*((*&v89[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v89[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();

          v33 = *&v89[0];
        }

        else
        {
        }
      }

      v60._rawValue = v33;
      sub_100760BAC(v60);

      return sub_10000CD74(&v92);
    }

    else
    {

      v90 = 0;
      memset(v89, 0, sizeof(v89));
      return sub_10000CFBC(v89, &qword_1009456F8, &unk_1007AB1E0);
    }
  }

  return result;
}

void sub_100335B00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000167E0(v4, v5);
  v6 = (*(v2 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay);
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
      sub_10076A00C();
    }
  }
}

void sub_100335C58(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10076611C();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000167E0(v4, v5);
  v6 = (*(v2 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay);
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
      sub_100769FFC();
    }
  }
}

void sub_100335DC8()
{
  if (v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported] != 1)
  {
    goto LABEL_11;
  }

  v1 = [v0 traitCollection];
  v2 = sub_10077071C();

  if ((v2 & 1) == 0)
  {
    if ((v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = [v0 traitCollection];
    v5 = sub_1007706FC();

    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 = v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
    v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
    goto LABEL_12;
  }

  v3 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v3 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v3] == 4)
  {
    if (!v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
LABEL_10:
      if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] != 4)
      {
        [v0 bounds];
        v7 = CGRectGetWidth(v9) < 405.0 && *(*&v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay) != 0;
        v6 = v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
        v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = v7;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
  v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = 1;
LABEL_12:

  sub_10033A568(v6);
}

void sub_100335F64(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v158 = a6;
  v169 = a5;
  v170 = a2;
  LODWORD(v167) = a4;
  v9 = sub_10000A5D4(&qword_10094B040, qword_100790DE0);
  __chkstk_darwin(v9 - 8);
  v135 = &v130 - v10;
  v162 = sub_10076C38C();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v133 = v11;
  v141 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10075DDBC();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v140 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v12;
  __chkstk_darwin(v13);
  v142 = &v130 - v14;
  v136 = sub_10000A5D4(&unk_100952D70, &unk_10079C0A0);
  __chkstk_darwin(v136);
  v137 = &v130 - v15;
  v16 = sub_10000A5D4(&qword_100943190, qword_100798490);
  __chkstk_darwin(v16 - 8);
  v134 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v131 = &v130 - v19;
  __chkstk_darwin(v20);
  v138 = &v130 - v21;
  __chkstk_darwin(v22);
  v139 = &v130 - v23;
  v24 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v24 - 8);
  v157 = &v130 - v25;
  v26 = sub_10076BF9C();
  __chkstk_darwin(v26 - 8);
  v163 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_10076BD9C();
  v160 = *(v145 - 8);
  __chkstk_darwin(v145);
  v159 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_10076BFFC();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000A5D4(&qword_100952D60, &qword_10079C098);
  __chkstk_darwin(v30 - 8);
  v32 = &v130 - v31;
  v33 = sub_10076BEDC();
  v165 = *(v33 - 8);
  v166 = v33;
  __chkstk_darwin(v33);
  v152 = &v130 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v130 - v36;
  v151 = sub_10077164C();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v147 = &v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100766D4C();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v40 = &v130 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10076A75C();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v130 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v130 - v46;
  v48 = sub_10076C70C();
  if (!v48)
  {
    v49 = sub_10076BE1C();
    if (!v49)
    {
      goto LABEL_7;
    }

    v164 = a1;
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
  v153 = v37;
  v168 = v7;
  v149 = [v7 traitCollection];
  v54 = sub_10077073C();
  v55 = v167;
  v164 = v54;
  sub_1005DE768(v167, v169, v54);
  v56.n128_f64[0] = sub_1005B1CD8(v55);
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
  v59 = sub_1007701CC();
  (*(v42 + 8))(v47, v41);
  sub_10076A73C();
  if (v60)
  {
    sub_10076BEFC();
  }

  v61 = v166;
  sub_10076A74C();
  sub_100766D1C();
  sub_100770ACC();
  sub_100770A8C();
  v62 = v150;
  v63 = v147;
  v64 = v151;
  (*(v150 + 104))(v147, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v151);
  sub_100770AAC();
  (*(v62 + 8))(v63, v64);
  (*(v146 + 8))(v40, v148);
  v151 = v59;
  sub_10076A72C();
  v65 = v165;
  v66 = *(v165 + 48);
  v67 = v66(v32, 1, v61);
  v68 = v168;
  if (v67 == 1)
  {
    v69 = v153;
    sub_10076BEEC();
    v70 = v61;
    if (v66(v32, 1, v61) != 1)
    {
      sub_10000CFBC(v32, &qword_100952D60, &qword_10079C098);
    }
  }

  else
  {
    v69 = v153;
    (*(v65 + 32))(v153, v32, v61);
    v70 = v61;
  }

  v71 = v154;
  sub_10076BDAC();
  sub_10076C01C();
  v72 = v164;
  [v164 displayScale];
  v73 = v165;
  (*(v165 + 16))(v152, v69, v70);
  sub_10076BFDC();
  sub_10076BFEC();
  sub_100764B3C();
  swift_allocObject();
  v74 = sub_100764B1C();

  (*(v155 + 8))(v71, v156);
  (*(v73 + 8))(v69, v166);
  v75 = *&v68[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  if (v68[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 7)
  {
    v76 = v167;
  }

  else
  {
    v76 = v68[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  }

  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v167 = v171;
  v165 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(Strong, v78);

  v166 = v75;
  v163 = v74;
  v164 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView;
  v79 = *(v75 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView);
  sub_100764ADC();
  v81 = v80;
  v83 = v82;
  v84 = [*(v79 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView) image];
  v85 = v161;
  v86 = v157;
  v87 = v162;
  v155 = *(v161 + 16);
  (v155)(v157, v169, v162);
  (*(v85 + 56))(v86, 0, 1, v87);
  LODWORD(v156) = v76;
  sub_1003955EC(v84, v81, v83, 0, v170, v86, v76);

  sub_10000CFBC(v86, &unk_1009434A0, &unk_100787B90);
  v88 = *(v79 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded);
  v158 = v79;
  if (v88)
  {
    v89 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v90 = v139;
    sub_100016E2C(v79 + v89, v139, &qword_100943190, qword_100798490);
    v91 = v138;
    sub_100764B2C();
    v92 = v160;
    v93 = v145;
    (*(v160 + 56))(v91, 0, 1, v145);
    v94 = *(v136 + 48);
    v95 = v137;
    sub_100016E2C(v90, v137, &qword_100943190, qword_100798490);
    sub_100016E2C(v91, v95 + v94, &qword_100943190, qword_100798490);
    v96 = *(v92 + 48);
    if (v96(v95, 1, v93) == 1)
    {
      sub_10000CFBC(v91, &qword_100943190, qword_100798490);
      sub_10000CFBC(v90, &qword_100943190, qword_100798490);
      if (v96(v95 + v94, 1, v93) == 1)
      {
        sub_10000CFBC(v95, &qword_100943190, qword_100798490);
        goto LABEL_29;
      }
    }

    else
    {
      v97 = v131;
      sub_100016E2C(v95, v131, &qword_100943190, qword_100798490);
      if (v96(v95 + v94, 1, v93) != 1)
      {
        v126 = v160;
        v127 = v159;
        (*(v160 + 32))(v159, v95 + v94, v93);
        sub_10033CF0C(&qword_100943198, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
        v128 = sub_10076FF1C();
        v129 = *(v126 + 8);
        v129(v127, v93);
        sub_10000CFBC(v138, &qword_100943190, qword_100798490);
        sub_10000CFBC(v139, &qword_100943190, qword_100798490);
        v129(v97, v93);
        sub_10000CFBC(v95, &qword_100943190, qword_100798490);
        v79 = v158;
        if (v128)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10000CFBC(v138, &qword_100943190, qword_100798490);
      sub_10000CFBC(v139, &qword_100943190, qword_100798490);
      (*(v160 + 8))(v97, v93);
    }

    sub_10000CFBC(v95, &unk_100952D70, &unk_10079C0A0);
    v79 = v158;
  }

LABEL_27:
  if ((*(v79 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v98 = v142;
    sub_10075DDAC();
    v99 = v143;
    v100 = *(v143 + 16);
    v101 = v140;
    v102 = v144;
    v100(v140, v98, v144);
    sub_10033CF0C(&qword_10094F558, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_10077140C();
    v103 = swift_allocObject();
    v159 = v103;
    swift_unknownObjectWeakInit();
    v104 = v101;
    v105 = v102;
    v100(v104, v98, v102);
    (v155)(v141, v169, v162);
    v106 = (*(v99 + 80) + 24) & ~*(v99 + 80);
    v107 = (v132 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v108 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
    v109 = v161;
    v110 = (*(v161 + 80) + v108 + 8) & ~*(v161 + 80);
    v111 = v110 + v133;
    v112 = swift_allocObject();
    *(v112 + 16) = v103;
    v113 = *(v99 + 32);
    v113(v112 + v106, v140, v105);
    v114 = (v112 + v107);
    *v114 = v81;
    v114[1] = v83;
    *(v112 + v108) = v170;
    (*(v109 + 32))(v112 + v110, v141, v162);
    *(v112 + v111) = v156;

    sub_100760B7C();

    sub_10000CFBC(&v171, &qword_100943310, &unk_100784150);

    v115 = v134;
    sub_100764B2C();
    (*(v160 + 56))(v115, 0, 1, v145);
    v116 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    v117 = v158;
    swift_beginAccess();
    v118 = v117;
    sub_10003837C(v115, v117 + v116, &qword_100943190, qword_100798490);
    swift_endAccess();
    v119 = v135;
    v120 = v144;
    v113(v135, v142, v144);
    (*(v143 + 56))(v119, 0, 1, v120);
    v121 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_10003837C(v119, v118 + v121, &qword_10094B040, qword_100790DE0);
    swift_endAccess();
  }

LABEL_29:
  v122 = v166;
  [*&v164[v166] setHidden:0];
  [*(v122 + v165) setHidden:1];

  *(v122 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) = 1;
  v123 = *&v168[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v123)
  {
    v124 = *&v123[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView];
    v125 = v123;
    [v124 setHidden:0];
    [*&v125[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView] setHidden:1];
  }
}

uint64_t sub_10033742C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v222 = a6;
  v256 = a5;
  v257 = a4;
  v258 = a2;
  v7 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v7 - 8);
  v211 = &v210 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v215 = &v210 - v10;
  v11 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v11 - 8);
  v221 = &v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v220 = &v210 - v14;
  v253 = sub_10075DB7C();
  v15 = *(v253 - 8);
  __chkstk_darwin(v253);
  v214 = &v210 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_10000A5D4(&unk_100964140, &unk_1007869B0);
  __chkstk_darwin(v251);
  v252 = &v210 - v17;
  v18 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v18 - 8);
  v219 = &v210 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v218 = &v210 - v21;
  __chkstk_darwin(v22);
  v260 = &v210 - v23;
  __chkstk_darwin(v24);
  v261 = &v210 - v25;
  v26 = sub_10076BF9C();
  __chkstk_darwin(v26 - 8);
  v249 = &v210 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076BD9C();
  __chkstk_darwin(v28 - 8);
  v246 = &v210 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_10076BFFC();
  v248 = *(v250 - 8);
  __chkstk_darwin(v250);
  v247 = &v210 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000A5D4(&qword_100952D60, &qword_10079C098);
  __chkstk_darwin(v31 - 8);
  v242 = &v210 - v32;
  v245 = sub_10076BEDC();
  v267 = *(v245 - 8);
  __chkstk_darwin(v245);
  v243 = &v210 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v244 = &v210 - v35;
  v241 = sub_10077164C();
  v240 = *(v241 - 8);
  __chkstk_darwin(v241);
  v238 = &v210 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_100766D4C();
  v237 = *(v239 - 8);
  __chkstk_darwin(v239);
  v236 = &v210 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_10076A75C();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v232 = &v210 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v233 = &v210 - v40;
  v41 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v41 - 8);
  v231 = &v210 - v42;
  v229 = sub_10076121C();
  v228 = *(v229 - 8);
  __chkstk_darwin(v229);
  v230 = &v210 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_10076481C();
  v254 = *(v255 - 8);
  __chkstk_darwin(v255);
  v270 = &v210 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10000A5D4(&qword_100952D68, &qword_10079E940);
  __chkstk_darwin(v45 - 8);
  v213 = &v210 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v226 = &v210 - v48;
  __chkstk_darwin(v49);
  v217 = &v210 - v50;
  __chkstk_darwin(v51);
  v53 = &v210 - v52;
  v268 = sub_1007611EC();
  v273 = *(v268 - 8);
  __chkstk_darwin(v268);
  v266 = &v210 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v265 = &v210 - v56;
  __chkstk_darwin(v57);
  v212 = &v210 - v58;
  __chkstk_darwin(v59);
  v227 = &v210 - v60;
  __chkstk_darwin(v61);
  v225 = &v210 - v62;
  __chkstk_darwin(v63);
  v224 = &v210 - v64;
  __chkstk_darwin(v65);
  v67 = &v210 - v66;
  __chkstk_darwin(v68);
  v216 = &v210 - v69;
  __chkstk_darwin(v70);
  v72 = &v210 - v71;
  __chkstk_darwin(v73);
  v75 = &v210 - v74;
  __chkstk_darwin(v76);
  v78 = &v210 - v77;
  __chkstk_darwin(v79);
  v81 = &v210 - v80;
  __chkstk_darwin(v82);
  v84 = &v210 - v83;
  v85 = sub_10076C70C();
  v274 = a1;
  if (v85)
  {
    v86 = v85;
LABEL_3:

    goto LABEL_4;
  }

  sub_10076B84C();
  v98 = v15;
  v86 = sub_10076BE1C();

  if (v86)
  {
    v99 = [v275 backgroundView];
    if (v99)
    {
      v100 = v99;
      [v99 setBackgroundColor:v86];

      v15 = v98;
    }

    goto LABEL_3;
  }

LABEL_4:
  v262 = v15;
  v272 = v67;
  sub_10076B82C();
  sub_1007611BC();
  v87 = v273;
  v88 = v268;
  v271 = *(v273 + 16);
  v259 = v273 + 16;
  v271(v75, v84, v268);
  sub_10033CF0C(&unk_1009603F0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  sub_10077125C();
  v89 = sub_10077127C();
  v269 = v84;
  if (v89)
  {
    v90 = *(v87 + 8);
    v90(v78, v88);
    v90(v81, v88);
    v91 = 1;
  }

  else
  {
    sub_10077128C();
    v90 = *(v87 + 8);
    v90(v81, v88);
    (*(v87 + 32))(v53, v78, v88);
    v91 = 0;
  }

  v263 = *(v87 + 56);
  v263(v53, v91, 1, v88);
  sub_10000CFBC(v53, &qword_100952D68, &qword_10079E940);
  v223 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v92 = v275[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4;
  v93 = v272;
  v264 = v90;
  v94 = v224;
  if (v92)
  {
    sub_1007611CC();
    v271(v75, v269, v88);
    v95 = v216;
    sub_10077125C();
    if (sub_10077127C())
    {
      v90 = v264;
      v264(v95, v88);
      v90(v72, v88);
      v96 = 1;
      v97 = v217;
    }

    else
    {
      sub_10077128C();
      v101 = v273;
      v90 = v264;
      v264(v72, v88);
      v102 = *(v101 + 32);
      v97 = v217;
      v102(v217, v95, v88);
      v96 = 0;
    }

    v263(v97, v96, 1, v88);
    sub_10000CFBC(v97, &qword_100952D68, &qword_10079E940);
  }

  sub_10076B7EC();
  sub_1007611BC();
  v271(v75, v93, v88);
  v103 = v94;
  v104 = v225;
  sub_10077125C();
  if (sub_10077127C())
  {
    v90(v104, v88);
    v90(v103, v88);
    v105 = 1;
    v106 = v245;
    v107 = v226;
  }

  else
  {
    sub_10077128C();
    v108 = v273;
    v90(v103, v88);
    v109 = *(v108 + 32);
    v107 = v226;
    v109(v226, v104, v88);
    v105 = 0;
    v106 = v245;
  }

  v263(v107, v105, 1, v88);
  sub_10000CFBC(v107, &qword_100952D68, &qword_10079E940);
  v110 = v227;
  if (v275[v223] == 4 && (v275[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    sub_1007611CC();
    v271(v75, v272, v88);
    v111 = v212;
    sub_10077125C();
    if (sub_10077127C())
    {
      v112 = v264;
      v264(v111, v88);
      v112(v110, v88);
      v113 = 1;
      v114 = v213;
    }

    else
    {
      sub_10077128C();
      v115 = v273;
      v264(v110, v88);
      v116 = *(v115 + 32);
      v114 = v213;
      v116(v213, v111, v88);
      v113 = 0;
    }

    v263(v114, v113, 1, v88);
    sub_10000CFBC(v114, &qword_100952D68, &qword_10079E940);
  }

  (*(v228 + 104))(v230, enum case for VideoFillMode.scaleAspectFill(_:), v229);
  sub_10076B84C();
  sub_10076BEFC();
  v117 = v231;
  sub_10076D3AC();

  v118 = sub_10076D39C();
  (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  v119 = v271;
  v271(v265, v272, v88);
  v119(v266, v269, v88);
  sub_10076B7FC();
  sub_10076B7DC();
  sub_10076B83C();
  sub_1007647FC();
  sub_10076B84C();
  v271 = [v275 traitCollection];
  v120 = sub_10077073C();
  v121 = v257;
  sub_1005DE768(v257, v256, v120);
  v122 = v121;
  v123.n128_f64[0] = sub_1005B1CD8(v121);
  v124 = v234;
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

  v127 = v232;
  v128 = v235;
  (*(v234 + 104))(v232, *v125, v235, v123);
  v129 = v233;
  (*(v124 + 32))(v233, v127, v128);
  v130 = sub_1007701CC();
  (*(v124 + 8))(v129, v128);
  sub_10076A73C();
  if (v131)
  {
    sub_10076BEFC();
  }

  v132 = v244;
  v133 = v242;
  v134 = v236;
  sub_10076A74C();
  sub_100766D1C();
  sub_100770ACC();
  sub_100770A8C();
  v135 = v240;
  v136 = v238;
  v137 = v241;
  (*(v240 + 104))(v238, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v241);
  sub_100770AAC();
  (*(v135 + 8))(v136, v137);
  (*(v237 + 8))(v134, v239);
  sub_10076A72C();
  v138 = v267;
  v139 = *(v267 + 48);
  v140 = v139(v133, 1, v106);
  v265 = v130;
  if (v140 == 1)
  {
    sub_10076BEEC();
    v141 = v106;
    v142 = v132;
    if (v139(v133, 1, v106) != 1)
    {
      sub_10000CFBC(v133, &qword_100952D60, &qword_10079C098);
    }
  }

  else
  {
    (*(v138 + 32))(v132, v133, v106);
    v141 = v106;
    v142 = v132;
  }

  v143 = v247;
  sub_10076BDAC();
  sub_10076C01C();
  [v120 displayScale];
  v263 = v120;
  v144 = v267;
  (*(v267 + 16))(v243, v142, v141);
  sub_10076BFDC();
  sub_10076BFEC();
  sub_100764B3C();
  swift_allocObject();
  v266 = sub_100764B1C();

  (*(v248 + 8))(v143, v250);
  (*(v144 + 8))(v142, v141);
  v145 = *&v275[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  v146 = v261;
  sub_10076B85C();
  v147 = v262;
  v148 = *(v262 + 56);
  v149 = 1;
  v150 = v253;
  (v148)(v146, 0, 1, v253);
  v267 = v145;
  v271 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v152 = Strong;
    v153 = v260;
    (*(v147 + 16))(v260, Strong + qword_1009A2520, v150);

    v149 = 0;
    v154 = v252;
  }

  else
  {
    v154 = v252;
    v153 = v260;
  }

  v265 = v148;
  (v148)(v153, v149, 1, v150);
  v155 = *(v251 + 48);
  sub_100016E2C(v146, v154, &unk_1009435D0, &qword_100785850);
  sub_100016E2C(v153, v154 + v155, &unk_1009435D0, &qword_100785850);
  v156 = *(v147 + 48);
  if (v156(v154, 1, v150) == 1)
  {
    sub_10000CFBC(v153, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v146, &unk_1009435D0, &qword_100785850);
    v157 = v156(v154 + v155, 1, v150);
    v158 = v275;
    if (v157 == 1)
    {
      sub_10000CFBC(v154, &unk_1009435D0, &qword_100785850);
      goto LABEL_61;
    }

    goto LABEL_43;
  }

  v159 = v218;
  sub_100016E2C(v154, v218, &unk_1009435D0, &qword_100785850);
  if (v156(v154 + v155, 1, v150) == 1)
  {
    sub_10000CFBC(v260, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v261, &unk_1009435D0, &qword_100785850);
    (*(v262 + 8))(v159, v150);
LABEL_43:
    sub_10000CFBC(v154, &unk_100964140, &unk_1007869B0);
    v160 = v267;
    goto LABEL_44;
  }

  v167 = v262;
  v168 = v214;
  (*(v262 + 32))(v214, v154 + v155, v150);
  sub_10033CF0C(&qword_100944C38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v169 = sub_10076FF1C();
  v170 = *(v167 + 8);
  v170(v168, v150);
  sub_10000CFBC(v260, &unk_1009435D0, &qword_100785850);
  sub_10000CFBC(v261, &unk_1009435D0, &qword_100785850);
  v170(v159, v150);
  sub_10000CFBC(v154, &unk_1009435D0, &qword_100785850);
  v158 = v275;
  v160 = v267;
  if ((v169 & 1) == 0)
  {
LABEL_44:
    sub_100762F0C();
    v267 = sub_10076F64C();
    sub_10076FC1C();
    v161 = v276;
    sub_10076B7CC();
    v162 = v219;
    sub_10076B85C();
    (v265)(v162, 0, 1, v150);
    v163 = v220;
    sub_10076B81C();
    v164 = v221;
    sub_10076B80C();
    v165 = type metadata accessor for TodayCardVideoView(0);
    sub_10033CF0C(&qword_10094F540, type metadata accessor for TodayCardVideoView, &unk_1007AF120);
    v265 = v165;
    v166 = sub_100762EEC();
    sub_10000CFBC(v164, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v163, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v162, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(&v276, &qword_100943310, &unk_100784150);
    if (v166)
    {
      if ((v166[qword_10099F2A0] & 1) == 0)
      {
        v263 = v161;
        v166[qword_10099F298] = *(v160 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory);
        sub_10039DEFC();
        swift_unknownObjectWeakAssign();
        v171 = v271;
        v172 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v173 = v166;
        sub_10056A2D0(v172, v174);

        v175 = *(v171 + v160);
        v176 = v173;
        sub_10076B84C();
        sub_10076BEFC();
        v178 = v177;
        v180 = v179;

        v181 = sub_10076C38C();
        v182 = *(v181 - 8);
        v183 = v215;
        (*(v182 + 16))(v215, v256, v181);
        (*(v182 + 56))(v183, 0, 1, v181);
        v184 = swift_unknownObjectWeakLoadStrong();
        v274 = v176;
        swift_unknownObjectWeakAssign();
        sub_10056A2D0(v184, v185);

        v186 = &v175[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize];
        *v186 = v178;
        *(v186 + 1) = v180;
        v186[16] = 0;
        v187 = swift_unknownObjectWeakLoadStrong();
        if (v187)
        {
          v188 = v187;
          (*((swift_isaMask & *v187) + 0xE8))(v178, v180, 0);
        }

        v189 = v258;
        *&v175[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics] = v258;

        v190 = swift_unknownObjectWeakLoadStrong();
        if (v190)
        {
          v191 = v190;
          v192 = *((swift_isaMask & *v190) + 0xD0);
          swift_bridgeObjectRetain_n();
          v192(v189);
          v183 = v215;
        }

        else
        {
        }

        v193 = v211;
        sub_100016E2C(v183, v211, &unk_1009434A0, &unk_100787B90);
        sub_1005697E4(v193);
        v194 = v257;
        v175[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory] = v257;
        v195 = swift_unknownObjectWeakLoadStrong();
        if (v195)
        {
          v196 = v195;
          (*((swift_isaMask & *v195) + 0x118))(v194);
        }

        v197 = swift_unknownObjectWeakLoadStrong();
        if (v197)
        {
          v198 = v197;
          v199 = swift_unknownObjectWeakLoadStrong();
          (*((swift_isaMask & *v198) + 0x150))(v199, *v186, *(v186 + 1), v186[16], v258, v183, v194);
        }

        [v175 setNeedsLayout];
        v200 = v274;

        sub_10000CFBC(v183, &unk_1009434A0, &unk_100787B90);
        sub_100760C4C();
        sub_10076FC1C();
        sub_10033CF0C(&qword_10094F550, type metadata accessor for TodayCardVideoView, &unk_1007B40F8);
        sub_100760B8C();
        [*(v271 + v160) setHidden:0];
        [*(v160 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView) setHidden:1];

        *(v160 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) = 1;
        goto LABEL_60;
      }
    }

LABEL_60:
    v158 = v275;
  }

LABEL_61:
  v201 = *&v158[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v201)
  {
    v202 = *&v201[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView];
    v203 = v201;
    [v202 setHidden:1];
    [*&v203[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView] setHidden:0];
  }

  v204 = swift_unknownObjectWeakLoadStrong();
  v205 = v269;
  v206 = v264;
  if (v204)
  {
    *(v204 + qword_1009602C8 + 8) = &off_100891650;
    v207 = v204;
    swift_unknownObjectWeakAssign();
  }

  sub_10033AD68();

  (*(v254 + 8))(v270, v255);
  v208 = v268;
  v206(v272, v268);
  return (v206)(v205, v208);
}

void (*sub_1003395DC(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100339650;
}

void sub_100339650(id *a1, char a2)
{
  v7 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v7;
    sub_10056A2D0(Strong, v6);

    Strong = v5;
  }

  else
  {
    sub_10056A2D0(Strong, v4);
  }
}

void sub_1003396F8()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_10014CF98(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton] = v7;
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

void sub_100339800()
{
  v0 = sub_10076688C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007668CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[qword_1009602F0];
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
      sub_1005EFAB8(v7, v3);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }
  }
}

uint64_t sub_100339A9C()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099E768);
  sub_10000A61C(v0, qword_10099E768);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100339C00(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  v29 = a1;
  sub_1007639FC();
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0D78);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = sub_10076D9AC();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  sub_10076D9BC();
  v25 = v3[1];
  v25(v5, v2);
  sub_100763A2C();
  if (qword_100940A98 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v6, qword_1009A0DD8);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_10000DB7C(v32);
  v15 = v28;
  v28(v14, v5, v2);
  sub_10076D9BC();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  sub_100763ABC();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v32);
  v15(v18, v5, v2);
  sub_10076D9BC();
  v16(v5, v2);
  sub_100763A3C();
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_10000A61C(v24, qword_1009A0CD0);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v32);
  v28(v21, v5, v2);
  sub_10076D9BC();
  v16(v5, v2);
  sub_100763ACC();
  return sub_100763A1C();
}

char *sub_10033A0F4(double a1, double a2, double a3, double a4)
{
  v29[1] = swift_getObjectType();
  v9 = sub_10075FEEC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView;
  type metadata accessor for StoryCardMediaView(0);
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror] = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer;
  v15 = type metadata accessor for TodayCardInfoLayerView(0);
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton] = 0;
  v16 = type metadata accessor for StoryCardCollectionViewCell(0);
  v31.receiver = v4;
  v31.super_class = v16;
  v17 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  v19 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView;
  [v18 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView]];

  v20 = [v17 contentView];
  v21 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer;
  [v20 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer]];

  *&v17[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = 0x4034000000000000;
  (*(v10 + 104))(v12, enum case for CornerStyle.continuous(_:), v9);
  if (v17[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v22 = 3;
  }

  else
  {
    v22 = -1;
  }

  sub_10027608C(v12, v22, 20.0);
  (*(v10 + 8))(v12, v9);
  v23 = *&v17[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v23)
  {
    v24 = v23;
    [v24 _setContinuousCornerRadius:20.0];
    v25 = [v24 layer];
    [v25 setMaskedCorners:sub_1007704FC()];
  }

  v30.receiver = *&v17[v21];
  v30.super_class = v15;
  objc_msgSendSuper2(&v30, "_setContinuousCornerRadius:", 20.0);
  sub_10030DF18();
  [v17 setAccessibilityIgnoresInvertColors:1];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100783DD0;
  *(v26 + 32) = sub_10076E88C();
  *(v26 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  sub_100016F40(0, &qword_100944E30, UITraitCollection_ptr);
  sub_10077075C();
  sub_100770C6C();
  swift_unknownObjectRelease();

  sub_1003DCA00();
  v27 = *(*&v17[v19] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView);
  sub_10039431C(v17, &off_100891668);

  return v17;
}

void sub_10033A568(char a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground) == (a1 & 1))
  {
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground))
  {
    v3 = 3;
  }

  else
  {
    v3 = -1;
  }

  v4 = v1;
  sub_100276264(v3);
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
  if (*(v4 + v2) == 1)
  {
    if (!v5)
    {
      return;
    }

    v6 = *&v5[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView];
    v7 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring);
    *(v6 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring) = 1;
    if (v7)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = swift_unknownObjectWeakLoadStrong();
    v22 = v5;
    sub_1002837C8(Strong);
    swift_unknownObjectWeakAssign();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      if (v9)
      {
        type metadata accessor for VideoView(0);
        v12 = v9;
        v13 = sub_100770EEC();

        if (v13)
        {

          v14 = Strong;
          v9 = v12;
LABEL_28:

          v21 = v9;
          goto LABEL_29;
        }
      }

      else
      {
      }

LABEL_24:
      sub_100283DF4();

      v14 = Strong;
      goto LABEL_28;
    }

    if (v9)
    {
      goto LABEL_24;
    }

    v9 = Strong;
LABEL_27:
    v14 = v22;
    goto LABEL_28;
  }

  if (!v5)
  {
    return;
  }

  v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView];
  v16 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring);
  *(v15 + OBJC_IVAR____TtC20ProductPageExtension24RevealingVideoMirrorView_isMirroring) = 0;
  if (v16 != 1)
  {
    return;
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  v22 = v5;
  sub_1002837C8(0);
  swift_unknownObjectWeakAssign();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    if (v9)
    {
      type metadata accessor for VideoView(0);
      v19 = v9;
      v20 = sub_100770EEC();

      if (v20)
      {
        v9 = v19;
        goto LABEL_27;
      }
    }

    else
    {
    }

LABEL_26:
    sub_100283DF4();
    goto LABEL_27;
  }

  if (v9)
  {
    goto LABEL_26;
  }

  v21 = v22;
LABEL_29:
}

void sub_10033A7EC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isTransitioning) = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_10030E334();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  v3 = *(v0 + v1);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isTransitioning) = v3;
  *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0xC8))(v3);
  }
}

void sub_10033A910(char a1)
{
  v2 = a1 & 1;
  v3 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled] != v2)
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
        v26 = sub_10076C7FC();
        sub_100761BFC();
        sub_10000A5D4(&qword_100945700, &qword_100787BA0);
        if (swift_dynamicCast())
        {
          sub_100012498(v24, v27);
          sub_10000CF78(v27, v28);
          v14 = [v23 traitCollection];
          v15 = sub_1007684EC();

          if (v15)
          {
            v16 = v23;
            if (v23[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
            {
              v17 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
            }

            else
            {
              v17 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
            }

            v18 = v23[*v17];
            if (v18 != 7)
            {
              v19 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
              swift_beginAccess();
              sub_100016E2C(&v16[v19], v5, &unk_1009434A0, &unk_100787B90);
              if ((*(v7 + 48))(v5, 1, v6) == 1)
              {

                sub_10000CFBC(v5, &unk_1009434A0, &unk_100787B90);
                goto LABEL_12;
              }

              (*(v7 + 32))(v9, v5, v6);
              sub_10000CF78(v27, v28);
              v20 = sub_1007684CC();
              if (v20)
              {
                v21 = v20;
                if (([v23 isHidden] & 1) == 0)
                {
                  sub_10033742C(v15, v21, v13, v18, v9, v11);

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
          sub_10000CD74(v27);
          return;
        }

        v25 = 0;
        memset(v24, 0, sizeof(v24));
        sub_10000CFBC(v24, &qword_1009456F8, &unk_1007AB1E0);
      }

      else
      {
      }
    }
  }
}

void sub_10033AD68()
{
  v1 = v0;
  v2 = sub_100762EDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_1005EC3F0() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton))
  {
    sub_1003396F8();
    v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_1009602F0;
      v12 = *&v25[qword_1009602F0];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_10014CC44(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          sub_10076055C();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_1005EC3F0() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_10033C7CC;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10009AEDC;
        aBlock[3] = &unk_100891720;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

void sub_10033B118()
{
  v1 = v0;
  v2 = sub_100762EDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_1005EC3F0() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton))
  {
    sub_10055177C();
    v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_1009602F0;
      v12 = *&v25[qword_1009602F0];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_10014CC44(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          sub_10076055C();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_1005EC3F0() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_10033CF64;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10009AEDC;
        aBlock[3] = &unk_100891770;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

id sub_10033B4D8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_10076C38C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoryCardCollectionViewCell(0);
  v40.receiver = v0;
  v40.super_class = v9;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  sub_100335DC8();
  if (v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] == 1 && *(*&v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay))
  {
    v10 = [v0 traitCollection];
    if (qword_100941428 != -1)
    {
      swift_once();
    }

    sub_100587DD0(v10, &xmmword_1009A2D20, 1);
    sub_10077071C();
    sub_1007704EC();
    sub_10077071C();
    sub_1007704EC();
  }

  else
  {
    v11 = [v0 traitCollection];
    v12 = sub_10077071C();

    if (v12)
    {
      v13 = v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      v14 = v1[*v13];
      if (v14 != 7)
      {
        v15 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_100016E2C(&v1[v15], v4, &unk_1009434A0, &unk_100787B90);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_10000CFBC(v4, &unk_1009434A0, &unk_100787B90);
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          [v1 bounds];
          CGRectGetHeight(v43);
          v16 = [v1 traitCollection];
          v41.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v41.value._rawValue = 0;
          isa = sub_1007706DC(v41, v42).super.isa;

          sub_1005DE2F4(v14, v8, isa);
          (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  [v1 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1007704EC();
  [v18 setFrame:{sub_100102A30(v20, v22, v24, v26, v27, v28)}];
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
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

  v35 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton];
  if (v35)
  {
    v36 = v35;
    [v1 bounds];
    [v36 setFrame:{CGRectGetMaxX(v49) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
  [v1 bounds];
  return [v37 setFrame:?];
}

id sub_10033BA5C()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StoryCardCollectionViewCell(0);
  objc_msgSendSuper2(&v5, "prepareForReuse");
  swift_weakAssign();
  swift_weakAssign();
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton] = 0;
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  sub_1002767A0();
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v3)
  {
    [*(*(v3 + OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView) + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView) setImage:0];
  }

  return sub_100310D58();
}

uint64_t sub_10033BB90(void *a1)
{
  sub_10000CF78(a1, a1[3]);
  v2 = sub_10076E36C();
  if (sub_10077086C())
  {
    UIContentSizeCategoryExtraExtraExtraLarge;
  }

  sub_10008B8A4(a1, a1[3]);
  return sub_10076E37C();
}

uint64_t sub_10033BCE8()
{
  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100783DD0;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
  *(v1 + 32) = v2;
  v4 = (v3 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay);
  if (*v4 && (v5 = v4[1], ObjectType = swift_getObjectType(), v7 = *(v5 + 144), swift_unknownObjectRetain(), v8 = v7(ObjectType, v5), swift_unknownObjectRelease(), v8))
  {
    v9 = v8;
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  sub_1000F94EC(v9);
  return v1;
}

void sub_10033BEB4()
{
  swift_weakDestroy();
  swift_weakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_muteButton);
}

id sub_10033BF34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StoryCardCollectionViewCell(uint64_t a1)
{
  result = qword_100952D38;
  if (!qword_100952D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033C0C8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(Strong, v2);
}

uint64_t (*sub_10033C158(uint64_t **a1))()
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
  v2[4] = sub_1003395DC(v2);
  return sub_100019A4C;
}

uint64_t sub_10033C1F0(uint64_t result, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_10033C260(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double sub_10033C2AC(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t sub_10033C36C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10033C3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10033C42C(uint64_t *a1, uint64_t a2))()
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
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10033C4C8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v5 = v2;
  v6 = sub_100770EEC();

  return v6 & 1;
}

void sub_10033C570(uint64_t a1)
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

uint64_t sub_10033C66C(uint64_t a1)
{
  result = sub_10033CF0C(&qword_100952D50, type metadata accessor for StoryCardCollectionViewCell, &unk_1007A178C);
  *(a1 + 8) = result;
  return result;
}

id sub_10033C754(void *a1)
{
  sub_100335DC8();

  return [a1 setNeedsLayout];
}

uint64_t sub_10033C794()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10033C7D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10033C7F0()
{
  v1 = v0;
  [v0 setNeedsLayout];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
  v3 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v5 = v1[*v4];
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory) = v5;
  if (v5 != 7)
  {
    v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer);
    v6[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] = v5;
    if (v5 == 4)
    {
      v7 = v6[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    [v6 setHidden:v7 & 1];
    *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView) + qword_10094D6A8) = v5;
    sub_1001EDB98();
  }

  if (v1[v3])
  {
    v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(*&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_sizeCategory) = v1[*v8];
  sub_100275DD8();
}

id sub_10033C928()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003DFB08();
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_infoLayer];
  v7 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v8 = v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v9 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isExpanded;
  v6[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isExpanded] = v8;
  [v6 setUserInteractionEnabled:?];
  *(*&v6[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer] + OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isExpanded) = v6[v9];
  [v6 setNeedsLayout];
  [v6 setNeedsDisplay];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  v11 = v1[v7];
  v12 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded;
  *(v10 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded) = v11;
  v13 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView);
  v13[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded] = v11;
  [v13 setNeedsLayout];
  *(*(v10 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView) + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded) = *(v10 + v12);
  sub_10056970C();
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
  sub_10030DF18();
  if (v1[v7])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 20.0;
  }

  *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = v16;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  if (v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v17 = 3;
  }

  else
  {
    v17 = -1;
  }

  sub_10027608C(v5, v17, v16);
  (*(v3 + 8))(v5, v2);
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v18)
  {
    v19 = v18;
    [v19 _setContinuousCornerRadius:v16];
    v20 = [v19 layer];
    [v20 setMaskedCorners:sub_1007704FC()];
  }

  sub_100335DC8();
  sub_1003DCA00();
  sub_10033AD68();
  return [v1 setNeedsLayout];
}

uint64_t sub_10033CC24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10033CC5C()
{
  v1 = sub_10075DDBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

void sub_10033CDCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_10075DDBC() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_10076C38C() - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  sub_100394D18(a1, *(v4 + v11), *(v4 + v11 + 8), a2, a3, a4, *(v4 + 16), v4 + v10, *(v4 + v12), v4 + v14, *(v4 + v14 + *(v13 + 64)));
}

uint64_t sub_10033CF0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ProductRatingsView(uint64_t a1)
{
  result = qword_100952DB0;
  if (!qword_100952DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10033D018()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940C50 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D3DC();
  v30 = sub_10000A61C(v4, qword_1009A12E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v31 = v5 + 16;
  v6(v3, v30, v4);
  v23 = enum case for FontSource.useCase(_:);
  v28 = v1[13];
  v28(v3);
  v29 = sub_10076D9AC();
  *(&v43 + 1) = v29;
  *v44 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v42);
  *(&v37 + 1) = v0;
  *&v38[0] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(&v36);
  v8 = v1[2];
  v8(v7, v3, v0);
  sub_10076D9BC();
  v22 = v1[1];
  v22(v3, v0);
  *&v44[8] = xmmword_10079C110;
  v9 = v30;
  v24 = v4;
  v30 = v6;
  v6(v3, v9, v4);
  v10 = v23;
  (v28)(v3, v23, v0);
  *(&v37 + 1) = v29;
  *&v38[0] = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v36);
  *(&v34 + 1) = v0;
  *&v35[0] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(&v33);
  v25 = v8;
  v26 = v1 + 2;
  v8(v11, v3, v0);
  v12 = v22;
  sub_10076D9BC();
  v27 = v1 + 1;
  v12(v3, v0);
  if (qword_100940C60 != -1)
  {
    swift_once();
  }

  v13 = v24;
  v14 = sub_10000A61C(v24, qword_1009A1318);
  v30(v3, v14, v13);
  v15 = v28;
  (v28)(v3, v10, v0);
  v16 = v10;
  if (qword_10093FF60 != -1)
  {
    swift_once();
  }

  v17 = qword_10099E8A0;
  *&v39 = sub_100767EAC();
  *(&v39 + 1) = sub_10033E8BC(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  sub_10000DB7C(v38 + 1);
  v18 = v17;
  sub_100767E9C();
  v40 = xmmword_10079C120;
  v41 = 0x4069C00000000000;
  if (qword_100940C58 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v13, qword_1009A1300);
  v30(v3, v19, v13);
  (v15)(v3, v16, v0);
  *(&v34 + 1) = v29;
  *&v35[0] = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v33);
  v32[3] = v0;
  v32[4] = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v32);
  v25(v20, v3, v0);
  sub_10076D9BC();
  v12(v3, v0);
  *(v35 + 8) = xmmword_10079C130;
  xmmword_10099E7A8 = v42;
  unk_10099E7B8 = v43;
  xmmword_10099E7C8 = *v44;
  unk_10099E810 = v38[1];
  unk_10099E820 = v39;
  unk_10099E830 = v40;
  unk_10099E7E0 = v36;
  *(&v35[1] + 1) = 0x4077000000000000;
  qword_10099E7D8 = *&v44[16];
  qword_10099E840 = v41;
  unk_10099E7F0 = v37;
  unk_10099E800 = v38[0];
  xmmword_10099E868 = v35[0];
  unk_10099E878 = v35[1];
  result = *&v34;
  xmmword_10099E848 = v33;
  unk_10099E858 = v34;
  return result;
}

uint64_t sub_10033D590()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000DB18(v7, qword_10099E888);
  sub_10000A61C(v7, qword_10099E888);
  if (qword_100940C58 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A1300);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940C50 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A12E8);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDEC();
}

char *sub_10033D7A0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v80 = sub_10076DD3C();
  v10 = *(v80 - 8);
  __chkstk_darwin(v80);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v4[qword_100952DA8] = 0;
  sub_10076D4BC();
  *&v4[qword_100952D80] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = type metadata accessor for RatingView();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating] = 0;
  *&v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = 0;
  v16 = &v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
  *v16 = 0;
  v16[8] = 1;
  *&v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_10093F570 != -1)
  {
    swift_once();
  }

  v17 = qword_100944D30;
  *&v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = qword_100944D30;
  v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize] = 0;
  *v16 = 0;
  v16[8] = 1;
  v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase] = 1;
  v18 = type metadata accessor for StarRow();
  v19 = objc_allocWithZone(v18);
  v20 = v17;
  *&v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView] = sub_10006446C(5, 1, 0, 0, 1, 0, 1);
  v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = 0;
  v21 = objc_allocWithZone(v18);
  *&v15[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView] = sub_10006446C(5, 0, 0, 0, 1, 0, 1);
  v83.receiver = v15;
  v83.super_class = v14;
  v22 = objc_msgSendSuper2(&v83, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000620A4();
  v23 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView;
  v24 = *&v22[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
  v25 = *&v24[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  *&v24[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = *&v22[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating];
  v26 = v24;
  sub_100062B94(v25);

  if (*&v22[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView])
  {
    [v22 addSubview:?];
  }

  [v22 addSubview:{*&v22[v23], v80}];

  *&v5[qword_100952D88] = v22;
  sub_10076DD2C();
  if (qword_100940C60 != -1)
  {
    swift_once();
  }

  v27 = sub_10076D3DC();
  sub_10000A61C(v27, qword_1009A1318);
  sub_10076DCFC();
  v28 = *(v10 + 8);
  v29 = v80;
  v28(v12, v80);
  *&v5[qword_100952D90] = sub_10076D4AC();
  sub_10076DD2C();
  sub_10076DCFC();
  v28(v12, v29);
  *&v5[qword_100952D98] = sub_10076D4AC();
  *&v5[qword_100952DA0] = [objc_allocWithZone(type metadata accessor for ProductRatingsHistogramView()) init];
  v82.receiver = v5;
  v82.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v82, "initWithFrame:", a1, a2, a3, a4);
  v31 = qword_100952D80;
  v32 = *&v30[qword_100952D80];
  sub_1000325F0();
  v33 = v30;
  v34 = v32;
  v35 = sub_100770CFC();
  [v34 setTextColor:v35];

  v36 = *&v30[v31];
  v37 = v33;
  [v37 addSubview:v36];
  v38 = qword_100952D88;
  v39 = *&v37[qword_100952D88];
  v40 = sub_100770CFC();
  v41 = *&v39[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor];
  *&v39[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = v40;
  v42 = v40;
  if ((sub_100770EEC() & 1) == 0)
  {
    sub_1000620A4();
  }

  v43 = *&v37[v38];
  v44 = sub_100770D0C();
  v45 = sub_100770CFC();
  v46 = sub_100770D0C();
  v47.super.isa = sub_100770CFC();
  v48.super.isa = v44;
  v49.super.isa = v45;
  v50.super.isa = v46;
  v51.super.isa = sub_100770E3C(v48, v49, v50, v47).super.isa;
  isa = v51.super.isa;
  v53 = *&v43[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor];
  *&v43[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = v51;
  if (v53)
  {
    v54 = v51.super.isa;
    v55 = v53;
    v56 = sub_100770EEC();

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

  sub_1000620A4();
  v54 = isa;
LABEL_14:

  v58 = *&v37[v38];
  v59 = [v37 traitCollection];

  v60 = [v59 accessibilityContrast];
  v61 = v60 == 0;
  v62 = v58[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars];
  v58[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = v61;
  if ((v61 ^ v62))
  {
    v63 = *&v58[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView];
    if (v63)
    {
      v64 = *(v63 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled);
      *(v63 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled) = v61;
      if (((v60 == 0) ^ v64))
      {
        sub_10006363C();
      }
    }
  }

  v65 = qword_10093FF68;
  v66 = *&v37[v38];
  if (v65 != -1)
  {
    swift_once();
  }

  [v66 setMaximumContentSizeCategory:qword_10099E8A8];

  [v37 addSubview:*&v37[v38]];
  v67 = qword_100952D90;
  v68 = qword_10093FF60;
  v69 = *&v37[qword_100952D90];
  if (v68 != -1)
  {
    swift_once();
  }

  v70 = qword_10099E8A0;
  [v69 setMaximumContentSizeCategory:qword_10099E8A0];

  v71 = *&v37[v67];
  v84._object = 0x80000001007E0020;
  v84._countAndFlagsBits = 0xD000000000000012;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  sub_100767D6C(v84, 5, v85);
  v72 = sub_10076FF6C();

  [v71 setText:v72];

  v73 = *&v37[v67];
  v74 = sub_100770D1C();
  [v73 setTextColor:v74];

  [v37 addSubview:*&v37[v67]];
  v75 = qword_100952D98;
  [*&v37[qword_100952D98] setMaximumContentSizeCategory:v70];
  v76 = *&v37[v75];
  v77 = sub_100770D1C();
  [v76 setTextColor:v77];

  [v37 addSubview:*&v37[v75]];
  [v37 addSubview:*&v37[qword_100952DA0]];
  sub_10033E0A0();
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_100784500;
  *(v78 + 32) = sub_10076E59C();
  *(v78 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v78 + 48) = sub_10076E65C();
  *(v78 + 56) = &protocol witness table for UITraitAccessibilityContrast;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v37;
}

void sub_10033E0A0()
{
  v19 = sub_10076D3DC();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076DD3C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  sub_10033E3F8();
  v18[1] = *&v0[qword_100952D80];
  sub_10076DD2C();
  if (qword_10093FF58 != -1)
  {
    swift_once();
  }

  v9 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000A61C(v9, qword_10099E888);
  v20 = v0;
  v10 = v0;
  sub_10075FDCC();

  sub_10076DCFC();
  (*(v1 + 8))(v3, v19);
  (*(v5 + 8))(v7, v4);
  sub_10076D49C();
  v11 = *&v10[qword_100952D88];
  v12 = [v10 traitCollection];
  v13 = [v12 accessibilityContrast];

  v14 = v13 == 0;
  v15 = *(v11 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars);
  *(v11 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars) = v14;
  if (v14 != v15)
  {
    v16 = *(v11 + OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView);
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled);
      *(v16 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_filled) = v14;
      if (((v13 == 0) ^ v17))
      {
        sub_10006363C();
      }
    }
  }
}

void sub_10033E390(uint64_t a1)
{
  *(a1 + qword_100952DA8) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_10033E3F8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007706EC();

  v4 = qword_100952DA8;
  v5 = v1[qword_100952DA8] | v3 ^ 1;
  [*&v1[qword_100952D88] setHidden:v5 & 1];
  [*&v1[qword_100952DA0] setHidden:(v5 & 1) == 0];
  v6 = *&v1[qword_100952D90];
  v7 = (v1[v4] & v3 & 1) == 0;

  return [v6 setHidden:v7];
}

id sub_10033E4C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (qword_10093FF50 != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for ProductRatingsLayout;
  a1[4] = sub_1000837C8();
  v4 = swift_allocObject();
  *a1 = v4;
  sub_100083890(&xmmword_10099E7A8, v4 + 16);
  v5 = *(v2 + qword_100952D80);
  v6 = sub_10076D4BC();
  *(v4 + 264) = v6;
  *(v4 + 272) = &protocol witness table for UILabel;
  *(v4 + 240) = v5;
  type metadata accessor for RatingView();
  v7 = v5;
  sub_10076D2DC();
  v8 = *(v2 + qword_100952D90);
  *(v4 + 344) = v6;
  *(v4 + 352) = &protocol witness table for UILabel;
  *(v4 + 320) = v8;
  v9 = *(v2 + qword_100952D98);
  *(v4 + 384) = v6;
  *(v4 + 392) = &protocol witness table for UILabel;
  *(v4 + 360) = v9;
  v13 = *(v2 + qword_100952DA0);
  *(v4 + 424) = type metadata accessor for ProductRatingsHistogramView();
  *(v4 + 432) = sub_10033E8BC(&qword_100952E18, type metadata accessor for ProductRatingsHistogramView, &unk_1007883D4);
  *(v4 + 400) = v13;
  *(v4 + 440) = *(v2 + qword_100952DA8);
  v10 = v8;
  v11 = v9;

  return v13;
}

void sub_10033E6C4()
{
  v1 = *(v0 + qword_100952DA0);
}

void sub_10033E734(uint64_t a1)
{
  v2 = *(a1 + qword_100952DA0);
}

unint64_t sub_10033E7CC()
{
  result = qword_100952E00;
  if (!qword_100952E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100952E00);
  }

  return result;
}

uint64_t sub_10033E844()
{
  sub_10000CD74(v0 + 2);
  sub_10000CD74(v0 + 9);
  sub_10000CD74(v0 + 14);
  sub_10000CD74(v0 + 22);
  sub_10000CD74(v0 + 30);
  sub_10000CD74(v0 + 35);
  sub_10000CD74(v0 + 40);
  sub_10000CD74(v0 + 45);
  sub_10000CD74(v0 + 50);

  return _swift_deallocObject(v0, 441, 7);
}

uint64_t sub_10033E8BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10033EA4C()
{
  v1 = v0;
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = v11;
    v13 = v9;
    v14 = v7;
    v15 = v5;
  }

  else
  {
    [v0 bounds];
  }

  CGRectGetWidth(*&v15);
  [v1 bounds];
  CGRectGetWidth(v26);
  [v1 bounds];
  CGRectGetWidth(v27);
  [v1 bounds];
  CGRectGetHeight(v28);
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_queryContext];
  sub_10076D9CC();
  v18 = v17;
  v20 = v19;
  [v1 bounds];
  v22 = (v21 - v18) * 0.5;
  [v1 safeAreaInsets];

  return [v16 setFrame:{v22, v23 + 16.0, v18, v20}];
}

uint64_t sub_10033ECF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultsContextCardView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10033ED54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_10076E71C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchResultsContextCardView.Style(0);
  __chkstk_darwin(v11);
  v14 = (v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_queryContext;
  v43 = v8;
  if (qword_10093F770 != -1)
  {
    v38 = v12;
    swift_once();
    v12 = v38;
    v8 = v43;
  }

  v16 = sub_10000A61C(v12, qword_10099CFD0);
  sub_10033ECF0(v16, v14);
  v17 = objc_allocWithZone(type metadata accessor for SearchResultsContextCardView(0));
  *&v4[v15] = sub_1000F1E60(v14);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_navigationBarMargins] = 0x4034000000000000;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_queryContextTopPadding] = 0x4030000000000000;
  sub_100016F40(0, &qword_100947DB0, UIContentUnavailableView_ptr);
  v18 = *(v8 + 16);
  v41 = v7;
  v42 = a1;
  v18(v10, a1, v7);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_emptyReason] = sub_10077094C();
  v45.receiver = v4;
  v45.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_queryContext;
  v21 = *&v19[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_queryContext];
  v22 = v19;
  v23 = v21;
  v24 = sub_100767BBC();
  v25 = sub_100767BAC();
  if (v25)
  {
    v26 = v25;

    v27 = sub_10076B8EC();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v30 = 0xE000000000000000;
    if (v28)
    {
      v30 = v28;
    }

    v39[1] = v30;
    v39[2] = v29;
    v31 = sub_10076B8FC();
    v40 = v20;
    if (v31)
    {
      v32 = v31;
      if (sub_10076BE0C())
      {
        sub_10076044C();
      }

      else if (sub_10076BDFC())
      {
        sub_1005A6008(v32, 0);
      }
    }

    sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
    v34 = swift_allocObject();
    *(v34 + 16) = v44;
    *(v34 + 24) = v26;
    v33 = sub_100770F1C();
    v20 = v40;
  }

  else
  {
    v33 = 0;
  }

  sub_1000F2654(v24, v33);

  v35 = *&v22[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_emptyReason];
  v36 = v22;
  [v36 addSubview:v35];
  [v36 addSubview:*&v19[v20]];
  [v36 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  (*(v43 + 8))(v42, v41);
  return v36;
}

uint64_t sub_10033F178()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10033F1B8(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_10076664C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_1007665CC();
  sub_10033FA08(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v15 = sub_10077124C();
  (*(v11 + 8))(v13, v10);
  type metadata accessor for ProductReviewView();
  swift_getObjectType();
  sub_100372F00(v14, v15 & 1, v15 & 1, a7, a2);
}

id sub_10033F318(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_10076664C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_1007665CC();
  sub_10033FA08(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v15 = sub_10077124C();
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_1003720DC(v14, v16 | v15 & 1, 0, a6, a3);
  return [v6 setNeedsLayout];
}

uint64_t sub_10033F544(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v3 = sub_10077164C();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076B5BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_100942C28, &unk_1007898E0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v29 - v12;
  v14 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v14 - 8);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v29 - v19;
  (*(v7 + 104))(v29 - v19, enum case for Shelf.ContentType.reviews(_:), v6, v18);
  (*(v7 + 56))(v20, 0, 1, v6);
  v21 = *(v11 + 56);
  sub_10002ABBC(a1, v13);
  sub_10002ABBC(v20, &v13[v21]);
  v22 = *(v7 + 48);
  if (v22(v13, 1, v6) != 1)
  {
    sub_10002ABBC(v13, v16);
    if (v22(&v13[v21], 1, v6) != 1)
    {
      (*(v7 + 32))(v9, &v13[v21], v6);
      sub_10033FA08(&qword_100942C48, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
      v24 = sub_10076FF1C();
      v25 = *(v7 + 8);
      v25(v9, v6);
      sub_10000CFBC(v20, &unk_1009568A0, &qword_100784890);
      v25(v16, v6);
      sub_10000CFBC(v13, &unk_1009568A0, &qword_100784890);
      if (v24)
      {
        goto LABEL_9;
      }

      return 0;
    }

    sub_10000CFBC(v20, &unk_1009568A0, &qword_100784890);
    (*(v7 + 8))(v16, v6);
LABEL_6:
    sub_10000CFBC(v13, &qword_100942C28, &unk_1007898E0);
    return 0;
  }

  sub_10000CFBC(v20, &unk_1009568A0, &qword_100784890);
  if (v22(&v13[v21], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_10000CFBC(v13, &unk_1009568A0, &qword_100784890);
LABEL_9:
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v26 = sub_10076D9AC();
  sub_10000A61C(v26, qword_1009A2350);
  sub_10076D17C();
  sub_10076D40C();
  v28 = v27;
  (*(v30 + 8))(v5, v31);
  return v28;
}

uint64_t sub_10033FA08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10033FA50(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_10077164C();
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
    v20 = sub_10077071C();
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
    sub_100770A1C();
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
    sub_10076D9CC();
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
    if (*&v48[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView])
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
  sub_1007709CC();
  result = [v28 setFrame:?];
  if (v48)
  {
    sub_1007709CC();
    return [v48 setFrame:?];
  }

  return result;
}

__n128 sub_10033FF94(uint64_t a1, uint64_t a2)
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

uint64_t sub_10033FFB8(uint64_t a1, int a2)
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

uint64_t sub_100340000(uint64_t result, int a2, int a3)
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

__n128 sub_100340070(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10034008C(uint64_t a1, int a2)
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

uint64_t sub_1003400AC(uint64_t result, int a2, int a3)
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

char *sub_1003400F4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v53 = sub_10076771C();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v51 = v47 - v10;
  v11 = sub_10076D1AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_100940CD0 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  v61 = sub_10000A61C(v15, qword_1009A1468);
  v50 = *(v15 - 8);
  v16 = v50 + 16;
  v17 = *(v50 + 16);
  v17(v14, v61, v15);
  v49 = v16;
  v57 = v17;
  v60 = enum case for FontSource.useCase(_:);
  v59 = v12[13];
  v59(v14);
  v47[2] = v12 + 13;
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v64);
  v58 = v12[2];
  v58(v18, v14, v11);
  v47[1] = v12 + 2;
  sub_10076D9BC();
  v56 = v12[1];
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_scalableHeight;
  v19 = v61;
  v48 = v15;
  v17(v14, v61, v15);
  v20 = v60;
  v21 = v59;
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v64);
  v23 = v58;
  v58(v22, v14, v11);
  sub_10076D9BC();
  v24 = v56;
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_scalableHorizontalPadding;
  v25 = v19;
  v26 = v57;
  v57(v14, v25, v15);
  v21(v14, v20, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v64);
  v23(v27, v14, v11);
  sub_10076D9BC();
  v24(v14, v11);
  v28 = v61;
  v29 = v48;
  v26(v14, v61, v48);
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v64);
  v58(v30, v14, v11);
  v31 = v62;
  sub_10076D9BC();
  v56(v14, v11);
  v32 = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel;
  v33 = v51;
  v57(v51, v28, v29);
  (*(v50 + 56))(v33, 0, 1, v29);
  (*(v52 + 104))(v54, enum case for DirectionalTextAlignment.none(_:), v53);
  v34 = objc_allocWithZone(sub_1007626BC());
  *&v31[v32] = sub_1007626AC();
  v63.receiver = v31;
  v63.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v63, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v39 = v35;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v40 = objc_opt_self();
  v41 = [v40 clearColor];
  [v39 setBackgroundColor:v41];

  v42 = [v40 systemGrayColor];
  [v39 setTintColor:v42];

  v43 = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel;
  v44 = *&v39[OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel];
  v45 = [v39 tintColor];

  [v44 setTextColor:v45];
  [*&v39[v43] setTextAlignment:1];
  [v39 addSubview:*&v39[v43]];

  return v39;
}

void sub_100340904(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10077164C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v5;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "drawRect:", a1, a2, a3, a4);
  sub_10076D17C();
  sub_10076D9AC();
  sub_10076D40C();
  v16 = v15;
  v17 = *(v12 + 8);
  v17(v14, v11);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v30 = CGRectInset(v29, v16 * 0.5, v16 * 0.5);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v22 = objc_opt_self();
  sub_10076D17C();
  sub_10076D40C();
  v24 = v23;
  v17(v14, v11);
  v25 = [v22 _bezierPathWithArcRoundedRect:x cornerRadius:{y, width, height, v24}];
  [v25 setLineWidth:v16];
  v26 = [v5 tintColor];
  if (v26)
  {
    v27 = v26;
    [v26 setStroke];

    [v25 stroke];
  }

  else
  {
    __break(1u);
  }
}

double sub_100340BFC(double a1)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D17C();
  sub_10076D9AC();
  sub_10076D40C();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel);
  sub_10076D17C();
  sub_10076D40C();
  v12 = v11;
  v9(v6, v3);
  v13 = fmax(v12, 1.0);
  sub_10076D17C();
  sub_10076D40C();
  v15 = v14;
  v9(v6, v3);
  v16 = fmax(v15, 1.0);
  [v10 sizeThatFits:{a1 - (v13 + v13), v8 - (v16 + v16)}];
  v18 = v17;
  sub_10076D17C();
  sub_10076D40C();
  v20 = v19;
  v9(v6, v3);
  sub_10076D17C();
  sub_10076D40C();
  v22 = v21;
  v9(v6, v3);
  return v18 + v20 + v20 + fmax(v22, 1.0) * 4.0;
}

uint64_t type metadata accessor for AgeRatingBadgeView(uint64_t a1)
{
  result = qword_100952F08;
  if (!qword_100952F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003410E0(uint64_t a1)
{
  result = sub_10076D9AC();
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

void sub_100341184()
{
  v0 = sub_10076771C();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v33 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v2 - 8);
  v30 = v28 - v3;
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_100940CD0 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1468);
  v29 = *(v8 - 8);
  v10 = v29 + 16;
  v39 = *(v29 + 16);
  v40 = v8;
  v34 = v9;
  v39(v7, v9, v8);
  v28[1] = v10;
  v38 = enum case for FontSource.useCase(_:);
  v37 = v5[13];
  v37(v7);
  v41 = v5 + 13;
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v43);
  v36 = v5[2];
  v36(v11, v7, v4);
  sub_10076D9BC();
  v35 = v5[1];
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_scalableHeight;
  v12 = v9;
  v13 = v39;
  v39(v7, v12, v8);
  v14 = v38;
  v15 = v37;
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v43);
  v17 = v36;
  v36(v16, v7, v4);
  sub_10076D9BC();
  v18 = v35;
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_scalableHorizontalPadding;
  v13(v7, v34, v40);
  v15(v7, v14, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v19 = sub_10000DB7C(v43);
  v17(v19, v7, v4);
  v20 = v42;
  sub_10076D9BC();
  v18(v7, v4);
  v21 = v34;
  v23 = v39;
  v22 = v40;
  v39(v7, v34, v40);
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v43);
  v36(v24, v7, v4);
  sub_10076D9BC();
  v35(v7, v4);
  v25 = OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel;
  v26 = v30;
  v23(v30, v21, v22);
  (*(v29 + 56))(v26, 0, 1, v22);
  (*(v31 + 104))(v33, enum case for DirectionalTextAlignment.none(_:), v32);
  v27 = objc_allocWithZone(sub_1007626BC());
  *(v20 + v25) = sub_1007626AC();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100341714()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10099E8C0);
  sub_10000A61C(v4, qword_10099E8C0);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}