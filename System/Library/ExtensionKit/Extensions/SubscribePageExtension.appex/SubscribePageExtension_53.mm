uint64_t sub_1005FCA54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1005FCA8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_100742284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getObjectType();
    sub_1007423E4();
    (*(v5 + 32))(v7, v10, v4);
    v12 = (*(v5 + 88))(v7, v4);
    if (v12 == enum case for LegacyAppState.waiting(_:))
    {
      (*(v5 + 96))(v7, v4);
      v13 = sub_100745D74();
    }

    else
    {
      if (v12 == enum case for LegacyAppState.updatable(_:))
      {
        (*(v5 + 8))(v7, v4);
        goto LABEL_7;
      }

      if (v12 == enum case for LegacyAppState.installing(_:))
      {
        (*(v5 + 96))(v7, v4);
        v13 = sub_1007421F4();
      }

      else
      {
        if (v12 != enum case for LegacyAppState.openable(_:))
        {
          (*(v5 + 8))(v7, v4);
          v14 = 0;
          goto LABEL_8;
        }

        (*(v5 + 96))(v7, v4);

        v13 = sub_100748314();
      }
    }

    (*(*(v13 - 8) + 8))(v7, v13);
LABEL_7:
    v14 = 1;
LABEL_8:
    sub_1005FC094(v14);
  }

  return result;
}

uint64_t sub_1005FCD48()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t CrossLinkPresenter.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_stateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1007423C4();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_adamId;
  v3 = sub_10074ED34();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10000C4F0(v1 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_view);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t CrossLinkPresenter.__deallocating_deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_stateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1007423C4();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_adamId;
  v3 = sub_10074ED34();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10000C4F0(v1 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_view);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1005FCF6C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_isVisible;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for CrossLinkPresenter(uint64_t a1)
{
  result = qword_100940A10;
  if (!qword_100940A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005FD040(uint64_t a1)
{
  result = sub_10074ED34();
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

uint64_t sub_1005FD1DC()
{

  return swift_deallocClassInstance();
}

void sub_1005FD224()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v4 = sub_100753E04();
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerBackgroundView];
  v6 = sub_100753E04();
  [v5 setBackgroundColor:v6];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 addSubview:v5];

  v9 = [v1 traitCollection];
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v10 >> 62)
  {
    if (sub_100754664() >= 4)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = sub_1007537B4();

    if (v11)
    {
      return;
    }

    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
  {
    goto LABEL_7;
  }

LABEL_5:

LABEL_8:
  sub_1005FE5F8();
}

void sub_1005FD3F4()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v16, "didReceiveMemoryWarning");
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    if (sub_100754664() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    goto LABEL_6;
  }

  v5 = sub_1007537B4();

  if (v5)
  {
    return;
  }

LABEL_6:
  v6 = *&v1[v3];
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = sub_100754664();
  if (v7)
  {
LABEL_8:
    if (v7 < 1)
    {
      __break(1u);
      return;
    }

    v8 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController;

    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_100754574();
        v11 = *(v10 + 56);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);

        v11 = *(v10 + 56);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      v12 = *&v1[v8];
      if (!v12)
      {
        goto LABEL_19;
      }

      sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
      v13 = v11;
      v14 = v12;
      v15 = sub_100753FC4();

      if ((v15 & 1) == 0)
      {
        v11 = *(v10 + 56);
LABEL_19:
        *(v10 + 56) = 0;

        goto LABEL_11;
      }

LABEL_10:

LABEL_11:
      if (v7 == ++v9)
      {

        return;
      }
    }
  }
}

void sub_1005FD624(uint64_t a1)
{
  v2 = v1;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v45, "traitCollectionDidChange:", a1);
  v4 = &qword_100940000;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments;
  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  v7 = &selRef_initWithTitle_style_target_action_;
  v8 = v6 >> 62;
  if (!a1)
  {
    if (v8)
    {
      goto LABEL_45;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    while (1)
    {
LABEL_16:
      v13 = [v2 v7[129]];
      v14 = *&v2[v4[350]];
      if (v14 >> 62)
      {
        if (sub_100754664() >= 4)
        {
LABEL_18:

          goto LABEL_23;
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
      {
        goto LABEL_18;
      }

      v15 = sub_1007537B4();

      if (v15)
      {
        sub_1005FE070();
        v16 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl;
        v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl];
        if (v17)
        {
          [v17 removeFromSuperview];
          v18 = *&v2[v16];
        }

        else
        {
          v18 = 0;
        }

        *&v2[v16] = 0;

        goto LABEL_50;
      }

LABEL_23:
      v44 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController];
      v19 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_columnViewControllers;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (v20 >> 62)
      {
        v4 = sub_100754664();
        if (!v4)
        {
LABEL_48:
          v34 = v44;
LABEL_49:
          *&v2[v19] = _swiftEmptyArrayStorage;

          sub_1005FE5F8();
          sub_1005FE6B8();
          goto LABEL_50;
        }
      }

      else
      {
        v4 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_48;
        }
      }

      v42 = v19;
      v7 = (v20 & 0xC000000000000001);
      v43 = v44;

      v21 = 0;
      while (1)
      {
        if (v7)
        {
          v22 = sub_100754574();
        }

        else
        {
          if (v21 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v22 = *(v20 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (!v44 || (sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr), v25 = v43, v26 = v23, v27 = sub_100753FC4(), v26, v25, (v27 & 1) == 0))
        {
          v28 = [v23 parentViewController];
          if (v28)
          {
            v29 = v28;
            sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
            v30 = v2;
            v31 = sub_100753FC4();

            if (v31)
            {
              if ([v23 isViewLoaded])
              {
                v32 = [v23 view];
                if (!v32)
                {
                  goto LABEL_61;
                }

                v33 = v32;
                [v32 removeFromSuperview];
              }

              [v23 willMoveToParentViewController:0];
              [v23 removeFromParentViewController];
            }
          }
        }

        ++v21;
        if (v24 == v4)
        {

          v19 = v42;
          v34 = v43;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      if (sub_100754664())
      {
        goto LABEL_50;
      }
    }
  }

  if (v8)
  {
    if (sub_100754664() > 3)
    {
      goto LABEL_4;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > 3)
  {
LABEL_4:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = sub_1007537B4();
LABEL_10:
  v10 = [v2 traitCollection];
  v11 = *&v2[v5];
  if (v11 >> 62)
  {
    if (sub_100754664() >= 4)
    {
LABEL_12:

      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
    goto LABEL_12;
  }

  v12 = sub_1007537B4() & 1;

  if ((v9 & 1) != v12)
  {
    goto LABEL_16;
  }

LABEL_50:
  v35 = sub_1005FE904();
  v36 = [v2 childViewControllers];
  sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
  v37 = sub_1007532A4();

  if (!(v37 >> 62))
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_52;
    }

LABEL_59:

    return;
  }

  v38 = sub_100754664();
  if (!v38)
  {
    goto LABEL_59;
  }

LABEL_52:
  if (v38 >= 1)
  {
    for (i = 0; i != v38; ++i)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = sub_100754574();
      }

      else
      {
        v40 = *(v37 + 8 * i + 32);
      }

      v41 = v40;
      [v2 setOverrideTraitCollection:v35 forChildViewController:v40];
    }

    goto LABEL_59;
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

void sub_1005FDC28(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments;
  v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v8 >> 62)
  {
    v9 = sub_100754664();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < 4)
  {
    v10 = sub_1007537B4();

    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (a1 != -1)
  {
    v11 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController;
    v12 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController];
    if (v12)
    {
      v13 = v12;
      v14 = [v13 parentViewController];
      if (v14)
      {
        v15 = v14;
        sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
        v16 = v3;
        v17 = sub_100753FC4();

        if (v17)
        {
          if ([v13 isViewLoaded])
          {
            v18 = [v13 view];
            if (!v18)
            {
LABEL_41:
              __break(1u);
              return;
            }

            v19 = v18;
            [v18 removeFromSuperview];
          }

          [v13 willMoveToParentViewController:0];
          [v13 removeFromParentViewController];
        }
      }

      v20 = *&v3[v11];
      *&v3[v11] = 0;
    }
  }

LABEL_15:
  if (a2 == -1)
  {
    goto LABEL_32;
  }

  v21 = *&v3[v7];
  if ((v21 & 0xC000000000000001) != 0)
  {

    v22 = sub_100754574();

    v24 = *(v22 + 56);
    if (v24)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v22 = *(v21 + 8 * a2 + 32);

  v24 = *(v22 + 56);
  if (v24)
  {
LABEL_20:
    v25 = v24;
    goto LABEL_24;
  }

LABEL_23:
  v26 = (*(v22 + 40))(v23);
  v27 = *(v22 + 56);
  *(v22 + 56) = v26;
  v25 = v26;

  v24 = 0;
LABEL_24:
  v28 = v24;
  v29 = [v25 parentViewController];
  if (!v29 || (v30 = v29, sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr), v31 = v3, v32 = sub_100753FC4(), v30, v31, (v32 & 1) == 0))
  {
    [v3 addChildViewController:v25];
    v33 = [v3 view];
    if (!v33)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v34 = v33;
    v35 = [v25 view];
    if (!v35)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v36 = v35;
    [v34 addSubview:v35];

    swift_getObjectType();
    v37 = swift_conformsToProtocol2();
    if (v37 && v25)
    {
      v38 = v37;
      ObjectType = swift_getObjectType();
      v40 = *(v38 + 16);
      v41 = v3;
      v42 = v25;
      v40(v3, &off_10087DA28, ObjectType, v38);
    }
  }

  v43 = sub_1005FE904();
  [v3 setOverrideTraitCollection:v43 forChildViewController:v25];

  v44 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController] = v25;

LABEL_32:
  [*&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl] setSelectedSegmentIndex:a2];
  v45 = [v3 view];
  if (!v45)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v46 = v45;
  [v45 bringSubviewToFront:*&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerBackgroundView]];
}

void sub_1005FE070()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments;
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    v48 = v2;
    v5 = sub_100754664();
    v2 = v48;
    if (v5 >= 4)
    {
LABEL_3:

      goto _objc_release_x1;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= 4)
    {
      goto LABEL_3;
    }
  }

  v49 = v2;
  v6 = sub_1007537B4();

  if (v6)
  {
    v7 = *&v1[v3];
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = &selRef_initWithTitle_style_target_action_;
      if (!v8)
      {
        goto LABEL_36;
      }

      goto LABEL_10;
    }

    v5 = sub_100754664();
    v8 = v5;
    v9 = &selRef_initWithTitle_style_target_action_;
    if (v5)
    {
LABEL_10:
      if (v8 >= 1)
      {
        v46 = v7 & 0xC000000000000001;
        v47 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_columnViewControllers;

        v10 = 0;
        v44 = xmmword_1007A7210;
        v45 = v3;
        while (1)
        {
          if (v46)
          {
            v11 = sub_100754574();
          }

          else
          {
            v11 = *(v7 + 8 * v10 + 32);
          }

          v50 = v10;
          v12 = *(v11 + 56);
          if (v12)
          {
            v13 = *(v11 + 56);
          }

          else
          {
            v14 = (*(v11 + 40))();
            v15 = *(v11 + 56);
            *(v11 + 56) = v14;
            v13 = v14;

            v12 = 0;
          }

          v16 = v12;
          v17 = [v13 parentViewController];
          if (!v17 || (v18 = v17, sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr), v19 = v1, v20 = sub_100753FC4(), v18, v19, (v20 & 1) == 0))
          {
            [v1 addChildViewController:{v13, v44}];
            v5 = [v1 v9[134]];
            if (!v5)
            {
              goto LABEL_43;
            }

            v21 = v5;
            v5 = [v13 v9[134]];
            if (!v5)
            {
              goto LABEL_44;
            }

            v22 = v5;
            [v21 addSubview:v5];

            swift_getObjectType();
            v23 = swift_conformsToProtocol2();
            if (v23 && v13)
            {
              v24 = v23;
              ObjectType = swift_getObjectType();
              v26 = v8;
              v27 = v9;
              v28 = v7;
              v29 = *(v24 + 16);
              v30 = v1;
              v31 = v13;
              v29(v1, &off_10087DA28, ObjectType, v24);
              v7 = v28;
              v9 = v27;
              v8 = v26;
              v3 = v45;
            }
          }

          v32 = [v1 traitCollection];
          v33 = *&v1[v3];
          v34 = v47;
          if (v33 >> 62)
          {
            if (sub_100754664() >= 4)
            {
LABEL_27:

LABEL_31:
              v39 = [v1 traitCollection];
              goto LABEL_32;
            }
          }

          else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
          {
            goto LABEL_27;
          }

          v35 = sub_1007537B4();

          if ((v35 & 1) == 0)
          {
            goto LABEL_31;
          }

          sub_10000C518(&unk_1009231A0, qword_1007A5810);
          v36 = swift_allocObject();
          *(v36 + 16) = v44;
          *(v36 + 32) = [v1 traitCollection];
          v37 = objc_opt_self();
          *(v36 + 40) = [v37 traitCollectionWithHorizontalSizeClass:1];
          sub_100016C60(0, &qword_1009239F8, UITraitCollection_ptr);
          isa = sub_100753294().super.isa;

          v39 = [v37 traitCollectionWithTraitsFromCollections:isa];

          v34 = v47;
LABEL_32:
          [v1 setOverrideTraitCollection:v39 forChildViewController:v13];

          swift_beginAccess();
          v40 = v13;
          sub_100753284();
          if (*((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();
          swift_endAccess();

          v10 = v50 + 1;

          if (v8 == v50 + 1)
          {

            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
_objc_release_x1:
      _objc_release_x1(v5, v2);
      return;
    }

LABEL_36:
    v41 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl];
    if (v41)
    {
      v42 = v41;
      v5 = [v1 v9[134]];
      if (!v5)
      {
        goto LABEL_45;
      }

      v43 = v5;
      [v5 bringSubviewToFront:v42];
    }
  }
}

void sub_1005FE5F8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl;
  if (!*(v0 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl))
  {
    v2 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v2 addTarget:v0 action:"takeSelectedIndexFrom:" forControlEvents:4096];
    [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerBackgroundView) addSubview:v2];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }
}

void sub_1005FE6B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl);
  if (v1)
  {
    v9 = v1;
    [v9 removeAllSegments];
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments);
    v8 = v0;
    if (v2 >> 62)
    {
      goto LABEL_21;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v3)
    {
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = sub_100754574();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v3 = sub_100754664();
            goto LABEL_4;
          }

          v6 = *(v2 + 8 * v4 + 32);

          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_15;
          }
        }

        if (*(v6 + 24))
        {

          v5 = sub_100753064();
        }

        else
        {
          v5 = 0;
        }

        [v9 insertSegmentWithTitle:v5 atIndex:v4 animated:{0, v8}];

        ++v4;
      }

      while (v7 != v3);
    }

    [v9 setSelectedSegmentIndex:*(v8 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedIndex)];
  }
}

id sub_1005FE904()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v3 >> 62)
  {
    if (sub_100754664() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    goto LABEL_7;
  }

  v4 = sub_1007537B4();

  if (v4)
  {
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A7210;
    *(v5 + 32) = [v1 traitCollection];
    v6 = objc_opt_self();
    *(v5 + 40) = [v6 traitCollectionWithHorizontalSizeClass:1];
    sub_100016C60(0, &qword_1009239F8, UITraitCollection_ptr);
    isa = sub_100753294().super.isa;

    v8 = [v6 traitCollectionWithTraitsFromCollections:isa];

    return v8;
  }

LABEL_7:
  v10 = [v1 traitCollection];

  return v10;
}

void sub_1005FEA98()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SegmentedViewController();
  v46.receiver = v0;
  v46.super_class = v6;
  objc_msgSendSuper2(&v46, "viewWillLayoutSubviews");
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 bounds];
  v45 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v1 pageMarginInsets];
  v17 = v16;
  v44 = v18;
  v19 = [v1 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  [v21 layoutFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v47.origin.x = v23;
  v47.origin.y = v25;
  v47.size.width = v27;
  v47.size.height = v29;
  MinY = CGRectGetMinY(v47);
  v31 = v45;
  v33 = sub_1005FEE50(v45, v11, v13, v15, MinY, v17, v32, v44);
  v35 = v34;
  v36 = [v1 traitCollection];
  LOBYTE(v21) = sub_1007537D4();

  v37 = 0.0;
  if (v21)
  {
    if (qword_100921708 != -1)
    {
      swift_once();
    }

    v38 = sub_100750B04();
    sub_10000D0FC(v38, qword_100982098);
    sub_1007502D4();
    sub_100750564();
    v37 = v39;
    (*(v3 + 8))(v5, v2);
  }

  v40 = [v1 traitCollection];
  v41 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v41 >> 62)
  {
    v42 = sub_100754664();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 < 4)
  {
    v43 = sub_1007537B4();

    if (v43)
    {
      sub_1005FF374(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
      return;
    }
  }

  else
  {
  }

  sub_1005FF1DC(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
}

double sub_1005FEE50(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v32 = a8;
  v33 = a5;
  v14 = sub_100754724();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  Width = CGRectGetWidth(v34);
  v19 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerView);
  if (v19)
  {
    v20 = v19;
    [v20 sizeThatFits:{a3, a4, *&v32, *&v33}];
    v22 = v21;
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetWidth(v35);
    sub_100753B24();
    [v20 setFrame:?];

    v23 = v22 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl);
  if (v24)
  {
    v25 = v24;
    if ([v25 numberOfSegments] < 2)
    {
      [v25 setHidden:1];
    }

    else
    {
      v26 = v25;
      [v26 setHidden:0];
      [v26 sizeThatFits:{a3, a4}];
      v28 = v27;
      v36.origin.x = a1;
      v36.origin.y = a2;
      v36.size.width = a3;
      v36.size.height = a4;
      CGRectGetWidth(v36);
      sub_100753B24();
      [v26 setFrame:?];

      v23 = v23 + v28;
    }
  }

  if (v23 >= COERCE_DOUBLE(1))
  {
    if (qword_100921708 != -1)
    {
      swift_once();
    }

    v29 = sub_100750B04();
    sub_10000D0FC(v29, qword_100982098);
    sub_1007502D4();
    sub_100750564();
    (*(v15 + 8))(v17, v14);
  }

  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  CGRectGetMinX(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetMinY(v38);
  v30 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerBackgroundView);
  sub_100753B24();
  [v30 setFrame:?];
  return Width;
}

void sub_1005FF1DC(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController];
  if (v9)
  {
    v18 = v9;
    v19 = [v18 view];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 setFrame:{a1, a2, a3, a4}];

    v21 = [v18 contentScrollView];
    if (v21)
    {
      v22 = v21;
      if ([v21 contentInsetAdjustmentBehavior] != 2)
      {
        [v22 setContentInset:{a5, a6, a7, a8}];
        [v22 setScrollIndicatorInsets:{a5, a6, a7, a8}];
      }

      v23 = v22;
      [v8 setContentScrollView:v23 forEdge:15];
    }
  }

  *&v8[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_multipleScrollObserver] = 0;

  v24 = &v8[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  *v24 = 0;
  v24[8] = 1;

  sub_1005FFA3C();
}

void sub_1005FF374(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  [v8 pageMarginInsets];
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetWidth(v39);
  sub_10016D1E4(v13);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_columnViewControllers;
  swift_beginAccess();
  v38 = v8;
  if (*&v8[v14] >> 62)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v33 = v14;
    v15 = *&v38[v14];
    v16 = v15 >> 62 ? sub_100754664() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v16)
    {
      break;
    }

LABEL_20:

    v26 = *&v38[v33];
    v14 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      v27 = sub_100754664();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = 0;
    while (1)
    {
      if (v27 == v28)
      {

        sub_1005FF874(_swiftEmptyArrayStorage);

        return;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = sub_100754574();
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = [v29 contentScrollView];

      ++v28;
      if (v32)
      {
        sub_100753284();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v28 = v31;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    sub_100754664();
  }

  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = sub_100754574();
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v20 = *(v15 + 8 * v17 + 32);
    }

    v19 = v20;
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_36;
    }

    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    CGRectGetMinX(v40);
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    CGRectGetMinY(v41);
    v42.origin.x = a1;
    v42.origin.y = a2;
    v42.size.width = a3;
    v42.size.height = a4;
    CGRectGetHeight(v42);
    v21 = [v19 view];
    if (!v21)
    {
      break;
    }

    v22 = v21;
    sub_100753B24();
    [v22 setFrame:?];

    v23 = [v19 contentScrollView];
    if (v23)
    {
      v24 = v23;
      if ([v23 contentInsetAdjustmentBehavior] != 2)
      {
        [v24 contentInset];
        [v24 setContentInset:{a5, a6, a7, a8}];
        [v24 setScrollIndicatorInsets:{a5, a6, a7, a8}];
        [v24 contentOffset];
        [v24 setContentOffset:?];
      }

      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v18 = [v25 collectionViewLayout];
        [v18 invalidateLayout];
      }

      else
      {
        v18 = v19;
        v19 = v24;
      }
    }

    ++v17;
    if (v14 == v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_1005FF874(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (!sub_100754664())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  type metadata accessor for MultipleScrollObserver();
  v3 = swift_allocObject();
  v3[2] = a1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[3] = sub_1005FFFB8;
  v3[4] = v4;

  sub_1000164A8(0, 0);

  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_multipleScrollObserver) = v3;
}

void sub_1005FF96C(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_navigationBarAppearanceProgress], v5 = Strong[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_navigationBarAppearanceProgress + 8], Strong, v5 != 1))
  {
    if (v4 == a2)
    {
      return;
    }
  }

  else if (a2 == 1.79769313e308)
  {
    return;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = v6 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_navigationBarAppearanceProgress;
    *v8 = a2;
    *(v8 + 8) = 0;
    sub_1005FFA3C();
  }
}

void sub_1005FFA3C()
{
  v1 = v0[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_navigationBarAppearanceProgress + 8];
  if (v1)
  {
    v2 = [v0 navigationItem];
    v3 = [v2 _isManualScrollEdgeAppearanceEnabled];

    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  v5 = [v0 navigationItem];
  [v5 _manualScrollEdgeAppearanceProgress];
  v7 = v6;

  if (v7 != v4)
  {
    v8 = [v0 navigationItem];
    [v8 _setManualScrollEdgeAppearanceProgress:v4];
  }

  v9 = [v0 navigationItem];
  v10 = [v9 _isManualScrollEdgeAppearanceEnabled];

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v11 = [v0 navigationItem];
    [v11 _setManualScrollEdgeAppearanceEnabled:v1 ^ 1u];
  }
}

