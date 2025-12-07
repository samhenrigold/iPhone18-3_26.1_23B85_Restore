uint64_t sub_1004924A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094E1F0, qword_100783D20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100492510()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100492564()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004925B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CE78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100492604()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100492648(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100492660()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100492698()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF133AccountPageViewControllerDelegate_selfReference);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF133AccountPageViewControllerDelegate_selfReference) = 0;
}

uint64_t sub_1004926B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v72 = a3;
  v4 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v4 - 8);
  v70 = &v67 - v5;
  v6 = sub_10000A5D4(&unk_10094A890, &unk_100786A70);
  __chkstk_darwin(v6 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v67 - v10;
  __chkstk_darwin(v12);
  v14 = &v67 - v13;
  v15 = type metadata accessor for FlowDestination(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v67 = &v67 - v19;
  __chkstk_darwin(v20);
  v22 = (&v67 - v21);
  __chkstk_darwin(v23);
  v25 = &v67 - v24;

  sub_10076B87C();
  sub_10012062C(a1, v75, v14);
  v26 = *(v16 + 48);
  v27 = v26(v14, 1, v15);
  v68 = v8;
  if (v27 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v26(v14, 1, v15) != 1)
    {
      sub_10000CFBC(v14, &unk_10094A890, &unk_100786A70);
    }
  }

  else
  {
    sub_10005DAD8(v14, v25, v28);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10005C6E8(v25, v30);
  type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
  if (EnumCaseMultiPayload == 2)
  {
    v31 = objc_allocWithZone(type metadata accessor for WebNavigationController());
    *&v31[OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph] = v72;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = type metadata accessor for StoreNavigationController();
    v73.receiver = v31;
    v73.super_class = v33;

    v34 = objc_msgSendSuper2(&v73, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
  }

  else
  {
    v33 = type metadata accessor for StoreNavigationController();
    v35 = objc_allocWithZone(v33);
    *&v35[OBJC_IVAR____TtC20ProductPageExtension25StoreNavigationController_objectGraph] = v72;
    v36 = swift_getObjCClassFromMetadata();
    v76.receiver = v35;
    v76.super_class = v33;

    v34 = objc_msgSendSuper2(&v76, "initWithNavigationBarClass:toolbarClass:", v36, 0);
  }

  v37 = v34;
  [v37 setDelegate:v37];
  type metadata accessor for StoreNavigationController();
  v75[3] = v33;
  v75[4] = sub_100492FA4(&qword_1009435A0, type metadata accessor for StoreNavigationController, &unk_10078578C);
  v75[0] = v37;

  sub_10076B87C();
  sub_10012062C(a1, v74, v11);
  if (v26(v11, 1, v15) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v26(v11, 1, v15) != 1)
    {
      sub_10000CFBC(v11, &unk_10094A890, &unk_100786A70);
    }
  }

  else
  {
    sub_10005DAD8(v11, v22, v38);
  }

  v39 = sub_10075F57C();
  v41 = v40;
  v42 = v70;
  sub_10075F59C();
  v43 = sub_10048B0C0(v22, v71, v39, v41, v42, v75, v72, 1);

  sub_10000CFBC(v42, &unk_100958150, &unk_100786630);
  sub_10005C6E8(v22, v44);
  sub_10000CFBC(v75, &unk_10094A8A0, &unk_10078DB90);
  if (!v43)
  {

    return 0;
  }

  sub_10076B87C();
  v45 = v68;
  sub_10012062C(a1, v75, v68);
  if (v26(v45, 1, v15) == 1)
  {
    v47 = v67;
    swift_storeEnumTagMultiPayload();
    v48 = v26(v45, 1, v15);
    v50 = v69;
    if (v48 != 1)
    {
      sub_10000CFBC(v45, &unk_10094A890, &unk_100786A70);
    }
  }

  else
  {
    v47 = v67;
    sub_10005DAD8(v45, v67, v46);
    v50 = v69;
  }

  sub_10005DAD8(v47, v50, v49);
  v52 = swift_getEnumCaseMultiPayload();
  if (v52 == 14)
  {
    sub_10000A5D4(&qword_1009499C8, qword_10078C800);

    sub_10000CFBC(v50, &unk_1009435D0, &qword_100785850);
    goto LABEL_30;
  }

  if (v52 == 15 || v52 == 18)
  {
    sub_10005C6E8(v50, v53);
LABEL_30:
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1007841E0;
    *(v63 + 32) = v43;
    sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
    v51 = v37;
    v64 = v43;
    isa = sub_1007701AC().super.isa;

    [v51 setViewControllers:isa];

    return v51;
  }

  sub_10005C6E8(v50, v53);
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();

  if (sub_1003BE8F8(v43))
  {

    goto LABEL_30;
  }

  v55 = [v43 navigationItem];
  v56 = [v55 rightBarButtonItems];
  if (v56)
  {
    v57 = v56;
    v58 = v43;
    sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
    v59 = sub_1007701BC();
  }

  else
  {
    v58 = v43;
    v59 = _swiftEmptyArrayStorage;
  }

  v75[0] = v59;
  sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
  sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_100492FEC;
  *(v60 + 24) = v54;

  v77.value.super.super.isa = sub_100770F1C();
  v77.is_nil = 0;
  v61.super.super.isa = sub_10077054C(UIBarButtonSystemItemClose, v77, v78).super.super.isa;
  if (!(v59 >> 62) || (result = sub_10077158C(), (result & 0x8000000000000000) == 0))
  {
    sub_10061BDB0(0, 0, v61.super.super.isa);
    v62 = sub_1007701AC().super.isa;

    [v55 setRightBarButtonItems:v62];

    v43 = v58;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_100492FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100493044(double a1, double a2)
{
  v5 = sub_10076443C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = sub_100763ADC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v19 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView);
  if (v19)
  {
    v33 = v8;
    v20 = v5;
    v21 = v19;
    sub_100353408(v18);
    [v21 layoutMargins];
    v22 = [v21 traitCollection];
    (*(v13 + 16))(v15, v18, v12);
    v23 = sub_100763A4C();
    if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_10077071C())
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v26 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v26 = qword_100944CA0;
      }

      v28 = sub_10000A61C(v20, v26);
      v29 = v33;
      (*(v6 + 16))(v33, v28, v20);
      (*(v6 + 32))(v11, v29, v20);
      sub_1007643EC();
      sub_10076441C();
      sub_100763A5C();
      (*(v6 + 8))(v11, v20);
    }

    sub_10076398C();

    v30 = *(v13 + 8);
    v30(v15, v12);

    v30(v18, v12);
  }

  else
  {
    v27 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView);
    if (v27)
    {
      [v27 sizeThatFits:{a1, a2}];
    }

    else
    {
      return 0.0;
    }
  }

  return a1;
}

uint64_t sub_10049340C()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099FBD0);
  sub_10000A61C(v0, qword_10099FBD0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100493570(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  sub_1007639BC();
  if (qword_100940A58 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v45 = sub_10000A61C(v6, qword_1009A0D18);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v41 = v6;
  v8(v5, v45, v6);
  v46 = enum case for FontSource.useCase(_:);
  v10 = v3 + 13;
  v48 = v3[13];
  v48(v5);
  v39 = sub_10076D9AC();
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v49);
  v12 = v3 + 2;
  v36 = v3[2];
  v36(v11, v5, v2);
  sub_10076D9BC();
  v14 = v3[1];
  v13 = v3 + 1;
  v43 = v14;
  v14(v5, v2);
  sub_100763AAC();
  v15 = v6;
  v16 = v8;
  v8(v5, v45, v15);
  v17 = v46;
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v49);
  v19 = v36;
  v36(v18, v5, v2);
  sub_10076D9BC();
  v43(v5, v2);
  sub_100763A7C();
  v44 = v9;
  v42 = v16;
  v16(v5, v45, v41);
  v20 = v17;
  v21 = v39;
  v45 = v10;
  (v48)(v5, v20, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v49);
  v19(v22, v5, v2);
  sub_10076D9BC();
  v43(v5, v2);
  sub_100763A6C();
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v23 = v41;
  v24 = sub_10000A61C(v41, qword_1009A0CD0);
  v42(v5, v24, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v49);
  v19(v25, v5, v2);
  sub_10076D9BC();
  v38 = v12;
  v26 = v43;
  v43(v5, v2);
  sub_100763ACC();
  v40 = v13;
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A61C(v23, qword_1009A0D90);
  (v42)(v5);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v49);
  v19(v27, v5, v2);
  sub_10076D9BC();
  v26(v5, v2);
  sub_100763A2C();
  if (qword_100940AA0 != -1)
  {
    swift_once();
  }

  v28 = sub_10000A61C(v23, qword_1009A0DF0);
  v42(v5, v28, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v29 = sub_10000DB7C(v49);
  v19(v29, v5, v2);
  sub_10076D9BC();
  v26(v5, v2);
  sub_100763ABC();
  if (qword_100940A88 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v23, qword_1009A0DA8);
  v31 = v42;
  v42(v5, v30, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v49);
  v19(v32, v5, v2);
  sub_10076D9BC();
  v33 = v43;
  v43(v5, v2);
  sub_100763A3C();
  v31(v5, v37, v41);
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(v49);
  v19(v34, v5, v2);
  sub_10076D9BC();
  v33(v5, v2);
  return sub_1007639CC();
}

uint64_t sub_100493DEC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763E9C();
  sub_10000DB18(v4, qword_10099FBE8);
  v18 = sub_10000A61C(v4, qword_10099FBE8);
  v25[24] = &protocol witness table for CGFloat;
  v25[23] = &type metadata for CGFloat;
  v25[20] = 0x4048000000000000;
  v25[18] = &type metadata for Double;
  v25[19] = &protocol witness table for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4030000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v16 = sub_10000A61C(v5, qword_1009A0D90);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_10076D9AC();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v19);
  v9(v11, v3, v0);
  sub_10076D9BC();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_100763E7C();
}

id sub_100494160()
{
  result = [objc_allocWithZone(UIGlassEffect) init];
  qword_100959000 = result;
  return result;
}

void sub_1004941AC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
    v6 = *&v2[v3];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = v6;
    v8 = [v2 contentView];
    [v8 addSubview:v7];
  }

LABEL_4:
}

id sub_100494270()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&qword_100959058, &qword_1007AD660);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView] = 0;
  v5 = &v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_clickActionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_tapGestureRecognizer] = 0;
  if (qword_1009405D0 != -1)
  {
    swift_once();
  }

  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, "initWithEffect:", qword_100959000);
  sub_10076E66C();
  v7 = sub_10076E68C();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  sub_100770C8C();
  [v6 setClipsToBounds:1];
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v6 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  return v6;
}

void sub_100494610()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView];
    if (!v3)
    {
      return;
    }

    v1 = v3;
    v2 = 0;
  }

  v4 = v2;
  sub_10076422C();
  [v1 sizeThatFits:{v5, v6}];
  v8 = v7;
  sub_10076422C();
  MinX = CGRectGetMinX(v12);
  sub_10076422C();
  v10 = CGRectGetMidY(v13) + v8 * -0.5;
  sub_10076422C();
  [v1 setFrame:{MinX, v10, CGRectGetWidth(v14), v8}];
}

void sub_1004948E4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_tapGestureRecognizer;
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_tapGestureRecognizer])
  {
    v4 = a1;
    v5 = a2;
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_tapGestureRecognizer] removeTarget:v2 action:"clickActionHandlerTrampoline"];
    a1 = v4;
    a2 = v5;
  }

  v6 = &v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_clickActionHandler];
  v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_clickActionHandler];
  v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_clickActionHandler + 8];
  *v6 = a1;
  *(v6 + 1) = a2;
  sub_10001CE50(a1, a2);
  sub_1000167E0(v7, v8);
  if (*v6)
  {
    v9 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"clickActionHandlerTrampoline"];
    [v9 setDelegate:v2];
    if (*&v2[v3])
    {
      [v2 removeGestureRecognizer:?];
      v10 = *&v2[v3];
    }

    else
    {
      v10 = 0;
    }

    *&v2[v3] = v9;
    v11 = v9;

    [v2 addGestureRecognizer:v11];
  }
}

char *sub_100494A30(void *a1)
{
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v5 = sub_100763ADC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = [objc_allocWithZone(type metadata accessor for CrossLinkLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100352754(a1);
  if (qword_1009405C0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v5, qword_10099FBD0);
  v14 = *(v6 + 16);
  v14(v11, v13, v5);
  v15 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView;
  v16 = *&v12[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
  v14(v8, v11, v5);
  v17 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v16[v17], v8, v5);
  swift_endAccess();
  [v16 setNeedsLayout];
  v18 = *(v6 + 8);
  v18(v8, v5);
  v19 = v12;
  [v19 setNeedsLayout];
  v18(v11, v5);
  [v19 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];

  v20 = qword_100940A58;
  v21 = *(*&v12[v15] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_10076D3DC();
  v23 = sub_10000A61C(v22, qword_1009A0D18);
  v24 = *(v22 - 8);
  v59 = *(v24 + 16);
  v60 = v24 + 16;
  v59(v4, v23, v22);
  v58 = *(v24 + 56);
  v58(v4, 0, 1, v22);
  sub_1007625DC();

  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v25 = sub_100770CFC();
  v26 = v25;
  v57 = v15;
  v27 = *&v12[v15];
  v28 = *(v27 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor);
  *(v27 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor) = v25;
  v56 = v19;
  if (!v28)
  {
    v32 = v25;
    v30 = 0;
    goto LABEL_9;
  }

  v29 = v25;
  v30 = v28;
  v31 = sub_100770EEC();

  if ((v31 & 1) == 0)
  {
LABEL_9:
    sub_1003EB8BC();
    v29 = v26;
  }

  v33 = v57;
  v34 = qword_100940A80;
  v35 = *(*&v12[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_10000A61C(v22, qword_1009A0D90);
  v59(v4, v36, v22);
  v58(v4, 0, 1, v22);
  sub_1007625DC();

  v37 = *(*&v12[v33] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v38 = sub_100770D1C();
  [v37 setTextColor:v38];

  v39 = *(*&v12[v33] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  v40 = v56;
  if (v39)
  {
    v41 = qword_100940AA0;
    v42 = v39;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_10000A61C(v22, qword_1009A0DF0);
    v59(v4, v43, v22);
    v58(v4, 0, 1, v22);
    sub_1007625DC();

    v33 = v57;
    v44 = *(*&v12[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
    if (v44)
    {
      v45 = v44;
      v46 = sub_100770D0C();
      [v45 setTextColor:v46];
    }
  }

  v47 = *&v40[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v48 = sub_100770D1C();
  [v47 setTextColor:v48];

  v49 = *&v40[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  v50 = sub_100770CFC();
  [v49 setTextColor:v50];

  v51 = *(*&v12[v33] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v52 = qword_100940A88;
  v53 = v51;
  if (v52 != -1)
  {
    swift_once();
  }

  v54 = sub_10000A61C(v22, qword_1009A0DA8);
  v59(v4, v54, v22);
  v58(v4, 0, 1, v22);
  sub_1007625DC();

  return v40;
}

uint64_t sub_100495138(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_lockupView);
  if (!v3)
  {
    v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension16FooterLockupView_arcadeLockupView);
    if (!v8)
    {
LABEL_9:
      v12 = 1;
      return v12 & 1;
    }

    v4 = v8;
    v9 = [a1 view];
    if (v9)
    {
      v6 = v9;
      v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton];
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = *(*&v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
LABEL_7:
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v10 = v7;
  v11 = sub_100770EEC();

  v12 = v11 ^ 1;
  return v12 & 1;
}

uint64_t sub_100495254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *, uint64_t, uint64_t)@<X2>, void (*a4)(void, void, void)@<X8>)
{
  v56 = a3;
  v49 = a2;
  v48 = sub_10076373C();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100762A3C();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10077164C();
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D1AC();
  v52 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10076D9AC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009405F0 != -1)
  {
    swift_once();
  }

  v20 = sub_1007637AC();
  v21 = sub_10000A61C(v20, qword_10099FC00);
  v22 = *(*(v20 - 8) + 16);
  v53 = a4;
  v22(a4, v21, v20);
  if (!a1)
  {
    goto LABEL_14;
  }

  if (sub_10076BDDC())
  {
    if (qword_1009405E0 != -1)
    {
      swift_once();
    }

    v23 = qword_100959068;
    if (sub_10076BE0C())
    {
      v24 = sub_10076044C();
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if ((sub_10076BDFC() & 1) == 0)
      {
        goto LABEL_13;
      }

      v24 = sub_1005A6008(a1, v23);
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    [v24 size];
    v25 = v53;
    sub_10076379C();
    sub_100770E5C();
    sub_1007636FC();
    v26 = v25;

    v27 = v52;
    goto LABEL_17;
  }

LABEL_13:

LABEL_14:
  if (qword_100940DC0 != -1)
  {
    swift_once();
  }

  v28 = sub_10076D3DC();
  v29 = sub_10000A61C(v28, qword_1009A1738);
  (*(*(v28 - 8) + 16))(v15, v29, v28);
  v27 = v52;
  v52[13](v15, enum case for FontSource.useCase(_:), v13);
  v61 = v13;
  v62 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v60);
  (v27)[2](v30, v15, v13);
  sub_10076D9BC();
  (v27[1])(v15, v13);
  sub_10076D17C();
  sub_10076D40C();
  v54[1](v12, v55);
  v26 = v53;
  sub_10076379C();
  (*(v17 + 8))(v19, v16);
LABEL_17:
  v31 = v50;
  v32 = v51;
  (*(v50 + 16))(v9, v49, v51);
  v33 = (*(v31 + 88))(v9, v32);
  if (v33 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_100498C28(v26, v56);
  }

  if (v33 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v33 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v61 = &type metadata for Double;
    v62 = &protocol witness table for Double;
    v60[0] = 0;
    sub_10076374C();
    if (qword_1009411F8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v16, qword_1009A2368);
    sub_10076D17C();
    sub_10076D40C();
    v36 = v35;
    v54[1](v12, v55);
    v61 = &type metadata for CGFloat;
    v62 = &protocol witness table for CGFloat;
    v60[0] = v36;
    sub_10076377C();
    (*(v47 + 104))(v46, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:), v48);
    sub_10076376C();
    if (qword_1009405D8 != -1)
    {
      swift_once();
    }

    v37 = qword_100959060;
    *v15 = qword_100959060;
    v56 = v27[13];
    (v56)(v15, enum case for FontSource.textStyle(_:), v13);
    v61 = v16;
    v62 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v60);
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v38 = sub_10000DB7C(v57);
    v55 = v27[2];
    v55(v38, v15, v13);
    v39 = v37;
    sub_10076D9BC();
    v54 = v27[1];
    (v54)(v15, v13);
    sub_10076370C();
    if (qword_100940DD0 != -1)
    {
      swift_once();
    }

    v40 = sub_10076D3DC();
    v41 = sub_10000A61C(v40, qword_1009A1768);
    v53 = *(*(v40 - 8) + 16);
    v53(v15, v41, v40);
    v42 = enum case for FontSource.useCase(_:);
    (v56)(v15, enum case for FontSource.useCase(_:), v13);
    v61 = v16;
    v62 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v60);
    v52 = v16;
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v43 = sub_10000DB7C(v57);
    v55(v43, v15, v13);
    sub_10076D9BC();
    (v54)(v15, v13);
    sub_10076371C();
    if (qword_100940DD8 != -1)
    {
      swift_once();
    }

    v44 = sub_10000A61C(v40, qword_1009A1780);
    v53(v15, v44, v40);
    (v56)(v15, v42, v13);
    v61 = v52;
    v62 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v60);
    v58 = v13;
    v59 = &protocol witness table for FontSource;
    v45 = sub_10000DB7C(v57);
    v55(v45, v15, v13);
    sub_10076D9BC();
    (v54)(v15, v13);
    return sub_10076372C();
  }

  else
  {
    sub_100498C28(v26, v56);
    return (*(v31 + 8))(v9, v32);
  }
}

void sub_100495CF0()
{
  if (qword_1009405D8 != -1)
  {
    swift_once();
  }

  v0 = qword_100959060;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2];

  qword_100959068 = v3;
}

void sub_100495D88()
{
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  qword_100959070 = sub_100770DEC(v3, v2).super.isa;
}

uint64_t sub_100495E1C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076373C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007637AC();
  sub_10000DB18(v8, qword_10099FC00);
  v33 = sub_10000A61C(v8, qword_10099FC00);
  v9 = *(v5 + 104);
  v34 = v7;
  v9(v7, enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:), v4);
  if (qword_1009405D8 != -1)
  {
    swift_once();
  }

  v10 = qword_100959060;
  *v3 = qword_100959060;
  v11 = v1[13];
  v32 = enum case for FontSource.textStyle(_:);
  v11(v3);
  v38 = sub_10076D9AC();
  v67[3] = v38;
  v67[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v64);
  v13 = v1 + 2;
  v37 = v1[2];
  v37(v12, v3, v0);
  v14 = v10;
  sub_10076D9BC();
  v15 = v1[1];
  v35 = v1 + 1;
  v36 = v15;
  v15(v3, v0);
  if (qword_100940DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D3DC();
  v17 = sub_10000A61C(v16, qword_1009A1750);
  v18 = *(*(v16 - 8) + 16);
  v18(v3, v17, v16);
  v19 = enum case for FontSource.useCase(_:);
  (v11)(v3, enum case for FontSource.useCase(_:), v0);
  v65 = v38;
  v66 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v64);
  v31 = v11;
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v61);
  v37(v20, v3, v0);
  sub_10076D9BC();
  v36(v3, v0);
  if (qword_100940DD8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v16, qword_1009A1780);
  v18(v3, v21, v16);
  v22 = v31;
  (v31)(v3, v19, v0);
  v23 = v38;
  v62 = v38;
  v63 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v61);
  *(&v59 + 1) = v0;
  v60 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(&v58);
  v25 = v37;
  v37(v24, v3, v0);
  sub_10076D9BC();
  v30 = v13;
  v26 = v36;
  v36(v3, v0);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  *v3 = UIFontTextStyleBody;
  (v22)(v3, v32, v0);
  v57[3] = v23;
  v57[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v0;
  v56 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v54);
  v25(v27, v3, v0);
  v28 = UIFontTextStyleBody;
  sub_10076D9BC();
  v26(v3, v0);
  v55 = &type metadata for Double;
  v56 = &protocol witness table for Double;
  v53 = &protocol witness table for Double;
  v54[0] = 0x402A000000000000;
  v52 = &type metadata for Double;
  v50 = &protocol witness table for Double;
  v51 = 0x4034000000000000;
  v49 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  v48 = 0x4034000000000000;
  v46 = &type metadata for Double;
  v44 = &protocol witness table for Double;
  v45 = 0x4034000000000000;
  v43 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v42 = 0x4024000000000000;
  v40 = &type metadata for Double;
  v39 = 0x403E000000000000;
  return sub_10076375C();
}

