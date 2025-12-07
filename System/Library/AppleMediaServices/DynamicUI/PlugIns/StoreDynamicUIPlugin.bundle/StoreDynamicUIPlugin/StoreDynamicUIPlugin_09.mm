void sub_E90D4(double a1, double a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize];
  if (*v4 != a1 || v4[1] != a2)
  {
    v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView;
    [*&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView] removeFromSuperview];
    v7 = objc_allocWithZone(sub_139CF4());
    v8 = sub_139CE4();
    v9 = *&v3[v6];
    *&v3[v6] = v8;
    v10 = v8;

    [v3 addSubview:v10];

    sub_EA054();
  }
}

void sub_E91B8(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize);
  v4 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize);
  v5 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_E90D4(v4, v5);
}

uint64_t sub_E91D8()
{
  sub_13A314();
  sub_9E94();
  v24 = v2;
  v25 = v1;
  __chkstk_darwin(v1);
  sub_9EC0();
  v5 = v4 - v3;
  v6 = type metadata accessor for ServiceDetailView();
  v40.receiver = v0;
  v40.super_class = v6;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  sub_E9F6C(v35);
  v7 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView];
  v33 = sub_139CF4();
  v34 = protocol witness table for UIView;
  *&v32 = v7;
  v8 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel];
  v30 = sub_139BB4();
  sub_1D3B8();
  v31 = sub_9A68(v9, v10, &protocol conformance descriptor for DynamicLabel);
  v28 = v31;
  *&v29 = v8;
  v11 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel];
  v27 = v30;
  *&v26 = v11;
  v12 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView];
  if (v12)
  {
    v13 = sub_CACC(0, &qword_1A0728, ASCLockupView_ptr);
    v14 = protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  memcpy(v39, v35, sizeof(v39));
  sub_9414(&v32, v36);
  sub_9414(&v29, &v37);
  sub_9414(&v26, v38);
  v38[5] = v12;
  v38[6] = 0;
  v38[7] = 0;
  v38[8] = v13;
  v38[9] = v14;
  v15 = v12;
  v16 = v7;
  v17 = v8;
  v18 = v11;
  [v0 bounds];
  sub_EB8B8(1, v0, v36, v19, v20, v21, v22);
  sub_13A2E4();
  (*(v24 + 8))(v5, v25);
  return sub_ECDD8(v36);
}

double sub_E9480(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView;
  v8 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView);
  if (v8)
  {
    [v8 sizeThatFits:{a2, a3}];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = (v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupSize);
  *v11 = v9;
  v11[1] = v10;
  sub_E9F6C(__src);
  v12 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView);
  v34 = sub_139CF4();
  v35 = protocol witness table for UIView;
  *&v33 = v12;
  v13 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel);
  v31 = sub_139BB4();
  sub_1D3B8();
  v16 = sub_9A68(v14, v15, &protocol conformance descriptor for DynamicLabel);
  v17 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel);
  v32 = v16;
  v29 = v16;
  *&v30 = v13;
  v28 = v31;
  *&v27 = v17;
  v18 = *(v3 + v7);
  if (v18)
  {
    v19 = sub_CACC(0, &qword_1A0728, ASCLockupView_ptr);
    v20 = protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  memcpy(v40, __src, sizeof(v40));
  sub_9414(&v33, v37);
  sub_9414(&v30, &v38);
  sub_9414(&v27, v39);
  v39[5] = v18;
  v39[6] = 0;
  v39[7] = 0;
  v39[8] = v19;
  v39[9] = v20;
  swift_getObjectType();
  v21 = v18;
  v22 = v12;
  v23 = v13;
  v24 = v17;
  v25 = sub_E759C(0, a1, v37, 0.0, 0.0, a2, a3);
  sub_ECDD8(v37);
  return v25;
}

void sub_E9714(uint64_t a1, uint64_t a2)
{
  sub_1D450();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_1D450();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 2) = v3;
  *(v5 + 3) = v4;
  *(v5 + 4) = v2;
  v6 = &v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_applyCachedArtwork];
  v7 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_applyCachedArtwork];
  v8 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_applyCachedArtwork + 8];
  *v6 = sub_EB8AC;
  v6[1] = v5;

  v9 = v2;
  sub_C9FC(v7, v8);

  v10 = *v6;
  if (*v6)
  {
    v11 = *&v9[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView];
    v12 = sub_17208();
    sub_C9EC(v12, v13);
    v14 = v11;
    v10();
    v15 = sub_17208();
    sub_C9FC(v15, v16);
  }

  v17 = *&v9[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_adamId];
  if (v17)
  {
    v18 = *&v9[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView];
    if (v18)
    {
      sub_CACC(0, &qword_19B808, ASCLockupRequest_ptr);
      v19 = ASCLockupKindApp;
      v20 = ASCLockupContextStandard;
      v21 = v17;
      v22 = v18;
      v23 = sub_E9A3C(v21, v19, v20, 1);
      [v22 setRequest:v23];
    }
  }
}

double sub_E9920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = (*&stru_108.segname[(swift_isaMask & *a1) + 16])(v8, v9);
      v11 = (*(*v8 + 192))(v10);

      if (v11)
      {
        *(a4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupArtwork) = v8;
      }
    }
  }

  return result;
}

id sub_E9A3C(void *a1, void *a2, void *a3, char a4)
{
  v7 = [swift_getObjCClassFromMetadata() _requestWithID:a1 kind:a2 context:a3 includeUnlistedApps:a4 & 1];

  return v7;
}

double sub_E9AB8(uint64_t a1, uint64_t a2)
{
  sub_1D450();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_4B14(a1, v11);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  sub_9414(v11, v5 + 32);
  v6 = &v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner];
  v7 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner];
  v8 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner + 8];
  *v6 = sub_EB858;
  v6[1] = v5;

  v9 = v2;
  sub_C9FC(v7, v8);

  return result;
}

uint64_t sub_E9B8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_139E74();
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_13B834();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v24 = a3;
    v25 = v9;
    sub_139E84();
    sub_13B6B4();
    sub_13B9A4();
    v14 = v26;
    v23 = v11;
    sub_13B9A4();
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v15 = sub_139A14();
    v22 = sub_4910(v15, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    *(&v27 + 1) = type metadata accessor for ServiceDetailView();
    *&v26 = a2;
    v16 = a2;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v26);
    sub_139974();
    sub_1399F4();

    v19 = v25;
    v20 = v23;
    (*(v25 + 16))(v7, v23, v8);
    v21 = sub_4948(&unk_19B7E0, &unk_141F10);
    sub_53A8(v7, 0, 1, v21);
    v26 = 0u;
    v27 = 0u;
    v28 = -1;
    (*(*v14 + 216))(v24, v7, v13, &v26);

    sub_CC68(&v26, &unk_19E330, &qword_144CD0);
    sub_3BDFC(v7);
    return (*(v19 + 8))(v20, v8);
  }

  return result;
}

__n128 sub_E9F6C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize);
  v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize + 8);
  v5 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailTop;
  swift_beginAccess();
  sub_4B14(v1 + v5, a1 + 16);
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_spacingDimension;
  swift_beginAccess();
  sub_4B14(v1 + v6, a1 + 56);
  v7 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentAlignment);
  v8 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupSize;
  v9 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_isLockupFocused);
  v10 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentMaxWidth);
  v11 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentMaxWidth + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 96) = v7;
  result = *(v1 + v8);
  *(a1 + 104) = result;
  *(a1 + 120) = v9;
  *(a1 + 128) = v10;
  *(a1 + 136) = v11;
  return result;
}

void sub_EA054()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView;
  v2 = [*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView) layer];
  v3 = [objc_opt_self() ams_mediaBorder];
  v4 = [v3 CGColor];

  [v2 setBorderColor:v4];
  v5 = [*(v0 + v1) layer];
  [v5 setBorderWidth:1.0];

  v6 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_applyCachedArtwork);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_applyCachedArtwork + 8);
    v8 = *(v0 + v1);
    sub_C9EC(v6, v7);
    v9 = v8;
    v6();
    sub_C9FC(v6, v7);
  }
}

void sub_EA1A8()
{
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_adamId])
  {
    v1 = [objc_allocWithZone(ASCLockupView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v1 setDelegate:v0];
    if (qword_19A090 != -1)
    {
      swift_once();
    }

    [v1 setLockupSize:qword_1B2B78];
    [v0 addSubview:v1];
    v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView];
    *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView] = v1;
  }
}

id sub_EA318(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServiceDetailView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_EA488(void *a1)
{
  v2 = [a1 lockup];
  if (v2)
  {
    v3 = v2;
    v16 = [v2 id];
    v4 = [v3 kind];
    v5 = [v3 metrics];
    v6 = [v3 icon];
    v7 = sub_EB3B4(v3, &selRef_heading);
    v9 = v8;
    v10 = sub_EB3B4(v3, &selRef_ageRating);
    v12 = v11;
    v13 = [v3 offer];
    v14 = objc_allocWithZone(ASCLockup);
    v17 = sub_EB254(v16, v4, v5, v6, v7, v9, 0, 0, v15, 0, 0, v10, v12, v13);
    [a1 setLockup:v17];
  }
}

void sub_EA690()
{
  [v0 setNeedsLayout];
  v1 = [v0 superview];
  [v1 setNeedsLayout];
}

void sub_EA75C(void *a1, uint64_t a2)
{
  v56 = a1;
  v3 = sub_139954();
  __chkstk_darwin(v3 - 8);
  sub_9EC0();
  v55 = v5 - v4;
  v6 = sub_4948(&unk_19EBC0, &unk_1479D0);
  __chkstk_darwin(v6 - 8);
  v53 = &v49 - v7;
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v8 = sub_139A14();
  v58 = sub_4910(v8, qword_1B2B00);
  v9 = sub_4948(&unk_19E010, qword_13F520);
  sub_1399C4();
  v54 = v9;
  *(swift_allocObject() + 16) = xmmword_13E660;
  v57 = type metadata accessor for ServiceDetailView();
  v62 = v57;
  v61[0] = v2;
  v10 = v2;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v61);
  sub_139974();
  swift_getErrorValue();
  v13 = v59;
  v14 = v60;
  v62 = v60;
  v15 = sub_CC08(v61);
  (*(*(v14 - 1) + 16))(v15, v13, v14);
  sub_139984();
  sub_CC68(v61, &unk_1A06F0, &unk_13EF80);
  sub_1399E4();

  v16 = *&v10[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_adamId];
  if (v16)
  {
    v17 = *&v10[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_bundleID + 8];
    if (v17)
    {
      v52 = *&v10[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_bundleID];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = objc_opt_self();
      v20 = v16;

      v21 = [v19 bundleForClass:ObjCClassFromMetadata];
      if (*&v10[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupArtwork])
      {
        v51 = v20;

        v22 = v53;
        sub_1397D4();

        v23 = sub_1397E4();
        if (sub_52E0(v22, 1, v23) == 1)
        {

          sub_CC68(v22, &unk_19EBC0, &unk_1479D0);
        }

        else
        {
          v24 = v21;
          v50 = sub_1397C4();
          v26 = v25;
          (*(*(v23 - 8) + 8))(v22, v23);
          if (v26)
          {
            sub_CACC(0, &unk_1A0710, UIImage_ptr);
            v27 = v24;
            v28 = v26;
            v21 = v24;
            v29 = sub_111044(v50, v28, v24, 0);
            if (v29)
            {
              v30 = v29;

              sub_CACC(0, &qword_1A0708, ASCArtwork_ptr);
              v31 = sub_EAF74(v30, ASCArtworkDecorationRoundedRectPrerendered);

              v20 = v51;
LABEL_23:
              v44 = ASCLockupKindApp;
              v45 = objc_allocWithZone(ASCLockup);
              v46 = v31;
              v47 = v20;
              v48 = sub_EB254(v47, v44, 0, v31, 0, 0, 0, 0, 0.0, 0, 0, 0, 0, 0);
              [v56 setLockup:v48];

              return;
            }
          }

          else
          {

            v21 = v24;
          }
        }

        v20 = v51;
      }

      *(swift_allocObject() + 16) = xmmword_13E650;
      v62 = v57;
      v61[0] = v10;
      v32 = v10;
      v33 = AMSLogKey();
      if (v33)
      {
        v34 = v33;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(v61);
      sub_139944();
      v63._countAndFlagsBits = 0xD000000000000028;
      v63._object = 0x8000000000151DA0;
      sub_139934(v63);
      v62 = sub_CACC(0, &qword_19B790, ASCAdamID_ptr);
      v61[0] = v20;
      v35 = v20;
      sub_139924();
      sub_CC68(v61, &unk_1A06F0, &unk_13EF80);
      v64._countAndFlagsBits = 0x656C646E7562202CLL;
      v64._object = 0xEC000000203A6449;
      sub_139934(v64);
      v62 = &type metadata for String;
      v36 = v52;
      v61[0] = v52;
      v61[1] = v17;

      sub_139924();
      sub_CC68(v61, &unk_1A06F0, &unk_13EF80);
      v65._countAndFlagsBits = 0;
      v65._object = 0xE000000000000000;
      sub_139934(v65);
      sub_139964();
      sub_1399E4();

      sub_CACC(0, &qword_1A0700, ISIcon_ptr);
      v37 = sub_E1028(v36, v17);
      v38 = [objc_allocWithZone(ISImageDescriptor) initWithSize:64.0 scale:{64.0, 3.0}];
      v39 = [v37 prepareImageForDescriptor:v38];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 CGImage];
        if (v41)
        {
          v42 = v41;
          v43 = [objc_allocWithZone(UIImage) initWithCGImage:v41];
          sub_CACC(0, &qword_1A0708, ASCArtwork_ptr);
          v31 = sub_EAF74(v43, ASCArtworkDecorationRoundedRect);

          goto LABEL_23;
        }
      }

      v31 = 0;
      goto LABEL_23;
    }
  }
}

id sub_EAF74(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:a1 decoration:a2];

  return v4;
}

void sub_EB044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v6 = *(a4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner);
  if (v6)
  {
    v7 = *(a4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner + 8);

    v6(v8);
    sub_C9FC(v6, v7);
  }

  (a5[2])(a5, 0, a3);

  _Block_release(a5);
}

id sub_EB180()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner);
  if (v1)
  {

    v1(v2);
    v3 = sub_17208();
    sub_C9FC(v3, v4);
  }

  v5 = [objc_opt_self() defaultPresentationContext];

  return v5;
}

id sub_EB254(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a6)
  {
    v19 = sub_13BB54();
  }

  else
  {
    v19 = 0;
  }

  if (a8)
  {
    v20 = sub_13BB54();
  }

  else
  {
    v20 = 0;
  }

  if (a11)
  {
    v21 = sub_13BB54();
  }

  else
  {
    v21 = 0;
  }

  if (a13)
  {
    v22 = sub_13BB54();
  }

  else
  {
    v22 = 0;
  }

  v23 = [v25 initWithID:a1 kind:a2 metrics:a3 icon:a4 heading:v19 title:v20 subtitle:v21 ageRating:v22 offer:a14];

  swift_unknownObjectRelease();
  return v23;
}

uint64_t sub_EB3B4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_13BB84();
  }

  return sub_17208();
}

char *sub_EB410(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, double a6, double a7)
{
  v11 = sub_13A434();
  v45[3] = v11;
  v45[4] = &protocol witness table for StaticDimension;
  v12 = sub_CC08(v45);
  (*(*(v11 - 8) + 32))(v12, a1, v11);
  *&a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_additionalMetrics] = 0;
  a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentAlignment] = 0;
  v13 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel;
  sub_139BB4();
  v14 = objc_opt_self();
  v15 = [v14 ams_primaryText];
  v16 = sub_13A2A4();
  v43 = v16;
  v44 = &protocol witness table for FontSource;
  *sub_CC08(v42) = UIFontTextStyleSubheadline;
  v17 = *(*(v16 - 8) + 104);
  v17();
  v18 = UIFontTextStyleSubheadline;
  *&a5[v13] = sub_139BA4();
  v19 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailTop];
  v19[3] = &type metadata for Double;
  v19[4] = &protocol witness table for Double;
  *v19 = 0;
  v20 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_adamId;
  *&a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_adamId] = 0;
  v21 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_bundleID];
  *v21 = 0;
  v21[1] = 0;
  v22 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentMaxWidth];
  *v22 = 0;
  v22[8] = 1;
  *&a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView] = 0;
  *&a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupArtwork] = 0;
  v23 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel;
  v25 = [v14 ams_primaryText];
  v43 = v16;
  v44 = &protocol witness table for FontSource;
  *sub_CC08(v42) = UIFontTextStyleHeadline;
  v17();
  v26 = UIFontTextStyleHeadline;
  *&a5[v24] = sub_139BA4();
  v27 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_applyCachedArtwork];
  *v27 = 0;
  v27[1] = 0;
  a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_isLockupFocused] = 0;
  v28 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupSize];
  v29 = sub_139CF4();
  *v28 = 0;
  v28[1] = 0;
  v30 = objc_allocWithZone(v29);
  *&a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView] = sub_139CE4();
  sub_4B14(v45, &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_spacingDimension]);
  v31 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize];
  *v31 = a6;
  v31[1] = a7;
  v32 = *&a5[v20];
  *&a5[v20] = a2;
  v33 = a2;

  *v21 = a3;
  v21[1] = a4;

  v41.receiver = a5;
  v41.super_class = type metadata accessor for ServiceDetailView();
  v34 = objc_msgSendSuper2(&v41, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v35 = *&v34[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView];
  v36 = v34;
  [v36 addSubview:v35];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel]];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel]];
  sub_EA054();
  sub_EA1A8();

  sub_3C04(v45);
  return v36;
}

uint64_t sub_EB7DC()
{
  swift_weakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_EB810()
{

  sub_3C04((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_EB864()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_EB8B8(int a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v136 = a7;
  LODWORD(v135) = a1;
  v120 = sub_13A314();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_13A514();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  *&v131 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_13A4B4();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v134 = COERCE_DOUBLE(sub_13A4C4());
  v125 = *(v134 - 8);
  __chkstk_darwin(v134);
  v124 = v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = COERCE_DOUBLE(sub_13A454());
  v132 = *(*&v133 - 8);
  __chkstk_darwin(*&v133);
  v123 = v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v130 = COERCE_DOUBLE(sub_13A4F4());
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v116 = v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v122 = v112 - v21;
  v22 = sub_13C114();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0((a3 + 40), *(a3 + 64));
  if (sub_13A364())
  {
    v26 = 0;
  }

  else
  {
    sub_162F0((a3 + 40), *(a3 + 64));
    v26 = sub_13A324();
  }

  sub_162F0((a3 + 80), *(a3 + 104));
  if (sub_13A364())
  {
    v27 = 0;
  }

  else
  {
    sub_162F0((a3 + 80), *(a3 + 104));
    v27 = sub_13A324();
  }

  sub_2DAFC(a3 + 120, &v144);
  v28 = v145;
  sub_CC68(&v144, &unk_1A0730, &qword_140F10);
  if ((v26 | v27))
  {
    v113 = v27;
    v114 = v14;
    v115 = v13;
    v29 = *(a3 + 160);
    v30 = *(a3 + 240);
    v31 = *(a3 + 248);
    sub_162F0((a3 + 216), v30);
    sub_20038(v30, v31);
    sub_13A404();
    v33 = v32;
    v34 = v28;
    v35 = *(v23 + 8);
    v35(v25, v22);
    *&v112[1] = v29;
    v36 = v29 + v33;
    v117 = v34;
    if (v34)
    {
      v37 = *(a3 + 264);
      v38 = *(a3 + 240);
      v39 = *(a3 + 248);
      sub_162F0((a3 + 216), v38);
      sub_20038(v38, v39);
      sub_13A404();
      v41 = v40;
      v35(v25, v22);
      v42 = v37 + v41;
    }

    else
    {
      v42 = 0.0;
    }

    *&v112[2] = v42;
    sub_13BE34();
    sub_13BE44();
    v45 = *(a3 + 200);
    v46 = *(a3 + 208);
    sub_162F0((a3 + 176), v45);
    sub_20038(v45, v46);
    v121 = a2;
    sub_13A404();
    v48 = v47;
    v35(v25, v22);
    if (v26)
    {
      v49 = *(a3 + 64);
      v50 = *(a3 + 72);
      v51 = sub_162F0((a3 + 40), v49);
      v145 = v49;
      v146 = *(v50 + 8);
      v52 = sub_CC08(&v144);
      (*(*(v49 - 8) + 16))(v52, v51, v49);
      v142 = &type metadata for Double;
      v143 = &protocol witness table for Double;
      v140 = 0;
      v141 = 0;
      v139 = 0u;
      v138 = 0u;
      v53 = v123;
      v54 = v133;
      (*(*&v132 + 104))(v123, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), COERCE_DOUBLE(*&v133));
      v55 = v125;
      v56 = v124;
      v57 = v134;
      (*(v125 + 104))(v124, enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:), v134);
      sub_4948(&qword_19AFE8, &unk_140260);
      v58 = v127;
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_140280;
      sub_13A484();
      v137 = v59;
      sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
      sub_4948(&qword_19AFF0, &unk_1402B0);
      sub_1D268();
      v60 = v126;
      v61 = v128;
      sub_13BF64();
      sub_13A4E4();
      (*(v58 + 8))(v60, v61);
      (*(v55 + 8))(v56, v57);
      (*(*&v132 + 8))(v53, COERCE_DOUBLE(*&v54));
      sub_CC68(&v138, &qword_19AFF8, &unk_140270);
      sub_3C04(&v141);
      sub_3C04(&v144);
      sub_58ABC(0, 1, 1, _swiftEmptyArrayStorage);
      v63 = v62;
      v65 = *(v62 + 16);
      v64 = *(v62 + 24);
      v66 = v117;
      if (v65 >= v64 >> 1)
      {
        sub_58ABC(v64 > 1, v65 + 1, 1, v62);
        v63 = v109;
      }

      v63[2] = v65 + 1;
      (*(v129 + 32))(v63 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v65, v122, v130);
    }

    else
    {
      v63 = _swiftEmptyArrayStorage;
      v66 = v117;
    }

    if (v113)
    {
      v67 = *(a3 + 104);
      v68 = *(a3 + 112);
      v69 = sub_162F0((a3 + 80), v67);
      v145 = v67;
      v146 = *(v68 + 8);
      v70 = sub_CC08(&v144);
      (*(*(v67 - 8) + 16))(v70, v69, v67);
      v142 = &type metadata for CGFloat;
      v143 = &protocol witness table for CGFloat;
      v141 = v48;
      v140 = 0;
      v139 = 0u;
      v138 = 0u;
      v71 = v132;
      v72 = v123;
      (*(*&v132 + 104))(v123, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), COERCE_DOUBLE(*&v133));
      v73 = v125;
      v74 = v124;
      (*(v125 + 104))(v124, enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:), v134);
      sub_4948(&qword_19AFE8, &unk_140260);
      v75 = v127;
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_140280;
      sub_13A484();
      v137 = v76;
      sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
      sub_4948(&qword_19AFF0, &unk_1402B0);
      sub_1D268();
      v77 = v126;
      v78 = v128;
      sub_13BF64();
      v79 = v116;
      sub_13A4E4();
      (*(v75 + 8))(v77, v78);
      (*(v73 + 8))(v74, v134);
      (*(*&v71 + 8))(v72, COERCE_DOUBLE(*&v133));
      sub_CC68(&v138, &qword_19AFF8, &unk_140270);
      sub_3C04(&v141);
      sub_3C04(&v144);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_58ABC(0, v63[2] + 1, 1, v63);
        v63 = v110;
      }

      v81 = v63[2];
      v80 = v63[3];
      v82 = v115;
      v83 = v114;
      v84 = v131;
      v66 = v117;
      if (v81 >= v80 >> 1)
      {
        sub_58ABC(v80 > 1, v81 + 1, 1, v63);
        v63 = v111;
      }

      v63[2] = v81 + 1;
      (*(v129 + 32))(v63 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v81, v79, v130);
    }

    else
    {
      v82 = v115;
      v83 = v114;
      v84 = v131;
    }

    sub_13A4D4();
    sub_13A464();
    v87 = v85;
    v88 = v86;
    if ((LOBYTE(v135) & 1) == 0)
    {
      goto LABEL_47;
    }

    v89 = *(a3 + 256);
    v90 = *(a3 + 168);
    *v112 = v36;
    *&v134 = v86;
    if (v89)
    {
      if (v86 >= v90)
      {
        v94 = *(a3 + 272);
        if (v86 >= v94)
        {
          v135 = *(a3 + 272);
          sub_162F0(a3, *(a3 + 24));
          v157.origin.x = a4;
          v157.origin.y = a5;
          v157.size.width = a6;
          v105 = v136;
          v157.size.height = v136;
          CGRectGetMinX(v157);
          v158.origin.x = a4;
          v158.origin.y = a5;
          v158.size.width = a6;
          v158.size.height = v105;
          CGRectGetMinY(v158);
          sub_13BE44();
          sub_13A354();
          if (v66)
          {
            sub_2DAFC(a3 + 120, &v144);
            if (v145)
            {
              sub_162F0(&v144, v145);
              v159.origin.x = a4;
              v159.origin.y = a5;
              v159.size.width = a6;
              v106 = v136;
              v159.size.height = v136;
              CGRectGetMaxX(v159);
              v160.origin.x = a4;
              v160.origin.y = a5;
              v160.size.width = a6;
              v160.size.height = v106;
              CGRectGetMinY(v160);
              sub_13BE44();
              sub_13A354();
              sub_3C04(&v144);
            }

            else
            {
              sub_CC68(&v144, &unk_1A0730, &qword_140F10);
            }
          }

          v88 = *&v134;
          goto LABEL_46;
        }

        v135 = v85;
        v91 = a5;
        v92 = a6;
        v93 = v136;
      }

      else
      {
        v135 = v85;
        v91 = a5;
        v92 = a6;
        v93 = v136;
        v94 = *(a3 + 272);
      }

      sub_103E90(_swiftEmptyArrayStorage, v90, v94, *&v134);
      v133 = v103;
      sub_162F0(a3, *(a3 + 24));
      v153.origin.x = a4;
      v153.origin.y = v91;
      v153.size.width = v92;
      v153.size.height = v93;
      CGRectGetMinX(v153);
      v154.origin.x = a4;
      v154.origin.y = v91;
      v154.size.width = v92;
      v154.size.height = v93;
      CGRectGetMinY(v154);
      a6 = v92;
      a5 = v91;
      sub_13BE44();
      sub_13A354();
      if (v66)
      {
        sub_2DAFC(a3 + 120, &v144);
        if (v145)
        {
          v104 = v136;
          v133 = round((v133 - v94) * 0.5);
          sub_162F0(&v144, v145);
          v155.origin.x = a4;
          v155.origin.y = v91;
          v155.size.width = v92;
          v155.size.height = v104;
          CGRectGetMaxX(v155);
          v156.origin.x = a4;
          v156.origin.y = v91;
          v156.size.width = v92;
          v156.size.height = v104;
          CGRectGetMinY(v156);
          a5 = v91;
          sub_13BE44();
          sub_13A354();
          sub_3C04(&v144);
        }

        else
        {
          sub_CC68(&v144, &unk_1A0730, &qword_140F10);
        }
      }

      v88 = *&v134;
      sub_103E90(_swiftEmptyArrayStorage, v90, v94, *&v134);
    }

    else
    {
      v135 = v85;
      v95 = *(a3 + 272);
      sub_103E90(_swiftEmptyArrayStorage, v90, v95, v86);
      v130 = v96;
      v97 = a4;
      v98 = v136;
      sub_162F0(a3, *(a3 + 24));
      v149.origin.x = v97;
      v149.origin.y = a5;
      v149.size.width = a6;
      v149.size.height = v98;
      CGRectGetMinX(v149);
      v150.origin.x = v97;
      v150.origin.y = a5;
      v150.size.width = a6;
      v150.size.height = v98;
      CGRectGetMinY(v150);
      v131 = v97;
      v132 = a5;
      v133 = a6;
      v99 = v95;
      sub_13BE44();
      sub_13A354();
      if (v66)
      {
        sub_2DAFC(a3 + 120, &v144);
        if (v145)
        {
          sub_162F0(&v144, v145);
          v100 = v131;
          v151.origin.x = v131;
          v101 = v132;
          v151.origin.y = v132;
          *&v130 = v95;
          v102 = v133;
          v151.size.width = v133;
          v151.size.height = v98;
          CGRectGetMaxX(v151);
          v152.origin.x = v100;
          v152.origin.y = v101;
          v152.size.width = v102;
          v152.size.height = v98;
          CGRectGetMinY(v152);
          v99 = *&v130;
          sub_13BE44();
          sub_13A354();
          sub_3C04(&v144);
        }

        else
        {
          sub_CC68(&v144, &unk_1A0730, &qword_140F10);
        }
      }

      v88 = *&v134;
      sub_103E90(_swiftEmptyArrayStorage, v90, v99, *&v134);
      a6 = v133;
      a5 = v132;
      a4 = v131;
    }

    v87 = v135;
LABEL_46:
    v36 = *v112;
    sub_13BE34();
    sub_13BE44();
    v107 = v118;
    sub_13A474();
    (*(v119 + 8))(v107, v120);
LABEL_47:
    sub_103E90(_swiftEmptyArrayStorage, *(a3 + 168), *(a3 + 272), v88);
    if (v66)
    {
      v161.origin.x = a4;
      v161.origin.y = a5;
      v161.size.width = a6;
      v161.size.height = v136;
      Width = CGRectGetWidth(v161);
      (*(v83 + 8))(COERCE_DOUBLE(*&v84), v82);
    }

    else
    {
      (*(v83 + 8))(COERCE_DOUBLE(*&v84), v82);
      return v36 + v87;
    }

    return Width;
  }

  if (LOBYTE(v135))
  {
    sub_162F0(a3, *(a3 + 24));
    v147.origin.x = a4;
    v147.origin.y = a5;
    v147.size.width = a6;
    v43 = v136;
    v147.size.height = v136;
    CGRectGetMinX(v147);
    v148.origin.x = a4;
    v148.origin.y = a5;
    v148.size.width = a6;
    v148.size.height = v43;
    CGRectGetMinY(v148);
    sub_13BE44();
    sub_13A354();
  }

  return *(a3 + 160);
}