id sub_1005FFBAC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerBackgroundView;
  *&v3[v6] = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerView] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedIndex] = -1;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_multipleScrollObserver] = 0;
  v7 = &v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  *v7 = 0;
  v7[8] = 1;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_columnViewControllers] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl] = 0;
  if (a2)
  {
    v8 = sub_100753064();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SegmentedViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1005FFD3C(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerBackgroundView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerView] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedIndex] = -1;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_multipleScrollObserver] = 0;
  v4 = &v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_columnViewControllers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SegmentedViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1005FFE68(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SegmentedViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005FFF80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1005FFFC0(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v5 >> 62)
  {
    if (sub_100754664() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    return a1;
  }

  v6 = sub_1007537B4();

  if (v6)
  {
    [v2 pageMarginInsets];
    v8 = v7;
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = sub_1007537B4();

    if (v12)
    {
      [v2 pageContainerSize];
      sub_1001D7694(v13, v14);
      v17 = v15 + v15 + sub_10016D1E4(v16);
    }

    else
    {
      [v2 pageMarginInsets];
      v19 = v18;
      v21 = v20;
      [v2 pageContainerSize];
      v17 = v22 - v19 - v21;
    }

    v23 = a1 - v8;
    v24 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_columnViewControllers;
    swift_beginAccess();
    v25 = *&v2[v24];
    if (v25 >> 62)
    {
      v26 = sub_100754664();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v23 - v10;
    if (v26 >= 1)
    {
      return a1 / v26 - v17 / v26;
    }
  }

  return a1;
}

double sub_10060018C(uint64_t a1)
{
  v2 = sub_100743CB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  (*(v7 + 8))(v9, v6);
  sub_1005C15C8(a1, v5);
  sub_100747BA4();
  sub_100743C54();
  v11 = v10;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  return v11;
}

double sub_1006003A4()
{
  v0 = sub_100747C14();
  v57 = *(v0 - 8);
  v58 = v0;
  __chkstk_darwin(v0);
  v2 = &v53[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_100743CB4();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v59 = &v53[-v6];
  __chkstk_darwin(v7);
  v9 = &v53[-v8];
  v10 = sub_10074F704();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v12 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53[-v15];
  sub_10074ECD4();
  sub_100600AB4(&qword_100928558, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  sub_1007468B4();
  if (!v65)
  {
    return 0.0;
  }

  v64 = v65;

  sub_10000C518(&qword_1009253C0, &unk_1007A8D20);
  if (swift_dynamicCast())
  {
    sub_10000C888(&v65, *(&v66 + 1));
    v54 = sub_10074CA24();
    sub_10000C620(&v65);
  }

  else
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    sub_1001EB2A8(&v65);
    v54 = 0;
  }

  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v14 + 8))(v16, v13);
  if (v65 == 1)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    v19 = v18;
    v21 = v20;
    (*(v55 + 8))(v12, v56);
    sub_100746884();
    sub_1005C15C8(v2, v9);
    (*(v57 + 8))(v2, v58);
    v22 = sub_10007DC04();
    swift_getObjectType();
    sub_1006485E8(v9, v22, v19, v21);
    v17 = v23;

    swift_unknownObjectRelease();
    (*(v61 + 8))(v9, v62);
  }

  else
  {
    v24 = ASKDeviceTypeGetCurrent();
    v25 = sub_100753094();
    v27 = v26;
    v28 = sub_100753094();
    v30 = v61;
    if (v25 != v28 || v27 != v29)
    {
      sub_100754754();
    }

    sub_100746884();
    v31 = v59;
    sub_1005C15C8(v2, v59);
    (*(v57 + 8))(v2, v58);
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    v33 = v32;
    v35 = v34;
    (*(v55 + 8))(v12, v56);
    v36 = v62;
    (*(v30 + 16))(v60, v31, v62);
    v37 = sub_10007DC04();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v41 = sub_10074ECB4();
    v43 = v42;
    v44 = sub_10074ECC4();
    if (v44)
    {
    }

    v45 = v44 != 0;
    ObjectType = swift_getObjectType();
    v47 = sub_10007DC04();
    swift_getObjectType();
    v48 = sub_100321BB0(v47);
    swift_unknownObjectRelease();
    v49 = v60;
    sub_100647CF4(v60, v37, v41, v43, v45, v48, v54 & 1, v63, v33, v35, UIEdgeInsetsZero.top, left, bottom, right, ObjectType);
    v17 = v50;

    swift_unknownObjectRelease();

    v51 = *(v30 + 8);
    v51(v49, v36);
    v51(v59, v36);
  }

  return v17;
}

uint64_t sub_100600AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100600B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, __n128 a8, uint64_t a9, uint64_t a10)
{
  v28 = a6;
  v27 = a5;
  v25 = a3;
  v26 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_100754284();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v19);
  v21 = &v25 - v20;
  sub_10000C824(a1, v29);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  v22 = swift_dynamicCast();
  v23 = *(v18 + 56);
  if (v22)
  {
    v23(v17, 0, 1, AssociatedTypeWitness);
    (*(v18 + 32))(v21, v17, AssociatedTypeWitness);
    (*(a10 + 128))(v21, a2, v25, v26, v27, v28, a7, a10);
    return (*(v18 + 8))(v21, AssociatedTypeWitness);
  }

  else
  {
    v23(v17, 1, 1, AssociatedTypeWitness);
    return (*(v15 + 8))(v17, v14);
  }
}

double sub_100600D80(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectRetain();
  sub_10000C518(&unk_100940C10, qword_1007CD718);
  if (swift_dynamicCast())
  {
    (*(a6 + 136))(v10, a3 & 1, a4, a6);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100600E2C(uint64_t a1)
{
  swift_getObjectType();

  return swift_dynamicCastClass();
}

double sub_100600EFC(uint64_t a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v6 = v4;
    if (a3)
    {
      swift_unknownObjectRetain();
      sub_1001B7D44(v6);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

double sub_10060104C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100600D80(a1, a2, a3 & 1, a4, v8, WitnessTable);
}

double sub_100601110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10000C824(a1, v17);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  a9(0);
  if (swift_dynamicCast())
  {
    a10(v16, a2, a3, a4, a5, a6);
  }

  return result;
}

void sub_1006011DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  sub_10000C824(a1, v23);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074A124();
  if (swift_dynamicCast())
  {
    v6[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_sizeCategory] = a5;
    v9 = a5;
    [v6 setNeedsLayout];
    sub_10050A2DC(a2);
    sub_100079410(v10);
    v11 = sub_10074FB24();
    [v6 setBackgroundColor:v11];

    v12 = [v6 traitCollection];
    if (v9 != 4)
    {
      sub_10074F694();
      sub_10074F694();
    }

    [v12 layoutDirection];
    sub_1007539B4();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v6 setLayoutMargins:{v14, v16, v18, 15.0}];
    v19 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension26TodayCardActionOverlayView_label];
    sub_10074A114();
    sub_10074ECB4();
    v21 = v20;

    if (v21)
    {
      v22 = sub_100753064();
    }

    else
    {
      v22 = 0;
    }

    [v19 setText:v22];
  }
}

void sub_1006013FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v9 = sub_10074F964();
  v55 = *(v9 - 8);
  __chkstk_darwin(v9);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100923E58, &unk_1007A7200);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  v14 = sub_10074FB54();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, aBlock);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074B924();
  if (!swift_dynamicCast())
  {
    return;
  }

  v50 = v9;
  v18 = a4;
  v53 = aBlock[6];
  sub_10074B904();
  v19 = *(v15 + 48);
  if (v19(v13, 1, v14) == 1)
  {
    (*(v15 + 16))(v17, a3, v14);
    if (v19(v13, 1, v14) != 1)
    {
      sub_100601B0C(v13);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
  }

  v20 = v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_sizeCategory] = a4;
  if (a4 == 7)
  {
    if (v20 == 7)
    {
      goto LABEL_11;
    }
  }

  else if (v20 != 7)
  {
    switch(a4)
    {
      case 6u:
        if (v20 == 6)
        {
          goto LABEL_11;
        }

        break;
      case 5u:
        if (v20 == 5)
        {
          goto LABEL_11;
        }

        break;
      case 4u:
        if (v20 == 4)
        {
          goto LABEL_11;
        }

        break;
      default:
        if ((v20 - 7) <= 0xFFFFFFFC && v20 == a4)
        {
          goto LABEL_11;
        }

        break;
    }
  }

  [v5 setNeedsLayout];
LABEL_11:
  v51 = v15;
  v52 = v14;
  v21 = sub_10074FB24();
  [v5 setBackgroundColor:v21];

  v22 = [v5 traitCollection];
  if (v18 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v22 layoutDirection];
  sub_1007539B4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v5 setLayoutMargins:{v24, v26, v28, v30}];
  sub_10074B914();
  v49 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension29TodayCardParagraphOverlayView_label];
  v31 = sub_10074F914();
  v32 = [v5 traitCollection];
  v33 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v31];
  v34 = [v31 length];
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = v32;
  *(v35 + 32) = v33;
  *(v35 + 40) = 1;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_100047814;
  *(v36 + 24) = v35;
  aBlock[4] = sub_1000B18A8;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  aBlock[3] = &unk_10087DAB0;
  v37 = _Block_copy(aBlock);
  v38 = v32;
  v39 = v33;

  [v31 enumerateAttributesInRange:0 options:v34 usingBlock:{0x100000, v37}];

  _Block_release(v37);
  LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

  if (v37)
  {
    __break(1u);
  }

  else
  {
    v40 = v49;
    [v49 setAttributedText:v39];

    v41 = v54;
    sub_10074F974();
    v42 = v55;
    v43 = v50;
    v44 = (*(v55 + 88))(v41, v50);
    if (v44 == enum case for Paragraph.Alignment.left(_:))
    {
      v45 = 0;
      v47 = v51;
      v46 = v52;
    }

    else
    {
      v47 = v51;
      v46 = v52;
      if (v44 == enum case for Paragraph.Alignment.center(_:))
      {
        v45 = 1;
      }

      else if (v44 == enum case for Paragraph.Alignment.right(_:))
      {
        v45 = 2;
      }

      else if (v44 == enum case for Paragraph.Alignment.justified(_:))
      {
        v45 = 3;
      }

      else if (v44 == enum case for Paragraph.Alignment.localized(_:))
      {
        v45 = 4;
      }

      else
      {
        (*(v42 + 8))(v41, v43);
        v45 = 0;
      }
    }

    [v40 setTextAlignment:v45];
    v48 = sub_10074FB34();
    [v40 setTextColor:v48];

    (*(v47 + 8))(v17, v46);
  }
}

uint64_t sub_100601B0C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100923E58, &unk_1007A7200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100601B74()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_100601BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_100601BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = sub_10074FB54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v31);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074CA84();
  if (!swift_dynamicCast())
  {
    return;
  }

  v15 = v5[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v15 == 7)
    {
      goto LABEL_7;
    }
  }

  else if (v15 != 7)
  {
    switch(a5)
    {
      case 6:
        if (v15 == 6)
        {
          goto LABEL_7;
        }

        break;
      case 5:
        if (v15 == 5)
        {
          goto LABEL_7;
        }

        break;
      case 4:
        if (v15 == 4)
        {
          goto LABEL_7;
        }

        break;
      default:
        if ((v15 - 7) <= 0xFFFFFFFC && v15 == a5)
        {
          goto LABEL_7;
        }

        break;
    }
  }

  [v5 setNeedsLayout];
LABEL_7:
  v16 = [v5 traitCollection];
  if (a5 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v16 layoutDirection];
  sub_1007539B4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v5 setLayoutMargins:{v18, v20, v22, v24}];
  v25 = sub_10056AD50(a4);
  [v6 setBackgroundColor:v25];

  (*(v12 + 104))(v14, enum case for TodayCard.Style.white(_:), v11);
  sub_1000F8684();
  sub_100753274();
  sub_100753274();
  if (v31[0] == v30[1] && v31[1] == v30[2])
  {
    v26 = 1;
  }

  else if (sub_100754754())
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  (*(v12 + 8))(v14, v11);

  [v6 setOverrideUserInterfaceStyle:v26];
  v27 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  v28 = sub_10074CA74();
  sub_100117C00(v28, a2);

  sub_10064962C();
}

void sub_100601F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  sub_10000C824(a1, v21);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  sub_10074CA84();
  if (!swift_dynamicCast())
  {
    return;
  }

  v8 = v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v8 == 7)
    {
      goto LABEL_7;
    }
  }

  else if (v8 != 7)
  {
    switch(a5)
    {
      case 6u:
        if (v8 == 6)
        {
          goto LABEL_7;
        }

        break;
      case 5u:
        if (v8 == 5)
        {
          goto LABEL_7;
        }

        break;
      case 4u:
        if (v8 == 4)
        {
          goto LABEL_7;
        }

        break;
      default:
        if ((v8 - 7) <= 0xFFFFFFFC && v8 == a5)
        {
          goto LABEL_7;
        }

        break;
    }
  }

  [v5 setNeedsLayout];
LABEL_7:
  v9 = [v5 traitCollection];
  if (a5 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v9 layoutDirection];
  sub_1007539B4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v5 setLayoutMargins:{v11, v13, v15, v17}];
  v18 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  v19 = sub_10074CA74();
  sub_100117C00(v19, a2);
}

void sub_100602190(void *a1, unint64_t a2)
{
  v7 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v3;
  v5 = a2;
  v4 = a1;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkImages;
  swift_beginAccess();
  v3 = *(v3 + v6);
  v8 = *(v3 + 16);
  v9 = v7 - v8 < 0;
  v10 = v7 <= v8;
  v11 = v7 - v8;
  if (v10)
  {
LABEL_9:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v2[v6] = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_14:
    v3 = sub_10025DAD0(v3);
    *&v2[v6] = v3;
    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (*(v3 + 16) > v5)
      {
        v13 = v3 + 8 * v5;
        v14 = *(v13 + 32);
        *(v13 + 32) = v4;
        *&v2[v6] = v3;
        v15 = v4;
        swift_endAccess();

        [v2 setNeedsLayout];
        return;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v9)
  {
    swift_beginAccess();
    do
    {
      sub_100753284();
      if (*(*&v2[v6] + 16) >= *(*&v2[v6] + 24) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
      --v11;
    }

    while (v11);
    v3 = *&v2[v6];
    swift_endAccess();
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_100602310(uint64_t result, float64x2_t a2, float64_t a3)
{
  v3 = (&unk_1007CD860 + 8 * result);
  a2.f64[1] = a3;
  v4 = vld1q_dup_f64(v3);
  v5 = vdivq_f64(a2, v4);
  __asm { FMOV            V2.2D, #15.0 }

  v11 = vsubq_f64(v5, vrndmq_f64(vdivq_f64(vmulq_f64(v5, _Q2), v4)));
  __asm { FMOV            V1.2D, #1.0 }

  v13 = vrndpq_f64(vaddq_f64(v11, _Q1));
  *&v14 = *&vmulq_laneq_f64(v13, v13, 1);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100602398(uint64_t result, double a2, double a3)
{
  v3 = 8 * result;
  v4.f64[0] = *(&unk_1007CD7C0 + v3);
  v4.f64[1] = *(&unk_1007CD880 + v3);
  v5 = vdupq_lane_s64(*&a3, 0);
  v6 = vaddq_f64(v4, v5);
  v7.f64[0] = *(&unk_1007CD7E0 + v3);
  v7.f64[1] = *(&unk_1007CD8A0 + v3);
  v8 = vaddq_f64(v7, v5);
  v9.f64[0] = *(&unk_1007CD800 + v3);
  v9.f64[1] = *(&unk_1007CD8C0 + v3);
  v10.f64[0] = *(&unk_1007CD820 + v3);
  v10.f64[1] = *(&unk_1007CD8E0 + v3);
  v11 = vdupq_lane_s64(*&a2, 0);
  v12 = vsubq_f64(v6, vmulq_f64(vsubq_f64(v9, v11), vdivq_f64(vsubq_f64(v6, v8), vsubq_f64(v9, v10))));
  v13 = vsubq_f64(v11, v10);
  v14 = vsubq_f64(v12, v8);
  v15 = vsqrtq_f64(vaddq_f64(vmulq_f64(v13, v13), vmulq_f64(v14, v14)));
  v16 = *(&unk_1007CD860 + v3);
  if (v15.f64[0] <= v15.f64[1])
  {
    v15.f64[0] = v15.f64[1];
  }

  v17 = ceil(v15.f64[0] / (v16 + 15.0));
  v18 = floor(dbl_1007CD840[result] / v16) + v17 + v17;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v18 < 9.22337204e18)
  {
    return v18;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1006024E0()
{
  v0 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  sub_100039C50(v0, qword_100940C20);
  sub_10000D0FC(v0, qword_100940C20);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  return sub_100743474();
}

void sub_100602594()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  v2 = v0[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v23, "frame");
  v4.f64[0] = v3;
  v6 = sub_100602310(v2, v4, v5);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 48) + ((v13 << 9) | (8 * v15)));
    if (v16 >= v6)
    {
      swift_beginAccess();
      v17 = sub_100412104(v16);
      if (v18)
      {
        v19 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *&v1[v7];
        *&v1[v7] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100675720();
        }

        v22 = *(*(v21 + 56) + 8 * v19);
        sub_1003DE2F8();
        *&v1[v7] = v21;
        swift_endAccess();
        [v22 removeFromSuperview];
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_100602764()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkImages;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages);
  v4 = v3 - v2;
  if (v3 > v2)
  {
    if (v3 - v2 < 0)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      do
      {
        sub_100753284();
        if (*(*(v0 + v1) + 16) >= *(*(v0 + v1) + 24) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        --v4;
      }

      while (v4);
      swift_endAccess();
    }
  }
}

char *sub_100602928(char a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = sub_100743584();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkViews;
  *&v5[v16] = sub_10041513C(_swiftEmptyArrayStorage);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_showBorder] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_isLazyLayoutEnabled] = 1;
  v17 = &v5[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_lastVisibleBounds];
  *v17 = 0u;
  v17[1] = 0u;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType] = a1;
  v18 = sub_10041513C(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *&v5[v16] = v18;

  *&v5[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkImages] = _swiftEmptyArrayStorage;
  v19 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_contentView] = v19;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_imageBorderView] = [objc_allocWithZone(sub_100742C04()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v31, "initWithFrame:", a2, a3, a4, a5);
  v21 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_contentView];
  v22 = v20;
  [v22 addSubview:v21];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_imageBorderView;
  v24 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_imageBorderView];
  sub_1007433C4();
  v25 = v24;
  sub_100743244();
  sub_100742BF4();

  v26 = *&v22[v23];
  sub_100743234();
  sub_100742BE4();

  v27 = *&v22[v23];
  (*(v13 + 104))(v15, enum case for CornerStyle.arc(_:), v12);
  v28 = v27;
  sub_100744CE4();

  (*(v13 + 8))(v15, v12);
  [v22 addSubview:*&v22[v23]];
  [v22 setClipsToBounds:1];

  return v22;
}

id sub_100602D04()
{
  ObjectType = swift_getObjectType();
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews");
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType;
  v26.receiver = v0;
  v26.super_class = ObjectType;
  v5 = v0[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v26, "frame");
  v8 = sub_100602398(v5, v6, v7);
  if (v0[v4] == 3)
  {
    v10 = sub_100603840(v8, v9);
  }

  else
  {
    v10 = sub_100603C1C(v8, v9);
  }

  v11 = v10;
  [v0 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_contentView];
  [v20 setBounds:?];
  [v0 center];
  [v20 setCenter:?];
  if (qword_100921A58 != -1)
  {
    swift_once();
  }

  v21 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  sub_10000D0FC(v21, qword_100940C20);
  *&v24.a = v0;
  v22 = v0;
  sub_100743464();

  CGAffineTransformMakeRotation(&v24, angle);
  [v20 setTransform:&v24];
  [*&v22[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_imageBorderView] setFrame:{v13, v15, v17, v19}];
  sub_100603D9C(v11);
  sub_1006040FC(v11);

  return [v2 setAnimationsEnabled:v3];
}

void sub_100602F9C()
{
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_isLazyLayoutEnabled) == 1 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (Strong, (v2 = [v0 window]) != 0))
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v3;
    [v12 convertRect:v0 fromCoordinateSpace:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    v34 = CGRectIntersection(v33, v35);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!CGRectIsEmpty(v34))
    {
      [v12 convertRect:v0 toCoordinateSpace:{x, y, width, height}];
    }
  }

  else
  {
    [v0 bounds];
  }
}

void sub_100603160()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(v3 + 56) + ((v9 << 9) | (8 * v10)));
    sub_100743344();
    [v11 setHidden:1];
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v12 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkImages;
      swift_beginAccess();
      *(v1 + v12) = _swiftEmptyArrayStorage;

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1006032B4()
{
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_isLazyLayoutEnabled] != 1)
  {
LABEL_8:
    v6 = 0;
LABEL_9:

    sub_100603438(v6);
    return;
  }

  v1 = [v0 superview];
  if (!v1)
  {
LABEL_6:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_8;
  }

  v2 = v1;
  while (1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      break;
    }

    v4 = [v2 superview];

    v2 = v4;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v7 = v3;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8 || (v9 = v8, sub_100016C60(0, &qword_100929830, UICollectionView_ptr), v11 = v2, v10 = sub_100753FC4(), v11, v9, (v10 & 1) == 0))
  {
    v6 = v7;
    goto LABEL_9;
  }
}

void sub_100603438(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _removeScrollViewScrollObserver:v1];
  }

  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _addScrollViewScrollObserver:v1];
  }
}

void sub_1006034F0(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_1006032B4();
}

unint64_t sub_100603724()
{
  result = qword_100940CB0;
  if (!qword_100940CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100940CB0);
  }

  return result;
}

void sub_100603778()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkViews;
  *(v0 + v1) = sub_10041513C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_showBorder) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_isLazyLayoutEnabled) = 1;
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_lastVisibleBounds);
  *v2 = 0u;
  v2[1] = 0u;
  swift_unknownObjectWeakInit();
  sub_100754644();
  __break(1u);
}