id sub_100496400()
{
  v1 = v0;
  v24 = sub_10076771C();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100762A3C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v22[-v11];
  v13 = [v0 traitCollection];
  v14 = sub_10077071C();

  if ((v14 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v6 + 16))(v12, &v1[v15], v5);
    (*(v6 + 104))(v8, enum case for PrivacyTypeStyle.detailPage(_:), v5);
    sub_1004994DC();
    sub_10077018C();
    sub_10077018C();
    if (v27 == v25 && v28 == v26)
    {
      v16 = *(v6 + 8);
      v16(v8, v5);
      v16(v12, v5);
    }

    else
    {
      v23 = sub_10077167C();
      v17 = *(v6 + 8);
      v17(v8, v5);
      v17(v12, v5);

      if ((v23 & 1) == 0)
      {
        [*&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_titleLabel] setTextAlignment:1];
        [*&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_detailLabel] setTextAlignment:1];
        return [v1 setNeedsLayout];
      }
    }
  }

  v18 = enum case for DirectionalTextAlignment.leading(_:);
  v19 = *(v2 + 104);
  v20 = v24;
  v19(v4, enum case for DirectionalTextAlignment.leading(_:), v24);
  sub_10076262C();
  v19(v4, v18, v20);
  sub_10076262C();
  return [v1 setNeedsLayout];
}

id sub_1004967C8(void *a1)
{
  v2 = v1;
  v4 = sub_10075FEEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView];
  if (v12)
  {
    v13 = qword_10093F8A8;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_10076BCFC();
    v16 = sub_10000A61C(v15, qword_10099D498);
    v17 = *(v15 - 8);
    (*(v17 + 16))(v11, v16, v15);
    (*(v17 + 56))(v11, 0, 1, v15);
    sub_10075F97C();
    (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
    sub_10075F98C();
    (*(v5 + 8))(v7, v4);
    v18 = [v2 contentView];
    [v18 insertSubview:v14 atIndex:0];
  }

  return [v2 setNeedsLayout];
}

id sub_100496A48(void *a1)
{
  v2 = v1;
  v4 = sub_10075FEEC();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (v9)
  {
    v10 = qword_1009405E8;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    [v11 setBackgroundColor:qword_100959070];
    (*(v5 + 104))(v8, enum case for CornerStyle.continuous(_:), v4);
    sub_1007638AC();
    (*(v5 + 8))(v8, v4);
    v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView];
    if (v12)
    {
      v13 = v12;
      v14 = [v2 contentView];
      [v14 insertSubview:v11 aboveSubview:v13];
    }

    else
    {
      v14 = [v2 contentView];
      [v14 insertSubview:v11 atIndex:0];
    }
  }

  return [v2 setNeedsLayout];
}

void sub_100496C68()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_12:
    [v0 setNeedsLayout];
    return;
  }

  v2 = sub_10077158C();
  if (!v2)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categoryViews;
    v7 = v1 & 0xC000000000000001;
    v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView];

    v4 = 0;
    do
    {
      if (v7)
      {
        v5 = sub_10077149C();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_10000A5D4(&qword_100959100, &qword_1007A5BD0);
      sub_10076E15C();
      swift_endAccess();
      *&v9[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category] = v5;
      swift_retain_n();

      sub_100103A50();

      [v8 addSubview:v9];
      swift_beginAccess();
      v6 = v9;
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

    goto LABEL_12;
  }

  __break(1u);
}

id sub_100496E98@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_100496EE4()
{
  v1 = v0;
  v2 = sub_10076E1EC();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v4 - 8);
  v57 = &v50 - v5;
  v6 = sub_10000A5D4(&unk_1009467C0, &unk_100787A10);
  __chkstk_darwin(v6 - 8);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v50 - v9;
  v10 = sub_100762A3C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v16 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  v17 = *(v11 + 16);
  v17(v15, &v1[v16], v10);
  v54 = v11;
  v18 = *(v11 + 88);
  v19 = v18(v15, v10);
  v20 = enum case for PrivacyTypeStyle.productPage(_:);
  if (v19 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    sub_100499138(v1);
    v21 = v1;
  }

  else if (v19 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v19 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v21 = v1;
    sub_100497700(v1);
  }

  else
  {
    sub_100499138(v1);
    v23 = v15;
    v21 = v1;
    (*(v54 + 8))(v23, v10);
  }

  v24 = v56;
  v17(v56, &v21[v16], v10);
  v25 = v18(v24, v10);
  if (v25 == v20)
  {
    v26 = sub_10076E21C();
    v27 = v55;
    (*(*(v26 - 8) + 56))(v55, 1, 1, v26);
    v28 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separator;
    swift_beginAccess();
    sub_10007A910(v27, &v21[v28]);
    swift_endAccess();
    sub_1004977C4();
    sub_10000CFBC(v27, &unk_1009467C0, &unk_100787A10);
    if (qword_100940DC8 != -1)
    {
      swift_once();
    }

    v29 = sub_10076D3DC();
    v30 = v29;
    v31 = qword_1009A1750;
LABEL_23:
    v46 = sub_10000A61C(v29, v31);
    v47 = *(v30 - 8);
    v48 = v57;
    (*(v47 + 16))(v57, v46, v30);
    (*(v47 + 56))(v48, 0, 1, v30);
    sub_1007625DC();
    goto LABEL_24;
  }

  if (v25 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v25 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    v39 = v21;
    v40 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separator;
    swift_beginAccess();
    v41 = v53;
    sub_10007A9C8(&v39[v40], v53);
    v42 = sub_10076E21C();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v41, 1, v42);
    sub_10000CFBC(v41, &unk_1009467C0, &unk_100787A10);
    if (v44 == 1)
    {
      (*(v50 + 104))(v52, enum case for Separator.Position.top(_:), v51);
      v58[3] = sub_10076D67C();
      v58[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v58);
      sub_10076D66C();
      v45 = v55;
      sub_10076E1FC();
      (*(v43 + 56))(v45, 0, 1, v42);
      swift_beginAccess();
      sub_10007A910(v45, &v39[v40]);
      swift_endAccess();
      sub_1004977C4();
      sub_10000CFBC(v45, &unk_1009467C0, &unk_100787A10);
    }

    v21 = v39;
    if (qword_100940DD0 != -1)
    {
      swift_once();
    }

    v29 = sub_10076D3DC();
    v30 = v29;
    v31 = qword_1009A1768;
    goto LABEL_23;
  }

  v32 = sub_10076E21C();
  v33 = v55;
  (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
  v34 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separator;
  swift_beginAccess();
  sub_10007A910(v33, &v21[v34]);
  swift_endAccess();
  sub_1004977C4();
  sub_10000CFBC(v33, &unk_1009467C0, &unk_100787A10);
  if (qword_100940DC8 != -1)
  {
    swift_once();
  }

  v35 = sub_10076D3DC();
  v36 = sub_10000A61C(v35, qword_1009A1750);
  v37 = *(v35 - 8);
  v38 = v57;
  (*(v37 + 16))(v57, v36, v35);
  (*(v37 + 56))(v38, 0, 1, v35);
  sub_1007625DC();
  (*(v54 + 8))(v24, v10);
LABEL_24:
  sub_100496400();
  return [v21 setNeedsLayout];
}

id sub_100497700(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView);
  *(a1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView) = 0;
  sub_1004967C8(v2);

  v3 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView);
  if (v3)
  {
    [v3 setHidden:1];
  }

  v4 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v5 = sub_100770D2C();
  [v4 setBackgroundColor:v5];

  return [v4 _setContinuousCornerRadius:0.0];
}

id sub_1004977C4()
{
  v1 = sub_10000A5D4(&unk_1009467C0, &unk_100787A10);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_10076E21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separator;
  swift_beginAccess();
  sub_10007A9C8(&v0[v11], v3);
  v12 = &off_100911000;
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CFBC(v3, &unk_1009467C0, &unk_100787A10);
    v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separatorView];
    if (v13)
    {
      [v13 setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v14 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separatorView;
    v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separatorView];
    if (v15)
    {
      (*(v5 + 16))(v7, v10, v4);
      v16 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v17 = *(v5 + 24);
      v18 = v15;
      v17(&v15[v16], v7, v4);
      swift_endAccess();
      v19 = v18;
      v12 = &off_100911000;
      [v19 setNeedsLayout];
      v20 = *(v5 + 8);
      v20(v7, v4);
      [v19 setHidden:0];

      v20(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v21 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v22 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v29 = *(v5 + 40);
      v23 = v21;
      v29(&v21[v22], v7, v4);
      swift_endAccess();

      v24 = *&v0[v14];
      if (v24)
      {
        [v24 removeFromSuperview];
        v25 = *&v0[v14];
      }

      else
      {
        v25 = 0;
      }

      *&v0[v14] = v23;
      v26 = v23;

      [*&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView] addSubview:v26];
      v12 = &off_100911000;
      [v0 setNeedsLayout];

      (*(v5 + 8))(v10, v4);
    }
  }

  return [v0 v12[194]];
}

uint64_t sub_100497BA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100762A3C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007637AC();
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1007637CC();
  v53 = *(v55 - 8);
  *&v12 = __chkstk_darwin(v55).n128_u64[0];
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v12);
  v14 = [v1 contentView];
  v15 = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();

  v16 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  v17 = *(v6 + 16);
  v49 = v6 + 16;
  v50 = v16;
  v48 = v17;
  v17(v8, &v1[v16], v5);

  v52 = v11;
  sub_100495254(v18, v8, v1, v11);

  v19 = *(v6 + 8);
  v54 = v5;
  v19(v8, v5);
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView];
  v47 = v20;
  if (v20)
  {
    v21 = sub_10075F99C();
    v22 = &protocol witness table for UIView;
    v23 = v20;
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v82 = 0;
    v83 = 0;
  }

  v81 = v23;
  v84 = v21;
  v85 = v22;
  v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (v24)
  {
    v25 = sub_10076394C();
    v26 = &protocol witness table for UIView;
    v27 = v24;
  }

  else
  {
    v27 = 0;
    v25 = 0;
    v26 = 0;
    v77 = 0;
    v78 = 0;
  }

  v76 = v27;
  v79 = v25;
  v80 = v26;
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView];
  v74 = v15;
  v75 = &protocol witness table for UIView;
  v73 = v28;
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separatorView];
  if (v29)
  {
    v30 = type metadata accessor for SeparatorView(0);
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v29;
  v71 = v30;
  v72 = v31;
  v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_iconView];
  v66 = sub_10075FD2C();
  v67 = &protocol witness table for UIView;
  v65 = v32;
  v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_titleLabel];
  v63 = sub_1007626BC();
  v64 = &protocol witness table for UILabel;
  v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_detailLabel];
  v61 = &protocol witness table for UILabel;
  v62 = v33;
  v60 = v63;
  v59 = v34;
  v35 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categoryViews;
  swift_beginAccess();
  v36 = *&v1[v35];
  v37 = v24;
  v38 = v28;
  v39 = v29;
  v40 = v32;
  v41 = v33;
  v42 = v34;

  v43 = v47;
  sub_10016E834(v36);

  v48(v8, &v1[v50], v54);
  v44 = v51;
  sub_1007637BC();
  v45 = v56;
  sub_1007636EC();
  (*(v57 + 8))(v45, v58);
  return (*(v53 + 8))(v44, v55);
}

id sub_100498304(uint64_t a1, double a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView);
  if (v4)
  {
    [v4 setAlpha:a2];
  }

  result = *(a1 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView);
  if (result)
  {

    return [result setAlpha:a2];
  }

  return result;
}

uint64_t type metadata accessor for PrivacyTypeCollectionViewCell(uint64_t a1)
{
  result = qword_1009590D8;
  if (!qword_1009590D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10049860C(uint64_t a1)
{
  sub_10007A8BC(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_1004987B4(319);
    if (v2 <= 0x3F)
    {
      sub_100762A3C();
      if (v3 <= 0x3F)
      {
        sub_10007A8BC(319, &unk_100945540, &type metadata accessor for Separator);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1004987B4(uint64_t a1)
{
  if (!qword_1009590E8)
  {
    sub_10000CE78(&qword_1009590F0, &qword_1007A5BB8);
    sub_100498824();
    v1 = sub_10076E19C();
    if (!v2)
    {
      atomic_store(v1, &qword_1009590E8);
    }
  }
}

unint64_t sub_100498824()
{
  result = qword_1009590F8;
  if (!qword_1009590F8)
  {
    sub_10000CE78(&qword_1009590F0, &qword_1007A5BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009590F8);
  }

  return result;
}

void sub_100498888()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1004995A4;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009AEDC;
  v5[3] = &unk_100896BA0;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_100498970()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_10049956C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009AEDC;
  v5[3] = &unk_100896B50;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.4];
  _Block_release(v3);
}

void *sub_100498A5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView);
  v2 = v1;
  return v1;
}

id sub_100498A8C(char *a1)
{
  v2 = sub_100762A3C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  (*(v3 + 16))(v5, &a1[v6], v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == enum case for PrivacyTypeStyle.productPage(_:))
  {
    return sub_100499138(a1);
  }

  if (v7 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v7 == enum case for PrivacyTypeStyle.detailPage(_:))
  {
    return sub_100497700(a1);
  }

  sub_100499138(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100498C28(uint64_t a1, void *a2)
{
  v4 = sub_10076D1AC();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10076373C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v35[0] = 0x4024000000000000;
  sub_10076374C();
  v36 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v35[0] = 0x402E000000000000;
  sub_10076377C();
  v11 = [a2 traitCollection];
  LOBYTE(a2) = sub_10077071C();

  v12 = &enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.leading(_:);
  if ((a2 & 1) == 0)
  {
    v12 = &enum case for PrivacyTypeLayout.Metrics.HorizontalAlignment.center(_:);
  }

  (*(v8 + 104))(v10, *v12, v7);
  sub_10076376C();
  if (qword_1009405D8 != -1)
  {
    swift_once();
  }

  v13 = qword_100959060;
  *v6 = qword_100959060;
  v14 = v31;
  v30 = *(v31 + 104);
  v30(v6, enum case for FontSource.textStyle(_:), v4);
  v29 = sub_10076D9AC();
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v32);
  v28 = *(v14 + 16);
  v28(v15, v6, v4);
  v16 = v13;
  sub_10076D9BC();
  v17 = *(v14 + 8);
  v31 = v14 + 8;
  v27 = v17;
  v17(v6, v4);
  sub_10076370C();
  v26 = a1;
  if (qword_100940DC8 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A1750);
  v20 = *(*(v18 - 8) + 16);
  v20(v6, v19, v18);
  v21 = enum case for FontSource.useCase(_:);
  v30(v6, enum case for FontSource.useCase(_:), v4);
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v32);
  v28(v22, v6, v4);
  sub_10076D9BC();
  v27(v6, v4);
  sub_10076371C();
  if (qword_100940DD8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v18, qword_1009A1780);
  v20(v6, v23, v18);
  v30(v6, v21, v4);
  v36 = v29;
  v37 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v35);
  v33 = v4;
  v34 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v32);
  v28(v24, v6, v4);
  sub_10076D9BC();
  v27(v6, v4);
  return sub_10076372C();
}

