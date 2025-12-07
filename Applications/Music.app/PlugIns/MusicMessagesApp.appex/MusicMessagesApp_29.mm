void Artwork.View.intrinsicContentSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v2 = swift_beginAccess();
  if (*(v1 + 48) == 2 && *(v1 + 64) == 2)
  {
    v3 = *(v1 + 56);
    v4 = *(v1 + 40);
  }

  else
  {
    v4 = 0.0;
    v3 = 0.0;
  }

  Artwork.View.fittingImageSize(in:)(v2, v4, v3);
}

void Artwork.View.sizeThatFits(_:)(double a1, double a2)
{
  v5 = v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v6 = swift_beginAccess();
  v7 = *(v5 + 48);
  if (v7 == 255)
  {
    Artwork.View.fittingImageSize(in:)(v6, a1, a2);
  }

  else
  {
    v8 = *(v5 + 56);
    v9 = *(v5 + 40);
    v10 = *(v5 + 64);
    sub_1002D3B44(a1, a2, v9, v7);
    sub_1002D3B44(a1, a2, v8, v10);
  }
}

double Artwork.Size.computedSize(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6 = a4;
  sub_1002D3B44(a5, a6, a1, a2);
  v11 = v10;
  sub_1002D3B44(a5, a6, a3, v6);
  return v11;
}

uint64_t sub_1002D22BC(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  [v2 setImage:a1];
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  if (*v3 && (v4 = *(v3 + 1)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
  }

  v6 = v5;
  [v2 setBackgroundColor:v5];

  v7 = [v2 image];
  if (v7)
  {

    goto LABEL_7;
  }

  v8 = [v1 artworkCatalog];
  if (!v8)
  {
LABEL_7:
    if (*v3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_11:
  sub_1002D04B4();
LABEL_12:
  sub_1002D2B28();
  sub_1002D133C();
  v9 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 1);

    v11(v13);
    return sub_10000DE74(v11, v12);
  }

  return result;
}

void sub_1002D241C(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v19 = v6;
  v9 = [a2 imageRepresentation];
  if (v9)
  {
    v18 = v9;
    v10 = [v9 image];
    if (v10)
    {
      v11 = v10;
      if (([v18 isImagePrepared] & 1) == 0)
      {
        v14 = swift_allocObject();
        v14[2] = a3;
        v14[3] = v11;
        v14[4] = v8;
        aBlock[4] = sub_1002D5CAC;
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100014F1C;
        aBlock[3] = &unk_1005EC5D0;
        v15 = _Block_copy(aBlock);
        v16 = v19;
        v17 = v11;

        [v17 prepareForDisplayWithCompletionHandler:v15];

        _Block_release(v15);
        return;
      }

      v12 = v11;
      sub_1002D22BC(v11);

      [v8 setNeedsLayout];
      v13 = v18;
      goto LABEL_8;
    }
  }

  sub_1002D22BC(0);
  [v8 setNeedsLayout];
  v13 = v19;
LABEL_8:
}

uint64_t sub_1002D2620(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1004DBEBC();
  v24 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004DBEFC();
  v11 = *(v23 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006F10(0, &qword_100642240, OS_dispatch_queue_ptr);
  v22 = sub_1004DE14C();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_1002D5D20;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005EC620;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a3;
  v18 = a4;

  sub_1004DBEDC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002D5250(&qword_10063E488, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004CB8(&qword_10063E490, &unk_100533C70);
  sub_1002D5D2C();
  sub_1004DE92C();
  v19 = v22;
  sub_1004DE15C();
  _Block_release(v15);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

void sub_1002D2908(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = [a4 artworkCatalog];
  v9 = v8;
  if (!Strong)
  {
    if (v8)
    {

      return;
    }

LABEL_7:
    if (a2)
    {
      v11 = a2;
      sub_1002D22BC(a2);
    }

    else
    {
      if (qword_10063D968 != -1)
      {
        swift_once();
      }

      v12 = sub_1004D966C();
      sub_100035430(v12, static Logger.artwork);
      v13 = a3;
      v14 = sub_1004D964C();
      v15 = sub_1004DDF7C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to prepare image: %@", v16, 0xCu);
        sub_10001074C(v17, &qword_10063E4A0, &qword_100529150);
      }

      sub_1002D22BC(v13);
    }

    [a4 setNeedsLayout];
    return;
  }

  if (!v8)
  {

    return;
  }

  sub_100006F10(0, &qword_10063E4A8, MPArtworkCatalog_ptr);
  v10 = sub_1004DE5FC();

  if (v10)
  {
    goto LABEL_7;
  }
}

void sub_1002D2B28()
{
  v1 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v2 = v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v2 != 255)
  {
    v3 = *v1;
    v4 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v5 = *v1;
    v6 = [v4 image];
    if (v6)
    {
    }

    else
    {
      v9 = [v0 artworkCatalog];
      if (v9)
      {

        goto LABEL_8;
      }
    }

    v7 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v7])
    {
      v8 = 1;
LABEL_11:
      [v5 setHidden:v8];
      sub_1002D5B38(v3, v2);
      return;
    }

LABEL_8:
    v10 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
    swift_beginAccess();
    v11 = type metadata accessor for Artwork(0);
    if (*&v10[*(v11 + 32) + 24])
    {
      v8 = 0;
    }

    else
    {
      v8 = *&v10[*(v11 + 36)] == 0;
    }

    goto LABEL_11;
  }
}

void sub_1002D2C60(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v6 = *&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v7 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v3 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  if (v7 == 255 || v6 == 0)
  {
    sub_1002D5DF0(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    sub_1002D5DF0(a1, v3);
    if (!v8)
    {
      return;
    }
  }

  else
  {
    if (v8)
    {
      v10 = v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
      sub_100006F10(0, &qword_100644F50, UIView_ptr);
      sub_1002D5DF0(v6, v10);
      sub_1002D5DF0(a1, v3);
      v11 = sub_1004DE5FC();

      if (v11)
      {
        return;
      }

      goto LABEL_16;
    }

    sub_1002D5DF0(*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind], v7);
    sub_1002D5DF0(a1, v3);
    v8 = v6;
  }

LABEL_16:
  if (v3 != -1)
  {
    [a1 removeFromSuperview];
  }

  v12 = v5[8];
  if (v12 != 255)
  {
    v13 = *v5;
    v14 = *v5;
    v15 = v14;
    if ((v12 & 1) == 0)
    {
      [v14 setClipsToBounds:1];
    }

    [v2 addSubview:v15];
    [v2 setNeedsLayout];

    sub_1002D5B38(v13, v12);
  }
}

id CTRunRef.PartialRunView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

uint64_t (*sub_1002D2F5C(uint64_t **a1))()
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
  v2[4] = Artwork.View.typedConfiguration.modify(v2);
  return sub_1002D2FCC;
}

void sub_1002D2FCC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_1002D3014@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Artwork(0);
  a1[4] = sub_1002D5250(&qword_10063E188, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v3 = sub_1000357EC(a1);
  v4 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002D5098(v1 + v4, v3, type metadata accessor for Artwork);
  return result;
}

uint64_t sub_1002D30D4(void *a1)
{
  type metadata accessor for Artwork(0);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin();
  v6 = v10 - v5 + 40;
  sub_100035868(a1, v10);
  sub_100004CB8(&qword_10063E480, &unk_100529140);
  swift_dynamicCast();
  v7 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002D5098(v1 + v7, v4, type metadata accessor for Artwork);
  swift_beginAccess();
  sub_1002D5100(v6, v1 + v7);
  swift_endAccess();
  sub_1002CFD34(v4);
  sub_1002D5D90(v6, type metadata accessor for Artwork);
  sub_1002D5D90(v4, type metadata accessor for Artwork);
  return sub_100008D24(a1);
}

void (*sub_1002D3250(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  *(v3 + 24) = type metadata accessor for Artwork(0);
  v4[4] = sub_1002D5250(&qword_10063E188, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v5 = sub_1000357EC(v4);
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002D5098(v1 + v6, v5, type metadata accessor for Artwork);
  return sub_1002D3354;
}

void sub_1002D3354(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100035868(*a1, (v2 + 5));
    sub_1002D30D4(v2 + 5);
    sub_100008D24(v2);
  }

  else
  {
    sub_1002D30D4(*a1);
  }

  free(v2);
}

uint64_t sub_1002D33BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return UIContentView.supports(_:)(a1, ObjectType, a3);
}