uint64_t type metadata accessor for ServiceOption(uint64_t a1)
{
  result = qword_1A07C8;
  if (!qword_1A07C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_ECEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a3;
  v6 = sub_4948(&qword_19A420, &unk_13F430);
  __chkstk_darwin(v6 - 8);
  v111 = &v104 - v7;
  v110 = sub_4948(&qword_19A350, &unk_13F2C0);
  sub_9F94();
  __chkstk_darwin(v8);
  v113 = &v104 - v9;
  v117 = sub_13B584();
  v119 = *(v117 - 8);
  __chkstk_darwin(v117);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v13);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v14);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v15);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v16);
  v17 = type metadata accessor for ServiceOption(0);
  sub_9F94();
  __chkstk_darwin(v18);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v118 = swift_initStackObject();
  v21 = sub_BB310();
  v23 = v3;
  v109 = v11;
  v130 = a2;
  if (v3)
  {

    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  *v20 = v21;
  *(v20 + 1) = v22;
  v115 = v22;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_139DB4();
  if (v23)
  {

    sub_18B90();
    sub_928C(&v129, &qword_19E960, &qword_13FD30);
LABEL_6:
    sub_13BAB4();
    sub_EE0DC();
    v26 = sub_EDD48(v24, v25, &protocol conformance descriptor for JSONError);
    sub_9F18(v26);
    *v27 = 0x6C6961746564;
    v27[1] = 0xE600000000000000;
    v27[2] = v17;
    sub_2B538();
    (*(v28 + 104))();
    swift_willThrow();
    v29 = *(v119 + 8);
    v30 = sub_EE138();
    v29(v30);

    sub_EE104();
    goto LABEL_7;
  }

  v29 = *(v119 + 8);
  v47 = sub_EE138();
  v29(v47);
  sub_EE18C();
LABEL_7:
  *(v20 + 1) = sub_EE14C();
  *(v20 + 2) = v31;
  *(v20 + 6) = v121;
  v32 = sub_BB310();
  v33 = v130;
  v114 = v29;
  *&v120[0] = v32;
  *(&v120[0] + 1) = v34;
  sub_13BFB4();
  v35 = v112;
  v107 = a1;
  sub_13B594();
  v36 = sub_13B564();
  v105 = 0;
  if (v36)
  {
LABEL_10:
    sub_13BAB4();
    sub_EE0DC();
    v41 = sub_EDD48(v39, v40, &protocol conformance descriptor for JSONError);
    sub_9F18(v41);
    *v42 = 0xD000000000000011;
    v42[1] = 0x800000000014E730;
    v42[2] = v17;
    sub_2B538();
    (*(v43 + 104))();
    swift_willThrow();
    sub_EE0F4();
    v44();

    v45 = sub_13B7A4();
    v46 = v113;
    sub_53A8(v113, 1, 1, v45);
    goto LABEL_13;
  }

  v38 = v111;
  sub_7738(v35, v33, v37);
  if (sub_52E0(v38, 1, v110) == 1)
  {
    sub_928C(v38, &qword_19A420, &unk_13F430);
    goto LABEL_10;
  }

  sub_EE0F4();
  v48();
  v49 = v38;
  v46 = v113;
  sub_92E4(v49, v113);
LABEL_13:
  sub_92E4(v46, &v20[v17[10]]);
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_EE0DC();
    v52 = sub_EDD48(v50, v51, &protocol conformance descriptor for JSONError);
    sub_18B70(v52);
    *v53 = 1868983913;
    v53[1] = 0xE400000000000000;
    v53[2] = v17;
    sub_2B538();
    (*(v54 + 104))();
    swift_willThrow();
    sub_EE0F4();
    v55();

    sub_EE104();
  }

  else
  {
    sub_139DB4();
    sub_EE0F4();
    v84();
    sub_EE18C();
  }

  *(v20 + 56) = sub_EE14C();
  *(v20 + 72) = v56;
  *(v20 + 11) = v121;
  v57 = sub_BB458();
  v58 = v130;
  v20[v17[12]] = v57 & 1;
  sub_EE178();
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_EE0DC();
    v61 = sub_EDD48(v59, v60, &protocol conformance descriptor for JSONError);
    sub_18B70(v61);
    *v62 = 0x6575676573;
    v62[1] = 0xE500000000000000;
    v62[2] = v17;
    sub_2B538();
    (*(v63 + 104))();
    swift_willThrow();
    sub_EE124();
    sub_EE0F4();
    v64();

    sub_EE104();
  }

  else
  {
    sub_139BC4();
    sub_EE124();
    sub_EE0F4();
    v97();
    sub_EE18C();
  }

  v65 = &v20[v17[11]];
  v66 = v120[1];
  *v65 = v120[0];
  *(v65 + 1) = v66;
  *(v65 + 4) = v121;
  v67 = v108;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_22;
  }

  sub_895C(v67, v58);
  if (*(&v120[0] + 1) == 1)
  {
    sub_928C(v120, &qword_1A0768, &unk_14AB40);
LABEL_22:
    sub_13BAB4();
    sub_EE0DC();
    v70 = sub_EDD48(v68, v69, &protocol conformance descriptor for JSONError);
    sub_18B70(v70);
    *v71 = 0x65636976726573;
    v71[1] = 0xE700000000000000;
    v71[2] = v17;
    sub_2B538();
    (*(v72 + 104))();
    swift_willThrow();
    sub_EE124();
    sub_EE0F4();
    v73();

    v74 = 0;
    v75 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    v83 = 0uLL;
    goto LABEL_24;
  }

  sub_EE124();
  sub_EE0F4();
  v85();
  v75 = sub_EE14C();
  v77 = v121;
  v78 = v122;
  v79 = v123;
  v80 = v124;
  v81 = v125;
  v82 = v126;
  v83 = v127;
  v74 = v128;
LABEL_24:
  *(v20 + 6) = v75;
  *(v20 + 7) = v76;
  *(v20 + 8) = v77;
  *(v20 + 9) = v78;
  *(v20 + 10) = v79;
  *(v20 + 11) = v80;
  *(v20 + 12) = v81;
  *(v20 + 13) = v82;
  *(v20 + 14) = v83;
  *(v20 + 30) = v74;
  sub_EE178();
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_EE0DC();
    v88 = sub_EDD48(v86, v87, &protocol conformance descriptor for JSONError);
    sub_9F18(v88);
    *v89 = 0x656C746974;
    v89[1] = 0xE500000000000000;
    v89[2] = v17;
    sub_2B538();
    (*(v90 + 104))();
    swift_willThrow();

    v91 = sub_EE160();
    v93 = *(v92 - 256);
    v94 = v114;
    (v114)(v91, v93);
    (v94)(v67, v93);
    v95 = v105;
    sub_13B5A4();
    sub_9F94();
    (*(v96 + 8))(v58);

    sub_928C((v20 + 16), &qword_19E960, &qword_13FD30);
    if (!v95)
    {
      sub_928C((v20 + 56), &qword_19E960, &qword_13FD30);
    }

    sub_928C((v20 + 96), &qword_1A0760, &unk_14BCA0);
    if (!v95)
    {
      sub_9238((v20 + 288));
      sub_928C(&v20[v17[10]], &qword_19A350, &unk_13F2C0);
    }

    return sub_928C(&v20[v17[11]], &unk_19E320, &unk_140950);
  }

  else
  {
    sub_139DB4();
    v98 = sub_EE160();
    v100 = *(v99 - 256);
    v101 = v114;
    (v114)(v98, v100);
    (v101)(v67, v100);
    sub_EE18C();
    sub_9414(v120, (v20 + 248));
    sub_EDD90(v20, v106);
    sub_13B5A4();
    sub_9F94();
    (*(v102 + 8))(v58);
    return sub_EDDF4(v20);
  }
}

uint64_t sub_EDD48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_EDD90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_EDDF4(uint64_t a1)
{
  v2 = type metadata accessor for ServiceOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EDE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 272);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350, &unk_13F2C0);
    v9 = a1 + *(a3 + 40);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_EDF0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 272) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350, &unk_13F2C0);
    v8 = v5 + *(a4 + 40);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_EDF98(uint64_t a1)
{
  sub_189DC(319, &qword_19AE28, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_248F4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
    if (v2 <= 0x3F)
    {
      sub_189DC(319, &qword_1A07D8, &type metadata for MarketingItemService);
      if (v3 <= 0x3F)
      {
        sub_18A28();
        if (v4 <= 0x3F)
        {
          sub_54D0(319);
          if (v5 <= 0x3F)
          {
            sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

double sub_EE104()
{
  *(v0 - 288) = 0;
  result = 0.0;
  *(v0 - 304) = 0u;
  *(v0 - 320) = 0u;
  return result;
}

uint64_t sub_EE18C()
{

  return sub_9414((v0 - 160), v0 - 320);
}

void sub_EE1A4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_4948(&qword_1A0870, &qword_14ABC8);
  sub_13B5E4();

  if (*&v80[8])
  {
    v2 = memcpy(__dst, v80, sizeof(__dst));
    v10 = sub_EE8A4(v2, v3, v4, v5, v6, v7, v8, v9, *v80, *&v80[8], *&v80[16], *&v80[24], *&v80[32], *&v80[40], *&v80[48], *&v80[56], *&v80[64], *&v80[72], *&v80[80], *&v80[88], *&v80[96], *&v80[104], *&v80[112], *&v80[120], *&v80[128], *&v80[136], *&v80[144], __dst[0]);
    sub_EFEE0(v10, v11);
    sub_4D9A0(__dst);
  }

  else
  {
    sub_CC68(v80, &qword_1A0760, &unk_14BCA0);
  }

  KeyPath = swift_getKeyPath();
  sub_EE870(KeyPath, v13, v14, v15, v16, v17, v18, v19, *v80);

  if (*&v80[24])
  {
    sub_9414(v80, __dst);
    sub_EE88C();
    v28 = sub_EE8A4(v20, v21, v22, v23, v24, v25, v26, v27, *v80, *&v80[8], *&v80[16], *&v80[24], *&v80[32], *&v80[40], *&v80[48], *&v80[56], *&v80[64], *&v80[72], *&v80[80], *&v80[88], *&v80[96], *&v80[104], *&v80[112], *&v80[120], *&v80[128], *&v80[136], *&v80[144], __dst[0]);
    v29(v28);
    sub_3C04(__dst);
  }

  else
  {
    sub_CC68(v80, &qword_19E960, &qword_13FD30);
  }

  v30 = swift_getKeyPath();
  sub_EE870(v30, v31, v32, v33, v34, v35, v36, v37, *v80);

  if (*&v80[24])
  {
    sub_9414(v80, __dst);
    sub_EE88C();
    v46 = sub_EE8A4(v38, v39, v40, v41, v42, v43, v44, v45, *v80, *&v80[8], *&v80[16], *&v80[24], *&v80[32], *&v80[40], *&v80[48], *&v80[56], *&v80[64], *&v80[72], *&v80[80], *&v80[88], *&v80[96], *&v80[104], *&v80[112], *&v80[120], *&v80[128], *&v80[136], *&v80[144], __dst[0]);
    v47(v46);
    sub_3C04(__dst);
  }

  else
  {
    sub_CC68(v80, &qword_19E960, &qword_13FD30);
  }

  swift_getKeyPath();
  sub_13B5E4();

  v56 = sub_EE8A4(v48, v49, v50, v51, v52, v53, v54, v55, *v80, *&v80[8], *&v80[16], *&v80[24], *&v80[32], *&v80[40], *&v80[48], *&v80[56], *&v80[64], *&v80[72], *&v80[80], *&v80[88], *&v80[96], *&v80[104], *&v80[112], *&v80[120], *&v80[128], *&v80[136], *&v80[144], __dst[0]);
  v57(v56);
  sub_3C04(__dst);
  swift_getKeyPath();
  sub_4948(&qword_19C4C8, &qword_143578);
  sub_314E0();
  sub_13BAD4();

  v58 = LOBYTE(__dst[0]);
  v59 = swift_getKeyPath();
  sub_EE870(v59, v60, v61, v62, v63, v64, v65, v66, *v80);

  if (v58)
  {
    if (v58 == 1)
    {
      v67 = v80[0];
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    v67 = 1;
  }

  v68 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_isToggled;
  v69 = swift_beginAccess();
  v1[v68] = v67;
  sub_EF02C(v69);
  v70 = [v1 contentView];
  v71 = swift_getKeyPath();
  sub_EE870(v71, v72, v73, v74, v75, v76, v77, v78, *v80);

  if (*&v80[8])
  {
    v79 = sub_13BB54();
  }

  else
  {
    v79 = 0;
  }

  [v70 setAccessibilityLabel:v79];
}

uint64_t sub_EE57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ServiceOptionComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_EE5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ServiceOptionComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_EE64C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_EE6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_EE71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_EE798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_EE818()
{
  result = qword_19F228;
  if (!qword_19F228)
  {
    type metadata accessor for ServiceOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F228);
  }

  return result;
}

void *sub_EE870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_13B5E4();
}

UIFontTextStyle sub_EE8B0()
{
  v0 = sub_13A3E4();
  sub_7E5D8(v0, qword_1B2B80);
  v1 = sub_4910(v0, qword_1B2B80);
  *v1 = UIFontTextStyleCaption1;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleCaption1;
}

id sub_EE960(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_13BB54();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

id sub_EE9D0(double a1, double a2, double a3, double a4)
{
  v9 = sub_13A2A4();
  sub_9E94();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_9EC0();
  v47 = v14 - v13;
  v49 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_detailLabel;
  sub_139BB4();
  v48 = objc_opt_self();
  v15 = [v48 ams_primaryText];
  *(&v70 + 1) = v9;
  v71 = &protocol witness table for FontSource;
  *sub_CC08(&v69) = UIFontTextStyleCaption1;
  v16 = v11[13];
  v16();
  v17 = UIFontTextStyleCaption1;
  *&v4[v49] = sub_F2668();
  v50 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_infoLabel;
  v18 = [v48 ams_secondaryText];
  *(&v70 + 1) = v9;
  v71 = &protocol witness table for FontSource;
  *sub_CC08(&v69) = v17;
  v16();
  v19 = v4;
  *&v4[v50] = sub_F2668();
  v20 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_titleLabel;
  v21 = [v48 ams_primaryText];
  *(&v70 + 1) = v9;
  v71 = &protocol witness table for FontSource;
  *sub_CC08(&v69) = UIFontTextStyleHeadline;
  v51 = v16;
  v16();
  v22 = UIFontTextStyleHeadline;
  *&v4[v20] = sub_139BA4();
  v23 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_containerView;
  *&v19[v23] = [objc_allocWithZone(AMSUICommonView) init];
  v24 = &v19[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_contentViewContentInsets];
  __asm { FMOV            V0.2D, #16.0 }

  *v24 = _Q0;
  v24[1] = _Q0;
  v30 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_gridView;
  type metadata accessor for ServicesGridView();
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  *&v19[v30] = sub_117788(0, 1, &v69, 0, 0, 1, 0, 1, &v66);
  v31 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_selectedStatusView;
  *&v19[v31] = [objc_allocWithZone(AMSUICommonImageView) init];
  v32 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_separatorView;
  *&v19[v32] = [objc_allocWithZone(AMSUICommonView) init];
  v33 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_metrics;
  *(&v70 + 1) = &type metadata for Double;
  v71 = &protocol witness table for Double;
  *&v69 = 0;
  *(&v67 + 1) = &type metadata for CGFloat;
  v68 = &protocol witness table for CGFloat;
  *&v66 = 0x4028000000000000;
  v64 = &type metadata for CGFloat;
  v65 = &protocol witness table for CGFloat;
  v62 = &protocol witness table for Double;
  *&v63 = 0x4036000000000000;
  v61 = &type metadata for Double;
  *&v60 = 0;
  if (qword_19A098 != -1)
  {
    swift_once();
  }

  v34 = &v19[v33];
  v35 = sub_13A3E4();
  v45 = sub_4910(v35, qword_1B2B80);
  v44 = *(*(v35 - 8) + 16);
  v46 = v19;
  v44(v47, v45, v35);
  v43 = enum case for FontSource.useCase(_:);
  (v51)(v47);
  v36 = sub_13A434();
  v58 = v36;
  v59 = &protocol witness table for StaticDimension;
  sub_CC08(&v57);
  v55 = v9;
  v56 = &protocol witness table for FontSource;
  v37 = sub_CC08(&v54);
  v38 = v11[2];
  v38(v37, v47, v9);
  sub_13A444();
  v39 = v11[1];
  v39(v47, v9);
  v44(v47, v45, v35);
  (v51)(v47, v43, v9);
  v55 = v36;
  v56 = &protocol witness table for StaticDimension;
  sub_CC08(&v54);
  v53[3] = v9;
  v53[4] = &protocol witness table for FontSource;
  v40 = sub_CC08(v53);
  v38(v40, v47, v9);
  sub_13A444();
  v39(v47, v9);
  *(v34 + 264) = &type metadata for CGFloat;
  *(v34 + 240) = 0x4014000000000000;
  *(v34 + 304) = &type metadata for CGFloat;
  *(v34 + 312) = &protocol witness table for CGFloat;
  *(v34 + 272) = &protocol witness table for CGFloat;
  *(v34 + 280) = 0x4024000000000000;
  sub_21520(&v69, v34);
  sub_21520(&v66, v34 + 40);
  sub_21520(&v63, v34 + 80);
  sub_21520(&v60, v34 + 120);
  sub_21520(&v57, v34 + 160);
  sub_21520(&v54, v34 + 200);
  *(v34 + 320) = 1;
  v46[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_isToggled] = 0;
  v52.receiver = v46;
  v52.super_class = type metadata accessor for ServiceOptionComponent();
  v41 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  sub_EFFA0();

  return v41;
}

void sub_EF02C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_isToggled;
  sub_57304(a1);
  if (*(v1 + v2) != 1)
  {
    sub_F0404();
    sub_F037C();
    v13 = [v1 contentView];
    v14 = [v13 layer];

    if (qword_19A0C0 != -1)
    {
      swift_once();
    }

    [v14 setBorderWidth:*&qword_1A0898];

    v15 = [v1 contentView];
    v16 = [v15 layer];

    if (qword_19A0B8 != -1)
    {
      swift_once();
    }

    [v16 setBorderColor:qword_1A0890];

    v11 = [v1 contentView];
    [v11 setAccessibilityTraits:UIAccessibilityTraitButton];
    goto LABEL_15;
  }

  sub_F0558();
  sub_F0388();
  v3 = [v1 contentView];
  v4 = [v3 layer];

  [v4 setBorderWidth:2.0];
  v5 = [v1 contentView];
  v6 = [v5 layer];

  v7 = [v1 tintColor];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 CGColor];

    [v6 setBorderColor:v9];
    v10 = [v1 contentView];
    v11 = v10;
    v12 = UIAccessibilityTraitButton;
    if (UIAccessibilityTraitButton)
    {
      if ((UIAccessibilityTraitSelected & ~UIAccessibilityTraitButton) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (!UIAccessibilityTraitSelected)
    {
      v12 = 0;
      goto LABEL_14;
    }

    v12 = UIAccessibilityTraitSelected | UIAccessibilityTraitButton;
LABEL_14:
    [v10 setAccessibilityTraits:v12];
LABEL_15:

    return;
  }

  __break(1u);
}

uint64_t sub_EF2F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_isToggled;
  sub_57304(a1);
  return *(v1 + v2);
}

void sub_EF32C(char a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_isToggled;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  sub_EF02C(v4);
}

uint64_t sub_EF380(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ServiceOptionComponent();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  sub_4ACC4();
  (*(v2 + 392))();
  sub_117FB4();
  sub_4ACC4();
  (*(v3 + 392))();
  sub_4ACC4();
  return (*(v4 + 392))();
}

uint64_t sub_EF4F4()
{
  sub_13A314();
  sub_9E94();
  v31 = v2;
  v32 = v1;
  __chkstk_darwin(v1);
  sub_9EC0();
  v30 = v4 - v3;
  v52.receiver = v0;
  v52.super_class = type metadata accessor for ServiceOptionComponent();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  v5 = [v0 contentView];
  [v5 bounds];
  sub_1D3D0();

  v6 = sub_35BE8();
  [v7 v8];
  sub_F1570(&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_metrics], &v51);
  v9 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_titleLabel];
  v34 = sub_139BB4();
  sub_1D3B8();
  v35 = sub_9A68(v10, v11, &protocol conformance descriptor for DynamicLabel);
  v33 = v9;
  v12 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_selectedStatusView];
  v37 = sub_CACC(0, &qword_19C568, AMSUICommonImageView_ptr);
  v38 = protocol witness table for UIView;
  v36 = v12;
  v13 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_infoLabel];
  v40 = v34;
  v41 = v35;
  v39 = v13;
  v14 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_gridView];
  v46 = type metadata accessor for ServicesGridView();
  v47 = protocol witness table for UIView;
  v45 = v14;
  v15 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_separatorView];
  v49 = sub_CACC(0, &qword_19E9B0, AMSUICommonView_ptr);
  v50 = protocol witness table for UIView;
  v16 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_detailLabel];
  v48 = v15;
  v43 = v34;
  v44 = v35;
  v42 = v16;
  v17 = v9;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = [v0 contentView];
  [v23 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_13BE34();
  sub_1D3D0();
  v24 = [v0 contentView];
  sub_35BE8();
  ServiceOptionComponentLayout.placeChildren(relativeTo:in:)(v25, v26, v27, v28);

  (*(v31 + 8))(v30, v32);
  return sub_F25A4(&v33);
}