id sub_100499138(char *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView;
  v3 = *&a1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView];
  if (v3)
  {
    goto LABEL_2;
  }

  v7 = [a1 traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v8 != 2)
  {
    sub_10075F99C();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *&a1[v2];
    *&a1[v2] = v9;
    v10 = v9;
    sub_1004967C8(v4);

    goto LABEL_7;
  }

  v3 = *&a1[v2];
  if (v3)
  {
LABEL_2:
    v4 = v3;
    v5 = [a1 traitCollection];
    v6 = [v5 userInterfaceStyle];

    [v4 setHidden:v6 == 2];
LABEL_7:
  }

  v11 = *&a1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView];
  if (qword_1009405E8 != -1)
  {
    swift_once();
  }

  [v11 setBackgroundColor:qword_100959070];
  [v11 _setContinuousCornerRadius:20.0];
  v12 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView;
  result = *&a1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView];
  if (result || (sub_10076394C(), v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], v15 = *&a1[v12], *&a1[v12] = v14, v16 = v14, sub_100496A48(v15), v16, v15, (result = *&a1[v12]) != 0))
  {

    return [result setHidden:0];
  }

  return result;
}

void sub_100499334()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categoryViews;
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
      sub_10000A5D4(&qword_100959100, &qword_1007A5BD0);
      sub_10076E17C();
      swift_endAccess();
      *&v7[OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category] = 0;

      sub_100103A50();
      v9.value.super.isa = 0;
      v9.is_nil = 0;
      sub_10075FCEC(v9, v8);
      [v7 removeFromSuperview];
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_1004994DC()
{
  result = qword_100959108;
  if (!qword_100959108)
  {
    sub_100762A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959108);
  }

  return result;
}

uint64_t sub_100499534()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10049958C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *sub_1004995C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  *&v59 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = sub_10000A5D4(&qword_1009590F0, &qword_1007A5BB8);
  __chkstk_darwin(v8);
  v9 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView;
  *&v0[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v0[v10], 1, 1, v11);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;
  type metadata accessor for PrivacyCategoryView();
  sub_10076D4CC();
  sub_100498824();
  sub_10076E18C();
  v12 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
  v13 = enum case for PrivacyTypeStyle.productPage(_:);
  v14 = sub_100762A3C();
  (*(*(v14 - 8) + 104))(&v1[v12], v13, v14);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separatorView] = 0;
  v15 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separator;
  v16 = sub_10076E21C();
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_iconView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100940DC8 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  v18 = sub_10000A61C(v17, qword_1009A1750);
  v19 = *(v17 - 8);
  v57 = *(v19 + 16);
  v57(v7, v18, v17);
  v56 = *(v19 + 56);
  v56(v7, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v55 = *(v3 + 104);
  v55(v59, enum case for DirectionalTextAlignment.none(_:), v2);
  v21 = sub_1007626BC();
  v54 = v2;
  v22 = v21;
  v23 = objc_allocWithZone(v21);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940DD8 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v17, qword_1009A1780);
  v57(v7, v24, v17);
  v56(v7, 0, 1, v17);
  v55(v59, v20, v54);
  v25 = objc_allocWithZone(v22);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_detailLabel] = sub_1007626AC();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categoryViews] = _swiftEmptyArrayStorage;
  v60.receiver = v1;
  v60.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v60, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v27 = [v26 contentView];
  [v27 setClipsToBounds:0];

  v28 = [v26 contentView];
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v29 = [v26 contentView];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v30 = sub_100770D2C();
  [v29 setBackgroundColor:v30];

  v31 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView;
  v32 = *&v26[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView];
  v33 = sub_100770D2C();
  [v32 setBackgroundColor:v33];

  v34 = [v26 contentView];
  [v34 addSubview:*&v26[v31]];

  v35 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_iconView;
  v36 = *&v26[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_iconView];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  sub_10075FB8C();

  v40 = qword_1009405E0;
  v41 = *&v26[v35];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = qword_100959068;
  sub_10075FC3C();

  [*&v26[v31] addSubview:*&v26[v35]];
  v43 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_titleLabel;
  v44 = *&v26[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_titleLabel];
  sub_10076266C();

  [*&v26[v31] addSubview:*&v26[v43]];
  v45 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_detailLabel;
  v46 = *&v26[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_detailLabel];
  sub_10076266C();

  v47 = *&v26[v45];
  v48 = sub_100770D1C();
  [v47 setTextColor:v48];

  [*&v26[v31] addSubview:*&v26[v45]];
  sub_100496400();
  v49 = [objc_opt_self() defaultCenter];
  [v49 addObserver:v26 selector:"lowMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v50 = swift_allocObject();
  v59 = xmmword_100783DD0;
  *(v50 + 16) = xmmword_100783DD0;
  *(v50 + 32) = sub_10076E4CC();
  *(v50 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v51 = swift_allocObject();
  *(v51 + 16) = v59;
  *(v51 + 32) = sub_10076E88C();
  *(v51 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v26;
}

void sub_100499EE0()
{
  v1 = sub_10000A5D4(&qword_1009590F0, &qword_1007A5BB8);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_contentContainerView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_itemLayoutContext;
  v4 = sub_10076341C();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_shadowView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_roundedCornerView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_artwork) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories) = _swiftEmptyArrayStorage;
  type metadata accessor for PrivacyCategoryView();
  sub_10076D4CC();
  sub_100498824();
  sub_10076E18C();
  v5 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_style;
  v6 = enum case for PrivacyTypeStyle.productPage(_:);
  v7 = sub_100762A3C();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separatorView) = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_separator;
  v9 = sub_10076E21C();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10049A148()
{
  if (qword_10093F810 != -1)
  {
    return swift_once();
  }

  return result;
}

double sub_10049A208(__n128 a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v31 = sub_10076172C();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10076174C();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076997C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C19C();
  v14 = sub_10076C18C();
  sub_10005312C();
  if (qword_100940B50 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  sub_10000A61C(v15, qword_1009A0FE8);
  v35 = a6;
  v16 = [a6 traitCollection];
  v17 = sub_100770B3C();

  v18 = sub_10076C04C();
  v41[3] = v18;
  v41[4] = sub_10049A8B0(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v19 = sub_10000DB7C(v41);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  v20 = v17;
  sub_10076C90C();
  sub_10000CD74(v41);
  sub_10076996C();
  sub_10076994C();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 2) != 0)
  {
    if (qword_10093F810 != -1)
    {
      swift_once();
    }

    [qword_10099D1C8 size];
    v21 = sub_10076DDDC();
    swift_allocObject();
    v22 = sub_10076DDBC();
    *(&v39 + 1) = v21;
    v40 = &protocol witness table for LayoutViewPlaceholder;
    *&v38 = v22;
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
  }

  v23 = v35;
  if (qword_10093F7F8 != -1)
  {
    swift_once();
  }

  v24 = v31;
  v25 = sub_10000A61C(v31, qword_10099D1B0);
  (*(v30 + 16))(v32, v25, v24);
  sub_10000A570(v41, v37);
  sub_100102958(&v38, v36);
  sub_10076173C();
  [v23 pageMarginInsets];
  sub_100770ACC();
  sub_10049A8B0(&qword_1009566E0, &type metadata accessor for FootnoteLayout, &protocol conformance descriptor for FootnoteLayout);
  v26 = v34;
  sub_10076D2AC();
  sub_100770AEC();
  v28 = v27;

  (*(v33 + 8))(v9, v26);
  sub_10000CD74(v41);
  sub_1001029C8(&v38);
  return v28;
}

id sub_10049A7BC(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26FootnoteCollectionViewCell_footnoteView];
  v3 = sub_10076C18C();
  v4 = v2[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron];
  v2[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_hasChevron] = (v3 & 2) != 0;
  sub_100133E3C(v4);
  v2[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight] = (sub_10076C18C() & 4) != 0;
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel];
  sub_10076C19C();
  v6 = sub_10076FF6C();

  [v5 setText:v6];

  [v2 setNeedsLayout];

  return [v1 setNeedsLayout];
}

uint64_t sub_10049A8B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10049A8F8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10076BEDC();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100763ADC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2)
  {
    v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView);
    v14 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, v13 + v14, v9);
    v21[1] = a2;

    sub_1007639AC();
    (*(v10 + 8))(v12, v9);
    sub_10076BEEC();
    sub_10076BE9C();
    v22 = *(v22 + 8);
    (v22)(v8, v6);
    sub_10076BFCC();
    v15 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v16 = *(v13 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v16 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();

    v17 = *(v13 + v15);
    sub_10076BEEC();
    v18 = sub_10076BE9C();
    (v22)(v8, v6);
    [v17 setContentMode:v18];

    v19 = *(v13 + v15);
    sub_10075FD2C();
    sub_10049BD3C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v20 = v19;
    sub_100760B8C();
  }
}

