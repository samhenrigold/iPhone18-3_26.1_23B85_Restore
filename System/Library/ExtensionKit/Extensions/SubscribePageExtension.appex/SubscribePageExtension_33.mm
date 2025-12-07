uint64_t sub_1003BB8B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1003BB914(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22UberCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1003BB9E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003BBA44()
{
  result = qword_100935378;
  if (!qword_100935378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935378);
  }

  return result;
}

unint64_t sub_1003BBA9C()
{
  result = qword_100935380;
  if (!qword_100935380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935380);
  }

  return result;
}

__n128 sub_1003BBAF0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1003BBB1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1003BBB64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1003BBBD0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1003BBBF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1003BBC3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003BBCAC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1003BBCD4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v57 = sub_100748884();
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1007488A4();
  v6 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1007488C4();
  v8 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1007488D4();
  v10 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100754724();
  v12 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a2;
  sub_100748894();
  v63 = v3;
  v14 = *(v3 + 120);
  v49 = *(v14 + 16);
  if (v49)
  {
    v15 = 0;
    v16 = v14 + 32;
    v60 = (v12 + 8);
    v47 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
    v46 = (v8 + 104);
    v45 = (v6 + 104);
    v44 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
    v43 = v59 + 8;
    v42 = (v6 + 8);
    v41 = (v8 + 8);
    v40 = (v10 + 8);
    v39 = xmmword_1007A5A00;
    v48 = v14;
    v17 = v52;
    while (v15 < *(v14 + 16))
    {
      *v68 = v15;
      sub_1003BC948(v16, &v68[8]);
      if (*&v69[8])
      {
        v27 = *v68;
        *v68 = *&v68[8];
        *&v68[16] = *v69;
        *v69 = *&v69[8];
        *&v69[16] = *&v69[24];
        *&v69[32] = *&v69[40];
        *&v69[48] = v70;
        v28 = 24;
        if (!v27)
        {
          v28 = 64;
        }

        v29 = 40;
        if (v27)
        {
          v29 = 0;
        }

        v30 = *(v63 + v28);
        sub_10000C888((v63 + v29), v30);
        v31 = v61;
        sub_100536120(v30);
        sub_100750564();
        v33 = v32;
        v34 = *v60;
        (*v60)(v31, v62);
        v35 = 0;
        if (v27 == *(v14 + 16) - 1)
        {
          v36 = *(v63 + 104);
          sub_10000C888((v63 + 80), v36);
          v37 = v61;
          sub_100536120(v36);
          sub_100750564();
          v35 = v38;
          v34(v37, v62);
        }

        ++v15;
        v18 = v53;
        (*v46)(v17, v47, v53);
        v19 = v54;
        v20 = v55;
        (*v45)(v54, v44, v55);
        v67[3] = &type metadata for CGFloat;
        v67[4] = &protocol witness table for CGFloat;
        v67[0] = v33;
        v66[3] = &type metadata for CGFloat;
        v66[4] = &protocol witness table for CGFloat;
        v66[0] = v35;
        sub_10000C518(&unk_100931370, &unk_1007B2560);
        v21 = v59;
        v22 = swift_allocObject();
        *(v22 + 16) = v39;
        sub_100748854();
        v65 = v22;
        sub_1003BC9B0(v23);
        sub_10000C518(&unk_100931380, &unk_1007B0A90);
        sub_1001C4F00();
        v24 = v56;
        v25 = v57;
        sub_1007543A4();
        v26 = v50;
        sub_1007488B4();
        (*(v21 + 8))(v24, v25);
        (*v42)(v19, v20);
        (*v41)(v17, v18);
        sub_1000F4268(v66);
        sub_10000C620(v67);
        sub_1007488E4();
        (*v40)(v26, v51);
        sub_1003BC980(v68);
        v16 += 80;
        v14 = v48;
        if (v49 != v15)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1003BC46C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_100754724();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1007488F4();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003BBCD4(a1, v16);
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v31 = v16;
  sub_100748844();
  v17 = *(v5 + 120);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_1003BC948(v19, v41);
      sub_100120E28(&v43, &v37);
      if (v38)
      {
        sub_100012160(&v37, v39);
        sub_10000C888(v41, v42);
        sub_100750384();
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = v40;
        sub_10000C888(v39, v40);
        sub_100536120(v28);
        sub_100750564();
        (*(v12 + 8))(v14, v11);
        v44.origin.x = v21;
        v44.origin.y = v23;
        v44.size.width = v25;
        v44.size.height = v27;
        CGRectGetWidth(v44);
        v45.origin.x = v21;
        v45.origin.y = v23;
        v45.size.width = v25;
        v45.size.height = v27;
        CGRectGetHeight(v45);
        v46.origin.x = v34;
        v46.origin.y = v35;
        v46.size.width = v36;
        v46.size.height = a5;
        CGRectGetMidX(v46);
        v47.origin.x = v21;
        v47.origin.y = v23;
        v47.size.width = v25;
        v47.size.height = v27;
        CGRectGetMinY(v47);
        sub_10000C888(v41, v42);
        sub_100750394();
        sub_1003BC980(v41);
        sub_10000C620(v39);
      }

      else
      {
        sub_1003BC980(v41);
        sub_1000F4268(&v37);
      }

      v19 += 80;
      --v18;
    }

    while (v18);
  }

  return (*(v32 + 8))(v31, v33);
}

void sub_1003BC810(uint64_t a1, __n128 a2, double a3)
{
  v5 = sub_1007488F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v3 + 120) + 16))
  {
    sub_1003BBCD4(a1, &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_100748834();
    (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_1003BC9B0(__n128 a1)
{
  result = qword_10092C0C0;
  if (!qword_10092C0C0)
  {
    sub_100748884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092C0C0);
  }

  return result;
}

void sub_1003BCA08(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_objectGraph] = a3;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_presenter] = a1;
  sub_1007442C4();
  sub_100752764();

  sub_100752D34();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_artworkLoader] = v28;
  if (a2)
  {
    v9 = ASKDeviceTypeGetCurrent();
    v10 = sub_100753094();
    v12 = v11;
    if (v10 == sub_100753094() && v12 == v13)
    {

      v16 = 1;
    }

    else
    {
      v15 = sub_100754754();

      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_allocWithZone(type metadata accessor for ArcadeSubscribePageView());
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_pageView] = sub_100533EB4(v16);
  sub_1007495B4();
  sub_100752754();
  v18 = v28;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_impressionsCalculator] = v28;
  if (v18)
  {

    sub_1007495A4();
  }

  v19 = &v4[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver];
  *(v19 + 3) = sub_10074AAD4();
  *(v19 + 4) = &protocol witness table for BasePresenter;
  *v19 = a1;
  v27.receiver = v4;
  v27.super_class = ObjectType;

  v20 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_1003C1724(&qword_100935430, v21, type metadata accessor for ArcadeSubscribeViewController, &protocol conformance descriptor for ArcadeSubscribeViewController);
  v22 = v20;
  sub_10074AAB4();
  v23 = [v22 view];
  if (v23)
  {
    v24 = v23;
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v25 = sub_100753E04();
    [v24 setBackgroundColor:v25];

    v26 = [v22 view];
    if (v26)
    {
      [v26 addSubview:*&v22[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_pageView]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1003BCF78()
{
  v1 = [v0 isViewLoaded];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController;
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController];
    if (v3)
    {
      v4 = v3;
      [v0 addChildViewController:v4];
      result = [v4 view];
      if (result)
      {
        v6 = result;
        result = [v0 view];
        if (result)
        {
          v7 = result;
          [result bounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          [v6 setFrame:{v9, v11, v13, v15}];
          v16 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
          if (!v16)
          {
            result = [v0 view];
            if (result)
            {
              v18 = result;
              result = [v4 view];
              if (result)
              {
                v19 = result;
                [v18 addSubview:result];
                goto LABEL_12;
              }

LABEL_21:
              __break(1u);
              return result;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          v17 = v16;
          result = [v0 view];
          if (result)
          {
            v18 = result;
            result = [v4 view];
            if (result)
            {
              v19 = result;
              [v18 insertSubview:result belowSubview:v17];

LABEL_12:
              [v4 didMoveToParentViewController:v0];

              v2 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController;
              goto LABEL_13;
            }

            goto LABEL_19;
          }

LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_13:
  v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_pageView];
  v21 = *&v0[v2] != 0;

  return [v20 setHidden:v21];
}

void sub_1003BD1A4()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v1)
  {
    v2 = v1;
    v15._object = 0x800000010077A500;
    v15._countAndFlagsBits = 0xD00000000000001CLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_1007458B4(v15, v16);
    v3 = sub_100753064();

    [v2 setTitle:v3 forState:0];

    [v2 addTarget:v0 action:"dismissPressed:" forControlEvents:64];
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 view];
      if (!v6)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v7 = v6;
      v8 = [v5 view];
      if (!v8)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = v8;
      [v7 insertSubview:v2 aboveSubview:v8];

      v10 = v2;
      v2 = v9;
    }

    else
    {
      v11 = [v0 view];
      if (!v11)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v10 = v11;
      [v11 addSubview:v2];
    }
  }

  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  [v12 setNeedsLayout];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  sub_10074AAC4();
  [v1 setModalInPresentation:1];
  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  [v1 setTitle:0];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1, v7);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_100742974();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationItem];
  v11 = [v10 leftBarButtonItems];

  if (v11)
  {
    sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr);
    v12 = sub_1007532A4();

    if (v12 >> 62)
    {
      v13 = sub_100754664();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v2 navigationItem];
  v16 = [v15 rightBarButtonItems];

  if (v16)
  {
    sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr);
    v17 = sub_1007532A4();

    v18 = v17 >> 62 ? sub_100754664() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
      v14 = 1;
    }
  }

  v19 = [v2 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 setNavigationBarHidden:!v14 animated:0];
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100741454();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100742964();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1, v11);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_100742974();
  (*(v10 + 8))(v13, v9);
  if (sub_1007442E4())
  {
    sub_100741444();
    sub_100741424();
    (*(v6 + 8))(v8, v5);
    sub_100746C04();
  }

  if (sub_1007442D4())
  {
    sub_100752C04();
  }

  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100741454();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752BC4();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100930220, &unk_1007BD870);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_100742964();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewWillDisappear:", a1, v16);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  sub_100752BB4();
  (*(v15 + 104))(v18, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v14);
  sub_100742974();
  (*(v15 + 8))(v18, v14);
  if (sub_1007442E4())
  {
    sub_100752BB4();
    sub_100741444();
    sub_100741424();
    (*(v20 + 8))(v7, v21);
    sub_100746C24();
    v19 = sub_100746C34();
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    sub_100746C14();
  }

  if (sub_1007442D4())
  {
    sub_100752BB4();
    sub_100752C14();

    (*(v22 + 8))(v10, v23);
  }

  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_impressionsCalculator])
  {
    sub_1007495A4();
  }

  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100742964();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1, v6);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v5 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v4);
  sub_100742974();
  (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewDidBecomeFullyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewDidBecomeFullyVisible", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewWillBecomePartiallyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewWillBecomePartiallyVisible", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  sub_100752BB4();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_impressionsCalculator])
  {
    sub_1007495A4();
  }

  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

uint64_t sub_1003BE6A4(SEL *a1, unsigned int *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100742964();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, *a1, v8);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v7 + 104))(v10, *a2, v6);
  sub_100742974();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1003BE7F4(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_100742964();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v15, v12);
  sub_10000C888(&v13[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v13[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v9 + 104))(v11, *a4, v8);
  sub_100742974();

  return (*(v9 + 8))(v11, v8);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68.receiver = v1;
  v68.super_class = ObjectType;
  objc_msgSendSuper2(&v68, "viewWillLayoutSubviews", v5);
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController];
  if (v18)
  {
    v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
    v20 = &selRef_initWithTitle_style_target_action_;
    if (v19)
    {
      v21 = v18;
      v62 = v19;
      v22 = [v1 view];
      if (!v22)
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v23 = v22;
      [v22 safeAreaInsets];

      v60 = v17;
      v61 = v15;
      sub_100753B14();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_pageView];
      v59 = v32[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style];
      v33 = [v32 traitCollection];
      v34 = sub_1007537D4();

      if (v34)
      {
        v35 = [v32 window];
        if (v35)
        {
          v36 = v35;
          [v35 frame];
          Width = CGRectGetWidth(v69);
          [v32 bounds];
          v38 = CGRectGetWidth(v70);

          v39 = v38 < Width;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 1;
      }

      v46 = [v1 view];
      if (!v46)
      {
        goto LABEL_24;
      }

      v47 = v46;
      [v46 bounds];
      v49 = v48;

      v50 = [v1 traitCollection];
      v51 = sub_100753804();

      v57 = v13;
      v58 = v11;
      if (v51)
      {
        sub_100532AA4(v39, v59, v63);
        sub_10000C824(&v66, v67);
        sub_1003C0D08(v63);
      }

      else
      {
        sub_1005339BC(v39, v59, v63, v49);
        sub_10000C824(&v65, v67);
        sub_1003C0CB4(v63);
      }

      sub_100012160(v67, v63);
      v52 = v64;
      sub_10000C888(v63, v64);
      sub_100536120(v52);
      sub_100750564();
      (*(v4 + 8))(v7, v3);
      sub_10000C620(v63);
      v53 = v62;
      [v62 measurementsWithFitting:v1 in:{v29, v31}];
      v71.origin.x = v25;
      v71.origin.y = v27;
      v71.size.width = v29;
      v71.size.height = v31;
      CGRectGetMidX(v71);
      v72.origin.x = v25;
      v72.origin.y = v27;
      v72.size.width = v29;
      v72.size.height = v31;
      CGRectGetMaxY(v72);
      v54 = v53;
      sub_100753B24();
      v20 = &selRef_initWithTitle_style_target_action_;
      [v54 setFrame:?];

      v13 = v57;
      v11 = v58;
      v17 = v60;
      v15 = v61;
    }

    else
    {
      v45 = v18;
    }

    v55 = [v18 view];
    if (v55)
    {
      v56 = v55;
      [v55 v20[72]];

      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_pageView];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];

    v43 = [v1 view];
    if (v43)
    {
      v44 = v43;
      [v43 safeAreaInsets];

      sub_100753B14();
      [v40 setFrame:?];
      return;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", isa);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t ArcadeSubscribeViewController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1003BF110(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(&a1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_100742974();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003BF23C(__n128 a1)
{
  v1 = sub_1007524D4();
  v15 = *(v1 - 8);
  v16 = v1;
  __chkstk_darwin(v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007527A4();
  v19 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752B34();
  v17 = *(v7 - 8);
  v18 = v7;
  __chkstk_darwin(v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007465E4();
  v14[2] = sub_1007465C4();
  sub_1007442F4();
  sub_100745584();
  sub_100745564();
  sub_100745514();

  sub_100745564();
  sub_100745574();

  v22 = 0;
  aBlock = 0u;
  v21 = 0u;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_100745564();
  sub_100745504();

  sub_100752B24();
  swift_unknownObjectRelease();

  sub_10000C8CC(v24, &qword_100935460, qword_1007C6500);
  sub_10000C8CC(&aBlock, &qword_100935468, &unk_1007BDA50);
  v10 = v14[1];
  sub_100752764();
  sub_100752D34();
  sub_100743EC4();
  sub_100752794();

  (*(v15 + 8))(v3, v16);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_1003C16C8;
  v23 = v11;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v21 = sub_1000CF7B0;
  *(&v21 + 1) = &unk_100873F38;
  v12 = _Block_copy(&aBlock);

  [v10 dismissViewControllerAnimated:1 completion:v12];
  _Block_release(v12);

  (*(v19 + 8))(v6, v4);
  return (*(v17 + 8))(v9, v18);
}

void sub_1003BF6FC(double a1)
{
  v2 = v1;
  v3 = sub_1007521E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752224();
  v23 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100752244();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  if (!*(v2 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton))
  {
    sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
    v22 = v4;
    v20 = sub_100753774();
    sub_100752234();
    sub_1007522B4();
    v21 = *(v11 + 8);
    v21(v13, v10);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1003C16E4;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_100873F60;
    v18 = _Block_copy(aBlock);

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003C1724(&qword_1009236B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750, &qword_1007A6920);
    sub_1000A8054();
    sub_1007543A4();
    v19 = v20;
    sub_100753734();
    _Block_release(v18);

    (*(v22 + 8))(v6, v3);
    (*(v23 + 8))(v9, v7);
    v21(v16, v10);
  }
}

void sub_1003BFAD4(uint64_t a1)
{
  v1 = sub_100750534();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {

      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        sub_1007466C4();
        if (qword_1009212E8 != -1)
        {
          swift_once();
        }

        v11 = sub_10000D0FC(v1, qword_1009815F0);
        (*(v2 + 16))(v4, v11, v1);
        v12 = sub_1007466B4();
        v13 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton;
        v14 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
        if (v14)
        {
          [v14 removeFromSuperview];
          v15 = *&v10[v13];
        }

        else
        {
          v15 = 0;
        }

        *&v10[v13] = v12;
        v16 = v12;

        sub_1003BD1A4();
      }
    }
  }
}

void sub_1003BFCB4(uint64_t a1)
{
  v3 = sub_100752244();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    sub_100752274();
  }

  *(v1 + v10) = a1;
  swift_retain_n();

  if (a1)
  {
    sub_100744AC4();
    sub_100752764();
    sub_100752D34();
    sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
    v11 = sub_100753774();
    sub_100752234();
    sub_1007449D4();
    sub_1007522B4();
    v12 = *(v4 + 8);
    v12(v6, v3);
    sub_100753744();

    v12(v9, v3);
  }
}

void ArcadeSubscribeViewController.apply(page:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton;
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = 0;

  sub_1003BD1A4();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = [v2 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  [v8 bounds];

  v10 = [v2 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 safeAreaInsets];

  sub_100753B14();
  sub_100531548(v12, v13, a1, sub_1003C0D94, v7, *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_artworkLoader], *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_impressionsCalculator], *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_objectGraph]);

  v14 = [v2 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 setNeedsLayout];
}

void *sub_1003C00B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_10000C5B4(a1, v6);
    sub_1003BF23C(v5);

    return sub_10000C8CC(v6, &unk_100923520, &qword_1007A5A70);
  }

  return result;
}

Swift::Void __swiftcall ArcadeSubscribeViewController.toggleDismissButtonVisibility(shouldHide:)(Swift::Bool shouldHide)
{
  v3 = sub_1007521E4();
  __chkstk_darwin(v3);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    sub_100752274();
  }

  *(v1 + v4) = 0;

  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_pageView);
  if (shouldHide)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v18 = sub_1003C0D9C;
  v19 = v9;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1000CF7B0;
  v17 = &unk_100873E08;
  v10 = _Block_copy(&aBlock);

  [v7 animateWithDuration:4 delay:v10 options:0 animations:0.15 completion:0.0];
  _Block_release(v10);
  if (shouldHide)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v18 = sub_1003C0DF8;
    v19 = v11;
    aBlock = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_1000CF7B0;
    v17 = &unk_100873E58;
    _Block_copy(&aBlock);
    sub_1003C1724(&qword_1009236B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v12 = v5;
    sub_10000C518(&unk_10092F750, &qword_1007A6920);
    sub_1000A8054();
    sub_1007543A4();
    sub_100752284();
    swift_allocObject();
    v13 = sub_100752264();

    sub_1003BFCB4(v13);
  }
}

void sub_1003C0450(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0x3FF0000000000000;
  v5[4] = sub_1003C178C;
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000CF7B0;
  v5[3] = &unk_100873FB0;
  v4 = _Block_copy(v5);

  [v1 animateWithDuration:4 delay:v4 options:0 animations:0.15 completion:0.0];
  _Block_release(v4);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.dismiss()()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    v2 = [v0 navigationController];
    v3 = [v2 visibleViewController];

    if (v3)
    {
      sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
      v4 = v0;
      v5 = sub_100753FC4();

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_1003C1784;
        v8[5] = v6;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_1000CF7B0;
        v8[3] = &unk_100873E80;
        v7 = _Block_copy(v8);

        [v4 dismissViewControllerAnimated:1 completion:v7];
        _Block_release(v7);
      }
    }
  }
}

double sub_1003C070C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1005BA3F0();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall ArcadeSubscribeViewController.showLoading()()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  sub_100750F94();
  v3 = objc_allocWithZone(sub_100750FC4());
  v4 = sub_100750FB4();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController);
  sub_10074B974();

  v7 = *(v1 + v5);
  *(v1 + v5) = v4;
  v8 = v4;

  sub_1003BCF78();
  if ((sub_10074AAA4() & 1) == 0)
  {
    sub_100744AC4();
    sub_100752764();
    sub_100752D34();
    sub_1007449D4();
    sub_1003BF6FC(v9);
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.hideLoading()()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController);
  sub_10074B974();

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  sub_1003BCF78();
}

void ArcadeSubscribeViewController.show(updateError:)(uint64_t a1)
{
  v2 = v1;
  sub_100751094();
  sub_1003C1724(&qword_1009353D0, 255, &type metadata accessor for ArcadeSubscribePresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = sub_100751054();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_overlayViewController);
  sub_10074B974();

  v6 = *(v2 + v4);
  *(v2 + v4) = v3;
  v7 = v3;

  sub_1003BCF78();
}