id sub_EF850(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServiceOptionComponent();
  return objc_msgSendSuper2(&v3, "isHighlighted");
}

void sub_EF8D8(uint64_t a1)
{
  v2 = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServiceOptionComponent();
  objc_msgSendSuper2(&v3, "setHighlighted:", v2 & 1);
  sub_EF920();
}

void sub_EF920()
{
  v1 = v0;
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    v6 = sub_139A24();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      sub_EFA38([v1 isHighlighted]);
    }
  }
}

void sub_EFA38(char a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_F154C;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_E2448;
  v6[3] = &unk_18CF50;
  v5 = _Block_copy(v6);

  [v2 animateWithDuration:v5 animations:0.25];
  _Block_release(v5);
}

void sub_EFB44(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong contentView];

    if (a2)
    {
      if (qword_19A0B0 != -1)
      {
        swift_once();
      }

      v6 = &qword_1A0888;
    }

    else
    {
      if (qword_19A0A0 != -1)
      {
        swift_once();
      }

      v6 = &qword_1A0878;
    }

    [v5 setBackgroundColor:*v6];
  }
}

void sub_EFC48(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ServiceOptionComponent();
  objc_msgSendSuper2(&v4, "tintColorDidChange");
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_isToggled;
  v3 = swift_beginAccess();
  *(v1 + v2) = *(v1 + v2);
  sub_EF02C(v3);
}

void sub_EFCF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_139A34();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for ServiceOptionComponent();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  if (!_UISolariumEnabled() || ((*(v6 + 104))(v10, enum case for FlagKeys.Solarium(_:), v4), v11 = sub_139A24(), (*(v6 + 8))(v10, v4), (v11 & 1) == 0))
  {
    v12 = [v2 contentView];
    v13 = [objc_opt_self() ams_shadow];
    v14 = [v13 CGColor];

    v15 = sub_4AD60();
    sub_12BE00(v14, v15, v16, v17, v18);
  }
}

uint64_t sub_EFEE0(uint64_t a1, uint64_t a2)
{
  sub_4948(&qword_19C2E8, &qword_143168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_140280;
  *(inited + 56) = &type metadata for MarketingItemService;
  *(inited + 64) = &off_18B6B8;
  v5 = swift_allocObject();
  *(inited + 32) = v5;
  sub_4D8D4(a1, v5 + 16);
  sub_1180F8(inited, a2);
  swift_setDeallocating();
  return sub_118CF8();
}

id sub_EFFA0()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = [v0 contentView];
  if (qword_19A0A0 != -1)
  {
    swift_once();
  }

  [v9 setBackgroundColor:qword_1A0878];

  v10 = sub_3F15C();
  if (qword_19A0A8 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_1A0880);

  v11 = sub_3F15C();
  v12 = [v11 layer];

  [v12 setBorderWidth:2.0];
  if (!_UISolariumEnabled() || ((*(v4 + 104))(v8, enum case for FlagKeys.Solarium(_:), v2), v13 = sub_139A24(), (*(v4 + 8))(v8, v2), (v13 & 1) == 0))
  {
    v14 = sub_3F15C();
    v15 = [objc_opt_self() ams_shadow];
    v16 = [v15 CGColor];

    v17 = sub_4AD60();
    sub_12BE00(v16, v17, v18, v19, v20);
  }

  v21 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_containerView];
  v22 = [objc_opt_self() ams_clear];
  [v21 setBackgroundColor:v22];

  v23 = sub_3F15C();
  [v23 addSubview:v21];

  v24 = [v21 layer];
  [v24 setMasksToBounds:1];

  v25 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_selectedStatusView];
  [v25 setContentMode:2];
  [v21 addSubview:v25];
  sub_F264C(OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_titleLabel);
  sub_F264C(OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_infoLabel);
  sub_F264C(OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_gridView);
  sub_F264C(OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_separatorView);
  v26 = sub_F264C(OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_detailLabel);
  sub_F06AC(v26);
  sub_F06EC();
  v27 = sub_3F15C();
  [v27 setIsAccessibilityElement:1];

  v28 = sub_3F15C();
  v29 = UIAccessibilityTraitButton;
  [v28 setAccessibilityTraits:UIAccessibilityTraitButton];

  [v25 setIsAccessibilityElement:1];
  return [v25 setAccessibilityTraits:v29];
}

id sub_F0394(char a1, char a2)
{
  [*(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_detailLabel) setHidden:a1 & 1];
  result = [*(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_separatorView) setHidden:a1 & 1];
  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_metrics + 320) = a2;
  return result;
}

void sub_F0404()
{
  v1 = v0;
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:22.0];
  sub_CACC(0, &unk_1A0710, UIImage_ptr);
  v3 = v2;
  v4 = sub_EE960(0x656C63726963, 0xE600000000000000, v2);
  v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_selectedStatusView);
  if (v4)
  {
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 ams_secondaryText];
    v9 = [v7 imageWithTintColor:v8 renderingMode:1];
  }

  else
  {
    v9 = 0;
  }

  [v5 setImage:v9];
}

void sub_F0558()
{
  v1 = v0;
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:22.0];
  sub_CACC(0, &unk_1A0710, UIImage_ptr);
  v3 = v2;
  v4 = sub_EE960(0xD000000000000015, 0x800000000014EC50, v2);
  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_selectedStatusView];
  if (v4)
  {
    v7 = v4;
    v8 = [v1 tintColor];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v7 imageWithTintColor:v8 renderingMode:1];
  }

  else
  {
    v10 = 0;
  }

  [v6 setImage:v10];
}

void sub_F06EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_separatorView);
  v2 = [objc_opt_self() ams_mediaBorder];
  [v1 setBackgroundColor:v2];
}

double sub_F0768(double a1, double a2, float a3)
{
  sub_F1570(&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_metrics], &v46);
  v6 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_titleLabel];
  v29 = sub_139BB4();
  sub_1D3B8();
  v30 = sub_9A68(v7, v8, &protocol conformance descriptor for DynamicLabel);
  v28[0] = v6;
  v9 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_selectedStatusView];
  v32 = sub_CACC(0, &qword_19C568, AMSUICommonImageView_ptr);
  v33 = protocol witness table for UIView;
  v31 = v9;
  v10 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_infoLabel];
  v35 = v29;
  v36 = v30;
  v34 = v10;
  v11 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_gridView];
  v41 = type metadata accessor for ServicesGridView();
  v42 = protocol witness table for UIView;
  v40 = v11;
  v12 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_separatorView];
  v44 = sub_CACC(0, &qword_19E9B0, AMSUICommonView_ptr);
  v45 = protocol witness table for UIView;
  v13 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_detailLabel];
  v43 = v12;
  v38 = v29;
  v39 = v30;
  v37 = v13;
  v14 = v6;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  sub_27C54();
  sub_13BE64();
  v21 = v20;
  v23 = v22;
  v24 = [v3 contentView];
  sub_F15CC(v24, v28, v21, v23);

  sub_27C54();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v26 = a1;
  }

  else
  {
    v26 = v25;
  }

  sub_F25A4(v28);
  return v26;
}

id sub_F0A48(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServiceOptionComponent();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void (*sub_F0B98(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_F0C00;
}

void sub_F0C00(uint64_t a1, char a2)
{
  v3 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_EF02C(v3);
  }
}

id sub_F0C34()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = &selRef_ams_quaternarySystemFillColor;
  }

  else
  {
    v5 = &selRef_ams_componentBackground;
  }

  result = [objc_opt_self() *v5];
  qword_1A0878 = result;
  return result;
}

uint64_t sub_F0D60()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 18.0;
  }

  qword_1A0880 = *&v6;
  return result;
}

id sub_F0E64()
{
  result = [objc_opt_self() ams_primarySystemFillColor];
  qword_1A0888 = result;
  return result;
}

void sub_F0EA0()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = [objc_opt_self() systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.25];
  }

  else
  {
    v6 = [objc_opt_self() ams_clear];
  }

  v7 = [v6 CGColor];

  qword_1A0890 = v7;
}

uint64_t sub_F1028()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 1.0, (v5 & 1) == 0))
  {
    v6 = 2.0;
  }

  qword_1A0898 = *&v6;
  return result;
}

id sub_F112C()
{
  v0 = objc_opt_self();
  v1 = [v0 absoluteDimension:340.0];
  v2 = [v0 absoluteDimension:340.0];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  return v3;
}

id sub_F11E0()
{
  v0 = sub_139A34();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  v7 = sub_1D4CC();
  swift_getObjectType();
  v8 = sub_BBC00();
  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = 200.0;
  }

  else
  {
    v9 = 32.0;
  }

  if (_UISolariumEnabled() && ((*(v2 + 104))(v6, enum case for FlagKeys.Solarium(_:), v0), v10 = sub_139A24(), (*(v2 + 8))(v6, v0), (v10 & 1) != 0))
  {
    [sub_1D4CC() contentSize];
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = sub_1D4CC();
    swift_getObjectType();
    sub_BBC90();
    v15 = v14;
    swift_unknownObjectRelease();
    v16 = v12 - (v15 + v15);
  }

  else
  {
    [sub_1D4CC() contentSize];
    v18 = v17;
    swift_unknownObjectRelease();
    v16 = v18 - v9;
  }

  if (v16 <= 360.0)
  {
    v19 = v16;
  }

  else
  {
    v19 = 360.0;
  }

  v20 = objc_opt_self();
  v21 = [v20 absoluteDimension:v19];
  v22 = [v20 estimatedDimension:50.0];
  v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

  return v23;
}

uint64_t sub_F146C()
{

  sub_3C04((v0 + 48));
  if (*(v0 + 112))
  {
    sub_3C04((v0 + 88));
  }

  if (*(v0 + 152))
  {
    sub_3C04((v0 + 128));
  }

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_F14DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_F1514()
{

  return _swift_deallocObject(v0, 25, 7);
}

double sub_F1558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_F15CC(uint64_t a1, void *a2, double a3, double a4)
{
  v97 = sub_13A4F4();
  v6 = *(v97 - 8);
  v116 = v97 - 8;
  v117 = v6;
  v119 = v6;
  __chkstk_darwin(v97 - 8);
  v88 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = v85 - v9;
  v98 = sub_13A514();
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_13A4C4();
  v123 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_13A4B4();
  v112 = *(v114 - 8);
  v122 = v112;
  __chkstk_darwin(v114);
  v101 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_13A454();
  v124 = *(v121 - 8);
  __chkstk_darwin(v121);
  v102 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_13C114();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[43];
  v18 = a2[44];
  sub_162F0(a2 + 40, v19);
  sub_20038(v19, v18);
  sub_13A404();
  v20 = *(v15 + 8);
  v20(v17, v14);
  v21 = a2[38];
  v22 = a2[39];
  sub_162F0(a2 + 35, v21);
  sub_20038(v21, v22);
  sub_13A404();
  v20(v17, v14);
  v23 = a2[33];
  v24 = a2[34];
  sub_162F0(a2 + 30, v23);
  sub_20038(v23, v24);
  sub_13A404();
  v20(v17, v14);
  sub_162F0(a2, a2[3]);
  v94 = a1;
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v117 = *(v117 + 72);
  v25 = (*(v119 + 80) + 32) & ~*(v119 + 80);
  v26 = swift_allocObject();
  v90 = xmmword_13E650;
  *(v26 + 16) = xmmword_13E650;
  v92 = v25;
  v91 = v26;
  v104 = v26 + v25;
  v103 = a2;
  v27 = a2[13];
  v28 = a2[14];
  v29 = sub_162F0(a2 + 10, v27);
  *(&v130 + 1) = v27;
  v30 = v120;
  v131 = *(v28 + 8);
  v31 = sub_CC08(&v129);
  (*(*(v27 - 8) + 16))(v31, v29, v27);
  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  v115 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v99 = *(v124 + 104);
  v116 = v124 + 104;
  v99(v102);
  v113 = sub_4948(&qword_19AFE8, &unk_140260);
  v32 = *(v112 + 72);
  v33 = v114;
  v34 = v122;
  v35 = *(v122 + 80);
  v112 = (v35 + 32) & ~v35;
  v87 = v112 + 3 * v32;
  v36 = swift_allocObject();
  v86 = xmmword_13E660;
  *(v36 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v125 = v36;
  v111 = sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v110 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v109 = sub_1D268();
  v37 = v101;
  sub_13BF64();
  v108 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v38 = v123;
  v39 = v123 + 104;
  v100 = *(v123 + 104);
  v40 = v118;
  v100(v118);
  v41 = v102;
  sub_13A4E4();
  v42 = *(v38 + 8);
  v123 = v38 + 8;
  v107 = v42;
  v42(v40, v30);
  v43 = *(v34 + 8);
  v122 = v34 + 8;
  v106 = v43;
  v43(v37, v33);
  v44 = *(v124 + 8);
  v124 += 8;
  v105 = v44;
  v45 = v41;
  v46 = v121;
  v44(v41, v121);
  sub_1D2CC(&v126);
  sub_3C04(&v129);
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  (v99)(v41, v115, v46);
  v85[1] = v35;
  v47 = swift_allocObject();
  *(v47 + 16) = v90;
  sub_13A484();
  v89 = v32;
  v48 = v39;
  sub_13A4A4();
  *&v126 = v47;
  v49 = v120;
  sub_13BF64();
  v50 = v100;
  v51 = v121;
  v52 = v37;
  *&v90 = v48;
  (v100)(v40, v108, v49);
  v53 = v103;
  sub_13A4E4();
  v107(v40, v49);
  v54 = v53;
  v106(v52, v33);
  v105(v45, v51);
  sub_1D2CC(&v129);
  if (*(v53 + 560) == 1)
  {
    v104 = 2 * v89;
    v55 = v51;
    v56 = v50;
    sub_162F0(v53 + 15, v53[18]);
    sub_13A324();
    sub_162F0(v53 + 25, v53[28]);
    sub_13A374();
    v128 = 0;
    v126 = 0u;
    v127 = 0u;
    v57 = v99;
    (v99)(v45, v115, v51);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_140280;
    sub_13A484();
    v125 = v58;
    v59 = v114;
    sub_13BF64();
    v60 = v118;
    v61 = v120;
    (v56)(v118, v108, v120);
    sub_13A4E4();
    v107(v60, v61);
    v106(v52, v59);
    v105(v45, v55);
    sub_1D2CC(&v126);
    sub_3C04(&v129);
    v62 = v91;
    v64 = *(v91 + 16);
    v63 = *(v91 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_58ABC(v63 > 1, v64 + 1, 1, v91);
      v62 = v83;
    }

    *(v62 + 16) = v64 + 1;
    v65 = *(v119 + 32);
    v119 += 32;
    v65(v62 + v92 + v64 * v117, v93, v97);
    v66 = v54[18];
    v67 = v54[19];
    v68 = sub_162F0(v54 + 15, v66);
    *(&v130 + 1) = v66;
    v131 = *(v67 + 8);
    v69 = sub_CC08(&v129);
    (*(*(v66 - 8) + 16))(v69, v68, v66);
    v128 = 0;
    v126 = 0u;
    v127 = 0u;
    v70 = v121;
    (v57)(v45, v115, v121);
    v71 = swift_allocObject();
    *(v71 + 16) = v86;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v125 = v71;
    v72 = v101;
    v73 = v114;
    sub_13BF64();
    v74 = v118;
    v75 = v120;
    (v100)(v118, v108, v120);
    v76 = v88;
    sub_13A4E4();
    v107(v74, v75);
    v106(v72, v73);
    v105(v45, v70);
    sub_1D2CC(&v126);
    sub_3C04(&v129);
    v78 = *(v62 + 16);
    v77 = *(v62 + 24);
    if (v78 >= v77 >> 1)
    {
      sub_58ABC(v77 > 1, v78 + 1, 1, v62);
      v62 = v84;
    }

    *(v62 + 16) = v78 + 1;
    v65(v62 + v92 + v78 * v117, v76, v97);
    v79 = v95;
  }

  else
  {
    v79 = v95;
  }

  sub_13A4D4();
  sub_13A464();
  v81 = v80;
  (*(v96 + 8))(v79, v98);
  return v81;
}

id sub_F264C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + a1);
  v6 = *(v3 + 3576);

  return [v2 v6];
}

uint64_t sub_F2668()
{

  return sub_139BA4();
}

uint64_t ServiceOptionComponentLayout.Metrics.init(titleTopSpace:titleTrailingSpace:selectionStatusDimension:selectionStatusTopSpace:disclaimerTopSpace:detailTopSpace:separatorTopSpace:gridTopSpace:expanded:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, char a10)
{
  sub_9414(a1, a9);
  sub_9414(a2, a9 + 40);
  sub_9414(a3, a9 + 80);
  sub_9414(a4, a9 + 120);
  sub_9414(a5, a9 + 160);
  sub_9414(a6, a9 + 200);
  sub_9414(a7, a9 + 240);
  result = sub_9414(a8, a9 + 280);
  *(a9 + 320) = a10;
  return result;
}

uint64_t ServiceOptionComponentLayout.init(metrics:titleView:selectionStatusView:disclaimerView:gridView:separatorView:detailView:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  memcpy((a8 + 240), __src, 0x141uLL);
  sub_9414(a2, a8);
  sub_9414(a3, a8 + 40);
  sub_9414(a4, a8 + 80);
  sub_9414(a7, a8 + 120);
  sub_9414(a6, a8 + 200);

  return sub_9414(a5, a8 + 160);
}