double sub_10049ACC0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v111 = a2;
  v7 = sub_10076F68C();
  v122 = *(v7 - 8);
  v123 = v7;
  __chkstk_darwin(v7);
  v121 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v120 = &v106 - v10;
  v11 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v11 - 8);
  v116 = &v106 - v12;
  v13 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v13 - 8);
  v115 = &v106 - v14;
  v114 = sub_100768FEC();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v16 - 8);
  v119 = &v106 - v17;
  v18 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v18 - 8);
  v110 = &v106 - v19;
  v20 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v20 - 8);
  v109 = &v106 - v21;
  v22 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v22 - 8);
  v108 = &v106 - v23;
  v24 = sub_10076A3AC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v107 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v27 - 8);
  v126 = &v106 - v28;
  v29 = sub_10075F15C();
  v30 = *&v3[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_formattedDateView];
  [v3 setNeedsLayout];
  v31 = sub_10075F1AC();
  sub_100327154(v31, v32);
  v33 = sub_10075F1BC();
  sub_100327160(v33, v34);
  v35 = sub_10075F1CC();
  sub_10032716C(v35, v36);
  v37 = sub_10075F13C();
  sub_100327178(v37, v38);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  v124 = a3;
  sub_10076F63C();
  v39 = v128;
  v40 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v41 = *(v30 + OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  v42 = v41;
  sub_1004B57F0(v39);
  v43 = *(v30 + v40);
  *(v30 + v40) = v39;
  v44 = v39;

  sub_1004B5954(v41);
  sub_10075F1DC();
  v45 = sub_10076BB9C();

  sub_100327DC0(v45, v46);
  v117 = v4;
  v118 = a1;
  v47 = *&v4[OBJC_IVAR____TtC20ProductPageExtension22AppEventDetailPageView_lockupView];
  v125 = sub_10075F1DC();
  v48 = *(v25 + 104);
  v48(v107, enum case for OfferButtonPresenterViewAlignment.right(_:), v24);
  v49 = v108;
  v48(v108, enum case for OfferButtonPresenterViewAlignment.left(_:), v24);
  (*(v25 + 56))(v49, 0, 1, v24);
  sub_10049BD3C(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v50 = v126;
  sub_10076759C();
  v51 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  if (v111)
  {
    v52 = enum case for OfferStyle.infer(_:);
    v53 = sub_10075F78C();
    v54 = *(v53 - 8);
    v55 = v109;
    (*(v54 + 104))(v109, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    v56 = enum case for OfferEnvironment.light(_:);
    v57 = sub_1007628DC();
    v58 = *(v57 - 8);
    v59 = v110;
    (*(v58 + 104))(v110, v56, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
  }

  else
  {
    v60 = sub_10075F78C();
    v55 = v109;
    (*(*(v60 - 8) + 56))(v109, 1, 1, v60);
    v61 = sub_1007628DC();
    v59 = v110;
    (*(*(v61 - 8) + 56))(v110, 1, 1, v61);
  }

  v62 = v112;
  v63 = v114;
  (*(v112 + 104))(v113, enum case for OfferButtonSubtitlePosition.below(_:), v114);
  (*(v62 + 56))(v115, 1, 1, v63);
  sub_10049BD3C(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v64 = v119;
  sub_10076759C();
  v65 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
  v66 = sub_10076C54C();
  v67 = v116;
  (*(*(v66 - 8) + 56))(v116, 1, 1, v66);
  v68 = v124;
  sub_1004D0A60(v125, v47, v126, v124, 0, 0, v55, v59, v67, v64);
  sub_10000CFBC(v67, &unk_100949290, &unk_10078BBF0);
  v47[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
  sub_10026202C();
  [v47 setNeedsLayout];
  v69 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
  v70 = *&v47[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
  v71 = v120;
  if (v70)
  {
    [v70 setHidden:1];
    v72 = *&v47[v69];
    if (v72)
    {
      [v72 setText:0];
    }
  }

  v73 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
  v74 = *&v47[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
  if (v74)
  {
    if (([v74 isHidden] & 1) == 0)
    {
      v75 = *&v47[v73];
      if (v75)
      {
        if ([v75 hasContent])
        {
          v76 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
          [*&v47[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v47[v76] setText:0];
        }
      }
    }
  }

  v77 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
  if ([*&v47[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel] isHidden] & 1) == 0 && (objc_msgSend(*&v47[v77], "hasContent"))
  {
    v78 = *&v47[v73];
    if (v78)
    {
      [v78 setHidden:1];
      v79 = *&v47[v73];
      if (v79)
      {
        [v79 setText:0];
      }
    }

    v80 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
    [*&v47[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
    [*&v47[v80] setText:0];
  }

  sub_10000CFBC(v64, &qword_10094F730, qword_10078A050);
  sub_10000CFBC(v59, &unk_1009492A0, &unk_10078BC00);
  sub_10000CFBC(v55, &unk_10094D210, &qword_10078DE20);
  sub_10000CFBC(v126, &unk_100946760, &unk_100787A20);
  v81 = *&v47[v73];
  if (v81)
  {
    v82 = qword_100940AD8;
    v83 = v81;
    if (v82 != -1)
    {
      swift_once();
    }

    v84 = sub_10076D3DC();
    v85 = sub_10000A61C(v84, qword_1009A0E98);
    v86 = *(v84 - 8);
    (*(v86 + 16))(v71, v85, v84);
    (*(v86 + 56))(v71, 0, 1, v84);
    sub_1007625DC();
  }

  v87 = *&v47[v69];
  if (v87)
  {
    v88 = qword_100940AF0;
    v89 = v87;
    if (v88 != -1)
    {
      swift_once();
    }

    v90 = sub_10076D3DC();
    v91 = sub_10000A61C(v90, qword_1009A0EE0);
    v92 = *(v90 - 8);
    (*(v92 + 16))(v71, v91, v90);
    (*(v92 + 56))(v71, 0, 1, v90);
    sub_1007625DC();
  }

  sub_100767C9C();
  sub_10076F64C();
  sub_10076FC1C();
  v93 = v128;

  v94 = sub_10075F17C();
  type metadata accessor for NotifyMeButtonPresenter(0);
  v95 = swift_allocObject();
  v96 = v95 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
  *(v95 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v95 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v95 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v96 + 8) = &off_1008913A8;
  swift_unknownObjectWeakAssign();
  *(v95 + 16) = v93;
  *(v95 + 24) = v94;

  v97 = v121;
  v98 = v123;
  sub_10076FC1C();
  (*(v122 + 32))(v95 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_metricsPipeline, v97, v98);
  *(v95 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_objectGraph) = v68;
  sub_10076148C();

  v99 = sub_10076FC1C();
  *(v95 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_bag) = v127;
  sub_10074F1BC(v99, v100);
  sub_10074F8C8(v101, v102);
  v103 = [objc_opt_self() defaultCenter];

  v104 = sub_100767C0C();
  [v103 addObserver:v95 selector:"userNotificationsDidChangeNotification:" name:v104 object:0];

  sub_10032AC88(v95);

  return result;
}

uint64_t sub_10049BBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_10049BD3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double static LargeGameCenterPlayerLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, void *a2, double a3, double a4)
{
  swift_getObjectType();

  return sub_10049F108(a1, a2, a3, a4);
}

uint64_t LargeGameCenterPlayerLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v86 = a1;
  v87 = a2;
  v85 = sub_10077164C();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_10076DBAC();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10076D1FC();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10076DB9C();
  v15 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076DB5C();
  v76 = *(v17 - 8);
  v95 = v76;
  __chkstk_darwin(v17);
  v92 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10076DB6C();
  v94 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10076DB0C();
  v96 = *(v93 - 8);
  __chkstk_darwin(v93);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v21;
  sub_10000CF78(v6 + 23, v6[26]);
  v104.origin.x = a3;
  v104.origin.y = a4;
  v104.size.width = a5;
  v104.size.height = a6;
  CGRectGetMinX(v104);
  v105.origin.x = a3;
  v105.origin.y = a4;
  v105.size.width = a5;
  v105.size.height = a6;
  CGRectGetMinY(v105);
  sub_10076D23C();
  sub_10000A5D4(&qword_1009426C0, qword_100784180);
  v22 = *(v15 + 72);
  v72 = v15;
  v23 = v95;
  v24 = v17;
  v88 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v70 = v22;
  v75 = swift_allocObject();
  v74 = xmmword_100783DD0;
  *(v75 + 1) = xmmword_100783DD0;
  v25 = v6[31];
  v26 = v7[32];
  v27 = sub_10000CF78(v7 + 28, v7[31]);
  v102 = v25;
  v103 = *(v26 + 8);
  v28 = sub_10000DB7C(&v101);
  (*(*(v25 - 8) + 16))(v28, v27, v25);
  v99 = &type metadata for Double;
  v100 = &protocol witness table for Double;
  v98 = 0;
  v29 = *(v96 + 104);
  v68 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v69 = v96 + 104;
  v67 = v29;
  v29(v21);
  v30 = v94;
  v31 = *(v94 + 104);
  v32 = v90;
  v65 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v33 = v91;
  v66 = v94 + 104;
  v64 = v31;
  v31(v90);
  sub_10000A5D4(&unk_100963750, &unk_10078AFA0);
  v34 = swift_allocObject();
  *(v34 + 16) = v74;
  sub_10076DB2C();
  v97 = v34;
  sub_1004A018C(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  sub_10000A5D4(&unk_100963760, &unk_100784170);
  sub_100016EDC();
  v35 = v92;
  sub_1007712CC();
  v36 = v89;
  v37 = v32;
  sub_10076DB8C();
  v38 = *(v23 + 8);
  v76 = v24;
  v95 = v23 + 8;
  v38(v35, v24);
  v39 = *(v30 + 8);
  v94 = v30 + 8;
  v39(v37, v33);
  v40 = v93;
  v41 = *(v96 + 8);
  v96 += 8;
  v41(v36, v93);
  sub_1000F00E0(&v98);
  sub_10000CD74(&v101);
  LODWORD(v23) = *(v7 + 176);
  sub_10000CF78(v7 + 33, v7[36]);
  if (v23 == 1)
  {
    sub_10076D25C();
    v42 = v7[36];
    v43 = v7[37];
    v44 = sub_10000CF78(v7 + 33, v42);
    v102 = v42;
    v103 = *(v43 + 8);
    v45 = sub_10000DB7C(&v101);
    (*(*(v42 - 8) + 16))(v45, v44, v42);
    v100 = &protocol witness table for Double;
    v99 = &type metadata for Double;
    v98 = 0;
    v46 = v38;
    v47 = v89;
    v67(v89, v68, v40);
    v48 = v90;
    v49 = v91;
    v64(v90, v65, v91);
    v50 = v92;
    sub_10076DB3C();
    v51 = v71;
    sub_10076DB8C();
    v46(v50, v76);
    v39(v48, v49);
    v41(v47, v40);
    sub_1000F00E0(&v98);
    sub_10000CD74(&v101);
    v52 = v75;
    v54 = v75[2];
    v53 = v75[3];
    if (v54 >= v53 >> 1)
    {
      v52 = sub_10049EC9C((v53 > 1), v54 + 1, 1, v75, &qword_1009426C0, qword_100784180, &type metadata accessor for VerticalFlowLayout.Child);
    }

    *(v52 + 2) = v54 + 1;
    (*(v72 + 32))(&v52[v88 + v54 * v70], v51, v73);
  }

  else
  {
    sub_10076D25C();
    sub_10000CF78(v7 + 33, v7[36]);
    sub_10076D23C();
  }

  v55 = v80;
  sub_10076DB7C();
  v106.origin.x = a3;
  v106.origin.y = a4;
  v106.size.width = a5;
  v106.size.height = a6;
  CGRectGetMinX(v106);
  v56 = v7[20];
  sub_10000CF78(v7 + 17, v56);
  v57 = v83;
  sub_1000FF02C(v56);
  sub_10076D40C();
  v58 = *(v84 + 8);
  v59 = v85;
  v58(v57, v85);
  sub_10000CF78(v7 + 23, v7[26]);
  sub_10076D22C();
  CGRectGetMaxY(v107);
  v108.origin.x = a3;
  v108.origin.y = a4;
  v108.size.width = a5;
  v108.size.height = a6;
  CGRectGetWidth(v108);
  v60 = v7[20];
  sub_10000CF78(v7 + 17, v60);
  sub_1000FF02C(v60);
  sub_10076D40C();
  v58(v57, v59);
  v109.origin.x = a3;
  v109.origin.y = a4;
  v109.size.width = a5;
  v109.size.height = a6;
  CGRectGetHeight(v109);
  sub_10000CF78(v7 + 23, v7[26]);
  sub_10076D22C();
  CGRectGetMaxY(v110);
  v61 = v77;
  sub_10076DB1C();
  (*(v81 + 8))(v55, v82);
  (*(v78 + 8))(v61, v79);
  v111.origin.x = a3;
  v111.origin.y = a4;
  v111.size.width = a5;
  v111.size.height = a6;
  CGRectGetMinX(v111);
  v112.origin.x = a3;
  v112.origin.y = a4;
  v112.size.width = a5;
  v112.size.height = a6;
  CGRectGetMinY(v112);
  v113.origin.x = a3;
  v113.origin.y = a4;
  v113.size.width = a5;
  v113.size.height = a6;
  CGRectGetWidth(v113);
  sub_10000CF78(v7 + 28, v7[31]);
  sub_10076D22C();
  CGRectGetMaxY(v114);
  sub_10000CF78(v7 + 33, v7[36]);
  sub_10076D22C();
  CGRectGetMaxY(v115);
  v62 = v7[15];
  sub_10000CF78(v7 + 12, v62);
  sub_1000FF02C(v62);
  sub_10076D40C();
  v58(v57, v59);
  return sub_10076D1BC();
}

uint64_t LargeGameCenterPlayerLayout.Metrics.displayNameTopSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 56));

  return sub_10003F19C(a1, v1 + 56);
}

uint64_t LargeGameCenterPlayerLayout.Metrics.labelBottomSpace.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 96));

  return sub_10003F19C(a1, v1 + 96);
}

uint64_t LargeGameCenterPlayerLayout.Metrics.labelMargin.setter(__int128 *a1)
{
  sub_10000CD74((v1 + 136));

  return sub_10003F19C(a1, v1 + 136);
}

double LargeGameCenterPlayerLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_10049F108(v3, a1, a2, a3);
}

void *sub_10049CD80(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000A5D4(&qword_1009592B8, &qword_1007A5F68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_100942890, &unk_1007A5F70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049CF8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_1009592A0, &qword_1007A5F48);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_10049D0D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_10094E578, &qword_1007968E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10049D1CC(char *result, int64_t a2, char a3, char *a4)
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

void *sub_10049D2F4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000A5D4(&qword_100959268, &qword_1007A5F00);
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
    sub_10000A5D4(&qword_100959270, &unk_1007A5F08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10049D474(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000A5D4(&qword_100959200, &qword_1007A5E70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_100959208, &qword_1007A5E78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049D5BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_1009591B8, &unk_1007A5E20);
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

void *sub_10049D6EC(void *result, int64_t a2, char a3, void *a4)
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

char *sub_10049D834(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_1009591B0, &unk_1007A5E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049D954(char *result, int64_t a2, char a3, char *a4)
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

char *sub_10049DA60(char *result, int64_t a2, char a3, char *a4)
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

char *sub_10049DB70(char *result, int64_t a2, char a3, char *a4)
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

void *sub_10049DCC0(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000A5D4(&qword_1009591A0, &qword_1007A5E00);
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
    sub_10000A5D4(&qword_1009591A8, &qword_1007A5E08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049DEB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A5D4(&qword_100959258, &qword_1007A5EE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10049DFD0(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000A5D4(&qword_100959178, &qword_1007A5DA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000A5D4(&qword_100959180, &unk_1007A5DB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049E120(char *result, int64_t a2, char a3, char *a4)
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

char *sub_10049E22C(char *result, int64_t a2, char a3, char *a4)
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

char *sub_10049E358(char *result, int64_t a2, char a3, char *a4)
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

void *sub_10049E4EC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_10049E744(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_10049E89C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
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

void *sub_10049E9F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_10049EB78(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000A5D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_10049EC9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_10049EE7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&qword_100944FF0, &unk_1007873B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_10049EF00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&qword_100944C48, &unk_10079AFF0);
  v4 = *(sub_10075E11C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10049EFFC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&qword_100952110, qword_100790770);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10049F080(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

double sub_10049F108(uint64_t a1, void *a2, double a3, double a4)
{
  v120 = sub_10077164C();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10076DBAC();
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10076DB9C();
  v9 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10076DB5C();
  v11 = *(v123 - 8);
  __chkstk_darwin(v123);
  v111 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10076DB6C();
  v127 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10076DB0C();
  v14 = *(v112 - 8);
  __chkstk_darwin(v112);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076997C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a1;
  v21 = sub_10005312C();
  if (qword_100940DA0 != -1)
  {
    swift_once();
  }

  v100 = sub_10076D3DC();
  sub_10000A61C(v100, qword_1009A16D8);
  v124 = a2;
  v22 = [a2 traitCollection];
  v102 = v21;
  sub_100770B3C();

  v23 = sub_10076C04C();
  v137 = v23;
  v99 = sub_1004A018C(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v138 = v99;
  v24 = sub_10000DB7C(&v136);
  v25 = *(v23 - 8);
  v26 = *(v25 + 104);
  v98 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v101 = v23;
  v97 = v26;
  v96 = v25 + 104;
  v26(v24);
  sub_10076C90C();
  sub_10000CD74(&v136);
  sub_10076996C();
  sub_10076994C();
  v27 = *(v18 + 8);
  v104 = v20;
  v106 = v17;
  v105 = v18 + 8;
  v95 = v27;
  v27(v20, v17);
  sub_10000A5D4(&qword_1009426C0, qword_100784180);
  v28 = *(v9 + 72);
  v109 = v9;
  v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v103 = v28;
  v125 = swift_allocObject();
  v121 = xmmword_100783DD0;
  *(v125 + 1) = xmmword_100783DD0;
  v29 = v137;
  v30 = v138;
  v31 = sub_10000CF78(&v136, v137);
  v134 = v29;
  v135 = *(v30 + 8);
  v32 = sub_10000DB7C(&v133);
  (*(*(v29 - 8) + 16))(v32, v31, v29);
  v131 = &type metadata for Double;
  v132 = &protocol witness table for Double;
  v130 = 0;
  v33 = *(v14 + 104);
  v34 = v16;
  v93 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v35 = v112;
  v94 = v14 + 104;
  v92 = v33;
  v33(v16);
  v36 = v127;
  v37 = *(v127 + 104);
  v38 = v113;
  v90 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v39 = v114;
  v91 = v127 + 104;
  v89 = v37;
  v37(v113);
  v40 = sub_10000A5D4(&unk_100963750, &unk_10078AFA0);
  v41 = *(v11 + 72);
  v42 = v11;
  v43 = *(v11 + 80);
  v44 = (v43 + 32) & ~v43;
  v86 = v43;
  v87 = v40;
  v85 = v44 + v41;
  v45 = swift_allocObject();
  *(v45 + 16) = v121;
  v88 = v44;
  sub_10076DB2C();
  v129[0] = v45;
  v46 = sub_1004A018C(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v47 = sub_10000A5D4(&unk_100963760, &unk_100784170);
  v48 = sub_100016EDC();
  v49 = v111;
  v83 = v47;
  v82 = v48;
  v50 = v123;
  v84 = v46;
  sub_1007712CC();
  v51 = v126;
  sub_10076DB8C();
  v52 = *(v42 + 8);
  v107 = v42 + 8;
  v81 = v52;
  v52(v49, v50);
  v53 = *(v36 + 8);
  v127 = v36 + 8;
  v53(v38, v39);
  v80 = *(v14 + 8);
  v80(v34, v35);
  sub_1000F00E0(&v130);
  sub_10000CD74(&v133);
  if (*(v51 + 176) == 1)
  {
    v54 = v39;
    v55 = v53;
    v56 = v34;
    if (qword_100940DA8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v100, qword_1009A16F0);
    v57 = [v124 traitCollection];
    sub_100770B3C();

    v58 = v101;
    v134 = v101;
    v135 = v99;
    v59 = sub_10000DB7C(&v133);
    v97(v59, v98, v58);
    sub_10076C90C();
    sub_10000CD74(&v133);
    v60 = v104;
    sub_10076996C();
    sub_10076994C();
    v95(v60, v106);
    v61 = v134;
    v62 = v135;
    v63 = sub_10000CF78(&v133, v134);
    v131 = v61;
    v132 = *(v62 + 8);
    v64 = sub_10000DB7C(&v130);
    (*(*(v61 - 8) + 16))(v64, v63, v61);
    v129[4] = &protocol witness table for Double;
    v129[3] = &type metadata for Double;
    v129[0] = 0;
    v92(v56, v93, v35);
    v89(v38, v90, v54);
    v65 = swift_allocObject();
    *(v65 + 16) = v121;
    sub_10076DB2C();
    v128 = v65;
    v66 = v49;
    v67 = v123;
    sub_1007712CC();
    v68 = v126;
    v69 = v35;
    v70 = v108;
    sub_10076DB8C();
    v81(v66, v67);
    v55(v38, v54);
    v80(v56, v69);
    sub_1000F00E0(v129);
    sub_10000CD74(&v130);
    v71 = v125;
    v73 = v125[2];
    v72 = v125[3];
    if (v73 >= v72 >> 1)
    {
      v71 = sub_10049EC9C((v72 > 1), v73 + 1, 1, v125, &qword_1009426C0, qword_100784180, &type metadata accessor for VerticalFlowLayout.Child);
    }

    *(v71 + 2) = v73 + 1;
    (*(v109 + 32))(&v71[v122 + v73 * v103], v70, v110);
    sub_10000CD74(&v133);
  }

  else
  {
    v68 = v126;
  }

  v74 = v115;
  sub_10076DB7C();
  v75 = v118;
  sub_10076D2AC();
  v76 = *(v68 + 120);
  sub_10000CF78((v68 + 96), v76);
  v77 = v117;
  sub_1000FF02C(v76);
  sub_10076D40C();
  (*(v119 + 8))(v77, v120);
  (*(v116 + 8))(v74, v75);
  sub_10000CD74(&v136);
  return a3;
}

unint64_t sub_10049FF44()
{
  result = qword_100959160;
  if (!qword_100959160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100959160);
  }

  return result;
}

uint64_t sub_10049FFA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10049FFE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1004A0088(uint64_t a1, __int128 *a2)
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
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1004A00C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004A010C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A018C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t CompoundActionImplementation.PerformError.localizedDescription.getter()
{
  sub_1004A02E4(v0, &v4);
  if (!v5)
  {
    return 0xD00000000000003ALL;
  }

  sub_100012498(&v4, v3);
  sub_10077145C(49);
  v6._object = 0x80000001007E95F0;
  v6._countAndFlagsBits = 0xD000000000000016;
  sub_1007700CC(v6);
  sub_10000A5D4(&qword_1009592D0, &unk_1007A5F90);
  sub_10077151C();
  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = 0x80000001007E9610;
  sub_1007700CC(v7);
  v1 = 0;
  sub_10000CD74(v3);
  return v1;
}

uint64_t CompoundActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  sub_10076F63C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000CFBC(v5, &unk_100943200, &unk_100785840);
    sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
    sub_1004A0684();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0;
    return sub_10076FC7C();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_10076F6AC();
    if (v12)
    {
      v13 = v12;
      *(&v19 + 1) = sub_100085204();
      v20 = &protocol witness table for OS_dispatch_queue;
      *&v18 = v13;
      sub_100012498(&v18, v21);
    }

    else
    {
      v14 = sub_10076F81C();
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
      v22 = v14;
      v23 = &protocol witness table for SyncTaskScheduler;
      sub_10000DB7C(v21);
      sub_10076F80C();
      if (*(&v19 + 1))
      {
        sub_10000CFBC(&v18, &qword_1009592E0, &qword_1007A5FA0);
      }
    }

    sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
    v15 = sub_10076FCEC();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_10076166C();
    *(v16 + 24) = 0;
    sub_10000CF78(v21, v22);
    sub_10000A570(v21, &v18);
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = a2;
    sub_100012498(&v18, (v17 + 5));

    sub_10076F55C();

    (*(v7 + 8))(v9, v6);

    sub_10000CD74(v21);
    return v15;
  }
}

unint64_t sub_1004A0684()
{
  result = qword_1009592D8;
  if (!qword_1009592D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009592D8);
  }

  return result;
}

uint64_t sub_1004A06D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1004A0710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10076F50C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    v13 = sub_10077158C();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = *(a1 + 24);
  if (v14 == v13)
  {
    swift_endAccess();
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_10076FCBC();
    (*(v9 + 8))(v11, v8);
    return;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v15 = sub_10077149C();
    v16 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v15 = *(v12 + 8 * v14 + 32);

  v16 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  *(a1 + 24) = v16;
  swift_endAccess();
  sub_100563DC4(v15, 1, a3);
  sub_10000A570(a4, v19);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  sub_100012498(v19, (v17 + 5));
  v17[10] = v15;
  swift_retain_n();

  sub_10076FC6C();
}

uint64_t sub_1004A09B0()
{

  sub_10000CD74((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

void sub_1004A0A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10076F50C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v30 - v18;
  (*(v13 + 16))(&v30 - v18, a1, v12, v17);
  v20 = (*(v13 + 88))(v19, v12);
  v21 = v20;
  if (v20 != enum case for ActionOutcome.performed(_:))
  {
    if (v20 == enum case for ActionOutcome.unsupported(_:))
    {
      sub_1004A0684();
      swift_allocError();
      v26 = v25;
      v25[3] = sub_10076B90C();
      v26[4] = sub_1004A0F18(&qword_10095D660, &type metadata accessor for Action);
      *v26 = a6;

      sub_10076FCAC();

      return;
    }

    goto LABEL_20;
  }

  swift_beginAccess();
  v22 = *(a2 + 16);
  if (v22 >> 62)
  {
    v23 = sub_10077158C();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = *(a2 + 24);
  if (v24 == v23)
  {
    swift_endAccess();
    (*(v13 + 104))(v15, v21, v12);
    sub_10076FCBC();
    (*(v13 + 8))(v15, v12);
    return;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v27 = sub_10077149C();
    v28 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    sub_10077166C();
    __break(1u);
    return;
  }

  v27 = *(v22 + 8 * v24 + 32);

  v28 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  *(a2 + 24) = v28;
  swift_endAccess();
  sub_100563DC4(v27, 1, a4);
  sub_10000A570(a5, v31);
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = a4;
  sub_100012498(v31, (v29 + 5));
  v29[10] = v27;
  swift_retain_n();

  sub_10076FC6C();
}

uint64_t sub_1004A0E10(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1004A0E28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004A0E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1004A0ED4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1004A0F18(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_1004A0F6C()
{

  sub_10000CD74((v0 + 40));

  return _swift_deallocObject(v0, 88, 7);
}

id sub_1004A0FE4()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "prepareForReuse");
  *&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artwork] = 0;

  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artworkView];
  sub_10075FCAC();

  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer];
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  v6 = *(v5 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  *(v5 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = 0;
  sub_100453A30(v6);

  sub_1004526E4();
  v7 = *(v3 + v4);
  v8 = *(v7 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  *(v7 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = 0;
  sub_100453A30(v8);

  *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_video] = 0;

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  if (v9)
  {
    v10 = v9;
    sub_10075FCAC();
  }

  *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;

  v11 = &v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle];
  *v11 = 0;
  *(v11 + 1) = 0;

  v12 = sub_1004A1230();
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  [v13 setHidden:{1, v12}];
  [v13 setText:0];
  v14 = &v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerText];
  *v14 = 0;
  *(v14 + 1) = 0;

  return sub_1004A13B4();
}

double sub_1004A1230()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  v2 = [v1 text];
  if (!v2)
  {
    v9 = &v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle + 8];
    v8 = *v9;
LABEL_11:
    if (!v8)
    {
      return result;
    }

LABEL_12:
    if (*v9)
    {
LABEL_13:

      v12 = sub_10076FF6C();

LABEL_17:
      [v1 setText:v12];

      [v0 setNeedsLayout];
      return result;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v4 = v2;
  v5 = sub_10076FF9C();
  v7 = v6;

  v9 = &v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle + 8];
  v8 = *v9;
  if (!v7)
  {
    goto LABEL_11;
  }

  if (!v8)
  {

    if (*v9)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (v5 != *&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle] || v8 != v7)
  {
    v11 = sub_10077167C();

    if (v11)
    {
      return result;
    }

    goto LABEL_12;
  }

  return result;
}

id sub_1004A13B4()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v31 - v8;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerText + 8])
  {
    v10 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel;
    v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel];
    v12 = &selRef_initWithTabBarSystemItem_tag_;
    if (v11)
    {
    }

    else
    {
      v14 = qword_100940B28;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_10076D3DC();
      v16 = sub_10000A61C(v15, qword_1009A0F70);
      v17 = *(v15 - 8);
      (*(v17 + 16))(v9, v16, v15);
      (*(v17 + 56))(v9, 0, 1, v15);
      (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
      v18 = objc_allocWithZone(sub_1007626BC());
      v19 = sub_1007626AC();
      v20 = sub_10076FF6C();
      [v19 setText:v20];

      v21 = qword_10093FFE0;
      v22 = v19;
      if (v21 != -1)
      {
        swift_once();
      }

      [v22 setTextColor:qword_10099EB08];

      [v22 setTextAlignment:1];
      [v22 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v23 = v22;
      sub_1004A185C(v22);
      v12 = &selRef_initWithTabBarSystemItem_tag_;
      v24 = [v1 contentView];
      [v24 addSubview:v23];

      v11 = *&v1[v10];
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v25 = [v11 layer];
    v26 = [v1 v12[115]];
    [v26 overrideUserInterfaceStyle];

    sub_10076FF9C();
    v27 = sub_10076FF6C();

    [v25 setCompositingFilter:v27];

    v28 = *&v1[v10];
    if (v28)
    {
      v29 = v28;
      v30 = sub_10076FF6C();

      [v29 setText:v30];

      result = *&v1[v10];
      if (!result)
      {
        return result;
      }

      return [result setHidden:0];
    }

LABEL_17:

    result = *&v1[v10];
    if (!result)
    {
      return result;
    }

    return [result setHidden:0];
  }

  result = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel];
  if (result)
  {

    return [result setHidden:{1, v7}];
  }

  return result;
}

void sub_1004A185C(void *a1)
{
  v3 = sub_10076F9AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel;
  v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel) = a1;
  v13 = a1;

  v9 = *(v1 + v7);
  if (v9)
  {
    memset(v15, 0, sizeof(v15));
    memset(v14, 0, sizeof(v14));
    v10 = v9;
    sub_10076F95C();
    sub_10000CFBC(v14, &unk_1009434C0, &qword_100783F60);
    sub_10000CFBC(v15, &unk_1009434C0, &qword_100783F60);
    sub_100770B9C();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v11 = v13;
  }
}

void (*sub_1004A1A04(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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
  return sub_1004A1AA0;
}

void sub_1004A1AA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v2)
    {
      sub_1004A3670(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v5 = v2;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v8 = v3;
        v9 = sub_100770EEC();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v15 = *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v2;
    v16 = v2;
    sub_100453A30(v15);

    v17 = *a1;
  }

  else
  {
    if (v2)
    {
      sub_1004A3670(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v10 = v2;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v13 = v3;
        v14 = sub_100770EEC();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v19 = *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v2;
    v18 = v2;
    sub_100453A30(v19);

    v17 = v19;
  }
}

char *sub_1004A1CE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v89 = *(v10 - 8);
  v90 = v10;
  __chkstk_darwin(v10);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10076771C();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v83 - v14;
  v16 = sub_100760B4C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  __chkstk_darwin(v20 - 8);
  v22 = &v83 - v21;
  v23 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_itemLayoutContext;
  v24 = sub_10076341C();
  (*(*(v24 - 8) + 56))(&v5[v23], 1, 1, v24);
  v25 = &v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerText];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_video] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artwork] = 0;
  v27 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_headingView;
  v28 = enum case for Wordmark.arcade(_:);
  v29 = sub_10076C43C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v22, v28, v29);
  (*(v30 + 56))(v22, 0, 1, v29);
  (*(v17 + 104))(v19, enum case for WordmarkView.Alignment.leading(_:), v16);
  *(&v97 + 1) = &type metadata for Double;
  v98 = &protocol witness table for Double;
  *&v96 = 0x4028000000000000;
  v31 = objc_allocWithZone(sub_100760B6C());
  *&v5[v27] = sub_100760B3C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView] = 0;
  v32 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_100940B20 != -1)
  {
    swift_once();
  }

  v33 = sub_10076D3DC();
  v34 = sub_10000A61C(v33, qword_1009A0F58);
  v35 = *(v33 - 8);
  (*(v35 + 16))(v15, v34, v33);
  (*(v35 + 56))(v15, 0, 1, v33);
  (*(v84 + 104))(v85, enum case for DirectionalTextAlignment.none(_:), v86);
  v36 = objc_allocWithZone(sub_1007626BC());
  *&v5[v32] = sub_1007626AC();
  v37 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_offerButton;
  v38 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v37] = sub_1001E89B8(0);
  v39 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artworkView;
  sub_10075FD2C();
  *&v5[v39] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel] = 0;
  v40 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_gradientView;
  *&v5[v40] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v41 = type metadata accessor for MediaView();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v42[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v42[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v42[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v42[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v43 = type metadata accessor for UberContentContainer();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v44[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v45 = &v44[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v44[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v46 = 0u;
  *(v46 + 1) = 0u;
  v46[32] = 1;
  *&v44[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v95.receiver = v44;
  v95.super_class = v43;
  v47 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v48 = v47;
  if (*&v47[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v47 addSubview:?];
  }

  v49 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v42[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v48;
  v94.receiver = v42;
  v94.super_class = v41;
  v50 = objc_msgSendSuper2(&v94, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v50 setClipsToBounds:1];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *&v5[v49] = v50;
  v93.receiver = v5;
  v93.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v93, "initWithFrame:", a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v51 contentView];
  [v53 _setCornerRadius:20.0];

  v54 = [v51 contentView];
  [v54 setClipsToBounds:1];

  v55 = [v51 contentView];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v56 = sub_100770D5C();
  [v55 setBackgroundColor:v56];

  v57 = [v51 contentView];
  v58 = [v57 layer];

  [v58 setAllowsGroupBlending:0];
  v59 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_gradientView;
  v60 = *&v51[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_gradientView];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100785D70;
  v62 = objc_allocWithZone(UIColor);
  v63 = v60;
  *(v61 + 32) = [v62 initWithWhite:0.0 alpha:0.0];
  *(v61 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
  *&v63[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v61;

  sub_1001C05B8();

  v64 = [v51 contentView];
  [v64 addSubview:*&v51[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer]];

  v65 = [v51 contentView];
  [v65 addSubview:*&v51[v59]];

  v66 = [v51 contentView];
  [v66 addSubview:*&v51[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_offerButton]];

  v67 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView;
  v68 = *&v51[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  v69 = sub_100770CFC();
  [v68 setTextColor:v69];

  [*&v51[v67] setTextAlignment:1];
  [*&v51[v67] setHidden:1];
  v70 = [v51 contentView];
  [v70 addSubview:*&v51[v67]];

  v71 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_headingView;
  v72 = *&v51[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_headingView];
  v73 = sub_100770CFC();
  [v72 setTintColor:v73];

  v74 = *&v51[v71];
  v96 = 0u;
  v97 = 0u;
  v91 = 0u;
  v92 = 0u;
  v75 = v74;
  v76 = v88;
  sub_10076F95C();
  sub_10000CFBC(&v91, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v96, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v77 = v90;
  v78 = *(v89 + 8);
  v78(v76, v90);
  v79 = [v51 contentView];

  [v79 addSubview:*&v51[v71]];
  v80 = *&v51[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artworkView];
  v96 = 0u;
  v97 = 0u;
  v91 = 0u;
  v92 = 0u;
  v81 = v80;
  sub_10076F95C();
  sub_10000CFBC(&v91, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v96, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v78(v76, v77);
  return v51;
}

uint64_t sub_1004A2940()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076449C();
  __chkstk_darwin(v5 - 8);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007644BC();
  v42 = *(v8 - 8);
  v43 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69.receiver = v1;
  v69.super_class = ObjectType;
  objc_msgSendSuper2(&v69, "layoutSubviews", v9);
  [v1 bounds];
  v37[1] = v7;
  sub_1004A1184(v11, v12);
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_gradientView];
  v67 = type metadata accessor for GradientView();
  v68 = &protocol witness table for UIView;
  v66 = v13;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer];
  v64 = type metadata accessor for MediaView();
  v65 = &protocol witness table for UIView;
  v63 = v14;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_headingView];
  v61 = sub_100760B6C();
  v62 = &protocol witness table for UIView;
  v60 = v15;
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  if (v16)
  {
    v17 = sub_10075FD2C();
    v18 = &protocol witness table for UIView;
    v19 = v16;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v56 = 0;
    v57 = 0;
  }

  v55 = v19;
  v58 = v17;
  v59 = v18;
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  v21 = sub_1007626BC();
  v53 = v21;
  v54 = &protocol witness table for UILabel;
  v52 = v20;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_offerButton];
  v50 = type metadata accessor for OfferButton();
  v51 = &protocol witness table for UIView;
  v49 = v22;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel];
  if (v23)
  {
    v24 = &protocol witness table for UIView;
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v45 = 0;
    v46 = 0;
  }

  v44 = v23;
  v47 = v21;
  v48 = v24;
  v25 = v16;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v13;
  v29 = v14;
  v30 = v15;
  v31 = v41;
  sub_1007644AC();
  v32 = [v1 contentView];
  [v32 bounds];

  v33 = v38;
  sub_10076446C();
  (*(v39 + 8))(v33, v40);
  sub_10000A5D4(&unk_100952260, &unk_1007A6250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  [v1 bounds];
  v35 = CGRectGetHeight(v70) + -88.0;
  [v1 bounds];
  *(inited + 32) = v35 / CGRectGetHeight(v71);
  *(inited + 40) = 0x3FF0000000000000;
  sub_1001C0414(inited);
  return (*(v42 + 8))(v31, v43);
}

id sub_1004A2E04()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  }

  else
  {
    v4 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [v0 contentView];
    [v5 insertSubview:v4 aboveSubview:*&v0[OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer]];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t type metadata accessor for PosterLockupCollectionViewCell(uint64_t a1)
{
  result = qword_100959328;
  if (!qword_100959328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004A3100(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004A31C4()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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

void sub_1004A3234(void *a1)
{
  sub_100454524(a1);
}

uint64_t (*sub_1004A328C(uint64_t **a1))()
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
  v2[4] = sub_1004A1A04(v2);
  return sub_100019A4C;
}

uint64_t sub_1004A32FC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1004A3670(&qword_100959348, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007A6200);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1004A3370(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004A3670(&qword_100959348, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007A6200);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1004A33FC(uint64_t *a1))()
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
  sub_1004A3670(&qword_100959348, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007A6200);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_1004A34B8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_1004A3670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004A36B8()
{
  v1 = v0;
  v43 = sub_10076771C();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_100760B4C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_itemLayoutContext;
  v14 = sub_10076341C();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitle);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerText);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_video) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artwork) = 0;
  v17 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_headingView;
  v18 = enum case for Wordmark.arcade(_:);
  v19 = sub_10076C43C();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v12, v18, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  (*(v7 + 104))(v9, enum case for WordmarkView.Alignment.leading(_:), v6);
  v47 = &type metadata for Double;
  v48 = &protocol witness table for Double;
  v46 = 0x4028000000000000;
  v21 = objc_allocWithZone(sub_100760B6C());
  *(v1 + v17) = sub_100760B3C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_epicHeaderView) = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_100940B20 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A0F58);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v5, v24, v23);
  (*(v25 + 56))(v5, 0, 1, v23);
  (*(v41 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v43);
  v26 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v22) = sub_1007626AC();
  v27 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_offerButton;
  v28 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v27) = sub_1001E89B8(0);
  v29 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_artworkView;
  sub_10075FD2C();
  *(v1 + v29) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_footerLabel) = 0;
  v30 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_gradientView;
  *(v1 + v30) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v31 = type metadata accessor for MediaView();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v33 = type metadata accessor for UberContentContainer();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v34[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v35 = &v34[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v34[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[32] = 1;
  *&v34[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v45.receiver = v34;
  v45.super_class = v33;
  v37 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v38 = v37;
  if (*&v37[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v37 addSubview:?];
  }

  v39 = OBJC_IVAR____TtC20ProductPageExtension30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v38;
  v44.receiver = v32;
  v44.super_class = v31;
  v40 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v41);
  [v40 setClipsToBounds:1];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *(v1 + v39) = v40;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1004A3D54()
{

  return swift_deallocClassInstance();
}

double sub_1004A3DBC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for RiverTodayCardCollectionViewCell(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView);
    v8 = v6;
    v9 = a1;
    v10 = v7;
    sub_10076C66C();

    v11 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView);
    v12 = v11[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
    v11[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = 1;
    if ((v12 & 1) == 0)
    {
      v13 = v11;
LABEL_4:
      sub_1007214A0();
    }
  }

  else
  {
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    v19 = swift_dynamicCastClass();
    if (!v19)
    {
      goto LABEL_6;
    }

    v20 = v19;
    v21 = *(v19 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView);
    v22 = a1;
    if (v21)
    {
      v23 = v21;
      sub_10076C66C();
    }

    v24 = *(v20 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
    v9 = a1;
    if (v24)
    {
      v25 = v24[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
      v24[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = 1;
      v9 = a1;
      if ((v25 & 1) == 0)
      {
        v13 = a1;
        v9 = v24;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (v14 && a1)
  {
    v16 = v14;
    sub_10076C84C();
    sub_1002A2E88();
    v17 = a1;
    sub_10076332C();
    if (v26)
    {
      ObjectType = swift_getObjectType();
      (*(v16 + 192))(*(v4 + 24), ObjectType, v16);
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (sub_10076C74C())
        {
          sub_10076518C();
        }

        swift_getObjectType();
        sub_10076457C();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

id sub_1004A4048(void *a1)
{
  type metadata accessor for RiverTodayCardCollectionViewCell(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_riverView);
    v4 = v2;
    v5 = a1;
    v6 = v3;
    sub_10076C66C();

    v7 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension32RiverTodayCardCollectionViewCell_gradientView);
    v8 = v7[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
    v7[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = 0;
    if (v8 == 1)
    {
      v9 = v7;
LABEL_4:
      sub_1007214A0();
    }
  }

  else
  {
    type metadata accessor for ListTodayCardCollectionViewCell(0);
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = v11;
    v13 = *(v11 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView);
    v14 = a1;
    if (v13)
    {
      v15 = v13;
      sub_10076C66C();
    }

    v16 = *(v12 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
    v5 = a1;
    if (v16)
    {
      v17 = v16[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating];
      v16[OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_isAnimating] = 0;
      v5 = a1;
      if (v17 == 1)
      {
        v9 = a1;
        v5 = v16;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {

    return [a1 setHidden:0];
  }

  return result;
}

uint64_t sub_1004A41F0()
{
  v36 = sub_1007656DC();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10076D1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007656EC();
  sub_10000DB18(v5, qword_10099FCA8);
  v33 = sub_10000A61C(v5, qword_10099FCA8);
  if (qword_100940600 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_10099FCC0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v4, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v2 + 13;
  v32 = v2[13];
  v32(v4, enum case for FontSource.useCase(_:), v1);
  v31 = sub_10076D9AC();
  v50[3] = v31;
  v50[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v50);
  v48 = v1;
  v49 = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(&v47);
  v30 = v2[2];
  v30(v13, v4, v1);
  sub_10076D9BC();
  v14 = v2[1];
  v28 = v2 + 1;
  v29 = v14;
  v14(v4, v1);
  if (qword_100940608 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v6, qword_10099FCD8);
  v24 = v9;
  v25 = v10;
  v9(v4, v15, v6);
  v16 = v32;
  v32(v4, v11, v1);
  v27 = v12;
  v17 = v31;
  v48 = v31;
  v49 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v47);
  v26 = v11;
  v45 = v1;
  v46 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v44);
  v19 = v30;
  v30(v18, v4, v1);
  sub_10076D9BC();
  v20 = v29;
  v29(v4, v1);
  v45 = &type metadata for Double;
  v46 = &protocol witness table for Double;
  v44[0] = 0x4034000000000000;
  v24(v4, v15, v6);
  v16(v4, v26, v1);
  v43[3] = v17;
  v43[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v43);
  v41 = v1;
  v42 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v40);
  v19(v21, v4, v1);
  sub_10076D9BC();
  v20(v4, v1);
  v42 = &protocol witness table for Double;
  v41 = &type metadata for Double;
  v40[0] = 0x4080E00000000000;
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  (*(v34 + 104))(v35, enum case for EditorialQuoteLayout.Metrics.Alignment.leading(_:), v36);
  return sub_1007656CC();
}

char *sub_1004A47BC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10076771C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_itemLayoutContext;
  v16 = sub_10076341C();
  v17 = *(*(v16 - 8) + 56);
  v46 = v4;
  v17(&v4[v15], 1, 1, v16);
  if (qword_100940600 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_10099FCC0);
  v20 = *(v18 - 8);
  v43 = *(v20 + 16);
  v43(v14, v19, v18);
  v42 = *(v20 + 56);
  v42(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v10 + 104);
  v22(v45, enum case for DirectionalTextAlignment.none(_:), v9);
  v23 = sub_1007626BC();
  v41 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v46[OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_quoteLabel] = sub_1007626AC();
  if (qword_100940608 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v18, qword_10099FCD8);
  v43(v14, v26, v18);
  v42(v14, 0, 1, v18);
  v22(v45, v21, v41);
  v27 = objc_allocWithZone(v24);
  v28 = sub_1007626AC();
  v29 = v46;
  *&v46[OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_attributionLabel] = v28;
  v47.receiver = v29;
  v47.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v32 = [v30 contentView];
  [v32 addSubview:*&v30[OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_quoteLabel]];

  v33 = OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_attributionLabel;
  v34 = *&v30[OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_attributionLabel];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 systemGrayColor];
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v33]];

  v39 = v30;
  sub_1004A52B8(v39, v39);

  return v39;
}

uint64_t sub_1004A4D5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = sub_10076D1FC();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007656EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076570C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_1000ACA5C();
  sub_10076422C();

  if (qword_1009405F8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_10099FCA8);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_quoteLabel];
  v28 = sub_1007626BC();
  v29 = &protocol witness table for UIView;
  v26 = &protocol witness table for UIView;
  v27 = v17;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_attributionLabel];
  v25 = v28;
  v24 = v18;
  v19 = v17;
  v20 = v18;
  sub_1007656FC();
  sub_1007656BC();
  (*(v3 + 8))(v5, v23);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1004A50C0(uint64_t a1)
{
  v2 = v1;
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077070C();

  if (!a1)
  {
    return sub_1004A52B8(v2, v2);
  }

  if ((sub_10077070C() ^ v5))
  {
    return sub_1004A52B8(v2, v2);
  }

  v6 = [v2 traitCollection];
  v7 = sub_1007706EC() & 1;

  result = sub_1007706EC();
  if ((result & 1) != v7)
  {
    return sub_1004A52B8(v2, v2);
  }

  return result;
}

uint64_t type metadata accessor for EditorialQuoteCollectionViewCell(uint64_t a1)
{
  result = qword_100959470;
  if (!qword_100959470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1004A52B8(void *a1, uint64_t a2)
{
  v4 = sub_10076771C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = sub_1007706EC();

  if (v10)
  {
    v11 = enum case for DirectionalTextAlignment.leading(_:);
    v12 = *(v5 + 104);
    v12(v8, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_10076262C();
    v12(v8, v11, v4);
    return sub_10076262C();
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_quoteLabel) setTextAlignment:1];
    v14 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension32EditorialQuoteCollectionViewCell_attributionLabel);

    return [v14 setTextAlignment:1];
  }
}

id sub_1004A5458(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_10076C36C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_10076C38C();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v7 + 8))(v12, v6);
    v20 = [v4 navigationItem];
    sub_10076C31C();
    [v20 largeTitleInsets];
    [v20 setLargeTitleInsets:?];

    v21 = [v4 navigationItem];
    sub_10076C31C();
    [v21 largeTitleInsets];
    [v21 setLargeTitleInsets:?];

    return (*(v22 + 8))(v16, v23);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1004A57D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_10076463C();
  sub_1003B2204(v7);
  v8 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  (*(*(v8 - 8) + 48))(v4, 1, v8);
  sub_1003B2204(v4);
  a1[3] = sub_10076220C();
  a1[4] = sub_100219D24(v9);
  sub_10000DB7C(a1);
  return sub_1007621FC();
}

uint64_t sub_1004A5914()
{
  v6 = [v0 presentedViewController];
  sub_10003F040();
  sub_10000A5D4(&qword_1009594E8, &qword_1007A64F8);
  if (swift_dynamicCast())
  {
    sub_100012498(v4, v7);
    v1 = v8;
    v2 = v9;
    sub_10000CF78(v7, v8);
    (*(v2 + 8))(v1, v2);
    return sub_10000CD74(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_10000CFBC(v4, &unk_1009594F0, qword_1007A6500);
  }
}

uint64_t sub_1004A5A04()
{
  v6 = [v0 presentedViewController];
  sub_10003F040();
  sub_10000A5D4(&qword_1009594E8, &qword_1007A64F8);
  if (swift_dynamicCast())
  {
    sub_100012498(v4, v7);
    v1 = v8;
    v2 = v9;
    sub_10000CF78(v7, v8);
    (*(v2 + 16))(v1, v2);
    return sub_10000CD74(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_10000CFBC(v4, &unk_1009594F0, qword_1007A6500);
  }
}

void sub_1004A5AF4(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10000A5D4(&qword_1009473D0, &qword_10078B140);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer] = 0;
  v10 = &v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_interactiveDismissal];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive] = 0;
  v11 = [objc_opt_self() effectWithStyle:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView] = v12;
  sub_10075F99C();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31.receiver = v3;
  v31.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v31, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v14 = objc_allocWithZone(UITapGestureRecognizer);
  v15 = v13;
  v16 = [v14 initWithTarget:v15 action:"dismissTapDidChange:"];
  v17 = *&v15[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer];
  *&v15[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer] = v16;
  v18 = v16;

  if (v18)
  {
    v19 = *&v15[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView];
    [v19 addGestureRecognizer:v18];

    v20 = OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView;
    v21 = qword_10093F878;
    v22 = *&v15[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView];
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_10076BCFC();
    v24 = sub_10000A61C(v23, qword_10099D408);
    v25 = *(v23 - 8);
    (*(v25 + 16))(v9, v24, v23);
    (*(v25 + 56))(v9, 0, 1, v23);
    sub_10075F97C();

    v26 = [*&v15[v20] layer];
    [v26 setMaskedCorners:3];

    [*&v15[v20] _setContinuousCornerRadius:20.0];
    [*&v15[v20] setAutoresizingMask:18];
    v27 = *&v15[v20];
    sub_10075F95C();

    v28 = OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView;
    [*&v15[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView] setClipsToBounds:0];
    v29 = *&v15[v28];
    v30 = *&v15[v20];
    [v29 bounds];
    [v30 setFrame:?];

    [*&v15[v28] addSubview:*&v15[v20]];
  }

  else
  {
    __break(1u);
  }
}

void sub_1004A5FA0()
{
  v1 = v0;
  v2 = sub_10076C36C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v54 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v1 containerView];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v57 = v10;
  v16 = [v1 traitCollection];
  v17 = [v16 horizontalSizeClass];

  if (v17 != 2)
  {
    v50 = [v1 presentingViewController];
    v51 = [v50 view];

    if (v51)
    {
      [v51 bounds];

      return;
    }

    goto LABEL_23;
  }

  v55 = v13;
  v56 = v9;
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  v18 = [v1 presentingViewController];
  v19 = [v18 view];

  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v19 bounds];
  v21 = v20;
  v23 = v22;

  v24 = [v1 presentingViewController];
  v25 = [v24 view];

  if (!v25)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v54[1] = v21;
  v54[2] = v23;
  [v25 safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  v26 = v55;
  if (qword_100941288 != -1)
  {
    swift_once();
  }

  sub_10076C33C();
  (*(v3 + 8))(v8, v2);
  v27 = [v1 presentingViewController];
  v28 = [v27 traitCollection];

  sub_10076C24C();
  sub_1007706FC();

  [v15 safeAreaInsets];
  v31 = fmax(v30, 44.0);
  if (v29 < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v29;
  }

  [v15 bounds];
  v58.origin.x = sub_100102A30(v33, v34, v35, v36, v31, v32);
  CGRectGetHeight(v58);
  sub_1007709EC();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [v1 presentedViewController];
  type metadata accessor for ComponentViewOverflowViewController();
  v46 = swift_dynamicCastClass();
  v47 = v57;
  if (v46)
  {
    sub_1003E5054(v42, v44);
    v49 = v48;
  }

  else
  {

    v52 = [v1 presentedViewController];
    type metadata accessor for ProductPageReviewsOverflowViewController(0);
    if (swift_dynamicCastClass())
    {
      v49 = sub_100664E78();
    }

    else
    {

      v49 = v44;
    }
  }

  v53 = v56;
  v59.origin.x = v38;
  v59.origin.y = v40;
  v59.size.width = v42;
  v59.size.height = v44;
  if (CGRectGetHeight(v59) >= v49)
  {
    sub_1007709EC();
  }

  else
  {
    [v15 safeAreaInsets];

    sub_100102A30(v38, v40, v42, v44, 0.0, 0.0);
  }

  (*(v47 + 8))(v26, v53);
}

void sub_1004A6654(uint64_t a1, void *a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = [v2 containerView];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v11[4] = sub_1004A7F8C;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1006F5994;
    v11[3] = &unk_100896FD0;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v6;

    [a2 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
  }
}

void sub_1004A678C(int a1, char *a2, void *a3)
{
  v5 = [a2 presentedViewController];
  v10 = [v5 view];

  v6 = [a2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == 2)
  {
    if (v10)
    {
      v8 = *&a2[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView];
      v9 = v10;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v10)
  {
    [v10 _setContinuousCornerRadius:0.0];
  }

  [a3 bounds];
  [*&a2[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView] setFrame:?];
}

void sub_1004A6950(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView] + OBJC_IVAR____TtC20ProductPageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_1004A7F28;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1006F5994;
  v10[3] = &unk_100896F80;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_1004A6B04()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "containerViewWillLayoutSubviews");
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView] setFrame:?];
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView];
    sub_1004A5FA0();
    [v4 setFrame:?];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v0 containerView];
    if (!v13)
    {
LABEL_12:

      return;
    }

    v14 = v13;
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = 0.0;
    v29.size.height = 0.0;
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    if (CGRectEqualToRect(v25, v29) || ([v14 bounds], v30.origin.x = 0.0, v30.origin.y = 0.0, v30.size.width = 0.0, v30.size.height = 0.0, CGRectEqualToRect(v26, v30)))
    {
LABEL_11:

      v3 = v14;
      goto LABEL_12;
    }

    [v14 bounds];
    MaxY = CGRectGetMaxY(v27);
    [v14 safeAreaInsets];
    v17 = MaxY - v16;
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    v18 = CGRectGetMaxY(v28);
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v17 >= v18)
    {
      if (v20)
      {
        v21 = [v20 layer];
        v22 = 15;
        goto LABEL_10;
      }
    }

    else
    {
      if (v20)
      {
        v21 = [v20 layer];
        v22 = 3;
LABEL_10:
        v23 = v21;

        [v23 setMaskedCorners:v22];
        v3 = v14;
        v14 = v23;
        goto LABEL_11;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_1004A6DB8()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v17 = v1;
    [v1 bounds];
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView];
    [v2 setFrame:?];
    [v17 addSubview:v2];
    v3 = [v0 presentedViewController];
    v4 = [v3 view];

    if (v4)
    {
      [v4 setClipsToBounds:1];
      [v4 setAutoresizingMask:18];
      v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView];
      [v5 bounds];
      [v4 setFrame:?];
      v6 = [v4 layer];
      v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView];
      v8 = [v7 layer];
      v9 = [v8 maskedCorners];

      [v6 setMaskedCorners:v9];
      [v7 _cornerRadius];
      [v4 _setCornerRadius:?];
      [v5 addSubview:v4];
      v10 = [v0 presentedViewController];
      v11 = [v10 contentScrollView];

      sub_1004A7E54(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
      swift_unknownObjectWeakAssign();
      sub_1004A7E54(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
    }

    v12 = [v0 presentedViewController];
    v13 = [v12 transitionCoordinator];

    [v2 setAlpha:0.0];
    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v0;
      aBlock[4] = sub_1004A7E4C;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1006F5994;
      aBlock[3] = &unk_100896F30;
      v15 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v16 = v0;

      [v13 animateAlongsideTransition:v15 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1004A7140(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView] setAlpha:1.0];
  v3 = [a2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v5 = [a2 presentedViewController];
    v6 = [v5 view];

    if (v6)
    {
      [v6 _setCornerRadius:0.0];
    }
  }
}

void sub_1004A7288(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView] removeFromSuperview];
    v2 = [v1 presentedViewController];
    v4 = [v2 view];

    if (v4)
    {
      [v4 setClipsToBounds:0];
      v3 = [v4 layer];
      [v3 setMaskedCorners:15];

      [v4 _setCornerRadius:0.0];
    }
  }
}