char *sub_100603840(uint64_t a1, unint64_t a2)
{
  v7 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    goto LABEL_61;
  }

  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v9 = v8 * v7;
  if ((v8 * v7) >> 64 != (v8 * v7) >> 63)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (__OFSUB__(v9, 3))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v9 - 3 > 0)
  {
    v10 = v7 / 2;
    v40 = v8 / 2;
    v11 = 1;
    v38 = a1;
    v39 = a2;
    v12 = sub_100256608(0, 1, 1, _swiftEmptyArrayStorage);
    v13 = v10;
    v2 = v12;
    a1 = v38;
    a2 = v39;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = v9 - 2;
    while (1)
    {
      v4 = (v16 + v13);
      if (__OFADD__(v16, v13))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v5 = v15 + v40;
      if (__OFADD__(v15, v40))
      {
        goto LABEL_56;
      }

      v6 = *(v2 + 2);
      v18 = *(v2 + 3);
      v3 = v6 + 1;
      if (v6 >= v18 >> 1)
      {
        v22 = v2;
        v23 = v13;
        v24 = sub_100256608((v18 > 1), v6 + 1, 1, v22);
        v13 = v23;
        v2 = v24;
        a1 = v38;
        a2 = v39;
      }

      *(v2 + 2) = v3;
      v19 = &v2[16 * v6];
      *(v19 + 4) = v4;
      *(v19 + 5) = v5;
      if (v16 < 1)
      {
        if (v16 < 0)
        {
          if (v15 != v16 && (v16 ^ v15) != 0xFFFFFFFFFFFFFFFFLL)
          {
            goto LABEL_23;
          }
        }

        else if (v15 != v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (__OFSUB__(0, v15))
        {
          goto LABEL_59;
        }

        if (v15 != v16 && -v15 != v16)
        {
          goto LABEL_23;
        }
      }

      v20 = -v11;
      if (__OFSUB__(0, v11))
      {
        goto LABEL_60;
      }

      v11 = v14;
      v14 = v20;
LABEL_23:
      v21 = __OFADD__(v16, v14);
      v16 += v14;
      if (v21)
      {
        goto LABEL_57;
      }

      v21 = __OFADD__(v15, v11);
      v15 += v11;
      if (v21)
      {
        goto LABEL_58;
      }

      if (--v17 <= 1)
      {
        goto LABEL_28;
      }
    }
  }

  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
LABEL_28:
  if (v3 >= 4)
  {
    v3 = a1 * a2;
    if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
    {
      v25 = sub_10018A9E8();
      v4 = v26;
      v5 = v27;
      v6 = v28;
      if (v28)
      {
        sub_100754774();
        swift_unknownObjectRetain_n();

        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          swift_unknownObjectRelease();
          v30 = _swiftEmptyArrayStorage;
        }

        v31 = v30[2];

        if (__OFSUB__(v6 >> 1, v5))
        {
          goto LABEL_75;
        }

        if (v31 != (v6 >> 1) - v5)
        {
          goto LABEL_76;
        }

        v4 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v4)
        {
          goto LABEL_40;
        }

        v4 = _swiftEmptyArrayStorage;
        goto LABEL_39;
      }

      while (1)
      {
        sub_100631960(v25, v4, v5, v6);
        v4 = v29;
LABEL_39:
        swift_unknownObjectRelease();
LABEL_40:
        v32 = *(v4 + 2);
        v5 = v32 - 2;
        if (v32 < 2)
        {
LABEL_66:
          __break(1u);
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v4;
          if (!isUniquelyReferenced_nonNull_native || v5 > *(v4 + 3) >> 1)
          {
            v4 = sub_100256608(isUniquelyReferenced_nonNull_native, v32, 1, v4);
            v41 = v4;
          }

          sub_10015DBE4(0, 2, 0);
          a2 = *(v4 + 2);
          if (a2 >= 2)
          {
            v41 = v4;
            if (a2 - 1 <= *(v4 + 3) >> 1)
            {
              goto LABEL_46;
            }

            goto LABEL_68;
          }
        }

        __break(1u);
LABEL_68:
        v4 = sub_100256608(1, a2, 1, v4);
        v41 = v4;
LABEL_46:
        v25 = &v41;
        sub_10015DBE4(1uLL, 2, 0);
        v41 = v4;
        v34 = v3 + 2;
        if (__OFADD__(v3, 2))
        {
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

        if (v34 < v3)
        {
          goto LABEL_70;
        }

        v21 = __OFADD__(v34, 1);
        v35 = v3 + 3;
        if (v21)
        {
          goto LABEL_71;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }

        v36 = *(v2 + 2);
        if (v36 < v3 || v36 < v35)
        {
          goto LABEL_73;
        }

        if ((v35 & 0x8000000000000000) == 0)
        {
          sub_1004A0528(v2, (v2 + 32), v3, (2 * v35) | 1);
          return v41;
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        swift_unknownObjectRelease();
      }
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  return v2;
}

uint64_t sub_100603C1C(uint64_t result, uint64_t a2)
{
  v2 = a2 * result;
  if ((a2 * result) >> 64 != (a2 * result) >> 63)
  {
    goto LABEL_31;
  }

  if (v2 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = result / 2;
  v4 = a2 / 2;
  result = sub_100256608(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = v3;
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = v2 + 1;
  v11 = -1;
  while (1)
  {
    v12 = v9 + v5;
    if (__OFADD__(v9, v5))
    {
      break;
    }

    if (__OFADD__(v8, v4))
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v20 = v5;
      result = sub_100256608((v13 > 1), v14 + 1, 1, v6);
      v5 = v20;
      v6 = result;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v8 + v4;
    if (v9 < 0)
    {
      v17 = -v9;
      if (__OFSUB__(0, v9))
      {
        goto LABEL_30;
      }

      if (v8 != v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = v8 == v9;
      if (!v9)
      {
        goto LABEL_15;
      }

      if (v8 != v9)
      {
        v17 = 1 - v9;
LABEL_14:
        v16 = v8 == v17;
LABEL_15:
        if (!v16)
        {
          goto LABEL_19;
        }
      }
    }

    v18 = -v11;
    if (__OFSUB__(0, v11))
    {
      goto LABEL_29;
    }

    v11 = v7;
    v7 = v18;
LABEL_19:
    v19 = __OFADD__(v9, v7);
    v9 += v7;
    if (v19)
    {
      goto LABEL_27;
    }

    v19 = __OFADD__(v8, v11);
    v8 += v11;
    if (v19)
    {
      goto LABEL_28;
    }

    if (--v10 <= 1)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100603D9C(int64x2_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType;
  v46.receiver = v2;
  v46.super_class = ObjectType;
  v6 = v2[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType];
  [(int64x2_t *)&v46 frame];
  result = sub_100602398(v6, v7, v8);
  if (!a1[1].i64[0])
  {
    __break(1u);
    goto LABEL_27;
  }

  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = a1[2];
  v12 = a1[2].i64[0];
  if (v12 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_31;
  }

  v13 = v12 % result;
  _VF = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (_VF)
  {
    goto LABEL_28;
  }

  if (!v10)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (v11.i64[1] == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_32;
  }

  v16 = v11.i64[1] % v10 + 1;
  if (__OFADD__(v11.i64[1] % v10, 1))
  {
    goto LABEL_30;
  }

  v17.f64[0] = v15;
  if (v2[v5] > 1u)
  {
    if (v2[v5] == 2)
    {
      v17.f64[1] = v16;
      __asm { FMOV            V2.2D, #15.0 }

      recta.origin = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x406A000000000000uLL)), vmulq_f64(v17, _Q2));
      y = recta.origin.y;
      v28 = 0x406A000000000000;
LABEL_21:
      v25 = *&v28;
      v26 = [v2 traitCollection];
      goto LABEL_22;
    }
  }

  else if (v2[v5])
  {
    v17.f64[1] = v16;
    __asm { FMOV            V2.2D, #15.0 }

    v22 = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x4067E00000000000uLL)), vmulq_f64(v17, _Q2));
    goto LABEL_18;
  }

  v17.f64[1] = v16;
  __asm { FMOV            V2.2D, #15.0 }

  v22 = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x4056000000000000uLL)), vmulq_f64(v17, _Q2));
  y = v22.y;
  if (v2[v5] > 1u)
  {
    recta.origin = v22;
    goto LABEL_20;
  }

  if (v2[v5])
  {
LABEL_18:
    recta.origin = v22;
    y = v22.y;
LABEL_20:
    v28 = 0x4067E00000000000;
    goto LABEL_21;
  }

  v25 = 88.0;
  v26 = [v2 traitCollection];
LABEL_22:
  v29 = v26;
  v30 = sub_1007537F4();

  if (v30)
  {
    v47.origin.x = recta.origin.x;
    v47.origin.y = y;
    v47.size.width = v25;
    v47.size.height = v25;
    MinX = CGRectGetMinX(v47);
    v48.origin.x = recta.origin.x;
    v48.origin.y = y;
    v48.size.width = v25;
    v48.size.height = v25;
    MaxY = CGRectGetMaxY(v48);
    v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_contentView];
    [v2 convertPoint:v33 fromCoordinateSpace:{MinX, MaxY}];
    v35 = v34;
    v49.origin.x = recta.origin.x;
    v49.origin.y = y;
    v49.size.width = v25;
    v49.size.height = v25;
    MaxX = CGRectGetMaxX(v49);
  }

  else
  {
    v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_contentView];
    [v2 convertPoint:v33 fromCoordinateSpace:{recta.origin.x, y}];
    v35 = v37;
    v50.origin.x = recta.origin.x;
    v50.origin.y = y;
    v50.size.width = v25;
    v50.size.height = v25;
    MaxX = CGRectGetMinX(v50);
  }

  v38 = MaxX;
  v51.origin.x = recta.origin.x;
  v51.origin.y = y;
  v51.size.width = v25;
  v51.size.height = v25;
  [v2 convertPoint:v33 fromCoordinateSpace:{v38, CGRectGetMaxY(v51)}];
  v40 = v39;
  v41 = dbl_1007CD900[v2[v5]];
  *&recta.size.width = v2;
  *&recta.size.height = ObjectType;
  [(CGSize *)&recta.size frame];
  v42 = CGRectGetHeight(v52) - dbl_1007CD920[v2[v5]] - v40;
  [v33 center];
  return [v33 setCenter:{v41 - v35 + v43, v42 + v44}];
}

void sub_1006040FC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType;
  v92.receiver = v2;
  v92.super_class = ObjectType;
  v6 = v2[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v92, "frame");
  v9 = sub_100602398(v6, v7, v8);
  v11 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    goto LABEL_80;
  }

  v12 = v9;
  v13 = v10;
  v91.receiver = v2;
  v91.super_class = ObjectType;
  v14 = v2[v5];
  objc_msgSendSuper2(&v91, "frame");
  v16.f64[0] = v15;
  v87 = sub_100602310(v14, v16, v17);
  sub_100602F9C();
  if (v11 < 0)
  {
LABEL_81:
    __break(1u);
  }

  else
  {
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    if (!v11)
    {
LABEL_68:
      v72 = &v2[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_lastVisibleBounds];
      *v72 = v22;
      v72[1] = v23;
      v72[2] = v24;
      v72[3] = v25;
      return;
    }

    if (v12)
    {
      _ZF = v13 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (!_ZF)
    {
      v85 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkViews;
      v86 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_contentView;
      v88 = a1 + 32;
      v89 = *(a1 + 16);
      v83 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkImages;
      swift_beginAccess();
      v27 = 0;
      v28 = 0;
      v29 = v12 / 2 - 1;
      v30 = v13 / 2;
      v31 = v13 / 2 - 1;
      v32 = v12 * v31;
      v81 = (v12 * v31) >> 64 != (v12 * v31) >> 63;
      v33 = v29 + v12 * v31;
      v34 = __OFADD__(v29, v32);
      v80 = v34;
      v79 = (v12 * v30) >> 64 != (v12 * v30) >> 63;
      _VF = __OFADD__(v29, v12 * v30);
      v36 = v29 + v12 * v30;
      v37 = _VF;
      v75 = v33 + 1;
      v76 = v36;
      v38 = __OFADD__(v33, 1);
      v77 = v38;
      v78 = v37;
      v73 = v36 + 1;
      v39 = __OFADD__(v36, 1);
      v74 = v39;
      __asm { FMOV            V0.2D, #15.0 }

      v82 = v5;
      v84 = v11;
      while (1)
      {
        if (v28 == v89)
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
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
          goto LABEL_81;
        }

        v45 = *(v88 + 16 * v28);
        v46 = *(v88 + 16 * v28);
        if (v46 == 0x8000000000000000 && v12 == -1)
        {
          goto LABEL_72;
        }

        if (__OFADD__(v46 % v12, 1))
        {
          goto LABEL_70;
        }

        if (*(&v45 + 1) == 0x8000000000000000 && v13 == -1)
        {
          goto LABEL_73;
        }

        if (__OFADD__(*(&v45 + 1) % v13, 1))
        {
          goto LABEL_71;
        }

        if (v2[v5] > 1u)
        {
          if (v2[v5] == 2)
          {
            goto LABEL_40;
          }
        }

        else if (v2[v5])
        {
          goto LABEL_40;
        }

        if (v2[v5] > 1u)
        {
          if (v81)
          {
            goto LABEL_74;
          }

          if (v80)
          {
            goto LABEL_75;
          }

          if (v79)
          {
            goto LABEL_76;
          }

          if (v78)
          {
            goto LABEL_77;
          }

          sub_10000C518(&qword_1009253E0, &qword_1007A6970);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1007A5620;
          if (v77)
          {
            goto LABEL_78;
          }

          *(inited + 32) = v75;
          *(inited + 40) = v76;
          if (v74)
          {
            goto LABEL_79;
          }

          *(inited + 48) = v73;
          v48 = sub_1001AA220(inited);
          swift_setDeallocating();
          if (!v48[2])
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

LABEL_40:
        v48 = _swiftEmptySetSingleton;
        if (!_swiftEmptySetSingleton[2])
        {
          goto LABEL_45;
        }

LABEL_41:
        v49 = sub_100754824();
        v50 = -1 << *(v48 + 32);
        v51 = v49 & ~v50;
        if ((*(v48 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51))
        {
          v52 = ~v50;
          while (*(v48[6] + 8 * v51) != v28)
          {
            v51 = (v51 + 1) & v52;
            if (((*(v48 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_25;
        }

LABEL_45:

        v53 = *&v2[v86];
        [v2 convertRect:v53 fromCoordinateSpace:?];
        v95.origin.x = v22;
        v95.origin.y = v23;
        v95.size.width = v24;
        v95.size.height = v25;
        if (!CGRectIntersectsRect(v94, v95) || v27 >= v87)
        {
          goto LABEL_25;
        }

        swift_beginAccess();
        v55 = *&v2[v85];
        if (*(v55 + 16) && (v56 = sub_100412104(v28), (v57 & 1) != 0))
        {
          v58 = v27;
          v59 = *(*(v55 + 56) + 8 * v56);
          swift_endAccess();
          v60 = v59;
        }

        else
        {
          v58 = v27;
          swift_endAccess();
          sub_1007433C4();
          v61 = sub_1007431D4();
          swift_beginAccess();
          v60 = v61;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = *&v2[v85];
          *&v2[v85] = 0x8000000000000000;
          sub_100674660(v60, v28, isUniquelyReferenced_nonNull_native);
          *&v2[v85] = v90;
          swift_endAccess();
          [v53 addSubview:v60];
        }

        [v60 setHidden:{0, v73}];
        v63 = *&v2[v83];
        v64 = *(v63 + 16);
        if (v64)
        {
          v65 = *(v63 + 8 * (v28 % v64) + 32);
          if (v65)
          {
            v66 = v65;
            v67 = sub_100743334();
            if (v67)
            {
              v68 = v67;
              sub_100016C60(0, &qword_10092B280, UIImage_ptr);
              v69 = v66;
              v70 = sub_100753FC4();

              if (v70)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v43 = v66;
            }

            v93.value.super.isa = v65;
            v93.is_nil = 0;
            sub_100743384(v93, v44);
LABEL_23:

            v5 = v82;
          }
        }

        sub_100743324();

        v27 = v58 + 1;
        v11 = v84;
LABEL_25:
        if (++v28 == v11)
        {
          goto LABEL_68;
        }
      }
    }
  }

  __break(1u);
}

void sub_1006047AC()
{
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_isLazyLayoutEnabled] == 1)
  {
    v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_lastVisibleBounds];
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_lastVisibleBounds];
    rect_8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_lastVisibleBounds + 8];
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_lastVisibleBounds + 16];
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_lastVisibleBounds + 24];
    sub_100602F9C();
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    v9 = CGRectGetWidth(v12);
    v13.origin.x = v2;
    v13.origin.y = rect_8;
    v13.size.width = v3;
    v13.size.height = v4;
    if (CGRectGetWidth(v13) < v9 || (v14.origin.x = x, v14.origin.y = y, v14.size.width = width, v14.size.height = height, v10 = CGRectGetHeight(v14), v15.origin.x = v2, v15.origin.y = rect_8, v15.size.width = v3, v15.size.height = v4, CGRectGetHeight(v15) < v10))
    {
      [v0 setNeedsLayout];
      *v1 = x;
      v1[1] = y;
      v1[2] = width;
      v1[3] = height;
    }
  }
}

void sub_1006048A8()
{
  v1 = sub_100743B04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_chevronImageView;
  v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_chevronImageView);
  (*(v2 + 104))(v4, **(&off_10087DBF8 + *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_chevronDirection)), v1, v6);
  (*(v2 + 32))(v8, v4, v1);
  v11 = v10;
  v12 = sub_100743AE4();
  (*(v2 + 8))(v8, v1);
  [v11 setImage:v12];

  v13 = *(v0 + v9);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 configurationWithPointSize:6 weight:15.0];
  [v15 setPreferredSymbolConfiguration:v16];
}

char *sub_100604A84()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_contentView;
  *&v0[v2] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_blurEffect;
  *&v0[v3] = [objc_opt_self() effectWithStyle:9];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_chevronImageView;
  *&v0[v4] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  __asm { FMOV            V0.2D, #28.0 }

  *&v0[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_visibleSize] = _Q0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_tapSize] = xmmword_1007CD940;
  v0[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_chevronDirection] = 1;
  v0[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_shouldUseDirectionalChevron] = 1;
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*&v0[v3]];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_blurView] = v10;
  v11 = [objc_opt_self() effectForBlurEffect:*&v0[v3] style:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v0[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_vibrancyView] = v12;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 68.0, 44.0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_contentView;
  v15 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_contentView];
  v16 = v13;
  [v15 setUserInteractionEnabled:0];
  v16[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_chevronDirection] = 1;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_chevronImageView;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_chevronImageView] setContentMode:4];
  sub_1006048A8();
  v18 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_blurView;
  [*&v13[v14] addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_blurView]];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_vibrancyView;
  v20 = [*&v16[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_vibrancyView] contentView];
  [v20 addSubview:*&v16[v17]];

  v21 = [*&v16[v18] contentView];
  [v21 addSubview:*&v16[v19]];

  v22 = *&v13[v14];
  v23 = v16;
  [v23 addSubview:v22];
  [v23 setOverrideUserInterfaceStyle:1];

  return v23;
}

void sub_100604D9C()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  [v0 bounds];
  v2 = (CGRectGetWidth(v24) + -28.0) * 0.5;
  [v0 bounds];
  v3 = (CGRectGetHeight(v25) + -28.0) * 0.5;
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_contentView];
  [v4 setFrame:{v2, v3, 28.0, 28.0}];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_chevronImageView;
  v6 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_chevronImageView] image];
  if (v6)
  {
    v7 = v6;
    [*&v0[v5] setContentMode:1];
    v8 = [v0 traitCollection];
    v9 = sub_1007537F4();

    if (v9)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = *&v1[v5];
    [v4 frame];
    Width = CGRectGetWidth(v26);
    [v7 size];
    v14 = floor(v10 + (Width - v13) * 0.5);
    [v4 frame];
    Height = CGRectGetHeight(v27);
    [v7 size];
    v17 = floor((Height - v16) * 0.5);
    [v7 size];
    v19 = v18;
    [v7 size];
    [v11 setFrame:{v14, v17, v19, v20}];
  }

  v21 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_blurView;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_blurView] setFrame:{0.0, 0.0, 28.0, 28.0}];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_vibrancyView] setFrame:{0.0, 0.0, 28.0, 28.0}];
  v22 = *&v1[v21];
  v28.size.width = 28.0;
  v28.size.height = 28.0;
  v28.origin.x = v2;
  v28.origin.y = v3;
  [v22 _setCornerRadius:CGRectGetHeight(v28) * 0.5];
}

unint64_t sub_100605148()
{
  result = qword_100940D28;
  if (!qword_100940D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100940D28);
  }

  return result;
}

void sub_10060519C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_blurEffect;
  *(v0 + v2) = [objc_opt_self() effectWithStyle:9];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_chevronImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  __asm { FMOV            V0.2D, #28.0 }

  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_visibleSize) = _Q0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_tapSize) = xmmword_1007CD940;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_chevronDirection) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RoundChevronButton_shouldUseDirectionalChevron) = 1;
  sub_100754644();
  __break(1u);
}

void *sub_1006052D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000C518(&unk_100933290, &unk_1007BA6D0);
  __chkstk_darwin(v4 - 8);
  v6 = v11 - v5;
  sub_100743EB4();
  sub_100605580(v7);
  result = sub_1007468B4();
  if (v11[1])
  {
    sub_100752764();
    sub_100752684();
    v9 = sub_10000C518(&unk_1009332A0, &qword_1007ADB60);
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    v10 = OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_1004C6484(v6, v3 + v10);
    swift_endAccess();
    sub_100386C64();

    return sub_1004C64F4(v6);
  }

  return result;
}

uint64_t sub_100605458@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1006054B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_100605580(__n128 a1)
{
  result = qword_100933028;
  if (!qword_100933028)
  {
    sub_100743EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100933028);
  }

  return result;
}

uint64_t sub_1006055D8(uint64_t a1, int a2)
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

uint64_t sub_100605620(uint64_t result, int a2, int a3)
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

uint64_t sub_10060569C(uint64_t a1, int a2)
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

uint64_t sub_1006056E4(uint64_t result, int a2, int a3)
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

void sub_100605744(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  sub_10000C888((v5 + 64), *(v5 + 88));
  sub_100751254();
  v11 = v10;
  v13 = v12;
  v15 = v14 + 4.0;
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  MinX = CGRectGetMinX(v31);
  sub_10004B1D0(v5, v29);
  sub_10000C888(v29, v30);
  sub_100750574();
  v17 = v16;
  sub_10000C620(v29);
  v32.origin.y = v17 - v13;
  v32.origin.x = MinX;
  v32.size.width = v15;
  v32.size.height = v11;
  v18 = CGRectGetMaxX(v32) + *(v5 + 40);
  sub_10000C888((v5 + 104), *(v5 + 128));
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
  sub_100751254();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_10004B1D0(v5, v29);
  sub_10000C888(v29, v30);
  sub_100750574();
  v26 = v25;
  sub_10000C620(v29);
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
  sub_10000C888((v5 + 144), *(v5 + 168));
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetHeight(v38);
  sub_100751254();
  sub_10004B1D0(v5, v29);
  sub_10000C888(v29, v30);
  sub_100750574();
  sub_10000C620(v29);
  sub_10000C888((v5 + 64), *(v5 + 88));
  sub_100753AA4();
  sub_100751244();
  sub_10000C888((v5 + 104), *(v5 + 128));
  sub_100753AA4();
  sub_100751244();
  sub_10000C888((v5 + 144), *(v5 + 168));
  sub_100753AA4();
  sub_100751244();
}

double sub_100605AF4(uint64_t a1, double a2)
{
  sub_10004B1D0(v2, v5);
  sub_10000C888(v5, v5[3]);
  sub_100750574();
  sub_10000C620(v5);
  return a2;
}

uint64_t sub_100605B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B22C();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100605BDC()
{
  result = qword_100940D30;
  if (!qword_100940D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100940D30);
  }

  return result;
}

unint64_t sub_100605C34()
{
  result = qword_100940D38;
  if (!qword_100940D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100940D38);
  }

  return result;
}

double sub_100605D2C()
{
  sub_100749984();
  sub_100605E70(&qword_100923A48, &type metadata accessor for ArcadeDownloadPackCard, &protocol conformance descriptor for ArcadeDownloadPackCard);
  sub_1007468B4();
  if (!v6)
  {
    return 0.0;
  }

  v0 = sub_100749964();
  if (v1)
  {
    v2 = sub_100749974();
    if (v2 >> 62)
    {
      v3 = sub_100754664();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v3 = v0;
  }

  swift_getKeyPath();
  sub_100746914();

  v4 = sub_100677794(v3, v6);

  return v4;
}

uint64_t sub_100605E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100605ED0()
{
  result = qword_100935438;
  if (!qword_100935438)
  {
    sub_1007433F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935438);
  }

  return result;
}

uint64_t sub_100605F28()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_100752D84();
}