double Artwork.Caching.reference.setter(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t (*Artwork.Caching.reference.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return sub_1002D34A0;
}

double sub_1002D34A0(void *a1)
{
  swift_weakAssign();

  return result;
}

double Artwork.Caching.init(reference:identifier:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_weakInit();
  *a4 = a2;
  a4[1] = a3;
  swift_weakAssign();

  return result;
}

void Artwork.Caching.init(reference:)(void *a2@<X8>)
{
  swift_weakInit();
  swift_weakAssign();

  *a2 = 0xD00000000000001CLL;
  a2[1] = 0x80000001004F4DD0;
}

uint64_t Artwork.Content.init(catalog:background:)(uint64_t result, void *a2)
{
  if (!result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t static Artwork.Content.__derived_struct_equals(_:_:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_100006F10(0, &unk_100644F40, NSObject_ptr);
  if (sub_1004DE5FC())
  {
    if (a2)
    {
      if (a4)
      {
        sub_100006F10(0, &qword_100641C80, UIColor_ptr);
        v6 = a4;
        v7 = a2;
        v8 = sub_1004DE5FC();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1002D36E4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_100006F10(0, &unk_100644F40, NSObject_ptr);
  if (sub_1004DE5FC())
  {
    if (v2)
    {
      if (v3)
      {
        sub_100006F10(0, &qword_100641C80, UIColor_ptr);
        v4 = v3;
        v5 = v2;
        v6 = sub_1004DE5FC();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Artwork.Decoration.border.getter()
{
  v1 = *v0;
  v2 = v0[2];
  return v1;
}

void Artwork.Decoration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

id Artwork.Decoration.fillColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Artwork.Decoration(0) + 24));

  return v1;
}

void Artwork.Decoration.fillColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Artwork.Decoration(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t Artwork.Decoration.fillAxes.setter(uint64_t a1)
{
  result = type metadata accessor for Artwork.Decoration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t static Artwork.Decoration.with(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = v4[5];
  v6 = sub_1004DE53C();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = v4[6];
  *&a2[v7] = [objc_opt_self() blackColor];
  *&a2[v4[7]] = 1;
  return a1(a2);
}

uint64_t sub_1002D3B44(double a1, double a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    if (a1 != 1.79769313e308)
    {
      return result;
    }

    sub_1004DEAAC(67);
    v9._countAndFlagsBits = 0x6F69736E656D6944;
    v9._object = 0xE90000000000006ELL;
    sub_1004DD5FC(v9);
    v10._object = 0x80000001004F4F40;
    v10._countAndFlagsBits = 0xD000000000000030;
    sub_1004DD5FC(v10);
    v11._countAndFlagsBits = sub_1004DE44C();
    sub_1004DD5FC(v11);

    v12._countAndFlagsBits = 0x696C61766E49203ALL;
    v12._object = 0xEF68746469772064;
    sub_1004DD5FC(v12);
LABEL_10:
    result = sub_1004DECCC();
    __break(1u);
    return result;
  }

  if (a4 == 1 && a2 == 1.79769313e308)
  {
    sub_1004DEAAC(68);
    v5._countAndFlagsBits = 0x6F69736E656D6944;
    v5._object = 0xE90000000000006ELL;
    sub_1004DD5FC(v5);
    v6._object = 0x80000001004F4F40;
    v6._countAndFlagsBits = 0xD000000000000030;
    sub_1004DD5FC(v6);
    v7._countAndFlagsBits = sub_1004DE44C();
    sub_1004DD5FC(v7);

    v8._countAndFlagsBits = 0xD000000000000010;
    v8._object = 0x80000001004F4F80;
    sub_1004DD5FC(v8);
    goto LABEL_10;
  }

  return result;
}

BOOL static Artwork.Size.Dimension.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = *&a1 == *&a3;
    if (a4 != 1)
    {
      v4 = 0;
    }

    v5 = a4 == 2 && *&a1 == *&a3;
    if (a2 == 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return !a4 && *&a1 == *&a3;
  }
}

uint64_t sub_1002D3DC8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1 && v2 == v3)
      {
        return 1;
      }
    }

    else if (v4 == 2 && v2 == v3)
    {
      return 1;
    }
  }

  else if (!*(a2 + 8) && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1002D3F14(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = type metadata accessor for Artwork.Decoration(0);
  sub_100035718(v10, a2);
  v11 = sub_100035430(v10, a2);
  if (qword_10063D868 != -1)
  {
    swift_once();
  }

  v12 = static UIView.Border.artwork;
  v13 = byte_100673748;
  v14 = *a3;
  v15 = qword_100673750;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_1004DE53C();
  v17 = sub_100035430(v16, a4);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v9, v17, v16);
  (*(v18 + 56))(v9, 0, 1, v16);
  v19 = [objc_opt_self() blackColor];
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v15;
  result = sub_1002D5B4C(v9, v11 + v10[5]);
  *(v11 + v10[6]) = v19;
  *(v11 + v10[7]) = 1;
  return result;
}

uint64_t sub_1002D4144(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Artwork.Decoration(0);

  return sub_100035430(v4, a2);
}

uint64_t sub_1002D41BC()
{
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = type metadata accessor for Artwork.Decoration(0);
  sub_100035718(v2, static Artwork.Decoration.round);
  v3 = sub_100035430(v2, static Artwork.Decoration.round);
  if (qword_10063D868 != -1)
  {
    swift_once();
  }

  v4 = static UIView.Border.artwork;
  v5 = byte_100673748;
  v6 = qword_100673750;
  v7 = qword_100673750;
  sub_1004DE52C();
  v8 = sub_1004DE53C();
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  v9 = [objc_opt_self() blackColor];
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  result = sub_1002D5B4C(v1, v3 + v2[5]);
  *(v3 + v2[6]) = v9;
  *(v3 + v2[7]) = 1;
  return result;
}

double sub_1002D4394@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Artwork.Decoration(0);
  v7 = sub_100035430(v6, a2);
  sub_1002D5098(v7, a4, type metadata accessor for Artwork.Decoration);
  return result;
}

uint64_t Artwork.Decoration.scaled(using:compatibleWith:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = sub_1004DE4EC();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v28 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v27 - v13;
  sub_1002D5098(v4, a3, type metadata accessor for Artwork.Decoration);
  if (*(v4 + 16) && *(a3 + 16))
  {
    v15 = *(v4 + 8);
    [a1 scaledValueForValue:a2 compatibleWithTraitCollection:*v4];
    *a3 = v16;
    *(a3 + 8) = v15 & 1;
  }

  v29 = a1;
  v30 = a2;
  v17 = type metadata accessor for Artwork.Decoration(0);
  sub_1000108DC(v4 + *(v17 + 20), v9, &qword_100644A50, &qword_100528DC0);
  v18 = sub_1004DE53C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v9, 1, v18) == 1)
  {
    return sub_10001074C(v9, &qword_100644A50, &qword_100528DC0);
  }

  sub_1004DE50C();
  (*(v19 + 8))(v9, v18);
  v22 = (*(v11 + 88))(v14, v10);
  if (v22 != enum case for UIView.Corner.Radius.value(_:))
  {
    return (*(v11 + 8))(v14, v10);
  }

  v23 = v22;
  (*(v11 + 96))(v14, v10);
  result = (v20)(a3 + *(v17 + 20), 1, v18);
  if (!result)
  {
    v24 = v14[8];
    [v29 scaledValueForValue:v30 compatibleWithTraitCollection:*v14];
    v25 = v28;
    *v28 = v26;
    *(v25 + 8) = v24;
    (*(v11 + 104))(v25, v23, v10);
    return sub_1004DE51C();
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV7CachingV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = sub_1004DF08C(), result = 0, (v3 & 1) != 0))
  {
    Strong = swift_weakLoadStrong();
    v6 = swift_weakLoadStrong();
    if (Strong)
    {
      if (v6)
      {
        v7 = v6;

        return Strong == v7;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s11MusicCoreUI7ArtworkV4SizeV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a2)
  {
    if (a2 == 1)
    {
      result = 0;
      if (a6 != 1)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (a6 != 2)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (a6)
    {
      return result;
    }
  }

  if (*&a1 == *&a5)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        if (a8 == 1 && *&a3 == *&a7)
        {
          return 1;
        }
      }

      else if (a8 == 2 && *&a3 == *&a7)
      {
        return 1;
      }
    }

    else if (!a8 && *&a3 == *&a7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV10DecorationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1004DE53C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v35 = &v32 - v8;
  v9 = sub_100004CB8(&qword_10063E4C8, &qword_100529170);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v12 = a1[2];
  v13 = a2[2];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v33 = v4;
    v34 = v7;
    v15 = *a1;
    v14 = a1[1];
    v32 = v5;
    v16 = a1;
    v18 = *a2;
    v17 = a2[1];
    v19 = v13;
    v37 = v14 & 1;
    v20 = v17 & 1;
    a1 = v16;
    v36 = v20;
    v21 = v18;
    v5 = v32;
    v4 = v33;
    v22 = static UIView.Border.__derived_struct_equals(_:_:)(v15, v14 & 1, v12, v21, v20, v19);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v34 = v7;
    if (v13)
    {
      return 0;
    }
  }

  v23 = type metadata accessor for Artwork.Decoration(0);
  v24 = *(v23 + 20);
  v25 = *(v9 + 48);
  sub_1000108DC(a1 + v24, v11, &qword_100644A50, &qword_100528DC0);
  sub_1000108DC(a2 + v24, &v11[v25], &qword_100644A50, &qword_100528DC0);
  v26 = *(v5 + 48);
  if (v26(v11, 1, v4) != 1)
  {
    v27 = v35;
    sub_1000108DC(v11, v35, &qword_100644A50, &qword_100528DC0);
    if (v26(&v11[v25], 1, v4) != 1)
    {
      v28 = v34;
      (*(v5 + 32))(v34, &v11[v25], v4);
      sub_1002D5250(&qword_10063E4D0, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
      v29 = sub_1004DD35C();
      v30 = *(v5 + 8);
      v30(v28, v4);
      v30(v27, v4);
      sub_10001074C(v11, &qword_100644A50, &qword_100528DC0);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v27, v4);
LABEL_11:
    sub_10001074C(v11, &qword_10063E4C8, &qword_100529170);
    return 0;
  }

  if (v26(&v11[v25], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_10001074C(v11, &qword_100644A50, &qword_100528DC0);
LABEL_13:
  sub_100006F10(0, &unk_100644F40, NSObject_ptr);
  if (sub_1004DE5FC())
  {
    return *(a1 + *(v23 + 28)) == *(a2 + *(v23 + 28));
  }

  return 0;
}

BOOL _s11MusicCoreUI7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = a1[1];
    v6 = *(a2 + 8);
    sub_100006F10(0, &unk_100644F40, NSObject_ptr);
    v7 = v6;
    v8 = v4;
    if (sub_1004DE5FC())
    {
      if (v5)
      {
        if (v6)
        {
          sub_100006F10(0, &qword_100641C80, UIColor_ptr);
          v9 = v7;
          v10 = v5;
          v11 = sub_1004DE5FC();

          if ((v11 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_9;
        }

LABEL_20:

        return 0;
      }

      if (!v6)
      {

        goto LABEL_9;
      }
    }

    goto LABEL_20;
  }

  if (v4)
  {
    return 0;
  }

LABEL_9:
  sub_1000108DC((a1 + 2), &v43, &qword_10063E130, &qword_100528DB0);
  sub_1000108DC(a2 + 16, &v46, &qword_10063E130, &qword_100528DB0);
  if (!v44)
  {
    if (!v47)
    {
      sub_10001074C(&v43, &qword_10063E130, &qword_100528DB0);
      goto LABEL_15;
    }

LABEL_22:
    sub_10001074C(&v43, &qword_10063E4D8, &qword_100529178);
    return 0;
  }

  sub_1000108DC(&v43, v42, &qword_10063E130, &qword_100528DB0);
  if (!v47)
  {
    sub_1002D5C34(v42);
    goto LABEL_22;
  }

  sub_1002D5E04(&v46, v41);
  v12 = _s11MusicCoreUI7ArtworkV7CachingV23__derived_struct_equalsySbAE_AEtFZ_0(v42, v41);
  sub_1002D5C34(v41);
  sub_1002D5C34(v42);
  sub_10001074C(&v43, &qword_10063E130, &qword_100528DB0);
  if (!v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13 == 255)
  {
    if (v14 != 255)
    {
      return 0;
    }
  }

  else if (v14 == 255 || (_s11MusicCoreUI7ArtworkV4SizeV23__derived_struct_equalsySbAE_AEtFZ_0(a1[5], v13, a1[7], *(a1 + 64), *(a2 + 40), v14, *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for Artwork(0);
  if (!_s11MusicCoreUI7ArtworkV10DecorationV23__derived_struct_equalsySbAE_AEtFZ_0((a1 + v16[7]), (a2 + v16[7])))
  {
    return 0;
  }

  v17 = v16[8];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = *(a1 + v17 + 16);
  v21 = *(a1 + v17 + 24);
  v23 = *(a1 + v17 + 32);
  v22 = *(a1 + v17 + 40);
  v24 = a2 + v17;
  v26 = *v24;
  v25 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v30 = *(v24 + 32);
  v29 = *(v24 + 40);
  if (v21)
  {
    if (v28)
    {
      v43 = *v24;
      v44 = v25;
      v45 = v27;
      v46 = v28;
      v47 = v30;
      v48 = v29;
      v42[0] = v18;
      v42[1] = v19;
      v42[2] = v20;
      v42[3] = v21;
      v42[4] = v23;
      v42[5] = v22;
      v36 = v26;
      v31 = v26;
      v32 = v19;
      v37 = v25;
      v39 = v27;
      v33 = v20;
      sub_10001B558(v31, v25, v27, v28);
      sub_10001B558(v18, v32, v33, v21);
      v34 = _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(v42, &v43);

      sub_10001B5B0(v18, v32, v33, v21);
      if (v34)
      {
        return *(a2 + v16[9]) == *(a1 + v16[9]);
      }

      return 0;
    }

LABEL_33:
    v38 = *(v24 + 8);
    v40 = *(v24 + 16);
    v35 = v20;
    sub_10001B558(*v24, v38, v27, v28);
    sub_10001B558(v18, v19, v35, v21);
    sub_10001B5B0(v18, v19, v35, v21);
    sub_10001B5B0(v26, v38, v40, v28);
    return 0;
  }

  if (v28)
  {
    goto LABEL_33;
  }

  return *(a2 + v16[9]) == *(a1 + v16[9]);
}

uint64_t sub_1002D5098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D5100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D51CC(uint64_t a1)
{
  *(a1 + 8) = sub_1002D5250(&qword_10063E180, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  result = sub_1002D5250(&qword_10063E188, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002D5250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002D52E0(uint64_t a1)
{
  result = sub_1002D5250(&qword_10063E1D8, type metadata accessor for Artwork.View, &protocol conformance descriptor for Artwork.View);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002D534C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for Artwork.Decoration(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1002D5418(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for Artwork.Decoration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002D54BC(uint64_t a1)
{
  sub_10004BEAC(319, &qword_10063E248, &type metadata for Artwork.Content);
  if (v1 <= 0x3F)
  {
    sub_10004BEAC(319, &qword_10063E250, &type metadata for Artwork.Caching);
    if (v2 <= 0x3F)
    {
      sub_10004BEAC(319, &qword_10063E258, &type metadata for Artwork.Size);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Artwork.Decoration(319);
        if (v4 <= 0x3F)
        {
          sub_10004BEAC(319, &qword_10063E260, &type metadata for Artwork.Placeholder);
          if (v5 <= 0x3F)
          {
            sub_1002D55E0(319);
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

void sub_1002D55E0(uint64_t a1)
{
  if (!qword_10063E268)
  {
    sub_100008DE4(&unk_10063E270, &unk_100528FA0);
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_10063E268);
    }
  }
}

uint64_t sub_1002D564C(uint64_t a1)
{
  result = type metadata accessor for Artwork(319);
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

uint64_t sub_1002D5760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1002D5840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1002D5908(uint64_t a1)
{
  sub_10004BEAC(319, &unk_100644BB0, &type metadata for UIView.Border);
  if (v1 <= 0x3F)
  {
    sub_1002D59DC(319);
    if (v2 <= 0x3F)
    {
      sub_100006F10(319, &qword_100641C80, UIColor_ptr);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UIAxis(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002D59DC(uint64_t a1)
{
  if (!qword_10063E448)
  {
    sub_1004DE53C();
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_10063E448);
    }
  }
}

__n128 sub_1002D5A34(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1002D5A48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002D5A90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Artwork.Size.Dimension(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_1002D5B38(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_1002D5B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D5BBC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002D5BF4()
{

  return swift_deallocObject();
}

uint64_t sub_1002D5C64()
{

  return swift_deallocObject();
}

double sub_1002D5CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002D5CD0()
{

  return swift_deallocObject();
}

unint64_t sub_1002D5D2C()
{
  result = qword_10063E498;
  if (!qword_10063E498)
  {
    sub_100008DE4(&qword_10063E490, &unk_100533C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E498);
  }

  return result;
}

uint64_t sub_1002D5D90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1002D5DF0(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

void Artwork.Placeholder.View.typedConfiguration.setter(uint64_t *a1)
{
  sub_1002DB134(a1);
  v4 = *a1;
  sub_10001074C(&v4, &qword_10063E4B8, &qword_100529160);
  v3 = a1[1];
  sub_10001074C(&v3, &qword_10063E4B8, &qword_100529160);
  v2 = a1[2];
  sub_10001074C(&v2, &qword_10063E4C0, &qword_100529168);
}

void *Artwork.Placeholder.tint.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id sub_1002D5F4C()
{
  result = [objc_opt_self() tertiaryLabelColor];
  qword_10063E4E0 = result;
  return result;
}

__n128 static Artwork.Placeholder.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() secondarySystemFillColor];
  if (qword_10063D790 != -1)
  {
    swift_once();
  }

  v5 = qword_10063E4E0;
  v6 = objc_opt_self();
  v7 = v5;
  *&v11 = v4;
  *(&v11 + 1) = v5;
  v12 = 0;
  v13 = [v6 configurationWithWeight:4];
  v14 = xmmword_100527130;
  a1(&v11);
  v8 = v12;
  v9 = v13;
  result = v14;
  *a2 = v11;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  return result;
}

id Artwork.Placeholder.preferredSymbolConfiguration(in:)(double a1, double a2)
{
  if (a1 > a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 < a1)
  {
    a1 = a2;
  }

  if (v3 * *(v2 + 32) >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3 * *(v2 + 32);
  }

  v5 = *(v2 + 24);
  v6 = [objc_opt_self() configurationWithPointSize:v4];
  v7 = [v5 configurationByApplyingConfiguration:v6];

  return v7;
}

void Artwork.Placeholder.image(with:graphicsFormat:)(uint64_t a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a1 format:{a2, a3}];
  v5 = *v3;
  v18 = v3[1];
  v19 = v5;
  v6 = v3[2];
  v7 = v3[3];
  v16 = 0;
  v17 = v6;
  v8 = swift_allocObject();
  v9 = *(v3 + 1);
  *(v8 + 16) = *v3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v3 + 2);
  *(v8 + 64) = &v16;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1002DB2C8;
  *(v10 + 24) = v8;
  aBlock[4] = sub_10001E39C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001E3C4;
  aBlock[3] = &unk_1005EC698;
  v11 = _Block_copy(aBlock);
  sub_1000108DC(&v19, v14, &qword_10063E4B8, &qword_100529160);
  sub_1000108DC(&v18, v14, &qword_10063E4B8, &qword_100529160);
  sub_1000108DC(&v17, v14, &qword_10063E4C0, &qword_100529168);
  v12 = v7;

  v13 = [v4 imageWithActions:v11];

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_1002D634C(void *a1, uint64_t a2, void **a3)
{
  v6 = [a1 format];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  [v15 setFill];

  v16 = objc_opt_self();
  v17 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
  [v17 fill];

  if (*a2)
  {
    v18 = *a2;
    [v18 setFill];
    v19 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
    [v19 fill];
  }

  if (v12 > v14)
  {
    v20 = v12;
  }

  else
  {
    v20 = v14;
  }

  if (v14 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v14;
  }

  v22 = v20 * *(a2 + 32);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(a2 + 24);
  v25 = [objc_opt_self() configurationWithPointSize:v23];
  v26 = [v24 configurationByApplyingConfiguration:v25];

  v27 = *(a2 + 16);
  if (v27)
  {
    v28 = [v27 imageWithSymbolConfiguration:v26];
    if (v28)
    {
      v29 = v28;
      if (*(a2 + 8))
      {
        v30 = [v28 imageWithTintColor:?];

        v29 = v30;
      }

      [v29 size];
      v32 = v31;
      v33 = [objc_opt_self() mainScreen];
      [v33 scale];

      sub_1004DE3CC();
      [v29 drawInRect:v32];
    }
  }

  v34 = [a1 currentImage];

  v35 = *a3;
  *a3 = v34;
}

char *Artwork.Placeholder.View.init(configuration:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = *a1;
  v17 = a1[1];
  v18 = v5;
  v6 = a1[3];
  v16 = a1[2];
  v7 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  v8 = *(a1 + 2);
  v9 = *(a1 + 1);
  *v7 = *a1;
  *(v7 + 1) = v9;
  *(v7 + 2) = v8;
  sub_1000108DC(&v18, v19, &qword_10063E4B8, &qword_100529160);
  sub_1000108DC(&v17, v19, &qword_10063E4B8, &qword_100529160);
  sub_1000108DC(&v16, v19, &qword_10063E4C0, &qword_100529168);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = *(v11 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView);
  v13 = v11;
  [v13 addSubview:v12];
  memset(v19, 0, sizeof(v19));
  sub_1002D67E0(v19);
  sub_10001074C(&v18, &qword_10063E4B8, &qword_100529160);
  sub_10001074C(&v17, &qword_10063E4B8, &qword_100529160);
  sub_10001074C(&v16, &qword_10063E4C0, &qword_100529168);

  return v13;
}

void sub_1002D67E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 24);
  v5 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v11 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (*v5)
  {
    v12 = v8;
    v13 = v9;
    v14 = v6;
    v15 = v7;
  }

  else
  {
    v16 = objc_opt_self();
    v12 = v8;
    v17 = v9;
    v14 = v6;
    v15 = [v16 clearColor];
    v7 = 0;
  }

  v18 = v7;
  [v2 setBackgroundColor:v15];

  v19 = *&v2[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  [v19 setHidden:v8 == 0];
  [v19 setImage:v12];
  [v19 setTintColor:v14];
  [v19 setAlpha:v10];
  v20 = [v2 superview];
  if (!v20)
  {
    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  v21 = *(a1 + 16);
  v22 = v21;
  v23 = v22;
  if (!v8)
  {
    if (!v21)
    {
      goto LABEL_13;
    }

LABEL_15:
    [v2 setNeedsLayout];
    goto LABEL_16;
  }

  if (!v21)
  {
    goto LABEL_15;
  }

  sub_100006F10(0, &qword_1006432B0, UIImage_ptr);
  v24 = v12;
  v25 = sub_1004DE5FC();

  if ((v25 & 1) == 0 || !*(a1 + 24))
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v11 != *(a1 + 32))
  {
    goto LABEL_15;
  }

  sub_100006F10(0, &unk_100644E10, UIImageSymbolConfiguration_ptr);
  v26 = v9;
  v27 = v4;
  v28 = sub_1004DE5FC();

  if ((v28 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
}

void Artwork.Placeholder.View.init(coder:)()
{
  v1 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  sub_1004DECCC();
  __break(1u);
}

id Artwork.Placeholder.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v11 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v11;
  *(a1 + 32) = *(v3 + 32);
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

void (*Artwork.Placeholder.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  *(v3 + 464) = v1;
  *(v3 + 472) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  *(v4 + 48) = *v6;
  *(v4 + 56) = v8;
  v4 += 48;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v11;
  v12 = v9;
  v13 = v10;
  v14 = v7;
  v15 = v8;
  return sub_1002D6CAC;
}

void sub_1002D6CAC(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 58) + *(*a1 + 59));
  if (a2)
  {
    v4 = *(v2 + 4);
    v5 = *(v2 + 5);
    v6 = *(v2 + 3);
    v7 = v6;
    *(v2 + 19) = v4;
    *(v2 + 20) = v5;
    *(v2 + 18) = v6;
    *(v2 + 49) = *(v2 + 18);
    v8 = v2[39];
    v2[51] = v2[38];
    v10 = *(v3 + 1);
    v9 = *(v3 + 2);
    *v2 = *v3;
    *(v2 + 1) = v10;
    *(v2 + 2) = v9;
    v11 = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v35 = v3[4];
    v36 = v3[3];
    v34 = v3[5];
    v2[46] = *v2;
    v14 = *(v2 + 5);
    *(v3 + 1) = v4;
    *(v3 + 2) = v14;
    *v3 = v7;
    sub_1000108DC((v2 + 49), (v2 + 57), &qword_10063E4B8, &qword_100529160);
    sub_1000108DC((v2 + 50), (v2 + 57), &qword_10063E4B8, &qword_100529160);
    sub_1000108DC((v2 + 51), (v2 + 57), &qword_10063E4C0, &qword_100529168);
    v15 = v8;
    sub_1000108DC((v2 + 49), (v2 + 57), &qword_10063E4B8, &qword_100529160);
    sub_1000108DC((v2 + 50), (v2 + 57), &qword_10063E4B8, &qword_100529160);
    sub_1000108DC((v2 + 51), (v2 + 57), &qword_10063E4C0, &qword_100529168);
    v16 = v15;
    if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0((v2 + 36), v2))
    {
      v2[30] = v11;
      v2[31] = v12;
      v2[32] = v13;
      v2[33] = v36;
      v2[34] = v35;
      v2[35] = v34;
      sub_1002D67E0((v2 + 30));
    }

    sub_10001074C((v2 + 46), &qword_10063E4B8, &qword_100529160);
    v2[47] = v2[1];
    sub_10001074C((v2 + 47), &qword_10063E4B8, &qword_100529160);
    v17 = v2[3];
    v2[48] = v2[2];
    sub_10001074C((v2 + 48), &qword_10063E4C0, &qword_100529168);

    sub_10001074C((v2 + 49), &qword_10063E4B8, &qword_100529160);
    sub_10001074C((v2 + 50), &qword_10063E4B8, &qword_100529160);
    sub_10001074C((v2 + 51), &qword_10063E4C0, &qword_100529168);

    v18 = v2[6];
    v19 = v2[7];
    v20 = v2[8];
  }

  else
  {
    v21 = *(v2 + 4);
    *(v2 + 9) = *(v2 + 3);
    *(v2 + 10) = v21;
    v23 = *(v2 + 3);
    v22 = *(v2 + 4);
    *(v2 + 11) = *(v2 + 5);
    v24 = *v3;
    v25 = *(v3 + 2);
    *(v2 + 13) = *(v3 + 1);
    *(v2 + 14) = v25;
    *(v2 + 12) = v24;
    v26 = v3[1];
    v37 = *v3;
    v27 = v3[2];
    v28 = v3[3];
    v29 = v3[4];
    v30 = v3[5];
    v2[54] = v2[24];
    v31 = v2[21];
    v2[45] = v2[20];
    *(v2 + 55) = *(v2 + 9);
    v32 = *(v2 + 5);
    *(v3 + 1) = v22;
    *(v3 + 2) = v32;
    *v3 = v23;
    sub_1000108DC((v2 + 55), (v2 + 57), &qword_10063E4B8, &qword_100529160);
    sub_1000108DC((v2 + 56), (v2 + 57), &qword_10063E4B8, &qword_100529160);
    sub_1000108DC((v2 + 45), (v2 + 57), &qword_10063E4C0, &qword_100529168);
    v20 = v31;
    if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0((v2 + 18), (v2 + 24)))
    {
      v2[12] = v37;
      v2[13] = v26;
      v2[14] = v27;
      v2[15] = v28;
      v2[16] = v29;
      v2[17] = v30;
      sub_1002D67E0((v2 + 12));
    }

    sub_10001074C((v2 + 54), &qword_10063E4B8, &qword_100529160);
    v2[53] = v2[25];
    sub_10001074C((v2 + 53), &qword_10063E4B8, &qword_100529160);
    v33 = v2[27];
    v2[52] = v2[26];
    sub_10001074C((v2 + 52), &qword_10063E4C0, &qword_100529168);

    sub_10001074C((v2 + 55), &qword_10063E4B8, &qword_100529160);
    sub_10001074C((v2 + 56), &qword_10063E4B8, &qword_100529160);
    sub_10001074C((v2 + 45), &qword_10063E4C0, &qword_100529168);
  }

  free(v2);
}

Swift::Void __swiftcall Artwork.Placeholder.View.layoutSubviews()()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  v2 = &v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 2);
  v8 = v5;
  v9 = v3;
  v10 = v4;
  [v0 bounds];
  if (v11 > v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v12 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = v6 * v13;
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [objc_opt_self() configurationWithPointSize:v16];
  v18 = [v8 configurationByApplyingConfiguration:v17];

  [v1 setPreferredSymbolConfiguration:v18];
  [v1 setContentMode:4];
  [v0 bounds];
  [v1 sizeThatFits:{v19, v20}];
  sub_1004DE3BC(0.0, 0.0, v21, v22);
  [v1 setFrame:?];
}

id sub_1002D7320@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v11 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v11;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v3 + 32);
  v7 = v5;
  v8 = v6;
  v9 = v4;

  return v11;
}

void sub_1002D73AC(__int128 *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = v1;
  v4 = a1[2];
  sub_1002DB134(&v2);
  v5 = v2;
  sub_10001074C(&v5, &qword_10063E4B8, &qword_100529160);
  v6 = *(&v2 + 1);
  sub_10001074C(&v6, &qword_10063E4B8, &qword_100529160);
  v7 = v3;
  sub_10001074C(&v7, &qword_10063E4C0, &qword_100529168);
}

void (*sub_1002D7450(uint64_t **a1))(void *a1)
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
  v2[4] = Artwork.Placeholder.View.typedConfiguration.modify(v2);
  return sub_1002D2FCC;
}

id sub_1002D74C0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for Artwork.Placeholder;
  a1[4] = sub_1002DB8C8();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v12 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *(v3 + 16) = *v4;
  *(v3 + 24) = v12;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  *(v3 + 48) = *(v4 + 32);
  v8 = v6;
  v9 = v7;
  v10 = v5;

  return v12;
}

uint64_t sub_1002D757C(void *a1)
{
  sub_100035868(a1, v6);
  sub_100004CB8(&qword_10063E480, &unk_100529140);
  swift_dynamicCast();
  v7 = v3;
  v8 = v4;
  v9 = v5;
  sub_1002DB134(&v7);
  v10 = v7;
  sub_10001074C(&v10, &qword_10063E4B8, &qword_100529160);
  v11 = *(&v7 + 1);
  sub_10001074C(&v11, &qword_10063E4B8, &qword_100529160);
  v12 = v8;
  sub_10001074C(&v12, &qword_10063E4C0, &qword_100529168);

  return sub_100008D24(a1);
}

void (*sub_1002D7670(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x158uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[42] = v1;
  v3[21] = &type metadata for Artwork.Placeholder;
  v3[22] = sub_1002DB8C8();
  v5 = swift_allocObject();
  v4[18] = v5;
  v6 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *(v5 + 16) = *v6;
  *(v5 + 24) = v8;
  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  *(v5 + 48) = *(v6 + 32);
  v11 = v9;
  v12 = v10;
  v13 = v7;
  v14 = v8;
  return sub_1002D776C;
}

void sub_1002D776C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100035868(v2 + 144, v2 + 184);
    sub_100035868(v2 + 184, v2 + 224);
    sub_100004CB8(&qword_10063E480, &unk_100529140);
    swift_dynamicCast();
    v3 = *(v2 + 112);
    *v2 = *(v2 + 96);
    *(v2 + 16) = v3;
    *(v2 + 32) = *(v2 + 128);
    sub_1002DB134(v2);
    *(v2 + 328) = *v2;
    sub_10001074C(v2 + 328, &qword_10063E4B8, &qword_100529160);
    *(v2 + 320) = *(v2 + 8);
    sub_10001074C(v2 + 320, &qword_10063E4B8, &qword_100529160);
    *(v2 + 312) = *(v2 + 16);
    sub_10001074C(v2 + 312, &qword_10063E4C0, &qword_100529168);

    sub_100008D24((v2 + 184));
  }

  else
  {
    sub_100035868(v2 + 144, v2 + 184);
    sub_100004CB8(&qword_10063E480, &unk_100529140);
    swift_dynamicCast();
    v4 = *(v2 + 112);
    *(v2 + 48) = *(v2 + 96);
    *(v2 + 64) = v4;
    *(v2 + 80) = *(v2 + 128);
    sub_1002DB134((v2 + 48));
    *(v2 + 304) = *(v2 + 48);
    sub_10001074C(v2 + 304, &qword_10063E4B8, &qword_100529160);
    *(v2 + 296) = *(v2 + 56);
    sub_10001074C(v2 + 296, &qword_10063E4B8, &qword_100529160);
    *(v2 + 288) = *(v2 + 64);
    sub_10001074C(v2 + 288, &qword_10063E4C0, &qword_100529168);
  }

  sub_100008D24((v2 + 144));

  free(v2);
}

char *sub_1002D7950(uint64_t a1)
{
  v2 = v1[1];
  v10[0] = *v1;
  v10[1] = v2;
  v10[2] = v1[2];
  v11 = v10[0];
  v3 = *(&v2 + 1);
  v12 = v2;
  v4 = objc_allocWithZone(type metadata accessor for Artwork.Placeholder.View());
  sub_1000108DC(&v11, v9, &qword_10063E4B8, &qword_100529160);
  sub_1000108DC(&v11 + 8, v9, &qword_10063E4B8, &qword_100529160);
  sub_1000108DC(&v12, v9, &qword_10063E4C0, &qword_100529168);
  v5 = v3;
  v6 = Artwork.Placeholder.View.init(configuration:)(v10);
  sub_1002DB9C8(&qword_10063E558, v7, type metadata accessor for Artwork.Placeholder.View, &protocol conformance descriptor for Artwork.Placeholder.View);
  return v6;
}

id sub_1002D7A48@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v9 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v9;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v2;

  return v9;
}

BOOL sub_1002D7AB0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

double sub_1002D7AF8()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v1 colorWithAlphaComponent:0.1];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.12];

  v5 = sub_1004DD3FC();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.nowPlaying = v2;
  unk_100673510 = v4;
  qword_100673518 = v6;
  unk_100673520 = v7;
  result = 0.46;
  xmmword_100673528 = xmmword_100527140;
  return result;
}

uint64_t *Artwork.Placeholder.nowPlaying.unsafeMutableAddressor()
{
  if (qword_10063D798 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.nowPlaying;
}

id static Artwork.Placeholder.nowPlaying.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D798 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.nowPlaying;
  v2 = unk_100673510;
  v4 = qword_100673518;
  v3 = unk_100673520;
  v10 = unk_100673520;
  *a1 = static Artwork.Placeholder.nowPlaying;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100673528;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double sub_1002D7D18()
{
  v0 = objc_opt_self();
  v1 = [v0 secondarySystemFillColor];
  v2 = [v0 secondaryLabelColor];
  v3 = sub_1004DD3FC();
  v4 = [objc_opt_self() _systemImageNamed:v3];

  v5 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.miniPlayer = v1;
  unk_100673540 = v2;
  qword_100673548 = v4;
  unk_100673550 = v5;
  result = 0.46;
  xmmword_100673558 = xmmword_100527140;
  return result;
}

uint64_t *Artwork.Placeholder.miniPlayer.unsafeMutableAddressor()
{
  if (qword_10063D7A0 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.miniPlayer;
}

id static Artwork.Placeholder.miniPlayer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D7A0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.miniPlayer;
  v2 = unk_100673540;
  v4 = qword_100673548;
  v3 = unk_100673550;
  v10 = unk_100673550;
  *a1 = static Artwork.Placeholder.miniPlayer;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100673558;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

void static Artwork.Placeholder.device(representing:basedOn:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = v6;
  v11 = [v8 _symbolImageForRoute:a1];
  v12 = v11;
  if (!v6)
  {
    v19 = qword_10063D790;
    v20 = v11;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = qword_10063E4E0;
    goto LABEL_12;
  }

  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 secondaryLabelColor];
  sub_100006F10(0, &qword_100641C80, UIColor_ptr);
  v17 = sub_1004DE5FC();

  if (v17)
  {

    v18 = [v13 labelColor];
LABEL_11:
    v21 = v18;
LABEL_12:
    v25 = v21;
    goto LABEL_13;
  }

  v22 = v14;
  v23 = [v13 tertiaryLabelColor];
  v24 = sub_1004DE5FC();

  if (v24)
  {

    v18 = [v13 secondaryLabelColor];
    goto LABEL_11;
  }

  v25 = v22;
  v26 = [v13 quaternaryLabelColor];
  v27 = sub_1004DE5FC();

  if (v27)
  {

    v18 = [v13 tertiaryLabelColor];
    goto LABEL_11;
  }

LABEL_13:
  v28 = *(a2 + 40);
  v29 = *(a2 + 24);
  v30 = [objc_opt_self() configurationWithHierarchicalColor:v25];
  v31 = [v29 configurationByApplyingConfiguration:v30];

  *a3 = v7;
  a3[1] = v6;
  a3[2] = v12;
  a3[3] = v31;
  a3[4] = 0x3FE0000000000000;
  a3[5] = v28;
}

id sub_1002D8184()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_10063D790 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10063E4E0;
  static Artwork.Placeholder.music = v3;
  unk_100673570 = qword_10063E4E0;
  qword_100673578 = v1;
  unk_100673580 = v2;
  xmmword_100673588 = xmmword_100527150;

  return v4;
}

uint64_t *Artwork.Placeholder.music.unsafeMutableAddressor()
{
  if (qword_10063D7A8 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.music;
}

id static Artwork.Placeholder.music.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D7A8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.music;
  v2 = unk_100673570;
  v4 = qword_100673578;
  v3 = unk_100673580;
  v10 = unk_100673580;
  *a1 = static Artwork.Placeholder.music;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100673588;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1002D8394()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_10063D790 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10063E4E0;
  static Artwork.Placeholder.musicVideo = v3;
  unk_1006735A0 = qword_10063E4E0;
  qword_1006735A8 = v1;
  unk_1006735B0 = v2;
  xmmword_1006735B8 = xmmword_100527130;

  return v4;
}

uint64_t *Artwork.Placeholder.musicVideo.unsafeMutableAddressor()
{
  if (qword_10063D7B0 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.musicVideo;
}

id static Artwork.Placeholder.musicVideo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D7B0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.musicVideo;
  v2 = unk_1006735A0;
  v4 = qword_1006735A8;
  v3 = unk_1006735B0;
  v10 = unk_1006735B0;
  *a1 = static Artwork.Placeholder.musicVideo;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_1006735B8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1002D85B4()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_10063D790 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10063E4E0;
  static Artwork.Placeholder.tv = v3;
  unk_1006735D0 = qword_10063E4E0;
  qword_1006735D8 = v1;
  unk_1006735E0 = v2;
  xmmword_1006735E8 = xmmword_100527130;

  return v4;
}

uint64_t *Artwork.Placeholder.tv.unsafeMutableAddressor()
{
  if (qword_10063D7B8 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.tv;
}

id static Artwork.Placeholder.tv.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D7B8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.tv;
  v2 = unk_1006735D0;
  v4 = qword_1006735D8;
  v3 = unk_1006735E0;
  v10 = unk_1006735E0;
  *a1 = static Artwork.Placeholder.tv;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_1006735E8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1002D87BC()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_10063D790 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10063E4E0;
  static Artwork.Placeholder.microphone = v3;
  unk_100673600 = qword_10063E4E0;
  qword_100673608 = v1;
  unk_100673610 = v2;
  xmmword_100673618 = xmmword_100527140;

  return v4;
}

uint64_t *Artwork.Placeholder.microphone.unsafeMutableAddressor()
{
  if (qword_10063D7C0 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.microphone;
}

id static Artwork.Placeholder.microphone.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D7C0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.microphone;
  v2 = unk_100673600;
  v4 = qword_100673608;
  v3 = unk_100673610;
  v10 = unk_100673610;
  *a1 = static Artwork.Placeholder.microphone;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100673618;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_1002D89D4()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_10063D790 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10063E4E0;
  static Artwork.Placeholder.person = v3;
  unk_100673630 = qword_10063E4E0;
  qword_100673638 = v1;
  unk_100673640 = v2;
  xmmword_100673648 = xmmword_100527130;

  return v4;
}

uint64_t *Artwork.Placeholder.person.unsafeMutableAddressor()
{
  if (qword_10063D7C8 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.person;
}

id static Artwork.Placeholder.person.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D7C8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.person;
  v2 = unk_100673630;
  v4 = qword_100673638;
  v3 = unk_100673640;
  v10 = unk_100673640;
  *a1 = static Artwork.Placeholder.person;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100673648;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double sub_1002D8BF0()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.newPlaylist = [objc_opt_self() secondarySystemFillColor];
  unk_100673660 = 0;
  qword_100673668 = v1;
  unk_100673670 = v2;
  result = 0.5;
  xmmword_100673678 = xmmword_100527130;
  return result;
}

uint64_t *Artwork.Placeholder.newPlaylist.unsafeMutableAddressor()
{
  if (qword_10063D7D0 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.newPlaylist;
}

id static Artwork.Placeholder.newPlaylist.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D7D0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.newPlaylist;
  v2 = unk_100673660;
  v4 = qword_100673668;
  v3 = unk_100673670;
  v10 = unk_100673670;
  *a1 = static Artwork.Placeholder.newPlaylist;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_100673678;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double static Artwork.Placeholder.playlist(ofType:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100004CB8(&qword_10063E508, &qword_1005291A0);
  __chkstk_darwin();
  v5 = v14 - v4;
  v6 = sub_1004DCEEC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MPModelPlaylistType.variant.getter(a1, v5);
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v9, enum case for Playlist.Variant.regular(_:), v6);
    if (v10(v5, 1, v6) != 1)
    {
      sub_10001074C(v5, &qword_10063E508, &qword_1005291A0);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  v11 = sub_1002DB2FC(v9, v14);
  (*(v7 + 8))(v9, v6, v11);
  v12 = v14[1];
  *a2 = v14[0];
  a2[1] = v12;
  result = *&v15;
  a2[2] = v15;
  return result;
}

double static Artwork.Placeholder.playlist(withVariant:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1002DB2FC(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

id sub_1002D8FD4()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_10063D790 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_10063E4E0;
  static Artwork.Placeholder.radio = v3;
  unk_100673690 = qword_10063E4E0;
  qword_100673698 = v1;
  unk_1006736A0 = v2;
  xmmword_1006736A8 = xmmword_100527150;

  return v4;
}

uint64_t *Artwork.Placeholder.radio.unsafeMutableAddressor()
{
  if (qword_10063D7D8 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.radio;
}

id static Artwork.Placeholder.radio.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D7D8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.radio;
  v2 = unk_100673690;
  v4 = qword_100673698;
  v3 = unk_1006736A0;
  v10 = unk_1006736A0;
  *a1 = static Artwork.Placeholder.radio;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_1006736A8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

__n128 Artwork.Placeholder.withSolidBackgroundColor()@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v21 = *(v1 + 32);
  if (*v1)
  {
    v7 = objc_opt_self();
    v8 = v5;
    v9 = v6;
    v10 = v3;
    v11 = v4;
    v12 = [v7 secondarySystemFillColor];
    sub_100006F10(0, &qword_100641C80, UIColor_ptr);
    v13 = sub_1004DE5FC();

    if (v13)
    {
      if (qword_10063D7E0 != -1)
      {
        swift_once();
      }

      v14 = qword_10063E4E8;
LABEL_11:
      v3 = v14;

      goto LABEL_12;
    }

    v18 = [v7 tertiarySystemFillColor];
    v19 = sub_1004DE5FC();

    if (v19)
    {
      if (qword_10063D7E8 != -1)
      {
        swift_once();
      }

      v14 = qword_10063E4F0;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v17 = v4;
  }

LABEL_12:
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1].n128_u64[0] = v5;
  a1[1].n128_u64[1] = v6;
  result = v21;
  a1[2] = v21;
  return result;
}

id Artwork.Placeholder.withBackground(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 8);
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

id Artwork.Placeholder.withScaleFactor(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 40);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 8);
  v11 = *v2;
  *a1 = *v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = a2;
  *(a1 + 40) = v3;
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

id Artwork.Placeholder.withTint(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *v2;
  *a2 = *v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

void sub_1002D9524(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(UIColor);
  v10[4] = a2;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1003BB590;
  v10[3] = a3;
  v8 = _Block_copy(v10);
  v9 = [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  *a4 = v9;
}

id sub_1002D95F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 userInterfaceStyle];
  sub_100006F10(0, &qword_100641C80, UIColor_ptr);
  if (v9 == 2)
  {
    v10 = a2;
    v11 = a2;
    v12 = a3;
  }

  else
  {
    v10 = a4;
    v11 = a4;
    v12 = a5;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v10, v11, v12, 1.0);
}

double sub_1002D97CC()
{
  sub_100004CB8(&qword_1006432D0, &qword_100530620);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100511DA0;
  *(v1 + 32) = sub_1004DD43C();
  *(v1 + 40) = v2;
  isa = sub_1004DD85C().super.isa;

  v4 = objc_opt_self();
  v5 = [v4 propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  v6 = 1.0;
  if (isa)
  {
    if ([v0 hasVideo])
    {
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100511DA0;
      *(v7 + 32) = sub_1004DD43C();
      *(v7 + 40) = v8;
      v9 = sub_1004DD85C().super.isa;

      v10 = [v4 propertySetWithProperties:v9];

      v11 = [v0 hasLoadedValuesForPropertySet:v10];
      if (!v11)
      {
        return 1.77777778;
      }

      v12 = [v0 artworkCatalog];
      if (!v12)
      {
        return 1.77777778;
      }

      v13 = v12;
      v14 = COERCE_DOUBLE(MPArtworkCatalog.expectedRatio.getter());
      v16 = v15;

      if (v16)
      {
        return 1.77777778;
      }

      v6 = 0.5625;
      if (v14 >= 1.0)
      {
        return 1.77777778;
      }
    }
  }

  return v6;
}

id MPModelPlaylist.artworkPlaceholderImage.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    v1 = [v0 type];

    return sub_1002DB654(v1, 0);
  }

  else
  {
    v3 = sub_1004DD3FC();
    v4 = [objc_opt_self() _systemImageNamed:v3];

    return v4;
  }
}

void MPModelObject.artworkPlaceholder.getter(void *a1@<X8>)
{
  sub_100004CB8(&qword_10063E508, &qword_1005291A0);
  __chkstk_darwin();
  v3 = v26 - v2;
  v4 = sub_1004DCEEC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      if ([v11 hasLoadedValueForKey:MPModelPropertyPlaylistType])
      {
        MPModelPlaylistType.variant.getter([v12 type], v3);
        v13 = *(v5 + 48);
        if (v13(v3, 1, v4) == 1)
        {
          (*(v5 + 104))(v7, enum case for Playlist.Variant.regular(_:), v4);
          if (v13(v3, 1, v4) != 1)
          {
            sub_10001074C(v3, &qword_10063E508, &qword_1005291A0);
          }
        }

        else
        {
          (*(v5 + 32))(v7, v3, v4);
        }

        v15 = sub_1002DB2FC(v7, v26);
        (*(v5 + 8))(v7, v4, v15);
        goto LABEL_17;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (qword_10063D7C0 != -1)
        {
          swift_once();
        }

        v14 = &static Artwork.Placeholder.microphone;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (qword_10063D7C8 != -1)
        {
          swift_once();
        }

        v14 = &static Artwork.Placeholder.person;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (qword_10063D7B8 != -1)
        {
          swift_once();
        }

        v14 = &static Artwork.Placeholder.tv;
        goto LABEL_32;
      }
    }

LABEL_29:
    if (qword_10063D7A8 != -1)
    {
      swift_once();
    }

    v14 = &static Artwork.Placeholder.music;
LABEL_32:
    v20 = *v14;
    v21 = v14[1];
    v19 = v14[2];
    v22 = v14[3];
    v16 = v14[4];
    v17 = v14[5];
    v23 = v19;
    v18 = v22;
    v24 = v20;
    v25 = v21;
    goto LABEL_33;
  }

  v9 = [v8 anyObject];
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = v9;
  MPModelObject.artworkPlaceholder.getter(v26);

LABEL_17:
  v16 = v26[4];
  v17 = v26[5];
  v19 = v26[2];
  v18 = v26[3];
  v20 = v26[0];
  v21 = v26[1];
LABEL_33:
  *a1 = v20;
  a1[1] = v21;
  a1[2] = v19;
  a1[3] = v18;
  a1[4] = v16;
  a1[5] = v17;
}

id MusicItem.artworkPlaceholder.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v129 = a2;
  v92 = sub_1004DCD1C();
  v89 = *(v92 - 8);
  __chkstk_darwin();
  v91 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1004D8FEC();
  v90 = *(v95 - 8);
  __chkstk_darwin();
  v94 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1004D924C();
  v93 = *(v98 - 8);
  __chkstk_darwin();
  v97 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1004D92AC();
  v96 = *(v101 - 8);
  __chkstk_darwin();
  v100 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1004D91EC();
  v99 = *(v105 - 8);
  __chkstk_darwin();
  v104 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1004DCEDC();
  v103 = *(v110 - 8);
  __chkstk_darwin();
  v109 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063E508, &qword_1005291A0);
  __chkstk_darwin();
  v108 = &v88 - v9;
  v116 = sub_1004DCEEC();
  v115 = *(v116 - 8);
  __chkstk_darwin();
  v102 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v88 - v11;
  v114 = sub_1004DD05C();
  v106 = *(v114 - 8);
  __chkstk_darwin();
  v113 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v88 - v13;
  v119 = sub_1004DC2DC();
  v112 = *(v119 - 8);
  __chkstk_darwin();
  v118 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1004D90CC();
  v117 = *(v122 - 8);
  __chkstk_darwin();
  v121 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1004DCCCC();
  v120 = *(v125 - 8);
  __chkstk_darwin();
  v124 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004D91FC();
  v123 = *(v17 - 8);
  __chkstk_darwin();
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004DC7DC();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1004DCB3C();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin();
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v31;
  (*(v31 + 16))(v30, v126, a1, v28);
  if (swift_dynamicCast())
  {
    (*(v25 + 8))(v27, v24);
    v32 = a1;
LABEL_5:
    (*(v128 + 8))(v30, v32);
    if (qword_10063D7C0 != -1)
    {
      swift_once();
    }

    v33 = &static Artwork.Placeholder.microphone;
    goto LABEL_18;
  }

  v32 = a1;
  if (swift_dynamicCast())
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    (*(v123 + 8))(v19, v17);
  }

  else
  {
    v35 = v124;
    v34 = v125;
    if (swift_dynamicCast())
    {
      v36 = v120;
    }

    else
    {
      v35 = v121;
      v34 = v122;
      if (!swift_dynamicCast())
      {
        v48 = v118;
        v47 = v119;
        if (swift_dynamicCast())
        {
          v49 = v30;
          if (qword_10063D7B0 != -1)
          {
            swift_once();
          }

          v37 = static Artwork.Placeholder.musicVideo;
          v38 = unk_1006735A0;
          v40 = qword_1006735A8;
          v50 = unk_1006735B0;
          v126 = xmmword_1006735B8;
          v51 = *(v112 + 8);
          v52 = static Artwork.Placeholder.musicVideo;
          v53 = v38;
          v54 = v40;
          v42 = v50;
          v51(v48, v47);
          result = (*(v128 + 8))(v49, v32);
          goto LABEL_19;
        }

        v55 = v111;
        v56 = v114;
        if (swift_dynamicCast())
        {
          v57 = v106;
          (*(v106 + 32))(v113, v55, v56);
          v58 = v108;
          sub_1004DCF0C();
          v59 = v115;
          v60 = *(v115 + 48);
          v61 = v116;
          if (v60(v58, 1, v116) == 1)
          {
            v62 = v107;
            (*(v59 + 104))(v107, enum case for Playlist.Variant.regular(_:), v61);
            if (v60(v58, 1, v61) != 1)
            {
              sub_10001074C(v58, &qword_10063E508, &qword_1005291A0);
            }
          }

          else
          {
            v62 = v107;
            (*(v59 + 32))(v107, v58, v61);
          }

          v70 = sub_1002DB2FC(v62, v130);
          (*(v59 + 8))(v62, v61, v70);
          (*(v57 + 8))(v113, v56);
        }

        else
        {
          v63 = v109;
          v64 = v110;
          v65 = swift_dynamicCast();
          v66 = v116;
          v67 = v115;
          if (!v65)
          {
            v71 = v104;
            v72 = v105;
            if (swift_dynamicCast())
            {
              v73 = v130;
            }

            else
            {
              v71 = v100;
              v72 = v101;
              if (swift_dynamicCast())
              {
                v73 = &v127;
              }

              else
              {
                v71 = v97;
                v72 = v98;
                if (swift_dynamicCast())
                {
                  v73 = &v125;
                }

                else
                {
                  v71 = v94;
                  v72 = v95;
                  if (!swift_dynamicCast())
                  {
                    v74 = v91;
                    v75 = v92;
                    if (swift_dynamicCast())
                    {
                      v76 = v30;
                      if (qword_10063D7D8 != -1)
                      {
                        swift_once();
                      }

                      v37 = static Artwork.Placeholder.radio;
                      v38 = unk_100673690;
                      v40 = qword_100673698;
                      v77 = unk_1006736A0;
                      v126 = xmmword_1006736A8;
                      v78 = *(v89 + 8);
                      v79 = static Artwork.Placeholder.radio;
                      v80 = v38;
                      v81 = v40;
                      v42 = v77;
                      v78(v74, v75);
                      result = (*(v128 + 8))(v76, v32);
                    }

                    else
                    {
                      v82 = v30;
                      if (qword_10063D7A8 != -1)
                      {
                        swift_once();
                      }

                      v37 = static Artwork.Placeholder.music;
                      v38 = unk_100673570;
                      v40 = qword_100673578;
                      v83 = unk_100673580;
                      v126 = xmmword_100673588;
                      v84 = *(v128 + 8);
                      v85 = static Artwork.Placeholder.music;
                      v86 = v38;
                      v87 = v40;
                      v42 = v83;
                      result = v84(v82, v32);
                    }

                    goto LABEL_19;
                  }

                  v73 = &v122;
                }
              }
            }

            (*(*(v73 - 32) + 8))(v71, v72);
            (*(v128 + 8))(v30, v32);
            if (qword_10063D7B8 != -1)
            {
              swift_once();
            }

            v33 = &static Artwork.Placeholder.tv;
            goto LABEL_18;
          }

          v68 = v102;
          (*(v115 + 104))(v102, enum case for Playlist.Variant.folder(_:), v116);
          v69 = sub_1002DB2FC(v68, v130);
          (*(v67 + 8))(v68, v66, v69);
          (*(v103 + 8))(v63, v64);
        }

        result = (*(v128 + 8))(v30, v32);
        v45 = v131;
        v40 = v130[2];
        v42 = v130[3];
        v37 = v130[0];
        v38 = v130[1];
        goto LABEL_20;
      }

      v36 = v117;
    }

    (*(v36 + 8))(v35, v34);
  }

  (*(v128 + 8))(v30, v32);
  if (qword_10063D7C8 != -1)
  {
    swift_once();
  }

  v33 = &static Artwork.Placeholder.person;
LABEL_18:
  v37 = *v33;
  v38 = v33[1];
  v40 = v33[2];
  v39 = v33[3];
  v126 = *(v33 + 2);
  v41 = v40;
  v42 = v39;
  v43 = v37;
  result = v38;
LABEL_19:
  v45 = v126;
LABEL_20:
  v46 = v129;
  *v129 = v37;
  v46[1] = v38;
  v46[2] = v40;
  v46[3] = v42;
  *(v46 + 2) = v45;
  return result;
}

BOOL _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100006F10(0, &qword_100641C80, UIColor_ptr);
    v6 = v5;
    v7 = v4;
    v8 = sub_1004DE5FC();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_100006F10(0, &qword_100641C80, UIColor_ptr);
    v11 = v10;
    v12 = v9;
    v13 = sub_1004DE5FC();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_100006F10(0, &qword_1006432B0, UIImage_ptr);
    v16 = v15;
    v17 = v14;
    v18 = sub_1004DE5FC();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  sub_100006F10(0, &unk_100644F40, NSObject_ptr);
  if ((sub_1004DE5FC() & 1) != 0 && *(a1 + 32) == *(a2 + 32))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  return 0;
}

void sub_1002DB134(uint64_t *a1)
{
  v3 = (v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v20 = *v3;
  v21 = v4;
  v22 = v3[2];
  v5 = *(v3 + 1);
  v15 = *v3;
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v25 = v20;
  v8 = *a1;
  v17 = a1[1];
  v18 = v8;
  v9 = a1[3];
  v10 = *(v3 + 4);
  v11 = *(v3 + 5);
  v16 = a1[2];
  v12 = *(a1 + 1);
  *v3 = *a1;
  v3[1] = v12;
  v3[2] = *(a1 + 2);
  sub_1000108DC(&v18, v19, &qword_10063E4B8, &qword_100529160);
  sub_1000108DC(&v17, v19, &qword_10063E4B8, &qword_100529160);
  sub_1000108DC(&v16, v19, &qword_10063E4C0, &qword_100529168);
  v13 = v9;
  if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(a1, &v20))
  {
    v19[0] = v15;
    v19[1] = v5;
    v19[2] = v6;
    v19[3] = v7;
    v19[4] = v10;
    v19[5] = v11;
    sub_1002D67E0(v19);
  }

  sub_10001074C(&v25, &qword_10063E4B8, &qword_100529160);
  v24 = *(&v20 + 1);
  sub_10001074C(&v24, &qword_10063E4B8, &qword_100529160);
  v14 = *(&v21 + 1);
  v23 = v21;
  sub_10001074C(&v23, &qword_10063E4C0, &qword_100529168);
}

double sub_1002DB2E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1002DB2FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004DCEEC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = v20 - v9;
  v11 = enum case for Playlist.Variant.folder(_:);
  (*(v5 + 104))(v20 - v9, enum case for Playlist.Variant.folder(_:), v4, v8);
  sub_1002DB9C8(&qword_10063E5C8, 255, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
  sub_1004DD81C();
  sub_1004DD81C();
  v12 = *(v5 + 8);
  v12(v10, v4);
  v13 = 0;
  if (v20[1] != v20[0])
  {
    if (qword_10063D790 != -1)
    {
      swift_once();
    }

    v13 = qword_10063E4E0;
    v14 = qword_10063E4E0;
  }

  (*(v5 + 16))(v7, a1, v4);
  v15 = (*(v5 + 88))(v7, v4);
  if (v15 != enum case for Playlist.Variant.smart(_:) && v15 != enum case for Playlist.Variant.genius(_:) && v15 != v11)
  {
    v12(v7, v4);
  }

  v16 = sub_1004DD3FC();

  v17 = [objc_opt_self() _systemImageNamed:v16];

  v18 = [objc_opt_self() configurationWithWeight:3];
  *a2 = [objc_opt_self() secondarySystemFillColor];
  *(a2 + 8) = v13;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  result = 0.4;
  *(a2 + 32) = xmmword_100527150;
  return result;
}

id sub_1002DB654(uint64_t a1, char a2)
{
  v2 = sub_1004DD3FC();
  v3 = [objc_opt_self() _systemImageNamed:v2];

  return v3;
}

unint64_t sub_1002DB72C()
{
  result = qword_10063E510;
  if (!qword_10063E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E510);
  }

  return result;
}