double sub_1004A73D8()
{
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v7[4] = sub_1004A7E2C;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1006F5994;
    v7[3] = &unk_100896EE0;
    v5 = _Block_copy(v7);
    swift_unknownObjectRetain();
    v6 = v0;

    [v2 animateAlongsideTransition:v5 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v5);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1004A7504(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_overlayView] setAlpha:0.0];
  v3 = *&a2[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView];
  [v3 setAlpha:0.0];
  v4 = [a2 presentedViewController];
  v5 = [v4 view];

  if (v5)
  {
    [v3 _cornerRadius];
    [v5 _setCornerRadius:?];
  }

  v6 = [a2 presentedViewController];
  v7 = [v6 view];

  if (v7)
  {
    v8 = [v7 layer];

    [v8 setMaskedCorners:15];
  }

  v9 = [a2 presentedViewController];
  [v9 setNeedsStatusBarAppearanceUpdate];
}

void sub_1004A777C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v4 = OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive;
    if (v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive] == 1)
    {
      [*&v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_presentedContainerView] frame];
      v5 = CGRectGetHeight(v38) * 0.14;
      [a1 translationInView:0];
      v7 = v6 - *&v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY];
      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6 - *&v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY];
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
            goto LABEL_27;
          }

          if (v11 == 1.0)
          {
            v32 = [v1 presentedViewController];
            [v32 dismissViewControllerAnimated:1 completion:0];

            goto LABEL_27;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 2)
        {
          v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_interactiveDismissal];
          swift_beginAccess();
          if (*(v13 + 24))
          {
            sub_10000A570(v13, &v34);
            v14 = *(&v35 + 1);
            v15 = v36;
            sub_10000CF78(&v34, *(&v35 + 1));
            (v15[2])(v14, v15, v11);

            sub_10000CD74(&v34);
            return;
          }

          goto LABEL_29;
        }