uint64_t ServiceOptionComponentLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v141 = a2;
  v143 = sub_13A314();
  sub_9E94();
  v142 = v11;
  __chkstk_darwin(v12);
  sub_21548();
  sub_2159C(v13);
  v139 = sub_13A514();
  sub_9E94();
  v138 = v14;
  __chkstk_darwin(v15);
  sub_21548();
  sub_2159C(v16);
  v135 = sub_13A4F4();
  v160 = *(v135 - 8);
  v167 = v160;
  __chkstk_darwin(v135);
  v128 = v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  sub_2159C(v125 - v19);
  v162 = sub_13A4C4();
  sub_9E94();
  v170 = v20;
  __chkstk_darwin(v21);
  sub_21548();
  sub_2159C(v22);
  v168 = sub_13A4B4();
  v157 = *(v168 - 8);
  v158 = v168 - 8;
  v165 = v157;
  __chkstk_darwin(v168 - 8);
  sub_21548();
  sub_2159C(v23);
  v164 = sub_13A454();
  sub_9E94();
  v169 = v24;
  __chkstk_darwin(v25);
  sub_21548();
  sub_2159C(v26);
  sub_13C114();
  sub_9E94();
  v28 = v27;
  __chkstk_darwin(v29);
  v30 = v6[43];
  v31 = v7[44];
  sub_162F0(v7 + 40, v30);
  sub_20038(v30, v31);
  sub_F4C44();
  sub_13A404();
  v156 = v32;
  v33 = *(v28 + 8);
  v34 = sub_F4CCC();
  v33(v34);
  sub_F4C54(v7 + 45);
  sub_F4C44();
  sub_13A404();
  v159 = v35;
  v36 = sub_F4CCC();
  v33(v36);
  sub_F4C54(v7 + 35);
  sub_F4C44();
  sub_13A404();
  v37 = sub_F4CCC();
  v33(v37);
  sub_F4C54(v7 + 30);
  sub_F4C44();
  sub_13A404();
  v155 = v38;
  v39 = sub_F4CCC();
  v33(v39);
  sub_162F0(v7, v7[3]);
  sub_13A384();
  v41 = v40;
  sub_162F0(v7, v7[3]);
  v176.origin.x = sub_F4C00();
  CGRectGetMinX(v176);
  v177.origin.x = sub_F4C00();
  CGRectGetMinY(v177);
  sub_F4C00();
  sub_13BE44();
  sub_13A354();
  sub_162F0(v7 + 5, v7[8]);
  v178.origin.x = sub_F4C00();
  CGRectGetMaxX(v178);
  v179.origin.x = sub_F4CB8();
  CGRectGetMinY(v179);
  sub_F4CB8();
  sub_13BE44();
  sub_13A354();
  v42 = v155 + v41;
  sub_13BE34();
  v136 = a1;
  v130 = a6;
  sub_13BE44();
  v44 = v43;
  v46 = v45;
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v160 = *(v160 + 72);
  v47 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v48 = swift_allocObject();
  v131 = xmmword_13E650;
  *(v48 + 16) = xmmword_13E650;
  v133 = v47;
  v132 = v48;
  v148 = v48 + v47;
  v163 = v7;
  v50 = v7[13];
  v49 = v7[14];
  v51 = sub_162F0(v7 + 10, v50);
  *(&v174 + 1) = v50;
  v175 = *(v49 + 8);
  v52 = sub_CC08(&v173);
  (*(*(v50 - 8) + 16))(v52, v51, v50);
  v53 = sub_5AA8C();
  v150 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v54 = *(v169 + 104);
  v144 = v169 + 104;
  v149 = v54;
  v55 = v147;
  v54(v147, v53);
  v159 = sub_4948(&qword_19AFE8, &unk_140260);
  v56 = *(v157 + 72);
  v57 = v165;
  v157 = *(v165 + 80);
  v158 = (v157 + 32) & ~v157;
  v127 = v158 + 3 * v56;
  v58 = swift_allocObject();
  v126 = xmmword_13E660;
  *(v58 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v171 = v58;
  v156 = sub_20068();
  v155 = COERCE_DOUBLE(sub_4948(&qword_19AFF0, &unk_1402B0));
  v154 = sub_1D268();
  v59 = v161;
  v60 = v168;
  sub_13BF64();
  v153 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v61 = v170;
  v62 = v170 + 104;
  v152 = *(v170 + 104);
  v63 = v166;
  v64 = v162;
  v152(v166);
  v65 = v55;
  sub_13A4E4();
  v66 = *(v61 + 8);
  v170 = v61 + 8;
  v151 = v66;
  v66(v63, v64);
  v146 = *(v57 + 8);
  v146(v59, v60);
  v67 = v169 + 8;
  v145 = *(v169 + 8);
  v68 = v164;
  v145(v65, v164);
  sub_1D2CC(&v172);
  sub_3C04(&v173);
  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v69 = v65;
  v149(v65, v150, v68);
  sub_F4C14();
  v70 = swift_allocObject();
  *(v70 + 16) = v131;
  sub_13A484();
  v129 = v56;
  v71 = v57 + 8;
  v72 = v166;
  sub_13A4A4();
  v172 = v70;
  sub_F4C2C();
  v74 = *(v73 - 256);
  sub_13BF64();
  *&v131 = v62;
  (v152)(v72, v153, v64);
  v75 = v163;
  sub_13A4E4();
  v151(v72, v64);
  v76 = v59;
  v77 = v146;
  v146(v76, v74);
  v78 = v69;
  v79 = v68;
  v80 = v145;
  v81 = v79;
  v169 = v67;
  (v145)(v69);
  sub_1D2CC(&v173);
  if (*(v75 + 560) == 1)
  {
    *&v125[2] = v42;
    v125[3] = v44;
    v148 = v46;
    v125[1] = 2 * v129;
    v165 = v71;
    sub_162F0(v75 + 15, v75[18]);
    sub_13A324();
    sub_162F0(v75 + 25, v75[28]);
    sub_13A374();
    v82 = sub_5AA8C();
    (v149)(v69, v150, v81, v82);
    sub_F4C14();
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_140280;
    sub_13A484();
    v171 = v83;
    v84 = v161;
    sub_F4C2C();
    v86 = *(v85 - 256);
    sub_13BF64();
    v87 = v162;
    sub_F4CA4();
    v88();
    sub_13A4E4();
    v151(v72, v87);
    v77(v84, v86);
    v80(v78, v81);
    sub_1D2CC(&v172);
    sub_3C04(&v173);
    v89 = v132;
    v91 = *(v132 + 16);
    v90 = *(v132 + 24);
    v92 = v150;
    v93 = v149;
    if (v91 >= v90 >> 1)
    {
      sub_58ABC(v90 > 1, v91 + 1, 1, v132);
      v89 = v123;
    }

    *(v89 + 16) = v91 + 1;
    sub_F4C8C();
    v96 = v94 + v91 * v95;
    v97 = *(v167 + 32);
    v98 = v134;
    v167 += 32;
    v134 = v97;
    v97(v96, v98, v135);
    v99 = v163[18];
    v100 = v163[19];
    v101 = sub_162F0(v163 + 15, v99);
    *(&v174 + 1) = v99;
    v175 = *(v100 + 8);
    v102 = sub_CC08(&v173);
    (*(*(v99 - 8) + 16))(v102, v101, v99);
    v103 = sub_5AA8C();
    v104 = v147;
    v105 = v164;
    v93(v147, v92, v164, v103);
    sub_F4C14();
    v106 = swift_allocObject();
    *(v106 + 16) = v126;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v171 = v106;
    v107 = v161;
    sub_F4C2C();
    v109 = *(v108 - 256);
    sub_13BF64();
    v110 = v166;
    v111 = v162;
    sub_F4CA4();
    v112();
    v113 = v128;
    sub_13A4E4();
    v151(v110, v111);
    v146(v107, v109);
    v145(v104, v105);
    sub_1D2CC(&v172);
    sub_3C04(&v173);
    v115 = *(v89 + 16);
    v114 = *(v89 + 24);
    if (v115 >= v114 >> 1)
    {
      sub_58ABC(v114 > 1, v115 + 1, 1, v89);
      v89 = v124;
    }

    v116 = v137;
    *(v89 + 16) = v115 + 1;
    sub_F4C8C();
    v134(v117 + v115 * v118, v113, v135);
    sub_13A4D4();
    v119 = v140;
    sub_13A474();
    sub_13A2D4();
    v180.origin.x = sub_2D724();
    v180.size.width = a5;
    v120 = v130;
    v180.size.height = v130;
    CGRectGetMinX(v180);
    v181.origin.x = sub_2D724();
    v181.size.width = a5;
    v181.size.height = v120;
    CGRectGetMinY(v181);
  }

  else
  {
    v116 = v137;
    sub_13A4D4();
    v119 = v140;
    sub_13A474();
    v182.origin.x = sub_2D724();
    v182.size.width = a5;
    v121 = v130;
    v182.size.height = v130;
    CGRectGetMinX(v182);
    v183.origin.x = sub_2D724();
    v183.size.width = a5;
    v183.size.height = v121;
    CGRectGetMinY(v183);
    sub_13A2D4();
  }

  sub_13A2C4();
  (*(v142 + 8))(v119, v143);
  return (*(v138 + 8))(v116, v139);
}

double ServiceOptionComponentLayout.measurements(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();
  v1 = sub_2171C();

  return sub_F39D8(v1, v2, v3, v4);
}

double sub_F39D8(uint64_t a1, void *a2, double a3, double a4)
{
  v95 = sub_13A4F4();
  v6 = *(v95 - 8);
  v111 = v95 - 8;
  v112 = v6;
  v114 = v6;
  __chkstk_darwin(v95 - 8);
  v86 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v91 = &v82 - v9;
  v96 = sub_13A514();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_13A4C4();
  v120 = *(v117 - 8);
  __chkstk_darwin(v117);
  v118 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_13A4B4();
  v108 = *(v116 - 8);
  v119 = v108;
  __chkstk_darwin(v116);
  v98 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_13A454();
  v121 = *(v113 - 8);
  __chkstk_darwin(v113);
  v99 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_13C114();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[43];
  v18 = a2[44];
  sub_162F0(a2 + 40, v19);
  sub_20038(v19, v18);
  sub_13A404();
  v20 = *(v15 + 8);
  v20(v17, v14);
  v21 = a2[38];
  v22 = a2[39];
  sub_162F0(a2 + 35, v21);
  sub_20038(v21, v22);
  sub_13A404();
  v20(v17, v14);
  v23 = a2[33];
  v24 = a2[34];
  sub_162F0(a2 + 30, v23);
  sub_20038(v23, v24);
  sub_13A404();
  v20(v17, v14);
  sub_162F0(a2, a2[3]);
  v92 = a1;
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v112 = *(v112 + 72);
  v25 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  v26 = swift_allocObject();
  v87 = xmmword_13E650;
  *(v26 + 16) = xmmword_13E650;
  v90 = v25;
  v88 = v26;
  v100 = (v26 + v25);
  v115 = a2;
  v27 = a2[13];
  v28 = a2[14];
  v29 = sub_162F0(a2 + 10, v27);
  *(&v127 + 1) = v27;
  v30 = v117;
  v128 = *(v28 + 8);
  v31 = sub_CC08(&v126);
  (*(*(v27 - 8) + 16))(v31, v29, v27);
  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  v110 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v97 = *(v121 + 104);
  v111 = v121 + 104;
  v32 = v99;
  v97(v99);
  v109 = sub_4948(&qword_19AFE8, &unk_140260);
  v33 = *(v108 + 72);
  v34 = v119;
  v35 = *(v119 + 80);
  v108 = (v35 + 32) & ~v35;
  v85 = v108 + 3 * v33;
  v36 = swift_allocObject();
  v84 = xmmword_13E660;
  *(v36 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v122 = v36;
  v107 = sub_20068();
  v106 = sub_4948(&qword_19AFF0, &unk_1402B0);
  v105 = sub_1D268();
  v37 = v98;
  sub_13BF64();
  v104 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v38 = v120;
  v39 = v120 + 104;
  v103 = *(v120 + 104);
  v40 = v118;
  v103(v118);
  sub_13A4E4();
  v41 = *(v38 + 8);
  v120 = v38 + 8;
  v102 = v41;
  v41(v40, v30);
  v42 = *(v34 + 8);
  v119 = v34 + 8;
  v101 = v42;
  v43 = v116;
  v42(v37, v116);
  v44 = *(v121 + 8);
  v121 += 8;
  v45 = v113;
  v44(v32, v113);
  sub_1D2CC(&v123);
  sub_3C04(&v126);
  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  (v97)(v32, v110, v45);
  v89 = v35;
  v46 = swift_allocObject();
  *(v46 + 16) = v87;
  sub_13A484();
  v83 = v33;
  v47 = v115;
  sub_13A4A4();
  *&v123 = v46;
  sub_13BF64();
  v48 = v99;
  v49 = v45;
  v50 = v118;
  v51 = v117;
  *&v87 = v39;
  (v103)(v118, v104, v117);
  sub_13A4E4();
  v102(v50, v51);
  v101(v37, v43);
  v44(v48, v49);
  sub_1D2CC(&v126);
  if (*(v47 + 560) == 1)
  {
    v82 = 2 * v83;
    v52 = v115;
    v100 = v44;
    sub_162F0(v115 + 15, v115[18]);
    sub_13A324();
    sub_162F0(v52 + 25, v52[28]);
    sub_13A374();
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    v53 = v97;
    (v97)(v48, v110, v49);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_140280;
    sub_13A484();
    v122 = v54;
    v55 = v116;
    sub_13BF64();
    v56 = v118;
    v57 = v117;
    (v103)(v118, v104, v117);
    sub_13A4E4();
    v102(v56, v57);
    v101(v37, v55);
    v58 = v48;
    v100(v48, v49);
    sub_1D2CC(&v123);
    sub_3C04(&v126);
    v59 = v88;
    v61 = *(v88 + 16);
    v60 = *(v88 + 24);
    if (v61 >= v60 >> 1)
    {
      sub_58ABC(v60 > 1, v61 + 1, 1, v88);
      v59 = v80;
    }

    *(v59 + 16) = v61 + 1;
    v62 = *(v114 + 32);
    v114 += 32;
    v62(v59 + v90 + v61 * v112, v91, v95);
    v63 = v115[18];
    v64 = v115[19];
    v65 = sub_162F0(v115 + 15, v63);
    *(&v127 + 1) = v63;
    v128 = *(v64 + 8);
    v66 = sub_CC08(&v126);
    (*(*(v63 - 8) + 16))(v66, v65, v63);
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    v67 = v113;
    (v53)(v48, v110, v113);
    v68 = swift_allocObject();
    *(v68 + 16) = v84;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v122 = v68;
    v69 = v98;
    v70 = v116;
    sub_13BF64();
    v71 = v118;
    v72 = v117;
    (v103)(v118, v104, v117);
    v73 = v86;
    sub_13A4E4();
    v102(v71, v72);
    v101(v69, v70);
    v100(v58, v67);
    sub_1D2CC(&v123);
    sub_3C04(&v126);
    v75 = *(v59 + 16);
    v74 = *(v59 + 24);
    if (v75 >= v74 >> 1)
    {
      sub_58ABC(v74 > 1, v75 + 1, 1, v59);
      v59 = v81;
    }

    *(v59 + 16) = v75 + 1;
    v62(v59 + v90 + v75 * v112, v73, v95);
    v76 = v93;
  }

  else
  {
    v76 = v93;
  }

  sub_13A4D4();
  sub_13A464();
  v78 = v77;
  (*(v94 + 8))(v76, v96);
  return v78;
}

unint64_t sub_F498C()
{
  result = qword_1A0918;
  if (!qword_1A0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0918);
  }

  return result;
}

uint64_t sub_F49E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 561))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_F4A28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 552) = 0;
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
    *(result + 560) = 0;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
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
      *(result + 561) = 1;
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

    *(result + 561) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_F4B18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 321))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_F4B58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 320) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 321) = 1;
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

    *(result + 321) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_F4C54(void *a1)
{
  sub_162F0(a1, v1);

  return sub_20038(v1, v2);
}

unint64_t sub_F4CD8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184A98;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_F4D24(char a1)
{
  if (!a1)
  {
    return 0x6853726564616568;
  }

  if (a1 == 1)
  {
    return 0x6C65685379646F62;
  }

  return 0x79646F427473616CLL;
}

unint64_t sub_F4DB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F4CD8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_F4DE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_F4D24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_F4E14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;

  v8 = sub_F4CD8(a1, a2);
  if (v8 == 3)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v9 = sub_139A14();
    sub_4910(v9, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v23 = &type metadata for ServiceOverlayPlatterLayout.BodySpacing;
    v22[0] = swift_allocObject();
    memcpy((v22[0] + 16), v3, 0x160uLL);
    sub_F5AA0(v3, __dst);
    sub_139984();
    sub_49C8(v22);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v25._countAndFlagsBits = a1;
    v25._object = a2;
    sub_13BBC4(v25);
    v26._object = 0x800000000014E6F0;
    v26._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v26);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for ServiceOverlayPlatterLayout.BodySpacing;
    a3[4] = &off_18D208;
    v10 = swift_allocObject();
    *a3 = v10;
    memcpy((v10 + 16), v3, 0x160uLL);
    return sub_F5AA0(v3, __dst);
  }

  else
  {
    v12 = v8;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v13 = sub_139A14();
    sub_4910(v13, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v23 = &type metadata for ServiceOverlayPlatterLayout.BodySpacing;
    v22[0] = swift_allocObject();
    memcpy((v22[0] + 16), v3, 0x160uLL);
    sub_F5AA0(v3, __dst);
    sub_139984();
    sub_49C8(v22);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for ServiceOverlayPlatterLayout.BodySpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v12;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v12)
    {
      if (v12 == 1)
      {
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v14 = swift_allocObject();
        *a3 = v14;
        v15 = (v14 + 16);
        v16 = (v3 + 88);
      }

      else
      {
        v18 = [objc_opt_self() currentDevice];
        v19 = [v18 userInterfaceIdiom];

        if (v19 == &dword_0 + 1)
        {
          memcpy(__dst, (v4 + 264), 0x58uLL);
          a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
          a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
          v20 = swift_allocObject();
          *a3 = v20;
          v15 = (v20 + 16);
          v16 = (v4 + 264);
        }

        else
        {
          memcpy(__dst, (v4 + 176), 0x58uLL);
          a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
          a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
          v21 = swift_allocObject();
          *a3 = v21;
          v15 = (v21 + 16);
          v16 = (v4 + 176);
        }
      }
    }

    else
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v17 = swift_allocObject();
      *a3 = v17;
      v15 = (v17 + 16);
      v16 = v3;
    }

    memcpy(v15, v16, 0x58uLL);
    return sub_4AB8(__dst, v22);
  }
}

void *sub_F53C4@<X0>(void *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  return memcpy(a1, v10, 0x160uLL);
}

uint64_t sub_F5808@<X0>(uint64_t *a1@<X8>)
{
  sub_F53C4(__src);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x160uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_F58E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_F5808(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_F5988()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  if (v0[42])
  {
  }

  if (v0[44])
  {
  }

  return _swift_deallocObject(v0, 368, 7);
}

uint64_t sub_F5A38()
{
  sub_3C04(v0 + 2);
  sub_3C04(v0 + 7);
  sub_3C04(v0 + 12);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_F5AD8()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

_BYTE *storeEnumTagSinglePayload for ServiceOverlayPlatterLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xF5BF4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_F5C30()
{
  result = qword_1A0920;
  if (!qword_1A0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0920);
  }

  return result;
}

unint64_t sub_F5C84(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184B00;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_F5CD0(char a1)
{
  if (!a1)
  {
    return 0x656853656C746974;
  }

  if (a1 == 1)
  {
    return 0x6C65685379646F62;
  }

  return 0x79646F427473616CLL;
}

unint64_t sub_F5D60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F5C84(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_F5D90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_F5CD0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_F5DBC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_F5C84(a1, a2);
  if (v7 == 3)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v19 = &type metadata for ServiceOverlayPlatterTVLayout.BodySpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_F671C(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_13BBC4(v21);
    v22._object = 0x800000000014E6F0;
    v22._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v22);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for ServiceOverlayPlatterTVLayout.BodySpacing;
    a3[4] = &off_18D478;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0x108uLL);
    return sub_F671C(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v19 = &type metadata for ServiceOverlayPlatterTVLayout.BodySpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_F671C(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for ServiceOverlayPlatterTVLayout.BodySpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      if (v11 == 1)
      {
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v13 = swift_allocObject();
        *a3 = v13;
        v14 = (v13 + 16);
        v15 = (v3 + 88);
      }

      else
      {
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v17 = swift_allocObject();
        *a3 = v17;
        v14 = (v17 + 16);
        v15 = (v3 + 176);
      }
    }

    else
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = v3;
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v18);
  }
}

void *sub_F62E0@<X0>(void *a1@<X8>)
{
  sub_139F34();
  sub_139F34();
  sub_139F34();
  return memcpy(a1, __src, 0x108uLL);
}

uint64_t sub_F64A4@<X0>(uint64_t *a1@<X8>)
{
  sub_F62E0(__src);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x108uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_F657C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_F64A4(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_F6624()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_F66B4()
{
  sub_3C04(v0 + 2);
  sub_3C04(v0 + 7);
  sub_3C04(v0 + 12);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_F6754()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

_BYTE *storeEnumTagSinglePayload for ServiceOverlayPlatterTVLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xF6870);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_F68AC()
{
  result = qword_1A0928;
  if (!qword_1A0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0928);
  }

  return result;
}

uint64_t sub_F6914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B5D4();
    v9 = a1 + *(a3 + 52);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_F69B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B5D4();
    v8 = v5 + *(a4 + 52);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ServiceProductBadgedPageDestination(uint64_t a1)
{
  result = qword_1A0988;
  if (!qword_1A0988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F6A7C(uint64_t a1)
{
  sub_F6BAC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_AAC00(319, &unk_19EAC8, &protocol descriptor for ActionModel);
    if (v4 <= 0x3F)
    {
      v5 = sub_AAC00(319, &qword_19AE50, &protocol descriptor for DynamicText);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_67F30(319);
        v2 = v7;
        if (v8 <= 0x3F)
        {
          v2 = sub_13B5D4();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_F6BAC(uint64_t a1)
{
  if (!qword_19AE30)
  {
    sub_139F94();
    v1 = sub_13BF44();
    if (!v2)
    {
      atomic_store(v1, &qword_19AE30);
    }
  }
}

void sub_F6C04(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a3;
  v6 = sub_4948(&qword_19A498, &unk_147A80);
  __chkstk_darwin(v6 - 8);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v7);
  v116 = &v106 - v8;
  v9 = sub_13B5D4();
  v10 = sub_5A838(v9, &v132);
  v119 = v11;
  __chkstk_darwin(v10);
  v115 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_13B584();
  v14 = sub_5A838(v13, &v133);
  v16 = v15;
  __chkstk_darwin(v14);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v17);
  sub_18B60();
  __chkstk_darwin(v18);
  sub_18B60();
  __chkstk_darwin(v19);
  sub_18B60();
  __chkstk_darwin(v20);
  v22 = &v106 - v21;
  __chkstk_darwin(v23);
  v25 = &v106 - v24;
  v26 = type metadata accessor for ServiceProductBadgedPageDestination(0);
  sub_2B538();
  __chkstk_darwin(v27);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v30 = swift_initStackObject();
  v123 = a2;
  v124 = a1;
  v126 = a2;
  v31 = sub_9DB8(0x6B726F77747261, 0xE700000000000000, v26, sub_F7E30, v125);
  if (v3)
  {

    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  *v29 = v32;
  v131 = v26;
  v33 = v124;
  v34 = sub_73A8(0x6567646162, 0xE500000000000000, v26);
  v111 = v32;
  v110 = v29;
  v29[8] = v34;
  v35 = v33;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_677B8();
    v36 = swift_allocError();
    v38 = sub_F7F88(v36, v37);
    *v39 = 0xD000000000000013;
    v39[1] = 0x8000000000151EE0;
    sub_A0718(v38, v39);
    sub_2B538();
    (*(v40 + 104))();
    swift_willThrow();

    v41 = sub_C8188();
    v42 = *(v16 + 8);
    LODWORD(v22) = v42;
    v43 = v121;
    (v42)(v35, v121, v41);
    v42(v25, v43);
    LODWORD(v44) = 0;
    LODWORD(v25) = 0;
    sub_F7F14();
    v49 = v110;
    goto LABEL_7;
  }

  sub_F7F94();
  v47 = *(v16 + 8);
  (v47)(v25, v121);
  v48 = sub_F7F44();
  v49 = v110;
  sub_9414(v48, (v110 + 16));
  v50 = sub_BB310();
  v108 = v47;
  v109 = v16 + 8;
  *(v49 + 56) = v50;
  *(v49 + 64) = v51;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    v52 = sub_677B8();
    v53 = sub_9F18(v52);
    v55 = sub_F7F88(v53, v54);
    *v56 = 0x7470697263736564;
    v56[1] = 0xEB000000006E6F69;
    sub_A0718(v55, v56);
    sub_9EF8();
    (*(v57 + 104))();
    swift_willThrow();

    sub_C8188();
    sub_F7F74();
    v43 = *(v58 - 256);
    v44 = v108;
    v108();
    (v44)(v22, v30);
    sub_F7F14();
    LODWORD(v44) = 1;
    LODWORD(v25) = 1;
    goto LABEL_7;
  }

  sub_139DB4();
  v107 = v30;
  v59 = v121;
  LODWORD(v25) = v109;
  v30 = v108;
  (v108)(v22, v121);
  v60 = sub_F7F44();
  sub_9414(v60, v49 + 72);
  v61 = v118;
  v44 = v124;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    v62 = sub_677B8();
    v63 = sub_9F18(v62);
    v65 = sub_F7F88(v63, v64);
    *v66 = 0xD000000000000011;
    v66[1] = 0x8000000000151F20;
    sub_A0718(v65, v66);
    sub_9EF8();
    (*(v67 + 104))();
    swift_willThrow();

    v68 = sub_C8188();
    v30(v44, v59, v68);
    (v30)(v61, v59);
    LODWORD(v43) = 0;
    LODWORD(v22) = 0;
    sub_F7F64();
    goto LABEL_7;
  }

  sub_F7F94();
  sub_F7F74();
  v108();
  v69 = sub_F7F44();
  sub_9414(v69, v49 + 112);
  *(v49 + 152) = sub_BB310();
  *(v49 + 160) = v70;
  v25 = v114;
  sub_13B594();
  v71 = sub_13B564();
  v72 = v107;
  if (v71)
  {
    goto LABEL_28;
  }

  v73 = v113;
  sub_F7C64(v25, v123, v113);
  if (sub_52E0(v73, 1, v120) == 1)
  {
    sub_6BDB4(v73, &qword_19A498, &unk_147A80);
LABEL_28:
    sub_13BAB4();
    v74 = sub_677B8();
    sub_9F18(v74);
    *v75 = 0x7274654D65676170;
    v75[1] = 0xEB00000000736369;
    sub_A0718(v75, v75);
    sub_9EF8();
    (*(v76 + 104))();
    swift_willThrow();
    sub_F7EF8();
    v77();

    v78 = v116;
    v79 = v120;
    sub_53A8(v116, 1, 1, v120);
    v80 = v115;
    sub_13B5C4();
    if (sub_52E0(v78, 1, v79) != 1)
    {
      sub_6BDB4(v78, &qword_19A498, &unk_147A80);
    }

    goto LABEL_31;
  }

  sub_F7EF8();
  v81();
  v82 = v73;
  v83 = *(v119 + 32);
  v84 = v116;
  v85 = v120;
  (v83)(v116, v82, v120);
  sub_53A8(v84, 0, 1, v85);
  v80 = v115;
  v83();
LABEL_31:
  (*(v119 + 32))(v49 + *(v131 + 52), v80, v120);
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    v86 = sub_677B8();
    sub_9F18(v86);
    *v87 = 0x656C746974627573;
    v87[1] = 0xE800000000000000;
    sub_A0718(v87, v87);
    sub_9EF8();
    (*(v88 + 104))();
    swift_willThrow();
    sub_F7EF8();
    v89();

    v130 = 0;
    v128 = 0u;
    v129 = 0u;
  }

  else
  {
    sub_139DB4();
    sub_F7EF8();
    v100();
    sub_9414(v127, &v128);
  }

  v90 = v129;
  *(v49 + 168) = v128;
  *(v49 + 184) = v90;
  *(v49 + 200) = v130;
  v91 = v117;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_139DB4();
    v101 = sub_F7F24();
    v103 = *(v102 - 256);
    v103(v101);
    (v103)(v117, v72);
    v104 = sub_F7F44();
    sub_9414(v104, v49 + 208);
    sub_F7E38(v49, v112);
    sub_13B5A4();
    sub_2B538();
    (*(v105 + 8))(v123);
    sub_F7E9C(v49);
    return;
  }

  v43 = sub_13BAB4();
  v92 = sub_677B8();
  v93 = sub_9F18(v92);
  LODWORD(v30) = v91;
  v95 = sub_F7F88(v93, v94);
  *v96 = 0x656C746974;
  v96[1] = 0xE500000000000000;
  sub_A0718(v95, v96);
  sub_9EF8();
  (*(v97 + 104))();
  swift_willThrow();

  sub_C8188();
  v98 = sub_F7F24();
  v44 = *(v99 - 256);
  (v44)(v98);
  (v44)(v91, v43);
  sub_F7F64();
  LODWORD(v43) = 1;
  LODWORD(v22) = 1;
LABEL_7:
  sub_13B5A4();
  sub_2B538();
  (*(v45 + 8))(v123);

  if (v44)
  {
    sub_3C04((v49 + 16));
  }

  if (v25)
  {
  }

  v46 = v131;
  if (!v30)
  {
    if (!v43)
    {
      goto LABEL_13;
    }

LABEL_16:
    sub_3C04((v49 + 112));
    if (!v22)
    {
      return;
    }

    goto LABEL_17;
  }

  sub_3C04((v49 + 72));
  if (v43)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (!v22)
  {
    return;
  }

LABEL_17:

  sub_6BDB4(v49 + 168, &qword_19E960, &qword_13FD30);
  (*(v119 + 8))(v49 + *(v46 + 52), v120);
}