uint64_t sub_1002DB780(uint64_t a1, uint64_t a2)
{
  result = sub_1002DB9C8(&qword_10063E558, a2, type metadata accessor for Artwork.Placeholder.View, &protocol conformance descriptor for Artwork.Placeholder.View);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002DB844(uint64_t a1)
{
  *(a1 + 8) = sub_1002DB874();
  result = sub_1002DB8C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1002DB874()
{
  result = qword_10063E590;
  if (!qword_10063E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E590);
  }

  return result;
}

unint64_t sub_1002DB8C8()
{
  result = qword_10063E598;
  if (!qword_10063E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E598);
  }

  return result;
}

uint64_t sub_1002DB91C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1002DB964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002DB9C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

__n128 CAPackageDefinition.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  return result;
}

__n128 NowPlaying.TrackTitleStackView.Label.Attributes.marquee.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 32);
  *(v1 + 56) = result;
  return result;
}

uint64_t CAPackageDefinition.size.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 80) = result;
  *(v3 + 88) = a2;
  *(v3 + 96) = a3 & 1;
  return result;
}

__n128 CAPackageDefinition.init(name:bundle:transform:states:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a4 + 16);
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v6;
  result = *(a4 + 32);
  *(a6 + 56) = result;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 72) = a5;
  *(a6 + 96) = 1;
  return result;
}