LABEL_27:

LABEL_29:

        return;
      }

      v29 = &v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v29 + 24))
      {
        sub_10000A570(v29, &v34);
        v30 = *(&v35 + 1);
        v31 = v36;
        sub_10000CF78(&v34, *(&v35 + 1));
        (v31[4])(v30, v31);

        sub_10000CD74(&v34);
      }

      else
      {
      }

      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      swift_beginAccess();
      sub_1004198A8(&v34, v29);
      swift_endAccess();
      v1[v4] = 0;
    }

    else
    {
      if ([a1 state] != 1)
      {
        goto LABEL_27;
      }

      v16 = [v1 traitCollection];
      v17 = [v16 horizontalSizeClass];

      if (v17 != 2)
      {
        goto LABEL_27;
      }

      [v33 contentOffset];
      v19 = v18;
      [v33 adjustedContentInset];
      if (v19 + v20 > 0.0)
      {
        goto LABEL_27;
      }

      [v33 adjustedContentInset];
      [v33 contentOffset];
      [v33 setContentOffset:?];
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100785D70;
      v22 = [v1 presentedViewController];
      v23 = [v22 view];

      if (v23)
      {
        v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_shadowView];
        *(v21 + 32) = v23;
        *(v21 + 40) = v24;
        v36 = &off_100889268;
        *&v34 = v21;
        *(&v34 + 1) = _swiftEmptyArrayStorage;
        *&v35 = 0x3FB1EB851EB851ECLL;
        *(&v35 + 1) = &type metadata for PullDownInteractiveDismissal;
        v25 = OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_interactiveDismissal;
        swift_beginAccess();
        v26 = v24;
        sub_1004198A8(&v34, &v1[v25]);
        swift_endAccess();
        [a1 translationInView:0];
        v28 = v27;

        *&v1[OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY] = v28;
        v1[v4] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1004A7DF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1004A7E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1004A7E54(SEL *a1, SEL *a2)
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

uint64_t sub_1004A7F4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1004A7FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100767D5C();
  (*(a3 + 8))(a2, a3);
  sub_10076F64C();
  sub_10076FC1C();

  sub_100767CEC();
}

void sub_1004A8058(char a1, uint64_t a2, uint64_t a3)
{
  *((*(a3 + 16))(a2, a3) + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = a1;

  sub_1004A8214(a2, a3);
}

double sub_1004A80D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v4();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v7 = [Strong layer];
    CATransform3DMakeScale(&v8, 1.0, 1.0, 1.0);
    [v7 setTransform:&v8];

    (v4)(a1, a2);
    swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_1004A81CC(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))(a1) + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled);

  return v2;
}

void sub_1004A8214(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  (*(a2 + 8))();
  sub_100767D5C();
  sub_10076F5CC();

  v5 = v23;
  v21 = a1;
  v22 = v3;
  v20 = *(v3 + 16);
  LODWORD(v3) = *(v20(a1, v3) + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled);

  if (v3 == 1)
  {
    sub_100767CDC();
  }

  else
  {
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      if (sub_100767D4C())
      {
        sub_100767CAC();
      }
    }
  }

  v8 = [v2 collectionView];
  if (!v8)
  {
    goto LABEL_21;
  }

  v19 = v8;
  v9 = [v8 visibleCells];
  sub_1000FEDC4();
  v10 = sub_1007701BC();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_20:

    v5 = v23;
LABEL_21:

    return;
  }

  v11 = sub_10077158C();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_10:
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
      swift_getObjectType();
      v15 = swift_conformsToProtocol2();
      if (v15)
      {
        if (v14)
        {
          v16 = v15;
          ObjectType = swift_getObjectType();
          v18 = *(v20(v21, v22) + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled);

          (*(v16 + 192))(v18, ObjectType, v16);
        }
      }
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_1004A8490(void *a1, CGFloat a2)
{
  v3 = [a1 layer];
  CATransform3DMakeScale(&v4, a2, a2, 1.0);
  [v3 setTransform:&v4];
}

__n128 ProductLockupAccessibilityLayout.init(metrics:iconView:titleText:developerText:taglineText:tertiaryTitleText:offerButton:shareButton:offerSubtitleText:expandedOfferTitleText:expandedOfferSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  sub_1004A8660(a1, a9 + *(v20 + 64), v21);
  sub_100012498(a2, a9);
  sub_100012498(a3, a9 + 40);
  sub_100012498(a4, a9 + 80);
  sub_100012498(a5, a9 + 120);
  v22 = *(a6 + 16);
  *(a9 + 160) = *a6;
  *(a9 + 176) = v22;
  *(a9 + 192) = *(a6 + 32);
  sub_100012498(a7, a9 + 200);
  v23 = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = v23;
  *(a9 + 272) = *(a8 + 32);
  sub_100012498(a10, a9 + 280);
  v24 = *(a11 + 16);
  *(a9 + 320) = *a11;
  *(a9 + 336) = v24;
  *(a9 + 352) = *(a11 + 32);
  v25 = *(a12 + 16);
  *(a9 + 360) = *a12;
  *(a9 + 376) = v25;
  *(a9 + 392) = *(a12 + 32);
  *(a9 + 432) = *(a13 + 32);
  v26 = *(a13 + 16);
  *(a9 + 400) = *a13;
  *(a9 + 416) = v26;
  *(a9 + 472) = *(a14 + 32);
  result = *(a14 + 16);
  *(a9 + 440) = *a14;
  *(a9 + 456) = result;
  return result;
}

