uint64_t sub_100001608(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_1000032BC(&qword_10000C608, &qword_1000048B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_100004108();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(a1);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    aBlock = v15;
    swift_unknownObjectRetain();
    sub_1000032BC(&qword_10000C678, &qword_1000048C8);
    v18 = swift_dynamicCast();
    (*(v14 + 56))(v12, v18 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v17, v12, v13);
      v19 = [objc_opt_self() defaultManager];
      sub_1000040F8(v20);
      v22 = v21;
      v23 = swift_allocObject();
      v23[2] = a3;
      v23[3] = a4;
      v23[4] = a5;
      v33 = sub_100003F50;
      v34 = v23;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_100001B98;
      v32 = &unk_1000085E0;
      v24 = _Block_copy(&aBlock);
      v25 = a3;
      v26 = a4;

      [v19 fetchItemForURL:v22 completionHandler:v24];
      _Block_release(v24);

      return (*(v14 + 8))(v17, v13);
    }
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_100003EA8(v12, &qword_10000C608, &qword_1000048B0);
  aBlock = 0;
  v30 = 0xE000000000000000;
  sub_1000042A8(52);
  v36._object = 0x8000000100004BC0;
  v36._countAndFlagsBits = 0xD000000000000031;
  sub_1000041C8(v36);
  v35 = a2;
  swift_errorRetain();
  sub_1000032BC(&qword_10000C610, &unk_1000048B8);
  v37._countAndFlagsBits = sub_1000041B8();
  sub_1000041C8(v37);

  v38._countAndFlagsBits = 46;
  v38._object = 0xE100000000000000;
  sub_1000041C8(v38);
  result = sub_100004318();
  __break(1u);
  return result;
}

void sub_1000019CC(void *a1, uint64_t a2, NSObject *a3, void *a4, uint64_t a5)
{
  if (a1)
  {
    v8 = a1;
    [a4 lock];
    swift_beginAccess();
    v9 = v8;
    sub_1000041D8();
    if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100004208();
    }

    sub_100004218();
    swift_endAccess();
    [a4 unlock];
  }

  else
  {
    sub_100004228();
    sub_1000032BC(&qword_10000C5D0, &qword_1000048A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000047E0;
    swift_errorRetain();
    sub_1000032BC(&qword_10000C610, &unk_1000048B8);
    v11 = sub_1000041B8();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003F5C();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    sub_100004058(0, &qword_10000C5D8, OS_os_log_ptr);
    v9 = sub_100004278();
    sub_100004158();
  }

  dispatch_group_leave(a3);
}