double CAPackageDefinition.scaled(byX:y:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v21 = *v3;
  v22 = *(v3 + 16);
  v20[0] = *(v3 + 72);
  *(v20 + 9) = *(v3 + 81);
  v13 = *(v3 + 40);
  v15 = *(v3 + 24);
  CGAffineTransformMakeScale(&t1, a2, a3);
  v7 = *&t1.a;
  v8 = *&t1.c;
  v9 = *&t1.tx;
  *&t1.a = v15;
  *&t1.c = v13;
  t1.tx = v5;
  t1.ty = v6;
  *&t2.a = v7;
  *&t2.c = v8;
  *&t2.tx = v9;
  CGAffineTransformConcat(&v18, &t1, &t2);
  tx = v18.tx;
  ty = v18.ty;
  v14 = *&v18.c;
  v16 = *&v18.a;
  sub_1002DBB8C(v3, &t1);
  *a1 = v21;
  *(a1 + 16) = v22;
  *(a1 + 40) = v14;
  *(a1 + 24) = v16;
  *(a1 + 56) = tx;
  *(a1 + 64) = ty;
  *(a1 + 72) = v20[0];
  result = *(v20 + 9);
  *(a1 + 81) = *(v20 + 9);
  return result;
}

__n128 CAPackageDefinition.with(size:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X8>)
{
  v8 = v4[3];
  v16 = v4[2];
  v17 = v8;
  v18 = v4[4];
  v9 = v4[1];
  v14 = *v4;
  v15 = v9;
  v10 = a3 & 1;
  v13[0] = a3 & 1;
  sub_1002DBB8C(v4, v13);
  v11 = v17;
  a4[2] = v16;
  a4[3] = v11;
  a4[4] = v18;
  result = v15;
  *a4 = v14;
  a4[1] = result;
  a4[5].n128_u64[0] = a1;
  a4[5].n128_u64[1] = a2;
  a4[6].n128_u8[0] = v10;
  return result;
}

uint64_t sub_1002DBC58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_1002DBCC4()
{
  _s16PackageDataCacheCMa();
  swift_allocObject();
  result = sub_1002DC35C();
  qword_10063E5D0 = result;
  return result;
}

double sub_1002DBD04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1004DBEBC();
  v23 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004DBEFC();
  v13 = *(v22 - 8);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 24);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v17[6] = a2;
  aBlock[4] = sub_1002DD094;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005EC880;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  sub_100010530(a1, a2);
  sub_1004DBEDC();
  v24 = _swiftEmptyArrayStorage;
  sub_100010984(&qword_10063E488, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004CB8(&qword_10063E490, &unk_100533C70);
  sub_100008F60(&qword_10063E498, &qword_10063E490, &unk_100533C70);
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v18);

  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);

  return result;
}

uint64_t sub_1002DBFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();

  sub_100010530(a4, a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002DCC80(a4, a5, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v12;
  return swift_endAccess();
}

void sub_1002DC0B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13 = xmmword_100527160;
  v6 = *(v3 + 24);
  v7 = swift_allocObject();
  v7[2] = &v13;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1002DD0FC;
  *(v8 + 24) = v7;
  v12[4] = sub_100107FC0;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000121E8;
  v12[3] = &unk_1005EC8F8;
  v9 = _Block_copy(v12);
  v10 = v6;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;
    sub_100027F64(v13, *(&v13 + 1));
    sub_100010584(v11, *(&v11 + 1));
  }
}

uint64_t sub_1002DC264(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_100028F80(a3, a4);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v12 = *v11;
      v13 = v11[1];
      sub_100010530(*v11, v13);
    }

    else
    {
      v12 = 0;
      v13 = 0xF000000000000000;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = *a1;
  v15 = a1[1];
  *a1 = v12;
  a1[1] = v13;
  return sub_100010584(v14, v15);
}

uint64_t sub_1002DC31C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002DC35C()
{
  v10 = sub_1004DE13C();
  v1 = *(v10 - 8);
  __chkstk_darwin();
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DE0FC();
  __chkstk_darwin();
  sub_1004DBEFC();
  __chkstk_darwin();
  *(v0 + 16) = sub_1002F136C(_swiftEmptyArrayStorage);
  v4 = sub_100006F10(0, &qword_100642240, OS_dispatch_queue_ptr);
  v8[1] = "Cache";
  v8[2] = v4;
  sub_1004DBEDC();
  v11 = _swiftEmptyArrayStorage;
  sub_100010984(&qword_10063E6C0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004CB8(&qword_10063E6C8, &unk_100529390);
  sub_100008F60(&qword_10063E6D0, &qword_10063E6C8, &unk_100529390);
  sub_1004DE92C();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  v5 = sub_1004DE17C();
  v6 = v9;
  *(v9 + 24) = v5;
  return v6;
}

id CAPackage.init(definition:)(uint64_t a1)
{
  v40 = sub_1004D809C();
  v3 = *(v40 - 8);
  __chkstk_darwin();
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v37 - v6;
  if (qword_10063D7F0 != -1)
  {
    swift_once();
  }

  v41 = v1;
  v8 = qword_10063E5D0;
  v10 = *a1;
  v9 = *(a1 + 8);
  sub_1002DC0B4(*a1, v9);
  if (v12 >> 60 == 15)
  {
    v38 = v3;
    v13 = *(a1 + 16);
    v39 = a1;
    v14 = v13;
    v15 = sub_1004DD3FC();
    v16 = sub_1004DD3FC();
    v17 = [v14 URLForResource:v15 withExtension:v16];

    if (!v17)
    {
      [objc_allocWithZone(NSError) initWithDomain:NSURLErrorDomain code:-1002 userInfo:0];
      swift_willThrow();
      sub_1002DCF18(v39);

      return v8;
    }

    sub_1004D802C();

    v18 = v38;
    v19 = v40;
    (*(v38 + 32))(v7, v5, v40);
    v20 = v41;
    v21 = sub_1004D80BC();
    if (v20)
    {
      (*(v18 + 8))(v7, v19);

      v23 = v39;
LABEL_12:
      sub_1002DCF18(v23);
      return v8;
    }

    v30 = v21;
    v41 = 0;
    v31 = v22;
    sub_1002DBD04(v21, v22, v10, v9);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = v31;
    isa = sub_1004D80FC().super.isa;
    v42 = 0;
    v8 = [ObjCClassFromMetadata packageWithData:isa type:kCAPackageTypeArchive options:0 error:&v42];

    if (!v8)
    {
      v8 = v42;
      sub_1004D7F4C();

      swift_willThrow();
      sub_100010598(v30, v33);
      sub_1002DCF18(v39);
      (*(v38 + 8))(v7, v19);
      return v8;
    }

    v35 = *(v38 + 8);
    v36 = v42;
    v35(v7, v19);

    sub_100010598(v30, v33);
    a1 = v39;
  }

  else
  {
    v24 = v11;
    v25 = v12;
    v26 = swift_getObjCClassFromMetadata();
    v27 = sub_1004D80FC().super.isa;
    v42 = 0;
    v8 = [v26 packageWithData:v27 type:kCAPackageTypeArchive options:0 error:&v42];

    if (!v8)
    {
      v8 = v42;
      sub_1004D7F4C();

      swift_willThrow();
      sub_100010584(v24, v25);
      v23 = a1;
      goto LABEL_12;
    }

    v28 = v42;
    sub_100010584(v24, v25);
  }

  sub_1002DCF18(a1);
  return v8;
}

id sub_1002DCAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_10063D770 != -1)
  {
    v7 = a1;
    v8 = a2;
    v9 = a4;
    v10 = a3;
    swift_once();
    a1 = v7;
    a2 = v8;
    a3 = v10;
    a4 = v9;
  }

  v5 = qword_1006734A0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  *(a4 + 24) = 0x3FF0000000000000;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0x3FF0000000000000;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = a3;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 1;

  return v5;
}

id static CAPackageDefinition.skipBackward.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v6 = qword_1006734A0;
  CGAffineTransformMakeScale(&v7, -1.0, 1.0);
  v2 = *&v7.a;
  v3 = *&v7.c;
  v4 = *&v7.tx;
  *a1 = 0x4264726177726F46;
  *(a1 + 8) = 0xEF647261776B6361;
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  *(a1 + 40) = v3;
  *(a1 + 56) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = &off_1005EB8A0;
  *(a1 + 96) = 1;

  return v6;
}

void sub_1002DCC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100028F80(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100395EC0(v18, a5 & 1);
      v13 = sub_100028F80(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1004DF16C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_100396830();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    sub_100010598(v25, v26);
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v23[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v23[7] + 16 * v13);
  *v28 = a1;
  v28[1] = a2;
  v29 = v23[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v30;
}

uint64_t _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v4 || (sub_1004DF08C() & 1) != 0)
  {
    sub_100006F10(0, &unk_100644F40, NSObject_ptr);
    if (sub_1004DE5FC() & 1) != 0 && (sub_1004DE07C() & 1) != 0 && (sub_10034B14C(*(a1 + 9), *(a2 + 72)))
    {
      if (a1[12])
      {
        if (*(a2 + 96))
        {
          return 1;
        }
      }

      else if ((*(a2 + 96) & 1) == 0 && a1[10] == *(a2 + 80) && a1[11] == *(a2 + 88))
      {
        return 1;
      }
    }
  }

  return 0;
}