id sub_100606080(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchCollectionLayoutAttributes();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100606134(void (*a1)(char *, uint64_t), uint64_t a2, double a3, double a4)
{
  v9 = sub_10074F314();
  __chkstk_darwin(v9 - 8);
  v76 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F284();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100747064();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741D54();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v72 = v4;
    v73 = v12;
    v77 = v11;
    v21 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView);
    v22 = *(v21 + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon);
    v74 = a1;
    if (v22)
    {
      v23 = v22;

      sub_1006C2A3C(a3, a4, v20, v22, a2);
    }

    else
    {
      v42 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon;

      sub_100741D44();
      v43 = sub_10074EF24();

      if (v43)
      {
        v75 = a2;
        v44 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
        swift_beginAccess();
        (*(v16 + 16))(v18, v21 + v44, v15);
        sub_100746F34();
        (*(v16 + 8))(v18, v15);
        sub_10074F294();
        sub_10074F254();
        v69 = *(v73 + 8);
        v70 = v73 + 8;
        v69(v14, v77);
        v71 = sub_10074F374();
        v68 = v42;
        v45 = *(v21 + v42);
        if (v45)
        {
          v46 = (v45 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
        }

        else
        {
          v46 = (v21 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
        }

        v47 = *v46;
        sub_10074F324();
        sub_100743364();
        [v47 setContentMode:sub_10074F184()];
        sub_100747FB4();
        sub_1007433A4();
        if (!sub_10074F1E4())
        {
          sub_100016C60(0, &qword_100923500, UIColor_ptr);
          sub_100753E34();
        }

        sub_100743224();

        v48 = *(v21 + v68);
        if (v48)
        {
          v49 = (v48 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
        }

        else
        {
          v49 = (v21 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
        }

        v50 = *v49;
        sub_10074F294();
        v51 = sub_10074F254();
        v69(v14, v77);
        [v50 setContentMode:v51];

        v52 = *(v21 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
        sub_1007433C4();
        sub_100609610(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        v53 = v52;
        a2 = v75;
        sub_100744204();
      }
    }

    sub_100741D44();
    v54 = sub_10074EF24();

    if (v54)
    {
      v75 = a2;
      v55 = *(v72 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView);
      v56 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v16 + 16))(v18, v55 + v56, v15);
      sub_100746F34();
      (*(v16 + 8))(v18, v15);
      sub_10074F294();
      sub_10074F254();
      v57 = v77;
      v73 = *(v73 + 8);
      (v73)(v14, v77);
      sub_10074F374();
      v58 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon;
      v59 = *(v55 + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon);
      if (v59)
      {
        v60 = (v59 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
      }

      else
      {
        v60 = (v55 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      }

      v61 = *v60;
      sub_10074F324();
      sub_100743364();
      [v61 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();

      v62 = *(v55 + v58);
      if (v62)
      {
        v63 = (v62 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
      }

      else
      {
        v63 = (v55 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      }

      v64 = *v63;
      sub_10074F294();
      v65 = sub_10074F254();
      (v73)(v14, v57);
      [v64 setContentMode:v65];

      v66 = *(v55 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      sub_1007433C4();
      sub_100609610(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v67 = v66;
      sub_100744204();
    }
  }

  else if (sub_10074EF24())
  {
    v75 = a2;
    v24 = v12;
    v25 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView);
    v26 = v24;
    v27 = v11;
    v28 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v16 + 16))(v18, v25 + v28, v15);
    sub_100746F34();
    (*(v16 + 8))(v18, v15);
    sub_10074F294();
    sub_10074F254();
    v29 = *(v26 + 8);
    v77 = v27;
    v74 = v29;
    v29(v14, v27);
    sub_10074F374();
    v30 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon;
    v31 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon);
    if (v31)
    {
      v32 = (v31 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
    }

    else
    {
      v32 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    }

    v33 = *v32;
    sub_10074F324();
    sub_100743364();
    [v33 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();

    v34 = *(v25 + v30);
    if (v34)
    {
      v35 = (v34 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
    }

    else
    {
      v35 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    }

    v36 = *v35;
    sub_10074F294();
    v37 = sub_10074F254();
    v74(v14, v77);
    [v36 setContentMode:v37];

    v38 = *(v25 + v30);
    if (v38)
    {
      v39 = (v38 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
    }

    else
    {
      v39 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    }

    v40 = *v39;
    sub_1007433C4();
    sub_100609610(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v41 = v40;
    sub_100744204();
  }
}

double sub_100606B7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView);
  [v1 setHidden:0];
  v20 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView);
  [v2 setHidden:0];
  v3 = [v1 subviews];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v4 = sub_1007532A4();

  v21 = v2;
  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_100754574();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 setHidden:0];
      [v8 setAlpha:1.0];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v10 = [v2 subviews];
  v11 = sub_1007532A4();

  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_100754664())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_100754574();
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 setHidden:0];
      [v15 setAlpha:1.0];

      ++v13;
      if (v16 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v17 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton;
  [*&v21[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton] setHidden:0];
  [*&v21[v17] setUserInteractionEnabled:1];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *(v20 + v18) = 0;

  return result;
}

uint64_t sub_100606E4C()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_100982960);
  sub_10000D0FC(v0, qword_100982960);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100606FB0(uint64_t a1)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  v46 = a1;
  sub_100746F84();
  if (qword_100920F68 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100980B88);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = sub_100750B04();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_10000D134(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  sub_100750B14();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  sub_100746F64();
  if (qword_100920F70 != -1)
  {
    swift_once();
  }

  v42 = sub_10000D0FC(v6, qword_100980BA0);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_10000D134(v54);
  v44(v17, v5, v2);
  sub_100750B14();
  v49(v5, v2);
  sub_100747034();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v54);
  v21 = v44;
  v44(v20, v5, v2);
  sub_100750B14();
  v22 = v49;
  v49(v5, v2);
  sub_100747004();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_10000D134(v54);
  v21(v26, v5, v2);
  sub_100750B14();
  v22(v5, v2);
  sub_100746FF4();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_10000D134(v54);
  v21(v28, v5, v2);
  sub_100750B14();
  v22(v5, v2);
  sub_100747054();
  if (qword_100920F80 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_10000D0FC(v45, qword_100980BD0);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_10000D134(v54);
  v21(v32, v5, v2);
  sub_100750B14();
  v49(v5, v2);
  sub_100747044();
  if (qword_100920F78 != -1)
  {
    swift_once();
  }

  v33 = sub_10000D0FC(v29, qword_100980BB8);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_10000D134(v54);
  v37 = v44;
  v44(v36, v5, v2);
  sub_100750B14();
  v38 = v49;
  v49(v5, v2);
  sub_100746FC4();
  sub_100746FA4();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_10000D134(v54);
  v37(v39, v5, v2);
  sub_100750B14();
  v38(v5, v2);
  return sub_100746FB4();
}

double sub_10060792C()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_lockupTapBlock);
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_lockupTapBlock);
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_lockupTapBlock + 8);
  v4 = (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapBlock);
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_10001B5AC(v2, v3);
  sub_10001B5AC(v2, v3);
  sub_1000164A8(v5, v6);
  sub_1001CEBE8();
  sub_1000164A8(v2, v3);
  v7 = *v1;
  v8 = v1[1];
  v9 = (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapBlock);
  v10 = *v9;
  v11 = v9[1];
  *v9 = *v1;
  v9[1] = v8;
  sub_10001B5AC(v7, v8);
  sub_10001B5AC(v7, v8);
  sub_1000164A8(v10, v11);
  sub_1001CEBE8();

  return sub_1000164A8(v7, v8);
}

char *sub_100607A2C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = &v5[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_lockupTapBlock];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_subscriptionLockupPresenter] = 0;
  type metadata accessor for SmallLockupView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView] = v16;
  v17 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView] = v17;
  v53.receiver = v5;
  v53.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView;
  swift_unknownObjectWeakAssign();
  v20 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52.receiver = v18;
  v52.super_class = ObjectType;
  v24 = v18;
  objc_msgSendSuper2(&v52, "setLayoutMargins:", UIEdgeInsetsZero.top, left, bottom, right);
  v25 = *&v18[v19];
  v51.receiver = v24;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutMargins");
  [v25 setLayoutMargins:?];
  v26 = *&v18[v20];
  v50.receiver = v24;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "layoutMargins");
  [v26 setLayoutMargins:?];
  [v24 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [*&v18[v19] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*(*&v18[v19] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView) setHidden:1];
  v27 = *&v18[v19];
  sub_1001CD868(1);

  [v24 addSubview:*&v18[v20]];
  v49 = v19;
  [v24 addSubview:*&v18[v19]];
  [*&v18[v20] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v48 = v24;
  sub_100607F4C();
  v28 = qword_100920F70;
  v29 = *(*&v18[v20] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_100750534();
  v31 = sub_10000D0FC(v30, qword_100980BA0);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v47 = v31;
  v33(v13);
  v34 = *(v32 + 56);
  v34(v13, 0, 1, v30);
  sub_100745BA4();

  v35 = *(*&v18[v20] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  v36 = qword_100920F78;
  v37 = v35;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_10000D0FC(v30, qword_100980BB8);
  (v33)(v13, v38, v30);
  v34(v13, 0, 1, v30);
  sub_100745BA4();

  v39 = v49;
  v40 = *(*&v18[v49] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  (v33)(v13, v47, v30);
  v34(v13, 0, 1, v30);
  v41 = v40;
  sub_100745BA4();

  v42 = *(*&v18[v39] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  (v33)(v13, v38, v30);
  v34(v13, 0, 1, v30);
  v43 = v42;
  sub_100745BA4();
  v44 = v48;

  return v44;
}

id sub_100607F4C()
{
  v1 = v0;
  v2 = sub_100747064();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = sub_100753954();

  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView];
  if (v9)
  {
    if (qword_100920450 != -1)
    {
      swift_once();
    }

    v11 = sub_10000D0FC(v2, qword_10097E0C0);
    v24 = v3[2];
    v24(v6, v11, v2);
    v12 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v13 = v3[3];
    v13(&v10[v12], v6, v2);
    swift_endAccess();
    [v10 setNeedsLayout];
    v14 = v3[1];
    v14(v6, v2);
    [v10 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
    v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
    v24(v6, v11, v2);
    v16 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v13(&v15[v16], v6, v2);
    swift_endAccess();
    [v15 setNeedsLayout];
    v14(v6, v2);
    return [v15 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
  }

  else
  {
    if (qword_100920448 != -1)
    {
      swift_once();
    }

    v18 = sub_10000D0FC(v2, qword_10097E0A8);
    v24 = v3[2];
    v24(v6, v18, v2);
    v19 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v20 = v3[3];
    v20(&v10[v19], v6, v2);
    swift_endAccess();
    [v10 setNeedsLayout];
    v21 = v3[1];
    v21(v6, v2);
    [v10 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
    v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
    v24(v6, v18, v2);
    v23 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v20(&v22[v23], v6, v2);
    swift_endAccess();
    [v22 setNeedsLayout];
    v21(v6, v2);
    return [v22 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
  }
}

void sub_1006085EC(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = v2;
    LOBYTE(v4) = a2;
    v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView);
    if (([v5 isHidden] & 1) == 0)
    {
      v6 = [v5 subviews];
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v7 = sub_1007532A4();

      aBlock = _swiftEmptyArrayStorage;
      if (v7 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
      {
        v32 = v4;
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = sub_100754574();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v4 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          type metadata accessor for OfferButton();
          if (swift_dynamicCastClass())
          {
          }

          else
          {
            sub_1007545A4();
            sub_1007545D4();
            sub_1007545E4();
            sub_1007545B4();
          }

          ++v9;
          if (v4 == i)
          {
            v12 = aBlock;
            LOBYTE(v4) = v32;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

      v12 = _swiftEmptyArrayStorage;
LABEL_20:

      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007A5CF0;
      v14 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView);
      *(v13 + 32) = v14;
      if (v4)
      {
        v15 = v14;
        if ((v13 & 0xC000000000000001) == 0)
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v16 = v15;
          goto LABEL_24;
        }

LABEL_52:
        v16 = sub_100754574();
LABEL_24:
        v17 = v16;
        [v16 setHidden:0];

        v18 = objc_opt_self();
        v19 = swift_allocObject();
        *(v19 + 16) = v12;
        *(v19 + 24) = v13;
        v37 = sub_1001F74AC;
        v38 = v19;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_1000CF7B0;
        v36 = &unk_10087DD90;
        v20 = _Block_copy(&aBlock);

        v21 = swift_allocObject();
        *(v21 + 16) = v12;
        v37 = sub_1001F7504;
        v38 = v21;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_100144DD8;
        v36 = &unk_10087DDE0;
        v22 = _Block_copy(&aBlock);

        [v18 animateWithDuration:4 delay:v20 options:v22 animations:0.33 completion:0.0];
        _Block_release(v22);
        _Block_release(v20);
        return;
      }

      if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
      {
        v23 = sub_100754664();
      }

      else
      {
        v23 = v12[2];
      }

      v24 = v14;
      if (v23)
      {
        v25 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v26 = sub_100754574();
          }

          else
          {
            if (v25 >= v12[2])
            {
              goto LABEL_50;
            }

            v26 = v12[v25 + 4];
          }

          v27 = v26;
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          [v26 setAlpha:0.0];
          [v27 setHidden:1];

          ++v25;
          if (v28 == v23)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_38:

      v29 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        v12 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v30 = sub_100754574();
          }

          else
          {
            if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v30 = *(v13 + 8 * v12 + 32);
          }

          v31 = v30;
          v12 = (v12 + 1);
          [v30 setAlpha:1.0];
          [v31 setHidden:0];
        }

        while (v29 != v12);
      }
    }
  }
}

void sub_100608B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100746BA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_100940DD8, &qword_1007CDD80);
  __chkstk_darwin(v7);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v12 = sub_10000C518(&qword_10092B188, &unk_1007CE730);
  __chkstk_darwin(v12 - 8);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v52 - v15;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v63 = a1;
  v23 = *(*(a1 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  v24 = v5[13];
  v61 = enum case for MediaOverlayStyle.dark(_:);
  v60 = v24;
  v58 = v5 + 13;
  v24(&v52 - v21, v20);
  v59 = v5[7];
  v57 = v5 + 7;
  v59(v22, 0, 1, v4);
  v62 = v7;
  v25 = *(v7 + 48);
  v64 = a2;
  sub_1006095A0(a2, v11);
  sub_1006095A0(v22, &v11[v25]);
  v26 = v5[6];
  v27 = v26(v11, 1, v4);
  v56 = v5;
  if (v27 != 1)
  {
    sub_1006095A0(v11, v18);
    if (v26(&v11[v25], 1, v4) != 1)
    {
      v32 = v5[4];
      v54 = v26;
      v33 = v55;
      v32(v55, &v11[v25], v4);
      v53 = sub_100609610(&qword_10093B418, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
      v34 = v23;
      v35 = v23;
      LODWORD(v53) = sub_100753014();
      v36 = v5[1];
      v37 = v33;
      v26 = v54;
      v36(v37, v4);
      sub_10000C8CC(v22, &qword_10092B188, &unk_1007CE730);
      v36(v18, v4);
      v23 = v34;
      sub_10000C8CC(v11, &qword_10092B188, &unk_1007CE730);
      v29 = v65;
      if (v53)
      {
        goto LABEL_9;
      }

LABEL_7:
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v31 = sub_100753EF4();
      goto LABEL_10;
    }

    v30 = v23;
    sub_10000C8CC(v22, &qword_10092B188, &unk_1007CE730);
    (v5[1])(v18, v4);
LABEL_6:
    sub_10000C8CC(v11, &qword_100940DD8, &qword_1007CDD80);
    v29 = v65;
    goto LABEL_7;
  }

  v28 = v23;
  sub_10000C8CC(v22, &qword_10092B188, &unk_1007CE730);
  if (v26(&v11[v25], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10000C8CC(v11, &qword_10092B188, &unk_1007CE730);
  v29 = v65;
LABEL_9:
  v31 = [objc_opt_self() whiteColor];
LABEL_10:
  v38 = v31;
  [v23 setTintColor:v31];

  v39 = *(*(v63 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  v60(v29, v61, v4);
  v59(v29, 0, 1, v4);
  v40 = *(v62 + 48);
  v41 = v67;
  sub_1006095A0(v64, v67);
  sub_1006095A0(v29, v41 + v40);
  if (v26(v41, 1, v4) == 1)
  {
    v42 = v39;
    sub_10000C8CC(v29, &qword_10092B188, &unk_1007CE730);
    if (v26((v41 + v40), 1, v4) == 1)
    {
      sub_10000C8CC(v41, &qword_10092B188, &unk_1007CE730);
LABEL_18:
      v44 = [objc_opt_self() whiteColor];
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_1006095A0(v41, v66);
  if (v26((v41 + v40), 1, v4) == 1)
  {
    v43 = v39;
    sub_10000C8CC(v29, &qword_10092B188, &unk_1007CE730);
    (v56[1])(v66, v4);
LABEL_15:
    sub_10000C8CC(v41, &qword_100940DD8, &qword_1007CDD80);
    goto LABEL_16;
  }

  v45 = v66;
  v46 = v55;
  v47 = v56;
  (v56[4])(v55, v41 + v40, v4);
  sub_100609610(&qword_10093B418, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
  v48 = v39;
  v49 = sub_100753014();
  v50 = v47[1];
  v50(v46, v4);
  sub_10000C8CC(v29, &qword_10092B188, &unk_1007CE730);
  v50(v45, v4);
  sub_10000C8CC(v41, &qword_10092B188, &unk_1007CE730);
  if (v49)
  {
    goto LABEL_18;
  }

LABEL_16:
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v44 = sub_100753EF4();
LABEL_19:
  v51 = v44;
  [v39 setTintColor:v44];
}

void sub_100609340(double a1, double a2, uint64_t a3, objc_class *a4)
{
  v8 = *v4;
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v9 = sub_100747064();
  v10 = sub_10000D0FC(v9, qword_10097E3A8);
  v15.receiver = v8;
  v15.super_class = a4;
  objc_msgSendSuper2(&v15, "layoutMargins");
  sub_1001CF768(v10, v8, a1, a2, v13, v14, v11, v12);
}

double sub_10060940C()
{
  swift_beginAccess();

  return result;
}

double sub_100609454(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100609510()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100609550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100609568()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006095A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092B188, &unk_1007CE730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100609610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void AppPromotionDetailPageContentLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.detailLabelTopSpace.setter(__int128 *a1)
{
  sub_10000C620((v1 + 280));

  return sub_100012160(a1, v1 + 280);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelTopSpace.setter(__int128 *a1)
{
  sub_10000C620((v1 + 400));

  return sub_100012160(a1, v1 + 400);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelBottomSpace.setter(__int128 *a1)
{
  sub_10000C620((v1 + 440));

  return sub_100012160(a1, v1 + 440);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.separatorViewBottomSpace.setter(__int128 *a1)
{
  sub_10000C620((v1 + 480));

  return sub_100012160(a1, v1 + 480);
}

uint64_t sub_100609940(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100924A60, &unk_1007A7B00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 AppPromotionDetailPageContentLayout.init(metrics:primaryContentContainer:secondaryContentContainer:availabilityLabelView:kindLabel:titleLabel:subtitleView:learnMoreButton:detailLabel:inlineLearnMoreLabel:separatorView:lockupView:showInlineLearnMore:includeSubtitle:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  *(a9 + 848) = 0u;
  *(a9 + 864) = 0u;
  *(a9 + 816) = 0u;
  *(a9 + 832) = 0u;
  *(a9 + 800) = 0u;
  memcpy(a9, __src, 0x208uLL);
  sub_100012160(a2, a9 + 520);
  sub_100012160(a3, a9 + 560);
  sub_100012160(a4, a9 + 600);
  sub_100012160(a5, a9 + 640);
  sub_100012160(a6, a9 + 680);
  sub_100012160(a7, a9 + 720);
  sub_100609940(a8, a9 + 840);
  sub_100012160(a10, a9 + 760);
  sub_100609940(a11, a9 + 800);
  v22 = *(a12 + 16);
  *(a9 + 880) = *a12;
  *(a9 + 896) = v22;
  *(a9 + 912) = *(a12 + 32);
  result = *a13;
  v24 = *(a13 + 16);
  *(a9 + 920) = *a13;
  *(a9 + 936) = v24;
  *(a9 + 952) = *(a13 + 32);
  *(a9 + 960) = a14;
  *(a9 + 961) = a15;
  return result;
}

CGFloat AppPromotionDetailPageContentLayout.measure(toFit:with:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v7 = a1;
  if (sub_1007537D4())
  {
    v8 = sub_100753804();

    if (v8)
    {
      sub_10060BBE0(v7, *(v4 + 960), v11);
      sub_10000C888(v11, v12);
      sub_100751254();
      sub_10000C620(v11);
      return a2;
    }
  }

  else
  {
  }

  if (sub_1007537D4())
  {
    sub_100609CEC(v7, v11, 0.0, 0.0, a2, a3);
  }

  else
  {
    sub_10060A6F4(v7, v11, 0.0, 0.0, a2, a3);
  }

  sub_10000C888(v11, v12);
  sub_100751254();
  a2 = v9;
  sub_10000C620(v11);
  return a2;
}

uint64_t sub_100609CEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v90 = a2;
  v91 = sub_1007506E4();
  v87 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v76 - v15;
  __chkstk_darwin(v16);
  v89 = &v76 - v17;
  v94 = sub_1007511A4();
  v88 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1007507B4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  __chkstk_darwin(v26);
  v28 = &v76 - v27;
  __chkstk_darwin(v29);
  v80 = &v76 - v30;
  __chkstk_darwin(v31);
  v81 = &v76 - v32;
  __chkstk_darwin(v33);
  v83 = &v76 - v34;
  __chkstk_darwin(v35);
  v84 = &v76 - v36;
  __chkstk_darwin(v37);
  v95 = &v76 - v38;
  sub_100750794();
  sub_10060D578(v7, v101);
  v39 = swift_allocObject();
  memcpy((v39 + 16), v101, 0x3C2uLL);
  *(v39 + 984) = a1;
  v40 = a1;
  sub_1007507A4();
  v41 = v19;

  v43 = v20 + 8;
  v42 = *(v20 + 8);
  v42(v22, v41);
  sub_10000C824(v7 + 680, v101);
  sub_1000746BC(v101, &v96);
  v82 = v20;
  if (v97)
  {
    sub_100012160(&v96, &v98);
    sub_1007507A4();
    sub_10000C620(&v98);
    sub_10007485C(v101);
    v42(v25, v41);
  }

  else
  {
    sub_10007485C(v101);
    sub_10007485C(&v96);
    (*(v20 + 32))(v28, v25, v41);
  }

  sub_10060D578(v7, v101);
  v44 = swift_allocObject();
  memcpy((v44 + 16), v101, 0x3C2uLL);
  *(v44 + 984) = v40;
  v45 = v40;
  v46 = v80;
  sub_1007507A4();

  v42(v28, v41);
  sub_10060D578(v7, v101);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v101, 0x3C2uLL);
  *(v47 + 984) = v45;
  v48 = v45;
  v49 = v81;
  sub_1007507A4();

  v42(v46, v41);
  sub_10060D578(v7, v101);
  v50 = swift_allocObject();
  memcpy((v50 + 16), v101, 0x3C2uLL);
  *(v50 + 984) = v48;
  sub_1000746BC(v7 + 840, &v96);
  v51 = v42;
  v79 = v48;
  if (v97)
  {
    sub_100012160(&v96, &v98);
    v52 = v48;
    v53 = v83;
    sub_1007507A4();

    sub_10000C620(&v98);
    v42(v49, v41);
    v54 = v82;
  }

  else
  {
    v55 = v48;

    sub_10007485C(&v96);
    v54 = v82;
    v53 = v83;
    (*(v82 + 32))(v83, v49, v41);
  }

  sub_1000746BC(v7 + 880, &v98);
  v56 = v84;
  if (v99)
  {
    sub_100012160(&v98, v101);
    sub_1007507A4();
    sub_10000C620(v101);
    v51(v53, v41);
  }

  else
  {
    sub_10007485C(&v98);
    (*(v54 + 32))(v56, v53, v41);
  }

  v57 = v95;
  sub_1000746BC(v7 + 920, &v98);
  v77 = v51;
  v78 = v43;
  v92 = v41;
  if (v99)
  {
    sub_100012160(&v98, v101);
    sub_1007507A4();
    sub_10000C620(v101);
    v51(v56, v41);
  }

  else
  {
    sub_10007485C(&v98);
    (*(v54 + 32))(v57, v56, v41);
  }

  v58 = v54;
  sub_10000C888((v7 + 80), *(v7 + 104));
  sub_100750574();
  sub_10000C824(v7 + 600, v101);
  v59 = v93;
  sub_100751194();
  v60 = v85;
  sub_1007506B4();
  v61 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  v62 = sub_10000D134(v101);
  v63 = v88;
  (*(v88 + 16))(v62, v59, v61);
  v64 = v86;
  sub_1007506D4();
  v65 = v87;
  v66 = *(v87 + 8);
  v67 = v91;
  v66(v60, v91);
  sub_10000C620(v101);
  v68 = v92;
  v101[3] = v92;
  v101[4] = &protocol witness table for VerticalStack;
  v69 = sub_10000D134(v101);
  (*(v58 + 16))(v69, v95, v68);
  v70 = v89;
  sub_1007506D4();
  v66(v64, v67);
  sub_10000C620(v101);
  v99 = v67;
  v100 = &protocol witness table for DisjointStack;
  v71 = sub_10000D134(&v98);
  (*(v65 + 16))(v71, v70, v67);
  v72 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  sub_10000D134(v101);
  sub_100751194();
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetWidth(v102);
  v73 = sub_100751154();
  v74 = v90;
  v90[3] = v73;
  v74[4] = &protocol witness table for Resize;
  sub_10000D134(v74);
  sub_100751134();
  v66(v70, v67);
  (*(v63 + 8))(v93, v72);
  return v77(v95, v92);
}

uint64_t sub_10060A6F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v134 = a2;
  v13 = sub_100751144();
  v113 = *(v13 - 8);
  v114 = v13;
  __chkstk_darwin(v13);
  v116 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v110 - v16;
  __chkstk_darwin(v17);
  v112 = &v110 - v18;
  __chkstk_darwin(v19);
  v111 = (&v110 - v20);
  v21 = sub_100751174();
  v130 = *(v21 - 8);
  v131 = v21;
  __chkstk_darwin(v21);
  v129 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1007511A4();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v127 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1007510A4();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v124 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1007510B4();
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v138 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1007507B4();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v120 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v121 = &v110 - v31;
  __chkstk_darwin(v32);
  v139 = &v110 - v33;
  __chkstk_darwin(v34);
  v141 = &v110 - v35;
  __chkstk_darwin(v36);
  v38 = &v110 - v37;
  __chkstk_darwin(v39);
  v136 = (&v110 - v40);
  __chkstk_darwin(v41);
  v117 = &v110 - v42;
  __chkstk_darwin(v43);
  v137 = &v110 - v44;
  __chkstk_darwin(v45);
  v118 = &v110 - v46;
  __chkstk_darwin(v47);
  v119 = &v110 - v48;
  __chkstk_darwin(v49);
  v140 = &v110 - v50;
  sub_100750794();
  sub_10060D578(v6, v147);
  v51 = swift_allocObject();
  memcpy((v51 + 16), v147, 0x3C2uLL);
  *(v51 + 984) = a1;
  v52 = a1;
  sub_1007507A4();

  v53 = v28;
  v56 = v28[1];
  v54 = (v28 + 1);
  v55 = v56;
  (v56)(v38, v27);
  sub_10060D578(v6, v147);
  v57 = swift_allocObject();
  memcpy((v57 + 16), v147, 0x3C2uLL);
  *(v57 + 984) = v52;
  v58 = v52;
  v59 = v117;
  v60 = v58;
  v61 = v136;
  sub_1007507A4();
  v62 = v27;

  (v56)(v61, v27);
  sub_10000C824((v7 + 85), v147);
  sub_1000746BC(v147, &v142);
  v136 = v53;
  if (v143)
  {
    sub_100012160(&v142, &v144);
    sub_1007507A4();
    sub_10000C620(&v144);
    sub_10007485C(v147);
    (v55)(v59, v27);
  }

  else
  {
    sub_10007485C(v147);
    sub_10007485C(&v142);
    v53[4](v137, v59, v27);
  }

  sub_10060D578(v7, v147);
  v63 = swift_allocObject();
  memcpy((v63 + 16), v147, 0x3C2uLL);
  *(v63 + 984) = v60;
  v64 = v60;
  v65 = v118;
  v66 = v137;
  sub_1007507A4();

  (v55)(v66, v27);
  sub_10060D578(v7, v147);
  v67 = swift_allocObject();
  memcpy((v67 + 16), v147, 0x3C2uLL);
  *(v67 + 984) = v64;
  v68 = v64;
  v69 = v119;
  sub_1007507A4();

  (v55)(v65, v62);
  sub_10060D578(v7, v147);
  v70 = swift_allocObject();
  memcpy((v70 + 16), v147, 0x3C2uLL);
  *(v70 + 984) = v68;
  sub_1000746BC((v7 + 105), &v142);
  v137 = v68;
  if (v143)
  {
    sub_100012160(&v142, &v144);
    v71 = v68;
    v72 = v140;
    sub_1007507A4();
    v73 = v72;

    sub_10000C620(&v144);
    (v55)(v69, v62);
    v74 = v141;
    v75 = v136;
  }

  else
  {
    v76 = v68;

    sub_10007485C(&v142);
    v75 = v136;
    v73 = v140;
    v136[4](v140, v69, v62);
    v74 = v141;
  }

  v77 = v75[2];
  v77(v74, v73, v62);
  sub_10060D578(v7, v147);
  v78 = swift_allocObject();
  memcpy((v78 + 16), v147, 0x3C2uLL);
  sub_1000746BC((v7 + 110), &v142);
  if (v143)
  {
    sub_100012160(&v142, &v144);
    sub_100750754();

    sub_10000C620(&v144);
  }

  else
  {

    sub_10007485C(&v142);
  }

  sub_1000746BC((v7 + 115), &v144);
  v79 = v121;
  v80 = v77;
  if (v145)
  {
    sub_100012160(&v144, v147);
    sub_100750754();
    sub_10000C620(v147);
  }

  else
  {
    sub_10007485C(&v144);
  }

  v81 = v120;
  sub_100750794();
  sub_1000746BC((v7 + 110), &v144);
  if (v145)
  {
    sub_100012160(&v144, v147);
    sub_1007507A4();
    sub_10000C620(v147);
    (v55)(v81, v62);
  }

  else
  {
    sub_10007485C(&v144);
    v136[4](v79, v81, v62);
  }

  v82 = v139;
  sub_1000746BC((v7 + 115), &v144);
  v125 = v55;
  v126 = v54;
  if (v145)
  {
    sub_100012160(&v144, v147);
    sub_1007507A4();
    v82 = v139;
    sub_10000C620(v147);
    (v55)(v79, v62);
  }

  else
  {
    sub_10007485C(&v144);
    v136[4](v82, v79, v62);
  }

  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v83 = sub_10000D134(v147);
  v77(v83, v82, v62);
  (*(v122 + 104))(v124, enum case for Pin.Edge.bottomEdge(_:), v123);
  v145 = v62;
  v146 = &protocol witness table for VerticalStack;
  v84 = sub_10000D134(&v144);
  v77(v84, v140, v62);
  sub_1007510C4();
  v148.origin.x = a3;
  v148.origin.y = a4;
  v148.size.width = a5;
  v148.size.height = a6;
  CGRectGetWidth(v148);
  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v85 = sub_10000D134(v147);
  v86 = v141;
  v80(v85, v141, v62);
  v87 = v127;
  sub_100751194();
  sub_100750F44();
  sub_10060D9EC(&qword_100940DE8, &type metadata accessor for Margins, &protocol conformance descriptor for Margins);
  v88 = v129;
  v137 = v80;
  v89 = v132;
  sub_100750A74();
  sub_10060D9EC(&qword_100940DF0, &type metadata accessor for Margins.Placements, &protocol conformance descriptor for Margins.Placements);
  v90 = v131;
  sub_100750C54();
  v92 = v91;
  (*(v130 + 8))(v88, v90);
  (*(v128 + 8))(v87, v89);
  v93 = floor(v92);
  v94 = *v7;
  if (*v7 >= v93)
  {
    v99 = v135;
    v145 = v135;
    v146 = &protocol witness table for Pin;
    v100 = sub_10000D134(&v144);
    v101 = v133;
    (*(v133 + 16))(v100, v138, v99);
    v147[3] = v89;
    v147[4] = &protocol witness table for Margins;
    sub_10000D134(v147);
    sub_100751194();
    v137 = v62;
    v102 = v111;
    *(v111 + 3) = &type metadata for CGFloat;
    *(v102 + 4) = &protocol witness table for CGFloat;
    *v102 = v94;
    v103 = v114;
    v104 = *(v113 + 104);
    v104(v102, enum case for Resize.Rule.replaced(_:), v114);
    v105 = enum case for Resize.Rule.unchanged(_:);
    v104(v112, enum case for Resize.Rule.unchanged(_:), v103);
    v104(v115, v105, v103);
    v104(v116, v105, v103);
    v106 = sub_100751154();
    v107 = v134;
    v134[3] = v106;
    v107[4] = &protocol witness table for Resize;
    sub_10000D134(v107);
    sub_100751164();
    (*(v101 + 8))(v138, v135);
    v108 = v137;
    v109 = v125;
    (v125)(v139, v137);
    (v109)(v141, v108);
    return (v109)(v140, v108);
  }

  else
  {
    v147[3] = v62;
    v147[4] = &protocol witness table for VerticalStack;
    v95 = sub_10000D134(v147);
    (v137)(v95, v86, v62);
    v96 = v134;
    v134[3] = v89;
    v96[4] = &protocol witness table for Margins;
    sub_10000D134(v96);
    sub_100751194();
    (*(v133 + 8))(v138, v135);
    v97 = v125;
    (v125)(v139, v62);
    (v97)(v86, v62);
    return (v97)(v140, v62);
  }
}

uint64_t AppPromotionDetailPageContentLayout.place(at:with:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = a1;
  if (sub_1007537D4())
  {
    v12 = sub_100753804();

    if (v12)
    {

      return sub_10060B89C(v11, a2, a3, a4, a5);
    }
  }

  else
  {
  }

  v14 = sub_1007537D4();
  sub_10000C888((v6 + 520), *(v6 + 544));
  sub_100751244();
  if (v14)
  {
    sub_100609CEC(v11, v15, a2, a3, a4, a5);
  }

  else
  {
    sub_10060A6F4(v11, v15, a2, a3, a4, a5);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGRectGetMinX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetMinY(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetWidth(v19);
  }

  sub_10000C888(v15, v15[3]);
  sub_100751244();
  return sub_10000C620(v15);
}

uint64_t sub_10060B89C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v14 = *v5;
  sub_10000C888((v5 + 520), *(v5 + 544));
  sub_100751244();
  sub_10060C438(a1, v19);
  sub_10000C888(v19, v19[3]);
  sub_100751244();
  v22.origin.x = MinX;
  v22.origin.y = MinY;
  v22.size.width = Width;
  v22.size.height = v14;
  CGRectGetMaxY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetWidth(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  v25.origin.x = MinX;
  v25.origin.y = MinY;
  v25.size.width = Width;
  v25.size.height = v14;
  CGRectGetMaxY(v25);
  v15 = *(v5 + 960);
  if ((v15 & 1) == 0)
  {
    sub_10060BBE0(a1, 1, v17);
    sub_10000C888(v17, v18);
    sub_100751244();
    sub_10000C620(v17);
  }

  sub_10060BBE0(a1, v15, v17);
  sub_10000C888((v5 + 560), *(v5 + 584));
  sub_100751244();
  sub_10000C888(v17, v18);
  sub_100751244();
  sub_10000C620(v17);
  return sub_10000C620(v19);
}

uint64_t sub_10060BB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000C888((a2 + 240), *(a2 + 264));
  sub_100750574();
  sub_100750714();
  return sub_100750704();
}

uint64_t sub_10060BBE0@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v58 = a2;
  v62 = a3;
  v6 = sub_1007507B4();
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v57[-v10];
  __chkstk_darwin(v12);
  v14 = &v57[-v13];
  __chkstk_darwin(v15);
  v63 = &v57[-v16];
  __chkstk_darwin(v17);
  v64 = &v57[-v18];
  __chkstk_darwin(v19);
  v59 = &v57[-v20];
  __chkstk_darwin(v21);
  v60 = &v57[-v22];
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = &v57[-v25];
  v27 = [a1 preferredContentSizeCategory];
  if (qword_100921A68 != -1)
  {
    swift_once();
  }

  v28 = sub_100753954();

  sub_100750794();
  if (v28)
  {
    sub_10000C824(v4 + 680, v69);
  }

  else
  {
    memset(v69, 0, 40);
  }

  v61 = v26;
  sub_1000746BC(v69, &v70);
  if (v71)
  {
    sub_100012160(&v70, &v72);
    sub_1007507A4();
    sub_10000C620(&v72);
    sub_10007485C(v69);
    v29 = v65;
    (*(v65 + 8))(v8, v6);
  }

  else
  {
    sub_10007485C(v69);
    sub_10007485C(&v70);
    v29 = v65;
    (*(v65 + 32))(v11, v8, v6);
  }

  sub_10060D578(v4, v69);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v69, 0x3C2uLL);
  *(v30 + 978) = v28 & 1;
  *(v30 + 984) = a1;
  v31 = a1;
  sub_1007507A4();

  v32 = *(v29 + 8);
  v32(v11, v6);
  sub_10060D578(v4, v69);
  v33 = swift_allocObject();
  memcpy((v33 + 16), v69, 0x3C2uLL);
  *(v33 + 984) = v31;
  v34 = v31;
  sub_1007507A4();

  v66 = v32;
  v32(v14, v6);
  v35 = v58;
  if (v58)
  {
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
  }

  else
  {
    sub_1000746BC(v4 + 840, &v72);
  }

  v37 = v59;
  v36 = v60;
  sub_10060D578(v4, v69);
  v38 = swift_allocObject();
  memcpy((v38 + 16), v69, 0x3C2uLL);
  *(v38 + 984) = v34;
  sub_1000746BC(&v72, &v67);
  if (v68)
  {
    sub_100012160(&v67, &v70);
    v39 = v34;
    v40 = v63;
    sub_1007507A4();

    sub_10000C620(&v70);
    sub_10007485C(&v72);
    v66(v40, v6);
    v41 = v65;
    if (v35)
    {
LABEL_14:
      sub_1000746BC(v4 + 800, &v72);
      goto LABEL_17;
    }
  }

  else
  {
    v42 = v34;

    sub_10007485C(&v72);
    sub_10007485C(&v67);
    v41 = v65;
    (*(v65 + 32))(v64, v63, v6);
    if (v35)
    {
      goto LABEL_14;
    }
  }

  v74 = 0;
  v72 = 0u;
  v73 = 0u;
LABEL_17:
  sub_10060D578(v4, v69);
  v43 = swift_allocObject();
  memcpy((v43 + 16), v69, 0x3C2uLL);
  *(v43 + 984) = v34;
  sub_1000746BC(&v72, &v67);
  if (v68)
  {
    sub_100012160(&v67, &v70);
    v44 = v34;
    v45 = v64;
    sub_1007507A4();

    sub_10000C620(&v70);
    sub_10007485C(&v72);
    v66(v45, v6);
  }

  else
  {
    v46 = v34;

    sub_10007485C(&v72);
    sub_10007485C(&v67);
    (*(v41 + 32))(v37, v64, v6);
  }

  sub_10060D578(v4, v69);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v69, 0x3C2uLL);
  *(v47 + 984) = v34;
  sub_1000746BC(v4 + 880, &v70);
  if (v71)
  {
    sub_100012160(&v70, &v72);
    v48 = v34;
    sub_1007507A4();

    sub_10000C620(&v72);
    v49 = v37;
    v50 = v66;
    v66(v49, v6);
  }

  else
  {
    v51 = v34;

    sub_10007485C(&v70);
    (*(v41 + 32))(v36, v37, v6);
    v50 = v66;
  }

  sub_1000746BC(v4 + 920, &v72);
  v52 = v61;
  if (*(&v73 + 1))
  {
    sub_100012160(&v72, v69);
    sub_1007507A4();
    sub_10000C620(v69);
    v50(v36, v6);
  }

  else
  {
    sub_10007485C(&v72);
    (*(v41 + 32))(v52, v36, v6);
  }

  v69[3] = v6;
  v69[4] = &protocol witness table for VerticalStack;
  v53 = sub_10000D134(v69);
  (*(v41 + 16))(v53, v52, v6);
  v54 = sub_1007511A4();
  v55 = v62;
  v62[3] = v54;
  v55[4] = &protocol witness table for Margins;
  sub_10000D134(v55);
  sub_100751194();
  return (v50)(v52, v6);
}

uint64_t sub_10060C438@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v4;
  v75 = a2;
  v72 = sub_100751144();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v68 = (&v56 - v9);
  __chkstk_darwin(v10);
  v67 = (&v56 - v11);
  __chkstk_darwin(v12);
  v65 = (&v56 - v13);
  v14 = sub_1007506E4();
  v63 = *(v14 - 8);
  v64 = v14;
  __chkstk_darwin(v14);
  v62 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100751154();
  v73 = *(v16 - 8);
  v74 = v16;
  __chkstk_darwin(v16);
  v71 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007507B4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  __chkstk_darwin(v25);
  v57 = &v56 - v26;
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v61 = &v56 - v29;
  v30 = [a1 preferredContentSizeCategory];
  if (qword_100921A68 != -1)
  {
    swift_once();
  }

  v31 = sub_100753954();

  sub_100750794();
  sub_10060D578(v5, v81);
  v32 = swift_allocObject();
  memcpy((v32 + 16), v81, 0x3C2uLL);
  *(v32 + 984) = a1;
  v33 = a1;
  sub_1007507A4();

  v60 = v19;
  v36 = *(v19 + 8);
  v34 = v19 + 8;
  v35 = v36;
  v36(v21, v18);
  sub_10060D578(v5, v81);
  v37 = swift_allocObject();
  *(v37 + 16) = (v31 & 1) == 0;
  memcpy((v37 + 24), v81, 0x3C2uLL);
  *(v37 + 992) = v33;
  v38 = v33;
  v39 = v57;
  sub_1007507A4();

  v36(v24, v18);
  v66 = v5;
  v40 = v39;
  if (v31)
  {
    memset(v81, 0, 40);
  }

  else
  {
    sub_10000C824(v5 + 680, v81);
  }

  sub_1000746BC(v81, &v76);
  v41 = v60;
  v42 = v61;
  v58 = v35;
  v59 = v34;
  if (v77)
  {
    sub_100012160(&v76, v78);
    sub_1007507A4();
    sub_10000C620(v78);
    sub_10007485C(v81);
    v35(v40, v18);
  }

  else
  {
    sub_10007485C(v81);
    sub_10007485C(&v76);
    (*(v41 + 32))(v42, v40, v18);
  }

  v43 = v62;
  sub_1007506B4();
  v79 = v18;
  v80 = &protocol witness table for VerticalStack;
  v44 = sub_10000D134(v78);
  (*(v41 + 16))(v44, v42, v18);
  v45 = v64;
  v81[3] = v64;
  v81[4] = &protocol witness table for DisjointStack;
  sub_10000D134(v81);
  sub_1007506D4();
  (*(v63 + 8))(v43, v45);
  sub_10000C620(v78);
  v46 = v65;
  *v65 = sub_10060CDB8;
  v46[1] = 0;
  v64 = v18;
  v47 = *(v70 + 104);
  v48 = v72;
  v47(v46, enum case for Resize.Rule.recalculated(_:), v72);
  v49 = enum case for Resize.Rule.unchanged(_:);
  v47(v67, enum case for Resize.Rule.unchanged(_:), v48);
  v47(v68, v49, v48);
  v47(v69, v49, v48);
  v50 = v71;
  sub_100751164();
  v51 = v74;
  v79 = v74;
  v80 = &protocol witness table for Resize;
  v52 = sub_10000D134(v78);
  v53 = v73;
  (*(v73 + 16))(v52, v50, v51);
  v81[3] = sub_1007511A4();
  v81[4] = &protocol witness table for Margins;
  sub_10000D134(v81);
  sub_100751194();
  v54 = v75;
  v75[3] = v51;
  v54[4] = &protocol witness table for Resize;
  sub_10000D134(v54);
  sub_100751134();
  (*(v53 + 8))(v50, v51);
  return v58(v42, v64);
}

uint64_t sub_10060CBFC(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    sub_10000C888(a3 + 20, a3[23]);
    sub_100750574();
  }

  return sub_100750724();
}

uint64_t sub_10060CC84(uint64_t a1, void (*a2)(void *))
{
  v3 = sub_1007506A4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v8 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DisjointStack.EdgePosition.anchored(_:), v3, v5);
  a2(v7);
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v9(v7, v8, v3);
  return sub_100750664();
}

uint64_t sub_10060CDC0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100750704();
  if (a3)
  {
    sub_10000C888((a2 + 240), *(a2 + 264));
    sub_100750574();
  }

  return sub_100750714();
}

uint64_t sub_10060CE6C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000C888(a2 + 50, a2[53]);
  sub_100750574();
  sub_100750714();
  sub_10000C888(a2 + 55, a2[58]);
  sub_100750574();
  return sub_100750724();
}

uint64_t sub_10060CF3C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000C888(a2 + 60, a2[63]);
  sub_100750574();
  return sub_100750724();
}

uint64_t sub_10060CFBC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000C888(a2 + 5, a2[8]);
  sub_100750574();
  return sub_100750724();
}

uint64_t sub_10060D03C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000C888(a2 + 20, a2[23]);
  sub_100750574();
  return sub_100750724();
}

uint64_t sub_10060D0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100750704();
  sub_10000C888((a2 + 240), *(a2 + 264));
  sub_100750574();
  return sub_100750714();
}

uint64_t sub_10060D15C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000C888(a2 + 35, a2[38]);
  sub_100750574();
  return sub_100750714();
}

uint64_t sub_10060D1DC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10000C888(a2 + 40, a2[43]);
  sub_100750574();
  sub_100750714();
  sub_10000C888(a2 + 45, a2[48]);
  sub_100750574();
  return sub_100750724();
}