uint64_t sub_F7AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_139F94();
  (*(v11 + 16))(v13, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  result = sub_139F84();
  *a3 = result;
  return result;
}

uint64_t sub_F7C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B5B4();
  v14 = sub_13B5D4();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t sub_F7E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceProductBadgedPageDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F7E9C(uint64_t a1)
{
  v2 = type metadata accessor for ServiceProductBadgedPageDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_F7F94()
{

  return sub_139BC4();
}

uint64_t ServiceProductBadgedPageLayout.init(metrics:contentView:titleView:subtitleView:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  memcpy(a5, __src, 0xC0uLL);
  v9 = *(a2 + 16);
  *(a5 + 192) = *a2;
  *(a5 + 208) = v9;
  *(a5 + 224) = *(a2 + 32);
  sub_9414(a3, a5 + 232);

  return sub_9414(a4, a5 + 272);
}

void ServiceProductBadgedPageLayout.Metrics.detailsMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

uint64_t ServiceProductBadgedPageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v90 = a5;
  v91 = a4;
  v85 = a3;
  v83 = a2;
  v9 = sub_13A314();
  v10 = sub_5A838(v9, &v102);
  v82 = v11;
  __chkstk_darwin(v10);
  sub_21548();
  sub_2159C(v12);
  v13 = sub_13A4C4();
  v14 = sub_5A838(v13, &v104);
  v78 = v15;
  __chkstk_darwin(v14);
  sub_21548();
  sub_2159C(v16);
  v17 = sub_13A454();
  v18 = sub_5A838(v17, &v100);
  v93 = v19;
  __chkstk_darwin(v18);
  sub_21548();
  sub_2159C(v20);
  v21 = sub_13A4F4();
  v22 = sub_5A838(v21, &v103);
  v75 = v23;
  __chkstk_darwin(v22);
  sub_21548();
  sub_2159C(v24);
  v25 = sub_13A514();
  v26 = sub_5A838(v25, &v101);
  v79 = v27;
  __chkstk_darwin(v26);
  sub_21548();
  v29 = v28;
  v30 = sub_13A4B4();
  v31 = sub_5A838(v30, &v105);
  v88 = v32;
  __chkstk_darwin(v31);
  sub_21548();
  v94 = v33;
  v34 = sub_13C114();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v6;
  sub_2DAFC((v6 + 24), &v95);
  v70 = a1;
  if (v96)
  {
    sub_9414(&v95, &v97);
    v38 = v92;
    sub_162F0(v92 + 5, v92[8]);
    sub_F8C80();
    v39 = sub_F8C48();
    v40 = *(v35 + 8);
    v40(v37, v34);
    sub_162F0(v38, v38[3]);
    sub_F8C80();
    v41 = sub_F8C48();
    v40(v37, v34);
    v42 = v85;
    v106.origin.x = v85;
    v43 = v91;
    v106.origin.y = v91;
    v44 = v90;
    v106.size.width = v90;
    v106.size.height = a6;
    MinX = CGRectGetMinX(v106);
    v107.origin.x = v42;
    v107.origin.y = v43;
    v107.size.width = v44;
    v107.size.height = a6;
    Width = CGRectGetWidth(v107);
    sub_162F0(&v97, *(&v98 + 1));
    v47 = MinX;
    sub_13BE44();
    sub_13A354();
    v108.origin.x = MinX;
    v108.origin.y = v41;
    v108.size.width = Width;
    v71 = v39;
    v108.size.height = v39;
    v72 = v41 + CGRectGetHeight(v108);
    sub_3C04(&v97);
  }

  else
  {
    sub_CC68(&v95, &unk_1A0730, &qword_140F10);
    v72 = 0.0;
    v47 = 0.0;
    v41 = 0.0;
    Width = 0.0;
    v71 = 0.0;
  }

  sub_4948(&qword_19AFE8, &unk_140260);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  *&v97 = v48;
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  sub_13BF64();
  v49 = v29;
  sub_13A4D4();
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v50 = v93;
  v68 = *(v93 + 104);
  v51 = v74;
  v52 = v76;
  v68(v74, enum case for VerticalFlowLayout.VerticalPlacement.top(_:));
  v67 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v53 = v78;
  v66 = *(v78 + 104);
  v54 = v77;
  v55 = v87;
  v66(v77);
  v56 = v73;
  sub_13A4E4();
  v78 = *(v53 + 8);
  (v78)(v54, *&v55);
  v65 = *(v50 + 8);
  v93 = v50 + 8;
  v65(v51, v52);
  sub_CC68(&v97, &qword_19AFF8, &unk_140270);
  sub_13A504();
  v75 = *(v75 + 8);
  (v75)(v56, v86);
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  (v68)(v51, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), v52);
  v57 = v87;
  (v66)(v54, v67, *&v87);
  v58 = v92;
  v59 = v94;
  sub_13A4E4();
  (v78)(v54, *&v57);
  v65(v51, v52);
  sub_CC68(&v97, &qword_19AFF8, &unk_140270);
  sub_13A504();
  (v75)(v56, v86);
  v60 = v85;
  v109.origin.x = v85;
  v109.origin.y = v91;
  v109.size.width = v90;
  v109.size.height = a6;
  v87 = CGRectGetMinX(v109);
  v110.origin.x = sub_F8C6C();
  CGRectGetMinY(v110);
  v69 = a6;
  v111.origin.x = v47;
  v111.origin.y = v41;
  v111.size.width = Width;
  v111.size.height = v71;
  CGRectGetMaxY(v111);
  v112.origin.x = sub_F8C6C();
  CGRectGetWidth(v112);
  v93 = v58[13];
  sub_13BE34();
  v61 = v80;
  sub_13A384();
  v62 = v81;
  sub_13A474();
  sub_13A304();
  sub_13A2D4();
  sub_13BE54();
  CGRectGetHeight(v113);
  v114.origin.x = v60;
  v114.origin.y = v91;
  v114.size.width = v90;
  v114.size.height = v69;
  CGRectGetWidth(v114);
  sub_13A2B4();
  (*(v82 + 8))(v62, v84);
  (*(v79 + 8))(v49, v61);
  return (*(v88 + 8))(v59, v89);
}

uint64_t sub_F8AB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 312))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_F8AF0(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_F8B94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_F8BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_F8C48()
{

  sub_13A404();
  return result;
}

uint64_t sub_F8C80()
{

  return sub_20038(v0, v1);
}

UIFontTextStyle sub_F8CA0()
{
  v0 = sub_13A3E4();
  sub_7E5D8(v0, qword_1A09E0);
  v1 = sub_4910(v0, qword_1A09E0);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

UIFontTextStyle sub_F8D50()
{
  v0 = sub_13A3E4();
  sub_7E5D8(v0, qword_1A09F8);
  v1 = sub_4910(v0, qword_1A09F8);
  *v1 = UIFontTextStyleTitle1;
  *(v1 + 8) = UIFontWeightBold;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleTitle1;
}

uint64_t sub_F8E30(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_13A2A4();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v11 = sub_13A434();
  sub_7E5D8(v11, a3);
  sub_4910(v11, a3);
  if (qword_19A0D0 != -1)
  {
    swift_once();
  }

  v12 = sub_13A3E4();
  sub_4910(v12, qword_1A09F8);
  sub_FC218();
  (*(v13 + 16))(v10);
  v14 = sub_FC1F0();
  v15(v14);
  v18[3] = v4;
  v18[4] = &protocol witness table for FontSource;
  sub_CC08(v18);
  sub_FC204();
  v16();
  sub_13A444();
  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_F8FE8(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_13A2A4();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v11 = sub_13A434();
  sub_7E5D8(v11, a3);
  sub_4910(v11, a3);
  if (qword_19A0C8 != -1)
  {
    swift_once();
  }

  v12 = sub_13A3E4();
  sub_4910(v12, qword_1A09E0);
  sub_FC218();
  (*(v13 + 16))(v10);
  v14 = sub_FC1F0();
  v15(v14);
  v18[3] = v4;
  v18[4] = &protocol witness table for FontSource;
  sub_CC08(v18);
  sub_FC204();
  v16();
  sub_13A444();
  return (*(v6 + 8))(v10, v4);
}

char *sub_F919C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_13C114();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_9EC0();
  v16 = v15 - v14;
  v17 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_artworkFetcher];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerActionBlock];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_titleLabel;
  *&v4[v19] = sub_FA4BC();
  v20 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_subtitleLabel;
  *&v4[v20] = sub_FA5F0();
  v21 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_descriptionLabel;
  *&v4[v21] = sub_FA6EC();
  v22 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerBlur;
  *&v4[v22] = [objc_allocWithZone(AMSUICommonVisualEffectView) init];
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView] = 0;
  v23 = objc_allocWithZone(UIScrollView);
  v24 = sub_A8FE8();
  v27 = [v25 v26];
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_scrollView] = v27;
  v28 = objc_allocWithZone(UIButton);
  v29 = sub_A8FE8();
  v32 = [v30 v31];
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton] = v32;
  v33 = objc_allocWithZone(UIView);
  v34 = sub_A8FE8();
  v37 = [v35 v36];
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerView] = v37;
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 ams_primaryBackground];
  [v39 setBackgroundColor:v40];

  v66.receiver = v4;
  v66.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v66, "initWithFrame:", a1, a2, a3, a4);
  sub_F95F8(v62);
  v42 = v64;
  v43 = v65;
  sub_162F0(v63, v64);
  v44 = v41;
  sub_20038(v42, v43);
  sub_13A404();
  (*(v12 + 8))(v16, v10);

  sub_FC0D0(v62);
  v45 = objc_allocWithZone(sub_139CF4());
  v46 = sub_139CE4();
  v47 = *&v44[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView];
  *&v44[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView] = v46;

  v48 = v44;
  v49 = [v38 clearColor];
  [v48 setBackgroundColor:v49];

  v50 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_scrollView;
  [*&v48[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_scrollView] setContentInsetAdjustmentBehavior:2];
  v51 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton;
  v52 = [*&v48[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton] layer];
  [v52 setCornerRadius:14.0];

  v53 = [*&v48[v51] layer];
  [v53 setMasksToBounds:1];

  [v48 addSubview:*&v48[v50]];
  sub_FC22C();
  [v48 v54];
  sub_FC22C();
  [v48 v55];
  sub_FC22C();
  [v56 v57];
  sub_FC22C();
  [v58 v59];
  sub_F99E8();
  sub_F9B20();
  sub_F9C24();
  v60 = *&v48[v50];
  [v60 setDelegate:v48];

  return v48;
}

id sub_F95F8@<X0>(void *a1@<X8>)
{
  if (sub_BBCC4())
  {
    *(&__src[1] + 1) = &type metadata for Double;
    *&__src[2] = &protocol witness table for Double;
    *&__src[0] = 0;
    *&__src[4] = &type metadata for Double;
    *(&__src[4] + 1) = &protocol witness table for Double;
    *(&__src[2] + 1) = 0x406E400000000000;
    if (qword_19A0E8 != -1)
    {
      swift_once();
    }

    v3 = sub_13A434();
    v4 = sub_4910(v3, qword_1A0A40);
    *(&__src[8] + 1) = v3;
    *&__src[9] = &protocol witness table for StaticDimension;
    v5 = sub_CC08(&__src[7]);
    v6 = *(*(v3 - 8) + 16);
    v6(v5, v4, v3);
    if (qword_19A0F0 != -1)
    {
      swift_once();
    }

    v7 = sub_4910(v3, qword_1A0A58);
    *&__src[11] = v3;
    *(&__src[11] + 1) = &protocol witness table for StaticDimension;
    v8 = sub_CC08(&__src[9] + 1);
    v6(v8, v7, v3);
    __src[5] = xmmword_14B600;
    __src[6] = xmmword_14B610;
    v9 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView];
    if (v9)
    {
LABEL_13:
      v16 = sub_139CF4();
      v17 = protocol witness table for UIView;
      goto LABEL_16;
    }

    v17 = 0;
    v16 = 0;
  }

  else
  {
    *(&__src[1] + 1) = &type metadata for Double;
    *&__src[2] = &protocol witness table for Double;
    *&__src[0] = 0;
    [v1 bounds];
    *&__src[4] = &type metadata for CGFloat;
    *(&__src[4] + 1) = &protocol witness table for CGFloat;
    *(&__src[2] + 1) = CGRectGetWidth(v27);
    if (qword_19A0D8 != -1)
    {
      swift_once();
    }

    v10 = sub_13A434();
    v11 = sub_4910(v10, qword_1A0A10);
    *(&__src[8] + 1) = v10;
    *&__src[9] = &protocol witness table for StaticDimension;
    v12 = sub_CC08(&__src[7]);
    v13 = *(*(v10 - 8) + 16);
    v13(v12, v11, v10);
    if (qword_19A0E0 != -1)
    {
      swift_once();
    }

    v14 = sub_4910(v10, qword_1A0A28);
    *&__src[11] = v10;
    *(&__src[11] + 1) = &protocol witness table for StaticDimension;
    v15 = sub_CC08(&__src[9] + 1);
    v13(v15, v14, v10);
    __src[5] = xmmword_14B5E0;
    __src[6] = xmmword_14B5F0;
    v9 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView];
    if (v9)
    {
      goto LABEL_13;
    }

    v16 = 0;
    v17 = 0;
  }

LABEL_16:
  v18 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_titleLabel];
  v19 = sub_CACC(0, &unk_1A0AF0, UILabel_ptr);
  a1[32] = v19;
  a1[33] = protocol witness table for UIView;
  a1[29] = v18;
  v20 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_subtitleLabel];
  a1[37] = v19;
  a1[38] = protocol witness table for UIView;
  v24 = v20;
  a1[34] = v20;
  memcpy(a1, __src, 0xC0uLL);
  a1[24] = v9;
  a1[25] = 0;
  a1[26] = 0;
  a1[27] = v16;
  a1[28] = v17;
  v21 = v9;
  v22 = v18;

  return v24;
}

void sub_F99E8()
{
  v1 = [*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton] titleLabel];
  if (v1)
  {
    v2 = v1;
    sub_CACC(0, &unk_19EC20, UIFont_ptr);
    if (qword_199FC0 != -1)
    {
      swift_once();
    }

    v3 = sub_13A3E4();
    sub_4910(v3, qword_1B2AA8);
    v4 = [v0 traitCollection];
    v5 = sub_13BE84();

    [v2 setFont:v5];
  }
}

void sub_F9B20()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton];
  v2 = [v0 tintColor];
  [v1 setBackgroundColor:v2];

  v3 = [v0 tintColor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 ams_isLight];

    v6 = objc_opt_self();
    v7 = &selRef_blackColor;
    if (!v5)
    {
      v7 = &selRef_whiteColor;
    }

    v8 = [v6 *v7];
    [v1 setTitleColor:v8 forState:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_F9C24()
{
  v1 = sub_13C114();
  v69 = v1;
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerView];
  v7 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_descriptionLabel];
  [v6 addSubview:{v7, v3}];
  v8 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton];
  [v6 addSubview:v8];
  v9 = v0;
  sub_FB80C(v75);
  v74 = v75[2];
  sub_13A284();
  sub_13A404();
  v11 = v10;
  v12 = *(v2 + 8);
  v70 = v2 + 8;
  v71 = v12;
  v12(v5, v1);
  v13 = sub_BBCC4();
  v14 = 0.0;
  if (v13)
  {
    v14 = -20.0;
  }

  v15 = v14 - v11;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v72 = objc_opt_self();
  sub_4948(&qword_1A0B00, &unk_147390);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_14B620;
  v17 = [v6 bottomAnchor];
  v18 = [v9 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v16 + 32) = v19;
  v20 = [v6 leadingAnchor];
  v73 = v9;
  v21 = [v9 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v68 = v6;
  v23 = [v6 trailingAnchor];
  v24 = [v9 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v16 + 48) = v25;
  v26 = [v8 bottomAnchor];
  v27 = [v6 safeAreaLayoutGuide];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:v15];
  *(v16 + 56) = v29;
  v30 = v8;
  v31 = [v8 leadingAnchor];
  v32 = [v7 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v16 + 64) = v33;
  v66 = v8;
  v34 = [v8 trailingAnchor];
  v35 = v7;
  v67 = v7;
  v36 = [v7 trailingAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];

  *(v16 + 72) = v37;
  v38 = [v30 heightAnchor];
  v39 = v80;
  v40 = v81;
  sub_162F0(v79, v80);
  sub_20038(v39, v40);
  sub_13A404();
  v42 = v41;
  v43 = v69;
  v44 = v71;
  v71(v5, v69);
  v45 = [v38 constraintEqualToConstant:v42];

  *(v16 + 80) = v45;
  v46 = [v35 bottomAnchor];
  v47 = [v66 topAnchor];
  v48 = v77;
  v49 = v78;
  sub_162F0(v76, v77);
  sub_20038(v48, v49);
  sub_13A404();
  v51 = v50;
  v44(v5, v43);
  v52 = [v46 constraintEqualToAnchor:v47 constant:-v51];

  *(v16 + 88) = v52;
  v53 = v67;
  v54 = [v67 leadingAnchor];
  v55 = v68;
  v56 = [v68 leadingAnchor];
  v57 = [v54 constraintEqualToAnchor:v56 constant:v75[1]];

  *(v16 + 96) = v57;
  v58 = [v53 trailingAnchor];
  v59 = [v55 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:-v75[3]];

  *(v16 + 104) = v60;
  v61 = [v53 topAnchor];
  v62 = [v55 topAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:v75[0]];

  *(v16 + 112) = v63;
  sub_CACC(0, &qword_1A0B08, NSLayoutConstraint_ptr);
  isa = sub_13BC14().super.isa;

  [v72 activateConstraints:isa];

  return sub_FC180(v75);
}

void sub_FA3C0()
{
  v1 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_artworkFetcher);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerActionBlock);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_titleLabel;
  *(v0 + v3) = sub_FA4BC();
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_subtitleLabel;
  *(v0 + v4) = sub_FA5F0();
  v5 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_descriptionLabel;
  *(v0 + v5) = sub_FA6EC();
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerBlur;
  *(v0 + v6) = [objc_allocWithZone(AMSUICommonVisualEffectView) init];
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView) = 0;
  sub_13C094();
  __break(1u);
}

id sub_FA4BC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setNumberOfLines:2];
  [v0 setTextAlignment:1];
  v1 = [objc_opt_self() ams_primaryText];
  [v0 setTextColor:v1];

  sub_CACC(0, &unk_19EC20, UIFont_ptr);
  v2 = sub_BB1E0(UIFontTextStyleTitle1, *&UIFontWeightBold, 0);
  [v0 setFont:v2];

  [v0 setLineBreakMode:4];
  [v0 setAdjustsFontSizeToFitWidth:1];
  [v0 setMinimumScaleFactor:0.7];
  return v0;
}

id sub_FA5F0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setNumberOfLines:0];
  [v0 setLineBreakMode:0];
  [v0 setTextAlignment:1];
  v1 = [objc_opt_self() ams_primaryText];
  [v0 setTextColor:v1];

  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:0];
  [v0 setFont:v2];

  return v0;
}

uint64_t sub_FA6EC()
{
  sub_139BB4();
  v0 = [objc_opt_self() ams_secondaryText];
  v1 = sub_13A2A4();
  v5[3] = v1;
  v5[4] = &protocol witness table for FontSource;
  *sub_CC08(v5) = UIFontTextStyleFootnote;
  (*(*(v1 - 8) + 104))();
  v2 = UIFontTextStyleFootnote;
  v3 = sub_139BA4();
  sub_139B84();
  sub_139B74();
  return v3;
}

void sub_FA7E0()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_scrollView];
    v3 = v1;
    [v2 addSubview:v3];
    [v0 setNeedsLayout];
  }
}

void sub_FA870(void *a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView;
  v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView;
    v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_FA7E0();
}