__n128 sub_1002DCF48(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1002DCF74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1002DCFBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002DD04C()
{

  sub_100010598(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

double sub_1002DD0A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002DD0BC()
{

  return swift_deallocObject();
}

id CoreAnimationPackageView.init(definition:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = 0;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  v5 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v5;
  v4[96] = *(a1 + 96);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v7;
  sub_1002DBB8C(a1, v11);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CoreAnimationPackageView();
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1002DD9E4();
  CoreAnimationPackageView.reset()();
  sub_100006F10(0, &unk_100644E00, UITraitCollection_ptr);
  sub_1004DE19C();
  sub_1004DE57C();
  swift_unknownObjectRelease();

  sub_1002DCF18(a1);

  return v8;
}

double sub_1002DD330(uint64_t *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v5 = *(v4 + 5);
  *&v27[48] = *(v4 + 4);
  v28 = v5;
  v29 = v4[96];
  v6 = *(v4 + 1);
  v26 = *v4;
  *v27 = v6;
  v7 = *(v4 + 3);
  *&v27[16] = *(v4 + 2);
  *&v27[32] = v7;
  v8 = *a1;
  v9 = a1[1];
  if (v26 == *a1 || (sub_1004DF08C() & 1) != 0)
  {
    sub_100006F10(0, &unk_100644F40, NSObject_ptr);
    sub_1002DBB8C(&v26, v16);
    if (sub_1004DE5FC() & 1) != 0 && (v16[0] = *&v27[8], v16[1] = *&v27[24], v16[2] = *&v27[40], v10 = *(a1 + 5), v20 = *(a1 + 3), v21 = v10, v22 = *(a1 + 7), (sub_1004DE07C()))
    {
      v11 = sub_10034B14C(*&v27[56], a1[9]);
      sub_1002DCF18(&v26);
      if (v11)
      {
        if (v29)
        {
          if (a1[12])
          {
            return result;
          }
        }

        else if ((a1[12] & 1) == 0 && *&v28 == *(a1 + 10))
        {
          result = *(&v28 + 1);
          if (*(&v28 + 1) == *(a1 + 11))
          {
            return result;
          }
        }
      }
    }

    else
    {
      sub_1002DCF18(&v26);
    }
  }

  v13 = *v4 == *&v8 && *(v4 + 1) == v9;
  if (!v13 && (sub_1004DF08C() & 1) == 0)
  {
    sub_1002DD9E4();
  }

  v14 = *(v4 + 40);
  v23 = *(v4 + 24);
  v24 = v14;
  v25 = *(v4 + 56);
  v15 = *(a1 + 5);
  v17 = *(a1 + 3);
  v18 = v15;
  v19 = *(a1 + 7);
  if ((sub_1004DE07C() & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  CoreAnimationPackageView.reset()();
  return result;
}

__n128 CoreAnimationPackageView.definition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_1002DBB8C(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t CoreAnimationPackageView.definition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_1002DBB8C(v12, v11);
  sub_1002DBB8C(a1, v11);
  sub_1002DCF18(v18);
  sub_1002DD330(v12);
  sub_1002DCF18(v12);
  return sub_1002DCF18(a1);
}

void (*CoreAnimationPackageView.definition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_1002DBB8C(v4, v4 + 416);
  return sub_1002DD7A8;
}

void sub_1002DD7A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_1002DBB8C(v2 + 624, v2 + 728);
    sub_1002DBB8C(v2 + 624, v2 + 728);
    sub_1002DBB8C(v2 + 104, v2 + 728);
    sub_1002DCF18(v4);
    sub_1002DD330((v2 + 104));
    sub_1002DCF18(v2 + 104);
    sub_1002DCF18(v2 + 624);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_1002DBB8C(v2 + 208, v2 + 624);
    sub_1002DBB8C(v4, v2 + 624);
    sub_1002DCF18(v2 + 416);
    sub_1002DD330((v2 + 208));
    sub_1002DCF18(v2 + 208);
    v28 = v4;
  }

  sub_1002DCF18(v28);

  free(v2);
}

void sub_1002DD9E4()
{
  v1 = v0;
  sub_100006F10(0, &qword_10063E750, CAPackage_ptr);
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v51[4] = *(v2 + 4);
  v51[5] = v3;
  v52 = v2[96];
  v4 = *(v2 + 1);
  v51[0] = *v2;
  v51[1] = v4;
  v5 = *(v2 + 3);
  v51[2] = *(v2 + 2);
  v51[3] = v5;
  sub_1002DBB8C(v51, v45);
  v6 = CAPackage.init(definition:)(v51);
  v26 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = v6;
  v27 = v6;

  v28 = [v27 rootLayer];
  if (v28)
  {
    v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = v28;
    v30 = v28;
    [v29 removeFromSuperlayer];

    v31 = [objc_allocWithZone(CAStateController) initWithLayer:v30];
    v32 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = v31;

    [v30 removeFromSuperlayer];
    [v30 setGeometryFlipped:{objc_msgSend(v27, "isGeometryFlipped")}];
    v33 = [v1 layer];
    [v33 addSublayer:v30];

    v34 = [v1 layer];
    [v34 bounds];

    sub_1004DE41C();
    [v30 setPosition:?];
    sub_1002DEE7C();
  }

  else
  {
    sub_1002DFB14();
    v35 = swift_allocError();
    swift_willThrow();

    if (qword_10063D800 != -1)
    {
      swift_once();
    }

    v7 = sub_1004D966C();
    sub_100035430(v7, qword_1006736C0);
    v8 = v1;
    swift_errorRetain();
    v9 = sub_1004D964C();
    v10 = sub_1004DDF8C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446466;
      v13 = *(v2 + 3);
      v14 = *(v2 + 5);
      v48 = *(v2 + 4);
      v49 = v14;
      v15 = *(v2 + 1);
      v45[0] = *v2;
      v45[1] = v15;
      v16 = *(v2 + 3);
      v18 = *v2;
      v17 = *(v2 + 1);
      v46 = *(v2 + 2);
      v47 = v16;
      v19 = *(v2 + 5);
      v41 = v48;
      v42 = v19;
      v37 = v18;
      v38 = v17;
      v44[0] = v12;
      v50 = v2[96];
      v43 = v2[96];
      v39 = v46;
      v40 = v13;
      sub_1002DBB8C(v45, v36);
      v20 = sub_1004DD4DC();
      v22 = sub_1002E5CC4(v20, v21, v44);

      *(v11 + 4) = v22;
      *(v11 + 12) = 2082;
      *&v37 = v35;
      swift_errorRetain();
      sub_100004CB8(&qword_100643610, &qword_10052F9E0);
      v23 = sub_1004DD4DC();
      v25 = sub_1002E5CC4(v23, v24, v44);

      *(v11 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to load CAPackage with definition=%{public}s. Error=%{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1002DDE4C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    if (a2)
    {
      v8 = v7 == a1 && v6 == a2;
      if (v8 || (sub_1004DF08C() & 1) != 0)
      {
        return;
      }
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v10 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v10)
    {
      return;
    }

    v11 = v10;

    v12 = sub_1004DD3FC();
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v13)
    {
      return;
    }

    v11 = v13;
    v12 = 0;
  }

  v14 = [v11 stateWithName:v12];

  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v15)
    {
      v16 = *v9;
      v17 = objc_opt_self();
      v18 = v16;
      v19 = v15;
      v20 = v14;
      v21 = [v17 areAnimationsEnabled];
      v22 = 0.0;
      if (v21)
      {
        *&v22 = 1.0;
      }

      [v19 setState:v20 ofLayer:v18 transitionSpeed:v22];
    }
  }
}

uint64_t CoreAnimationPackageView.stateName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double CoreAnimationPackageView.stateName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1002DDE4C(v6, v7);

  return result;
}

void (*CoreAnimationPackageView.stateName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1002DE164;
}

void sub_1002DE164(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_1002DDE4C(v9, v8);
  }

  else
  {
    sub_1002DDE4C(v9, v8);
  }

  free(v2);
}

void *CoreAnimationPackageView.foregroundColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CoreAnimationPackageView.foregroundColor.setter(id a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      sub_100006F10(0, &qword_100641C80, UIColor_ptr);
      a1 = a1;
      v5 = v4;
      v6 = sub_1004DE5FC();

      if (v6)
      {

        v4 = v5;
LABEL_9:

        return;
      }
    }

    else
    {
      a1 = a1;
    }

LABEL_8:
    sub_1002DEE7C();

    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }
}

void (*CoreAnimationPackageView.foregroundColor.modify(uint64_t *a1))(id a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1002DE3BC;
}

void sub_1002DE3BC(id a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        sub_100006F10(0, &qword_100641C80, UIColor_ptr);
        v5 = v3;
        v9 = v8;
        v10 = sub_1004DE5FC();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    sub_1002DEE7C();

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  CoreAnimationPackageView.foregroundColor.setter(v3);
  v5 = v2[3];
LABEL_11:

LABEL_12:

  free(v2);
}

Swift::Void __swiftcall CoreAnimationPackageView.reset()()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v2 = *(v1 + 72);
  if (v2[2])
  {
    v4 = v2[4];
    v3 = v2[5];
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = v4;
  v5[1] = v3;
  sub_1002DDE4C(v6, v7);

  v8 = *(v1 + 72);
  v9 = *(v8 + 16);
  if (v9)
  {
    sub_1002DF31C(v8, v8 + 32, 1, (2 * v9) | 1);
    v8 = v11;
  }

  else
  {
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  *(v0 + v10) = v8;
}

Swift::Void __swiftcall CoreAnimationPackageView.set(stateName:forSublayer:)(Swift::String stateName, Swift::String forSublayer)
{
  v3 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
  if (!v3)
  {
    return;
  }

  object = forSublayer._object;
  countAndFlagsBits = forSublayer._countAndFlagsBits;
  v6 = [v3 sublayers];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  sub_100006F10(0, &qword_10063E718, CALayer_ptr);
  v8 = sub_1004DD87C();

  v30 = v2;
  if (v8 >> 62)
  {
LABEL_32:
    v9 = sub_1004DED5C();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_33:

    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = sub_1004DEB2C();
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v11 = *(v8 + 8 * v10 + 32);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_19;
      }
    }

    v31 = v11;
    v13 = [v11 name];
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = countAndFlagsBits;
    v15 = object;
    v16 = v13;
    v17 = sub_1004DD43C();
    v19 = v18;

    object = v15;
    if (v17 == v14 && v19 == v15)
    {
      break;
    }

    countAndFlagsBits = v14;
    v21 = sub_1004DF08C();

    if (v21)
    {
      goto LABEL_22;
    }

LABEL_6:

    ++v10;
    if (v12 == v9)
    {
      goto LABEL_33;
    }
  }

LABEL_22:

  v22 = sub_1004DD3FC();
  v23 = [v31 stateWithName:v22];

  if (v23)
  {
    v24 = *(v30 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v24)
    {
      v25 = objc_opt_self();
      v26 = v24;
      v27 = v23;
      v31 = v31;
      v28 = [v25 areAnimationsEnabled];
      v29 = 0.0;
      if (v28)
      {
        *&v29 = 1.0;
      }

      [v26 setState:v27 ofLayer:v31 transitionSpeed:v29];
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.advanceState()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  if (!*(*(v0 + v1) + 16))
  {
    v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
    swift_beginAccess();
    *(v0 + v1) = *(v2 + 72);
  }

  swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];

    sub_1002DF994(0, 1);
    swift_endAccess();
    v6 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = v5;
    v6[1] = v4;
    sub_1002DDE4C(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.startCyclingThroughStates(with:)(Swift::Double with)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer);
  if (!v4 || ([v4 timeInterval], v5 != with))
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = sub_1002DFA8C;
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100018634;
    v12[3] = &unk_1005EC948;
    v8 = _Block_copy(v12);

    v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:with];
    _Block_release(v8);
    v10 = *(v1 + v3);
    *(v1 + v3) = v9;
    v11 = v9;
    [v10 invalidate];
  }
}

void sub_1002DEB34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    CoreAnimationPackageView.advanceState()();
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.stopCyclingThroughStates()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer))
  {
    CoreAnimationPackageView.reset()();
    v2 = *(v0 + v1);
    v3 = v2;
    *(v0 + v1) = 0;
    [v2 invalidate];
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.layoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for CoreAnimationPackageView();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
  if (v1)
  {
    v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
    swift_beginAccess();
    if (v2[96])
    {
      v3 = v1;
      v4 = [v0 layer];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      v6 = *(v2 + 10);
      v8 = *(v2 + 11);
      v9 = v1;
    }

    [v1 bounds];
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v14 = CGRectGetWidth(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (v14 / CGRectGetHeight(v23) >= v6 / v8)
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v15 = v8 / CGRectGetHeight(v25);
    }

    else
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v15 = v6 / CGRectGetWidth(v24);
    }

    CGAffineTransformMakeScale(&v18, v15, v15);
    v16 = *(v2 + 40);
    *&t2.a = *(v2 + 24);
    *&t2.c = v16;
    *&t2.tx = *(v2 + 56);
    CGAffineTransformConcat(&v19, &v18, &t2);
    t2 = v19;
    CATransform3DMakeAffineTransform(&v18, &t2);
    [v1 setTransform:&v18];
    v17 = [v0 layer];
    [v17 bounds];

    sub_1004DE41C();
    [v1 setPosition:?];
  }
}

void sub_1002DEE7C()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = sub_1004DD87C();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          sub_10000904C(v10, v31);
          sub_10000904C(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = sub_1004DD3FC();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              sub_1004DE8DC();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              sub_100006F10(0, &qword_10063E718, CALayer_ptr);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              sub_1002DFAAC(v30);
            }
          }

          ++v9;
          sub_100008D24(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

id CoreAnimationPackageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreAnimationPackageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002DF31C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100004CB8(&qword_1006432D0, &qword_100530620);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1002DF3F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100004CB8(&qword_10063E748, &unk_1005293D0);
      v7 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for PlaylistCurators.Curator(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1002DF598(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = a1;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = sub_1004DD87C();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          sub_10000904C(v10, v31);
          sub_10000904C(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = sub_1004DD3FC();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              sub_1004DE8DC();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              sub_100006F10(0, &qword_10063E718, CALayer_ptr);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              sub_1002DFAAC(v30);
            }
          }

          ++v9;
          sub_100008D24(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

void sub_1002DF8D8()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController) = 0;
  sub_1004DECCC();
  __break(1u);
}

unint64_t sub_1002DF994(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1003E05CC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_100154E74(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1002DFA54()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double sub_1002DFA94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002DFAAC(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100644FB0, &unk_1005293E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002DFB14()
{
  result = qword_10063E758;
  if (!qword_10063E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E758);
  }

  return result;
}

unint64_t sub_1002DFB80()
{
  result = qword_10063E760;
  if (!qword_10063E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E760);
  }

  return result;
}

id sub_1002DFBD4()
{
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v1 = qword_1006734A0;
  static NSBundle.musicCoreUIBundle = qword_1006734A0;

  return v1;
}

uint64_t *NSBundle.musicCoreUIBundle.unsafeMutableAddressor()
{
  if (qword_10063D7F8 != -1)
  {
    swift_once();
  }

  return &static NSBundle.musicCoreUIBundle;
}

id static NSBundle.musicCoreUIBundle.getter()
{
  if (qword_10063D7F8 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.musicCoreUIBundle;

  return v1;
}

double MusicLibrary.ActionableState.updateSymbolConfiguration(from:)(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = a3;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v7 = &v22 - v6;
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + v8[13]) = vdupq_n_s64(0x4040000000000000uLL);
  sub_1004DE52C();
  v9 = sub_1004DE53C();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_1002DFFEC(v7, a1 + v8[9]);
  v10 = a1 + v8[10];
  if (*v10)
  {
    v11 = *&UIEdgeInsetsZero.bottom;
    *(v10 + 8) = *&UIEdgeInsetsZero.top;
    *(v10 + 24) = v11;
  }

  *(a1 + 112) = 0;
  objc_storeStrong((a1 + 24), UIFontTextStyleBody);
  *(a1 + 48) = xmmword_100527170;
  if (!(v5 >> 14))
  {

    *a1 = xmmword_1005271D0;
    *(a1 + 48) = 7;
    goto LABEL_20;
  }

  if (v5 >> 14 != 1)
  {
    if (a2 | v5 ^ 0x8000)
    {
      if (v5 == 0x8000 && a2 == 1)
      {

        v17 = xmmword_100527190;
      }

      else
      {

        v17 = xmmword_100527180;
      }

      goto LABEL_19;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
LABEL_20:
    sub_1002E005C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48));
    *(v10 + 48) = 0;
    result = 0.0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = 0u;
    return result;
  }

  if ((v5 & 0x100) != 0)
  {

    v17 = xmmword_1005271A0;
LABEL_19:
    *a1 = v17;
    goto LABEL_20;
  }

  v12 = *v10;
  if (*v10 && (type metadata accessor for CircularProgressView(), (v13 = swift_dynamicCastClass()) != 0))
  {
    v14 = v13;
    v15 = v12;
  }

  else
  {
    v19 = objc_allocWithZone(type metadata accessor for CircularProgressView());
    v14 = CircularProgressView.init(size:)(26.0, 26.0);
  }

  CircularProgressView.setState(_:animated:)(a2, v5 & 1, 1);
  sub_1002E009C(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
  *(a1 + 200) = xmmword_100512770;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;

  *a1 = xmmword_1005271B0;
  *(a1 + 56) = 1;
  v20 = UIFontTextStyleFootnote;

  *(a1 + 24) = v20;
  sub_1002E005C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48));
  *v10 = v14;
  v21 = *&UIEdgeInsetsZero.top;
  *(v10 + 24) = *&UIEdgeInsetsZero.bottom;
  *(v10 + 8) = v21;
  result = 1.0;
  *(v10 + 40) = xmmword_1005271C0;
  return result;
}

uint64_t sub_1002DFFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1002E005C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
  }
}

double sub_1002E009C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1002E00E0()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_1006736C0);
  sub_100035430(v0, qword_1006736C0);
  sub_1002E015C();
  OS_os_log.init(musicCategory:)(0x726F43636973754DLL, 0xEB00000000495565);
  return sub_1004D967C();
}

unint64_t sub_1002E015C()
{
  result = qword_10063E768;
  if (!qword_10063E768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10063E768);
  }

  return result;
}

