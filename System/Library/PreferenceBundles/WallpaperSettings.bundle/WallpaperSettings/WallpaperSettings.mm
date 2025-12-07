uint64_t sub_1C40(uint64_t a1)
{
  qword_3EA60 = [*(a1 + 32) createWorkloopWithLabel:@"com.apple.WallpaperSettings.framework-workloop"];

  return _objc_release_x1();
}

double variable initialization expression of WallpaperSettingsRootViewController.autobahnViewModel()
{
  type metadata accessor for WallpaperAutobahnViewModel();
  v0 = swift_allocObject();
  result = 100.0;
  *(v0 + 16) = xmmword_2B570;
  *(v0 + 32) = 1;
  return result;
}

uint64_t variable initialization expression of WallpaperSettingsRootViewController.posterConfigurationCarouselViewModel()
{
  type metadata accessor for PosterConfigurationCarouselViewModel(0);
  swift_allocObject();
  return sub_10F80();
}

id sub_1D4C()
{
  v1 = OBJC_IVAR___WallpaperSettingsRootViewController____lazy_storage___hostingController;
  v2 = *(v0 + OBJC_IVAR___WallpaperSettingsRootViewController____lazy_storage___hostingController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WallpaperSettingsRootViewController____lazy_storage___hostingController);
  }

  else
  {
    type metadata accessor for WallpaperAutobahnViewModel();
    sub_3914(&qword_3D528, type metadata accessor for WallpaperAutobahnViewModel, &unk_2C89C);

    sub_29934();
    v4 = objc_allocWithZone(sub_3398(&qword_3D530, &qword_2B720));
    v5 = v0;
    v6 = sub_29C74();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

Swift::Void __swiftcall WallpaperSettingsRootViewController.viewDidLoad()()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v1 = qword_408A0;
  v2 = sub_2A444();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  if (!v3)
  {
    sub_2A454();
    v3 = sub_2A444();
  }

  [v0 setTitle:v3];

  v4 = sub_1D4C();
  v5 = [v4 view];

  if (v5)
  {
    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 addSubview:v5];

      v8 = [v0 view];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];
        v11 = v10;
        v13 = v12;

        [v5 setFrame:{0.0, 0.0, v11, v13}];
        [v5 setAutoresizingMask:18];
        v14 = OBJC_IVAR___WallpaperSettingsRootViewController____lazy_storage___hostingController;
        [v0 addChildViewController:*&v0[OBJC_IVAR___WallpaperSettingsRootViewController____lazy_storage___hostingController]];
        [*&v0[v14] didMoveToParentViewController:v0];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall WallpaperSettingsRootViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewIsAppearing:", a1);
  sub_2118();
}

uint64_t sub_2118()
{
  result = UIApp;
  if (UIApp)
  {
    v2 = *(v0 + OBJC_IVAR___WallpaperSettingsRootViewController_autobahnViewModel);
    v3 = [UIApp activeInterfaceOrientation];
    if (v3 != *(v2 + 32))
    {
      type metadata accessor for WallpaperAutobahnViewModel();
      sub_3914(&qword_3D528, type metadata accessor for WallpaperAutobahnViewModel, &unk_2C89C);
      sub_296C4();
      sub_296E4();
    }

    *(v2 + 32) = v3;
    v4 = [objc_opt_self() mainScreen];
    v5 = [v4 fixedCoordinateSpace];

    [v5 bounds];
    v7 = v6;
    v9 = v8;
    swift_unknownObjectRelease();
    result = UIApp;
    if (UIApp)
    {
      result = sub_395C([UIApp activeInterfaceOrientation]);
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (result)
      {
        v12 = v9 == v11 && v7 == v10;
        v13 = v9;
        if (v12)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v14 = v7 == v11 && v9 == v10;
        v13 = v7;
        v7 = v9;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      type metadata accessor for WallpaperAutobahnViewModel();
      sub_3914(&qword_3D528, type metadata accessor for WallpaperAutobahnViewModel, &unk_2C89C);
      sub_296C4();
      sub_296E4();

LABEL_17:
      *(v2 + 16) = v13;
      *(v2 + 24) = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall WallpaperSettingsRootViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v32 = sub_29584();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3398(&qword_3D4B0, &unk_2B590);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_29524();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v32 - v16;
  v33 = v1;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "viewDidAppear:", a1, v15);
  sub_29514();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_33E0(v9);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    sub_29574();
    if (qword_3D460 != -1)
    {
      swift_once();
    }

    v18 = [qword_408A0 bundleURL];
    sub_29504();

    v19 = objc_allocWithZone(_NSLocalizedStringResource);
    v20 = sub_2A444();
    isa = sub_29564().super.isa;
    sub_294F4(v22);
    v24 = v23;
    v25 = [v19 initWithKey:v20 table:0 locale:isa bundleURL:v23];

    v26 = *(v11 + 8);
    v26(v13, v10);
    (*(v4 + 8))(v6, v32);
    v27 = sub_2A444();
    sub_3A40(0, &qword_3D4B8, _NSLocalizedStringResource_ptr);
    v28 = sub_2A4D4().super.isa;
    sub_294F4(v29);
    v31 = v30;
    [v33 pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v27 title:v25 localizedNavigationComponents:v28 deepLink:v30];

    v26(v17, v10);
  }
}

void WallpaperSettingsRootViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_3B78;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_2954;
  v14 = &unk_39FA0;
  v8 = _Block_copy(&v11);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_3498;
  v16 = v9;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_2954;
  v14 = &unk_39FC8;
  v10 = _Block_copy(&v11);

  [a1 animateAlongsideTransition:v8 completion:v10];
  _Block_release(v10);
  _Block_release(v8);
}

uint64_t sub_2954(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_29B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2118();
  }
}

id WallpaperSettingsRootViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2A444();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WallpaperSettingsRootViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___WallpaperSettingsRootViewController_autobahnViewModel;
  type metadata accessor for WallpaperAutobahnViewModel();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2B570;
  *(v9 + 32) = 1;
  *&v4[v8] = v9;
  v10 = OBJC_IVAR___WallpaperSettingsRootViewController_posterConfigurationCarouselViewModel;
  type metadata accessor for PosterConfigurationCarouselViewModel(0);
  swift_allocObject();
  *&v4[v10] = sub_10F80();
  *&v4[OBJC_IVAR___WallpaperSettingsRootViewController____lazy_storage___hostingController] = 0;
  if (a2)
  {
    v11 = sub_2A444();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id WallpaperSettingsRootViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id WallpaperSettingsRootViewController.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR___WallpaperSettingsRootViewController_autobahnViewModel;
  type metadata accessor for WallpaperAutobahnViewModel();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2B570;
  *(v6 + 32) = 1;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR___WallpaperSettingsRootViewController_posterConfigurationCarouselViewModel;
  type metadata accessor for PosterConfigurationCarouselViewModel(0);
  swift_allocObject();
  *&v2[v7] = sub_10F80();
  *&v2[OBJC_IVAR___WallpaperSettingsRootViewController____lazy_storage___hostingController] = 0;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

id WallpaperSettingsRootViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void WallpaperSettingsRootViewController.handleURL(_:withCompletion:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = [v4 viewIfLoaded];
  v10 = [v9 window];

  if (v10)
  {

    if (a1)
    {
      sub_2A804();
      if (a1[2] && (v12 = sub_34B4(aBlock), (v13 & 1) != 0))
      {
        sub_354C(a1[7] + 32 * v12, v15);
        sub_34F8(aBlock);
        v11 = swift_dynamicCast();
        if (v11)
        {
          v14 = sub_2A914();

          if (v14)
          {

            sub_3398(&qword_3D4D0, qword_2C1C0);
            sub_35A8();
            sub_296F4();
          }
        }
      }

      else
      {
        v11 = sub_34F8(aBlock);
      }
    }

    if (a2)
    {
      a2(v11);
    }
  }

  else
  {
    if (a1)
    {
      a1 = sub_2A3E4().super.isa;
    }

    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_3104;
      aBlock[3] = &unk_39FF0;
      a2 = _Block_copy(aBlock);
    }

    v17.receiver = v4;
    v17.super_class = ObjectType;
    objc_msgSendSuper2(&v17, "handleURL:withCompletion:", a1, a2);
    _Block_release(a2);
  }
}

uint64_t sub_3104(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_3230@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_3268(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

Swift::Int sub_32E0()
{
  v1 = *v0;
  sub_2A994();
  sub_2A9A4(v1);
  return sub_2A9B4();
}

Swift::Int sub_3354(uint64_t a1)
{
  v2 = *v1;
  sub_2A994();
  sub_2A9A4(v2);
  return sub_2A9B4();
}

uint64_t sub_3398(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_33E0(uint64_t a1)
{
  v2 = sub_3398(&qword_3D4B0, &unk_2B590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3448()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3480(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_34B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2A7E4(*(v2 + 40));

  return sub_37F0(a1, v4);
}

uint64_t sub_354C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_35A8()
{
  result = qword_3D4D8;
  if (!qword_3D4D8)
  {
    sub_360C(&qword_3D4D0, qword_2C1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D4D8);
  }

  return result;
}

uint64_t sub_360C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_36A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_36B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_36D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_3754(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_3764()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_37AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2A764(*(v2 + 40));

  return sub_396C(a1, v4);
}

unint64_t sub_37F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_38B8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_2A7F4();
      sub_34F8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_3914(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_396C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_3A40(0, &qword_3D538, UITraitCollection_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2A774();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_3A40(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 sub_3A88(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_3A94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3AB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_3B08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_3B7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_3C30@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v7 = sub_29BD4();
  v28 = 0;
  sub_3DB0(&v18);
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v29 = v18;
  v30 = v19;
  v38[6] = v24;
  v38[7] = v25;
  v38[8] = v26;
  v38[2] = v20;
  v38[3] = v21;
  v38[4] = v22;
  v38[5] = v23;
  v38[0] = v18;
  v38[1] = v19;
  sub_406C(&v29, &v17);
  sub_40DC(v38);
  *&v27[103] = v35;
  *&v27[87] = v34;
  *&v27[39] = v31;
  *&v27[23] = v30;
  *&v27[119] = v36;
  *&v27[135] = v37;
  *&v27[55] = v32;
  *&v27[71] = v33;
  *&v27[7] = v29;
  v8 = *&v27[112];
  *(a5 + 113) = *&v27[96];
  *(a5 + 129) = v8;
  *(a5 + 145) = *&v27[128];
  v9 = *&v27[48];
  *(a5 + 49) = *&v27[32];
  *(a5 + 65) = v9;
  v10 = *&v27[80];
  *(a5 + 81) = *&v27[64];
  *(a5 + 97) = v10;
  v11 = *&v27[16];
  *(a5 + 17) = *v27;
  v12 = v28;
  v13 = *(a3 + 16);
  v14 = *(a3 + 32);
  *a5 = v7;
  *(a5 + 8) = 0x4020000000000000;
  *(a5 + 16) = v12;
  v15 = *&v27[143];
  *(a5 + 33) = v11;
  *(a5 + 160) = v15;
  *(a5 + 168) = v13;
  *(a5 + 176) = v14;

  return v13;
}

uint64_t sub_3DB0@<X0>(_OWORD *a3@<X8>)
{
  type metadata accessor for PosterConfigurationCarouselViewModel(0);
  sub_429C(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel, &unk_2CB94);

  v20 = sub_29A24();
  v21 = v4;
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  type metadata accessor for WallpaperSnapshotViewModel(0);
  sub_429C(&qword_3D560, type metadata accessor for WallpaperSnapshotViewModel, &unk_2DB20);
  v6 = sub_29934();
  v18 = v7;

  v8 = sub_29A24();
  v10 = v9;
  v11 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = sub_29934();
  *&v23[0] = v20;
  *(&v23[0] + 1) = v21;
  v23[1] = KeyPath;
  LOBYTE(v24) = 0;
  *(&v24 + 1) = v19;
  LOBYTE(v25) = 0;
  *(&v25 + 1) = v6;
  v26 = v18;
  *v22 = v18;
  *&v27 = v8;
  *(&v27 + 1) = v10;
  v28 = v11;
  v29 = 0;
  LOBYTE(v30) = 0;
  *(&v30 + 1) = v12;
  LOBYTE(v31) = 0;
  *(&v31 + 1) = v13;
  v32 = v14;
  *&v22[8] = v27;
  *&v22[72] = v14;
  *&v22[56] = v31;
  *&v22[40] = v30;
  *&v22[24] = v11;
  v15 = v23[0];
  v16 = v25;
  a3[2] = v24;
  a3[3] = v16;
  *a3 = v15;
  a3[1] = KeyPath;
  a3[7] = *&v22[48];
  a3[8] = *&v22[64];
  a3[5] = *&v22[16];
  a3[6] = *&v22[32];
  a3[4] = *v22;
  v33[0] = v8;
  v33[1] = v10;
  v33[2] = v11;
  v33[3] = 0;
  v34 = 0;
  v35 = v12;
  v36 = 0;
  v37 = v13;
  v38 = v14;
  sub_42E4(v23, v39);
  sub_42E4(&v27, v39);
  sub_4340(v33);
  v39[0] = v20;
  v39[1] = v21;
  v39[2] = KeyPath;
  v39[3] = 0;
  v40 = 0;
  v41 = v19;
  v42 = 0;
  v43 = v6;
  v44 = v18;
  return sub_4340(v39);
}

uint64_t sub_406C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3398(&qword_3D550, &qword_2B820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_40DC(uint64_t a1)
{
  v2 = sub_3398(&qword_3D550, &qword_2B820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_4144()
{
  v1 = *(v0 + 8);
  sub_2A994();
  sub_2A784();
  sub_2A9A4(v1);
  return sub_2A9B4();
}

void sub_41A0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2A784();
  sub_2A9A4(v2);
}

Swift::Int sub_41E0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_2A994();
  sub_2A784();
  sub_2A9A4(v2);
  return sub_2A9B4();
}

uint64_t sub_4238(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_44E8();
  return sub_2A774() & (v2 == v3);
}

uint64_t sub_429C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4394(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_43DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_442C()
{
  result = qword_3D568;
  if (!qword_3D568)
  {
    sub_360C(&qword_3D570, &qword_2B8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D568);
  }

  return result;
}

unint64_t sub_4494()
{
  result = qword_3D578;
  if (!qword_3D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D578);
  }

  return result;
}

unint64_t sub_44E8()
{
  result = qword_3D580;
  if (!qword_3D580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3D580);
  }

  return result;
}

uint64_t sub_4534()
{
  type metadata accessor for NewWallpaperItemWellViewModel(0);
  v0 = swift_allocObject();
  sub_3398(&qword_3D588, &qword_2B920);
  sub_29704();
  *(v0 + OBJC_IVAR____TtC17WallpaperSettings29NewWallpaperItemWellViewModel_isLoading) = 0;
  return v0;
}

__n128 sub_45C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_45D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_461C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_468C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v56 = sub_29C24();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E04();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3398(&qword_3D590, &qword_2BA30);
  __chkstk_darwin(v10);
  v12 = (&v42 - v11);
  v13 = sub_3398(&qword_3D598, &qword_2BA38);
  v50 = *(v13 - 8);
  v51 = v13;
  __chkstk_darwin(v13);
  v44 = &v42 - v14;
  v52 = sub_3398(&qword_3D5A0, &qword_2BA40);
  __chkstk_darwin(v52);
  v48 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v49 = &v42 - v17;
  v18 = sub_2A304();
  v42 = v19;
  v43 = v18;
  v20 = a2;
  sub_4BCC(&v57);
  v21 = v57;
  v22 = v58;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v20;
  *(v23 + 32) = a3 & 1;
  v24 = (v12 + *(v10 + 36));
  sub_298E4();
  sub_5334(a1, v20);
  v25 = v44;
  sub_2A534();
  *v24 = &unk_2BA50;
  v24[1] = v23;
  v26 = v42;
  *v12 = v43;
  v12[1] = v26;
  v12[2] = v21;
  v12[3] = v22;
  v12[4] = 0;
  v27 = v45;
  sub_29DF4();
  v28 = sub_533C();
  sub_2A0F4();
  (*(v46 + 8))(v27, v47);
  sub_553C(v12);
  sub_29BE4();
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v29 = qword_408A0;
  v30 = sub_29FC4();
  v32 = v31;
  v34 = v33;
  v57 = v10;
  v58 = v28;
  swift_getOpaqueTypeConformance2();
  v35 = v48;
  v36 = v51;
  sub_2A0A4();
  sub_55A4(v30, v32, v34 & 1);

  (*(v50 + 8))(v25, v36);
  v37 = v53;
  sub_29C14();
  v38 = v49;
  sub_299B4();
  v39 = *(v54 + 8);
  v40 = v56;
  v39(v37, v56);
  sub_55B4(v35);
  sub_29C04();
  sub_299A4();
  v39(v37, v40);
  return sub_55B4(v38);
}

uint64_t sub_4BCC@<X0>(uint64_t *a4@<X8>)
{
  v5 = sub_2A194();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() systemGray5Color];
  v10 = sub_2A164();
  type metadata accessor for NewWallpaperItemWellViewModel(0);
  sub_5720(&qword_3D5E0, type metadata accessor for NewWallpaperItemWellViewModel, &unk_2DE10);
  sub_29804();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  if (v15)
  {
    v11 = v15;
    sub_2A174();
    (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
    v12 = sub_2A1B4();

    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v12 = 0;
  }

  *a4 = v10;
  a4[1] = v12;
}

uint64_t sub_4E08(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 72) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_2A524();
  *(v3 + 32) = sub_2A514();
  v5 = sub_2A4F4();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return _swift_task_switch(sub_4EA4, v5, v4);
}

uint64_t sub_4EA4()
{
  type metadata accessor for NewWallpaperItemWellViewModel(0);
  sub_5720(&qword_3D5E0, type metadata accessor for NewWallpaperItemWellViewModel, &unk_2DE10);
  *(v0 + 56) = sub_29804();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_4FA4;

  return sub_23378(1);
}

uint64_t sub_4FA4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_50E8, v3, v2);
}

uint64_t sub_50E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5154()
{
  sub_5190(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_5198()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_5240;

  return sub_4E08(v2, v3, v4);
}

uint64_t sub_5240()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_533C()
{
  result = qword_3D5A8;
  if (!qword_3D5A8)
  {
    sub_360C(&qword_3D590, &qword_2BA30);
    sub_53F8();
    sub_5720(&qword_3D5D8, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D5A8);
  }

  return result;
}

unint64_t sub_53F8()
{
  result = qword_3D5B0;
  if (!qword_3D5B0)
  {
    sub_360C(&qword_3D5B8, &qword_2BA58);
    sub_5484();
    sub_54E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D5B0);
  }

  return result;
}

unint64_t sub_5484()
{
  result = qword_3D5C0;
  if (!qword_3D5C0)
  {
    sub_360C(&qword_3D5C8, &qword_2BA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D5C0);
  }

  return result;
}

unint64_t sub_54E8()
{
  result = qword_3D5D0;
  if (!qword_3D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D5D0);
  }

  return result;
}

uint64_t sub_553C(uint64_t a1)
{
  v2 = sub_3398(&qword_3D590, &qword_2BA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_55A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_55B4(uint64_t a1)
{
  v2 = sub_3398(&qword_3D5A0, &qword_2BA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_5628()
{
  result = qword_3D5E8;
  if (!qword_3D5E8)
  {
    sub_360C(&qword_3D5A0, &qword_2BA40);
    sub_360C(&qword_3D590, &qword_2BA30);
    sub_533C();
    swift_getOpaqueTypeConformance2();
    sub_5720(&unk_3D5F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D5E8);
  }

  return result;
}

uint64_t sub_5720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NSString sub_5768()
{
  result = sub_2A444();
  qword_40890 = result;
  return result;
}

NSString sub_57A0()
{
  result = sub_2A444();
  qword_40898 = result;
  return result;
}

uint64_t sub_57D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_3398(&qword_3D738, &unk_2BBA0);
  v4[4] = swift_task_alloc();
  v5 = sub_2A734();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_58D0, 0, 0);
}

uint64_t sub_58D0()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_2A744();

  sub_2A724();
  v0[8] = OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_modalController;
  v2 = sub_6C88();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_59DC;
  v4 = v0[4];
  v5 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_59DC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_5CA0;
  }

  else
  {
    v2 = sub_5AF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5B0C()
{
  v1 = v0[4];
  v2 = sub_29464();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
LABEL_8:

    v8 = v0[1];

    return v8();
  }

  v3 = *(v0[3] + v0[8]);
  if (!v3)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_6CE0(v1);
    goto LABEL_8;
  }

  [v3 handleHostSceneTransitionedFromActiveState];
  sub_6CE0(v1);
  v4 = sub_6C88();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_59DC;
  v6 = v0[4];
  v7 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v7, v4);
}

uint64_t sub_5CA0()
{
  *(v0 + 16) = *(v0 + 80);
  sub_3398(&qword_3D748, &qword_2CC40);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

void sub_5D2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_entryPoint + 8);
  if (v1)
  {
    if (*(v0 + OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_entryPoint) == 1)
    {
      v2 = PRUISModalEntryPointEditHomeScreen;
    }

    else
    {
      v2 = PRUISModalEntryPointEditing;
    }

    v3 = [objc_allocWithZone(v2) initWithServiceConfiguration:v1];
  }

  else
  {
    v3 = [objc_allocWithZone(PRUISModalEntryPointGallery) init];
  }

  v4 = [objc_allocWithZone(PRUISModalController) initWithEntryPoint:v3];
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_modalController;
  v6 = *(v0 + OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_modalController);
  *(v0 + OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_modalController) = v4;
  v7 = v4;

  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v7 setDelegate:v0];

  v8 = *(v0 + v5);
  if (!v8)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v9 = *(v0 + OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_windowScene);

  [v8 presentFromWindowScene:v9];
}