uint64_t sub_FA8F4()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_13A314();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v37.receiver = v2;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews");
  [v2 bounds];
  sub_1D3D0();
  result = CGRectIsEmpty(v38);
  if ((result & 1) == 0)
  {
    v12 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_scrollView];
    v13 = sub_5AA7C();
    [v14 v15];
    v16 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView];
    if (v16)
    {
      v17 = v16;
      [v2 bounds];
      v19 = sub_FBEC4(v2, v18);
      sub_FAB80(v17, v19, v20);
    }

    v21 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerBlur];
    v22 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerView];
    [v22 frame];
    [v21 setFrame:?];
    [v22 frame];
    CGRectGetHeight(v39);
    sub_13BE34();
    sub_1D3D0();
    sub_F95F8(v36);
    v23 = sub_5AA7C();
    ServiceProductBadgedPageLayout.placeChildren(relativeTo:in:)(v2, v24, v23, v25, v26, v1);
    sub_13A2D4();
    v28 = v27;
    v40.origin.x = sub_5AA7C();
    v40.size.height = v1;
    Height = CGRectGetHeight(v40);
    sub_13A2D4();
    v32 = v31;
    if (Height < v28)
    {
      sub_13A2D4();
      v34 = v33;
      [v22 frame];
      v30 = v34 + CGRectGetHeight(v41);
    }

    [v12 setContentSize:{v32, v30}];
    v35 = sub_FACB4(1);
    (*(v6 + 8))(v10, v4, v35);
    return sub_FC0D0(v36);
  }

  return result;
}

void sub_FAB80(void *a1, double a2, double a3)
{
  v4 = v3;
  if (((*(&stru_68.reserved2 + (swift_isaMask & *a1)))() & 1) == 0 || ((*(&stru_68.offset + (swift_isaMask & *a1)))() == a2 ? (v9 = v8 == a3) : (v9 = 0), !v9))
  {
    (*(&stru_68.reloff + (swift_isaMask & *a1)))(a2, a3);
    v10 = v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_artworkFetcher;
    v11 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_artworkFetcher);
    if (v11)
    {
      v12 = *(v10 + 8);

      v11(v13);

      sub_C9FC(v11, v12);
    }
  }
}

double sub_FACB4(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_scrollView];
  [v3 contentSize];
  v5 = v4;
  [v1 bounds];
  v7 = v6;
  [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerView] frame];
  result = v7 - CGRectGetHeight(v21);
  if (result < v5)
  {
    [v3 contentOffset];
    v10 = v9;
    [v3 contentSize];
    v12 = v11;
    [v1 bounds];
    v13 = v12 - CGRectGetHeight(v22);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v10 < v13;
    if (a1)
    {
      v16 = objc_opt_self();
      v19[4] = sub_FC15C;
      v19[5] = v15;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 1107296256;
      v19[2] = sub_E2448;
      v19[3] = &unk_18D800;
      v17 = _Block_copy(v19);

      [v16 animateWithDuration:4 delay:v17 options:0 animations:0.3 completion:0.0];

      _Block_release(v17);
    }

    else
    {

      sub_FBB50(v18, v10 < v13);
    }
  }

  return result;
}

id sub_FAF30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_FB2E8(a1[19], a1[20], a2, a3);
  (*(&stru_158.size + (swift_isaMask & **&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_descriptionLabel])))(a1 + 9, a4);
  v11 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_titleLabel];
  sub_162F0(a1 + 26, a1[29]);
  v12 = sub_FC1D8();
  v14 = v13(v12);
  sub_FBE60(v14, v15, v11);
  sub_B0F90((a1 + 21), &v32);
  if (v33)
  {
    sub_9414(&v32, v34);
    v16 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_subtitleLabel];
    sub_162F0(v34, v35);
    v17 = sub_FC1D8();
    v19 = v18(v17);
    sub_FBE60(v19, v20, v16);
    sub_3C04(v34);
  }

  else
  {
    sub_CC68(&v32, &qword_19E960, &qword_13FD30);
  }

  v21 = *a1;
  if (v21)
  {
    v22 = objc_allocWithZone(sub_139CF4());

    sub_A8FE8();
    v23 = sub_139CE4();
    sub_FA870(v23);
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v24 = sub_139A14();
    sub_4910(v24, qword_1B2B00);
    sub_4948(&unk_19E010, qword_13F520);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v35 = ObjectType;
    v34[0] = v5;
    v25 = v5;
    v26 = AMSLogKey();
    if (v26)
    {
      v27 = v26;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v34);
    sub_139974();
    v35 = sub_139F94();
    v34[0] = v21;

    sub_139984();
    sub_CC68(v34, &unk_1A06F0, &unk_13EF80);
    sub_1399F4();

    [v25 bounds];
    v29 = sub_FBEC4(v25, v28);
    sub_FB38C(v21, a4, v29, v30);
  }

  return [v5 setNeedsLayout];
}

id sub_FB2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerActionBlock);
  v8 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerActionBlock);
  v9 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerActionBlock + 8);
  *v7 = a3;
  v7[1] = a4;
  sub_C9FC(v8, v9);
  v10 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton);

  sub_FBE00(a1, a2, 0, v10);

  return [v10 addTarget:v4 action:"didTapOffer:" forControlEvents:64];
}

void sub_FB38C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v9 = objc_allocWithZone(sub_139CF4());
  v10 = sub_139CE4();
  v17 = v10;
  sub_FA870(v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 2) = v11;
  *(v13 + 3) = v12;
  *(v13 + 4) = a1;
  v14 = (v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_artworkFetcher);
  v15 = *(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_artworkFetcher);
  v16 = *(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_artworkFetcher + 8);
  *v14 = sub_FC0C4;
  v14[1] = v13;

  sub_C9FC(v15, v16);

  sub_FAB80(v17, a3, a4);
}

double sub_FB504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      (*&stru_108.segname[(swift_isaMask & *v7) + 16])(a3, v6);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_FB5E0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerActionBlock);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerActionBlock + 8);

    v2(v3);

    return sub_C9FC(v2, v4);
  }

  return result;
}

void sub_FB6C0()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_F9B20();
}

id sub_FB744(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "traitCollectionDidChange:", a1);
  sub_F99E8();
  return [v1 setNeedsLayout];
}

uint64_t sub_FB80C@<X0>(double *a1@<X8>)
{
  v2 = sub_13C114();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_13A2A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_13A434();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_BBCC4();
  v14 = 20.0;
  v15 = 20.0;
  if (result)
  {
    v22 = v2;
    *v9 = UIFontTextStyleBody;
    *(v9 + 2) = 0;
    v21 = v3;
    v16 = enum case for FontUseCase.preferredFont(_:);
    v17 = sub_13A3E4();
    (*(*(v17 - 8) + 104))(v9, v16, v17);
    (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
    v24[3] = v6;
    v24[4] = &protocol witness table for FontSource;
    v18 = sub_CC08(v24);
    (*(v7 + 16))(v18, v9, v6);
    v19 = UIFontTextStyleBody;
    sub_13A444();
    (*(v7 + 8))(v9, v6);
    sub_13A284();
    sub_13A404();
    v15 = v20;
    (*(v21 + 8))(v5, v22);
    result = (*(v23 + 8))(v12, v10);
    v14 = 24.0;
  }

  *(a1 + 7) = &type metadata for Double;
  *(a1 + 8) = &protocol witness table for Double;
  a1[4] = 16.0;
  *(a1 + 12) = &type metadata for Double;
  *(a1 + 13) = &protocol witness table for Double;
  a1[9] = 50.0;
  *a1 = 16.0;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v14;
  return result;
}

void sub_FBB50(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerBlur);

    if (a2)
    {
      v6 = [objc_opt_self() effectWithStyle:7];
    }

    else
    {
      v6 = 0;
    }

    [v5 setEffect:v6];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerView);

    v10 = objc_opt_self();
    v11 = &selRef_clearColor;
    if ((a2 & 1) == 0)
    {
      v11 = &selRef_ams_primaryBackground;
    }

    v12 = [v10 *v11];
    [v9 setBackgroundColor:v12];
  }
}

void sub_FBE00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_13BB54();
  [a4 setTitle:v6 forState:a3];
}

void sub_FBE60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_13BB54();

  [a3 setText:v4];
}

double sub_FBEC4(uint64_t a1, double a2)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F95F8(v11);
  v7 = v13;
  v8 = v14;
  sub_162F0(v12, v13);
  sub_20038(v7, v8);
  sub_13A404();
  (*(v4 + 8))(v6, v3);
  sub_FC0D0(v11);
  return a2;
}

uint64_t sub_FC00C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_FC044()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_FC07C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_FC124()
{

  return _swift_deallocObject(v0, 25, 7);
}

double sub_FC168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_FC238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_13B974();
  sub_9E94();
  v45 = v7;
  v46 = v6;
  __chkstk_darwin(v6);
  sub_9EC0();
  v44 = (v9 - v8);
  v51 = sub_13B994();
  sub_9E94();
  v55 = v10;
  __chkstk_darwin(v11);
  sub_9EC0();
  v50 = v13 - v12;
  v14 = sub_4948(&qword_19A498, &unk_147A80);
  v15 = sub_8AD98(v14);
  __chkstk_darwin(v15);
  v54 = &v44 - v16;
  v17 = sub_13B834();
  v18 = sub_8AD98(v17);
  __chkstk_darwin(v18);
  sub_9EC0();
  v48 = v20 - v19;
  v21 = sub_13B6E4();
  sub_9E94();
  v57 = v22;
  __chkstk_darwin(v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v44 - v27;
  v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_didApply] = 0;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_overlayViewController] = 0;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageView] = [objc_allocWithZone(type metadata accessor for ServiceProductBadgedPageView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v56 = a1;
  sub_F7E38(a1, &v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination]);
  v47 = OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_objectGraph;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_objectGraph] = a2;
  sub_13B7E4();
  sub_13B6B4();

  sub_13B9A4();
  v29 = v59;
  sub_13B9A4();
  sub_4948(&unk_1A16C0, &unk_147380);
  sub_13B9A4();
  v30 = *(v57 + 16);
  v52 = v28;
  v53 = v21;
  v30(v25, v28, v21);

  swift_unknownObjectRetain();
  sub_13B814();
  swift_unknownObjectRelease();
  v31 = sub_13B5D4();
  sub_53A8(v54, 1, 1, v31);
  sub_13B884();
  swift_allocObject();
  v49 = v29;
  v32 = v51;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_metricsPresenter] = sub_13B844();
  v33 = v50;
  v54 = a2;
  sub_13B9A4();
  sub_139E44();

  v34 = sub_139E34();

  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter] = v34;
  if (v34)
  {
    v36 = v44;
    v35 = v45;
    *v44 = 1;
    v37 = v46;
    (*(v35 + 104))(v36, enum case for PageRenderMetricsPresenter.ActivityStart.fetchPrimaryData(_:), v46);
    sub_A8FC0();
    v39 = *(v38 + 152);

    v39(v36);

    (*(v35 + 8))(v36, v37);
  }

  v40 = type metadata accessor for ServiceProductBadgedPageViewController(0);
  v58.receiver = v3;
  v58.super_class = v40;
  v41 = objc_msgSendSuper2(&v58, "init");
  [*&v41[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageView] setHidden:1];

  swift_unknownObjectRelease();
  sub_FE1A8();
  sub_FDF84(v56, v42);
  (*(v55 + 8))(v33, v32);
  (*(v57 + 8))(v52, v53);
  return v41;
}

void sub_FC788()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_didApply) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_overlayViewController) = 0;
  sub_13C094();
  __break(1u);
}

id sub_FC814()
{
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_overlayViewController])
  {
    return [v0 unsetChildViewController:?];
  }

  return result;
}

void sub_FC838()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    [v0 setChildViewController:v2];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      sub_12B7E0(0, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_FC8F4(void *a1)
{
  sub_FC814();
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_overlayViewController);
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_overlayViewController) = a1;
  v4 = a1;

  sub_FC838();
}

void sub_FC95C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ServiceProductBadgedPageViewController(0);
  objc_msgSendSuper2(&v3, "loadView");
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_primaryBackground];
  [v1 setBackgroundColor:v2];
}

void sub_FCA40()
{
  v1 = v0;
  v2 = sub_13B964();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ServiceProductBadgedPageViewController(0);
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v9 = [v0 view];
  [v9 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageView]];

  sub_13B884();
  sub_13B904();
  if (*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v10 + 168))();
    v11 = &v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination];
    v12 = *(type metadata accessor for ServiceProductBadgedPageDestination(0) + 52);
    sub_13B5D4();
    sub_9F94();
    (*(v13 + 16))(v8, &v11[v12]);
    (*(v4 + 104))(v8, enum case for PageRenderMetricsPresenter.ActivityEnd.fetchPrimaryDataCompleted(_:), v2);
    sub_A8FC0();
    (*(v14 + 160))(v8);
    (*(v4 + 8))(v8, v2);
  }
}

void sub_FCC78()
{
  v2 = sub_FE1C0();
  v23.receiver = v0;
  v23.super_class = v2;
  objc_msgSendSuper2(&v23, "viewDidAppear:", v1 & 1);
  sub_13B854();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v3 + 184))();
  }

  v4 = [v0 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 setNavigationBarHidden:0 animated:0];
  }

  v6 = &v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination];
  v7 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination + 56];
  v8 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination + 64];
  v22[3] = v2;
  v22[0] = v0;
  v9 = objc_allocWithZone(UIBarButtonItem);

  v10 = v0;
  v11 = sub_FE024(v7, v8, 0, v22, "dismissPressed:");
  v12 = objc_allocWithZone(type metadata accessor for ServiceBadgeView());
  v13 = sub_116774(0, 20.0, v12, 17.0, 100.0, 20.0, 20.0);
  v14 = v6[8];
  v15 = [v10 traitCollection];
  sub_E67FC(v14, v15, *&v10[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_objectGraph]);

  v16 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v13];
  v17 = [v10 parentViewController];
  if (v17)
  {
    v18 = v17;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v21 = [v18 navigationItem];
      [v21 setLeftBarButtonItem:v16];

      v20 = [v18 navigationItem];
      [v20 setRightBarButtonItem:v11];

      goto LABEL_10;
    }
  }

  v19 = [v10 navigationItem];
  [v19 setLeftBarButtonItem:v16];

  v20 = [v10 navigationItem];
  [v20 setRightBarButtonItem:v11];
LABEL_10:

  sub_FD804();
}

void sub_FCFA0()
{
  v3.receiver = v0;
  v3.super_class = sub_FE1C0();
  objc_msgSendSuper2(&v3, "viewDidDisappear:", v1 & 1);
  sub_13B884();
  sub_13B924();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 192))();
  }
}

void sub_FD084()
{
  v3.receiver = v0;
  v3.super_class = sub_FE1C0();
  objc_msgSendSuper2(&v3, "viewWillAppear:", v1 & 1);
  sub_13B884();
  sub_13B914();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 176))();
  }
}

uint64_t sub_FD168(char a1)
{
  v2 = v1;
  v4 = sub_13B954();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ServiceProductBadgedPageViewController(0);
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  sub_13B944();
  sub_13B864();
  v11 = *(v6 + 8);
  result = v11(v10, v4);
  if (*&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter])
  {
    sub_13B944();
    sub_A8FC0();
    (*(v13 + 200))(v10);
    return v11(v10, v4);
  }

  return result;
}

id sub_FD308()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductBadgedPageViewController(0);
  objc_msgSendSuper2(&v2, "viewWillLayoutSubviews");
  return [*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageView] setFrame:sub_FD434()];
}

void sub_FD3B0()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ServiceProductBadgedPageViewController(0);
  objc_msgSendSuper2(&v1, "viewDidLayoutSubviews");
  sub_FD804();
}

double sub_FD434()
{
  v1 = [v0 view];
  [v1 safeAreaInsets];

  v2 = [v0 view];
  [v2 bounds];

  sub_13BE34();
  return result;
}

void sub_FD518()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductBadgedPageViewController(0);
  objc_msgSendSuper2(&v2, "didReceiveMemoryWarning");
  sub_13B884();
  sub_13B934();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v1 + 208))();
  }
}

double sub_FD5F4()
{
  sub_FDA14(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination + 16);

  return result;
}

uint64_t sub_FD644()
{
  sub_FDC34();
  sub_FDA14(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination + 112);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2[3] = sub_7389C();
  v2[4] = &protocol witness table for OS_dispatch_queue;
  v2[0] = sub_13BD84();
  sub_13B9F4();

  return sub_3C04(v2);
}

void sub_FD70C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_FDCAC();
  }
}

uint64_t sub_FD778(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_13BF54();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_928C(v9, &unk_1A06F0, &unk_13EF80);
}

void sub_FD804()
{
  v1 = v0;
  v2 = sub_4948(&qword_19A498, &unk_147A80);
  v3 = sub_8AD98(v2);
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  if ((*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_didApply) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_didApply) = 1;
    v6 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageView);
    v7 = (v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_objectGraph);

    sub_FAF30(v7, sub_FE014, v8, v9);

    [v6 setHidden:0];
    v10 = *(type metadata accessor for ServiceProductBadgedPageDestination(0) + 52);
    v11 = sub_13B5D4();
    sub_9F94();
    (*(v12 + 16))(v5, v7 + v10, v11);
    sub_53A8(v5, 0, 1, v11);
    sub_13B874();
  }
}

void *sub_FD998(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_7D228(a1, v5);
    sub_FD644();

    return sub_928C(v5, &unk_1A06F0, &unk_13EF80);
  }

  return result;
}

uint64_t sub_FDA14(uint64_t a1)
{
  v3 = sub_139E74();
  v4 = sub_8AD98(v3);
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v8 = sub_13B834();
  sub_9E94();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_9EC0();
  v14 = v13 - v12;
  sub_139E84();
  v15 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_objectGraph);
  sub_13B6B4();
  sub_13B9A4();
  v16 = *&v20[0];
  sub_13B9A4();
  (*(v10 + 16))(v7, v14, v8);
  v17 = sub_4948(&unk_19B7E0, &unk_141F10);
  sub_53A8(v7, 0, 1, v17);
  memset(v20, 0, sizeof(v20));
  v21 = -1;
  v18 = (*(*v16 + 216))(a1, v7, v15, v20);

  sub_928C(v20, &unk_19E330, &qword_144CD0);
  sub_FDF84(v7, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
  (*(v10 + 8))(v14, v8);
  return v18;
}

void sub_FDC34()
{
  v1 = [v0 view];
  [v1 setUserInteractionEnabled:0];

  v2 = objc_allocWithZone(type metadata accessor for LoadingViewController());
  v3 = sub_BBD88(2);

  sub_FC8F4(v3);
}

void sub_FDCAC()
{
  v1 = [v0 view];
  [v1 setUserInteractionEnabled:1];

  sub_FC8F4(0);
}

id sub_FDDA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductBadgedPageViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ServiceProductBadgedPageViewController(uint64_t a1)
{
  result = qword_1A0B70;
  if (!qword_1A0B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FDEC0(uint64_t a1)
{
  result = type metadata accessor for ServiceProductBadgedPageDestination(319);
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

uint64_t sub_FDF84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_9F94();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_FDFDC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_FE024(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_13BB54();
  }

  else
  {
    v10 = 0;
  }

  v11 = a4[3];
  if (v11)
  {
    v12 = sub_162F0(a4, a4[3]);
    v13 = *(v11 - 8);
    v14 = __chkstk_darwin(v12);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_13C134();
    (*(v13 + 8))(v16, v11);
    sub_3C04(a4);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v6 initWithTitle:v10 style:a3 target:v17 action:a5];

  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_FE1C0()
{

  return type metadata accessor for ServiceProductBadgedPageViewController(0);
}

id sub_FE1DC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_artworkImageView;
  v11 = objc_allocWithZone(sub_139CF4());
  *&v4[v10] = sub_FE734();
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_visualEffectView;
  v13 = [objc_opt_self() effectWithStyle:8];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v5[v12] = v14;
  v17.receiver = v5;
  v17.super_class = type metadata accessor for ServiceProductCardBackgroundView();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_FE5F4();

  return v15;
}

void sub_FE304()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_artworkImageView;
  v3 = objc_allocWithZone(sub_139CF4());
  *(v0 + v2) = sub_FE734();
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_visualEffectView;
  v5 = [objc_opt_self() effectWithStyle:8];
  v6 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v5];

  *(v1 + v4) = v6;
  sub_13C094();
  __break(1u);
}

id sub_FE3FC()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ServiceProductCardBackgroundView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_artworkImageView];
  v3 = [v1 bounds];
  (*(&stru_68.reloff + (swift_isaMask & *v2)))(v3, v4, v5);
  [v1 bounds];
  [v2 setFrame:?];
  v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_visualEffectView];
  [v1 bounds];
  return [v6 setFrame:?];
}

double sub_FE524(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_artworkImageView);
  [v5 setHidden:a1 == 0];
  if (a1)
  {
    v7 = *&stru_108.segname[(swift_isaMask & *v5) + 16];

    v7(v8, a2);
  }

  return result;
}

id sub_FE5F4()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_artworkImageView]];
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_visualEffectView];

  return [v0 addSubview:v1];
}

id sub_FE690()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductCardBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_FE734()
{

  return sub_139CE4();
}

uint64_t sub_FE760@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v45 = sub_13A4C4();
  v51 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_13A454();
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13A4B4();
  v47 = *(v7 - 8);
  __chkstk_darwin(v7);
  v49 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4948(&qword_19AFE8, &unk_140260);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  v55[0] = v9;
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  v46 = v7;
  sub_13BF64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v10 = *(sub_13A4F4() - 8);
  v42 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v43 = v12;
  *(v12 + 16) = xmmword_13E650;
  v36[2] = v12 + v11;
  v36[0] = v2;
  v13 = v2[53];
  v14 = v2[54];
  v15 = sub_162F0(v2 + 50, v13);
  v56 = v13;
  v57 = *(v14 + 8);
  v16 = sub_CC08(v55);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v41 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v17 = v4;
  v40 = *(v4 + 104);
  v18 = v50;
  v40(v6);
  v39 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v19 = v51;
  v38 = *(v51 + 104);
  v21 = v44;
  v20 = v45;
  v38(v44);
  v22 = v36[0];
  sub_13A4E4();
  v23 = *(v19 + 8);
  v51 = v19 + 8;
  v37 = v23;
  v24 = v21;
  v23(v21, v20);
  v25 = v17 + 8;
  v26 = *(v17 + 8);
  v36[1] = v25;
  v26(v6, v18);
  sub_1D2CC(&v52);
  sub_3C04(v55);
  v27 = v22[43];
  v28 = v22[44];
  v29 = sub_162F0(v22 + 40, v27);
  v56 = v27;
  v57 = *(v28 + 8);
  v30 = sub_CC08(v55);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v31 = v50;
  (v40)(v6, v41, v50);
  (v38)(v24, v39, v20);
  v32 = v49;
  sub_13A4E4();
  v37(v24, v20);
  v26(v6, v31);
  sub_1D2CC(&v52);
  sub_3C04(v55);
  v33 = sub_13A514();
  v34 = v48;
  v48[3] = v33;
  v34[4] = &protocol witness table for VerticalFlowLayout;
  v34[5] = &protocol witness table for VerticalFlowLayout;
  sub_CC08(v34);
  sub_13A4D4();
  return (*(v47 + 8))(v32, v46);
}

double sub_FED74(uint64_t a1)
{
  v2 = v1;
  sub_162F0(v1, v1[3]);
  sub_13A3F4();
  v4 = v3;
  sub_162F0(v2 + 5, v2[8]);
  sub_13A3F4();
  sub_162F0(v2 + 10, v2[13]);
  sub_13A3F4();
  sub_162F0(v2 + 15, v2[18]);
  sub_13A3F4();
  return v4;
}

uint64_t sub_FEE64(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_13A314();
  sub_9E94();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_FED74(a1);
  sub_FF33C(a2, a3, a4, a5, v17, v18);
  sub_FF464(v5 + 45);
  sub_13A384();
  v20 = v19;
  v22 = v21;
  sub_FF464(v5 + 30);
  sub_FF454();
  sub_13A3F4();
  if (v20 <= v23)
  {
    v20 = v23;
  }

  *&v26[3] = v20;
  sub_FF464(v5 + 25);
  sub_FF454();
  sub_13A3F4();
  v26[2] = v24;
  sub_FE760(v27);
  sub_FF464(v27);
  sub_FF454();
  sub_13A384();
  sub_3C04(v27);
  v26[1] = v22;
  v28.origin.x = sub_35BE8();
  CGRectGetMinX(v28);
  v29.origin.x = sub_35BE8();
  CGRectGetMinY(v29);
  sub_FE760(v27);
  sub_FF464(v27);
  sub_FF454();
  sub_13A544();
  (*(v13 + 8))(v16, v11);
  sub_3C04(v27);
  sub_162F0(v5 + 45, v5[48]);
  v30.origin.x = sub_35BE8();
  CGRectGetMinX(v30);
  v31.origin.x = sub_35BE8();
  CGRectGetMinY(v31);
  v32.origin.x = sub_35BE8();
  CGRectGetHeight(v32);
  sub_35BE8();
  sub_13BE44();
  sub_13A354();
  sub_35BE8();
  return sub_13A2B4();
}