uint64_t ArtworkImageViewModelAttributeProviding.cropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1004DCB8C();
  v2 = sub_1004DCC0C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1002E0218@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = sub_1004DCC9C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001074C(v7, &unk_100642930, &unk_1005294A0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    (*(v9 + 16))(a3, v12, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    a2();
    (*(v9 + 8))(v12, v8);
    v17 = sub_1004DCC0C();
    (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }
}

uint64_t sub_1002E04BC@<X0>(uint64_t a1@<X8>)
{
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = sub_1004DCC9C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DCB3C();
  v8 = sub_1002E0C68();
  if ((*(v5 + 48))(v3, 1, v4, v8) == 1)
  {
    sub_10001074C(v3, &unk_100642930, &unk_1005294A0);
    v9 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    (*(v5 + 16))(a1, v7, v4);
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    v12 = *(v11 + 20);
    sub_1004DCB8C();
    (*(v5 + 8))(v7, v4);
    v13 = sub_1004DCC0C();
    (*(*(v13 - 8) + 56))(a1 + v12, 0, 1, v13);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_1002E072C@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = sub_1004DCC9C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001074C(v7, &unk_100642930, &unk_1005294A0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    (*(v9 + 16))(a3, v12, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    a2();
    v17 = sub_1004DCC0C();
    (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
    (*(v9 + 8))(v12, v8);
    return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }
}

uint64_t ArtworkImageViewModelAttributeProviding.artworkViewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = sub_1004DCC9C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2, v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001074C(v7, &unk_100642930, &unk_1005294A0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    (*(v9 + 16))(a3, v12, v8);
    v15 = *(a2 + 24);
    v16 = type metadata accessor for ArtworkImage.ViewModel(0);
    v15(a1, a2);
    (*(v9 + 8))(v12, v8);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

double sub_1002E0C68()
{
  sub_100004CB8(&qword_10063E780, &qword_100529830);
  swift_allocObject();
  sub_1004DC16C();
  sub_1004DCB2C();

  return result;
}

uint64_t sub_1002E0E88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004DCC9C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  sub_1004DD03C();
  sub_1000108DC(v9, v7, &unk_100642930, &unk_1005294A0);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_10001074C(v9, &unk_100642930, &unk_1005294A0);
    v10 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    (*(v3 + 16))(a1, v5, v2);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    v13 = *(v12 + 20);
    sub_1004DCB7C();
    (*(v3 + 8))(v5, v2);
    sub_10001074C(v9, &unk_100642930, &unk_1005294A0);
    v14 = sub_1004DCC0C();
    (*(*(v14 - 8) + 56))(a1 + v13, 0, 1, v14);
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }
}

uint64_t Playlist.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  sub_100004CB8(&qword_100641A60, &qword_10052C450);
  __chkstk_darwin();
  v52 = &v50 - v1;
  v2 = sub_1004DCC9C();
  v55 = *(v2 - 8);
  v56 = v2;
  __chkstk_darwin();
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v50 - v4;
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v50 - v7;
  __chkstk_darwin();
  v10 = &v50 - v9;
  __chkstk_darwin();
  v12 = &v50 - v11;
  sub_100004CB8(&qword_100642C70, &qword_100527540);
  __chkstk_darwin();
  v53 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v50 - v14;
  sub_100004CB8(&qword_10063E508, &qword_1005291A0);
  __chkstk_darwin();
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v50 - v18;
  sub_1004DCF0C();
  v20 = sub_1004DCEEC();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    goto LABEL_2;
  }

  sub_1000108DC(v19, v17, &qword_10063E508, &qword_1005291A0);
  v23 = (*(v21 + 88))(v17, v20);
  if (v23 != enum case for Playlist.Variant.regular(_:) && v23 != enum case for Playlist.Variant.smart(_:))
  {
    if (v23 == enum case for Playlist.Variant.genius(_:))
    {
      goto LABEL_2;
    }

    if (v23 == enum case for Playlist.Variant.favoriteSongs(_:))
    {
      goto LABEL_7;
    }

    if (v23 == enum case for Playlist.Variant.folder(_:))
    {
      goto LABEL_15;
    }

    if (v23 != enum case for Playlist.Variant.subscribed(_:))
    {
      if (v23 != enum case for Playlist.Variant.admin(_:))
      {
        if (v23 == enum case for Playlist.Variant.personalMix(_:))
        {
          sub_1004DCE5C();
          sub_1000108DC(v8, v6, &unk_100642930, &unk_1005294A0);
          v39 = v55;
          v38 = v56;
          if ((*(v55 + 48))(v6, 1, v56) == 1)
          {
            sub_10001074C(v8, &unk_100642930, &unk_1005294A0);
            v40 = type metadata accessor for ArtworkImage.ViewModel(0);
            v41 = v53;
            (*(*(v40 - 8) + 56))(v53, 1, 1, v40);
          }

          else
          {
            v42 = *(v39 + 32);
            v43 = v54;
            v42(v54, v6, v38);
            v44 = v51;
            (*(v39 + 16))(v51, v43, v38);
            v45 = v52;
            sub_1004DCBFC();
            (*(v39 + 8))(v43, v38);
            sub_10001074C(v8, &unk_100642930, &unk_1005294A0);
            v46 = sub_1004DCC0C();
            (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
            v41 = v53;
            v42(v53, v44, v38);
            v40 = type metadata accessor for ArtworkImage.ViewModel(0);
            sub_1002E1B4C(v45, v41 + *(v40 + 20));
            (*(*(v40 - 8) + 56))(v41, 0, 1, v40);
          }

          type metadata accessor for ArtworkImage.ViewModel(0);
          v47 = *(v40 - 8);
          v48 = *(v47 + 48);
          if (v48(v41, 1, v40) == 1)
          {
            sub_1002E0E88(v57);
            if (v48(v41, 1, v40) != 1)
            {
              sub_10001074C(v41, &qword_100642C70, &qword_100527540);
            }
          }

          else
          {
            v49 = v57;
            sub_1002E1AE8(v41, v57);
            (*(v47 + 56))(v49, 0, 1, v40);
          }

          goto LABEL_16;
        }

        (*(v21 + 8))(v17, v20);
LABEL_15:
        v37 = type metadata accessor for ArtworkImage.ViewModel(0);
        (*(*(v37 - 8) + 56))(v57, 1, 1, v37);
LABEL_16:
        v34 = &qword_10063E508;
        v35 = &qword_1005291A0;
        v36 = v19;
        return sub_10001074C(v36, v34, v35);
      }

LABEL_2:
      sub_10001074C(v19, &qword_10063E508, &qword_1005291A0);
      return sub_1002E0E88(v57);
    }
  }

LABEL_7:
  sub_10001074C(v19, &qword_10063E508, &qword_1005291A0);
  sub_1002E0E88(v15);
  v24 = type metadata accessor for ArtworkImage.ViewModel(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v15, 1, v24) != 1)
  {
    v31 = v57;
    sub_1002E1AE8(v15, v57);
    return (*(v25 + 56))(v31, 0, 1, v24);
  }

  sub_1004DCE9C();
  sub_1000108DC(v12, v10, &unk_100642930, &unk_1005294A0);
  v28 = v55;
  v27 = v56;
  if ((*(v55 + 48))(v10, 1, v56) == 1)
  {
    sub_10001074C(v12, &unk_100642930, &unk_1005294A0);
    v29 = 1;
    v30 = v57;
  }

  else
  {
    v32 = v54;
    (*(v28 + 32))(v54, v10, v27);
    v30 = v57;
    (*(v28 + 16))(v57, v32, v27);
    v53 = *(v24 + 20);
    sub_1004DCB8C();
    (*(v28 + 8))(v32, v27);
    sub_10001074C(v12, &unk_100642930, &unk_1005294A0);
    v33 = sub_1004DCC0C();
    (*(*(v33 - 8) + 56))(v30 + v53, 0, 1, v33);
    v29 = 0;
  }

  (*(v25 + 56))(v30, v29, 1, v24);
  result = (v26)(v15, 1, v24);
  if (result != 1)
  {
    v34 = &qword_100642C70;
    v35 = &qword_100527540;
    v36 = v15;
    return sub_10001074C(v36, v34, v35);
  }

  return result;
}

uint64_t sub_1002E1AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E1B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100641A60, &qword_10052C450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Playlist.defaultCropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v22 - v4;
  sub_100004CB8(&qword_10063E508, &qword_1005291A0);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v22 - v8;
  sub_1004DCF0C();
  v10 = sub_1004DCEEC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_2;
  }

  sub_1000108DC(v9, v7, &qword_10063E508, &qword_1005291A0);
  v12 = (*(v11 + 88))(v7, v10);
  if (v12 == enum case for Playlist.Variant.regular(_:) || v12 == enum case for Playlist.Variant.smart(_:))
  {
    goto LABEL_8;
  }

  if (v12 == enum case for Playlist.Variant.genius(_:))
  {
LABEL_2:
    sub_10001074C(v9, &qword_10063E508, &qword_1005291A0);
    goto LABEL_10;
  }

  if (v12 == enum case for Playlist.Variant.favoriteSongs(_:))
  {
    goto LABEL_8;
  }

  if (v12 == enum case for Playlist.Variant.folder(_:))
  {
    goto LABEL_15;
  }

  if (v12 == enum case for Playlist.Variant.subscribed(_:))
  {
LABEL_8:
    sub_10001074C(v9, &qword_10063E508, &qword_1005291A0);
    sub_1004DD03C();
    v14 = sub_1004DCC9C();
    v15 = (*(*(v14 - 8) + 48))(v5, 1, v14);
    sub_10001074C(v5, &unk_100642930, &unk_1005294A0);
    if (v15 == 1)
    {
      sub_1004DCB8C();
LABEL_11:
      v16 = sub_1004DCC0C();
      return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
    }

LABEL_10:
    sub_1004DCB7C();
    goto LABEL_11;
  }

  if (v12 == enum case for Playlist.Variant.admin(_:))
  {
    goto LABEL_2;
  }

  if (v12 == enum case for Playlist.Variant.personalMix(_:))
  {
    sub_1004DCE5C();
    v19 = sub_1004DCC9C();
    v20 = (*(*(v19 - 8) + 48))(v3, 1, v19);
    sub_10001074C(v3, &unk_100642930, &unk_1005294A0);
    if (v20 == 1)
    {
      sub_1004DCB7C();
    }

    else
    {
      sub_1004DCBFC();
    }

    v21 = sub_1004DCC0C();
    (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
    return sub_10001074C(v9, &qword_10063E508, &qword_1005291A0);
  }

  (*(v11 + 8))(v7, v10);
LABEL_15:
  v18 = sub_1004DCC0C();
  (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  return sub_10001074C(v9, &qword_10063E508, &qword_1005291A0);
}

uint64_t RecentlyAddedMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1004D916C();
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin();
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004DC2DC();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin();
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004D924C();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin();
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DD05C();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004D8FEC();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004DCA0C();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004D8B9C();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin();
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v45, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v15 + 32))(v17, v22, v14);
    sub_1002E0218(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v46);
    return (*(v15 + 8))(v17, v14);
  }

  v25 = v46;
  if (v23 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v11 + 32))(v13, v22, v10);
    sub_1002E0218(&MusicMovie.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v25);
    return (*(v11 + 8))(v13, v10);
  }

  if (v23 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v19 + 96))(v22, v18);
    v27 = v42;
    v26 = v43;
    v28 = v44;
    (*(v43 + 32))(v42, v22, v44);
    v29 = &MusicVideo.artwork.getter;
LABEL_7:
    sub_1002E0218(v29, &static Artwork.CropStyle.boundedBox.getter, v25);
    return (*(v26 + 8))(v27, v28);
  }

  if (v23 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v19 + 96))(v22, v18);
    v31 = v40;
    v30 = v41;
    (*(v40 + 32))(v9, v22, v41);
    Playlist.artworkViewModel.getter(v25);
    return (*(v31 + 8))(v9, v30);
  }

  else
  {
    if (v23 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      (*(v19 + 96))(v22, v18);
      v27 = v37;
      v26 = v38;
      v28 = v39;
      (*(v38 + 32))(v37, v22, v39);
      v29 = &TVSeason.artwork.getter;
      goto LABEL_7;
    }

    if (v23 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      (*(v19 + 96))(v22, v18);
      v27 = v34;
      v26 = v35;
      v28 = v36;
      (*(v35 + 32))(v34, v22, v36);
      v29 = &UploadedVideo.artwork.getter;
      goto LABEL_7;
    }

    v32 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v32 - 8) + 56))(v25, 1, 1, v32);
    return (*(v19 + 8))(v22, v18);
  }
}

uint64_t TVEpisode.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  sub_100004CB8(&unk_100642930, &unk_1005294A0);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = sub_1004DCC9C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  sub_1004D926C();
  v12 = *(v7 + 48);
  if (v12(v5, 1, v6) == 1)
  {
    sub_10001074C(v5, &unk_100642930, &unk_1005294A0);
    sub_1004D928C();
    if (v12(v3, 1, v6) == 1)
    {
      sub_10001074C(v3, &unk_100642930, &unk_1005294A0);
      v13 = type metadata accessor for ArtworkImage.ViewModel(0);
      return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    (*(v7 + 32))(v9, v3, v6);
    (*(v7 + 16))(a1, v9, v6);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    sub_1004DCB8C();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    (*(v7 + 16))(a1, v11, v6);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    sub_1004DCB8C();
    (*(v7 + 8))(v11, v6);
  }

  v17 = sub_1004DCC0C();
  (*(*(v17 - 8) + 56))(a1 + v16, 0, 1, v17);
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t sub_1002E2DC8@<X0>(uint64_t a1@<X8>)
{
  sub_1004DCBCC();
  v2 = sub_1004DCC0C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1002E2E80@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1();
  v3 = sub_1004DCC0C();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t Track.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004DC2DC();
  v21 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DC95C();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004DCAAC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v2, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for Track.song(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    sub_1002E0218(&Song.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v8 + 8))(v10, v7);
  }

  else if (v16 == enum case for Track.musicVideo(_:))
  {
    (*(v12 + 96))(v15, v11);
    v18 = v21;
    (*(v21 + 32))(v6, v15, v4);
    sub_1002E0218(&MusicVideo.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v18 + 8))(v6, v4);
  }

  else
  {
    v19 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t GenericMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v1 = sub_1004D905C();
  v121 = *(v1 - 8);
  v122 = v1;
  __chkstk_darwin();
  v120 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1004D90CC();
  v94 = *(v95 - 8);
  __chkstk_darwin();
  v93 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1004D916C();
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1004D911C();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1004D91EC();
  v79 = *(v80 - 8);
  __chkstk_darwin();
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1004D924C();
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v81 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1004D92AC();
  v85 = *(v86 - 8);
  __chkstk_darwin();
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1004DC7DC();
  v97 = *(v98 - 8);
  __chkstk_darwin();
  v96 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1004DD08C();
  v100 = *(v101 - 8);
  __chkstk_darwin();
  v99 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1004DCD1C();
  v88 = *(v89 - 8);
  __chkstk_darwin();
  v87 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1004DC95C();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v90 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1004DD05C();
  v103 = *(v104 - 8);
  __chkstk_darwin();
  v102 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004DC2DC();
  v106 = *(v14 - 8);
  v107 = v14;
  __chkstk_darwin();
  v105 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004D8FEC();
  v109 = *(v16 - 8);
  v110 = v16;
  __chkstk_darwin();
  v108 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004DCA3C();
  v112 = *(v18 - 8);
  v113 = v18;
  __chkstk_darwin();
  v111 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004D908C();
  v115 = *(v20 - 8);
  v116 = v20;
  __chkstk_darwin();
  v114 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004DCCCC();
  v118 = *(v22 - 8);
  v119 = v22;
  __chkstk_darwin();
  v117 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1004DCB3C();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1004DCA0C();
  v29 = *(v28 - 8);
  __chkstk_darwin();
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1004D8BFC();
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v71 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin();
  v37 = &v69 - v36;
  v70 = *(v33 + 16);
  v70(&v69 - v36, v124, v32, v35);
  v38 = (*(v33 + 88))(v37, v32);
  if (v38 == enum case for GenericMusicItem.album(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v29 + 32))(v31, v37, v28);
    sub_1002E0218(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v123);
    return (*(v29 + 8))(v31, v28);
  }

  v40 = v123;
  if (v38 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v25 + 32))(v27, v37, v24);
    sub_1002E04BC(v40);
    return (*(v25 + 8))(v27, v24);
  }

  v41 = v37;
  if (v38 == enum case for GenericMusicItem.composer(_:))
  {
    v42 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v120;
    v43 = v121;
    v45 = v122;
    (*(v121 + 32))(v120, v37, v122);
    v46 = &CreditArtist.artwork.getter;
LABEL_14:
    v47 = v46;
    v48 = v40;
LABEL_15:
    sub_1002E0218(v47, &static Artwork.CropStyle.boundedBox.getter, v48);
    return (*(v43 + 8))(v44, v45);
  }

  if (v38 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v117;
    v43 = v118;
    v45 = v119;
    (*(v118 + 32))(v117, v37, v119);
    v46 = &Curator.artwork.getter;
    goto LABEL_14;
  }

  if (v38 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v114;
    v43 = v115;
    v45 = v116;
    (*(v115 + 32))(v114, v37, v116);
    v46 = &EditorialItem.artwork.getter;
    goto LABEL_14;
  }

  if (v38 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v111;
    v43 = v112;
    v45 = v113;
    (*(v112 + 32))(v111, v37, v113);
    v49 = &Genre.artwork.getter;
LABEL_23:
    v47 = v49;
    v48 = v40;
    goto LABEL_15;
  }

  if (v38 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v108;
    v43 = v109;
    v45 = v110;
    (*(v109 + 32))(v108, v37, v110);
    v49 = &MusicMovie.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v105;
    v43 = v106;
    v45 = v107;
    (*(v106 + 32))(v105, v37, v107);
    v49 = &MusicVideo.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v103;
    v44 = v102;
    v45 = v104;
    (*(v103 + 32))(v102, v37, v104);
    Playlist.artworkViewModel.getter(v40);
    return (*(v43 + 8))(v44, v45);
  }

  if (v38 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v50 - 8) + 56))(v40, 1, 1, v50);
    return (*(v33 + 8))(v37, v32);
  }

  if (v38 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v100;
    v44 = v99;
    v45 = v101;
    (*(v100 + 32))(v99, v37, v101);
    v49 = &RadioShow.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v97;
    v44 = v96;
    v45 = v98;
    (*(v97 + 32))(v96, v37, v98);
    v49 = &RecordLabel.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v33 + 96))(v37, v32);
    v51 = v94;
    v52 = v93;
    v53 = v95;
    (*(v94 + 32))(v93, v37, v95);
    sub_1002E0218(&SocialProfile.artwork.getter, &static Artwork.CropStyle.specificRectangle.getter, v40);
    return (*(v51 + 8))(v52, v53);
  }

  if (v38 == enum case for GenericMusicItem.song(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v91;
    v41 = v90;
    v32 = v92;
    (*(v91 + 32))(v90, v37, v92);
    v54 = &Song.artwork.getter;
LABEL_36:
    v55 = v54;
    v56 = &static Artwork.CropStyle.boundedBox.getter;
LABEL_39:
    sub_1002E0218(v55, v56, v40);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.station(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v88;
    v41 = v87;
    v32 = v89;
    (*(v88 + 32))(v87, v37, v89);
    v55 = &Station.artwork.getter;
    v56 = &static Artwork.CropStyle.specificRectangle.getter;
    goto LABEL_39;
  }

  if (v38 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v85;
    v41 = v84;
    v32 = v86;
    (*(v85 + 32))(v84, v37, v86);
    TVEpisode.artworkViewModel.getter(v40);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.tvSeason(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v82;
    v41 = v81;
    v32 = v83;
    (*(v82 + 32))(v81, v37, v83);
    v54 = &TVSeason.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.tvShow(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v79;
    v41 = v78;
    v32 = v80;
    (*(v79 + 32))(v78, v37, v80);
    v54 = &TVShow.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v76;
    v41 = v75;
    v32 = v77;
    (*(v76 + 32))(v75, v37, v77);
    v54 = &UploadedAudio.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v73;
    v41 = v72;
    v32 = v74;
    (*(v73 + 32))(v72, v37, v74);
    v54 = &UploadedVideo.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.other(_:))
  {
    (*(v33 + 8))(v37, v32);
    v57 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v57 - 8) + 56))(v40, 1, 1, v57);
  }

  else
  {
    if (qword_10063D968 != -1)
    {
      swift_once();
    }

    v58 = sub_1004D966C();
    sub_100035430(v58, static Logger.artwork);
    (v70)(v71, v124, v32);
    v59 = sub_1004D964C();
    LODWORD(v122) = sub_1004DDF8C();
    v124 = v59;
    if (os_log_type_enabled(v59, v122))
    {
      v60 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v125 = v121;
      *v60 = 136315394;
      *(v60 + 4) = sub_1002E5CC4(0xD000000000000010, 0x80000001004F5210, &v125);
      *(v60 + 12) = 2080;
      sub_1002E62A8();
      v61 = v71;
      v62 = sub_1004DEFFC();
      v64 = v63;
      v65 = *(v33 + 8);
      v65(v61, v32);
      v66 = sub_1002E5CC4(v62, v64, &v125);

      *(v60 + 14) = v66;
      v67 = v124;
      _os_log_impl(&_mh_execute_header, v124, v122, "Unhandled case for %s: %s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v65 = *(v33 + 8);
      v65(v71, v32);
    }

    v68 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v68 - 8) + 56))(v40, 1, 1, v68);
    return (v65)(v37, v32);
  }
}

uint64_t ArtworkImage.ViewModel.image(for:)(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_100004CB8(&qword_100641A60, &qword_10052C450);
  *(v3 + 40) = swift_task_alloc();
  v4 = sub_1004DCC0C();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_1004DCC9C();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1002E4B94, 0, 0);
}

uint64_t sub_1002E4B94()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  (*(*(v0 + 10) + 16))(*(v0 + 11), v4, *(v0 + 9));
  v5 = type metadata accessor for ArtworkImage.ViewModel(0);
  sub_1000108DC(v4 + *(v5 + 20), v3, &qword_100641A60, &qword_10052C450);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (qword_10063D958 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 7);
    v7 = *(v0 + 8);
    v10 = *(v0 + 5);
    v9 = *(v0 + 6);
    v11 = sub_100035430(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      sub_10001074C(*(v0 + 5), &qword_100641A60, &qword_10052C450);
    }
  }

  else
  {
    (*(*(v0 + 7) + 32))(*(v0 + 8), *(v0 + 5), *(v0 + 6));
  }

  if (qword_10063D960 != -1)
  {
    swift_once();
  }

  v12 = sub_1004DCB6C();
  v13 = sub_100035430(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 12) = v14;
  *v14 = v0;
  v14[1] = sub_1002E4DB4;
  v15 = *(v0 + 8);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

uint64_t sub_1002E4DB4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[13] = v1;

  v6 = v4[11];
  v7 = v4[10];
  v8 = v4[9];
  v9 = v4[7];
  if (v1)
  {
    (*(v9 + 8))(v4[8], v4[6]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_1002E5004, 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_1002E5004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Artwork.image(for:cropStyle:format:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  sub_100004CB8(&qword_10063E778, &qword_1005294C0);
  *(v5 + 56) = swift_task_alloc();
  sub_100004CB8(&qword_100641A60, &qword_10052C450);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1002E515C, 0, 0);
}

uint64_t sub_1002E515C()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = [objc_opt_self() currentTraitCollection];
  [v5 displayScale];
  v7 = v6;

  v8 = sub_1004DCC0C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v2, v4, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = sub_1004DCB6C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v1, v3, v10);
  (*(v11 + 56))(v1, 0, 1, v10);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_1002E5350;
  v14 = v0[7];
  v15 = v0[8];
  v16.n128_u64[0] = v0[2];
  v17.n128_u64[0] = v0[3];

  v13.n128_f64[0] = 1.0 / v7;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v15, v14, 0, 0, v16, v17, v13);
}

uint64_t sub_1002E5350(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  v6 = *(v4 + 64);
  sub_10001074C(*(v4 + 56), &qword_10063E778, &qword_1005294C0);
  sub_10001074C(v6, &qword_100641A60, &qword_10052C450);
  if (v1)
  {

    return _swift_task_switch(sub_1002E5510, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_1002E5510()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E557C(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100237B90;

  return ArtworkImage.ViewModel.image(for:)(a1, a2);
}

uint64_t ArtworkImageFetching<>.image(for:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  sub_100004CB8(&qword_100641A60, &qword_10052C450);
  *(v5 + 56) = swift_task_alloc();
  v6 = sub_1004DCC0C();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_1004DCC9C();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1002E577C, 0, 0);
}

uint64_t sub_1002E577C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 7);
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  (*(v4 + 8))(v5, v4);
  (*(v4 + 16))(v5, v4);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (qword_10063D958 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 9);
    v7 = *(v0 + 10);
    v10 = *(v0 + 7);
    v9 = *(v0 + 8);
    v11 = sub_100035430(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      sub_10001074C(*(v0 + 7), &qword_100641A60, &qword_10052C450);
    }
  }

  else
  {
    (*(*(v0 + 9) + 32))(*(v0 + 10), *(v0 + 7), *(v0 + 8));
  }

  if (qword_10063D960 != -1)
  {
    swift_once();
  }

  v12 = sub_1004DCB6C();
  v13 = sub_100035430(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 14) = v14;
  *v14 = v0;
  v14[1] = sub_1002E599C;
  v15 = *(v0 + 10);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