uint64_t sub_10060D2BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 962))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10060D304(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 952) = 0;
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
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 960) = 0;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
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
      *(result + 962) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 962) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10060D45C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 520))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10060D4A4(uint64_t result, int a2, int a3)
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
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10060D5D4()
{
  sub_10000C620((v0 + 64));
  sub_10000C620((v0 + 104));
  sub_10000C620((v0 + 144));
  sub_10000C620((v0 + 184));
  sub_10000C620((v0 + 224));
  sub_10000C620((v0 + 264));
  sub_10000C620((v0 + 304));
  sub_10000C620((v0 + 344));
  sub_10000C620((v0 + 384));
  sub_10000C620((v0 + 424));
  sub_10000C620((v0 + 464));
  sub_10000C620((v0 + 504));
  sub_10000C620((v0 + 544));
  sub_10000C620((v0 + 584));
  sub_10000C620((v0 + 624));
  sub_10000C620((v0 + 664));
  sub_10000C620((v0 + 704));
  sub_10000C620((v0 + 744));
  sub_10000C620((v0 + 784));
  if (*(v0 + 848))
  {
    sub_10000C620((v0 + 824));
  }

  if (*(v0 + 888))
  {
    sub_10000C620((v0 + 864));
  }

  if (*(v0 + 928))
  {
    sub_10000C620((v0 + 904));
  }

  if (*(v0 + 968))
  {
    sub_10000C620((v0 + 944));
  }

  return _swift_deallocObject(v0, 1000, 7);
}

