id sub_100001308(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1000033CC();

  v4 = [v2 initWithTitle:v3];

  return v4;
}

void sub_1000013D8()
{
  v1 = type metadata accessor for SketchViewController();
  v42.receiver = v0;
  v42.super_class = v1;
  objc_msgSendSuper2(&v42, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR___SketchViewController__navigationItem];
    sub_100002A28(v0);
    if (v5)
    {
      v6 = sub_1000033CC();
    }

    else
    {
      v6 = 0;
    }

    [v4 setTitle:v6];

    *(&v41 + 1) = v1;
    *&v40 = v0;
    v7 = objc_allocWithZone(UIBarButtonItem);
    v8 = v0;
    v10 = sub_100002768(1, &v40, "cancel:", v9);
    v11 = *&v8[OBJC_IVAR___SketchViewController_cancelButton];
    *&v8[OBJC_IVAR___SketchViewController_cancelButton] = v10;
    v12 = v10;

    *(&v41 + 1) = v1;
    *&v40 = v8;
    v13 = objc_allocWithZone(UIBarButtonItem);
    v14 = v8;
    v16 = sub_100002768(0, &v40, "done:", v15);
    v17 = *&v14[OBJC_IVAR___SketchViewController_doneButton];
    *&v14[OBJC_IVAR___SketchViewController_doneButton] = v16;
    v18 = v16;

    v40 = 0u;
    v41 = 0u;
    v19 = objc_allocWithZone(UIBarButtonItem);
    v21 = sub_100002768(6, &v40, 0, v20);
    [v21 setWidth:40.0];
    sub_1000029E0(&qword_10000CA30, &unk_100003AC0);
    sub_100002BE8();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100003A50;
    *(v22 + 32) = v12;
    v39 = v12;
    sub_100002A8C(v22, v4, &selRef_setLeftBarButtonItems_);
    sub_100002BE8();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100003A50;
    *(v23 + 32) = v18;
    v24 = v18;
    sub_100002A8C(v23, v4, &selRef_setRightBarButtonItems_);
    v25 = *&v14[OBJC_IVAR___SketchViewController_canvas];
    [v25 setDelegate:v14];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v25];
    v26 = objc_opt_self();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100003A60;
    v28 = [v25 leftAnchor];
    v29 = [v3 leftAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];

    *(v27 + 32) = v30;
    v31 = [v25 topAnchor];
    v32 = sub_100002BF4([v3 topAnchor]);

    *(v27 + 40) = v32;
    v33 = [v3 rightAnchor];
    v34 = sub_100002BF4([v25 rightAnchor]);

    *(v27 + 48) = v34;
    v35 = [v3 bottomAnchor];
    v36 = [v25 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    *(v27 + 56) = v37;
    sub_100002B18(0, &qword_10000CA38, NSLayoutConstraint_ptr);
    isa = sub_1000033FC().super.isa;

    [v26 activateConstraints:isa];

    [v3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000018A0(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SketchViewController();
  objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
  v3 = OBJC_IVAR___SketchViewController_picker;
  if (!*&v1[OBJC_IVAR___SketchViewController_picker])
  {
    v4 = [objc_allocWithZone(PKToolPicker) init];
    v5 = *&v1[OBJC_IVAR___SketchViewController_canvas];
    [v4 addObserver:v5];
    [v4 setVisible:1 forFirstResponder:v5];
    v6 = *&v1[v3];
    *&v1[v3] = v4;
    v7 = v4;

    [v5 becomeFirstResponder];
  }
}

void sub_1000019D0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong completeRequest:1];
  }
}