void sub_100001B98(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100001C24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100001CA4(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  a1(v4, 0);
}

uint64_t sub_100001D10(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100001DD0()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for AddTagsRootViewController();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  sub_1000032BC(&qword_10000C5C0, &qword_100004898);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000047F0;
  v3 = *&v0[OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController];
  *(v2 + 32) = v3;
  sub_100004058(0, &qword_10000C5C8, UIViewController_ptr);
  v4 = v3;
  isa = sub_1000041E8().super.isa;

  [v0 setViewControllers:isa animated:0];

  v6 = [v0 extensionContext];
  if (v6 && (v7 = v6, v8 = [v6 inputItems], v7, v9 = sub_1000041F8(), v8, v10 = sub_100002080(v9), , v10))
  {
    sub_1000032BC(&qword_10000C5D0, &qword_1000048A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000047E0;
    if (v10 >> 62)
    {
      v12 = sub_100004328();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 56) = &type metadata for Int;
    *(v11 + 64) = &protocol witness table for Int;
    *(v11 + 32) = v12;
    sub_100004058(0, &qword_10000C5D8, OS_os_log_ptr);
    v13 = sub_100004278();
    sub_100004238();
    sub_100004148("Obtaining File Provider items from %ld input items(s)…", v17);

    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    v15 = v1;
    sub_100003478(v10, sub_10000333C, v14);
  }

  else
  {
    result = sub_100004318();
    __break(1u);
  }

  return result;
}

void *sub_100002080(uint64_t a1)
{
  v6 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_1000042E8();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100003FFC(i, v5);
    sub_100004058(0, &unk_10000C6A0, NSExtensionItem_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1000042C8();
    sub_1000042F8();
    sub_100004308();
    sub_1000042D8();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_10000218C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100004168();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004188();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100004058(0, &qword_10000C5E8, OS_dispatch_queue_ptr);

    v14 = sub_100004258();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a3;
    v24 = sub_100003FF4;
    v25 = v15;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_100001D10;
    v23 = &unk_100008630;
    v16 = _Block_copy(&aBlock);
    v17 = a3;

    sub_100004178();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100003D94();
    sub_1000032BC(&qword_10000C5F8, &qword_1000048A8);
    sub_100003DEC();
    sub_100004298();
    sub_100004268();
    _Block_release(v16);

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    aBlock = 0;
    v21 = 0xE000000000000000;
    sub_1000042A8(74);
    v27._object = 0x8000000100004C50;
    v27._countAndFlagsBits = 0xD000000000000048;
    sub_1000041C8(v27);
    v26 = a2;
    swift_errorRetain();
    sub_1000032BC(&qword_10000C610, &unk_1000048B8);
    v28._countAndFlagsBits = sub_1000041B8();
    sub_1000041C8(v28);

    result = sub_100004318();
    __break(1u);
  }

  return result;
}

void sub_1000024E8(unint64_t a1, uint64_t a2)
{
  sub_1000032BC(&qword_10000C5D0, &qword_1000048A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000047E0;
  if (a1 >> 62)
  {
    v5 = sub_100004328();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = v5;
  sub_100004058(0, &qword_10000C5D8, OS_os_log_ptr);
  v6 = sub_100004278();
  sub_100004238();
  sub_100004148("Obtained %ld File Provider item(s)", v10);

  if (v5 < 1)
  {
    sub_100004228();
    v8 = sub_100004278();
    sub_100004158();

    v9 = *(a2 + OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController);

    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v7 = *(a2 + OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController);
    sub_100004058(0, &qword_10000C698, FPItem_ptr);
    isa = sub_1000041E8().super.isa;
    [v7 setItems:isa];
  }
}

id sub_10000287C(id a1, id a2)
{
  v5 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_actionExtensionController;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for AddTagsActionExtensionController()) init];
  v6 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController;
  type metadata accessor for AddTagsActionViewController();
  *&v2[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a1)
  {
    a1 = swift_getObjCClassFromMetadata();
  }

  if (a2)
  {
    a2 = swift_getObjCClassFromMetadata();
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for AddTagsRootViewController();
  return objc_msgSendSuper2(&v8, "initWithNavigationBarClass:toolbarClass:", a1, a2);
}

id sub_100002A50(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_actionExtensionController;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for AddTagsActionExtensionController()) init];
  v7 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController;
  type metadata accessor for AddTagsActionViewController();
  *&v3[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v8 = sub_100004198();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for AddTagsRootViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_100002B84(void *a1)
{
  v3 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_actionExtensionController;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for AddTagsActionExtensionController()) init];
  v4 = OBJC_IVAR____TtC22AddTagsActionExtension25AddTagsRootViewController_addTagsViewController;
  type metadata accessor for AddTagsActionViewController();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AddTagsRootViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_100002D1C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for AddTagsActionViewController();
  objc_msgSendSuper2(&v10, "viewWillAppear:", v3 & 1);
  v4 = [v2 parentViewController];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 view];
      if (v7)
      {
        v8 = v7;
        v9 = [objc_opt_self() systemBackgroundColor];
        [v8 setBackgroundColor:v9];

        return;
      }

      __break(1u);
    }
  }

  sub_100004318();
  __break(1u);
}

void sub_100002EAC(char a1, void *a2, uint64_t a3)
{
  v7 = [v3 extensionContext];
  if (v7)
  {
    v8 = v7;
    [v7 completeRequestReturningItems:0 completionHandler:0];

    if (a2)
    {
      v10[4] = a2;
      v10[5] = a3;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_100001D10;
      v10[3] = &unk_1000084A0;
      a2 = _Block_copy(v10);
    }

    v9 = type metadata accessor for AddTagsActionViewController();
    v11.receiver = v3;
    v11.super_class = v9;
    objc_msgSendSuper2(&v11, "dismissViewControllerAnimated:completion:", a1 & 1, a2);
    _Block_release(a2);
  }

  else
  {
    __break(1u);
  }
}

