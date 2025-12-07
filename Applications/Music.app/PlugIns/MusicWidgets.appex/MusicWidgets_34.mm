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

    sub_100373F7C(0, 1);
    swift_endAccess();
    v6 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = v5;
    v6[1] = v4;
    sub_100372434(v7, v8);
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
    v12[4] = sub_100374074;
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10017EDD8;
    v12[3] = &unk_10069E708;
    v8 = _Block_copy(v12);

    v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:with];
    _Block_release(v8);
    v10 = *(v1 + v3);
    *(v1 + v3) = v9;
    v11 = v9;
    [v10 invalidate];
  }
}

void sub_10037311C(uint64_t a1, uint64_t a2)
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

    sub_100573888();
    [v1 setPosition:?];
  }
}

void sub_100373464()
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
      v7 = sub_100572D28();

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
          sub_100081F38(v10, v31);
          sub_100081F38(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = sub_100572898();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              sub_100573D58();
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
              sub_1000D3B98(0, &qword_1006EF8F8, CALayer_ptr);
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
              sub_100374094(v30);
            }
          }

          ++v9;
          sub_100010474(v31);
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

void sub_100373904(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_100009DCC(&qword_1006F44B0, &qword_1005A02D0);
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

void sub_1003739DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_100009DCC(&qword_1006EF928, &unk_100599080);
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

void sub_100373B80(char *a1)
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
      v7 = sub_100572D28();

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
          sub_100081F38(v10, v31);
          sub_100081F38(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = sub_100572898();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              sub_100573D58();
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
              sub_1000D3B98(0, &qword_1006EF8F8, CALayer_ptr);
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
              sub_100374094(v30);
            }
          }

          ++v9;
          sub_100010474(v31);
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

void sub_100373EC0()
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
  sub_1005740F8();
  __break(1u);
}

unint64_t sub_100373F7C(unint64_t result, uint64_t a2)
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

    v4 = sub_100474884(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1001E9848(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10037403C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10037407C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100374094(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F6190, &unk_100599090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003740FC()
{
  result = qword_1006EF938;
  if (!qword_1006EF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EF938);
  }

  return result;
}

unint64_t sub_100374168()
{
  result = qword_1006EF940;
  if (!qword_1006EF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EF940);
  }

  return result;
}

id sub_1003741BC()
{
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v1 = qword_1006FDF00;
  static NSBundle.musicCoreUIBundle = qword_1006FDF00;

  return v1;
}

uint64_t *NSBundle.musicCoreUIBundle.unsafeMutableAddressor()
{
  if (qword_1006EE9D8 != -1)
  {
    swift_once();
  }

  return &static NSBundle.musicCoreUIBundle;
}

id static NSBundle.musicCoreUIBundle.getter()
{
  if (qword_1006EE9D8 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.musicCoreUIBundle;

  return v1;
}

double MusicLibrary.ActionableState.updateSymbolConfiguration(from:)(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = a3;
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  __chkstk_darwin();
  v7 = &v22 - v6;
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + v8[13]) = vdupq_n_s64(0x4040000000000000uLL);
  sub_100573988();
  v9 = sub_100573998();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_1003745D4(v7, a1 + v8[9]);
  v10 = a1 + v8[10];
  if (*v10)
  {
    v11 = *&UIEdgeInsetsZero.bottom;
    *(v10 + 8) = *&UIEdgeInsetsZero.top;
    *(v10 + 24) = v11;
  }

  *(a1 + 112) = 0;
  objc_storeStrong((a1 + 24), UIFontTextStyleBody);
  *(a1 + 48) = xmmword_100596E30;
  if (!(v5 >> 14))
  {

    *a1 = xmmword_100596E90;
    *(a1 + 48) = 7;
    goto LABEL_20;
  }

  if (v5 >> 14 != 1)
  {
    if (a2 | v5 ^ 0x8000)
    {
      if (v5 == 0x8000 && a2 == 1)
      {

        v17 = xmmword_100596E50;
      }

      else
      {

        v17 = xmmword_100596E40;
      }

      goto LABEL_19;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
LABEL_20:
    sub_100374644(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48));
    *(v10 + 48) = 0;
    result = 0.0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = 0u;
    return result;
  }

  if ((v5 & 0x100) != 0)
  {

    v17 = xmmword_100596E60;
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
  sub_100374684(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
  *(a1 + 200) = xmmword_100582400;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;

  *a1 = xmmword_100596E70;
  *(a1 + 56) = 1;
  v20 = UIFontTextStyleFootnote;

  *(a1 + 24) = v20;
  sub_100374644(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48));
  *v10 = v14;
  v21 = *&UIEdgeInsetsZero.top;
  *(v10 + 24) = *&UIEdgeInsetsZero.bottom;
  *(v10 + 8) = v21;
  result = 1.0;
  *(v10 + 40) = xmmword_100596E80;
  return result;
}

uint64_t sub_1003745D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100374644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
  }
}

double sub_100374684(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1003746C8()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006FE120);
  sub_10000C49C(v0, qword_1006FE120);
  sub_100374744();
  OS_os_log.init(musicCategory:)(0x726F43636973754DLL, 0xEB00000000495565);
  return sub_10056DF98();
}

unint64_t sub_100374744()
{
  result = qword_1006EF948;
  if (!qword_1006EF948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006EF948);
  }

  return result;
}

uint64_t ArtworkImageViewModelAttributeProviding.cropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_100571D48();
  v2 = sub_100571DC8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_100374800@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = sub_100571E58();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001036C(v7, &unk_1006F3B10, &unk_100599150);
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
    v17 = sub_100571DC8();
    (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }
}

uint64_t sub_100374AA4@<X0>(uint64_t a1@<X8>)
{
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = sub_100571E58();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100571CF8();
  v8 = sub_100375250();
  if ((*(v5 + 48))(v3, 1, v4, v8) == 1)
  {
    sub_10001036C(v3, &unk_1006F3B10, &unk_100599150);
    v9 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    (*(v5 + 16))(a1, v7, v4);
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    v12 = *(v11 + 20);
    sub_100571D48();
    (*(v5 + 8))(v7, v4);
    v13 = sub_100571DC8();
    (*(*(v13 - 8) + 56))(a1 + v12, 0, 1, v13);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_100374D14@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = sub_100571E58();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001036C(v7, &unk_1006F3B10, &unk_100599150);
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
    v17 = sub_100571DC8();
    (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
    (*(v9 + 8))(v12, v8);
    return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }
}

uint64_t ArtworkImageViewModelAttributeProviding.artworkViewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = sub_100571E58();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2, v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001036C(v7, &unk_1006F3B10, &unk_100599150);
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

double sub_100375250()
{
  sub_100009DCC(&qword_1006EF960, &qword_1005994E0);
  swift_allocObject();
  sub_100570F88();
  sub_100571CE8();

  return result;
}

uint64_t sub_100375470@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100571E58();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  sub_1005722B8();
  sub_10000CC8C(v9, v7, &unk_1006F3B10, &unk_100599150);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_10001036C(v9, &unk_1006F3B10, &unk_100599150);
    v10 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    (*(v3 + 16))(a1, v5, v2);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    v13 = *(v12 + 20);
    sub_100571D38();
    (*(v3 + 8))(v5, v2);
    sub_10001036C(v9, &unk_1006F3B10, &unk_100599150);
    v14 = sub_100571DC8();
    (*(*(v14 - 8) + 56))(a1 + v13, 0, 1, v14);
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }
}

uint64_t Playlist.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  __chkstk_darwin();
  v52 = &v50 - v1;
  v2 = sub_100571E58();
  v55 = *(v2 - 8);
  v56 = v2;
  __chkstk_darwin();
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v50 - v4;
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v50 - v7;
  __chkstk_darwin();
  v10 = &v50 - v9;
  __chkstk_darwin();
  v12 = &v50 - v11;
  sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  __chkstk_darwin();
  v53 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v50 - v14;
  sub_100009DCC(&qword_1006EF6E8, &qword_100598E50);
  __chkstk_darwin();
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v50 - v18;
  sub_100572148();
  v20 = sub_100572128();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    goto LABEL_2;
  }

  sub_10000CC8C(v19, v17, &qword_1006EF6E8, &qword_100598E50);
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
          sub_100572088();
          sub_10000CC8C(v8, v6, &unk_1006F3B10, &unk_100599150);
          v39 = v55;
          v38 = v56;
          if ((*(v55 + 48))(v6, 1, v56) == 1)
          {
            sub_10001036C(v8, &unk_1006F3B10, &unk_100599150);
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
            sub_100571DB8();
            (*(v39 + 8))(v43, v38);
            sub_10001036C(v8, &unk_1006F3B10, &unk_100599150);
            v46 = sub_100571DC8();
            (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
            v41 = v53;
            v42(v53, v44, v38);
            v40 = type metadata accessor for ArtworkImage.ViewModel(0);
            sub_100376134(v45, v41 + *(v40 + 20));
            (*(*(v40 - 8) + 56))(v41, 0, 1, v40);
          }

          type metadata accessor for ArtworkImage.ViewModel(0);
          v47 = *(v40 - 8);
          v48 = *(v47 + 48);
          if (v48(v41, 1, v40) == 1)
          {
            sub_100375470(v57);
            if (v48(v41, 1, v40) != 1)
            {
              sub_10001036C(v41, &qword_1006F3E50, &qword_1005971F0);
            }
          }

          else
          {
            v49 = v57;
            sub_1003760D0(v41, v57);
            (*(v47 + 56))(v49, 0, 1, v40);
          }

          goto LABEL_16;
        }

        (*(v21 + 8))(v17, v20);
LABEL_15:
        v37 = type metadata accessor for ArtworkImage.ViewModel(0);
        (*(*(v37 - 8) + 56))(v57, 1, 1, v37);
LABEL_16:
        v34 = &qword_1006EF6E8;
        v35 = &qword_100598E50;
        v36 = v19;
        return sub_10001036C(v36, v34, v35);
      }

LABEL_2:
      sub_10001036C(v19, &qword_1006EF6E8, &qword_100598E50);
      return sub_100375470(v57);
    }
  }

LABEL_7:
  sub_10001036C(v19, &qword_1006EF6E8, &qword_100598E50);
  sub_100375470(v15);
  v24 = type metadata accessor for ArtworkImage.ViewModel(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v15, 1, v24) != 1)
  {
    v31 = v57;
    sub_1003760D0(v15, v57);
    return (*(v25 + 56))(v31, 0, 1, v24);
  }

  sub_1005720D8();
  sub_10000CC8C(v12, v10, &unk_1006F3B10, &unk_100599150);
  v28 = v55;
  v27 = v56;
  if ((*(v55 + 48))(v10, 1, v56) == 1)
  {
    sub_10001036C(v12, &unk_1006F3B10, &unk_100599150);
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
    sub_100571D48();
    (*(v28 + 8))(v32, v27);
    sub_10001036C(v12, &unk_1006F3B10, &unk_100599150);
    v33 = sub_100571DC8();
    (*(*(v33 - 8) + 56))(v30 + v53, 0, 1, v33);
    v29 = 0;
  }

  (*(v25 + 56))(v30, v29, 1, v24);
  result = (v26)(v15, 1, v24);
  if (result != 1)
  {
    v34 = &qword_1006F3E50;
    v35 = &qword_1005971F0;
    v36 = v15;
    return sub_10001036C(v36, v34, v35);
  }

  return result;
}

uint64_t sub_1003760D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100376134(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Playlist.defaultCropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v22 - v4;
  sub_100009DCC(&qword_1006EF6E8, &qword_100598E50);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v22 - v8;
  sub_100572148();
  v10 = sub_100572128();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_2;
  }

  sub_10000CC8C(v9, v7, &qword_1006EF6E8, &qword_100598E50);
  v12 = (*(v11 + 88))(v7, v10);
  if (v12 == enum case for Playlist.Variant.regular(_:) || v12 == enum case for Playlist.Variant.smart(_:))
  {
    goto LABEL_8;
  }

  if (v12 == enum case for Playlist.Variant.genius(_:))
  {
LABEL_2:
    sub_10001036C(v9, &qword_1006EF6E8, &qword_100598E50);
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
    sub_10001036C(v9, &qword_1006EF6E8, &qword_100598E50);
    sub_1005722B8();
    v14 = sub_100571E58();
    v15 = (*(*(v14 - 8) + 48))(v5, 1, v14);
    sub_10001036C(v5, &unk_1006F3B10, &unk_100599150);
    if (v15 == 1)
    {
      sub_100571D48();
LABEL_11:
      v16 = sub_100571DC8();
      return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
    }

LABEL_10:
    sub_100571D38();
    goto LABEL_11;
  }

  if (v12 == enum case for Playlist.Variant.admin(_:))
  {
    goto LABEL_2;
  }

  if (v12 == enum case for Playlist.Variant.personalMix(_:))
  {
    sub_100572088();
    v19 = sub_100571E58();
    v20 = (*(*(v19 - 8) + 48))(v3, 1, v19);
    sub_10001036C(v3, &unk_1006F3B10, &unk_100599150);
    if (v20 == 1)
    {
      sub_100571D38();
    }

    else
    {
      sub_100571DB8();
    }

    v21 = sub_100571DC8();
    (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
    return sub_10001036C(v9, &qword_1006EF6E8, &qword_100598E50);
  }

  (*(v11 + 8))(v7, v10);
LABEL_15:
  v18 = sub_100571DC8();
  (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  return sub_10001036C(v9, &qword_1006EF6E8, &qword_100598E50);
}

uint64_t RecentlyAddedMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_10056DA88();
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin();
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005713A8();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin();
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10056DB68();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin();
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005722D8();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10056D8D8();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100571B78();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10056D3D8();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin();
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v45, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v15 + 32))(v17, v22, v14);
    sub_100374800(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v46);
    return (*(v15 + 8))(v17, v14);
  }

  v25 = v46;
  if (v23 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v11 + 32))(v13, v22, v10);
    sub_100374800(&MusicMovie.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v25);
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
    sub_100374800(v29, &static Artwork.CropStyle.boundedBox.getter, v25);
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
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = sub_100571E58();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  sub_10056DB88();
  v12 = *(v7 + 48);
  if (v12(v5, 1, v6) == 1)
  {
    sub_10001036C(v5, &unk_1006F3B10, &unk_100599150);
    sub_10056DBA8();
    if (v12(v3, 1, v6) == 1)
    {
      sub_10001036C(v3, &unk_1006F3B10, &unk_100599150);
      v13 = type metadata accessor for ArtworkImage.ViewModel(0);
      return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    (*(v7 + 32))(v9, v3, v6);
    (*(v7 + 16))(a1, v9, v6);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    sub_100571D48();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    (*(v7 + 16))(a1, v11, v6);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    sub_100571D48();
    (*(v7 + 8))(v11, v6);
  }

  v17 = sub_100571DC8();
  (*(*(v17 - 8) + 56))(a1 + v16, 0, 1, v17);
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t sub_1003773B0@<X0>(uint64_t a1@<X8>)
{
  sub_100571D88();
  v2 = sub_100571DC8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_100377468@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1();
  v3 = sub_100571DC8();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t Track.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1005713A8();
  v21 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100571A68();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100571C48();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v2, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for Track.song(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    sub_100374800(&Song.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v8 + 8))(v10, v7);
  }

  else if (v16 == enum case for Track.musicVideo(_:))
  {
    (*(v12 + 96))(v15, v11);
    v18 = v21;
    (*(v21 + 32))(v6, v15, v4);
    sub_100374800(&MusicVideo.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
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
  v1 = sub_10056D978();
  v121 = *(v1 - 8);
  v122 = v1;
  __chkstk_darwin();
  v120 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10056D9E8();
  v94 = *(v95 - 8);
  __chkstk_darwin();
  v93 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_10056DA88();
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10056DA38();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10056DB08();
  v79 = *(v80 - 8);
  __chkstk_darwin();
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10056DB68();
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v81 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10056DBC8();
  v85 = *(v86 - 8);
  __chkstk_darwin();
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1005718C8();
  v97 = *(v98 - 8);
  __chkstk_darwin();
  v96 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100572308();
  v100 = *(v101 - 8);
  __chkstk_darwin();
  v99 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100571F08();
  v88 = *(v89 - 8);
  __chkstk_darwin();
  v87 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100571A68();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v90 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1005722D8();
  v103 = *(v104 - 8);
  __chkstk_darwin();
  v102 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005713A8();
  v106 = *(v14 - 8);
  v107 = v14;
  __chkstk_darwin();
  v105 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10056D8D8();
  v109 = *(v16 - 8);
  v110 = v16;
  __chkstk_darwin();
  v108 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100571BA8();
  v112 = *(v18 - 8);
  v113 = v18;
  __chkstk_darwin();
  v111 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10056D9A8();
  v115 = *(v20 - 8);
  v116 = v20;
  __chkstk_darwin();
  v114 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100571E88();
  v118 = *(v22 - 8);
  v119 = v22;
  __chkstk_darwin();
  v117 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100571CF8();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100571B78();
  v29 = *(v28 - 8);
  __chkstk_darwin();
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10056D438();
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
    sub_100374800(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v123);
    return (*(v29 + 8))(v31, v28);
  }

  v40 = v123;
  if (v38 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v25 + 32))(v27, v37, v24);
    sub_100374AA4(v40);
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
    sub_100374800(v47, &static Artwork.CropStyle.boundedBox.getter, v48);
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
    sub_100374800(&SocialProfile.artwork.getter, &static Artwork.CropStyle.specificRectangle.getter, v40);
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
    sub_100374800(v55, v56, v40);
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
    if (qword_1006EEB48 != -1)
    {
      swift_once();
    }

    v58 = sub_10056DF88();
    sub_10000C49C(v58, static Logger.artwork);
    (v70)(v71, v124, v32);
    v59 = sub_10056DF68();
    LODWORD(v122) = sub_100573438();
    v124 = v59;
    if (os_log_type_enabled(v59, v122))
    {
      v60 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v125 = v121;
      *v60 = 136315394;
      *(v60 + 4) = sub_10037A2AC(0xD000000000000010, 0x80000001005B7BC0, &v125);
      *(v60 + 12) = 2080;
      sub_10037A890();
      v61 = v71;
      v62 = sub_100574408();
      v64 = v63;
      v65 = *(v33 + 8);
      v65(v61, v32);
      v66 = sub_10037A2AC(v62, v64, &v125);

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
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  *(v3 + 40) = swift_task_alloc();
  v4 = sub_100571DC8();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_100571E58();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10037917C, 0, 0);
}