void sub_100001A4C()
{
  v1 = sub_1000033BC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong request];
    if (v8)
    {
      v9 = v8;
      v10 = *(v0 + OBJC_IVAR___SketchViewController_canvas);
      v11 = sub_100002544(v10);
      sub_1000033AC();

      v31.origin.x = sub_10000258C(v10);
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
      if (CGRectIsEmpty(v31))
      {
        [v9 cancel];
      }

      else
      {
        v18 = sub_1000025F8(v10);
        v19 = sub_10000335C();
        v21 = v20;

        v28 = [objc_allocWithZone(PKImageRenderer) initWithSize:width scale:{height, 1.0}];
        isa = sub_10000339C().super.isa;
        sub_100002BE8();
        v23 = swift_allocObject();
        v23[2] = v19;
        v23[3] = v21;
        v23[4] = v9;
        aBlock[4] = sub_1000026EC;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000202C;
        aBlock[3] = &unk_100008338;
        v24 = _Block_copy(aBlock);
        sub_100002710(v19, v21);
        v25 = v9;

        v26 = v28;
        [v28 renderDrawing:isa clippedToStrokeSpaceRect:v24 scale:x completion:{y, width, height, 1.0}];
        _Block_release(v24);

        sub_100002694(v19, v21);
      }

      (*(v2 + 8))(v5, v1);
      return;
    }
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v28 = v16;
    [v16 completeRequest:0];
    v17 = v28;
  }
}

void sub_100001D74(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = sub_10000338C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &_swiftEmptyArrayStorage;
  if (a1)
  {
    v13 = a1;
    v14 = UIImagePNGRepresentation(v13);
    if (v14)
    {
      v15 = v14;
      v28 = a4;
      v16 = sub_10000335C();
      v18 = v17;

      sub_100002710(v16, v18);
      sub_10000337C();
      v19 = sub_10000336C();
      v21 = v20;
      (*(v9 + 8))(v12, v8);
      v22 = objc_allocWithZone(SidecarItem);
      sub_1000028C0(v16, v18, v19, v21);
      sub_1000033EC();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10000340C();
      }

      sub_10000341C();

      sub_100002694(v16, v18);
      a4 = v28;
    }

    else
    {
    }
  }

  v23 = sub_1000033DC();
  v25 = v24;
  objc_allocWithZone(SidecarItem);
  sub_100002710(a2, a3);
  v26 = sub_1000028C0(a2, a3, v23, v25);
  sub_1000033EC();
  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10000340C();
  }

  sub_10000341C();
  sub_100002B18(0, &qword_10000CA18, SidecarItem_ptr);
  isa = sub_1000033FC().super.isa;

  [a4 sendItems:isa];
}

void sub_10000202C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1000020B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_10000342C();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_100002978(v9);
}