uint64_t sub_1004A8660(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double ProductLockupAccessibilityLayout.measurements(fitting:in:)(void *a1, double a2)
{
  ObjectType = swift_getObjectType();

  return sub_1004AC96C(a1, v2, ObjectType, a2);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:titleSpace:developerSpace:taglineSpace:tertiaryTitleSpace:shareButtonLeadingMargin:offerTopSpace:offerSubtitleSpace:expandedOfferTitleSpace:expandedOfferSubtitleSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, uint64_t a17, __int128 *a18, __int128 *a19)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_100012498(a1, (a9 + 4));
  sub_100012498(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v28 = v27[8];
  v29 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v30 = *(*(v29 - 8) + 32);
  v30(a9 + v28, a3, v29);
  v30(a9 + v27[9], a4, v29);
  v30(a9 + v27[10], a5, v29);
  v30(a9 + v27[11], a6, v29);
  sub_100012498(a7, a9 + v27[12]);
  sub_100012498(a8, a9 + v27[13]);
  sub_100012498(a16, a9 + v27[14]);
  v30(a9 + v27[15], a17, v29);
  sub_100012498(a18, a9 + v27[16]);
  v31 = a9 + v27[17];

  return sub_100012498(a19, v31);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 52);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 56);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);

  return sub_1004AC9C0(v3, a1);
}

uint64_t ProductLockupAccessibilityLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v300 = a2;
  v13 = sub_10076D1FC();
  v298 = *(v13 - 8);
  v299 = v13;
  __chkstk_darwin(v13);
  v297 = &v283 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076543C();
  v295 = *(v15 - 8);
  v296 = v15;
  __chkstk_darwin(v15);
  v311 = &v283 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_10076541C();
  v330 = *(v319 - 8);
  __chkstk_darwin(v319);
  v286 = &v283 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v301 = &v283 - v19;
  __chkstk_darwin(v20);
  v285 = &v283 - v21;
  __chkstk_darwin(v22);
  v309 = &v283 - v23;
  __chkstk_darwin(v24);
  v283 = &v283 - v25;
  __chkstk_darwin(v26);
  v284 = &v283 - v27;
  v346 = sub_1007653CC();
  v351 = *(v346 - 8);
  __chkstk_darwin(v346);
  v322 = &v283 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = sub_1007653EC();
  v349 = *(v350 - 8);
  __chkstk_darwin(v350);
  v324 = &v283 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = sub_10076540C();
  v352 = *(v347 - 8);
  __chkstk_darwin(v347);
  v345 = &v283 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10077164C();
  v32 = *(v31 - 8);
  *&v33 = __chkstk_darwin(v31).n128_u64[0];
  v35 = &v283 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [a1 traitCollection];
  v312 = sub_1007706FC();

  v37 = v7 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  v38 = *(v37 + 56);
  sub_10000CF78((v37 + 32), v38);
  sub_1000FF02C(v38);
  sub_10076D40C();
  v40 = v39;
  v41 = *(v32 + 8);
  v41(v35, v31);
  v42 = *(v37 + 96);
  sub_10000CF78((v37 + 72), v42);
  sub_1000FF02C(v42);
  sub_10076D40C();
  v44 = v43;
  v314 = v35;
  v315 = v32 + 8;
  v45 = v35;
  v46 = v321;
  v316 = v31;
  v313 = v41;
  v41(v45, v31);
  v47 = v37;
  v48 = *(v37 + 8);
  v49 = v40 + *v37;
  v294 = v44;
  v305 = a3;
  v50 = a3;
  v51 = a4;
  v52 = a4;
  v53 = a5;
  v54 = a5;
  v55 = a6;
  v56 = sub_100102A30(v50, v52, v54, a6, v49, v48);
  v58 = v57;
  v60 = v59;
  v62 = v61;
  sub_100016E2C((v46 + 30), v366, &unk_10094DA00, &qword_100783FA0);
  v348 = a1;
  v310 = v62;
  if (v367)
  {
    sub_10000CF78(v366, v367);
    sub_10076D2BC();
    v302 = v63;
    v65 = v64;
    sub_10000CD74(v366);
  }

  else
  {
    sub_10000CFBC(v366, &unk_10094DA00, &qword_100783FA0);
    v302 = 0.0;
    v65 = 0;
  }

  v287 = v65;
  sub_100016E2C((v46 + 30), v366, &unk_10094DA00, &qword_100783FA0);
  v66 = v367;
  sub_10000CFBC(v366, &unk_10094DA00, &qword_100783FA0);
  v303 = v55;
  v304 = v40;
  v306 = v51;
  v307 = v53;
  if (v66)
  {
    v67 = (v37 + *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48));
    v68 = v67[3];
    sub_10000CF78(v67, v68);
    v69 = v314;
    sub_1000FF02C(v68);
    v70 = v348;
    sub_10076D40C();
    v72 = v71;
    v313(v69, v316);
  }

  else
  {
    v72 = 0.0;
    v70 = v348;
  }

  v73 = [v70 traitCollection];
  v74 = sub_10077070C();

  v374.origin.x = v56;
  v374.origin.y = v58;
  v374.size.width = v60;
  v75 = v310;
  v374.size.height = v310;
  MinX = CGRectGetMinX(v374);
  v77 = v302;
  v78 = v72 + v302 + MinX;
  v375.origin.x = v56;
  v375.origin.y = v58;
  v375.size.width = v60;
  v375.size.height = v75;
  Width = CGRectGetWidth(v375);
  if (v312)
  {
    v80 = Width - v77 - v72;
  }

  else
  {
    v80 = Width;
  }

  if ((v312 & 1 & v74) != 0)
  {
    v81 = v78;
  }

  else
  {
    v81 = MinX;
  }

  v290 = v81;
  v376.origin.x = v56;
  v376.origin.y = v58;
  v376.size.width = v60;
  v376.size.height = v75;
  MinY = CGRectGetMinY(v376);
  v292 = v58;
  v293 = v56;
  v377.origin.x = v56;
  v377.origin.y = v58;
  v291 = v60;
  v377.size.width = v60;
  v377.size.height = v75;
  Height = CGRectGetHeight(v377);
  sub_10000CF78(v46, v46[3]);
  v83 = *(v37 + 120);
  sub_10076D28C();
  v84 = v46[13];
  v344 = v46 + 10;
  sub_10000CF78(v46 + 10, v84);
  sub_10076D2AC();
  v86 = v85;
  v88 = v87;
  v89 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v90 = v47;
  v91 = (v47 + *(v89 + 36));
  *&v363 = v70;
  v92 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v343 = v91;
  sub_10075FDCC();
  *&v363 = v366[0];
  sub_10076D42C();
  v94 = v86 - v88 + v93;
  v95 = (v46 + 15);
  sub_10000CF78(v46 + 15, v46[18]);
  sub_10076D2AC();
  v97 = v96;
  v99 = v98;
  v328 = v89;
  v329 = v90;
  *&v363 = v70;
  v318 = v92;
  sub_10075FDCC();
  *&v363 = v366[0];
  sub_10076D42C();
  v101 = v97 - v99 + v100;
  if (v101 >= v94)
  {
    sub_10000A570(v95, &v363);
    v95 = v344;
  }

  else
  {
    sub_10000A570(v344, &v363);
  }

  v102 = v330;
  v103 = v346;
  v104 = v351;
  sub_10000A570(v95, &v360);
  v105 = v348;
  *&v357 = v348;
  sub_10075FDCC();
  v106 = v366[0];
  *&v357 = v105;
  sub_10075FDCC();
  v107 = v366[0];
  if (v101 >= v94)
  {
    v108 = v366[0];
  }

  else
  {
    v108 = v106;
  }

  *(&v358 + 1) = &type metadata for CGFloat;
  v359 = &protocol witness table for CGFloat;
  *&v357 = v108;
  if (v101 >= v94)
  {
    v107 = v106;
  }

  *(&v355 + 1) = &type metadata for CGFloat;
  v356 = &protocol witness table for CGFloat;
  *&v354 = v107;
  sub_100012498(&v363, v366);
  sub_10000A570(&v357, &v369);
  sub_100012498(&v360, v370);
  sub_100012498(&v354, v372);
  sub_10000CD74(&v357);
  v109 = v321;
  sub_10000CF78(v321 + 25, v321[28]);
  sub_10076D2BC();
  v111 = v110;
  sub_10000A5D4(&qword_10094F2A8, " \a");
  v323 = *(v102 + 72);
  v112 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v288 = 2 * v323;
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_100783C60;
  v320 = v112;
  v308 = v113;
  v317 = (v113 + v112);
  *(&v364 + 1) = &type metadata for CGFloat;
  v365 = &protocol witness table for CGFloat;
  *&v363 = v83;
  v362 = 0;
  v360 = 0u;
  v361 = 0u;
  v327 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v343 = *(*&v352 + 104);
  v344 = (*&v352 + 104);
  v114 = v345;
  v343();
  v342 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v115 = v349;
  v340 = *(v349 + 104);
  v341 = v349 + 104;
  v116 = v109;
  v117 = v324;
  v340();
  v118 = sub_10000A5D4(&unk_100959500, qword_100798190);
  v119 = *(*&v104 + 72);
  v337 = *(*&v104 + 80);
  v338 = v118;
  v339 = (v337 + 32) & ~v337;
  v336 = v339 + v119;
  v120 = swift_allocObject();
  v335 = xmmword_100783DD0;
  *(v120 + 16) = xmmword_100783DD0;
  sub_10076539C();
  *&v357 = v120;
  v334 = sub_1004ACB0C(&qword_10094F2B0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v333 = sub_10000A5D4(&qword_100959510, &unk_1007A6560);
  v332 = sub_1004ACA24();
  v121 = v104;
  v122 = v322;
  sub_1007712CC();
  sub_1007653FC();
  v331 = *(*&v121 + 8);
  v331(v122, v103);
  v123 = *(v115 + 8);
  v349 = v115 + 8;
  v326 = v123;
  v123(v117, v350);
  v124 = *(*&v352 + 8);
  *&v352 += 8;
  v325 = v124;
  v125 = v347;
  v124(v114, v347);
  sub_10000CFBC(&v360, &unk_100943240, &qword_10078AFB0);
  sub_10000CD74(&v363);
  v126 = v109[8];
  v127 = v109[9];
  v128 = sub_10000CF78(v116 + 5, v116[8]);
  *(&v364 + 1) = v126;
  v365 = *(v127 + 8);
  v129 = sub_10000DB7C(&v363);
  (*(*(v126 - 8) + 16))(v129, v128, v126);
  v130 = v103;
  *&v351 = *&v121 + 8;
  *&v357 = v348;
  sub_10075FDCC();
  v131 = *&v360;
  sub_10000CF78(v116 + 5, v116[8]);
  sub_10076D6EC();
  *(&v361 + 1) = &type metadata for CGFloat;
  v362 = &protocol witness table for CGFloat;
  *&v360 = v131 + v132;
  v359 = 0;
  v357 = 0u;
  v358 = 0u;
  v133 = v345;
  v134 = v125;
  (v343)(v345, v327, v125);
  v135 = v324;
  v136 = v350;
  (v340)(v324, v342, v350);
  v137 = swift_allocObject();
  *(v137 + 16) = v335;
  sub_10076539C();
  *&v354 = v137;
  sub_1007712CC();
  sub_1007653FC();
  v331(v122, v130);
  v138 = v136;
  v326(v135, v136);
  v325(v133, v134);
  sub_10000CFBC(&v357, &unk_100943240, &qword_10078AFB0);
  sub_10000CD74(&v360);
  sub_10000CD74(&v363);
  v139 = v367;
  v140 = v368;
  v141 = sub_10000CF78(v366, v367);
  *(&v364 + 1) = v139;
  v365 = *(v140 + 8);
  v142 = sub_10000DB7C(&v363);
  (*(*(v139 - 8) + 16))(v142, v141, v139);
  v362 = 0;
  v360 = 0u;
  v361 = 0u;
  v143 = v327;
  (v343)(v133, v327, v134);
  v144 = v346;
  (v340)(v135, v342, v138);
  v145 = swift_allocObject();
  *(v145 + 16) = v335;
  sub_10076539C();
  *&v357 = v145;
  sub_1007712CC();
  sub_1007653FC();
  v331(v122, v144);
  v146 = v326;
  v326(v135, v138);
  v147 = v146;
  v148 = v325;
  v325(v133, v134);
  sub_10000CFBC(&v360, &unk_100943240, &qword_10078AFB0);
  sub_10000CD74(&v363);
  sub_100016E2C((v321 + 20), &v360, &qword_10094BB30, qword_100796E40);
  if (*(&v361 + 1))
  {
    v149 = v143;
    v150 = v148;
    sub_100012498(&v360, &v363);
    v151 = *(&v364 + 1);
    v152 = v365;
    v153 = v147;
    v154 = sub_10000CF78(&v363, *(&v364 + 1));
    *(&v361 + 1) = v151;
    v362 = v152[1];
    v155 = sub_10000DB7C(&v360);
    (*(*(v151 - 8) + 16))(v155, v154, v151);
    *&v354 = v348;
    *(&v358 + 1) = &type metadata for CGFloat;
    v359 = &protocol witness table for CGFloat;
    sub_10075FDCC();
    v356 = 0;
    v354 = 0u;
    v355 = 0u;
    v156 = v345;
    v157 = v347;
    (v343)(v345, v149, v347);
    v158 = v324;
    v159 = v350;
    (v340)(v324, v342, v350);
    v160 = swift_allocObject();
    *(v160 + 16) = v335;
    sub_10076539C();
    v353 = v160;
    v161 = v322;
    v162 = v346;
    sub_1007712CC();
    v163 = v284;
    sub_1007653FC();
    v331(v161, v162);
    v153(v158, v159);
    v150(v156, v157);
    sub_10000CFBC(&v354, &unk_100943240, &qword_10078AFB0);
    sub_10000CD74(&v357);
    sub_10000CD74(&v360);
    v164 = v308;
    v166 = *(v308 + 2);
    v165 = *(v308 + 3);
    if (v166 >= v165 >> 1)
    {
      v164 = sub_10049CF64((v165 > 1), v166 + 1, 1, v308);
    }

    v168 = v319;
    v167 = v320;
    v169 = v330;
    *(v164 + 2) = v166 + 1;
    (*(v169 + 32))(&v164[v167 + v166 * v323], v163, v168);
    sub_10000CD74(&v363);
  }

  else
  {
    sub_10000CFBC(&v360, &qword_10094BB30, qword_100796E40);
    v168 = v319;
    v161 = v322;
    v158 = v324;
    v164 = v308;
  }

  v170 = v321;
  sub_10000CF78(v321 + 25, v321[28]);
  if (sub_10076D24C())
  {
    v171 = v161;
    v172 = v164;
    v173 = v327;
    v174 = v343;
  }

  else
  {
    v175 = (v329 + *(v328 + 52));
    v176 = v175[3];
    sub_10000CF78(v175, v176);
    v308 = v164;
    v177 = v314;
    sub_1000FF02C(v176);
    sub_10076D40C();
    v179 = v178;
    v180 = v322;
    v313(v177, v316);
    *(&v364 + 1) = &type metadata for CGFloat;
    v365 = &protocol witness table for CGFloat;
    *&v363 = v111 + v179;
    v362 = 0;
    v360 = 0u;
    v361 = 0u;
    v181 = v345;
    v182 = v347;
    (v343)(v345, v327, v347);
    v183 = v350;
    (v340)(v158, v342, v350);
    v184 = swift_allocObject();
    *(v184 + 16) = v335;
    sub_10076539C();
    *&v357 = v184;
    v185 = v346;
    sub_1007712CC();
    v186 = v283;
    sub_1007653FC();
    v331(v180, v185);
    v326(v158, v183);
    v187 = v182;
    v188 = v308;
    v325(v181, v187);
    sub_10000CFBC(&v360, &unk_100943240, &qword_10078AFB0);
    sub_10000CD74(&v363);
    v190 = *(v188 + 2);
    v189 = *(v188 + 3);
    if (v190 >= v189 >> 1)
    {
      v188 = sub_10049CF64((v189 > 1), v190 + 1, 1, v188);
    }

    v191 = v330;
    *(v188 + 2) = v190 + 1;
    (*(v191 + 32))(&v188[v320 + v190 * v323], v186, v168);
    v170 = v321;
    v171 = v322;
    v172 = v188;
    v173 = v327;
    v174 = v343;
  }

  v365 = 0;
  v363 = 0u;
  v364 = 0u;
  v192 = v345;
  v193 = v347;
  (v174)(v345, v173, v347);
  v194 = v324;
  v195 = v350;
  (v340)(v324, v342, v350);
  v196 = swift_allocObject();
  *(v196 + 16) = v335;
  sub_10076539C();
  *&v360 = v196;
  v197 = v346;
  sub_1007712CC();
  sub_1007653FC();
  v331(v171, v197);
  v326(v194, v195);
  v325(v192, v193);
  sub_10000CFBC(&v363, &unk_100943240, &qword_10078AFB0);
  v199 = *(v172 + 2);
  v198 = *(v172 + 3);
  v200 = v172;
  if (v199 >= v198 >> 1)
  {
    v200 = sub_10049CF64((v198 > 1), v199 + 1, 1, v172);
  }

  v201 = v330;
  *(v200 + 2) = v199 + 1;
  v203 = *(v201 + 32);
  v202 = v201 + 32;
  v317 = v203;
  v203(&v200[v320 + v199 * v323], v309, v319);
  sub_100016E2C((v170 + 30), &v360, &unk_10094DA00, &qword_100783FA0);
  v204 = v324;
  if (*(&v361 + 1))
  {
    sub_100012498(&v360, &v363);
    sub_10000CF78(v170 + 25, v170[28]);
    if (v312 & 1 | ((sub_10076D24C() & 1) == 0))
    {
      sub_10000CD74(&v363);
    }

    else
    {
      *(&v361 + 1) = &type metadata for CGFloat;
      v362 = &protocol witness table for CGFloat;
      *&v360 = v287;
      v359 = 0;
      v357 = 0u;
      v358 = 0u;
      v205 = v345;
      (v343)(v345, v327, v347);
      v206 = v350;
      (v340)(v204, v342, v350);
      v207 = swift_allocObject();
      *(v207 + 16) = v335;
      sub_10076539C();
      *&v354 = v207;
      v208 = v322;
      v209 = v346;
      sub_1007712CC();
      sub_1007653FC();
      v331(v208, v209);
      v326(v204, v206);
      v325(v205, v347);
      sub_10000CFBC(&v357, &unk_100943240, &qword_10078AFB0);
      sub_10000CD74(&v360);
      v211 = *(v200 + 2);
      v210 = *(v200 + 3);
      if (v211 >= v210 >> 1)
      {
        v200 = sub_10049CF64((v210 > 1), v211 + 1, 1, v200);
      }

      sub_10000CD74(&v363);
      *(v200 + 2) = v211 + 1;
      v317(&v200[v320 + v211 * v323], v285, v319);
    }
  }

  else
  {
    sub_10000CFBC(&v360, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C((v170 + 40), &v360, &qword_10094BB30, qword_100796E40);
  v330 = v202;
  if (*(&v361 + 1))
  {
    sub_100012498(&v360, &v363);
    v212 = *(&v364 + 1);
    v213 = v365;
    v214 = sub_10000CF78(&v363, *(&v364 + 1));
    *(&v361 + 1) = v212;
    v362 = v213[1];
    v215 = sub_10000DB7C(&v360);
    (*(*(v212 - 8) + 16))(v215, v214, v212);
    *&v354 = v348;
    *(&v358 + 1) = &type metadata for CGFloat;
    v359 = &protocol witness table for CGFloat;
    sub_10075FDCC();
    v356 = 0;
    v354 = 0u;
    v355 = 0u;
    v216 = v200;
    v217 = v345;
    v218 = v347;
    (v343)(v345, v327, v347);
    v219 = v350;
    (v340)(v204, v342, v350);
    v220 = swift_allocObject();
    *(v220 + 16) = v335;
    sub_10076539C();
    v353 = v220;
    v221 = v322;
    v222 = v346;
    sub_1007712CC();
    sub_1007653FC();
    v331(v221, v222);
    v326(v204, v219);
    v223 = v217;
    v200 = v216;
    v325(v223, v218);
    sub_10000CFBC(&v354, &unk_100943240, &qword_10078AFB0);
    sub_10000CD74(&v357);
    sub_10000CD74(&v360);
    v225 = *(v216 + 2);
    v224 = *(v216 + 3);
    if (v225 >= v224 >> 1)
    {
      v200 = sub_10049CF64((v224 > 1), v225 + 1, 1, v216);
    }

    *(v200 + 2) = v225 + 1;
    v317(&v200[v320 + v225 * v323], v301, v319);
    sub_10000CD74(&v363);
  }

  else
  {
    sub_10000CFBC(&v360, &qword_10094BB30, qword_100796E40);
  }

  sub_100016E2C((v170 + 45), &v360, &qword_10094BB30, qword_100796E40);
  if (*(&v361 + 1))
  {
    v226 = v322;
    v227 = v350;
    sub_100012498(&v360, &v363);
    v228 = *(&v364 + 1);
    v229 = v365;
    v230 = sub_10000CF78(&v363, *(&v364 + 1));
    *(&v361 + 1) = v228;
    v362 = v229[1];
    v231 = sub_10000DB7C(&v360);
    (*(*(v228 - 8) + 16))(v231, v230, v228);
    v359 = 0;
    v357 = 0u;
    v358 = 0u;
    v232 = v345;
    v233 = v200;
    v234 = v347;
    (v343)(v345, v327, v347);
    (v340)(v204, v342, v227);
    v235 = swift_allocObject();
    *(v235 + 16) = v335;
    sub_10076539C();
    *&v354 = v235;
    v236 = v346;
    sub_1007712CC();
    v237 = v286;
    sub_1007653FC();
    v331(v226, v236);
    v326(v204, v227);
    v238 = v234;
    v239 = v233;
    v325(v232, v238);
    sub_10000CFBC(&v357, &unk_100943240, &qword_10078AFB0);
    sub_10000CD74(&v360);
    v240 = *(v233 + 2);
    v241 = *(v239 + 3);
    if (v240 >= v241 >> 1)
    {
      v239 = sub_10049CF64((v241 > 1), v240 + 1, 1, v239);
    }

    *(v239 + 2) = v240 + 1;
    v317(&v239[v320 + v240 * v323], v237, v319);
    sub_10000CD74(&v363);
  }

  else
  {
    sub_10000CFBC(&v360, &qword_10094BB30, qword_100796E40);
  }

  sub_1007653DC();
  v242 = v297;
  v244 = MinY;
  v243 = v290;
  sub_10076538C();
  sub_10000CF78(v170 + 5, v170[8]);
  sub_10076D2AC();
  v350 = v245;
  v247 = v246;
  sub_10000CF78(v170 + 5, v170[8]);
  sub_10076D22C();
  v248 = CGRectGetMaxY(v378) - v247;
  v379.origin.x = v243;
  v379.origin.y = v244;
  v379.size.width = v80;
  v379.size.height = Height;
  v249 = CGRectGetMinX(v379);
  v380.origin.x = v243;
  v380.origin.y = v244;
  v380.size.width = v80;
  v380.size.height = Height;
  v250 = CGRectGetWidth(v380);
  sub_10076D1EC();
  v252 = v251;
  v381.origin.x = v243;
  v381.origin.y = v244;
  v381.size.width = v80;
  v381.size.height = Height;
  v253 = v252 + CGRectGetHeight(v381) - v248;
  sub_10000CF78(v370, v371);
  sub_10076D2AC();
  v351 = v249;
  v382.origin.x = v249;
  v382.origin.y = v248;
  v382.size.width = v250;
  v382.size.height = v253;
  v352 = CGRectGetMinX(v382);
  v383.origin.x = v249;
  v383.origin.y = v248;
  v383.size.width = v250;
  v383.size.height = v253;
  CGRectGetMinY(v383);
  sub_10000CF78(v372, v372[3]);
  sub_10076D42C();
  sub_10000CF78(v370, v371);
  sub_100770A4C();
  sub_10076D23C();
  sub_100016E2C((v170 + 30), &v360, &unk_10094DA00, &qword_100783FA0);
  if (!*(&v361 + 1))
  {
    sub_10000CFBC(&v360, &unk_10094DA00, &qword_100783FA0);
    v254 = v303;
    v256 = v292;
    v255 = v293;
    goto LABEL_56;
  }

  sub_100012498(&v360, &v363);
  v254 = v303;
  v256 = v292;
  v255 = v293;
  if ((v312 & 1) == 0)
  {
    sub_10000CF78(v170 + 25, v170[28]);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(v170 + 25, v170[28]);
      sub_10076D22C();
      CGRectGetMidY(v385);
      goto LABEL_58;
    }

    sub_10000CD74(&v363);
LABEL_56:
    v257 = v291;
    v258 = v310;
    goto LABEL_59;
  }

  sub_10000CF78(v170 + 5, v170[8]);
  sub_10076D22C();
  CGRectGetMinY(v384);
LABEL_58:
  v386.origin.x = v255;
  v386.origin.y = v256;
  v257 = v291;
  v386.size.width = v291;
  v258 = v310;
  v386.size.height = v310;
  CGRectGetMaxX(v386);
  sub_10000CF78(&v363, *(&v364 + 1));
  v254 = v303;
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CD74(&v363);
LABEL_59:
  v387.origin.x = v255;
  v387.origin.y = v256;
  v387.size.width = v257;
  v387.size.height = v258;
  v259 = CGRectGetWidth(v387);
  v260 = sub_10076D1CC();
  *v261 = v259;
  v260(&v363, 0);
  v262 = (v329 + *(v328 + 68));
  v263 = v262[3];
  sub_10000CF78(v262, v263);
  v264 = v314;
  sub_1000FF02C(v263);
  sub_10076D40C();
  v266 = v265;
  v313(v264, v316);
  v267 = sub_10076D1CC();
  *(v268 + 8) = v266 + *(v268 + 8);
  v267(&v363, 0);
  sub_100016E2C((v170 + 50), &v360, &unk_10094DA00, &qword_100783FA0);
  if (*(&v361 + 1))
  {
    sub_100012498(&v360, &v363);
    sub_10000CF78(&v363, *(&v364 + 1));
    v270 = v305;
    v269 = v306;
    v388.origin.x = v305;
    v388.origin.y = v306;
    v271 = v307;
    v388.size.width = v307;
    v388.size.height = v254;
    CGRectGetMinX(v388);
    v389.origin.x = v270;
    v389.origin.y = v269;
    v389.size.width = v271;
    v389.size.height = v254;
    CGRectGetMinY(v389);
    v390.origin.x = v270;
    v390.origin.y = v269;
    v390.size.width = v271;
    v390.size.height = v254;
    CGRectGetWidth(v390);
    sub_10076D23C();
    sub_10000CD74(&v363);
  }

  else
  {
    sub_10000CFBC(&v360, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C((v170 + 55), &v360, &unk_10094DA00, &qword_100783FA0);
  if (*(&v361 + 1))
  {
    sub_100012498(&v360, &v363);
    sub_10000CF78(&v363, *(&v364 + 1));
    v272 = v305;
    v273 = v306;
    v391.origin.x = v305;
    v391.origin.y = v306;
    v274 = v307;
    v391.size.width = v307;
    v391.size.height = v254;
    CGRectGetMinX(v391);
    v392.origin.x = v272;
    v392.origin.y = v273;
    v392.size.width = v274;
    v392.size.height = v254;
    CGRectGetMaxY(v392);
    v275 = v294;
    v276 = v262[3];
    sub_10000CF78(v262, v276);
    v277 = v314;
    sub_1000FF02C(v276);
    sub_10076D40C();
    v313(v277, v316);
    v393.origin.x = v272;
    v393.origin.y = v273;
    v393.size.width = v274;
    v393.size.height = v254;
    CGRectGetWidth(v393);
    sub_10076D23C();
    sub_10000CD74(&v363);
  }

  else
  {
    sub_10000CFBC(&v360, &unk_10094DA00, &qword_100783FA0);
    v275 = v294;
  }

  v278 = sub_10076D1CC();
  *(v279 + 8) = v304 + *(v279 + 8);
  v278(&v363, 0);
  v280 = sub_10076D1CC();
  *(v281 + 8) = v275 + *(v281 + 8);
  v280(&v363, 0);
  (*(v295 + 8))(v311, v296);
  sub_10000CD74(v373);
  (*(v298 + 32))(v300, v242, v299);
  return sub_10000CFBC(v366, &unk_1009522A0, &qword_1007A6570);
}

double ProductLockupAccessibilityLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_1004ABB78(a1, v3, a2, a3);
}

double sub_1004ABB78(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a2 + 35, a2[38]);
  v10 = sub_10076D24C();
  v11 = 0.0;
  v12 = 0.0;
  if ((v10 & 1) == 0)
  {
    sub_10000CF78(a2 + 35, a2[38]);
    sub_10076D2AC();
    v14 = v13;
    v11 = v15;
    v16 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v17 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000CF78(&v16[*(v17 + 56)], *&v16[*(v17 + 56) + 24]);
    sub_10076D42C();
    v12 = v14 - v11 + v18;
  }

  v51 = v12;
  sub_100016E2C((a2 + 40), &v53, &qword_10094BB30, qword_100796E40);
  if (v54)
  {
    sub_100012498(&v53, v55);
    sub_10000CF78(v55, v56);
    sub_10076D2AC();
    v20 = v19;
    v11 = v21;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v52 = a1;
    sub_10000A5D4(&unk_100945BD0, qword_100796680);
    sub_10075FDCC();
    v52 = v53;
    v22 = v20;
    sub_10076D42C();
    v24 = v23;
    sub_10000CD74(v55);
    v50 = v11;
  }

  else
  {
    sub_10000CFBC(&v53, &qword_10094BB30, qword_100796E40);
    v22 = JUMeasurementsZero[1];
    v50 = JUMeasurementsZero[3];
    v24 = 0.0;
  }

  sub_100016E2C((a2 + 45), &v53, &qword_10094BB30, qword_100796E40);
  if (v54)
  {
    sub_100012498(&v53, v55);
    sub_10000CF78(v55, v56);
    sub_10076D2AC();
    v26 = v25;
    v49 = v24;
    v11 = v27;
    v28 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v29 = &v28[*(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64)];
    v30 = *(v29 + 3);
    sub_10000CF78(v29, v30);
    sub_1000FF02C(v30);
    sub_10076D40C();
    v32 = v31;
    (*(v7 + 8))(v9, v6);
    *&v53 = v32;
    v24 = v49;
    sub_10076D42C();
    v34 = v33;
    sub_10000CD74(v55);
    v35 = v11;
  }

  else
  {
    sub_10000CFBC(&v53, &qword_10094BB30, qword_100796E40);
    v26 = JUMeasurementsZero[1];
    v35 = JUMeasurementsZero[3];
    v34 = 0.0;
  }

  sub_10000CF78(a2 + 25, a2[28]);
  sub_10076D2BC();
  v37 = v26 - v35 + v34 + v22 - v50 + v24 + v51 + v36;
  v38 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  v39 = *(v38 + 12);
  sub_10000CF78(v38 + 9, v39);
  sub_1000FF02C(v39);
  sub_10076D40C();
  v41 = v40;
  v42 = *(v7 + 8);
  v42(v9, v6);
  v43 = v37 + v41;
  v44 = &v38[*(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68)];
  v45 = *(v44 + 3);
  sub_10000CF78(v44, v45);
  sub_1000FF02C(v45);
  sub_10076D40C();
  v47 = v46;
  v42(v9, v6);
  return v11 + v43 + v47;
}

double sub_1004AC100(void *a1, void *a2, uint64_t a3, double a4)
{
  v93 = a3;
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v98 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64));
  v11 = *v10;
  v12 = a4 - v10[1];
  v14 = v10[2];
  v13 = v10[3];
  v96 = v10;
  v15 = v12 - v13;
  v91 = v14;
  v92 = v11;
  v16 = a4 - v11 - v14;
  v17 = [a1 traitCollection];
  v18 = sub_1007706FC();

  sub_100016E2C((a2 + 30), v108, &unk_10094DA00, &qword_100783FA0);
  if (v109)
  {
    sub_10000CF78(v108, v109);
    sub_10076D2BC();
    v20 = v19;
    sub_10000CD74(v108);
  }

  else
  {
    sub_10000CFBC(v108, &unk_10094DA00, &qword_100783FA0);
    v20 = 0.0;
  }

  sub_100016E2C((a2 + 30), v108, &unk_10094DA00, &qword_100783FA0);
  v21 = v109;
  sub_10000CFBC(v108, &unk_10094DA00, &qword_100783FA0);
  v94 = v8;
  v95 = v7;
  if (v21)
  {
    v22 = (v96 + *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48));
    v23 = v22[3];
    sub_10000CF78(v22, v23);
    v24 = v98;
    sub_1000FF02C(v23);
    sub_10076D40C();
    v26 = v25;
    (*(v8 + 8))(v24, v7);
    if (v18)
    {
LABEL_6:
      v27 = v15 - v20 - v26;
      goto LABEL_9;
    }
  }

  else
  {
    v26 = 0.0;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v27 = v15;
LABEL_9:
  v97 = v27;
  sub_10000CF78(a2 + 5, a2[8]);
  sub_10076D2AC();
  v29 = v28;
  v31 = v30;
  v32 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v106 = a1;
  sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v33 = a2;
  v34 = v96;
  sub_10075FDCC();
  *&v106 = v108[0];
  v88 = v31;
  v89 = v29;
  sub_10076D42C();
  v87 = v35;
  sub_10000CF78(v33 + 5, v33[8]);
  sub_10076D6EC();
  v86 = v36;
  sub_10000CF78(v33 + 10, v33[13]);
  sub_10076D2AC();
  v38 = v37;
  v40 = v39;
  v41 = *(v32 + 36);
  *&v106 = a1;
  v85 = v41;
  v42 = v34;
  sub_10075FDCC();
  *&v106 = v108[0];
  sub_10076D42C();
  v43 = v16;
  v45 = v38 - v40 + v44;
  v46 = (v33 + 15);
  v99 = v33;
  sub_10000CF78(v33 + 15, v33[18]);
  v90 = v43;
  sub_10076D2AC();
  v48 = v47;
  v50 = v49;
  *&v106 = a1;
  sub_10075FDCC();
  *&v106 = v108[0];
  sub_10076D42C();
  v52 = v48 - v50 + v51;
  if (v52 >= v45)
  {
    sub_10000A570(v46, &v106);
    v46 = (v33 + 10);
  }

  else
  {
    sub_10000A570((v33 + 10), &v106);
  }

  sub_10000A570(v46, &v104);
  v103[0] = a1;
  sub_10075FDCC();
  v53 = v108[0];
  v103[0] = a1;
  sub_10075FDCC();
  v54 = v108[0];
  if (v52 >= v45)
  {
    v55 = v108[0];
  }

  else
  {
    v55 = v53;
  }

  v103[3] = &type metadata for CGFloat;
  v103[4] = &protocol witness table for CGFloat;
  v103[0] = v55;
  if (v52 >= v45)
  {
    v54 = v53;
  }

  v101 = &type metadata for CGFloat;
  v102 = &protocol witness table for CGFloat;
  *&v100 = v54;
  sub_100012498(&v106, v108);
  sub_10000A570(v103, v110);
  sub_100012498(&v104, &v111);
  sub_100012498(&v100, &v112);
  sub_10000CD74(v103);
  sub_10000CF78(v108, v109);
  v56 = v97;
  v57 = v90;
  sub_10076D2AC();
  v59 = v58;
  v61 = v60;
  sub_10000CF78(v110, v110[3]);
  sub_10076D42C();
  v63 = v62;
  sub_100016E2C((v99 + 20), &v104, &qword_10094BB30, qword_100796E40);
  v64 = v95;
  if (v105)
  {
    sub_100012498(&v104, &v106);
    sub_10000CF78(&v106, v107);
    sub_10076D2AC();
    v66 = v65;
    v68 = v67;
    v103[0] = a1;
    sub_10075FDCC();
    v103[0] = v104;
    v56 = v97;
    sub_10076D42C();
    v70 = v66 - v68 + v69;
    sub_10000CD74(&v106);
  }

  else
  {
    sub_10000CFBC(&v104, &qword_10094BB30, qword_100796E40);
    v70 = 0.0;
  }

  v71 = v94;
  v72 = v70 + v59 - v61 + v63 + v89 - v88 + v87 + v86 + v42[15];
  v73 = (v42 + *(v32 + 52));
  v74 = v73[3];
  sub_10000CF78(v73, v74);
  v75 = v98;
  sub_1000FF02C(v74);
  sub_10076D40C();
  v77 = v76;
  v78 = *(v71 + 8);
  v78(v75, v64);
  v79 = v72 + v77 + sub_1004ABB78(a1, v99, v56, v57);
  v80 = *(v42 + 7);
  sub_10000CF78(v42 + 4, v80);
  sub_1000FF02C(v80);
  sub_10076D40C();
  v82 = v81;
  v78(v75, v64);
  v83 = v91 + v92 + v79 + v82;
  sub_10000CFBC(v108, &unk_1009522A0, &qword_1007A6570);
  return v83;
}