uint64_t sub_10060D794()
{
  sub_10000C620((v0 + 56));
  sub_10000C620((v0 + 96));
  sub_10000C620((v0 + 136));
  sub_10000C620((v0 + 176));
  sub_10000C620((v0 + 216));
  sub_10000C620((v0 + 256));
  sub_10000C620((v0 + 296));
  sub_10000C620((v0 + 336));
  sub_10000C620((v0 + 376));
  sub_10000C620((v0 + 416));
  sub_10000C620((v0 + 456));
  sub_10000C620((v0 + 496));
  sub_10000C620((v0 + 536));
  sub_10000C620((v0 + 576));
  sub_10000C620((v0 + 616));
  sub_10000C620((v0 + 656));
  sub_10000C620((v0 + 696));
  sub_10000C620((v0 + 736));
  sub_10000C620((v0 + 776));
  if (*(v0 + 840))
  {
    sub_10000C620((v0 + 816));
  }

  if (*(v0 + 880))
  {
    sub_10000C620((v0 + 856));
  }

  if (*(v0 + 920))
  {
    sub_10000C620((v0 + 896));
  }

  if (*(v0 + 960))
  {
    sub_10000C620((v0 + 936));
  }

  return _swift_deallocObject(v0, 992, 7);
}

uint64_t sub_10060D8A4()
{
  sub_10000C620(v0 + 7);
  sub_10000C620(v0 + 12);
  sub_10000C620(v0 + 17);
  sub_10000C620(v0 + 22);
  sub_10000C620(v0 + 27);
  sub_10000C620(v0 + 32);
  sub_10000C620(v0 + 37);
  sub_10000C620(v0 + 42);
  sub_10000C620(v0 + 47);
  sub_10000C620(v0 + 52);
  sub_10000C620(v0 + 57);
  sub_10000C620(v0 + 62);
  sub_10000C620(v0 + 67);
  sub_10000C620(v0 + 72);
  sub_10000C620(v0 + 77);
  sub_10000C620(v0 + 82);
  sub_10000C620(v0 + 87);
  sub_10000C620(v0 + 92);
  sub_10000C620(v0 + 97);
  if (v0[105])
  {
    sub_10000C620(v0 + 102);
  }

  if (v0[110])
  {
    sub_10000C620(v0 + 107);
  }

  if (v0[115])
  {
    sub_10000C620(v0 + 112);
  }

  if (v0[120])
  {
    sub_10000C620(v0 + 117);
  }

  return _swift_deallocObject(v0, 978, 7);
}