uint64_t sub_1002E599C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[15] = v1;

  v6 = v4[13];
  v7 = v4[12];
  v8 = v4[11];
  v9 = v4[9];
  if (v1)
  {
    (*(v9 + 8))(v4[10], v4[8]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_1002E5BEC, 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_1002E5BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1002E5C68(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1002E5CC4(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_1002E5CC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1002E5D90(v11, 0, 0, 1, a1, a2);
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
    sub_10000904C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008D24(v11);
  return v7;
}

unint64_t sub_1002E5D90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1002E5E9C(a5, a6);
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
    result = sub_1004DEB6C();
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

void *sub_1002E5E9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1002E5EE8(a1, a2);
  sub_1002E6018(&off_1005EB900);
  return v3;
}

void *sub_1002E5EE8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1002E6104(v5, 0);
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

  result = sub_1004DEB6C();
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
        v10 = sub_1004DD61C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1002E6104(v10, 0);
        result = sub_1004DEA9C();
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

void sub_1002E6018(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1002E6178(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1002E6104(uint64_t a1, uint64_t a2)
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

  sub_100004CB8(&qword_10063E788, &qword_100529838);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1002E6178(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_10063E788, &qword_100529838);
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

uint64_t sub_1002E626C(uint64_t (*a1)(void))
{
  a1();

  return sub_1004DF34C();
}

unint64_t sub_1002E62A8()
{
  result = qword_10063E770;
  if (!qword_10063E770)
  {
    sub_1004D8BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E770);
  }

  return result;
}

void sub_1002E630C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v10 = a1(v10);
    if (v3)
    {
      goto LABEL_12;
    }

LABEL_6:
    v8 &= v8 - 1;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  do
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      goto LABEL_12;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
  }

  while (!v8);
  v11 = v12;
  v10 = a1(v10);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_12:
}

Swift::Bool __swiftcall Text.StringOption.evaluate(_:)(Swift::String a1)
{
  v1 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v1 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

BOOL Text.StringOption.evaluate(_:)()
{
  v0 = sub_1004D7DFC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = sub_1004D7DAC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7D9C();
  sub_1002E89DC(&qword_10063E790, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  sub_1004DDCFC();
  sub_1004DDD3C();
  sub_1002E89DC(&qword_10063E798, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  v10 = sub_1004DD35C();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v5, v0);
  (*(v7 + 8))(v9, v6);
  return (v10 & 1) == 0;
}

uint64_t Text.init(optional:options:)(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 1 << *(a3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a3 + 56);
    v7 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    v8 = (v4 + 63) >> 6;
    while (v6)
    {
LABEL_7:
      v6 &= v6 - 1;
      if (!v7)
      {

        goto LABEL_14;
      }
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        sub_1002E6780();
        return sub_1004DB34C();
      }

      v6 = *(a3 + 56 + 8 * v9);
      ++v3;
      if (v6)
      {
        v3 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

unint64_t sub_1002E6780()
{
  result = qword_100641A30;
  if (!qword_100641A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641A30);
  }

  return result;
}

uint64_t Text.init(optional:options:)(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_10063E7A0, &qword_100529860);
  __chkstk_darwin();
  v5 = &v16[-v4];
  v6 = sub_1004D7E3C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v16[-v10];
  sub_1002E6A64(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1002E6AD4(a1);

    sub_1002E6AD4(v5);
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    __chkstk_darwin();
    *&v16[-16] = v11;
    sub_1002E630C(sub_1002E6D94, &v16[-32], a2);
    v13 = v12;

    if (v13)
    {
      (*(v7 + 16))(v9, v11, v6);
      v14 = sub_1004DB33C();
      sub_1002E6AD4(a1);
      (*(v7 + 8))(v11, v6);
      return v14;
    }

    sub_1002E6AD4(a1);
    (*(v7 + 8))(v11, v6);
  }

  return 0;
}

uint64_t sub_1002E6A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063E7A0, &qword_100529860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E6AD4(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063E7A0, &qword_100529860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002E6B3C()
{
  v0 = sub_1004D7DFC();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = sub_1004D7DAC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D7D9C();
  sub_1002E89DC(&qword_10063E790, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  sub_1004DDCFC();
  sub_1004DDD3C();
  sub_1002E89DC(&qword_10063E798, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  v10 = sub_1004DD35C();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v5, v0);
  (*(v7 + 8))(v9, v6);
  return v10 & 1;
}

uint64_t static Edge.Set.on(_:)(unsigned int a1)
{
  v1 = sub_1004DAF6C();
  v2 = sub_1004DAEDC();
  sub_1004DAEEC();
  if (sub_1004DAEEC() == v2)
  {
    sub_100004CB8(&qword_10063E7A8, &qword_100529868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005126C0;
    v4 = sub_1004DAF5C();
    *(inited + 32) = v4;
    v5 = sub_1004DAF7C();
    *(inited + 33) = v5;
    v6 = sub_1004DAF6C();
    sub_1004DAF6C();
    if (sub_1004DAF6C() != v4)
    {
      v6 = sub_1004DAF6C();
    }

    sub_1004DAF6C();
    if (sub_1004DAF6C() != v5)
    {
      v6 = sub_1004DAF6C();
    }

    sub_1004DAF6C();
    if (sub_1004DAF6C() != v6)
    {
      v1 = sub_1004DAF6C();
    }
  }

  v7 = sub_1004DAEFC();
  sub_1004DAEEC();
  if (sub_1004DAEEC() == v7)
  {
    sub_100004CB8(&qword_10063E7A8, &qword_100529868);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_1005126C0;
    v9 = sub_1004DAF3C();
    *(v8 + 32) = v9;
    v10 = sub_1004DAF4C();
    *(v8 + 33) = v10;
    v11 = sub_1004DAF6C();
    sub_1004DAF6C();
    if (sub_1004DAF6C() != v9)
    {
      v11 = sub_1004DAF6C();
    }

    sub_1004DAF6C();
    if (sub_1004DAF6C() != v10)
    {
      v11 = sub_1004DAF6C();
    }

    sub_1004DAF6C();
    if (sub_1004DAF6C() != v11)
    {
      return sub_1004DAF6C();
    }
  }

  return v1;
}

double EdgeInsets.init(_:length:)(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = sub_1004DAEFC();
  }

  else
  {
    v3 = sub_1004DAEDC();
  }

  v4 = static Edge.Set.on(_:)(v3);

  return _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v4, a2);
}

double EdgeInsets.init(_:length:)(unsigned int a1, double a2)
{
  v3 = static Edge.Set.on(_:)(a1);

  return _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v3, a2);
}

void EdgeInsets.affecting(_:)(uint64_t a1)
{
  v2 = sub_1004DAF2C();
  _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v2, 0.0);
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return;
    }

    v6 = *(a1 + 56 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      do
      {
LABEL_9:
        v6 &= v6 - 1;
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
}

double EdgeInsets.affecting(_:)(char a1)
{
  sub_100004CB8(&qword_10063E7B0, &qword_100529870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = a1 & 1;
  v3 = sub_1002E8040(inited);
  swift_setDeallocating();
  EdgeInsets.affecting(_:)(v3);
  v5 = v4;

  return v5;
}

double EdgeInsets.value(for:)(char a1, double a2, double a3, double a4, double a5)
{
  result = a2 + a4;
  v6 = a3 + a5;
  if ((a1 & 1) == 0)
  {
    return v6;
  }

  return result;
}

double CGSize.length(for:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

uint64_t Axis.isOrthogonal(to:)(char a1, char a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 1;
  }

  return 0;
}

uint64_t Optional<A>.isOrthogonal(to:)(char a1, char a2)
{
  if (a2 == 2)
  {
    return 1;
  }

  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 1;
  }

  return 0;
}

uint64_t Axis.Set.init(_:)(uint64_t a1)
{
  if (a1)
  {
    return sub_1004DAEFC();
  }

  else
  {
    return sub_1004DAEDC();
  }
}

uint64_t View.always(perform:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  a1();
  v6 = *(*(a2 - 8) + 16);

  return v6(a3, v3, a2);
}

double DynamicTypeSize.scaledValue(_:relativeTo:)(uint64_t a1, double a2)
{
  sub_100004CB8(&qword_10063E7B8, &qword_100529878);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a1];
  v8 = sub_1004DA25C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, v2, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = sub_1004DE30C();
  v11 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v10];
  [v7 scaledValueForValue:v11 compatibleWithTraitCollection:a2];
  v13 = v12;

  return v13;
}

uint64_t static Color.random(opacity:)(double a1)
{
  v1 = sub_1004DB80C();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FEFA0(0x20000000000001uLL);
  sub_1000FEFA0(0x20000000000001uLL);
  sub_1000FEFA0(0x20000000000001uLL);
  (*(v2 + 104))(v4, enum case for Color.RGBColorSpace.sRGB(_:), v1);
  return sub_1004DB8BC();
}

uint64_t RoundedRectangle.outset(horizontal:vertical:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = sub_1004DA30C();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v21 - v12;
  sub_1004DA43C();
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E8654(v4, v15, &type metadata accessor for RoundedRectangle);
  v16 = enum case for LayoutDirection.leftToRight(_:);
  v17 = *(v9 + 104);
  v17(v13, enum case for LayoutDirection.leftToRight(_:), v8);
  sub_1002E8654(v15, a1, &type metadata accessor for RoundedRectangle);
  v18 = _s21OmnidirectionalOutsetVMa(0);
  *(a1 + v18[5]) = a3;
  *(a1 + v18[6]) = a2;
  *(a1 + v18[7]) = a3;
  *(a1 + v18[8]) = a2;
  v17(v11, v16, v8);
  LOBYTE(v16) = sub_1004DA2FC();
  v19 = *(v9 + 8);
  v19(v11, v8);
  v19(v13, v8);
  result = sub_1002E81CC(v15);
  *(a1 + v18[9]) = (v16 & 1) == 0;
  return result;
}

uint64_t RoundedRectangle.outset(top:leading:bottom:trailing:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v14 = sub_1004DA30C();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v25 - v18;
  sub_1004DA43C();
  __chkstk_darwin();
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E8654(v7, v21, &type metadata accessor for RoundedRectangle);
  (*(v15 + 16))(v19, a1, v14);
  sub_1002E8654(v21, a2, &type metadata accessor for RoundedRectangle);
  v22 = _s21OmnidirectionalOutsetVMa(0);
  *(a2 + v22[5]) = a3;
  *(a2 + v22[6]) = a4;
  *(a2 + v22[7]) = a5;
  *(a2 + v22[8]) = a6;
  (*(v15 + 104))(v17, enum case for LayoutDirection.leftToRight(_:), v14);
  LOBYTE(v7) = sub_1004DA2FC();
  v23 = *(v15 + 8);
  v23(v17, v14);
  v23(v19, v14);
  result = sub_1002E81CC(v21);
  *(a2 + v22[9]) = (v7 & 1) == 0;
  return result;
}

double sub_1002E7AAC@<D0>(int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = v3;
  sub_1002E8654(v5, a2, _s21OmnidirectionalOutsetVMa);
  v8 = a1[6];
  *(a2 + a1[5]) = *(a2 + a1[5]) - a3;
  *(a2 + v8) = *(a2 + v8) - a3;
  v9 = a1[8];
  *(a2 + a1[7]) = *(a2 + a1[7]) - a3;
  result = *(a2 + v9) - a3;
  *(a2 + v9) = result;
  return result;
}

double sub_1002E7B34@<D0>(int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v8 = v6;
  v14 = sub_1004DA88C();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004DA43C() - 8;
  __chkstk_darwin();
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGRect.outset(by:for:)(*(v8 + a1[9]), *(v8 + a1[5]), *(v8 + a1[6]), *(v8 + a1[7]), *(v8 + a1[8]), a3, a4, a5, a6);
  sub_1002E8654(v8, v20, &type metadata accessor for RoundedRectangle);
  (*(v15 + 32))(v17, &v20[*(v18 + 28)], v14);
  sub_1004DB19C();
  result = *&v24;
  v22 = v25;
  *a2 = v24;
  *(a2 + 16) = v22;
  *(a2 + 32) = v26;
  return result;
}

void (*sub_1002E7D44(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1004D9C1C();
  return sub_1002D2FCC;
}

uint64_t sub_1002E7DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002E89DC(&qword_10063E898, _s21OmnidirectionalOutsetVMa, &unk_1005299D0);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002E7E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002E89DC(&qword_10063E898, _s21OmnidirectionalOutsetVMa, &unk_1005299D0);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002E7EF8(uint64_t a1)
{
  v2 = sub_1002E89DC(&qword_10063E898, _s21OmnidirectionalOutsetVMa, &unk_1005299D0);

  return Shape.body.getter(a1, v2);
}

double _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(uint64_t a1, double a2)
{
  v3 = sub_1004DAF3C();
  sub_1004DAF6C();
  if (sub_1004DAF6C() == v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  sub_1004DAF5C();
  sub_1004DAF6C();
  sub_1004DAF6C();
  sub_1004DAF4C();
  sub_1004DAF6C();
  sub_1004DAF6C();
  sub_1004DAF7C();
  sub_1004DAF6C();
  sub_1004DAF6C();
  return v4;
}

Swift::Int sub_1002E8040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_10063E8C0, &qword_100529A70);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      sub_1004DF26C();
      v11 = sub_1004DAF0C();
      sub_1004DF28C(v11);
      result = sub_1004DF2BC();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = sub_1004DAF0C();
        result = sub_1004DAF0C();
        if (v16 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t _s21OmnidirectionalOutsetVMa(uint64_t a1)
{
  result = qword_10063E828;
  if (!qword_10063E828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E81CC(uint64_t a1)
{
  v2 = sub_1004DA43C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002E822C()
{
  result = qword_10063E7C0;
  if (!qword_10063E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E7C0);
  }

  return result;
}

uint64_t sub_1002E82EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DA43C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002E836C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DA43C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1002E83DC(uint64_t a1)
{
  sub_1004DA43C();
  if (v1 <= 0x3F)
  {
    _s3__C30UIUserInterfaceLayoutDirectionOMa_0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1002E8478()
{
  result = qword_10063E870;
  if (!qword_10063E870)
  {
    sub_100008DE4(&qword_10063E878, &qword_100529928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E870);
  }

  return result;
}

unint64_t sub_1002E84E0()
{
  result = qword_10063E880;
  if (!qword_10063E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E880);
  }

  return result;
}

uint64_t sub_1002E8654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1002E86BC(uint64_t a1)
{
  v2 = sub_1004D84BC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v29 - v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004CB8(&qword_10063E8A0, &qword_100529A60);
    v8 = sub_1004DEA8C();
    v9 = 0;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v34 = v11;
    v35 = v8 + 56;
    v12 = *(v10 + 64);
    v31 = v7;
    v32 = a1 + ((v12 + 32) & ~v12);
    v13 = *(v10 + 56);
    v14 = (v10 - 8);
    v30 = (v10 + 16);
    while (1)
    {
      v33 = v9;
      v34(v36, v32 + v13 * v9, v2);
      sub_1002E89DC(&qword_10063E8A8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v15 = sub_1004DD2AC();
      v16 = ~(-1 << *(v8 + 32));
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = *(v35 + 8 * v18);
      v20 = 1 << (v15 & v16);
      if ((v20 & v19) != 0)
      {
        while (1)
        {
          v21 = v10;
          v34(v5, *(v8 + 48) + v17 * v13, v2);
          sub_1002E89DC(&qword_10063E8B0, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v22 = sub_1004DD35C();
          v23 = *v14;
          (*v14)(v5, v2);
          if (v22)
          {
            break;
          }

          v17 = (v17 + 1) & v16;
          v18 = v17 >> 6;
          v19 = *(v35 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v10 = v21;
          if (((1 << v17) & v19) == 0)
          {
            goto LABEL_8;
          }
        }

        v23(v36, v2);
        v10 = v21;
      }

      else
      {
LABEL_8:
        v24 = v36;
        *(v35 + 8 * v18) = v20 | v19;
        result = (*v30)(*(v8 + 48) + v17 * v13, v24, v2);
        v26 = *(v8 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          __break(1u);
          return result;
        }

        *(v8 + 16) = v28;
      }

      v9 = v33 + 1;
      if (v33 + 1 == v31)
      {
        return v8;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1002E89DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_1002E8A24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_10063E8B8, &qword_100529A68);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1004DF26C();
      sub_1004DF27C(v10);
      result = sub_1004DF2BC();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1002E8B60()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_1006736D8);
  sub_100035430(v0, qword_1006736D8);
  sub_1002E015C();
  sub_1004DE7AC();
  return sub_1004D967C();
}

unint64_t SymbolButton.Configuration.description.getter()
{
  v1 = v0;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v108 = &v101 - v2;
  v3 = sub_1004DE53C();
  v109 = *(v3 - 1);
  v110 = v3;
  __chkstk_darwin();
  v106 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v101 - v5;
  v119 = 0xD00000000000001CLL;
  v120 = 0x80000001004F5230;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  sub_1004DEAAC(26);

  v113._countAndFlagsBits = 0xD000000000000017;
  v113._object = 0x80000001004F5250;
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v121._countAndFlagsBits = sub_1004DDB9C();
  sub_1004DD5FC(v121);

  v122._countAndFlagsBits = 10;
  v122._object = 0xE100000000000000;
  sub_1004DD5FC(v122);
  sub_1004DD5FC(v113);

  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  sub_1004DEAAC(18);

  v113._countAndFlagsBits = 0x6D756D696E696D20;
  v113._object = 0xEF203A20657A6953;
  v123._countAndFlagsBits = sub_1004DE44C();
  sub_1004DD5FC(v123);

  v124._countAndFlagsBits = 10;
  v124._object = 0xE100000000000000;
  sub_1004DD5FC(v124);
  sub_1004DD5FC(v113);

  if ((*(v0 + v6[14] + 16) & 1) == 0)
  {
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    sub_1004DEAAC(23);

    v113._countAndFlagsBits = 0xD000000000000014;
    v113._object = 0x80000001004F5610;
    v125._countAndFlagsBits = sub_1004DE44C();
    sub_1004DD5FC(v125);

    v126._countAndFlagsBits = 10;
    v126._object = 0xE100000000000000;
    sub_1004DD5FC(v126);
    sub_1004DD5FC(v113);
  }

  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  sub_1004DEAAC(20);

  v118._countAndFlagsBits = 0xD000000000000011;
  v118._object = 0x80000001004F5270;
  v7 = v0 + v6[15];
  v8 = *(v7 + 16);
  v113 = *v7;
  v114 = v8;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  v127._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v127);

  v128._countAndFlagsBits = 10;
  v128._object = 0xE100000000000000;
  sub_1004DD5FC(v128);
  sub_1004DD5FC(v118);

  v9 = *(v0 + v6[19]);
  if (v9 == 2)
  {
    v129._countAndFlagsBits = 0xD00000000000001ALL;
    v129._object = 0x80000001004F5290;
    sub_1004DD5FC(v129);
  }

  else
  {
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    sub_1004DEAAC(19);

    v113._countAndFlagsBits = 0xD000000000000010;
    v113._object = 0x80000001004F55F0;
    if (v9)
    {
      v10._countAndFlagsBits = 1702195828;
    }

    else
    {
      v10._countAndFlagsBits = 0x65736C6166;
    }

    if (v9)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v10._object = v11;
    sub_1004DD5FC(v10);

    v130._countAndFlagsBits = 10;
    v130._object = 0xE100000000000000;
    sub_1004DD5FC(v130);
    sub_1004DD5FC(v113);
  }

  v113._countAndFlagsBits = 0x3A206168706C6120;
  v113._object = 0xE900000000000020;
  v131._countAndFlagsBits = sub_1004DDB9C();
  sub_1004DD5FC(v131);

  v132._countAndFlagsBits = 10;
  v132._object = 0xE100000000000000;
  sub_1004DD5FC(v132);
  sub_1004DD5FC(v113);

  v113._countAndFlagsBits = 0x203A20746E697420;
  v113._object = 0xE800000000000000;
  v118._countAndFlagsBits = *(v0 + v6[18]);
  v12 = v118._countAndFlagsBits;
  v111 = sub_100004CB8(&qword_10063E4B8, &qword_100529160);
  v133._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v133);

  v134._countAndFlagsBits = 10;
  v134._object = 0xE100000000000000;
  sub_1004DD5FC(v134);
  sub_1004DD5FC(v113);

  v13 = *(v0 + 8);
  v112 = v6;
  if (v13)
  {
    v14 = *(v0 + 16);
    v15 = *(v0 + 24);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v103 = *(v0 + 56);
    v101 = *(v0 + 64);
    v104 = *(v0 + 80);
    v18 = *(v0 + 96);
    v102 = *(v0 + 88);
    v105 = *(v0 + 112);
    v19 = *v0;

    v135._countAndFlagsBits = 0x6D7953209480E220;
    v135._object = 0xAE000A7B206C6F62;
    sub_1004DD5FC(v135);
    v113._countAndFlagsBits = 0x656D616E20202020;
    v113._object = 0xEB00000000203A20;
    v136._countAndFlagsBits = v19;
    v136._object = v13;
    sub_1004DD5FC(v136);

    v137._countAndFlagsBits = 10;
    v137._object = 0xE100000000000000;
    sub_1004DD5FC(v137);
    sub_1004DD5FC(v113);

    if (v14)
    {
      v20 = [v14 bundlePath];
      v21 = sub_1004DD43C();
      v23 = v22;

      strcpy(&v113, "    bundle : ");
      HIWORD(v113._object) = -4864;
      v138._countAndFlagsBits = v21;
      v138._object = v23;
      sub_1004DD5FC(v138);

      v139._countAndFlagsBits = 10;
      v139._object = 0xE100000000000000;
      sub_1004DD5FC(v139);
      sub_1004DD5FC(v113);
    }

    strcpy(&v113, "    style : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v118._countAndFlagsBits = v15;
    type metadata accessor for TextStyle(0);
    v24 = v15;
    v140._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v140);

    v141._countAndFlagsBits = 10;
    v141._object = 0xE100000000000000;
    sub_1004DD5FC(v141);
    sub_1004DD5FC(v113);

    if ((v16 & 1) == 0)
    {
      v113._countAndFlagsBits = 0xD000000000000014;
      v113._object = 0x80000001004F55D0;
      v142._countAndFlagsBits = sub_1004DDB9C();
      sub_1004DD5FC(v142);

      v143._countAndFlagsBits = 10;
      v143._object = 0xE100000000000000;
      sub_1004DD5FC(v143);
      sub_1004DD5FC(v113);
    }

    strcpy(&v113, "    weight : ");
    HIWORD(v113._object) = -4864;
    v118._countAndFlagsBits = v17;
    type metadata accessor for SymbolWeight(0);
    v144._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v144);

    v145._countAndFlagsBits = 10;
    v145._object = 0xE100000000000000;
    sub_1004DD5FC(v145);
    sub_1004DD5FC(v113);

    strcpy(&v113, "    scale : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v118._countAndFlagsBits = v103;
    type metadata accessor for SymbolScale(0);
    v146._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v146);

    v147._countAndFlagsBits = 10;
    v147._object = 0xE100000000000000;
    sub_1004DD5FC(v147);
    sub_1004DD5FC(v113);

    if (v104 != 255)
    {
      strcpy(&v118, "    offset : ");
      HIWORD(v118._object) = -4864;
      v113 = v101;
      LOBYTE(v114) = v104 & 1;
      sub_100004CB8(&qword_10063E8C8, &qword_100529A78);
      v148._countAndFlagsBits = sub_1004DD4DC();
      sub_1004DD5FC(v148);

      v149._countAndFlagsBits = 10;
      v149._object = 0xE100000000000000;
      sub_1004DD5FC(v149);
      sub_1004DD5FC(v118);
    }

    strcpy(&v113, "    alpha : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v150._countAndFlagsBits = sub_1004DDB9C();
    sub_1004DD5FC(v150);

    v151._countAndFlagsBits = 10;
    v151._object = 0xE100000000000000;
    sub_1004DD5FC(v151);
    sub_1004DD5FC(v113);

    v113._countAndFlagsBits = 0x746E697420202020;
    v113._object = 0xEB00000000203A20;
    v118._countAndFlagsBits = v105;
    v25 = v105;
    v152._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v152);

    v153._countAndFlagsBits = 10;
    v153._object = 0xE100000000000000;
    sub_1004DD5FC(v153);
    sub_1004DD5FC(v113);

    if (v18)
    {
      v113._countAndFlagsBits = 0xD000000000000018;
      v113._object = 0x80000001004F55B0;

      v154._countAndFlagsBits = v102;
      v154._object = v18;
      sub_1004DD5FC(v154);

      v155._countAndFlagsBits = 10;
      v155._object = 0xE100000000000000;
      sub_1004DD5FC(v155);
      sub_1004DD5FC(v113);
    }

    v156._countAndFlagsBits = 687392;
    v156._object = 0xE300000000000000;
    sub_1004DD5FC(v156);
    v6 = v112;
  }

  else
  {
    v157._object = 0x80000001004F52B0;
    v157._countAndFlagsBits = 0x1000000000000012;
    sub_1004DD5FC(v157);
  }

  v26 = *(v1 + 128);
  if (v26)
  {
    v27 = *(v1 + 160);
    v105 = *(v1 + 152);
    v28 = *(v1 + 184);
    v29 = *(v1 + 176);
    v30 = *(v1 + 144);
    v31 = *(v1 + 136);
    v32 = *(v1 + 120);

    v158._countAndFlagsBits = 0x746954209480E220;
    v158._object = 0xAD00000A7B20656CLL;
    sub_1004DD5FC(v158);
    v113._countAndFlagsBits = 0x7478657420202020;
    v113._object = 0xEB00000000203A20;
    v159._countAndFlagsBits = v32;
    v159._object = v26;
    sub_1004DD5FC(v159);

    v160._countAndFlagsBits = 10;
    v160._object = 0xE100000000000000;
    sub_1004DD5FC(v160);
    sub_1004DD5FC(v113);

    strcpy(&v113, "    style : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v118._countAndFlagsBits = v31;
    type metadata accessor for TextStyle(0);
    v33 = v31;
    v161._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v161);

    v162._countAndFlagsBits = 10;
    v162._object = 0xE100000000000000;
    sub_1004DD5FC(v162);
    sub_1004DD5FC(v113);

    strcpy(&v113, "    weight : ");
    HIWORD(v113._object) = -4864;
    v118._countAndFlagsBits = v30;
    type metadata accessor for Weight(0);
    v163._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v163);

    v164._countAndFlagsBits = 10;
    v164._object = 0xE100000000000000;
    sub_1004DD5FC(v164);
    sub_1004DD5FC(v113);

    strcpy(&v113, "    alpha : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v165._countAndFlagsBits = sub_1004DDB9C();
    sub_1004DD5FC(v165);

    v166._countAndFlagsBits = 10;
    v166._object = 0xE100000000000000;
    sub_1004DD5FC(v166);
    sub_1004DD5FC(v113);

    v113._countAndFlagsBits = 0x746E697420202020;
    v113._object = 0xEB00000000203A20;
    v118._countAndFlagsBits = v29;
    v34 = v29;
    v167._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v167);

    v168._countAndFlagsBits = 10;
    v168._object = 0xE100000000000000;
    sub_1004DD5FC(v168);
    sub_1004DD5FC(v113);

    strcpy(&v113, "    hidden : ");
    HIWORD(v113._object) = -4864;
    if (v28)
    {
      v35._countAndFlagsBits = 1702195828;
    }

    else
    {
      v35._countAndFlagsBits = 0x65736C6166;
    }

    if (v28)
    {
      v36 = 0xE400000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    v35._object = v36;
    sub_1004DD5FC(v35);

    v169._countAndFlagsBits = 10;
    v169._object = 0xE100000000000000;
    sub_1004DD5FC(v169);
    sub_1004DD5FC(v113);

    if (v27)
    {
      v113._countAndFlagsBits = 0xD000000000000018;
      v113._object = 0x80000001004F55B0;

      v170._countAndFlagsBits = v105;
      v170._object = v27;
      sub_1004DD5FC(v170);

      v171._countAndFlagsBits = 10;
      v171._object = 0xE100000000000000;
      sub_1004DD5FC(v171);
      sub_1004DD5FC(v113);
    }

    v172._countAndFlagsBits = 687392;
    v172._object = 0xE300000000000000;
    sub_1004DD5FC(v172);
    v6 = v112;
  }

  else
  {
    v173._countAndFlagsBits = 0x1000000000000011;
    v173._object = 0x80000001004F52D0;
    sub_1004DD5FC(v173);
  }

  v37 = *(v1 + 208);
  if (v37 == 1)
  {
    v174._countAndFlagsBits = 0x1000000000000016;
    v174._object = 0x80000001004F52F0;
    sub_1004DD5FC(v174);
  }

  else
  {
    v39 = *(v1 + 216);
    v38 = *(v1 + 224);

    v40 = v37;
    v175._object = 0x80000001004F5590;
    v175._countAndFlagsBits = 0x1000000000000012;
    sub_1004DD5FC(v175);
    strcpy(&v113, "    alpha : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v176._countAndFlagsBits = sub_1004DDB9C();
    sub_1004DD5FC(v176);

    v177._countAndFlagsBits = 10;
    v177._object = 0xE100000000000000;
    sub_1004DD5FC(v177);
    sub_1004DD5FC(v113);

    v113._countAndFlagsBits = 0x746E697420202020;
    v113._object = 0xEB00000000203A20;
    v118._countAndFlagsBits = v37;
    v41 = v40;
    v178._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v178);

    v179._countAndFlagsBits = 10;
    v179._object = 0xE100000000000000;
    sub_1004DD5FC(v179);
    sub_1004DD5FC(v113);

    if (v38)
    {
      v113._countAndFlagsBits = 0xD000000000000018;
      v113._object = 0x80000001004F55B0;

      v180._countAndFlagsBits = v39;
      v180._object = v38;
      sub_1004DD5FC(v180);

      v181._countAndFlagsBits = 10;
      v181._object = 0xE100000000000000;
      sub_1004DD5FC(v181);
      sub_1004DD5FC(v113);
    }

    v182._countAndFlagsBits = 687392;
    v182._object = 0xE300000000000000;
    sub_1004DD5FC(v182);

    v6 = v112;
  }

  v42 = *(v1 + 296);
  if (v42)
  {
    v43 = *(v1 + 288);
    v44 = *(v1 + 280);
    v118._countAndFlagsBits = 0x726F42209480E220;
    v118._object = 0xAE00203A20726564;
    v113._countAndFlagsBits = v44;
    LOBYTE(v113._object) = v43 & 1;
    *&v114 = v42;
    v45 = v42;
    v183._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v183);

    v184._countAndFlagsBits = 10;
    v184._object = 0xE100000000000000;
    sub_1004DD5FC(v184);
    sub_1004DD5FC(v118);
  }

  else
  {
    v185._object = 0x80000001004F5310;
    v185._countAndFlagsBits = 0x1000000000000012;
    sub_1004DD5FC(v185);
  }

  v46 = v108;
  sub_1002EA57C(v1 + v6[9], v108);
  v48 = v109;
  v47 = v110;
  if ((v109[6])(v46, 1, v110) == 1)
  {
    sub_1002EA5EC(v46);
    v186._object = 0x80000001004F5330;
    v186._countAndFlagsBits = 0x1000000000000012;
    sub_1004DD5FC(v186);
  }

  else
  {
    v49 = v107;
    v48[4](v107, v46, v47);
    v113._countAndFlagsBits = 0x726F43209480E220;
    v113._object = 0xAE00203A2072656ELL;
    v48[2](v106, v49, v47);
    v187._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v187);

    v188._countAndFlagsBits = 10;
    v188._object = 0xE100000000000000;
    sub_1004DD5FC(v188);
    sub_1004DD5FC(v113);

    (v48[1])(v49, v47);
  }

  v50 = *(v1 + 232);
  if (v50 == 1)
  {
    v189._countAndFlagsBits = 0x1000000000000014;
    v189._object = 0x80000001004F5350;
    sub_1004DD5FC(v189);
  }

  else
  {
    v52 = *(v1 + 240);
    v51 = *(v1 + 248);
    v53 = *(v1 + 272);
    v54 = *(v1 + 256);
    v107 = *(v1 + 264);
    v108 = v54;

    v55 = v50;
    v110 = v52;
    v109 = v51;
    v190._countAndFlagsBits = 0x1000000000000010;
    v190._object = 0x80000001004F5510;
    sub_1004DD5FC(v190);
    if (v50)
    {
      v113._countAndFlagsBits = 0xD000000000000017;
      v113._object = 0x80000001004F5570;
      v56 = v55;
      v57 = [v56 description];
      v58 = sub_1004DD43C();
      v60 = v59;

      v191._countAndFlagsBits = v58;
      v191._object = v60;
      sub_1004DD5FC(v191);

      v192._countAndFlagsBits = 10;
      v192._object = 0xE100000000000000;
      sub_1004DD5FC(v192);
      sub_1004DD5FC(v113);

      v6 = v112;
    }

    if (v52)
    {
      v113._countAndFlagsBits = 0xD000000000000017;
      v113._object = 0x80000001004F5550;
      v61 = v110;
      v62 = [v61 description];
      v63 = sub_1004DD43C();
      v65 = v64;

      v193._countAndFlagsBits = v63;
      v193._object = v65;
      sub_1004DD5FC(v193);

      v194._countAndFlagsBits = 10;
      v194._object = 0xE100000000000000;
      sub_1004DD5FC(v194);
      sub_1004DD5FC(v113);

      v6 = v112;
    }

    v66 = v109;
    if (v51)
    {
      v113._countAndFlagsBits = 0xD000000000000014;
      v113._object = 0x80000001004F5530;
      v67 = v109;
      v68 = [v67 description];
      v69 = sub_1004DD43C();
      v71 = v70;

      v195._countAndFlagsBits = v69;
      v195._object = v71;
      sub_1004DD5FC(v195);

      v196._countAndFlagsBits = 10;
      v196._object = 0xE100000000000000;
      sub_1004DD5FC(v196);
      sub_1004DD5FC(v113);

      v6 = v112;
    }

    if (v108 != 2)
    {
      strcpy(&v113, "    color : ");
      BYTE5(v113._object) = 0;
      HIWORD(v113._object) = -5120;
      LOBYTE(v118._countAndFlagsBits) = v108 & 1;
      v197._countAndFlagsBits = sub_1004DD4DC();
      sub_1004DD5FC(v197);

      v198._countAndFlagsBits = 10;
      v198._object = 0xE100000000000000;
      sub_1004DD5FC(v198);
      sub_1004DD5FC(v113);
    }

    if (v53)
    {
      strcpy(&v113, "    group : ");
      BYTE5(v113._object) = 0;
      HIWORD(v113._object) = -5120;

      v199._countAndFlagsBits = v107;
      v199._object = v53;
      sub_1004DD5FC(v199);

      v200._countAndFlagsBits = 10;
      v200._object = 0xE100000000000000;
      sub_1004DD5FC(v200);
      sub_1004DD5FC(v113);
    }

    v201._countAndFlagsBits = 687392;
    v201._object = 0xE300000000000000;
    sub_1004DD5FC(v201);
  }

  v72 = v1 + v6[10];
  v73 = *v72;
  if (*v72)
  {
    v75 = *(v72 + 40);
    v74 = *(v72 + 48);
    v77 = *(v72 + 24);
    v76 = *(v72 + 32);
    v78 = *(v72 + 8);
    v79 = *(v72 + 16);
    v118._countAndFlagsBits = 0x1000000000000013;
    v118._object = 0x80000001004F54F0;
    v113._countAndFlagsBits = v73;
    v113._object = v78;
    *&v114 = v79;
    *(&v114 + 1) = v77;
    v115 = v76;
    v116 = v75;
    v117 = v74;
    sub_1002EA664(v73, v78, v79, v77, v76, v75, v74);
    v80 = v74;
    v81 = v73;
    v202._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v202);

    v203._countAndFlagsBits = 10;
    v203._object = 0xE100000000000000;
    sub_1004DD5FC(v203);
    sub_1004DD5FC(v118);

    v82 = v77;
    v6 = v112;
    sub_1002E005C(v73, v78, v79, v82, v76, v75, v74);
  }

  else
  {
    v204._countAndFlagsBits = 0x1000000000000017;
    v204._object = 0x80000001004F5370;
    sub_1004DD5FC(v204);
  }

  v83 = (v1 + v6[11]);
  v84 = v83[2];
  if (v84 == 1)
  {
    v205._countAndFlagsBits = 0x1000000000000011;
    v205._object = 0x80000001004F5390;
    sub_1004DD5FC(v205);
  }

  else
  {
    v86 = *v83;
    v85 = v83[1];
    v87 = v84;
    v206._countAndFlagsBits = 0x646142209480E220;
    v206._object = 0xAD00000A7B206567;
    sub_1004DD5FC(v206);
    v113._countAndFlagsBits = 0xD000000000000014;
    v113._object = 0x80000001004F54D0;
    v207._countAndFlagsBits = sub_1004DDB9C();
    sub_1004DD5FC(v207);

    v208._countAndFlagsBits = 10;
    v208._object = 0xE100000000000000;
    sub_1004DD5FC(v208);
    sub_1004DD5FC(v113);

    strcpy(&v113, "    alpha : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v209._countAndFlagsBits = sub_1004DDB9C();
    sub_1004DD5FC(v209);

    v210._countAndFlagsBits = 10;
    v210._object = 0xE100000000000000;
    sub_1004DD5FC(v210);
    sub_1004DD5FC(v113);

    v113._countAndFlagsBits = 0x746E697420202020;
    v113._object = 0xEB00000000203A20;
    v118._countAndFlagsBits = v84;
    v88 = v87;
    v211._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v211);

    v212._countAndFlagsBits = 10;
    v212._object = 0xE100000000000000;
    sub_1004DD5FC(v212);
    sub_1004DD5FC(v113);

    v213._countAndFlagsBits = 687392;
    v213._object = 0xE300000000000000;
    sub_1004DD5FC(v213);
    sub_1002EA654(v86, v85, v84);
  }

  v89 = (v1 + v6[16]);
  v90 = *v89;
  v91 = *(v89 + 1);
  v92 = *(v89 + 2);
  v93 = v89[24];
  v214._countAndFlagsBits = 0x1000000000000015;
  v214._object = 0x80000001004F53B0;
  sub_1004DD5FC(v214);
  v113._countAndFlagsBits = 0xD00000000000001BLL;
  v113._object = 0x80000001004F53D0;
  if (v90)
  {
    v94._countAndFlagsBits = 1702195828;
  }

  else
  {
    v94._countAndFlagsBits = 0x65736C6166;
  }

  if (v90)
  {
    v95 = 0xE400000000000000;
  }

  else
  {
    v95 = 0xE500000000000000;
  }

  v94._object = v95;
  sub_1004DD5FC(v94);

  v215._countAndFlagsBits = 10;
  v215._object = 0xE100000000000000;
  sub_1004DD5FC(v215);
  sub_1004DD5FC(v113);

  if (v91)
  {
    v113._countAndFlagsBits = 0xD000000000000021;
    v113._object = 0x80000001004F54A0;
    v118._countAndFlagsBits = v91;
    type metadata accessor for UIContentSizeCategory(0);
    v96 = v91;
    v216._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v216);

    v217._countAndFlagsBits = 10;
    v217._object = 0xE100000000000000;
    sub_1004DD5FC(v217);
    sub_1004DD5FC(v113);

    if (v92)
    {
LABEL_72:
      v113._countAndFlagsBits = 0xD000000000000021;
      v113._object = 0x80000001004F5470;
      v118._countAndFlagsBits = v92;
      type metadata accessor for UIContentSizeCategory(0);
      v97 = v92;
      v218._countAndFlagsBits = sub_1004DD4DC();
      sub_1004DD5FC(v218);

      v219._countAndFlagsBits = 10;
      v219._object = 0xE100000000000000;
      sub_1004DD5FC(v219);
      sub_1004DD5FC(v113);

      goto LABEL_75;
    }
  }

  else
  {
    v220._countAndFlagsBits = 0xD00000000000002DLL;
    v220._object = 0x80000001004F53F0;
    sub_1004DD5FC(v220);
    if (v92)
    {
      goto LABEL_72;
    }
  }

  v221._countAndFlagsBits = 0xD00000000000002DLL;
  v221._object = 0x80000001004F5420;
  sub_1004DD5FC(v221);
LABEL_75:
  v113._countAndFlagsBits = 0xD00000000000001ELL;
  v113._object = 0x80000001004F5450;
  if (v93)
  {
    v98._countAndFlagsBits = 1702195828;
  }

  else
  {
    v98._countAndFlagsBits = 0x65736C6166;
  }

  if (v93)
  {
    v99 = 0xE400000000000000;
  }

  else
  {
    v99 = 0xE500000000000000;
  }

  v98._object = v99;
  sub_1004DD5FC(v98);

  v222._countAndFlagsBits = 10;
  v222._object = 0xE100000000000000;
  sub_1004DD5FC(v222);
  sub_1004DD5FC(v113);

  v223._countAndFlagsBits = 687392;
  v223._object = 0xE300000000000000;
  sub_1004DD5FC(v223);
  v224._countAndFlagsBits = 41;
  v224._object = 0xE100000000000000;
  sub_1004DD5FC(v224);
  return v119;
}