uint64_t sub_10037917C()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  (*(*(v0 + 10) + 16))(*(v0 + 11), v4, *(v0 + 9));
  v5 = type metadata accessor for ArtworkImage.ViewModel(0);
  sub_10000CC8C(v4 + *(v5 + 20), v3, &qword_1006F2C40, &qword_10059C100);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (qword_1006EEB38 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 7);
    v7 = *(v0 + 8);
    v10 = *(v0 + 5);
    v9 = *(v0 + 6);
    v11 = sub_10000C49C(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      sub_10001036C(*(v0 + 5), &qword_1006F2C40, &qword_10059C100);
    }
  }

  else
  {
    (*(*(v0 + 7) + 32))(*(v0 + 8), *(v0 + 5), *(v0 + 6));
  }

  if (qword_1006EEB40 != -1)
  {
    swift_once();
  }

  v12 = sub_100571D28();
  v13 = sub_10000C49C(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 12) = v14;
  *v14 = v0;
  v14[1] = sub_10037939C;
  v15 = *(v0 + 8);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

uint64_t sub_10037939C(uint64_t a1)
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

    return _swift_task_switch(sub_1003795EC, 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_1003795EC()
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
  sub_100009DCC(&qword_1006EF958, &qword_100599170);
  *(v5 + 56) = swift_task_alloc();
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100379744, 0, 0);
}

uint64_t sub_100379744()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = [objc_opt_self() currentTraitCollection];
  [v5 displayScale];

  v6 = sub_100571DC8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v2, v4, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  v8 = sub_100571D28();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v1, v3, v8);
  (*(v9 + 56))(v1, 0, 1, v8);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_100379938;
  v11 = v0[7];
  v12 = v0[8];

  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v12, v11, 0, 0);
}