uint64_t sub_FF130(uint64_t a1)
{
  v2 = v1;
  v4 = sub_13C114();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(v1 + 45, v1[48]);
  sub_FF480();
  sub_13A384();
  sub_162F0(v2 + 30, v2[33]);
  sub_13A3F4();
  sub_FE760(v13);
  sub_162F0(v13, v13[3]);
  sub_FF480();
  sub_13A384();
  sub_3C04(v13);
  v10 = v1[28];
  v11 = v2[29];
  sub_162F0(v2 + 25, v2[28]);
  sub_20038(v10, v11);
  sub_13A404();
  (*(v6 + 8))(v9, v4);
  sub_FED74(a1);
  return sub_13BE74();
}

uint64_t sub_FF360(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_FF3A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_FF4B4()
{
  qword_1A0BF0 = &type metadata for Double;
  unk_1A0BF8 = &protocol witness table for Double;
  qword_1A0BD8 = 0x4040000000000000;
  qword_1A0C18 = &type metadata for Double;
  unk_1A0C20 = &protocol witness table for Double;
  qword_1A0C00 = 0x4038000000000000;
  qword_1A0C40 = &type metadata for Double;
  unk_1A0C48 = &protocol witness table for Double;
  qword_1A0C28 = 0x4040000000000000;
  qword_1A0C68 = &type metadata for Double;
  unk_1A0C70 = &protocol witness table for Double;
  qword_1A0C50 = 0x4038000000000000;
  qword_1A0C90 = &type metadata for Double;
  unk_1A0C98 = &protocol witness table for Double;
  qword_1A0C78 = 0x4024000000000000;
  qword_1A0CB8 = &type metadata for Double;
  unk_1A0CC0 = &protocol witness table for Double;
  qword_1A0CA0 = 0x4024000000000000;
  qword_1A0CE0 = &type metadata for Double;
  unk_1A0CE8 = &protocol witness table for Double;
  qword_1A0CC8 = 0x4059000000000000;
  qword_1A0D08 = &type metadata for Double;
  unk_1A0D10 = &protocol witness table for Double;
  qword_1A0CF0 = 0;
}

id sub_FF534(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_13A2A4();
  sub_7E5D8(v5, a2);
  v6 = sub_4910(v5, a2);
  v8 = *a3;
  *v6 = *a3;
  (*(*(v5 - 8) + 104))();

  return v8;
}

UIFontTextStyle sub_FF5E0()
{
  v0 = sub_13A2A4();
  sub_7E5D8(v0, qword_1A0D30);
  v1 = sub_4910(v0, qword_1A0D30);
  *v1 = UIFontTextStyleTitle2;
  *(v1 + 8) = UIFontWeightBold;
  v2 = enum case for FontUseCase.preferredFontDerivative(_:);
  v3 = sub_13A3E4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  (*(*(v0 - 8) + 104))(v1, enum case for FontSource.useCase(_:), v0);

  return UIFontTextStyleTitle2;
}

id sub_FF700(uint64_t a1, void *a2)
{
  result = [objc_opt_self() ams_primaryText];
  *a2 = result;
  return result;
}

id sub_FF744()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton;
  v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton];
  }

  else
  {
    v4 = sub_FF7A8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_FF7A8(void *a1)
{
  v2 = [objc_allocWithZone(AMSUICommonButton) init];
  v3 = [a1 tintColor];
  [v2 setBackgroundColor:v3];

  v4 = v2;
  [v4 setContentEdgeInsets:{12.0, 18.0, 12.0, 18.0}];
  v5 = [v4 titleLabel];

  if (v5)
  {
    if (qword_19A110 != -1)
    {
      swift_once();
    }

    v6 = sub_13A2A4();
    sub_4910(v6, qword_1A0D18);
    v7.super.isa = [a1 traitCollection];
    isa = v7.super.isa;
    v9 = sub_13A294(v7).super.isa;

    [v5 setFont:v9];
  }

  return v4;
}

id sub_FF8F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_descriptionLabel;
  sub_139BB4();
  if (qword_19A100 != -1)
  {
    sub_10086C();
    swift_once();
  }

  v11 = qword_19A0F8;
  v12 = qword_1A0BD0;
  if (v11 != -1)
  {
    sub_100858();
    swift_once();
  }

  v13 = sub_13A2A4();
  v14 = sub_4910(v13, qword_1A0BB8);
  v22 = sub_100898(v14, v15, v16, v17, v18, v19, v20, v21, v46, v48.receiver, v48.super_class, v49, v50, v51, v52, v53);
  v23 = *(*(v13 - 8) + 16);
  v24 = v23(v22, v14, v13);
  *&v4[v10] = sub_1007F0(v24, v25, v26);
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton] = 0;
  v27 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_titleLabel;
  if (qword_19A120 != -1)
  {
    sub_100844();
    swift_once();
  }

  v28 = qword_19A118;
  v29 = qword_1A0D48;
  if (v28 != -1)
  {
    sub_100830();
    swift_once();
  }

  v30 = sub_4910(v13, qword_1A0D30);
  v38 = sub_100898(v30, v31, v32, v33, v34, v35, v36, v37, v47, v48.receiver, v48.super_class, v49, v50, v51, v52, v53);
  v39 = v23(v38, v30, v13);
  *&v4[v27] = sub_1007F0(v39, v40, v41);
  v42 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_offerAction];
  v43 = type metadata accessor for ServiceProductCardHeroView();
  *v42 = 0;
  *(v42 + 1) = 0;
  v48.receiver = v5;
  v48.super_class = v43;
  v44 = objc_msgSendSuper2(&v48, "initWithFrame:", a1, a2, a3, a4);
  sub_100574();

  return v44;
}

void sub_FFB40()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_descriptionLabel;
  sub_139BB4();
  if (qword_19A100 != -1)
  {
    sub_10086C();
    swift_once();
  }

  v2 = qword_19A0F8;
  v3 = qword_1A0BD0;
  if (v2 != -1)
  {
    sub_100858();
    swift_once();
  }

  v4 = sub_13A2A4();
  v5 = sub_4910(v4, qword_1A0BB8);
  v13 = sub_100898(v5, v6, v7, v8, v9, v10, v11, v12, v34, v36, v38, v40, v42, v44, v46, v48);
  v14 = *(*(v4 - 8) + 16);
  v15 = v14(v13, v5, v4);
  *(v0 + v1) = sub_1007F0(v15, v16, v17);
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton) = 0;
  v18 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_titleLabel;
  if (qword_19A120 != -1)
  {
    sub_100844();
    swift_once();
  }

  v19 = qword_19A118;
  v20 = qword_1A0D48;
  if (v19 != -1)
  {
    sub_100830();
    swift_once();
  }

  v21 = sub_4910(v4, qword_1A0D30);
  v29 = sub_100898(v21, v22, v23, v24, v25, v26, v27, v28, v35, v37, v39, v41, v43, v45, v47, v49);
  v30 = v14(v29, v21, v4);
  *(v0 + v18) = sub_1007F0(v30, v31, v32);
  v33 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_offerAction);
  *v33 = 0;
  v33[1] = 0;
  sub_13C094();
  __break(1u);
}

uint64_t sub_FFD5C()
{
  v1 = v0;
  v2 = sub_13A314();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServiceProductCardHeroView();
  v23.receiver = v0;
  v23.super_class = v6;
  objc_msgSendSuper2(&v23, "layoutSubviews");
  if (qword_19A108 != -1)
  {
    sub_100810(&qword_19A108);
  }

  sub_1006FC(&qword_1A0BD8, v22);
  v7 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_descriptionLabel];
  v8 = sub_139BB4();
  v22[43] = v8;
  v9 = sub_270D8();
  v22[44] = v9;
  v22[40] = v7;
  v10 = v7;
  v11 = sub_FF744();
  v22[48] = sub_100758();
  v22[49] = protocol witness table for UIView;
  v22[45] = v11;
  v12 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_titleLabel];
  v22[53] = v8;
  v22[54] = v9;
  v22[50] = v12;
  v13 = v12;
  [v1 bounds];
  sub_FEE64(v1, v14, v15, v16, v17);
  (*(v3 + 8))(v5, v2);
  v18 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton];
  [v18 bounds];
  sub_127EDC(v19 * 0.5);

  return sub_10079C(v22);
}

double sub_FFF88(uint64_t a1)
{
  if (qword_19A108 != -1)
  {
    sub_100810(&qword_19A108);
  }

  sub_1006FC(&qword_1A0BD8, v13);
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_descriptionLabel);
  v4 = sub_139BB4();
  v15 = v4;
  v5 = sub_270D8();
  v16 = v5;
  v14 = v3;
  v6 = v3;
  v7 = sub_FF744();
  v18 = sub_100758();
  v19 = protocol witness table for UIView;
  v17 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_titleLabel);
  v21 = v4;
  v22 = v5;
  v20 = v8;
  v9 = v8;
  sub_FF130(a1);
  v11 = v10;
  sub_10079C(v13);
  return v11;
}

void sub_100134(__n128 a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ServiceProductCardHeroView();
  objc_msgSendSuper2(&v4, "tintColorDidChange");
  v2 = sub_FF744();
  v3 = [v1 tintColor];
  [v2 setTintColor:v3];
}

void sub_1001F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = (v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_offerAction);
  v13 = *(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_offerAction);
  v14 = *(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_offerAction + 8);
  *v12 = a5;
  v12[1] = a6;

  sub_A6980(v13, v14);
  sub_B0F90(a1, &v25);
  if (v26)
  {
    sub_9414(&v25, v27);
    sub_100880();
    (*(v15 + 384))(v27, a4);
    sub_3C04(v27);
  }

  else
  {
    sub_2519C(&v25);
    [*(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_titleLabel) setHidden:1];
  }

  sub_B0F90(a2, &v25);
  if (v26)
  {
    sub_9414(&v25, v27);
    sub_100880();
    (*(v16 + 384))(v27, a4);
    sub_3C04(v27);
  }

  else
  {
    sub_2519C(&v25);
    [*(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_descriptionLabel) setHidden:1];
  }

  v17 = sub_FF744();
  [v17 setHidden:*(a3 + 24) == 0];

  v18 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton;
  [*(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton) addTarget:v7 action:"offerButtonActionWithSender:" forControlEvents:64];
  v19 = *(v7 + v18);
  sub_B0F90(a3, v27);
  v20 = v28;
  if (v28)
  {
    v21 = v29;
    sub_162F0(v27, v28);
    v22 = *(v21 + 72);
    v23 = v19;
    v22(v20, v21);
    sub_3C04(v27);
    v24 = sub_13BB54();
  }

  else
  {
    v23 = v19;
    sub_2519C(v27);
    v24 = 0;
  }

  [v23 setTitle:v24 forState:0];
}

uint64_t sub_100494(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_offerAction);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_offerAction + 8);

    v2(v3);

    return sub_A6980(v2, v4);
  }

  return result;
}

id sub_100574()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_descriptionLabel]];
  v1 = sub_FF744();
  [v0 addSubview:v1];

  v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_titleLabel];

  return [v0 addSubview:v2];
}

id sub_100634(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServiceProductCardHeroView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100758()
{
  result = qword_1A0D98;
  if (!qword_1A0D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1A0D98);
  }

  return result;
}

uint64_t sub_1007F0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_139BA4();
}

uint64_t sub_100810(uint64_t a1)
{

  return swift_once();
}

uint64_t *sub_100898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a15 = v16;
  a16 = v17;

  return sub_CC08(&a12);
}

uint64_t sub_1008B0(uint64_t a1)
{
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_FF464(v1 + 85);
  sub_101530();
  if ((sub_13A364() & 1) == 0)
  {
    sub_1014D4(v1 + 10);
    sub_10150C();
    v5 = *(v4 + 8);
    v6 = sub_10153C();
    v5(v6);
    sub_1014D4(v1 + 15);
    sub_10150C();
    v7 = sub_10153C();
    v5(v7);
    sub_100DD8(a1);
    sub_FF464(v1 + 85);
    v26.origin.x = sub_3001C();
    CGRectGetMaxX(v26);
    v27.origin.x = sub_3001C();
    CGRectGetMinY(v27);
    sub_3001C();
    sub_13BE44();
    sub_101530();
    sub_13A354();
  }

  sub_100F50(a1);
  v8 = sub_3001C();
  v28.origin.x = sub_FF33C(v8, v9, v10, v11, v12, v13);
  CGRectGetMaxY(v28);
  sub_FF464(v1 + 95);
  sub_101530();
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(v1 + 95, v1[98]);
    sub_101548();
    v29.origin.x = sub_35BE8();
    CGRectGetWidth(v29);
    sub_1014D4(v1 + 50);
    sub_10150C();
    v14 = *(v4 + 8);
    v15 = sub_10153C();
    v14(v15);
    sub_FF464(v1 + 95);
    v30.origin.x = sub_35BE8();
    CGRectGetMinX(v30);
    sub_35BE8();
    sub_13BE44();
    sub_101530();
    sub_13A354();
    v16 = sub_35BE8();
    sub_101040(a1, v16, v17, v18);
    sub_1014D4(v1 + 60);
    sub_10150C();
    v19 = sub_10153C();
    v14(v19);
    sub_1014D4(v1 + 65);
    sub_10150C();
    v20 = sub_10153C();
    v14(v20);
    sub_FF464(v1 + 100);
    v31.origin.x = sub_35BE8();
    CGRectGetMinX(v31);
    sub_35BE8();
    sub_13BE44();
    sub_101530();
    sub_13A354();
  }

  sub_FF464(v1 + 90);
  sub_101530();
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(v1 + 90, v1[93]);
    sub_101548();
    v32.origin.x = sub_35BE8();
    CGRectGetWidth(v32);
    sub_1014D4(v1 + 45);
    sub_10150C();
    v21 = sub_10153C();
    v22(v21);
    sub_FF464(v1 + 90);
    v33.origin.x = sub_35BE8();
    CGRectGetMinX(v33);
    sub_35BE8();
    sub_13BE44();
    sub_101530();
    sub_13A354();
  }

  sub_FF464(v1 + 80);
  sub_101530();
  if ((sub_13A364() & 1) == 0)
  {
    sub_FF464(v1 + 80);
    v34.origin.x = sub_35BE8();
    CGRectGetMinX(v34);
    v35.origin.x = sub_35BE8();
    CGRectGetWidth(v35);
    v36.origin.x = sub_35BE8();
    CGRectGetHeight(v36);
    sub_35BE8();
    sub_13BE44();
    sub_101530();
    sub_13A354();
  }

  sub_FF464(v1 + 75);
  sub_101530();
  if ((sub_13A364() & 1) == 0)
  {
    sub_1014D4(v1);
    sub_10150C();
    v23 = sub_10153C();
    v24(v23);
    v37.origin.x = sub_35BE8();
    CGRectGetWidth(v37);
    sub_162F0(v1 + 75, v1[78]);
    v38.origin.x = sub_35BE8();
    CGRectGetMinX(v38);
    sub_35BE8();
    sub_13BE44();
    sub_13A354();
  }

  sub_35BE8();
  return sub_13A2B4();
}

double sub_100DD8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_13C114();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[23];
  v8 = v2[24];
  sub_162F0(v2 + 20, v7);
  sub_20038(v7, v8);
  sub_13A404();
  v10 = v9;
  v11 = *(v4 + 8);
  v11(v6, v3);
  v12 = v2[8];
  v13 = v2[9];
  sub_162F0(v2 + 5, v12);
  sub_20038(v12, v13);
  sub_13A404();
  v11(v6, v3);
  return v10;
}

double sub_100F50(uint64_t a1)
{
  v2 = v1;
  sub_162F0(v1 + 25, v1[28]);
  sub_13A3F4();
  v4 = v3;
  sub_162F0(v2 + 30, v2[33]);
  sub_13A3F4();
  sub_162F0(v2 + 35, v2[38]);
  sub_13A3F4();
  sub_162F0(v2 + 40, v2[43]);
  sub_13A3F4();
  return v4;
}

double sub_101040(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  v7 = sub_13C114();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4[58];
  v12 = v5[59];
  sub_162F0(v5 + 55, v11);
  sub_20038(v11, v12);
  sub_13A404();
  v13 = *(v8 + 8);
  v13(v10, v7);
  v14 = v5[63];
  v15 = v5[64];
  sub_162F0(v5 + 60, v14);
  sub_20038(v14, v15);
  sub_13A404();
  v17 = v16;
  v13(v10, v7);
  v18 = v5[73];
  v19 = v5[74];
  sub_162F0(v5 + 70, v18);
  sub_20038(v18, v19);
  sub_13A404();
  v21 = v20;
  v13(v10, v7);
  return a4 - v17 - v21;
}

uint64_t sub_101234(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 600))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_101274(uint64_t result, int a2, int a3)
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
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
      *(result + 600) = 1;
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

    *(result + 600) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_101368(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 840))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1013A8(uint64_t result, int a2, int a3)
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
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 824) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
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
      *(result + 840) = 1;
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

    *(result + 840) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1014D4(void *a1)
{
  sub_162F0(a1, v1);

  return sub_20038(v1, v2);
}

double sub_10150C()
{

  sub_13A404();
  return result;
}

double sub_101548()
{

  sub_13A394();
  return result;
}

uint64_t sub_101588(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_13B5D4();
    v10 = a1 + *(a3 + 48);

    return sub_52E0(v10, a2, v9);
  }
}

void *sub_101630(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_13B5D4();
    v8 = v5 + *(a4 + 48);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ServiceProductCardPageDestination(uint64_t a1)
{
  result = qword_1A0DF8;
  if (!qword_1A0DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1016FC(uint64_t a1)
{
  sub_F6BAC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_248F4(319, &qword_19AE40, &qword_19AE48, &qword_140110);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_248F4(319, &qword_19A3C8, &unk_19A3D0, &qword_140980);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_10181C();
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        v2 = sub_13B5D4();
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_10181C()
{
  if (!qword_1A07D8)
  {
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_1A07D8);
    }
  }
}

uint64_t sub_10186C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v144 = a3;
  v6 = sub_4948(&qword_19C8C8, &unk_144030);
  __chkstk_darwin(v6 - 8);
  v134 = &v133 - v7;
  v133 = sub_4948(&qword_19A498, &unk_147A80);
  sub_2B538();
  __chkstk_darwin(v8);
  v137 = &v133 - v9;
  sub_13B5D4();
  sub_9E94();
  v138 = v11;
  v139 = v10;
  __chkstk_darwin(v10);
  v146 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_13B584();
  sub_9E94();
  v152 = v13;
  __chkstk_darwin(v14);
  v143 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_99F78();
  __chkstk_darwin(v16);
  sub_18C34();
  v142 = v17;
  sub_99F78();
  __chkstk_darwin(v18);
  sub_18C34();
  v141 = v19;
  sub_99F78();
  __chkstk_darwin(v20);
  sub_18C34();
  v140 = v21;
  sub_99F78();
  __chkstk_darwin(v22);
  sub_18C34();
  v136 = v23;
  sub_99F78();
  __chkstk_darwin(v24);
  v26 = &v133 - v25;
  __chkstk_darwin(v27);
  __chkstk_darwin(v28);
  v30 = &v133 - v29;
  v31 = type metadata accessor for ServiceProductCardPageDestination(0);
  sub_2B538();
  __chkstk_darwin(v32);
  v34 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v147 = swift_initStackObject();
  v148 = v31;
  v149 = a1;
  v150 = a2;
  v153 = a2;
  v35 = sub_9DD0();
  v135 = v26;
  if (v3)
  {

    v35 = 0;
  }

  *v34 = v35;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_102838(v30);
  if (v3)
  {

    sub_18B90();
    sub_6BDB4(v164, &qword_19E960, &qword_13FD30);
LABEL_6:
    sub_13BAB4();
    v36 = sub_677B8();
    v37 = sub_9F18(v36);
    sub_102814(v37, v38);
    *v39 = 0x7470697263736564;
    v39[1] = 0xEB000000006E6F69;
    v39[2] = v148;
    sub_9EF8();
    (*(v40 + 104))();
    swift_willThrow();
    v41 = sub_102820();
    v42(v41);

    sub_1027E4();
    goto LABEL_7;
  }

  v122 = sub_102820();
  v123(v122);
  sub_102854();
LABEL_7:
  v43 = v155;
  *(v34 + 8) = v154;
  *(v34 + 24) = v43;
  *(v34 + 5) = v156;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    v44 = sub_677B8();
    v45 = sub_9F18(v44);
    sub_102814(v45, v46);
    *v47 = 0x746341726566666FLL;
    v47[1] = 0xEB000000006E6F69;
    v47[2] = v148;
    sub_9EF8();
    (*(v48 + 104))();
    swift_willThrow();
    v49 = sub_1027F4();
    v50(v49);

    sub_1027E4();
  }

  else
  {
    sub_139BC4();
    v124 = sub_1027F4();
    v125(v124);
    sub_102854();
  }

  v51 = v155;
  *(v34 + 88) = v154;
  *(v34 + 104) = v51;
  *(v34 + 15) = v156;
  v52 = v135;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    v53 = sub_677B8();
    v54 = sub_9F18(v53);
    sub_102814(v54, v55);
    *v56 = 0x746954726566666FLL;
    v56[1] = 0xEA0000000000656CLL;
    v127 = v148;
    v56[2] = v148;
    sub_9EF8();
    (*(v57 + 104))();
    swift_willThrow();
    sub_102808();
    v58(v52, v165);

    sub_1027E4();
  }

  else
  {
    sub_139DB4();
    sub_102808();
    v126(v52, v165);
    sub_102854();
    v127 = v148;
  }

  v59 = v155;
  *(v34 + 8) = v154;
  *(v34 + 9) = v59;
  *(v34 + 20) = v156;
  v60 = v136;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_16;
  }

  v61 = v134;
  sub_80C0(v60, v150);
  if (sub_52E0(v61, 1, v133) == 1)
  {
    sub_6BDB4(v61, &qword_19C8C8, &unk_144030);
LABEL_16:
    sub_13BAB4();
    v62 = sub_677B8();
    sub_9F18(v62);
    *v63 = 0x6B726F77747261;
    v63[1] = 0xE700000000000000;
    v63[2] = v127;
    sub_9EF8();
    (*(v64 + 104))();
    swift_willThrow();
    sub_102808();
    v65(v60, v165);

    v66 = v137;
    v67 = v139;
    sub_53A8(v137, 1, 1, v139);
    goto LABEL_17;
  }

  sub_102808();
  v70(v60, v165);
  v66 = v137;
  sub_678FC(v61, v137);
  v67 = v139;
  if (sub_52E0(v66, 1, v139) != 1)
  {
    v69 = v138;
    (*(v138 + 32))(v146, v66, v67);
    v68 = v140;
    goto LABEL_21;
  }

LABEL_17:
  v68 = v140;
  v69 = v138;
  sub_13B5C4();
  if (sub_52E0(v66, 1, v67) != 1)
  {
    sub_6BDB4(v66, &qword_19A498, &unk_147A80);
  }