uint64_t sub_10060D9EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10060DAF0()
{
  v0 = sub_10074EAB4();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v27 - v3;
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.smallLockup(_:))
  {
    if (v13 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      v14 = type metadata accessor for MediumLockupCollectionViewCell(0);
      v15 = type metadata accessor for MediumLockupCollectionViewCell;
      sub_100611850(&qword_1009411C8, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007D27A4);
      sub_100611850(&qword_100929678, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007AD65C);
      v16 = &unk_1009411D0;
      v17 = &unk_1007CBFA8;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      v14 = type metadata accessor for LargeLockupCollectionViewCell(0);
      v15 = type metadata accessor for LargeLockupCollectionViewCell;
      sub_100611850(&qword_1009411E8, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007D28AC);
      sub_100611850(&qword_10093F1F0, type metadata accessor for LargeLockupCollectionViewCell, &unk_1007CB508);
      v16 = &unk_1009411F0;
      v17 = &unk_1007D28DC;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productTopLockup(_:))
    {
      v14 = type metadata accessor for ProductLockupCollectionViewCell(0);
      v15 = type metadata accessor for ProductLockupCollectionViewCell;
      sub_100611850(&qword_100941078, type metadata accessor for ProductLockupCollectionViewCell, &unk_1007D1DBC);
      sub_100611850(&qword_10092BBC0, type metadata accessor for ProductLockupCollectionViewCell, &unk_1007B0370);
      v16 = &unk_100941080;
      v17 = &unk_1007B4808;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell(0);
      v15 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell;
      sub_100611850(&qword_100941248, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell, &unk_1007D2C6C);
      sub_100611850(&qword_10093F130, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell, &unk_1007CB400);
      v16 = &unk_100941250;
      v17 = &unk_1007D2C9C;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell(0);
      v15 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell;
      sub_100611850(&qword_100941220, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell, &unk_1007D2B1C);
      sub_100611850(&qword_1009336C8, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell, &unk_1007BAD50);
      v16 = &unk_100941228;
      v17 = &unk_1007D2B4C;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
    {
      v14 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell(0);
      v15 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell;
      sub_100611850(&qword_100940F08, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell, &unk_1007C2124);
      sub_100611850(&qword_1009403C8, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell, &unk_1007C2108);
      v16 = &unk_100938790;
      v17 = &unk_1007C20C0;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v14 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell(0);
      v15 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell;
      sub_100611850(&qword_100940F00, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell, &unk_1007C36D4);
      sub_100611850(&qword_10093DE90, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell, &unk_1007C36B8);
      v16 = &unk_100939710;
      v17 = &unk_1007C3670;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.action(_:))
    {
      v14 = type metadata accessor for ActionCollectionViewCell(0);
      v15 = type metadata accessor for ActionCollectionViewCell;
      sub_100611850(&qword_1009413E0, type metadata accessor for ActionCollectionViewCell, &unk_1007D3848);
      sub_100611850(&qword_100940C08, type metadata accessor for ActionCollectionViewCell, &unk_1007CD5C0);
      v16 = &unk_1009413E8;
      v17 = &unk_1007CC480;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.artwork(_:))
    {
      v14 = type metadata accessor for ArtworkCollectionViewCell(0);
      v15 = type metadata accessor for ArtworkCollectionViewCell;
      sub_100611850(&qword_100941360, type metadata accessor for ArtworkCollectionViewCell, &unk_1007D34B4);
      sub_100611850(&unk_10093B150, type metadata accessor for ArtworkCollectionViewCell, &unk_1007C6D58);
      v16 = &unk_100941368;
      v17 = &unk_1007D34E4;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.ribbonBar(_:) || v13 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v14 = type metadata accessor for RibbonBarItemCollectionViewCell(0);
      v15 = type metadata accessor for RibbonBarItemCollectionViewCell;
      sub_100611850(&qword_100941330, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_1007D5948);
      sub_100611850(&qword_10093DF98, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_1007C9D90);
      v16 = &unk_100941338;
      v17 = &unk_1007D5978;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.paragraph(_:))
    {
      v14 = type metadata accessor for ParagraphCollectionViewCell(0);
      v15 = type metadata accessor for ParagraphCollectionViewCell;
      sub_100611850(&qword_1009411A8, type metadata accessor for ParagraphCollectionViewCell, &unk_1007D269C);
      sub_100611850(&qword_100929FF8, type metadata accessor for ParagraphCollectionViewCell, &unk_1007AE398);
      v16 = &unk_1009411B0;
      v17 = &unk_1007CE388;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.annotation(_:))
    {
      v19 = sub_10074F3F4();
      v31 = v19;
      v32 = sub_100611850(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v20 = sub_10000D134(v30);
      (*(*(v19 - 8) + 104))(v20, enum case for Feature.annotations_update_2025A(_:), v19);
      LOBYTE(v19) = sub_10074FC74();
      sub_10000C620(v30);
      if ((v19 & 1) == 0)
      {
        v14 = type metadata accessor for AnnotationCollectionViewCell(0);
        v15 = type metadata accessor for AnnotationCollectionViewCell;
        sub_100611850(&qword_1009413B8, type metadata accessor for AnnotationCollectionViewCell, &unk_1007D37E8);
        sub_100611850(&qword_100934540, type metadata accessor for AnnotationCollectionViewCell, &unk_1007BBC80);
        v16 = &unk_1009413C0;
        v17 = &unk_1007D8728;
        goto LABEL_26;
      }

      v14 = type metadata accessor for AnnotationCollectionViewHostingCell(0);
      v15 = type metadata accessor for AnnotationCollectionViewHostingCell;
      sub_100611850(&qword_1009413C8, type metadata accessor for AnnotationCollectionViewHostingCell, &unk_1007D1340);
      sub_100611850(&qword_1009413D0, type metadata accessor for AnnotationCollectionViewHostingCell, &unk_1007BB2E8);
      v16 = &unk_1009413D8;
      goto LABEL_31;
    }

    if (v13 == enum case for Shelf.ContentType.footnote(_:))
    {
      v14 = type metadata accessor for FootnoteCollectionViewCell(0);
      v15 = type metadata accessor for FootnoteCollectionViewCell;
      sub_100611850(&qword_1009412D0, type metadata accessor for FootnoteCollectionViewCell, &unk_1007D301C);
      sub_100611850(&qword_10093ADD0, type metadata accessor for FootnoteCollectionViewCell, &unk_1007C6548);
      v16 = &unk_1009412D8;
      v17 = &unk_1007D304C;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.titledParagraph(_:))
    {
      v14 = type metadata accessor for TitledParagraphCollectionViewCell(0);
      v15 = type metadata accessor for TitledParagraphCollectionViewCell;
      sub_100611850(&qword_100940F60, type metadata accessor for TitledParagraphCollectionViewCell, &unk_1007D17F4);
      sub_100611850(&unk_1009436A0, type metadata accessor for TitledParagraphCollectionViewCell, &unk_1007D0450);
      v16 = &unk_100940F68;
      v17 = &unk_1007D1824;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.editorialCard(_:))
    {
      v14 = type metadata accessor for EditorialCardCollectionViewCell(0);
      v15 = type metadata accessor for EditorialCardCollectionViewCell;
      sub_100611850(&qword_100941318, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007D3214);
      sub_100611850(&qword_100941320, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007D68C8);
      v16 = &unk_100941328;
      v17 = &unk_1007D3244;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.videoCard(_:))
    {
      v14 = type metadata accessor for VideoCardCollectionViewCell(0);
      v15 = type metadata accessor for VideoCardCollectionViewCell;
      sub_100611850(&qword_100940F18, type metadata accessor for VideoCardCollectionViewCell, &unk_1007D1600);
      sub_100611850(&qword_100925848, type metadata accessor for VideoCardCollectionViewCell, &unk_1007A90F8);
      v16 = &unk_100940F20;
      v17 = &unk_1007D1630;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.brick(_:))
    {
      v14 = type metadata accessor for BrickCollectionViewCell(0);
      v15 = type metadata accessor for BrickCollectionViewCell;
      sub_100611850(&qword_100941340, type metadata accessor for BrickCollectionViewCell, &unk_1007D3364);
      sub_100611850(&qword_10093D3C8, type metadata accessor for BrickCollectionViewCell, &unk_1007C84F0);
      v16 = &unk_100941348;
      v17 = &unk_1007D3394;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_44:
      v14 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell(0);
      v15 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell;
      sub_100611850(&qword_100940FE8, type metadata accessor for ChartOrCategoryBrickCollectionViewCell, &unk_1007D32BC);
      sub_100611850(&qword_100925B08, type metadata accessor for ChartOrCategoryBrickCollectionViewCell, &unk_1007A9378);
      v16 = &unk_100940FF0;
      v17 = &unk_1007D32EC;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productCapability(_:))
    {
      v21 = sub_10074F3F4();
      v31 = v21;
      v32 = sub_100611850(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v22 = sub_10000D134(v30);
      (*(*(v21 - 8) + 104))(v22, enum case for Feature.product_capability_update_2024E(_:), v21);
      LOBYTE(v21) = sub_10074FC74();
      sub_10000C620(v30);
      if ((v21 & 1) == 0)
      {
        v14 = type metadata accessor for ProductCapabilityCell(0);
        v15 = type metadata accessor for ProductCapabilityCell;
        sub_100611850(&qword_1009410F8, type metadata accessor for ProductCapabilityCell, &unk_1007D2118);
        sub_100611850(&qword_1009394D0, type metadata accessor for ProductCapabilityCell, ")~\t");
        v16 = &unk_100941100;
        v17 = &unk_1007D2148;
        goto LABEL_26;
      }
    }

    else
    {
      if (v13 == enum case for Shelf.ContentType.reviews(_:))
      {
        v14 = type metadata accessor for ProductReviewCollectionViewCell(0);
        v15 = type metadata accessor for ProductReviewCollectionViewCell;
        sub_100611850(&qword_100941050, type metadata accessor for ProductReviewCollectionViewCell, &unk_1007D1E4C);
        sub_100611850(&qword_100941058, type metadata accessor for ProductReviewCollectionViewCell, &unk_1007D5EA0);
        v16 = &unk_100941060;
        v17 = &unk_1007D1E7C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.reviewSummary(_:))
      {
        v14 = type metadata accessor for ReviewSummaryCollectionViewCell(0);
        v15 = type metadata accessor for ReviewSummaryCollectionViewCell;
        sub_100611850(&qword_100941040, type metadata accessor for ReviewSummaryCollectionViewCell, &unk_1007D1DEC);
        sub_100611850(&qword_100933038, type metadata accessor for ReviewSummaryCollectionViewCell, &unk_1007BA250);
        v16 = &unk_100941048;
        v17 = &unk_1007AE4BC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorsChoice(_:))
      {
        v14 = type metadata accessor for ProductEditorsChoiceCollectionViewCell(0);
        v15 = type metadata accessor for ProductEditorsChoiceCollectionViewCell;
        sub_100611850(&qword_1009412E0, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_1007D6D14);
        sub_100611850(&qword_1009412E8, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_1007D6CF8);
        v16 = &unk_1009412F0;
        v17 = &unk_1007D6DB8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.todayCard(_:) || v13 == enum case for Shelf.ContentType.miniTodayCard(_:))
      {
        v14 = type metadata accessor for BaseTodayCardCollectionViewCell(0);
        v15 = type metadata accessor for BaseTodayCardCollectionViewCell;
        sub_100611850(&qword_1009408C8, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007CCFB4);
        sub_100611850(&qword_1009408B0, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_1007CCE58);
        v16 = &unk_1009408E8;
        v17 = &unk_1007CCFE4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialLink(_:))
      {
        v14 = type metadata accessor for LinkCollectionViewCell(0);
        v15 = type metadata accessor for LinkCollectionViewCell;
        sub_100611850(&qword_1009411D8, type metadata accessor for LinkCollectionViewCell, &unk_1007D2804);
        sub_100611850(&qword_100924B78, type metadata accessor for LinkCollectionViewCell, "A*\v");
        v16 = &unk_1009411E0;
        v17 = &unk_1007D2834;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.quote(_:))
      {
        v14 = type metadata accessor for QuoteCollectionViewCell(0);
        v15 = type metadata accessor for QuoteCollectionViewCell;
        sub_100611850(&qword_100941068, type metadata accessor for QuoteCollectionViewCell, &unk_1007D1D1C);
        sub_100611850(&unk_1009450B0, type metadata accessor for QuoteCollectionViewCell, &unk_1007D4F08);
        v16 = &unk_100941070;
        v17 = &unk_1007D1D4C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.horizontalRule(_:))
      {
        v14 = type metadata accessor for HorizontalRuleCollectionViewCell(0);
        v15 = type metadata accessor for HorizontalRuleCollectionViewCell;
        sub_100611850(&qword_100941258, type metadata accessor for HorizontalRuleCollectionViewCell, &unk_1007D2D14);
        sub_100611850(&qword_100941260, type metadata accessor for HorizontalRuleCollectionViewCell, &unk_1007CEB20);
        v16 = &unk_100941268;
        v17 = &unk_1007D2D44;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedArtwork(_:))
      {
        v14 = type metadata accessor for FramedArtworkCollectionViewCell(0);
        v15 = type metadata accessor for FramedArtworkCollectionViewCell;
        sub_100611850(&qword_1009412C0, type metadata accessor for FramedArtworkCollectionViewCell, &unk_1007D2FBC);
        sub_100611850(&unk_1009358D0, type metadata accessor for FramedArtworkCollectionViewCell, &unk_1007BDD78);
        v16 = &unk_1009412C8;
        v17 = &unk_1007CF870;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshots(_:))
      {
        v14 = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
        v15 = type metadata accessor for ScreenshotShelfCollectionViewCell;
        sub_100611850(&qword_100941010, type metadata accessor for ScreenshotShelfCollectionViewCell, &unk_1007D1BCC);
        sub_100611850(&qword_100923800, type metadata accessor for ScreenshotShelfCollectionViewCell, &unk_1007A6978);
        v16 = &unk_100941018;
        v17 = &unk_1007D1BFC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMedia(_:))
      {
        v14 = type metadata accessor for ProductMediaCollectionViewCell(0);
        v15 = type metadata accessor for ProductMediaCollectionViewCell;
        sub_100611850(&qword_1009410D8, type metadata accessor for ProductMediaCollectionViewCell, &unk_1007D20B8);
        sub_100611850(&qword_10092E620, type metadata accessor for ProductMediaCollectionViewCell, &unk_1007B3858);
        v16 = &unk_1009410E0;
        v17 = &unk_1007C5588;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v14 = type metadata accessor for ProductMediaItemCollectionViewCell(0);
        v15 = type metadata accessor for ProductMediaItemCollectionViewCell;
        sub_100611850(&qword_1009410C8, type metadata accessor for ProductMediaItemCollectionViewCell, &unk_1007A6E28);
        sub_100611850(&qword_100925B90, type metadata accessor for ProductMediaItemCollectionViewCell, &unk_1007A9628);
        v16 = &unk_1009410D0;
        v17 = &unk_1007A6E58;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appShowcase(_:))
      {
        v14 = type metadata accessor for AppShowcaseCollectionViewCell(0);
        v15 = type metadata accessor for AppShowcaseCollectionViewCell;
        sub_100611850(&qword_1009413A8, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007D36FC);
        sub_100611850(&qword_100934E28, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007BCBA8);
        v16 = &unk_1009413B0;
        v17 = &unk_1007D372C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
      {
        v14 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
        v15 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell;
        sub_100611850(&qword_100941230, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell, &unk_1007D2BC4);
        sub_100611850(&qword_100941238, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell, &unk_1007D4E88);
        v16 = &unk_100941240;
        v17 = &unk_1007D2BF4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appTrailerLockup(_:))
      {
        v14 = type metadata accessor for AppTrailerLockupCollectionViewCell(0);
        v15 = type metadata accessor for AppTrailerLockupCollectionViewCell;
        sub_100611850(&qword_100941390, type metadata accessor for AppTrailerLockupCollectionViewCell, &unk_1007D26FC);
        sub_100611850(&qword_100941398, type metadata accessor for AppTrailerLockupCollectionViewCell, &unk_1007C7CE8);
        v16 = &unk_1009413A0;
        v17 = &unk_1007D272C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        v14 = type metadata accessor for ProductPageLinkCollectionViewCell(0);
        v15 = type metadata accessor for ProductPageLinkCollectionViewCell;
        sub_100611850(&qword_1009410B8, type metadata accessor for ProductPageLinkCollectionViewCell, &unk_1007D1EF4);
        sub_100611850(&qword_100932840, type metadata accessor for ProductPageLinkCollectionViewCell, &unk_1007B9C00);
        v16 = &unk_1009410C0;
        v17 = &unk_1007D1F24;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productRatings(_:))
      {
        v14 = type metadata accessor for ProductRatingsCollectionViewCell(0);
        v15 = type metadata accessor for ProductRatingsCollectionViewCell;
        sub_100611850(&qword_1009410A8, type metadata accessor for ProductRatingsCollectionViewCell, &unk_1007D5398);
        sub_100611850(&qword_1009384E0, type metadata accessor for ProductRatingsCollectionViewCell, &unk_1007C1A70);
        v16 = &unk_1009410B0;
        v17 = &unk_1007D53C8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReview(_:))
      {
        v14 = type metadata accessor for GenericProductReviewCollectionViewCell(0);
        v15 = type metadata accessor for GenericProductReviewCollectionViewCell;
        sub_100611850(&qword_100941098, type metadata accessor for GenericProductReviewCollectionViewCell, &unk_1007B6544);
        sub_100611850(&qword_100927FC8, type metadata accessor for GenericProductReviewCollectionViewCell, &unk_1007AB680);
        v16 = &unk_1009410A0;
        v17 = &unk_1007B6574;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReviewAction(_:))
      {
        v14 = type metadata accessor for GenericProductReviewActionCollectionViewCell(0);
        v15 = type metadata accessor for GenericProductReviewActionCollectionViewCell;
        sub_100611850(&qword_100941088, type metadata accessor for GenericProductReviewActionCollectionViewCell, &unk_1007BB660);
        sub_100611850(&qword_100935950, type metadata accessor for GenericProductReviewActionCollectionViewCell, &unk_1007BDEA8);
        v16 = &unk_100941090;
        v17 = &unk_1007BB690;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.linkableText(_:))
      {
        v14 = type metadata accessor for LinkableTextCollectionViewCell(0);
        v15 = type metadata accessor for LinkableTextCollectionViewCell;
        sub_100611850(&qword_100941030, type metadata accessor for LinkableTextCollectionViewCell, &unk_1007D1F6C);
        sub_100611850(&qword_100933018, type metadata accessor for LinkableTextCollectionViewCell, &unk_1007BA198);
        v16 = &unk_100941038;
        v17 = &unk_1007CDA10;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedVideo(_:))
      {
        v14 = type metadata accessor for FramedVideoCollectionViewCell(0);
        v15 = type metadata accessor for FramedVideoCollectionViewCell;
        sub_100611850(&qword_1009412B0, type metadata accessor for FramedVideoCollectionViewCell, &unk_1007D2F34);
        sub_100611850(&unk_10092E020, type metadata accessor for FramedVideoCollectionViewCell, &unk_1007B2B68);
        v16 = &unk_1009412B8;
        v17 = &unk_1007A9B90;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productDescription(_:))
      {
        v14 = type metadata accessor for ProductDescriptionCollectionViewCell(0);
        v15 = type metadata accessor for ProductDescriptionCollectionViewCell;
        sub_100611850(&qword_1009410E8, type metadata accessor for ProductDescriptionCollectionViewCell, &unk_1007D2010);
        sub_100611850(&qword_10093A0D0, type metadata accessor for ProductDescriptionCollectionViewCell, &unk_1007C4BE0);
        v16 = &unk_1009410F0;
        v17 = &unk_1007D2040;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.banner(_:))
      {
        v14 = type metadata accessor for BannerCollectionViewCell(0);
        v15 = type metadata accessor for BannerCollectionViewCell;
        sub_100611850(&qword_100941350, type metadata accessor for BannerCollectionViewCell, &unk_1007D340C);
        sub_100611850(&qword_1009280D8, type metadata accessor for BannerCollectionViewCell, &unk_1007AB8A0);
        v16 = &unk_100941358;
        v17 = &unk_1007D343C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        v14 = type metadata accessor for ScreenshotsLockupCollectionViewCell(0);
        v15 = type metadata accessor for ScreenshotsLockupCollectionViewCell;
        sub_100611850(&qword_100940FF8, type metadata accessor for ScreenshotsLockupCollectionViewCell, &unk_1007D26FC);
        sub_100611850(&qword_100941000, type metadata accessor for ScreenshotsLockupCollectionViewCell, &unk_1007C7CE8);
        v16 = &unk_100941008;
        v17 = &unk_1007D272C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.roundedButton(_:))
      {
        v14 = type metadata accessor for RoundedButtonCollectionViewCell(0);
        v15 = type metadata accessor for RoundedButtonCollectionViewCell;
        sub_100611850(&qword_100941020, type metadata accessor for RoundedButtonCollectionViewCell, &unk_1007D1C74);
        sub_100611850(&qword_10093A0D8, type metadata accessor for RoundedButtonCollectionViewCell, &unk_1007C4C60);
        v16 = &unk_100941028;
        v17 = &unk_1007D1CA4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.titledButtonStack(_:))
      {
        v14 = type metadata accessor for TitledButtonStackCollectionViewCell(0);
        v15 = type metadata accessor for TitledButtonStackCollectionViewCell;
        sub_100611850(&qword_100940F70, type metadata accessor for TitledButtonStackCollectionViewCell, &unk_1007D189C);
        sub_100611850(&qword_10092FA60, type metadata accessor for TitledButtonStackCollectionViewCell, &unk_1007B5D40);
        v16 = &unk_100940F78;
        v17 = &unk_1007D18CC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        v14 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
        v15 = type metadata accessor for BaseTodayBrickCollectionViewCell;
        sub_100611850(&qword_100940F80, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007B68CC);
        sub_100611850(&qword_10092FE68, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007B67A8);
        v16 = &unk_100940F88;
        v17 = &unk_1007B6884;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
      {
        v14 = type metadata accessor for LargeHeroBreakoutCollectionViewCell(0);
        v15 = type metadata accessor for LargeHeroBreakoutCollectionViewCell;
        sub_100611850(&qword_1009411F8, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_1007D2954);
        sub_100611850(&qword_100934D98, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_1007BC858);
        v16 = &unk_100941200;
        v17 = &unk_1007D2984;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.upsellBreakout(_:))
      {
        v14 = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
        v15 = type metadata accessor for UpsellBreakoutCollectionViewCell;
        sub_100611850(&qword_100940F28, type metadata accessor for UpsellBreakoutCollectionViewCell, &unk_1007D16A8);
        sub_100611850(qword_100937CE0, type metadata accessor for UpsellBreakoutCollectionViewCell, &unk_1007C0968);
        v16 = &unk_100940F30;
        v17 = &unk_1007D16D8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        v14 = type metadata accessor for SmallBreakoutCollectionViewCell(0);
        v15 = type metadata accessor for SmallBreakoutCollectionViewCell;
        sub_100611850(&qword_100940FC0, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_1007D1AF4);
        sub_100611850(&qword_100937F60, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_1007C0EE0);
        v16 = &unk_100940FC8;
        v17 = &unk_1007D1B24;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        v14 = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
        v15 = type metadata accessor for EditorialStoryCardCollectionViewCell;
        sub_100611850(&qword_1009412F8, type metadata accessor for EditorialStoryCardCollectionViewCell, &unk_1007D30C4);
        sub_100611850(&qword_100927128, type metadata accessor for EditorialStoryCardCollectionViewCell, &unk_1007AA590);
        v16 = &unk_100941300;
        v17 = &unk_1007D30F4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
      {
        v14 = type metadata accessor for MixedMediaLockupCollectionViewCell(0);
        v15 = type metadata accessor for MixedMediaLockupCollectionViewCell;
        sub_100611850(&qword_1009411B8, type metadata accessor for MixedMediaLockupCollectionViewCell, &unk_1007D26FC);
        sub_100611850(&qword_10093C988, type metadata accessor for MixedMediaLockupCollectionViewCell, &unk_1007C7CE8);
        v16 = &unk_1009411C0;
        v17 = &unk_1007D272C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeFooter(_:))
      {
        v14 = type metadata accessor for ArcadeFooterCollectionViewCell(0);
        v15 = type metadata accessor for ArcadeFooterCollectionViewCell;
        sub_100611850(&qword_100941380, type metadata accessor for ArcadeFooterCollectionViewCell, &unk_1007D3654);
        sub_100611850(&qword_100928F90, type metadata accessor for ArcadeFooterCollectionViewCell, &unk_1007AC910);
        v16 = &unk_100941388;
        v17 = &unk_1007D3684;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialQuote(_:))
      {
        v14 = type metadata accessor for EditorialQuoteCollectionViewCell(0);
        v15 = type metadata accessor for EditorialQuoteCollectionViewCell;
        sub_100611850(&qword_100941308, type metadata accessor for EditorialQuoteCollectionViewCell, &unk_1007D316C);
        sub_100611850(&qword_100936100, type metadata accessor for EditorialQuoteCollectionViewCell, &unk_1007BE260);
        v16 = &unk_100941310;
        v17 = &unk_1007D319C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeShowcase(_:))
      {
        v14 = type metadata accessor for ArcadeShowcaseCollectionViewCell(0);
        v15 = type metadata accessor for ArcadeShowcaseCollectionViewCell;
        sub_100611850(&qword_100941370, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_1007D3584);
        sub_100611850(&qword_10093CAF8, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_1007C7E88);
        v16 = &unk_100941378;
        v17 = &unk_1007D35B4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
      {
        v14 = type metadata accessor for GameCenterActivityFeedCollectionViewCell(0);
        v15 = type metadata accessor for GameCenterActivityFeedCollectionViewCell;
        sub_100611850(&qword_1009412A0, type metadata accessor for GameCenterActivityFeedCollectionViewCell, &unk_1007D1340);
        sub_100611850(&qword_100924A80, type metadata accessor for GameCenterActivityFeedCollectionViewCell, &unk_1007BB2E8);
        v16 = &unk_1009412A8;
        goto LABEL_31;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
      {
        v14 = type metadata accessor for ArcadeDownloadPackCollectionViewCell(0);
        v15 = type metadata accessor for ArcadeDownloadPackCollectionViewCell;
        sub_100611850(&qword_100940EF0, type metadata accessor for ArcadeDownloadPackCollectionViewCell, &unk_1007D13B8);
        sub_100611850(&qword_100940D40, type metadata accessor for ArcadeDownloadPackCollectionViewCell, &unk_1007CDBA8);
        v16 = &unk_100940EF8;
        v17 = &unk_1007D13E8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
      {
        v14 = type metadata accessor for GameCenterReengagementCollectionViewCell(0);
        v15 = type metadata accessor for GameCenterReengagementCollectionViewCell;
        sub_100611850(&qword_100941280, type metadata accessor for GameCenterReengagementCollectionViewCell, &unk_1007D2E64);
        sub_100611850(&qword_100936640, type metadata accessor for GameCenterReengagementCollectionViewCell, &unk_1007BEAB0);
        v16 = &unk_100941288;
        v17 = &unk_1007D2E94;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
        v15 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell;
        sub_100611850(&qword_100940FA0, type metadata accessor for SmallGameCenterPlayerCollectionViewCell, &unk_1007D19A4);
        sub_100611850(&unk_10093DCF0, type metadata accessor for SmallGameCenterPlayerCollectionViewCell, &unk_1007C9860);
        v16 = &unk_100940FA8;
        v17 = &unk_1007D19D4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell(0);
        v15 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell;
        sub_100611850(&qword_100941208, type metadata accessor for LargeGameCenterPlayerCollectionViewCell, &unk_1007D29FC);
        sub_100611850(&qword_100938740, type metadata accessor for LargeGameCenterPlayerCollectionViewCell, &unk_1007C1F28);
        v16 = &unk_100941210;
        v17 = &unk_1007D2A2C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
      {
        v14 = type metadata accessor for AchievementSummaryCollectionViewCell(0);
        v15 = type metadata accessor for AchievementSummaryCollectionViewCell;
        sub_100611850(&qword_100941290, type metadata accessor for AchievementSummaryCollectionViewCell, &unk_1007D38A8);
        sub_100611850(&unk_10092F600, type metadata accessor for AchievementSummaryCollectionViewCell, &unk_1007B55D0);
        v16 = &unk_100941298;
        v17 = &unk_1007D3900;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.posterLockup(_:))
      {
        v14 = type metadata accessor for PosterLockupCollectionViewCell(0);
        v15 = type metadata accessor for PosterLockupCollectionViewCell;
        sub_100611850(&qword_100941180, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007D25B0);
        sub_100611850(&qword_100941188, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007CFF78);
        v16 = &unk_100941190;
        v17 = &unk_1007D25E0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v14 = type metadata accessor for SmallContactCardCollectionViewCell(0);
        v15 = type metadata accessor for SmallContactCardCollectionViewCell;
        sub_100611850(&qword_100940FB0, type metadata accessor for SmallContactCardCollectionViewCell, &unk_1007D1A4C);
        sub_100611850(&qword_1009337F8, type metadata accessor for SmallContactCardCollectionViewCell, &unk_1007BAED0);
        v16 = &unk_100940FB8;
        v17 = &unk_1007D1A7C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        v14 = type metadata accessor for InformationRibbonCollectionViewCell(0);
        v15 = type metadata accessor for InformationRibbonCollectionViewCell;
        sub_100611850(&qword_100941218, type metadata accessor for InformationRibbonCollectionViewCell, &unk_1007D2A74);
        sub_100611850(&qword_10093DE98, type metadata accessor for InformationRibbonCollectionViewCell, &unk_1007C9BE0);
        v16 = &qword_100928440;
        v17 = &unk_1007D2AA4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
      {
        v14 = type metadata accessor for PreorderDisclaimerCollectionViewCell(0);
        v15 = type metadata accessor for PreorderDisclaimerCollectionViewCell;
        sub_100611850(&qword_100941168, type metadata accessor for PreorderDisclaimerCollectionViewCell, &unk_1007D2508);
        sub_100611850(&unk_10093FE60, type metadata accessor for PreorderDisclaimerCollectionViewCell, &unk_1007CC0A8);
        v16 = &unk_100941170;
        v17 = &unk_1007D2538;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyHeader(_:))
      {
        v14 = type metadata accessor for PrivacyHeaderCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyHeaderCollectionViewCell;
        sub_100611850(&qword_100941128, type metadata accessor for PrivacyHeaderCollectionViewCell, &unk_1007D2268);
        sub_100611850(&unk_10093D460, type metadata accessor for PrivacyHeaderCollectionViewCell, &unk_1007C8680);
        v16 = &unk_100941130;
        v17 = &unk_1007D2298;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyFooter(_:))
      {
        v14 = type metadata accessor for PrivacyFooterCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyFooterCollectionViewCell;
        sub_100611850(&qword_100941138, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_1007D2310);
        sub_100611850(&qword_100923AA0, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_1007A6D48);
        v16 = &unk_100941140;
        v17 = &unk_1007D2340;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v14 = type metadata accessor for PrivacyTypeCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyTypeCollectionViewCell;
        sub_100611850(&qword_100941118, type metadata accessor for PrivacyTypeCollectionViewCell, &unk_1007D21C0);
        sub_100611850(&unk_1009400C0, type metadata accessor for PrivacyTypeCollectionViewCell, &unk_1007CC380);
        v16 = &unk_100941120;
        v17 = &unk_1007D21F0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyCategory(_:))
      {
        v14 = type metadata accessor for PrivacyCategoryCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyCategoryCollectionViewCell;
        sub_100611850(&qword_100941158, type metadata accessor for PrivacyCategoryCollectionViewCell, &unk_1007D2460);
        sub_100611850(&qword_10093A310, type metadata accessor for PrivacyCategoryCollectionViewCell, &unk_1007C5338);
        v16 = &unk_100941160;
        v17 = &unk_1007D2490;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyDefinition(_:))
      {
        v14 = type metadata accessor for PrivacyDefinitionCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyDefinitionCollectionViewCell;
        sub_100611850(&qword_100941148, type metadata accessor for PrivacyDefinitionCollectionViewCell, &unk_1007D23B8);
        sub_100611850(&qword_10092DED8, type metadata accessor for PrivacyDefinitionCollectionViewCell, &unk_1007B27F0);
        v16 = &unk_100941150;
        v17 = &unk_1007D23E8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appPromotion(_:))
      {
        v14 = type metadata accessor for AppEventCollectionViewCell(0);
        v15 = type metadata accessor for AppEventCollectionViewCell;
        sub_100611850(&qword_1009350B8, type metadata accessor for AppEventCollectionViewCell, &unk_1007BCFE8);
        sub_100611850(&qword_1009350C0, type metadata accessor for AppEventCollectionViewCell, &unk_1007BCF9C);
        v16 = &qword_1009350C8;
        v17 = &unk_1007BD018;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResult(_:))
      {
        v14 = type metadata accessor for SearchResultCollectionViewCell(0);
        v15 = type metadata accessor for SearchResultCollectionViewCell;
        sub_100611850(&qword_100940FD8, type metadata accessor for SearchResultCollectionViewCell, &unk_1007D1B6C);
        sub_100611850(&qword_100931578, type metadata accessor for SearchResultCollectionViewCell, &unk_1007B8800);
        v16 = &unk_100940FE0;
        v17 = &unk_1007B8A3C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
      {
        v14 = type metadata accessor for SearchResultsContextCardCollectionViewCell(0);
        v15 = type metadata accessor for SearchResultsContextCardCollectionViewCell;
        sub_100611850(&qword_100940FD0, type metadata accessor for SearchResultsContextCardCollectionViewCell, &unk_1007A9DF0);
        sub_100611850(&qword_100926458, type metadata accessor for SearchResultsContextCardCollectionViewCell, &unk_1007A9D5C);
        v16 = &qword_100926460;
        v17 = &unk_1007A9DA8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.pageTabs(_:))
      {
        v14 = type metadata accessor for SegmentedControlCollectionViewCell(0);
        v15 = type metadata accessor for SegmentedControlCollectionViewCell;
        sub_100611850(&qword_100940F10, type metadata accessor for SegmentedControlCollectionViewCell, &unk_1007A61F4);
        sub_100611850(&qword_100923290, type metadata accessor for SegmentedControlCollectionViewCell, &unk_1007A6160);
        v16 = &qword_100923298;
        v17 = &unk_1007A61AC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.heroCarousel(_:))
      {
        v14 = type metadata accessor for HeroCarouselCollectionViewCell(0);
        v15 = type metadata accessor for HeroCarouselCollectionViewCell;
        sub_100611850(&qword_100941270, type metadata accessor for HeroCarouselCollectionViewCell, &unk_1007D2DBC);
        sub_100611850(&qword_10092A138, type metadata accessor for HeroCarouselCollectionViewCell, &unk_1007AE690);
        v16 = &unk_100941278;
        v17 = &unk_1007D2DEC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.uber(_:))
      {
        v14 = type metadata accessor for UberCollectionViewCell(0);
        v15 = type metadata accessor for UberCollectionViewCell;
        sub_100611850(&qword_100940F50, type metadata accessor for UberCollectionViewCell, &unk_1007D1750);
        sub_100611850(&unk_100943B10, type metadata accessor for UberCollectionViewCell, &unk_1007D08E8);
        v16 = &unk_100940F58;
        v17 = &unk_1007BD5A8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productBadge(_:))
      {
        v14 = type metadata accessor for BadgeCollectionViewCell(0);
        v15 = type metadata accessor for BadgeCollectionViewCell;
        sub_100611850(&qword_100941108, type metadata accessor for BadgeCollectionViewCell, &unk_1007B7778);
        sub_100611850(&qword_100941110, type metadata accessor for BadgeCollectionViewCell, &unk_1007D10E8);
        v16 = &qword_1009309E8;
        v17 = &unk_1007B77A8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mediaPageHeader(_:))
      {
        v14 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell(0);
        v15 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell;
        sub_100611850(&qword_100940EB0, type metadata accessor for MediaPageHeaderCollectionViewHostingCell, &unk_1007D1340);
        sub_100611850(&qword_100940EB8, type metadata accessor for MediaPageHeaderCollectionViewHostingCell, &unk_1007BB2E8);
        v16 = &unk_100940EC0;
        goto LABEL_31;
      }

      if (v13 == enum case for Shelf.ContentType.tagBrick(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.placeholder(_:))
      {
        v14 = type metadata accessor for PlaceholderCollectionViewCell(0);
        v15 = type metadata accessor for PlaceholderCollectionViewCell;
        sub_100611850(&qword_100941198, type metadata accessor for PlaceholderCollectionViewCell, &unk_1007D7A68);
        sub_100611850(&qword_100936B90, type metadata accessor for PlaceholderCollectionViewCell, &unk_1007BF9C8);
        v16 = &unk_1009411A0;
        v17 = &unk_1007D7A98;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.prefetchMarker(_:))
      {
        v14 = type metadata accessor for PrefetchMarkerCollectionViewCell(0);
        v15 = type metadata accessor for PrefetchMarkerCollectionViewCell;
        sub_100611850(&qword_100941178, type metadata accessor for PrefetchMarkerCollectionViewCell, &unk_1007B82E8);
        sub_100611850(&qword_100931258, type metadata accessor for PrefetchMarkerCollectionViewCell, &unk_1007B8254);
        v16 = &qword_100931260;
        v17 = &unk_1007B82A0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.unifiedMessage(_:))
      {
        v14 = type metadata accessor for UnifiedMessageCollectionViewCell(0);
        v15 = type metadata accessor for UnifiedMessageCollectionViewCell;
        sub_100611850(&qword_100940F38, type metadata accessor for UnifiedMessageCollectionViewCell, &unk_1007D1720);
        sub_100611850(&qword_100940F40, type metadata accessor for UnifiedMessageCollectionViewCell, &unk_1007D06C8);
        v16 = &unk_100940F48;
        v17 = &unk_1007C5CA8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
      {
        sub_100747BD4();
        v23 = v27;
        sub_10074EA54();
        sub_100611850(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
        v24 = v29;
        v25 = sub_100754324();
        v26 = *(v28 + 8);
        v26(v23, v24);
        v26(v4, v24);
        if ((v25 & 1) == 0)
        {
          v14 = type metadata accessor for SwiftUIProductPageCardViewHostingCell(0);
          v15 = type metadata accessor for SwiftUIProductPageCardViewHostingCell;
          sub_100611850(&qword_100940ED8, type metadata accessor for SwiftUIProductPageCardViewHostingCell, &unk_1007D1340);
          sub_100611850(&qword_100940EE0, type metadata accessor for SwiftUIProductPageCardViewHostingCell, &unk_1007BB2E8);
          v16 = &unk_100940EE8;
          goto LABEL_31;
        }
      }

      else if (v13 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        (*(v6 + 8))(v8, v5);
        return 0;
      }
    }

    v14 = type metadata accessor for SwiftUIViewHostingCell(0);
    v15 = type metadata accessor for SwiftUIViewHostingCell;
    sub_100611850(&qword_100940EC8, type metadata accessor for SwiftUIViewHostingCell, &unk_1007D1340);
    sub_100611850(&qword_100934080, type metadata accessor for SwiftUIViewHostingCell, &unk_1007BB2E8);
    v16 = &unk_100940ED0;
LABEL_31:
    v17 = &unk_1007D1370;
    goto LABEL_26;
  }

  v14 = type metadata accessor for SmallLockupCollectionViewCell(0);
  v15 = type metadata accessor for SmallLockupCollectionViewCell;
  sub_100611850(&qword_100940F90, type metadata accessor for SmallLockupCollectionViewCell, &unk_1007D1944);
  sub_100611850(&qword_1009393D8, type metadata accessor for SmallLockupCollectionViewCell, &unk_1007C2EF0);
  v16 = &unk_100940F98;
  v17 = &unk_1007ACFE0;
LABEL_26:
  sub_100611850(v16, v15, v17);
  return v14;
}

uint64_t sub_10061132C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = sub_100747C14();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.todayCard(_:))
  {
    if (v13 != enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        sub_10074FBB4();
        sub_100611850(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
        if ((sub_1007468D4() & 1) == 0)
        {
          goto LABEL_14;
        }

        v17 = sub_1006C4F84();
      }

      else
      {
        if (v13 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          goto LABEL_14;
        }

        v17 = sub_1000E71E8();
      }

      v16 = v17;
      goto LABEL_17;
    }

    sub_10074FBB4();
    sub_100611850(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
    if (sub_1007468D4())
    {
      sub_1007468B4();
      v16 = sub_1005F73F0(v22, 4);

      goto LABEL_17;
    }

LABEL_14:
    sub_100746884();
    v16 = sub_10060DAF0();
    (*(v20 + 8))(v4, v21);
    goto LABEL_17;
  }

  sub_10074FBB4();
  sub_100611850(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  if ((sub_1007468D4() & 1) == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for TodayCardGridTracker();
  sub_1007526C4();
  if (v22)
  {

    sub_1001217C4();
    v15 = v14;
  }

  else
  {
    v15 = 7;
  }

  sub_1007468B4();
  v16 = sub_1005F73F0(v22, v15);

LABEL_17:
  (*(v6 + 8))(v8, v5);
  return v16;
}

uint64_t sub_100611850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1006118E4(uint64_t a1)
{
  v2 = sub_10074F704();
  v55 = *(v2 - 8);
  __chkstk_darwin(v2);
  v54 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074EA34();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v6 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = &v42 - v7;
  v9 = sub_100748D64();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = sub_1007504F4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v50 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v42 - v21;
  sub_100746024();
  sub_100612058(&qword_100923AF8, &type metadata accessor for ProductMediaItem, &protocol conformance descriptor for ProductMediaItem);
  result = sub_1007468B4();
  if (v57)
  {
    v44 = a1;
    if (sub_100746004())
    {
      sub_10074F2A4();
      sub_100750504();

      v23 = *(v18 + 56);
      v23(v13, 0, 1, v17);
      (*(v18 + 32))(v16, v13, v17);
      v23(v16, 0, 1, v17);
      v24 = (*(v18 + 48))(v16, 1, v17);
    }

    else
    {
      v43 = v6;
      v45 = v2;
      v25 = *(v18 + 56);
      v26 = 1;
      v25(v13, 1, 1, v17);
      if (sub_100746014())
      {
        sub_10074EC14();

        sub_10074F2A4();
        sub_100750504();

        v26 = 0;
      }

      v25(v16, v26, 1, v17);
      v27 = *(v18 + 48);
      if (v27(v13, 1, v17) != 1)
      {
        sub_1000A5080(v13);
      }

      v2 = v45;
      v6 = v43;
      v24 = v27(v16, 1, v17);
    }

    if (v24 == 1)
    {

      return sub_1000A5080(v16);
    }

    v45 = v2;
    (*(v18 + 32))(v56, v16, v17);
    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    v28 = v51;
    v29 = v49;
    sub_1007525B4();

    (*(v6 + 8))(v8, v29);
    v31 = v52;
    v30 = v53;
    if ((*(v52 + 88))(v28, v53) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v31 + 96))(v28, v30);
      v32 = v46;
      v33 = v47;
      v34 = v28;
      v35 = v48;
      (*(v47 + 32))(v46, v34, v48);
      v36 = sub_100748D04();
      (*(v33 + 8))(v32, v35);
      v37 = v50;
      v38 = v56;
      v39 = v45;
      if ((v36 & 1) != 0 && (sub_100750444() & 1) == 0)
      {
        sub_100750484();
LABEL_18:
        swift_getKeyPath();
        v40 = v54;
        sub_100746914();

        sub_10074F5A4();
        (*(v55 + 8))(v40, v39);
        sub_1007504C4();

        v41 = *(v18 + 8);
        v41(v37, v17);
        return (v41)(v38, v17);
      }
    }

    else
    {
      (*(v31 + 8))(v28, v30);
      v37 = v50;
      v38 = v56;
      v39 = v45;
    }

    (*(v18 + 16))(v37, v38, v17);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_100612058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1006120AC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_artworkPlaceholder;
  sub_1007433C4();
  v11 = sub_1007431E4();
  sub_100746E74();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_supplementaryTextPlaceholder;
  sub_100743794();
  v13 = sub_100743784();
  v15 = sub_10071B540(v13, v14, UIFontTextStyleSubheadline);

  *&v5[v12] = v15;
  v5[OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] = 0;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for BrickPlaceholderView();
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  [v16 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_artworkPlaceholder]];
  return v16;
}

uint64_t sub_10061220C()
{
  v1 = sub_100750354();
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100743424();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100743444();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BrickPlaceholderView();
  v33.receiver = v0;
  v33.super_class = v11;
  objc_msgSendSuper2(&v33, "layoutSubviews");
  v12 = OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder;
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_supplementaryTextPlaceholder];
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder] == 1)
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_supplementaryTextPlaceholder]];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_supplementaryTextPlaceholder] removeFromSuperview];
  }

  if (qword_100920980 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v4, qword_10097FB10);
  (*(v5 + 16))(v7, v14, v4);
  v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_artworkPlaceholder];
  v31 = sub_1007433C4();
  v32 = &protocol witness table for UIView;
  v30 = v15;
  if (v0[v12] == 1)
  {
    v16 = sub_10034DB80();
    v17 = v13;
    v18 = &protocol witness table for UILabel;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v13 = 0;
    v26 = 0;
    v27 = 0;
  }

  v28 = v16;
  v29 = v18;
  v25 = v13;
  v19 = v15;
  sub_100743434();
  sub_1007477B4();
  sub_100743404();
  (*(v23 + 8))(v3, v24);
  return (*(v8 + 8))(v10, v22);
}

id sub_100612580(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BrickPlaceholderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100612624()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_artworkPlaceholder;
  sub_1007433C4();
  v3 = sub_1007431E4();
  sub_100746E74();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_supplementaryTextPlaceholder;
  sub_100743794();
  v5 = sub_100743784();
  v7 = sub_10071B540(v5, v6, UIFontTextStyleSubheadline);

  *(v1 + v4) = v7;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension20BrickPlaceholderView_wantsSupplementaryTextPlaceholder) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100612704(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v24[2] = a1;
  v24[3] = a2;
  v4 = sub_10074F284();
  __chkstk_darwin(v4 - 8);
  v24[0] = sub_10074F314();
  v5 = *(v24[0] - 8);
  __chkstk_darwin(v24[0]);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = sub_10000C518(&qword_100934DA0, &qword_1007BC9E0);
  __chkstk_darwin(v11 - 8);
  v13 = v24 - v12;
  v14 = sub_10074F164();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100740F54();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100740F44();
  sub_10074F134();
  sub_100740F24();
  sub_100740F14();
  sub_100740F34();
  if (v19)
  {
    sub_10074F144();
    v20 = sub_10074F0F4();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    v21 = sub_100752914();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    (*(v5 + 104))(v7, enum case for Artwork.Style.unspecified(_:), v24[0]);
    sub_10074F244();
    v22 = sub_10074F234();
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    (*(v16 + 8))(v18, v15);
    return 0;
  }

  return v22;
}

unint64_t sub_100612AEC()
{
  result = qword_100941450;
  if (!qword_100941450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941450);
  }

  return result;
}

uint64_t sub_100612B40()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_100941438);
  sub_10000D0FC(v4, qword_100941438);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

uint64_t sub_100612C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_100745D74();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_10000C518(&qword_100929630, &unk_1007D5E70);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_10074ED34();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100612E34, 0, 0);
}