uint64_t ArcadeSubscribeViewController.perform(action:sender:)(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_objectGraph);
  v7 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000C8CC(v5, &unk_100923960, &qword_1007A6240);
  }

  sub_1003C0FCC(a1, 1, v6, v5, &type metadata accessor for Action, &qword_10093D890, &type metadata accessor for Action);

  return (*(v8 + 8))(v5, v7);
}

id ArcadeSubscribeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_100753064();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1003C0D5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1003C0DA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003C0DC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1003C0E38()
{
  result = qword_1009353D8;
  if (!qword_1009353D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009353D8);
  }

  return result;
}

uint64_t sub_1003C0FCC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v28 = a6;
  v29 = a7;
  v27 = a5;
  v31 = a4;
  v30 = a2;
  v8 = sub_100752314();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752B34();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v18 = sub_10000C518(&qword_100939100, &qword_1007C2810);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v25 - v21;
  v32[3] = v27(0, v20);
  v32[4] = sub_1003C1724(v28, 255, v29, &protocol conformance descriptor for Action);
  v32[0] = a1;
  if (v30)
  {

    sub_1003F2AB4();
    (*(v12 + 16))(v14, v17, v11);
    sub_1007522F4();
    sub_100752724();
    (*(v25 + 8))(v10, v26);
    (*(v12 + 32))(v22, v17, v11);
    (*(v19 + 104))(v22, enum case for ActionDispatcher.MetricsBehavior.fromAction<A>(_:), v18);
  }

  else
  {
    (*(v19 + 104))(v22, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v18);
  }

  sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v23 = sub_1007527E4();

  (*(v19 + 8))(v22, v18);
  sub_10000C620(v32);
  return v23;
}

uint64_t sub_1003C16EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003C1724(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1003C17A4()
{
  sub_10000C518(&unk_100929CA0, &qword_1007A6610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5620;
  *(inited + 32) = NSFontAttributeName;
  v2 = *(v0 + 4);
  v3 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  *(inited + 40) = v2;
  *(inited + 64) = v3;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v4 = *(v0 + 5);
  v5 = sub_100016C60(0, &qword_10092A248, NSParagraphStyle_ptr);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = NSBaselineOffsetAttributeName;
  v6 = v0[6];
  v7 = objc_allocWithZone(NSNumber);
  v8 = NSFontAttributeName;
  v9 = v2;
  v10 = NSParagraphStyleAttributeName;
  v11 = v4;
  v12 = NSBaselineOffsetAttributeName;
  v13 = [v7 initWithDouble:v6];
  *(inited + 144) = sub_100016C60(0, &qword_10092BE20, NSNumber_ptr);
  *(inited + 120) = v13;
  v14 = sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510, &unk_1007A6620);
  swift_arrayDestroy();
  return v14;
}

double sub_1003C192C()
{
  v1 = sub_10074AB44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v42 - v7;
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitle + 8];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel])
    {
    }

    else
    {
      v17 = v0;
      v18 = qword_100921388;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = sub_100750534();
      v20 = sub_10000D0FC(v19, qword_1009817D0);
      v21 = *(v19 - 8);
      (*(v21 + 16))(v8, v20, v19);
      (*(v21 + 56))(v8, 0, 1, v19);
      (*(v2 + 104))(v4, enum case for DirectionalTextAlignment.none(_:), v1);
      v22 = objc_allocWithZone(sub_100745C84());
      v23 = sub_100745C74();
      v0 = v17;
      v24 = *&v17[v12];
      if (v24)
      {
        [v24 removeFromSuperview];
        v25 = *&v17[v12];
      }

      else
      {
        v25 = 0;
      }

      *&v17[v12] = v23;
      v26 = v23;

      v27 = [v17 contentView];
      [v27 addSubview:v26];

      [v17 setNeedsLayout];
    }

    v28 = &v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v29 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    if (v29)
    {
      v44 = v10;
      v30 = *v28;
      v31 = v28[1];
      v32 = v28[2];
      v33 = v28[3];
      v34 = v28[5];
      v35 = v28[6];
      v45 = *v28;
      v46 = v31;
      v47 = v32;
      v48 = v33;
      v49 = v29;
      v50 = v34;
      v51 = v35;
      v36 = *&v0[v12];
      if (v36)
      {
        sub_1003C326C(v30, v31, v32, v33, v29, v34);
        v43 = v36;
        sub_1003C17A4();
        v42 = objc_allocWithZone(NSAttributedString);
        v37 = sub_100753064();

        type metadata accessor for Key(0);
        sub_1003C32AC(&qword_1009276F0, type metadata accessor for Key, &unk_1007A543C);
        isa = sub_100752F34().super.isa;

        v39 = [v42 initWithString:v37 attributes:isa];

        v40 = v43;
        [v43 setAttributedText:v39];
        sub_1003C2DF0(v30, v31, v32, v33, v29, v34);
      }

      else
      {
      }
    }

    else
    {

      v41 = *&v0[v12];
      if (v41)
      {
        [v41 setAttributedText:0];
      }
    }
  }

  else
  {
LABEL_7:
    v13 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v13] = 0;

    [v0 setNeedsLayout];
  }

  return result;
}

void sub_1003C1E14()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView];
    v3 = v1;
    [v2 frame];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v8 = CGRectGetWidth(v23) + -40.0;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v9 = CGRectGetHeight(v24);
    v10 = v3;
    [v10 sizeThatFits:{v8, v9}];
    v12 = v11;
    v14 = v13;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinX = CGRectGetMinX(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MidY = CGRectGetMidY(v26);
    if (v8 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v8;
    }

    if (v9 >= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v9;
    }

    [v10 setFrame:{MinX + 20.0, MidY + v14 * -0.5, v16, v17}];
  }

  v18 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v18)
  {
    v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView];
    v20 = v18;
    [v19 bounds];
    [v20 setFrame:?];
  }
}

double sub_1003C20C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10074FB54();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100741574();
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007497C4();
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100556FE8(a1, a2, a3);
  sub_10074FB64();
  sub_100741C24();
  if (swift_dynamicCastClass())
  {
    v38 = v11;
    v39 = v9;
    v40 = v8;
    v18 = [v4 traitCollection];
    v19 = sub_1007537B4();

    sub_10074FAC4();
    sub_100741544();
    sub_1003C3078(v19 & 1, v17, v14, v42);
    v20 = v43;
    v21 = &v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v22 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v23 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8];
    v24 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16];
    v25 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24];
    v27 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    v26 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40];
    v28 = v42[1];
    *v21 = v42[0];
    *(v21 + 1) = v28;
    *(v21 + 2) = v42[2];
    *(v21 + 6) = v20;
    sub_1003C3204(v42, v41);
    sub_1003C2DF0(v22, v23, v24, v25, v27, v26);
    [v4 setNeedsLayout];
    sub_1003C323C(v42);
    v29 = sub_10074FB84();
    v30 = &v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
    *v30 = v29;
    v30[1] = v31;

    v32 = sub_1003C192C();
    v33 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v33)
    {
      v34 = v33;
      v35 = v38;
      sub_10074FB74();
      v36 = sub_10074FB04();
      (*(v39 + 8))(v35, v40);
      [v34 setTextColor:v36];
    }

    [v4 setNeedsLayout];
  }

  else
  {
  }

  return result;
}

double sub_1003C2400(uint64_t a1, uint64_t a2)
{
  sub_100557E88(a1, a2);
  sub_10074FBB4();
  sub_1003C32AC(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_1007468B4();
  if (v8)
  {
    sub_10074FB64();
    sub_100741C24();
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      sub_100746914();

      v3 = sub_10074B8F4();

      if (v3)
      {
      }

      else
      {

        sub_100741984();

        v4 = sub_10074F374();

        sub_10000C518(&unk_1009231A0, qword_1007A5810);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1007A5CF0;
        *(v5 + 32) = v4;

        v6._rawValue = v5;
        sub_100744224(v6);
      }
    }
  }

  return result;
}

id sub_1003C25F8(uint64_t a1, uint64_t a2)
{
  sub_1005577E0(a1, a2);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v2[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v2[v3] = 0;

  return [v2 setNeedsLayout];
}

double sub_1003C2664()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_10092BBD8, &unk_1007C1E70);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v21[-1] - v4;
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  [v6 setImage:{0, v3}];
  [v6 setBackgroundColor:0];
  sub_10074FB64();
  sub_100741C24();
  if (swift_dynamicCastClass())
  {
    v7 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
    v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v8[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
      v10 = v8;

      sub_100451530();
      v11 = v10;
    }

    else
    {
      type metadata accessor for BrandedAppTodayCardNoArtBackgroundView(0);
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v14 = *&v1[v7];
      v15 = v13;
      if (v14)
      {
        [v14 removeFromSuperview];
        v16 = *&v1[v7];
      }

      else
      {
        v16 = 0;
      }

      *&v1[v7] = v13;
      v11 = v13;

      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension32BaseTodayBrickCollectionViewCell_mainContentView] insertSubview:v11 atIndex:0];
      [v1 setNeedsLayout];

      v10 = 0;
    }

    v17 = v10;

    sub_100741984();
    sub_10074F324();

    v18 = sub_10074F314();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    v19 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_style;
    swift_beginAccess();
    sub_1003C2E30(v5, &v11[v19]);
    swift_endAccess();
    [v11 setNeedsLayout];
    sub_10000C8CC(v5, &qword_10092BBD8, &unk_1007C1E70);
    sub_100741984();

    sub_10074F374();

    v20 = v11;
    type metadata accessor for BrandedAppTodayCardNoArtBackgroundView(0);
    sub_1003C32AC(&qword_1009354E0, type metadata accessor for BrandedAppTodayCardNoArtBackgroundView, &protocol conformance descriptor for NSObject);
    sub_1007544E4();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1007441F4();

    sub_10000C8CC(v21, &unk_1009276E0, &unk_1007A5C70);
  }

  else
  {
  }

  return result;
}

void sub_1003C2A5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
    if (v8)
    {
      v9 = v8;

      v10 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v9[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_image] = a1;
      v11 = a1;

      v7 = v9;
      sub_100451530();
    }
  }
}

void sub_1003C2BAC()
{
  sub_1003C2DF0(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40));

  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
}

uint64_t type metadata accessor for BrandedAppTodayBrickCollectionViewCell(uint64_t a1)
{
  result = qword_1009354D0;
  if (!qword_1009354D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003C2D4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003C2D94(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1003C2DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
  }
}

uint64_t sub_1003C2E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092BBD8, &unk_1007C1E70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C2EA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1003C2EE0()
{
  v0 = sub_1007497C4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 1.5;
  if ((sub_100741514() & 1) == 0 && (sub_1007414C4() & 1) == 0 && (sub_100741504() & 1) == 0)
  {
    sub_1007497A4();
    sub_1003C32AC(&qword_1009354E8, &type metadata accessor for StringCharacteristics, &protocol conformance descriptor for StringCharacteristics);
    v5 = sub_100754324();
    v6 = *(v1 + 8);
    v6(v3, v0);
    if ((v5 & 1) == 0)
    {
      sub_100749794();
      v7 = sub_100754324();
      v6(v3, v0);
      if (v7)
      {
        return 1.5;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v4;
}

double sub_1003C3078@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  if (a1)
  {
    v9 = 48.0;
  }

  else
  {
    v9 = 30.0;
  }

  v10 = 38.0;
  if (a1)
  {
    v10 = 60.0;
    v11 = -12.0;
  }

  else
  {
    v11 = -8.0;
  }

  v12 = [v8 systemFontOfSize:v10 weight:UIFontWeightBold];
  v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v14 = v9 * sub_1003C2EE0();
  [v13 setMinimumLineHeight:v14];
  [v13 setMaximumLineHeight:v14];
  v15 = sub_100741574();
  (*(*(v15 - 8) + 8))(a3, v15);
  v16 = sub_1007497C4();
  (*(*(v16 - 8) + 8))(a2, v16);
  result = 60.0;
  *a4 = xmmword_1007BDA60;
  *(a4 + 16) = xmmword_1007BDA70;
  *(a4 + 32) = v12;
  *(a4 + 40) = v13;
  *(a4 + 48) = v11;
  return result;
}

void sub_1003C326C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    v6 = a5;

    v7 = a6;
  }
}

uint64_t sub_1003C32AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003C32F4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - v8;
  v10 = sub_100747D94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007504F4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v38);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_100745324();
  if (swift_dynamicCast())
  {
    v35 = a2;
    v18 = v37;
    v19 = sub_1007452F4();
    if (v19)
    {
      v34 = v15;
      v20 = *(*(*(v36 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      if (v20 && (v33[4] = v19, v21 = type metadata accessor for VideoView(0), (v22 = swift_dynamicCastClass()) != 0))
      {
        v33[2] = v21;
        v33[3] = v18;
        v23 = qword_100982288;
        v24 = v22;
        swift_beginAccess();
        v25 = *(v11 + 16);
        v33[1] = v24;
        v25(v13, v24 + v23, v10);
        v26 = v20;
        sub_100747CE4();
        (*(v11 + 8))(v13, v10);
        v27 = v34;
        if ((*(v34 + 48))(v9, 1, v14) != 1)
        {
          (*(v27 + 32))(v17, v9, v14);
          sub_100750464();
          sub_10074EC14();
          sub_10074F374();

          sub_1003C61E0(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
          sub_100744204();

          (*(v27 + 8))(v17, v14);
          return;
        }

        sub_10000C8CC(v9, &unk_1009281D0, qword_1007A82B0);
      }

      else
      {
      }
    }

    if (sub_100745304())
    {
      sub_10074F374();
      v28 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_artworkView;
      v29 = v36;
      v30 = *(v36 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_artworkView);
      sub_10074F324();
      sub_100743364();
      [v30 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();

      v31 = *(v29 + v28);
      sub_1007433C4();
      sub_1003C61E0(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v32 = v31;
      sub_100744204();
    }
  }
}

id sub_1003C388C(uint64_t a1, char *a2, uint64_t a3, void *a4, __n128 a5)
{
  v6 = v5;
  v131 = a3;
  v132 = a1;
  v129 = a2;
  v8 = sub_100745374();
  v127 = *(v8 - 8);
  v128 = v8;
  __chkstk_darwin(v8);
  v125 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v126 = &v103 - v11;
  v12 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v12 - 8);
  v122 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v121 = &v103 - v15;
  v16 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v16 - 8);
  v120 = &v103 - v17;
  v18 = sub_100744864();
  __chkstk_darwin(v18 - 8);
  v119 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v118 = &v103 - v21;
  v22 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v22 - 8);
  v117 = &v103 - v23;
  v115 = sub_100744894();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100747D94();
  v123 = *(v25 - 8);
  v124 = v25;
  __chkstk_darwin(v25);
  v130 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v27 - 8);
  v113 = &v103 - v28;
  v112 = sub_10074C3E4();
  v107 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v103 - v30;
  v31 = sub_10000C518(&unk_1009259B0, &unk_1007B0620);
  __chkstk_darwin(v31 - 8);
  v106 = &v103 - v32;
  v105 = sub_10074D734();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v34 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v35 - 8);
  v104 = &v103 - v36;
  v37 = sub_1007452A4();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v103 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100749A94();
  v42 = *(v41 - 8);
  *&v43 = __chkstk_darwin(v41).n128_u64[0];
  v45 = &v103 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = [a4 snapshotPageTraitEnvironment];
  *&v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_pageTraits] = v46;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v6 setNeedsLayout];
  swift_unknownObjectRelease();
  sub_100749A34();
  sub_1003C61E0(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v47 = sub_100754324();
  (*(v42 + 8))(v45, v41);
  sub_1007452B4();
  v48 = sub_100745294();
  (*(v38 + 8))(v40, v37);
  v49 = v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden];
  v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden] = ((v47 | v48) & 1) == 0;
  if (((v47 | v48) & 1) == v49)
  {
    if ((v47 | v48))
    {
      [v6 insertSubview:*&v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_backgroundEffectView] aboveSubview:*&v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer]];
    }

    else
    {
      [*&v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_backgroundEffectView] removeFromSuperview];
    }
  }

  v50 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_backgroundEffectView];
  v51 = v50[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsTopEffect];
  v50[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsTopEffect] = v47 & 1;
  if ((v47 & 1) != v51)
  {
    v52 = 0.0;
    if (v47)
    {
      *&v52 = 1.0;
    }

    [*&v50[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_topGradient] setOpacity:v52];
    [v50 setNeedsDisplay];
  }

  v53 = sub_1007452C4();
  v54 = v131;
  if (v53)
  {
    v55 = v53;
    v56 = sub_1007452E4();
    if (v56)
    {
      v57 = v56;
      v58 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_offerButton];
      v59 = v103;
      v60 = v105;
      (*(v103 + 104))(v34, enum case for OfferButtonPresenterViewAlignment.center(_:), v105);
      (*(v59 + 56))(v106, 1, 1, v60);
      sub_1003C61E0(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);

      v61 = v104;
      sub_10074A9C4();
      v62 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
      (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
      v63 = v107;
      v64 = v112;
      (*(v107 + 104))(v109, enum case for OfferButtonSubtitlePosition.below(_:), v112);
      (*(v63 + 56))(v113, 1, 1, v64);
      sub_1003C61E0(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
      v65 = v108;
      sub_10074A9C4();
      sub_10015DE40(v57, v55, 0, v61, v65, v54, 0, 0);

      (*(v110 + 8))(v65, v111);
      sub_10000C8CC(v61, &unk_100925540, &qword_1007A8140);
      [v58 setHidden:0];

      goto LABEL_14;
    }
  }

  [*&v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_offerButton] setHidden:1];
