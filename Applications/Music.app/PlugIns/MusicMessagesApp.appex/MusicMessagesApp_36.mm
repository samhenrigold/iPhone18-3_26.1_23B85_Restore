void ImagePicker.Coordinator.imagePlaygroundViewController(_:didCreateImageAt:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSData);
  sub_1004D7FDC(v8);
  v10 = v9;
  v11 = [v7 initWithContentsOfURL:v9];

  if (v11)
  {
    v33 = v11;
    v12 = sub_1004D810C();
    v14 = v13;

    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    type metadata accessor for ImageEditingViewController();
    v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    isa = sub_1004D80FC().super.isa;
    v20 = [v18 _initWithSourceImageData:isa cropRect:{CGRectNull.origin.x, y, width, height}];

    if (v20)
    {
      [v20 setDelegate:v2];
      [v20 setModalInPresentation:1];
      if (*(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v4 + 36)))
      {

        UIImagePickerController.setProperties(_:)(v21);
      }

      sub_100010598(v12, v14);
      [a1 presentViewController:v20 animated:1 completion:0];
    }

    else
    {
      sub_100010598(v12, v14);
    }

    v28 = v33;
  }

  else
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1004DEAAC(52);
    v39._object = 0x80000001004F73B0;
    v39._countAndFlagsBits = 0xD000000000000031;
    sub_1004DD5FC(v39);
    sub_1004D809C();
    sub_100396D84(&qword_1006432D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v40._countAndFlagsBits = sub_1004DEFFC();
    sub_1004DD5FC(v40);

    v41._countAndFlagsBits = 46;
    v41._object = 0xE100000000000000;
    sub_1004DD5FC(v41);
    v22 = v36;
    v23 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v23)
    {
      v24 = v35;
      v25 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8);
      sub_100396B58();
      v26 = swift_allocError();
      *v27 = v24;
      v27[1] = v22;

      v23(v26, 1);
      sub_10000DE74(v23, v25);
    }

    else
    {
    }

    sub_100387CEC(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v6);
    v29 = &v6[*(v4 + 32)];
    v30 = *v29;
    v31 = *(v29 + 1);
    LOBYTE(v29) = v29[16];
    v35 = v30;
    v36 = v31;
    v37 = v29;
    v34 = 0;
    sub_100004CB8(&qword_100643290, &qword_10052B360);
    sub_1004DBB6C();
    [a1 dismissViewControllerAnimated:1 completion:0];
    sub_100396BAC(v6);
  }
}

uint64_t _s11MusicCoreUI11ImagePickerV11CoordinatorC08documentE12WasCancelledyySo010UIDocumentE14ViewControllerCF_0(void *a1)
{
  v3 = type metadata accessor for ImagePicker(0) - 8;
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100387CEC(v1 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v5);
  v6 = &v5[*(v3 + 40)];
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v6) = v6[16];
  v11 = v7;
  v12 = v8;
  v13 = v6;
  v10[7] = 0;
  sub_100004CB8(&qword_100643290, &qword_10052B360);
  sub_1004DBB6C();
  [a1 dismissViewControllerAnimated:1 completion:0];
  return sub_100396BAC(v5);
}

void sub_1003948F0(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ImagePicker(0) - 8;
  __chkstk_darwin();
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100387CEC(a1 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
  v8 = &v7[*(v5 + 40)];
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v8) = v8[16];
  v14 = v9;
  v15 = v10;
  v16 = v8;
  v13[7] = 0;
  v11 = a3;
  v12 = a1;
  sub_100004CB8(&qword_100643290, &qword_10052B360);
  sub_1004DBB6C();
  [v11 dismissViewControllerAnimated:1 completion:0];
  sub_100396BAC(v7);
}

Swift::Void __swiftcall ImagePicker.Coordinator.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  type metadata accessor for ImagePicker(0);
  sub_100004CB8(&qword_100643290, &qword_10052B360);
  sub_1004DBB6C();
}