id sub_10000212C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR___SketchViewController__undoManager;
  *&v4[v7] = [objc_allocWithZone(NSUndoManager) init];
  v8 = OBJC_IVAR___SketchViewController__navigationItem;
  sub_100002B18(0, &qword_10000CA20, UINavigationItem_ptr);
  *&v4[v8] = sub_100001308(0, 0xE000000000000000);
  *&v4[OBJC_IVAR___SketchViewController_cancelButton] = 0;
  *&v4[OBJC_IVAR___SketchViewController_doneButton] = 0;
  *&v4[OBJC_IVAR___SketchViewController_fixedSpace] = 0;
  v9 = OBJC_IVAR___SketchViewController_canvas;
  *&v4[v9] = [objc_allocWithZone(PKCanvasView) init];
  *&v4[OBJC_IVAR___SketchViewController_picker] = 0;
  if (a2)
  {
    v10 = sub_1000033CC();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for SketchViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_1000022E8(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___SketchViewController__undoManager;
  *&v2[v4] = [objc_allocWithZone(NSUndoManager) init];
  v5 = OBJC_IVAR___SketchViewController__navigationItem;
  sub_100002B18(0, &qword_10000CA20, UINavigationItem_ptr);
  *&v2[v5] = sub_100001308(0, 0xE000000000000000);
  *&v2[OBJC_IVAR___SketchViewController_cancelButton] = 0;
  *&v2[OBJC_IVAR___SketchViewController_doneButton] = 0;
  *&v2[OBJC_IVAR___SketchViewController_fixedSpace] = 0;
  v6 = OBJC_IVAR___SketchViewController_canvas;
  *&v2[v6] = [objc_allocWithZone(PKCanvasView) init];
  *&v2[OBJC_IVAR___SketchViewController_picker] = 0;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for SketchViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100002440(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SketchViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100002544(void *a1)
{
  v1 = a1;
  v2 = [v1 drawing];

  return v2;
}

double sub_10000258C(void *a1)
{
  v1 = a1;
  v2 = [v1 drawing];
  [v2 bounds];
  v4 = v3;

  return v4;
}

id sub_1000025F8(void *a1)
{
  v1 = a1;
  v2 = [v1 drawing];
  v3 = [v2 dataRepresentation];

  return v3;
}

uint64_t sub_100002658()
{
  sub_100002694(*(v0 + 16), *(v0 + 24));

  sub_100002BE8();

  return _swift_deallocObject(v1);
}

double sub_100002694(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1000026F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002710(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

id sub_100002768(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2[3];
  if (v7)
  {
    v9 = sub_100002B58(a2, a2[3]);
    v10 = *(v7 - 8);
    __chkstk_darwin(v9, v9);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_10000343C();
    (*(v10 + 8))(v12, v7);
    a4 = sub_100002B9C(a2);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v4 initWithBarButtonSystemItem:a1 target:v13 action:{a3, a4}];
  swift_unknownObjectRelease();
  return v14;
}

id sub_1000028C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_10000334C().super.isa;
    sub_100002964(a1, a2);
  }

  v8 = sub_1000033CC();

  v9 = [v4 initWithData:isa type:v8];

  return v9;
}

double sub_100002964(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100002694(a1, a2);
  }

  return result;
}

uint64_t sub_100002978(uint64_t a1)
{
  v2 = sub_1000029E0(&qword_10000CA28, &qword_100003AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000029E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002A28(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000033DC();

  return v3;
}

void sub_100002A8C(uint64_t a1, void *a2, SEL *a3)
{
  sub_100002B18(0, &unk_10000CA40, UIBarButtonItem_ptr);
  isa = sub_1000033FC().super.isa;

  [a2 *a3];
}

uint64_t sub_100002B18(uint64_t a1, unint64_t *a2, void *a3)
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

void *sub_100002B58(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_100002B9C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

id sub_100002BF4(uint64_t a1)
{
  v4 = *(v2 + 1216);

  return [v1 v4];
}

void sub_100002C1C()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for SketchRootController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    v4 = *&v0[OBJC_IVAR___SketchRootController__navigationController];
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v0 addChildViewController:v4];
      [v2 addSubview:v6];
      v7 = objc_opt_self();
      sub_1000029E0(&qword_10000CA30, &unk_100003AC0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100003A60;
      v9 = [v6 leftAnchor];
      v10 = [v2 leftAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];

      *(v8 + 32) = v11;
      v12 = [v6 rightAnchor];
      v13 = sub_10000330C([v2 rightAnchor]);

      *(v8 + 40) = v13;
      v14 = [v6 topAnchor];
      v15 = sub_10000330C([v2 topAnchor]);

      *(v8 + 48) = v15;
      v16 = [v6 bottomAnchor];
      v17 = sub_10000330C([v2 bottomAnchor]);

      *(v8 + 56) = v17;
      sub_1000032C8();
      isa = sub_1000033FC().super.isa;

      [v7 activateConstraints:isa];

      v19 = *&v0[OBJC_IVAR___SketchRootController_sketchController];
      swift_unknownObjectWeakAssign();
      [v4 pushViewController:v19 animated:0];
      [v4 didMoveToParentViewController:v0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100002FA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___SketchRootController__navigationController;
  v8 = objc_allocWithZone(UINavigationController);
  *&v3[v7] = sub_10000332C();
  v9 = OBJC_IVAR___SketchRootController_sketchController;
  type metadata accessor for SketchViewController();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v10 = sub_1000033CC();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for SketchRootController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_1000030DC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SketchRootController__navigationController;
  v5 = objc_allocWithZone(UINavigationController);
  *&v1[v4] = sub_10000332C();
  v6 = OBJC_IVAR___SketchRootController_sketchController;
  type metadata accessor for SketchViewController();
  *&v2[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9.receiver = v2;
  v9.super_class = type metadata accessor for SketchRootController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1000031B4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SketchRootController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100003258(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1000033CC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithNibName:v5 bundle:a3];

  return v6;
}

unint64_t sub_1000032C8()
{
  result = qword_10000CA38;
  if (!qword_10000CA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000CA38);
  }

  return result;
}

id sub_10000330C(uint64_t a1)
{
  v4 = *(v2 + 1216);

  return [v1 v4];
}

id sub_10000332C()
{

  return sub_100003258(0, 0, 0);
}