uint64_t sub_6058(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_60A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_60FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_6118(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_6148(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_3398(&qword_3D730, &qword_2BB88);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  *&v4[OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_childCoordinators] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_modalController] = 0;
  *&v4[OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_windowScene] = a1;
  v12 = &v4[OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_entryPoint];
  *v12 = a2;
  *(v12 + 1) = a3;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v13 = a1;
  v14 = a3;
  v15 = objc_msgSendSuper2(&v20, "init");
  v16 = sub_2A554();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v18 = v15;
  sub_FD9C(0, 0, v11, &unk_2BB98, v17);

  return v18;
}

unint64_t sub_62F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3398(&qword_3D728, &qword_2BB80);
    v3 = sub_2A8F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_6AEC(v4, v13);
      result = sub_34B4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_6B5C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_6410(void *a1)
{
  v3 = sub_29554();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_entryPoint + 8);
  if (v7)
  {
    v23 = v7;
    if ([a1 entryPointResult] == &dword_0 + 1)
    {
      v8 = [objc_opt_self() defaultCenter];
      if (qword_3D470 != -1)
      {
        swift_once();
      }

      v22 = qword_408B0;
      sub_3398(&qword_3D710, &qword_2BB70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2BAB0;
      v24 = 0xD000000000000010;
      v25 = 0x800000000002E940;
      sub_6A98();
      sub_2A804();
      v10 = [v23 serverUUID];
      if (v10)
      {
        v11 = v10;
        sub_29544();

        v12 = sub_29534();
        v14 = v13;
        (*(v4 + 8))(v6, v3);
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v12;
        *(inited + 80) = v14;
        v24 = 0xD000000000000017;
        v25 = 0x800000000002E960;
        sub_2A804();
        v15 = PBUIStringForWallpaperVariant();
        v16 = sub_2A454();
        v18 = v17;

        *(inited + 168) = &type metadata for String;
        *(inited + 144) = v16;
        *(inited + 152) = v18;
        sub_62F4(inited);
        swift_setDeallocating();
        sub_3398(&qword_3D720, &qword_2BB78);
        swift_arrayDestroy();
        isa = sub_2A3E4().super.isa;

        [v8 postNotificationName:v22 object:0 userInfo:isa];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v20 = v23;
    }
  }
}

unint64_t sub_678C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3398(&unk_3D750, &qword_2BBB0);
    v3 = sub_2A8F4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_37AC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_6884()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_109FC(0);
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_modalController);
  *(v0 + OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_modalController) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_entryPoint + 8);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 providerBundleIdentifier];
    if (!v4)
    {
LABEL_10:
      v11 = v3;
      goto LABEL_19;
    }

    v5 = v4;
    v6 = sub_2A454();
    v8 = v7;

    if (v6 == 0xD000000000000021 && 0x800000000002E8B0 == v8)
    {
    }

    else
    {
      v10 = sub_2A914();

      if ((v10 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v12 = [objc_opt_self() defaultCenter];
    if (qword_3D458 != -1)
    {
      swift_once();
    }

    [v12 postNotificationName:qword_40898 object:0];
  }

  else
  {
    v12 = [objc_opt_self() defaultCenter];
    if (qword_3D450 != -1)
    {
      swift_once();
    }

    [v12 postNotificationName:qword_40890 object:0];
  }

  v11 = v12;
LABEL_19:
}

unint64_t sub_6A98()
{
  result = qword_3D718;
  if (!qword_3D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D718);
  }

  return result;
}

uint64_t sub_6AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3398(&qword_3D720, &qword_2BB78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_6B5C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_6B94()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5240;

  return sub_57D8(a1, v4, v5, v6);
}

unint64_t sub_6C88()
{
  result = qword_3D740;
  if (!qword_3D740)
  {
    sub_2A734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D740);
  }

  return result;
}

uint64_t sub_6CE0(uint64_t a1)
{
  v2 = sub_3398(&qword_3D738, &unk_2BBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_6D48(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_6D5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6D7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_6E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 1.0;
  if ((*(v2 + 40) & 1) == 0)
  {
    v6 = 1.0 - fabs(CGRectGetMidX(*(v2 + 8)) + *v2 * -0.5) / *v2;
    v5 = 0.93;
    if (v6 > 0.93)
    {
      v5 = v6;
    }
  }

  sub_2A344();
  v8 = v7;
  v10 = v9;
  v11 = sub_3398(&qword_3D7C0, &qword_2BC78);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  result = sub_3398(&qword_3D7C8, qword_2BC80);
  v13 = (a2 + *(result + 36));
  *v13 = v5;
  v13[1] = v5;
  *(v13 + 2) = v8;
  *(v13 + 3) = v10;
  return result;
}

unint64_t sub_6F08()
{
  result = qword_3D7D0;
  if (!qword_3D7D0)
  {
    sub_360C(&qword_3D7C8, qword_2BC80);
    sub_6F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D7D0);
  }

  return result;
}

unint64_t sub_6F94()
{
  result = qword_3D7D8;
  if (!qword_3D7D8)
  {
    sub_360C(&qword_3D7C0, &qword_2BC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D7D8);
  }

  return result;
}

unint64_t sub_700C()
{
  result = qword_3D7E0;
  if (!qword_3D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D7E0);
  }

  return result;
}