id sub_100394AE8()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController;
  v2 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController);
  }

  else
  {
    v4 = sub_100394B48();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100394B48()
{
  sub_1004D83FC();
  __chkstk_darwin();
  v0 = sub_1004DD3EC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v18 - v4;
  sub_1004DD37C();
  v6 = *(v1 + 16);
  v6(v3, v5, v0);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v7 = qword_1006734A0;
  v8 = qword_1006734A0;
  sub_1004D838C();
  v9 = v8;
  v18[2] = v7;
  v18[0] = sub_1004DD4AC();
  v10 = *(v1 + 8);
  v10(v5, v0);
  sub_1004DD37C();
  v6(v3, v5, v0);
  sub_1004D838C();
  sub_1004DD4AC();
  v18[1] = v1 + 16;
  v10(v5, v0);
  v11 = sub_1004DD3FC();
  v18[0] = v6;
  v12 = v11;

  v13 = sub_1004DD3FC();

  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  sub_1004DD37C();
  (v18[0])(v3, v5, v0);
  sub_1004D838C();
  sub_1004DD4AC();
  v10(v5, v0);
  v15 = sub_1004DD3FC();

  v16 = [objc_opt_self() actionWithTitle:v15 style:1 handler:0];

  [v14 addAction:v16];
  return v14;
}

id sub_100394F8C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *ImagePicker.makeCoordinator()()
{
  v1 = *(type metadata accessor for ImagePicker(0) - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  sub_100387CEC(v0, &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for ImagePicker.Coordinator(0);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v4[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController] = 0;
  sub_100387CEC(&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), &v4[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker]);
  v14.receiver = v4;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, "init");
  sub_100396BAC(&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100387CEC(v0, &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v9 = swift_allocObject();
  sub_100396F7C(&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = &v7[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  v11 = *&v7[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  v12 = *&v7[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8];
  *v10 = sub_100396FE0;
  v10[1] = v9;
  sub_10000DE74(v11, v12);
  return v7;
}

uint64_t sub_1003951CC(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1004D966C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = Logger.playlistCovers.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v10, v6);
    swift_errorRetain();
    v11 = sub_1004D964C();
    v12 = sub_1004DDF7C();
    sub_10001066C(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v28 = v14;
      *v13 = 136446210;
      v30 = a1;
      swift_errorRetain();
      sub_100004CB8(&qword_100643610, &qword_10052F9E0);
      v15 = sub_1004DD4DC();
      v17 = sub_1002E5CC4(v15, v16, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "ImagePicker failed with error: %{public}s", v13, 0xCu);
      sub_100008D24(v14);
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v19 = type metadata accessor for ImagePicker(0);
    v20 = (a3 + v19[5]);
    v21 = *v20;
    v22 = *(v20 + 2);
    v28 = v21;
    v29 = v22;
    v30 = a1;
    v23 = a1;
    sub_100004CB8(&qword_100643618, &unk_1005308E0);
    result = sub_1004DBB6C();
    v24 = *(a3 + v19[7]);
    if (v24)
    {
      v25 = (a3 + v19[6]);
      v26 = *v25;
      v27 = v25[1];
      LOBYTE(v25) = *(v25 + 16);
      *&v28 = v26;
      *(&v28 + 1) = v27;
      LOBYTE(v29) = v25;
      sub_100004CB8(&qword_1006432B8, &qword_100530618);
      sub_1004DBB5C();
      return v24(v30);
    }
  }

  return result;
}

char *sub_10039547C@<X0>(char **a1@<X8>)
{
  result = ImagePicker.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t sub_1003954A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100396D84(&qword_100643600, type metadata accessor for ImagePicker, &protocol conformance descriptor for ImagePicker);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100395538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100396D84(&qword_100643600, type metadata accessor for ImagePicker, &protocol conformance descriptor for ImagePicker);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003955CC(uint64_t a1)
{
  sub_100396D84(&qword_100643600, type metadata accessor for ImagePicker, &protocol conformance descriptor for ImagePicker);
  sub_1004DADFC();
  __break(1u);
}

id ImageEditingViewController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ImageEditingViewController();
  return objc_msgSendSuper2(&v6, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, v3);
}

id ImageEditingViewController.init(rootViewController:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ImageEditingViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithRootViewController:", a1);

  return v4;
}

id ImageEditingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1004DD3FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ImageEditingViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id ImageEditingViewController.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ImageEditingViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1003959AC()
{
  v0 = sub_1002F17D8(&off_1005EB9A0);
  sub_100004CB8(&qword_100643660, &qword_100530928);
  result = swift_arrayDestroy();
  static UIImagePickerController.profileImagePickerProperties = v0;
  return result;
}

uint64_t sub_100395A50()
{

  return swift_deallocObject();
}

void sub_100395A90()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild);
  *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild) = v1;
  v4 = v1;

  *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress) = 0;
}

double static UIImagePickerController.profileImagePickerProperties.getter()
{
  if (qword_10063DA40 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_100395B34(uint64_t a1)
{
  sub_1004DF26C();
  PlaylistCovers.Cover.Representation.hash(into:)(v4);
  v2 = sub_1004DF2BC();

  return sub_100395C60(a1, v2);
}

unint64_t sub_100395BA0(uint64_t a1)
{
  v1 = a1;
  sub_1004DF26C();
  sub_1004DD55C();

  v2 = sub_1004DF2BC();

  return sub_100395D44(v1, v2);
}

unint64_t sub_100395C60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(v2 + 48) + 56 * v4;
      v8 = *(v6 + 16);
      v7 = *(v6 + 32);
      v9 = *v6;
      v14 = *(v6 + 48);
      v13[1] = v8;
      v13[2] = v7;
      v13[0] = v9;
      sub_100245220(v13, v12);
      v10 = static PlaylistCovers.Cover.Representation.== infix(_:_:)();
      sub_10024527C(v13);
      if (v10)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100395D44(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = *(*(v2 + 48) + v4);
      v6 = v5 == 1 ? 0xD000000000000014 : 0xD000000000000015;
      v7 = v5 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000015;
      v9 = *(*(v2 + 48) + v4) ? v7 : "ntroller1XCroppedImage";
      if (a1)
      {
        v10 = a1 == 1 ? 0xD000000000000014 : 0xD000000000000015;
        v11 = a1 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      }

      else
      {
        v10 = 0xD000000000000015;
        v11 = "ntroller1XCroppedImage";
      }

      if (v8 == v10 && (v9 | 0x8000000000000000) == (v11 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_1004DF08C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_100395EC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004CB8(&qword_10063E988, &qword_100529C30);
  v34 = v4;
  v6 = sub_1004DED9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {

        sub_100010530(v35, *(&v35 + 1));
      }

      sub_1004DF26C();
      sub_1004DD55C();
      v25 = sub_1004DF2BC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10039617C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004CB8(&qword_100643630, &qword_100530908);
  v6 = sub_1004DED9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_100006F5C((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_100010678(v23, &v37);
        sub_10000904C(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_1004DEA2C(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_100006F5C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100396434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004CB8(&qword_100643608, &unk_1005308D0);
  v62 = v4;
  v6 = sub_1004DED9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v60 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(v5 + 48) + 56 * v26;
      if (v62)
      {
        v28 = *(v27 + 8);
        v29 = *(v27 + 24);
        v30 = *(v27 + 40);
        v31 = *v27;
        v32 = *(v5 + 56) + 136 * v26;
        v33 = *(v32 + 80);
        v79 = *(v32 + 64);
        v80 = v33;
        v34 = *(v32 + 112);
        v81 = *(v32 + 96);
        v82 = v34;
        v35 = *(v32 + 16);
        v75 = *v32;
        v76 = v35;
        v36 = *(v32 + 48);
        v77 = *(v32 + 32);
        v78 = v36;
        v37 = *(v32 + 128);
      }

      else
      {
        v61 = *(v27 + 8);
        v63 = *(v27 + 40);
        v64 = *(v27 + 24);
        v31 = *v27;
        v38 = *(v5 + 56) + 136 * v26;
        v66 = *v38;
        v39 = *(v38 + 64);
        v41 = *(v38 + 16);
        v40 = *(v38 + 32);
        v69 = *(v38 + 48);
        v70 = v39;
        v67 = v41;
        v68 = v40;
        v43 = *(v38 + 96);
        v42 = *(v38 + 112);
        v44 = *(v38 + 80);
        v74 = *(v38 + 128);
        v72 = v43;
        v73 = v42;
        v71 = v44;
        v37 = v74;
        v45 = v61;
        v46 = *(&v61 + 1);
        v47 = v64;
        v48 = *(&v64 + 1);
        v49 = v63;
        v50 = *(&v63 + 1);
        sub_100397618(&v66, v65);
        v30 = v63;
        v29 = v64;
        v28 = v61;
        v79 = v70;
        v80 = v71;
        v81 = v72;
        v82 = v73;
        v75 = v66;
        v76 = v67;
        v77 = v68;
        v78 = v69;
      }

      v83[0] = v31;
      *&v83[8] = v28;
      *&v83[24] = v29;
      *&v83[40] = v30;
      sub_1004DF26C();
      PlaylistCovers.Cover.Representation.hash(into:)(&v66);
      v51 = sub_1004DF2BC();
      v52 = -1 << *(v7 + 32);
      v53 = v51 & ~v52;
      v54 = v53 >> 6;
      if (((-1 << v53) & ~*(v14 + 8 * (v53 >> 6))) == 0)
      {
        v55 = 0;
        v56 = (63 - v52) >> 6;
        while (++v54 != v56 || (v55 & 1) == 0)
        {
          v57 = v54 == v56;
          if (v54 == v56)
          {
            v54 = 0;
          }

          v55 |= v57;
          v58 = *(v14 + 8 * v54);
          if (v58 != -1)
          {
            v15 = __clz(__rbit64(~v58)) + (v54 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v53) & ~*(v14 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      v17 = *&v83[16];
      *v16 = *v83;
      *(v16 + 16) = v17;
      *(v16 + 32) = *&v83[32];
      *(v16 + 48) = *&v83[48];
      v18 = *(v7 + 56) + 136 * v15;
      v19 = v80;
      *(v18 + 64) = v79;
      *(v18 + 80) = v19;
      v20 = v82;
      *(v18 + 96) = v81;
      *(v18 + 112) = v20;
      v21 = v76;
      *v18 = v75;
      *(v18 + 16) = v21;
      v22 = v78;
      *(v18 + 32) = v77;
      *(v18 + 48) = v22;
      *(v18 + 128) = v37;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v62 & 1) == 0)
    {

      v3 = v60;
      goto LABEL_34;
    }

    v59 = 1 << *(v5 + 32);
    v3 = v60;
    if (v59 >= 64)
    {
      bzero((v5 + 64), ((v59 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v59;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100396830()
{
  v1 = v0;
  sub_100004CB8(&qword_10063E988, &qword_100529C30);
  v2 = *v0;
  v3 = sub_1004DED8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        sub_100010530(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1003969B4()
{
  v1 = v0;
  sub_100004CB8(&qword_100643630, &qword_100530908);
  v2 = *v0;
  v3 = sub_1004DED8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100010678(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000904C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_100006F5C(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

unint64_t sub_100396B58()
{
  result = qword_1006432A8;
  if (!qword_1006432A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006432A8);
  }

  return result;
}

uint64_t sub_100396BAC(uint64_t a1)
{
  v2 = type metadata accessor for ImagePicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100396C08(__n128 a1)
{
  v2 = sub_1004DD0DC();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

double sub_100396CD4(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = *(sub_1004DD0DC() - 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100393558(a1, a2, a3, v10, v11, v12, v9);
}

uint64_t sub_100396D84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100396DEC()
{
  v1 = type metadata accessor for ImagePicker(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_100004CB8(&unk_10063DBD0, &qword_100530610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1004D9FEC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 20);

  if (*(v3 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100396F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100396FE0(void *a1, char a2)
{
  v5 = *(type metadata accessor for ImagePicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1003951CC(a1, a2 & 1, v6);
}

unint64_t sub_100397064()
{
  result = qword_1006432E8;
  if (!qword_1006432E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006432E8);
  }

  return result;
}

uint64_t sub_100397114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004CB8(&unk_100641510, &unk_10052E278);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1003971F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004CB8(&unk_100641510, &unk_10052E278);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1003972BC(uint64_t a1)
{
  sub_100397444(319);
  if (v1 <= 0x3F)
  {
    sub_1003974E8(319, &unk_100643370, &qword_10063E4C0, &qword_100529168, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_10039749C(319, &unk_100643380, &type metadata for ImagePicker.SourceType);
      if (v3 <= 0x3F)
      {
        sub_1003974E8(319, &qword_100640BD8, &qword_100643390, &qword_1005307B0, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10039749C(319, &qword_100643398, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            sub_1003974E8(319, &qword_1006433A0, &unk_1006433A8, &qword_1005307B8, &type metadata accessor for Optional);
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

void sub_100397444(uint64_t a1)
{
  if (!qword_100641598)
  {
    sub_1004D9FEC();
    v1 = sub_1004D9DCC();
    if (!v2)
    {
      atomic_store(v1, &qword_100641598);
    }
  }
}

void sub_10039749C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1004DBBCC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003974E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100008DE4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100397554(uint64_t a1)
{
  result = type metadata accessor for ImagePicker(319);
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

void sub_100397674()
{
  v1 = v0;
  sub_100004CB8(&qword_100643608, &unk_1005308D0);
  v2 = *v0;
  v3 = sub_1004DED8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v49 = v1;
    v5 = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v7)
    {
      memmove(v5, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v50 = v2;
    v51 = v4;
    *(v4 + 16) = *(v2 + 16);
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v17 = v14 | (v9 << 6);
      v18 = 56 * v17;
      v19 = *(v2 + 56);
      v20 = *(v2 + 48) + 56 * v17;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v25 = *(v20 + 24);
      v24 = *(v20 + 32);
      v27 = *(v20 + 40);
      v26 = *(v20 + 48);
      v17 *= 136;
      v28 = (v19 + v17);
      v30 = v28[1];
      v29 = v28[2];
      v31 = v28[4];
      v56 = v28[3];
      v57 = v31;
      v33 = v28[6];
      v32 = v28[7];
      v34 = v28[5];
      v61 = *(v28 + 16);
      v59 = v33;
      v60 = v32;
      v58 = v34;
      v53 = *v28;
      v54 = v30;
      v55 = v29;
      v35 = *(v51 + 48) + v18;
      *v35 = v21;
      *(v35 + 8) = v22;
      *(v35 + 16) = v23;
      *(v35 + 24) = v25;
      *(v35 + 32) = v24;
      *(v35 + 40) = v27;
      *(v35 + 48) = v26;
      v36 = *(v51 + 56) + v17;
      *v36 = v53;
      v37 = v54;
      v38 = v55;
      v39 = v57;
      *(v36 + 48) = v56;
      *(v36 + 64) = v39;
      *(v36 + 16) = v37;
      *(v36 + 32) = v38;
      v40 = v58;
      v41 = v59;
      v42 = v60;
      *(v36 + 128) = v61;
      *(v36 + 96) = v41;
      *(v36 + 112) = v42;
      *(v36 + 80) = v40;
      v43 = v22;
      v44 = v23;
      v2 = v50;
      v45 = v25;
      v46 = v24;
      v47 = v27;
      v48 = v26;
      sub_100397618(&v53, v52);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v1 = v49;
        v4 = v51;
        goto LABEL_21;
      }

      v16 = *(v6 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

uint64_t sub_1003978B8(__n128 a1)
{
  v2 = sub_1004DD0DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  swift_unknownObjectRelease();
  v5 = *(v1 + 40);
  if (v5 >> 60 != 15)
  {
    sub_100010598(*(v1 + 32), v5);
  }

  (*(v3 + 8))(v1 + ((v4 + 72) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t sub_1003979AC(uint64_t a1, __n128 a2)
{
  sub_1004DD0DC();
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100035B28;

  return sub_1003937AC(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100397AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_1006435F8, &qword_1005308C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100397B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_1006435F8, &qword_1005308C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double InteractionFeedbackLoadingView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  *a3 = sub_1004DA7CC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v8 = sub_100004CB8(&qword_100643668, &qword_100530930);
  sub_100397CF8(v5, a2, (a3 + *(v8 + 44)));
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v5;
  *(v9 + 32) = a2;
  v10 = (a3 + *(sub_100004CB8(&qword_100643670, &qword_100530938) + 36));
  *v10 = sub_1003983FC;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;

  return result;
}

uint64_t sub_100397CF8@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a2;
  v41 = a3;
  v4 = sub_1004DA78C();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin();
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v34 - v6;
  v7 = sub_1004DACDC();
  v35 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004CB8(&qword_100641B18, &qword_10052E928);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v34 - v12;
  v42 = sub_100004CB8(&qword_100643690, &qword_100530A10);
  v14 = *(v42 - 8);
  __chkstk_darwin();
  v16 = &v34 - v15;
  sub_100004CB8(&qword_100643698, &qword_100530A18);
  __chkstk_darwin();
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v34 - v19;
  v44 = a1;
  v45 = v40;
  sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  sub_1004DB9EC();
  v21 = 1;
  if (v43 == 1)
  {
    sub_1004D9ECC();
    sub_1004DACCC();
    sub_100042B08(&qword_100641B10, &qword_100641B18, &qword_10052E928, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100398980(&qword_1006436A8, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    sub_1004DB39C();
    (*(v35 + 8))(v9, v7);
    (*(v11 + 8))(v13, v10);
    v22 = &v16[*(sub_100004CB8(&qword_1006436B0, &qword_100530A28) + 36)];
    v23 = *(sub_100004CB8(&qword_1006436B8, &qword_100530A30) + 28);
    v24 = enum case for ControlSize.large(_:);
    v25 = sub_1004D9DAC();
    (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
    *v22 = swift_getKeyPath();
    v26 = v37;
    sub_1004DA77C();
    v28 = v38;
    v27 = v39;
    (*(v38 + 16))(v36, v26, v39);
    sub_100398980(&qword_1006436C0, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v29 = sub_1004D9FCC();
    (*(v28 + 8))(v26, v27);
    *&v16[*(v42 + 36)] = v29;
    sub_1003989C8(v16, v20);
    v21 = 0;
  }

  (*(v14 + 56))(v20, v21, 1, v42);
  sub_1003987B8(v20, v18);
  v30 = v41;
  *v41 = 0;
  *(v30 + 8) = 1;
  v31 = sub_100004CB8(&qword_1006436A0, &qword_100530A20);
  sub_1003987B8(v18, v30 + *(v31 + 48));
  v32 = v30 + *(v31 + 64);
  *v32 = 0;
  v32[8] = 1;
  sub_100398828(v20);
  return sub_100398828(v18);
}

uint64_t sub_10039828C(char a1, uint64_t a2, double a3)
{
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = sub_1004DDA8C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;

  static Task<>.delayed(by:priority:task:)(v7, &unk_100530A08, v9, (&type metadata for () + 1), a3);

  return sub_100398750(v7);
}

uint64_t sub_1003983C4()
{

  return swift_deallocObject();
}

uint64_t sub_100398428(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  *(v3 + 41) = a2;
  return _swift_task_switch(sub_10039844C, 0, 0);
}

uint64_t sub_10039844C()
{
  *(v0 + 16) = *(v0 + 41);
  *(v0 + 24) = *(v0 + 32);
  *(v0 + 40) = 1;
  sub_100004CB8(&qword_100640118, &qword_10052F6B0);
  sub_1004DB9FC();
  v1 = *(v0 + 8);

  return v1();
}

double sub_1003984E8@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v2[2];
  *a2 = sub_1004DA7CC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = sub_100004CB8(&qword_100643668, &qword_100530930);
  sub_100397CF8(v5, v6, (a2 + *(v7 + 44)));
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  v9 = (a2 + *(sub_100004CB8(&qword_100643670, &qword_100530938) + 36));
  *v9 = sub_100398A40;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;

  return result;
}

unint64_t sub_1003985E0()
{
  result = qword_100643678;
  if (!qword_100643678)
  {
    sub_100008DE4(&qword_100643670, &qword_100530938);
    sub_100042B08(&qword_100643680, &qword_100643688, &unk_1005309F0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643678);
  }

  return result;
}

uint64_t sub_100398698(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035B28;

  return sub_100398428(a1, v4, v5);
}

uint64_t sub_100398750(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003987B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100643698, &qword_100530A18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100398828(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100643698, &qword_100530A18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003988B4(uint64_t a1)
{
  sub_1004D9DAC();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_1004DA54C();
}

uint64_t sub_100398980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003989C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100643690, &qword_100530A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100398A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D9E5C();
  v16 = __chkstk_darwin();
  (*(v13 + 16))(v15, v7, a3, v16);
  sub_1004D9E6C();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return sub_1004DA0DC();
}

int *LayoutProviderStack.init(layoutProvider:alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v23 = a8;
  v24 = a10;
  v25 = a11;
  result = type metadata accessor for LayoutProviderStack(0, &v23);
  v20 = (a9 + result[13]);
  *v20 = a2;
  v20[1] = a3;
  v21 = a9 + result[14];
  *v21 = a4;
  *(v21 + 8) = a5 & 1;
  v22 = (a9 + result[15]);
  *v22 = a6;
  v22[1] = a7;
  return result;
}

uint64_t LayoutProviderStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  sub_100008DE4(&qword_1006436C8, &qword_100530A70);
  v4 = *(a1 + 24);
  sub_100399040(&qword_1006436D0, &protocol conformance descriptor for _LayoutRoot<A>);
  v5 = sub_1004DA0CC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin();
  v11 = v22 - v10;
  (*(*(a1 + 32) + 8))(v23, *(v2 + *(a1 + 52)), *(v2 + *(a1 + 52) + 8), *(v2 + *(a1 + 56)), *(v2 + *(a1 + 56) + 8), *(a1 + 16), v9);
  sub_100008C70(v23, v23[3]);
  v12 = __chkstk_darwin();
  (*(v14 + 16))(v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v22[4] = sub_1004DBD9C();
  v15 = (v2 + *(a1 + 60));
  v16 = *v15;
  v17 = v15[1];
  v18 = sub_100398FEC();
  v19 = *(a1 + 40);
  sub_100398A44(v16, v17, &type metadata for AnyLayout, v4, v18, v19, v8);

  sub_100008D24(v23);
  v22[2] = sub_100399040(&qword_1006436E0, &protocol conformance descriptor for _LayoutRoot<A>);
  v22[3] = v19;
  swift_getWitnessTable();
  sub_100339DC8();
  v20 = *(v6 + 8);
  v20(v8, v5);
  sub_100339DC8();
  return (v20)(v11, v5);
}

unint64_t sub_100398FEC()
{
  result = qword_1006436D8;
  if (!qword_1006436D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006436D8);
  }

  return result;
}

uint64_t sub_100399040(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(&qword_1006436C8, &qword_100530A70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AxisStack.init(axis:alignment:spacing:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result & 1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

double AxisStack.body.getter(uint64_t a1)
{
  v15[0] = *v1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  (*(*(&type metadata for Axis - 1) + 32))(v21, v15, &type metadata for Axis);
  v27 = &type metadata for Axis;
  *&v28 = v8;
  *(&v28 + 1) = &protocol witness table for Axis;
  v29 = v9;
  v10 = type metadata accessor for LayoutProviderStack(0, &v27);
  v11 = &v21[v10[13]];
  *v11 = v2;
  v11[1] = v3;
  v12 = &v21[v10[14]];
  *v12 = v4;
  v12[8] = v5;
  v13 = &v21[v10[15]];
  *v13 = v7;
  v13[1] = v6;
  v15[0] = v21[0];
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v27 = &type metadata for Axis;
  *&v28 = v8;
  *(&v28 + 1) = &protocol witness table for Axis;
  v29 = v9;
  type metadata accessor for LayoutProviderStack(0, &v27);
  swift_getWitnessTable();
  sub_100339DC8();

  v21[0] = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  sub_100339DC8();

  return result;
}

unint64_t Axis.layout(alignment:spacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v10 = &type metadata for VStackLayout;
    result = sub_1003992E4();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = sub_100399338();
  }

  *(a6 + 24) = v10;
  *(a6 + 32) = result;
  *a6 = v12;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4 & 1;
  return result;
}

unint64_t sub_1003992E4()
{
  result = qword_1006436E8;
  if (!qword_1006436E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006436E8);
  }

  return result;
}

unint64_t sub_100399338()
{
  result = qword_1006436F0[0];
  if (!qword_1006436F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006436F0);
  }

  return result;
}

unint64_t sub_100399414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (*v5)
  {
    v10 = &type metadata for VStackLayout;
    result = sub_1003992E4();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = sub_100399338();
  }

  *(a5 + 24) = v10;
  *(a5 + 32) = result;
  *a5 = v12;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  return result;
}

void sub_10039948C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_100337790();
    if (v2 <= 0x3F)
    {
      sub_100338374();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100399534(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_100399680(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_100399854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100399890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1003998D8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_10039993C(uint64_t a1)
{
  sub_100008DE4(&qword_1006436C8, &qword_100530A70);
  sub_100399040(&qword_1006436D0, &protocol conformance descriptor for _LayoutRoot<A>);
  sub_1004DA0CC();
  sub_100399040(&qword_1006436E0, &protocol conformance descriptor for _LayoutRoot<A>);
  return swift_getWitnessTable();
}

uint64_t sub_100399A04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4[0] = &type metadata for Axis;
  v4[1] = v1;
  v4[2] = &protocol witness table for Axis;
  v4[3] = v2;
  type metadata accessor for LayoutProviderStack(255, v4);
  return swift_getWitnessTable();
}

uint64_t sub_100399A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  v11(v8);
  sub_100339DC8();
  v12 = *(v5 + 8);
  v12(v7, a4);
  sub_100339DC8();
  return (v12)(v10, a4);
}

char *LoadingView.__allocating_init(title:style:usesSubtitleTextColor:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = objc_allocWithZone(v4);
  return LoadingView.init(title:style:usesSubtitleTextColor:)(a1, a2, a3 & 0xFFFFFFFFFFLL | (((a3 >> 40) & 1) << 40), v5);
}

char *LoadingView.init(title:style:usesSubtitleTextColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style];
  *v9 = 0;
  *(v9 + 2) = 256;
  v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition] = 1;
  v10 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *&v4[v11] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *&v4[v12] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] = 0;
  swift_beginAccess();
  *v10 = a1;
  v10[1] = a2;

  swift_beginAccess();
  v9[4] = BYTE4(a3);
  *v9 = a3;
  v9[5] = BYTE5(a3) & 1;
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  v15 = *&v13[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator];
  v16 = v13;
  [v15 setHidesWhenStopped:1];
  v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v18 = *&v16[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
  if (a2)
  {
    v19 = sub_1004DD3FC();
  }

  else
  {
    v19 = 0;
  }

  [v18 setText:v19];

  [*&v16[v17] setAdjustsFontForContentSizeCategory:1];
  v20 = qword_10063DA48;
  v21 = *&v16[v17];
  if (v20 != -1)
  {
    swift_once();
  }

  [v21 setFont:qword_1006437F8];

  [*&v16[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*&v16[v17] setNumberOfLines:0];
  [*&v16[v17] setTextAlignment:1];
  if (a4)
  {
    v22 = *&v16[v17];
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 secondaryLabelColor];
    [v24 setTextColor:v25];
  }

  sub_100399F5C();
  [v16 addSubview:*&v16[v17]];
  [v16 addSubview:*&v13[v14]];
  v26 = sub_10039A0D0();
  [v16 addSubview:v26];

  return v16;
}

id sub_100399F5C()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  if (*(v1 + 5))
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v2 = sub_10039A0D0();
    [v2 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:1];
  }

  else if (((*v1 | (*(v1 + 4) << 32)) & 0x100000000) != 0)
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) startAnimating];
    v7 = sub_10039A0D0();
    [v7 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
  }

  else
  {
    v4 = *v1;
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v5 = sub_10039A0D0();
    [v5 setHidden:0];

    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
    LODWORD(v6) = v4;
    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) setProgress:v6];
  }
}

id sub_10039A0D0()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  }

  else
  {
    v4 = [objc_allocWithZone(UIProgressView) initWithProgressViewStyle:1];
    v5 = [objc_opt_self() systemFillColor];
    [v4 setTrackTintColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

unint64_t LoadingView.style.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40);
}

float LoadingView.style.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  v5 = *(v3 + 4);
  v6 = *v3;
  v7 = *(v3 + 5);
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1);
  *(v3 + 5) = BYTE5(a1) & 1;
  if ((a1 & 0x10000000000) != 0)
  {
    if (v7)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v7)
  {
    goto LABEL_5;
  }

  v8 = v6 | (v5 << 32);
  if ((a1 & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) != 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  if ((v8 & 0x100000000) != 0 || (result = *&a1, *&a1 != *&v8))
  {
LABEL_5:
    sub_100399F5C();
  }

  return result;
}

void (*LoadingView.style.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 4);
  v8 = *(v6 + 5);
  *(v4 + 40) = *v6;
  v4 += 40;
  *(v4 + 4) = v7;
  *(v4 + 5) = v8;
  return sub_10039A368;
}

void sub_10039A368(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = (*(*a1 + 24) + *(*a1 + 32));
  v4 = *(*a1 + 44);
  v5 = *(*a1 + 45);
  v6 = *v3 | (*(v3 + 4) << 32);
  v7 = *(v3 + 5);
  *v3 = v2;
  *(v3 + 4) = v4;
  *(v3 + 5) = v5;
  if (v5)
  {
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    sub_100399F5C();
    goto LABEL_6;
  }

  if (((v2 | (v4 << 32)) & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v6 & 0x100000000) != 0 || *&v2 != *&v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  free(v1);
}

uint64_t LoadingView.titlePosition.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  return *(v0 + v1);
}

void LoadingView.titlePosition.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = a1;
  if (v4 != a1)
  {
    [v1 setNeedsLayout];
  }
}

void (*LoadingView.titlePosition.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_10039A554;
}

void sub_10039A554(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsLayout];
  }

  free(v1);
}

id LoadingView.font.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) font];

  return v1;
}

void LoadingView.font.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setFont:a1];
}

void (*LoadingView.font.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) font];
  return sub_10039A6A8;
}

void sub_10039A6A8(uint64_t a1)
{
  v1 = *a1;
  [*(*(a1 + 8) + *(a1 + 16)) setFont:?];
}

uint64_t LoadingView.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double LoadingView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  swift_beginAccess();
  v7 = *v5;
  v8 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_1004DF08C() & 1) != 0)
      {
        goto LABEL_12;
      }
    }

    v10 = *&v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];

    v11 = sub_1004DD3FC();
  }

  else
  {
    if (!v8)
    {
      return result;
    }

    v10 = *&v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
    v11 = 0;
  }

  [v10 setText:v11];

  [v2 setNeedsLayout];
LABEL_12:

  return result;
}

void (*LoadingView.title.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_10039A904;
}

void sub_10039A904(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    LoadingView.title.setter(v3, v4);
  }

  else
  {
    LoadingView.title.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

Swift::Void __swiftcall LoadingView.layoutSubviews()()
{
  v58.receiver = v0;
  v58.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v58, "layoutSubviews");
  [v0 effectiveUserInterfaceLayoutDirection];
  v1 = [v0 traitCollection];
  [v1 displayScale];

  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 layoutMargins];
  sub_10001087C(v3, v5, v7, v9, v10, v11);
  LoadingView.sizeThatFits(_:)(v12, v13);
  v15 = v14;
  [v0 bounds];
  v52 = v15;
  sub_1004DE3CC();
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  v20 = CGRectGetWidth(v59);
  v21 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v56 = width;
  v57 = height;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label] sizeThatFits:{width, height, v52}];
  v23 = v22;
  rect = v24;
  v60.origin.x = 0.0;
  v60.origin.y = 0.0;
  v60.size.height = 0.0;
  v25 = v20;
  v60.size.width = v20;
  v26 = CGRectGetWidth(v60);
  v27 = sub_10039A0D0();
  [v27 intrinsicContentSize];
  v29 = v28;

  v30 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator] intrinsicContentSize];
  v32 = v31;
  v34 = v33;
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v26;
  v61.size.height = v29;
  v35 = CGRectGetHeight(v61);
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = v32;
  v62.size.height = v34;
  v36 = CGRectGetHeight(v62);
  if (v35 > v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  v38 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  if (v0[v38])
  {
    if (v0[v38] == 1)
    {
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = v56;
      v63.size.height = v57;
      CGRectGetMinX(v63);
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = v25;
      v64.size.height = v37;
      CGRectGetMaxY(v64);
      [*&v0[v21] _firstBaselineOffsetFromTop];
    }

    else
    {
      [*&v0[v30] intrinsicContentSize];
      v40 = v39;
      [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] intrinsicContentSize];
      if (v40 > v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      v43 = x;
      v44 = y;
      v45 = v37;
      CGRectGetMaxX(*(&v42 - 2));
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = v56;
      v67.size.height = v57;
      CGRectGetMinY(v67);
    }
  }

  else
  {
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = v56;
    v65.size.height = v57;
    CGRectGetMinX(v65);
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = v23;
    v66.size.height = rect;
    CGRectGetMaxY(v66);
    [*&v0[v21] _baselineOffsetFromBottom];
  }

  v46 = v0[v38];
  v47 = *&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar];
  sub_1004DE3CC();
  if (v46 == 2)
  {
    [v0 bounds];
    sub_1004DE3EC();
    [v47 setFrame:?];

    v49 = *&v0[v30];
    v53 = v37;
  }

  else
  {
    v54 = v48;
    sub_1004DE3CC();
    [v0 bounds];
    sub_1004DE3EC();
    [v47 setFrame:?];

    v49 = *&v0[v30];
    sub_1004DE3CC();
    v53 = v50;
  }

  sub_1004DE3CC();
  [v0 bounds];
  sub_1004DE3EC();
  [v49 setFrame:?];

  v51 = *&v0[v21];
  sub_1004DE3CC();
  [v0 bounds];
  sub_1004DE3EC();
  [v51 setFrame:?];
}

double LoadingView.sizeThatFits(_:)(double a1, double a2)
{
  v3 = v2;
  v6 = sub_10039A0D0();
  [v6 sizeThatFits:{0.0, 0.0}];
  v8 = v7;
  v10 = v9;

  [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) sizeThatFits:{0.0, 0.0}];
  v13 = v12;
  if (v8 > v11)
  {
    v14 = v8;
  }

  else
  {
    v14 = v11;
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  if (v10 > v13)
  {
    v16 = v10;
  }

  else
  {
    v16 = v13;
  }

  if (*(v3 + v15) == 2)
  {
    v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
    [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) intrinsicContentSize];
    [*(v3 + v17) intrinsicContentSize];
    return v14 + v18;
  }

  else
  {
    v19 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
    [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) sizeThatFits:{0.0, 0.0}];
    v21 = v20;
    _s3__C6CGSizeVMa_1(0);
    if (sub_1004D868C())
    {
      [*(v3 + v19) sizeThatFits:{a1, a2 - (v16 + 0.0 + 8.0)}];
    }

    else if (v21 > v14)
    {
      return v21;
    }

    else
    {
      return v14;
    }
  }

  return a1;
}

BOOL static LoadingView.Style.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) == 0)
  {
    if ((a2 & 0x100000000) == 0)
    {
      return *&a1 == *&a2;
    }

    return 0;
  }

  return (a2 & 0x100000000) != 0;
}

uint64_t sub_10039B25C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

void sub_10039B28C()
{
  sub_10039B5FC();
  v0 = UIFontTextStyleSubheadline;
  v1 = sub_1004DE48C();

  qword_1006437F8 = v1;
}

unint64_t sub_10039B3C8()
{
  result = qword_100643830;
  if (!qword_100643830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643830);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for LoadingView.Style(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LoadingView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LoadingView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10039B4B0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10039B4CC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

void sub_10039B4FC()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v1 + 4) = 256;
  *v1 = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition) = 1;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *(v0 + v3) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *(v0 + v4) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) = 0;
  sub_1004DECCC();
  __break(1u);
}

unint64_t sub_10039B5FC()
{
  result = qword_100643860;
  if (!qword_100643860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100643860);
  }

  return result;
}

uint64_t MarkupView.body.getter@<X0>(uint64_t a3@<X8>)
{
  sub_1004D7E3C();
  __chkstk_darwin();
  sub_100004CB8(&qword_100643868, &qword_100530C90);
  swift_allocObject();

  sub_1004D864C();
  sub_1004D863C();

  result = sub_1004DB33C();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_10039B748@<X0>(uint64_t a1@<X8>)
{
  sub_1004D7E3C();
  __chkstk_darwin();
  sub_100004CB8(&qword_100643868, &qword_100530C90);
  swift_allocObject();

  sub_1004D864C();
  sub_1004D863C();

  result = sub_1004DB33C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10039B844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a2;
  sub_1004D9E1C();
  sub_1003A1AAC(a1, v15, v11, a3, a4, a5, a6, a7);
  return sub_100317BF4(v15);
}

uint64_t sub_10039B8E8(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin();
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    v6 = swift_getTupleTypeMetadata();
  }

  __chkstk_darwin();
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *TupleTypeMetadata++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1004DBE1C();
}

uint64_t sub_10039BAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  (*(v13 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v11);
  (*(v8 + 16))(v10, a1, a4);
  return sub_1004D9D5C();
}

uint64_t sub_10039BC4C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1004DE7CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t MaterialyView.init(shape:style:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for MaterialyView(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t MaterialyView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v58 = a1;
  v3 = *(*(a1 + 24) + 8);
  v4 = *(a1 + 24);
  v79 = *(a1 + 16);
  v2 = v79;
  v80 = &type metadata for Color;
  v81 = v3;
  v82 = &protocol witness table for Color;
  v5 = v3;
  v66 = sub_1004D9D6C();
  v62 = *(v66 - 8);
  __chkstk_darwin();
  v61 = &v43 - v6;
  sub_1004DA44C();
  v65 = sub_1004DA32C();
  v63 = *(v65 - 8);
  __chkstk_darwin();
  v60 = &v43 - v7;
  v79 = v2;
  v80 = &type metadata for LinearGradient;
  v81 = v5;
  v82 = &protocol witness table for LinearGradient;
  sub_1004D9D6C();
  WitnessTable = sub_1004DE7CC();
  v79 = v2;
  v80 = &type metadata for Color;
  v81 = &type metadata for EmptyView;
  v82 = v5;
  v83 = &protocol witness table for Color;
  v84 = &protocol witness table for EmptyView;
  sub_1004DA37C();
  sub_1004DA32C();
  v57 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1004D9E4C();
  sub_1004DA32C();
  sub_1004DA32C();
  v10 = sub_100008DE4(&qword_100643870, &qword_100530D30);
  v11 = sub_100042B08(&qword_100643878, &qword_100643870, &qword_100530D30, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  v79 = v2;
  v80 = v10;
  v81 = v5;
  v82 = v11;
  v12 = v5;
  sub_1004D9D6C();
  v79 = AssociatedTypeWitness;
  v80 = &type metadata for Color;
  v81 = v9;
  v82 = &protocol witness table for Color;
  sub_1004D9D6C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  sub_1004DA32C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata3();
  sub_1004DBE0C();
  swift_getWitnessTable();
  v55 = sub_1004DBB4C();
  WitnessTable = swift_getWitnessTable();
  sub_1004DA46C();
  v13 = sub_1004DA32C();
  __chkstk_darwin();
  v54 = &v43 - v14;
  v15 = *(v2 - 8);
  __chkstk_darwin();
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v17;
  v47 = swift_getWitnessTable();
  v77 = v47;
  v78 = &protocol witness table for _BlendModeEffect;
  v18 = swift_getWitnessTable();
  v50 = v18;
  v19 = swift_getWitnessTable();
  v75 = v18;
  v76 = v19;
  v52 = v13;
  v49 = swift_getWitnessTable();
  v79 = v2;
  v80 = &type metadata for LinearGradient;
  v81 = v13;
  v20 = v12;
  v44 = v12;
  v82 = v12;
  v83 = &protocol witness table for LinearGradient;
  v84 = v49;
  v21 = sub_1004DA37C();
  v53 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v43 - v24;
  v25 = v57;
  v27 = type metadata accessor for MaterialyView.Style.Specs(0, v2, v57, v26);
  v46 = v27;
  v51 = *(v27 - 8);
  __chkstk_darwin();
  v29 = (&v43 - v28);
  v30 = v59;
  sub_10039C760(*(v59 + *(v58 + 36)), v2, v25, &v43 - v28, v31);
  (*(v15 + 16))(v17, v30, v2);
  v32 = v29 + *(v27 + 36);
  v72 = *(v32 + 1);
  v33 = *(v32 + 2);
  v73 = *(v32 + 1);
  v74 = v33;

  sub_1004D9E1C();
  v71 = *v29;
  v34 = v61;
  sub_10039BAB8(&v71, 256, v2, &type metadata for Color, v20, &protocol witness table for Color);
  type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v2, v25, v35);
  v36 = v60;
  v37 = v66;
  sub_1004DB72C();
  (*(v62 + 8))(v34, v37);
  v67 = v2;
  v68 = v25;
  v69 = v29;
  v70 = v30;
  sub_1004DBD1C();
  v38 = v54;
  v39 = v65;
  sub_1004DB6BC();
  (*(v63 + 8))(v36, v39);
  sub_10039ED54(v45, &v72, &v79, 1, v38, v2, &type metadata for LinearGradient, v52, v23, v44, &protocol witness table for LinearGradient, v49);
  swift_getWitnessTable();
  v40 = v48;
  sub_100339DC8();
  v41 = *(v53 + 8);
  v41(v23, v21);
  sub_100339DC8();
  v41(v40, v21);
  return (*(v51 + 8))(v29, v46);
}

uint64_t sub_10039C760@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v80 = a4;
  v8 = a1;
  type metadata accessor for MaterialyView.Style.Specs.Shadow(0, a2, a3, a5);
  __chkstk_darwin();
  v79 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v69 - v10;
  __chkstk_darwin();
  v77 = &v69 - v11;
  __chkstk_darwin();
  v76 = &v69 - v12;
  v13 = sub_1004DBDAC();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  v18 = a2;
  v19 = a3;
  type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v18, a3, v20);
  __chkstk_darwin();
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v69 - v23;
  if (v8 == 2)
  {
    sub_1004DB87C();
    v25 = sub_1004DB88C();

    v26 = *(v14 + 104);
    v27 = v16;
    v26(v16, enum case for BlendMode.plusLighter(_:), v13);
    v28 = v26;
    v29 = v24;
    v79 = v24;
    v30 = v17;
    v74 = v19;
    sub_10039F174(v25, v27, v17, v19, v29);
    sub_100004CB8(&qword_10063F1E8, &qword_10052AA58);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100511B10;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v31 + 32) = sub_1004DBC9C();
    *(v31 + 40) = v32;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v31 + 48) = sub_1004DBC9C();
    *(v31 + 56) = v33;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v31 + 64) = sub_1004DBC9C();
    *(v31 + 72) = v34;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v31 + 80) = sub_1004DBC9C();
    *(v31 + 88) = v35;
    sub_1004DBCAC();
    sub_1004DBE2C();
    sub_1004DBE3C();
    sub_1004DA12C();
    *&v84 = 0x3FE0000000000000;
    *(&v84 + 1) = v87;
    v85 = v88;
    v86 = v89;
    memset(v90, 0, 40);
    sub_1004DB84C();
    v36 = sub_1004DB88C();

    v37 = enum case for BlendMode.normal(_:);
    v38 = v28;
    v28(v27, enum case for BlendMode.normal(_:), v13);
    v39 = v76;
    v40 = v30;
    v41 = v30;
    v42 = v74;
    sub_10039F200(v36, v27, v76, 4.0, 0.0, 3.0, v41, v74);
    sub_1004DB87C();
    v43 = sub_1004DB88C();

    v38(v27, v37, v13);
    v44 = v77;
    sub_10039F200(v43, v27, v77, 3.0, 0.0, 1.0, v40, v42);
    v45 = v80;
    v46 = v79;
    v47 = v39;
    v48 = v44;
    v49 = v40;
  }

  else
  {
    sub_1004DB87C();
    v50 = 0.23;
    if (a1)
    {
      v50 = 0.8;
    }

    v76 = *&v50;
    v51 = 3.0;
    if (a1)
    {
      v51 = 6.0;
    }

    v77 = *&v51;
    v52 = sub_1004DB88C();

    v53 = *(v14 + 104);
    v53(v16, enum case for BlendMode.plusLighter(_:), v13);
    v75 = v17;
    sub_10039F174(v52, v16, v17, v19, v22);
    sub_100004CB8(&qword_10063F1E8, &qword_10052AA58);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_100511B10;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v54 + 32) = sub_1004DBC9C();
    *(v54 + 40) = v55;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v54 + 48) = sub_1004DBC9C();
    *(v54 + 56) = v56;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v54 + 64) = sub_1004DBC9C();
    *(v54 + 72) = v57;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v54 + 80) = sub_1004DBC9C();
    *(v54 + 88) = v58;
    sub_1004DBCAC();
    sub_1004DBE2C();
    sub_1004DBE3C();
    sub_1004DA12C();
    *&v84 = 0x3FF0000000000000;
    *(&v84 + 1) = v81;
    v85 = v82;
    v86 = v83;
    sub_100004CB8(&qword_10063F1F0, &unk_10052AA60);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1005126C0;
    sub_1004DB87C();
    v60 = sub_1004DB88C();

    *(v59 + 32) = v60;
    sub_1004DB84C();
    v61 = sub_1004DB88C();

    *(v59 + 40) = v61;
    sub_1004DBCBC();
    sub_1004DBE5C();
    sub_1004DBE6C();
    sub_1004DA12C();
    v73 = v87;
    sub_1004DB84C();
    v62 = sub_1004DB88C();
    v63 = enum case for BlendMode.normal(_:);

    v72 = v88;
    v71 = v89;
    v53(v16, v63, v13);
    v42 = v19;
    v64 = v75;
    v70 = v22;
    v65 = v78;
    sub_10039F200(v62, v16, v78, 4.0, 0.0, 3.0, v75, v42);
    sub_1004DB87C();
    v66 = sub_1004DB88C();

    v53(v16, v63, v13);
    v67 = v79;
    sub_10039F200(v66, v16, v79, *&v77, 0.0, 1.0, v64, v42);
    *&v90[0] = v73;
    *(&v90[1] + 8) = v71;
    *(v90 + 8) = v72;
    v45 = v80;
    v46 = v70;
    v47 = v65;
    v48 = v67;
    v49 = v64;
  }

  return sub_10039F294(v46, &v84, v90, v47, v48, v49, v42, v45);
}