LABEL_14:
  sub_1003C49D0(v132, v54);
  if (sub_1007452F4())
  {
    (*(v114 + 104))(v116, enum case for VideoFillMode.scaleAspectFill(_:), v115);
    sub_10074EC14();
    sub_10074F2A4();
    v66 = v117;
    sub_100750504();

    v67 = sub_1007504F4();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v68 = v120;
    sub_10074EC24();
    v69 = sub_100741264();
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    v70 = v121;
    sub_10074EBE4();
    v71 = v122;
    sub_10074EBD4();
    v72 = type metadata accessor for VideoView(0);
    sub_1003C61E0(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v131 = v72;
    v73 = sub_1007464A4();
    sub_10000C8CC(v71, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v70, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v68, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(&v133, &unk_1009276E0, &unk_1007A5C70);
    v74 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer];
    v75 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
    v76 = *(v74 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    if (v73)
    {
      v77 = v73;
      v78 = [v77 superview];
      if (v78)
      {
        v79 = v78;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v80 = v76;
        v129 = v6;
        v81 = v80;
        v82 = sub_100753FC4();

        v6 = v129;
        if (v82)
        {
          [v77 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v87 = *&v76[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v76[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v73;
    v88 = v73;
    sub_10057A514(v87);

    if (*(*(v74 + v75) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
    {
      v89 = swift_dynamicCastClass();
      if (v89)
      {
        *(v89 + qword_10093CB38 + 8) = &off_1008690D8;
        swift_unknownObjectWeakAssign();
      }
    }

    (*(v123 + 8))(v130, v124);
  }

  else if (sub_100745304())
  {

    v83 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_artworkView];
    v84 = *(*&v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    v85 = *(v84 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    *(v84 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = v83;
    v86 = v83;
    sub_10057A514(v85);

    sub_1005791C8();
  }

  sub_1007452D4();
  if (v90)
  {
    v91 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsView];
    v92 = sub_100753064();

    [v91 setText:v92];

    sub_100745314();
    v93 = v126;
    sub_100745384();

    v94 = OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsTextAlignment;
    swift_beginAccess();
    v96 = v127;
    v95 = v128;
    (*(v127 + 24))(&v6[v94], v93, v128);
    swift_endAccess();
    v97 = v125;
    (*(v96 + 16))(v125, &v6[v94], v95);
    v98 = sub_100745364();
    v99 = *(v96 + 8);
    v99(v97, v95);
    [v91 setTextAlignment:v98];
    v99(v93, v95);
  }

  v100 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_tapGestureRecognizer];
  v101 = sub_1007452F4();
  if (v101)
  {
  }

  [v100 setEnabled:v101 != 0];
  return [v6 setNeedsLayout];
}

uint64_t sub_1003C49D0(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v3 = sub_10000C518(&qword_100935130, qword_1007BDC20);
  __chkstk_darwin(v3 - 8);
  v78 = &v67 - v4;
  v5 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v74 = &v67 - v6;
  v72 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v72);
  v71 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v70 = &v67 - v9;
  __chkstk_darwin(v10);
  v73 = (&v67 - v11);
  __chkstk_darwin(v12);
  v14 = (&v67 - v13);
  v15 = sub_100745394();
  v68 = *(v15 - 8);
  v69 = v15;
  __chkstk_darwin(v15);
  v67 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007452A4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v67 - v22;
  __chkstk_darwin(v24);
  v26 = &v67 - v25;
  __chkstk_darwin(v27);
  v29 = &v67 - v28;
  sub_1007452B4();
  v30 = sub_100745264();
  v31 = *(v18 + 8);
  v31(v29, v17);
  v75 = a1;
  if (!v30)
  {
    v30 = [objc_opt_self() clearColor];
  }

  v32 = *(v80 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_mediaViewContainer);
  v33 = type metadata accessor for MediaView();
  v81.receiver = v32;
  v81.super_class = v33;
  objc_msgSendSuper2(&v81, "setBackgroundColor:", v30);
  [*(*&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) setBackgroundColor:v30];
  v34 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView];
  if (v34)
  {
    v35 = v34;
    [v35 setBackgroundColor:v30];
  }

  v36 = *(v80 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_backgroundEffectView);
  sub_1007452B4();
  v37 = sub_100745294();
  v31(v26, v17);
  v38 = v36[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsBottomEffect];
  v36[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_wantsBottomEffect] = v37 & 1;
  if ((v37 & 1) != v38)
  {
    v39 = 0.0;
    if (v37)
    {
      v39 = 1.0;
    }

    [*&v36[OBJC_IVAR____TtC22SubscribePageExtension28BreakoutBackgroundEffectView_blurView] setAlpha:v39];
    [v36 setNeedsDisplay];
  }

  v40 = *(v80 + OBJC_IVAR____TtC22SubscribePageExtension18UpsellBreakoutView_buttonDetailsView);
  sub_1007452B4();
  v41 = sub_100745274();
  v31(v23, v17);
  if (!v41)
  {
    sub_100745314();
    v42 = v67;
    sub_1007453A4();

    v41 = sub_10016D5C8();
    (*(v68 + 8))(v42, v69);
  }

  v43 = v72;
  [v40 setTextColor:v41];

  if (qword_100921BB0 != -1)
  {
    swift_once();
  }

  v44 = sub_10000D0FC(v43, qword_100982BF0);
  sub_100121090(v44, v14, v45);
  sub_1007452B4();
  v46 = sub_100745244();
  v31(v20, v17);

  *v14 = v46;
  sub_1007452B4();
  v47 = sub_100745254();
  v31(v20, v17);

  v14[1] = v47;
  sub_1007452B4();
  v48 = sub_100745274();
  v31(v20, v17);

  v14[2] = v48;
  sub_1007452B4();
  v49 = sub_100745284();
  v31(v20, v17);

  v14[3] = v49;
  if (qword_100921BA8 != -1)
  {
    swift_once();
  }

  v50 = sub_10000D0FC(v43, qword_100982BD8);
  v51 = v73;
  sub_100121090(v50, v73, v52);
  sub_1007452B4();
  v53 = sub_100745244();
  v31(v20, v17);

  *v51 = v53;
  sub_1007452B4();
  v54 = sub_100745254();
  v31(v20, v17);

  v51[1] = v54;
  sub_1007452B4();
  v55 = sub_100745274();
  v31(v20, v17);

  v51[2] = v55;
  sub_1007452B4();
  v56 = sub_100745284();
  v31(v20, v17);

  v51[3] = v56;
  sub_100121090(v14, v70, v57);
  sub_100121090(v51, v71, v58);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  v59 = v74;
  sub_100743484();
  v60 = sub_100745314();
  v62 = v76;
  v61 = v77;
  v63 = v78;
  (*(v76 + 16))(v78, v59, v77);
  (*(v62 + 56))(v63, 0, 1, v61);
  sub_10013C000(v60, v63, v79);

  sub_10000C8CC(v63, &qword_100935130, qword_1007BDC20);
  v64.n128_f64[0] = (*(v62 + 8))(v59, v61);
  sub_10024144C(v51, v64);
  return sub_10024144C(v14, v65);
}

id sub_1003C5388()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003C54C0(void *a1, uint64_t a2)
{
  v5 = [a1 snapshotPageTraitEnvironment];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_63C99537259CB4BBA1C2F973322BF86736UpsellBreakoutSizingTraitEnvironment_pageTraits] = v5;
  v6 = [a1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_100753934();
  if (v6)
  {
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007A7210;
    *(v8 + 32) = [a1 traitCollection];
    v9 = objc_opt_self();
    *(v8 + 40) = [v9 traitCollectionWithPreferredContentSizeCategory:a2];
    sub_100016C60(0, &qword_1009239F8, UITraitCollection_ptr);
    isa = sub_100753294().super.isa;

    v11 = [v9 traitCollectionWithTraitsFromCollections:isa];
  }

  else
  {
    v11 = [a1 traitCollection];
  }

  *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_63C99537259CB4BBA1C2F973322BF86736UpsellBreakoutSizingTraitEnvironment_traitCollection] = v11;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v13, "init");
}

double sub_1003C5678(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100748F54();
  __chkstk_darwin(v5 - 8);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100748F74();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074CD14();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin(v9);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100754724();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(type metadata accessor for UpsellBreakoutSizingTraitEnvironment());
  v18 = UIContentSizeCategoryExtraExtraExtraLarge;
  v19 = swift_unknownObjectRetain();
  v20 = sub_1003C54C0(v19, v18);
  swift_unknownObjectRelease();

  v21 = qword_100920338;
  v56 = *&v20[OBJC_IVAR____TtC22SubscribePageExtensionP33_63C99537259CB4BBA1C2F973322BF86736UpsellBreakoutSizingTraitEnvironment_traitCollection];
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  sub_10000D0FC(v22, qword_10097DC98);
  v61[0] = v20;
  v23 = v20;
  sub_100743464();

  type metadata accessor for BreakoutDetailsView(0);
  v24 = sub_100745314();
  v25 = v23;
  sub_10013C5D8(v24, v16, v25, v61);

  sub_1001A41D4(v61, &v58);
  v26 = swift_allocObject();
  sub_100219FC4(&v58, (v26 + 16));
  v27 = sub_100750F34();
  swift_allocObject();
  v28 = sub_100750EF4();
  if (sub_1007452C4() && (, sub_1007452E4()))
  {
    v47 = v16;
    v29 = v11;

    if (qword_100920330 != -1)
    {
      swift_once();
    }

    v30 = sub_100750B04();
    sub_10000D0FC(v30, qword_10097DC80);
    v31 = v25;
    sub_1007502D4();
    sub_100750564();

    (*(v48 + 8))(v13, v29);
    swift_allocObject();
    v32 = sub_100750F14();

    v16 = v47;
  }

  else
  {
    v32 = 0;
  }

  sub_1007452D4();
  if (v33)
  {
    sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
    if (qword_1009214E8 != -1)
    {
      swift_once();
    }

    v34 = sub_100750534();
    sub_10000D0FC(v34, qword_100981BF0);
    sub_100753C14();
    v35 = sub_10074F3F4();
    *(&v59 + 1) = v35;
    v60 = sub_1003C61E0(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v36 = sub_10000D134(&v58);
    (*(*(v35 - 8) + 104))(v36, enum case for Feature.measurement_with_labelplaceholder(_:), v35);
    sub_10074FC74();
    sub_10000C620(&v58);
    v37 = v49;
    sub_10074CD04();
    sub_10074CCE4();
    (*(v50 + 8))(v37, v51);
  }

  else
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
  }

  v38 = v25;
  sub_100144E2C(v38, v52, a1);

  swift_allocObject();
  v39 = sub_100750F14();
  v40 = &protocol witness table for LayoutViewPlaceholder;
  v57[18] = v27;
  v57[19] = &protocol witness table for LayoutViewPlaceholder;
  v57[14] = &protocol witness table for LayoutViewPlaceholder;
  v57[15] = v39;
  v57[13] = v27;
  v57[10] = v28;
  if (!v32)
  {
    v27 = 0;
    v40 = 0;
    v57[6] = 0;
    v57[7] = 0;
  }

  v57[5] = v32;
  v57[8] = v27;
  v57[9] = v40;
  sub_1003C5E4C(&v58, v57);

  v41 = v53;
  sub_100748F64();
  v42 = v38;
  sub_100748F24();
  v44 = v43;

  (*(v54 + 8))(v41, v55);
  sub_10000C8CC(&v58, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C620(v61);
  sub_10024144C(v16, v45);
  return v44;
}

uint64_t sub_1003C5E14()
{
  sub_10000C620((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003C5E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092BC30, &qword_1007AD5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1003C5EBC(double a1, uint64_t a2, void *a3)
{
  v5 = sub_100748F54();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100144E2C(a3, v8, a1);
  sub_100748F74();
  sub_1003C61E0(&qword_100935580, &type metadata accessor for UpsellBreakoutLayout, &protocol conformance descriptor for UpsellBreakoutLayout);
  sub_100750D34();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension:1.0];
  v13 = [v11 absoluteDimension:v10];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v16 = [objc_opt_self() itemWithLayoutSize:v15];
  v17 = objc_opt_self();
  v18 = [v11 fractionalWidthDimension:1.0];
  v19 = [v11 absoluteDimension:v10];
  v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A5CF0;
  *(v21 + 32) = v16;
  sub_100016C60(0, &qword_100923478, NSCollectionLayoutItem_ptr);
  v22 = v16;
  isa = sub_100753294().super.isa;

  v24 = [v17 horizontalGroupWithLayoutSize:v20 subitems:isa];

  return v24;
}

uint64_t sub_1003C61E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003C6228@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v61 = sub_100747144();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&qword_100928A88, qword_1007B1CF0);
  __chkstk_darwin(v3 - 8);
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v8 = sub_10000C518(&unk_100940600, &qword_1007AC320);
  __chkstk_darwin(v8 - 8);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v52 = &v48 - v11;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v50 = &v48 - v16;
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  v20 = sub_10000C518(&unk_100928A90, qword_1007AC480);
  __chkstk_darwin(v20 - 8);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v48 - v24;
  v26 = sub_1007439C4();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v25, 1, 1, v26);
  v28 = sub_100747134();
  v55 = *(v28 - 8);
  v56 = v28;
  (*(v55 + 56))(v7, 1, 1);
  v51 = v25;
  sub_100016B4C(v25, v22, &unk_100928A90, qword_1007AC480);
  if ((*(v27 + 48))(v22, 1, v26) == 1)
  {
    sub_10000C8CC(v22, &unk_100928A90, qword_1007AC480);
    v29 = 0;
  }

  else
  {
    v29 = sub_100743964();
    (*(v27 + 8))(v22, v26);
  }

  v30 = v19;
  sub_1003AFADC(v29, v19);

  if (qword_100920AE8 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v12, qword_10097FF70);
  v32 = v52;
  (*(v13 + 56))(v52, 1, 1, v12);
  v33 = v50;
  sub_10015027C(v30, v50);
  v34 = v53;
  sub_10015027C(v31, v53);
  v48 = v30;
  v35 = v54;
  sub_100016B4C(v32, v54, &unk_100940600, &qword_1007AC320);
  v36 = v7;
  v37 = v7;
  v38 = v58;
  sub_100016B4C(v37, v58, &qword_100928A88, qword_1007B1CF0);
  v40 = v59;
  v39 = v60;
  v41 = v61;
  (*(v59 + 104))(v60, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v61);
  sub_10000D198();
  v49 = sub_100753DB4();
  sub_10000C8CC(v36, &qword_100928A88, qword_1007B1CF0);
  sub_10000C8CC(v32, &unk_100940600, &qword_1007AC320);
  sub_1003B6E50(v48);
  sub_10000C8CC(v51, &unk_100928A90, qword_1007AC480);
  v42 = type metadata accessor for TitleHeaderView.Style(0);
  v43 = v42[8];
  v44 = v57;
  sub_1001502E0(v33, v57);
  sub_1001502E0(v34, v44 + v42[5]);
  sub_100150344(v35, v44 + v42[6]);
  *(v44 + v42[7]) = 0;
  *(v44 + v43) = 1;
  *(v44 + v42[9]) = 0;
  *(v44 + v42[14]) = 0x4030000000000000;
  *(v44 + v42[12]) = 0;
  *(v44 + v42[13]) = v49;
  (*(v40 + 32))(v44 + v42[11], v39, v41);
  v46 = v55;
  v45 = v56;
  if ((*(v55 + 48))(v38, 1, v56) != 1)
  {
    return (*(v46 + 32))(v44 + v42[10], v38, v45);
  }

  sub_10000C8CC(v38, &qword_100928A88, qword_1007B1CF0);
  return (*(v46 + 104))(v44 + v42[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v45);
}

void *sub_1003C6908(uint64_t a1, int *a2)
{
  v30 = a2;
  v3 = sub_10074E984();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v11 + 8))(v13, v10);
  (*(v4 + 104))(v6, enum case for Shelf.ContentType.todayCard(_:), v3);
  sub_1003C808C(&qword_100926DD0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_100753274();
  sub_100753274();
  if (v32 == v31)
  {
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  else
  {
    v15 = sub_100754754();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);

    if ((v15 & 1) == 0)
    {
      return sub_10049CD00(a1, v30);
    }
  }

  v17 = COERCE_DOUBLE(sub_1003C7578(a1, v30));
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
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007A5CF0;
  *(v28 + 32) = v27;

  return v28;
}

double sub_1003C6D2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v65 = a4;
  v76 = a1;
  v77 = a2;
  v78 = a5;
  v6 = sub_100747C14();
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  __chkstk_darwin(v6);
  v72 = v8;
  v73 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1007457B4();
  v70 = *(v9 - 8);
  v71 = v9;
  __chkstk_darwin(v9);
  v69 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v68 = &v63[-v12];
  v13 = sub_10074E984();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v63[-v18];
  v20 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v63[-v24];
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v66 = *(v21 + 8);
  v66(v25, v20);
  (*(v14 + 104))(v16, enum case for Shelf.ContentType.todayCard(_:), v13);
  sub_1003C808C(&qword_100926DD0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_100753274();
  sub_100753274();
  if (v80 == v79)
  {
    v26 = *(v14 + 8);
    v26(v16, v13);
    v26(v19, v13);

LABEL_4:
    v29 = v67;
    sub_100747C04();
    swift_getKeyPath();
    v30 = v68;
    sub_1007525B4();

    v66(v29, v20);
    v32 = v69;
    v31 = v70;
    v33 = v71;
    (*(v70 + 104))(v69, enum case for ShelfBackground.interactive(_:), v71);
    sub_1003C808C(&qword_100940610, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
    v34 = sub_100753014();
    v35 = *(v31 + 8);
    v35(v32, v33);
    v35(v30, v33);
    v28 = v34 ^ 1;
    goto LABEL_5;
  }

  v64 = sub_100754754();
  v27 = *(v14 + 8);
  v27(v16, v13);
  v27(v19, v13);

  v28 = 0;
  if (v64)
  {
    goto LABEL_4;
  }

LABEL_5:
  v36 = sub_100753094();
  v39 = v76;
  v38 = v77;
  if (v36 != v76 || v37 != v77)
  {
    v41 = sub_100754754();

    if ((v41 & v28 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v42 = sub_10000C518(&qword_1009358B8, &qword_1007BDD08);
    v43 = v78;
    v78[3] = v42;
    v43[4] = sub_100150440(&unk_1009358C0, &qword_1009358B8, &qword_1007BDD08);
    v78 = sub_10000D134(v43);
    v44 = sub_100753094();
    v76 = v45;
    v77 = v44;
    type metadata accessor for ShelfHeaderView(0);
    sub_1007539D4();
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
    sub_10074D744();
    return result;
  }

  if (v28)
  {
    goto LABEL_12;
  }

LABEL_8:
  type metadata accessor for TodayDebugSectionBackgroundView();
  if (sub_1007539C4() == v39 && v40 == v38)
  {

LABEL_14:
    v54 = sub_10000C518(&qword_1009358A8, &qword_1007BDD00);
    v55 = v78;
    v78[3] = v54;
    v55[4] = sub_100150440(&qword_1009358B0, &qword_1009358A8, &qword_1007BDD00);
    v78 = sub_10000D134(v55);
    sub_1007539C4();
    sub_1007539D4();
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

  v53 = sub_100754754();

  if (v53)
  {
    goto LABEL_14;
  }

  return sub_1004989E4(v39, v38, a3, v65, v78);
}

uint64_t sub_1003C7578(uint64_t a1, int *a2)
{
  v37 = a2;
  v3 = sub_10074F704();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074E984();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v42;
  if (v42)
  {
    v33 = a1;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v17(v13, v10);
    v20 = v38;
    v19 = v39;
    (*(v39 + 104))(v38, enum case for Shelf.ContentType.todayCard(_:), v5);
    sub_1003C808C(&qword_100926DD0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
    sub_100753274();
    sub_100753274();
    if (v42 == v40 && v43 == v41)
    {
      v21 = *(v19 + 8);
      v21(v20, v5);
      v21(v9, v5);

LABEL_7:
      v25 = v33;
      v26 = v34;
      sub_100747BC4();
      sub_10074FC24();
      sub_10074F674();
      v28 = v27;
      v30 = v29;
      (*(v35 + 8))(v26, v36);
      type metadata accessor for ShelfHeaderView(0);
      v31 = sub_100060B24(v18, v25, v28, v30);

      return *&v31;
    }

    v23 = sub_100754754();
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

  return sub_100499B68(v22, v37);
}

void *sub_1003C79F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10074E984();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  v13 = sub_10049D038();
  v22 = v13;
  if (sub_1003641F0())
  {
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v10 + 8))(v12, v9);
    (*(v3 + 104))(v5, enum case for Shelf.ContentType.todayCard(_:), v2);
    sub_1003C808C(&qword_100926DD0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
    sub_100753274();
    sub_100753274();
    if (v21[3] == v21[1] && v21[4] == v21[2])
    {
      v14 = *(v3 + 8);
      v14(v5, v2);
      v14(v8, v2);
    }

    else
    {
      v15 = sub_100754754();
      v16 = *(v3 + 8);
      v16(v5, v2);
      v16(v8, v2);

      if ((v15 & 1) == 0)
      {
        return v13;
      }
    }

    v17 = objc_opt_self();
    type metadata accessor for TodayDebugSectionBackgroundView();
    sub_1007539C4();
    v18 = sub_100753064();

    v19 = [v17 backgroundDecorationItemWithElementKind:v18];

    sub_100753284();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    return v22;
  }

  return v13;
}

uint64_t sub_1003C7DC4()
{
  v1 = sub_100747C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1003C7EB0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003C7EE8()
{
  v1 = sub_100747C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

double sub_1003C7FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100747C14() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10049BAFC(a1, a2, a3, a4, v11, v4 + v10, v12);
}

uint64_t sub_1003C808C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1003C8124()
{
  v0 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v0 - 8);
  v2 = &v79 - v1;
  v89 = sub_100754724();
  v3 = *(v89 - 8);
  __chkstk_darwin(v89);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007504F4();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074F6E4();
  v85 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = sub_10074F704();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  sub_100744484();
  sub_1003C90D4(&qword_1009358E0, &type metadata accessor for FramedArtwork, &protocol conformance descriptor for FramedMedia);
  sub_1007468B4();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v81 = v3;
  v82 = v2;

  v19 = sub_1007435E4();
  swift_getKeyPath();
  sub_100746914();

  v20 = (v13 + 8);
  if (v19)
  {
    sub_10074F674();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    sub_10074F5C4();
    v24 = *v20;
    (*v20)(v18, v12);
    v80 = v24;
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5E4();
    v24(v15, v12);
    v25 = v85;
    (*(v85 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5D4();
    v26 = v80;
    v80(v15, v12);
    (*(v25 + 16))(v84, v11, v7);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    (*(v25 + 8))(v11, v7);
    sub_10074F674();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = sub_100744474();
  v29 = v89;
  if (v28)
  {
    sub_10074F2A4();
    v30 = v86;
    sub_100750504();
    sub_1007504C4();
    v32 = v31;
    (*(v87 + 8))(v30, v88);
    v33 = sub_1007435E4();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = sub_100743604();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  v37 = 0.0;
  sub_100753BA4();
  sub_100743614();
  v38 = &qword_100921000;
  if (v39)
  {
    if (qword_1009213F8 != -1)
    {
      swift_once();
    }

    v40 = sub_100750534();
    sub_10000D0FC(v40, qword_100981920);
    swift_getKeyPath();
    sub_100746914();

    v41 = sub_10074F3F4();
    v92 = v41;
    v93 = sub_1003C90D4(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v42 = sub_10000D134(aBlock);
    (*(*(v41 - 8) + 104))(v42, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
    sub_10074FC74();
    sub_10000C620(aBlock);
    sub_10074CCB4();
    swift_unknownObjectRelease();

    v43 = v83;
    if (qword_100921F08 != -1)
    {
      swift_once();
    }

    v44 = sub_100750B04();
    sub_10000D0FC(v44, qword_1009833D8);
    swift_getKeyPath();
    sub_100746914();

    sub_1007502D4();
    sub_100750564();
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = *(v81 + 8);
    v47(v43, v29);
    if (qword_100921F18 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v44, qword_100983408);
    swift_getKeyPath();
    sub_100746914();

    sub_1007502D4();
    sub_100750564();
    v49 = v48;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v50 = v46 + v49;
    if (qword_100921F10 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v44, qword_1009833F0);
    swift_getKeyPath();
    sub_100746914();

    sub_1007502D4();
    sub_100750564();
    v52 = v51;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v37 = v50 + v52;
    v38 = &qword_100921000;
  }

  v53 = sub_100743604();

  swift_getKeyPath();
  sub_100746914();

  v54 = v95;
  v55 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v53];
  v56 = [v53 length];
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = v54;
  *(v57 + 32) = v55;
  *(v57 + 40) = 1;
  v58 = swift_allocObject();
  v58[2] = sub_100047814;
  v58[3] = v57;
  v93 = sub_1000B18A8;
  v94 = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  v92 = &unk_1008741F0;
  v59 = _Block_copy(aBlock);
  v60 = v54;
  v61 = v55;

  [v53 enumerateAttributesInRange:0 options:v56 usingBlock:{0x100000, v59}];

  _Block_release(v59);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
    goto LABEL_37;
  }

  v62 = qword_1009213F0;
  v58 = v61;
  if (v62 != -1)
  {
LABEL_37:
    swift_once();
  }

  v63 = sub_100750534();
  v64 = sub_10000D0FC(v63, qword_100981908);
  v65 = *(v63 - 8);
  v66 = v82;
  (*(v65 + 16))(v82, v64, v63);
  (*(v65 + 56))(v66, 0, 1, v63);
  swift_getKeyPath();
  sub_100746914();

  v67 = sub_10074F3F4();
  v92 = v67;
  v93 = sub_1003C90D4(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v68 = sub_10000D134(aBlock);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_10074FC74();
  sub_10000C620(aBlock);
  sub_10074CCA4();
  v70 = v69;

  swift_unknownObjectRelease();
  sub_10006A144(v66);
  if (qword_100921F08 != -1)
  {
    swift_once();
  }

  v71 = sub_100750B04();
  sub_10000D0FC(v71, qword_1009833D8);
  swift_getKeyPath();
  sub_100746914();

  sub_100750584();
  v73 = v72;
  swift_unknownObjectRelease();
  v74 = v70 + v73;
  if (v38[482] != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v71, qword_1009833F0);
  swift_getKeyPath();
  sub_100746914();

  sub_100750554();
  v76 = v75;
  swift_unknownObjectRelease();

  v77 = v74 + v76;
  if (v37 > v74 + v76)
  {
    v77 = v37;
  }

  return v23 + v77;
}

uint64_t sub_1003C9060()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_1003C90B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003C90D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1003C9308(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PurchasesCollectionViewDataSource();
  return objc_msgSendSuper2(&v3, "dealloc");
}

BOOL sub_1003C943C(uint64_t a1, uint64_t (*a2)(void, __n128), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = sub_10074E984();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v20 - v15;
  a2(0, v14);
  sub_1003C9984(a3, a4, a5);
  sub_100745084();
  (*(v10 + 32))(v12, v16, v9);
  v17 = (*(v10 + 88))(v12, v9);
  if (v17 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v18 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v17 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v18 = type metadata accessor for InformationRibbonCollectionViewCell(0);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
    v18 = 0;
  }

  return v18 != 0;
}

id sub_1003C9600(uint64_t a1, void *a2)
{
  v4 = sub_10074E984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100741784();
  sub_10074B704();
  sub_1003C9984(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  sub_100745084();
  v8 = sub_10074E964();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 72);
  if (*(v11 + 16) && (, v12 = sub_1003861D0(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v12);

    v16 = sub_10074E964();
    v18 = v17;
    swift_beginAccess();
    isa = sub_1003DD60C(v16, v18);
    swift_endAccess();
  }

  else
  {

    sub_10074E964();
    v20 = sub_100753064();

    isa = sub_100741704().super.isa;
    v15 = [a2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

uint64_t sub_1003C986C(uint64_t a1)
{
  sub_10074B704();
  sub_1003C9984(&qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter);
  if (sub_1007450A4() <= a1 || (sub_100745054() & 1) != 0)
  {
    return 0;
  }

  v3 = sub_100745094();
  if (sub_1003C943C(a1, &type metadata accessor for PurchasesContentPresenter, &qword_100925348, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for PurchasesContentPresenter))
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003C9984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1003C9A18()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100748514();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100748534();
  sub_1003C9E24(&qword_100934228, &type metadata accessor for ProductReviewAction, &protocol conformance descriptor for ProductReviewAction);
  sub_1007468B4();
  if (v30[1])
  {
    sub_100748524();
    v8 = (*(v5 + 88))(v7, v4);
    if (v8 == enum case for ProductReviewAction.ReviewAction.tapToRate(_:))
    {
      (*(v5 + 96))(v7, v4);
      swift_getKeyPath();
      sub_100746914();

      sub_10074F674();
      v10 = v9;
      v12 = v11;
      (*(v1 + 8))(v3, v0);
      v13 = sub_10007DC04();
      sub_100320820(v13, v10, v12);
      v15 = v14;
      swift_unknownObjectRelease();

LABEL_13:

      return v15;
    }

    if (v8 == enum case for ProductReviewAction.ReviewAction.writeAReview(_:))
    {
      (*(v5 + 96))(v7, v4);
      v30[0] = type metadata accessor for ProductReviewActionsView(0);
      v16 = sub_100748554();
      v17 = sub_100748544();
      swift_getKeyPath();
      sub_100746914();

      sub_10074F674();
      v19 = v18;
      v21 = v20;
      (*(v1 + 8))(v3, v0);
      sub_10007DC04();
      if (v16)
      {

        v22 = sub_10074ECB4();
        v24 = v23;

        if (v17)
        {
LABEL_7:

          v25 = sub_10074ECB4();
          v27 = v26;

LABEL_12:
          sub_100494984(v22, v24, v25, v27, v30[0], v19, v21);
          v15 = v28;

          swift_unknownObjectRelease();

          goto LABEL_13;
        }
      }

      else
      {
        v22 = 0;
        v24 = 0;
        if (v17)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v27 = 0;
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
  }

  return 0.0;
}

uint64_t sub_1003C9E24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003C9E70(void *a1, void *a2, __n128 a3)
{
  v35 = a2;
  v5 = sub_10074E5E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100934210, &qword_1007BB588);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = sub_10000C518(&qword_100934218, &qword_1007BB590);
  __chkstk_darwin(v11 - 8);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  v19 = *(v3 + 32);
  v36 = v3;
  *(v3 + 32) = a1;
  a1;

  if (a1)
  {
    sub_10074E604();
    v20 = *(v6 + 56);
    v20(v18, 0, 1, v5);
  }

  else
  {
    v20 = *(v6 + 56);
    v20(v18, 1, 1, v5);
  }

  (*(v6 + 104))(v15, enum case for Uber.Style.inline(_:), v5);
  v20(v15, 0, 1, v5);
  v21 = *(v8 + 48);
  sub_1003CB908(v18, v10);
  sub_1003CB908(v15, &v10[v21]);
  v22 = *(v6 + 48);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10000C8CC(v15, &qword_100934218, &qword_1007BB590);
    sub_10000C8CC(v18, &qword_100934218, &qword_1007BB590);
    if (v22(&v10[v21], 1, v5) == 1)
    {
      sub_10000C8CC(v10, &qword_100934218, &qword_1007BB590);
      goto LABEL_13;
    }
  }

  else
  {
    v24 = v34;
    sub_1003CB908(v10, v34);
    if (v22(&v10[v21], 1, v5) != 1)
    {
      v28 = v33;
      v29.n128_f64[0] = (*(v6 + 32))(v33, &v10[v21], v5);
      sub_1003CB978(v29);
      v30 = v24;
      v31 = sub_100753014();
      v32 = *(v6 + 8);
      v32(v28, v5);
      sub_10000C8CC(v15, &qword_100934218, &qword_1007BB590);
      sub_10000C8CC(v18, &qword_100934218, &qword_1007BB590);
      v32(v30, v5);
      sub_10000C8CC(v10, &qword_100934218, &qword_1007BB590);
      if (v31)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_10000C8CC(v15, &qword_100934218, &qword_1007BB590);
    sub_10000C8CC(v18, &qword_100934218, &qword_1007BB590);
    (*(v6 + 8))(v24, v5);
  }

  sub_10000C8CC(v10, &qword_100934210, &qword_1007BB588);
LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    sub_1003CA354();
    (*((swift_isaMask & *v26) + 0x1A8))(v27, 0);
  }

LABEL_13:
  sub_1003CA534(v35, v23);
}

void sub_1003CA354()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];

    if (v3)
    {
      v4 = [v3 navigationBar];

      [v4 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v17.origin.x = v6;
      v17.origin.y = v8;
      v17.size.width = v10;
      v17.size.height = v12;
      CGRectGetMaxY(v17);
    }
  }

  v13 = *(v0 + 32);
  if (v13)
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = v13;
    sub_1006408D0(v14, v16);
  }
}

void sub_1003CA470()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 48);

    v2(v4, 1.0, 0.0);
    sub_1000164A8(v2, v3);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong navigationController];

    if (v7)
    {
      v8 = [v7 navigationBar];

      [v8 _setTitleOpacity:1.0];
    }
  }

  *(v1 + 88) = 0;
}

void sub_1003CA534(void *a1, __n128 a2)
{
  v4 = sub_10074E5E4();
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin(v4);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_100934210, &qword_1007BB588);
  __chkstk_darwin(v7);
  v9 = &v76 - v8;
  v10 = sub_10000C518(&qword_100934218, &qword_1007BB590);
  __chkstk_darwin(v10 - 8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v76 - v14;
  __chkstk_darwin(v16);
  v18 = &v76 - v17;
  if (!*(v2 + 32))
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  v21 = [Strong collectionView];

  if (!v21)
  {
    return;
  }

  sub_1003CB9D0();
  v22 = a1;
  v81 = v7;
  v23 = v15;
  v24 = v18;
  v25 = v2;
  v26 = v12;
  v27 = v6;
  v28 = v9;
  v29 = v22;
  v30 = sub_100753FC4();

  v80 = v29;
  v31 = v28;
  v32 = v27;
  v33 = v26;
  v34 = v25;
  v35 = v24;
  v36 = v23;
  v37 = v81;
  if ((v30 & 1) == 0 || *(v34 + 88) != 1)
  {
    return;
  }

  [v80 contentOffset];
  v40 = v39;
  v41 = *(v34 + 32);
  if (v41)
  {
    v42 = swift_unknownObjectWeakLoadStrong();
    v43 = v41;
    sub_1006408D0(v42, v44);
    v46 = v45;

    v38.n128_f64[0] = v40 / v46;
    if (v40 / v46 >= 1.0)
    {
      v38.n128_u64[0] = 1.0;
    }
  }

  else
  {
    v38.n128_f64[0] = v39 / 0.0;
    v47 = 1.0;
    if (v39 / 0.0 >= 1.0)
    {
      goto LABEL_13;
    }
  }

  if (v38.n128_f64[0] < 0.0)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = v38.n128_f64[0];
  }

LABEL_13:
  v48 = *(v34 + 40);
  if (v48)
  {
    v49 = *(v34 + 48);

    v48(v50, v47, 0.0);
    sub_1000164A8(v48, v49);
  }

  v51 = *(v34 + 72);
  v52 = v83;
  if (!v51)
  {
    goto LABEL_26;
  }

  v53 = *(v34 + 80);
  v54 = *(v34 + 32);
  v79 = *(v34 + 72);
  v77 = v32;
  v78 = v53;
  if (v54)
  {
    sub_10001B5AC(v51, v53);

    sub_10074E604();

    v55 = v82;
    v56 = *(v82 + 56);
    v56(v35, 0, 1, v52);
  }

  else
  {
    v55 = v82;
    v57 = *(v82 + 56);
    v76 = v33;
    v56 = v57;
    v57(v35, 1, 1, v83);
    v33 = v76;
  }

  (*(v55 + 104))(v36, enum case for Uber.Style.inline(_:), v52);
  v56(v36, 0, 1, v52);
  v58 = v52;
  v59 = *(v37 + 48);
  sub_1003CB908(v35, v31);
  sub_1003CB908(v36, v31 + v59);
  v60 = *(v55 + 48);
  if (v60(v31, 1, v58) == 1)
  {
    sub_10000C8CC(v36, &qword_100934218, &qword_1007BB590);
    sub_10000C8CC(v35, &qword_100934218, &qword_1007BB590);
    if (v60(v31 + v59, 1, v58) == 1)
    {
      sub_10000C8CC(v31, &qword_100934218, &qword_1007BB590);
      v62 = v79;
LABEL_28:
      if (v47 >= 0.5)
      {
        v68 = 0.35;
      }

      else
      {
        v68 = 0.2;
      }

      v61.n128_u64[0] = 1.0;
      if (v47 < 0.5)
      {
        v61.n128_f64[0] = 0.0;
      }

      v69 = v78;
      v70 = v62;
      v71 = v62(v61, v68);
      v71.n128_f64[0] = v47;
      sub_1003CB120(v80, *&v68, 0, v71);
      sub_1000164A8(v70, v69);
      goto LABEL_34;
    }
  }

  else
  {
    sub_1003CB908(v31, v33);
    if (v60(v31 + v59, 1, v58) != 1)
    {
      v63 = v82;
      v64 = v31 + v59;
      v65 = v77;
      v66.n128_f64[0] = (*(v82 + 32))(v77, v64, v58);
      sub_1003CB978(v66);
      LODWORD(v81) = sub_100753014();
      v67 = *(v63 + 8);
      v67(v65, v58);
      sub_10000C8CC(v36, &qword_100934218, &qword_1007BB590);
      sub_10000C8CC(v35, &qword_100934218, &qword_1007BB590);
      v67(v33, v58);
      sub_10000C8CC(v31, &qword_100934218, &qword_1007BB590);
      v62 = v79;
      if (v81)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_10000C8CC(v36, &qword_100934218, &qword_1007BB590);
    sub_10000C8CC(v35, &qword_100934218, &qword_1007BB590);
    (*(v82 + 8))(v33, v58);
  }

  sub_10000C8CC(v31, &qword_100934210, &qword_1007BB588);
  v62 = v79;
LABEL_25:
  sub_1000164A8(v62, v78);
LABEL_26:
  v38.n128_f64[0] = v47;
  sub_1003CB120(v80, 0, 1, v38);
LABEL_34:
  v72 = swift_unknownObjectWeakLoadStrong();
  if (v72)
  {
    v73 = v72;
    v74 = [v72 navigationController];

    if (v74)
    {
      v75 = [v74 navigationBar];

      [v75 _setTitleOpacity:v47];
    }
  }
}

uint64_t sub_1003CAC40(__n128 a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = sub_10074E5E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100934210, &qword_1007BB588);
  __chkstk_darwin(v14);
  v16 = v37 - v15;
  v17 = sub_10000C518(&qword_100934218, &qword_1007BB590);
  __chkstk_darwin(v17 - 8);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v37 - v21;
  __chkstk_darwin(v23);
  v25 = v37 - v24;
  if (a4 > a2)
  {
    goto LABEL_2;
  }

  if (fabs(a6) <= 0.4)
  {
    v37[1] = v6;
    if (*(v6 + 32))
    {

      sub_10074E604();

      v27 = *(v11 + 56);
      v27(v25, 0, 1, v10);
    }

    else
    {
      v27 = *(v11 + 56);
      v27(v37 - v24, 1, 1, v10);
    }

    (*(v11 + 104))(v22, enum case for Uber.Style.inline(_:), v10);
    v27(v22, 0, 1, v10);
    v28 = *(v14 + 48);
    sub_1003CB908(v25, v16);
    sub_1003CB908(v22, &v16[v28]);
    v29 = *(v11 + 48);
    if (v29(v16, 1, v10) == 1)
    {
      sub_10000C8CC(v22, &qword_100934218, &qword_1007BB590);
      sub_10000C8CC(v25, &qword_100934218, &qword_1007BB590);
      if (v29(&v16[v28], 1, v10) == 1)
      {
        sub_10000C8CC(v16, &qword_100934218, &qword_1007BB590);
        v26 = 0;
        return v26 & 1;
      }

      goto LABEL_12;
    }

    sub_1003CB908(v16, v19);
    if (v29(&v16[v28], 1, v10) == 1)
    {
      sub_10000C8CC(v22, &qword_100934218, &qword_1007BB590);
      sub_10000C8CC(v25, &qword_100934218, &qword_1007BB590);
      (*(v11 + 8))(v19, v10);
LABEL_12:
      sub_10000C8CC(v16, &qword_100934210, &qword_1007BB588);
      goto LABEL_13;
    }

    v34.n128_f64[0] = (*(v11 + 32))(v13, &v16[v28], v10);
    sub_1003CB978(v34);
    v35 = sub_100753014();
    v36 = *(v11 + 8);
    v36(v13, v10);
    sub_10000C8CC(v22, &qword_100934218, &qword_1007BB590);
    sub_10000C8CC(v25, &qword_100934218, &qword_1007BB590);
    v36(v19, v10);
    sub_10000C8CC(v16, &qword_100934218, &qword_1007BB590);
    if (v35)
    {
LABEL_2:
      v26 = 0;
      return v26 & 1;
    }
  }

LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = [Strong traitCollection];

    LOBYTE(v31) = sub_100753804();
    v26 = v31 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

void sub_1003CB120(void *a1, uint64_t a2, char a3, __n128 a4)
{
  v7 = a4.n128_f64[0];
  v9 = sub_10074E5E4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100934210, &qword_1007BB588);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_10000C518(&qword_100934218, &qword_1007BB590);
  __chkstk_darwin(v15 - 8);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v43 - v22;
  if (a3)
  {
    [a1 _verticalVelocity];
    v25 = v24;
  }

  else
  {
    v25 = *&a2;
  }

  v26 = *(v4 + 32);
  v46 = v4;
  if (v26)
  {

    sub_10074E604();

    v27 = *(v10 + 56);
    v27(v23, 0, 1, v9);
  }

  else
  {
    v27 = *(v10 + 56);
    v27(v23, 1, 1, v9);
  }

  (*(v10 + 104))(v19, enum case for Uber.Style.inline(_:), v9);
  v27(v19, 0, 1, v9);
  v28 = *(v12 + 48);
  sub_1003CB908(v23, v14);
  sub_1003CB908(v19, &v14[v28]);
  v29 = *(v10 + 48);
  if (v29(v14, 1, v9) != 1)
  {
    v32 = v45;
    sub_1003CB908(v14, v45);
    if (v29(&v14[v28], 1, v9) != 1)
    {
      v35 = &v14[v28];
      v36 = v44;
      v37.n128_f64[0] = (*(v10 + 32))(v44, v35, v9);
      sub_1003CB978(v37);
      v38 = v32;
      v39 = sub_100753014();
      v40 = *(v10 + 8);
      v40(v36, v9);
      sub_10000C8CC(v19, &qword_100934218, &qword_1007BB590);
      sub_10000C8CC(v23, &qword_100934218, &qword_1007BB590);
      v40(v38, v9);
      sub_10000C8CC(v14, &qword_100934218, &qword_1007BB590);
      v31 = v46;
      if (v39)
      {
        goto LABEL_16;
      }

LABEL_13:
      v33 = *(v31 + 40);
      if (!v33)
      {
        return;
      }

      v34 = 48;
      goto LABEL_18;
    }

    sub_10000C8CC(v19, &qword_100934218, &qword_1007BB590);
    sub_10000C8CC(v23, &qword_100934218, &qword_1007BB590);
    (*(v10 + 8))(v32, v9);
    v31 = v46;
LABEL_12:
    sub_10000C8CC(v14, &qword_100934210, &qword_1007BB588);
    goto LABEL_13;
  }

  sub_10000C8CC(v19, &qword_100934218, &qword_1007BB590);
  sub_10000C8CC(v23, &qword_100934218, &qword_1007BB590);
  v30 = v29(&v14[v28], 1, v9);
  v31 = v46;
  if (v30 != 1)
  {
    goto LABEL_12;
  }

  sub_10000C8CC(v14, &qword_100934218, &qword_1007BB590);
LABEL_16:
  v33 = *(v31 + 56);
  if (!v33)
  {
    return;
  }

  v34 = 64;
LABEL_18:
  v41 = *(v31 + v34);

  v33(v42, v7, v25);
  sub_1000164A8(v33, v41);
}

void sub_1003CB604(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  if (*(v4 + 32))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong collectionView];

      if (v12)
      {
        sub_1003CB9D0();
        v13 = a1;
        v14 = sub_100753FC4();

        if (v14)
        {
          [v13 contentSize];
          v16 = v15;
          v18 = v17;
          [v13 frame];
          v19.n128_u64[0] = v16;
          if ((sub_1003CAC40(v19, v18, v20, v21, a3, a4) & 1) != 0 && *(a2 + 8) > 0.0)
          {
            [v13 contentInset];
            v23 = v22;
            [v13 _systemContentInset];
            v25 = v24;
            v26 = swift_unknownObjectWeakLoadStrong();
            v27 = 0.0;
            MaxY = 0.0;
            if (v26)
            {
              v29 = v26;
              v30 = [v26 navigationController];

              if (v30)
              {
                v31 = [v30 navigationBar];

                [v31 frame];
                v33 = v32;
                v35 = v34;
                v37 = v36;
                v39 = v38;

                v53.origin.x = v33;
                v53.origin.y = v35;
                v53.size.width = v37;
                v53.size.height = v39;
                MaxY = CGRectGetMaxY(v53);
              }
            }

            v40 = *(v5 + 32);
            if (v40)
            {
              v41 = swift_unknownObjectWeakLoadStrong();
              v42 = v40;
              sub_1006408D0(v41, v43);
              v45 = v44;

              v46 = *(v5 + 32);
              if (v46)
              {
                v27 = *(v46 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset);
              }
            }

            else
            {
              v45 = 0.0;
            }

            v47 = v45 + v27 - v25;
            v48 = *(a2 + 8);
            if (v47 >= 0.0)
            {
              if (v48 > v47)
              {
                return;
              }
            }

            else
            {
              if (v48 > 0.0)
              {
                return;
              }

              v47 = 0.0;
            }

            if (a4 >= 0.0)
            {
              v49 = 0.07;
            }

            else
            {
              v49 = 0.5;
            }

            v50 = v47 * v49;
            v51 = v47 - MaxY;
            if (v48 <= v50)
            {
              v52 = -(v23 + v25);
            }

            else
            {
              v52 = v51;
            }

            *(a2 + 8) = v52;
          }
        }
      }
    }
  }
}

uint64_t sub_1003CB884()
{
  sub_10000C4F0(v0 + 16);

  sub_1000164A8(*(v0 + 40), *(v0 + 48));
  sub_1000164A8(*(v0 + 56), *(v0 + 64));
  sub_1000164A8(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_1003CB908(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100934218, &qword_1007BB590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003CB978(__n128 a1)
{
  result = qword_100934220;
  if (!qword_100934220)
  {
    sub_10074E5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934220);
  }

  return result;
}

unint64_t sub_1003CB9D0()
{
  result = qword_100935A20;
  if (!qword_100935A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100935A20);
  }

  return result;
}

uint64_t sub_1003CBA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 88) = 1;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return a2;
}

char *sub_1003CBA88(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21.receiver = v4;
  v21.super_class = type metadata accessor for ScreenshotCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView;
  v14 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v12;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 addSubview:*&v12[v13]];

  return v18;
}

id sub_1003CBD04()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ScreenshotCollectionViewCell(0);
  objc_msgSendSuper2(&v8, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  sub_100743384(v9, v4);

  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = 0;

  v5 = sub_10028864C();
  v6 = &v1[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  return [v1 setNeedsLayout];
}

id sub_1003CBE14()
{
  v1 = v0;
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotCollectionViewCell(0);
  v37.receiver = v1;
  v37.super_class = v6;
  objc_msgSendSuper2(&v37, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    return [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    sub_100750504();
    v18 = [v1 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_1007504C4();
    v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
    [v25 setFrame:{v20, v22, v24, v26}];
    v27 = [v1 contentView];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v38.origin.x = v29;
    v38.origin.y = v31;
    v38.size.width = v33;
    v38.size.height = v35;
    MidX = CGRectGetMidX(v38);
    v39.origin.x = v29;
    v39.origin.y = v31;
    v39.size.width = v33;
    v39.size.height = v35;
    [v25 setCenter:{MidX, CGRectGetMidY(v39)}];
    return (*(v3 + 8))(v5, v2);
  }
}

id sub_1003CC0D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotCollectionViewCell(uint64_t a1)
{
  result = qword_100935A50;
  if (!qword_100935A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003CC1A8(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

CGFloat sub_1003CC270()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration;
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *(v1 + 80);
  type metadata accessor for BorderedScreenshotView(0);
  sub_1007477B4();
  v4 = CGRectGetWidth(v6) - (v2 + v3);
  sub_1007477B4();
  CGRectGetHeight(v7);
  return v4;
}

void sub_1003CC310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013ABB0(a1, a2, a3, WitnessTable);
}

void sub_1003CC37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013AE68(a1, a2, a3, WitnessTable);
}

unint64_t sub_1003CC3E8(uint64_t a1)
{
  result = sub_1003CC410();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003CC410()
{
  result = qword_100935A60;
  if (!qword_100935A60)
  {
    type metadata accessor for ScreenshotCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935A60);
  }

  return result;
}

uint64_t sub_1003CC490(void *a1)
{
  v1 = [a1 navigationItem];
  v2 = [v1 leftBarButtonItems];
  v18 = v1;
  if (v2)
  {
    v3 = v2;
    sub_1003777E0();
    v4 = sub_1007532A4();

    if (v4 >> 62)
    {
LABEL_17:
      v5 = sub_100754664();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_4:
        v6 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = sub_100754574();
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

          if ([v7 isSystemItem])
          {
            v10 = [v8 systemItem];

            if (v10 == 24)
            {
LABEL_33:
              i = 1;
LABEL_35:
              v1 = v18;
              goto LABEL_36;
            }
          }

          else
          {
          }

          ++v6;
        }

        while (v9 != v5);
      }
    }

    v1 = v18;
  }

  i = [v1 rightBarButtonItems];
  if (i)
  {
    sub_1003777E0();
    v12 = sub_1007532A4();

    if (v12 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
    {
      v13 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = sub_100754574();
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v14 = *(v12 + 8 * v13 + 32);
        }

        v15 = v14;
        v1 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if ([v14 isSystemItem])
        {
          v16 = [v15 systemItem];

          if (v16 == 24)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        ++v13;
        if (v1 == i)
        {
          i = 0;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

LABEL_36:
  }

  return i;
}

void sub_1003CC71C(void *a1, void *a2)
{
  if ((sub_1003CC490(a1) & 1) == 0)
  {
    v4 = [a1 navigationItem];
    v5 = [v4 rightBarButtonItems];
    if (v5)
    {
      v6 = v5;
      sub_1003777E0();
      v7 = sub_1007532A4();
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    sub_1003777E0();
    v8 = a2;
    v10.value.super.super.isa = a2;
    v10.is_nil = 0;
    sub_100753634(UIBarButtonSystemItemClose, v10, v11);
    sub_100753284();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    isa = sub_100753294().super.isa;

    [v4 setRightBarButtonItems:isa];
  }
}

double sub_1003CC86C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for InfiniteScrollFooterView();
  if (sub_1007539C4() == a1 && v6 == a2)
  {

    goto LABEL_11;
  }

  v8 = sub_100754754();

  if (v8)
  {
LABEL_11:

    sub_1007539D4();
    *(a3 + 24) = sub_10000C518(&qword_100930928, &unk_1007B76D8);
    *(a3 + 32) = sub_10002DDC8(&unk_100930930, &qword_100930928, &unk_1007B76D8, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_10000D134(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_100754754() & 1) != 0 || a1 == 0xD000000000000010 && 0x800000010076E340 == a2 || (sub_100754754() & 1) != 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(a3 + 24) = sub_10000C518(&qword_100930910, &qword_1007B76D0);
    *(a3 + 32) = sub_10002DDC8(&unk_100930918, &qword_100930910, &qword_1007B76D0, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_10000D134(a3);
    sub_100016C60(0, &qword_10092DB20, UICollectionReusableView_ptr);
    swift_bridgeObjectRetain_n();
LABEL_12:
    sub_10074D744();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1003CCBBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1007457B4();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v31 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_100747C14();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    return sub_10000C8CC(v14, &qword_100942730, &unk_1007B3460);
  }

  v20 = Strong;
  v29 = v6;
  v30 = v8;
  v28 = a1;
  sub_10000C518(&qword_1009360A8, &qword_1007BE180);
  sub_10002DDC8(&qword_1009360B0, &qword_1009360A8, &qword_1007BE180, &unk_1007B7520);
  sub_10074DA04();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10000C8CC(v14, &qword_100942730, &unk_1007B3460);
  }

  (*(v16 + 32))(v18, v14, v15);
  sub_100747C04();
  swift_getKeyPath();
  v21 = v30;
  sub_1007525B4();

  (*(v31 + 8))(v11, v9);
  v22 = v32;
  v23 = v29;
  if ((*(v32 + 88))(v21, v29) == enum case for ShelfBackground.color(_:))
  {
    (*(v22 + 96))(v21, v23);
    v24 = *v21;
    v25 = *(sub_10000C518(&unk_100930940, qword_1007A9000) + 48);
    v26 = sub_100748E34();
    (*(*(v26 - 8) + 8))(v21 + v25, v26);
    [v28 setBackgroundColor:v24];

    return (*(v16 + 8))(v18, v15);
  }

  else
  {
    (*(v16 + 8))(v18, v15);
    return (*(v22 + 8))(v21, v23);
  }
}

void sub_1003CD030(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1007457B4();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v42 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - v12;
  v14 = sub_100747C14();
  v43 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&qword_1009262D0, &unk_1007B7720);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v37 = a1;
    v23 = qword_100930688;
    swift_beginAccess();
    v24 = *&v22[v23];
    if (!v24)
    {

      return;
    }

    v25 = v24;

    sub_1007518F4();
    v26 = sub_100751744();
    (*(v18 + 8))(v20, v17);
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      if (__OFSUB__(v26, 1))
      {
        __break(1u);
        return;
      }

      v28 = v27;
      sub_10000C518(&qword_1009360A8, &qword_1007BE180);
      sub_10002DDC8(&qword_1009360B0, &qword_1009360A8, &qword_1007BE180, &unk_1007B7520);
      sub_10074DA04();

      v29 = v43;
      if ((*(v43 + 48))(v13, 1, v14) != 1)
      {
        (*(v29 + 32))(v16, v13, v14);
        sub_100747C04();
        swift_getKeyPath();
        v30 = v42;
        v31 = v39;
        sub_1007525B4();

        (*(v38 + 8))(v10, v31);
        v33 = v40;
        v32 = v41;
        if ((*(v40 + 88))(v30, v41) == enum case for ShelfBackground.color(_:))
        {
          (*(v33 + 96))(v30, v32);
          v34 = *v30;
          v35 = *(sub_10000C518(&unk_100930940, qword_1007A9000) + 48);
          v36 = sub_100748E34();
          (*(*(v36 - 8) + 8))(v30 + v35, v36);
          [v37 setBackgroundColor:v34];

          (*(v29 + 8))(v16, v14);
        }

        else
        {
          (*(v29 + 8))(v16, v14);
          (*(v33 + 8))(v30, v32);
        }

        return;
      }
    }

    else
    {
      (*(v43 + 56))(v13, 1, 1, v14);
    }

    sub_10000C8CC(v13, &qword_100942730, &unk_1007B3460);
  }
}

uint64_t sub_1003CD680(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100752404();
  __chkstk_darwin(v11 - 8);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100752E44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007417F4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v78 = v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v77 - v22;
  v24 = sub_10000C518(&unk_100923C00, qword_1007AB3D0);
  __chkstk_darwin(v24 - 8);
  v82 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v81 = v77 - v27;
  __chkstk_darwin(v28);
  v80 = v77 - v29;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v33 = v77 - v32;
  v95.receiver = v5;
  v95.super_class = ObjectType;
  v87 = ObjectType;
  objc_msgSendSuper2(&v95, "frame", v31);
  IsEmpty = CGRectIsEmpty(v98);
  v88 = v5;
  v89 = v19;
  v85 = v14;
  v84 = v15;
  v83 = v17;
  if (IsEmpty || (v94.receiver = v5, v94.super_class = v87, objc_msgSendSuper2(&v94, "frame"), v36 == a3) && v35 == a4)
  {
    v37 = v80;
    (*(v19 + 56))(v80, 1, 1, v18);
    goto LABEL_14;
  }

  v38 = [v5 indexPathsForVisibleItems];
  v39 = sub_1007532A4();

  *&v92 = v39;

  sub_1003D43C0(&v92);

  v14 = v92;
  v17 = *(v92 + 16);
  if (!v17)
  {
LABEL_12:

    v37 = v80;
    (*(v89 + 56))(v80, 1, 1, v18);
    v5 = v88;
LABEL_13:
    v14 = v85;
    v15 = v84;
    v33 = v77[1];
    v17 = v83;
LABEL_14:
    v79 = v18;
    sub_100066578(v37, v33, &unk_100923C00, qword_1007AB3D0);
    if (qword_100921ED8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v5 = 0;
  v86 = v92 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
  v33 = (v89 + 8);
  v40 = v88;
  while (v5 < *(v14 + 16))
  {
    v15 = v18;
    (*(v89 + 16))(v23, v86 + *(v89 + 72) * v5, v18);
    isa = sub_100741704().super.isa;
    v42 = [v40 cellForItemAtIndexPath:isa];

    if (v42)
    {
      [v40 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      [v42 frame];
      v100.origin.x = v51;
      v100.origin.y = v52;
      v100.size.width = v53;
      v100.size.height = v54;
      v99.origin.x = v44;
      v99.origin.y = v46;
      v99.size.width = v48;
      v99.size.height = v50;
      v55 = CGRectContainsRect(v99, v100);

      if (v55)
      {

        v56 = v89;
        v37 = v80;
        v18 = v15;
        (*(v89 + 32))(v80, v23, v15);
        (*(v56 + 56))(v37, 0, 1, v15);
        v5 = v40;
        goto LABEL_13;
      }
    }

    ++v5;
    v18 = v15;
    (*v33)(v23, v15);
    if (v17 == v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_15:
  v57 = sub_10000D0FC(v14, qword_100983300);
  (*(v15 + 16))(v17, v57, v14);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007AB1A0;
  sub_1007523A4();
  type metadata accessor for CGSize(0);
  v59 = v58;
  *(&v93 + 1) = v58;
  *&v92 = a3;
  *(&v92 + 1) = a4;
  sub_100752424();
  sub_10000C8CC(&v92, &unk_100923520, &qword_1007A5A70);
  sub_1007523A4();
  v91.receiver = v5;
  v91.super_class = v87;
  objc_msgSendSuper2(&v91, "frame");
  *(&v93 + 1) = v59;
  *&v92 = v60;
  *(&v92 + 1) = v61;
  sub_100752424();
  sub_10000C8CC(&v92, &unk_100923520, &qword_1007A5A70);
  sub_1007523F4();
  v96._countAndFlagsBits = 0x6E696C6C6F726373;
  v96._object = 0xED0000206F742067;
  sub_1007523E4(v96);
  v62 = v33;
  v63 = v33;
  v64 = v81;
  sub_100016B4C(v63, v81, &unk_100923C00, qword_1007AB3D0);
  v65 = v89;
  v66 = *(v89 + 48);
  v67 = v79;
  if (v66(v64, 1, v79) == 1)
  {
    sub_10000C8CC(v64, &unk_100923C00, qword_1007AB3D0);
    v92 = 0u;
    v93 = 0u;
  }

  else
  {
    *(&v93 + 1) = v67;
    v68 = sub_10000D134(&v92);
    (*(v65 + 32))(v68, v64, v67);
  }

  sub_1007523C4();
  sub_10000C8CC(&v92, &unk_100923520, &qword_1007A5A70);
  v97._countAndFlagsBits = 46;
  v97._object = 0xE100000000000000;
  sub_1007523E4(v97);
  sub_100752414();
  v69 = v85;
  v70 = v83;
  sub_100752CE4();

  (*(v84 + 8))(v70, v69);
  v71 = v88;
  v90.receiver = v88;
  v90.super_class = v87;
  objc_msgSendSuper2(&v90, "setFrame:", a1, a2, a3, a4);
  v72 = v82;
  sub_100016B4C(v62, v82, &unk_100923C00, qword_1007AB3D0);
  if (v66(v72, 1, v67) == 1)
  {
    sub_10000C8CC(v62, &unk_100923C00, qword_1007AB3D0);
  }

  else
  {
    v73 = v89;
    v74 = v78;
    (*(v89 + 32))(v78, v72, v67);
    [v71 layoutIfNeeded];
    v75 = sub_100741704().super.isa;
    [v71 scrollToItemAtIndexPath:v75 atScrollPosition:1 animated:0];

    (*(v73 + 8))(v74, v67);
    v72 = v62;
  }

  return sub_10000C8CC(v72, &unk_100923C00, qword_1007AB3D0);
}

id sub_1003CE0D0()
{
  ObjectType = swift_getObjectType();
  if (qword_100921ED8 != -1)
  {
    swift_once();
  }

  v2 = sub_100752E44();
  sub_10000D0FC(v2, qword_100983300);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v5[0] = ObjectType;
  sub_100752424();
  sub_10000C8CC(v5, &unk_100923520, &qword_1007A5A70);
  MetatypeMetadata = &type metadata for String;
  strcpy(v5, "reloadData()");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  sub_100752424();
  sub_10000C8CC(v5, &unk_100923520, &qword_1007A5A70);
  sub_100752CE4();

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "reloadData");
}

void sub_1003CE3F0(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryAccessibilityMedium;
  v4 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((sub_100753964() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (sub_100753954())
  {
    v5 = sub_100753964();

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v8 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((sub_100753964() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (sub_100753954())
  {
    sub_100753964();
  }
}

char *sub_1003CE560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  *(v2 + qword_100935A68) = 0;
  *(v2 + qword_100980168) = 0;
  *(v2 + qword_100935A70) = 0;
  sub_100747DE4();
  v6 = qword_100935A80;
  v7 = sub_100741454();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = qword_100935A88;
  v9 = sub_1007416E4();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + qword_100935A98) = 0;
  v10 = v3 + qword_100935AA0;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v3 + qword_100935AA8) = 0;
  sub_10074D4D4();
  sub_1007526E4();
  *(v3 + qword_100935A90) = v17;

  v11 = sub_100469AD4(a1, a2);
  v12 = *&v11[qword_10097EE38];

  sub_100749AD4();

  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007A6580;
  *(v13 + 32) = sub_100751544();
  *(v13 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v13 + 48) = sub_1007519E4();
  *(v13 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753704();
  swift_unknownObjectRelease();

  if (sub_1003641A8())
  {

LABEL_4:
    type metadata accessor for TodayDebugViews();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v15 + 71) = 0;
    *(v15 + 56) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 24) = 0u;
    swift_unknownObjectWeakAssign();
    *&v11[qword_100935AA8] = v15;

    return v11;
  }

  v14 = sub_1003641CC();

  if (v14)
  {
    goto LABEL_4;
  }

  return v11;
}

id sub_1003CE850()
{
  v1 = qword_100935A98;
  v2 = *(v0 + qword_100935A98);
  if (v2)
  {
    v3 = *(v0 + qword_100935A98);
  }

  else
  {
    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"didLongPressTitleWithGestureRecognizer:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1003CE8D4()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  v2 = sub_10074F3E4();
  v25[3] = v2;
  v25[4] = sub_1003DA3B4(&qword_100926D40, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v3 = sub_10000D134(v25);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v2);
  LOBYTE(v2) = sub_10074FC74();
  sub_10000C620(v25);
  if ((v2 & 1) == 0)
  {
    v4 = [v1 view];
    if (!v4)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    goto LABEL_16;
  }

  *(v8 + OBJC_IVAR____TtC22SubscribePageExtensionP33_D5EB93F8F29FA420E99B1898AD0B2EE640InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  [v1 setClearsSelectionOnViewWillAppear:0];
  v9 = [v1 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 _setEdgesAllowingScrollAccessoriesExtendedToBoundingPath:14];
  }

  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 setDelaysContentTouches:0];
  }

  if ((byte_10093E688 & 1) == 0)
  {
    v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v13 setMinimumLineHeight:13.0];
    [v13 setMaximumLineHeight:13.0];
    sub_10000C518(&unk_100929CA0, &qword_1007A6610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A6580;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v15 = sub_100016C60(0, &qword_10093F2D0, NSMutableParagraphStyle_ptr);
    *(inited + 40) = v13;
    *(inited + 64) = v15;
    *(inited + 72) = NSBaselineOffsetAttributeName;
    v16 = objc_allocWithZone(NSNumber);
    v17 = NSParagraphStyleAttributeName;
    v18 = v13;
    v19 = NSBaselineOffsetAttributeName;
    v20 = [v16 initWithDouble:2.0];
    *(inited + 104) = sub_100016C60(0, &qword_10092BE20, NSNumber_ptr);
    *(inited + 80) = v20;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_10000C518(&unk_100923510, &unk_1007A6620);
    swift_arrayDestroy();
    sub_100016C60(0, &qword_10093EF30, NSString_ptr);
    v21 = sub_100753FE4();
    type metadata accessor for Key(0);
    sub_1003DA3B4(&qword_1009276F0, type metadata accessor for Key, &unk_1007A543C);
    isa = sub_100752F34().super.isa;

    [v21 boundingRectWithSize:1 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308}];

    v23 = [objc_allocWithZone(NSTextStorage) init];
    byte_10093E688 = 1;
  }

  if (*&v1[qword_100935AA8])
  {

    sub_1004BA870(v24);
  }
}

void sub_1003CED3C(void *a1)
{
  v1 = a1;
  sub_1003CE8D4();
}

uint64_t sub_1003CED84(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10074D4C4();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong layer];
    CATransform3DMakeScale(&v13, 1.0, 1.0, 1.0);
    [v11 setTransform:&v13];

    swift_unknownObjectWeakAssign();
  }

  (*(v5 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v4);
  sub_10074D484();
  (*(v5 + 8))(v8, v4);
  return sub_1003D09D8();
}

void sub_1003CEF40(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1003CED84(a3);
}

uint64_t sub_1003CEF94()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10074D4C4();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "as_viewWillBecomeFullyVisible", v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong layer];
    CATransform3DMakeScale(&v11, 1.0, 1.0, 1.0);
    [v9 setTransform:&v11];

    swift_unknownObjectWeakAssign();
  }

  (*(v3 + 104))(v6, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v2);
  sub_10074D484();
  return (*(v3 + 8))(v6, v2);
}

void sub_1003CF13C(void *a1)
{
  v1 = a1;
  sub_1003CEF94();
}

id sub_1003CF1AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&unk_10092B0D0, qword_1007A99B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_100753CD4();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  if (*&v0[qword_100935AA8])
  {

    sub_1004BB190();
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = sub_100753CB4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_100753CC4();
  sub_10000C8CC(v5, &unk_10092B0D0, qword_1007A99B0);
  sub_100753D14();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_100935AA0];
  v19 = *&v1[qword_100935AA0];
  v20 = v1[qword_100935AA0 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_1003DA3B4(&qword_1009360C0, type metadata accessor for TodayDiffablePageViewController, &unk_1007B7520);
      return sub_10074DA54();
    }

LABEL_10:
    __break(1u);
  }

  return result;
}

void sub_1003CF4BC(void *a1)
{
  v1 = a1;
  sub_1003CF1AC();
}

void sub_1003CF518(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
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

void sub_1003CF660(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
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

void sub_1003CF79C(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10074E984();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10000C518(&qword_10092C380, &unk_1007B0E90);
  __chkstk_darwin(v87);
  v13 = &v66 - v12;
  v75 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v14 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v66 - v15;
  v16 = sub_10000C518(&unk_100923200, &unk_1007A5C50);
  __chkstk_darwin(v16 - 8);
  v96 = &v66 - v17;
  v18 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  __chkstk_darwin(v24);
  v93 = &v66 - v25;
  v26 = sub_1007417F4();
  v89 = *(v26 - 8);
  v90 = v26;
  __chkstk_darwin(v26);
  v78 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v95 = &v66 - v29;
  v103.receiver = v4;
  v103.super_class = ObjectType;
  v88 = ObjectType;
  objc_msgSendSuper2(&v103, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v4 isViewLoaded])
  {
    v30 = [v4 collectionView];
    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = v30;
    aBlock = 0x3FF0000000000000;
    v98 = 0;
    v99 = 0;
    v100 = 0x3FF0000000000000;
    v101 = 0;
    v102 = 0;
    [v30 setTransform:&aBlock];

    v32 = [v4 collectionView];
    if (v32)
    {
      v72 = v20;
      v33 = v32;
      v34 = [v32 indexPathsForSelectedItems];

      if (v34)
      {
        v86 = v4;
        v67 = a1;
        v35 = v90;
        v36 = sub_1007532A4();

        v85 = *(v36 + 16);
        if (!v85)
        {
          v77 = _swiftEmptyArrayStorage;
LABEL_26:

          if (v77[2])
          {
            v62 = v77;
            v63 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v64 = swift_allocObject();
            *(v64 + 16) = v63;
            *(v64 + 24) = v62;
            v101 = sub_1003DA3AC;
            v102 = v64;
            aBlock = _NSConcreteStackBlock;
            v98 = 1107296256;
            v99 = sub_1003ED3AC;
            v100 = &unk_100874390;
            v65 = _Block_copy(&aBlock);

            [v67 animateAlongsideTransition:0 completion:v65];
            _Block_release(v65);
          }

          else
          {
          }

          return;
        }

        v37 = 0;
        v83 = v89 + 16;
        v71 = (v14 + 8);
        v82 = (v10 + 56);
        v81 = enum case for Shelf.ContentType.todayCard(_:);
        v80 = (v10 + 104);
        v68 = (v10 + 32);
        v70 = (v10 + 8);
        v73 = (v89 + 8);
        v76 = (v89 + 32);
        v77 = _swiftEmptyArrayStorage;
        v38 = v96;
        v94 = v23;
        v84 = v36;
        v79 = (v10 + 48);
        while (1)
        {
          if (v37 >= *(v36 + 16))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

          v39 = v9;
          v40 = v13;
          v41 = v39;
          v42 = (*(v89 + 80) + 32) & ~*(v89 + 80);
          v91 = *(v89 + 72);
          v92 = v42;
          (*(v89 + 16))(v95, v36 + v42 + v91 * v37, v35);
          sub_1003DA3B4(&qword_1009360C0, type metadata accessor for TodayDiffablePageViewController, &unk_1007B7520);
          sub_10074D9E4();
          v43 = sub_1007469A4();
          v44 = *(v43 - 8);
          if ((*(v44 + 48))(v38, 1, v43) == 1)
          {
            sub_10000C8CC(v38, &unk_100923200, &unk_1007A5C50);
            v45 = 1;
            v46 = v93;
          }

          else
          {
            swift_getKeyPath();
            v47 = v74;
            sub_100746914();

            (*(v44 + 8))(v96, v43);
            swift_getKeyPath();
            v46 = v93;
            v48 = v75;
            sub_1007525B4();

            (*v71)(v47, v48);
            v45 = 0;
          }

          v49 = *v82;
          v50 = v41;
          (*v82)(v46, v45, 1, v41);
          (*v80)(v23, v81, v41);
          v49(v23, 0, 1, v41);
          v51 = *(v87 + 48);
          v13 = v40;
          sub_100016B4C(v46, v40, &unk_100933370, &unk_1007A8CE0);
          sub_100016B4C(v23, v40 + v51, &unk_100933370, &unk_1007A8CE0);
          v52 = *v79;
          if ((*v79)(v40, 1, v50) == 1)
          {
            break;
          }

          v53 = v72;
          sub_100016B4C(v13, v72, &unk_100933370, &unk_1007A8CE0);
          if (v52(&v13[v51], 1, v50) == 1)
          {
            sub_10000C8CC(v94, &unk_100933370, &unk_1007A8CE0);
            sub_10000C8CC(v46, &unk_100933370, &unk_1007A8CE0);
            (*v70)(v53, v50);
            v9 = v50;
LABEL_8:
            sub_10000C8CC(v13, &qword_10092C380, &unk_1007B0E90);
            v35 = v90;
            v38 = v96;
            goto LABEL_9;
          }

          v54 = v69;
          (*v68)(v69, &v13[v51], v50);
          sub_1003DA3B4(&qword_1009350D0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
          v55 = sub_100753014();
          v56 = *v70;
          (*v70)(v54, v50);
          sub_10000C8CC(v94, &unk_100933370, &unk_1007A8CE0);
          sub_10000C8CC(v93, &unk_100933370, &unk_1007A8CE0);
          v56(v53, v50);
          sub_10000C8CC(v13, &unk_100933370, &unk_1007A8CE0);
          v35 = v90;
          v38 = v96;
          v9 = v50;
          if (v55)
          {
            goto LABEL_20;
          }

LABEL_9:
          (*v73)(v95, v35);
          v23 = v94;
LABEL_10:
          ++v37;
          v36 = v84;
          if (v85 == v37)
          {
            goto LABEL_26;
          }
        }

        sub_10000C8CC(v23, &unk_100933370, &unk_1007A8CE0);
        sub_10000C8CC(v46, &unk_100933370, &unk_1007A8CE0);
        v9 = v50;
        if (v52(&v13[v51], 1, v50) == 1)
        {
          sub_10000C8CC(v13, &unk_100933370, &unk_1007A8CE0);
          v35 = v90;
          v38 = v96;
LABEL_20:
          v57 = *v76;
          (*v76)(v78, v95, v35);
          v58 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v58;
          v23 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10001E674(0, v58[2] + 1, 1);
            v58 = aBlock;
          }

          v61 = v58[2];
          v60 = v58[3];
          if (v61 >= v60 >> 1)
          {
            sub_10001E674((v60 > 1), v61 + 1, 1);
            v58 = aBlock;
          }

          v58[2] = v61 + 1;
          v77 = v58;
          v57(v58 + v92 + v61 * v91, v78, v35);
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }
  }
}

void sub_1003D0330(void *a1, uint64_t a2, uint64_t a3)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong collectionView];
      if (v6)
      {
        v7 = v6;
        v8 = *(a3 + 16);
        if (v8)
        {
          v9 = *(sub_1007417F4() - 8);
          v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          v11 = *(v9 + 72);
          do
          {
            isa = sub_100741704().super.isa;
            [v7 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

            v13 = sub_100741704().super.isa;
            v14 = [v7 cellForItemAtIndexPath:v13];

            if (v14)
            {
              [v14 setHidden:1];
            }

            v10 += v11;
            --v8;
          }

          while (v8);
        }
      }

      else
      {
        v7 = v5;
      }
    }
  }
}

void sub_1003D04C0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1003CF79C(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1003D0540(void *a1)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v1 = v8.receiver;
  objc_msgSendSuper2(&v8, "viewSafeAreaInsetsDidChange");
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 safeAreaInsets];
      v7 = v6;

      [v3 verticalScrollIndicatorInsets];
      [v3 setVerticalScrollIndicatorInsets:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1003D0624(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = ASKDeviceTypeGetCurrent();
  v11 = sub_100753094();
  v13 = v12;
  if (v11 == sub_100753094() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_100754754();

    if ((v16 & 1) == 0)
    {
      v17 = UICollectionView;
      goto LABEL_9;
    }
  }

  v17 = type metadata accessor for TodayDiffablePageViewController.ResizableCollectionView();
LABEL_9:
  v18 = objc_allocWithZone(v17);

  return [v18 initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];
}

uint64_t sub_1003D0740()
{
  v1 = v0;
  v2 = sub_10074D4C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100742964();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v10, v14, &unk_100930240, qword_1007A56E0);
  if (v15)
  {
    sub_10000C824(v14, v13);
    sub_10000C8CC(v14, &unk_100930240, qword_1007A56E0);
    sub_10000C888(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v6);
    sub_100742974();
    (*(v7 + 8))(v9, v6);
    sub_10000C620(v13);
  }

  else
  {
    sub_10000C8CC(v14, &unk_100930240, qword_1007A56E0);
  }

  sub_1007492A4();
  sub_1003D09D8();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appDidForeground(_:), v2);
  sub_10074D484();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003D09D8()
{
  v1 = sub_1007521E4();
  v71 = *(v1 - 8);
  v72 = v1;
  __chkstk_darwin(v1);
  v69 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100752224();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  __chkstk_darwin(v4 - 8);
  v77 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v59 - v7;
  v9 = sub_100741454();
  v79 = *(v9 - 8);
  __chkstk_darwin(v9);
  v75 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v59 - v12;
  v13 = sub_10000C518(&qword_1009360A0, &unk_1007BE170);
  __chkstk_darwin(v13 - 8);
  v78 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  v18 = sub_1007416E4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v73 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v24 = qword_100935A88;
  swift_beginAccess();
  v76 = v24;
  v25 = &v0[v24];
  v26 = v19;
  sub_100016B4C(v25, v17, &qword_1009360A0, &unk_1007BE170);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v27 = v0;
    v28 = v79;
    v29 = v9;
    sub_10000C8CC(v17, &qword_1009360A0, &unk_1007BE170);
LABEL_5:
    if (qword_100921ED8 != -1)
    {
      swift_once();
    }

    v34 = sub_100752E44();
    sub_10000D0FC(v34, qword_100983300);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    v35 = v77;
    sub_100741444();
    (*(v28 + 56))(v35, 0, 1, v29);
    v36 = qword_100935A80;
    swift_beginAccess();
    sub_10006644C(v35, v27 + v36, &unk_100928740, &qword_1007AC280);
    swift_endAccess();
    v37 = v78;
    sub_1007416D4();
LABEL_8:
    (*(v26 + 56))(v37, 0, 1, v18);
    v38 = v76;
    swift_beginAccess();
    sub_10006644C(v37, v27 + v38, &qword_1009360A0, &unk_1007BE170);
    return swift_endAccess();
  }

  v66 = *(v19 + 32);
  v66(v23, v17, v18);
  v30 = qword_100935A80;
  swift_beginAccess();
  sub_100016B4C(&v0[v30], v8, &unk_100928740, &qword_1007AC280);
  v28 = v79;
  v31 = (*(v79 + 48))(v8, 1, v9);
  v32 = v9;
  v33 = v23;
  v27 = v0;
  if (v31 == 1)
  {
    v29 = v9;
    (*(v26 + 8))(v33, v18);
    sub_10000C8CC(v8, &unk_100928740, &qword_1007AC280);
    goto LABEL_5;
  }

  v64 = v30;
  v40 = *(v28 + 32);
  v41 = v74;
  v65 = v32;
  v63 = v28 + 32;
  v62 = v40;
  (v40)(v74, v8);
  sub_10000C888(&v0[qword_100935A78], *&v0[qword_100935A78 + 24]);
  if (sub_100744E84())
  {
    sub_1007416D4();
    sub_100741444();
    sub_1003DA3B4(&unk_1009360F0, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
    v42 = sub_100753014();
    v61 = v26 + 32;
    if ((v42 & 1) != 0 && !sub_1003D9D38(v41, v75, v43))
    {
      if (qword_100921ED8 != -1)
      {
        swift_once();
      }

      v55 = sub_100752E44();
      sub_10000D0FC(v55, qword_100983300);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752CE4();
    }

    else
    {
      if (qword_100921ED8 != -1)
      {
        swift_once();
      }

      v44 = sub_100752E44();
      sub_10000D0FC(v44, qword_100983300);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752CE4();

      v45 = [v0 collectionView];
      if (v45)
      {
        v46 = v45;
        [v45 _scrollToTopIfPossible:0];
      }

      sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
      v60 = sub_100753774();
      v47 = swift_allocObject();
      *(v47 + 16) = v27;
      aBlock[4] = sub_1003D9CE8;
      aBlock[5] = v47;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_1008742F0;
      v48 = _Block_copy(aBlock);
      v49 = v27;

      v50 = v67;
      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      v59 = sub_1003DA3B4(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000C518(&unk_10092F750, &qword_1007A6920);
      sub_10002DDC8(&qword_1009236C0, &unk_10092F750, &qword_1007A6920, &protocol conformance descriptor for [A]);
      v51 = v69;
      v52 = v72;
      sub_1007543A4();
      v53 = v60;
      sub_100753784();
      _Block_release(v48);

      (*(v71 + 8))(v51, v52);
      (*(v68 + 8))(v50, v70);
      v28 = v79;
    }

    v56 = v65;
    (*(v28 + 8))(v41, v65);
    (*(v26 + 8))(v33, v18);
    v57 = v77;
    v62(v77, v75, v56);
    (*(v28 + 56))(v57, 0, 1, v56);
    v58 = v64;
    swift_beginAccess();
    sub_10006644C(v57, v27 + v58, &unk_100928740, &qword_1007AC280);
    swift_endAccess();
    v37 = v78;
    v66(v78, v73, v18);
    goto LABEL_8;
  }

  if (qword_100921ED8 != -1)
  {
    swift_once();
  }

  v54 = sub_100752E44();
  sub_10000D0FC(v54, qword_100983300);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523A4();
  sub_100752CE4();

  (*(v28 + 8))(v41, v65);
  return (*(v26 + 8))(v33, v18);
}

void sub_1003D1828(void *a1)
{
  v1 = a1;
  sub_1003D0740();
}

uint64_t sub_1003D1870()
{
  v1 = v0;
  v2 = sub_10074D4C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100742964();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v1 + v10, v14, &unk_100930240, qword_1007A56E0);
  if (v15)
  {
    sub_10000C824(v14, v13);
    sub_10000C8CC(v14, &unk_100930240, qword_1007A56E0);
    sub_10000C888(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v6);
    sub_100742974();
    (*(v7 + 8))(v9, v6);
    sub_10000C620(v13);
  }

  else
  {
    sub_10000C8CC(v14, &unk_100930240, qword_1007A56E0);
  }

  sub_100749294();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appWillBackground(_:), v2);
  sub_10074D484();
  return (*(v3 + 8))(v5, v2);
}

void sub_1003D1B00(void *a1)
{
  v1 = a1;
  sub_1003D1870();
}

uint64_t sub_1003D1B48@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1003DA3B4(&qword_1009360C0, type metadata accessor for TodayDiffablePageViewController, &unk_1007B7520);
  v2 = sub_10074DA44();
  v20[3] = swift_getObjectType();
  v20[0] = v2;
  v3 = sub_10074DA34();
  v21[3] = swift_getObjectType();
  v21[0] = v3;
  sub_10000C5B4(v20, v18);
  sub_10000C610(v18, v17);
  sub_10000C518(&qword_100922CC0, &unk_1007AAFB0);
  if (swift_dynamicCast() && v16)
  {
    v15 = v16;
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
    *&v4[2 * v6 + 4] = v15;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000C5B4(v21, v18);
  sub_10000C610(v18, v17);
  sub_10000C518(&qword_100922CC0, &unk_1007AAFB0);
  if (swift_dynamicCast() && v16)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v16;
    if (v8 >= v7 >> 1)
    {
      v14 = sub_100254A80((v7 > 1), v8 + 1, 1, v4);
      v9 = v16;
      v4 = v14;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  type metadata accessor for TodayCardGridTracker();
  sub_1007526E4();
  v10 = v19;
  sub_10074DA64();
  v11 = type metadata accessor for TodayPageLayoutSectionProvider(0);
  *(swift_allocObject() + qword_100931658) = v10;
  sub_10000C824(v18, v17);
  sub_10000C824(v17, &v16);

  v12 = sub_10074CB64();
  sub_10000C620(v17);
  result = sub_10000C620(v18);
  a1[3] = v11;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v12;
  return result;
}

unint64_t sub_1003D1E9C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for TodayPageShelfLayoutSpacingProvider;
  result = sub_1003D9C5C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1003D1ED0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for TodayPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1003DA3B4(&qword_1009360D8, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1003DA3B4(&qword_1009360E0, type metadata accessor for TodayPageShelfSupplementaryProvider, &unk_1007C3820);

  return v2;
}

id sub_1003D1FD0()
{
  v1 = v0;
  swift_getObjectType();
  sub_1006B650C();
  sub_10074D7C4();
  if (swift_dynamicCastClass())
  {
    v2 = sub_10074D794();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_10074D7B4();
  }

  sub_10000C518(&qword_100922CE0, &qword_1007A56D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007A6580;
  sub_10000C518(&qword_1009360C8, &unk_1007BE1E0);
  swift_allocObject();
  swift_retain_n();

  v4 = sub_10074DB94();
  v5 = sub_10002DDC8(&qword_1009360D0, &qword_1009360C8, &unk_1007BE1E0, &protocol conformance descriptor for SearchAdsCollectionElementsObserver<A, B>);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_1003DA3B4(&qword_1009360C0, type metadata accessor for TodayDiffablePageViewController, &unk_1007B7520);
  sub_10074DA64();
  sub_10074B884();

  result = [v1 collectionView];
  if (result)
  {
    sub_10074E304();
    swift_allocObject();
    *(v3 + 48) = sub_10074E2F4();
    *(v3 + 56) = &protocol witness table for ImpressionsCollectionElementsObserver;
    v7._rawValue = v3;
    sub_10074D784(v7);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003D2268(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009360B8, &unk_1007BE1D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10041DF04(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v3 + 96))(v5, v2);
    sub_1003D993C();
  }

  else if (v6 == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_10074D464();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void *sub_1003D23E0(double a1, double a2)
{
  v3 = v2;
  v4 = sub_10074F6E4();
  v84 = *(v4 - 8);
  __chkstk_darwin(v4);
  v83 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v78 - v7;
  v9 = sub_10074F704();
  v82 = *(v9 - 8);
  __chkstk_darwin(v9);
  v85 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_10092B0D0, qword_1007A99B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v78 - v12;
  v14 = sub_100753CD4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TitleHeaderView.Style(0);
  *&v19 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v86 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v2 traitCollection];
  v22 = sub_1007537E4();

  if (v22)
  {
    v81 = *&v3[qword_10097EE08];
    sub_10074BF34();
    v23 = sub_100754254();

    if (v23)
    {
      v24 = qword_100935A70;
      v25 = *&v3[qword_100935A70];
      v26 = 0.0;
      v80 = v15;
      if (v25)
      {
        [v25 sizeToFit];
        v27 = *&v3[v24];
        v28 = 0.0;
        if (v27)
        {
          [v27 frame];
          v26 = v29;
          v28 = v30;
        }
      }

      else
      {
        v28 = 0.0;
      }

      result = [v3 view];
      if (result)
      {
        v32 = result;
        v78 = v26;
        v79 = v9;
        v33 = [result traitCollection];

        sub_10071E7C8(v33, v86);
        result = [v3 view];
        if (result)
        {
          v34 = result;
          v35 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
          v36 = sub_100753CB4();
          v37 = *(v36 - 8);
          (*(v37 + 104))(v13, v35, v36);
          (*(v37 + 56))(v13, 0, 1, v36);
          sub_100753CC4();
          sub_10000C8CC(v13, &unk_10092B0D0, qword_1007A99B0);
          sub_100753C94();

          (*(v80 + 8))(v17, v14);
          v38 = v84;
          (*(v84 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v4);
          (*(v38 + 16))(v83, v8, v4);
          v39 = 0.0;
          sub_1004E97E0(0.0);
          v40 = v85;
          sub_10074F6B4();
          (*(v38 + 8))(v8, v4);
          if ((sub_10062AA10() & 1) == 0)
          {
            v39 = sub_1000E1378();
          }

          sub_10074F664();
          v42 = v41;
          sub_10074F664();
          v44 = v43;
          v45 = [v3 traitCollection];
          v46 = sub_1007537D4();

          if (v46)
          {
            v47 = sub_10074BF84();
          }

          else
          {
            v47 = sub_10074BF34();
          }

          v84 = v47;
          v49 = v48;
          v50 = [v3 traitCollection];
          v51 = sub_1007537D4();

          if (v51)
          {
            v52 = sub_10074BF54();
            v54 = v53;
          }

          else
          {
            v52 = 0;
            v54 = 0;
          }

          v55 = [v3 traitCollection];
          v56 = sub_1007537D4();

          if (v56)
          {
            v57 = sub_10074BF64();
            v59 = v58;
          }

          else
          {
            v57 = 0;
            v59 = 0;
          }

          sub_10074F5C4();
          v61 = v60;
          sub_10074F5E4();
          v63 = v62;
          result = [v3 view];
          if (result)
          {
            v64 = result;
            v65 = v86;
            sub_1003D597C(0, 0, 0, v84, v49, 0, v52, v54, v61, v63, v78, v28, v39, v42, 0.0, v44, v57, v59, 2, v86, 0, v64);
            v67 = v66;

            v68 = objc_opt_self();
            v69 = [v68 fractionalWidthDimension:1.0];
            v70 = [v68 absoluteDimension:v67];
            v71 = [objc_opt_self() sizeWithWidthDimension:v69 heightDimension:v70];

            v72 = v71;
            v73 = sub_100753064();
            v74 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v72 elementKind:v73 alignment:1];

            v75 = v74;
            sub_10074F694();
            [v75 setContentInsets:?];

            v76 = sub_1003D8A24();
            sub_10000C518(&unk_1009231A0, qword_1007A5810);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1007A5CF0;
            *(inited + 32) = v75;
            v87 = v76;
            sub_1004A00B0(inited, xmmword_1007A5CF0);

            (*(v82 + 8))(v40, v79);
            sub_1003D9BFC(v65, type metadata accessor for TitleHeaderView.Style);
            return v87;
          }

          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }
  }

  return sub_1003D8A24();
}

double sub_1003D2D00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  ObjectType = swift_getObjectType();
  if (a1 == 0xD000000000000039 && 0x800000010076E360 == a2 || (sub_100754754() & 1) != 0)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = ObjectType;
    a3[3] = sub_10000C518(&qword_100929BD0, qword_1007ADE18);
    a3[4] = sub_10002DDC8(&qword_100929BD8, &qword_100929BD0, qword_1007ADE18, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_10000D134(a3);
    type metadata accessor for TitleHeaderView(0);

    sub_10074D744();
  }

  else
  {

    return sub_1003CC86C(a1, a2, a3);
  }

  return result;
}

void sub_1003D2EB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v50[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ((sub_10062AA10() & 1) == 0)
    {
      v14 = v13;
      sub_1000E1378();
    }

    sub_1007535D4();
    [a1 setLayoutMargins:?];
    *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_allowsAccessibilityLayouts) = 0;
    [a1 setNeedsLayout];
    v15 = *&v13[qword_100935A70];
    v16 = v15;
    sub_100101D58(v15);
    v17 = (a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines);
    *v17 = sub_100184128;
    v17[1] = 0;

    v18 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel);
    [v18 setNumberOfLines:2];
    v19 = (a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorInset);
    v20 = *&UIEdgeInsetsZero.bottom;
    *v19 = *&UIEdgeInsetsZero.top;
    v19[1] = v20;
    [a1 setNeedsLayout];
    v21 = v13;
    v22 = [v21 traitCollection];

    sub_10071E7C8(v22, v11);

    sub_1003D9B94(v11, v8, type metadata accessor for TitleHeaderView.Style);
    (*((swift_isaMask & *a1) + 0x1C8))(v8);
    v23 = [v21 traitCollection];

    v24 = sub_1007537D4();
    if (v24)
    {
      v25 = v21;

      sub_10074BF84();
      v27 = v26;

      if (v27)
      {
        v28 = sub_100753064();
      }

      else
      {
        v28 = 0;
      }

      [v18 setText:v28];

      v32 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel);
      if (v32)
      {

        v33 = v32;
        sub_10074BF54();
        v35 = v34;

        if (v35)
        {
          v36 = sub_100753064();
        }

        else
        {
          v36 = 0;
        }

        [v33 setText:v36];
      }

      v39 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel);
      if (v39)
      {

        v40 = v39;

        sub_10074BF64();
        v42 = v41;

        if (v42)
        {
          v43 = sub_100753064();
        }

        else
        {
          v43 = 0;
        }

        [v40 setText:v43];
      }

      else
      {
      }
    }

    else
    {

      sub_10074BF34();
      v30 = v29;

      if (v30)
      {
        v31 = sub_100753064();
      }

      else
      {
        v31 = 0;
      }

      [v18 setText:v31];

      v37 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel);
      if (v37)
      {
        [v37 setText:0];
      }

      v38 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel);
      if (v38)
      {
        [v38 setText:0];
      }
    }

    [v18 setAllowsDefaultTighteningForTruncation:1];
    [a1 setNeedsLayout];
    if (sub_100364214() & 1) == 0 || (v44 = [a1 gestureRecognizers]) != 0 && (v45 = v44, sub_100016C60(0, &unk_10092C570, UIGestureRecognizer_ptr), v46 = sub_1007532A4(), v45, v47 = sub_1003CE850(), v51 = v47, __chkstk_darwin(v47), *&v50[-16] = &v51, v48 = sub_100074944(sub_1003D9B18, &v50[-32], v46), v47, , (v48))
    {
      sub_1003D9BFC(v11, type metadata accessor for TitleHeaderView.Style);
    }

    else
    {
      v49 = sub_1003CE850();
      [a1 addGestureRecognizer:v49];

      sub_1003D9BFC(v11, type metadata accessor for TitleHeaderView.Style);
    }
  }
}