uint64_t sub_7060@<X0>(uint64_t a1@<X8>)
{
  sub_29914();
  sub_8034(&qword_3D7F8, &protocol conformance descriptor for LayoutSubviews);
  sub_2A5C4();
  sub_2A614();
  if (v9[4] == v9[0])
  {
    v2 = sub_298D4();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_2A644();
    v6 = v5;
    v7 = sub_298D4();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_71E4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2A854();
    v5 = v4;
    v6 = sub_2A8C4();
    v8 = v7;
    v9 = sub_2A874();
    sub_8078(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_8078(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_2A7D4();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_7528(&v13, v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_8078(v3, v5, v2 != 0);
  return v12;
}

uint64_t (*sub_73FC(uint64_t *a1))()
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
  *(v2 + 32) = sub_29754();
  return sub_7484;
}

void sub_7484(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_74D4()
{
  result = qword_3D7E8;
  if (!qword_3D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D7E8);
  }

  return result;
}

void sub_7528(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_2A8A4();
      sub_3A40(0, &qword_3D538, UITraitCollection_ptr);
      swift_dynamicCast();
      sub_3A40(0, qword_3D808, UIImage_ptr);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_2A884() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_2A894();
  sub_3A40(0, &qword_3D538, UITraitCollection_ptr);
  swift_dynamicCast();
  a2 = sub_37AC(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

double sub_770C(uint64_t a1, int a2)
{
  v25 = a2;
  v3 = sub_3398(&qword_3D7F0, &qword_2BD98);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_298D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_29914();
  sub_8034(&qword_3D7F8, &protocol conformance descriptor for LayoutSubviews);
  sub_2A5C4();
  sub_2A614();
  v16 = 0.0;
  if (sub_2A604() == 2)
  {
    sub_7060(v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_7FCC(v5);
    }

    else
    {
      v24 = a1;
      v17 = v5;
      v18 = *(v7 + 32);
      v18(v15, v17, v6);
      if (sub_2A5F4())
      {
        (*(v7 + 8))(v15, v6);
      }

      else
      {
        sub_2A614();
        sub_8034(&qword_3D800, &protocol conformance descriptor for LayoutSubviews);
        sub_2A404();
        v19 = sub_2A644();
        (*(v7 + 16))(v9);
        v19(v26, 0);
        v18(v12, v9, v6);
        if (v25)
        {
          v20 = *(v7 + 8);
          v20(v12, v6);
          v20(v15, v6);
        }

        else
        {
          v16 = *&v24;
          LOBYTE(v26[0]) = 0;
          LOBYTE(v27) = 1;
          sub_298B4();
          LOBYTE(v26[0]) = 0;
          LOBYTE(v27) = 1;
          sub_298B4();
          v22 = *(v7 + 8);
          v22(v12, v6);
          v22(v15, v6);
        }
      }
    }
  }

  return v16;
}

uint64_t sub_7AFC(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  LODWORD(v33) = a2;
  v11 = sub_3398(&qword_3D7F0, &qword_2BD98);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - v12;
  v14 = sub_298D4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v32 - v19;
  __chkstk_darwin(v21);
  v23 = v32 - v22;
  sub_29914();
  sub_8034(&qword_3D7F8, &protocol conformance descriptor for LayoutSubviews);
  sub_2A5C4();
  sub_2A614();
  result = sub_2A604();
  if (result == 2)
  {
    sub_7060(v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      return sub_7FCC(v13);
    }

    else
    {
      v32[1] = a1;
      v25 = v13;
      v26 = *(v15 + 32);
      v26(v23, v25, v14);
      if (sub_2A5F4())
      {
        return (*(v15 + 8))(v23, v14);
      }

      else
      {
        sub_2A614();
        sub_8034(&qword_3D800, &protocol conformance descriptor for LayoutSubviews);
        sub_2A404();
        v27 = sub_2A644();
        (*(v15 + 16))(v17);
        v27(v34, 0);
        v26(v20, v17, v14);
        v36.origin.x = a3;
        v36.origin.y = a4;
        v36.size.width = a5;
        v36.size.height = a6;
        CGRectGetWidth(v36);
        LOBYTE(v34[0]) = 0;
        v28 = v33 & 1;
        LOBYTE(v35) = v33 & 1;
        sub_298B4();
        v32[0] = v29;
        v37.origin.x = a3;
        v37.origin.y = a4;
        v37.size.width = a5;
        v37.size.height = a6;
        CGRectGetWidth(v37);
        LOBYTE(v34[0]) = 0;
        LOBYTE(v35) = v28;
        sub_298B4();
        v33 = v30;
        v38.origin.x = a3;
        v38.origin.y = a4;
        v38.size.width = a5;
        v38.size.height = a6;
        CGRectGetMinX(v38);
        v39.origin.x = a3;
        v39.origin.y = a4;
        v39.size.width = a5;
        v39.size.height = a6;
        CGRectGetMinY(v39);
        sub_2A334();
        LOBYTE(v34[0]) = 0;
        LOBYTE(v35) = 0;
        sub_298C4();
        v40.origin.x = a3;
        v40.origin.y = a4;
        v40.size.width = a5;
        v40.size.height = a6;
        CGRectGetMaxX(v40);
        v41.origin.x = a3;
        v41.origin.y = a4;
        v41.size.width = a5;
        v41.size.height = a6;
        CGRectGetMinY(v41);
        sub_2A334();
        LOBYTE(v34[0]) = 0;
        LOBYTE(v35) = 0;
        sub_298C4();
        v31 = *(v15 + 8);
        v31(v20, v14);
        return (v31)(v23, v14);
      }
    }
  }

  return result;
}

uint64_t sub_7FCC(uint64_t a1)
{
  v2 = sub_3398(&qword_3D7F0, &qword_2BD98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8034(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_29914();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8078(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_8088(uint64_t a1)
{
  result = sub_2A2B4();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_815C(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = sub_2A2B4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - v11;
  v15[0] = v8;
  v15[1] = v3;
  v16 = *(a1 + 32);
  type metadata accessor for PageIndex.Coordinator(0, v15);
  (*(v10 + 16))(v12, v1, v9);
  (*(v4 + 16))(v6, v1 + *(a1 + 52), v3);
  v13 = swift_allocObject();
  sub_8780(v12, v6);
  return v13;
}

uint64_t sub_830C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_8780(a1, a2);
  return v4;
}

uint64_t sub_835C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = *(a3 + 16);
  v17 = *(v18 - 8);
  __chkstk_darwin(a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_29E24();
  sub_29E14();
  v9 = v19;
  v10 = *(a3 + 52);
  v11 = *(*v19 + 120);
  swift_beginAccess();
  (*(*(*(a3 + 24) - 8) + 24))(&v9[v11], v4 + v10, *(a3 + 24));
  swift_endAccess();
  v12 = [a1 numberOfPages];
  if (v12 != sub_2A5D4())
  {
    [a1 setNumberOfPages:sub_2A5D4()];
  }

  v13 = v18;
  sub_2A2B4();
  sub_2A284();
  sub_2A634();
  (*(v17 + 8))(v8, v13);
  if (v20 != 1)
  {
    v14 = v19;
    if (v14 != [a1 currentPage])
    {
      [a1 setCurrentPage:v14];
    }
  }
}

uint64_t sub_85D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_815C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_8648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_86C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_8740(uint64_t a1)
{
  swift_getWitnessTable();
  sub_29D14();
  __break(1u);
}

uint64_t *sub_8780(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 112);
  v7 = sub_2A2B4();
  (*(*(v7 - 8) + 32))(v2 + v6, a1, v7);
  (*(*(*(v5 + 88) - 8) + 32))(v2 + *(*v2 + 120), a2);
  return v2;
}

uint64_t sub_8878(void *a1)
{
  v2 = v1;
  v31 = a1;
  v3 = *v1;
  v30 = v3[10];
  v29 = *(v30 - 8);
  __chkstk_darwin(a1);
  v28 = &v23 - v4;
  v5 = *(*(v3[13] + 8) + 8);
  v6 = v3[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v23 - v9;
  v11 = *(v6 - 8);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = v3[15];
  swift_beginAccess();
  v24 = *(v11 + 16);
  v25 = v15;
  v24(v14, &v2[v15], v6);
  sub_2A5E4();
  v26 = *(v11 + 8);
  v26(v14, v6);
  v32[0] = [v31 currentPage];
  v27 = v5;
  swift_getAssociatedConformanceWitness();
  LOBYTE(v15) = sub_2A4C4();
  result = (*(v8 + 8))(v10, AssociatedTypeWitness);
  if (v15)
  {
    v24(v14, &v2[v25], v6);
    v17 = v31;
    v32[4] = [v31 currentPage];
    v18 = sub_2A644();
    v20 = v28;
    v19 = v29;
    v21 = v30;
    (*(v29 + 16))(v28);
    v18(v32, 0);
    v26(v14, v6);
    v22 = [v17 interactionState];
    if (v22 != &dword_0 + 2)
    {
      v22 = sub_2A324();
    }

    __chkstk_darwin(v22);
    *(&v23 - 2) = v2;
    *(&v23 - 1) = v20;
    sub_298F4();

    return (*(v19 + 8))(v20, v21);
  }

  return result;
}

uint64_t sub_8CA4(char *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v15 - v7;
  v9 = sub_2A2B4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v15 - v12;
  (*(v10 + 16))(&v15 - v12, &a1[*(v4 + 112)], v9, v11);
  (*(v6 + 16))(v8, a2, v5);
  sub_2A294();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_8E64(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_8878(v3);
}

uint64_t *sub_8EB4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = sub_2A2B4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t sub_8F94()
{
  sub_8EB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_9028(uint64_t a1)
{
  result = sub_2A2B4();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_90B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v4 + 80);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((v10 + 16) & ~v10) + *(*(*(a3 + 16) - 8) + 64) + v11;
  v14 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v15 = (v13 & ~v11) + *(*(v7 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v6 < v9)
      {
        return (*(v8 + 48))((a1 + v13) & ~v11, v9, v7);
      }

      v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v23 + v10 + 8) & ~v10);
      }

      v24 = *v23;
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_92DC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = ((v12 + 16) & ~v12) + *(*(*(a4 + 16) - 8) + 64);
  v16 = ((v15 + v13) & ~v13) + *(*(v9 - 8) + 64);
  v17 = a3 >= v14;
  v18 = a3 - v14;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v16 < 4)
    {
      v21 = (v20 >> (8 * v16)) + 1;
      if (v16)
      {
        v24 = v20 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_61:
              if (v19 == 2)
              {
                *&a1[v16] = v21;
              }

              else
              {
                *&a1[v16] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v19)
    {
      a1[v16] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v19)
  {
    goto LABEL_33;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 >= v11)
  {
    if (v8 >= a2)
    {
      v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v31 = *(v6 + 56);

        v31((v29 + v12 + 8) & ~v12);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v30 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v30 = a2 - 1;
        }

        *v29 = v30;
      }
    }

    else
    {
      if (v15 <= 3)
      {
        v26 = ~(-1 << (8 * v15));
      }

      else
      {
        v26 = -1;
      }

      if (v15)
      {
        v27 = v26 & (~v8 + a2);
        if (v15 <= 3)
        {
          v28 = v15;
        }

        else
        {
          v28 = 4;
        }

        bzero(a1, v15);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *a1 = v27;
            a1[2] = BYTE2(v27);
          }

          else
          {
            *a1 = v27;
          }
        }

        else if (v28 == 1)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v27;
        }
      }
    }
  }

  else
  {
    v25 = *(v10 + 56);

    v25(&a1[v15 + v13] & ~v13);
  }
}

id sub_96AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(UIPageControl) init];
  [v9 setBackgroundStyle:2];
  v10 = objc_opt_self();
  v11 = [v10 labelColor];
  [v9 setCurrentPageIndicatorTintColor:v11];

  v12 = [v10 tertiaryLabelColor];
  [v9 setPageIndicatorTintColor:v12];

  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for PageIndex(255, v14);
  swift_getWitnessTable();
  sub_29E24();
  sub_29E14();
  [v9 addTarget:v14[0] action:"pageDidChange:" forControlEvents:4096];

  return v9;
}

uint64_t sub_9818(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_9874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_98F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = sub_29C24();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E04();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3398(&qword_3D918, &qword_2BFA8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = sub_3398(&qword_3D920, &qword_2BFB0);
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v44 = sub_3398(&qword_3D928, &qword_2BFB8);
  __chkstk_darwin(v44);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v39 - v21;
  __chkstk_darwin(v23);
  v45 = &v39 - v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  sub_A06C();

  sub_2A214();
  sub_29DF4();
  v26 = sub_A234(&qword_3D938, &qword_3D918, &qword_2BFA8, &protocol conformance descriptor for Button<A>);
  sub_2A0F4();
  (*(v42 + 8))(v9, v43);
  (*(v11 + 8))(v13, v10);
  v50 = v10;
  v51 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v40;
  sub_2A044();
  (*(v41 + 8))(v17, v27);
  sub_29BE4();
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v28 = qword_408A0;
  v29 = sub_29FC4();
  v31 = v30;
  v33 = v32;
  sub_29984();
  sub_55A4(v29, v31, v33 & 1);

  sub_A0C0(v19);
  v34 = v46;
  sub_29C14();
  v35 = v45;
  sub_299A4();
  (*(v47 + 8))(v34, v48);
  sub_A0C0(v22);
  sub_A128(v35, v22);
  v36 = v49;
  sub_A128(v22, v49);
  v37 = v36 + *(sub_3398(&qword_3D940, &unk_2BFC0) + 48);
  *v37 = sub_4534;
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
  sub_5334(sub_4534, 0);
  sub_A0C0(v35);
  sub_5190(sub_4534, 0);
  return sub_A0C0(v22);
}

uint64_t sub_9EDC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    sub_3398(&qword_3D4D0, qword_2C1C0);
    sub_A234(&qword_3D4D8, &qword_3D4D0, qword_2C1C0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_296F4();
  }

  else
  {
    type metadata accessor for PosterConfigurationCarouselViewModel(0);
    sub_A198();
    result = sub_29A04();
    __break(1u);
  }

  return result;
}

void sub_9FAC(uint64_t a1@<X8>)
{
  *a1 = sub_4534;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_9FC8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_29BD4();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v5 = sub_3398(&qword_3D910, &qword_2BFA0);
  return sub_98F0(v4, v3, a1 + *(v5 + 44));
}

uint64_t sub_A02C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_A06C()
{
  result = qword_3D930;
  if (!qword_3D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D930);
  }

  return result;
}

uint64_t sub_A0C0(uint64_t a1)
{
  v2 = sub_3398(&qword_3D928, &qword_2BFB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A128(uint64_t a1, uint64_t a2)
{
  v4 = sub_3398(&qword_3D928, &qword_2BFB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_A198()
{
  result = qword_3D558;
  if (!qword_3D558)
  {
    type metadata accessor for PosterConfigurationCarouselViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D558);
  }

  return result;
}

uint64_t sub_A234(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_360C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_A2E0()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_408A0 = result;
  return result;
}

uint64_t sub_A364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_29E44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3398(&qword_3D980, &qword_2C0A8);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v12 = sub_3398(&qword_3D988, &qword_2C0B0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v35 = sub_3398(&qword_3D990, &qword_2C0B8);
  __chkstk_darwin(v35);
  v34 = &v33 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v37 = a1;
  v38 = a2;

  sub_3398(&qword_3D998, &qword_2C0C0);
  sub_ABCC();
  sub_2A214();
  v17 = sub_2A124();
  KeyPath = swift_getKeyPath();
  v19 = &v11[*(v9 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  sub_29E34();
  sub_AD58();
  sub_B2C0(&qword_3D9F0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  sub_2A034();
  (*(v6 + 8))(v8, v5);
  sub_AE3C(v11);
  v20 = &v14[*(sub_3398(&qword_3D9F8, &qword_2C118) + 36)];
  sub_3398(&qword_3DA00, &qword_2C120);
  sub_299E4();
  *v20 = swift_getKeyPath();
  v21 = &v14[*(v12 + 36)];
  v22 = *(sub_3398(&qword_3DA08, &qword_2C158) + 28);
  v23 = enum case for ControlSize.small(_:);
  v24 = sub_297C4();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  sub_29BE4();
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v25 = qword_408A0;
  v26 = sub_29FC4();
  v28 = v27;
  v30 = v29;
  sub_AEB4();
  v31 = v34;
  sub_2A0A4();
  sub_55A4(v26, v28, v30 & 1);

  sub_B0B0(v14, &qword_3D988, &qword_2C0B0);
  sub_29964();
  return sub_B0B0(v31, &qword_3D990, &qword_2C0B8);
}

uint64_t sub_A864(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    sub_3398(&qword_3D4D0, qword_2C1C0);
    sub_A234(&qword_3D4D8, &qword_3D4D0, qword_2C1C0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_296F4();
  }

  else
  {
    type metadata accessor for PosterConfigurationCarouselViewModel(0);
    sub_B2C0(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel, &unk_2CB94);
    result = sub_29A04();
    __break(1u);
  }

  return result;
}

uint64_t sub_A964@<X0>(uint64_t a1@<X8>)
{
  sub_2A184();
  v2 = sub_29FD4();
  v4 = v3;
  v6 = v5;
  sub_29BE4();
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v7 = qword_408A0;
  v8 = sub_29FC4();
  v10 = v9;
  v12 = v11;
  v13 = sub_29F84();
  v23 = v14;
  v24 = v13;
  v16 = v15;
  v25 = v17;
  sub_55A4(v8, v10, v12 & 1);

  sub_55A4(v2, v4, v6 & 1);

  v18 = (a1 + *(sub_3398(&qword_3D998, &qword_2C0C0) + 36));
  v19 = *(sub_3398(&qword_3D9C0, &qword_2C0D0) + 28);
  v20 = enum case for Image.Scale.small(_:);
  v21 = sub_2A1A4();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  result = swift_getKeyPath();
  *v18 = result;
  *a1 = v24;
  *(a1 + 8) = v23;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v25;
  return result;
}

uint64_t sub_AB84()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_ABCC()
{
  result = qword_3D9A0;
  if (!qword_3D9A0)
  {
    sub_360C(&qword_3D998, &qword_2C0C0);
    sub_AC84();
    sub_A234(&qword_3D9B8, &qword_3D9C0, &qword_2C0D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D9A0);
  }

  return result;
}

unint64_t sub_AC84()
{
  result = qword_3D9A8;
  if (!qword_3D9A8)
  {
    sub_360C(&qword_3D9B0, &qword_2C0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D9A8);
  }

  return result;
}

uint64_t sub_AD00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B64();
  *a1 = result;
  return result;
}

unint64_t sub_AD58()
{
  result = qword_3D9C8;
  if (!qword_3D9C8)
  {
    sub_360C(&qword_3D980, &qword_2C0A8);
    sub_A234(&qword_3D9D0, &qword_3D9D8, &qword_2C108, &protocol conformance descriptor for Button<A>);
    sub_A234(&qword_3D9E0, &qword_3D9E8, &qword_2C110, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3D9C8);
  }

  return result;
}

uint64_t sub_AE3C(uint64_t a1)
{
  v2 = sub_3398(&qword_3D980, &qword_2C0A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_AEB4()
{
  result = qword_3DA10;
  if (!qword_3DA10)
  {
    sub_360C(&qword_3D988, &qword_2C0B0);
    sub_AF6C();
    sub_A234(&qword_3DA28, &qword_3DA08, &qword_2C158, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DA10);
  }

  return result;
}

unint64_t sub_AF6C()
{
  result = qword_3DA18;
  if (!qword_3DA18)
  {
    sub_360C(&qword_3D9F8, &qword_2C118);
    sub_360C(&qword_3D980, &qword_2C0A8);
    sub_29E44();
    sub_AD58();
    sub_B2C0(&qword_3D9F0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_A234(&qword_3DA20, &qword_3DA00, &qword_2C120, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DA18);
  }

  return result;
}

uint64_t sub_B0B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3398(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_B134(uint64_t a1)
{
  v2 = sub_2A1A4();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_29A54();
}

unint64_t sub_B204()
{
  result = qword_3DA30;
  if (!qword_3DA30)
  {
    sub_360C(&qword_3D990, &qword_2C0B8);
    sub_AEB4();
    sub_B2C0(&unk_3D5F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DA30);
  }

  return result;
}

uint64_t sub_B2C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void PRSPosterConfiguration.id.getter()
{
  v1 = [v0 serverUUID];
  if (v1)
  {
    v2 = v1;
    sub_29544();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_B374()
{
  result = qword_3DA38;
  if (!qword_3DA38)
  {
    sub_29554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DA38);
  }

  return result;
}

id sub_B3CC()
{
  result = [objc_allocWithZone(PRSService) init];
  qword_408A8 = result;
  return result;
}

void sub_B400()
{
  v1 = [*v0 serverUUID];
  if (v1)
  {
    v2 = v1;
    sub_29544();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_B468(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_B4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_BB28(a1, a2);
  sub_3398(&qword_3DA40, &qword_2C320);
  sub_BB38();
  sub_2A214();
  LOBYTE(a2) = sub_29EF4();
  sub_29774();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a3 + *(sub_3398(&qword_3DA70, &qword_2C340) + 36);
  *v15 = a2;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  LOBYTE(a2) = sub_29ED4();
  sub_29774();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a3 + *(sub_3398(&qword_3DA78, &qword_2C348) + 36);
  *v24 = a2;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  v25 = a3 + *(sub_3398(&qword_3DA80, &qword_2C350) + 36);
  sub_2A2E4();
  v26 = sub_3398(&qword_3DA88, &qword_2C358);
  v27 = *(v26 + 52);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = sub_29BF4();
  (*(*(v29 - 8) + 104))(v25 + v27, v28, v29);
  *(v25 + *(v26 + 56)) = 256;
  LOBYTE(v25) = sub_29EE4();
  sub_29774();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  result = sub_3398(&qword_3DA90, &qword_2C360);
  v39 = a3 + *(result + 36);
  *v39 = v25;
  *(v39 + 8) = v31;
  *(v39 + 16) = v33;
  *(v39 + 24) = v35;
  *(v39 + 32) = v37;
  *(v39 + 40) = 0;
  return result;
}

void (*sub_B70C(void (*result)(uint64_t), uint64_t a2))(uint64_t)
{
  if (result)
  {
    v3 = result;

    v3(v4);

    return sub_3754(v3, a2);
  }

  return result;
}

uint64_t sub_B760@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_3398(&qword_3DA98, &qword_2C368);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  sub_29BE4();
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v5 = qword_408A0;
  v6 = sub_29FC4();
  v8 = v7;
  v20[1] = v6;
  v20[2] = v7;
  v10 = v9 & 1;
  v21 = v9 & 1;
  v22 = v11;
  sub_2A094();
  sub_55A4(v6, v8, v10);

  v12 = sub_29F24();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = sub_29F44();
  sub_BCD8(v4);
  KeyPath = swift_getKeyPath();
  v15 = (a1 + *(sub_3398(&qword_3DA58, &qword_2C328) + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = sub_2A144();
  v17 = swift_getKeyPath();
  result = sub_3398(&qword_3DA40, &qword_2C320);
  v19 = (a1 + *(result + 36));
  *v19 = v17;
  v19[1] = v16;
  return result;
}

uint64_t sub_B9AC(uint64_t a1)
{
  v1 = sub_297B4();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for ColorScheme.dark(_:), v1, v3);
  v6 = sub_297A4();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    return 0x6B7261446B636F64;
  }

  else
  {
    return 0x6867694C6B636F64;
  }
}

uint64_t sub_BAE0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_BB28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_BB38()
{
  result = qword_3DA48;
  if (!qword_3DA48)
  {
    sub_360C(&qword_3DA40, &qword_2C320);
    sub_BBF0();
    sub_A234(&qword_3D9E0, &qword_3D9E8, &qword_2C110, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DA48);
  }

  return result;
}

unint64_t sub_BBF0()
{
  result = qword_3DA50;
  if (!qword_3DA50)
  {
    sub_360C(&qword_3DA58, &qword_2C328);
    swift_getOpaqueTypeConformance2();
    sub_A234(&qword_3DA60, &qword_3DA68, &unk_2C330, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DA50);
  }

  return result;
}

uint64_t sub_BCD8(uint64_t a1)
{
  v2 = sub_3398(&qword_3DA98, &qword_2C368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_BD94()
{
  result = qword_3DAA8;
  if (!qword_3DAA8)
  {
    sub_360C(&qword_3DA80, &qword_2C350);
    sub_BE78(&qword_3DAB0, &qword_3DA78, &qword_2C348, sub_BEFC);
    sub_A234(&qword_3DAD0, &qword_3DA88, &qword_2C358, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DAA8);
  }

  return result;
}

uint64_t sub_BE78(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_360C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_BEFC()
{
  result = qword_3DAB8;
  if (!qword_3DAB8)
  {
    sub_360C(&qword_3DA70, &qword_2C340);
    sub_A234(&qword_3DAC0, &qword_3DAC8, &qword_2C3D0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DAB8);
  }

  return result;
}

double sub_BFB4(uint64_t a1, double a2)
{
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = *(a1 + *(type metadata accessor for WallpaperConfigurationsCarouselContent(0) + 36)) * -1.6;
  return v8 / v6 * ((a2 + v9 + v9 + -8.0) * 0.5);
}

uint64_t sub_C060@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v136 = a2;
  v133 = sub_29DE4();
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v140 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WallpaperConfigurationsCarouselContent(0);
  v141 = *(v4 - 8);
  __chkstk_darwin(v4);
  v143 = v5;
  v135 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_29D84();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_29E64();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v102 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v99 - v9;
  v111 = sub_29E84();
  v104 = *(v111 - 8);
  __chkstk_darwin(v111);
  v103 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_3398(&qword_3DBC0, &qword_2C4F8);
  v101 = *(v107 - 8);
  __chkstk_darwin(v107);
  v12 = &v99 - v11;
  v112 = sub_3398(&qword_3DBC8, &qword_2C500);
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = &v99 - v13;
  v116 = sub_3398(&qword_3DBD0, &qword_2C508);
  v113 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v99 - v14;
  v121 = sub_3398(&qword_3DBD8, &qword_2C510);
  v115 = *(v121 - 8);
  __chkstk_darwin(v121);
  v114 = &v99 - v15;
  v125 = sub_3398(&qword_3DBE0, &qword_2C518);
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v138 = &v99 - v16;
  v124 = sub_3398(&qword_3DBE8, &qword_2C520);
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v118 = &v99 - v17;
  v127 = sub_3398(&qword_3DBF0, &qword_2C528);
  __chkstk_darwin(v127);
  v126 = &v99 - v18;
  v130 = sub_3398(&qword_3DBF8, &qword_2C530);
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v20 = &v99 - v19;
  v134 = sub_3398(&qword_3DC00, &qword_2C538);
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v129 = &v99 - v21;
  v22 = sub_29B94();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_298A4();
  v26 = *(a1 + *(v4 + 36)) * 1.6;
  v28 = v27 - (v26 + v26);
  v142 = v4;
  v29 = a1;
  v30 = a1 + *(v4 + 24);
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16) == 1;
  v139 = v20;
  if (v33)
  {
    v35 = *&v31;
    v36 = *&v32;
  }

  else
  {

    sub_2A684();
    v34 = sub_29E94();
    sub_295A4();

    sub_29B84();
    swift_getAtKeyPath();
    sub_E6C4(v31, v32, 0);
    (*(v23 + 8))(v25, v22);
    v36 = *(&v149 + 1);
    v35 = *&v149;
  }

  v37 = (v28 + -8.0) * 0.5 * (v36 / v35);
  v38 = sub_29EA4();
  __chkstk_darwin(v38);
  *(&v99 - 4) = v29;
  v137 = v29;
  *(&v99 - 3) = v28;
  *(&v99 - 2) = v37;
  sub_3398(&qword_3DC08, &qword_2C540);
  v39 = sub_360C(&qword_3DC10, &qword_2C548);
  v40 = sub_A234(&qword_3DC18, &qword_3DC10, &qword_2C548, &protocol conformance descriptor for LazyHStack<A>);
  *&v149 = v39;
  *(&v149 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  sub_29794();
  v41 = v100;
  sub_29E54();
  v42 = v105;
  v43 = v106;
  (*(v105 + 16))(v102, v41, v106);
  v44 = v103;
  sub_29E74();
  (*(v42 + 8))(v41, v43);
  v45 = sub_A234(&qword_3DC20, &qword_3DBC0, &qword_2C4F8, &protocol conformance descriptor for ScrollView<A>);
  v46 = v108;
  v47 = v107;
  v48 = v111;
  sub_2A104();
  (*(v104 + 8))(v44, v48);
  (*(v101 + 8))(v12, v47);
  v49 = (v29 + v142[7]);
  v51 = *v49;
  v50 = v49[1];
  v106 = v51;
  *&v144 = v51;
  v105 = v50;
  *(&v144 + 1) = v50;
  v104 = sub_3398(&qword_3DC28, &qword_2C550);
  sub_2A1F4();
  v52 = v150;
  v144 = v149;
  v145 = v150;
  *&v149 = v47;
  *(&v149 + 1) = v48;
  *&v150 = v45;
  *(&v150 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_E830();
  v55 = v110;
  v56 = v112;
  sub_2A074();

  v57 = v52;
  v58 = v137;
  sub_E884(v57);
  (*(v109 + 8))(v46, v56);
  sub_29ED4();
  v59 = v117;
  sub_29D74();
  *&v149 = v56;
  *(&v149 + 1) = &type metadata for CarouselViewModelSnapshot.CarouselItem;
  *&v150 = OpaqueTypeConformance2;
  *(&v150 + 1) = v54;
  v60 = swift_getOpaqueTypeConformance2();
  v61 = v114;
  v62 = v116;
  sub_2A064();
  (*(v119 + 8))(v59, v120);
  (*(v113 + 8))(v55, v62);
  v63 = v135;
  sub_E65C(v58, v135);
  v64 = (*(v141 + 80) + 16) & ~*(v141 + 80);
  v141 = *(v141 + 80);
  v65 = swift_allocObject();
  sub_E6D0(v63, v65 + v64);
  *&v149 = v62;
  *(&v149 + 1) = v60;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v121;
  sub_2A0E4();

  (*(v115 + 8))(v61, v67);
  sub_29DD4();
  sub_3398(&qword_3DC38, &qword_2C558);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2BAB0;
  LOBYTE(v61) = sub_29EC4();
  *(inited + 32) = v61;
  v69 = sub_29EA4();
  *(inited + 33) = v69;
  sub_29EB4();
  sub_29EB4();
  if (sub_29EB4() != v61)
  {
    sub_29EB4();
  }

  sub_29EB4();
  if (sub_29EB4() != v69)
  {
    sub_29EB4();
  }

  *&v149 = v67;
  *(&v149 + 1) = v66;
  swift_getOpaqueTypeConformance2();
  v70 = v118;
  v71 = v140;
  v72 = v125;
  v73 = v138;
  sub_2A084();
  (*(v131 + 8))(v71, v133);
  (*(v123 + 8))(v73, v72);
  sub_2A304();
  sub_29854();
  v74 = v126;
  (*(v122 + 32))(v126, v70, v124);
  v75 = v127;
  v76 = (v74 + *(v127 + 36));
  v77 = v150;
  *v76 = v149;
  v76[1] = v77;
  v76[2] = v151;
  *&v144 = v106;
  *(&v144 + 1) = v105;
  sub_2A1D4();
  v78 = v147;
  *&v144 = v147;
  sub_E65C(v58, v63);
  v79 = swift_allocObject();
  sub_E6D0(v63, v79 + v64);
  v80 = sub_3398(&qword_3DAE0, &qword_2C450);
  v140 = v64;
  v81 = v80;
  v82 = v75;
  v83 = sub_E994();
  v84 = sub_EBC4();
  v138 = v81;
  sub_2A114();

  sub_E884(v78);
  sub_EC9C(v74);
  if (*(v58 + v142[5]))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29724();

    v85 = v144;
    v147 = v144;
    v148 = v145;
    sub_E65C(v58, v63);
    v86 = v140;
    v87 = swift_allocObject();
    sub_E6D0(v63, &v86[v87]);
    *&v144 = v82;
    *(&v144 + 1) = v138;
    v145 = v83;
    v146 = v84;
    v138 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
    v133 = swift_getOpaqueTypeConformance2();
    v88 = sub_ED8C();
    v89 = v129;
    v90 = v130;
    v91 = v139;
    sub_2A114();

    (*(v128 + 8))(v91, v90);
    v92 = v137;
    v93 = v137 + v142[8];
    v94 = *v93;
    v95 = *(v93 + 8);
    LOBYTE(v144) = v94;
    *(&v144 + 1) = v95;
    sub_3398(&qword_3DC60, &qword_2C5A8);
    sub_2A1D4();
    LOBYTE(v147) = sub_297F4() & 1;
    sub_E65C(v92, v63);
    v96 = swift_allocObject();
    sub_E6D0(v63, &v86[v96]);
    *&v144 = v90;
    *(&v144 + 1) = &type metadata for CarouselViewModelSnapshot;
    v145 = v133;
    v146 = v88;
    swift_getOpaqueTypeConformance2();
    v97 = v134;
    sub_2A114();

    return (*(v132 + 8))(v89, v97);
  }

  else
  {
    type metadata accessor for PosterConfigurationCarouselViewModel(0);
    sub_F008(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel, &unk_2CB94);
    result = sub_29A04();
    __break(1u);
  }

  return result;
}

uint64_t sub_D4E0(uint64_t a1, double a2, double a3)
{
  v6 = sub_29D64();
  __chkstk_darwin(v6);
  v7 = sub_3398(&qword_3DC10, &qword_2C548);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12[-v9];
  sub_29BD4();
  type metadata accessor for WallpaperConfigurationsCarouselContent(0);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = 0;
  sub_F008(&qword_3DC68, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  sub_2A9C4();
  sub_3398(&qword_3DC70, &qword_2C5B0);
  sub_F050();
  sub_29784();
  sub_A234(&qword_3DC18, &qword_3DC10, &qword_2C548, &protocol conformance descriptor for LazyHStack<A>);
  sub_2A0D4();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_D728(uint64_t a1, double a2, double a3)
{
  if (*(a1 + *(type metadata accessor for WallpaperConfigurationsCarouselContent(0) + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_29724();

    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 24) = a3;
    sub_3398(&qword_3DC90, &qword_2C5C0);
    sub_3398(&qword_3DC88, &qword_2C5B8);
    sub_A234(&qword_3DC98, &qword_3DC90, &qword_2C5C0, &protocol conformance descriptor for [A]);
    sub_A234(&qword_3DC80, &qword_3DC88, &qword_2C5B8, &protocol conformance descriptor for IDView<A, B>);
    sub_F118();
    return sub_2A2C4();
  }

  else
  {
    type metadata accessor for PosterConfigurationCarouselViewModel(0);
    sub_F008(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel, &unk_2CB94);
    result = sub_29A04();
    __break(1u);
  }

  return result;
}

id sub_D94C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  sub_2A304();
  sub_29854();
  *a2 = v5;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13;
  *(a2 + 72) = v5;

  return v8;
}

uint64_t sub_DA2C(uint64_t a1, char a2, uint64_t a3)
{
  type metadata accessor for WallpaperConfigurationsCarouselContent(0);
  sub_3398(&qword_3DC60, &qword_2C5A8);
  return sub_2A1E4();
}

void sub_DAA0(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 != &dword_0 + 1)
  {
    if (*(a3 + *(type metadata accessor for WallpaperConfigurationsCarouselContent(0) + 20)))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_EFEC(v3);
      sub_EFEC(v3);

      v4 = sub_29714();
      v6 = *(v5 + 8);
      *(v5 + 8) = v3;

      v4(&v8, 0);

      sub_E884(v3);
    }

    else
    {
      type metadata accessor for PosterConfigurationCarouselViewModel(0);
      sub_F008(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel, &unk_2CB94);
      v7 = v3;
      sub_29A04();
      __break(1u);
    }
  }
}

uint64_t sub_DBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for WallpaperConfigurationsCarouselContent(0);
  sub_3398(&qword_3DC60, &qword_2C5A8);
  sub_2A1D4();
  result = sub_297E4();
  if ((result & 1) == 0)
  {
    v6 = *(a3 + *(v4 + 20));
    if (v6)
    {
      if (*(v6 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_enqueueSnapshotUpdates))
      {
        v7 = sub_2A324();
      }

      else
      {
        v7 = 0;
      }

      __chkstk_darwin(v7);
      sub_298F4();
    }

    else
    {
      type metadata accessor for PosterConfigurationCarouselViewModel(0);
      sub_F008(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel, &unk_2CB94);
      result = sub_29A04();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_DD74(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for WallpaperConfigurationsCarouselContent(0);
  v4 = a3;
  sub_3398(&qword_3DC28, &qword_2C550);
  return sub_2A1E4();
}

uint64_t sub_DDF0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  result = type metadata accessor for WallpaperConfigurationsCarouselContent(0);
  v6 = *(a3 + *(result + 20));
  if (v6)
  {
    if (*(v6 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_enqueueSnapshotUpdates) == 1 && (*a2 & 1) == 0)
    {
      *(v6 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_enqueueSnapshotUpdates) = 0;
    }
  }

  else
  {
    type metadata accessor for PosterConfigurationCarouselViewModel(0);
    sub_F008(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel, &unk_2CB94);
    result = sub_29A04();
    __break(1u);
  }

  return result;
}

int64x2_t sub_DEAC@<Q0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_3398(&qword_3DAD8, &qword_2C420);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for WallpaperConfigurationsCarouselContent(0);
  v3 = (a1 + v2[5]);
  type metadata accessor for PosterConfigurationCarouselViewModel(0);
  sub_F008(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel, &unk_2CB94);
  *v3 = sub_29A24();
  v3[1] = v4;
  v5 = a1 + v2[6];
  *v5 = swift_getKeyPath();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = v2[7];
  sub_3398(&qword_3DAE0, &qword_2C450);
  sub_2A1C4();
  *(a1 + v6) = v9;
  v7 = a1 + v2[8];
  sub_2A1C4();
  *v7 = v9;
  *(v7 + 1) = *(&v9 + 1);
  *(a1 + v2[9]) = 0x403C000000000000;
  result = vdupq_n_s64(0x4049000000000000uLL);
  *(a1 + v2[10]) = result;
  return result;
}

uint64_t sub_E014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v7 = (v2 + *(v6 + 48));
  v8 = *v7;
  v9 = v7[1];
  sub_E65C(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_E6D0(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_E65C(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  result = sub_E6D0(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  *a2 = v8;
  a2[1] = v9;
  a2[2] = sub_E734;
  a2[3] = v11;
  a2[4] = sub_E7A4;
  a2[5] = v12;
  return result;
}

uint64_t type metadata accessor for WallpaperConfigurationsCarouselContent(uint64_t a1)
{
  result = qword_3DB48;
  if (!qword_3DB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3398(&qword_3DAE8, qword_2C458);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_E2BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3398(&qword_3DAE8, qword_2C458);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_E380(uint64_t a1)
{
  sub_E538(319, &qword_3DB58, &type metadata accessor for LayoutDirection);
  if (v1 <= 0x3F)
  {
    sub_E4A4(319);
    if (v2 <= 0x3F)
    {
      sub_E538(319, &qword_3DB68, type metadata accessor for CGSize);
      if (v3 <= 0x3F)
      {
        sub_E58C(319);
        if (v4 <= 0x3F)
        {
          sub_E5F0();
          if (v5 <= 0x3F)
          {
            type metadata accessor for CGSize(319);
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

void sub_E4A4(uint64_t a1)
{
  if (!qword_3DB60)
  {
    type metadata accessor for PosterConfigurationCarouselViewModel(255);
    sub_F008(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel, &unk_2CB94);
    v1 = sub_29A34();
    if (!v2)
    {
      atomic_store(v1, &qword_3DB60);
    }
  }
}

void sub_E538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_297D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_E58C(uint64_t a1)
{
  if (!qword_3DB70)
  {
    sub_360C(&qword_3DAE0, &qword_2C450);
    v1 = sub_2A204();
    if (!v2)
    {
      atomic_store(v1, &qword_3DB70);
    }
  }
}

void sub_E5F0()
{
  if (!qword_3DB78)
  {
    v0 = sub_2A204();
    if (!v1)
    {
      atomic_store(v0, &qword_3DB78);
    }
  }
}

uint64_t sub_E65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WallpaperConfigurationsCarouselContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E6C4(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_E6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WallpaperConfigurationsCarouselContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_E734(double a1)
{
  v3 = *(type metadata accessor for WallpaperConfigurationsCarouselContent(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_BFB4(v4, a1);
}

uint64_t sub_E7A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WallpaperConfigurationsCarouselContent(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_C060(v4, a1);
}

unint64_t sub_E830()
{
  result = qword_3DC30;
  if (!qword_3DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DC30);
  }

  return result;
}

void sub_E884(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

uint64_t sub_E894(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for WallpaperConfigurationsCarouselContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_DA2C(a1, a2, v6);
}

void sub_E914(uint64_t a1, void **a2)
{
  v5 = *(type metadata accessor for WallpaperConfigurationsCarouselContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_DAA0(a1, a2, v6);
}

unint64_t sub_E994()
{
  result = qword_3DC40;
  if (!qword_3DC40)
  {
    sub_360C(&qword_3DBF0, &qword_2C528);
    sub_360C(&qword_3DBE0, &qword_2C518);
    sub_360C(&qword_3DBD8, &qword_2C510);
    sub_360C(&qword_3DBD0, &qword_2C508);
    sub_360C(&qword_3DBC8, &qword_2C500);
    sub_360C(&qword_3DBC0, &qword_2C4F8);
    sub_29E84();
    sub_A234(&qword_3DC20, &qword_3DBC0, &qword_2C4F8, &protocol conformance descriptor for ScrollView<A>);
    swift_getOpaqueTypeConformance2();
    sub_E830();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DC40);
  }

  return result;
}

unint64_t sub_EBC4()
{
  result = qword_3DC48;
  if (!qword_3DC48)
  {
    sub_360C(&qword_3DAE0, &qword_2C450);
    sub_EC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DC48);
  }

  return result;
}

unint64_t sub_EC48()
{
  result = qword_3DC50;
  if (!qword_3DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DC50);
  }

  return result;
}

uint64_t sub_EC9C(uint64_t a1)
{
  v2 = sub_3398(&qword_3DBF0, &qword_2C528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ED0C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WallpaperConfigurationsCarouselContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_DBF4(a1, a2, v6);
}

unint64_t sub_ED8C()
{
  result = qword_3DC58;
  if (!qword_3DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DC58);
  }

  return result;
}

uint64_t sub_EDE0()
{
  v1 = type metadata accessor for WallpaperConfigurationsCarouselContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_3398(&qword_3DAD8, &qword_2C420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29954();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_E6C4(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8), *(v5 + *(v1 + 24) + 16));
  v7 = *(v5 + *(v1 + 28));
  if (v7 != &dword_0 + 1)
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_EF4C(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for WallpaperConfigurationsCarouselContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_DDF0(a1, a2, v6);
}

id sub_EFEC(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_F008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_F050()
{
  result = qword_3DC78;
  if (!qword_3DC78)
  {
    sub_360C(&qword_3DC70, &qword_2C5B0);
    sub_A234(&qword_3DC80, &qword_3DC88, &qword_2C5B8, &protocol conformance descriptor for IDView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DC78);
  }

  return result;
}

unint64_t sub_F118()
{
  result = qword_3DCA0;
  if (!qword_3DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DCA0);
  }

  return result;
}

unint64_t sub_F178()
{
  result = qword_3DCA8;
  if (!qword_3DCA8)
  {
    sub_360C(&qword_3DCB0, &qword_2C5F0);
    sub_A234(&qword_3DCB8, &qword_3DCC0, &qword_2C5F8, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_A234(&qword_3DCC8, &qword_3DCD0, qword_2C600, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DCA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpringBoardFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpringBoardFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_F3E4()
{
  result = qword_3DCD8;
  if (!qword_3DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DCD8);
  }

  return result;
}

Swift::Int sub_F450()
{
  v1 = *v0;
  sub_2A994();
  sub_2A9A4(v1);
  return sub_2A9B4();
}

Swift::Int sub_F4C4(uint64_t a1)
{
  v2 = *v1;
  sub_2A994();
  sub_2A9A4(v2);
  return sub_2A9B4();
}

const char *sub_F51C()
{
  if (*v0)
  {
    return "Maglev";
  }

  else
  {
    return "AutobahnLegacyMigration";
  }
}

uint64_t Comparable.clamped(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2A924();
  sub_2A424();
  sub_2A934();
  return (*(v4 + 8))(v6, a2);
}

uint64_t sub_F65C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_3398(&qword_3DDA0, &qword_2C848);
  sub_29E14();
  v6 = *(v14 + 16);

  if (a3)
  {
    v7 = *(a3 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_isOccluded);
    if (v6 != v7)
    {
      if (v7)
      {
        a1[OBJC_IVAR____TtC17WallpaperSettings41PosterGestureTutorialAnimationPackageView_animating] = 0;
        v8 = [a1 layer];
        [v8 convertTime:0 fromLayer:CACurrentMediaTime()];
        v10 = v9;

        v11 = [a1 layer];
        [v11 setSpeed:0.0];

        v12 = [a1 layer];
        [v12 setTimeOffset:v10];
      }

      else
      {
        sub_26550();
      }
    }

    sub_29E14();
    *(v14 + 16) = v7;
  }

  else
  {
    type metadata accessor for PosterConfigurationCarouselViewModel(0);
    sub_A198();
    result = sub_29A04();
    __break(1u);
  }

  return result;
}

id sub_F82C()
{
  v0 = objc_allocWithZone(type metadata accessor for PosterGestureTutorialAnimationPackageView());

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

uint64_t sub_F87C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PosterGestureTutorialAnimationView.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_F8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_F9FC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_F918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_F9FC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_F97C(uint64_t a1)
{
  sub_F9FC();
  sub_29D14();
  __break(1u);
}

unint64_t sub_F9A8()
{
  result = qword_3DD98;
  if (!qword_3DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DD98);
  }

  return result;
}

unint64_t sub_F9FC()
{
  result = qword_3DDA8;
  if (!qword_3DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DDA8);
  }

  return result;
}

uint64_t sub_FA90@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WallpaperAutobahnViewModel();
  result = sub_296C4();
  *a2 = result;
  return result;
}

NSString sub_FACC()
{
  result = sub_2A444();
  qword_408B0 = result;
  return result;
}

uint64_t sub_FB04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_FB4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_FB98@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = 0x800000000002E940;
  if (*result == 0xD000000000000010 && 0x800000000002E940 == v4)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    result = sub_2A914();
    if ((result & 1) == 0)
    {
      result = 0xD000000000000017;
      if (v3 == 0xD000000000000017 && 0x800000000002E960 == v4)
      {
        v3 = 0xD000000000000017;
      }

      else
      {
        result = sub_2A914();
        if ((result & 1) == 0)
        {

          v3 = 0;
          v5 = 0;
          goto LABEL_12;
        }
      }
    }

    v5 = v4;
  }

LABEL_12:
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_FC6C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_FC78()
{
  sub_2A994();
  sub_2A484();
  return sub_2A9B4();
}

Swift::Int sub_FCCC(uint64_t a1)
{
  sub_2A994();
  sub_2A484();
  return sub_2A9B4();
}

uint64_t sub_FD14(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2A914();
  }
}

unint64_t sub_FD48()
{
  result = qword_3DE88;
  if (!qword_3DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DE88);
  }

  return result;
}

uint64_t sub_FD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3398(&qword_3D730, &qword_2BB88);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_18A64(a3, v25 - v10, &qword_3D730, &qword_2BB88);
  v12 = sub_2A554();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_B0B0(v11, &qword_3D730, &qword_2BB88);
  }

  else
  {
    sub_2A544();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2A4F4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2A474() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_B0B0(a3, &qword_3D730, &qword_2BB88);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_B0B0(a3, &qword_3D730, &qword_2BB88);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1009C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      v6 = *(v5 + 8 * v4);
      if (v6)
      {
        if (a1 && ([v6 isEqual:a1] & 1) != 0)
        {
          return v4;
        }
      }

      else if (!a1)
      {
        return v4;
      }

      ++v4;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t sub_10124()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  return v1;
}

Swift::Int sub_1019C()
{
  v1 = *v0;
  sub_2A994();
  if (v1)
  {
    v2 = sub_2A794();
    sub_2A9A4(v2);
  }

  else
  {
    sub_2A484();
  }

  return sub_2A9B4();
}

void sub_1020C(uint64_t a1)
{
  if (*v1)
  {
    v2 = sub_2A794();
    sub_2A9A4(v2);
  }

  else
  {

    sub_2A484();
  }
}

Swift::Int sub_10278(uint64_t a1)
{
  v2 = *v1;
  sub_2A994();
  if (v2)
  {
    v3 = sub_2A794();
    sub_2A9A4(v3);
  }

  else
  {
    sub_2A484();
  }

  return sub_2A9B4();
}

id sub_102E4@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id sub_102F0(void **a1, void *a2)
{
  v4 = *a1;
  v5 = (v4 | *a2) == 0;
  if (v4)
  {
    v6 = *a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return [v4 isEqual:{v2, v3}];
  }

  return v5;
}

char *sub_1033C(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_3398(&qword_3DFB8, &qword_2CCB0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  if (!a2)
  {
    v21 = a4;

    v22 = a3;
    if (a1 == &dword_0 + 1)
    {
      return a3;
    }

    goto LABEL_12;
  }

  v27 = a5;
  v28 = a2;
  v26 = a4;

  v14 = a3;
  sub_3398(&qword_3DC90, &qword_2C5C0);
  sub_A234(&qword_3DFC0, &qword_3DC90, &qword_2C5C0, &protocol conformance descriptor for [A]);
  sub_EC48();
  sub_2A414();
  sub_A234(&qword_3DFC8, &qword_3DFB8, &qword_2CCB0, &protocol conformance descriptor for CollectionDifference<A>);
  sub_2A5C4();
  sub_2A614();
  if (v28 == v27)
  {
    goto LABEL_9;
  }

  v27 = a5;
  sub_A234(&qword_3DFD0, &qword_3DC90, &qword_2C5C0, &protocol conformance descriptor for [A]);
  sub_2A654();
  v15 = v28;
  if (v28)
  {

    a5 = v15;
  }

  v16 = sub_1009C(a4, a5);
  v18 = v17;

  if (v18)
  {
LABEL_9:
    (*(v11 + 8))(v13, v10);
    if (a1 == &dword_0 + 1)
    {
      return a3;
    }

LABEL_12:
    if (a3)
    {
      if (!a1)
      {

        v23 = 0;
LABEL_21:
        v24 = v23;
        return a1;
      }

      v23 = a1;
      if ([a3 isEqual:v23])
      {
        sub_E884(a1);
        return a3;
      }
    }

    else
    {
      if (!a1)
      {
        return 0;
      }

      v23 = a1;
    }

    goto LABEL_21;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(a5 + 16))
  {
    a4 = *(a5 + 8 * v16 + 32);
    v20 = a4;

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

Swift::Int sub_1067C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2A994();
  if (!a1)
  {
    sub_2A484();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2A484();
    goto LABEL_6;
  }

  v6 = sub_2A794();
  sub_2A9A4(v6);
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_2A794();
  sub_2A9A4(v7);
LABEL_6:
  sub_17E88(v9, a3);
  return sub_2A9B4();
}

void sub_1074C(uint64_t a1)
{
  v4 = v1[1];
  v3 = v1[2];
  if (*v1)
  {
    v5 = sub_2A794();
    sub_2A9A4(v5);
    if (v4)
    {
LABEL_3:
      v6 = sub_2A794();
      sub_2A9A4(v6);
      goto LABEL_6;
    }
  }

  else
  {
    sub_2A484();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_2A484();
LABEL_6:

  sub_17E88(a1, v3);
}

Swift::Int sub_10804(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v5 = v2[1];
  v4 = v2[2];
  sub_2A994();
  if (!v3)
  {
    sub_2A484();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_2A484();
    goto LABEL_6;
  }

  v6 = sub_2A794();
  sub_2A9A4(v6);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_2A794();
  sub_2A9A4(v7);
LABEL_6:
  sub_17E88(v9, v4);
  return sub_2A9B4();
}

double sub_108E0@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_10968(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;

  v5 = v2;
  return sub_29734();
}

void sub_109FC(void *a1)
{
  v2 = OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_activeCoordinator;
  v3 = *(v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_activeCoordinator);
  *(v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_activeCoordinator) = a1;
  v4 = a1;

  v5 = *(v1 + v2);
  v6 = OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_isOccluded;
  if ((v5 != 0) != *(v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_isOccluded))
  {
    sub_18B6C(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel, &unk_2CB94);
    sub_296C4();
    sub_296E4();
  }

  *(v1 + v6) = v5 != 0;
}

uint64_t sub_10AF4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_tasks) + 16);
  if (v1)
  {

    v2 = 32;
    do
    {

      sub_2A5B4();

      v2 += 8;
      --v1;
    }

    while (v1);
  }

  v3 = OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel__currentSnapshot;
  v4 = sub_3398(&qword_3DFA8, &qword_2CBD0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_17FD4(*(v0 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_pendingSnapshot), *(v0 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_pendingSnapshot + 8), *(v0 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_pendingSnapshot + 16));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10C50()
{
  sub_10AF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for PosterConfigurationCarouselViewModel(uint64_t a1)
{
  result = qword_3DED0;
  if (!qword_3DED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10CFC(uint64_t a1)
{
  sub_10DD8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10DD8()
{
  if (!qword_3DEE0)
  {
    v0 = sub_29744();
    if (!v1)
    {
      atomic_store(v0, &qword_3DEE0);
    }
  }
}

uint64_t sub_10E34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_10E7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10ED0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10EE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10F2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10F80()
{
  v1 = v0;
  v2 = sub_3398(&qword_3D730, &qword_2BB88);
  __chkstk_darwin(v2 - 8);
  v4 = v50 - v3;
  v5 = sub_3398(&qword_3DFA8, &qword_2CBD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v50 - v7;
  v9 = OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel__currentSnapshot;
  v50[1] = 0;
  v50[2] = 0;
  v50[3] = &off_39F00;
  sub_29704();
  (*(v6 + 32))(v1 + v9, v8, v5);
  v10 = (v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_pendingSnapshot);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  *(v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_didResignActiveNotificationHandle) = 0;
  *(v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_enqueueSnapshotUpdates) = 0;
  *(v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_handlingCustomizeSelection) = 0;
  v11 = OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_wallpaperTransitionObserver;
  v12 = objc_allocWithZone(PRSWallpaperObserver);
  v13 = sub_2A444();
  v14 = [v12 initWithExplanation:v13];

  *(v1 + v11) = v14;
  v15 = OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_showAddWallpaperFlowSubject;
  sub_3398(&qword_3D4D0, qword_2C1C0);
  swift_allocObject();
  *(v1 + v15) = sub_296D4();
  *(v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_isOccluded) = 0;
  *(v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_activeCoordinator) = 0;
  *(v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_tasks) = _swiftEmptyArrayStorage;
  v16 = sub_2A554();
  v17 = *(*(v16 - 8) + 56);
  v17(v4, 1, 1, v16);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v18;

  v20 = sub_FD9C(0, 0, v4, &unk_2CBE0, v19);
  v21 = sub_17518(0, 1, 1, _swiftEmptyArrayStorage);
  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_17518((v22 > 1), v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  v21[v23 + 4] = v20;
  v17(v4, 1, 1, v16);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v24;
  v26 = sub_FD9C(0, 0, v4, &unk_2CBF0, v25);
  v28 = v21[2];
  v27 = v21[3];
  if (v28 >= v27 >> 1)
  {
    v46 = v26;
    v21 = sub_17518((v27 > 1), v28 + 1, 1, v21);
    v26 = v46;
  }

  v21[2] = v28 + 1;
  v21[v28 + 4] = v26;
  v17(v4, 1, 1, v16);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v29;
  v31 = sub_FD9C(0, 0, v4, &unk_2CC00, v30);
  v33 = v21[2];
  v32 = v21[3];
  if (v33 >= v32 >> 1)
  {
    v47 = v31;
    v21 = sub_17518((v32 > 1), v33 + 1, 1, v21);
    v31 = v47;
  }

  v21[2] = v33 + 1;
  v21[v33 + 4] = v31;
  v17(v4, 1, 1, v16);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v34;
  v36 = sub_FD9C(0, 0, v4, &unk_2CC10, v35);
  v38 = v21[2];
  v37 = v21[3];
  if (v38 >= v37 >> 1)
  {
    v48 = v36;
    v21 = sub_17518((v37 > 1), v38 + 1, 1, v21);
    v36 = v48;
  }

  v21[2] = v38 + 1;
  v21[v38 + 4] = v36;
  v17(v4, 1, 1, v16);
  v39 = swift_allocObject();
  swift_weakInit();

  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v39;
  v41 = sub_FD9C(0, 0, v4, &unk_2CC20, v40);
  v43 = v21[2];
  v42 = v21[3];
  if (v43 >= v42 >> 1)
  {
    v49 = v41;
    v21 = sub_17518((v42 > 1), v43 + 1, 1, v21);
    v41 = v49;
  }

  v21[2] = v43 + 1;
  v21[v43 + 4] = v41;
  v17(v4, 1, 1, v16);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v1;
  v44[5] = v21;

  sub_FD9C(0, 0, v4, &unk_2CC30, v44);

  return v1;
}

uint64_t sub_11688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_3398(&qword_3E008, &qword_2CD00);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_3398(&qword_3E010, &qword_2CD08);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_3398(&qword_3E018, &qword_2CD10);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_11824, 0, 0);
}

uint64_t sub_11824()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v0[19] = OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_wallpaperTransitionObserver;
    sub_2A524();
    v0[20] = sub_2A514();
    v3 = sub_2A4F4();

    return _swift_task_switch(sub_1193C, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1193C()
{
  v1 = v0[19];
  v2 = v0[18];

  v3 = *(v2 + v1);
  v0[21] = v3;
  v4 = v3;

  return _swift_task_switch(sub_119BC, 0, 0);
}

uint64_t sub_119BC()
{
  v1 = v0[21];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  *(swift_task_alloc() + 16) = v1;
  (*(v7 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v6);
  sub_2A5A4();

  sub_2A584();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_11B50;
  v9 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 25, 0, 0, v9);
}

uint64_t sub_11B50()
{

  return _swift_task_switch(sub_11C4C, 0, 0);
}

uint64_t sub_11C4C()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 168);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    *(v0 + 184) = Strong;
    if (Strong)
    {
      v5 = swift_task_alloc();
      *(v0 + 192) = v5;
      *v5 = v0;
      v5[1] = sub_11DE8;

      return sub_11F74();
    }

    else
    {
      v6 = swift_task_alloc();
      *(v0 + 176) = v6;
      *v6 = v0;
      v6[1] = sub_11B50;
      v7 = *(v0 + 120);

      return AsyncStream.Iterator.next(isolation:)(v0 + 200, 0, 0, v7);
    }
  }
}

uint64_t sub_11DE8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 176) = v3;
  *v3 = v2;
  v3[1] = sub_11B50;
  v4 = *(v1 + 120);

  return AsyncStream.Iterator.next(isolation:)(v1 + 200, 0, 0, v4);
}

uint64_t sub_11F74()
{
  v1[173] = v0;
  sub_2A524();
  v1[174] = sub_2A514();
  v3 = sub_2A4F4();
  v1[175] = v3;
  v1[176] = v2;

  return _swift_task_switch(sub_12010, v3, v2);
}

uint64_t sub_12010()
{
  sub_3A40(0, &qword_3DFB0, PRSPosterConfiguration_ptr);
  swift_asyncLet_begin();
  sub_3398(&qword_3DC90, &qword_2C5C0);
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1360, sub_120F8, v0 + 1296);
}

uint64_t sub_120F8()
{
  v1[177] = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 82, v1 + 171, sub_12410, v1 + 162);
  }

  else
  {
    return _swift_task_switch(sub_1213C, v1[175], v1[176]);
  }
}

uint64_t sub_1213C()
{
  v1 = *(v0 + 1360);
  *(v0 + 1424) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_29724();

  *(v0 + 1432) = *(v0 + 1296);
  *(v0 + 1448) = *(v0 + 1312);
  v3 = v2;

  return _swift_asyncLet_get_throwing(v0 + 656, v0 + 1368, sub_12218, v0 + 1296);
}

uint64_t sub_12218()
{
  v1[182] = v0;
  if (v0)
  {
    v2 = sub_12630;
  }

  else
  {
    v2 = sub_12250;
  }

  return _swift_task_switch(v2, v1[175], v1[176]);
}

uint64_t sub_12250()
{
  v1 = v0[181];
  v2 = v0[180];
  v3 = v0[179];
  v4 = v0[178];
  v5 = v0[171];

  v6 = sub_1033C(v4, v5, v3, v2, v1);
  v8 = v7;
  v10 = v9;

  sub_149F8(v6, v8, v10);

  return _swift_asyncLet_finish(v0 + 82, v0 + 171, sub_12358, v0 + 162);
}

uint64_t sub_123B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_12468()
{
  v12 = v0;

  if (qword_3D490 != -1)
  {
    swift_once();
  }

  v1 = sub_29684();
  sub_18530(v1, qword_40920);
  swift_errorRetain();
  v2 = sub_29664();
  v3 = sub_2A674();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_2A944();
    v8 = sub_177DC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error during call into PosterBoardServices %{public}s", v4, 0xCu);
    sub_18568(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_12630()
{
  v1 = v0[180];
  v2 = v0[179];
  v3 = v0[178];

  return _swift_asyncLet_finish(v0 + 82, v0 + 171, sub_126C4, v0 + 162);
}

uint64_t sub_1271C()
{
  v12 = v0;

  if (qword_3D490 != -1)
  {
    swift_once();
  }

  v1 = sub_29684();
  sub_18530(v1, qword_40920);
  swift_errorRetain();
  v2 = sub_29664();
  v3 = sub_2A674();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_2A944();
    v8 = sub_177DC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Error during call into PosterBoardServices %{public}s", v4, 0xCu);
    sub_18568(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_128E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_3398(&qword_3D738, &unk_2BBA0);
  v4[7] = swift_task_alloc();
  v5 = sub_2A734();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_129DC, 0, 0);
}

uint64_t sub_129DC()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_2A744();

  sub_2A724();
  swift_beginAccess();
  v2 = sub_18B6C(&qword_3D740, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_12B24;
  v4 = v0[7];
  v5 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_12B24()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_12E64;
  }

  else
  {
    v2 = sub_12C38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_12C54()
{
  v1 = v0[7];
  v2 = sub_29464();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v0[13] = Strong;
    if (Strong)
    {
      v6 = swift_task_alloc();
      v0[14] = v6;
      *v6 = v0;
      v6[1] = sub_12EF0;

      return sub_11F74();
    }

    else
    {
      sub_B0B0(v0[7], &qword_3D738, &unk_2BBA0);
      v7 = sub_18B6C(&qword_3D740, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
      v8 = swift_task_alloc();
      v0[11] = v8;
      *v8 = v0;
      v8[1] = sub_12B24;
      v9 = v0[7];
      v10 = v0[8];

      return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v7);
    }
  }
}

uint64_t sub_12E64()
{
  *(v0 + 40) = *(v0 + 96);
  sub_3398(&qword_3D748, &qword_2CC40);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_12EF0()
{

  return _swift_task_switch(sub_13008, 0, 0);
}

uint64_t sub_13008()
{
  sub_B0B0(v0[7], &qword_3D738, &unk_2BBA0);
  v1 = sub_18B6C(&qword_3D740, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_12B24;
  v3 = v0[7];
  v4 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_130F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_3398(&qword_3D738, &unk_2BBA0);
  v4[10] = swift_task_alloc();
  v5 = sub_2A734();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_131F0, 0, 0);
}

uint64_t sub_131F0()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_3D450 != -1)
  {
    swift_once();
  }

  sub_2A744();

  sub_2A724();
  swift_beginAccess();
  v2 = sub_18B6C(&qword_3D740, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_13364;
  v4 = v0[10];
  v5 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_13364()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_136A8;
  }

  else
  {
    v2 = sub_13478;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_13494()
{
  v1 = v0[10];
  v2 = sub_29464();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v0[16] = Strong;
    if (Strong)
    {
      sub_2A524();
      v0[17] = sub_2A514();
      v7 = sub_2A4F4();

      return _swift_task_switch(sub_13734, v7, v6);
    }

    else
    {
      sub_B0B0(v0[10], &qword_3D738, &unk_2BBA0);
      v8 = sub_18B6C(&qword_3D740, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
      v9 = swift_task_alloc();
      v0[14] = v9;
      *v9 = v0;
      v9[1] = sub_13364;
      v10 = v0[10];
      v11 = v0[11];

      return dispatch thunk of AsyncIteratorProtocol.next()(v10, v11, v8);
    }
  }
}

uint64_t sub_136A8()
{
  *(v0 + 64) = *(v0 + 120);
  sub_3398(&qword_3D748, &qword_2CC40);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_13734()
{
  v1 = v0[16];

  v2 = v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_pendingSnapshot;
  v3 = *(v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_pendingSnapshot);
  v4 = *(v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_pendingSnapshot + 8);
  v5 = *(v2 + 16);
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v0[5] = v3;
    v0[6] = v4;
    v0[7] = v5;
    sub_1861C(v3, v4, v5);

    sub_29734();
    v6 = *v2;
    v7 = *(v2 + 8);
    v8 = *(v2 + 16);
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 0;
    sub_17FD4(v6, v7, v8);
  }

  else
  {
    *(v0[16] + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_enqueueSnapshotUpdates) = 0;
    *v2 = v3;
    *(v2 + 8) = v4;
    *(v2 + 16) = 0;
  }

  return _swift_task_switch(sub_13860, 0, 0);
}

uint64_t sub_13860()
{
  sub_B0B0(v0[10], &qword_3D738, &unk_2BBA0);
  v1 = sub_18B6C(&qword_3D740, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_13364;
  v3 = v0[10];
  v4 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_13950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_3398(&qword_3D738, &unk_2BBA0);
  v4[7] = swift_task_alloc();
  v5 = sub_2A734();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_13A48, 0, 0);
}

uint64_t sub_13A48()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_3D458 != -1)
  {
    swift_once();
  }

  sub_2A744();

  sub_2A724();
  swift_beginAccess();
  v2 = sub_18B6C(&qword_3D740, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_13BBC;
  v4 = v0[7];
  v5 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_13BBC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_18BF0;
  }

  else
  {
    v2 = sub_13CD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_13CEC()
{
  v1 = v0[7];
  v2 = sub_29464();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v0[13] = Strong;
    if (Strong)
    {
      v6 = swift_task_alloc();
      v0[14] = v6;
      *v6 = v0;
      v6[1] = sub_13EFC;

      return sub_11F74();
    }

    else
    {
      sub_B0B0(v0[7], &qword_3D738, &unk_2BBA0);
      v7 = sub_18B6C(&qword_3D740, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
      v8 = swift_task_alloc();
      v0[11] = v8;
      *v8 = v0;
      v8[1] = sub_13BBC;
      v9 = v0[7];
      v10 = v0[8];

      return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v7);
    }
  }
}

uint64_t sub_13EFC()
{

  return _swift_task_switch(sub_14014, 0, 0);
}

uint64_t sub_14014()
{
  sub_B0B0(v0[7], &qword_3D738, &unk_2BBA0);
  v1 = sub_18B6C(&qword_3D740, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_13BBC;
  v3 = v0[7];
  v4 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_14104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_3398(&qword_3D738, &unk_2BBA0);
  v4[7] = swift_task_alloc();
  v5 = sub_2A734();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_141FC, 0, 0);
}

uint64_t sub_141FC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_3D470 != -1)
  {
    swift_once();
  }

  sub_2A744();

  sub_2A724();
  swift_beginAccess();
  v2 = sub_18B6C(&qword_3D740, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_14370;
  v4 = v0[7];
  v5 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_14370()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_18BF0;
  }

  else
  {
    v2 = sub_14484;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_144A0()
{
  v1 = v0[7];
  v2 = sub_29464();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    v0[13] = Strong;
    if (Strong)
    {
      v6 = swift_task_alloc();
      v0[14] = v6;
      *v6 = v0;
      v6[1] = sub_146B0;

      return sub_11F74();
    }

    else
    {
      sub_B0B0(v0[7], &qword_3D738, &unk_2BBA0);
      v7 = sub_18B6C(&qword_3D740, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
      v8 = swift_task_alloc();
      v0[11] = v8;
      *v8 = v0;
      v8[1] = sub_14370;
      v9 = v0[7];
      v10 = v0[8];

      return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v7);
    }
  }
}

uint64_t sub_146B0()
{

  return _swift_task_switch(sub_147C8, 0, 0);
}

uint64_t sub_147C8()
{
  sub_B0B0(v0[7], &qword_3D738, &unk_2BBA0);
  v1 = sub_18B6C(&qword_3D740, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_14370;
  v3 = v0[7];
  v4 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_148B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_148D8, 0, 0);
}

uint64_t sub_148D8()
{
  sub_2A524();
  *(v0 + 32) = sub_2A514();
  v2 = sub_2A4F4();

  return _swift_task_switch(sub_1496C, v2, v1);
}

uint64_t sub_1496C()
{
  v1 = v0[3];
  v2 = v0[2];

  *(v2 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_tasks) = v1;

  v3 = v0[1];

  return v3();
}

id sub_149F8(void *a1, void *a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_enqueueSnapshotUpdates) == 1)
  {
    v7 = (v3 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_pendingSnapshot);
    v8 = *(v3 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_pendingSnapshot);
    v9 = *(v3 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_pendingSnapshot + 8);
    v10 = *(v3 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_pendingSnapshot + 16);
    *v7 = a1;
    v7[1] = a2;
    v7[2] = a3;
    sub_17FD4(v8, v9, v10);
    v11 = a2;

    return a1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = a2;

    v14 = a1;
    return sub_29734();
  }
}

uint64_t sub_14B24()
{
  if (qword_3D468 != -1)
  {
    swift_once();
  }

  v1 = qword_408A8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_14C74;
  v2 = swift_continuation_init();
  v0[17] = sub_3398(&qword_3DFF0, &qword_2CCD0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_14E10;
  v0[13] = &unk_3AD40;
  v0[14] = v2;
  [v1 fetchActivePosterForRole:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_14C74()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_18BF4;
  }

  else
  {
    v2 = sub_14D84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_14D84()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = [v1 lockScreenPosterConfiguration];

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_14E10(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_185D8((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_3398(&qword_3D748, &qword_2CC40);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_14F08()
{
  if (qword_3D468 != -1)
  {
    swift_once();
  }

  v1 = qword_408A8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_15058;
  v2 = swift_continuation_init();
  v0[17] = sub_3398(&qword_3DFE0, &unk_2CCC0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1536C;
  v0[13] = &unk_3AD18;
  v0[14] = v2;
  [v1 fetchPosterConfigurationsForRole:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_15058()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_15300;
  }

  else
  {
    v2 = sub_15168;
  }

  return _swift_task_switch(v2, 0, 0);
}

char *sub_15168()
{
  v1 = v0[18];
  if (v1 >> 62)
  {
    v2 = sub_2A8E4();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  result = sub_1D060(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = sub_2A834();
    }

    else
    {
      v5 = *(v1 + 8 * i + 32);
    }

    v7 = _swiftEmptyArrayStorage[2];
    v6 = _swiftEmptyArrayStorage[3];
    if (v7 >= v6 >> 1)
    {
      v8 = v5;
      sub_1D060((v6 > 1), v7 + 1, 1);
      v5 = v8;
    }

    _swiftEmptyArrayStorage[2] = v7 + 1;
    _swiftEmptyArrayStorage[v7 + 4] = v5;
  }

LABEL_13:

  v9 = v0[19];
  sub_17D94(&off_39F50);
  *v9 = _swiftEmptyArrayStorage;
  v10 = v0[1];

  return v10();
}

uint64_t sub_15300()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1536C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_185D8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_3398(&qword_3D748, &qword_2CC40);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_3A40(0, &qword_3DFB0, PRSPosterConfiguration_ptr);
    **(*(v4 + 64) + 40) = sub_2A4E4();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1545C()
{
  v0 = sub_3398(&qword_3D730, &qword_2BB88);
  __chkstk_darwin(v0 - 8);
  v2 = v8 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  v3 = v8[2];

  if (v3)
  {
    v5 = sub_2A554();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v3;
    v7 = v3;
    sub_15AF4(0, 0, v2, &unk_2CDF0, v6);

    return sub_B0B0(v2, &qword_3D730, &qword_2BB88);
  }

  return result;
}

uint64_t sub_15604()
{
  if (qword_3D468 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = qword_408A8;
  v0[2] = v0;
  v0[3] = sub_1575C;
  v3 = swift_continuation_init();
  v0[17] = sub_3398(&qword_3E020, &qword_2CE08);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_15A48;
  v0[13] = &unk_3AEC0;
  v0[14] = v3;
  [v2 updateSelectedForRoleIdentifier:0 newlySelectedConfiguration:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1575C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_15880;
  }

  else
  {
    v2 = sub_1586C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_15880()
{
  v12 = v0;
  swift_willThrow();
  if (qword_3D490 != -1)
  {
    swift_once();
  }

  v1 = sub_29684();
  sub_18530(v1, qword_40920);
  swift_errorRetain();
  v2 = sub_29664();
  v3 = sub_2A674();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_2A944();
    v8 = sub_177DC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v2, v3, "Failed to update wallpaper with error: %s", v4, 0xCu);
    sub_18568(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_15A48(uint64_t a1, void *a2)
{
  v3 = sub_185D8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_3398(&qword_3D748, &qword_2CC40);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_15AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3398(&qword_3D730, &qword_2BB88);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_18A64(a3, v25 - v10, &qword_3D730, &qword_2BB88);
  v12 = sub_2A554();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_B0B0(v11, &qword_3D730, &qword_2BB88);
  }

  else
  {
    sub_2A544();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2A4F4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2A474() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_15DB4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29724();

  v5 = v16;

  if (v16)
  {
    if (*(v2 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_handlingCustomizeSelection))
    {
      if (qword_3D480 != -1)
      {
        swift_once();
      }

      v6 = sub_29684();
      sub_18530(v6, qword_408F0);
      v7 = sub_29664();
      v8 = sub_2A664();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_0, v7, v8, "handleDidTapOnPosterPreview... already handling a customize selection, doing nothing", v9, 2u);
      }
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_handlingCustomizeSelection) = 1;
      if (qword_3D468 != -1)
      {
        swift_once();
      }

      v10 = qword_408A8;
      v11 = swift_allocObject();
      v11[2] = v5;
      v11[3] = v2;
      v11[4] = a1;
      v11[5] = a2;
      v19 = sub_18A50;
      v20 = v11;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_16FE8;
      v18 = &unk_3AF10;
      v12 = _Block_copy(&v15);
      v13 = v5;

      v14 = a2;

      [v10 fetchPosterConfigurationsForRole:0 completion:v12];
      _Block_release(v12);
    }
  }
}

void sub_16010(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v95 = a6;
  v94 = a5;
  v97 = a4;
  v110 = a3;
  v111 = a1;
  v7 = sub_2A354();
  v99 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2A384();
  v98 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29554();
  v115 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3398(&qword_3E028, &qword_2CE10);
  __chkstk_darwin(v16);
  v18 = &v89 - v17;
  v19 = sub_3398(&qword_3E030, &qword_2CE18);
  __chkstk_darwin(v19 - 8);
  __chkstk_darwin(v20);
  v22 = &v89 - v21;
  __chkstk_darwin(v23);
  if (a2)
  {
    if (qword_3D480 != -1)
    {
LABEL_44:
      swift_once();
    }

    v26 = sub_29684();
    sub_18530(v26, qword_408F0);
    swift_errorRetain();
    v115 = sub_29664();
    v27 = sub_2A674();

    if (os_log_type_enabled(v115, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&dword_0, v115, v27, "handleDidTapOnPosterPreview... error fetching configurations to match on for editing, bailing. Error: %@", v28, 0xCu);
      sub_B0B0(v29, &qword_3E060, &qword_2CE28);
    }

    v31 = v115;

    return;
  }

  v32 = v115;
  v104 = v15;
  v105 = &v89 - v24;
  v103 = v25;
  v108 = v16;
  v90 = v12;
  v91 = v9;
  v33 = v111;
  v93 = v7;
  v92 = v10;
  if (v111 >> 62)
  {
    v88 = sub_2A8E4();
    v33 = v111;
    v109 = v88;
  }

  else
  {
    v109 = *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8));
  }

  v34 = v105;
  v35 = v32;
  if (!v109)
  {
LABEL_31:
    if (qword_3D480 != -1)
    {
      swift_once();
    }

    v57 = sub_29684();
    sub_18530(v57, qword_408F0);
    v58 = sub_29664();
    v59 = sub_2A674();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v93;
    v62 = v99;
    v63 = v98;
    v64 = v97;
    if (v60)
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_0, v58, v59, "handleDidTapOnPosterPreview... did not find a true matching configuration for the tapped configuration, doing nothing", v65, 2u);
    }

    sub_3A40(0, &qword_3E038, OS_dispatch_queue_ptr);
    v66 = sub_2A6C4();
    v120 = sub_18ACC;
    v121 = v64;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_3104;
    v119 = &unk_3AF38;
    v67 = _Block_copy(&aBlock);

    v68 = v90;
    sub_2A364();
    aBlock = _swiftEmptyArrayStorage;
    sub_18B6C(&qword_3E040, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_3398(&qword_3E048, &qword_2CE20);
    sub_A234(&qword_3E050, &qword_3E048, &qword_2CE20, &protocol conformance descriptor for [A]);
    v69 = v91;
    sub_2A7C4();
    sub_2A6D4();
    _Block_release(v67);

    (*(v62 + 8))(v69, v61);
    (*(v63 + 8))(v68, v92);
    return;
  }

  v36 = 0;
  v107 = v33 & 0xC000000000000001;
  v100 = v33 & 0xFFFFFFFFFFFFFF8;
  v115 = v35 + 7;
  v106 = &v35[6];
  v96 = v35 + 4;
  v102 = v35 + 1;
  v112 = v22;
  while (1)
  {
    if (v107)
    {
      v37 = sub_2A834();
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v36 >= *(v100 + 16))
      {
        goto LABEL_43;
      }

      v37 = *(v33 + 8 * v36 + 32);
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    v114 = v37;
    v39 = [v37 serverUUID];
    if (v39)
    {
      v40 = v39;
      sub_29544();

      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    isa = v115->isa;
    v43 = 1;
    (v115->isa)(v34, v41, 1, v13);
    v44 = [v110 serverUUID];
    v113 = v38;
    if (v44)
    {
      v45 = v44;
      sub_29544();

      v43 = 0;
    }

    (isa)(v22, v43, 1, v13);
    v46 = *(v108 + 48);
    sub_18A64(v34, v18, &qword_3E030, &qword_2CE18);
    sub_18A64(v22, &v18[v46], &qword_3E030, &qword_2CE18);
    v47 = *v106;
    if ((*v106)(v18, 1, v13) == 1)
    {
      break;
    }

    v48 = v103;
    sub_18A64(v18, v103, &qword_3E030, &qword_2CE18);
    v49 = v47(&v18[v46], 1, v13);
    v50 = v104;
    if (v49 == 1)
    {
      sub_B0B0(v112, &qword_3E030, &qword_2CE18);
      v51 = v105;
      sub_B0B0(v105, &qword_3E030, &qword_2CE18);
      v52 = v48;
      v34 = v51;
      (v102->isa)(v52, v13);
      goto LABEL_13;
    }

    (v96->isa)(v104, &v18[v46], v13);
    sub_18B6C(&qword_3E058, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v53 = v13;
    v101 = sub_2A434();
    v54 = v102->isa;
    (v102->isa)(v50, v13);
    sub_B0B0(v112, &qword_3E030, &qword_2CE18);
    v55 = v105;
    sub_B0B0(v105, &qword_3E030, &qword_2CE18);
    v56 = v48;
    v34 = v55;
    v13 = v53;
    v54(v56, v53);
    sub_B0B0(v18, &qword_3E030, &qword_2CE18);
    if (v101)
    {
      goto LABEL_37;
    }

LABEL_14:

    ++v36;
    v22 = v112;
    v33 = v111;
    if (v113 == v109)
    {
      goto LABEL_31;
    }
  }

  sub_B0B0(v22, &qword_3E030, &qword_2CE18);
  sub_B0B0(v34, &qword_3E030, &qword_2CE18);
  if (v47(&v18[v46], 1, v13) != 1)
  {
LABEL_13:
    sub_B0B0(v18, &qword_3E028, &qword_2CE10);
    goto LABEL_14;
  }

  sub_B0B0(v18, &qword_3E030, &qword_2CE18);
LABEL_37:
  if (qword_3D480 != -1)
  {
    swift_once();
  }

  v70 = sub_29684();
  sub_18530(v70, qword_408F0);
  v71 = sub_29664();
  v72 = sub_2A664();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v93;
  v75 = v99;
  v76 = v90;
  v77 = v97;
  v78 = v95;
  v79 = v94;
  if (v73)
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_0, v71, v72, "handleDidTapOnPosterPreview... found matching configuration, beginning editing", v80, 2u);
  }

  sub_3A40(0, &qword_3E038, OS_dispatch_queue_ptr);
  v81 = sub_2A6C4();
  v82 = swift_allocObject();
  v82[2] = v77;
  v82[3] = v79;
  v83 = v114;
  v82[4] = v114;
  v82[5] = v78;
  v120 = sub_18B34;
  v121 = v82;
  aBlock = _NSConcreteStackBlock;
  v117 = 1107296256;
  v118 = sub_3104;
  v119 = &unk_3AF88;
  v84 = _Block_copy(&aBlock);

  v85 = v83;
  v86 = v78;

  sub_2A364();
  aBlock = _swiftEmptyArrayStorage;
  sub_18B6C(&qword_3E040, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_3398(&qword_3E048, &qword_2CE20);
  sub_A234(&qword_3E050, &qword_3E048, &qword_2CE20, &protocol conformance descriptor for [A]);
  v87 = v91;
  sub_2A7C4();
  sub_2A6D4();
  _Block_release(v84);

  (*(v75 + 8))(v87, v74);
  (*(v98 + 8))(v76, v92);
}

void sub_16D9C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (!*(v3 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_activeCoordinator))
  {
    objc_allocWithZone(type metadata accessor for PosterBoardUICoordinator());
    v8 = a2;
    v9 = a3;
    v10 = sub_6148(v9, a1, a2);

    *&v10[OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_delegate + 8] = &off_3ABF0;
    swift_unknownObjectWeakAssign();
    v17 = v10;
    sub_109FC(v10);
    sub_5D2C();
    v11 = OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_didResignActiveNotificationHandle;
    if (*(v4 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_didResignActiveNotificationHandle))
    {
    }

    else
    {
      v12 = [objc_opt_self() defaultCenter];
      v13 = [objc_opt_self() sharedApplication];
      v14 = [objc_opt_self() mainQueue];
      aBlock[4] = sub_17098;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_17108;
      aBlock[3] = &unk_3AFB0;
      v15 = _Block_copy(aBlock);
      v16 = [v12 addObserverForName:UIApplicationWillResignActiveNotification object:v13 queue:v14 usingBlock:v15];

      _Block_release(v15);
      *(v4 + v11) = v16;
      swift_unknownObjectRelease();
    }
  }
}

void sub_16FE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_3A40(0, &qword_3DFB0, PRSPosterConfiguration_ptr);
  v5 = sub_2A4E4();

  v6 = a3;
  v4(v5, a3);
}

void sub_17098()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:NSExtensionHostWillResignActiveNotification object:0];
}

uint64_t sub_17108(uint64_t a1, uint64_t a2)
{
  v3 = sub_29464();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_29454();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_171FC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_296C4();
  *a2 = result;
  return result;
}

uint64_t sub_1724C(uint64_t a1, uint64_t a2)
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
      if (v6)
      {
        if (!v7 || ([v5 isEqual:?] & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
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

uint64_t sub_172DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_17328(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_17420;

  return v6(a1);
}

uint64_t sub_17420()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_17518(void *result, int64_t a2, char a3, void *a4)
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
    sub_3398(&qword_3DFF8, &qword_2CCD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3398(&qword_3E000, &qword_2CCE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1764C(char *result, int64_t a2, char a3, char *a4)
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
    sub_3398(&qword_3DFE8, &qword_2D450);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_17780(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_177DC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_177DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_178A8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_354C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_18568(v11);
  return v7;
}

unint64_t sub_178A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_179B4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2A844();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_179B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_17A00(a1, a2);
  sub_17B30(&off_39F28);
  return v3;
}

void *sub_17A00(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_17C1C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2A844();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2A4B4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_17C1C(v10, 0);
        result = sub_2A814();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_17B30(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_17C90(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_17C1C(uint64_t a1, uint64_t a2)
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

  sub_3398(&qword_3DFD8, &qword_2CCB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_17C90(char *result, int64_t a2, char a3, char *a4)
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
    sub_3398(&qword_3DFD8, &qword_2CCB8);
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

_BYTE **sub_17D84(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

char *sub_17D94(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1764C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_17E88(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_2A9A4(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      while (1)
      {
        v6 = *v4++;
        v5 = v6;
        if (v6)
        {
          break;
        }

        sub_2A484();
        if (!--v3)
        {
          return;
        }
      }

      v7 = v5;
      v8 = sub_2A794();
      sub_2A9A4(v8);

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_17F2C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (!a4 || ([a1 isEqual:a4] & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (!a2)
  {
    if (!a5)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!a5 || ([a2 isEqual:a5] & 1) == 0)
  {
    return 0;
  }

LABEL_9:

  return sub_1724C(a3, a6);
}

void sub_17FD4(void *a1, void *a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_18028()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18064(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18BEC;

  return sub_11688(a1, v4, v5, v6);
}

uint64_t sub_18118(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18BEC;

  return sub_128E4(a1, v4, v5, v6);
}

uint64_t sub_181CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18BEC;

  return sub_130F8(a1, v4, v5, v6);
}

uint64_t sub_18280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18BEC;

  return sub_13950(a1, v4, v5, v6);
}

uint64_t sub_18334()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_18374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18BEC;

  return sub_14104(a1, v4, v5, v6);
}

uint64_t sub_18428()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_18470(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_18BEC;

  return sub_148B8(a1, v4, v5, v7, v6);
}

uint64_t sub_18530(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_18568(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_185D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_1861C(id result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

uint64_t sub_18670()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_186A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18BEC;

  return sub_17328(a1, v4);
}

uint64_t sub_18760(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5240;

  return sub_17328(a1, v4);
}

uint64_t sub_18820(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_188C4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_188DC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_18914()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_18954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5240;

  return sub_155E4(a1, v4, v5, v6);
}

uint64_t sub_18A08()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_18A64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3398(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_18ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18AEC()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_18B34()
{
  v1 = *(v0 + 16);
  sub_16D9C(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  *(v1 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_handlingCustomizeSelection) = 0;
}

uint64_t sub_18B6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18C10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_18C58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_18CC4@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a3;
  v9 = sub_29D54();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3398(&qword_3E068, &qword_2CF40);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  *v15 = sub_29C54();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_3398(&qword_3E070, &qword_2CF48);
  sub_18FB0(&v15[*(v16 + 44)]);
  v17 = &v15[*(v13 + 36)];
  v17[32] = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  sub_29D44();
  sub_197AC();
  sub_19A38(&qword_3E0A0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  sub_2A034();
  (*(v10 + 8))(v12, v9);
  sub_19890(v15);
  type metadata accessor for PosterConfigurationCarouselViewModel(0);
  sub_19A38(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel, &unk_2CB94);
  v18 = sub_296B4();
  v19 = (a5 + *(sub_3398(&qword_3E0A8, &qword_2CF60) + 36));
  *v19 = v18;
  v19[1] = a4;
  v20 = *(a4 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_showAddWallpaperFlowSubject);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  a2 &= 1u;
  *(v21 + 24) = a2;
  *(v21 + 32) = v26;
  *(v21 + 40) = a4;
  v22 = sub_3398(&qword_3E0B0, &unk_2CF68);
  *(a5 + *(v22 + 52)) = v20;
  v23 = (a5 + *(v22 + 56));
  *v23 = sub_19948;
  v23[1] = v21;
  swift_retain_n();

  return sub_19960(a1, a2);
}

uint64_t sub_18FB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WallpaperConfigurationsCarouselContent(0);
  v3 = (v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v24 - v7);
  type metadata accessor for PosterConfigurationCarouselViewModel(0);
  sub_19A38(&qword_3D558, type metadata accessor for PosterConfigurationCarouselViewModel, &unk_2CB94);
  v9 = sub_29A24();
  v11 = v10;
  *v8 = swift_getKeyPath();
  sub_3398(&qword_3DAD8, &qword_2C420);
  swift_storeEnumTagMultiPayload();
  v12 = (v8 + v3[7]);
  *v12 = sub_29A24();
  v12[1] = v13;
  v14 = v8 + v3[8];
  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = v3[9];
  v25 = 1;
  sub_3398(&qword_3DAE0, &qword_2C450);
  sub_2A1C4();
  *(v8 + v15) = v26;
  v16 = v8 + v3[10];
  LOBYTE(v25) = 0;
  sub_2A1C4();
  v17 = *(&v26 + 1);
  *v16 = v26;
  *(v16 + 1) = v17;
  *(v8 + v3[11]) = 0x403C000000000000;
  *(v8 + v3[12]) = vdupq_n_s64(0x4049000000000000uLL);
  v18 = sub_29A24();
  v20 = v19;
  sub_E65C(v8, v5);
  *a1 = v9;
  a1[1] = v11;
  v21 = sub_3398(&qword_3E0B8, qword_2CFE0);
  sub_E65C(v5, a1 + *(v21 + 48));
  v22 = (a1 + *(v21 + 64));
  *v22 = v18;
  v22[1] = v20;

  sub_19B9C(v8);

  sub_19B9C(v5);
}

void sub_1922C(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v7 = sub_2A354();
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2A384();
  v33 = *(v10 - 8);
  v34 = v10;
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29B94();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v17 = a2;
    v18 = a2;
    if (!a2)
    {
      return;
    }
  }

  else
  {

    sub_2A684();
    v19 = sub_29E94();
    sub_295A4();

    sub_29B84();
    swift_getAtKeyPath();
    sub_1993C(a2, 0);
    (*(v14 + 8))(v16, v13);
    v18 = aBlock[0];
    if (!aBlock[0])
    {
      return;
    }
  }

  v20 = [v18 scene];
  if (v20)
  {
    v21 = v20;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      sub_1996C();
      v30 = sub_2A6C4();
      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      v25 = a3 & 1;
      *(v24 + 24) = a3 & 1;
      v26 = v32;
      *(v24 + 32) = v31;
      *(v24 + 40) = v26;
      *(v24 + 48) = v23;
      aBlock[4] = sub_19A04;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_3104;
      aBlock[3] = &unk_3B0A8;
      v27 = _Block_copy(aBlock);
      sub_19960(a2, v25);

      v28 = v21;

      sub_2A364();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_19A38(&qword_3E040, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_3398(&qword_3E048, &qword_2CE20);
      sub_A234(&qword_3E050, &qword_3E048, &qword_2CE20, &protocol conformance descriptor for [A]);
      sub_2A7C4();
      v29 = v30;
      sub_2A6D4();

      _Block_release(v27);
      (*(v35 + 8))(v9, v7);
      (*(v33 + 8))(v12, v34);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_196B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!*(a4 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_activeCoordinator))
  {
    *(a4 + OBJC_IVAR____TtC17WallpaperSettings36PosterConfigurationCarouselViewModel_enqueueSnapshotUpdates) = 1;
    v7 = objc_allocWithZone(type metadata accessor for PosterBoardUICoordinator());
    v8 = a5;
    v9 = sub_6148(v8, 0, 0);

    *&v9[OBJC_IVAR____TtC17WallpaperSettings24PosterBoardUICoordinator_delegate + 8] = &off_3ABF0;
    swift_unknownObjectWeakAssign();
    v10 = v9;
    sub_109FC(v9);
    sub_5D2C();
  }
}

unint64_t sub_197AC()
{
  result = qword_3E078;
  if (!qword_3E078)
  {
    sub_360C(&qword_3E068, &qword_2CF40);
    sub_A234(&qword_3E080, &qword_3E088, &qword_2CF50, &protocol conformance descriptor for VStack<A>);
    sub_A234(&qword_3E090, &qword_3E098, &qword_2CF58, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E078);
  }

  return result;
}

uint64_t sub_19890(uint64_t a1)
{
  v2 = sub_3398(&qword_3E068, &qword_2CF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_198F8()
{
  sub_1993C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1993C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_19960(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_1996C()
{
  result = qword_3E038;
  if (!qword_3E038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3E038);
  }

  return result;
}

uint64_t sub_199B8()
{
  sub_1993C(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_19A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_19A38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19AA4(uint64_t a1)
{
  v2 = sub_29954();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_29AE4();
}

uint64_t sub_19B9C(uint64_t a1)
{
  v2 = type metadata accessor for WallpaperConfigurationsCarouselContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19C3C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  *&xmmword_3E0C8 = v2;
  *(&xmmword_3E0C8 + 1) = v4;
}

double sub_19CA8@<D0>(_OWORD *a1@<X8>)
{
  if (qword_3D478 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_3E0C8;
  *a1 = xmmword_3E0C8;
  return result;
}

uint64_t sub_19D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19F84(&qword_3E0E8, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

double sub_19DA4()
{
  sub_19F10();
  sub_29BA4();
  return v1;
}

uint64_t sub_19DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19F84(&qword_3D520, type metadata accessor for BSInterfaceOrientation, &unk_2B688);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_19E80()
{
  sub_19EBC();
  sub_29BA4();
  return v1;
}

unint64_t sub_19EBC()
{
  result = qword_3E0D8;
  if (!qword_3E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E0D8);
  }

  return result;
}

unint64_t sub_19F10()
{
  result = qword_3E0E0;
  if (!qword_3E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E0E0);
  }

  return result;
}

uint64_t sub_19F84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A014(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_29684();
  sub_1A128(v5, a2);
  sub_18530(v5, a2);

  return sub_29674();
}

uint64_t sub_1A09C()
{
  v0 = sub_29684();
  sub_1A128(v0, qword_40920);
  sub_18530(v0, qword_40920);

  return sub_29674();
}

uint64_t *sub_1A128(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1A18C()
{
  v0 = sub_29604();
  sub_1A128(v0, qword_40938);
  sub_18530(v0, qword_40938);
  return sub_295F4();
}

__n128 sub_1A238@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_3398(&qword_3E100, &qword_2D188);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_3398(&qword_3E108, &qword_2D190);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = sub_3398(&qword_3E110, &qword_2D198);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  *v15 = sub_29C54();
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_1A5BC(a1, a2, v7);
  sub_2A304();
  v16 = &v15[*(sub_3398(&qword_3E118, &qword_2D1A0) + 44)];
  sub_299D4();
  sub_1B510(v7, v11, &qword_3E100, &qword_2D188);
  v17 = &v11[*(v9 + 44)];
  v18 = v42;
  *(v17 + 4) = v41;
  *(v17 + 5) = v18;
  *(v17 + 6) = v43;
  v19 = v38;
  *v17 = v37;
  *(v17 + 1) = v19;
  v20 = v40;
  *(v17 + 2) = v39;
  *(v17 + 3) = v20;
  v21 = sub_2A304();
  v23 = v22;
  v24 = v16 + *(sub_3398(&qword_3E120, &qword_2D1A8) + 36);
  sub_1A9A4(a1, a2, v24);
  v25 = (v24 + *(sub_3398(&qword_3E128, &qword_2D1B0) + 36));
  *v25 = v21;
  v25[1] = v23;
  sub_1B510(v11, v16, &qword_3E108, &qword_2D190);
  LOBYTE(v21) = sub_29EF4();
  sub_29774();
  v26 = &v15[*(v13 + 44)];
  *v26 = v21;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_2A304();
  sub_299D4();
  v31 = v36;
  sub_1B510(v15, v36, &qword_3E110, &qword_2D198);
  v32 = v31 + *(sub_3398(&qword_3E130, &qword_2D1B8) + 36);
  v33 = v49;
  *(v32 + 64) = v48;
  *(v32 + 80) = v33;
  *(v32 + 96) = v50;
  v34 = v45;
  *v32 = v44;
  *(v32 + 16) = v34;
  result = v47;
  *(v32 + 32) = v46;
  *(v32 + 48) = result;
  return result;
}

uint64_t sub_1A5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_3398(&qword_3E1C8, &qword_2D200);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v37 = sub_3398(&qword_3E1B0, &qword_2D1F8);
  __chkstk_darwin(v37);
  v35 = &v33 - v8;
  v38 = sub_3398(&qword_3E1E0, &qword_2D2B8);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v34 = &v33 - v9;
  sub_1B184(a1, a2);
  sub_29BE4();
  if (qword_3D460 != -1)
  {
    swift_once();
  }

  v10 = qword_408A0;
  v11 = sub_29FC4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &v7[*(v5 + 36)];
  v19 = *(sub_3398(&qword_3E1D8, &qword_2D208) + 28);
  v20 = enum case for Text.Case.uppercase(_:);
  v21 = sub_29F94();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v18 + v19, v20, v21);
  (*(v22 + 56))(v18 + v19, 0, 1, v21);
  *v18 = swift_getKeyPath();
  *v7 = v11;
  *(v7 + 1) = v13;
  v7[16] = v15 & 1;
  *(v7 + 3) = v17;
  v23 = sub_29F54();
  KeyPath = swift_getKeyPath();
  v25 = v35;
  sub_1BF6C(v7, v35);
  v26 = (v25 + *(v37 + 36));
  *v26 = KeyPath;
  v26[1] = v23;
  sub_29F34();
  sub_1B974();
  v27 = v34;
  sub_2A024();
  sub_1BFDC(v25);
  v28 = sub_2A154();
  v29 = swift_getKeyPath();
  v30 = v39;
  (*(v36 + 32))(v39, v27, v38);
  result = sub_3398(&qword_3E1A8, &qword_2D1F0);
  v32 = (v30 + *(result + 36));
  *v32 = v29;
  v32[1] = v28;
  return result;
}