uint64_t sub_10039D118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a1;
  v20 = a2;
  v21 = a5;
  v7 = *(a4 + 8);
  sub_1004D9D6C();
  v18 = sub_1004DE7CC();
  v26 = a3;
  v27 = &type metadata for Color;
  v28 = &type metadata for EmptyView;
  v29 = v7;
  v30 = &protocol witness table for Color;
  v31 = &protocol witness table for EmptyView;
  sub_1004DA37C();
  sub_1004DA32C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1004D9E4C();
  sub_1004DA32C();
  sub_1004DA44C();
  sub_1004DA32C();
  sub_100008DE4(&qword_100643870, &qword_100530D30);
  sub_100042B08(&qword_100643878, &qword_100643870, &qword_100530D30, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  sub_1004D9D6C();
  v26 = AssociatedTypeWitness;
  v27 = &type metadata for Color;
  v28 = v9;
  v29 = &protocol witness table for Color;
  sub_1004D9D6C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  sub_1004DA32C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata3();
  sub_1004DBE0C();
  swift_getWitnessTable();
  v10 = sub_1004DBB4C();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v18 - v14;
  v22 = a3;
  v23 = a4;
  v24 = v19;
  v25 = v20;
  sub_1004DBD1C();
  sub_1004DBB3C();
  swift_getWitnessTable();
  sub_100339DC8();
  v16 = *(v11 + 8);
  v16(v13, v10);
  sub_100339DC8();
  return (v16)(v15, v10);
}

uint64_t sub_10039D528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v123 = a2;
  v127 = a1;
  v116 = a5;
  v7 = sub_100008DE4(&qword_100643870, &qword_100530D30);
  v8 = *(a4 + 8);
  v133 = a3;
  *&v134 = v7;
  *(&v134 + 1) = v8;
  *&v135 = sub_100042B08(&qword_100643878, &qword_100643870, &qword_100530D30, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  sub_1004D9D6C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v133 = AssociatedTypeWitness;
  *&v134 = &type metadata for Color;
  *(&v134 + 1) = v10;
  *&v135 = &protocol witness table for Color;
  sub_1004D9D6C();
  sub_1004DA44C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata2();
  v107 = sub_1004DBE0C();
  v11 = v8;
  WitnessTable = swift_getWitnessTable();
  v108 = *(sub_1004DBB4C() - 8);
  __chkstk_darwin();
  v104 = &v84 - v12;
  v110 = v13;
  v109 = *(sub_1004DA32C() - 8);
  __chkstk_darwin();
  v106 = &v84 - v14;
  v111 = v15;
  v115 = sub_1004DA32C();
  v112 = *(v115 - 8);
  __chkstk_darwin();
  v114 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v113 = &v84 - v17;
  v100 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v99 = &v84 - v18;
  v133 = a3;
  *&v134 = &type metadata for Color;
  *(&v134 + 1) = &type metadata for EmptyView;
  *&v135 = v8;
  *(&v135 + 1) = &protocol witness table for Color;
  v136 = &protocol witness table for EmptyView;
  v89 = *(sub_1004DA37C() - 8);
  __chkstk_darwin();
  v88 = &v84 - v19;
  v90 = v20;
  v21 = sub_1004DA32C();
  v95 = *(v21 - 8);
  __chkstk_darwin();
  v92 = &v84 - v22;
  v103 = AssociatedTypeWitness;
  v101 = v10;
  v23 = sub_1004D9E4C();
  v96 = v21;
  v93 = v23;
  v97 = *(sub_1004DA32C() - 8);
  __chkstk_darwin();
  v94 = &v84 - v24;
  v98 = v25;
  v26 = a3;
  v102 = sub_1004DA32C();
  v119 = *(v102 - 8);
  __chkstk_darwin();
  v126 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v84 - v28;
  v133 = a3;
  *&v134 = &type metadata for LinearGradient;
  *(&v134 + 1) = v8;
  *&v135 = &protocol witness table for LinearGradient;
  v29 = *(sub_1004D9D6C() - 8);
  __chkstk_darwin();
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v84 - v32;
  v118 = v34;
  v120 = sub_1004DE7CC();
  v125 = *(v120 - 8);
  __chkstk_darwin();
  v36 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v124 = &v84 - v37;
  v121 = a4;
  v117 = type metadata accessor for MaterialyView.Style.Specs(0, v26, a4, v38);
  v39 = v127 + *(v117 + 40);
  if (*v39)
  {
    v133 = *v39;
    v134 = *(v39 + 8);
    v135 = *(v39 + 24);
    sub_10039BAB8(&v133, 256, v26, &type metadata for LinearGradient, v8, &protocol witness table for LinearGradient);
    v40 = v118;
    swift_getWitnessTable();
    sub_100339DC8();
    v41 = *(v29 + 8);
    v41(v31, v40);
    v11 = v8;
    sub_100339DC8();
    v41(v33, v40);
    (*(v29 + 32))(v36, v31, v40);
    (*(v29 + 56))(v36, 0, 1, v40);
  }

  else
  {
    (*(v29 + 56))(v36, 1, 1, v118);
    swift_getWitnessTable();
  }

  v42 = v125;
  v43 = *(v125 + 16);
  v86 = v125 + 16;
  v87 = v43;
  v44 = v120;
  v43(v124, v36, v120);
  v45 = *(v42 + 8);
  v125 = v42 + 8;
  v91 = v45;
  v45(v36, v44);
  v133 = sub_1004DB87C();
  v46 = v88;
  v84 = v26;
  sub_10039B844(&v133, 1, v26, &type metadata for Color, v11, &protocol witness table for Color, v88);

  v47 = v90;
  v48 = swift_getWitnessTable();
  v49 = v92;
  sub_1004DB69C();
  (*(v89 + 8))(v46, v47);
  v50 = v99;
  sub_1004DA2EC();
  v132[11] = v48;
  v132[12] = &protocol witness table for _ShadowEffect;
  v51 = v96;
  v52 = swift_getWitnessTable();
  v53 = v94;
  v54 = v103;
  sub_1004DB73C();
  (*(v100 + 8))(v50, v54);
  (*(v95 + 8))(v49, v51);
  v55 = v84;
  v56 = v121;
  type metadata accessor for MaterialyView.Style.Specs.Shadow(0, v84, v121, v57);
  v58 = swift_getWitnessTable();
  v132[9] = v52;
  v132[10] = v58;
  v59 = v98;
  v60 = swift_getWitnessTable();
  v61 = v36;
  v62 = v126;
  sub_1004DB72C();
  (*(v97 + 8))(v53, v59);
  v132[7] = v60;
  v132[8] = &protocol witness table for _BlendModeEffect;
  v63 = v102;
  v100 = swift_getWitnessTable();
  sub_100339DC8();
  v64 = *(v119 + 8);
  v101 = v119 + 8;
  v103 = v64;
  v64(v62, v63);
  __chkstk_darwin();
  *(&v84 - 4) = v55;
  *(&v84 - 3) = v56;
  v65 = v127;
  *(&v84 - 2) = v123;
  *(&v84 - 1) = v65;
  sub_1004DBD1C();
  v66 = v104;
  sub_1004DBB3C();
  v67 = v110;
  v68 = swift_getWitnessTable();
  v69 = v106;
  sub_1004DB4EC();
  (*(v108 + 8))(v66, v67);
  v132[5] = v68;
  v132[6] = &protocol witness table for _CompositingGroupEffect;
  v70 = v111;
  v71 = swift_getWitnessTable();
  v72 = v114;
  sub_1004DB72C();
  (*(v109 + 8))(v69, v70);
  v132[3] = v71;
  v132[4] = &protocol witness table for _BlendModeEffect;
  v73 = v115;
  v127 = swift_getWitnessTable();
  v74 = v113;
  sub_100339DC8();
  v75 = v112;
  v76 = *(v112 + 8);
  v76(v72, v73);
  v85 = v61;
  v77 = v120;
  v87(v61, v124, v120);
  v133 = v61;
  v78 = v126;
  v79 = v122;
  (*(v119 + 16))(v126, v122, v63);
  *&v134 = v78;
  (*(v75 + 16))(v72, v74, v73);
  *(&v134 + 1) = v72;
  v132[0] = v77;
  v132[1] = v63;
  v132[2] = v73;
  v128 = swift_getWitnessTable();
  v80 = v77;
  v129 = swift_getWitnessTable();
  v130 = v100;
  v131 = v127;
  sub_10039B8E8(&v133, 3uLL, v132);
  v76(v74, v73);
  v81 = v103;
  v103(v79, v63);
  v82 = v91;
  v91(v124, v80);
  v76(v72, v73);
  v81(v126, v63);
  return v82(v85, v80);
}

uint64_t sub_10039E5D8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a2;
  v51 = a1;
  v67 = a5;
  v7 = sub_1004DBDAC();
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin();
  v64 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v55 = v46 - v10;
  v58 = AssociatedTypeWitness;
  v57 = *(swift_getAssociatedConformanceWitness() + 8);
  v71 = AssociatedTypeWitness;
  v72 = &type metadata for Color;
  v73 = v57;
  v74 = &protocol witness table for Color;
  v54 = sub_1004D9D6C();
  v63 = *(v54 - 8);
  __chkstk_darwin();
  v52 = v46 - v11;
  sub_1004DA44C();
  v12 = sub_1004DA32C();
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  __chkstk_darwin();
  v53 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = v46 - v15;
  v16 = sub_100004CB8(&qword_100643870, &qword_100530D30);
  __chkstk_darwin();
  v18 = v46 - v17;
  v46[1] = a4;
  v19 = *(a4 + 8);
  v20 = sub_100042B08(&qword_100643878, &qword_100643870, &qword_100530D30, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  v71 = a3;
  v72 = v16;
  v73 = v19;
  v74 = v20;
  v21 = sub_1004D9D6C();
  v47 = *(v21 - 8);
  v22 = v47;
  __chkstk_darwin();
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = v46 - v25;
  type metadata accessor for MaterialyView.Style.Specs(0, a3, a4, v26);
  sub_1004D9DEC();
  sub_10039BAB8(v18, 256, a3, v16, v19, v20);
  sub_10001074C(v18, &qword_100643870, &qword_100530D30);
  WitnessTable = swift_getWitnessTable();
  sub_100339DC8();
  v27 = *(v22 + 8);
  v50 = v22 + 8;
  v56 = v27;
  (v27)(v24, v21);
  v28 = v55;
  sub_1004DA2EC();
  v71 = sub_1004DB87C();
  v29 = v52;
  v30 = v58;
  sub_10039BAB8(&v71, 256, v58, &type metadata for Color, v57, &protocol witness table for Color);

  (*(v62 + 8))(v28, v30);
  v32 = v64;
  v31 = v65;
  v33 = v66;
  (*(v65 + 104))(v64, enum case for BlendMode.destinationOut(_:), v66);
  v34 = v54;
  v35 = swift_getWitnessTable();
  v36 = v53;
  sub_1004DB72C();
  (*(v31 + 8))(v32, v33);
  (*(v63 + 8))(v29, v34);
  v70[2] = v35;
  v70[3] = &protocol witness table for _BlendModeEffect;
  v37 = v60;
  v38 = swift_getWitnessTable();
  v39 = v59;
  sub_100339DC8();
  v40 = v61;
  v41 = *(v61 + 8);
  v42 = v36;
  v41(v36, v37);
  v43 = v48;
  (*(v47 + 16))(v24, v48, v21);
  v71 = v24;
  (*(v40 + 16))(v42, v39, v37);
  v72 = v42;
  v70[0] = v21;
  v70[1] = v37;
  v68 = WitnessTable;
  v69 = v38;
  sub_10039B8E8(&v71, 2uLL, v70);
  v41(v39, v37);
  v44 = v56;
  (v56)(v43, v21);
  v41(v42, v37);
  return (v44)(v24, v21);
}

uint64_t sub_10039ED54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v42 = a5;
  v40 = a4;
  v35 = a3;
  v36 = a8;
  v38 = a2;
  v45 = a9;
  v46 = a1;
  v31[1] = a10;
  v39 = *(a8 - 8);
  v43 = a12;
  __chkstk_darwin();
  v37 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1004DAABC();
  __chkstk_darwin();
  v41 = v31 - v15;
  v34 = *(a7 - 8);
  __chkstk_darwin();
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a6 - 8);
  v18 = v32;
  __chkstk_darwin();
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004DA0BC();
  __chkstk_darwin();
  WitnessTable = swift_getWitnessTable();
  v47 = v21;
  v48 = a7;
  v49 = WitnessTable;
  v50 = a11;
  v33 = sub_1004D9D6C();
  v23 = __chkstk_darwin();
  v24 = *(v18 + 16);
  v31[0] = a6;
  v24(v20, v46, a6, v23);
  sub_1004DA0AC();
  v25 = v34;
  v26 = v38;
  (*(v34 + 16))(v17, v38, a7);
  sub_1004D9D5C();
  v27 = v39;
  v28 = v36;
  v29 = v42;
  (*(v39 + 16))(v37, v42, v36);
  sub_1004DBD1C();
  (*(v27 + 8))(v29, v28);
  (*(v25 + 8))(v26, a7);
  (*(v32 + 8))(v46, v31[0]);
  sub_1004DAAAC();
  return sub_1004DA31C();
}

uint64_t sub_10039F174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v7 = *(type metadata accessor for MaterialyView.Style.Specs.FillColor(0, a3, a4, a4) + 36);
  v8 = sub_1004DBDAC();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a2, v8);
}

uint64_t sub_10039F200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, uint64_t a7@<X2>, uint64_t a8@<X3>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  v10 = *(type metadata accessor for MaterialyView.Style.Specs.Shadow(0, a7, a8, a8) + 44);
  v11 = sub_1004DBDAC();
  v12 = *(*(v11 - 8) + 32);

  return v12(a3 + v10, a2, v11);
}

uint64_t sub_10039F294@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for MaterialyView.Style.Specs.FillColor(0, a6, a7, a4);
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v18 = type metadata accessor for MaterialyView.Style.Specs(0, a6, a7, v17);
  v19 = (a8 + v18[9]);
  v20 = a2[1];
  *v19 = *a2;
  v19[1] = v20;
  v19[2] = a2[2];
  v21 = a8 + v18[10];
  v22 = *(a3 + 16);
  *v21 = *a3;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a3 + 32);
  v23 = v18[11];
  v25 = type metadata accessor for MaterialyView.Style.Specs.Shadow(0, a6, a7, v24);
  v28 = *(*(v25 - 8) + 32);
  (v28)((v25 - 8), a8 + v23, a4, v25);
  v26 = a8 + v18[12];

  return v28(v26, a5, v25);
}

double MaterialyButtonStyle.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  type metadata accessor for MaterialyButtonStyle(0);
  sub_1003275B4();
  sub_1004D9EDC();
  sub_1004D9EDC();
  return result;
}