uint64_t sub_1003D34E8(uint64_t a1)
{
  v37 = sub_10000C518(&unk_100932480, &unk_1007A9900);
  __chkstk_darwin(v37);
  v3 = &v32 - v2;
  v4 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100741264();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v35 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  sub_1003D9B94(a1, v14, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_1003D9BFC(v14, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v34 = *(v16 + 32);
  v34(v20, v14, v15);
  sub_1007492E4();
  (*(v16 + 16))(v8, v20, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v21 = *(v37 + 48);
  sub_100016B4C(v11, v3, &unk_100923970, &qword_1007A6B90);
  v37 = v21;
  sub_100016B4C(v8, &v3[v21], &unk_100923970, &qword_1007A6B90);
  v22 = *(v16 + 48);
  if (v22(v3, 1, v15) != 1)
  {
    v33 = v20;
    v24 = v36;
    sub_100016B4C(v3, v36, &unk_100923970, &qword_1007A6B90);
    v25 = v37;
    if (v22(&v3[v37], 1, v15) != 1)
    {
      v28 = &v3[v25];
      v29 = v35;
      v34(v35, v28, v15);
      sub_1003DA3B4(&qword_100926240, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v30 = v24;
      v23 = sub_100753014();
      v31 = *(v16 + 8);
      v31(v29, v15);
      sub_10000C8CC(v8, &unk_100923970, &qword_1007A6B90);
      sub_10000C8CC(v11, &unk_100923970, &qword_1007A6B90);
      v31(v33, v15);
      v31(v30, v15);
      sub_10000C8CC(v3, &unk_100923970, &qword_1007A6B90);
      return v23 & 1;
    }

    sub_10000C8CC(v8, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v11, &unk_100923970, &qword_1007A6B90);
    v26 = *(v16 + 8);
    v26(v33, v15);
    v26(v24, v15);
    goto LABEL_8;
  }

  sub_10000C8CC(v8, &unk_100923970, &qword_1007A6B90);
  sub_10000C8CC(v11, &unk_100923970, &qword_1007A6B90);
  (*(v16 + 8))(v20, v15);
  if (v22(&v3[v37], 1, v15) != 1)
  {
LABEL_8:
    sub_10000C8CC(v3, &unk_100932480, &unk_1007A9900);
    goto LABEL_9;
  }

  sub_10000C8CC(v3, &unk_100923970, &qword_1007A6B90);
  v23 = 1;
  return v23 & 1;
}

double sub_1003D3A84(void *a1)
{
  v2 = sub_1007521E4();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100752244();
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  sub_10074BF44();
  if (v16)
  {
    v30 = v6;
    if ([a1 state] == 1)
    {
      v17 = [objc_opt_self() generalPasteboard];
      v18 = sub_100753064();

      [v17 setString:v18];

      v19 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
      [v19 prepare];
      [v19 impactOccurred];
      sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
      v28 = sub_100753774();
      sub_100752234();
      sub_1007522B4();
      v27 = v2;
      v29 = *(v9 + 8);
      v29(v11, v32);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      aBlock[4] = sub_1003DA318;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_100874340;
      v21 = _Block_copy(aBlock);
      v26 = v19;

      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1003DA3B4(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v22 = v31;
      v25 = v5;
      sub_10000C518(&unk_10092F750, &qword_1007A6920);
      sub_10002DDC8(&qword_1009236C0, &unk_10092F750, &qword_1007A6920, &protocol conformance descriptor for [A]);
      v23 = v27;
      sub_1007543A4();
      v24 = v28;
      sub_100753734();
      _Block_release(v21);

      (*(v22 + 8))(v4, v23);
      (*(v30 + 8))(v8, v25);
      v29(v14, v32);
    }

    else
    {
    }
  }

  return result;
}

void sub_1003D3F84(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1003D3A84(v4);
}

double sub_1003D3FEC()
{

  sub_10000C620((v0 + qword_100935A78));
  sub_10000C8CC(v0 + qword_100935A80, &unk_100928740, &qword_1007AC280);
  sub_10000C8CC(v0 + qword_100935A88, &qword_1009360A0, &unk_1007BE170);

  return result;
}

double sub_1003D40BC(uint64_t a1)
{

  sub_10000C620((a1 + qword_100935A78));
  sub_10000C8CC(a1 + qword_100935A80, &unk_100928740, &qword_1007AC280);
  sub_10000C8CC(a1 + qword_100935A88, &qword_1009360A0, &unk_1007BE170);

  return result;
}

uint64_t type metadata accessor for TodayDiffablePageViewController(uint64_t a1)
{
  result = qword_100935AD8;
  if (!qword_100935AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D41E4(uint64_t a1)
{
  sub_1003D4318(319, &unk_10092ECC0, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_1003D4318(319, &unk_100935AE8, &type metadata accessor for TimeZone);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1003D4318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1003D43C0(uint64_t *a1)
{
  v2 = *(sub_1007417F4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000518DC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1003D4468(v5);
  *a1 = v3;
}

void sub_1003D4468(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100754704(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1007417F4();
        v6 = sub_100753324();
        v6[2] = v5;
      }

      v7 = *(sub_1007417F4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003D4858(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1003D4594(0, v2, 1, a1);
  }
}

void sub_1003D4594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1007417F4();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1003DA3B4(&qword_100936098, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v26 = sub_100753004();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1003D4858(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_10005171C(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1003D5280(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10005171C(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_100051690(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_1003DA3B4(&qword_100936098, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      LODWORD(v133) = sub_100753004();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_100753004() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1002558E0(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_1002558E0((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1003D5280(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10005171C(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_100051690(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1003DA3B4(&qword_100936098, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v109 = sub_100753004();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_1003D5280(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_1007417F4();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_1003DA3B4(&qword_100936098, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          LOBYTE(v34) = sub_100753004();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_1003DA3B4(&qword_100936098, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        LOBYTE(v21) = sub_100753004();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_1003D5874(&v54, &v53, &v52);
}

uint64_t sub_1003D5874(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1007417F4();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

id sub_1003D597C(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, char *a18, char *a19, uint64_t a20, char a21, void *a22)
{
  v342 = a8;
  v296 = a7;
  v336 = a6;
  v337 = a5;
  v331 = a4;
  v332 = a2;
  v305 = a3;
  v333 = a1;
  v328 = a9;
  v329 = a10;
  v348 = a20;
  v24 = sub_1007504F4();
  v303 = *(v24 - 8);
  v304 = v24;
  __chkstk_darwin(v24);
  v302 = v295 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_100750304();
  v299 = *(v301 - 8);
  __chkstk_darwin(v301);
  v298 = v295 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = sub_100750B04();
  v358 = *(v343 - 8);
  __chkstk_darwin(v343);
  v300 = v295 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = sub_100747154();
  v323 = *(v325 - 8);
  __chkstk_darwin(v325);
  v324 = v295 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100747144();
  v320 = *(v29 - 8);
  v321 = v29;
  __chkstk_darwin(v29);
  v322 = v295 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100747134();
  v317 = *(v31 - 8);
  v318 = v31;
  __chkstk_darwin(v31);
  v319 = v295 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = sub_100747184();
  v330 = *(v327 - 8);
  __chkstk_darwin(v327);
  v326 = v295 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100747174();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v310 = v295 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v355 = v295 - v38;
  __chkstk_darwin(v39);
  v354 = v295 - v40;
  __chkstk_darwin(v41);
  v346 = v295 - v42;
  v43 = sub_10000C518(&unk_100940600, &qword_1007AC320);
  __chkstk_darwin(v43 - 8);
  v308 = v295 - v44;
  v45 = sub_10074CD14();
  v339 = *(v45 - 8);
  v340 = v45;
  __chkstk_darwin(v45);
  v338 = v295 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100740E74();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = v295 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v307 = *(v51 - 1);
  __chkstk_darwin(v51);
  v347 = v295 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v311 = v295 - v54;
  __chkstk_darwin(v55);
  v57 = v295 - v56;
  v58 = sub_10000C518(&qword_1009289F8, &unk_1007BE1C0);
  v59 = *(v58 - 8);
  v315 = v58;
  v316 = v59;
  __chkstk_darwin(v58);
  v297 = v295 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v351 = v295 - v62;
  __chkstk_darwin(v63);
  v350 = v295 - v64;
  __chkstk_darwin(v65);
  v309 = v295 - v66;
  __chkstk_darwin(v67);
  v353 = v295 - v68;
  __chkstk_darwin(v69);
  v352 = v295 - v70;
  __chkstk_darwin(v71);
  v345 = v295 - v72;
  __chkstk_darwin(v73);
  v306 = v295 - v74;
  *&v76 = __chkstk_darwin(v75).n128_u64[0];
  v78 = v295 - v77;
  v335 = a22;
  v79 = [a22 traitCollection];
  v356 = v34;
  v357 = v35;
  v344 = v78;
  v349 = v51;
  v341 = v79;
  v334 = v47;
  v313 = v50;
  v314 = v48;
  if (!v332)
  {
    v92 = *(v35 + 56);
    v92(v78, 1, 1, v34);
    v93 = v343;
    goto LABEL_23;
  }

  v80 = v332;
  v81 = v348;
  sub_1003D9B94(v348, v57, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v79 = sub_100753C14();
  *&v394 = v333;
  *(&v394 + 1) = v80;

  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
  v83 = v82;
  (*(v48 + 8))(v50, v47);

  v84 = 0;
  if ((v83 & 1) == 0)
  {
    [v79 lineHeight];
    v86 = ceil(v85 * 1.3);
    if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v86 > -9.22337204e18)
    {
      if (v86 >= 9.22337204e18)
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v84 = v86;
      goto LABEL_7;
    }

    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_7:
  v295[1] = v84;
  v312 = v57;
  if (!v305)
  {
    goto LABEL_15;
  }

  v295[0] = v79;

  sub_10074F1F4();
  if (v87 && (v88 = [objc_opt_self() configurationWithFont:v295[0]], v89 = sub_100753064(), , v90 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v89, v88), v89, v88, v51 = v349, v90))
  {
    [v90 size];
    sub_100750F34();
    swift_allocObject();
    v91 = sub_100750F14();
  }

  else
  {
    v94 = v51[6];
    v95 = sub_100750534();
    v96 = v298;
    (*(*(v95 - 8) + 16))(v298, v81 + v94, v95);
    v97 = v299;
    v98 = v301;
    (*(v299 + 104))(v96, enum case for FontSource.useCase(_:), v301);
    *(&v395 + 1) = v98;
    v396 = &protocol witness table for FontSource;
    v99 = sub_10000D134(&v394);
    (*(v97 + 16))(v99, v96, v98);

    v100 = v300;
    sub_100750B14();
    (*(v97 + 8))(v96, v98);
    sub_100750AF4();
    sub_10074F2A4();
    v101 = v302;
    sub_100750504();
    sub_100750474();

    (*(v303 + 8))(v101, v304);
    (*(v358 + 8))(v100, v343);
    sub_100750F34();
    swift_allocObject();
    v91 = sub_100750F14();
  }

  v79 = v295[0];
  if (v91)
  {
    *(&v395 + 1) = sub_100750F34();
    v396 = &protocol witness table for LayoutViewPlaceholder;
    v332 = v91;
    *&v394 = v91;
  }

  else
  {
LABEL_15:
    v332 = 0;
    v396 = 0;
    v394 = 0u;
    v395 = 0u;
  }

  v393 = 0;
  v391 = 0u;
  v392 = 0u;
  v390 = 0;
  v388 = 0u;
  v389 = 0u;
  v102 = sub_10074F3F4();
  v386 = v102;
  v387 = sub_1003DA3B4(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v103 = sub_10000D134(v385);
  (*(*(v102 - 8) + 104))(v103, enum case for Feature.measurement_with_labelplaceholder(_:), v102);
  v104 = v79;

  v105 = v104;
  sub_10074FC74();
  sub_10000C620(v385);
  v106 = v338;
  sub_10074CD04();
  sub_10074CCE4();
  (*(v339 + 8))(v106, v340);
  sub_100016B4C(&v394, v384, &unk_100928A00, &qword_1007A5AB0);
  v107 = v386;
  v108 = v387;
  v109 = sub_10000C888(v385, v386);
  v382 = v107;
  v383 = *(v108 + 8);
  v110 = sub_10000D134(v381);
  (*(*(v107 - 8) + 16))(v110, v109, v107);
  v111 = v349;
  v112 = v312;
  v113 = *&v312[v349[8]];
  v379 = &type metadata for Float;
  v380 = &protocol witness table for Float;
  v378 = v113;
  v114 = v349[9];
  v115 = v343;
  v376 = v343;
  v377 = &protocol witness table for StaticDimension;
  v116 = sub_10000D134(v375);
  v117 = *(v358 + 16);
  v117(v116, &v112[v114], v115);
  v118 = v111[10];
  v373 = v115;
  v374 = &protocol witness table for StaticDimension;
  v119 = sub_10000D134(v372);
  v117(v119, &v112[v118], v115);
  sub_100016B4C(&v391, &v366, &qword_10092BC30, &qword_1007AD5C0);
  v120 = *(&v367 + 1);
  if (*(&v367 + 1))
  {
    v121 = v368;
    v122 = sub_10000C888(&v366, *(&v367 + 1));
    *(&v370 + 1) = v120;
    v371 = *(v121 + 8);
    v123 = sub_10000D134(&v369);
    (*(*(v120 - 8) + 16))(v123, v122, v120);
    sub_10000C620(&v366);
  }

  else
  {
    sub_10000C8CC(&v366, &qword_10092BC30, &qword_1007AD5C0);
    v369 = 0u;
    v370 = 0u;
    v371 = 0;
  }

  v124 = v306;
  sub_100016B4C(&v388, v363, &qword_10092BC30, &qword_1007AD5C0);
  v125 = v364;
  if (v364)
  {
    v126 = v365;
    v127 = sub_10000C888(v363, v364);
    *(&v367 + 1) = v125;
    v368 = *(v126 + 8);
    v128 = sub_10000D134(&v366);
    (*(*(v125 - 8) + 16))(v128, v127, v125);
    sub_10000C620(v363);
  }

  else
  {
    sub_10000C8CC(v363, &qword_10092BC30, &qword_1007AD5C0);
    v366 = 0u;
    v367 = 0u;
    v368 = 0;
  }

  v129 = v349;
  v130 = v312;
  sub_10000C824(&v312[v349[12]], v363);
  sub_10000C824(v130 + v129[13], v362);
  v361 = &protocol witness table for Double;
  v360 = &type metadata for Double;
  v359 = 0x4020000000000000;
  sub_100747164();

  sub_10000C8CC(&v388, &qword_10092BC30, &qword_1007AD5C0);
  v51 = v129;
  sub_10000C8CC(&v391, &qword_10092BC30, &qword_1007AD5C0);
  sub_1003D9BFC(v130, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000C620(v385);

  sub_10000C8CC(&v394, &unk_100928A00, &qword_1007A5AB0);
  v34 = v356;
  v92 = *(v357 + 56);
  v92(v124, 0, 1, v356);
  sub_100066578(v124, v344, &qword_1009289F8, &unk_1007BE1C0);
  v79 = v341;
  v93 = v343;
LABEL_23:
  v131 = v337;
  if (!v342)
  {
LABEL_26:
    v92(v345, 1, 1, v34);
    v396 = 0;
    v394 = 0u;
    v395 = 0u;
    v391 = 0u;
    v392 = 0u;
    v393 = 0;
    goto LABEL_27;
  }

  v132 = type metadata accessor for TitleHeaderView.Style(0);
  v133 = v308;
  sub_100016B4C(v348 + *(v132 + 24), v308, &unk_100940600, &qword_1007AC320);
  if ((*(v307 + 48))(v133, 1, v51) == 1)
  {
    sub_10000C8CC(v133, &unk_100940600, &qword_1007AC320);
    goto LABEL_26;
  }

  sub_1001502E0(v133, v311);
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v137 = sub_100753C14();
  *&v394 = v296;
  *(&v394 + 1) = v342;

  v138 = v313;
  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
  v140 = v139;
  (*(v314 + 8))(v138, v334);

  v141 = 0;
  if (v140)
  {
LABEL_37:
    v145 = v137;
    if (*(v348 + *(v132 + 36)) == 2)
    {
      v312 = a18;
      v332 = a17;
      v146 = sub_10074F3F4();
      v307 = v141;
      v147 = v146;
      *(&v395 + 1) = v146;
      v308 = sub_1003DA3B4(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v396 = v308;
      v148 = sub_10000D134(&v394);
      v149 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v150 = *(*(v147 - 8) + 104);
      v333 = v92;
      v150(v148, enum case for Feature.measurement_with_labelplaceholder(_:), v147);
      v151 = v145;

      v152 = v151;
      sub_10074FC74();
      sub_10000C620(&v394);
      v153 = v338;
      sub_10074CD04();
      sub_10074CCE4();
      v154 = v340;
      v155 = *(v339 + 8);
      v155(v153, v340);
      *(&v392 + 1) = v147;
      v393 = v308;
      v156 = sub_10000D134(&v391);
      v150(v156, v149, v147);
      v57 = v334;
      v93 = v343;

      v157 = v152;
      sub_10074FC74();
      sub_10000C620(&v391);
      sub_10074CD04();
      sub_10074CCE4();

      v155(v153, v154);
      v131 = v337;
      sub_1003D9BFC(v311, type metadata accessor for TitleHeaderView.TextConfiguration);

      v333(v345, 1, 1, v356);
      v51 = v349;
      v79 = v341;
LABEL_28:
      v342 = type metadata accessor for TitleHeaderView.Style(0);
      v333 = (v348 + v342[5]);
      sub_1003D9B94(v333, v347, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
      v337 = sub_100753C14();
      if (!v131)
      {
        goto LABEL_43;
      }

      v134 = v93;
      v48 = v331;
      *&v388 = v331;
      *(&v388 + 1) = v131;

      v50 = v313;
      sub_100740E54();
      sub_1000D5C0C();
      sub_1007542C4();
      v136 = v135;
      (*(v314 + 8))(v50, v57);

      if (v136)
      {
LABEL_42:
        v93 = v134;
        if (!v336)
        {
          goto LABEL_50;
        }

LABEL_43:
        v334 = a19;

        sub_10074F1F4();
        if (v160 && (v161 = [objc_opt_self() configurationWithFont:v337], v162 = sub_100753064(), , v163 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v162, v161), v162, v51 = v349, v161, v163))
        {
          [v163 size];
          sub_100750F34();
          swift_allocObject();
          v164 = sub_100750F14();
        }

        else
        {
          v165 = v93;
          v166 = v333;
          v167 = v51[6];
          v168 = sub_100750534();
          v169 = v166 + v167;
          v93 = v165;
          v170 = v298;
          (*(*(v168 - 8) + 16))(v298, v169, v168);
          v171 = v299;
          v172 = v301;
          (*(v299 + 104))(v170, enum case for FontSource.useCase(_:), v301);
          *(&v389 + 1) = v172;
          v390 = &protocol witness table for FontSource;
          v173 = sub_10000D134(&v388);
          (*(v171 + 16))(v173, v170, v172);

          v174 = v300;
          sub_100750B14();
          (*(v171 + 8))(v170, v172);
          sub_100750AF4();
          sub_10074F2A4();
          v175 = v302;
          sub_100750504();
          sub_100750474();

          (*(v303 + 8))(v175, v304);
          (*(v358 + 8))(v174, v93);
          sub_100750F34();
          swift_allocObject();
          v164 = sub_100750F14();
        }

        if (v164)
        {
          v176 = sub_100750F34();
          v390 = &protocol witness table for LayoutViewPlaceholder;
          *(&v389 + 1) = v176;
          v336 = v164;
          *&v388 = v164;
        }

        else
        {
LABEL_50:
          v336 = 0;
          v390 = 0;
          v388 = 0u;
          v389 = 0u;
        }

        v177 = sub_10074F3F4();
        v386 = v177;
        v387 = sub_1003DA3B4(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v178 = sub_10000D134(v385);
        (*(*(v177 - 8) + 104))(v178, enum case for Feature.measurement_with_labelplaceholder(_:), v177);

        v179 = v337;
        sub_10074FC74();
        sub_10000C620(v385);
        v180 = v338;
        v337 = v179;
        sub_10074CD04();
        sub_10074CCE4();
        (*(v339 + 8))(v180, v340);
        sub_100016B4C(&v388, v384, &unk_100928A00, &qword_1007A5AB0);
        v181 = v386;
        v182 = v387;
        v183 = sub_10000C888(v385, v386);
        v382 = v181;
        v383 = *(v182 + 8);
        v184 = sub_10000D134(v381);
        (*(*(v181 - 8) + 16))(v184, v183, v181);
        v185 = v349;
        v186 = v347;
        v187 = *(v347 + v349[8]);
        v379 = &type metadata for Float;
        v380 = &protocol witness table for Float;
        v378 = v187;
        v188 = v349[9];
        v376 = v93;
        v377 = &protocol witness table for StaticDimension;
        v189 = sub_10000D134(v375);
        v190 = *(v358 + 16);
        v190(v189, v186 + v188, v93);
        v191 = v185[10];
        v373 = v93;
        v374 = &protocol witness table for StaticDimension;
        v192 = sub_10000D134(v372);
        v190(v192, v186 + v191, v93);
        sub_100016B4C(&v394, &v366, &qword_10092BC30, &qword_1007AD5C0);
        v193 = *(&v367 + 1);
        if (*(&v367 + 1))
        {
          v194 = v368;
          v195 = sub_10000C888(&v366, *(&v367 + 1));
          *(&v370 + 1) = v193;
          v371 = *(v194 + 8);
          v196 = sub_10000D134(&v369);
          (*(*(v193 - 8) + 16))(v196, v195, v193);
          sub_10000C620(&v366);
        }

        else
        {
          sub_10000C8CC(&v366, &qword_10092BC30, &qword_1007AD5C0);
          v369 = 0u;
          v370 = 0u;
          v371 = 0;
        }

        v197 = v350;
        v198 = v348;
        sub_100016B4C(&v391, v363, &qword_10092BC30, &qword_1007AD5C0);
        v199 = v364;
        if (v364)
        {
          v200 = v365;
          v201 = sub_10000C888(v363, v364);
          *(&v367 + 1) = v199;
          v368 = *(v200 + 8);
          v202 = sub_10000D134(&v366);
          (*(*(v199 - 8) + 16))(v202, v201, v199);
          sub_10000C620(v363);
        }

        else
        {
          sub_10000C8CC(v363, &qword_10092BC30, &qword_1007AD5C0);
          v366 = 0u;
          v367 = 0u;
          v368 = 0;
        }

        v203 = v351;
        v204 = v349;
        v205 = v347;
        sub_10000C824(v347 + v349[12], v363);
        sub_10000C824(v205 + v204[13], v362);
        v361 = &protocol witness table for Double;
        v360 = &type metadata for Double;
        v359 = 0x4020000000000000;
        sub_100747164();
        sub_10000C620(v385);
        sub_10000C8CC(&v388, &unk_100928A00, &qword_1007A5AB0);
        v206 = *(v198 + v342[9]);
        sub_10000C518(&qword_100928A10, &qword_1007AC450);
        v358 = *(v316 + 72);
        v207 = (*(v316 + 80) + 32) & ~*(v316 + 80);
        if (v206)
        {
          if (v206 != 1)
          {
            v236 = v358;
            v343 = swift_allocObject();
            v237 = v343 + v207;
            sub_100016B4C(v344, v343 + v207, &qword_1009289F8, &unk_1007BE1C0);
            v238 = v356;
            v239 = v357;
            (*(v357 + 16))(v237 + v236, v346, v356);
            (*(v239 + 56))(v237 + v236, 0, 1, v238);
            v240 = v309;
            sub_100016B4C(v237, v309, &qword_1009289F8, &unk_1007BE1C0);
            v241 = v297;
            sub_100066578(v240, v297, &qword_1009289F8, &unk_1007BE1C0);
            v242 = *(v239 + 48);
            v243 = (v239 + 32);
            v244 = v242(v241, 1, v238);
            v355 = (v239 + 32);
            if (v244 == 1)
            {
              sub_10000C8CC(v241, &qword_1009289F8, &unk_1007BE1C0);
              v245 = _swiftEmptyArrayStorage;
            }

            else
            {
              v246 = *v243;
              (*v243)(v310, v241, v238);
              v245 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v245 = sub_100255918(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v248 = *(v245 + 2);
              v247 = *(v245 + 3);
              if (v248 >= v247 >> 1)
              {
                v245 = sub_100255918((v247 > 1), v248 + 1, 1, v245);
              }

              *(v245 + 2) = v248 + 1;
              v249 = &v245[((*(v357 + 80) + 32) & ~*(v357 + 80)) + *(v357 + 72) * v248];
              v238 = v356;
              v246(v249, v310, v356);
              v241 = v297;
            }

            v250 = v309;
            sub_100016B4C(v237 + v358, v309, &qword_1009289F8, &unk_1007BE1C0);
            sub_100066578(v250, v241, &qword_1009289F8, &unk_1007BE1C0);
            if (v242(v241, 1, v238) == 1)
            {
              sub_10000C8CC(v241, &qword_1009289F8, &unk_1007BE1C0);
              v235 = v348;
              v79 = v344;
            }

            else
            {
              v251 = v238;
              v252 = *v355;
              (*v355)(v310, v241, v251);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v235 = v348;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v245 = sub_100255918(0, *(v245 + 2) + 1, 1, v245);
              }

              v79 = v344;
              v255 = *(v245 + 2);
              v254 = *(v245 + 3);
              if (v255 >= v254 >> 1)
              {
                v245 = sub_100255918((v254 > 1), v255 + 1, 1, v245);
              }

              *(v245 + 2) = v255 + 1;
              v252(&v245[((*(v357 + 80) + 32) & ~*(v357 + 80)) + *(v357 + 72) * v255], v310, v356);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
LABEL_94:
            swift_deallocClassInstance();
            v57 = v326;
            if (a11 == 0.0 && a12 == 0.0)
            {
              v256 = 0;
              v257 = 0;
              v258 = 0;
              *&v389 = 0;
              *(&v388 + 1) = 0;
            }

            else
            {
              v257 = sub_100750F34();
              swift_allocObject();
              v256 = sub_100750F14();
              v258 = &protocol witness table for LayoutViewPlaceholder;
            }

            *&v388 = v256;
            *(&v389 + 1) = v257;
            v390 = v258;
            sub_100016B4C(&v388, v385, &unk_100928A00, &qword_1007A5AB0);
            v259 = v342;
            v260 = *(v235 + v342[14]);
            v384[3] = &type metadata for CGFloat;
            v384[4] = &protocol witness table for CGFloat;
            v384[0] = v260;
            (*(v317 + 16))(v319, v235 + v342[10], v318);
            (*(v320 + 16))(v322, v235 + v259[11], v321);
            (*(v323 + 104))(v324, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v325);
            sub_100747104();
            sub_100753BA4();
            sub_1003DA3B4(&qword_100928A18, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
            v48 = v327;
            sub_100750404();
            v385[0] = v261;
            v385[1] = v262;
            sub_100753BB4();
            if (JUScreenClassGetMain() != 1)
            {

              (*(v330 + 8))(v57, v48);
              (*(v357 + 8))(v346, v356);
              sub_1003D9BFC(v347, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10000C8CC(&v391, &qword_10092BC30, &qword_1007AD5C0);
              sub_10000C8CC(&v394, &qword_10092BC30, &qword_1007AD5C0);
              sub_10000C8CC(v345, &qword_1009289F8, &unk_1007BE1C0);
              sub_10000C8CC(v79, &qword_1009289F8, &unk_1007BE1C0);
              return sub_10000C8CC(&v388, &unk_100928A00, &qword_1007A5AB0);
            }

            v263 = v356;
            v51 = v357;
            v50 = v341;
            if (qword_100920AD0 != -1)
            {
              swift_once();
            }

            v264 = sub_10000D0FC(v349, qword_10097FF28);
            if (sub_10010A2FC(v333, v264))
            {

              (*(v330 + 8))(v57, v48);
              (*(v51 + 1))(v346, v263);
              sub_1003D9BFC(v347, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10000C8CC(&v391, &qword_10092BC30, &qword_1007AD5C0);
              sub_10000C8CC(&v394, &qword_10092BC30, &qword_1007AD5C0);
              sub_10000C8CC(v345, &qword_1009289F8, &unk_1007BE1C0);
              sub_10000C8CC(v79, &qword_1009289F8, &unk_1007BE1C0);
              return sub_10000C8CC(&v388, &unk_100928A00, &qword_1007A5AB0);
            }

            if (qword_100920AD8 == -1)
            {
LABEL_105:
              v265 = sub_10000D0FC(v349, qword_10097FF40);
              sub_10010A2FC(v333, v265);

              (*(v330 + 8))(v57, v48);
              (*(v51 + 1))(v346, v356);
              sub_1003D9BFC(v347, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10000C8CC(&v391, &qword_10092BC30, &qword_1007AD5C0);
              sub_10000C8CC(&v394, &qword_10092BC30, &qword_1007AD5C0);
              sub_10000C8CC(v345, &qword_1009289F8, &unk_1007BE1C0);
              sub_10000C8CC(v79, &qword_1009289F8, &unk_1007BE1C0);
              return sub_10000C8CC(&v388, &unk_100928A00, &qword_1007A5AB0);
            }

LABEL_120:
            swift_once();
            goto LABEL_105;
          }

          v208 = v358;
          v343 = swift_allocObject();
          v209 = v343 + v207;
          sub_100016B4C(v344, v343 + v207, &qword_1009289F8, &unk_1007BE1C0);
          v211 = v356;
          v210 = v357;
          (*(v357 + 16))(v209 + v208, v346, v356);
          v212 = *(v210 + 56);
          v210 += 56;
          v212(v209 + v208, 0, 1, v211);
          sub_100016B4C(v345, v209 + 2 * v208, &qword_1009289F8, &unk_1007BE1C0);
          v213 = (v210 - 8);
          v354 = (v210 - 24);
          v214 = v211;
          v215 = _swiftEmptyArrayStorage;
          v216 = 3;
          v352 = v209;
          do
          {
            v217 = v353;
            sub_100016B4C(v209, v353, &qword_1009289F8, &unk_1007BE1C0);
            sub_100066578(v217, v203, &qword_1009289F8, &unk_1007BE1C0);
            if ((*v213)(v203, 1, v214) == 1)
            {
              sub_10000C8CC(v203, &qword_1009289F8, &unk_1007BE1C0);
            }

            else
            {
              v218 = *v354;
              (*v354)(v355, v203, v214);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v215 = sub_100255918(0, *(v215 + 2) + 1, 1, v215);
              }

              v220 = *(v215 + 2);
              v219 = *(v215 + 3);
              if (v220 >= v219 >> 1)
              {
                v215 = sub_100255918((v219 > 1), v220 + 1, 1, v215);
              }

              *(v215 + 2) = v220 + 1;
              v214 = v356;
              v218(&v215[((*(v357 + 80) + 32) & ~*(v357 + 80)) + *(v357 + 72) * v220], v355, v356);
              v203 = v351;
            }

            v209 += v358;
            --v216;
          }

          while (v216);
        }

        else
        {
          v221 = v358;
          v222 = 2 * v358;
          v343 = swift_allocObject();
          v223 = v343 + v207;
          sub_100016B4C(v344, v343 + v207, &qword_1009289F8, &unk_1007BE1C0);
          sub_100016B4C(v345, v223 + v221, &qword_1009289F8, &unk_1007BE1C0);
          v225 = v356;
          v224 = v357;
          (*(v357 + 16))(v223 + v222, v346, v356);
          v226 = *(v224 + 56);
          v224 += 56;
          v226(v223 + v222, 0, 1, v225);
          v227 = (v224 - 8);
          v355 = (v224 - 24);
          v228 = v225;
          v229 = _swiftEmptyArrayStorage;
          v230 = 3;
          v353 = v223;
          do
          {
            v231 = v352;
            sub_100016B4C(v223, v352, &qword_1009289F8, &unk_1007BE1C0);
            sub_100066578(v231, v197, &qword_1009289F8, &unk_1007BE1C0);
            if ((*v227)(v197, 1, v228) == 1)
            {
              sub_10000C8CC(v197, &qword_1009289F8, &unk_1007BE1C0);
            }

            else
            {
              v232 = *v355;
              (*v355)(v354, v197, v228);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v229 = sub_100255918(0, *(v229 + 2) + 1, 1, v229);
              }

              v234 = *(v229 + 2);
              v233 = *(v229 + 3);
              if (v234 >= v233 >> 1)
              {
                v229 = sub_100255918((v233 > 1), v234 + 1, 1, v229);
              }

              *(v229 + 2) = v234 + 1;
              v228 = v356;
              v232(&v229[((*(v357 + 80) + 32) & ~*(v357 + 80)) + *(v357 + 72) * v234], v354, v356);
              v197 = v350;
            }

            v223 += v358;
            --v230;
          }

          while (v230);
        }

        swift_setDeallocating();
        swift_arrayDestroy();
        v235 = v348;
        v79 = v344;
        goto LABEL_94;
      }

      [v337 lineHeight];
      v159 = ceil(v158 * 1.3);
      if ((*&v159 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v159 > -9.22337204e18)
        {
          if (v159 < 9.22337204e18)
          {
            goto LABEL_42;
          }

LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      goto LABEL_116;
    }

    v396 = 0;
    v394 = 0u;
    v395 = 0u;
    v393 = 0;
    v391 = 0u;
    v392 = 0u;
    v390 = 0;
    v388 = 0u;
    v389 = 0u;
    v266 = sub_10074F3F4();
    v386 = v266;
    v387 = sub_1003DA3B4(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v267 = sub_10000D134(v385);
    (*(*(v266 - 8) + 104))(v267, enum case for Feature.measurement_with_labelplaceholder(_:), v266);

    v268 = v137;
    sub_10074FC74();
    sub_10000C620(v385);
    v269 = v338;
    v342 = v268;
    sub_10074CD04();
    sub_10074CCE4();
    (*(v339 + 8))(v269, v340);
    sub_100016B4C(&v394, v384, &unk_100928A00, &qword_1007A5AB0);
    v270 = v386;
    v271 = v387;
    v272 = sub_10000C888(v385, v386);
    v382 = v270;
    v383 = *(v271 + 8);
    v273 = sub_10000D134(v381);
    (*(*(v270 - 8) + 16))(v273, v272, v270);
    v274 = v349;
    v275 = v311;
    v276 = *(v311 + v349[8]);
    v379 = &type metadata for Float;
    v380 = &protocol witness table for Float;
    v378 = v276;
    v277 = v349[9];
    v376 = v93;
    v377 = &protocol witness table for StaticDimension;
    v278 = sub_10000D134(v375);
    v279 = v93;
    v280 = *(v358 + 16);
    v280(v278, v275 + v277, v279);
    v281 = v274[10];
    v373 = v279;
    v374 = &protocol witness table for StaticDimension;
    v282 = sub_10000D134(v372);
    v280(v282, v275 + v281, v279);
    sub_100016B4C(&v391, &v366, &qword_10092BC30, &qword_1007AD5C0);
    v283 = *(&v367 + 1);
    if (*(&v367 + 1))
    {
      v284 = v368;
      v285 = sub_10000C888(&v366, *(&v367 + 1));
      *(&v370 + 1) = v283;
      v371 = *(v284 + 8);
      v286 = sub_10000D134(&v369);
      (*(*(v283 - 8) + 16))(v286, v285, v283);
      sub_10000C620(&v366);
    }

    else
    {
      sub_10000C8CC(&v366, &qword_10092BC30, &qword_1007AD5C0);
      v369 = 0u;
      v370 = 0u;
      v371 = 0;
    }

    v287 = v357;
    sub_100016B4C(&v388, v363, &qword_10092BC30, &qword_1007AD5C0);
    v288 = v364;
    if (v364)
    {
      v289 = v365;
      v290 = sub_10000C888(v363, v364);
      *(&v367 + 1) = v288;
      v368 = *(v289 + 8);
      v291 = sub_10000D134(&v366);
      (*(*(v288 - 8) + 16))(v291, v290, v288);
      sub_10000C620(v363);
    }

    else
    {
      sub_10000C8CC(v363, &qword_10092BC30, &qword_1007AD5C0);
      v366 = 0u;
      v367 = 0u;
      v368 = 0;
    }

    v292 = v349;
    v293 = v311;
    sub_10000C824(v311 + v349[12], v363);
    sub_10000C824(v293 + v292[13], v362);
    v361 = &protocol witness table for Double;
    v360 = &type metadata for Double;
    v359 = 0x4020000000000000;
    v294 = v345;
    sub_100747164();
    sub_10000C8CC(&v388, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(&v391, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C8CC(&v394, &unk_100928A00, &qword_1007A5AB0);
    sub_1003D9BFC(v293, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000C620(v385);

    v51 = v292;
    (*(v287 + 56))(v294, 0, 1, v356);
    v396 = 0;
    v394 = 0u;
    v395 = 0u;
    v391 = 0u;
    v392 = 0u;
    v393 = 0;
    v79 = v341;
    v93 = v343;
    v131 = v337;
LABEL_27:
    v57 = v334;
    goto LABEL_28;
  }

  result = [v137 lineHeight];
  v144 = ceil(v143 * 1.3);
  if ((*&v144 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_122;
  }

  if (v144 <= -9.22337204e18)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v144 < 9.22337204e18)
  {
    v141 = v144;
    goto LABEL_37;
  }

LABEL_123:
  __break(1u);
  return result;
}