uint64_t sub_100612E34()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_10000C518(&unk_100925780, qword_1007AC630);
  sub_100752764();
  sub_100752D34();
  v4 = v0[8];
  v0[25] = v0[7];
  v0[26] = v4;
  v0[27] = swift_getObjectType();
  sub_10000C518(&qword_100929F60, qword_1007AE2D8);
  sub_100752D34();
  sub_100742324();
  v5 = *(v2 + 48);
  v0[28] = v5;
  v0[29] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v3, 1, v1) == 1)
  {
    sub_10000C8CC(v0[18], &qword_100929630, &unk_1007D5E70);
  }

  else
  {
    v6 = v0[24];
    v7 = v0[20];
    v13 = v0[19];
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[12];
    (*(v7 + 32))(v6, v0[18]);
    (*(v8 + 104))(v9, enum case for InstallationType.redownload(_:), v10);
    sub_1007424C4();
    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v6, v13);
  }

  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_10061305C;

  return sub_100613B24();
}

uint64_t sub_10061305C()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1006132E0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 256) = v3;
    *v3 = v2;
    v3[1] = sub_1006131CC;

    return sub_1006141CC(v2 + 16);
  }
}

uint64_t sub_1006131CC()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100613660;
  }

  else
  {
    v2 = sub_100613480;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1006132E0(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[19];
  v4 = v1[17];
  sub_100742324();
  if (v2(v4, 1, v3) == 1)
  {
    v5 = v1[17];
    swift_unknownObjectRelease();
    sub_10000C620(v1 + 2);
    sub_10000C8CC(v5, &qword_100929630, &unk_1007D5E70);
  }

  else
  {
    v6 = v1[23];
    v7 = v1[19];
    v8 = v1[20];
    (*(v8 + 32))(v6, v1[17], v7);
    sub_1007424D4();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v6, v7);
    sub_10000C620(v1 + 2);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_100613480()
{
  v1 = v0[28];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[9];
  v5 = enum case for ActionOutcome.performed(_:);
  v6 = sub_100752624();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  sub_100742324();
  if (v1(v3, 1, v2) == 1)
  {
    v7 = v0[16];
    swift_unknownObjectRelease();
    sub_10000C620(v0 + 2);
    sub_10000C8CC(v7, &qword_100929630, &unk_1007D5E70);
  }

  else
  {
    v8 = v0[22];
    v9 = v0[19];
    v10 = v0[20];
    (*(v10 + 32))(v8, v0[16], v9);
    sub_1007424D4();
    swift_unknownObjectRelease();
    (*(v10 + 8))(v8, v9);
    sub_10000C620(v0 + 2);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100613660(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[19];
  v4 = v1[15];
  sub_100742324();
  if (v2(v4, 1, v3) == 1)
  {
    v5 = v1[15];
    swift_unknownObjectRelease();
    sub_10000C620(v1 + 2);
    sub_10000C8CC(v5, &qword_100929630, &unk_1007D5E70);
  }

  else
  {
    v7 = v1[20];
    v6 = v1[21];
    v8 = v1[19];
    (*(v7 + 32))(v6, v1[15], v8);
    sub_1007424D4();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v6, v8);
    sub_10000C620(v1 + 2);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_100613800(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100741494();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_10000C888((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000C518(&unk_100940300, qword_1007CE320);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_100741474();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100613970(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000A27FC;

  return sub_100612C94(a1, v6, a3);
}

unint64_t sub_100613A24()
{
  result = qword_100941458;
  if (!qword_100941458)
  {
    sub_100742344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941458);
  }

  return result;
}

uint64_t sub_100613A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100613AD0();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_100613AD0()
{
  result = qword_100941460;
  if (!qword_100941460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941460);
  }

  return result;
}

uint64_t sub_100613B24()
{
  sub_100752404();
  v0[22] = swift_task_alloc();
  v1 = sub_100741494();
  v0[23] = v1;
  v0[24] = *(v1 - 8);
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();

  return _swift_task_switch(sub_100613C18, 0, 0);
}

uint64_t sub_100613C18()
{
  v1 = v0[25];
  v2 = objc_allocWithZone(ASDSystemAppMetadata);
  v3 = sub_100753064();
  v4 = [v2 initWithBundleID:v3];
  v0[27] = v4;

  [v4 setUserInitiated:1];
  v5 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100613DB4;
  v6 = swift_continuation_init();
  v0[17] = sub_10000C518(&qword_100941488, &unk_1007CE310);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100613800;
  v0[13] = &unk_10087E230;
  v0[14] = v6;
  [v5 installApp:v4 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100613DB4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_100614130;
  }

  else
  {
    v2 = sub_100613EC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100613EC4()
{
  v1 = v0[27];
  (*(v0[24] + 32))(v0[26], v0[25], v0[23]);

  if (qword_100921A70 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = v0[24];
  v9 = v0[27];
  v4 = v0[23];
  v5 = sub_100752E44();
  sub_10000D0FC(v5, qword_100941438);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523F4();
  v11._object = 0x8000000100787900;
  v11._countAndFlagsBits = 0xD000000000000036;
  sub_1007523E4(v11);
  v0[21] = v4;
  v6 = sub_10000D134(v0 + 18);
  (*(v3 + 16))(v6, v2, v4);
  sub_1007523C4();
  sub_10000C8CC((v0 + 18), &unk_100923520, &qword_1007A5A70);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1007523E4(v12);
  sub_100752414();
  sub_100752CE4();

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100614130(uint64_t a1)
{
  v2 = *(v1 + 216);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1006141CC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10000C518(&qword_100941468, &qword_1007CE300);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_10000C518(&qword_100941470, &qword_1007CE308);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10061430C, 0, 0);
}

uint64_t sub_10061430C()
{
  v1 = *(v0 + 16);
  sub_10000C888(v1, v1[3]);
  if (sub_100742AD4())
  {
    if (qword_100921A70 != -1)
    {
      swift_once();
    }

    v2 = sub_100752E44();
    sub_10000D0FC(v2, qword_100941438);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_100921A70 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v14 = *(v0 + 64);
    v8 = *(v0 + 16);
    v9 = sub_100752E44();
    *(v0 + 80) = v9;
    *(v0 + 88) = sub_10000D0FC(v9, qword_100941438);
    *(v0 + 96) = sub_10000C518(&qword_100923930, &qword_1007A6B60);
    v10 = *(sub_100752454() - 8);
    *(v0 + 104) = *(v10 + 72);
    *(v0 + 120) = *(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    sub_10000C888(v8, v1[3]);
    sub_100742AC4();
    sub_10000C518(&qword_10092B0E0, &qword_1007AA000);
    sub_10002DDC8(&qword_10092B0E8, &qword_10092B0E0, &qword_1007AA000, &protocol conformance descriptor for AsyncEvent<A>);
    sub_1007525A4();

    (*(v7 + 16))(v14, v5, v6);
    sub_10002DDC8(&qword_100941478, &qword_100941470, &qword_1007CE308, &protocol conformance descriptor for AsyncStream<A>);
    sub_100753414();
    v11 = sub_10002DDC8(&qword_100941480, &qword_100941468, &qword_1007CE300, &protocol conformance descriptor for AsyncStream<A>.Iterator);
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_1006147C4;
    v13 = *(v0 + 24);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 124, v13, v11);
  }
}

uint64_t sub_1006147C4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];

    (*(v4 + 8))(v3, v5);
    v6 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  }

  else
  {
    v6 = sub_100614904;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100614904(__n128 a1)
{
  v2 = *(v1 + 124);
  if (v2 == 2)
  {
LABEL_4:
    v3 = *(v1 + 72);
    v4 = *(v1 + 48);
    v5 = *(v1 + 56);
    (*(*(v1 + 32) + 8))(*(v1 + 40), *(v1 + 24));
    (*(v5 + 8))(v3, v4);

    v6 = *(v1 + 8);

    return v6();
  }

  if (v2)
  {
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    goto LABEL_4;
  }

  v8 = sub_10002DDC8(&qword_100941480, &qword_100941468, &qword_1007CE300, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  *v9 = v1;
  v9[1] = sub_1006147C4;
  v10 = *(v1 + 24);

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 124, v10, v8);
}

uint64_t type metadata accessor for CappedSizeDynamicTypeLabel(uint64_t a1)
{
  result = qword_100941498;
  if (!qword_100941498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100614BB4(void *a1)
{
  v3 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_100750534();
  v7 = *(v6 - 8);
  *&result = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[qword_100941490];
  *&v1[qword_100941490] = a1;
  v22 = v11;
  if (!a1)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (!v11)
  {
    v20 = a1;
    goto LABEL_14;
  }

  v12 = sub_100753094();
  v14 = v13;
  if (v12 != sub_100753094() || v14 != v15)
  {
    v17 = sub_100754754();
    v18 = a1;

    if (v17)
    {

      v19 = v22;

      return result;
    }

LABEL_14:
    sub_100745B94();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_10006A144(v5);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      sub_100745B84();
      [v1 setNeedsLayout];

      (*(v7 + 8))(v10, v6);
    }

    return result;
  }

  return result;
}

id sub_100614E68()
{
  v1 = *(v0 + qword_100941490);
  if (v1)
  {
    sub_100745C84();
    v2 = sub_100745C94();
    v3 = v1;
    v4 = v2();
    v5 = [v4 preferredContentSizeCategory];

    LOBYTE(v4) = sub_100753934();
    if (v4)
    {
      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1007A7210;
      *(v6 + 32) = v2();
      v7 = objc_opt_self();
      *(v6 + 40) = [v7 traitCollectionWithPreferredContentSizeCategory:v3];
      sub_10021C300();
      isa = sub_100753294().super.isa;

      v9 = [v7 traitCollectionWithTraitsFromCollections:isa];

      return v9;
    }
  }

  sub_100745C84();
  v11 = sub_100745C94();

  return v11();
}

id sub_100615050()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006150A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_100923200, &unk_1007A5C50);
}

uint64_t sub_10061510C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1006151D4()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27ParagraphCollectionViewCell_expandableTextView];
  sub_10025FCF0(0, 0);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_hasMoreButton) = 0;
  sub_100260550();
  v2 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler);
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  return [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton) setUserInteractionEnabled:{0, sub_1000164A8(v3, v4)}];
}

void sub_100615280(void **a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10074F964();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v112 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v107 - v8;
  __chkstk_darwin(v9);
  v11 = &v107 - v10;
  __chkstk_darwin(v12);
  v14 = &v107 - v13;
  v15 = sub_10000C518(&qword_100930640, &qword_1007B7378);
  __chkstk_darwin(v15 - 8);
  v116 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v123 = &v107 - v18;
  __chkstk_darwin(v19);
  v115 = &v107 - v20;
  __chkstk_darwin(v21);
  v23 = &v107 - v22;
  v24 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  __chkstk_darwin(v24 - 8);
  v121 = &v107 - v25;
  v125 = sub_10000C518(&unk_100933240, &qword_1007AE3E8);
  v26 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v107 - v27;
  v119 = sub_10074F944();
  v127 = *(v119 - 8);
  __chkstk_darwin(v119);
  v122 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v126 = &v107 - v30;
  sub_10074F984();
  sub_100353770(v31);
  v128 = a1;
  sub_1007468B4();
  v32 = aBlock;
  if (aBlock)
  {
    v108 = v11;
    v109 = v23;
    v110 = v14;
    v113 = v26;
    v118 = v5;
    v114 = v4;
    v33 = [v1 contentView];
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    v37 = sub_10074F914();
    swift_getKeyPath();
    sub_100746914();

    v38 = v135;
    v39 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v37];
    v40 = [v37 length];
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = v38;
    *(v41 + 32) = v39;
    *(v41 + 40) = 1;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_100047814;
    *(v42 + 24) = v41;
    v133 = sub_1000B18A8;
    v134 = v42;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_100047044;
    v132 = &unk_10087E2A8;
    v43 = _Block_copy(&aBlock);
    v44 = v38;
    v45 = v39;

    [v37 enumerateAttributesInRange:0 options:v40 usingBlock:{0x100000, v43}];

    _Block_release(v43);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      __break(1u);
      goto LABEL_53;
    }

    v46 = [v2 contentView];
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    sub_1007477B4();
    v48 = v47;
    v50 = v49;

    v51 = sub_10007DC04();
    swift_getObjectType();
    v117 = v45;
    v52 = sub_10035387C(v45, v51, UIEdgeInsetsZero.top, left, bottom, right, v48, v50);
    swift_unknownObjectRelease();
    v53 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension27ParagraphCollectionViewCell_expandableTextView];
    v54 = v126;
    sub_10074F954();
    v55 = v127;
    v56 = v122;
    v57 = v54;
    v58 = v119;
    (*(v127 + 16))(v122, v57, v119);
    v59 = (*(v55 + 88))(v56, v58);
    v60 = v2;
    v61 = v118;
    v62 = v32;
    if (v59 != enum case for Paragraph.Style.standard(_:))
    {
      if (v59 == enum case for Paragraph.Style.article(_:))
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        v63 = sub_100753DF4();
        goto LABEL_7;
      }

      if (v59 != enum case for Paragraph.Style.caption(_:) && v59 != enum case for Paragraph.Style.todayCardOverlay(_:) && v59 != enum case for Paragraph.Style.privacyDefinitions(_:))
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        v64 = sub_100753DD4();
        v98 = v58;
        v99 = *(v127 + 8);
        v99(v126, v98);
        v99(v122, v98);
        goto LABEL_8;
      }
    }

    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v63 = sub_100753DD4();
LABEL_7:
    v64 = v63;
    (*(v127 + 8))(v126, v58);
LABEL_8:
    v127 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel;
    [*&v53[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel] setTextColor:v64];

    sub_100746964();
    sub_100752EB4();
    sub_100168504();
    sub_100752E84();
    v65 = aBlock;
    if (aBlock == 2)
    {
      v65 = sub_10074F8D4();
    }

    if ((v65 & v52 & 1) == 0)
    {
      v90 = v117;
      v91 = v123;
      sub_10074F974();
      v92 = v114;
      (*(v61 + 56))(v91, 0, 1, v114);
      v93 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
      v94 = v53[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed];
      v53[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] = 0;
      v95 = *&v53[v127];
      v96 = v90;
      [v95 setNumberOfLines:0];
      if (v94 != v53[v93])
      {
        sub_100260550();
      }

      v85 = v96;
      sub_10025FF08(v96);
      v53[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v97 = v116;
      sub_100016B4C(v123, v116, &qword_100930640, &qword_1007B7378);
      if ((*(v61 + 48))(v97, 1, v92) == 1)
      {
        sub_10038A470(v97);
        v89 = v117;
      }

      else
      {
        v100 = v111;
        (*(v61 + 32))(v111, v97, v92);
        v101 = v112;
        (*(v61 + 16))(v112, v100, v92);
        v102 = (*(v61 + 88))(v101, v92);
        if (v102 == enum case for Paragraph.Alignment.left(_:))
        {
          v103 = 0;
          v89 = v117;
        }

        else
        {
          v89 = v117;
          if (v102 == enum case for Paragraph.Alignment.center(_:))
          {
            v103 = 1;
          }

          else if (v102 == enum case for Paragraph.Alignment.right(_:))
          {
            v103 = 2;
          }

          else if (v102 == enum case for Paragraph.Alignment.justified(_:))
          {
            v103 = 3;
          }

          else if (v102 == enum case for Paragraph.Alignment.localized(_:))
          {
            v103 = 4;
          }

          else
          {
            (*(v61 + 8))(v112, v92);
            v103 = 0;
          }
        }

        [*&v53[v127] setTextAlignment:v103];
        (*(v61 + 8))(v100, v92);
      }

      [v53 setNeedsLayout];
      v77 = v123;
      goto LABEL_50;
    }

    v126 = v2;
    v66 = sub_10074F8E4();
    swift_getKeyPath();
    sub_100746914();

    v67 = v135;
    v68 = v62;
    v69 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v66];
    v70 = [v66 length];
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(v71 + 24) = v67;
    *(v71 + 32) = v69;
    *(v71 + 40) = 1;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_1002B1424;
    *(v72 + 24) = v71;
    v133 = sub_1002B1408;
    v134 = v72;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_100047044;
    v132 = &unk_10087E320;
    v73 = _Block_copy(&aBlock);
    v74 = v67;
    v75 = v69;

    [v66 enumerateAttributesInRange:0 options:v70 usingBlock:{0x100000, v73}];

    _Block_release(v73);
    LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

    if ((v66 & 1) == 0)
    {
      v76 = v75;
      v128 = v68;
      v77 = v109;
      sub_10074F974();
      v78 = v118;
      v79 = v114;
      (*(v118 + 56))(v77, 0, 1, v114);
      v80 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
      v81 = v53[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed];
      v53[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] = 1;
      v82 = *&v53[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines];
      v83 = *&v53[v127];
      v84 = v76;
      [v83 setNumberOfLines:v82];
      if (v81 != v53[v80])
      {
        sub_100260550();
      }

      v85 = v84;
      sub_10025FF08(v84);
      v53[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v86 = v115;
      sub_100016B4C(v77, v115, &qword_100930640, &qword_1007B7378);
      v87 = (*(v78 + 48))(v86, 1, v79);
      v60 = v126;
      v88 = v110;
      v89 = v117;
      if (v87 == 1)
      {
        sub_10038A470(v86);
      }

      else
      {
        (*(v78 + 32))(v110, v86, v79);
        v104 = v108;
        (*(v78 + 16))(v108, v88, v79);
        v105 = (*(v78 + 88))(v104, v79);
        if (v105 == enum case for Paragraph.Alignment.left(_:))
        {
          v106 = 0;
        }

        else if (v105 == enum case for Paragraph.Alignment.center(_:))
        {
          v106 = 1;
        }

        else if (v105 == enum case for Paragraph.Alignment.right(_:))
        {
          v106 = 2;
        }

        else if (v105 == enum case for Paragraph.Alignment.justified(_:))
        {
          v106 = 3;
        }

        else if (v105 == enum case for Paragraph.Alignment.localized(_:))
        {
          v106 = 4;
        }

        else
        {
          (*(v78 + 8))(v108, v79);
          v106 = 0;
        }

        [v83 setTextAlignment:v106];
        (*(v78 + 8))(v88, v79);
      }

      [v53 setNeedsLayout];

LABEL_50:
      sub_10038A470(v77);
      [v60 setNeedsLayout];

      (*(v113 + 8))(v124, v125);
      return;
    }

LABEL_53:
    __break(1u);
  }
}