uint64_t sub_10039F4B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA6DC();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for MaterialyButtonStyle(uint64_t a1)
{
  result = qword_1006439F0;
  if (!qword_1006439F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10039F558(double a1)
{
  sub_1003275B4();
  sub_1004D9EDC();
  return result;
}

uint64_t MaterialyButtonStyle.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100004CB8(&qword_100643880, &qword_100530D68);
  __chkstk_darwin();
  v6 = &v11 - v5;
  *v6 = sub_1004DA90C();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v7 = sub_100004CB8(&qword_100643888, &qword_100530D70);
  sub_10039F6A4(a1, v2, &v6[*(v7 + 44)]);
  if (sub_1003A03F4())
  {
    v8 = sub_1004DABEC();
  }

  else
  {
    v8 = sub_1004DAC0C();
  }

  v9 = v8;
  sub_100047F38(v6, a2, &qword_100643880, &qword_100530D68);
  result = sub_100004CB8(qword_100643890, &qword_100530D78);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_10039F6A4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v107 = a3;
  v105 = sub_1004DA96C();
  v103 = *(v105 - 8);
  __chkstk_darwin();
  v102 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100004CB8(&qword_100643C58, &qword_100530F38);
  __chkstk_darwin();
  v98 = &v81 - v5;
  v99 = sub_100004CB8(&qword_100643C60, &qword_100530F40);
  __chkstk_darwin();
  v101 = &v81 - v6;
  v100 = sub_100004CB8(&qword_100643C68, &unk_100530F48);
  __chkstk_darwin();
  v106 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = &v81 - v8;
  __chkstk_darwin();
  v104 = &v81 - v9;
  sub_100004CB8(&qword_100641CB0, &qword_10052D350);
  __chkstk_darwin();
  v89 = &v81 - v10;
  v11 = sub_1004DA7EC();
  v12 = *(v11 - 8);
  v83 = v11;
  v84 = v12;
  __chkstk_darwin();
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004DAC8C();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004CB8(&qword_100643C70, &qword_100530F58);
  __chkstk_darwin();
  v21 = &v81 - v20;
  v22 = sub_100004CB8(&qword_100643C78, &qword_100530F60);
  v85 = *(v22 - 8);
  v86 = v22;
  __chkstk_darwin();
  v81 = &v81 - v23;
  v82 = sub_100004CB8(&qword_100643C80, &qword_100530F68) - 8;
  __chkstk_darwin();
  v25 = &v81 - v24;
  v88 = sub_100004CB8(&qword_100643C88, &qword_100530F70);
  __chkstk_darwin();
  v108 = &v81 - v26;
  v90 = sub_100004CB8(&qword_100643C90, &qword_100530F78);
  __chkstk_darwin();
  v93 = &v81 - v27;
  v92 = sub_100004CB8(&qword_100643C98, &qword_100530F80);
  __chkstk_darwin();
  v95 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v81 - v29;
  __chkstk_darwin();
  v94 = &v81 - v30;
  sub_1004DAC9C();
  if (sub_1004DACAC())
  {
    v31 = 0.92;
  }

  else
  {
    v31 = 1.0;
  }

  sub_1004DBE7C();
  v33 = v32;
  v35 = v34;
  (*(v16 + 32))(v21, v18, v15);
  v36 = &v21[*(v19 + 36)];
  *v36 = v31;
  *(v36 + 1) = v31;
  *(v36 + 2) = v33;
  *(v36 + 3) = v35;
  sub_1004DA7DC();
  sub_1003A19F0();
  sub_1003A1D64(&qword_100643CB0, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v37 = v81;
  v38 = v83;
  sub_1004DB3BC();
  v39 = a1;
  (*(v84 + 8))(v14, v38);
  sub_10001074C(v21, &qword_100643C70, &qword_100530F58);
  type metadata accessor for MaterialyButtonStyle(0);
  sub_100004CB8(&qword_10063FF20, &qword_10052C138);
  sub_1004D9EEC();
  sub_1004DB03C();
  v40 = sub_1004DB02C();
  v41 = v89;
  (*(*(v40 - 8) + 56))(v89, 1, 1, v40);
  v42 = sub_1004DB07C();
  sub_10001074C(v41, &qword_100641CB0, &qword_10052D350);
  KeyPath = swift_getKeyPath();
  (*(v85 + 32))(v25, v37, v86);
  v44 = v25;
  v45 = &v25[*(v82 + 44)];
  *v45 = KeyPath;
  v45[1] = v42;
  v89 = v39;
  LOBYTE(v86) = sub_1004DACAC() & 1;
  LODWORD(v86) = v86;
  sub_1004D9EEC();
  sub_1004D9EEC();
  sub_1004DBD1C();
  sub_1004DA45C();
  *(&v109[3] + 7) = *(&v109[10] + 8);
  *(&v109[4] + 7) = *(&v109[11] + 8);
  *(&v109[5] + 7) = *(&v109[12] + 8);
  *(&v109[6] + 7) = *(&v109[13] + 8);
  *(v109 + 7) = *(&v109[7] + 8);
  *(&v109[1] + 7) = *(&v109[8] + 8);
  *(&v109[2] + 7) = *(&v109[9] + 8);
  v46 = sub_1004DBD1C();
  v48 = v47;
  v49 = v108;
  sub_100047F38(v44, v108, &qword_100643C80, &qword_100530F68);
  v50 = v49 + *(v88 + 36);
  v51 = v109[5];
  *(v50 + 65) = v109[4];
  *(v50 + 81) = v51;
  *(v50 + 97) = v109[6];
  v52 = v109[1];
  *(v50 + 1) = v109[0];
  *(v50 + 17) = v52;
  v53 = v109[3];
  *(v50 + 33) = v109[2];
  *v50 = v86;
  v54 = *(&v109[6] + 15);
  *(v50 + 49) = v53;
  *(v50 + 112) = v54;
  *(v50 + 120) = v46;
  *(v50 + 128) = v48;
  sub_1004D9EEC();
  sub_1004D9EEC();
  sub_1004DBD1C();
  sub_1004DA45C();
  v55 = v93;
  sub_100047F38(v108, v93, &qword_100643C88, &qword_100530F70);
  v56 = (v55 + *(v90 + 36));
  v57 = *(&v109[19] + 8);
  v56[4] = *(&v109[18] + 8);
  v56[5] = v57;
  v56[6] = *(&v109[20] + 8);
  v58 = *(&v109[15] + 8);
  *v56 = *(&v109[14] + 8);
  v56[1] = v58;
  v59 = *(&v109[17] + 8);
  v56[2] = *(&v109[16] + 8);
  v56[3] = v59;
  v60 = sub_1004DBD6C();
  LOBYTE(v46) = sub_1004DACAC();
  v61 = v91;
  sub_100047F38(v55, v91, &qword_100643C90, &qword_100530F78);
  v62 = v61 + *(v92 + 36);
  *v62 = v60;
  *(v62 + 8) = v46 & 1;
  v63 = v94;
  sub_100047F38(v61, v94, &qword_100643C98, &qword_100530F80);
  v64 = v98;
  sub_1004DAC9C();
  v65 = swift_getKeyPath();
  v66 = v64 + *(v97 + 36);
  *v66 = v65;
  *(v66 + 8) = 1;
  v67 = v102;
  sub_1004DA95C();
  sub_1003A1C7C();
  sub_1003A1D64(&qword_100643CD0, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
  v68 = v101;
  v69 = v105;
  sub_1004DB3BC();
  (*(v103 + 8))(v67, v69);
  sub_10001074C(v64, &qword_100643C58, &qword_100530F38);
  v70 = sub_1004DB0EC();
  v71 = swift_getKeyPath();
  v72 = (v68 + *(v99 + 36));
  *v72 = v71;
  v72[1] = v70;
  if (sub_1004DACAC())
  {
    v73 = 0.8;
  }

  else
  {
    v73 = 1.0;
  }

  v74 = v96;
  sub_100047F38(v68, v96, &qword_100643C60, &qword_100530F40);
  *(v74 + *(v100 + 36)) = v73;
  v75 = v104;
  sub_100047F38(v74, v104, &qword_100643C68, &unk_100530F48);
  v76 = v95;
  sub_1000108DC(v63, v95, &qword_100643C98, &qword_100530F80);
  v77 = v106;
  sub_1000108DC(v75, v106, &qword_100643C68, &unk_100530F48);
  v78 = v107;
  sub_1000108DC(v76, v107, &qword_100643C98, &qword_100530F80);
  v79 = sub_100004CB8(&qword_100643CD8, &unk_100530FF0);
  sub_1000108DC(v77, v78 + *(v79 + 48), &qword_100643C68, &unk_100530F48);
  sub_10001074C(v75, &qword_100643C68, &unk_100530F48);
  sub_10001074C(v63, &qword_100643C98, &qword_100530F80);
  sub_10001074C(v77, &qword_100643C68, &unk_100530F48);
  return sub_10001074C(v76, &qword_100643C98, &qword_100530F80);
}

uint64_t sub_1003A03F4()
{
  v1 = sub_1004DA74C();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    v6 = sub_1004DDF8C();
    v7 = sub_1004DAECC();
    sub_1004D953C(v6, &_mh_execute_header, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004DA73C();
    swift_getAtKeyPath();
    v8 = sub_10036E0E0(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    LOBYTE(v5) = v10[15];
  }

  return v5 & 1;
}

uint64_t sub_1003A059C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for MaterialyView.Style(319, result, *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003A062C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        v16 = (v15 + 2147483646) & 0x7FFFFFFF;
      }

      else
      {
        v16 = -1;
      }

      if (v16 + 1 >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_1003A07B0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_1003A0A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100004CB8(&qword_10063FF20, &qword_10052C138);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1003A0AD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_100004CB8(&qword_10063FF20, &qword_10052C138);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003A0B7C(uint64_t a1)
{
  sub_1003A1748(319, &qword_100641940, &type metadata for Bool, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1003A0C24(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003A0C24(uint64_t a1)
{
  if (!qword_10063FFA8)
  {
    sub_1003275B4();
    v1 = sub_1004D9EFC();
    if (!v2)
    {
      atomic_store(v1, &qword_10063FFA8);
    }
  }
}

uint64_t sub_1003A0C80(uint64_t *a1)
{
  sub_1004D9D6C();
  sub_1004DA44C();
  sub_1004DA32C();
  sub_1004D9D6C();
  sub_1004DE7CC();
  sub_1004DA37C();
  sub_1004DA32C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1004D9E4C();
  sub_1004DA32C();
  sub_1004DA32C();
  sub_100008DE4(&qword_100643870, &qword_100530D30);
  sub_100042B08(&qword_100643878, &qword_100643870, &qword_100530D30, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  sub_1004D9D6C();
  sub_1004D9D6C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  sub_1004DA32C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata3();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  swift_getWitnessTable();
  sub_1004DA46C();
  sub_1004DA32C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004DA37C();
  return swift_getWitnessTable();
}

unint64_t sub_1003A1084()
{
  result = qword_100643A30;
  if (!qword_100643A30)
  {
    sub_100008DE4(qword_100643890, &qword_100530D78);
    sub_100042B08(&qword_100643A38, &qword_100643880, &qword_100530D68, &protocol conformance descriptor for VStack<A>);
    sub_100042B08(&qword_100643A40, qword_100643A48, &qword_100530E98, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643A30);
  }

  return result;
}

uint64_t sub_1003A1168(uint64_t a1)
{
  result = sub_1004DBDAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003A11F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004DBDAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1003A12B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1004DBDAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003A135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for MaterialyView.Style.Specs.FillColor(319, v4, v5, a4);
  if (v7 <= 0x3F)
  {
    type metadata accessor for MaterialyView.Style.Specs.Stroke(319, v4, v5, v6);
    if (v8 <= 0x3F)
    {
      sub_1003A1748(319, qword_100643B50, &type metadata for LinearGradient, &type metadata accessor for Optional);
      if (v10 <= 0x3F)
      {
        type metadata accessor for MaterialyView.Style.Specs.Shadow(319, v4, v5, v9);
        if (v11 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1003A146C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v7, v8, a4);
  v11 = *(v9 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + *(a3 + 36) + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for MaterialyView.Style.Specs.Shadow(0, v7, v8, v10);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + *(a3 + 44);

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1003A15E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  result = type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v8, v9, a4);
  v12 = *(result - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  else
  {
    v14 = type metadata accessor for MaterialyView.Style.Specs.Shadow(0, v8, v9, v11);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 44);

    return v15(v16, a2, a2, v14);
  }

  return result;
}

void sub_1003A1748(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1003A1798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1003A17DC(uint64_t a1)
{
  type metadata accessor for UIOffset(319);
  if (v1 <= 0x3F)
  {
    sub_1004DBDAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1003A188C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004DBDAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1003A194C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1004DBDAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1003A19F0()
{
  result = qword_100643CA0;
  if (!qword_100643CA0)
  {
    sub_100008DE4(&qword_100643C70, &qword_100530F58);
    sub_1003A1D64(&qword_100643CA8, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643CA0);
  }

  return result;
}

uint64_t sub_1003A1AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a3;
  v15 = *(a5 - 8);
  __chkstk_darwin();
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin();
  v20 = &v26[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v21 + 16))(v20, v23, v22, v18);
  (*(v15 + 16))(v17, a1, a5);

  return sub_10039ED54(v20, v17, a2, v27, v24, a4, a5, &type metadata for EmptyView, a8, a6, a7, &protocol witness table for EmptyView);
}

unint64_t sub_1003A1C7C()
{
  result = qword_100643CB8;
  if (!qword_100643CB8)
  {
    sub_100008DE4(&qword_100643C58, &qword_100530F38);
    sub_1003A1D64(&qword_100643CA8, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_100042B08(&qword_100643CC0, &qword_100643CC8, &qword_100530FE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643CB8);
  }

  return result;
}

uint64_t sub_1003A1D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id NowPlaying.TrackTitleStackView.init()()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_1003A5E70(v2, &v0[v1], type metadata accessor for NowPlaying.TrackMetadata);
  v3 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v27 = v6;
  *(&v27 + 1) = v8;
  LOBYTE(v28) = 0;
  BYTE8(v28) = 0;
  *&v29 = 0x4040000000000000;
  *(&v29 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v30 = leading;
  *(&v30 + 1) = bottom;
  *&v31 = trailing;
  v32 = 0uLL;
  *(&v31 + 1) = 1;
  v33[0] = v6;
  v33[1] = v8;
  v34 = 0;
  v35 = 0;
  v36 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v38 = leading;
  v39 = bottom;
  v40 = trailing;
  v42 = 0;
  v43 = 0;
  v41 = 1;
  sub_1002CD9A0(&v27, v50);
  sub_1002CD9FC(v33);
  v12 = v30;
  *(v4 + 2) = v29;
  *(v4 + 3) = v12;
  v13 = v32;
  *(v4 + 4) = v31;
  *(v4 + 5) = v13;
  v14 = v28;
  *v4 = v27;
  *(v4 + 1) = v14;
  v15 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  v16 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v17 = [v7 secondaryLabelColor];
  *&v44 = v16;
  *(&v44 + 1) = v17;
  LOBYTE(v45) = 0;
  BYTE8(v45) = 0;
  *&v46 = 0x4040000000000000;
  *(&v46 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v47 = leading;
  *(&v47 + 1) = bottom;
  *&v48 = trailing;
  v49 = 0uLL;
  *(&v48 + 1) = 1;
  v50[0] = v16;
  v50[1] = v17;
  v51 = 0;
  v52 = 0;
  v53 = 0x4040000000000000;
  v54 = NSDirectionalEdgeInsetsZero.top;
  v55 = leading;
  v56 = bottom;
  v57 = trailing;
  v59 = 0;
  v60 = 0;
  v58 = 1;
  sub_1002CD9A0(&v44, v26);
  sub_1002CD9FC(v50);
  v18 = v47;
  *(v15 + 2) = v46;
  *(v15 + 3) = v18;
  v19 = v49;
  *(v15 + 4) = v48;
  *(v15 + 5) = v19;
  v20 = v45;
  *v15 = v44;
  *(v15 + 1) = v20;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = 0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v21 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = *&sub_1003A58EC()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  v23 = *&sub_1003A5C74()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v22 addCoordinatedMarqueeView:v23];

  return v21;
}

char *NowPlaying.TrackTitleStackView.init(titleAttributes:subtitleAttributes:)(_OWORD *a1, _OWORD *a2)
{
  v5 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v6 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_1003A5E70(v6, &v2[v5], type metadata accessor for NowPlaying.TrackMetadata);
  v7 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v50 = v10;
  *(&v50 + 1) = v12;
  LOBYTE(v51) = 0;
  BYTE8(v51) = 0;
  *&v52 = 0x4040000000000000;
  *(&v52 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v53 = leading;
  *(&v53 + 1) = bottom;
  *&v54 = trailing;
  v55 = 0uLL;
  *(&v54 + 1) = 1;
  v56[0] = v10;
  v56[1] = v12;
  v57 = 0;
  v58 = 0;
  v59 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v61 = leading;
  v62 = bottom;
  v63 = trailing;
  v65 = 0;
  v66 = 0;
  v64 = 1;
  sub_1002CD9A0(&v50, v85);
  sub_1002CD9FC(v56);
  v16 = v53;
  *(v8 + 2) = v52;
  *(v8 + 3) = v16;
  v17 = v55;
  *(v8 + 4) = v54;
  *(v8 + 5) = v17;
  v18 = v51;
  *v8 = v50;
  *(v8 + 1) = v18;
  v19 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  v20 = [v9 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v21 = [v11 secondaryLabelColor];
  *&v67 = v20;
  *(&v67 + 1) = v21;
  LOBYTE(v68) = 0;
  BYTE8(v68) = 0;
  *&v69 = 0x4040000000000000;
  *(&v69 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v70 = leading;
  *(&v70 + 1) = bottom;
  *&v71 = trailing;
  v72 = 0uLL;
  *(&v71 + 1) = 1;
  v73[0] = v20;
  v73[1] = v21;
  v74 = 0;
  v75 = 0;
  v76 = 0x4040000000000000;
  v77 = NSDirectionalEdgeInsetsZero.top;
  v78 = leading;
  v79 = bottom;
  v80 = trailing;
  v83 = 0;
  v81 = 1;
  v82 = 0;
  sub_1002CD9A0(&v67, v85);
  sub_1002CD9FC(v73);
  v22 = v70;
  *(v19 + 2) = v69;
  *(v19 + 3) = v22;
  v23 = v72;
  *(v19 + 4) = v71;
  *(v19 + 5) = v23;
  v24 = v68;
  *v19 = v67;
  *(v19 + 1) = v24;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = 0;
  v49.receiver = v2;
  v49.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v25 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v26 = (v25 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  swift_beginAccess();
  v27 = v26[1];
  v84[0] = *v26;
  v84[1] = v27;
  v28 = v26[2];
  v29 = v26[3];
  v30 = v26[5];
  v84[4] = v26[4];
  v84[5] = v30;
  v84[2] = v28;
  v84[3] = v29;
  v31 = a1[5];
  v33 = a1[2];
  v32 = a1[3];
  v26[4] = a1[4];
  v26[5] = v31;
  v26[2] = v33;
  v26[3] = v32;
  v34 = a1[1];
  *v26 = *a1;
  v26[1] = v34;
  v35 = v25;
  sub_1002CD9A0(a1, v85);
  sub_1002CD9FC(v84);
  v36 = (v35 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  swift_beginAccess();
  v37 = v36[1];
  v85[0] = *v36;
  v85[1] = v37;
  v38 = v36[2];
  v39 = v36[3];
  v40 = v36[5];
  v85[4] = v36[4];
  v85[5] = v40;
  v85[2] = v38;
  v85[3] = v39;
  v41 = a2[5];
  v43 = a2[2];
  v42 = a2[3];
  v36[4] = a2[4];
  v36[5] = v41;
  v36[2] = v43;
  v36[3] = v42;
  v44 = a2[1];
  *v36 = *a2;
  v36[1] = v44;
  sub_1002CD9A0(a2, &v48);
  sub_1002CD9FC(v85);
  v45 = *&sub_1003A58EC()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  v46 = *&sub_1003A5C74()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v45 addCoordinatedMarqueeView:v46];

  sub_1002CD9FC(a2);
  sub_1002CD9FC(a1);

  return v35;
}

uint64_t NowPlaying.TrackTitleStackView.setMetadata(_:)(uint64_t a1)
{
  v2 = v1;
  sub_100004CB8(&qword_100643D10, &qword_100531000);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for NowPlaying.TrackMetadata(0) - 8;
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A5E70(a1, v10, type metadata accessor for NowPlaying.TrackMetadata);
  v11 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_1003A5E0C(v10, v2 + v11);
  swift_endAccess();
  v12 = sub_1003A58EC();
  sub_1003A5E70(a1 + *(v8 + 32), v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v13 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000108DC(&v12[v14], v5, &qword_100643D10, &qword_100531000);
  swift_beginAccess();
  sub_1003A5ED8(v7, &v12[v14]);
  swift_endAccess();
  sub_1003AA68C(v5);

  sub_10001074C(v5, &qword_100643D10, &qword_100531000);
  sub_10001074C(v7, &qword_100643D10, &qword_100531000);
  v15 = sub_1003A5C74();
  sub_1000108DC(a1 + *(v8 + 36), v7, &qword_100643D10, &qword_100531000);
  v16 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000108DC(&v15[v16], v5, &qword_100643D10, &qword_100531000);
  swift_beginAccess();
  sub_1003A5ED8(v7, &v15[v16]);
  swift_endAccess();
  sub_1003AA68C(v5);

  sub_10001074C(v5, &qword_100643D10, &qword_100531000);
  return sub_10001074C(v7, &qword_100643D10, &qword_100531000);
}

uint64_t sub_1003A2840(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A5E70(a1, v5, type metadata accessor for NowPlaying.TrackMetadata);
  v6 = *a2;
  v7 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_1003A5E0C(v5, v6 + v7);
  return swift_endAccess();
}

uint64_t NowPlaying.TrackTitleStackView.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  return sub_1003A5E70(v1 + v3, a1, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackTitleStackView.debugIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double NowPlaying.TrackTitleStackView.debugIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.init(isEnabled:contentGap:fadeInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  return result;
}

double NowPlaying.TrackTitleStackView.Label.Attributes.init(font:color:isHidden:marquee:action:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a4[1];
  *&v15[7] = *a4;
  *&v15[23] = v9;
  *&v15[39] = a4[2];
  *&v17[1] = *v15;
  *&v17[17] = *&v15[16];
  *&v17[33] = *&v15[32];
  *&v16 = a1;
  *(&v16 + 1) = a2;
  v17[0] = a3;
  *&v17[48] = *&v15[47];
  *&v17[56] = a5;
  *&v18 = a6;
  *(&v18 + 1) = a7;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  *&v23[15] = *&v15[47];
  v24 = a5;
  *v23 = *&v15[32];
  v22 = *&v15[16];
  v21 = *v15;
  v25 = a6;
  v26 = a7;
  sub_1002CD9A0(&v16, v14);
  sub_1002CD9FC(v19);
  v10 = *&v17[32];
  a8[2] = *&v17[16];
  a8[3] = v10;
  v11 = v18;
  a8[4] = *&v17[48];
  a8[5] = v11;
  result = *&v16;
  v13 = *v17;
  *a8 = v16;
  a8[1] = v13;
  return result;
}

id sub_1003A2B9C()
{
  sub_100004CB8(&qword_100643D20, &qword_100531008);
  __chkstk_darwin();
  v60 = &v58 - v1;
  v2 = v0;
  v65 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v3)
  {
    v4 = *(*v3 + 424);
    v5 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
    v6 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

    v4(&v75, v2, v5, v6);

    if (v75)
    {
      v7 = v76;
      v8 = v77;
      v9 = sub_1003ACED8(v75, v76);

      sub_1003AC254(v7, v8);
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
      swift_beginAccess();
      if (v10)
      {
        v12 = 0;
        v63 = v9 & 0xFFFFFFFFFFFFFF8;
        v64 = v9 & 0xC000000000000001;
        v61 = v10;
        v62 = v9;
        do
        {
          if (v64)
          {
            v14 = sub_1004DEB2C();
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_21:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v63 + 16))
            {
              __break(1u);
LABEL_25:
              v10 = sub_1004DED5C();
              goto LABEL_5;
            }

            v14 = *(v9 + 8 * v12 + 32);

            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_21;
            }
          }

          v16 = *(v11 + 5);
          v73 = *(v11 + 4);
          v74 = v16;
          v17 = *(v11 + 3);
          v71 = *(v11 + 2);
          v72 = v17;
          v18 = *(v11 + 1);
          v69 = *v11;
          v70 = v18;
          v19 = v14[1];
          v20 = v14[2];
          v21 = v14[3];
          v22 = v14[4];
          v23 = v14[6];
          v84[4] = v14[5];
          v84[5] = v23;
          v84[2] = v21;
          v84[3] = v22;
          v84[0] = v19;
          v84[1] = v20;
          v24 = v14[2];
          v78 = v14[1];
          v79 = v24;
          v25 = v14[3];
          v26 = v14[4];
          v27 = v14[6];
          v82 = v14[5];
          v83 = v27;
          v80 = v25;
          v81 = v26;
          memmove(v14 + 1, v11, 0x60uLL);
          sub_1002CD9A0(&v69, v68);
          sub_1002CD9A0(&v69, v68);
          sub_1002CD9A0(v84, v68);
          sub_1002CD9FC(&v78);
          sub_1003A98C8(v84);
          sub_1002CD9FC(v84);
          sub_1002CD9FC(&v69);
          v66 = v11[24];
          v28 = *&v2[v65];
          if (v28)
          {
            v29 = v2;
            v30 = *(*v28 + 256);

            v32 = v30(v31);

            if (v32 == 2)
            {
              v33 = *&v29[v65];
              if (v33)
              {
                v59 = *(*v33 + 208);

                v35 = v60;
                v59(v34);
                v2 = v29;

                v36 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v37 = (*(*(v36 - 8) + 48))(v35, 1, v36) == 1;
                sub_10001074C(v35, &qword_100643D20, &qword_100531008);
                v66 &= v37;
              }

              else
              {
                v2 = v29;
                v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v39 = v60;
                (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
                sub_10001074C(v39, &qword_100643D20, &qword_100531008);
              }
            }

            else
            {
              v2 = v29;
            }

            v10 = v61;
            v9 = v62;
          }

          else
          {
          }

          v13 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
          [v13 setMarqueeEnabled:v66 withOptions:1];

          ++v12;
        }

        while (v15 != v10);
      }
    }
  }

  v40 = v2;
  v41 = sub_1003A58EC();
  v42 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 5);
  v68[4] = *(v42 + 4);
  v68[5] = v43;
  v44 = *(v42 + 3);
  v68[2] = *(v42 + 2);
  v68[3] = v44;
  v45 = *(v42 + 1);
  v68[0] = *v42;
  v68[1] = v45;
  v46 = *(v41 + 1);
  v47 = *(v41 + 2);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  v50 = *(v41 + 6);
  v82 = *(v41 + 5);
  v83 = v50;
  v80 = v48;
  v81 = v49;
  v78 = v46;
  v79 = v47;
  v51 = *(v41 + 2);
  v69 = *(v41 + 1);
  v70 = v51;
  v52 = *(v41 + 3);
  v53 = *(v41 + 4);
  v54 = *(v41 + 6);
  v73 = *(v41 + 5);
  v74 = v54;
  v71 = v52;
  v72 = v53;
  memmove(v41 + 16, v42, 0x60uLL);
  sub_1002CD9A0(v68, v67);
  sub_1002CD9A0(v68, v67);
  sub_1002CD9A0(&v78, v67);
  sub_1002CD9FC(&v69);
  sub_1003A98C8(&v78);
  sub_1002CD9FC(&v78);
  sub_1002CD9FC(v68);

  v55 = *(v42 + 40);
  v67[0] = *(v42 + 24);
  v67[1] = v55;
  v67[2] = *(v42 + 56);

  sub_1003A8778(v56, v67);

  return [v40 setNeedsLayout];
}

uint64_t (*NowPlaying.TrackTitleStackView.titleAttributes.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003A320C;
}

id sub_1003A3224()
{
  sub_100004CB8(&qword_100643D20, &qword_100531008);
  __chkstk_darwin();
  v60 = &v58 - v1;
  v2 = v0;
  v65 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v3)
  {
    v4 = *(*v3 + 424);
    v5 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
    v6 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

    v4(v75, v2, v5, v6);

    if (v75[0])
    {
      v7 = v76;
      v8 = v77;
      v9 = sub_1003ACFE4(v75[1], v76, v77);

      sub_1003AC254(v7, v8);
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
      swift_beginAccess();
      if (v10)
      {
        v12 = 0;
        v63 = v9 & 0xFFFFFFFFFFFFFF8;
        v64 = v9 & 0xC000000000000001;
        v61 = v10;
        v62 = v9;
        do
        {
          if (v64)
          {
            v14 = sub_1004DEB2C();
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_21:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v63 + 16))
            {
              __break(1u);
LABEL_25:
              v10 = sub_1004DED5C();
              goto LABEL_5;
            }

            v14 = *(v9 + 8 * v12 + 32);

            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_21;
            }
          }

          v16 = *(v11 + 5);
          v73 = *(v11 + 4);
          v74 = v16;
          v17 = *(v11 + 3);
          v71 = *(v11 + 2);
          v72 = v17;
          v18 = *(v11 + 1);
          v69 = *v11;
          v70 = v18;
          v19 = v14[1];
          v20 = v14[2];
          v21 = v14[3];
          v22 = v14[4];
          v23 = v14[6];
          v84[4] = v14[5];
          v84[5] = v23;
          v84[2] = v21;
          v84[3] = v22;
          v84[0] = v19;
          v84[1] = v20;
          v24 = v14[2];
          v78 = v14[1];
          v79 = v24;
          v25 = v14[3];
          v26 = v14[4];
          v27 = v14[6];
          v82 = v14[5];
          v83 = v27;
          v80 = v25;
          v81 = v26;
          memmove(v14 + 1, v11, 0x60uLL);
          sub_1002CD9A0(&v69, v68);
          sub_1002CD9A0(&v69, v68);
          sub_1002CD9A0(v84, v68);
          sub_1002CD9FC(&v78);
          sub_1003A98C8(v84);
          sub_1002CD9FC(v84);
          sub_1002CD9FC(&v69);
          v66 = v11[24];
          v28 = *&v2[v65];
          if (v28)
          {
            v29 = v2;
            v30 = *(*v28 + 256);

            v32 = v30(v31);

            if (v32 == 2)
            {
              v33 = *&v29[v65];
              if (v33)
              {
                v59 = *(*v33 + 208);

                v35 = v60;
                v59(v34);
                v2 = v29;

                v36 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v37 = (*(*(v36 - 8) + 48))(v35, 1, v36) == 1;
                sub_10001074C(v35, &qword_100643D20, &qword_100531008);
                v66 &= v37;
              }

              else
              {
                v2 = v29;
                v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v39 = v60;
                (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
                sub_10001074C(v39, &qword_100643D20, &qword_100531008);
              }
            }

            else
            {
              v2 = v29;
            }

            v10 = v61;
            v9 = v62;
          }

          else
          {
          }

          v13 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
          [v13 setMarqueeEnabled:v66 withOptions:1];

          ++v12;
        }

        while (v15 != v10);
      }
    }
  }

  v40 = v2;
  v41 = sub_1003A5C74();
  v42 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 5);
  v68[4] = *(v42 + 4);
  v68[5] = v43;
  v44 = *(v42 + 3);
  v68[2] = *(v42 + 2);
  v68[3] = v44;
  v45 = *(v42 + 1);
  v68[0] = *v42;
  v68[1] = v45;
  v46 = *(v41 + 1);
  v47 = *(v41 + 2);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  v50 = *(v41 + 6);
  v82 = *(v41 + 5);
  v83 = v50;
  v80 = v48;
  v81 = v49;
  v78 = v46;
  v79 = v47;
  v51 = *(v41 + 2);
  v69 = *(v41 + 1);
  v70 = v51;
  v52 = *(v41 + 3);
  v53 = *(v41 + 4);
  v54 = *(v41 + 6);
  v73 = *(v41 + 5);
  v74 = v54;
  v71 = v52;
  v72 = v53;
  memmove(v41 + 16, v42, 0x60uLL);
  sub_1002CD9A0(v68, v67);
  sub_1002CD9A0(v68, v67);
  sub_1002CD9A0(&v78, v67);
  sub_1002CD9FC(&v69);
  sub_1003A98C8(&v78);
  sub_1002CD9FC(&v78);
  sub_1002CD9FC(v68);

  v55 = *(v42 + 40);
  v67[0] = *(v42 + 24);
  v67[1] = v55;
  v67[2] = *(v42 + 56);

  sub_1003A8778(v56, v67);

  return [v40 setNeedsLayout];
}

double sub_1003A3810@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = v4[2];
  v6 = v4[4];
  v7 = v4[5];
  v18 = v4[3];
  v19 = v6;
  v20 = v7;
  v8 = v4[1];
  v15 = *v4;
  v16 = v8;
  v17 = v5;
  sub_1002CD9A0(&v15, v14);
  v9 = v18;
  v10 = v19;
  v11 = v16;
  a2[2] = v17;
  a2[3] = v9;
  v12 = v20;
  a2[4] = v10;
  a2[5] = v12;
  result = *&v15;
  *a2 = v15;
  a2[1] = v11;
  return result;
}

uint64_t sub_1003A38C4(_OWORD *a1, void *a2, void (*a3)(void))
{
  v6 = v3 + *a2;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 72);
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  v12 = a1[3];
  *(v6 + 32) = a1[2];
  *(v6 + 48) = v12;
  v13 = a1[5];
  *(v6 + 64) = a1[4];
  *(v6 + 80) = v13;
  v14 = a1[1];
  *v6 = *a1;
  *(v6 + 16) = v14;
  sub_1002CD9A0(a1, v16);

  sub_1003AA98C(v9, v10, v11);
  a3();
  return sub_1002CD9FC(a1);
}

uint64_t (*NowPlaying.TrackTitleStackView.subtitleAttributes.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003A39E8;
}

uint64_t sub_1003A3A00(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_1003A3A44()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView;
  v2 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor:v9];

    [v0 addSubview:v8];
    v10 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

Swift::Void __swiftcall NowPlaying.TrackTitleStackView.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v85.receiver = v0;
  v85.super_class = v2;
  objc_msgSendSuper2(&v85, "layoutSubviews");
  v3 = sub_1003A58EC();
  v4 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 3);
  v86[2] = *(v4 + 2);
  v86[3] = v5;
  v6 = *(v4 + 5);
  v86[4] = *(v4 + 4);
  v86[5] = v6;
  v7 = *(v4 + 1);
  v86[0] = *v4;
  v86[1] = v7;
  if (v7 == 1)
  {

    v8 = 0.0;
  }

  else
  {
    sub_1002CD9A0(v86, v79);
    v87.origin.x = 0.0;
    v87.origin.y = 0.0;
    v87.size.width = 0.0;
    v87.size.height = 0.0;
    if (CGRectGetHeight(v87) <= 0.0 || (v88.origin.x = 0.0, v88.origin.y = 0.0, v88.size.width = 0.0, v88.size.height = 0.0, CGRectGetHeight(v88) == 1.79769313e308))
    {
      [*&v3[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v3[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    v10 = v9;
    sub_1004DDF1C();
    v8 = v10 + v11;
    if (v10 + v11 > 0.0)
    {
      [*&v86[0] ascender];
      v8 = v8 + v12;
    }

    if (v8 <= 0.0)
    {
      sub_1002CD9FC(v86);
    }

    else
    {
      [*&v86[0] descender];
      v14 = v13;
      sub_1002CD9FC(v86);

      v8 = v8 - v14;
    }
  }

  v15 = sub_1003A5C74();
  v16 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v17 = *(v16 + 3);
  v81 = *(v16 + 2);
  v82 = v17;
  v18 = *(v16 + 5);
  v83 = *(v16 + 4);
  v84 = v18;
  v19 = *(v16 + 1);
  *v79 = *v16;
  v80 = v19;
  if (v19)
  {

    v20 = 0.0;
  }

  else
  {
    sub_1002CD9A0(v79, v73);
    v89.origin.x = 0.0;
    v89.origin.y = 0.0;
    v89.size.width = 0.0;
    v89.size.height = 0.0;
    if (CGRectGetHeight(v89) <= 0.0 || (v90.origin.x = 0.0, v90.origin.y = 0.0, v90.size.width = 0.0, v90.size.height = 0.0, CGRectGetHeight(v90) == 1.79769313e308))
    {
      [*&v15[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v15[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    v22 = v21;
    sub_1004DDF1C();
    v20 = v22 + v23;
    if (v22 + v23 > 0.0)
    {
      [v79[0] ascender];
      v20 = v20 + v24;
    }

    if (v20 <= 0.0)
    {
      sub_1002CD9FC(v79);
    }

    else
    {
      [v79[0] descender];
      v26 = v25;
      sub_1002CD9FC(v79);

      v20 = v20 - v26;
    }
  }

  [v1 bounds];
  Width = CGRectGetWidth(v91);
  Height = v8 + v20;
  v29 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v30 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v30)
  {
    v31 = *(*v30 + 424);
    v32 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

    v31(v73, v1, v2, v32);

    if (v73[0])
    {
      v33 = v74;
      if (!v74)
      {

        goto LABEL_51;
      }

      v34 = *(&v74 + 1);
      v35 = *(v4 + 3);
      v75 = *(v4 + 2);
      v76 = v35;
      v36 = *(v4 + 5);
      v77 = *(v4 + 4);
      v78 = v36;
      v37 = *(v4 + 1);
      *v73 = *v4;
      v74 = v37;
      if (v37)
      {

        v38 = 0.0;
        if (!v34)
        {
          goto LABEL_49;
        }
      }

      else
      {
        sub_1003AC210(v33);
        sub_1002CD9A0(v73, v67);
        v92.origin.x = 0.0;
        v92.origin.y = 0.0;
        v92.size.width = 0.0;
        v92.size.height = 0.0;
        if (CGRectGetHeight(v92) <= 0.0 || (v93.origin.x = 0.0, v93.origin.y = 0.0, v93.size.width = 0.0, v93.size.height = 0.0, CGRectGetHeight(v93) == 1.79769313e308))
        {
          [*(v33 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
        }

        else
        {
          [*(v33 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{0.0, 0.0}];
        }

        v40 = v39;
        sub_1004DDF1C();
        v38 = v40 + v41;
        if (v40 + v41 > 0.0)
        {
          [v73[0] ascender];
          v38 = v38 + v42;
        }

        if (v38 <= 0.0)
        {
          sub_1002CD9FC(v73);
          if (!v34)
          {
            goto LABEL_49;
          }
        }

        else
        {
          [v73[0] descender];
          v44 = v43;
          sub_1002CD9FC(v73);
          v38 = v38 - v44;
          if (!v34)
          {
LABEL_49:
            v96.origin.x = 0.0;
            v96.origin.y = 0.0;
            v96.size.width = Width;
            v96.size.height = Height;
            Height = CGRectGetHeight(v96);

            sub_1003AC254(v33, v34);
            if (Height <= v38 + v20)
            {
              Height = v38 + v20;
            }

            goto LABEL_51;
          }
        }
      }

      v45 = *(v16 + 3);
      v69 = *(v16 + 2);
      v70 = v45;
      v46 = *(v16 + 5);
      v71 = *(v16 + 4);
      v72 = v46;
      v47 = *(v16 + 1);
      *v67 = *v16;
      v68 = v47;
      if (v47)
      {
        v20 = 0.0;
      }

      else
      {

        sub_1002CD9A0(v67, &v66);
        v94.origin.x = 0.0;
        v94.origin.y = 0.0;
        v94.size.width = 0.0;
        v94.size.height = 0.0;
        if (CGRectGetHeight(v94) <= 0.0 || (v95.origin.x = 0.0, v95.origin.y = 0.0, v95.size.width = 0.0, v95.size.height = 0.0, CGRectGetHeight(v95) == 1.79769313e308))
        {
          [*(v34 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
        }

        else
        {
          [*(v34 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{0.0, 0.0}];
        }

        v49 = v48;
        sub_1004DDF1C();
        v20 = v49 + v50;
        if (v49 + v50 > 0.0)
        {
          [v67[0] ascender];
          v20 = v20 + v51;
        }

        if (v20 <= 0.0)
        {
          sub_1002CD9FC(v67);
        }

        else
        {
          [v67[0] descender];
          v53 = v52;
          sub_1002CD9FC(v67);

          v20 = v20 - v53;
        }
      }

      goto LABEL_49;
    }
  }

LABEL_51:
  sub_1004DE3BC(0.0, 0.0, Width, Height);
  v54 = sub_1003A3A44();
  *v73 = 0u;
  v74 = 0u;
  LOBYTE(v75) = 1;
  sub_1004DE3DC();
  [v54 setFrame:?];

  v55 = *&v1[v29];
  if (v55)
  {

    [v1 bounds];
    sub_1003A438C(v55, v56, v57, v58, v59);
  }

  else
  {
    v60 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
    v61 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];

    [v1 bounds];
    sub_1003A4DD8(v60, v61, v62, v63, v64, v65, UIOffsetZero.horizontal, UIOffsetZero.vertical);
  }

  sub_1003A89A8();
}

void sub_1003A438C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  Gliss.Transition<>.outputs(in:)(&v79, a2, a3, a4, a5);
  v8 = v79;
  v9 = v80;
  v11 = v81;
  v10 = *&v82;
  v13 = v83;
  v12 = v84;
  v15 = v85;
  v14 = v86;
  v77 = v88;
  v78 = *&v87;
  v76 = v89;
  v65 = v91;
  v66 = v90;
  v63 = v93;
  v64 = v92;
  v61 = v95;
  v62 = v94;
  v59 = v97;
  v60 = v96;
  v49 = v99;
  v50 = v98;
  v51 = v100;
  v74 = v102;
  v75 = v101;
  v72 = v104;
  v73 = v103;
  v70 = v106;
  v71 = v105;
  v68 = v108;
  v69 = v107;
  v57 = v110;
  v58 = v109;
  v55 = v112;
  v56 = v111;
  v53 = v114;
  v54 = v113;
  v52 = v115;
  v67 = v116;
  v16 = *(*a1 + 424);
  v17 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v18 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
  v16(&v79, v6, v17, v18);
  v19 = *&v79;
  if (v79 != 0.0)
  {
    v21 = *&v80;
    v20 = *&v81;
    v22 = v82;

    sub_1003AC210(v20);
    [v6 bounds];
    sub_1003A4DD8(v19, v21, v23, v24, v25, v26, v8, v9);
    v27 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
    [*(v19 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v11];
    if (v21)
    {
      [*(v21 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v11];
    }

    v28 = *(v19 + v27);
    v79 = v10;
    v80 = v13;
    v81 = v12;
    v82 = v15;
    v83 = *&v14;
    v84 = v78;
    v85 = v77;
    v86 = v76;
    v87 = v66;
    v88 = v65;
    v89 = v64;
    v90 = v63;
    v91 = v62;
    v92 = v61;
    v93 = v60;
    v94 = v59;
    [v28 setTransform3D:{&v79, *&v10, *&v13, *&v12, v15, v14}];
    if (v21)
    {
      v29 = *(v21 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v79 = v44;
      v80 = v45;
      v81 = v46;
      v82 = v47;
      v83 = v48;
      v84 = v78;
      v85 = v77;
      v86 = v76;
      v87 = v66;
      v88 = v65;
      v89 = v64;
      v90 = v63;
      v91 = v62;
      v92 = v61;
      v93 = v60;
      v94 = v59;
      [v29 setTransform3D:&v79];

      sub_1003AC210(v20);
      sub_1003AE5B8(v19, v21, v20);

      v30 = sub_1003AC254(v20, v22);
      if (!v20)
      {
        v31 = v19;
        v32 = v21;
LABEL_14:
        v42 = 0;
        v43 = v22;
LABEL_15:
        sub_1003AE618(v31, v32, v42, v43);
        return;
      }
    }

    else
    {

      sub_1003AC210(v20);
      sub_1003AE5B8(v19, 0, v20);

      v30 = sub_1003AC254(v20, v22);
      if (!v20)
      {
        v31 = v19;
        v32 = 0;
        goto LABEL_14;
      }
    }

    [v6 bounds];
    sub_1003A4DD8(v20, v22, v33, v34, v35, v36, v50, v49);
    v37 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
    [*(v20 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v51];
    v38 = v75;
    if (v22)
    {
      [*(v22 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v51];
      v38 = v75;
    }

    v39 = *(v20 + v37);
    v79 = v38;
    v80 = v74;
    v81 = v73;
    v82 = v72;
    v83 = v71;
    v84 = v70;
    v85 = v69;
    v86 = v68;
    v87 = v58;
    v88 = v57;
    v89 = v56;
    v90 = v55;
    v91 = v54;
    v92 = v53;
    v93 = v52;
    v94 = v67;
    v40 = v38;
    [v39 setTransform3D:&v79];
    if (v22)
    {
      v41 = *(v22 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v79 = v40;
      v80 = v74;
      v81 = v73;
      v82 = v72;
      v83 = v71;
      v84 = v70;
      v85 = v69;
      v86 = v68;
      v87 = v58;
      v88 = v57;
      v89 = v56;
      v90 = v55;
      v91 = v54;
      v92 = v53;
      v93 = v52;
      v94 = v67;
      [v41 setTransform3D:&v79];
      sub_1003AE618(v19, v21, v20, v22);

      return;
    }

    v31 = v19;
    v32 = v21;
    v42 = v20;
    v43 = 0;
    goto LABEL_15;
  }
}

__n128 Gliss.Transition<>.outputs(in:)@<Q0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_100004CB8(&qword_100643D20, &qword_100531008);
  v11 = __chkstk_darwin();
  v13 = &v56 - v12;
  v14 = *(*v5 + 232);
  v15 = v14(v11);
  v16 = (v14)();
  if (v16 == 2)
  {
    v17 = 1.0 - v15;
    horizontal = UIOffsetZero.horizontal;
    vertical = UIOffsetZero.vertical;
  }

  else
  {
    v20 = v16;
    v76.origin.x = a2;
    v76.origin.y = a3;
    v76.size.width = a4;
    v76.size.height = a5;
    v21 = v15 * CGRectGetWidth(v76);
    v17 = 1.0;
    vertical = 0.0;
    if (v20)
    {
      horizontal = v21;
    }

    else
    {
      horizontal = -v21;
    }
  }

  v22 = *&CATransform3DIdentity.m41;
  v71 = *&CATransform3DIdentity.m43;
  v70 = v22;
  v23 = *&CATransform3DIdentity.m31;
  v69 = *&CATransform3DIdentity.m33;
  v68 = v23;
  v24 = *&CATransform3DIdentity.m21;
  v67 = *&CATransform3DIdentity.m23;
  v66 = v24;
  v25 = *&CATransform3DIdentity.m11;
  v65 = *&CATransform3DIdentity.m13;
  v64 = v25;
  v26 = (*v5 + 432);
  v27 = *v26;
  v28 = (*v26)();
  v29 = v64;
  v30 = v65;
  v31 = v66;
  v32 = v67;
  v33 = v68;
  v34 = v69;
  v35 = v70;
  v36 = v71;
  if (v73 != 2)
  {
    (*(*v5 + 208))(v28, v64, v65, v66, v67, v68, v69, v70, v71);
    v37 = type metadata accessor for NowPlaying.TrackMetadata(0);
    v38 = (*(*(v37 - 8) + 48))(v13, 1, v37);
    v28 = sub_10001074C(v13, &qword_100643D20, &qword_100531008);
    v29 = v64;
    v30 = v65;
    v31 = v66;
    v32 = v67;
    v33 = v68;
    v34 = v69;
    v35 = v70;
    v36 = v71;
    if (v38 == 1)
    {
      v28 = CATransform3DMakeScale(&v72, v15 * 0.1 + 1.0, v15 * 0.1 + 1.0, 1.0);
      v30 = *&v72.m13;
      v29 = *&v72.m11;
      v32 = *&v72.m23;
      v31 = *&v72.m21;
      v34 = *&v72.m33;
      v33 = *&v72.m31;
      v35 = *&v72.m41;
      v36 = *&v72.m43;
    }
  }

  v56 = v36;
  v57 = v35;
  v58 = v34;
  v59 = v33;
  v60 = v32;
  v61 = v31;
  v62 = v30;
  v63 = v29;
  v39 = (v14)(v28);
  if (v39 == 2)
  {
    v41 = UIOffsetZero.horizontal;
    v40 = UIOffsetZero.vertical;
    v42 = v15;
  }

  else
  {
    v43 = v39;
    v77.origin.x = a2;
    v77.origin.y = a3;
    v77.size.width = a4;
    v77.size.height = a5;
    Width = CGRectGetWidth(v77);
    v78.size.height = a5;
    v45 = horizontal;
    v46 = vertical;
    v47 = v17;
    v48 = Width;
    v78.origin.x = a2;
    v78.origin.y = a3;
    v78.size.width = a4;
    v49 = v15 * CGRectGetWidth(v78);
    v50 = v49 - v48;
    v42 = 1.0;
    v40 = 0.0;
    v51 = v48 - v49;
    v17 = v47;
    vertical = v46;
    horizontal = v45;
    if (v43)
    {
      v41 = v50;
    }

    else
    {
      v41 = v51;
    }
  }

  (v27)(&v74);
  if (v75 != 2 && (v75 & 0x100) != 0)
  {
    CATransform3DMakeScale(&v72, (v15 + -1.0) * 0.1 + 1.0, (v15 + -1.0) * 0.1 + 1.0, 1.0);
    v64 = *&v72.m11;
    v65 = *&v72.m13;
    v66 = *&v72.m21;
    v67 = *&v72.m23;
    v68 = *&v72.m31;
    v69 = *&v72.m33;
    v70 = *&v72.m41;
    v71 = *&v72.m43;
  }

  *a1 = horizontal;
  *(a1 + 8) = vertical;
  *(a1 + 16) = v17;
  *(a1 + 40) = v62;
  *(a1 + 24) = v63;
  *(a1 + 72) = v60;
  *(a1 + 56) = v61;
  *(a1 + 104) = v58;
  *(a1 + 88) = v59;
  *(a1 + 136) = v56;
  *(a1 + 120) = v57;
  *(a1 + 152) = v41;
  *(a1 + 160) = v40;
  *(a1 + 168) = v42;
  v52 = v65;
  *(a1 + 176) = v64;
  *(a1 + 192) = v52;
  v53 = v67;
  *(a1 + 208) = v66;
  *(a1 + 224) = v53;
  v54 = v69;
  *(a1 + 240) = v68;
  *(a1 + 256) = v54;
  result = v71;
  *(a1 + 272) = v70;
  *(a1 + 288) = result;
  return result;
}

void sub_1003A4DD8(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v9 = v8;
  v16 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets + 16);
  v17 = &v8[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v18 = *(v17 + 3);
  v88[2] = *(v17 + 2);
  v88[3] = v18;
  v19 = *(v17 + 5);
  v88[4] = *(v17 + 4);
  v88[5] = v19;
  v20 = *(v17 + 1);
  v88[0] = *v17;
  v88[1] = v20;
  if (v20 == 1)
  {
    v76 = 0.0;
  }

  else
  {
    v21 = v16;
    sub_1002CD9A0(v88, &v82);
    v89.origin.x = a3;
    v89.origin.y = a4;
    v89.size.width = a5;
    v89.size.height = a6;
    if (CGRectGetHeight(v89) <= 0.0 || (v90.origin.x = a3, v90.origin.y = a4, v90.size.width = a5, v90.size.height = a6, CGRectGetHeight(v90) == 1.79769313e308))
    {
      [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{a5, a6}];
    }

    v23 = v22;
    sub_1004DDF1C();
    v25 = v24;
    sub_1002CD9FC(v88);
    v76 = v23 + v25;
    v16 = v21;
  }

  v91.origin.x = a3;
  v91.origin.y = a4;
  v91.size.width = a5;
  v91.size.height = a6;
  Width = CGRectGetWidth(v91);
  if (a2)
  {
    top = *(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets);
    v27 = &v9[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v28 = *(v27 + 2);
    v29 = *(v27 + 3);
    v30 = *v27;
    v83 = *(v27 + 1);
    v84 = v28;
    v31 = *(v27 + 4);
    v32 = *(v27 + 5);
    v85 = v29;
    v86 = v31;
    v87 = v32;
    v82 = v30;
    LOBYTE(v27) = v83;

    v33 = 0.0;
    if ((v27 & 1) == 0)
    {
      rect = v16;
      sub_1002CD9A0(&v82, v81);
      v92.origin.x = a3;
      v92.origin.y = a4;
      v92.size.width = a5;
      v92.size.height = a6;
      if (CGRectGetHeight(v92) <= 0.0 || (v93.origin.x = a3, v93.origin.y = a4, v93.size.width = a5, v93.size.height = a6, CGRectGetHeight(v93) == 1.79769313e308))
      {
        v34 = top;
        [*(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
      }

      else
      {
        v34 = top;
        [*(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{a5, a6}];
      }

      v36 = v35;
      sub_1004DDF1C();
      v38 = v37;
      sub_1002CD9FC(&v82);
      v33 = v36 + v38;
      v16 = rect;
      top = v34;
    }

    recta = v33;
    v94.origin.x = a3;
    v94.origin.y = a4;
    v94.size.width = a5;
    v94.size.height = a6;
    v78 = CGRectGetWidth(v94);

    v39 = 0.0;
    v77 = 0.0;
  }

  else
  {
    v40 = &v9[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    if (v40[16])
    {
      top = UIEdgeInsetsZero.top;
      v78 = 0.0;
      recta = 0.0;
      v77 = 0.0;
      v39 = 0.0;
    }

    else
    {
      top = *&sub_1003A5C74()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets];

      v41 = *(*&v9[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v77 = UIView.untransformedFrame.getter();
      v78 = v42;
      v39 = v43;
      recta = v44;
    }
  }

  v45 = v16 + top;
  v95.origin.x = a3;
  v95.origin.y = a4;
  v95.size.width = a5;
  v95.size.height = a6;
  v46 = CGRectGetWidth(v95);
  v96.origin.x = 0.0;
  v96.origin.y = 0.0;
  v96.size.width = Width;
  v96.size.height = v76;
  Height = CGRectGetHeight(v96);
  v97.origin.x = v77;
  v97.size.width = v78;
  v97.origin.y = v39;
  v97.size.height = recta;
  v48 = CGRectGetHeight(v97);
  sub_1004DE3BC(0.0, 0.0, v46, Height + v48 - v45);
  v82 = 0u;
  v83 = 0u;
  LOBYTE(v84) = 1;
  sub_1004DE3DC();
  sub_1004DE42C();
  MinY = CGRectGetMinY(v98);
  v99.origin.x = 0.0;
  v99.origin.y = MinY;
  v99.size.width = Width;
  v99.size.height = v76;
  MaxY = CGRectGetMaxY(v99);
  v51 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v52 = sub_1003A3A44();
  [v9 convertRect:v52 toCoordinateSpace:{0.0, MinY, Width, v76}];

  v53 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView;
  v54 = *&v9[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  sub_1004DE3DC();

  sub_1004DE42C();
  UIView.untransformedFrame.setter(v55, v56, v57, v58);
  if (a2)
  {
    [v9 convertRect:*&v9[v53] toCoordinateSpace:{v77, MaxY - v45, v78, recta}];
    v59 = *&v9[v53];
    sub_1004DE3DC();

    sub_1004DE42C();
    UIView.untransformedFrame.setter(v60, v61, v62, v63);
  }

  v64 = [v51 superview];
  if (!v64 || (v65 = v64, v66 = *&v9[v53], sub_100006F10(0, &qword_100644F50, UIView_ptr), v67 = v66, v68 = sub_1004DE5FC(), v65, v67, (v68 & 1) == 0))
  {
    [*&v9[v53] addSubview:v51];
  }

  if (a2)
  {
    v69 = *(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);

    v70 = [v69 superview];
    if (!v70 || (v71 = v70, v72 = *&v9[v53], sub_100006F10(0, &qword_100644F50, UIView_ptr), v73 = v72, v74 = sub_1004DE5FC(), v71, v73, (v74 & 1) == 0))
    {
      [*&v9[v53] addSubview:v69];
    }
  }
}

void NowPlaying.TrackTitleStackView.intrinsicContentSize.getter(uint64_t a1)
{
  v2 = sub_1003A58EC();
  v3 = (v1 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  swift_beginAccess();
  v4 = v3[3];
  v21[2] = v3[2];
  v21[3] = v4;
  v5 = v3[5];
  v21[4] = v3[4];
  v21[5] = v5;
  v6 = v3[1];
  v21[0] = *v3;
  v21[1] = v6;
  if ((v6 & 1) == 0)
  {
    sub_1002CD9A0(v21, &v15);
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = 0.0;
    v22.size.height = 0.0;
    if (CGRectGetHeight(v22) <= 0.0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectGetHeight(v23) == 1.79769313e308))
    {
      [*&v2[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v2[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    sub_1002CD9FC(v21);
  }

  v7 = sub_1003A5C74();
  v8 = (v1 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  swift_beginAccess();
  v9 = v8[2];
  v10 = v8[3];
  v11 = *v8;
  v16 = v8[1];
  v17 = v9;
  v12 = v8[4];
  v13 = v8[5];
  v18 = v10;
  v19 = v12;
  v20 = v13;
  v15 = v11;
  if ((v16 & 1) == 0)
  {
    sub_1002CD9A0(&v15, v14);
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = 0.0;
    v24.size.height = 0.0;
    if (CGRectGetHeight(v24) <= 0.0 || (v25.origin.x = 0.0, v25.origin.y = 0.0, v25.size.width = 0.0, v25.size.height = 0.0, CGRectGetHeight(v25) == 1.79769313e308))
    {
      [*&v7[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v7[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    sub_1002CD9FC(&v15);
  }
}

id sub_1003A5728(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) removeFromSuperview];
  v3 = sub_1003A58EC();
  v4 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v24[4] = *(v4 + 4);
  v24[5] = v5;
  v6 = *(v4 + 3);
  v24[2] = *(v4 + 2);
  v24[3] = v6;
  v7 = *(v4 + 1);
  v24[0] = *v4;
  v24[1] = v7;
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *(v3 + 6);
  v23[4] = *(v3 + 5);
  v23[5] = v12;
  v23[2] = v10;
  v23[3] = v11;
  v23[0] = v8;
  v23[1] = v9;
  v13 = *(v3 + 2);
  v25[0] = *(v3 + 1);
  v25[1] = v13;
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v16 = *(v3 + 6);
  v25[4] = *(v3 + 5);
  v25[5] = v16;
  v25[2] = v14;
  v25[3] = v15;
  memmove(v3 + 16, v4, 0x60uLL);
  sub_1002CD9A0(v24, v22);
  sub_1002CD9A0(v24, v22);
  sub_1002CD9A0(v23, v22);
  sub_1002CD9FC(v25);
  sub_1003A98C8(v23);
  sub_1002CD9FC(v23);
  sub_1002CD9FC(v24);

  v17 = *(*&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v18 = *&sub_1003A5C74()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v17 addCoordinatedMarqueeView:v18];

  v19 = *(v4 + 40);
  v22[0] = *(v4 + 24);
  v22[1] = v19;
  v22[2] = *(v4 + 56);

  sub_1003A8778(v20, v22);

  return [v2 setNeedsLayout];
}

char *sub_1003A58EC()
{
  sub_100004CB8(&qword_100643D10, &qword_100531000);
  __chkstk_darwin();
  v2 = &v14[-v1];
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel])
  {
    v4 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
  }

  else
  {
    v5 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
    sub_1003A5E70(&v5[*(v6 + 24)], v2, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
    v8 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
    swift_beginAccess();
    v9 = *(v8 + 3);
    v15[2] = *(v8 + 2);
    v15[3] = v9;
    v10 = *(v8 + 5);
    v15[4] = *(v8 + 4);
    v15[5] = v10;
    v11 = *(v8 + 1);
    v15[0] = *v8;
    v15[1] = v11;
    type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
    swift_allocObject();
    sub_1002CD9A0(v15, v14);
    v12 = v0;
    v4 = sub_1003AC910(v2, v15, v12);

    sub_1002CD9FC(v15);
    *&v0[v3] = v4;
  }

  return v4;
}

id sub_1003A5AC8(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) removeFromSuperview];
  v3 = sub_1003A5C74();
  v4 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v23[4] = *(v4 + 4);
  v23[5] = v5;
  v6 = *(v4 + 3);
  v23[2] = *(v4 + 2);
  v23[3] = v6;
  v7 = *(v4 + 1);
  v23[0] = *v4;
  v23[1] = v7;
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *(v3 + 6);
  v22[4] = *(v3 + 5);
  v22[5] = v12;
  v22[2] = v10;
  v22[3] = v11;
  v22[0] = v8;
  v22[1] = v9;
  v13 = *(v3 + 2);
  v24[0] = *(v3 + 1);
  v24[1] = v13;
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v16 = *(v3 + 6);
  v24[4] = *(v3 + 5);
  v24[5] = v16;
  v24[2] = v14;
  v24[3] = v15;
  memmove(v3 + 16, v4, 0x60uLL);
  sub_1002CD9A0(v23, v21);
  sub_1002CD9A0(v23, v21);
  sub_1002CD9A0(v22, v21);
  sub_1002CD9FC(v24);
  sub_1003A98C8(v22);
  sub_1002CD9FC(v22);
  sub_1002CD9FC(v23);

  v17 = *&sub_1003A58EC()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v17 addCoordinatedMarqueeView:*(*&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view)];

  v18 = *(v4 + 40);
  v21[0] = *(v4 + 24);
  v21[1] = v18;
  v21[2] = *(v4 + 56);

  sub_1003A8778(v19, v21);

  return [v2 setNeedsLayout];
}

char *sub_1003A5C74()
{
  sub_100004CB8(&qword_100643D10, &qword_100531000);
  __chkstk_darwin();
  v2 = &v13[-v1];
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel])
  {
    v4 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];
  }

  else
  {
    v5 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
    sub_1000108DC(&v5[*(v6 + 28)], v2, &qword_100643D10, &qword_100531000);
    v7 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v8 = *(v7 + 3);
    v14[2] = *(v7 + 2);
    v14[3] = v8;
    v9 = *(v7 + 5);
    v14[4] = *(v7 + 4);
    v14[5] = v9;
    v10 = *(v7 + 1);
    v14[0] = *v7;
    v14[1] = v10;
    type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
    swift_allocObject();
    sub_1002CD9A0(v14, v13);
    v11 = v0;
    v4 = sub_1003AC910(v2, v14, v11);

    sub_1002CD9FC(v14);
    *&v0[v3] = v4;
  }

  return v4;
}

uint64_t sub_1003A5E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A5E70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A5ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100643D10, &qword_100531000);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double NowPlaying.TrackTitleStackView.transitionWillBegin(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = a1;

  v5 = sub_1003A3A44();
  [v5 setClipsToBounds:*&v2[v4] != 0];

  [v2 setNeedsLayout];
  v6 = *(*a1 + 424);
  v7 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v8 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
  v6(&v24, v2, v7, v8);
  if (v24)
  {
    v10 = v25;
    v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
    swift_beginAccess();
    v12 = *(v11 + 40);
    v24 = *(v11 + 24);
    v25 = v12;
    v26 = *(v11 + 56);

    sub_1003A8778(v13, &v24);

    v14 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v15 = *(v14 + 40);
    v23[0] = *(v14 + 24);
    v23[1] = v15;
    v23[2] = *(v14 + 56);

    sub_1003A8778(v16, v23);

    v17 = *(v11 + 40);
    v22[0] = *(v11 + 24);
    v22[1] = v17;
    v22[2] = *(v11 + 56);
    if (v10)
    {

      sub_1003A8778(v18, v22);

      v19 = *(&v10 + 1);
    }

    else
    {
      sub_1003A8778(0, v22);
      v19 = 0;
    }

    v20 = *(v14 + 40);
    v21[0] = *(v14 + 24);
    v21[1] = v20;
    v21[2] = *(v14 + 56);
    sub_1003A8778(v19, v21);

    return sub_1003AC254(v10, *(&v10 + 1));
  }

  return result;
}

double NowPlaying.TrackTitleStackView.transitionDidEnd(_:)(char *a1)
{
  v2 = v1;
  v198 = a1;
  v195 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v189 = *(v195 - 8);
  __chkstk_darwin();
  v171 = &v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_100004CB8(&qword_100643D28, &qword_100531010);
  __chkstk_darwin();
  v175 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v190 = &v158 - v5;
  sub_100004CB8(&qword_100643D10, &qword_100531000);
  __chkstk_darwin();
  v166 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v165 = &v158 - v7;
  __chkstk_darwin();
  v167 = &v158 - v8;
  __chkstk_darwin();
  v177 = &v158 - v9;
  __chkstk_darwin();
  v182 = &v158 - v10;
  __chkstk_darwin();
  v172 = &v158 - v11;
  __chkstk_darwin();
  v187 = &v158 - v12;
  __chkstk_darwin();
  v191 = &v158 - v13;
  v196 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v192 = *(v196 - 8);
  __chkstk_darwin();
  v184 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_100004CB8(&qword_100643D30, &qword_100531018);
  __chkstk_darwin();
  v174 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v173 = &v158 - v16;
  sub_100004CB8(&qword_100643D20, &qword_100531008);
  __chkstk_darwin();
  v168 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v183 = &v158 - v18;
  __chkstk_darwin();
  v170 = &v158 - v19;
  __chkstk_darwin();
  v180 = &v158 - v20;
  __chkstk_darwin();
  v181 = &v158 - v21;
  __chkstk_darwin();
  v169 = &v158 - v22;
  __chkstk_darwin();
  v178 = &v158 - v23;
  __chkstk_darwin();
  v179 = &v158 - v24;
  v25 = sub_1004D82AC();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v176 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100004CB8(&qword_100643D38, &qword_100531020);
  __chkstk_darwin();
  v194 = &v158 - v29;
  sub_100004CB8(&qword_100643D40, &qword_100531028);
  __chkstk_darwin();
  v188 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v158 - v31;
  v34 = __chkstk_darwin();
  v35 = &v158 - v33;
  v197 = v2;
  v193 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v36 = *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v36)
  {
    v37 = *(v26 + 16);
    v37(&v158 - v33, v36 + direct field offset for Gliss.Transition.id, v25, v34);
    v38 = *(v26 + 56);
    v38(v35, 0, 1, v25);
  }

  else
  {
    v38 = *(v26 + 56);
    (v38)(&v158 - v33, 1, 1, v25, v34);
    v37 = *(v26 + 16);
  }

  (v37)(v32, &v198[direct field offset for Gliss.Transition.id], v25);
  v38(v32, 0, 1, v25);
  v39 = *(v28 + 48);
  v40 = v194;
  sub_1000108DC(v35, v194, &qword_100643D40, &qword_100531028);
  v41 = v40;
  sub_1000108DC(v32, v40 + v39, &qword_100643D40, &qword_100531028);
  v42 = *(v26 + 48);
  if (v42(v40, 1, v25) == 1)
  {
    sub_10001074C(v32, &qword_100643D40, &qword_100531028);
    sub_10001074C(v35, &qword_100643D40, &qword_100531028);
    v43 = v42(v40 + v39, 1, v25);
    v44 = v196;
    if (v43 == 1)
    {
      sub_10001074C(v40, &qword_100643D40, &qword_100531028);
      v45 = v197;
LABEL_11:
      v51 = v193;
      *&v45[v193] = 0;

      v52 = sub_1003A3A44();
      [v52 setClipsToBounds:*&v45[v51] != 0];

      v47 = 1;
      goto LABEL_13;
    }

LABEL_9:
    sub_10001074C(v40, &qword_100643D38, &qword_100531020);
    v47 = 0;
    v45 = v197;
    goto LABEL_13;
  }

  v46 = v188;
  sub_1000108DC(v40, v188, &qword_100643D40, &qword_100531028);
  if (v42(v40 + v39, 1, v25) == 1)
  {
    sub_10001074C(v32, &qword_100643D40, &qword_100531028);
    sub_10001074C(v35, &qword_100643D40, &qword_100531028);
    (*(v26 + 8))(v46, v25);
    v44 = v196;
    goto LABEL_9;
  }

  v48 = v176;
  (*(v26 + 32))(v176, v40 + v39, v25);
  sub_1003ADE4C(&qword_100643D48, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v49 = sub_1004DD35C();
  v50 = *(v26 + 8);
  v50(v48, v25);
  sub_10001074C(v32, &qword_100643D40, &qword_100531028);
  sub_10001074C(v35, &qword_100643D40, &qword_100531028);
  v50(v46, v25);
  sub_10001074C(v41, &qword_100643D40, &qword_100531028);
  v45 = v197;
  v44 = v196;
  if (v49)
  {
    goto LABEL_11;
  }

  v47 = 0;
LABEL_13:
  v53 = sub_1003A58EC();
  v54 = &v45[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v55 = *(v54 + 40);
  v204[0] = *(v54 + 24);
  v204[1] = v55;
  v204[2] = *(v54 + 56);
  sub_1003A8778(v53, v204);

  v56 = sub_1003A5C74();
  v57 = &v45[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v58 = *(v57 + 40);
  v203[0] = *(v57 + 24);
  v203[1] = v58;
  v203[2] = *(v57 + 56);
  sub_1003A8778(v56, v203);

  v59 = *(*v198 + 424);
  v60 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v61 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
  v59(&v199, v45, v60, v61);
  v63 = v195;
  if (!v199)
  {
    return result;
  }

  v64 = v200;
  v66 = v201;
  v65 = v202;
  if (!v201)
  {

    goto LABEL_67;
  }

  v194 = v200;
  v176 = v202;
  v188 = v199;
  if ((v47 & 1) == 0)
  {
    sub_1003AC210(v201);

    v80.n128_f64[0] = sub_1003AC210(v66);
    v81 = v189;
    v82 = v191;
    goto LABEL_32;
  }

  v67 = *(*v198 + 208);
  v68 = *v198 + 208;
  sub_1003AC210(v201);

  v69 = sub_1003AC210(v66);
  v70 = v179;
  v162 = v67;
  v161 = v68;
  v67(v69);
  v71 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  v160 = v71;
  v72 = v44;
  v73 = v178;
  sub_1003A5E70(&v45[v71], v178, type metadata accessor for NowPlaying.TrackMetadata);
  v74 = v192;
  v159 = *(v192 + 56);
  v159(v73, 0, 1, v72);
  v75 = *(v185 + 48);
  v76 = v173;
  sub_1000108DC(v70, v173, &qword_100643D20, &qword_100531008);
  sub_1000108DC(v73, v76 + v75, &qword_100643D20, &qword_100531008);
  v77 = *(v74 + 48);
  v78 = v77(v76, 1, v72);
  v164 = v66;
  v163 = v77;
  if (v78 != 1)
  {
    v83 = v169;
    sub_1000108DC(v76, v169, &qword_100643D20, &qword_100531008);
    if (v77(v76 + v75, 1, v72) != 1)
    {
      v79 = v72;
      v86 = v184;
      sub_1001DFB0C(v76 + v75, v184, type metadata accessor for NowPlaying.TrackMetadata);
      v87 = static NowPlaying.TrackMetadata.== infix(_:_:)();
      sub_1001DFB74(v86, type metadata accessor for NowPlaying.TrackMetadata);
      sub_10001074C(v178, &qword_100643D20, &qword_100531008);
      sub_10001074C(v179, &qword_100643D20, &qword_100531008);
      sub_1001DFB74(v83, type metadata accessor for NowPlaying.TrackMetadata);
      v84 = sub_10001074C(v76, &qword_100643D20, &qword_100531008);
      v85 = v197;
      if ((v87 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    sub_10001074C(v178, &qword_100643D20, &qword_100531008);
    sub_10001074C(v179, &qword_100643D20, &qword_100531008);
    sub_1001DFB74(v83, type metadata accessor for NowPlaying.TrackMetadata);
LABEL_23:
    v79 = v72;
    v84 = sub_10001074C(v76, &qword_100643D30, &qword_100531018);
    v85 = v197;
    goto LABEL_26;
  }

  sub_10001074C(v73, &qword_100643D20, &qword_100531008);
  sub_10001074C(v70, &qword_100643D20, &qword_100531008);
  if (v77(v76 + v75, 1, v72) != 1)
  {
    goto LABEL_23;
  }

  v79 = v72;
  sub_10001074C(v76, &qword_100643D20, &qword_100531008);
LABEL_25:
  v88 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel;
  v89 = *&v197[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
  *&v197[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = v164;
  swift_retain_n();
  sub_1003A5728(v89);

  v85 = v197;

  v84 = [*(*&v85[v88] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:1.0];
LABEL_26:
  v90 = v181;
  (v162)(v84);
  v91 = v180;
  sub_1003A5E70(&v85[v160], v180, type metadata accessor for NowPlaying.TrackMetadata);
  v159(v91, 0, 1, v79);
  v92 = *(v185 + 48);
  v93 = v174;
  sub_1000108DC(v90, v174, &qword_100643D20, &qword_100531008);
  sub_1000108DC(v91, v93 + v92, &qword_100643D20, &qword_100531008);
  v94 = v163;
  v95 = v163(v93, 1, v79);
  v64 = v194;
  if (v95 == 1)
  {
    sub_10001074C(v91, &qword_100643D20, &qword_100531008);
    sub_10001074C(v90, &qword_100643D20, &qword_100531008);
    v96 = v94(v93 + v92, 1, v79);
    v97 = v93;
    v44 = v79;
    v66 = v164;
    v98 = v189;
    if (v96 == 1)
    {
      sub_10001074C(v93, &qword_100643D20, &qword_100531008);
      v45 = v197;
      goto LABEL_64;
    }

    goto LABEL_31;
  }

  v99 = v170;
  sub_1000108DC(v93, v170, &qword_100643D20, &qword_100531008);
  v100 = v94(v93 + v92, 1, v79);
  v97 = v93;
  v44 = v79;
  v98 = v189;
  if (v100 == 1)
  {
    sub_10001074C(v180, &qword_100643D20, &qword_100531008);
    sub_10001074C(v181, &qword_100643D20, &qword_100531008);
    sub_1001DFB74(v99, type metadata accessor for NowPlaying.TrackMetadata);
    v66 = v164;
LABEL_31:
    sub_10001074C(v97, &qword_100643D30, &qword_100531018);
    v45 = v197;
    v63 = v195;
    v82 = v191;
    v81 = v98;
    goto LABEL_32;
  }

  v125 = v184;
  sub_1001DFB0C(v93 + v92, v184, type metadata accessor for NowPlaying.TrackMetadata);
  LODWORD(v185) = static NowPlaying.TrackMetadata.== infix(_:_:)();
  sub_1001DFB74(v125, type metadata accessor for NowPlaying.TrackMetadata);
  sub_10001074C(v180, &qword_100643D20, &qword_100531008);
  sub_10001074C(v181, &qword_100643D20, &qword_100531008);
  sub_1001DFB74(v99, type metadata accessor for NowPlaying.TrackMetadata);
  v64 = v194;
  sub_10001074C(v93, &qword_100643D20, &qword_100531008);
  v45 = v197;
  v63 = v195;
  v66 = v164;
  v82 = v191;
  v81 = v98;
  if (v185)
  {
    goto LABEL_64;
  }

LABEL_32:
  v101 = v183;
  (*(*v198 + 208))(v80);
  v102 = *(v192 + 48);
  v192 += 48;
  v185 = v102;
  if (v102(v101, 1, v44) == 1)
  {
    sub_10001074C(v101, &qword_100643D20, &qword_100531008);
    (*(v81 + 56))(v82, 1, 1, v63);
  }

  else
  {
    sub_1000108DC(v101 + *(v44 + 28), v82, &qword_100643D10, &qword_100531000);
    sub_1001DFB74(v101, type metadata accessor for NowPlaying.TrackMetadata);
  }

  v103 = *&v45[v193];
  if (v103)
  {
    v104 = *(*v103 + 184);
    v105 = v81;

    v107 = v184;
    v104(v106);

    v108 = v187;
    sub_1000108DC(v107 + *(v196 + 28), v187, &qword_100643D10, &qword_100531000);
    sub_1001DFB74(v107, type metadata accessor for NowPlaying.TrackMetadata);
  }

  else
  {
    v108 = v187;
    (*(v81 + 56))(v187, 1, 1, v63);
    v105 = v81;
  }

  v109 = *(v186 + 48);
  v110 = v191;
  v111 = v190;
  sub_1000108DC(v191, v190, &qword_100643D10, &qword_100531000);
  v112 = v111;
  sub_1000108DC(v108, v111 + v109, &qword_100643D10, &qword_100531000);
  v113 = *(v105 + 48);
  if ((v113)(v111, 1, v63) == 1)
  {
    v198 = v113;
    sub_10001074C(v108, &qword_100643D10, &qword_100531000);
    v114 = v190;
    sub_10001074C(v110, &qword_100643D10, &qword_100531000);
    if ((v198)(v114 + v109, 1, v63) == 1)
    {
      sub_10001074C(v114, &qword_100643D10, &qword_100531000);
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v115 = v172;
  sub_1000108DC(v112, v172, &qword_100643D10, &qword_100531000);
  if ((v113)(v112 + v109, 1, v63) == 1)
  {
    sub_10001074C(v187, &qword_100643D10, &qword_100531000);
    v114 = v190;
    sub_10001074C(v191, &qword_100643D10, &qword_100531000);
    sub_1001DFB74(v115, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_43:
    sub_10001074C(v114, &qword_100643D28, &qword_100531010);
    v65 = v176;
    v64 = v194;
LABEL_44:

    goto LABEL_67;
  }

  v198 = v113;
  v116 = v112 + v109;
  v117 = v171;
  sub_1001DFB0C(v116, v171, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v118 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_1001DFB74(v117, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001074C(v187, &qword_100643D10, &qword_100531000);
  sub_10001074C(v191, &qword_100643D10, &qword_100531000);
  sub_1001DFB74(v115, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v45 = v197;
  v63 = v195;
  sub_10001074C(v112, &qword_100643D10, &qword_100531000);
  v65 = v176;
  v64 = v194;
  if ((v118 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_46:
  v119 = *&v45[v193];
  if (v119)
  {
    v120 = *(*v119 + 184);

    v122 = v184;
    v120(v121);

    v123 = v196;
    sub_1000108DC(v122 + *(v196 + 28), v182, &qword_100643D10, &qword_100531000);
    sub_1001DFB74(v122, type metadata accessor for NowPlaying.TrackMetadata);
    v124 = v177;
  }

  else
  {
    (*(v189 + 56))(v182, 1, 1, v63);
    v124 = v177;
    v123 = v196;
  }

  v126 = *&v45[v193];
  if (v126)
  {
    v127 = *(*v126 + 208);

    v129 = v168;
    v127(v128);

    if ((v185)(v129, 1, v123) != 1)
    {
      v130 = v129 + *(v123 + 28);
      v131 = v129;
      v124 = v177;
      sub_1000108DC(v130, v177, &qword_100643D10, &qword_100531000);
      sub_1001DFB74(v131, type metadata accessor for NowPlaying.TrackMetadata);
      goto LABEL_56;
    }

    sub_10001074C(v129, &qword_100643D20, &qword_100531008);
    v124 = v177;
  }

  (*(v189 + 56))(v124, 1, 1, v63);
LABEL_56:
  v132 = v63;
  v133 = *(v186 + 48);
  v134 = v182;
  v135 = v175;
  sub_1000108DC(v182, v175, &qword_100643D10, &qword_100531000);
  sub_1000108DC(v124, v135 + v133, &qword_100643D10, &qword_100531000);
  v136 = v198;
  if ((v198)(v135, 1, v132) == 1)
  {
    sub_10001074C(v124, &qword_100643D10, &qword_100531000);
    v137 = v175;
    sub_10001074C(v134, &qword_100643D10, &qword_100531000);
    v138 = (v136)(v137 + v133, 1, v132);
    v44 = v196;
    if (v138 == 1)
    {
      sub_10001074C(v137, &qword_100643D10, &qword_100531000);
      v64 = v194;
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v139 = v167;
  sub_1000108DC(v135, v167, &qword_100643D10, &qword_100531000);
  v140 = (v136)(v135 + v133, 1, v132);
  v44 = v196;
  if (v140 == 1)
  {
    sub_10001074C(v177, &qword_100643D10, &qword_100531000);
    v137 = v175;
    sub_10001074C(v182, &qword_100643D10, &qword_100531000);
    sub_1001DFB74(v139, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_61:
    sub_10001074C(v137, &qword_100643D28, &qword_100531010);
    v64 = v194;
LABEL_62:

    v65 = v176;

    goto LABEL_67;
  }

  v141 = v171;
  sub_1001DFB0C(v135 + v133, v171, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v142 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_1001DFB74(v141, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001074C(v177, &qword_100643D10, &qword_100531000);
  sub_10001074C(v182, &qword_100643D10, &qword_100531000);
  sub_1001DFB74(v139, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v45 = v197;
  sub_10001074C(v135, &qword_100643D10, &qword_100531000);
  v64 = v194;
  if ((v142 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  v143 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel;
  v144 = *&v45[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];
  v65 = v176;
  if (v176)
  {
    *&v45[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = v176;
    swift_retain_n();
    sub_1003A5AC8(v144);

    v145 = *(*&v45[v143] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
    [v145 setAlpha:1.0];
  }

  else
  {
    v146 = &v45[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v147 = v165;
    sub_1000108DC(&v146[*(v44 + 28)], v165, &qword_100643D10, &qword_100531000);
    v148 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    v149 = v166;
    sub_1000108DC(v144 + v148, v166, &qword_100643D10, &qword_100531000);
    swift_beginAccess();

    sub_1003A5ED8(v147, v144 + v148);
    swift_endAccess();
    sub_1003AA68C(v149);

    v150 = v149;
    v64 = v194;
    sub_10001074C(v150, &qword_100643D10, &qword_100531000);
    v45 = v197;
    sub_10001074C(v147, &qword_100643D10, &qword_100531000);
  }

LABEL_67:

  sub_1003A8108(v151, v45, v152);

  v154 = sub_1003A8108(v64, v45, v153);
  if (v66)
  {

    sub_1003A8108(v155, v45, v156);

    v157 = v65;
  }

  else
  {
    v157 = 0;
  }

  sub_1003A8108(v157, v45, v154);

  [v45 setNeedsLayout];
  sub_1003AC254(v66, v65);

  return sub_1003AC254(v66, v65);
}

double sub_1003A8108(uint64_t a1, uint64_t a2, double result)
{
  if (!a1)
  {
    return result;
  }

  v4 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);

  v5 = v4;
  v6 = *&sub_1003A58EC()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  sub_100006F10(0, &qword_100644038, off_1005C88D0);
  LOBYTE(v4) = sub_1004DE5FC();

  if ((v4 & 1) == 0)
  {
    v7 = v5;
    v8 = *&sub_1003A5C74()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

    v9 = sub_1004DE5FC();

    if ((v9 & 1) == 0)
    {
      v11 = *(a2 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition);
      if (v11)
      {
        v12 = *(*v11 + 424);
        v13 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
        v14 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

        v12(v27, a2, v13, v14);

        if (v27[0])
        {
          v16 = v27[1];
          v15 = v27[2];
          v17 = v27[3];
          sub_100006F10(0, &unk_100644F40, NSObject_ptr);
          if (sub_1004DE5FC())
          {
            goto LABEL_14;
          }

          if (v16)
          {
            v18 = *(v16 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
            v26 = v17;
            v19 = v7;
            v25 = v15;
            v20 = v18;
            LOBYTE(v18) = sub_1004DE5FC();

            v17 = v26;
            v15 = v25;
            if (v18)
            {
              goto LABEL_14;
            }
          }

          if (v15)
          {
            if (sub_1004DE5FC())
            {
LABEL_14:

              sub_1003AC254(v15, v17);
LABEL_21:

              return result;
            }

            if (v17)
            {
              v21 = *(v17 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
              v22 = v15;
              v23 = v7;
              v24 = v21;
              LOBYTE(v21) = sub_1004DE5FC();

              v10 = sub_1003AC254(v22, v17);
              if (v21)
              {
                goto LABEL_21;
              }
            }

            else
            {

              v10 = sub_1003AC254(v15, 0);
            }
          }

          else
          {
          }
        }
      }

      [v7 removeFromSuperview];
      goto LABEL_21;
    }
  }

  return result;
}

id NowPlaying.TrackTitleStackView.adopt(_:from:)(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100643D10, &qword_100531000);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v20 - v7;
  v9 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A5E70(a1, v11, type metadata accessor for NowPlaying.TrackMetadata);
  v12 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_1003A5E0C(v11, v2 + v12);
  result = swift_endAccess();
  if (!a2)
  {
    v14 = v2;
    v15 = sub_1003A58EC();
    sub_1003A5E70(a1 + *(v9 + 24), v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    v17 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    sub_1000108DC(&v15[v17], v6, &qword_100643D10, &qword_100531000);
    swift_beginAccess();
    sub_1003A5ED8(v8, &v15[v17]);
    swift_endAccess();
    sub_1003AA68C(v6);

    sub_10001074C(v6, &qword_100643D10, &qword_100531000);
    sub_10001074C(v8, &qword_100643D10, &qword_100531000);
    v18 = sub_1003A5C74();
    sub_1000108DC(a1 + *(v9 + 28), v8, &qword_100643D10, &qword_100531000);
    v19 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    sub_1000108DC(&v18[v19], v6, &qword_100643D10, &qword_100531000);
    swift_beginAccess();
    sub_1003A5ED8(v8, &v18[v19]);
    swift_endAccess();
    sub_1003AA68C(v6);

    sub_10001074C(v6, &qword_100643D10, &qword_100531000);
    sub_10001074C(v8, &qword_100643D10, &qword_100531000);
    return [v14 setNeedsLayout];
  }

  return result;
}

double sub_1003A8778(uint64_t a1, unsigned __int8 *a2)
{
  sub_100004CB8(&qword_100643D20, &qword_100531008);
  *&result = __chkstk_darwin().n128_u64[0];
  v7 = &v20 - v6;
  if (a1)
  {
    v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
    v9 = *(v2 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition);
    if (v9)
    {
      v10 = v2;
      v11 = *(*v9 + 256);

      v13 = v11(v12);

      if (v13 == 2)
      {
        v14 = *(v10 + v8);
        if (v14)
        {
          v15 = *(*v14 + 208);

          v15(v16);

          v17 = type metadata accessor for NowPlaying.TrackMetadata(0);
          if ((*(*(v17 - 8) + 48))(v7, 1, v17) != 1)
          {
            sub_10001074C(v7, &qword_100643D20, &qword_100531008);
            v18 = 0;
LABEL_11:
            [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setMarqueeEnabled:v18 withOptions:1];

            return result;
          }
        }

        else
        {
          v19 = type metadata accessor for NowPlaying.TrackMetadata(0);
          (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
        }

        sub_10001074C(v7, &qword_100643D20, &qword_100531008);
      }
    }

    else
    {
    }

    v18 = *a2;
    goto LABEL_11;
  }

  return result;
}

void sub_1003A89A8()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition])
  {
    v2 = objc_opt_self();
    v3 = [v2 disableActions];
    v4 = &selRef_setShadowPathIsBounds_;
    [v2 setDisableActions:1];
    v5 = OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer;
    v6 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
    if (v6)
    {
      v7 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
LABEL_28:
      v44 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
      swift_beginAccess();
      v45 = v44[6];
      v46 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
      swift_beginAccess();
      if (v46[6] >= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v46[6];
      }

      sub_100004CB8(&qword_100642970, &qword_100529AD0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_100511D90;
      sub_100006F10(0, &qword_100640D40, NSNumber_ptr);
      v49 = v6;
      *(v48 + 32) = sub_1004DE5CC(0.0);
      [v1 bounds];
      *(v48 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:v47 / CGRectGetWidth(v58)];
      [v1 bounds];
      *(v48 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v47 / CGRectGetWidth(v59)];
      *(v48 + 56) = sub_1004DE5CC(1.0);
      isa = sub_1004DD85C().super.isa;

      [v7 setLocations:isa];

      [v7 setStartPoint:{0.0, 0.5}];
      v51 = v7;
      [v51 setEndPoint:{1.0, 0.5}];
      [v1 bounds];
      [v51 setBounds:?];

      [v1 bounds];
      MidX = CGRectGetMidX(v60);
      [v1 bounds];
      [v51 setPosition:{MidX, CGRectGetMidY(v61)}];

      [v2 v4[208]];
      return;
    }

    v53 = v3;
    v56 = v2;
    v15 = [objc_allocWithZone(CAGradientLayer) init];
    sub_100004CB8(&qword_10063F4F0, &unk_100532080);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100511B10;
    v17 = objc_opt_self();
    v18 = v15;
    v19 = [v17 blackColor];
    v20 = [v19 CGColor];

    _s3__C7CGColorCMa_0(0);
    v22 = v21;
    *(v16 + 56) = v21;
    *(v16 + 32) = v20;
    v23 = [v17 clearColor];
    v24 = [v23 CGColor];

    *(v16 + 88) = v22;
    *(v16 + 64) = v24;
    v25 = [v17 clearColor];
    v26 = [v25 CGColor];

    *(v16 + 120) = v22;
    *(v16 + 96) = v26;
    v27 = [v17 blackColor];
    v28 = [v27 CGColor];

    *(v16 + 152) = v22;
    *(v16 + 128) = v28;
    v29 = sub_1004DD85C().super.isa;

    [v18 setColors:v29];

    [v18 setCompositingFilter:kCAFilterDestOut];
    v30 = *&v1[v5];
    if (v30)
    {
      sub_100006F10(0, &qword_100642F08, CAGradientLayer_ptr);
      v31 = v18;
      v32 = v30;
      v33 = v31;
      v34 = v32;
      v35 = sub_1004DE5FC();

      v36 = *&v1[v5];
      if ((v35 & 1) == 0)
      {
        v4 = &selRef_setShadowPathIsBounds_;
        v6 = 0;
        if (v36)
        {
          [*&v1[v5] removeFromSuperlayer];
          v36 = *&v1[v5];
        }

LABEL_16:
        *&v1[v5] = v18;
        v7 = v18;

        v38 = *&v1[v5];
        if (v38)
        {
          if (v30)
          {
            sub_100006F10(0, &qword_100642F08, CAGradientLayer_ptr);
            v39 = v30;
            v40 = v38;
            v41 = sub_1004DE5FC();

            if (v41)
            {

LABEL_21:
              v2 = v56;
              v3 = v53;
              goto LABEL_28;
            }
          }

          else
          {
            v42 = v38;
            v39 = 0;
          }

          v2 = v56;
          v3 = v53;
          v43 = [v1 layer];
          [v43 addSublayer:v38];

          goto LABEL_28;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v37 = v18;
      v36 = 0;
    }

    v4 = &selRef_setShadowPathIsBounds_;
    v6 = 0;
    goto LABEL_16;
  }

  v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer;
  v9 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
  if (v9)
  {
    v55 = v9;
    [v55 removeFromSuperlayer];
    v10 = *&v1[v8];
    *&v1[v8] = 0;

    v11 = *&v1[v8];
    if (v11)
    {
      sub_100006F10(0, &qword_100642F08, CAGradientLayer_ptr);
      v12 = v55;
      v55 = v11;
      v13 = sub_1004DE5FC();

      if ((v13 & 1) == 0)
      {
        v54 = [v1 layer];
        [v54 addSublayer:v55];

        v14 = v54;
        goto LABEL_23;
      }
    }

    v14 = v55;
  }

  else
  {
    v14 = 0;
  }

LABEL_23:
}

id sub_1003A90C8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1004DD3FC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1003A9160(uint64_t (*a1)(__n128))
{
  sub_1004D7DAC();
  __chkstk_darwin();
  v2 = sub_1004D7E3C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100643D10, &qword_100531000);
  v6 = __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = a1(v6);
  v10 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000108DC(v9 + v10, v8, &qword_100643D10, &qword_100531000);
  v11 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {

    return 0;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1004D7D9C();
    sub_1003ADE4C(&qword_100644028, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
    v13 = sub_1004DD6CC();

    (*(v3 + 8))(v5, v2);
    return v13;
  }

  else
  {

    return *v8;
  }
}

id NowPlaying.TrackTitleStackView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1003A95D8@<X0>(char **a1@<X8>, uint64_t a2@<X0>)
{
  result = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17transitionContext2to9directionAF010TransitionK0VSgAC0F8MetadataV_AA5GlissO9DirectionOSgtF_0(a2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double NowPlaying.TrackTitleStackView.Label.Attributes.marquee.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  *a1 = *(v1 + 24);
  v3 = *(v1 + 48);
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 40) = result;
  return result;
}

void *NowPlaying.TrackTitleStackView.Label.Attributes.action.getter()
{
  v1 = *(v0 + 72);
  sub_1003ADE94(v1, *(v0 + 80), *(v0 + 88));
  return v1;
}

void NowPlaying.TrackTitleStackView.Label.Attributes.action.setter(void *a1, void *a2, void *a3)
{
  sub_1003AA98C(v3[9], v3[10], v3[11]);
  v3[9] = a1;
  v3[10] = a2;
  v3[11] = a3;
}

void NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.fadeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

BOOL static NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.__derived_struct_equals(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v2 = a1[3] == a2[3] && a1[4] == a2[4];
    if (v2 && a1[5] == a2[5])
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1003A9734(float64x2_t *a1, float64x2_t *a2)
{
  if (LOBYTE(a1->f64[0]) == LOBYTE(a2->f64[0]) && a1->f64[1] == a2->f64[1])
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[1], a2[1]), vceqq_f64(a1[2], a2[2])))) & 1;
  }

  else
  {
    return 0;
  }
}

double NowPlaying.TrackTitleStackView.Label.Attributes.update(_:)(void (*a1)(__int128 *))
{
  v2 = v1[3];
  v11 = v1[2];
  v12 = v2;
  v3 = v1[5];
  v13 = v1[4];
  v14 = v3;
  v4 = v1[1];
  v9 = *v1;
  v10 = v4;
  a1(&v9);
  v5 = v12;
  v1[2] = v11;
  v1[3] = v5;
  v6 = v14;
  v1[4] = v13;
  v1[5] = v6;
  result = *&v9;
  v8 = v10;
  *v1 = v9;
  v1[1] = v8;
  return result;
}

uint64_t sub_1003A986C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV23__derived_struct_equalsySbAJ_AJtFZ_0(v9, v10) & 1;
}

void sub_1003A98C8(uint64_t *a1)
{
  v2 = v1;
  v4 = *(a1 + 3);
  v54[2] = *(a1 + 2);
  v54[3] = v4;
  v5 = *(a1 + 5);
  v54[4] = *(a1 + 4);
  v54[5] = v5;
  v6 = *(a1 + 1);
  v54[0] = *a1;
  v54[1] = v6;
  sub_100004CB8(&qword_100643D10, &qword_100531000);
  __chkstk_darwin();
  v8 = &v50 - v7;
  v9 = *(v1 + 64);
  v57 = *(v1 + 48);
  v58 = v9;
  v10 = *(v1 + 96);
  v59 = *(v1 + 80);
  v60 = v10;
  v11 = *(v1 + 32);
  v55 = *(v1 + 16);
  v56 = v11;
  sub_100006F10(0, &unk_100644F40, NSObject_ptr);
  sub_1002CD9A0(&v55, v53);
  if ((sub_1004DE5FC() & 1) == 0 || (sub_1004DE5FC() & 1) == 0 || v56 != (a1[2] & 1) || BYTE8(v56) != (a1[3] & 1) || *&v57 != *(a1 + 4) || *(&v57 + 1) != *(a1 + 5) || *&v58 != *(a1 + 6) || *(&v58 + 1) != *(a1 + 7) || *&v59 != *(a1 + 8))
  {
    goto LABEL_14;
  }

  v12 = *(&v59 + 1);
  v14 = a1[9];
  v13 = a1[10];
  v15 = a1[11];
  if (*(&v59 + 1) == 1)
  {
    sub_1003ADE94(a1[9], a1[10], a1[11]);
    sub_1002CD9FC(&v55);
    if (v14 == 1)
    {
      return;
    }

    sub_1003AA98C(v14, v13, v15);
    goto LABEL_15;
  }

  if (v14 == 1)
  {
LABEL_14:
    sub_1002CD9FC(&v55);
    goto LABEL_15;
  }

  v48 = *(&v60 + 1);
  v51 = v60;
  sub_1003ADE94(v14, v13, v15);
  v49 = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(v12, v51, v48, v14, v13, v15);
  sub_1002CD9FC(&v55);

  if (v49)
  {
    return;
  }

LABEL_15:
  if ((a1[9] == 1) == (*(v1 + 88) == 1))
  {
    goto LABEL_35;
  }

  v16 = *(v1 + 64);
  v53[2] = *(v1 + 48);
  v53[3] = v16;
  v17 = *(v1 + 96);
  v53[4] = *(v1 + 80);
  v53[5] = v17;
  v18 = *(v1 + 32);
  v53[0] = *(v1 + 16);
  v53[1] = v18;
  sub_1002CD9A0(v53, &v52);
  v19 = sub_1003AC540(v53);
  v20 = v19;
  v22 = v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind;
  v23 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  v24 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind + 8);
  *v22 = v19;
  *(v22 + 8) = v21 & 1;
  if (v21)
  {
    if ((v24 & 1) == 0)
    {
LABEL_18:
      v25 = v19;
      goto LABEL_22;
    }
  }

  else if (v24)
  {
    goto LABEL_18;
  }

  v26 = v19;
  if ((sub_1004DE5FC() & 1) == 0)
  {
LABEL_22:
    [v23 removeFromSuperview];
    v27 = *v22;
    v28 = [v27 superview];
    v29 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
    v30 = [v29 contentView];
    v31 = v30;
    if (v28)
    {
      if (v30)
      {
        sub_100006F10(0, &qword_100644F50, UIView_ptr);
        v32 = sub_1004DE5FC();

        if (v32)
        {
          goto LABEL_33;
        }

LABEL_30:
        v33 = [v29 contentView];
        if (v33)
        {
          v34 = v33;
          [v33 addSubview:v27];

          v35 = [v29 contentView];
          if (v35)
          {
            v36 = v35;
            [v35 bounds];
            v38 = v37;
            v40 = v39;
            v42 = v41;
            v44 = v43;

            [v27 setFrame:{v38, v40, v42, v44}];
            [v27 setAutoresizingMask:18];
            [v29 setViewForContentSize:v27];
LABEL_33:

            sub_1003AA9E0();
            goto LABEL_34;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v31 = v28;
    }

    else if (!v30)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v20 = v23;
  v23 = v26;
LABEL_34:

LABEL_35:
  sub_1003A9E24(v54);
  v45 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000108DC(v2 + v45, v8, &qword_100643D10, &qword_100531000);
  v46 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  if ((*(*(v46 - 8) + 48))(v8, 1, v46) == 1)
  {
    sub_10001074C(v8, &qword_100643D10, &qword_100531000);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1001DFB74(v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AA9E0();
    }
  }
}

uint64_t sub_1003A9E24(uint64_t a1)
{
  v2 = v1;
  sub_100004CB8(&qword_100644000, &qword_100531408);
  __chkstk_darwin();
  v5 = &v59 - v4;
  sub_100004CB8(&qword_10063E910, &qword_100529AE0);
  __chkstk_darwin();
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v59 - v8;
  v10 = sub_1004DE6DC();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[4];
  v68 = v1[3];
  v69 = v14;
  v15 = v1[6];
  v70 = v1[5];
  v71 = v15;
  v16 = v1[2];
  v66 = v1[1];
  v67 = v16;
  v17 = v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind;
  v18 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  if ((v17[8] & 1) == 0)
  {
    v20 = v66;
    sub_1002CD9A0(&v66, v65);
    v21 = v18;
    [v21 setFont:v20];
    [v21 setTextColor:*(&v66 + 1)];

    v22 = *a1;
    if (!*a1)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v62 = *a1;
  v64 = v18;
  v63 = v7;
  if (!v62)
  {
    sub_1002CD9A0(&v66, v65);
    goto LABEL_8;
  }

  v19 = *(a1 + 72);
  if (v19 <= 1)
  {
    sub_1002CD9A0(&v66, v65);
    v18 = v64;
LABEL_8:
    v23 = v18;
    goto LABEL_9;
  }

  v72 = *(v2 + 88);
  v73 = *(v2 + 13);
  v28 = v72;
  if (v72 == 1)
  {
    sub_1002CD9A0(&v66, v65);
    v29 = v64;
    v30 = v64;
    v31 = v19;
  }

  else
  {
    v53 = v73;
    v74 = *(&v72 + 1);
    sub_1002CD9A0(&v66, v65);
    v29 = v64;
    v54 = v64;
    v61 = v19;
    sub_1000108DC(&v72, v65, &qword_100644008, &qword_100531410);
    sub_10001074C(&v74, &qword_100644010, &unk_100531418);
    v75 = v53;
    sub_10001074C(&v75, &qword_10063E4B8, &qword_100529160);
    if (v28)
    {
      sub_100006F10(0, &qword_10063E980, UIAction_ptr);
      v55 = v61;
      v60 = v28;
      v56 = v55;
      v57 = sub_1004DE5FC();
      v61 = v56;

      if (v57)
      {

        goto LABEL_9;
      }
    }
  }

  [v29 removeAction:v19 forControlEvents:0x2000];

LABEL_9:
  sub_1004DE6FC();
  v24 = *(v11 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    sub_1004DE6BC();
    if (v24(v9, 1, v10) != 1)
    {
      sub_10001074C(v9, &qword_10063E910, &qword_100529AE0);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  v25 = *(&v66 + 1);
  sub_1004DE69C();
  v26 = *(&v70 + 1);
  v27 = v71;
  if (*(&v70 + 1) != 1 && *(&v71 + 1))
  {
    if (*(&v70 + 1))
    {
      sub_1003ADE94(*(&v70 + 1), v71, *(&v71 + 1));

LABEL_21:
      goto LABEL_22;
    }

    if (v71)
    {
      sub_1003ADE94(0, v71, *(&v71 + 1));

      goto LABEL_21;
    }

    v58 = *(&v71 + 1);
    sub_1004DE69C();
  }

LABEL_22:
  v32 = swift_allocObject();
  v33 = v69;
  v32[3] = v68;
  v32[4] = v33;
  v34 = v71;
  v32[5] = v70;
  v32[6] = v34;
  v35 = v67;
  v32[1] = v66;
  v32[2] = v35;
  sub_1002CD9A0(&v66, v65);
  sub_1004D99BC();
  v36 = sub_1004D99AC();
  (*(*(v36 - 8) + 56))(v5, 0, 1, v36);
  sub_1004DE6AC();
  if (v26 == 1)
  {
    goto LABEL_27;
  }

  if (!v26)
  {
    v51 = *(&v27 + 1);
    v52 = v27;
    if (!v27)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v37 = *(&v27 + 1);
  v38 = v26;
  v39 = v27;
  [v64 addAction:v38 forControlEvents:0x2000];
  if (v27)
  {
LABEL_25:
    v40 = v27;
    v41 = v64;
    [v41 setShowsMenuAsPrimaryAction:v26 == 0];
    [v41 setMenu:v40];
    [v41 setShowsMenuFromSource:0];
  }

LABEL_26:

LABEL_27:
  v42 = v63;
  (*(v11 + 16))(v63, v13, v10);
  (*(v11 + 56))(v42, 0, 1, v10);
  v43 = v64;
  sub_1004DE70C();

  (*(v11 + 8))(v13, v10);
  v22 = v62;
  if (!v62)
  {
LABEL_29:
    sub_1003AB480();
    goto LABEL_30;
  }

LABEL_28:
  v44 = *(v2 + 2);
  sub_100006F10(0, &qword_100643860, UIFont_ptr);
  v45 = v44;
  v46 = v22;
  v47 = sub_1004DE5FC();

  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v48 = *(v2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v49 = BYTE8(v67);
  [v48 setContentGap:*&v68];
  [v48 setMarqueeEnabled:v49 & 1];
  [v48 effectiveUserInterfaceLayoutDirection];
  sub_1004DDEEC();
  [v48 setFadeEdgeInsets:?];
  [v48 setHidden:v67];
  [v48 invalidateIntrinsicContentSize];
  return sub_1002CD9FC(&v66);
}

uint64_t sub_1003AA5C0@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004D7E7C();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *a2;
  sub_1003AE510();
  v8 = v7;
  sub_1004D7E8C();
  UIAccessibilityButtonShapesEnabled();
  sub_1003AE564();
  return sub_1004D7E8C();
}

uint64_t sub_1003AA68C(uint64_t a1)
{
  v16 = a1;
  v2 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100643D10, &qword_100531000);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = sub_100004CB8(&qword_100643D28, &qword_100531010) - 8;
  __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  v12 = *(v8 + 56);
  sub_1000108DC(v1 + v11, v10, &qword_100643D10, &qword_100531000);
  sub_1000108DC(v16, &v10[v12], &qword_100643D10, &qword_100531000);
  v13 = *(v3 + 48);
  if (v13(v10, 1, v2) == 1)
  {
    if (v13(&v10[v12], 1, v2) == 1)
    {
      return sub_10001074C(v10, &qword_100643D10, &qword_100531000);
    }

    goto LABEL_6;
  }

  sub_1000108DC(v10, v7, &qword_100643D10, &qword_100531000);
  if (v13(&v10[v12], 1, v2) == 1)
  {
    sub_1001DFB74(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_6:
    sub_10001074C(v10, &qword_100643D28, &qword_100531010);
LABEL_7:
    sub_1003AA9E0();
    return sub_1003AB480();
  }

  sub_1001DFB0C(&v10[v12], v5, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v15 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_1001DFB74(v5, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001DFB74(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_10001074C(v10, &qword_100643D10, &qword_100531000);
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1003AA98C(void *a1, void *a2, void *a3)
{
  if (a1 != 1)
  {
  }
}

id sub_1003AA9E0()
{
  v1 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v69 = *(v1 - 8);
  __chkstk_darwin();
  v66 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063E7A0, &qword_100529860);
  __chkstk_darwin();
  v62 = &v58 - v3;
  v4 = sub_1004D7E3C();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin();
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v58 - v6;
  sub_100004CB8(&qword_10063E910, &qword_100529AE0);
  __chkstk_darwin();
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v58 - v9;
  __chkstk_darwin();
  v60 = &v58 - v10;
  v11 = sub_1004DE6DC();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin();
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v58 - v14;
  sub_100004CB8(&qword_100643FF0, &qword_100531400);
  __chkstk_darwin();
  v16 = (&v58 - v15);
  sub_100004CB8(&qword_100643D10, &qword_100531000);
  __chkstk_darwin();
  v71 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v58 - v18;
  v20 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  v70 = v20;
  sub_1000108DC(v0 + v20, v19, &qword_100643D10, &qword_100531000);
  v72 = v0;
  v21 = *(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  v22 = *(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind + 8);
  v23 = v19;
  v24 = v1;
  v25 = v69;
  sub_100047F38(v23, v16, &qword_100643D10, &qword_100531000);
  v26 = *(v25 + 48);
  if (v26(v16, 1, v1) == 1)
  {
    v27 = v21;
    v28 = v27;
    if (v22)
    {
      sub_1004DE6FC();
      v30 = v64;
      v29 = v65;
      v31 = *(v64 + 48);
      if (v31(v8, 1, v65) == 1)
      {
        sub_1004DE6BC();
        if (v31(v8, 1, v29) != 1)
        {
          sub_10001074C(v8, &qword_10063E910, &qword_100529AE0);
        }
      }

      else
      {
        (*(v30 + 32))(v13, v8, v29);
      }

      sub_1004DE6CC();
      (*(v67 + 56))(v62, 1, 1, v68);
      sub_1004DE68C();
      v45 = v63;
      (*(v30 + 16))(v63, v13, v29);
      (*(v30 + 56))(v45, 0, 1, v29);
      sub_1004DE70C();

      (*(v30 + 8))(v13, v29);
    }

    else
    {
      [v27 setText:0];
      [v28 setAttributedText:0];
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v67;
    v33 = v68;
    v34 = v61;
    (*(v67 + 32))(v61, v16, v68);
    if (v22)
    {
      __chkstk_darwin();
      *(&v58 - 2) = v34;
      v35 = v21;
      UIButton.reconfigure(with:)(sub_1003AE4A0);

      (*(v32 + 8))(v34, v33);
    }

    else
    {
      sub_100006F10(0, &qword_100643FF8, NSAttributedString_ptr);
      (*(v32 + 16))(v59, v34, v33);
      v46 = v34;
      v47 = v21;
      v48 = sub_1004DE1BC();
      [v47 setAttributedText:v48];

      (*(v32 + 8))(v46, v33);
    }
  }

  else
  {
    v69 = v1;
    v36 = *v16;
    v37 = v21;
    if (v22)
    {
      v38 = v60;
      sub_1004DE6FC();
      v40 = v64;
      v39 = v65;
      v41 = *(v64 + 48);
      if (v41(v38, 1, v65) == 1)
      {
        v68 = v36;
        v42 = v58;
        sub_1004DE6BC();
        v43 = v41(v38, 1, v39);
        v44 = v42;
        if (v43 != 1)
        {
          sub_10001074C(v60, &qword_10063E910, &qword_100529AE0);
        }
      }

      else
      {
        v44 = v58;
        (*(v40 + 32))(v58, v38, v39);
      }

      sub_1004DE6CC();
      v50 = v63;
      (*(v40 + 16))(v63, v44, v39);
      (*(v40 + 56))(v50, 0, 1, v39);
      sub_1004DE70C();

      (*(v40 + 8))(v44, v39);
    }

    else
    {
      v49 = sub_1004DD3FC();

      [v37 setText:v49];
    }

    v24 = v69;
  }

  v51 = v71;
  v52 = *(v72 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  sub_1000108DC(v72 + v70, v71, &qword_100643D10, &qword_100531000);
  if (v26(v51, 1, v24))
  {
    sub_10001074C(v51, &qword_100643D10, &qword_100531000);
LABEL_25:
    v56 = 0;
    goto LABEL_26;
  }

  v53 = v66;
  sub_1003A5E70(v51, v66, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001074C(v51, &qword_100643D10, &qword_100531000);
  sub_1003ABB64();
  v54 = sub_1004DD3FC();

  v55 = [v54 _isNaturallyRTL];

  sub_1001DFB74(v53, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if ((v55 & 1) == 0)
  {
    goto LABEL_25;
  }

  v56 = 1;
LABEL_26:
  [v52 setAnimationDirection:v56];
  return [v52 invalidateIntrinsicContentSize];
}

uint64_t sub_1003AB380(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_10063E7A0, &qword_100529860);
  __chkstk_darwin();
  v4 = &v8 - v3;
  v5 = sub_1004D7E3C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a2, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  return sub_1004DE68C();
}

uint64_t sub_1003AB480()
{
  v1 = v0;
  sub_100004CB8(&qword_100643D10, &qword_100531000);
  __chkstk_darwin();
  v3 = &v15 - v2;
  v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = left;
  v18 = UIEdgeInsetsZero.top;
  v15 = right;
  v16 = bottom;
  v12 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000108DC(v1 + v12, v3, &qword_100643D10, &qword_100531000);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = sub_10001074C(v3, &qword_100643D10, &qword_100531000);
  }

  else
  {
    sub_1001DFB0C(v3, v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    if (sub_1003AB6E8())
    {
      CTFontGetLanguageAwareOutsets();
      result = sub_1001DFB74(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      left = v17;
      top = v18;
      right = v15;
      bottom = v16;
    }

    else
    {
      result = sub_1001DFB74(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    }
  }

  v14 = (v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets);
  *v14 = top;
  v14[1] = left;
  v14[2] = bottom;
  v14[3] = right;
  return result;
}

uint64_t sub_1003AB6E8()
{
  sub_100004CB8(&qword_100643FC8, &qword_1005313E0);
  __chkstk_darwin();
  v2 = &v19 - v1;
  v3 = sub_1004D7DAC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004D7E3C();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003A5E70(v0, v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v12, v7);
    sub_1004D7D9C();
    sub_1003ABE04(v2);
    (*(v4 + 8))(v6, v3);
    v13 = sub_1004DD4CC();
    v15 = v14;
    (*(v8 + 8))(v10, v7);
    v16 = v13;
  }

  else
  {
    v16 = *v12;
    v15 = v12[1];
  }

  v17 = String.containsExcessiveHeightCharacters.getter(v16, v15);

  return v17 & 1;
}

uint64_t NowPlaying.TrackTitleStackView.Label.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  sub_1003AA98C(v2, v3, v4);
  sub_10001074C(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text, &qword_100643D10, &qword_100531000);

  return v0;
}

uint64_t NowPlaying.TrackTitleStackView.Label.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  sub_1003AA98C(v2, v3, v4);
  sub_10001074C(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text, &qword_100643D10, &qword_100531000);

  return swift_deallocClassInstance();
}

__n128 Gliss.Transition<>.Output.transform3D.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v2;
  v3 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v3;
  v4 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v4;
  result = *(v1 + 56);
  v6 = *(v1 + 72);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 Gliss.Transition<>.Output.transform3D.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v2;
  v3 = *(a1 + 112);
  *(v1 + 120) = *(a1 + 96);
  *(v1 + 136) = v3;
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 72) = v6;
  return result;
}

uint64_t sub_1003ABB64()
{
  sub_100004CB8(&qword_100643FC8, &qword_1005313E0);
  __chkstk_darwin();
  v2 = &v15 - v1;
  v3 = sub_1004D7DAC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004D7E3C();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A5E70(v0, v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v12;
  }

  (*(v8 + 32))(v10, v12, v7);
  sub_1004D7D9C();
  sub_1003ABE04(v2);
  (*(v4 + 8))(v6, v3);
  v13 = sub_1004DD4CC();
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_1003ABE04@<X0>(uint64_t a1@<X8>)
{
  v22[2] = a1;
  v2 = sub_100004CB8(&qword_100643FD0, &qword_1005313E8);
  __chkstk_darwin();
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = sub_1004D7DFC();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100004CB8(&qword_100643FD8, &qword_1005313F0);
  __chkstk_darwin();
  v24 = v22 - v11;
  sub_100004CB8(&qword_100643FE0, &qword_1005313F8);
  __chkstk_darwin();
  v13 = v22 - v12;
  v14 = sub_1004D7DAC();
  v15 = sub_1003ADE4C(&qword_10063E790, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  v25 = v14;
  v16 = v15;
  sub_1004DDCFC();
  sub_1003ADE4C(&qword_10063E798, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = sub_1004DD35C();
  if (result)
  {
    sub_1004DDD3C();
    sub_1003ADE4C(&qword_100643FE8, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
    result = sub_1004DD33C();
    if (result)
    {
      v22[0] = v1;
      v22[1] = v16;
      v18 = *(v8 + 32);
      v18(v6, v13, v7);
      v18(&v6[*(v2 + 48)], v10, v7);
      sub_1000108DC(v6, v4, &qword_100643FD0, &qword_1005313E8);
      v19 = *(v2 + 48);
      v20 = v24;
      v18(v24, v4, v7);
      v21 = *(v8 + 8);
      v21(&v4[v19], v7);
      sub_100047F38(v6, v4, &qword_100643FD0, &qword_1005313E8);
      v18((v20 + *(v23 + 36)), &v4[*(v2 + 48)], v7);
      v21(v4, v7);
      sub_1004DDE0C();
      return sub_10001074C(v20, &qword_100643FD8, &qword_1005313F0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1003AC210(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

double sub_1003AC254(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v11 = a1;
    sub_100006F10(0, &qword_10063E980, UIAction_ptr);
    v12 = a4;
    v13 = v11;
    LOBYTE(v11) = sub_1004DE5FC();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    sub_100006F10(0, &qword_10063E8E8, UIMenu_ptr);
    v14 = a5;
    v15 = a2;
    v16 = sub_1004DE5FC();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3)
  {
    if (a6)
    {
      sub_100006F10(0, &qword_100641C80, UIColor_ptr);
      v17 = a6;
      v18 = a3;
      v19 = sub_1004DE5FC();

      if (v19)
      {
        return 1;
      }
    }
  }

  else if (!a6)
  {
    return 1;
  }

  return 0;
}