LABEL_21:
  (*(v69 + 32))(&v34[*(v127 + 48)], v146, v67);
  sub_13B594();
  if (sub_13B564())
  {
LABEL_24:
    sub_13BAB4();
    v71 = sub_677B8();
    v72 = sub_9F18(v71);
    sub_102814(v72, v73);
    *v74 = 0x65636976726573;
    v74[1] = 0xE700000000000000;
    v74[2] = v127;
    sub_9EF8();
    (*(v75 + 104))();
    swift_willThrow();
    v76 = sub_1027F4();
    v77(v76);

    v78 = 0;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    v83 = 0uLL;
    v84 = 0uLL;
    v85 = 0uLL;
    v86 = 0uLL;
    v87 = 0uLL;
    goto LABEL_26;
  }

  sub_895C(v68, v150);
  if (*(&v154 + 1) == 1)
  {
    sub_6BDB4(&v154, &qword_1A0768, &unk_14AB40);
    v127 = v148;
    goto LABEL_24;
  }

  sub_102808();
  v88(v68, v165);
  v79 = v154;
  v80 = v155;
  v81 = v156;
  v82 = v157;
  v83 = v158;
  v84 = v159;
  v85 = v160;
  v86 = v161;
  v87 = v162;
  v78 = v163;
LABEL_26:
  *(v34 + 168) = v79;
  *(v34 + 184) = v80;
  *(v34 + 200) = v81;
  *(v34 + 216) = v82;
  *(v34 + 232) = v83;
  *(v34 + 248) = v84;
  *(v34 + 264) = v85;
  *(v34 + 280) = v86;
  *(v34 + 296) = v87;
  *(v34 + 39) = v78;
  v89 = v141;
  v90 = v149;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    v94 = sub_677B8();
    v95 = sub_9F18(v94);
    sub_102814(v95, v96);
    strcpy(v97, "serviceCaption");
    v97[15] = -18;
    v129 = v148;
    *(v97 + 2) = v148;
    sub_9EF8();
    (*(v98 + 104))();
    v91 = v89;
    swift_willThrow();
    v99 = sub_1027F4();
    v100(v99);

    v93 = 0;
    sub_1027E4();
  }

  else
  {
    v91 = 0;
    sub_139DB4();
    v92 = v89;
    v93 = 0;
    sub_102808();
    v128(v92, v165);
    sub_102854();
    v129 = v148;
  }

  v101 = v155;
  *(v34 + 20) = v154;
  *(v34 + 21) = v101;
  *(v34 + 44) = v156;
  v102 = v142;
  sub_13B594();
  v103 = sub_13B564();
  v104 = v143;
  if (v103)
  {
    goto LABEL_32;
  }

  sub_102838(v102);
  v93 = v91;
  if (v91)
  {

    sub_18B90();
    sub_6BDB4(v164, &qword_19E960, &qword_13FD30);
LABEL_32:
    sub_13BAB4();
    v105 = sub_677B8();
    v106 = sub_9F18(v105);
    sub_102814(v106, v107);
    *v108 = 0x74695465726F7473;
    v108[1] = 0xEA0000000000656CLL;
    v108[2] = v129;
    sub_9EF8();
    (*(v109 + 104))();
    v91 = v93;
    swift_willThrow();
    sub_102808();
    v110(v102, v165);

    sub_1027E4();
    goto LABEL_33;
  }

  sub_102808();
  v130(v102, v165);
  sub_102854();
LABEL_33:
  *(v34 + 49) = v156;
  v111 = v155;
  *(v34 + 360) = v154;
  *(v34 + 376) = v111;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_102838(v104);
    if (!v91)
    {

      v131 = v151;
      v132 = v165;
      v151(v90, v165);
      v131(v104, v132);
      sub_102854();
      goto LABEL_37;
    }

    sub_18B90();
    sub_6BDB4(v164, &qword_19E960, &qword_13FD30);
  }

  sub_13BAB4();
  v112 = sub_677B8();
  v113 = sub_9F18(v112);
  sub_102814(v113, v114);
  *v115 = 0x656C746974;
  v115[1] = 0xE500000000000000;
  v115[2] = v148;
  sub_9EF8();
  (*(v116 + 104))();
  swift_willThrow();

  v117 = v151;
  v118 = v165;
  v151(v90, v165);
  v117(v104, v118);

  sub_1027E4();
LABEL_37:
  v119 = v155;
  *(v34 + 3) = v154;
  *(v34 + 4) = v119;
  *(v34 + 10) = v156;
  sub_102780(v34, v144);
  sub_13B5A4();
  sub_2B538();
  return (*(v120 + 8))(v150);
}

uint64_t sub_1026F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_13B5D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_102780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceProductCardPageDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1027E4()
{
  *(v0 + 224) = 0;
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  return result;
}

uint64_t sub_102820()
{
  result = v1;
  *(v0 + 144) = *(*(v0 + 152) + 8);
  return result;
}

uint64_t sub_102838(uint64_t a1)
{

  return sub_139DB4();
}

uint64_t sub_102854()
{

  return sub_9414((v1 - 160), v0 + 192);
}

id sub_10286C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v26 = a1;
  v6 = sub_13B834();
  __chkstk_darwin(v6 - 8);
  sub_9EC0();
  v7 = sub_4948(&qword_19A498, &unk_147A80);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_13B6E4();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_didApply] = 0;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_overlayViewController] = 0;
  sub_103D58(a1, &v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_destination]);
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_objectGraph] = a2;
  sub_13B7E4();
  sub_13B6B4();

  sub_13B9A4();
  sub_13B9A4();
  (*(v12 + 16))(v15, v18, v10);
  v19 = sub_13B5D4();
  sub_53A8(v9, 1, 1, v19);

  sub_13B824();
  sub_13B884();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_metricsPresenter] = sub_13B844();
  v20 = type metadata accessor for ServiceProductCardPageDestination(0);
  v21 = v26;
  (*(*(v19 - 8) + 16))(v9, v26 + *(v20 + 48), v19);
  sub_53A8(v9, 0, 1, v19);

  sub_13B874();

  v22 = type metadata accessor for ServiceProductCardPageViewController(0);
  v27.receiver = v3;
  v27.super_class = v22;
  v23 = objc_msgSendSuper2(&v27, "init");

  sub_103E5C();
  sub_103DBC(v21, v24);
  (*(v12 + 8))(v18, v10);
  return v23;
}

void sub_102BB8()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_didApply) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_overlayViewController) = 0;
  sub_13C094();
  __break(1u);
}

id sub_102C44()
{
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_overlayViewController])
  {
    return [v0 unsetChildViewController:?];
  }

  return result;
}

void sub_102C68()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    [v0 setChildViewController:v2];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      sub_12B7E0(0, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_102D24(void *a1)
{
  sub_102C44();
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_overlayViewController);
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_overlayViewController) = a1;
  v4 = a1;

  sub_102C68();
}

void sub_102D8C()
{
  v1 = [objc_allocWithZone(type metadata accessor for ServiceProductCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setView:v1];

  v2 = [v0 view];
  [v2 setAlpha:0.0];
}

void sub_102EE4(char a1)
{
  v2 = v1;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ServiceProductCardPageViewController(0);
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  sub_13B854();
  sub_103318();
}

uint64_t sub_10300C(char a1, SEL *a2, uint64_t (*a3)(uint64_t, void *))
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for ServiceProductCardPageViewController(0);
  objc_msgSendSuper2(&v9, *a2, a1 & 1);
  v7 = sub_13B884();
  return a3(v7, &protocol witness table for PageMetricsPresenter);
}

uint64_t sub_1030F4(char a1)
{
  v3 = sub_13B954();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ServiceProductCardPageViewController(0);
  objc_msgSendSuper2(&v11, "viewWillDisappear:", a1 & 1);
  sub_13B944();
  sub_13B864();
  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_103240(SEL *a1, uint64_t (*a2)(uint64_t, void *))
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ServiceProductCardPageViewController(0);
  objc_msgSendSuper2(&v7, *a1);
  v5 = sub_13B884();
  return a2(v5, &protocol witness table for PageMetricsPresenter);
}

void sub_103318()
{
  if ((v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_didApply] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_didApply] = 1;
    v1 = [v0 view];
    v2 = type metadata accessor for ServiceProductCardView();
    sub_103E74(v1, v2);
    v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_destination;
    sub_1D450();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D450();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_objectGraph];

    sub_10675C(&v0[v3], sub_103E4C, v4, sub_103E54, v5, v6);

    v7 = [v0 view];
    sub_103E74(v7, v2);
    sub_127F80(0, 0, 1.0, 0.1);
  }
}

void sub_1034DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void *sub_103540(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_7D228(a1, v5);
    sub_1035EC();

    return sub_184DC(v5, &unk_1A06F0, &unk_13EF80);
  }

  return result;
}

uint64_t sub_1035EC()
{
  sub_64264(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_destination + 88, &v4);
  if (!v5)
  {
    return sub_184DC(&v4, &unk_19E320, &unk_140950);
  }

  sub_9414(&v4, v7);
  sub_103A10();
  sub_1037EC(v7);
  sub_1D450();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = sub_7389C();
  v2 = sub_13BD84();
  v5 = v1;
  v6 = &protocol witness table for OS_dispatch_queue;
  *&v4 = v2;
  sub_13B9F4();

  sub_3C04(v7);
  return sub_3C04(&v4);
}

void sub_1036F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_103A9C();
  }
}

uint64_t sub_103760(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_13BF54();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_184DC(v9, &unk_1A06F0, &unk_13EF80);
}

uint64_t sub_1037EC(uint64_t a1)
{
  v3 = sub_139E74();
  __chkstk_darwin(v3 - 8);
  sub_9EC0();
  v6 = v5 - v4;
  v7 = sub_13B834();
  sub_9E94();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_9EC0();
  v13 = v12 - v11;
  sub_139E84();
  v14 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_objectGraph);
  sub_13B6B4();
  sub_13B9A4();
  v15 = *&v19[0];
  sub_13B9A4();
  (*(v9 + 16))(v6, v13, v7);
  v16 = sub_4948(&unk_19B7E0, &unk_141F10);
  sub_53A8(v6, 0, 1, v16);
  memset(v19, 0, sizeof(v19));
  v20 = -1;
  v17 = (*(*v15 + 216))(a1, v6, v14, v19);

  sub_184DC(v19, &unk_19E330, &qword_144CD0);
  sub_103DBC(v6, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
  (*(v9 + 8))(v13, v7);
  return v17;
}

void sub_103A10()
{
  v1 = [v0 view];
  v2 = type metadata accessor for ServiceProductCardView();
  [sub_103E74(v1 v2)];

  v3 = objc_allocWithZone(type metadata accessor for LoadingViewController());
  v4 = sub_BBD88(2);

  sub_102D24(v4);
}

void sub_103A9C()
{
  v1 = [v0 view];
  v2 = type metadata accessor for ServiceProductCardView();
  [sub_103E74(v1 v2)];

  sub_102D24(0);
}

id sub_103BA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductCardPageViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ServiceProductCardPageViewController(uint64_t a1)
{
  result = qword_1A0EA0;
  if (!qword_1A0EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_103CA4(uint64_t a1)
{
  result = type metadata accessor for ServiceProductCardPageDestination(319);
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

uint64_t sub_103D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceProductCardPageDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_103DBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_5224();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_103E10()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_103E74(uint64_t a1, uint64_t a2)
{

  return _swift_dynamicCastClassUnconditional(a1, a2, 0, 0, 0);
}

uint64_t sub_103E90(uint64_t result, double a2, double a3, double a4)
{
  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (a2 <= a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (a2 <= v6)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_103EC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v45 = sub_13A4C4();
  v51 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_13A454();
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13A4B4();
  v47 = *(v7 - 8);
  __chkstk_darwin(v7);
  v49 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4948(&qword_19AFE8, &unk_140260);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  v55[0] = v9;
  sub_20068();
  sub_4948(&qword_19AFF0, &unk_1402B0);
  sub_1D268();
  v46 = v7;
  sub_13BF64();
  sub_4948(&qword_19AFE0, &unk_1402A0);
  v10 = *(sub_13A4F4() - 8);
  v42 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v43 = v12;
  *(v12 + 16) = xmmword_13E650;
  v36[2] = v12 + v11;
  v36[0] = v2;
  v13 = v2[53];
  v14 = v2[54];
  v15 = sub_162F0(v2 + 50, v13);
  v56 = v13;
  v57 = *(v14 + 8);
  v16 = sub_CC08(v55);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v41 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v17 = v4;
  v40 = *(v4 + 104);
  v18 = v50;
  v40(v6);
  v39 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v19 = v51;
  v38 = *(v51 + 104);
  v21 = v44;
  v20 = v45;
  v38(v44);
  v22 = v36[0];
  sub_13A4E4();
  v23 = *(v19 + 8);
  v51 = v19 + 8;
  v37 = v23;
  v24 = v21;
  v23(v21, v20);
  v25 = v17 + 8;
  v26 = *(v17 + 8);
  v36[1] = v25;
  v26(v6, v18);
  sub_1D2CC(&v52);
  sub_3C04(v55);
  v27 = v22[63];
  v28 = v22[64];
  v29 = sub_162F0(v22 + 60, v27);
  v56 = v27;
  v57 = *(v28 + 8);
  v30 = sub_CC08(v55);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v31 = v50;
  (v40)(v6, v41, v50);
  (v38)(v24, v39, v20);
  v32 = v49;
  sub_13A4E4();
  v37(v24, v20);
  v26(v6, v31);
  sub_1D2CC(&v52);
  sub_3C04(v55);
  v33 = sub_13A514();
  v34 = v48;
  v48[3] = v33;
  v34[4] = &protocol witness table for VerticalFlowLayout;
  v34[5] = &protocol witness table for VerticalFlowLayout;
  sub_CC08(v34);
  sub_13A4D4();
  return (*(v47 + 8))(v32, v46);
}

uint64_t sub_1044D8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_13A314();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_FED74(a1);
  sub_FF33C(a2, a3, a4, a5, v15, v16);
  sub_FF464(v5 + 20);
  sub_FF454();
  sub_13A3F4();
  v18 = v17;
  sub_FF464(v5 + 25);
  sub_FF454();
  sub_13A3F4();
  v20 = v19;
  sub_FF464(v5 + 30);
  sub_FF454();
  sub_13A3F4();
  v30[3] = v21;
  sub_FF464(v5 + 55);
  sub_13A384();
  v30[5] = v22;
  v24 = v23;
  sub_103EC4(v31);
  sub_FF464(v31);
  sub_FF454();
  sub_13A384();
  v30[4] = v25;
  v27 = v26;
  sub_3C04(v31);
  sub_103E90(_swiftEmptyArrayStorage, v27, v18, v24);
  v30[2] = v28;
  sub_FF464(v5 + 45);
  sub_13A344();
  v30[1] = v20 + CGRectGetMaxX(v32);
  v33.origin.x = sub_35BE8();
  CGRectGetMinY(v33);
  sub_FF464(v5 + 45);
  v34.origin.x = sub_35BE8();
  CGRectGetMinX(v34);
  v35.origin.x = sub_35BE8();
  CGRectGetMinY(v35);
  v36.origin.x = sub_35BE8();
  CGRectGetHeight(v36);
  sub_35BE8();
  sub_13BE44();
  sub_13A354();
  sub_103EC4(v31);
  sub_FF464(v31);
  sub_FF454();
  sub_13A544();
  (*(v12 + 8))(v14, v11);
  sub_3C04(v31);
  sub_162F0(v5 + 55, v5[58]);
  v37.origin.x = sub_35BE8();
  CGRectGetMaxX(v37);
  v38.origin.x = sub_35BE8();
  CGRectGetMinY(v38);
  sub_35BE8();
  sub_13BE44();
  sub_13A354();
  sub_35BE8();
  return sub_13A2B4();
}

uint64_t sub_104834(uint64_t a1, double a2, double a3)
{
  sub_9B5B0(v3 + 20);
  sub_1049D8();
  sub_13A3F4();
  v6 = v5;
  sub_9B5B0(v3 + 25);
  sub_1049D8();
  sub_13A3F4();
  sub_9B5B0(v3 + 30);
  sub_1049D8();
  sub_13A3F4();
  sub_9B5B0(v3 + 55);
  sub_13A384();
  v8 = v7;
  sub_103EC4(v12);
  sub_9B5B0(v12);
  sub_1049D8();
  sub_13A384();
  v10 = v9;
  sub_3C04(v12);
  sub_103E90(_swiftEmptyArrayStorage, v10, v6, v8);
  sub_FED74(a1);
  return sub_13BE74();
}

void sub_104A10()
{
  qword_1A0EE8 = &type metadata for Double;
  unk_1A0EF0 = &protocol witness table for Double;
  qword_1A0ED0 = 0x4028000000000000;
  qword_1A0F10 = &type metadata for Double;
  unk_1A0F18 = &protocol witness table for Double;
  qword_1A0EF8 = 0x4038000000000000;
  qword_1A0F38 = &type metadata for Double;
  unk_1A0F40 = &protocol witness table for Double;
  qword_1A0F20 = 0x4038000000000000;
  qword_1A0F60 = &type metadata for Double;
  unk_1A0F68 = &protocol witness table for Double;
  qword_1A0F48 = 0x4038000000000000;
  qword_1A0F88 = &type metadata for Double;
  unk_1A0F90 = &protocol witness table for Double;
  qword_1A0F70 = 0x403C000000000000;
  qword_1A0FB0 = &type metadata for Double;
  unk_1A0FB8 = &protocol witness table for Double;
  qword_1A0F98 = 0x4020000000000000;
  qword_1A0FD8 = &type metadata for Double;
  unk_1A0FE0 = &protocol witness table for Double;
  qword_1A0FC0 = 0x403C000000000000;
  qword_1A1000 = &type metadata for Double;
  unk_1A1008 = &protocol witness table for Double;
  qword_1A0FE8 = 0;
  qword_1A1028 = &type metadata for Double;
  unk_1A1030 = &protocol witness table for Double;
  qword_1A1010 = 0x4000000000000000;
}

UIFontTextStyle sub_104AB0()
{
  v0 = sub_13A2A4();
  sub_7E5D8(v0, qword_1A1058);
  v1 = sub_4910(v0, qword_1A1058);
  *v1 = UIFontTextStyleFootnote;
  *(v1 + 8) = UIFontWeightBold;
  v2 = enum case for FontUseCase.preferredFontDerivative(_:);
  v3 = sub_13A3E4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  (*(*(v0 - 8) + 104))(v1, enum case for FontSource.useCase(_:), v0);

  return UIFontTextStyleFootnote;
}

id sub_104BD8()
{
  v0 = objc_allocWithZone(sub_139CF4());
  v1 = sub_139CE4();
  sub_127EDC(5.0);
  v2 = [v1 layer];
  [v2 setBorderWidth:1.0];

  v3 = [v1 layer];
  v4 = [objc_opt_self() ams_mediaBorder];
  v5 = [v4 CGColor];

  [v3 setBorderColor:v5];
  return v1;
}

uint64_t sub_104CE8()
{
  sub_139BB4();
  if (qword_19A130 != -1)
  {
    swift_once();
  }

  v0 = qword_19A128;
  v1 = qword_1A0EC8;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = sub_13A2A4();
  v3 = sub_4910(v2, qword_1A0EB0);
  v7[3] = v2;
  v7[4] = &protocol witness table for FontSource;
  v4 = sub_CC08(v7);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = sub_139BA4();
  sub_139B84();
  return v5;
}

uint64_t sub_104E14()
{
  sub_139BB4();
  if (qword_19A148 != -1)
  {
    swift_once();
  }

  v0 = qword_19A140;
  v1 = qword_1A1050;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = sub_13A2A4();
  v3 = sub_4910(v2, qword_1A1038);
  v7[3] = v2;
  v7[4] = &protocol witness table for FontSource;
  v4 = sub_CC08(v7);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = sub_139BA4();
  sub_139B84();
  return v5;
}

uint64_t sub_104F40()
{
  sub_139BB4();
  if (qword_19A158 != -1)
  {
    swift_once();
  }

  v0 = qword_19A150;
  v1 = qword_1A1070;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = sub_13A2A4();
  v3 = sub_4910(v2, qword_1A1058);
  v7[3] = v2;
  v7[4] = &protocol witness table for FontSource;
  v4 = sub_CC08(v7);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = sub_139BA4();
  sub_139B84();
  return v5;
}

id sub_10506C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_artworkImageView;
  *&v4[v9] = sub_104BD8();
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_captionLabel;
  *&v4[v10] = sub_104CE8();
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_storeLabel;
  *&v4[v11] = sub_104E14();
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_titleLabel;
  *&v4[v12] = sub_104F40();
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ServiceProductCardReferenceView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_1058BC();

  return v13;
}

void sub_105154()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_artworkImageView;
  *(v0 + v1) = sub_104BD8();
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_captionLabel;
  *(v0 + v2) = sub_104CE8();
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_storeLabel;
  *(v0 + v3) = sub_104E14();
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_titleLabel;
  *(v0 + v4) = sub_104F40();
  sub_13C094();
  __break(1u);
}

uint64_t sub_105210()
{
  v1 = v0;
  v25 = sub_13A314();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServiceProductCardReferenceView();
  v27.receiver = v0;
  v27.super_class = v5;
  objc_msgSendSuper2(&v27, "layoutSubviews");
  if (qword_19A138 != -1)
  {
    sub_105AF8(&qword_19A138);
  }

  sub_105A34(&qword_1A0ED0, v26);
  v6 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_artworkImageView];
  v26[48] = sub_139CF4();
  v26[49] = protocol witness table for UIView;
  v26[45] = v6;
  v7 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_captionLabel];
  v8 = sub_139BB4();
  v26[53] = v8;
  v9 = sub_270D8();
  v26[50] = v7;
  v10 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_storeLabel];
  v26[58] = v8;
  v26[59] = protocol witness table for UIView;
  v26[54] = v9;
  v26[55] = v10;
  v11 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_titleLabel];
  v26[63] = v8;
  v26[64] = v9;
  v26[60] = v11;
  v12 = v6;
  v13 = v7;
  v14 = v10;
  v15 = v11;
  [v1 bounds];
  sub_1044D8(v1, v16, v17, v18, v19);
  (*(v2 + 8))(v4, v25);
  v20 = [v12 frame];
  (*(&stru_68.reloff + (swift_isaMask & *v12)))(v20, v21, v22);
  return sub_105A90(v26);
}

double sub_10547C(uint64_t a1, double a2, double a3)
{
  if (qword_19A138 != -1)
  {
    sub_105AF8(&qword_19A138);
  }

  sub_105A34(&qword_1A0ED0, v20);
  v7 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_artworkImageView);
  v22 = sub_139CF4();
  v23 = protocol witness table for UIView;
  v21 = v7;
  v8 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_captionLabel);
  v9 = sub_139BB4();
  v25 = v9;
  v10 = sub_270D8();
  v11 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_storeLabel);
  v12 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_titleLabel);
  v26 = v10;
  v27 = v11;
  v24 = v8;
  v28 = v9;
  v29 = protocol witness table for UIView;
  v31 = v9;
  v32 = v10;
  v30 = v12;
  v13 = v7;
  v14 = v8;
  v15 = v11;
  v16 = v12;
  sub_104834(a1, a2, a3);
  v18 = v17;
  sub_105A90(v20);
  return v18;
}

id sub_10564C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_artworkImageView) setHidden:a1 == 0];
  if (a1)
  {
    sub_105AE4();
    v12 = *(v11 + 296);

    v12(v13, a5);
  }

  sub_B0F90(a2, &v18);
  if (v19)
  {
    sub_9414(&v18, v20);
    sub_105AE4();
    (*(v14 + 384))(v20, a5);
    sub_3C04(v20);
  }

  else
  {
    sub_2519C(&v18);
    sub_105B28(OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_captionLabel);
  }

  sub_B0F90(a3, &v18);
  if (v19)
  {
    sub_9414(&v18, v20);
    sub_105AE4();
    (*(v15 + 384))(v20, a5);
    sub_3C04(v20);
  }

  else
  {
    sub_2519C(&v18);
    sub_105B28(OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_titleLabel);
  }

  sub_B0F90(a4, &v18);
  if (v19)
  {
    sub_9414(&v18, v20);
    sub_105AE4();
    (*(v16 + 384))(v20, a5);
    return sub_3C04(v20);
  }

  else
  {
    sub_2519C(&v18);
    return sub_105B28(OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_storeLabel);
  }
}