id sub_1000031F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000324C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000325C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000032A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000032BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003304()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100003344(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000032BC(&qword_10000C688, &qword_1000048D0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_1000032BC(&qword_10000C690, qword_1000048D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100003478(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v54 = a2;
  v61 = sub_100004168();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100004188();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004138();
  v75 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = swift_allocObject();
  *(v69 + 16) = &_swiftEmptyArrayStorage;
  v68 = dispatch_group_create();
  v67 = [objc_allocWithZone(NSLock) init];
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v70 = v6;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_22:
    v64 = &_swiftEmptyArrayStorage;
    goto LABEL_23;
  }

LABEL_21:
  v9 = sub_100004328();
  v70 = v6;
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_3:
  v10 = 0;
  v64 = &_swiftEmptyArrayStorage;
  do
  {
    v11 = v10;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = sub_1000042B8();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v14 = [v12 attachments];
      if (v14)
      {
        break;
      }

      ++v11;
      if (v10 == v9)
      {
        goto LABEL_23;
      }
    }

    v15 = v14;
    sub_100004058(0, &qword_10000C5E0, NSItemProvider_ptr);
    v16 = sub_1000041F8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_100003344(0, v64[2] + 1, 1, v64);
    }

    v6 = v64[2];
    v17 = v64[3];
    if (v6 >= v17 >> 1)
    {
      v64 = sub_100003344((v17 > 1), v6 + 1, 1, v64);
    }

    v18 = v64;
    v64[2] = v6 + 1;
    v18[v6 + 4] = v16;
  }

  while (v10 != v9);
LABEL_23:
  v19 = (v75 + 8);
  v65 = 0;
  v66 = &v79;
  v63 = v64 + 4;
  v20 = &AddTagsActionExtensionController;
  v21 = v70;
  while (1)
  {
LABEL_41:
    v43 = v64[2];
    if (v65 == v43)
    {

      sub_100004058(0, &qword_10000C5E8, OS_dispatch_queue_ptr);
      v46 = sub_100004258();
      v47 = swift_allocObject();
      v48 = v55;
      v47[2] = v54;
      v47[3] = v48;
      v47[4] = v69;
      v81 = sub_100003D88;
      v82 = v47;
      aBlock = _NSConcreteStackBlock;
      v78 = 1107296256;
      v79 = sub_100001D10;
      v80 = &unk_100008540;
      v49 = _Block_copy(&aBlock);

      v50 = v56;
      sub_100004178();
      v76 = &_swiftEmptyArrayStorage;
      sub_100003D94();
      sub_1000032BC(&qword_10000C5F8, &qword_1000048A8);
      sub_100003DEC();
      v51 = v58;
      v52 = v61;
      sub_100004298();
      v53 = v68;
      sub_100004248();
      _Block_release(v49);

      (*(v60 + 8))(v51, v52);
      (*(v57 + 8))(v50, v59);

      return;
    }

    if (v65 >= v43)
    {
      break;
    }

    v44 = v65 + 1;
    v45 = v63[v65];

    v40 = v45;
    v65 = v44;
    if (v45)
    {
      v22 = 0;
      v23 = v40 & 0xFFFFFFFFFFFFFF8;
      if (v40 >= 0)
      {
        v24 = v40 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v24 = v40;
      }

      v62 = v24;
      v74 = v40 & 0xC000000000000001;
      v75 = v40 >> 62;
      v71 = v40;
      for (i = v40 & 0xFFFFFFFFFFFFFF8; ; v23 = i)
      {
        if (v75)
        {
          if (v22 == sub_100004328())
          {
            goto LABEL_41;
          }
        }

        else if (v22 == *(v23 + 16))
        {
          goto LABEL_41;
        }

        if (v74)
        {
          v27 = sub_1000042B8();
        }

        else
        {
          if (v22 >= *(v23 + 16))
          {
            goto LABEL_47;
          }

          v27 = *(v40 + 8 * v22 + 32);
        }

        v28 = v27;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        sub_100004128();
        sub_100004118();
        v29 = *v19;
        (*v19)(v8, v21);
        v30 = sub_100004198();

        v31 = [v28 v20[9].name];

        if (v31)
        {
          v32 = v68;
          dispatch_group_enter(v68);
          sub_100004128();
          sub_100004118();
          v29(v8, v21);
          v72 = sub_100004198();

          v33 = swift_allocObject();
          v34 = v20;
          v35 = v8;
          v36 = v19;
          v37 = v67;
          v33[2] = v32;
          v33[3] = v37;
          v33[4] = v69;
          v81 = sub_100003E9C;
          v82 = v33;
          aBlock = _NSConcreteStackBlock;
          v78 = 1107296256;
          v79 = sub_100001C24;
          v80 = &unk_100008590;
          v38 = _Block_copy(&aBlock);
          v39 = v32;
          v40 = v71;
          v41 = v37;
          v19 = v36;
          v8 = v35;
          v20 = v34;
          v21 = v70;

          v42 = v72;
          [v28 loadItemForTypeIdentifier:v72 options:0 completionHandler:v38];

          _Block_release(v38);
          v28 = v42;
        }

        else
        {
          sub_100004058(0, &qword_10000C5D8, OS_os_log_ptr);
          v25 = sub_100004278();
          v26 = sub_100004238();
          sub_100004148("Skipping item provider, since not providing any URL", 51, 2, &_mh_execute_header, v25, v26, &_swiftEmptyArrayStorage);
        }

        ++v22;
      }

      __break(1u);
LABEL_47:
      __break(1u);
      break;
    }
  }

  __break(1u);
}

uint64_t sub_100003D10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003D48()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100003D94()
{
  result = qword_10000C5F0;
  if (!qword_10000C5F0)
  {
    sub_100004168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5F0);
  }

  return result;
}

unint64_t sub_100003DEC()
{
  result = qword_10000C600;
  if (!qword_10000C600)
  {
    sub_100003E50(&qword_10000C5F8, &qword_1000048A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C600);
  }

  return result;
}

uint64_t sub_100003E50(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003EA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000032BC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003F08()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100003F5C()
{
  result = qword_10000C680;
  if (!qword_10000C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C680);
  }

  return result;
}

uint64_t sub_100003FB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003FFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004058(uint64_t a1, unint64_t *a2, void *a3)
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