uint64_t sub_100379938(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  v6 = *(v4 + 64);
  sub_10001036C(*(v4 + 56), &qword_1006EF958, &qword_100599170);
  sub_10001036C(v6, &qword_1006F2C40, &qword_10059C100);
  if (v1)
  {

    return _swift_task_switch(sub_100379AF8, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_100379AF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100379B64(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100065BC4;

  return ArtworkImage.ViewModel.image(for:)(a1, a2);
}

uint64_t ArtworkImageFetching<>.image(for:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  *(v5 + 56) = swift_task_alloc();
  v6 = sub_100571DC8();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_100571E58();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100379D64, 0, 0);
}

uint64_t sub_100379D64()
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
    if (qword_1006EEB38 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 9);
    v7 = *(v0 + 10);
    v10 = *(v0 + 7);
    v9 = *(v0 + 8);
    v11 = sub_10000C49C(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      sub_10001036C(*(v0 + 7), &qword_1006F2C40, &qword_10059C100);
    }
  }

  else
  {
    (*(*(v0 + 9) + 32))(*(v0 + 10), *(v0 + 7), *(v0 + 8));
  }

  if (qword_1006EEB40 != -1)
  {
    swift_once();
  }

  v12 = sub_100571D28();
  v13 = sub_10000C49C(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 14) = v14;
  *v14 = v0;
  v14[1] = sub_100379F84;
  v15 = *(v0 + 10);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

uint64_t sub_100379F84(uint64_t a1)
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

    return _swift_task_switch(sub_10037A1D4, 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_10037A1D4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10037A250(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10037A2AC(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_10037A2AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10037A378(v11, 0, 0, 1, a1, a2);
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
    sub_100081F38(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100010474(v11);
  return v7;
}

unint64_t sub_10037A378(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10037A484(a5, a6);
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
    result = sub_100573F98();
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

void *sub_10037A484(uint64_t a1, unint64_t a2)
{
  v3 = sub_10037A4D0(a1, a2);
  sub_10037A600(&off_10069D6C0);
  return v3;
}

void *sub_10037A4D0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10037A6EC(v5, 0);
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

  result = sub_100573F98();
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
        v10 = sub_100572AB8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10037A6EC(v10, 0);
        result = sub_100573EC8();
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

void sub_10037A600(uint64_t a1)
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

  v3 = sub_10037A760(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

void *sub_10037A6EC(uint64_t a1, uint64_t a2)
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

  sub_100009DCC(&qword_1006EF968, &qword_1005994E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10037A760(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006EF968, &qword_1005994E8);
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

uint64_t sub_10037A854(uint64_t (*a1)(void))
{
  a1();

  return sub_100574758();
}

unint64_t sub_10037A890()
{
  result = qword_1006EF950;
  if (!qword_1006EF950)
  {
    sub_10056D438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EF950);
  }

  return result;
}

void sub_10037A8F4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
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
  v0 = sub_10056C5E8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = sub_10056C598();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056C588();
  sub_10037CFC4(&qword_1006EF970, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  sub_1005731B8();
  sub_100573208();
  sub_10037CFC4(&qword_1006EF978, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  v10 = sub_1005727E8();
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

        sub_10037AD68();
        return sub_10056FF28();
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

unint64_t sub_10037AD68()
{
  result = qword_1006F2C10;
  if (!qword_1006F2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F2C10);
  }

  return result;
}

uint64_t Text.init(optional:options:)(uint64_t a1, uint64_t a2)
{
  sub_100009DCC(&qword_1006EF980, &qword_100599510);
  __chkstk_darwin();
  v5 = &v16[-v4];
  v6 = sub_10056C628();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v16[-v10];
  sub_10037B04C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10037B0BC(a1);

    sub_10037B0BC(v5);
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    __chkstk_darwin();
    *&v16[-16] = v11;
    sub_10037A8F4(sub_10037B37C, &v16[-32], a2);
    v13 = v12;

    if (v13)
    {
      (*(v7 + 16))(v9, v11, v6);
      v14 = sub_10056FF18();
      sub_10037B0BC(a1);
      (*(v7 + 8))(v11, v6);
      return v14;
    }

    sub_10037B0BC(a1);
    (*(v7 + 8))(v11, v6);
  }

  return 0;
}

uint64_t sub_10037B04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EF980, &qword_100599510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037B0BC(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EF980, &qword_100599510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10037B124()
{
  v0 = sub_10056C5E8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = sub_10056C598();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056C588();
  sub_10037CFC4(&qword_1006EF970, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  sub_1005731B8();
  sub_100573208();
  sub_10037CFC4(&qword_1006EF978, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  v10 = sub_1005727E8();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v5, v0);
  (*(v7 + 8))(v9, v6);
  return v10 & 1;
}

uint64_t static Edge.Set.on(_:)(unsigned int a1)
{
  v1 = sub_10056FA78();
  v2 = sub_10056F9E8();
  sub_10056F9F8();
  if (sub_10056F9F8() == v2)
  {
    sub_100009DCC(&qword_1006EF988, &qword_100599518);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B500;
    v4 = sub_10056FA68();
    *(inited + 32) = v4;
    v5 = sub_10056FA88();
    *(inited + 33) = v5;
    v6 = sub_10056FA78();
    sub_10056FA78();
    if (sub_10056FA78() != v4)
    {
      v6 = sub_10056FA78();
    }

    sub_10056FA78();
    if (sub_10056FA78() != v5)
    {
      v6 = sub_10056FA78();
    }

    sub_10056FA78();
    if (sub_10056FA78() != v6)
    {
      v1 = sub_10056FA78();
    }
  }

  v7 = sub_10056FA08();
  sub_10056F9F8();
  if (sub_10056F9F8() == v7)
  {
    sub_100009DCC(&qword_1006EF988, &qword_100599518);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_10057B500;
    v9 = sub_10056FA48();
    *(v8 + 32) = v9;
    v10 = sub_10056FA58();
    *(v8 + 33) = v10;
    v11 = sub_10056FA78();
    sub_10056FA78();
    if (sub_10056FA78() != v9)
    {
      v11 = sub_10056FA78();
    }

    sub_10056FA78();
    if (sub_10056FA78() != v10)
    {
      v11 = sub_10056FA78();
    }

    sub_10056FA78();
    if (sub_10056FA78() != v11)
    {
      return sub_10056FA78();
    }
  }

  return v1;
}

double EdgeInsets.init(_:length:)(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = sub_10056FA08();
  }

  else
  {
    v3 = sub_10056F9E8();
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
  v2 = sub_10056FA38();
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
  sub_100009DCC(&qword_1006EF990, &qword_100599520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  *(inited + 32) = a1 & 1;
  v3 = sub_10037C628(inited);
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
    return sub_10056FA08();
  }

  else
  {
    return sub_10056F9E8();
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
  sub_100009DCC(&qword_1006EF998, &qword_100599528);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a1];
  v8 = sub_10056EBD8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, v2, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = sub_100573798();
  v11 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v10];
  [v7 scaledValueForValue:v11 compatibleWithTraitCollection:a2];
  v13 = v12;

  return v13;
}

uint64_t static Color.random(opacity:)(double a1)
{
  v1 = sub_100570468();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100193B54(0x20000000000001uLL);
  sub_100193B54(0x20000000000001uLL);
  sub_100193B54(0x20000000000001uLL);
  (*(v2 + 104))(v4, enum case for Color.RGBColorSpace.sRGB(_:), v1);
  return sub_100570518();
}

uint64_t RoundedRectangle.outset(horizontal:vertical:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = sub_10056EC88();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v21 - v12;
  sub_10056EDD8();
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10037CC3C(v4, v15, &type metadata accessor for RoundedRectangle);
  v16 = enum case for LayoutDirection.leftToRight(_:);
  v17 = *(v9 + 104);
  v17(v13, enum case for LayoutDirection.leftToRight(_:), v8);
  sub_10037CC3C(v15, a1, &type metadata accessor for RoundedRectangle);
  v18 = _s21OmnidirectionalOutsetVMa(0);
  *(a1 + v18[5]) = a3;
  *(a1 + v18[6]) = a2;
  *(a1 + v18[7]) = a3;
  *(a1 + v18[8]) = a2;
  v17(v11, v16, v8);
  LOBYTE(v16) = sub_10056EC78();
  v19 = *(v9 + 8);
  v19(v11, v8);
  v19(v13, v8);
  result = sub_10037C7B4(v15);
  *(a1 + v18[9]) = (v16 & 1) == 0;
  return result;
}

uint64_t RoundedRectangle.outset(top:leading:bottom:trailing:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v14 = sub_10056EC88();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v25 - v18;
  sub_10056EDD8();
  __chkstk_darwin();
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10037CC3C(v7, v21, &type metadata accessor for RoundedRectangle);
  (*(v15 + 16))(v19, a1, v14);
  sub_10037CC3C(v21, a2, &type metadata accessor for RoundedRectangle);
  v22 = _s21OmnidirectionalOutsetVMa(0);
  *(a2 + v22[5]) = a3;
  *(a2 + v22[6]) = a4;
  *(a2 + v22[7]) = a5;
  *(a2 + v22[8]) = a6;
  (*(v15 + 104))(v17, enum case for LayoutDirection.leftToRight(_:), v14);
  LOBYTE(v7) = sub_10056EC78();
  v23 = *(v15 + 8);
  v23(v17, v14);
  v23(v19, v14);
  result = sub_10037C7B4(v21);
  *(a2 + v22[9]) = (v7 & 1) == 0;
  return result;
}

double sub_10037C094@<D0>(int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = v3;
  sub_10037CC3C(v5, a2, _s21OmnidirectionalOutsetVMa);
  v8 = a1[6];
  *(a2 + a1[5]) = *(a2 + a1[5]) - a3;
  *(a2 + v8) = *(a2 + v8) - a3;
  v9 = a1[8];
  *(a2 + a1[7]) = *(a2 + a1[7]) - a3;
  result = *(a2 + v9) - a3;
  *(a2 + v9) = result;
  return result;
}

double sub_10037C11C@<D0>(int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v8 = v6;
  v14 = sub_10056F2E8();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10056EDD8() - 8;
  __chkstk_darwin();
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGRect.outset(by:for:)(*(v8 + a1[9]), *(v8 + a1[5]), *(v8 + a1[6]), *(v8 + a1[7]), *(v8 + a1[8]), a3, a4, a5, a6);
  sub_10037CC3C(v8, v20, &type metadata accessor for RoundedRectangle);
  (*(v15 + 32))(v17, &v20[*(v18 + 28)], v14);
  sub_10056FCF8();
  result = *&v24;
  v22 = v25;
  *a2 = v24;
  *(a2 + 16) = v22;
  *(a2 + 32) = v26;
  return result;
}

void (*sub_10037C32C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10056E528();
  return sub_1003674BC;
}

uint64_t sub_10037C3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10037CFC4(&qword_1006EFA78, _s21OmnidirectionalOutsetVMa, &unk_100599680);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10037C44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10037CFC4(&qword_1006EFA78, _s21OmnidirectionalOutsetVMa, &unk_100599680);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10037C4E0(uint64_t a1)
{
  v2 = sub_10037CFC4(&qword_1006EFA78, _s21OmnidirectionalOutsetVMa, &unk_100599680);

  return Shape.body.getter(a1, v2);
}

double _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(uint64_t a1, double a2)
{
  v3 = sub_10056FA48();
  sub_10056FA78();
  if (sub_10056FA78() == v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  sub_10056FA68();
  sub_10056FA78();
  sub_10056FA78();
  sub_10056FA58();
  sub_10056FA78();
  sub_10056FA78();
  sub_10056FA88();
  sub_10056FA78();
  sub_10056FA78();
  return v4;
}

Swift::Int sub_10037C628(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006EFAA0, &qword_100599720);
    v3 = sub_100573EB8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      sub_100574678();
      v11 = sub_10056FA18();
      sub_100574698(v11);
      result = sub_1005746C8();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = sub_10056FA18();
        result = sub_10056FA18();
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
  result = qword_1006EFA08;
  if (!qword_1006EFA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10037C7B4(uint64_t a1)
{
  v2 = sub_10056EDD8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10037C814()
{
  result = qword_1006EF9A0;
  if (!qword_1006EF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EF9A0);
  }

  return result;
}

uint64_t sub_10037C8D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056EDD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10037C954(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056EDD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10037C9C4(uint64_t a1)
{
  sub_10056EDD8();
  if (v1 <= 0x3F)
  {
    _s3__C30UIUserInterfaceLayoutDirectionOMa_0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10037CA60()
{
  result = qword_1006EFA50;
  if (!qword_1006EFA50)
  {
    sub_100010324(&qword_1006EFA58, &qword_1005995D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFA50);
  }

  return result;
}

unint64_t sub_10037CAC8()
{
  result = qword_1006EFA60;
  if (!qword_1006EFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFA60);
  }

  return result;
}

uint64_t sub_10037CC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_10037CCA4(uint64_t a1)
{
  v2 = sub_10056CCF8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v29 - v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100009DCC(&qword_1006EFA80, &qword_100599710);
    v8 = sub_100573EB8();
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
      sub_10037CFC4(&qword_1006EFA88, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v15 = sub_100572738();
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
          sub_10037CFC4(&qword_1006EFA90, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v22 = sub_1005727E8();
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

uint64_t sub_10037CFC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_10037D00C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006EFA98, &qword_100599718);
    v3 = sub_100573EB8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_100574678();
      sub_100574688(v10);
      result = sub_1005746C8();
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

uint64_t sub_10037D148()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006FE138);
  sub_10000C49C(v0, qword_1006FE138);
  sub_100374744();
  sub_100573C08();
  return sub_10056DF98();
}

unint64_t SymbolButton.Configuration.description.getter()
{
  v1 = v0;
  sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  __chkstk_darwin();
  v108 = &v101 - v2;
  v3 = sub_100573998();
  v109 = *(v3 - 1);
  v110 = v3;
  __chkstk_darwin();
  v106 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v101 - v5;
  v119 = 0xD00000000000001CLL;
  v120 = 0x80000001005B7BE0;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  sub_100573ED8(26);

  v113._countAndFlagsBits = 0xD000000000000017;
  v113._object = 0x80000001005B7C00;
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v121._countAndFlagsBits = sub_100573058();
  sub_100572A98(v121);

  v122._countAndFlagsBits = 10;
  v122._object = 0xE100000000000000;
  sub_100572A98(v122);
  sub_100572A98(v113);

  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  sub_100573ED8(18);

  v113._countAndFlagsBits = 0x6D756D696E696D20;
  v113._object = 0xEF203A20657A6953;
  v123._countAndFlagsBits = sub_1005738B8();
  sub_100572A98(v123);

  v124._countAndFlagsBits = 10;
  v124._object = 0xE100000000000000;
  sub_100572A98(v124);
  sub_100572A98(v113);

  if ((*(v0 + v6[14] + 16) & 1) == 0)
  {
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    sub_100573ED8(23);

    v113._countAndFlagsBits = 0xD000000000000014;
    v113._object = 0x80000001005B7FC0;
    v125._countAndFlagsBits = sub_1005738B8();
    sub_100572A98(v125);

    v126._countAndFlagsBits = 10;
    v126._object = 0xE100000000000000;
    sub_100572A98(v126);
    sub_100572A98(v113);
  }

  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  sub_100573ED8(20);

  v118._countAndFlagsBits = 0xD000000000000011;
  v118._object = 0x80000001005B7C20;
  v7 = v0 + v6[15];
  v8 = *(v7 + 16);
  v113 = *v7;
  v114 = v8;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  v127._countAndFlagsBits = sub_100572978();
  sub_100572A98(v127);

  v128._countAndFlagsBits = 10;
  v128._object = 0xE100000000000000;
  sub_100572A98(v128);
  sub_100572A98(v118);

  v9 = *(v0 + v6[19]);
  if (v9 == 2)
  {
    v129._countAndFlagsBits = 0xD00000000000001ALL;
    v129._object = 0x80000001005B7C40;
    sub_100572A98(v129);
  }

  else
  {
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    sub_100573ED8(19);

    v113._countAndFlagsBits = 0xD000000000000010;
    v113._object = 0x80000001005B7FA0;
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
    sub_100572A98(v10);

    v130._countAndFlagsBits = 10;
    v130._object = 0xE100000000000000;
    sub_100572A98(v130);
    sub_100572A98(v113);
  }

  v113._countAndFlagsBits = 0x3A206168706C6120;
  v113._object = 0xE900000000000020;
  v131._countAndFlagsBits = sub_100573058();
  sub_100572A98(v131);

  v132._countAndFlagsBits = 10;
  v132._object = 0xE100000000000000;
  sub_100572A98(v132);
  sub_100572A98(v113);

  v113._countAndFlagsBits = 0x203A20746E697420;
  v113._object = 0xE800000000000000;
  v118._countAndFlagsBits = *(v0 + v6[18]);
  v12 = v118._countAndFlagsBits;
  v111 = sub_100009DCC(&qword_1006EF698, &qword_100598E10);
  v133._countAndFlagsBits = sub_100572978();
  sub_100572A98(v133);

  v134._countAndFlagsBits = 10;
  v134._object = 0xE100000000000000;
  sub_100572A98(v134);
  sub_100572A98(v113);

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
    sub_100572A98(v135);
    v113._countAndFlagsBits = 0x656D616E20202020;
    v113._object = 0xEB00000000203A20;
    v136._countAndFlagsBits = v19;
    v136._object = v13;
    sub_100572A98(v136);

    v137._countAndFlagsBits = 10;
    v137._object = 0xE100000000000000;
    sub_100572A98(v137);
    sub_100572A98(v113);

    if (v14)
    {
      v20 = [v14 bundlePath];
      v21 = sub_1005728D8();
      v23 = v22;

      strcpy(&v113, "    bundle : ");
      HIWORD(v113._object) = -4864;
      v138._countAndFlagsBits = v21;
      v138._object = v23;
      sub_100572A98(v138);

      v139._countAndFlagsBits = 10;
      v139._object = 0xE100000000000000;
      sub_100572A98(v139);
      sub_100572A98(v113);
    }

    strcpy(&v113, "    style : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v118._countAndFlagsBits = v15;
    type metadata accessor for TextStyle(0);
    v24 = v15;
    v140._countAndFlagsBits = sub_100572978();
    sub_100572A98(v140);

    v141._countAndFlagsBits = 10;
    v141._object = 0xE100000000000000;
    sub_100572A98(v141);
    sub_100572A98(v113);

    if ((v16 & 1) == 0)
    {
      v113._countAndFlagsBits = 0xD000000000000014;
      v113._object = 0x80000001005B7F80;
      v142._countAndFlagsBits = sub_100573058();
      sub_100572A98(v142);

      v143._countAndFlagsBits = 10;
      v143._object = 0xE100000000000000;
      sub_100572A98(v143);
      sub_100572A98(v113);
    }

    strcpy(&v113, "    weight : ");
    HIWORD(v113._object) = -4864;
    v118._countAndFlagsBits = v17;
    type metadata accessor for SymbolWeight(0);
    v144._countAndFlagsBits = sub_100572978();
    sub_100572A98(v144);

    v145._countAndFlagsBits = 10;
    v145._object = 0xE100000000000000;
    sub_100572A98(v145);
    sub_100572A98(v113);

    strcpy(&v113, "    scale : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v118._countAndFlagsBits = v103;
    type metadata accessor for SymbolScale(0);
    v146._countAndFlagsBits = sub_100572978();
    sub_100572A98(v146);

    v147._countAndFlagsBits = 10;
    v147._object = 0xE100000000000000;
    sub_100572A98(v147);
    sub_100572A98(v113);

    if (v104 != 255)
    {
      strcpy(&v118, "    offset : ");
      HIWORD(v118._object) = -4864;
      v113 = v101;
      LOBYTE(v114) = v104 & 1;
      sub_100009DCC(&qword_1006EFAA8, &qword_100599728);
      v148._countAndFlagsBits = sub_100572978();
      sub_100572A98(v148);

      v149._countAndFlagsBits = 10;
      v149._object = 0xE100000000000000;
      sub_100572A98(v149);
      sub_100572A98(v118);
    }

    strcpy(&v113, "    alpha : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v150._countAndFlagsBits = sub_100573058();
    sub_100572A98(v150);

    v151._countAndFlagsBits = 10;
    v151._object = 0xE100000000000000;
    sub_100572A98(v151);
    sub_100572A98(v113);

    v113._countAndFlagsBits = 0x746E697420202020;
    v113._object = 0xEB00000000203A20;
    v118._countAndFlagsBits = v105;
    v25 = v105;
    v152._countAndFlagsBits = sub_100572978();
    sub_100572A98(v152);

    v153._countAndFlagsBits = 10;
    v153._object = 0xE100000000000000;
    sub_100572A98(v153);
    sub_100572A98(v113);

    if (v18)
    {
      v113._countAndFlagsBits = 0xD000000000000018;
      v113._object = 0x80000001005B7F60;

      v154._countAndFlagsBits = v102;
      v154._object = v18;
      sub_100572A98(v154);

      v155._countAndFlagsBits = 10;
      v155._object = 0xE100000000000000;
      sub_100572A98(v155);
      sub_100572A98(v113);
    }

    v156._countAndFlagsBits = 687392;
    v156._object = 0xE300000000000000;
    sub_100572A98(v156);
    v6 = v112;
  }

  else
  {
    v157._object = 0x80000001005B7C60;
    v157._countAndFlagsBits = 0x1000000000000012;
    sub_100572A98(v157);
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
    sub_100572A98(v158);
    v113._countAndFlagsBits = 0x7478657420202020;
    v113._object = 0xEB00000000203A20;
    v159._countAndFlagsBits = v32;
    v159._object = v26;
    sub_100572A98(v159);

    v160._countAndFlagsBits = 10;
    v160._object = 0xE100000000000000;
    sub_100572A98(v160);
    sub_100572A98(v113);

    strcpy(&v113, "    style : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v118._countAndFlagsBits = v31;
    type metadata accessor for TextStyle(0);
    v33 = v31;
    v161._countAndFlagsBits = sub_100572978();
    sub_100572A98(v161);

    v162._countAndFlagsBits = 10;
    v162._object = 0xE100000000000000;
    sub_100572A98(v162);
    sub_100572A98(v113);

    strcpy(&v113, "    weight : ");
    HIWORD(v113._object) = -4864;
    v118._countAndFlagsBits = v30;
    type metadata accessor for Weight(0);
    v163._countAndFlagsBits = sub_100572978();
    sub_100572A98(v163);

    v164._countAndFlagsBits = 10;
    v164._object = 0xE100000000000000;
    sub_100572A98(v164);
    sub_100572A98(v113);

    strcpy(&v113, "    alpha : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v165._countAndFlagsBits = sub_100573058();
    sub_100572A98(v165);

    v166._countAndFlagsBits = 10;
    v166._object = 0xE100000000000000;
    sub_100572A98(v166);
    sub_100572A98(v113);

    v113._countAndFlagsBits = 0x746E697420202020;
    v113._object = 0xEB00000000203A20;
    v118._countAndFlagsBits = v29;
    v34 = v29;
    v167._countAndFlagsBits = sub_100572978();
    sub_100572A98(v167);

    v168._countAndFlagsBits = 10;
    v168._object = 0xE100000000000000;
    sub_100572A98(v168);
    sub_100572A98(v113);

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
    sub_100572A98(v35);

    v169._countAndFlagsBits = 10;
    v169._object = 0xE100000000000000;
    sub_100572A98(v169);
    sub_100572A98(v113);

    if (v27)
    {
      v113._countAndFlagsBits = 0xD000000000000018;
      v113._object = 0x80000001005B7F60;

      v170._countAndFlagsBits = v105;
      v170._object = v27;
      sub_100572A98(v170);

      v171._countAndFlagsBits = 10;
      v171._object = 0xE100000000000000;
      sub_100572A98(v171);
      sub_100572A98(v113);
    }

    v172._countAndFlagsBits = 687392;
    v172._object = 0xE300000000000000;
    sub_100572A98(v172);
    v6 = v112;
  }

  else
  {
    v173._countAndFlagsBits = 0x1000000000000011;
    v173._object = 0x80000001005B7C80;
    sub_100572A98(v173);
  }

  v37 = *(v1 + 208);
  if (v37 == 1)
  {
    v174._countAndFlagsBits = 0x1000000000000016;
    v174._object = 0x80000001005B7CA0;
    sub_100572A98(v174);
  }

  else
  {
    v39 = *(v1 + 216);
    v38 = *(v1 + 224);

    v40 = v37;
    v175._object = 0x80000001005B7F40;
    v175._countAndFlagsBits = 0x1000000000000012;
    sub_100572A98(v175);
    strcpy(&v113, "    alpha : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v176._countAndFlagsBits = sub_100573058();
    sub_100572A98(v176);

    v177._countAndFlagsBits = 10;
    v177._object = 0xE100000000000000;
    sub_100572A98(v177);
    sub_100572A98(v113);

    v113._countAndFlagsBits = 0x746E697420202020;
    v113._object = 0xEB00000000203A20;
    v118._countAndFlagsBits = v37;
    v41 = v40;
    v178._countAndFlagsBits = sub_100572978();
    sub_100572A98(v178);

    v179._countAndFlagsBits = 10;
    v179._object = 0xE100000000000000;
    sub_100572A98(v179);
    sub_100572A98(v113);

    if (v38)
    {
      v113._countAndFlagsBits = 0xD000000000000018;
      v113._object = 0x80000001005B7F60;

      v180._countAndFlagsBits = v39;
      v180._object = v38;
      sub_100572A98(v180);

      v181._countAndFlagsBits = 10;
      v181._object = 0xE100000000000000;
      sub_100572A98(v181);
      sub_100572A98(v113);
    }

    v182._countAndFlagsBits = 687392;
    v182._object = 0xE300000000000000;
    sub_100572A98(v182);

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
    v183._countAndFlagsBits = sub_100572978();
    sub_100572A98(v183);

    v184._countAndFlagsBits = 10;
    v184._object = 0xE100000000000000;
    sub_100572A98(v184);
    sub_100572A98(v118);
  }

  else
  {
    v185._object = 0x80000001005B7CC0;
    v185._countAndFlagsBits = 0x1000000000000012;
    sub_100572A98(v185);
  }

  v46 = v108;
  sub_10037EB64(v1 + v6[9], v108);
  v48 = v109;
  v47 = v110;
  if ((v109[6])(v46, 1, v110) == 1)
  {
    sub_10037EBD4(v46);
    v186._object = 0x80000001005B7CE0;
    v186._countAndFlagsBits = 0x1000000000000012;
    sub_100572A98(v186);
  }

  else
  {
    v49 = v107;
    v48[4](v107, v46, v47);
    v113._countAndFlagsBits = 0x726F43209480E220;
    v113._object = 0xAE00203A2072656ELL;
    v48[2](v106, v49, v47);
    v187._countAndFlagsBits = sub_100572978();
    sub_100572A98(v187);

    v188._countAndFlagsBits = 10;
    v188._object = 0xE100000000000000;
    sub_100572A98(v188);
    sub_100572A98(v113);

    (v48[1])(v49, v47);
  }

  v50 = *(v1 + 232);
  if (v50 == 1)
  {
    v189._countAndFlagsBits = 0x1000000000000014;
    v189._object = 0x80000001005B7D00;
    sub_100572A98(v189);
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
    v190._object = 0x80000001005B7EC0;
    sub_100572A98(v190);
    if (v50)
    {
      v113._countAndFlagsBits = 0xD000000000000017;
      v113._object = 0x80000001005B7F20;
      v56 = v55;
      v57 = [v56 description];
      v58 = sub_1005728D8();
      v60 = v59;

      v191._countAndFlagsBits = v58;
      v191._object = v60;
      sub_100572A98(v191);

      v192._countAndFlagsBits = 10;
      v192._object = 0xE100000000000000;
      sub_100572A98(v192);
      sub_100572A98(v113);

      v6 = v112;
    }

    if (v52)
    {
      v113._countAndFlagsBits = 0xD000000000000017;
      v113._object = 0x80000001005B7F00;
      v61 = v110;
      v62 = [v61 description];
      v63 = sub_1005728D8();
      v65 = v64;

      v193._countAndFlagsBits = v63;
      v193._object = v65;
      sub_100572A98(v193);

      v194._countAndFlagsBits = 10;
      v194._object = 0xE100000000000000;
      sub_100572A98(v194);
      sub_100572A98(v113);

      v6 = v112;
    }

    v66 = v109;
    if (v51)
    {
      v113._countAndFlagsBits = 0xD000000000000014;
      v113._object = 0x80000001005B7EE0;
      v67 = v109;
      v68 = [v67 description];
      v69 = sub_1005728D8();
      v71 = v70;

      v195._countAndFlagsBits = v69;
      v195._object = v71;
      sub_100572A98(v195);

      v196._countAndFlagsBits = 10;
      v196._object = 0xE100000000000000;
      sub_100572A98(v196);
      sub_100572A98(v113);

      v6 = v112;
    }

    if (v108 != 2)
    {
      strcpy(&v113, "    color : ");
      BYTE5(v113._object) = 0;
      HIWORD(v113._object) = -5120;
      LOBYTE(v118._countAndFlagsBits) = v108 & 1;
      v197._countAndFlagsBits = sub_100572978();
      sub_100572A98(v197);

      v198._countAndFlagsBits = 10;
      v198._object = 0xE100000000000000;
      sub_100572A98(v198);
      sub_100572A98(v113);
    }

    if (v53)
    {
      strcpy(&v113, "    group : ");
      BYTE5(v113._object) = 0;
      HIWORD(v113._object) = -5120;

      v199._countAndFlagsBits = v107;
      v199._object = v53;
      sub_100572A98(v199);

      v200._countAndFlagsBits = 10;
      v200._object = 0xE100000000000000;
      sub_100572A98(v200);
      sub_100572A98(v113);
    }

    v201._countAndFlagsBits = 687392;
    v201._object = 0xE300000000000000;
    sub_100572A98(v201);
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
    v118._object = 0x80000001005B7EA0;
    v113._countAndFlagsBits = v73;
    v113._object = v78;
    *&v114 = v79;
    *(&v114 + 1) = v77;
    v115 = v76;
    v116 = v75;
    v117 = v74;
    sub_10037EC4C(v73, v78, v79, v77, v76, v75, v74);
    v80 = v74;
    v81 = v73;
    v202._countAndFlagsBits = sub_100572978();
    sub_100572A98(v202);

    v203._countAndFlagsBits = 10;
    v203._object = 0xE100000000000000;
    sub_100572A98(v203);
    sub_100572A98(v118);

    v82 = v77;
    v6 = v112;
    sub_100374644(v73, v78, v79, v82, v76, v75, v74);
  }

  else
  {
    v204._countAndFlagsBits = 0x1000000000000017;
    v204._object = 0x80000001005B7D20;
    sub_100572A98(v204);
  }

  v83 = (v1 + v6[11]);
  v84 = v83[2];
  if (v84 == 1)
  {
    v205._countAndFlagsBits = 0x1000000000000011;
    v205._object = 0x80000001005B7D40;
    sub_100572A98(v205);
  }

  else
  {
    v86 = *v83;
    v85 = v83[1];
    v87 = v84;
    v206._countAndFlagsBits = 0x646142209480E220;
    v206._object = 0xAD00000A7B206567;
    sub_100572A98(v206);
    v113._countAndFlagsBits = 0xD000000000000014;
    v113._object = 0x80000001005B7E80;
    v207._countAndFlagsBits = sub_100573058();
    sub_100572A98(v207);

    v208._countAndFlagsBits = 10;
    v208._object = 0xE100000000000000;
    sub_100572A98(v208);
    sub_100572A98(v113);

    strcpy(&v113, "    alpha : ");
    BYTE5(v113._object) = 0;
    HIWORD(v113._object) = -5120;
    v209._countAndFlagsBits = sub_100573058();
    sub_100572A98(v209);

    v210._countAndFlagsBits = 10;
    v210._object = 0xE100000000000000;
    sub_100572A98(v210);
    sub_100572A98(v113);

    v113._countAndFlagsBits = 0x746E697420202020;
    v113._object = 0xEB00000000203A20;
    v118._countAndFlagsBits = v84;
    v88 = v87;
    v211._countAndFlagsBits = sub_100572978();
    sub_100572A98(v211);

    v212._countAndFlagsBits = 10;
    v212._object = 0xE100000000000000;
    sub_100572A98(v212);
    sub_100572A98(v113);

    v213._countAndFlagsBits = 687392;
    v213._object = 0xE300000000000000;
    sub_100572A98(v213);
    sub_10037EC3C(v86, v85, v84);
  }

  v89 = (v1 + v6[16]);
  v90 = *v89;
  v91 = *(v89 + 1);
  v92 = *(v89 + 2);
  v93 = v89[24];
  v214._countAndFlagsBits = 0x1000000000000015;
  v214._object = 0x80000001005B7D60;
  sub_100572A98(v214);
  v113._countAndFlagsBits = 0xD00000000000001BLL;
  v113._object = 0x80000001005B7D80;
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
  sub_100572A98(v94);

  v215._countAndFlagsBits = 10;
  v215._object = 0xE100000000000000;
  sub_100572A98(v215);
  sub_100572A98(v113);

  if (v91)
  {
    v113._countAndFlagsBits = 0xD000000000000021;
    v113._object = 0x80000001005B7E50;
    v118._countAndFlagsBits = v91;
    type metadata accessor for UIContentSizeCategory(0);
    v96 = v91;
    v216._countAndFlagsBits = sub_100572978();
    sub_100572A98(v216);

    v217._countAndFlagsBits = 10;
    v217._object = 0xE100000000000000;
    sub_100572A98(v217);
    sub_100572A98(v113);

    if (v92)
    {
LABEL_72:
      v113._countAndFlagsBits = 0xD000000000000021;
      v113._object = 0x80000001005B7E20;
      v118._countAndFlagsBits = v92;
      type metadata accessor for UIContentSizeCategory(0);
      v97 = v92;
      v218._countAndFlagsBits = sub_100572978();
      sub_100572A98(v218);

      v219._countAndFlagsBits = 10;
      v219._object = 0xE100000000000000;
      sub_100572A98(v219);
      sub_100572A98(v113);

      goto LABEL_75;
    }
  }

  else
  {
    v220._countAndFlagsBits = 0xD00000000000002DLL;
    v220._object = 0x80000001005B7DA0;
    sub_100572A98(v220);
    if (v92)
    {
      goto LABEL_72;
    }
  }

  v221._countAndFlagsBits = 0xD00000000000002DLL;
  v221._object = 0x80000001005B7DD0;
  sub_100572A98(v221);
LABEL_75:
  v113._countAndFlagsBits = 0xD00000000000001ELL;
  v113._object = 0x80000001005B7E00;
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
  sub_100572A98(v98);

  v222._countAndFlagsBits = 10;
  v222._object = 0xE100000000000000;
  sub_100572A98(v222);
  sub_100572A98(v113);

  v223._countAndFlagsBits = 687392;
  v223._object = 0xE300000000000000;
  sub_100572A98(v223);
  v224._countAndFlagsBits = 41;
  v224._object = 0xE100000000000000;
  sub_100572A98(v224);
  return v119;
}

uint64_t sub_10037EB64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037EBD4(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F5C30, &qword_100598A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10037EC3C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
  }
}

id sub_10037EC4C(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (result)
  {
    v8 = result;
    v7 = a7;

    return v8;
  }

  return result;
}

id sub_10037ECB8(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_10037F988();
    v5 = 1.0;
    v6 = 250;
    if (v4 == 1)
    {
      v7 = 88;
      v8 = 106;
    }

    else
    {
      v7 = 45;
      v8 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_10037F988();
      v5 = 1.0;
      v6 = 204;
      v7 = 0;
      v8 = 20;
    }

    else
    {
      sub_10037F988();
      v5 = 1.0;
      v6 = 250;
      v7 = 35;
      v8 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = sub_1005740F8();
  __break(1u);
  return result;
}

uint64_t *UIColor.MusicTint.normal.unsafeMutableAddressor()
{
  if (qword_1006EE9F0 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.normal;
}

id sub_10037EE7C(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_10037F988();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_10037F988();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_10037F988();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = sub_1005740F8();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.rollover.unsafeMutableAddressor()
{
  if (qword_1006EE9F8 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.rollover;
}

id sub_10037F040(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_10037F988();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 113;
      v8 = 131;
    }

    else
    {
      v7 = 70;
      v8 = 97;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_10037F988();
      v5 = 1.0;
      v6 = 187;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_10037F988();
      v5 = 1.0;
      v6 = 224;
      v7 = 9;
      v8 = 33;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = sub_1005740F8();
  __break(1u);
  return result;
}

uint64_t *UIColor.MusicTint.pressed.unsafeMutableAddressor()
{
  if (qword_1006EEA00 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.pressed;
}

id sub_10037F204(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_10037F988();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_10037F988();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_10037F988();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = sub_1005740F8();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (qword_1006EEA08 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.deepPressed;
}

id sub_10037F3C8(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_10037F988();
    v5 = 250;
    if (v4 == 1)
    {
      v6 = 88;
      v7 = 106;
    }

    else
    {
      v6 = 45;
      v7 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_10037F988();
      v5 = 214;
      v6 = 0;
      v7 = 23;
    }

    else
    {
      sub_10037F988();
      v5 = 250;
      v6 = 35;
      v7 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  result = sub_1005740F8();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.disabled.unsafeMutableAddressor()
{
  if (qword_1006EEA10 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.disabled;
}

uint64_t *Color.MusicTint.normal.unsafeMutableAddressor()
{
  if (qword_1006EEA18 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.normal;
}

uint64_t *Color.MusicTint.rollover.unsafeMutableAddressor()
{
  if (qword_1006EEA20 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.rollover;
}

uint64_t *Color.MusicTint.pressed.unsafeMutableAddressor()
{
  if (qword_1006EEA28 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.pressed;
}

uint64_t *Color.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (qword_1006EEA30 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.deepPressed;
}

uint64_t sub_10037F828(uint64_t a1, void *a2, id *a3, uint64_t *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  v6 = *a3;
  result = sub_100570528();
  *a4 = result;
  return result;
}

uint64_t *Color.MusicTint.disabled.unsafeMutableAddressor()
{
  if (qword_1006EEA38 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.disabled;
}

uint64_t sub_10037F8F0(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_10037F970(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10037F988()
{
  result = qword_1006F2E60;
  if (!qword_1006F2E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F2E60);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaLibrary:)(MPMediaLibrary_optional mediaLibrary)
{
  isa = mediaLibrary.value.super.isa;
  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10057B4F0;
  v3 = objc_opt_self();
  v4 = isa;
  v5 = sub_100572898();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_1000D3B98(0, &unk_1006F5FE0, UITraitCollection_ptr);
    v9 = sub_100572D08().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v9];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id UITraitCollection.mediaLibrary.getter()
{
  v1 = sub_100572898();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1000D3B98(0, &qword_1006EFAB0, MPMediaLibrary_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100374094(v7);
  }

  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(legacyLibraryFilter:)(__C::MPMediaLibraryFilteringOptions legacyLibraryFilter)
{
  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10057B4F0;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:legacyLibraryFilter.rawValue];
  v5 = sub_100572898();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_1000D3B98(0, &unk_1006F5FE0, UITraitCollection_ptr);
    isa = sub_100572D08().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.legacyLibraryFilter.getter()
{
  v1 = sub_100572898();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1000D3B98(0, &qword_1006F1F20, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    sub_100374094(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

BOOL UITraitCollection.isMediaPicker.getter()
{
  v0 = UITraitCollection.mediaPickerConfiguration.getter();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t UITraitCollection.mediaPickerConfiguration.getter()
{
  v1 = sub_100572898();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1000D3B98(0, &qword_1006EFAB8, MPMediaPickerConfiguration_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100374094(v7);
    return 0;
  }
}

id UITraitCollection.init(mediaPickerConfiguration:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = sub_100572898();
  v5 = [v2 _traitCollectionWithValue:v3 forTraitNamed:v4];

  if (v5)
  {
    v6.rawValue = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    if (![v3 showsItemsWithProtectedAssets])
    {
      v6.rawValue |= 0x20;
    }

    if (![v3 showsCloudItems])
    {
      v6.rawValue |= 2;
    }

    sub_1000D3B98(0, &unk_1006F5FE0, UITraitCollection_ptr);
    isa = UITraitCollection.init(mediaPickerLibraryFilter:)(v6).super.isa;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_100009DCC(&qword_1006F3B50, &qword_100599780);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100582500;
    *(v9 + 32) = v5;
    *(v9 + 40) = isa;
    v10 = v5;
    v11 = isa;
    v12 = sub_100572D08().super.isa;

    v13 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v12];

    return v13;
  }

  else
  {
    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaPickerLibraryFilter:)(__C::MPMediaLibraryFilteringOptions mediaPickerLibraryFilter)
{
  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10057B4F0;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:mediaPickerLibraryFilter.rawValue];
  v5 = sub_100572898();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_1000D3B98(0, &unk_1006F5FE0, UITraitCollection_ptr);
    isa = sub_100572D08().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.mediaPickerLibraryFilter.getter()
{
  v1 = sub_100572898();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1000D3B98(0, &qword_1006F1F20, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    sub_100374094(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

uint64_t UITraitCollection.configure<A, B>(libraryRequest:)(void *a1)
{
  v2 = [a1 mediaLibrary];
  v3 = UITraitCollection.mediaLibrary.getter();
  v4 = v3;
  if (v2)
  {
    sub_1000D3B98(0, &qword_1006EFAB0, MPMediaLibrary_ptr);
    v5 = sub_100573A58();

    if (v5)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = UITraitCollection.mediaLibrary.getter();
  [a1 setMediaLibrary:v7];

  v6 = 1;
LABEL_6:
  v8 = [a1 filteringOptions];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  if (((UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | rawValue) & ~v8) != 0)
  {
    v10 = UITraitCollection.legacyLibraryFilter.getter().rawValue;
    [a1 setFilteringOptions:{UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | v10 | objc_msgSend(a1, "filteringOptions")}];
    return 1;
  }

  return v6;
}

Class static UIMenu.lazy(title:image:options:cached:childrenProvider:)(uint64_t a1, void *a2, void *a3, NSString *a4, char a5, uint64_t a6, uint64_t a7)
{
  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057B4F0;
  if (a5)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a6;
    *(v15 + 24) = a7;
    v31 = sub_10038094C;
    v32 = v15;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100380824;
    v30 = &unk_10069EDF0;
    v16 = _Block_copy(&aBlock);
    v17 = objc_opt_self();

    v18 = [v17 elementWithProvider:v16];
    _Block_release(v16);
  }

  else
  {
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;
    v31 = sub_1003869F0;
    v32 = v20;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100380824;
    v30 = &unk_10069EDA0;
    v21 = _Block_copy(&aBlock);

    v18 = [v19 elementWithUncachedProvider:v21];
    _Block_release(v21);
  }

  *(v14 + 32) = v18;
  if (a2)
  {
    v22 = a2;
  }

  else
  {
    a1 = 0;
    v22 = 0xE000000000000000;
  }

  sub_1000D3B98(0, &qword_1006EFAC8, UIMenu_ptr);
  v23 = a3;

  v34._countAndFlagsBits = a1;
  v34._object = v22;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v33.value.super.isa = a3;
  v33.is_nil = 0;
  v24.value = a4;
  return sub_100573908(v34, v35, v33, v24, 0xFFFFFFFFFFFFFFFFLL, v14, v26).super.super.isa;
}

uint64_t sub_1003807EC()
{

  return swift_deallocObject();
}

double sub_100380824(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100386928, v4);

  return result;
}

uint64_t sub_1003808B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1003808D0(uint64_t a1, uint64_t a2)
{
  sub_1000D3B98(0, &qword_1006F6150, UIMenuElement_ptr);
  isa = sub_100572D08().super.isa;
  (*(a2 + 16))(a2, isa);
}

UIMenu __swiftcall UIMenu.init(representativeOf:title:image:options:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIMenuOptions options)
{
  v4 = *&image.is_nil;
  isa = image.value.super.isa;
  if (title.value._object)
  {
    countAndFlagsBits = title.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (title.value._object)
  {
    object = title.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057B4F0;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2]._rawValue = representativeOf._rawValue;
  v11[3]._rawValue = v4;
  aBlock[4] = sub_100380C08;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100380824;
  aBlock[3] = &unk_10069EE40;
  v12 = _Block_copy(aBlock);

  v13 = [v10 elementWithUncachedProvider:v12];
  _Block_release(v12);
  *(v9 + 32) = v13;
  v19._countAndFlagsBits = countAndFlagsBits;
  v19._object = object;
  v20.value._countAndFlagsBits = 0;
  v20.value._object = 0;
  v18.value.super.isa = isa;
  v18.is_nil = 0;
  v14.value = v4;
  return sub_100573908(v19, v20, v18, v14, 0xFFFFFFFFFFFFFFFFLL, v9, v16);
}

double sub_100380AC0(void (*a1)(void *), uint64_t a2, unint64_t a3, NSString *a4)
{
  v16 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
  {
    v7 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = sub_100573F58();
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v15 = v8;
      sub_100380C10(&v16, &v15, &v14, a4);

      v11 = v14;
      v16 = v14;
      ++v7;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_15:
  a1(v11);

  return result;
}

void sub_100380C10(uint64_t *a1@<X0>, id *a2@<X1>, void *a3@<X8>, NSString *a4@<X2>)
{
  v6 = *a1;
  v7 = *a2;
  if ([*a2 isHidden])
  {
    *a3 = v6;

    return;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = (v8 + 16);

  v10 = [v7 menuRepresentation];
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    v13 = v11;
    if (v12)
    {
      sub_100381128(v12, a4, v8, v7);
    }

    else
    {
      sub_100572CE8();
      if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100572D68();
      }

      sub_100572DB8();
    }

    goto LABEL_26;
  }

  v14 = [v7 menu];
  if (!v14)
  {
    v16 = [v7 primaryAction];
    if (v16 && (v17 = v16, [v16 copy], v17, sub_100573D58(), swift_unknownObjectRelease(), sub_1000D3B98(0, &qword_1006EFB60, UIAction_ptr), (swift_dynamicCast() & 1) != 0))
    {
      v18 = v35;
    }

    else
    {
      v19 = v7;
      v20 = [v19 target];
      v21 = [v19 action];
      if (!v20)
      {

        goto LABEL_26;
      }

      v22 = v21;
      if (!v21)
      {

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      sub_1000D3B98(0, &qword_1006EFB60, UIAction_ptr);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v22;

      v25 = sub_100573A88();

      swift_unknownObjectRelease();
      v18 = v25;
      v26 = [v19 title];
      if (v26)
      {
        v27 = v26;
        sub_1005728D8();
      }

      v28 = sub_100572898();

      [v18 setTitle:v28];

      v29 = [v19 image];
      [v18 setImage:v29];
    }

    v30 = [v7 title];
    if (v30)
    {
      v31 = v30;
      sub_1005728D8();
    }

    v32 = sub_100572898();

    [v18 setTitle:v32];

    v33 = [v7 image];
    [v18 setImage:v33];

    v34 = v18;
    sub_100572CE8();
    if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100572D68();
    }

    sub_100572DB8();

    goto LABEL_26;
  }

  v15 = v14;
  sub_100381128(v14, a4, v8, v7);

LABEL_26:
  swift_beginAccess();
  *a3 = *(v8 + 16);
}

uint64_t sub_100381128(id a1, NSString *a2, uint64_t a3, void *a4)
{
  if ((a2 & 1) == 0)
  {
    v8 = [a1 title];
    v9 = sub_1005728D8();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      goto LABEL_7;
    }

    v13 = [a1 image];
    if (v13)
    {

LABEL_7:
      swift_beginAccess();
      v14 = a1;
      goto LABEL_17;
    }
  }

  v15 = [a1 title];
  v16 = sub_1005728D8();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    v20 = [a4 title];
    if (v20)
    {
      v21 = v20;
      v16 = sub_1005728D8();
      v18 = v22;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }
  }

  v23 = [a1 image];
  if (!v23)
  {
    v23 = [a4 image];
  }

  sub_1000D3B98(0, &qword_1006EFAC8, UIMenu_ptr);
  v24 = [a1 children];
  sub_1000D3B98(0, &qword_1006F6150, UIMenuElement_ptr);
  v25 = sub_100572D28();

  v30._countAndFlagsBits = v16;
  v30._object = v18;
  v31.value._countAndFlagsBits = 0;
  v31.value._object = 0;
  v29.value.super.isa = v23;
  v29.is_nil = 0;
  v26.value = a2;
  sub_100573908(v30, v31, v29, v26, 0xFFFFFFFFFFFFFFFFLL, v25, v28);
  swift_beginAccess();
LABEL_17:
  sub_100572CE8();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  return swift_endAccess();
}

UIAction_optional __swiftcall UIAction.init(barButtonItem:)(UIBarButtonItem barButtonItem)
{
  v2 = [(objc_class *)barButtonItem.super.super.isa target];
  v3 = [(objc_class *)barButtonItem.super.super.isa action];
  if (!v2)
  {

LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = v3;
  if (!v3)
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  v7 = sub_100573A88();

  swift_unknownObjectRelease();
  v8 = v7;
  v9 = [(objc_class *)barButtonItem.super.super.isa title:0];
  if (v9)
  {
    v10 = v9;
    sub_1005728D8();
  }

  v12 = sub_100572898();

  [v8 setTitle:v12];

  v13 = [(objc_class *)barButtonItem.super.super.isa image];
  [v8 setImage:v13];

LABEL_9:
  v14 = v8;
  result.value.super.super.isa = v14;
  result.is_nil = v11;
  return result;
}

void *UINavigationItem.effectiveTrailingBarButtonItems.getter()
{
  v0 = UINavigationItem.allTrailingBarButtonItems.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100573F58();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 isHidden])
      {
      }

      else
      {
        sub_100573FC8();
        sub_100574008();
        sub_100574018();
        sub_100573FD8();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

unint64_t UINavigationItem.allTrailingBarButtonItems.getter()
{
  v1 = [v0 trailingItemGroups];
  sub_1000D3B98(0, &qword_1006EFAD0, UIBarButtonItemGroup_ptr);
  v2 = sub_100572D28();

  v44 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
  {
    v4 = 0;
    v38 = v2 & 0xFFFFFFFFFFFFFF8;
    v39 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v37 = v2 + 32;
    v2 = &qword_100599788;
    v35 = i;
    while (1)
    {
      if (v39)
      {
        v6 = sub_100573F58();
      }

      else
      {
        if (v4 >= *(v38 + 16))
        {
          goto LABEL_45;
        }

        v6 = *(v37 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      v9 = [v6 representativeItem];
      if (v9)
      {
        v10 = v9;
        sub_100572CE8();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100572D68();
        }

        sub_100572DB8();

        v5 = v44;
      }

      v11 = [v7 barButtonItems];
      sub_1000D3B98(0, &qword_1006EFAD8, UIBarButtonItem_ptr);
      v12 = sub_100572D28();

      v13 = v12 >> 62;
      if (v12 >> 62)
      {
        v14 = sub_100574178();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v5 >> 62;
      if (v5 >> 62)
      {
        v16 = sub_100574178();
      }

      else
      {
        v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v14;
      v8 = __OFADD__(v16, v14);
      v17 = v16 + v14;
      if (v8)
      {
        goto LABEL_46;
      }

      v40 = v7;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_25:
        sub_100574178();
        goto LABEL_26;
      }

      if (v15)
      {
        goto LABEL_25;
      }

      v18 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = v5;
        goto LABEL_27;
      }

LABEL_26:
      v41 = sub_100573F68();
      v18 = v41 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v13)
      {
        v21 = sub_100574178();
        if (v21)
        {
LABEL_31:
          if (((v20 >> 1) - v19) < v42)
          {
            goto LABEL_48;
          }

          v22 = v18 + 8 * v19 + 32;
          v36 = v18;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_50;
            }

            sub_1003858CC();
            for (j = 0; j != v21; ++j)
            {
              sub_100009DCC(&qword_1006EFAE0, &qword_100599788);
              v25 = sub_100304324(v43, j, v12);
              v27 = *v26;
              (v25)(v43, 0);
              *(v22 + 8 * j) = v27;
            }

            i = v35;
            v23 = v42;
          }

          else
          {
            v23 = v42;
            swift_arrayInitWithCopy();
          }

          v5 = v41;
          if (v23 > 0)
          {
            v28 = *(v36 + 16);
            v8 = __OFADD__(v28, v23);
            v29 = v28 + v23;
            if (v8)
            {
              goto LABEL_49;
            }

            *(v36 + 16) = v29;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_31;
        }
      }

      v5 = v41;
      if (v42 > 0)
      {
        goto LABEL_47;
      }

LABEL_5:
      v44 = v5;
      if (v4 == i)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_53:

  v43[0] = v5;
  v30 = [v34 rightBarButtonItems];
  if (v30)
  {
    v31 = v30;
    sub_1000D3B98(0, &qword_1006EFAD8, UIBarButtonItem_ptr);
    v32 = sub_100572D28();

    sub_100381CD4(v32);
    return v43[0];
  }

  return v5;
}

void sub_100381B9C(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_100474694(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  sub_100009DCC(&qword_1006EF140, &qword_100598890);
  if (v8 < v2)
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
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100381CD4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100574178();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_100574178();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001E8AA8(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10038573C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_100381DC4(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_100474ABC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  sub_100571FD8();
  if (v8 < v2)
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
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t static UIBarButtonItem.PrimaryActionKind.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  sub_1000D3B98(0, &unk_1006F6120, NSObject_ptr);
  return sub_100573A58() & 1;
}

uint64_t sub_100381F58(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  sub_1000D3B98(0, &unk_1006F6120, NSObject_ptr);
  return sub_100573A58() & 1;
}

Class UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a5;
  if (a6)
  {
    v50 = a3;
    v13 = v10;

    v48 = a1;
    v14 = sub_1005734A8();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    sub_100009DCC(&qword_1006F3B50, &qword_100599780);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10057B4F0;
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1003869D0;
    *(v18 + 24) = v15;
    aBlock[4] = sub_1003869F0;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100380824;
    aBlock[3] = &unk_10069EF08;
    v19 = v10;
    v20 = _Block_copy(aBlock);
    v46 = v13;
    v21 = v14;

    v22 = [v17 elementWithUncachedProvider:v20];
    _Block_release(v20);
    *(v16 + 32) = v22;
    if (a2)
    {
      v23 = v48;
    }

    else
    {
      v23 = 0;
    }

    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    sub_1000D3B98(0, &qword_1006EFAC8, UIMenu_ptr);
    v25 = v50;
    v59._countAndFlagsBits = v23;
    v59._object = v24;
    v61.value._countAndFlagsBits = 0;
    v61.value._object = 0;
    v56.value.super.isa = a3;
    v56.is_nil = 0;
    v26.value = 0;
    isa = sub_100573908(v59, v61, v56, v26, 0xFFFFFFFFFFFFFFFFLL, v16, v46).super.super.isa;

    [(objc_class *)v21 setMenuRepresentation:isa];
  }

  else
  {
    v29 = a5;
    v30 = [v29 title];
    v31 = sub_1005728D8();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v34)
    {
      v35 = v10;

      v36 = sub_100572898();

      [v29 setTitle:v36];

      v10 = v35;
    }

    v37 = [v29 image];
    if (v37)
    {
    }

    else
    {
      [v29 setImage:a3];
    }

    v38 = v29;
    v60.value._countAndFlagsBits = 0;
    v60.value._object = 0;
    v55.value.super.isa = 0;
    v39 = v10;
    v55.is_nil = v10;
    v57.value.super.super.isa = 0;
    v21 = sub_100573498(v60, v55, v57, v58).super.super.isa;
    v40 = v21;
    if (!a2)
    {
      v41 = [v38 title];
      sub_1005728D8();
    }

    v42 = sub_100572898();

    [(objc_class *)v21 setTitle:v42];

    v43 = a3;
    if (!a3)
    {
      v43 = [v38 image];
    }

    v25 = a3;
    [(objc_class *)v21 setImage:v43];

    [(objc_class *)v21 setMenuRepresentation:v38];
    v19 = v39;
  }

  [(objc_class *)v21 setStyle:a4];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(a7, a8, v44, a9, a10);

  return v21;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:title:image:style:menuTitle:accessibilityIdentifier:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIBarButtonItemStyle style, Swift::String_optional menuTitle, MusicCore::AccessibilityIdentifier_optional *accessibilityIdentifier)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v42 = *&image.is_nil;
  isa = image.value.super.isa;
  v40 = title.value._countAndFlagsBits;
  if (menuTitle.value._countAndFlagsBits)
  {
    goto LABEL_4;
  }

  if (title.value._object)
  {
    v9 = title.value._countAndFlagsBits;
    v10 = title.value._object;

    title.value._object = v10;
    style = v9;
    countAndFlagsBits = v10;
LABEL_4:
    v11 = title.value._object;
    goto LABEL_5;
  }

  v11 = 0;
  style = UIBarButtonItemStylePlain;
  countAndFlagsBits = 0xE000000000000000;
LABEL_5:
  sub_1000D3B98(0, &qword_1006EFAC8, UIMenu_ptr);
  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10057B4F0;
  v39 = objc_opt_self();
  v13 = swift_allocObject();
  v13[2]._rawValue = representativeOf._rawValue;
  v13[3]._rawValue = 1;
  v48 = sub_100386958;
  v49 = v13;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100380824;
  v47 = &unk_10069EF58;
  v14 = _Block_copy(&aBlock);

  v15 = [v39 elementWithUncachedProvider:v14];
  _Block_release(v14);
  *(v12 + 32) = v15;
  v54._countAndFlagsBits = style;
  v54._object = countAndFlagsBits;
  v56.value._countAndFlagsBits = 0;
  v56.value._object = 0;
  v52.value.super.isa = 0;
  v52.is_nil = 0;
  v16.value = 1;
  v17 = sub_100573908(v54, v56, v52, v16, 0xFFFFFFFFFFFFFFFFLL, v12, v36).super.super.isa;
  v38 = isa;
  v18 = v17;
  v19 = v11;

  v20 = v18;
  v21 = sub_1005734A8();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10057B4F0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1003869D0;
  *(v24 + 24) = v22;
  v48 = sub_1003869F0;
  v49 = v24;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100380824;
  v47 = &unk_10069EFD0;
  v25 = _Block_copy(&aBlock);
  v26 = v20;
  v27 = v21;

  v28 = [v39 elementWithUncachedProvider:v25];
  _Block_release(v25);
  *(v23 + 32) = v28;
  if (v19)
  {
    v29 = v40;
  }

  else
  {
    v29 = 0;
  }

  if (v19)
  {
    v30 = v19;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = v38;
  v55._countAndFlagsBits = v29;
  v55._object = v30;
  v57.value._countAndFlagsBits = 0;
  v57.value._object = 0;
  v53.value.super.isa = isa;
  v53.is_nil = 0;
  v32.value = 0;
  v33 = sub_100573908(v55, v57, v53, v32, 0xFFFFFFFFFFFFFFFFLL, v23, v37.super.super.isa).super.super.isa;

  [v27 setMenuRepresentation:v33];

  [v27 setStyle:v42];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(object, accessibilityIdentifier, v34, v50, v51);

  return v27;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(Swift::OpaquePointer representativeOf, UIBarButtonItem configuredAfter, Swift::String_optional menuTitle)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v6 = configuredAfter.super.super.isa;
  v7 = [(objc_class *)v6 title];
  if (v7)
  {
    v8 = v7;
    v40 = sub_1005728D8();
    v10 = v9;
  }

  else
  {
    v40 = 0;
    v10 = 0;
  }

  v37 = [(objc_class *)v6 image];

  v38 = [(objc_class *)v6 style];
  v39 = v6;
  if (!object)
  {
    if (v10)
    {

      countAndFlagsBits = v40;
      object = v10;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }
  }

  sub_1000D3B98(0, &qword_1006EFAC8, UIMenu_ptr);
  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057B4F0;
  v36 = objc_opt_self();
  v12 = swift_allocObject();
  v12[2]._rawValue = representativeOf._rawValue;
  v12[3]._rawValue = 1;
  v45 = sub_100386958;
  v46 = v12;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100380824;
  v44 = &unk_10069F020;
  v13 = _Block_copy(&aBlock);

  v14 = [v36 elementWithUncachedProvider:v13];
  _Block_release(v13);
  *(v11 + 32) = v14;
  v49._countAndFlagsBits = countAndFlagsBits;
  v49._object = object;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v47.value.super.isa = 0;
  v47.is_nil = 0;
  v15.value = 1;
  isa = sub_100573908(v49, v51, v47, v15, 0xFFFFFFFFFFFFFFFFLL, v11, v33).super.super.isa;

  v17 = isa;
  v35 = v37;
  v18 = v17;
  v19 = sub_1005734A8();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10057B4F0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1003869D0;
  *(v22 + 24) = v20;
  v45 = sub_1003869F0;
  v46 = v22;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100380824;
  v44 = &unk_10069F098;
  v23 = _Block_copy(&aBlock);
  v24 = v18;
  v25 = v19;

  v26 = [v36 elementWithUncachedProvider:v23];
  _Block_release(v23);
  *(v21 + 32) = v26;
  if (v10)
  {
    v27 = v40;
  }

  else
  {
    v27 = 0;
  }

  if (!v10)
  {
    v10 = 0xE000000000000000;
  }

  v28 = v35;
  v50._countAndFlagsBits = v27;
  v50._object = v10;
  v52.value._countAndFlagsBits = 0;
  v52.value._object = 0;
  v48.value.super.isa = v37;
  v48.is_nil = 0;
  v29.value = 0;
  v30 = sub_100573908(v50, v52, v48, v29, 0xFFFFFFFFFFFFFFFFLL, v21, v34.super.super.isa).super.super.isa;

  [v25 setMenuRepresentation:v30];

  [v25 setStyle:v38];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(0, 0, v31, 0, 0);

  return v25;
}

id UIBarButtonItem.primaryActionKind.getter()
{
  result = [v0 primaryAction];
  if (!result)
  {
    return [v0 menu];
  }

  return result;
}

void UIBarButtonItem.primaryActionKind.setter(void *a1, char a2)
{
  v3 = v2;
  v6 = [v2 primaryAction];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v6 = [v2 menu];
    v9 = v6 == 0;
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  if (a2 != -1)
  {
    v73 = v8;
    v72 = v6;
    if (a2)
    {
      v10 = a1;
      [v3 setMenu:v10];
      v11 = [v3 customView];
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          [v13 setMenu:v10];
          sub_10036A028(a1, a2);

LABEL_42:
          [v3 setPrimaryAction:0];
          v42 = [v3 title];
          if (v42)
          {
            v43 = v42;
            v71 = sub_1005728D8();
            v45 = v44;
          }

          else
          {
            v71 = 0;
            v45 = 0;
          }

          v46 = [v3 image];
          v47 = swift_allocObject();
          *(v47 + 16) = v10;
          sub_100009DCC(&qword_1006F3B50, &qword_100599780);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_10057B4F0;
          v49 = objc_opt_self();
          v50 = swift_allocObject();
          *(v50 + 16) = sub_100385930;
          *(v50 + 24) = v47;
          aBlock[4] = sub_1003869F0;
          aBlock[5] = v50;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100380824;
          aBlock[3] = &unk_10069F110;
          v51 = _Block_copy(aBlock);
          sub_10036A2E0(a1, a2);

          v52 = [v49 elementWithUncachedProvider:v51];
          _Block_release(v51);
          *(v48 + 32) = v52;
          if (v45)
          {
            v53 = v71;
          }

          else
          {
            v53 = 0;
          }

          if (v45)
          {
            v54 = v45;
          }

          else
          {
            v54 = 0xE000000000000000;
          }

          sub_1000D3B98(0, &qword_1006EFAC8, UIMenu_ptr);
          v78._countAndFlagsBits = v53;
          v78._object = v54;
          v79.value._countAndFlagsBits = 0;
          v79.value._object = 0;
          v77.value.super.isa = v46;
          v77.is_nil = 0;
          v55.value = 0;
          isa = sub_100573908(v78, v79, v77, v55, 0xFFFFFFFFFFFFFFFFLL, v48, v69).super.super.isa;

          [v3 setMenuRepresentation:isa];
          sub_10036A028(v72, v73);
          sub_10036A028(a1, a2);

          goto LABEL_61;
        }
      }

      sub_10036A028(a1, a2);
      v33 = [v3 customView];
      if (v33)
      {
        v34 = v33;
        type metadata accessor for SymbolButton(0);
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v36 = v35;
          v37 = swift_allocObject();
          *(v37 + 16) = v10;
          v38 = (v36 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v39 = *v38;
          v40 = v38[1];
          *v38 = NowPlaying.TrackMetadata.underlyingItem.getter;
          v38[1] = v37;
          v41 = v10;
          sub_1000F3E14(v39, v40);
        }
      }

      goto LABEL_42;
    }

    v70 = v7;
    v16 = [v2 title];
    if (v16)
    {
      v17 = v16;
      sub_1005728D8();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v3 image];
    [v3 setPrimaryAction:a1];
    v21 = [a1 title];
    v22 = sub_1005728D8();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      v26 = [a1 title];
      sub_1005728D8();
    }

    else if (!v19)
    {
      v27 = 0;
LABEL_28:
      [v3 setTitle:v27];

      v28 = [a1 image];
      if (!v28)
      {
        v28 = v20;
      }

      [v3 setImage:v28];

      [v3 setMenu:0];
      v29 = [v3 customView];
      if (v29)
      {
        v30 = v29;
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          [v31 setMenu:0];

          v32 = v73;
          goto LABEL_57;
        }
      }

      v57 = [v3 customView];
      v32 = v73;
      if (v57)
      {
        v58 = v57;
        type metadata accessor for SymbolButton(0);
        v59 = swift_dynamicCastClass();
        if (v59)
        {
          v60 = (v59 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v61 = *v60;
          v62 = v60[1];
          *v60 = 0;
          v60[1] = 0;
          sub_1000F3E14(v61, v62);
        }
      }

LABEL_57:
      if ((v70 & 1) == 0)
      {
        if ((v32 & 1) == 0)
        {
          v65 = [v3 menuRepresentation];
          if (!v65)
          {

            sub_10036A028(a1, a2);
            v63 = v72;
            v64 = v32;
            goto LABEL_62;
          }

          v66 = v65;
          sub_1000D3B98(0, &qword_1006F6150, UIMenuElement_ptr);
          v67 = v72;
          v68 = sub_100573A58();

          sub_10036A028(v72, v32);
          if (v68)
          {
            [v3 setMenuRepresentation:a1];

            sub_10036A028(a1, a2);
            sub_10036A028(a1, a2);
            v63 = v72;
            v64 = v32;
            goto LABEL_62;
          }

          sub_10036A028(v72, v32);
LABEL_61:
          v63 = a1;
          v64 = a2;
LABEL_62:
          sub_10036A028(v63, v64);
          return;
        }

        sub_10036A028(v72, v32);
      }

      goto LABEL_61;
    }

    v27 = sub_100572898();

    goto LABEL_28;
  }

  v14 = v6;
  [v3 setPrimaryAction:0];
  [v3 setMenuRepresentation:0];
  [v3 setMenu:0];
  v74 = [v3 customView];
  if (v74)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      [v15 setMenu:0];
      sub_10036A028(v14, v8);

      return;
    }
  }

  sub_10036A028(v14, v8);
}

uint64_t sub_1003835A8(void *a1)
{
  v1 = [a1 children];
  sub_1000D3B98(0, &qword_1006F6150, UIMenuElement_ptr);
  v2 = sub_100572D28();

  return v2;
}

void (*UIBarButtonItem.primaryActionKind.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = [v1 primaryAction];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v3 = [v1 menu];
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  return sub_10038369C;
}

void sub_10038369C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_10036A2E0(*a1, v3);
    UIBarButtonItem.primaryActionKind.setter(v2, v3);

    sub_10036A028(v2, v3);
  }

  else
  {
    UIBarButtonItem.primaryActionKind.setter(*a1, v3);
  }
}

id UIBarButtonItem.plastify()()
{
  [v0 _setPrefersNoPlatter:1];

  return v2;
}

void *UIBarButtonItemGroup.split()()
{
  v1 = [v0 barButtonItems];
  sub_1000D3B98(0, &qword_1006EFAD8, UIBarButtonItem_ptr);
  v2 = sub_100572D28();

  v11 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_100573F58();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v5;
      sub_1003838D8(&v11, &v10, v0);

      ++v4;
      if (v7 == i)
      {
        v8 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_15:

  return v8;
}

void sub_1003838D8(void *a1, void **a2, void *a3)
{
  v5 = *a2;
  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10057B4F0;
  *(v6 + 32) = v5;
  v7 = objc_allocWithZone(UIBarButtonItemGroup);
  sub_1000D3B98(0, &qword_1006EFAD8, UIBarButtonItem_ptr);
  v8 = v5;
  isa = sub_100572D08().super.isa;

  [v7 initWithBarButtonItems:isa representativeItem:0];

  sub_100572CE8();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  v10 = v8;
  v11 = [a3 barButtonItems];
  v12 = sub_100572D28();

  if (v12 >> 62)
  {
    v13 = sub_100574178();
    if (v13)
    {
LABEL_5:
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v14)
      {
        __break(1u);
      }

      else if ((v12 & 0xC000000000000001) == 0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v15 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v12 + 8 * v15 + 32);
          goto LABEL_10;
        }

        __break(1u);
        return;
      }

      v16 = sub_100573F58();
LABEL_10:
      v17 = v16;

      v18 = sub_100573A58();

      if (v18)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_14:
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10057B4F0;
  *(v19 + 32) = [objc_opt_self() fixedSpaceItemOfWidth:0.0];
  v20 = objc_allocWithZone(UIBarButtonItemGroup);
  v21 = sub_100572D08().super.isa;

  [v20 initWithBarButtonItems:v21 representativeItem:0];

  sub_100572CE8();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
}

uint64_t UIAction.init(target:selector:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = a2;

      v5 = sub_100573A88();

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100383CDC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_100383D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    [result performSelector:a3];
    return v5;
  }

  return result;
}

Class static UIBarButtonItem.contextBarButtonItem(representativeOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  v3 = _sSo15UIBarButtonItemC11MusicCoreUIE010contextBarbC07options16childrenProviderABSo13UIMenuOptionsV_SaySo0L7ElementCGyctFZ_0(1, sub_10038594C, v2);

  return v3;
}

uint64_t sub_100383DF8(uint64_t a1)
{
  sub_1000D3B98(0, &qword_1006EFAC8, UIMenu_ptr);
  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10057B4F0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 1;
  aBlock[4] = sub_100386958;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100380824;
  aBlock[3] = &unk_10069F420;
  v5 = _Block_copy(aBlock);

  v6 = [v3 elementWithUncachedProvider:v5];
  _Block_release(v5);
  *(v2 + 32) = v6;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  v7.value = 1;
  isa = sub_100573908(v15, v16, v14, v7, 0xFFFFFFFFFFFFFFFFLL, v2, v12).super.super.isa;
  v9 = [(objc_class *)isa children];

  sub_1000D3B98(0, &qword_1006F6150, UIMenuElement_ptr);
  v10 = sub_100572D28();

  return v10;
}

id static UIBarButtonItem.loading.getter()
{
  v0 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v0 startAnimating];
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v0];

  return v1;
}

uint64_t UIButton.reconfigure(with:)(void (*a1)(char *))
{
  sub_100009DCC(&qword_1006EFAF0, &qword_100599790);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = sub_100573B38();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100573B58();
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    sub_100573B18();
    if (v10(v5, 1, v6) != 1)
    {
      sub_10001036C(v5, &qword_1006EFAF0, &qword_100599790);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  a1(v9);
  (*(v7 + 16))(v3, v9, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  sub_100573B68();
  return (*(v7 + 8))(v9, v6);
}

uint64_t UITraitCollection.isAccessibilitySizeCategory.getter()
{
  v1 = [v0 preferredContentSizeCategory];
  v2 = sub_100573768();

  return v2 & 1;
}

uint64_t UITraitCollection.preferredLargeTitleDisplayMode.getter()
{
  if (![v0 userInterfaceIdiom])
  {
    return 3;
  }

  if ([v0 userInterfaceIdiom] == 1)
  {
    return 3;
  }

  return 1;
}

Swift::Bool __swiftcall UIViewController.scrollToTopIfPossible()()
{
  v1 = [v0 contentScrollView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 _scrollToTopIfPossible:1];

  return v3;
}

Swift::Bool __swiftcall UIViewController.focusOnSearchBarIfPossible()()
{
  v1 = [v0 navigationItem];
  v2 = [v1 searchController];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 searchBar];
  v4 = [v3 canBecomeFirstResponder];

  if (v4)
  {
    v5 = [v2 searchBar];
    v6 = [v5 becomeFirstResponder];

    v2 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id static UIKeyCommand.findKeyCommand(affecting:)()
{
  sub_10056CC38();
  __chkstk_darwin();
  v0 = sub_100572888();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v17 - v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100572818();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v7 = qword_1006FDF00;
  sub_10056CBC8();
  sub_100572948();
  (*(v1 + 8))(v5, v0);
  v8 = objc_opt_self();
  v9 = sub_100572898();
  v10 = [v8 keyCommandWithInput:v9 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v11 = v10;
  v12 = sub_100572898();

  [v11 setTitle:v12];

  if (qword_1006EEA40 != -1)
  {
    swift_once();
  }

  v13 = qword_1006EFAC0;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1003866CC;
  *(v14 + 24) = v6;
  v17[1] = sub_1003866D4;
  v17[2] = v14;

  sub_100009DCC(&qword_1006EFAF8, &unk_100599798);
  v15 = sub_100574528();
  objc_setAssociatedObject(v11, v13, v15, 3);

  swift_unknownObjectRelease();

  return v11;
}

void sub_1003847B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setActive:1];
    v4 = [v3 searchBar];
    [v4 becomeFirstResponder];

    v5 = UISearchController.searchText.getter();
    if (v6)
    {
      v7 = v5;
      v8 = v6;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v10 = [v3 searchBar];
        v11 = [v10 searchTextField];

        [v11 selectAll:v3];
      }
    }
  }
}

uint64_t UISearchController.searchText.getter()
{
  v1 = sub_10056C328();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 searchBar];
  v7 = [v6 text];

  if (v7)
  {
    v8 = sub_1005728D8();
    v10 = v9;

    v16[0] = v8;
    v16[1] = v10;
    sub_10056C318();
    sub_10037AD68();
    v11 = sub_100573CD8();
    v13 = v12;
    (*(v2 + 8))(v5, v1);

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      return v11;
    }
  }

  return 0;
}

id UIKeyCommand.init(title:input:modifierFlags:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = sub_100572898();

  v12 = [ObjCClassFromMetadata keyCommandWithInput:v11 modifierFlags:a5 action:"music_handleKeyCommand:"];

  v13 = v12;
  v14 = sub_100572898();

  [v13 setTitle:v14];

  v15 = qword_1006EEA40;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1006EFAC0;
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;

  sub_100009DCC(&qword_1006EFAF8, &unk_100599798);
  v18 = sub_100574528();
  objc_setAssociatedObject(v13, v16, v18, 3);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t UIKeyCommand.handler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1006EEA40 != -1)
  {
    swift_once();
  }

  v6 = qword_1006EFAC0;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    sub_100009DCC(&qword_1006EFAF8, &unk_100599798);
    v8 = sub_100574528();
  }

  else
  {
    v8 = 0;
  }

  objc_setAssociatedObject(v3, v6, v8, 3);
  swift_unknownObjectRelease();
  return sub_1000F3E14(a1, a2);
}

uint64_t (*UIKeyCommand.handler.getter())(uint64_t a1)
{
  if (qword_1006EEA40 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1006EFAC0))
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100009DCC(&qword_1006EFAF8, &unk_100599798);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v2;
      return sub_100386700;
    }
  }

  else
  {
    sub_10001036C(v5, &qword_1006F6190, &unk_100599090);
  }

  return 0;
}

void (*UIKeyCommand.handler.modify(void *a1))(uint64_t **a1, char a2)
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
  v3[4] = v1;
  *v3 = UIKeyCommand.handler.getter();
  v4[1] = v5;
  return sub_100384E9C;
}

void sub_100384E9C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    sub_1000E672C(**a1, v3);
    if (qword_1006EEA40 != -1)
    {
      swift_once();
    }

    v5 = qword_1006EFAC0;
    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v2[2] = sub_1003869EC;
      v2[3] = v6;

      sub_100009DCC(&qword_1006EFAF8, &unk_100599798);
      v7 = sub_100574528();
    }

    else
    {
      v7 = 0;
    }

    objc_setAssociatedObject(v2[4], v5, v7, 3);
    swift_unknownObjectRelease();
    sub_1000F3E14(v4, v3);
    v11 = *v2;
    v12 = v2[1];
  }

  else
  {
    if (qword_1006EEA40 != -1)
    {
      swift_once();
    }

    v8 = qword_1006EFAC0;
    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v3;
      v2[2] = sub_1003869EC;
      v2[3] = v9;

      sub_100009DCC(&qword_1006EFAF8, &unk_100599798);
      v10 = sub_100574528();
    }

    else
    {
      v10 = 0;
    }

    objc_setAssociatedObject(v2[4], v8, v10, 3);
    swift_unknownObjectRelease();
    v11 = v4;
    v12 = v3;
  }

  sub_1000F3E14(v11, v12);

  free(v2);
}

uint64_t sub_100385084()
{
  result = swift_slowAlloc();
  qword_1006EFAC0 = result;
  return result;
}

id UIKeyCommand.pioritizedOverSystemBehavior(_:)(char a1)
{
  [v1 setWantsPriorityOverSystemBehavior:a1 & 1];

  return v3;
}

void sub_1003850F8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v3 = UIKeyCommand.handler.getter();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v3(v7);

    sub_1000F3E14(v5, v6);
  }

  else
  {
  }
}

id UIFont.monospacedDigits()()
{
  swift_getObjectType();
  sub_100009DCC(&qword_1006EFB00, &qword_1005997A8);
  inited = swift_initStackObject();
  v2 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 6;
  *(inited + 16) = xmmword_10057B500;
  v3 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = v3;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = 0;
  v4 = v2;
  v5 = v3;
  v6 = sub_100385A6C(inited);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006EFB08, &qword_1005997B0);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_100009DCC(&qword_1006EFB10, &qword_1005997B8);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_10057B510;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_100009DCC(&qword_1006EFB18, &qword_1005997C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057B510;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_100009DCC(&qword_1006EFB20, &qword_1005997C8);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_100385B94(v8);
  swift_setDeallocating();
  sub_10001036C(v8 + 32, &qword_1006EFB28, &qword_1005997D0);
  _s3__C13AttributeNameVMa_0(0);
  sub_100386738();
  isa = sub_100572688().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  v13 = [swift_getObjCClassFromMetadata() fontWithDescriptor:v12 size:0.0];
  return v13;
}

uint64_t (*static UIPointerStyle.capsule(in:)(void *a1))(void *a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1003867C8;
}

uint64_t sub_100385448(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100009DCC(&unk_1006F6140, &qword_1005998C0);
  __chkstk_darwin();
  v8 = &v38 - v7;
  v9 = sub_10056E098();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (a4)
  {
    v22 = a4;
    v39.origin.x = v15;
    v39.origin.y = v17;
    v39.size.width = v19;
    v39.size.height = v21;
    Width = CGRectGetWidth(v39);
    [v22 frame];
    v25 = Width - v24;
    v40.origin.x = v15;
    v40.origin.y = v17;
    v40.size.width = v19;
    v40.size.height = v21;
    Height = CGRectGetHeight(v40);
    [v22 frame];
    v28 = v27;

    v15 = sub_1002DCE0C(v15, v17, v19, v21, (Height - v28) * 0.5, v25 * 0.5);
    v17 = v29;
    v19 = v30;
    v21 = v31;
  }

  (*(v10 + 16))(v13, a2, v9);
  v41.origin.x = v15;
  v41.origin.y = v17;
  v41.size.width = v19;
  v41.size.height = v21;
  v32 = CGRectGetWidth(v41);
  v42.origin.x = v15;
  v42.origin.y = v17;
  v42.size.width = v19;
  v42.size.height = v21;
  v33 = CGRectGetHeight(v42);
  if (v33 < v32)
  {
    v32 = v33;
  }

  sub_1000D3B98(0, &qword_1006EFB48, UIPointerStyle_ptr);
  *v8 = v15;
  *(v8 + 1) = v17;
  *(v8 + 2) = v19;
  *(v8 + 3) = v21;
  *(v8 + 4) = v32 * 0.5;
  v34 = enum case for UIPointerShape.roundedRect(_:);
  v35 = sub_10056E068();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v8, v34, v35);
  (*(v36 + 56))(v8, 0, 1, v35);
  return sub_100573478();
}

uint64_t sub_10038573C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100574178();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100574178();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1003858CC();
          for (i = 0; i != v6; ++i)
          {
            sub_100009DCC(&qword_1006EFAE0, &qword_100599788);
            v9 = sub_100304324(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000D3B98(0, &qword_1006EFAD8, UIBarButtonItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1003858CC()
{
  result = qword_1006EFAE8;
  if (!qword_1006EFAE8)
  {
    sub_100010324(&qword_1006EFAE0, &qword_100599788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFAE8);
  }

  return result;
}

unint64_t sub_100385954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006EFB68, &qword_1005998E0);
    v3 = sub_1005741C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1000F54C8(v7, v8);
      result = sub_100429D94(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100385A6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006EFB58, &unk_1005998D0);
    v3 = sub_1005741C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000CC8C(v4, &v11, &qword_1006EFB08, &qword_1005997B0);
      v5 = v11;
      result = sub_10042BE98(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000F51DC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100385B94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006EFB50, &qword_1005998C8);
    v3 = sub_1005741C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000CC8C(v4, &v11, &qword_1006EFB28, &qword_1005997D0);
      v5 = v11;
      result = sub_10042BE98(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000F51DC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100385CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006EFB40, &qword_1005998B8);
    v3 = sub_1005741C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100429D94(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100385DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006EFB38, &qword_1005998B0);
    v3 = sub_1005741C8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100429D94(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100385EBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006EFB30, &qword_1005998A8);
    v3 = sub_1005741C8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100429E7C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

Class _sSo15UIBarButtonItemC11MusicCoreUIE010contextBarbC07options16childrenProviderABSo13UIMenuOptionsV_SaySo0L7ElementCGyctFZ_0(NSString *a1, uint64_t a2, uint64_t a3)
{
  sub_10056CC38();
  __chkstk_darwin();
  v6 = sub_100572888();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &aBlock[-1] - v10;
  sub_100572818();
  (*(v7 + 16))(v9, v11, v6);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v12 = qword_1006FDF00;
  sub_10056CBC8();
  v13 = sub_100572948();
  v15 = v14;
  (*(v7 + 8))(v11, v6);
  sub_1000D3B98(0, &qword_1006EFAD8, UIBarButtonItem_ptr);
  v16 = sub_100572898();
  v17 = [objc_opt_self() systemImageNamed:v16];

  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10057B4F0;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  aBlock[4] = sub_1003869F0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100380824;
  aBlock[3] = &unk_10069F3D0;
  v21 = _Block_copy(aBlock);

  v22 = [v19 elementWithUncachedProvider:v21];
  _Block_release(v21);
  *(v18 + 32) = v22;
  sub_1000D3B98(0, &qword_1006EFAC8, UIMenu_ptr);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v35.value.super.isa = 0;
  v35.is_nil = 0;
  v23.value = a1;
  isa = sub_100573908(v36, v37, v35, v23, 0xFFFFFFFFFFFFFFFFLL, v18, v32).super.super.isa;
  v25 = AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor();
  v26 = *v25;
  v27 = v25[1];
  v29 = v25[2];
  v28 = v25[3];

  v30 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v13, v15, v17, 0, isa, 1, v26, v27, v29, v28);
  [(objc_class *)v30 setPreferredMenuElementOrder:2];
  return v30;
}

id _sSo12UIKeyCommandC11MusicCoreUIE07findKeyB0yAByABcFZ_0(uint64_t a1, uint64_t a2)
{
  sub_10056CC38();
  __chkstk_darwin();
  v4 = sub_100572888();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v20 - v8;
  sub_100572818();
  (*(v5 + 16))(v7, v9, v4);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v10 = qword_1006FDF00;
  sub_10056CBC8();
  sub_100572948();
  (*(v5 + 8))(v9, v4);
  v11 = objc_opt_self();
  v12 = sub_100572898();
  v13 = [v11 keyCommandWithInput:v12 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v14 = v13;
  v15 = sub_100572898();

  [v14 setTitle:v15];

  if (qword_1006EEA40 != -1)
  {
    swift_once();
  }

  v16 = qword_1006EFAC0;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v20[1] = sub_1003869EC;
  v20[2] = v17;

  sub_100009DCC(&qword_1006EFAF8, &unk_100599798);
  v18 = sub_100574528();
  objc_setAssociatedObject(v14, v16, v18, 3);
  swift_unknownObjectRelease();

  return v14;
}

uint64_t sub_100386700(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_100386738()
{
  result = qword_1006EF0E0;
  if (!qword_1006EF0E0)
  {
    _s3__C13AttributeNameVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EF0E0);
  }

  return result;
}

uint64_t sub_100386790()
{

  return swift_deallocObject();
}

double sub_1003867EC(void (*a1)(void))
{
  (*(v1 + 16))();
  a1();

  return result;
}

uint64_t sub_100386848()
{

  return swift_deallocObject();
}

uint64_t sub_100386880()
{

  return swift_deallocObject();
}

uint64_t sub_1003868B8()
{

  return swift_deallocObject();
}

uint64_t sub_1003868F0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t *UIView.Border.artwork.unsafeMutableAddressor()
{
  if (qword_1006EEA48 != -1)
  {
    swift_once();
  }

  return &static UIView.Border.artwork;
}

void sub_100386A98()
{
  v0 = objc_allocWithZone(UIColor);
  v5[4] = sub_100386B80;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000376F0;
  v5[3] = &unk_10069F4C0;
  v1 = _Block_copy(v5);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  UIView.Border.init(thickness:color:)();
  static UIView.Border.artwork = v2;
  byte_1006FE1A8 = v3 & 1;
  qword_1006FE1B0 = v4;
}

id sub_100386B80(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  v3 = 0.0;
  if (v1 == 2)
  {
    v3 = 1.0;
  }

  return [v2 initWithWhite:v3 alpha:0.1];
}

uint64_t static UIView.Border.artwork.getter()
{
  if (qword_1006EEA48 != -1)
  {
    swift_once();
  }

  v0 = static UIView.Border.artwork;
  v1 = qword_1006FE1B0;
  return v0;
}

void sub_100386C60()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1006EFB70 = v1 == 6;
}

uint64_t sub_100386CC4()
{
  v0 = sub_100573998();
  sub_10000C910(v0, static UIView.Corner.extraSmall);
  sub_10000C49C(v0, static UIView.Corner.extraSmall);
  if (qword_1006EEA50 != -1)
  {
    swift_once();
  }

  return sub_100573928();
}

uint64_t sub_100386DB0()
{
  v0 = sub_100573998();
  sub_10000C910(v0, static UIView.Corner.small);
  sub_10000C49C(v0, static UIView.Corner.small);
  if (qword_1006EEA50 != -1)
  {
    swift_once();
  }

  return sub_100573928();
}

uint64_t sub_100386E78()
{
  v0 = sub_100573998();
  sub_10000C910(v0, static UIView.Corner.medium);
  sub_10000C49C(v0, static UIView.Corner.medium);
  if (qword_1006EEA50 != -1)
  {
    swift_once();
  }

  return sub_100573928();
}

uint64_t sub_100386F40()
{
  v0 = sub_100573998();
  sub_10000C910(v0, static UIView.Corner.large);
  sub_10000C49C(v0, static UIView.Corner.large);
  if (qword_1006EEA50 != -1)
  {
    swift_once();
  }

  return sub_100573928();
}

uint64_t sub_10038702C()
{
  v0 = sub_100573998();
  sub_10000C910(v0, static UIView.Corner.extraLarge);
  sub_10000C49C(v0, static UIView.Corner.extraLarge);
  if (qword_1006EEA50 != -1)
  {
    swift_once();
  }

  return sub_100573928();
}

uint64_t sub_1003870F4(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_100573998();

  return sub_10000C49C(v4, a2);
}

uint64_t sub_10038716C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_100573998();
  v7 = sub_10000C49C(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100387204(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *HI.Color.prominentTextColor.unsafeMutableAddressor()
{
  if (qword_1006EEA80 != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentTextColor;
}

id sub_100387300(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 userInterfaceStyle];
  sub_10037F988();
  if (v7 == 2)
  {
    v8 = 250;
    v9 = 45;
    v10 = 72;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = a4;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v8, v9, v10, 1.0);
}

void *HI.Color.prominentBackgroundColor.unsafeMutableAddressor()
{
  if (qword_1006EEA88 != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentBackgroundColor;
}

uint64_t sub_100387404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003874B4@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicCoreUI2HIO9SizeClassO8rawValueAESg0B8Graphics7CGFloatV_tcfC_0(*a1);
  *a2 = result;
  return result;
}

double sub_1003874E0@<D0>(double *a1@<X8>)
{
  result = dbl_100599D60[*v1];
  *a1 = result;
  return result;
}

Swift::Int sub_1003875C8(uint64_t a1, char a2)
{
  sub_100574678();
  sub_1005746B8(qword_100599D20[a2]);
  return sub_1005746C8();
}

double sub_100387618(char a1, char a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 != 2)
      {
        return dbl_100599CE0[a1];
      }

      v4 = a1;
      result = 3.0;
      v5 = 4.0;
      if (a1 != 2)
      {
        v5 = 2.0;
      }

      v6 = 1.0;
      if (a2)
      {
        v6 = 3.0;
      }

      if (!a1)
      {
        result = v6;
      }

      goto LABEL_49;
    }

    if (!a3)
    {
      return dbl_100599CC0[a1];
    }

    v4 = a1;
    result = 1.0;
    v5 = 3.0;
    v11 = 4.0;
    if ((a2 & 1) == 0)
    {
      v11 = 1.0;
    }

    if (a1 != 2)
    {
      v5 = v11;
    }

    v12 = 2.0;
LABEL_47:
    if (v4)
    {
      result = v12;
    }

LABEL_49:
    if (v4 > 1)
    {
      return v5;
    }

    return result;
  }

  if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      return dbl_100599D00[a1];
    }

    v4 = a1;
    result = 3.0;
    v5 = 7.0;
    v13 = 5.0;
    if (a2)
    {
      v13 = 9.0;
    }

    if (a1 != 2)
    {
      v5 = v13;
    }

    v12 = 6.0;
    goto LABEL_47;
  }

  result = 7.0;
  v7 = 8.0;
  v8 = 6.0;
  if (a2)
  {
    v8 = 28.0;
  }

  if (a1 != 2)
  {
    v7 = v8;
  }

  v9 = 4.0;
  if (a2)
  {
    v9 = 7.0;
  }

  if (a1)
  {
    v9 = 7.0;
  }

  if (a1 <= 1u)
  {
    v7 = v9;
  }

  v10 = 5.0;
  if (a2)
  {
    result = 15.0;
  }

  if (a1 == 2)
  {
    result = 12.0;
  }

  if (a1)
  {
    v10 = 10.0;
  }

  if (a1 <= 1u)
  {
    result = v10;
  }

  if (a3 == 6)
  {
    return v7;
  }

  return result;
}

void HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(char a1@<W0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (a5 <= 374.0)
  {
    v13 = 0;
    v10 = 10.0;
    v11 = 16.0;
    goto LABEL_19;
  }

  v10 = 12.0;
  v11 = 20.0;
  if (a5 <= 500.0)
  {
    v13 = 1;
    goto LABEL_19;
  }

  if (a5 <= 726.0)
  {
    v13 = 2;
    goto LABEL_19;
  }

  v10 = 20.0;
  if (a5 <= 981.0)
  {
    v13 = 3;
LABEL_18:
    v11 = 34.0;
    goto LABEL_19;
  }

  if (a5 <= 1194.0)
  {
    v13 = 4;
    goto LABEL_18;
  }

  if (a5 <= 2500.0)
  {
    v12 = 6;
  }

  else
  {
    v12 = 7;
  }

  if (a5 > 1500.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 5;
  }

  v11 = 34.0;
LABEL_19:
  v14 = a5 - (v11 + v11);
  if (a3)
  {
    v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    [v15 scaledValueForValue:1.0];
    v17 = v16;

    v18 = round(sub_100387618(a1, a2 & 1, v13) * (1.0 / (v17 * 0.7)));
  }

  else
  {
    v18 = sub_100387618(a1, a2 & 1, v13);
  }

  v19 = 1.0;
  if (v13 <= 4)
  {
    v20 = 3.0;
    if (((a1 == 3) & a2) == 0)
    {
      v20 = 1.0;
    }

    v22 = 2.0;
    if (((a1 == 0) & a2) == 0)
    {
      v22 = 1.0;
    }

    if (v13 == 2)
    {
      v19 = v22;
    }

    v21 = v13 == 1;
    goto LABEL_40;
  }

  if (v13 == 5)
  {
    v23 = ((a1 == 3) & a2) == 0;
  }

  else
  {
    if (v13 != 6)
    {
      v20 = 1.0;
      if (((a1 == 3) & a2) != 0)
      {
        v20 = 2.0;
      }

      v21 = v13 == 7;
LABEL_40:
      if (v21)
      {
        v19 = v20;
      }

      goto LABEL_46;
    }

    if (a1)
    {
      v20 = 5.0;
      if ((a2 & 1) == 0)
      {
        v20 = 1.0;
      }

      v21 = a1 == 3;
      goto LABEL_40;
    }

    v23 = (a2 & 1) == 0;
  }

  if (!v23)
  {
    v19 = 2.0;
  }

LABEL_46:
  v24 = (v14 - v10 * (v18 + -1.0)) / v18 * v19;
  v25 = v19 + -1.0;
  if (v25 > 0.0)
  {
    v24 = v24 + v10 * v25;
  }

  v26 = v18 == 1.0 || v24 > 300.0;
  if ((a3 & 1) == 0)
  {
    v26 = 0;
  }

  *a4 = a5;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 24) = v13;
  *(a4 + 25) = a1;
  *(a4 + 26) = a2 & 1;
  *(a4 + 32) = v14;
  *(a4 + 40) = v18;
  *(a4 + 48) = v24;
  *(a4 + 56) = v26;
}

void HI.Grid.Metrics.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1005746B8(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1005746B8(*&v2);
  v3 = *(v0 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1005746B8(*&v3);
  sub_1005746B8(qword_100599D20[*(v0 + 24)]);
  sub_100574688(*(v0 + 25));
  sub_100574698(*(v0 + 26) & 1);
  v4 = *(v0 + 32);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_1005746B8(*&v4);
  v5 = *(v0 + 40);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_1005746B8(*&v5);
  v6 = *(v0 + 48);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  sub_1005746B8(*&v6);
  sub_100574698(*(v0 + 56) & 1);
}

Swift::Int HI.Grid.Metrics.hashValue.getter()
{
  sub_100574678();
  HI.Grid.Metrics.hash(into:)();
  return sub_1005746C8();
}

Swift::Int sub_100387C20(uint64_t a1)
{
  sub_100574678();
  HI.Grid.Metrics.hash(into:)();
  return sub_1005746C8();
}

uint64_t sub_100387C5C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s11MusicCoreUI2HIO4GridO7MetricsV23__derived_struct_equalsySbAG_AGtFZ_0(v5, v7) & 1;
}

uint64_t *HI.BottomPlayer.Ornament.overlappingHeight.unsafeMutableAddressor()
{
  if (qword_1006EEA90 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.overlappingHeight;
}

double sub_100387E08()
{
  if (qword_1006EEA90 != -1)
  {
    swift_once();
  }

  result = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  static HI.BottomPlayer.Ornament.offset = 0;
  *&qword_1006FE250 = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  return result;
}

uint64_t *HI.BottomPlayer.Ornament.offset.unsafeMutableAddressor()
{
  if (qword_1006EEA98 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.Ornament.offset.getter()
{
  if (qword_1006EEA98 != -1)
  {
    swift_once();
  }

  return *&static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.size(dynamicTypeSize:)(uint64_t a1)
{
  sub_100009DCC(&qword_1006EF998, &qword_100599528);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = sub_10056EBD8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v14 - v8;
  sub_100388588(a1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1003885F8(v3);
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    (*(v5 + 104))(v7, enum case for DynamicTypeSize.accessibility1(_:), v4);
    sub_100388660();
    v10 = sub_1005727B8();
    v11 = *(v5 + 8);
    v11(v7, v4);
    v11(v9, v4);
    if ((v10 & 1) == 0)
    {
      return 924.0;
    }
  }

  return 784.0;
}

uint64_t *HI.BottomPlayer.buttonSpacing.unsafeMutableAddressor()
{
  if (qword_1006EEAA0 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.buttonSpacing;
}

uint64_t *HI.BottomPlayer.contentHorizontalPadding.unsafeMutableAddressor()
{
  if (qword_1006EEAA8 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.contentHorizontalPadding;
}

double sub_10038824C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t _s11MusicCoreUI2HIO4GridO7MetricsV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v3 > 3)
  {
    if (*(a2 + 24) > 5u)
    {
      if (v3 == 6)
      {
        if (v2 != 6)
        {
          return 0;
        }
      }

      else if (v2 != 7)
      {
        return 0;
      }
    }

    else if (v3 == 4)
    {
      if (v2 != 4)
      {
        return 0;
      }
    }

    else if (v2 != 5)
    {
      return 0;
    }
  }

  else if (*(a2 + 24) > 1u)
  {
    if (v3 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 3)
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*(a1 + 24))
  {
    return 0;
  }

  if (*(a1 + 25) == *(a2 + 25) && ((*(a1 + 26) ^ *(a2 + 26)) & 1) == 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return (*(a1 + 56) ^ *(a2 + 56) ^ 1) & 1;
  }

  return 0;
}

uint64_t _s11MusicCoreUI2HIO9SizeClassOyAE0B8Graphics7CGFloatVcfC_0(double a1)
{
  if (a1 <= 374.0)
  {
    return 0;
  }

  if (a1 <= 500.0)
  {
    return 1;
  }

  if (a1 <= 726.0)
  {
    return 2;
  }

  if (a1 <= 981.0)
  {
    return 3;
  }

  if (a1 > 2500.0)
  {
    v1 = 7;
  }

  else
  {
    v1 = 6;
  }

  if (a1 > 1500.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 5;
  }

  if (a1 > 1194.0)
  {
    return v2;
  }

  else
  {
    return 4;
  }
}

uint64_t _s11MusicCoreUI2HIO9SizeClassO8rawValueAESg0B8Graphics7CGFloatV_tcfC_0(double a1)
{
  if (a1 == 374.0)
  {
    return 0;
  }

  if (a1 == 500.0)
  {
    return 1;
  }

  if (a1 == 726.0)
  {
    return 2;
  }

  if (a1 == 981.0)
  {
    return 3;
  }

  if (a1 == 1194.0)
  {
    return 4;
  }

  if (a1 == 2501.0)
  {
    v2 = 7;
  }

  else
  {
    v2 = 8;
  }

  if (a1 == 2500.0)
  {
    v3 = 6;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 1500.0)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100388588(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EF998, &qword_100599528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003885F8(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EF998, &qword_100599528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100388660()
{
  result = qword_1006EFB78;
  if (!qword_1006EFB78)
  {
    sub_10056EBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFB78);
  }

  return result;
}

unint64_t sub_1003886E8()
{
  result = qword_1006EFB90;
  if (!qword_1006EFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFB90);
  }

  return result;
}

unint64_t sub_100388774()
{
  result = qword_1006EFBA8;
  if (!qword_1006EFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFBA8);
  }

  return result;
}

unint64_t sub_1003887CC()
{
  result = qword_1006EFBB0;
  if (!qword_1006EFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFBB0);
  }

  return result;
}

__n128 sub_10038886C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100388888(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 26);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003888DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 26) = a2 + 1;
    }
  }

  return result;
}

double sub_1003889BC(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (a4 <= 1u)
  {
    if (a4)
    {
LABEL_9:
      result = 540.0;
      if (v8 == 6)
      {
        return 512.0;
      }

      return result;
    }

    result = 540.0;
    if (v8 == 6)
    {
      return 512.0;
    }
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        return 512.0;
      }

      goto LABEL_9;
    }

    result = 712.0;
    if (a3 & 1 | (*&a1 <= 1194.0))
    {
      return 540.0;
    }
  }

  return result;
}

double static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = sub_1003889BC(a2, a3, a4 & 1, a1);
  v9 = [objc_opt_self() currentTraitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 6 && (a4 & 1) == 0 && (a5 & 1) == 0)
  {
    v11 = *&a2;
    if (qword_1006EEAB0 != -1)
    {
      swift_once();
      v11 = *&a2;
    }

    if (v8 + *&qword_1006FE268 + *&qword_1006FE268 > v11)
    {
      return v11 - (*&qword_1006FE268 + *&qword_1006FE268);
    }
  }

  return v8;
}

unint64_t sub_100388C60()
{
  result = qword_1006EFBB8;
  if (!qword_1006EFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EFBB8);
  }

  return result;
}

uint64_t sub_100388CD8()
{
  sub_100573ED8(42);

  v4._countAndFlagsBits = sub_100571A28();
  sub_100572A98(v4);

  v5._countAndFlagsBits = 0x64692E676E6F7320;
  v5._object = 0xE90000000000003DLL;
  sub_100572A98(v5);
  sub_100571A08();
  v0 = sub_1005713B8();
  v2 = v1;

  v6._countAndFlagsBits = v0;
  v6._object = v2;
  sub_100572A98(v6);

  v7._object = 0x80000001005B8260;
  v7._countAndFlagsBits = 0xD000000000000010;
  sub_100572A98(v7);
  sub_100571998();
  sub_100009DCC(&qword_1006EFCA0, &qword_10059A008);
  v8._countAndFlagsBits = sub_100572978();
  sub_100572A98(v8);

  return 0x7469742E676E6F73;
}

uint64_t LyricsLoader.loadLyrics(for:)(uint64_t a1)
{
  v2[65] = v1;
  v2[64] = a1;
  v3 = sub_10056C8A8();
  v2[66] = v3;
  v2[67] = *(v3 - 8);
  v2[68] = swift_task_alloc();
  v4 = sub_10056DF88();
  v2[69] = v4;
  v2[70] = *(v4 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v5 = sub_100572928();
  v2[75] = v5;
  v2[76] = *(v5 - 8);
  v2[77] = swift_task_alloc();
  v6 = sub_100571A68();
  v2[78] = v6;
  v2[79] = *(v6 - 8);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();

  return _swift_task_switch(sub_100389078, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  sub_100009DCC(&qword_1006EFBE8, &qword_100599E50);
  v2[4] = swift_task_alloc();
  v3 = sub_100571A68();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10038BD74, 0, 0);
}

uint64_t sub_100389078()
{
  v40 = v0;
  if (sub_100571A58() & 1) != 0 || (sub_100571958())
  {
    sub_100009DCC(&qword_1006F3B50, &qword_100599780);
    v1 = swift_allocObject();
    v0[89] = v1;
    *(v1 + 16) = xmmword_10057B4F0;
    sub_100009DCC(&qword_1006EFBC8, &qword_100599E28);
    *(v1 + 32) = sub_100570CD8();
    v2 = swift_task_alloc();
    v0[90] = v2;
    v3 = sub_1003919E0();
    *v2 = v0;
    v2[1] = sub_1003894F0;
    v4 = v0[88];
    v5 = v0[78];

    return MusicItem<>.with(_:)(v4, v1, v5, &protocol witness table for Song, &protocol witness table for Song, v3);
  }

  else
  {
    v6 = v0[83];
    v7 = v0[79];
    v8 = v0[78];
    v9 = v0[72];
    v10 = v0[70];
    v11 = v0[69];
    v12 = v0[65];
    v13 = v0[64];
    v14 = Logger.lyrics.unsafeMutableAddressor();
    (*(v10 + 16))(v9, v14, v11);
    (*(v7 + 16))(v6, v13, v8);
    v15 = v12;
    v16 = sub_10056DF68();
    v17 = sub_100573448();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[83];
    v20 = v0[79];
    v21 = v0[78];
    v22 = v0[72];
    v23 = v0[70];
    v24 = v0[69];
    if (v18)
    {
      v38 = v0[72];
      v25 = v0[65];
      v37 = v0[69];
      v26 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v26 = 136446466;
      v0[57] = v25;
      v27 = sub_100572978();
      v29 = sub_10037A2AC(v27, v28, v39);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      v30 = sub_100388CD8();
      v32 = v31;
      (*(v20 + 8))(v19, v21);
      v33 = sub_10037A2AC(v30, v32, v39);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v16, v17, "Loader<%{public}s> loadLyrics(for:completion:) returned without loading lyrics [hasLyrics and hasCustomLyrics were false] %{public}s", v26, 0x16u);
      swift_arrayDestroy();

      (*(v23 + 8))(v38, v37);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v23 + 8))(v22, v24);
    }

    sub_10039198C();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}