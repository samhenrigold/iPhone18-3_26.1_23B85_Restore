double sub_1003DDDE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v6)
  {
    v7 = v6 == a1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  sub_100009DCC(&qword_1006F3B50, &qword_100599780);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057B4F0;
  sub_1000D3B98(0, &qword_1006F1F20, NSNumber_ptr);
  *(v8 + 32) = sub_100573A38(4);
  isa = sub_100572D08().super.isa;

  [a3 setLineDashPattern:isa];

  v10 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    if ((v13 & 0x100) != 0)
    {
      if (!(*&v12 | v13))
      {
        return 1.0;
      }
    }

    else
    {
      result = v12;
      if (v13)
      {
        return 0.6;
      }
    }
  }

  return result;
}

double sub_1003DDF18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator);
  if (v4)
  {
    v5 = v4 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    *(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  }

  v6 = a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  result = 0.0;
  if ((*(a2 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state + 10) & 1) == 0)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    if ((v9 & 0x100) != 0)
    {
      if (!(*&v8 | v9))
      {
        return 1.0;
      }
    }

    else
    {
      result = v8;
      if (v9)
      {
        return 0.6;
      }
    }
  }

  return result;
}

uint64_t sub_1003DDFB8()
{

  return swift_deallocObject();
}

void sub_1003DE00C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
    v4 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v4)
    {
      v5 = v2;
      v6 = v4;
    }

    else
    {
      v8 = objc_allocWithZone(UIImageView);
      v9 = v2;
      v6 = [v8 init];
    }

    v10 = v4;
    [v6 setImage:v2];
    v11 = *(v0 + v3);
    if (v11)
    {
      v12 = v11;
      [v12 frame];
      Width = CGRectGetWidth(v18);
      [v12 frame];
      Height = CGRectGetHeight(v19);
      if (Height < Width)
      {
        Width = Height;
      }

      v15 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
      swift_beginAccess();
      v16 = [objc_opt_self() configurationWithPointSize:Width * *(v0 + v15)];
      [v12 setPreferredSymbolConfiguration:v16];

      v7 = *(v0 + v3);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v3) = v6;
    v17 = v6;
    sub_1003DE308(v7);
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
    sub_1003DE308(v7);
  }
}

void *CircularProgressView.image.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CircularProgressView.image.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1003DE00C();
}

void (*CircularProgressView.image.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003DE2D4;
}

void sub_1003DE2D4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1003DE00C();
  }
}

void sub_1003DE308(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView;
  v5 = *&v1[OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView];
  if (v5)
  {
    if (!a1)
    {
LABEL_10:
      v13 = v5;
      [v13 setContentMode:4];
      [v2 addSubview:v13];

      return;
    }

    sub_1000D3B98(0, &unk_1006F20F0, UIImageView_ptr);
    v6 = v5;
    v3 = v3;
    v7 = sub_100573A58();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    sub_1000D3B98(0, &qword_1006F6130, UIView_ptr);
    v11 = v2;
    v12 = sub_100573A58();

    if (v12)
    {
      [v8 removeFromSuperview];
    }
  }

  v5 = *&v2[v4];
  if (v5)
  {
    goto LABEL_10;
  }
}

double CircularProgressView.imageScale.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  return *(v0 + v1);
}

void CircularProgressView.imageScale.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
    if (v5)
    {
      v6 = v5;
      [v6 frame];
      Width = CGRectGetWidth(v10);
      [v6 frame];
      Height = CGRectGetHeight(v11);
      if (Height >= Width)
      {
        Height = Width;
      }

      v9 = [objc_opt_self() configurationWithPointSize:*(v1 + v3) * Height];
      [v6 setPreferredSymbolConfiguration:v9];
    }
  }
}

void (*CircularProgressView.imageScale.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1003DE64C;
}

void sub_1003DE64C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    CircularProgressView.imageScale.setter(v3);
  }

  else
  {
    v5 = v2[4];
    v4 = v2[5];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != v6)
    {
      v7 = v2[4];
      v8 = *(v7 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView);
      if (v8)
      {
        v9 = v2[5];
        v10 = v8;
        [v10 frame];
        Width = CGRectGetWidth(v15);
        [v10 frame];
        Height = CGRectGetHeight(v16);
        if (Height >= Width)
        {
          Height = Width;
        }

        v13 = [objc_opt_self() configurationWithPointSize:*(v7 + v9) * Height];
        [v10 setPreferredSymbolConfiguration:v13];
      }
    }
  }

  free(v2);
}

void sub_1003DE75C()
{
  *(v0 + 40) = 0;
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = sub_100572898();
  [v1 removeAnimationForKey:v4];

  *&v20[0] = v3;
  *(&v20[0] + 1) = v2;

  v21._countAndFlagsBits = 0x676E69646E65;
  v21._object = 0xE600000000000000;
  sub_100572A98(v21);
  v5 = sub_100572898();

  [v1 removeAnimationForKey:v5];

  [v1 setStrokeEnd:0.6];
  v6 = sub_100572898();
  v7 = [objc_opt_self() animationWithKeyPath:v6];

  v8 = [v1 presentationLayer];
  if (!v8)
  {
    v8 = v1;
  }

  v9 = sub_100572898();
  v10 = [v8 valueForKeyPath:v9];

  if (v10)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_100374094(v20);
  }

  isa = sub_100573038().super.super.isa;
  [v7 setFromValue:isa];

  v12 = sub_100573038().super.super.isa;
  [v7 setToValue:v12];

  v13 = v7;
  [v13 setRemovedOnCompletion:1];
  [v13 setFillMode:kCAFillModeBoth];
  [v13 setDuration:1.0];
  LODWORD(v14) = 2139095040;
  [v13 setRepeatCount:v14];
  v15 = CACurrentMediaTime();
  [v13 duration];
  [v13 setBeginTime:{(v15 - fmod(v15, v16))}];

  v17 = sub_100572898();
  [v1 addAnimation:v13 forKey:v17];
}

void sub_1003DEA74(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(v3 + 40) & 1) == 0)
  {
    *(v3 + 40) = 1;
    v7 = *(v3 + 32);
    v8 = [v7 presentationLayer];
    if (!v8)
    {
      v8 = v7;
    }

    v9 = sub_100572898();
    v10 = [v8 valueForKeyPath:v9];

    if (v10)
    {
      sub_100573D58();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    v11 = fmin(a3, 0.1);
    v42[0] = v40;
    v42[1] = v41;
    if (*(&v41 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_100374094(v42);
    }

    v12 = sub_100572898();
    v13 = objc_opt_self();
    v14 = [v13 animationWithKeyPath:v12];

    isa = sub_100573038().super.super.isa;
    [v14 setFromValue:isa];

    v16 = sub_100573038().super.super.isa;
    [v14 setToValue:v16];

    v17 = sub_100572898();
    v18 = [v13 animationWithKeyPath:v17];

    v19 = sub_10056CF88().super.super.isa;
    [v18 setToValue:v19];

    v20 = [objc_allocWithZone(CAAnimationGroup) init];
    sub_100009DCC(&qword_1006F3B50, &qword_100599780);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100582500;
    *(v21 + 32) = v14;
    *(v21 + 40) = v18;
    sub_1000D3B98(0, &unk_1006F2100, CAAnimation_ptr);
    v22 = v14;
    v23 = v18;
    v24 = sub_100572D08().super.isa;

    [v20 setAnimations:v24];

    v25 = v20;
    [v25 setDuration:((1.0 - (0.6 - v11)) * 6.28318531 + -6.28318531 + 6.28318531) * 0.159154943];
    [v25 setFillMode:kCAFillModeForwards];
    [v25 setRemovedOnCompletion:0];
    v26 = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
    v27 = objc_allocWithZone(v26);
    v28 = &v27[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    *v28 = 0;
    *(v28 + 1) = 0;
    v39.receiver = v27;
    v39.super_class = v26;
    v29 = objc_msgSendSuper2(&v39, "init");
    [v25 setDelegate:v29];

    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v3;
    *(v30 + 32) = v11;
    *(v30 + 40) = a1;
    *(v30 + 48) = a2;
    *(v30 + 56) = a3;
    v31 = &v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v32 = *&v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop];
    v33 = *&v29[OBJC_IVAR____TtCCC11MusicCoreUI20CircularProgressViewP33_2327D9925563EEC9FF3A63D4DED4721D12SpinAnimator8Delegate_onAnimationDidStop + 8];
    *v31 = sub_1003DF5D8;
    v31[1] = v30;
    v34 = v29;

    sub_1000F3E14(v32, v33);
    v36 = *(v3 + 16);
    v35 = *(v3 + 24);
    v37 = sub_100572898();
    [v7 removeAnimationForKey:v37];

    *&v42[0] = v36;
    *(&v42[0] + 1) = v35;

    v43._countAndFlagsBits = 0x676E69646E65;
    v43._object = 0xE600000000000000;
    sub_100572A98(v43);
    v38 = sub_100572898();

    [v7 addAnimation:v25 forKey:v38];
  }
}

uint64_t sub_1003DEF48()
{

  return swift_deallocObject();
}

void sub_1003DEFB4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (*(a5 + 40) == 1)
  {
    v11 = objc_opt_self();
    [v11 begin];
    [v11 setDisableActions:1];
    v12 = *(a5 + 32);
    v16 = *(a5 + 16);
    v17 = *(a5 + 24);

    v18._countAndFlagsBits = 0x676E69646E65;
    v18._object = 0xE600000000000000;
    sub_100572A98(v18);
    v13 = sub_100572898();

    [v12 removeAnimationForKey:{v13, v16, v17}];

    [v12 setStrokeStart:0.0];
    [v12 setStrokeEnd:a1];
    [v11 commit];
    v14 = COERCE_DOUBLE(a6(a5));
    if (v15)
    {
      v14 = a2;
    }

    [v12 setStrokeEnd:v14];
  }
}

id sub_1003DF1E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircularProgressView.SpinAnimator.Delegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003DF234()
{

  return swift_deallocClassInstance();
}

void _s11MusicCoreUI20CircularProgressViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView__state;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 10) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_image) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_imageScale) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_spinAnimator) = 0;
  v2 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_progressLayer;
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI20CircularProgressView_trackLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  sub_1005740F8();
  __break(1u);
}

uint64_t initializeBufferWithCopyOfBuffer for CircularProgressView.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularProgressView.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CircularProgressView.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1003DF51C(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003DF538(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t sub_1003DF590()
{

  return swift_deallocObject();
}

uint64_t sub_1003DF5F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_100574498() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1003DF688(uint64_t a1, uint64_t a2)
{
  v4 = sub_100571DC8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  __chkstk_darwin();
  v9 = &v51 - v8;
  v62 = sub_100009DCC(&qword_1006F1A88, &unk_10059D090);
  __chkstk_darwin();
  v67 = &v51 - v10;
  v69 = type metadata accessor for ArtworkImage.ViewModel(0);
  v11 = *(v69 - 8);
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  __chkstk_darwin();
  v64 = &v51 - v14;
  v65 = sub_100009DCC(&unk_1006F2E50, &qword_10059E8A0);
  __chkstk_darwin();
  v71 = &v51 - v15;
  v70 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin();
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v66 = &v51 - v19;
  v20 = *(a1 + 16);
  if (v20 == *(a2 + 16))
  {
    if (v20 && a1 != a2)
    {
      v54 = v9;
      v21 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v22 = a1 + v21;
      v23 = a2 + v21;
      v63 = (v11 + 48);
      v57 = (v5 + 48);
      v58 = v4;
      v51 = (v5 + 32);
      v52 = v7;
      v53 = (v5 + 8);
      v61 = *(v18 + 72);
      v24 = v64;
      v25 = v66;
      v59 = v13;
      v56 = v17;
      while (1)
      {
        sub_100401C78(v22, v25, type metadata accessor for ArtworkImage.GridPreview.Item);
        v68 = v22;
        sub_100401C78(v23, v17, type metadata accessor for ArtworkImage.GridPreview.Item);
        v26 = *v25 == *v17 && v25[1] == v17[1];
        if (!v26 && (sub_100574498() & 1) == 0)
        {
LABEL_32:
          sub_1004021C8(v17, type metadata accessor for ArtworkImage.GridPreview.Item);
          sub_1004021C8(v25, type metadata accessor for ArtworkImage.GridPreview.Item);
          goto LABEL_33;
        }

        v27 = v71;
        v28 = *(v70 + 20);
        v29 = *(v65 + 48);
        sub_10000CC8C(v25 + v28, v71, &qword_1006F3E50, &qword_1005971F0);
        sub_10000CC8C(v17 + v28, v27 + v29, &qword_1006F3E50, &qword_1005971F0);
        v30 = *v63;
        v31 = v27;
        v32 = v69;
        if ((*v63)(v31, 1, v69) == 1)
        {
          break;
        }

        v60 = v20;
        v34 = v71;
        sub_10000CC8C(v71, v24, &qword_1006F3E50, &qword_1005971F0);
        if (v30(v34 + v29, 1, v32) == 1)
        {
          sub_1004021C8(v24, type metadata accessor for ArtworkImage.ViewModel);
          v25 = v66;
LABEL_26:
          v48 = &unk_1006F2E50;
          v49 = &qword_10059E8A0;
          goto LABEL_31;
        }

        v35 = v59;
        sub_100401CE4(v71 + v29, v59, type metadata accessor for ArtworkImage.ViewModel);
        if ((sub_100571E48() & 1) == 0)
        {
          sub_1004021C8(v35, type metadata accessor for ArtworkImage.ViewModel);
          goto LABEL_30;
        }

        v36 = *(v69 + 20);
        v37 = *(v62 + 48);
        v38 = v67;
        sub_10000CC8C(v24 + v36, v67, &qword_1006F2C40, &qword_10059C100);
        sub_10000CC8C(v35 + v36, v38 + v37, &qword_1006F2C40, &qword_10059C100);
        v39 = *v57;
        v40 = v38;
        v41 = v58;
        if ((*v57)(v40, 1, v58) == 1)
        {
          sub_1004021C8(v35, type metadata accessor for ArtworkImage.ViewModel);
          v42 = v39(v67 + v37, 1, v41);
          v17 = v56;
          if (v42 != 1)
          {
            goto LABEL_29;
          }

          sub_10001036C(v67, &qword_1006F2C40, &qword_10059C100);
          v24 = v64;
          sub_1004021C8(v64, type metadata accessor for ArtworkImage.ViewModel);
          v25 = v66;
          v20 = v60;
          goto LABEL_18;
        }

        v43 = v67;
        v44 = v54;
        sub_10000CC8C(v67, v54, &qword_1006F2C40, &qword_10059C100);
        if (v39(v43 + v37, 1, v41) == 1)
        {
          sub_1004021C8(v59, type metadata accessor for ArtworkImage.ViewModel);
          (*v53)(v44, v41);
          v17 = v56;
LABEL_29:
          sub_10001036C(v67, &qword_1006F1A88, &unk_10059D090);
          v24 = v64;
LABEL_30:
          v25 = v66;
          sub_1004021C8(v24, type metadata accessor for ArtworkImage.ViewModel);
          v48 = &qword_1006F3E50;
          v49 = &qword_1005971F0;
LABEL_31:
          sub_10001036C(v71, v48, v49);
          goto LABEL_32;
        }

        v45 = v52;
        (*v51)(v52, v43 + v37, v41);
        sub_1003FFF94(&qword_1006F1A90, &type metadata accessor for Artwork.CropStyle, &protocol conformance descriptor for Artwork.CropStyle);
        v55 = sub_1005727E8();
        v46 = *v53;
        (*v53)(v45, v41);
        sub_1004021C8(v59, type metadata accessor for ArtworkImage.ViewModel);
        v46(v44, v41);
        sub_10001036C(v43, &qword_1006F2C40, &qword_10059C100);
        v24 = v64;
        sub_1004021C8(v64, type metadata accessor for ArtworkImage.ViewModel);
        sub_10001036C(v71, &qword_1006F3E50, &qword_1005971F0);
        v17 = v56;
        v25 = v66;
        v20 = v60;
        if ((v55 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_21:
        v47 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(v25 + *(v70 + 24), v17 + *(v70 + 24));
        sub_1004021C8(v17, type metadata accessor for ArtworkImage.GridPreview.Item);
        sub_1004021C8(v25, type metadata accessor for ArtworkImage.GridPreview.Item);
        if (v47)
        {
          v23 += v61;
          v22 = v68 + v61;
          if (--v20)
          {
            continue;
          }
        }

        return v47 & 1;
      }

      v33 = v30(v71 + v29, 1, v32);
      v25 = v66;
      if (v33 != 1)
      {
        goto LABEL_26;
      }

LABEL_18:
      sub_10001036C(v71, &qword_1006F3E50, &qword_1005971F0);
      goto LABEL_21;
    }

    v47 = 1;
  }

  else
  {
LABEL_33:
    v47 = 0;
  }

  return v47 & 1;
}

uint64_t sub_1003DFF9C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11MusicCoreUI16PlaylistCuratorsO4ViewV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = sub_100571E58();
  v4 = *(v46 - 8);
  __chkstk_darwin();
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v44 = &v34 - v6;
  v43 = sub_100009DCC(&qword_1006F2F78, &qword_10059F6E0);
  __chkstk_darwin();
  v8 = &v34 - v7;
  v42 = type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin();
  v47 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v45 = (&v34 - v11);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = (v4 + 48);
    v35 = (v4 + 32);
    v36 = (v4 + 48);
    v37 = (v4 + 8);
    v41 = *(v10 + 72);
    v17 = v44;
    v18 = v45;
    while (1)
    {
      sub_100401C78(v14, v18, type metadata accessor for PlaylistCurators.Curator);
      v19 = v47;
      sub_100401C78(v15, v47, type metadata accessor for PlaylistCurators.Curator);
      v20 = *v18 == *v19 && v18[1] == v19[1];
      if (!v20 && (sub_100574498() & 1) == 0)
      {
        break;
      }

      v21 = v18;
      v22 = v16;
      v23 = *(v42 + 20);
      v24 = *(v43 + 48);
      sub_10000CC8C(v21 + v23, v8, &unk_1006F3B10, &unk_100599150);
      sub_10000CC8C(v47 + v23, &v8[v24], &unk_1006F3B10, &unk_100599150);
      v25 = *v22;
      if ((*v22)(v8, 1, v46) == 1)
      {
        if (v25(&v8[v24], 1, v46) != 1)
        {
          goto LABEL_19;
        }

        v16 = v22;
        sub_10001036C(v8, &unk_1006F3B10, &unk_100599150);
        sub_1004021C8(v47, type metadata accessor for PlaylistCurators.Curator);
        v18 = v45;
        sub_1004021C8(v45, type metadata accessor for PlaylistCurators.Curator);
      }

      else
      {
        v40 = v14;
        v26 = v8;
        sub_10000CC8C(v8, v17, &unk_1006F3B10, &unk_100599150);
        if (v25(&v8[v24], 1, v46) == 1)
        {
          (*v37)(v17, v46);
LABEL_19:
          sub_10001036C(v8, &qword_1006F2F78, &qword_10059F6E0);
          v18 = v45;
          break;
        }

        v27 = &v8[v24];
        v28 = v38;
        v29 = v46;
        (*v35)(v38, v27, v46);
        sub_1003FFF94(&qword_1006F2F80, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v39 = sub_1005727E8();
        v30 = *v37;
        v31 = v28;
        v32 = v44;
        (*v37)(v31, v29);
        v17 = v32;
        v30(v32, v29);
        sub_10001036C(v26, &unk_1006F3B10, &unk_100599150);
        sub_1004021C8(v47, type metadata accessor for PlaylistCurators.Curator);
        v18 = v45;
        v16 = v36;
        sub_1004021C8(v45, type metadata accessor for PlaylistCurators.Curator);
        v8 = v26;
        v14 = v40;
        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v41;
      v14 += v41;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_1004021C8(v47, type metadata accessor for PlaylistCurators.Curator);
    sub_1004021C8(v18, type metadata accessor for PlaylistCurators.Curator);
  }

  return 0;
}

uint64_t Collaboration.Management.Model.__allocating_init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1003FF37C(a1, a2);

  return v4;
}

uint64_t Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1003FF37C(a1, a2);

  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.Model.playlist(char *a1)
{
  v2 = sub_1005722D8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v12 - v7;
  v9 = *(v3 + 16);
  v9(&v12 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  sub_10056E438();
  v10 = *(v3 + 8);
  v10(a1, v2);
  return (v10)(v8, v2);
}

uint64_t sub_1003E0780(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static ApplicationCapabilities.shared.getter(v3);
    sub_100108D2C(v3);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10056E488();
  }

  return result;
}

uint64_t sub_1003E081C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_100009DCC(&qword_1006F33F0, &qword_10059EE58);
  v5[7] = swift_task_alloc();
  v6 = sub_100009DCC(&qword_1006F33F8, &qword_10059EE60);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_100009DCC(&qword_1006F3400, &qword_10059EE68);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_100009DCC(&qword_1006F3408, &qword_10059EE70);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003E09F0, 0, 0);
}

uint64_t sub_1003E09F0()
{
  sub_1005722D8();
  sub_100571FD8();
  sub_1003FFF94(&qword_1006F3410, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  sub_100571228();
  swift_getKeyPath();
  v0[2] = sub_1005721A8();
  v0[3] = v1;
  sub_100571218();

  sub_100572F08();
  v0[17] = sub_100572EF8();
  v3 = sub_100572E78();

  return _swift_task_switch(sub_1003E0B5C, v3, v2);
}

uint64_t sub_1003E0B5C()
{

  sub_100010BC0(&qword_1006F3418, &qword_1006F3408, &qword_10059EE70, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  *(v0 + 144) = sub_10056D5D8();

  return _swift_task_switch(sub_1003E0C08, 0, 0);
}

uint64_t sub_1003E0C08()
{
  v1 = v0[13];
  v15 = v0[14];
  v16 = v0[16];
  v13 = v0[12];
  v14 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v11 = v0[8];
  v12 = v0[11];
  v5 = v0[6];
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = v0[18];

  sub_10056D5F8();

  sub_1000D3B98(0, &qword_1006F3420, OS_dispatch_queue_ptr);
  v6 = sub_1005735E8();
  v0[4] = v6;
  v7 = sub_1005735C8();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100010BC0(&qword_1006F3428, &qword_1006F33F8, &qword_10059EE60, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100405C34();
  sub_10056E4E8();
  sub_10001036C(v4, &qword_1006F33F0, &qword_10059EE58);

  (*(v3 + 8))(v2, v11);
  swift_allocObject();
  swift_weakInit();
  sub_100010BC0(&qword_1006F3438, &qword_1006F3400, &qword_10059EE68, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v8 = sub_10056E518();

  (*(v13 + 8))(v1, v12);
  (*(v14 + 8))(v16, v15);
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = v8;

  v9 = v0[1];

  return v9();
}

void sub_1003E0ED0(uint64_t a1, uint64_t a2)
{
  v220 = a1;
  sub_100009DCC(&unk_1006F2A60, &qword_10059A450);
  __chkstk_darwin();
  v216 = &v182 - v3;
  v4 = sub_100571FD8();
  v214 = *(v4 - 8);
  __chkstk_darwin();
  v228 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v213 = &v182 - v6;
  __chkstk_darwin();
  v231 = &v182 - v7;
  __chkstk_darwin();
  v223 = &v182 - v8;
  v225 = sub_100009DCC(&qword_1006F3440, &qword_10059EEA0);
  v205 = *(v225 - 8);
  __chkstk_darwin();
  v204 = &v182 - v9;
  v203 = sub_100009DCC(&qword_1006F3448, &qword_10059EEA8);
  __chkstk_darwin();
  v224 = &v182 - v10;
  v196 = sub_10056CAA8();
  v194 = *(v196 - 8);
  __chkstk_darwin();
  v189 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_100009DCC(&qword_1006F3450, &qword_10059EEB0);
  __chkstk_darwin();
  v195 = &v182 - v12;
  v202 = sub_1005722D8();
  v201 = *(v202 - 1);
  __chkstk_darwin();
  v199 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v200 = &v182 - v14;
  __chkstk_darwin();
  v192 = &v182 - v15;
  sub_100009DCC(&qword_1006F2E20, &qword_10059E710);
  __chkstk_darwin();
  v190 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v197 = &v182 - v17;
  __chkstk_darwin();
  v198 = &v182 - v18;
  sub_100009DCC(&qword_1006F2E38, &qword_10059E848);
  __chkstk_darwin();
  v222 = &v182 - v19;
  v215 = sub_100571F98();
  v210 = *(v215 - 8);
  __chkstk_darwin();
  v208 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v209 = &v182 - v21;
  v229 = sub_100572048();
  v230 = *(v229 - 8);
  __chkstk_darwin();
  v211 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_100009DCC(&qword_1006F3458, &qword_10059EEB8);
  v235 = *(v234 - 8);
  __chkstk_darwin();
  v217 = &v182 - v23;
  v232 = sub_10056DF88();
  v226 = *(v232 - 8);
  __chkstk_darwin();
  v218 = &v182 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v207 = &v182 - v25;
  __chkstk_darwin();
  v206 = &v182 - v26;
  __chkstk_darwin();
  v227 = &v182 - v27;
  v212 = sub_100009DCC(&qword_1006F2E18, &qword_10059E708);
  __chkstk_darwin();
  v191 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = &v182 - v29;
  __chkstk_darwin();
  v31 = &v182 - v30;
  __chkstk_darwin();
  v33 = &v182 - v32;
  __chkstk_darwin();
  v236 = &v182 - v34;
  sub_100009DCC(&qword_1006F3460, &qword_10059EEC0);
  __chkstk_darwin();
  v36 = &v182 - v35;
  sub_100009DCC(&qword_1006F3468, &qword_10059EEC8);
  __chkstk_darwin();
  v219 = (&v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v39 = &v182 - v38;
  __chkstk_darwin();
  v41 = &v182 - v40;
  __chkstk_darwin();
  v43 = &v182 - v42;
  __chkstk_darwin();
  v237 = &v182 - v44;
  swift_beginAccess();
  v233 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v46 = *(Strong + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse);

    if (v46)
    {
      v47 = sub_10056D5E8();

      if (v47)
      {
        v188 = v4;
        sub_10000CC8C(v220, v36, &qword_1006F3460, &qword_10059EEC0);
        v48 = sub_100009DCC(&qword_1006F3470, &qword_10059EED0);
        v49 = *(v48 - 8);
        if ((*(v49 + 48))(v36, 1, v48) == 1)
        {
          sub_10001036C(v36, &qword_1006F3460, &qword_10059EEC0);
        }

        else
        {
          v50 = sub_100571248();
          (*(v49 + 8))(v36, v48);
          if (*(v50 + 16))
          {
            v51 = v234;
            (*(v235 + 16))(v237, v50 + ((*(v235 + 80) + 32) & ~*(v235 + 80)), v234);

            v52 = 0;
            v53 = v236;
            goto LABEL_10;
          }
        }

        v52 = 1;
        v53 = v236;
        v51 = v234;
LABEL_10:
        v54 = v235;
        v55 = v237;
        (*(v235 + 56))(v237, v52, 1, v51);
        sub_10000CC8C(v55, v43, &qword_1006F3468, &qword_10059EEC8);
        v56 = *(v54 + 48);
        v185 = v54 + 48;
        v184 = v56;
        if (v56(v43, 1, v51) == 1)
        {
          sub_10001036C(v43, &qword_1006F3468, &qword_10059EEC8);
          v57 = v230;
          (*(v230 + 56))(v53, 1, 1, v229);
        }

        else
        {
          swift_getKeyPath();
          sub_100570F38();
          v53 = v236;

          (*(v54 + 8))(v43, v51);
          v57 = v230;
        }

        v58 = v227;
        v59 = Logger.collaboration.unsafeMutableAddressor();
        v60 = v226;
        v61 = *(v226 + 16);
        v186 = v59;
        v62 = v232;
        v220 = v226 + 16;
        v187 = v61;
        v61(v58);
        sub_10000CC8C(v237, v41, &qword_1006F3468, &qword_10059EEC8);
        sub_10000CC8C(v53, v33, &qword_1006F2E18, &qword_10059E708);
        v63 = sub_10056DF68();
        v183 = sub_100573448();
        if (os_log_type_enabled(v63, v183))
        {
          v64 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          v239 = v182;
          *v64 = 136446466;
          sub_10000CC8C(v41, v39, &qword_1006F3468, &qword_10059EEC8);
          v65 = sub_100572978();
          v67 = v66;
          sub_10001036C(v41, &qword_1006F3468, &qword_10059EEC8);
          v68 = sub_10037A2AC(v65, v67, &v239);

          *(v64 + 4) = v68;
          *(v64 + 12) = 2082;
          sub_10000CC8C(v33, v31, &qword_1006F2E18, &qword_10059E708);
          v69 = sub_100572978();
          v71 = v70;
          sub_10001036C(v33, &qword_1006F2E18, &qword_10059E708);
          v72 = v69;
          v57 = v230;
          v73 = sub_10037A2AC(v72, v71, &v239);

          *(v64 + 14) = v73;
          _os_log_impl(&_mh_execute_header, v63, v183, "    [Management] Did update collaborative playlist with:\n        playlist=%{public}s)\n        collaboration=%{public}s", v64, 0x16u);
          swift_arrayDestroy();

          v62 = v232;

          v74 = *(v60 + 8);
          v74(v227, v62);
        }

        else
        {

          sub_10001036C(v33, &qword_1006F2E18, &qword_10059E708);
          sub_10001036C(v41, &qword_1006F3468, &qword_10059EEC8);
          v74 = *(v60 + 8);
          v74(v58, v62);
        }

        v75 = v235;
        v76 = v229;
        v77 = v219;
        sub_10000CC8C(v237, v219, &qword_1006F3468, &qword_10059EEC8);
        v78 = v234;
        v79 = v184(v77, 1, v234);
        v80 = v222;
        v81 = v221;
        if (v79 == 1)
        {
          sub_10001036C(v77, &qword_1006F3468, &qword_10059EEC8);
LABEL_25:
          v97 = v218;
          v187(v218, v186, v62);
          v98 = sub_10056DF68();
          v99 = sub_100573448();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            *v100 = 0;
            _os_log_impl(&_mh_execute_header, v98, v99, "[Management] Dismissing management sheet", v100, 2u);
          }

          v74(v97, v62);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v240[0] = 1;
            sub_10056E488();
          }

LABEL_29:
          sub_10001036C(v236, &qword_1006F2E18, &qword_10059E708);
          sub_10001036C(v237, &qword_1006F3468, &qword_10059EEC8);
          return;
        }

        v82 = v77;
        v83 = v217;
        (*(v75 + 32))(v217, v82, v78);
        sub_10000CC8C(v236, v81, &qword_1006F2E18, &qword_10059E708);
        v227 = *(v57 + 48);
        if ((v227)(v81, 1, v76) == 1)
        {
          (*(v75 + 8))(v83, v78);
          sub_10001036C(v81, &qword_1006F2E18, &qword_10059E708);
          v62 = v232;
          goto LABEL_25;
        }

        v212 = v74;
        v84 = v211;
        (*(v57 + 32))(v211, v81, v76);
        sub_100572018();
        v85 = v210;
        v86 = v215;
        if ((*(v210 + 48))(v80, 1, v215) == 1)
        {
          (*(v57 + 8))(v84, v76);
          (*(v75 + 8))(v217, v234);
          sub_10001036C(v80, &qword_1006F2E38, &qword_10059E848);
LABEL_24:
          v62 = v232;
          v74 = v212;
          goto LABEL_25;
        }

        v87 = v209;
        (*(v85 + 32))(v209, v80, v86);
        v88 = v208;
        (*(v85 + 104))(v208, enum case for Playlist.Collaborator.Status.notJoined(_:), v86);
        sub_1003FFF94(&unk_1006F2E40, &type metadata accessor for Playlist.Collaborator.Status, &protocol conformance descriptor for Playlist.Collaborator.Status);
        v89 = v85;
        v90 = sub_1005727E8();
        v91 = v215;
        v92 = v90;
        v94 = *(v89 + 8);
        v93 = v89 + 8;
        v95 = v88;
        v96 = v94;
        v94(v95, v215);
        if (v92)
        {
          v96(v87, v91);
          (*(v230 + 8))(v211, v76);
          (*(v75 + 8))(v217, v234);
          goto LABEL_24;
        }

        v210 = v93;
        swift_beginAccess();
        v101 = swift_weakLoadStrong();
        v102 = v230;
        if (!v101 || (swift_getKeyPath(), swift_getKeyPath(), sub_10056E478(), , , , v239 != 1))
        {
LABEL_47:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v120 = v200;
            sub_100570F28();
            swift_getKeyPath();
            swift_getKeyPath();
            v121 = v201;
            v122 = v202;
            (*(v201 + 16))(v199, v120, v202);
            sub_10056E488();
            (*(v121 + 8))(v120, v122);
          }

          swift_beginAccess();
          v123 = swift_weakLoadStrong();
          v124 = v224;
          if (v123)
          {
            v125 = Playlist.Collaboration.isOpenInvitation.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v239) = v125 & 1;
            sub_10056E488();
          }

          v202 = v96;
          v126 = v204;
          sub_100570F48();
          v127 = v205;
          v128 = v225;
          (*(v205 + 16))(v124, v126, v225);
          v129 = *(v203 + 36);
          v130 = sub_100010BC0(&qword_1006F3478, &qword_1006F3440, &qword_10059EEA0, &protocol conformance descriptor for MusicItemCollection<A>);
          sub_1005731B8();
          (*(v127 + 8))(v126, v128);
          swift_beginAccess();
          sub_100573208();
          if (*&v129[v124] == v239)
          {
            v218 = _swiftEmptyArrayStorage;
            v222 = _swiftEmptyArrayStorage;
          }

          else
          {
            v145 = v214;
            v227 = (v214 + 16);
            v146 = (v214 + 32);
            v219 = (v214 + 8);
            v208 = (v214 + 56);
            v222 = _swiftEmptyArrayStorage;
            v218 = _swiftEmptyArrayStorage;
            v221 = v129;
            do
            {
              v152 = v130;
              v153 = sub_1005732E8();
              v154 = *v227;
              v155 = v223;
              v156 = v188;
              (*v227)(v223);
              v153(&v239, 0);
              v130 = v152;
              sub_100573218();
              v157 = *v146;
              v158 = v231;
              (*v146)(v231, v155, v156);
              v159 = sub_100571FC8();
              if (v159 == 2 || (v159 & 1) == 0)
              {
                v154(v228, v158, v156);
                v164 = v222;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v164 = sub_100474ABC(0, *(v164 + 2) + 1, 1, v164);
                }

                v166 = *(v164 + 2);
                v165 = *(v164 + 3);
                if (v166 >= v165 >> 1)
                {
                  v164 = sub_100474ABC((v165 > 1), v166 + 1, 1, v164);
                }

                *(v164 + 2) = v166 + 1;
                v167 = (*(v145 + 80) + 32) & ~*(v145 + 80);
                v222 = v164;
                v157(&v164[v167 + *(v145 + 72) * v166], v228, v156);
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v147 = sub_10056E468();
                  v148 = v216;
                  v149 = v231;
                  sub_1003FDAB0(v231, v216);
                  v150 = v148;
                  v145 = v214;
                  sub_10001036C(v150, &unk_1006F2A60, &qword_10059A450);
                  v147(&v239, 0);
                  v151 = v149;
                  v130 = v152;

                  (*v219)(v151, v188);
                }

                else
                {
                  (*v219)(v231, v156);
                  v168 = v216;
                  (*v208)(v216, 1, 1, v156);
                  sub_10001036C(v168, &unk_1006F2A60, &qword_10059A450);
                }
              }

              else
              {
                v154(v213, v158, v156);
                v160 = v218;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v160 = sub_100474ABC(0, *(v160 + 2) + 1, 1, v160);
                }

                v218 = v160;
                v162 = *(v160 + 2);
                v161 = *(v160 + 3);
                if (v162 >= v161 >> 1)
                {
                  v218 = sub_100474ABC((v161 > 1), v162 + 1, 1, v218);
                }

                (*(v145 + 8))(v158, v156);
                v163 = v218;
                *(v218 + 2) = v162 + 1;
                v157(&v163[((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v162], v213, v156);
              }

              v124 = v224;
              sub_100573208();
            }

            while (*&v221[v124] != v239);
          }

          sub_10001036C(v124, &qword_1006F3448, &qword_10059EEA8);
          swift_beginAccess();
          v131 = swift_weakLoadStrong();
          v132 = v222;
          if (v131)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v238[1] = v132;

            sub_10056E488();
          }

          swift_beginAccess();
          v133 = swift_weakLoadStrong();
          v134 = v206;
          v135 = v218;
          if (v133)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v238[0] = v135;

            sub_10056E488();
          }

          v136 = v232;
          v187(v134, v186, v232);

          v137 = sub_10056DF68();
          v138 = sub_100573418();

          if (os_log_type_enabled(v137, v138))
          {
            v139 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v238[0] = v140;
            *v139 = 136315138;
            v141 = sub_100572D38();
            v143 = v142;

            v144 = sub_10037A2AC(v141, v143, v238);

            *(v139 + 4) = v144;
            _os_log_impl(&_mh_execute_header, v137, v138, "[Management] pendingCollaborators=%s", v139, 0xCu);
            sub_100010474(v140);
          }

          else
          {
          }

          v169 = v134;
          v170 = v212;
          v212(v169, v136);
          v171 = v207;
          v187(v207, v186, v136);

          v172 = sub_10056DF68();
          v173 = sub_100573418();

          if (os_log_type_enabled(v172, v173))
          {
            v174 = v171;
            v175 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            v238[0] = v176;
            *v175 = 136315138;
            v177 = sub_100572D38();
            v178 = v170;
            v180 = v179;

            v181 = sub_10037A2AC(v177, v180, v238);

            *(v175 + 4) = v181;
            _os_log_impl(&_mh_execute_header, v172, v173, "[Management] activeCollaborators=%s", v175, 0xCu);
            sub_100010474(v176);

            v178(v174, v232);
          }

          else
          {

            v170(v171, v136);
          }

          (v202)(v209, v215);
          (*(v230 + 8))(v211, v229);
          (*(v235 + 8))(v217, v234);
          goto LABEL_29;
        }

        swift_beginAccess();
        v103 = swift_weakLoadStrong();
        v104 = v194;
        v105 = v197;
        if (v103)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v106 = v192;
          sub_10056E478();

          v107 = v191;
          sub_100572058();
          (*(v201 + 8))(v106, v202);
          if ((v227)(v107, 1, v76) != 1)
          {
            v108 = v198;
            sub_100572038();
            (*(v102 + 8))(v107, v76);
            v109 = v196;
LABEL_38:
            sub_100572038();
            v110 = *(v193 + 48);
            v111 = v195;
            sub_10000CC8C(v108, v195, &qword_1006F2E20, &qword_10059E710);
            sub_10000CC8C(v105, v111 + v110, &qword_1006F2E20, &qword_10059E710);
            v112 = v104;
            v113 = *(v104 + 48);
            if (v113(v111, 1, v109) == 1)
            {
              sub_10001036C(v105, &qword_1006F2E20, &qword_10059E710);
              sub_10001036C(v108, &qword_1006F2E20, &qword_10059E710);
              if (v113(v111 + v110, 1, v109) == 1)
              {
                sub_10001036C(v111, &qword_1006F2E20, &qword_10059E710);
                goto LABEL_47;
              }
            }

            else
            {
              v114 = v190;
              sub_10000CC8C(v111, v190, &qword_1006F2E20, &qword_10059E710);
              if (v113(v111 + v110, 1, v109) != 1)
              {
                v115 = v111 + v110;
                v116 = v189;
                (*(v112 + 32))(v189, v115, v109);
                sub_1003FFF94(&qword_1006F3480, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v117 = v114;
                v118 = sub_1005727E8();
                v119 = *(v112 + 8);
                v119(v116, v109);
                sub_10001036C(v197, &qword_1006F2E20, &qword_10059E710);
                sub_10001036C(v198, &qword_1006F2E20, &qword_10059E710);
                v119(v117, v109);
                sub_10001036C(v111, &qword_1006F2E20, &qword_10059E710);
                if (v118)
                {
                  goto LABEL_47;
                }

LABEL_44:
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  LOBYTE(v239) = 0;
                  sub_10056E488();
                }

                goto LABEL_47;
              }

              sub_10001036C(v197, &qword_1006F2E20, &qword_10059E710);
              sub_10001036C(v198, &qword_1006F2E20, &qword_10059E710);
              (*(v112 + 8))(v114, v109);
            }

            sub_10001036C(v111, &qword_1006F3450, &qword_10059EEB0);
            goto LABEL_44;
          }

          sub_10001036C(v107, &qword_1006F2E18, &qword_10059E708);
        }

        v108 = v198;
        v109 = v196;
        (*(v104 + 56))(v198, 1, 1, v196);
        goto LABEL_38;
      }
    }
  }
}

double sub_1003E33DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return result;
}

double sub_1003E3454(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return result;
}

uint64_t sub_1003E34D0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1005722D8();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v6, v9, v3);

  sub_10056E488();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1003E3690()
{
  v0 = sub_100571F98();
  v29 = *(v0 - 8);
  __chkstk_darwin();
  v27 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100009DCC(&qword_1006F2E30, &qword_10059E840);
  __chkstk_darwin();
  v3 = &v26 - v2;
  v4 = sub_1005722D8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2E18, &qword_10059E708);
  __chkstk_darwin();
  v9 = &v26 - v8;
  sub_100009DCC(&qword_1006F2E38, &qword_10059E848);
  __chkstk_darwin();
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v26 - v11;
  __chkstk_darwin();
  v14 = &v26 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  sub_100572058();
  (*(v5 + 8))(v7, v4);
  v15 = sub_100572048();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_10001036C(v9, &qword_1006F2E18, &qword_10059E708);
    v17 = v29;
    (*(v29 + 56))(v14, 1, 1, v0);
  }

  else
  {
    sub_100572018();
    (*(v16 + 8))(v9, v15);
    v17 = v29;
  }

  (*(v17 + 104))(v12, enum case for Playlist.Collaborator.Status.pending(_:), v0);
  (*(v17 + 56))(v12, 0, 1, v0);
  v18 = *(v30 + 48);
  sub_10000CC8C(v14, v3, &qword_1006F2E38, &qword_10059E848);
  sub_10000CC8C(v12, &v3[v18], &qword_1006F2E38, &qword_10059E848);
  v19 = *(v17 + 48);
  if (v19(v3, 1, v0) != 1)
  {
    v21 = v28;
    sub_10000CC8C(v3, v28, &qword_1006F2E38, &qword_10059E848);
    if (v19(&v3[v18], 1, v0) != 1)
    {
      v22 = v27;
      (*(v17 + 32))(v27, &v3[v18], v0);
      sub_1003FFF94(&unk_1006F2E40, &type metadata accessor for Playlist.Collaborator.Status, &protocol conformance descriptor for Playlist.Collaborator.Status);
      v23 = v21;
      v20 = sub_1005727E8();
      v24 = *(v17 + 8);
      v24(v22, v0);
      sub_10001036C(v12, &qword_1006F2E38, &qword_10059E848);
      sub_10001036C(v14, &qword_1006F2E38, &qword_10059E848);
      v24(v23, v0);
      sub_10001036C(v3, &qword_1006F2E38, &qword_10059E848);
      return v20 & 1;
    }

    sub_10001036C(v12, &qword_1006F2E38, &qword_10059E848);
    sub_10001036C(v14, &qword_1006F2E38, &qword_10059E848);
    (*(v17 + 8))(v21, v0);
    goto LABEL_9;
  }

  sub_10001036C(v12, &qword_1006F2E38, &qword_10059E848);
  sub_10001036C(v14, &qword_1006F2E38, &qword_10059E848);
  if (v19(&v3[v18], 1, v0) != 1)
  {
LABEL_9:
    sub_10001036C(v3, &qword_1006F2E30, &qword_10059E840);
    v20 = 0;
    return v20 & 1;
  }

  sub_10001036C(v3, &qword_1006F2E38, &qword_10059E848);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1003E3CCC()
{
  v0 = sub_1005722D8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v6[15] == 1 && (sub_1003E43EC() & 1) == 0)
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v4 = sub_100572138();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t sub_1003E3E44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    sub_100381DC4(v1);
  }

  return v1;
}

uint64_t sub_1003E3FA8()
{
  sub_10056CC38();
  __chkstk_darwin();
  v0 = sub_100572888();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  sub_100572868();
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v6 = *(v13 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v7 = *(v13 + 16);

  if (v7 == 1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_100572858();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    sub_100572848(v14);
    v13 = v6;
    sub_100572828();
    v8._countAndFlagsBits = 0xD000000000000012;
    v8._object = 0x80000001005B9240;
  }

  else
  {
    sub_100572858();
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    sub_100572848(v15);
    v13 = v7;
    sub_100572828();
    if (v6)
    {
      v16._countAndFlagsBits = 0x2064656E696F6A20;
      v16._object = 0xAC00000020A280E2;
      sub_100572848(v16);
      v13 = v6;
      sub_100572828();
      v8._countAndFlagsBits = 0x676E69646E657020;
      v8._object = 0xE800000000000000;
    }

    else
    {
      v8._object = 0x80000001005B9220;
      v8._countAndFlagsBits = 0xD000000000000011;
    }
  }

  sub_100572848(v8);
  sub_100572878();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v10 = qword_1006FDF00;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v1 + 8))(v5, v0);
  return v9;
}

uint64_t sub_1003E43EC()
{
  v0 = sub_1005722D8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2E18, &qword_10059E708);
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_100009DCC(&qword_1006F2E20, &qword_10059E710);
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = sub_10056CAA8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v19 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  sub_100572058();
  (*(v1 + 8))(v3, v0);
  v12 = sub_100572048();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_10001036C(v5, &qword_1006F2E18, &qword_10059E708);
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  else
  {
    sub_100572038();
    (*(v13 + 8))(v5, v12);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v15 = v19;
      (*(v9 + 32))(v19, v7, v8);
      v16 = v20;
      sub_10056CA98();
      v14 = sub_10056C9F8();
      v17 = *(v9 + 8);
      v17(v16, v8);
      v17(v15, v8);
      return v14 & 1;
    }
  }

  sub_10001036C(v7, &qword_1006F2E20, &qword_10059E710);
  v14 = 1;
  return v14 & 1;
}

uint64_t sub_1003E47BC()
{
  v1 = v0;
  sub_100572868();
  __chkstk_darwin();
  v60 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10056CD08();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin();
  v68 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10056C538();
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin();
  v71 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CC38();
  __chkstk_darwin();
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100572888();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin();
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v58 - v10;
  v11 = sub_1005722D8();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v59 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v58 - v14;
  __chkstk_darwin();
  v16 = &v58 - v15;
  sub_100009DCC(&qword_1006F2E18, &qword_10059E708);
  __chkstk_darwin();
  v18 = &v58 - v17;
  sub_100009DCC(&qword_1006F2E20, &qword_10059E710);
  __chkstk_darwin();
  v20 = &v58 - v19;
  v21 = sub_10056CAA8();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v67 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v58 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  v75 = v1;
  sub_10056E478();

  sub_100572058();
  v25 = *(v12 + 8);
  v74 = v11;
  v25(v16, v11);
  v26 = sub_100572048();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v18, 1, v26) == 1)
  {
    sub_10001036C(v18, &qword_1006F2E18, &qword_10059E708);
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_4:
    sub_10001036C(v20, &qword_1006F2E20, &qword_10059E710);
    return 0;
  }

  sub_100572038();
  (*(v27 + 8))(v18, v26);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_4;
  }

  v29 = *(v22 + 32);
  v58 = v21;
  v29(v76, v20, v21);
  v30 = v22;
  if (sub_1003E43EC() & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), v31 = v61, sub_10056E478(), , , v32 = sub_100572138(), v25(v31, v74), v32 != 2) && (v32)
  {
    v33 = v64;
    sub_100572818();
    v35 = v65;
    v34 = v66;
    (*(v65 + 16))(v62, v33, v66);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v36 = qword_1006FDF00;
    sub_10056CBC8();
    v37 = sub_100572948();
    (*(v35 + 8))(v33, v34);
    (*(v30 + 8))(v76, v58);
  }

  else
  {
    v38 = v68;
    sub_10056CC98();
    sub_100009DCC(&qword_1006F2E28, &qword_10059E718);
    v39 = sub_10056CCF8();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10057B510;
    (*(v40 + 104))(v42 + v41, enum case for Calendar.Component.day(_:), v39);
    sub_10037CCA4(v42);
    swift_setDeallocating();
    (*(v40 + 8))(v42 + v41, v39);
    swift_deallocClassInstance();
    v43 = v67;
    sub_10056CA98();
    v44 = v71;
    v45 = v76;
    sub_10056CC88();

    v46 = *(v30 + 8);
    v47 = v58;
    v46(v43, v58);
    (*(v69 + 8))(v38, v70);
    v48 = sub_10056C508();
    if (v49)
    {
      (*(v72 + 8))(v44, v73);
      v46(v45, v47);
      return 0;
    }

    v50 = v48;
    swift_getKeyPath();
    swift_getKeyPath();
    v51 = v59;
    sub_10056E478();

    v52 = sub_100572138();
    v25(v51, v74);
    if (v52 == 2 || (v52 & 1) == 0)
    {
      sub_100572858();
      v79._object = 0x80000001005B9120;
      v79._countAndFlagsBits = 0xD000000000000010;
      sub_100572848(v79);
      v77 = v50;
      sub_100572828();
      v53._countAndFlagsBits = 0x2E29732879616420;
      v53._object = 0xE800000000000000;
    }

    else
    {
      sub_100572858();
      v78._object = 0x80000001005B9120;
      v78._countAndFlagsBits = 0xD000000000000010;
      sub_100572848(v78);
      v77 = v50;
      sub_100572828();
      v53._countAndFlagsBits = 0xD00000000000006CLL;
      v53._object = 0x80000001005B9140;
    }

    sub_100572848(v53);
    v54 = v64;
    sub_100572878();
    v56 = v65;
    v55 = v66;
    (*(v65 + 16))(v62, v54, v66);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v57 = qword_1006FDF00;
    sub_10056CBC8();
    v37 = sub_100572948();
    (*(v56 + 8))(v54, v55);
    (*(v72 + 8))(v44, v73);
    v46(v45, v58);
  }

  return v37;
}

uint64_t sub_1003E5330@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1005722D8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2E18, &qword_10059E708);
  __chkstk_darwin();
  v7 = &v14 - v6;
  if (sub_1003E43EC())
  {
    v8 = sub_10056C8A8();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    sub_100572058();
    (*(v3 + 8))(v5, v2);
    v11 = sub_100572048();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      sub_10001036C(v7, &qword_1006F2E18, &qword_10059E708);
      v13 = sub_10056C8A8();
      return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    else
    {
      sub_100571FE8();
      return (*(v12 + 8))(v7, v11);
    }
  }
}

uint64_t sub_1003E55E4@<X0>(uint64_t a1@<X8>)
{
  sub_100009DCC(&qword_1006F2248, &qword_10059DBE0);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  swift_beginAccess();
  sub_10000CC8C(v1 + v7, v6, &qword_1006F2248, &qword_10059DBE0);
  v8 = sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return sub_100019B40(v6, a1, &qword_1006F3E50, &qword_1005971F0);
  }

  sub_10001036C(v6, &qword_1006F2248, &qword_10059DBE0);
  sub_1003E57F4(a1);
  sub_10000CC8C(a1, v4, &qword_1006F3E50, &qword_1005971F0);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10008B71C(v4, v1 + v7, &qword_1006F2248, &qword_10059DBE0);
  return swift_endAccess();
}

uint64_t sub_1003E57F4@<X0>(uint64_t a2@<X8>)
{
  v19 = a2;
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_1005722D8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100571E58();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  sub_1005722B8();
  (*(v5 + 8))(v7, v4);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_10001036C(v3, &unk_1006F3B10, &unk_100599150);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(v19, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v3, v8);
    v14 = v19;
    (*(v9 + 16))(v19, v11, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    sub_100571D48();
    (*(v9 + 8))(v11, v8);
    v17 = sub_100571DC8();
    (*(*(v17 - 8) + 56))(v14 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }
}

uint64_t sub_1003E5B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v6 = sub_1005722D8();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1003E5C0C, 0, 0);
}

uint64_t sub_1003E5C0C()
{
  *(v0 + 56) = *(*(v0 + 24) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E478();

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1003E5D14;
  v2 = *(v0 + 48);
  v3 = *(v0 + 80);

  return Collaboration.Manager.updateShareOption(_:for:)(v3, v2);
}

uint64_t sub_1003E5D14()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1004066F8;
  }

  else
  {
    (*(v4 + 8))(v2[6], v2[4]);

    v6 = sub_1003E5ED0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003E5ED0()
{
  **(v0 + 16) = *(v0 + 72) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E5F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1005722D8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1003E6010, 0, 0);
}

uint64_t sub_1003E6010()
{
  v0[7] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E478();

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1003E6114;
  v3 = v0[5];
  v2 = v0[6];

  return Collaboration.Manager.end(_:)(v2, v3);
}

uint64_t sub_1003E6114()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_1003E6310;
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v8 = v2 + 3;
    v6 = v2[3];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_1003E62A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003E62A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E6310()
{
  v0[10] = *(v0[2] + 16);
  sub_100572F08();

  v0[11] = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_1003E63B8, v2, v1);
}

uint64_t sub_1003E63B8()
{
  v1 = *(v0 + 72);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_1003E6434, 0, 0);
}

uint64_t sub_1003E6434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E64A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1005722D8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_10056C8A8();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003E65C0, 0, 0);
}

uint64_t sub_1003E65C0()
{
  v0[9] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E478();

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1003E66C8;
  v2 = v0[8];
  v3 = v0[5];

  return Collaboration.Manager.resetInvitationURL(_:)(v2, v3);
}

uint64_t sub_1003E66C8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_1003E68D8;
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v10 = v2 + 3;
    v8 = v2[3];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_1003E686C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003E686C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E68D8()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = 0;

  sub_10056E488();
  *(v0 + 96) = *(v1 + 16);
  sub_100572F08();

  *(v0 + 104) = sub_100572EF8();
  v3 = sub_100572E78();

  return _swift_task_switch(sub_1003E69CC, v3, v2);
}

uint64_t sub_1003E69CC()
{
  v1 = *(v0 + 88);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_1003E6A48, 0, 0);
}

uint64_t sub_1003E6A48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E6ABC(uint64_t a1)
{
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v3 = v17 - v2;
  sub_100009DCC(&unk_1006F2A60, &qword_10059A450);
  __chkstk_darwin();
  v5 = v17 - v4;
  v6 = sub_100571FD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v17 - v10;
  sub_10000CC8C(a1, v5, &unk_1006F2A60, &qword_10059A450);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10001036C(v5, &unk_1006F2A60, &qword_10059A450);
    result = sub_1005740F8();
    __break(1u);
  }

  else
  {
    v12 = *(v7 + 32);
    v12(v11, v5, v6);
    v13 = sub_100572F48();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    (*(v7 + 16))(v9, v11, v6);
    v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 4) = v17[1];
    v12(&v15[v14], v9, v6);

    sub_100396F38(0, 0, v3, &unk_10059E700, v15);

    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_1003E6E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1005722D8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003E6ECC, 0, 0);
}

uint64_t sub_1003E6ECC()
{
  v0[8] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E478();

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1003E6FD4;
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  return Collaboration.Manager.remove(collaborator:in:)(v2, v4, v3);
}

uint64_t sub_1003E6FD4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_1003E71D0;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v8 = v2 + 4;
    v6 = v2[4];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_1003E7168;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003E7168()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E71D0()
{
  v0[11] = *(v0[2] + 16);
  sub_100572F08();

  v0[12] = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_1003E7278, v2, v1);
}

uint64_t sub_1003E7278()
{
  v1 = *(v0 + 80);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_1003E72F4, 0, 0);
}

uint64_t sub_1003E72F4()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1003E7364(uint64_t a1, int a2)
{
  v19 = a1;
  v21 = a2;
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v20 = &v18 - v3;
  v4 = sub_100571FD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = *(v5 + 16);
  v11(v7, a1, v4, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = sub_10056E468();
  sub_1003FE910(v10, v7);
  (*(v5 + 8))(v10, v4);
  v12(v22, 0);

  v13 = sub_100572F48();
  v14 = v20;
  (*(*(v13 - 8) + 56))(v20, 1, 1, v13);
  (v11)(v10, v19, v4);
  v15 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v18;
  *(v16 + 40) = v21 & 1;
  (*(v5 + 32))(v16 + v15, v10, v4);

  sub_100396F38(0, 0, v14, &unk_10059E6D8, v16);

  return result;
}

uint64_t sub_1003E7638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = sub_100571FD8();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  *(v6 + 48) = *(v8 + 64);
  *(v6 + 56) = swift_task_alloc();
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  *(v6 + 64) = swift_task_alloc();
  v9 = sub_1005722D8();
  *(v6 + 72) = v9;
  *(v6 + 80) = *(v9 - 8);
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1003E7798, 0, 0);
}

uint64_t sub_1003E7798()
{
  v1 = *(v0 + 136);
  *(v0 + 96) = *(*(v0 + 16) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E478();

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1003E78A8;
  v3 = *(v0 + 88);
  v4 = *(v0 + 24);

  return Collaboration.Manager.moderate(_:collaborator:in:)(v1 & 1, v4, v3);
}

uint64_t sub_1003E78A8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_1003E7A94, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1003E7A94()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = sub_100572F48();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v4, v5);
  sub_100572F08();

  v8 = sub_100572EF8();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &protocol witness table for MainActor;
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v9], v2, v5);
  sub_10039754C(0, 0, v1, &unk_10059E6E8, v10);

  v0[15] = *(v6 + 16);

  v0[16] = sub_100572EF8();
  v12 = sub_100572E78();

  return _swift_task_switch(sub_1003E7C54, v12, v11);
}

uint64_t sub_1003E7C54()
{
  v1 = *(v0 + 112);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_1003E7CD0, 0, 0);
}

uint64_t sub_1003E7CD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E7D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  sub_100572F08();
  v5[9] = sub_100572EF8();
  v7 = sub_100572E78();

  return _swift_task_switch(sub_1003E7DE8, v7, v6);
}

uint64_t sub_1003E7DE8()
{
  v1 = v0[8];
  v2 = v0[6];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_10056E468();
  sub_1003FDAB0(v1, v2);
  v3(v0 + 2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t Collaboration.Management.Model.deinit()
{

  v1 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  v2 = sub_100009DCC(&qword_1006F21E8, &qword_10059DBC0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators, v2);
  v4 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  v5 = sub_100009DCC(&qword_1006F2200, &qword_10059DBC8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__playlist;
  v7 = sub_100009DCC(&qword_1006F2210, &unk_10059DBD0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isOpen;
  v9 = sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity, v9);
  sub_10001036C(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel, &qword_1006F2248, &qword_10059DBE0);

  return v0;
}

uint64_t Collaboration.Management.Model.__deallocating_deinit()
{
  Collaboration.Management.Model.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1003E8154@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Collaboration.Management.Model(0);
  result = sub_10056E408();
  *a2 = result;
  return result;
}

uint64_t Collaboration.Management.View.init(model:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEDB0, &qword_1005A02C0);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_100009DCC(&unk_1006F2270, &qword_100597260);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_100009DCC(&unk_1006EEDC0, &qword_100597298);
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  sub_100009DCC(&qword_1006F2280, &qword_10059DC90);
  sub_100570668();
  *(a2 + v7) = v14;
  v8 = a2 + v3[9];
  sub_100570668();
  *v8 = v14;
  *(v8 + 1) = *(&v14 + 1);
  v9 = a2 + v3[10];
  sub_100570668();
  *v9 = v14;
  *(v9 + 1) = *(&v14 + 1);
  v10 = a2 + v3[11];
  sub_100570668();
  *v10 = v14;
  *(v10 + 1) = *(&v14 + 1);
  v11 = a2 + v3[12];
  sub_100570668();
  *v11 = v14;
  *(v11 + 1) = *(&v14 + 1);
  type metadata accessor for Collaboration.Management.Model(0);
  sub_1003FFF94(&qword_1006F2288, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);
  result = sub_10056EA78();
  *a2 = result;
  a2[1] = v13;
  return result;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.shareSheet(uint64_t a1)
{
  sub_100009DCC(&qword_1006F2280, &qword_10059DC90);
  sub_100570668();
  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.viewModel(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.Model(0);
  sub_1003FFF94(&qword_1006F2288, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);

  return sub_10056EA78();
}

uint64_t Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v22 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin();
  v4 = sub_100009DCC(&qword_1006F2290, &qword_10059DC98);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin();
  v7 = v21 - v6;
  v26 = v2;
  v21[1] = sub_100009DCC(&qword_1006F2298, &qword_10059DCA0);
  v8 = sub_100010324(&qword_1006F22A0, &qword_10059DCA8);
  v9 = sub_100010324(&qword_1006F22A8, &qword_10059DCB0);
  v10 = sub_100010324(&qword_1006F22B0, &qword_10059DCB8);
  v11 = sub_10056F658();
  v12 = sub_1003FFD74();
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_100010324(&qword_1006F22E0, &qword_10059DCD0);
  v15 = sub_100010BC0(&qword_1006F22E8, &qword_1006F22E0, &qword_10059DCD0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v27 = v14;
  v28 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v27 = v8;
  v28 = v9;
  v29 = OpaqueTypeConformance2;
  v30 = v16;
  swift_getOpaqueTypeConformance2();
  sub_10056ECB8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  sub_100401C78(v2, v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = swift_allocObject();
  sub_100401CE4(v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for Collaboration.Management.View);
  sub_100010BC0(&unk_1006F22F0, &qword_1006F2290, &qword_10059DC98, &protocol conformance descriptor for NavigationStack<A, B>);
  v19 = v23;
  sub_100570348();

  return (*(v24 + 8))(v7, v19);
}

uint64_t sub_1003E8878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_10056F658();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006F22B0, &qword_10059DCB8);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v24 = sub_100009DCC(&qword_1006F22A0, &qword_10059DCA8);
  v10 = *(v24 - 8);
  __chkstk_darwin();
  v12 = &v22 - v11;
  v23 = a1;
  v26 = a1;
  sub_100009DCC(&qword_1006F2F88, &qword_10059EA10);
  sub_100010BC0(&qword_1006F2F90, &qword_1006F2F88, &qword_10059EA10, &protocol conformance descriptor for TupleView<A>);
  sub_10056FC88();
  KeyPath = swift_getKeyPath();
  if (qword_1006EEB70 != -1)
  {
    v21 = KeyPath;
    swift_once();
    KeyPath = v21;
  }

  v14 = qword_1006F2128;
  v15 = &v9[*(v7 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  sub_10056F648();
  v16 = sub_1003FFD74();
  sub_1005703C8();
  (*(v4 + 8))(v6, v3);
  sub_10001036C(v9, &qword_1006F22B0, &qword_10059DCB8);
  __chkstk_darwin();
  *(&v22 - 2) = v23;
  sub_100009DCC(&qword_1006F22A8, &qword_10059DCB0);
  v27 = v7;
  v28 = v3;
  v29 = v16;
  v30 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v17 = sub_100010324(&qword_1006F22E0, &qword_10059DCD0);
  v18 = sub_100010BC0(&qword_1006F22E8, &qword_1006F22E0, &qword_10059DCD0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v27 = v17;
  v28 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v24;
  sub_100570318();
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_1003E8C78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v152 = a2;
  v150 = sub_100009DCC(&qword_1006F2FA8, &qword_10059EA50);
  v149 = *(v150 - 8);
  __chkstk_darwin();
  v115 = &v114 - v3;
  v146 = sub_1005722D8();
  v145 = *(v146 - 8);
  __chkstk_darwin();
  v144 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2FB0, &qword_10059EA58);
  __chkstk_darwin();
  v151 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v148 = &v114 - v6;
  v7 = sub_100009DCC(&qword_1006F2FB8, &qword_10059EA60);
  v155 = *(v7 - 8);
  v156 = v7;
  __chkstk_darwin();
  v123 = &v114 - v8;
  v122 = sub_100009DCC(&qword_1006F2FC0, &qword_10059EA68);
  v121 = *(v122 - 8);
  __chkstk_darwin();
  v135 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v114 - v10;
  v119 = sub_100009DCC(&qword_1006F2FC8, &qword_10059EA70);
  v118 = *(v119 - 8);
  __chkstk_darwin();
  v116 = &v114 - v11;
  sub_100009DCC(&qword_1006F2FD0, &qword_10059EA78);
  __chkstk_darwin();
  v120 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v133 = &v114 - v13;
  sub_10056CC38();
  __chkstk_darwin();
  v125 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_100572888();
  v124 = *(v126 - 8);
  __chkstk_darwin();
  v153 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v154 = &v114 - v16;
  v132 = sub_100009DCC(&qword_1006F2FD8, &qword_10059EA80);
  v130 = *(v132 - 8);
  __chkstk_darwin();
  v128 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v136 = &v114 - v18;
  v131 = sub_100571FD8();
  v129 = *(v131 - 8);
  __chkstk_darwin();
  v117 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v127 = &v114 - v20;
  sub_100009DCC(&qword_1006F2FE0, &qword_10059EA88);
  __chkstk_darwin();
  v147 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v114 - v22;
  v140 = sub_10056E5D8();
  v23 = *(v140 - 8);
  __chkstk_darwin();
  v25 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_100009DCC(&qword_1006F2FE8, &qword_10059EA90);
  __chkstk_darwin();
  v27 = &v114 - v26;
  v138 = sub_100009DCC(&qword_1006F2FF0, &qword_10059EA98);
  v139 = *(v138 - 8);
  __chkstk_darwin();
  v29 = &v114 - v28;
  v143 = sub_100009DCC(&qword_1006F2FF8, &qword_10059EAA0);
  v142 = *(v143 - 8);
  __chkstk_darwin();
  v141 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v114 - v31;
  v158 = a1;
  v160 = a1;
  sub_1003ECCC8(a1, v27);
  v137 = sub_100009DCC(&qword_1006F3000, &qword_10059EAA8);
  v33 = sub_100010324(&qword_1006F3008, &qword_10059EAB0);
  v34 = sub_100010324(&qword_1006F3010, &qword_10059EAB8);
  v35 = sub_100403F90();
  v36 = sub_100404074(&qword_1006F3040, &qword_1006F3010, &qword_10059EAB8, sub_1004040F0);
  v161 = v33;
  v162 = v34;
  v163 = v35;
  v164 = v36;
  swift_getOpaqueTypeConformance2();
  sub_100404234();
  sub_100570918();
  v37 = v140;
  (*(v23 + 104))(v25, enum case for Prominence.increased(_:), v140);
  sub_1004042E4();
  v157 = v32;
  v38 = v138;
  sub_100570128();
  v39 = v25;
  v40 = v159;
  (*(v23 + 8))(v39, v37);
  (*(v139 + 8))(v29, v38);
  v41 = *(v158 + 8);
  v42 = sub_1003E3690();
  v44 = v155;
  v43 = v156;
  if ((v42 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (!*(v161 + 16))
  {

    v40 = v159;
    v44 = v155;
    v43 = v156;
LABEL_9:
    (*(v44 + 56))(v40, 1, 1, v43);
    v65 = v148;
    v66 = v154;
    goto LABEL_11;
  }

  v45 = v129;
  v46 = v117;
  v47 = v131;
  (*(v129 + 16))(v117, v161 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v131);

  (*(v45 + 32))(v127, v46, v47);
  __chkstk_darwin();
  v48 = v154;
  sub_100572818();
  v49 = v124;
  v50 = v126;
  (*(v124 + 16))(v153, v48, v126);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v51 = qword_1006FDF00;
  sub_10056CBC8();
  v52 = sub_100572948();
  v54 = v53;
  (*(v49 + 8))(v48, v50);
  v161 = v52;
  v162 = v54;
  sub_10037AD68();
  v161 = sub_10056FF28();
  v162 = v55;
  LOBYTE(v163) = v56 & 1;
  v164 = v57;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_1003FFF94(&qword_1006F30D0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_10059E3E0);
  sub_100570918();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v140 = v41;
  if (v161 == 1)
  {
    __chkstk_darwin();
    sub_100009DCC(&qword_1006F30F0, &qword_10059EB20);
    v58 = sub_100010324(&qword_1006F30F8, &qword_10059EB28);
    v59 = sub_100010324(&qword_1006F3100, &qword_10059EB30);
    v60 = sub_10056F638();
    v61 = sub_100010BC0(&qword_1006F3108, &qword_1006F3100, &qword_10059EB30, &protocol conformance descriptor for Button<A>);
    v62 = sub_1003FFF94(&qword_1006F3110, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v161 = v59;
    v162 = v60;
    v163 = v61;
    v164 = v62;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v161 = v58;
    v162 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v64 = v116;
    sub_100570938();
    v70 = v118;
    v68 = v133;
    v69 = v119;
    (*(v118 + 32))(v133, v64, v119);
    v67 = 0;
  }

  else
  {
    v67 = 1;
    v68 = v133;
    v69 = v119;
    v70 = v118;
  }

  (*(v70 + 56))(v68, v67, 1, v69);
  __chkstk_darwin();
  sub_1003F1E7C(&v161);
  sub_100009DCC(&qword_1006F30D8, &qword_10059EB10);
  sub_100404444();
  v71 = v134;
  sub_100570918();
  v72 = *(v130 + 16);
  v73 = v128;
  v74 = v132;
  v72(v128, v136, v132);
  v75 = v68;
  v76 = v120;
  sub_10000CC8C(v75, v120, &qword_1006F2FD0, &qword_10059EA78);
  v77 = v121;
  v78 = *(v121 + 16);
  v79 = v122;
  v78(v135, v71, v122);
  v80 = v123;
  v72(v123, v73, v74);
  v81 = sub_100009DCC(&qword_1006F30E8, &qword_10059EB18);
  sub_10000CC8C(v76, v80 + *(v81 + 48), &qword_1006F2FD0, &qword_10059EA78);
  v82 = v135;
  v78((v80 + *(v81 + 64)), v135, v79);
  v83 = *(v77 + 8);
  v83(v134, v79);
  sub_10001036C(v133, &qword_1006F2FD0, &qword_10059EA78);
  v84 = *(v130 + 8);
  v85 = v132;
  v84(v136, v132);
  v83(v82, v79);
  sub_10001036C(v76, &qword_1006F2FD0, &qword_10059EA78);
  v84(v128, v85);
  v40 = v159;
  sub_100019B40(v80, v159, &qword_1006F2FB8, &qword_10059EA60);
  (*(v155 + 56))(v40, 0, 1, v156);
  (*(v129 + 8))(v127, v131);
  v66 = v154;
  v65 = v148;
LABEL_11:
  v86 = v153;
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v144;
  sub_10056E478();

  v88 = sub_100572138();
  (*(v145 + 8))(v87, v146);
  if (v88 != 2 && (v88 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), sub_10056E478(), , , v161 == 1))
  {
    __chkstk_darwin();
    sub_100572818();
    v89 = v124;
    v90 = v126;
    (*(v124 + 16))(v86, v66, v126);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v91 = qword_1006FDF00;
    sub_10056CBC8();
    v92 = sub_100572948();
    v94 = v93;
    (*(v89 + 8))(v66, v90);
    v161 = v92;
    v162 = v94;
    sub_10037AD68();
    v165 = sub_10056FF28();
    v166 = v95;
    v167 = v96 & 1;
    v168 = v97;
    sub_1003F27C4(&v161);
    sub_100009DCC(&unk_1006F30A0, &qword_10059EAF8);
    sub_100009DCC(&qword_1006F1258, &unk_10059EB00);
    sub_100010BC0(&unk_1006F30B0, &unk_1006F30A0, &qword_10059EAF8, &protocol conformance descriptor for HStack<A>);
    sub_1003BD7A8();
    v98 = v115;
    sub_100570928();
    v99 = v149;
    v100 = v98;
    v101 = v150;
    (*(v149 + 32))(v65, v100, v150);
    v102 = v101;
    v103 = 0;
  }

  else
  {
    v103 = 1;
    v102 = v150;
    v99 = v149;
  }

  (*(v99 + 56))(v65, v103, 1, v102);
  v104 = v142;
  v105 = *(v142 + 16);
  v106 = v141;
  v107 = v143;
  v105(v141, v157, v143);
  v108 = v147;
  sub_10000CC8C(v40, v147, &qword_1006F2FE0, &qword_10059EA88);
  v109 = v151;
  sub_10000CC8C(v65, v151, &qword_1006F2FB0, &qword_10059EA58);
  v110 = v152;
  v105(v152, v106, v107);
  v111 = sub_100009DCC(&qword_1006F3098, &qword_10059EAF0);
  sub_10000CC8C(v108, &v110[*(v111 + 48)], &qword_1006F2FE0, &qword_10059EA88);
  sub_10000CC8C(v109, &v110[*(v111 + 64)], &qword_1006F2FB0, &qword_10059EA58);
  sub_10001036C(v65, &qword_1006F2FB0, &qword_10059EA58);
  sub_10001036C(v159, &qword_1006F2FE0, &qword_10059EA88);
  v112 = *(v104 + 8);
  v112(v157, v107);
  sub_10001036C(v109, &qword_1006F2FB0, &qword_10059EA58);
  sub_10001036C(v108, &qword_1006F2FE0, &qword_10059EA88);
  return (v112)(v106, v107);
}

uint64_t sub_1003EA3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_100009DCC(&qword_1006F3088, &qword_10059EAE8);
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin();
  v68 = &v58 - v4;
  v59 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin();
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006F30D8, &qword_10059EB10);
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin();
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v58 - v8;
  v9 = sub_10056F808();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100009DCC(&qword_1006F32B8, &qword_10059ED38);
  __chkstk_darwin();
  v15 = &v58 - v14;
  v16 = sub_100009DCC(&qword_1006F32C0, &qword_10059ED40);
  v61 = *(v16 - 8);
  v62 = v16;
  __chkstk_darwin();
  v66 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v58 - v18;
  v20 = a1;
  if (sub_1003E3690())
  {
    v21 = v70;
    v22 = *(v69 + 56);
    v23 = v71;

    return v22(v23, 1, 1, v21);
  }

  else
  {
    *v15 = sub_10056F218();
    *(v15 + 1) = 0x4028000000000000;
    v15[16] = 0;
    v25 = sub_100009DCC(&qword_1006F32C8, &qword_10059ED48);
    sub_1003EAB78(a1, &v15[*(v25 + 44)]);
    v26 = sub_10056FA28();
    sub_10056E598();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = &v15[*(sub_100009DCC(&qword_1006F32D0, &qword_10059ED50) + 36)];
    *v35 = v26;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    v36 = &v15[*(sub_100009DCC(&qword_1006F32D8, &qword_10059ED58) + 36)];
    v36[32] = 0;
    *v36 = 0u;
    *(v36 + 1) = 0u;
    v37 = sub_10056F358();
    v38 = &v15[*(v13 + 36)];
    *v38 = v37;
    v38[1] = sub_1003ECCA0;
    v38[2] = 0;
    sub_10056F7E8();
    sub_100405128();
    v58 = v19;
    sub_1005701F8();
    (*(v10 + 8))(v12, v9);
    sub_10001036C(v15, &qword_1006F32B8, &qword_10059ED38);
    v72 = sub_1003E3E44();
    v39 = v20;
    v40 = v60;
    sub_100401C78(v39, v60, type metadata accessor for Collaboration.Management.View);
    v41 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v42 = swift_allocObject();
    sub_100401CE4(v40, v42 + v41, type metadata accessor for Collaboration.Management.View);
    sub_100009DCC(&qword_1006F21D0, &qword_10059DBB0);
    _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
    sub_100010BC0(&qword_1006F3138, &qword_1006F21D0, &qword_10059DBB0, &protocol conformance descriptor for [A]);
    sub_1003FFF94(&qword_1006F30D0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_10059E3E0);
    sub_1003FFF94(&qword_1006F3140, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v43 = v67;
    sub_1005708C8();
    v45 = v61;
    v44 = v62;
    v46 = *(v61 + 16);
    v47 = v66;
    v46(v66, v58, v62);
    v49 = v63;
    v48 = v64;
    v50 = *(v64 + 16);
    v51 = v43;
    v52 = v65;
    v50(v63, v51, v65);
    v46(v68, v47, v44);
    v53 = sub_100009DCC(&qword_1006F3308, &qword_10059ED68);
    v54 = v68;
    v50(&v68[*(v53 + 48)], v49, v52);
    v55 = *(v48 + 8);
    v55(v67, v52);
    v56 = *(v45 + 8);
    v56(v58, v44);
    v55(v49, v52);
    v56(v66, v44);
    v57 = v71;
    sub_100019B40(v54, v71, &qword_1006F3088, &qword_10059EAE8);
    return (*(v69 + 56))(v57, 0, 1, v70);
  }
}

uint64_t sub_1003EAB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v3 = sub_100009DCC(&qword_1006F3310, &qword_10059ED70);
  v158 = *(v3 - 8);
  v159 = v3;
  __chkstk_darwin();
  v153 = (&v129 - v4);
  v152 = sub_100009DCC(&qword_1006F2DA8, &qword_10059E668);
  __chkstk_darwin();
  v144 = &v129 - v5;
  v6 = type metadata accessor for Collaboration.Management.View(0);
  v137 = *(v6 - 8);
  __chkstk_darwin();
  v138 = v7;
  v139 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_100009DCC(&qword_1006F3318, &qword_10059ED78);
  __chkstk_darwin();
  v140 = &v129 - v8;
  v136 = sub_100009DCC(&qword_1006F3320, &qword_10059ED80);
  __chkstk_darwin();
  v142 = &v129 - v9;
  v149 = sub_100009DCC(&qword_1006F3328, &qword_10059ED88);
  v147 = *(v149 - 8);
  __chkstk_darwin();
  v143 = &v129 - v10;
  v11 = sub_100009DCC(&qword_1006F3330, &qword_10059ED90);
  v150 = *(v11 - 8);
  v151 = v11;
  __chkstk_darwin();
  v148 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v129 - v13;
  sub_10056CC38();
  __chkstk_darwin();
  v133 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100572888();
  v134 = *(v15 - 8);
  v135 = v15;
  __chkstk_darwin();
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v129 - v18;
  v19 = sub_1005722D8();
  v130 = *(v19 - 8);
  v131 = v19;
  __chkstk_darwin();
  v129 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F3338, &qword_10059ED98);
  __chkstk_darwin();
  v157 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v161 = &v129 - v22;
  v155 = sub_100009DCC(&qword_1006F3340, &qword_10059EDA0);
  v23 = *(v155 - 8);
  __chkstk_darwin();
  v25 = &v129 - v24;
  v26 = sub_10056EBD8();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v129 - v30;
  sub_100009DCC(&qword_1006F3348, &qword_10059EDA8);
  __chkstk_darwin();
  v156 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = a1;
  v163 = &v129 - v33;
  v145 = v6;
  sub_1003BE970(v31);
  if (qword_1006EEBC8 != -1)
  {
    swift_once();
  }

  v34 = sub_10000C49C(v26, qword_1006F2180);
  (*(v27 + 16))(v29, v34, v26);
  sub_1003FFF94(&qword_1006EFB78, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v35 = sub_1005727B8();
  v36 = *(v27 + 8);
  v36(v29, v26);
  v36(v31, v26);
  if (v35)
  {
    (*(v23 + 56))(v163, 1, 1, v155);
    v37 = v17;
  }

  else
  {
    v38 = sub_100570548();
    v37 = v17;
    if (qword_1006EEB68 != -1)
    {
      swift_once();
    }

    v39 = qword_1006F2120;
    KeyPath = swift_getKeyPath();
    v41 = qword_1006EEBB8;

    if (v41 != -1)
    {
      swift_once();
    }

    sub_1005709E8();
    sub_10056E888();
    v42 = &v25[*(sub_100009DCC(&qword_1006F3350, &qword_10059EDB0) + 36)];
    v43 = *(sub_100009DCC(&qword_1006F3358, &qword_10059EDB8) + 28);
    sub_10056F398();
    v44 = sub_10056F3A8();
    (*(*(v44 - 8) + 56))(v42 + v43, 0, 1, v44);
    *v42 = swift_getKeyPath();
    *v25 = v38;
    *(v25 + 1) = KeyPath;
    *(v25 + 2) = v39;
    *(v25 + 56) = *&v168[16];
    v45 = v167;
    *(v25 + 40) = *v168;
    *(v25 + 24) = v45;
    if (qword_1006EEBC0 != -1)
    {
      swift_once();
    }

    v46 = qword_1006F2178;
    v47 = swift_getKeyPath();
    v48 = v155;
    v49 = &v25[*(v155 + 36)];
    *v49 = v47;
    v49[1] = v46;
    v50 = v163;
    sub_100019B40(v25, v163, &qword_1006F3340, &qword_10059EDA0);
    (*(v23 + 56))(v50, 0, 1, v48);
  }

  v155 = sub_10056F378();
  v51 = 1;
  LOBYTE(v167) = 1;
  v52 = v162;
  sub_1003EBF88(v162, v171);
  *&v170[7] = v171[0];
  *&v170[23] = v171[1];
  *&v170[39] = v171[2];
  *&v170[55] = v171[3];
  v154 = v167;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v167 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = v129;
    sub_10056E478();

    v54 = sub_100572138();
    (*(v130 + 8))(v53, v131);
    if (v54 == 2 || (v54 & 1) == 0)
    {
      v55 = v132;
    }

    else
    {
      v55 = v132;
    }

    sub_100572818();
    v57 = v134;
    v56 = v135;
    (*(v134 + 16))(v37, v55, v135);
    v58 = v136;
    v59 = v142;
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v60 = qword_1006FDF00;
    sub_10056CBC8();
    v61 = sub_100572948();
    v63 = v62;
    (*(v57 + 8))(v55, v56);
    v136 = v61;
    *&v167 = v61;
    *(&v167 + 1) = v63;
    v64 = v139;
    sub_100401C78(v52, v139, type metadata accessor for Collaboration.Management.View);
    v65 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v66 = swift_allocObject();
    sub_100401CE4(v64, v66 + v65, type metadata accessor for Collaboration.Management.View);
    sub_10037AD68();

    v67 = v140;
    sub_100570708();
    v68 = sub_10056FB08();
    v69 = swift_getKeyPath();
    v70 = (v67 + *(v141 + 36));
    *v70 = v69;
    v70[1] = v68;
    sub_10056FB88();
    sub_100405468();
    sub_10056FFA8();
    sub_10001036C(v67, &qword_1006F3318, &qword_10059ED78);
    v71 = sub_1005704D8();
    v72 = swift_getKeyPath();
    v73 = &v59[*(sub_100009DCC(&qword_1006F3378, &qword_10059EE00) + 36)];
    *v73 = v72;
    v73[1] = v71;
    if (qword_1006EEBA8 != -1)
    {
      swift_once();
    }

    sub_1005709E8();
    sub_10056E888();
    v74 = &v59[*(sub_100009DCC(&qword_1006F3380, &qword_10059EE08) + 36)];
    v75 = v171[5];
    *v74 = v171[4];
    *(v74 + 1) = v75;
    *(v74 + 2) = v171[6];
    v76 = sub_10056FA28();
    sub_10056E598();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = &v59[*(sub_100009DCC(&qword_1006F3388, &qword_10059EE10) + 36)];
    *v85 = v76;
    *(v85 + 1) = v78;
    *(v85 + 2) = v80;
    *(v85 + 3) = v82;
    *(v85 + 4) = v84;
    v85[40] = 0;
    if (qword_1006EE9F0 != -1)
    {
      swift_once();
    }

    v142 = v63;
    v86 = static UIColor.MusicTint.normal;
    v87 = sub_100570528();
    v88 = sub_10056FA38();
    v89 = &v59[*(sub_100009DCC(&qword_1006F3390, &qword_10059EE18) + 36)];
    *v89 = v87;
    v89[8] = v88;
    v90 = &v59[*(v58 + 36)];
    v91 = enum case for RoundedCornerStyle.continuous(_:);
    v92 = sub_10056F2E8();
    (*(*(v92 - 8) + 104))(v90, v91, v92);
    *&v90[*(sub_100009DCC(&qword_1006F3398, &unk_10059EE20) + 36)] = 256;
    v93 = v58;
    v94 = v59;
    if (qword_1006EEBD0 != -1)
    {
      swift_once();
    }

    v95 = v152;
    v96 = sub_10000C49C(v152, qword_1006F2198);
    v97 = v144;
    sub_10000CC8C(v96, v144, &qword_1006F2DA8, &qword_10059E668);
    v141 = sub_10040554C();
    v98 = sub_100010BC0(&qword_1006F2DE0, &qword_1006F2DA8, &qword_10059E668, &protocol conformance descriptor for PartialRangeThrough<A>);
    v99 = v143;
    sub_1005700D8();
    sub_10001036C(v97, &qword_1006F2DA8, &qword_10059E668);
    sub_10001036C(v94, &qword_1006F3320, &qword_10059ED80);
    v100 = (v162 + *(v145 + 11));
    v101 = *v100;
    v102 = *(v100 + 1);
    LOBYTE(v164) = v101;
    v165 = v102;
    sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
    sub_100570698();
    v145 = &v129;
    __chkstk_darwin();
    v103 = v136;
    *(&v129 - 4) = v104;
    *(&v129 - 3) = v103;
    *(&v129 - 2) = v142;
    *&v167 = v93;
    *(&v167 + 1) = v95;
    *v168 = v141;
    *&v168[8] = v98;
    swift_getOpaqueTypeConformance2();
    v105 = v146;
    v106 = v149;
    sub_100570278();

    (*(v147 + 8))(v99, v106);
    v108 = v150;
    v107 = v151;
    v109 = *(v150 + 16);
    v110 = v148;
    v109(v148, v105, v151);
    v111 = v153;
    *v153 = 0;
    *(v111 + 8) = 1;
    v112 = sub_100009DCC(&qword_1006F33E0, &qword_10059EE30);
    v109((v111 + *(v112 + 48)), v110, v107);
    v113 = *(v108 + 8);
    v113(v105, v107);
    v113(v110, v107);
    sub_100019B40(v111, v161, &qword_1006F3310, &qword_10059ED70);
    v51 = 0;
  }

  v114 = v161;
  (*(v158 + 56))(v161, v51, 1, v159);
  v115 = v163;
  v116 = v156;
  sub_10000CC8C(v163, v156, &qword_1006F3348, &qword_10059EDA8);
  v117 = v157;
  sub_10000CC8C(v114, v157, &qword_1006F3338, &qword_10059ED98);
  v118 = v160;
  sub_10000CC8C(v116, v160, &qword_1006F3348, &qword_10059EDA8);
  v119 = sub_100009DCC(&qword_1006F3360, &qword_10059EDF0);
  v120 = v118 + *(v119 + 48);
  v121 = v155;
  v164 = v155;
  v165 = 0;
  v122 = v154;
  v166[0] = v154;
  *&v166[1] = *v170;
  *&v166[17] = *&v170[16];
  *&v166[33] = *&v170[32];
  *&v166[49] = *&v170[48];
  v123 = *&v170[63];
  *&v166[64] = *&v170[63];
  v124 = *v166;
  *v120 = v155;
  *(v120 + 16) = v124;
  v125 = *&v166[16];
  v126 = *&v166[32];
  v127 = *&v166[48];
  *(v120 + 80) = v123;
  *(v120 + 48) = v126;
  *(v120 + 64) = v127;
  *(v120 + 32) = v125;
  sub_10000CC8C(v117, v118 + *(v119 + 64), &qword_1006F3338, &qword_10059ED98);
  sub_10000CC8C(&v164, &v167, &qword_1006F3368, &qword_10059EDF8);
  sub_10001036C(v114, &qword_1006F3338, &qword_10059ED98);
  sub_10001036C(v115, &qword_1006F3348, &qword_10059EDA8);
  sub_10001036C(v117, &qword_1006F3338, &qword_10059ED98);
  v167 = v121;
  v168[0] = v122;
  *&v168[17] = *&v170[16];
  *&v168[33] = *&v170[32];
  *v169 = *&v170[48];
  *&v169[15] = *&v170[63];
  *&v168[1] = *v170;
  sub_10001036C(&v167, &qword_1006F3368, &qword_10059EDF8);
  return sub_10001036C(v116, &qword_1006F3348, &qword_10059EDA8);
}

double sub_1003EBF88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  sub_10056CC38();
  __chkstk_darwin();
  v3 = sub_100572888();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v54[-v7];
  sub_100572818();
  (*(v4 + 16))(v6, v8, v3);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v9 = qword_1006FDF00;
  sub_10056CBC8();
  v10 = sub_100572948();
  v12 = v11;
  (*(v4 + 8))(v8, v3);
  v59 = v10;
  v60 = v12;
  sub_10037AD68();
  v13 = sub_10056FF28();
  v15 = v14;
  v17 = v16;
  LODWORD(v59) = sub_10056F6C8();
  v18 = sub_10056FE28();
  v20 = v19;
  v22 = v21;
  sub_10001B5A4(v13, v15, v17 & 1);

  sub_10056FC08();
  v23 = sub_10056FE88();
  v57 = v24;
  v26 = v25;
  v28 = v27;

  sub_10001B5A4(v18, v20, v22 & 1);

  v29 = sub_1003E3FA8();
  if (v30)
  {
    v59 = v29;
    v60 = v30;
    v31 = sub_10056FF28();
    v33 = v32;
    v35 = v34;
    LODWORD(v59) = sub_10056F6F8();
    v36 = sub_10056FE28();
    v38 = v37;
    v55 = v26;
    v40 = v39;
    v58 = v28;
    sub_10001B5A4(v31, v33, v35 & 1);

    sub_10056FC18();
    v41 = sub_10056FE88();
    v43 = v42;
    v56 = a2;
    v44 = v23;
    v46 = v45;
    v48 = v47;

    v49 = v40 & 1;
    LOBYTE(v26) = v55;
    sub_10001B5A4(v36, v38, v49);
    v28 = v58;

    v50 = v46 & 1;
    v23 = v44;
    a2 = v56;
    sub_10002AAC4(v41, v43, v50);
  }

  else
  {
    v41 = 0;
    v43 = 0;
    v50 = 0;
    v48 = 0;
  }

  v51 = v26 & 1;
  v52 = v57;
  sub_10002AAC4(v23, v57, v51);

  sub_1000535A8(v41, v43, v50, v48);
  sub_1000535EC(v41, v43, v50, v48);
  LOBYTE(v59) = v51;
  *a2 = v23;
  *(a2 + 8) = v52;
  *(a2 + 16) = v51;
  *(a2 + 24) = v28;
  *(a2 + 32) = v41;
  *(a2 + 40) = v43;
  *(a2 + 48) = v50;
  *(a2 + 56) = v48;
  sub_1000535EC(v41, v43, v50, v48);
  sub_10001B5A4(v23, v52, v51);

  return result;
}

uint64_t sub_1003EC40C(uint64_t a1)
{
  v2 = sub_10056DF88();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570688();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_10056DF68();
  v11 = sub_100573448();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Stop/Leave button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003EC5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v54 = a4;
  v48 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  __chkstk_darwin();
  v49 = v5;
  v50 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100570438();
  __chkstk_darwin();
  v53 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = v41 - v7;
  sub_10056CC38();
  __chkstk_darwin();
  v45 = sub_100572888();
  v8 = *(v45 - 8);
  __chkstk_darwin();
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v41 - v11;
  v13 = sub_1005722D8();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v17 = sub_100572138();
  (*(v14 + 8))(v16, v13);
  if (v17 != 2 && (v17 & 1) != 0)
  {
    sub_100572818();
    v18 = *(v8 + 16);
    v19 = v45;
    v18(v10, v12, v45);
    if (qword_1006EE950 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_100572818();
  v18 = *(v8 + 16);
  v19 = v45;
  v18(v10, v12, v45);
  if (qword_1006EE950 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v20 = qword_1006FDF00;
  sub_10056CBC8();
  v21 = v20;
  v44 = sub_100572948();
  v23 = v22;
  v24 = *(v8 + 8);
  v24(v12, v19);
  sub_100572818();
  v18(v10, v12, v19);
  sub_10056CBC8();
  v25 = sub_100572948();
  v27 = v26;
  v24(v12, v19);
  v55 = v44;
  v56 = v23;
  sub_10037AD68();
  v28 = sub_10056FF28();
  v44 = v29;
  v45 = v28;
  v42 = v30;
  v43 = v31;
  v55 = v25;
  v56 = v27;
  sub_10056FF28();
  v41[1] = v32;
  v55 = v46;
  v56 = v47;

  v33 = sub_10056FF28();
  v35 = v34;
  LOBYTE(v23) = v36;
  v37 = v50;
  sub_100401C78(v51, v50, type metadata accessor for Collaboration.Management.View);
  v38 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v39 = swift_allocObject();
  sub_100401CE4(v37, v39 + v38, type metadata accessor for Collaboration.Management.View);
  sub_100570408();
  sub_10001B5A4(v33, v35, v23 & 1);

  sub_100570418();
  return sub_1005703F8();
}

uint64_t sub_1003ECCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = (type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *v3;
  v5 = *(*v3 + 64);
  __chkstk_darwin();
  v6 = sub_100009DCC(&qword_1006F3008, &qword_10059EAB0);
  __chkstk_darwin();
  v8 = &v17 - v7;
  *v8 = sub_10056F368();
  *(v8 + 1) = 0x4028000000000000;
  v8[16] = 0;
  v9 = sub_100009DCC(&unk_1006F3150, &unk_10059EB70);
  sub_1003ECF94(a1, &v8[*(v9 + 44)]);
  v10 = &v8[*(v6 + 36)];
  v10[32] = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = (a1 + v3[12]);
  v12 = *v11;
  v13 = *(v11 + 1);
  v18 = v12;
  v19 = v13;
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570698();
  sub_100401C78(a1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_100401CE4(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for Collaboration.Management.View);
  sub_100009DCC(&qword_1006F3010, &qword_10059EAB8);
  sub_100403F90();
  sub_100404074(&qword_1006F3040, &qword_1006F3010, &qword_10059EAB8, sub_1004040F0);
  sub_100570108();

  return sub_10001036C(v8, &qword_1006F3008, &qword_10059EAB0);
}

uint64_t sub_1003ECF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v222 = a2;
  v221 = sub_100009DCC(&qword_1006F3168, &qword_10059EB88);
  v220 = *(v221 - 8);
  __chkstk_darwin();
  v199 = &v177 - v3;
  sub_100009DCC(&qword_1006F3170, &qword_10059EB90);
  __chkstk_darwin();
  v182 = &v177 - v4;
  v179 = sub_100009DCC(&qword_1006F3178, &qword_10059EB98);
  __chkstk_darwin();
  v191 = &v177 - v5;
  v189 = sub_100009DCC(&qword_1006F3180, &qword_10059EBA0);
  __chkstk_darwin();
  v188 = &v177 - v6;
  v186 = sub_100009DCC(&qword_1006F3188, &qword_10059EBA8);
  __chkstk_darwin();
  v185 = &v177 - v7;
  v181 = sub_100009DCC(&qword_1006F3190, &qword_10059EBB0);
  __chkstk_darwin();
  v184 = &v177 - v8;
  v180 = sub_100009DCC(&qword_1006F3198, &qword_10059EBB8);
  __chkstk_darwin();
  v187 = &v177 - v9;
  v183 = sub_100009DCC(&qword_1006F31A0, &qword_10059EBC0);
  __chkstk_darwin();
  v194 = &v177 - v10;
  v193 = sub_100009DCC(&qword_1006F31A8, &qword_10059EBC8);
  __chkstk_darwin();
  v198 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v192 = &v177 - v12;
  __chkstk_darwin();
  v197 = &v177 - v13;
  v178 = sub_100009DCC(&qword_1006F31B0, &qword_10059EBD0);
  __chkstk_darwin();
  v196 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = (&v177 - v15);
  sub_100009DCC(&qword_1006F31B8, &qword_10059EBD8);
  __chkstk_darwin();
  v219 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v224 = &v177 - v17;
  v217 = sub_1005722D8();
  v216 = *(v217 - 8);
  __chkstk_darwin();
  v215 = &v177 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  __chkstk_darwin();
  v209 = &v177 - v19;
  v212 = sub_100571DC8();
  v210 = *(v212 - 8);
  __chkstk_darwin();
  v208 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v202 = &v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v201 = &v177 - v22;
  v213 = sub_10056DC68();
  v211 = *(v213 - 8);
  __chkstk_darwin();
  v226 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v204 = &v177 - v24;
  __chkstk_darwin();
  v207 = &v177 - v25;
  __chkstk_darwin();
  v206 = &v177 - v26;
  v27 = sub_10056DBD8();
  v228 = *(v27 - 8);
  __chkstk_darwin();
  v29 = &v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v30 = *(v225 + 8);
  __chkstk_darwin();
  v31 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v177 - v32;
  sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  __chkstk_darwin();
  v200 = &v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v177 - v35;
  __chkstk_darwin();
  v38 = &v177 - v37;
  v214 = sub_100009DCC(&qword_1006F31C0, &qword_10059EBE0);
  __chkstk_darwin();
  v218 = &v177 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v223 = &v177 - v40;
  v190 = a1;
  v229 = *(a1 + 8);
  sub_1003E55E4(v38);
  v41 = enum case for Playlist.Variant.regular(_:);
  v42 = sub_100572128();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v33, v41, v42);
  (*(v43 + 56))(v33, 0, 1, v42);
  v44 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
  (*(*(v44 - 8) + 56))(v33, 0, 11, v44);
  v244 = 1;
  v242 = 1;
  v240 = 1;
  v45 = *(v228 + 104);
  v227 = v29;
  v205 = v27;
  v45(v29, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v27);
  v203 = v33;
  sub_100401C78(v33, v31, type metadata accessor for ArtworkImage.Placeholder);
  v46 = (v225[80] + 16) & ~v225[80];
  v47 = (v30 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_100401CE4(v31, v48 + v46, type metadata accessor for ArtworkImage.Placeholder);
  v49 = v48 + v47;
  *v49 = 0;
  *(v49 + 8) = v244;
  *(v49 + 9) = *v243;
  *(v49 + 12) = *&v243[3];
  *(v49 + 16) = 0;
  *(v49 + 24) = v242;
  *(v49 + 25) = *v241;
  *(v49 + 28) = *&v241[3];
  *(v49 + 32) = 0;
  *(v49 + 40) = v240;
  *(v49 + 41) = 2;
  v225 = v38;
  sub_10000CC8C(v38, v36, &qword_1006F3E50, &qword_1005971F0);
  v50 = type metadata accessor for ArtworkImage.ViewModel(0);
  v51 = *(*(v50 - 8) + 48);
  if (v51(v36, 1, v50) == 1)
  {
    sub_10001036C(v36, &qword_1006F3E50, &qword_1005971F0);
    v52 = sub_100571E58();
    v53 = v201;
    (*(*(v52 - 8) + 56))(v201, 1, 1, v52);
  }

  else
  {
    v54 = sub_100571E58();
    v55 = *(v54 - 8);
    v53 = v201;
    (*(v55 + 16))(v201, v36, v54);
    sub_1004021C8(v36, type metadata accessor for ArtworkImage.ViewModel);
    (*(v55 + 56))(v53, 0, 1, v54);
  }

  sub_10000CC8C(v53, v202, &unk_1006F3B10, &unk_100599150);
  v56 = v206;
  sub_10056DC58();
  sub_10001036C(v53, &unk_1006F3B10, &unk_100599150);
  sub_10056DC08();
  v57 = v200;
  sub_10000CC8C(v225, v200, &qword_1006F3E50, &qword_1005971F0);
  if (v51(v57, 1, v50) == 1)
  {
    sub_10001036C(v57, &qword_1006F3E50, &qword_1005971F0);
    v58 = v210;
    v59 = v209;
    v60 = v212;
    (*(v210 + 56))(v209, 1, 1, v212);
    v61 = v223;
  }

  else
  {
    v59 = v209;
    sub_10000CC8C(v57 + *(v50 + 20), v209, &qword_1006F2C40, &qword_10059C100);
    sub_1004021C8(v57, type metadata accessor for ArtworkImage.ViewModel);
    v58 = v210;
    v60 = v212;
    v62 = (*(v210 + 48))(v59, 1, v212);
    v61 = v223;
    if (v62 != 1)
    {
      v63 = v208;
      (*(v58 + 32))(v208, v59, v60);
      goto LABEL_12;
    }
  }

  v63 = v208;
  if (qword_1006EEB38 != -1)
  {
    swift_once();
  }

  v64 = sub_10000C49C(v60, static Artwork.CropStyle.fallback);
  (*(v58 + 16))(v63, v64, v60);
  if ((*(v58 + 48))(v59, 1, v60) != 1)
  {
    sub_10001036C(v59, &qword_1006F2C40, &qword_10059C100);
  }

LABEL_12:
  v65 = v204;
  v66 = v226;
  sub_10056DBE8();
  (*(v58 + 8))(v63, v60);
  v67 = *(v211 + 8);
  v68 = v213;
  v67(v66, v213);
  v69 = v207;
  sub_10056DC18();
  v67(v65, v68);
  sub_100009DCC(&qword_1006F18C8, &qword_10059C530);
  sub_1003CC8F4();
  sub_10056DBF8();

  v67(v69, v68);
  v67(v56, v68);
  (*(v228 + 8))(v227, v205);
  sub_1004021C8(v203, type metadata accessor for ArtworkImage.Placeholder);
  sub_10001036C(v225, &qword_1006F3E50, &qword_1005971F0);
  if (qword_1006EEBB0 != -1)
  {
    swift_once();
  }

  sub_1005709E8();
  sub_10056E888();
  v70 = (v61 + *(sub_100009DCC(&qword_1006F31C8, &qword_10059EBE8) + 36));
  v71 = v231;
  *v70 = v230;
  v70[1] = v71;
  v70[2] = v232;
  if (qword_1006EEAD0 != -1)
  {
    swift_once();
  }

  v72 = static Corner.small;
  v73 = *algn_1006FE298;
  v74 = byte_1006FE2A0;
  v75 = v61 + *(sub_100009DCC(&qword_1006F31D0, &qword_10059EBF0) + 36);
  *v75 = v72;
  *(v75 + 8) = v73;
  *(v75 + 16) = v74;
  if (qword_1006EEAF0 != -1)
  {
    swift_once();
  }

  v76 = static Border.artwork;
  v77 = qword_1006FE2F8;
  v78 = byte_1006FE300;
  v79 = v61 + *(sub_100009DCC(&qword_1006F31D8, &qword_10059EBF8) + 36);
  *v79 = v76;
  *(v79 + 8) = v77;
  *(v79 + 16) = v78;
  *(v79 + 24) = v72;
  *(v79 + 32) = v73;
  *(v79 + 40) = v74;

  sub_1005704A8();
  v80 = sub_1005704E8();

  v81 = v61 + *(v214 + 36);
  *v81 = v80;
  *(v81 + 8) = xmmword_100596EB0;
  *(v81 + 24) = 0x4000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  v82 = v215;
  sub_10056E478();

  v83 = sub_1005721E8();
  v85 = v84;
  (*(v216 + 8))(v82, v217);
  *&v233 = v83;
  *(&v233 + 1) = v85;
  sub_10037AD68();
  v86 = sub_10056FF28();
  v88 = v87;
  v90 = v89;
  LODWORD(v233) = sub_10056F6C8();
  v91 = sub_10056FE28();
  v93 = v92;
  v95 = v94;
  sub_10001B5A4(v86, v88, v90 & 1);

  if (qword_1006EEB60 != -1)
  {
    swift_once();
  }

  v96 = sub_10056FE88();
  v98 = v97;
  v100 = v99;

  sub_10001B5A4(v91, v93, v95 & 1);

  sub_10056FB88();
  v227 = sub_10056FD98();
  v226 = v101;
  LODWORD(v103) = v102;
  v228 = v104;
  sub_10001B5A4(v96, v98, v100 & 1);

  v105 = sub_1003E3CCC();
  v106 = 1;
  if (v105)
  {
    v107 = sub_10056F208();
    v108 = v195;
    *v195 = v107;
    *(v108 + 8) = 0x4020000000000000;
    *(v108 + 16) = 0;
    v109 = sub_100009DCC(&qword_1006F31E8, &qword_10059EC08);
    v110 = v190;
    sub_1003EEBAC(v190, (v108 + *(v109 + 44)));
    *(v108 + *(sub_100009DCC(&qword_1006F31F0, &qword_10059EC10) + 36)) = 256;
    v111 = sub_10056FA48();
    if (qword_1006EEB98 != -1)
    {
      swift_once();
    }

    LODWORD(v229) = v103;
    sub_10056E598();
    v112 = v108 + *(v178 + 36);
    *v112 = v111;
    *(v112 + 8) = v113;
    *(v112 + 16) = v114;
    *(v112 + 24) = v115;
    *(v112 + 32) = v116;
    *(v112 + 40) = 0;
    v117 = v182;
    sub_1003EFCA8(v110, v182);
    sub_1005709F8();
    sub_10056EDF8();
    v118 = v191;
    sub_100019B40(v117, v191, &qword_1006F3170, &qword_10059EB90);
    v119 = (v118 + *(v179 + 36));
    v120 = v238;
    v119[4] = v237;
    v119[5] = v120;
    v119[6] = v239;
    v121 = v234;
    *v119 = v233;
    v119[1] = v121;
    v122 = v236;
    v119[2] = v235;
    v119[3] = v122;
    KeyPath = swift_getKeyPath();
    v124 = v118;
    v125 = v188;
    sub_100019B40(v124, v188, &qword_1006F3178, &qword_10059EB98);
    v126 = v125 + *(v189 + 36);
    *v126 = KeyPath;
    *(v126 + 8) = 0;
    *(v126 + 16) = 1;
    v127 = v125;
    v128 = v185;
    sub_100019B40(v127, v185, &qword_1006F3180, &qword_10059EBA0);
    *(v128 + *(v186 + 36)) = 256;
    LODWORD(KeyPath) = sub_10056F6F8();
    v129 = v128;
    v130 = v184;
    sub_100019B40(v129, v184, &qword_1006F3188, &qword_10059EBA8);
    *(v130 + *(v181 + 36)) = KeyPath;
    v131 = sub_10056FC48();
    v132 = swift_getKeyPath();
    v133 = v130;
    v134 = v187;
    sub_100019B40(v133, v187, &qword_1006F3190, &qword_10059EBB0);
    v135 = (v134 + *(v180 + 36));
    *v135 = v132;
    v135[1] = v131;
    LOBYTE(v131) = sub_10056FA28();
    sub_10056E598();
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v144 = v134;
    v145 = v194;
    sub_100019B40(v144, v194, &qword_1006F3198, &qword_10059EBB8);
    v146 = v145 + *(v183 + 36);
    *v146 = v131;
    *(v146 + 8) = v137;
    *(v146 + 16) = v139;
    *(v146 + 24) = v141;
    *(v146 + 32) = v143;
    *(v146 + 40) = 0;
    v147 = sub_10056FA48();
    if (qword_1006EEBA0 != -1)
    {
      swift_once();
    }

    sub_10056E598();
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v156 = v145;
    v157 = v192;
    sub_100019B40(v156, v192, &qword_1006F31A0, &qword_10059EBC0);
    v158 = v157 + *(v193 + 36);
    *v158 = v147;
    *(v158 + 8) = v149;
    *(v158 + 16) = v151;
    *(v158 + 24) = v153;
    *(v158 + 32) = v155;
    *(v158 + 40) = 0;
    v159 = v197;
    sub_100019B40(v157, v197, &qword_1006F31A8, &qword_10059EBC8);
    v160 = v196;
    sub_10000CC8C(v108, v196, &qword_1006F31B0, &qword_10059EBD0);
    v161 = v198;
    sub_10000CC8C(v159, v198, &qword_1006F31A8, &qword_10059EBC8);
    v103 = v108;
    v162 = v199;
    sub_10000CC8C(v160, v199, &qword_1006F31B0, &qword_10059EBD0);
    v163 = sub_100009DCC(&qword_1006F31F8, &qword_10059EC18);
    sub_10000CC8C(v161, v162 + *(v163 + 48), &qword_1006F31A8, &qword_10059EBC8);
    v164 = v162 + *(v163 + 64);
    sub_10001036C(v159, &qword_1006F31A8, &qword_10059EBC8);
    sub_10001036C(v103, &qword_1006F31B0, &qword_10059EBD0);
    *v164 = 0x3FF0000000000000;
    *(v164 + 8) = 0;
    sub_10001036C(v161, &qword_1006F31A8, &qword_10059EBC8);
    sub_10001036C(v160, &qword_1006F31B0, &qword_10059EBD0);
    sub_100019B40(v162, v224, &qword_1006F3168, &qword_10059EB88);
    v106 = 0;
    v61 = v223;
    LOBYTE(v103) = v229;
  }

  v165 = v224;
  (*(v220 + 56))(v224, v106, 1, v221);
  v229 = sub_10056F218();
  v166 = v218;
  sub_10000CC8C(v61, v218, &qword_1006F31C0, &qword_10059EBE0);
  v167 = v219;
  sub_10000CC8C(v165, v219, &qword_1006F31B8, &qword_10059EBD8);
  v168 = v222;
  sub_10000CC8C(v166, v222, &qword_1006F31C0, &qword_10059EBE0);
  v169 = v61;
  v170 = sub_100009DCC(&qword_1006F31E0, &qword_10059EC00);
  v171 = v168 + v170[12];
  v172 = v227;
  v173 = v226;
  *v171 = v227;
  *(v171 + 8) = v173;
  v174 = v103 & 1;
  *(v171 + 16) = v174;
  *(v171 + 24) = v228;
  sub_10000CC8C(v167, v168 + v170[16], &qword_1006F31B8, &qword_10059EBD8);
  v175 = v168 + v170[20];
  sub_10002AAC4(v172, v173, v174);

  sub_10001036C(v165, &qword_1006F31B8, &qword_10059EBD8);
  sub_10001036C(v169, &qword_1006F31C0, &qword_10059EBE0);
  *v175 = v229;
  *(v175 + 8) = 0;
  *(v175 + 16) = 1;
  *(v175 + 24) = 0;
  *(v175 + 32) = 1;
  sub_10001036C(v167, &qword_1006F31B8, &qword_10059EBD8);
  sub_10001B5A4(v172, v173, v174);

  return sub_10001036C(v166, &qword_1006F31C0, &qword_10059EBE0);
}

uint64_t sub_1003EEBAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a2;
  v95 = sub_100009DCC(&qword_1006F3260, &qword_10059EC70);
  v99 = *(v95 - 8);
  __chkstk_darwin();
  v90 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = v78 - v4;
  sub_100009DCC(&qword_1006F3268, &qword_10059EC78);
  __chkstk_darwin();
  v100 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = v78 - v6;
  sub_100009DCC(&qword_1006EF140, &qword_100598890);
  __chkstk_darwin();
  v87 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v78 - v8;
  v10 = type metadata accessor for Collaboration.Management.View(0) - 8;
  v11 = *v10;
  __chkstk_darwin();
  v102 = v12;
  v13 = (v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  __chkstk_darwin();
  v86 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v78 - v16;
  v93 = sub_100009DCC(&qword_1006F3270, &qword_10059EC80);
  __chkstk_darwin();
  v85 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = v78 - v19;
  v20 = sub_100009DCC(&qword_1006F3278, &qword_10059EC88);
  v97 = *(v20 - 8);
  v98 = v20;
  __chkstk_darwin();
  v96 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = v78 - v22;
  v92 = type metadata accessor for Collaboration.Management.View;
  sub_100401C78(a1, v13, type metadata accessor for Collaboration.Management.View);
  v23 = *(v11 + 80);
  v24 = swift_allocObject();
  v91 = type metadata accessor for Collaboration.Management.View;
  sub_100401CE4(v13, v24 + ((v23 + 16) & ~v23), type metadata accessor for Collaboration.Management.View);
  *&v17[*(v14 + 24)] = swift_getKeyPath();
  v82 = sub_100009DCC(&qword_1006F2D40, &qword_1005973F8);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *v17 = 0;
  *(v17 + 1) = sub_100404F50;
  *(v17 + 2) = v24;
  v84 = v14;
  v26 = &v17[*(v14 + 28)];
  *v26 = KeyPath;
  v26[8] = 0;
  v27 = a1;
  v81 = *(a1 + 8);
  sub_1003E5330(v9);
  v28 = sub_10056C8A8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  v80 = v28;
  v79 = v30;
  v78[1] = v29 + 48;
  v31 = (v30)(v9, 1) == 1;
  sub_10001036C(v9, &qword_1006EF140, &qword_100598890);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  v34 = v103;
  sub_100401CE4(v17, v103, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v35 = v93;
  v36 = (v34 + *(v93 + 36));
  *v36 = v32;
  v36[1] = sub_100034F8C;
  v36[2] = v33;
  v37 = v27 + *(v10 + 44);
  v38 = *v37;
  v39 = *(v37 + 8);
  v105 = v38;
  v106 = v39;
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570698();
  v88 = v27;
  sub_100401C78(v27, v13, v92);
  v83 = v23;
  v40 = (v23 + 16) & ~v23;
  v41 = swift_allocObject();
  v92 = v13;
  sub_100401CE4(v13, v41 + v40, v91);
  sub_100009DCC(&qword_1006F3280, &unk_10059ED20);
  sub_100405014();
  v42 = v95;
  sub_100404074(&qword_1006F32A8, &qword_1006F3280, &unk_10059ED20, sub_100401980);
  v43 = v35;
  v44 = v103;
  sub_1005702B8();

  v45 = 1;
  v46 = v94;

  sub_10001036C(v44, &qword_1006F3270, &qword_10059EC80);
  v47 = [objc_opt_self() currentTraitCollection];
  v48 = [v47 userInterfaceIdiom];

  if (v48 != 6)
  {
    v49 = v92;
    sub_100401C78(v88, v92, type metadata accessor for Collaboration.Management.View);
    v50 = swift_allocObject();
    sub_100401CE4(v49, v50 + v40, type metadata accessor for Collaboration.Management.View);
    v51 = swift_getKeyPath();
    v52 = v84;
    v53 = v86;
    *&v86[*(v84 + 24)] = v51;
    swift_storeEnumTagMultiPayload();
    v54 = swift_getKeyPath();
    *v53 = 1;
    *(v53 + 8) = sub_1004050FC;
    *(v53 + 16) = v50;
    v55 = v53 + *(v52 + 28);
    *v55 = v54;
    *(v55 + 8) = 0;
    v56 = v87;
    sub_1003E5330(v87);
    v57 = v79(v56, 1, v80) == 1;
    sub_10001036C(v56, &qword_1006EF140, &qword_100598890);
    v58 = swift_getKeyPath();
    v59 = swift_allocObject();
    *(v59 + 16) = v57;
    v60 = v85;
    sub_100401CE4(v53, v85, _s10ManagementO4ViewV5ShareO6ButtonVMa);
    v61 = (v60 + *(v43 + 36));
    *v61 = v58;
    v61[1] = sub_1004066FC;
    v61[2] = v59;
    v62 = v60;
    v63 = v90;
    sub_100019B40(v62, v90, &qword_1006F3270, &qword_10059EC80);
    v64 = (v63 + *(v42 + 36));
    *v64 = sub_1003EFC80;
    v64[1] = 0;
    v65 = v63;
    v66 = v89;
    sub_100019B40(v65, v89, &qword_1006F3260, &qword_10059EC70);
    sub_100019B40(v66, v46, &qword_1006F3260, &qword_10059EC70);
    v45 = 0;
  }

  v67 = v46;
  (*(v99 + 56))(v46, v45, 1, v42);
  v69 = v96;
  v68 = v97;
  v70 = *(v97 + 16);
  v71 = v104;
  v72 = v98;
  v70(v96, v104, v98);
  v73 = v100;
  sub_10000CC8C(v46, v100, &qword_1006F3268, &qword_10059EC78);
  v74 = v101;
  v70(v101, v69, v72);
  v75 = sub_100009DCC(&qword_1006F32B0, &qword_10059ED30);
  sub_10000CC8C(v73, &v74[*(v75 + 48)], &qword_1006F3268, &qword_10059EC78);
  sub_10001036C(v67, &qword_1006F3268, &qword_10059EC78);
  v76 = *(v68 + 8);
  v76(v71, v72);
  sub_10001036C(v73, &qword_1006F3268, &qword_10059EC78);
  return (v76)(v69, v72);
}

uint64_t sub_1003EF688(uint64_t a1)
{
  v2 = sub_10056DF88();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 36));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570688();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_10056DF68();
  v11 = sub_100573448();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Share Sheet button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003EF830@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1005722D8();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006EF140, &qword_100598890);
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = sub_10056C8A8();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003E5330(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_10001036C(v8, &qword_1006EF140, &qword_100598890);
    v14 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    swift_getKeyPath();
    v16 = v3;
    swift_getKeyPath();

    sub_10056E478();

    v14 = Collaboration.Manager.activityViewController(for:url:)();

    (*(v4 + 8))(v6, v16);
    result = (*(v10 + 8))(v12, v9);
  }

  *a2 = v14;
  return result;
}

uint64_t sub_1003EFAD8(uint64_t a1)
{
  v2 = sub_10056DF88();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 40));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570688();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_10056DF68();
  v11 = sub_100573448();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] QRCode button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003EFCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin();
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&qword_1006F3200, &qword_10059EC20);
  __chkstk_darwin();
  v6 = &v31 - v5;
  v7 = sub_100009DCC(&qword_1006F3208, &qword_10059EC28);
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = sub_100009DCC(&qword_1006F3210, &qword_10059EC30);
  __chkstk_darwin();
  v12 = &v31 - v11;
  v39 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v42 == 1)
  {
    *v12 = sub_10056F218();
    *(v12 + 1) = 0x4020000000000000;
    v12[16] = 0;
    v13 = sub_100009DCC(&qword_1006F3250, &qword_10059EC50);
    sub_1003F01C0(&v12[*(v13 + 44)]);
    sub_10000CC8C(v12, v9, &qword_1006F3210, &qword_10059EC30);
    swift_storeEnumTagMultiPayload();
    sub_100010BC0(&qword_1006F3228, &qword_1006F3210, &qword_10059EC30, &protocol conformance descriptor for HStack<A>);
    sub_100404D2C();
    v14 = v41;
    sub_10056F5B8();
    sub_10001036C(v12, &qword_1006F3210, &qword_10059EC30);
    v15 = 0;
    v16 = v14;
  }

  else
  {
    v36 = v7;
    v37 = v10;
    v16 = v41;
    sub_1003E47BC();
    if (v17)
    {
      sub_10056F2C8();
      v18 = sub_10056FF08();
      v33 = v19;
      v34 = v18;
      v32 = v20;
      v35 = v21;
      v31 = sub_100570458();
      KeyPath = swift_getKeyPath();
      v23 = swift_getKeyPath();
      v24 = v40;
      sub_100401C78(v39, v40, type metadata accessor for Collaboration.Management.View);
      v25 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v26 = swift_allocObject();
      sub_100401CE4(v24, v26 + v25, type metadata accessor for Collaboration.Management.View);
      v27 = &v6[*(v4 + 36)];
      sub_100009DCC(&qword_1006F3220, &qword_10059EC40);
      sub_10056E9A8();
      *v27 = v23;
      v28 = v33;
      *v6 = v34;
      *(v6 + 1) = v28;
      v6[16] = v32 & 1;
      *(v6 + 3) = v35;
      *(v6 + 4) = KeyPath;
      *(v6 + 5) = v31;
      sub_10000CC8C(v6, v9, &qword_1006F3200, &qword_10059EC20);
      swift_storeEnumTagMultiPayload();
      sub_100010BC0(&qword_1006F3228, &qword_1006F3210, &qword_10059EC30, &protocol conformance descriptor for HStack<A>);
      sub_100404D2C();
      sub_10056F5B8();
      sub_10001036C(v6, &qword_1006F3200, &qword_10059EC20);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }
  }

  v29 = sub_100009DCC(&qword_1006F3218, &qword_10059EC38);
  return (*(*(v29 - 8) + 56))(v16, v15, 1, v29);
}

uint64_t sub_1003F01C0@<X0>(char *a1@<X8>)
{
  v32 = a1;
  sub_10056CC38();
  __chkstk_darwin();
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v30 - v5;
  v7 = sub_100009DCC(&qword_1006F2CF8, &qword_10059E5D8);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v30 - v11;
  sub_10056E7E8();
  sub_100572818();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v13 = qword_1006FDF00;
  sub_10056CBC8();
  v14 = sub_100572948();
  v16 = v15;
  (*(v2 + 8))(v6, v1);
  v33 = v14;
  v34 = v16;
  sub_10037AD68();
  v17 = sub_10056FF28();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v8 + 16);
  v24(v10, v12, v7);
  v31 = v12;
  v25 = v10;
  v26 = v32;
  v24(v32, v25, v7);
  v27 = &v26[*(sub_100009DCC(&qword_1006F3258, &qword_10059EC58) + 48)];
  *v27 = v17;
  *(v27 + 1) = v19;
  v27[16] = v21 & 1;
  *(v27 + 3) = v23;
  sub_10002AAC4(v17, v19, v21 & 1);
  v28 = *(v8 + 8);

  v28(v31, v7);
  sub_10001B5A4(v17, v19, v21 & 1);

  return (v28)(v25, v7);
}

uint64_t sub_1003F05A0(uint64_t a1, uint64_t a2)
{
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v4 = &v9[-v3];
  v5 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v9[15] = 1;

  sub_10056E488();
  v6 = sub_100572F48();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_100396F38(0, 0, v4, &unk_10059EC68, v7);

  return sub_10056E998();
}

uint64_t sub_1003F070C@<X0>(uint64_t a1@<X8>)
{
  sub_100009DCC(&qword_1006EF140, &qword_100598890);
  __chkstk_darwin();
  v3 = &v26 - v2;
  v4 = sub_10056C8A8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003E5330(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = sub_10001036C(v3, &qword_1006EF140, &qword_100598890);
    v9 = 0;
    v10 = 0;
LABEL_6:
    v17 = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
    v25 = 0;
    v24 = 0uLL;
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, v3, v4);
  v11 = sub_10056C7D8();
  v13 = QRCode.init(data:errorCorrectionLevel:)(v11, v12, 76, &v27);
  v14 = *(&v27 + 1);
  v15 = v28;
  v16 = v29;
  result = (*(v5 + 8))(v7, v4, v13);
  v10 = v29;
  if (!v29)
  {
    v9 = 0;
    goto LABEL_6;
  }

  v17 = v30;
  v9 = v28;
  v26 = v27;
  sub_1000F54C8(v14, v15);
  v18 = v16;
  v19 = sub_10056ECC8();
  v20 = sub_10056FA38();
  v21 = sub_1005709E8();
  v23 = v22;
  result = sub_10001036C(&v27, &qword_1006F3160, &qword_10059EB80);
  v24 = v26;
  v25 = v20;
LABEL_7:
  *a1 = v24;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v17;
  *(a1 + 40) = v19;
  *(a1 + 48) = v25;
  *(a1 + 56) = v21;
  *(a1 + 64) = v23;
  return result;
}

uint64_t sub_1003F0960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100009DCC(&unk_1006F2A60, &qword_10059A450);
  __chkstk_darwin();
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v19[-v8];
  v10 = sub_100571FD8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a3, a1, v10);
  v12 = *(a2 + 8);
  KeyPath = swift_getKeyPath();
  v14 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  *(a3 + v14[9]) = KeyPath;
  sub_100009DCC(&unk_1006EEDC0, &qword_100597298);
  swift_storeEnumTagMultiPayload();
  *(a3 + v14[5]) = v12;
  v15 = a3 + v14[6];
  v19[15] = 0;

  sub_100570668();
  v16 = v20;
  *v15 = v19[16];
  *(v15 + 8) = v16;
  (*(v11 + 56))(v9, 1, 1, v10);
  sub_10000CC8C(v9, v7, &unk_1006F2A60, &qword_10059A450);
  sub_100570668();
  sub_10001036C(v9, &unk_1006F2A60, &qword_10059A450);
  v17 = v14[8];
  *(a3 + v17) = swift_getKeyPath();
  sub_100009DCC(&unk_1006F2270, &qword_100597260);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003F0BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v35 = a2;
  v3 = sub_10056F638();
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (type metadata accessor for Collaboration.Management.View(0) - 8);
  v8 = *v7;
  v9 = *(*v7 + 64);
  __chkstk_darwin();
  v10 = sub_100009DCC(&qword_1006F3100, &qword_10059EB30);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v30 - v12;
  v14 = sub_100009DCC(&qword_1006F30F8, &qword_10059EB28);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  __chkstk_darwin();
  v17 = &v30 - v16;
  sub_100401C78(a1, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_100401CE4(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Collaboration.Management.View);
  sub_100009DCC(&qword_1006F3118, &qword_10059EB38);
  sub_10040452C();
  sub_1005706D8();
  sub_10056F628();
  v20 = sub_100010BC0(&qword_1006F3108, &qword_1006F3100, &qword_10059EB30, &protocol conformance descriptor for Button<A>);
  v21 = sub_1003FFF94(&qword_1006F3110, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v22 = v31;
  sub_10056FFE8();
  v23 = v22;
  (*(v32 + 8))(v6, v22);
  (*(v11 + 8))(v13, v10);
  v24 = v30;
  v25 = v30 + v7[14];
  v26 = *v25;
  v27 = *(v25 + 8);
  v41 = v26;
  v42 = v27;
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570698();
  v36 = v24;
  v37 = v10;
  v38 = v23;
  v39 = v20;
  v40 = v21;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_100570278();

  return (*(v34 + 8))(v17, v28);
}

uint64_t sub_1003F1040(uint64_t a1)
{
  v2 = sub_10056DF88();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 48));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570688();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_10056DF68();
  v11 = sub_100573448();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Remove Join Request button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

__n128 sub_1003F11E8@<Q0>(uint64_t a1@<X8>)
{
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v25 - v6;
  sub_100572818();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FDF00;
  sub_10056CBC8();
  v9 = sub_100572948();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  *&v25[0] = v9;
  *(&v25[0] + 1) = v11;
  sub_10037AD68();
  v12 = sub_10056FF28();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1005709E8();
  sub_10056EDF8();
  v19 = v16 & 1;
  v26 = v16 & 1;
  v20 = sub_100570488();
  KeyPath = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  v22 = v25[5];
  *(a1 + 96) = v25[4];
  *(a1 + 112) = v22;
  *(a1 + 128) = v25[6];
  v23 = v25[1];
  *(a1 + 32) = v25[0];
  *(a1 + 48) = v23;
  result = v25[3];
  *(a1 + 64) = v25[2];
  *(a1 + 80) = result;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v20;
  return result;
}

uint64_t sub_1003F1490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = a2;
  v51 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  __chkstk_darwin();
  v52 = v2;
  v54 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100570438();
  __chkstk_darwin();
  v56 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v43 - v4;
  sub_10056CC38();
  __chkstk_darwin();
  v5 = sub_100572888();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v43 - v9;
  sub_100572818();
  v11 = *(v6 + 16);
  v43[4] = v6 + 16;
  v44 = v11;
  v11(v8, v10, v5);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v12 = qword_1006FDF00;
  v13 = qword_1006FDF00;
  v58 = v12;
  v14 = v13;
  sub_10056CBC8();
  v15 = v14;
  v16 = sub_100572948();
  v18 = v17;
  v19 = *(v6 + 8);
  v19(v10, v5);
  v43[1] = v6 + 8;
  v59 = v16;
  v60 = v18;
  v43[0] = sub_10037AD68();
  v20 = sub_10056FF28();
  v49 = v21;
  v50 = v20;
  v47 = v22;
  v48 = v23;
  sub_100572818();
  v24 = v44;
  v44(v8, v10, v5);
  sub_10056CBC8();
  v25 = sub_100572948();
  v27 = v26;
  v19(v10, v5);
  v59 = v25;
  v60 = v27;
  v46 = sub_10056FF28();
  v43[3] = v28;
  v45 = v29;
  v43[2] = v30 & 1;
  sub_100572818();
  v24(v8, v10, v5);
  sub_10056CBC8();
  v31 = sub_100572948();
  v33 = v32;
  v19(v10, v5);
  v59 = v31;
  v60 = v33;
  v34 = sub_10056FF28();
  v36 = v35;
  v38 = v37;
  v39 = v54;
  sub_100401C78(v53, v54, type metadata accessor for Collaboration.Management.View);
  v40 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v41 = swift_allocObject();
  sub_100401CE4(v39, v41 + v40, type metadata accessor for Collaboration.Management.View);
  sub_100570408();
  sub_10001B5A4(v34, v36, v38 & 1);

  sub_100570418();
  return sub_1005703F8();
}

uint64_t sub_1003F1A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10056E918();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v10 = &v15 - v9;
  v11 = *(a1 + 8);
  v12 = sub_100572F48();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;

  sub_100396F38(0, 0, v10, a3, v13);

  type metadata accessor for Collaboration.Management.View(0);
  sub_1003BEDC8(v8);
  sub_10056E908();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003F1C0C(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  sub_100401C78(a1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_100401CE4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for Collaboration.Management.View);
  sub_100009DCC(&qword_1006F21D0, &qword_10059DBB0);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_100010BC0(&qword_1006F3138, &qword_1006F21D0, &qword_10059DBB0, &protocol conformance descriptor for [A]);
  sub_1003FFF94(&qword_1006F30D0, _s10ManagementO4ViewV19CollaboratorRowViewVMa, &unk_10059E3E0);
  sub_1003FFF94(&qword_1006F3140, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  return sub_1005708C8();
}

uint64_t sub_1003F1E7C@<X0>(uint64_t a2@<X8>)
{
  sub_10056CC38();
  __chkstk_darwin();
  v3 = sub_100572888();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v18 - v7;
  sub_100572868();
  __chkstk_darwin();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v9 = *(v19 + 16);

  sub_100572858();
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_100572848(v21);
  v19 = v9;
  sub_100572828();
  v22._object = 0x80000001005B9300;
  v22._countAndFlagsBits = 0xD000000000000010;
  sub_100572848(v22);
  sub_100572878();
  (*(v4 + 16))(v6, v8, v3);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v10 = qword_1006FDF00;
  sub_10056CBC8();
  v11 = sub_100572948();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v19 = v11;
  v20 = v13;
  sub_10037AD68();
  result = sub_10056FF28();
  *a2 = result;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v17;
  return result;
}

uint64_t sub_1003F217C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  *a2 = sub_10056F218();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v12 = *(sub_100009DCC(&qword_1006F3148, &qword_10059EB58) + 44);
  sub_100401C78(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  sub_100572F08();
  v6 = sub_100572EF8();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_100401CE4(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for Collaboration.Management.View);
  sub_100401C78(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v9 = sub_100572EF8();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  sub_100401CE4(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7, type metadata accessor for Collaboration.Management.View);
  sub_100570828();
  return sub_1005707A8();
}

void sub_1003F23BC(BOOL *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a2 = (v3 & 1) == 0;
}

double sub_1003F2444(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = *a1;
  v9 = *(a4 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = (v8 & 1) == 0;
  v14[15] = v10;

  sub_10056E488();
  v11 = sub_100572F48();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;

  sub_100397238(0, 0, v7, &unk_10059EB68, v12);

  return result;
}

uint64_t sub_1003F25B4@<X0>(uint64_t a1@<X8>)
{
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  sub_100572818();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FDF00;
  sub_10056CBC8();
  v9 = sub_100572948();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  sub_10037AD68();
  result = sub_10056FF28();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

__n128 sub_1003F27C4@<Q0>(uint64_t a2@<X8>)
{
  sub_10056CC38();
  __chkstk_darwin();
  v3 = sub_100572888();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v38[-v7];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if ((v42 & 1) == 0)
  {
    sub_100572818();
    (*(v4 + 16))(v6, v8, v3);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v22 = qword_1006FDF00;
    sub_10056CBC8();
    v23 = sub_100572948();
    v25 = v24;
    (*(v4 + 8))(v8, v3);
    *&v42 = v23;
    *(&v42 + 1) = v25;
    sub_10037AD68();
    v15 = sub_10056FF28();
    v17 = v15;
    v18 = v16;
    *&v39 = v15;
    *(&v39 + 1) = v16;
    v20 = v26 & 1;
    v40.n128_u64[0] = v26 & 1;
    v40.n128_u64[1] = v27;
    LOBYTE(v41) = 0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v9 = *(v42 + 16);

  v10 = (v4 + 16);
  if (v9)
  {
    sub_100572818();
    (*v10)(v6, v8, v3);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v11 = qword_1006FDF00;
    sub_10056CBC8();
    v12 = sub_100572948();
    v14 = v13;
    (*(v4 + 8))(v8, v3);
    *&v42 = v12;
    *(&v42 + 1) = v14;
    sub_10037AD68();
    v15 = sub_10056FF28();
    v17 = v15;
    v18 = v16;
    v20 = v19 & 1;
    *&v39 = v15;
    *(&v39 + 1) = v16;
    v40.n128_u64[0] = v19 & 1;
    v40.n128_u64[1] = v21;
    LOBYTE(v41) = 1;
LABEL_9:
    sub_10002AAC4(v15, v16, v20);

    sub_10056F5B8();
    v39 = v42;
    v40 = v43;
    v41 = v44;
    sub_100009DCC(&qword_1006F1260, &unk_10059BF60);
    sub_1003BD834();
    sub_10056F5B8();
    sub_10001B5A4(v17, v18, v20);

    goto LABEL_10;
  }

  sub_100572818();
  (*v10)(v6, v8, v3);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v31 = qword_1006FDF00;
  sub_10056CBC8();
  v32 = sub_100572948();
  v34 = v33;
  (*(v4 + 8))(v8, v3);
  *&v42 = v32;
  *(&v42 + 1) = v34;
  sub_10037AD68();
  *&v39 = sub_10056FF28();
  *(&v39 + 1) = v35;
  v40.n128_u64[0] = v36 & 1;
  v40.n128_u64[1] = v37;
  v41 = 256;
  sub_100009DCC(&qword_1006F1260, &unk_10059BF60);
  sub_1003BD834();
  sub_10056F5B8();
LABEL_10:
  result = v43;
  v29 = v44;
  v30 = v45;
  *a2 = v42;
  *(a2 + 16) = result;
  *(a2 + 32) = v29;
  *(a2 + 33) = v30;
  return result;
}

uint64_t sub_1003F2D88(uint64_t a1)
{
  sub_10056F608();
  __chkstk_darwin();
  v2 = sub_100009DCC(&qword_1006F22E0, &qword_10059DCD0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7[-v4];
  sub_10056F5F8();
  v8 = a1;
  sub_100009DCC(&qword_1006F2F98, &qword_10059EA48);
  sub_100010BC0(&qword_1006F2FA0, &qword_1006F2F98, &qword_10059EA48, &protocol conformance descriptor for Button<A>);
  sub_10056E738();
  sub_100010BC0(&qword_1006F22E8, &qword_1006F22E0, &qword_10059DCD0, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_10056F698();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003F2F74(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  sub_10056E588();
  __chkstk_darwin();
  sub_10056E568();
  sub_100401C78(a1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_100401CE4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for Collaboration.Management.View);
  return sub_1005706E8();
}

uint64_t sub_1003F30F0(uint64_t a1)
{
  v16 = sub_10056F198();
  v2 = *(v16 - 8);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006EEDB0, &qword_1005A02C0);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = sub_10056E918();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Collaboration.Management.View(0);
  sub_10000CC8C(a1 + *(v11 + 20), v6, &unk_1006EEDB0, &qword_1005A02C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    v12 = sub_100573438();
    v13 = sub_10056F9D8();
    sub_10056DE58(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_10056E908();
  return (*(v8 + 8))(v10, v7);
}

void sub_1003F3378(uint64_t a1, _BYTE *a2)
{
  v3 = sub_10056E918();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a2 == 1)
  {
    type metadata accessor for Collaboration.Management.View(0);
    sub_1003BEDC8(v6);
    sub_10056E908();
    (*(v4 + 8))(v6, v3);
  }
}

void sub_1003F346C()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_1006F2110 = v1 == 6;
}

void sub_1003F3504()
{
  if (qword_1006EEB58 != -1)
  {
    swift_once();
  }

  if (byte_1006F2110 == 1)
  {
    v0 = sub_10056FAF8();
  }

  else
  {
    sub_10056FBC8();
    v0 = sub_10056FB28();
  }

  qword_1006F2120 = v0;
}

uint64_t sub_1003F358C()
{
  if (qword_1006EEB58 != -1)
  {
    result = swift_once();
  }

  v0 = 56.0;
  if (byte_1006F2110)
  {
    v0 = 68.0;
  }

  qword_1006F2128 = *&v0;
  return result;
}

uint64_t sub_1003F3698(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  if (qword_1006EEB58 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  if (byte_1006F2110 == 1)
  {
    result = a2();
  }

  else
  {
    result = a3();
  }

  *a4 = result;
  return result;
}

void sub_1003F3728(uint64_t a1)
{
  if (qword_1006EEB58 != -1)
  {
    swift_once();
  }

  if (byte_1006F2110 == 1)
  {
    sub_10056FB88();
  }

  else
  {
    sub_10056FB78();
  }

  qword_1006F2148 = v1;
}

uint64_t sub_1003F3790()
{
  if (qword_1006EEB58 != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (byte_1006F2110)
  {
    v0 = 0.0;
  }

  qword_1006F2150 = *&v0;
  return result;
}

uint64_t sub_1003F37F8()
{
  if (qword_1006EEB58 != -1)
  {
    result = swift_once();
  }

  v0 = -4.0;
  if (byte_1006F2110)
  {
    v0 = 0.0;
  }

  qword_1006F2158 = *&v0;
  return result;
}

uint64_t sub_1003F3860()
{
  if (qword_1006EEB58 != -1)
  {
    result = swift_once();
  }

  v0 = 32.0;
  if (byte_1006F2110)
  {
    v0 = 44.0;
  }

  qword_1006F2160 = *&v0;
  return result;
}

uint64_t sub_1003F38D0()
{
  if (qword_1006EEB58 != -1)
  {
    result = swift_once();
  }

  v0 = 84.0;
  if (byte_1006F2110)
  {
    v0 = 169.0;
  }

  qword_1006F2168 = *&v0;
  return result;
}

uint64_t sub_1003F3944()
{
  if (qword_1006EEB58 != -1)
  {
    result = swift_once();
  }

  v0 = 38.0;
  if (byte_1006F2110)
  {
    v0 = 48.0;
  }

  qword_1006F2170 = *&v0;
  return result;
}

uint64_t sub_1003F39B4()
{
  if (qword_1006EEB58 != -1)
  {
    swift_once();
  }

  if (byte_1006F2110 == 1)
  {
    result = sub_100570458();
  }

  else
  {
    if (qword_1006EE9F0 != -1)
    {
      swift_once();
    }

    v1 = static UIColor.MusicTint.normal;
    result = sub_100570528();
  }

  qword_1006F2178 = result;
  return result;
}

uint64_t sub_1003F3A5C()
{
  v0 = sub_10056EBD8();
  sub_10000C910(v0, qword_1006F2180);
  v1 = sub_10000C49C(v0, qword_1006F2180);
  v2 = enum case for DynamicTypeSize.accessibility2(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1003F3AE4()
{
  v0 = sub_10056EBD8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&qword_1006F2DA8, &qword_10059E668);
  sub_10000C910(v4, qword_1006F2198);
  v5 = sub_10000C49C(v4, qword_1006F2198);
  if (qword_1006EEBC8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000C49C(v0, qword_1006F2180);
  (*(v1 + 16))(v3, v6, v0);
  sub_1003FFF94(&unk_1006F2DF0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1005727E8();
  if (result)
  {
    return (*(v1 + 32))(v5, v3, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F3CB4@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = sub_10056F308();
  v40 = *(v42 - 8);
  __chkstk_darwin();
  v39 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10056F808();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin();
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009DCC(&qword_1006F2B78, &qword_10059E430);
  __chkstk_darwin();
  v7 = &v29 - v6;
  v30 = sub_100009DCC(&qword_1006F2B80, &qword_10059E438);
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v9 = &v29 - v8;
  v32 = sub_100009DCC(&qword_1006F2B88, &qword_10059E440);
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v34 = sub_100009DCC(&qword_1006F2B90, &qword_10059E448);
  v35 = *(v34 - 8);
  __chkstk_darwin();
  v29 = &v29 - v12;
  *v7 = sub_10056F218();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v13 = sub_100009DCC(&qword_1006F2B98, &qword_10059E450);
  sub_1003F42D4(v1, &v7[*(v13 + 44)]);
  v7[*(v5 + 36)] = 0;
  v44 = v1;
  v14 = sub_100009DCC(&qword_1006F2BA0, &qword_10059E458);
  v15 = sub_100401AA8();
  v16 = sub_100404074(&unk_1006F2BD0, &qword_1006F2BA0, &qword_10059E458, sub_100401B8C);
  sub_100570058();
  sub_10001036C(v7, &qword_1006F2B78, &qword_10059E430);
  v17 = v1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 24);
  v18 = *v17;
  v19 = *(v17 + 8);
  v49 = v18;
  v50 = v19;
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570698();
  v43 = v1;
  v45 = v5;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_100570278();

  (*(v31 + 8))(v9, v21);
  v22 = v36;
  sub_10056F7E8();
  v45 = v21;
  v46 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v29;
  v25 = v32;
  sub_1005701F8();
  (*(v37 + 8))(v22, v38);
  (*(v33 + 8))(v11, v25);
  v26 = v39;
  sub_10056F2F8();
  v45 = v25;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  sub_100570218();
  (*(v40 + 8))(v26, v42);
  return (*(v35 + 8))(v24, v27);
}

uint64_t sub_1003F42D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v3 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v109 = *(v3 - 8);
  __chkstk_darwin();
  v110 = v4;
  v111 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100009DCC(&qword_1006F2C20, &qword_10059E510);
  __chkstk_darwin();
  v116 = &v108 - v5;
  v115 = sub_100009DCC(&qword_1006F2C28, &qword_10059E518);
  __chkstk_darwin();
  v112 = &v108 - v6;
  v7 = sub_100009DCC(&qword_1006F2C30, &qword_10059E520);
  v143 = *(v7 - 8);
  v144 = v7;
  __chkstk_darwin();
  v114 = &v108 - v8;
  v9 = sub_1005722D8();
  v139 = *(v9 - 8);
  v140 = v9;
  __chkstk_darwin();
  v138 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2C38, &unk_10059E528);
  __chkstk_darwin();
  v145 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v147 = &v108 - v12;
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  __chkstk_darwin();
  v127 = &v108 - v13;
  v14 = sub_100571DC8();
  v128 = *(v14 - 8);
  v129 = v14;
  __chkstk_darwin();
  v126 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v122 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v121 = &v108 - v17;
  v18 = sub_10056DC68();
  v130 = *(v18 - 8);
  v131 = v18;
  __chkstk_darwin();
  v133 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v108 - v20;
  __chkstk_darwin();
  v125 = &v108 - v21;
  __chkstk_darwin();
  v135 = &v108 - v22;
  v136 = sub_10056DBD8();
  v134 = *(v136 - 8);
  __chkstk_darwin();
  v149 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v24 = *(v117 + 64);
  __chkstk_darwin();
  v118 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v132 = &v108 - v25;
  sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  __chkstk_darwin();
  v120 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = &v108 - v27;
  __chkstk_darwin();
  v148 = &v108 - v28;
  v151 = sub_100009DCC(&qword_1006F2C48, &qword_10059E538);
  v137 = *(v151 - 8);
  __chkstk_darwin();
  v124 = &v108 - v29;
  v30 = sub_10056EBD8();
  v31 = *(v30 - 8);
  __chkstk_darwin();
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v108 - v34;
  sub_100009DCC(&unk_1006F2C50, &unk_10059E540);
  __chkstk_darwin();
  v142 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v108 - v37;
  v141 = v3;
  v39 = a1;
  sub_1003BE970(v35);
  if (qword_1006EEBC8 != -1)
  {
    swift_once();
  }

  v40 = sub_10000C49C(v30, qword_1006F2180);
  (*(v31 + 16))(v33, v40, v30);
  sub_1003FFF94(&qword_1006EFB78, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v41 = sub_1005727B8();
  v42 = *(v31 + 8);
  v42(v33, v30);
  v42(v35, v30);
  v43 = 1;
  v44 = 1;
  v45 = v39;
  v46 = v38;
  v47 = v151;
  v150 = v38;
  if ((v41 & 1) == 0)
  {
    v48 = v148;
    sub_1003F59B0(v148);
    v49 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
    v50 = v132;
    (*(*(v49 - 8) + 56))(v132, 8, 11, v49);
    v174 = 1;
    v172 = 1;
    v170 = 1;
    (*(v134 + 104))(v149, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v136);
    v51 = v118;
    sub_100401C78(v50, v118, type metadata accessor for ArtworkImage.Placeholder);
    v52 = (*(v117 + 80) + 16) & ~*(v117 + 80);
    v53 = swift_allocObject();
    sub_100401CE4(v51, v53 + v52, type metadata accessor for ArtworkImage.Placeholder);
    v118 = v53;
    v54 = v53 + ((v24 + v52 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v54 = 0;
    *(v54 + 8) = v174;
    *(v54 + 9) = *v173;
    *(v54 + 12) = *&v173[3];
    *(v54 + 16) = 0;
    *(v54 + 24) = v172;
    *(v54 + 25) = *v171;
    *(v54 + 28) = *&v171[3];
    *(v54 + 32) = 0;
    *(v54 + 40) = v170;
    *(v54 + 41) = 2;
    v55 = v119;
    sub_10000CC8C(v48, v119, &qword_1006F3E50, &qword_1005971F0);
    v56 = type metadata accessor for ArtworkImage.ViewModel(0);
    v57 = *(*(v56 - 8) + 48);
    if (v57(v55, 1, v56) == 1)
    {
      sub_10001036C(v55, &qword_1006F3E50, &qword_1005971F0);
      v58 = sub_100571E58();
      v59 = v121;
      (*(*(v58 - 8) + 56))(v121, 1, 1, v58);
    }

    else
    {
      v60 = sub_100571E58();
      v61 = *(v60 - 8);
      v59 = v121;
      (*(v61 + 16))(v121, v55, v60);
      sub_1004021C8(v55, type metadata accessor for ArtworkImage.ViewModel);
      (*(v61 + 56))(v59, 0, 1, v60);
    }

    sub_10000CC8C(v59, v122, &unk_1006F3B10, &unk_100599150);
    sub_10056DC58();
    sub_10001036C(v59, &unk_1006F3B10, &unk_100599150);
    sub_10056DC08();
    v62 = v120;
    sub_10000CC8C(v148, v120, &qword_1006F3E50, &qword_1005971F0);
    v63 = v57(v62, 1, v56);
    v108 = v45;
    if (v63 == 1)
    {
      sub_10001036C(v62, &qword_1006F3E50, &qword_1005971F0);
      v64 = v127;
      v65 = v128;
      v66 = v129;
      (*(v128 + 56))(v127, 1, 1, v129);
      v67 = v126;
      v43 = 1;
    }

    else
    {
      v64 = v127;
      sub_10000CC8C(v62 + *(v56 + 20), v127, &qword_1006F2C40, &qword_10059C100);
      sub_1004021C8(v62, type metadata accessor for ArtworkImage.ViewModel);
      v65 = v128;
      v66 = v129;
      v68 = (*(v128 + 48))(v64, 1, v129);
      v67 = v126;
      v43 = 1;
      if (v68 != 1)
      {
        (*(v65 + 32))(v126, v64, v66);
LABEL_15:
        v70 = v123;
        v71 = v133;
        sub_10056DBE8();
        (*(v65 + 8))(v67, v66);
        v72 = v131;
        v73 = *(v130 + 8);
        v73(v71, v131);
        v74 = v125;
        sub_10056DC18();
        v73(v70, v72);
        sub_100009DCC(&qword_1006F18C8, &qword_10059C530);
        sub_1003CC8F4();
        v75 = v124;
        sub_10056DBF8();

        v73(v74, v72);
        v73(v135, v72);
        (*(v134 + 8))(v149, v136);
        sub_1004021C8(v132, type metadata accessor for ArtworkImage.Placeholder);
        sub_10001036C(v148, &qword_1006F3E50, &qword_1005971F0);
        v76 = v75 + *(sub_100009DCC(&qword_1006F2CC0, &qword_10059E568) + 36);
        *v76 = 0;
        *(v76 + 8) = 0;
        *(v76 + 16) = 2;
        if (qword_1006EEBB8 != -1)
        {
          swift_once();
        }

        sub_1005709E8();
        sub_10056E888();
        v77 = (v75 + *(sub_100009DCC(&qword_1006F2CC8, &qword_10059E570) + 36));
        v78 = v165;
        *v77 = v164;
        v77[1] = v78;
        v77[2] = v166;
        v46 = v150;
        v47 = v151;
        v79 = v75 + *(v151 + 36);
        *v79 = 0;
        *(v79 + 8) = 257;
        sub_100019B40(v75, v46, &qword_1006F2C48, &qword_10059E538);
        v44 = 0;
        v45 = v108;
        goto LABEL_18;
      }
    }

    if (qword_1006EEB38 != -1)
    {
      swift_once();
    }

    v69 = sub_10000C49C(v66, static Artwork.CropStyle.fallback);
    (*(v65 + 16))(v67, v69, v66);
    if ((*(v65 + 48))(v64, 1, v66) != 1)
    {
      sub_10001036C(v64, &qword_1006F2C40, &qword_10059C100);
    }

    goto LABEL_15;
  }

LABEL_18:
  (*(v137 + 56))(v46, v44, 1, v47);
  v151 = sub_10056F378();
  LOBYTE(v154[0]) = 1;
  sub_1003F5E4C(v45, v162);
  *&v161[23] = v162[1];
  *&v161[39] = v162[2];
  *&v161[55] = v162[3];
  v161[71] = v163;
  *&v161[7] = v162[0];
  LODWORD(v149) = LOBYTE(v154[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v138;
  sub_10056E478();

  v81 = sub_100572138();
  (*(v139 + 8))(v80, v140);
  if (v81 != 2 && (v81 & 1) != 0)
  {
    v82 = sub_100571FC8();
    if (v82 != 2 && (v82 & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      v83 = sub_10045DFC8(v45, v154[0]);

      if (v83)
      {
        v84 = v112;
        sub_10056E7E8();
        if (qword_1006EEBA8 != -1)
        {
          swift_once();
        }

        sub_1005709E8();
        sub_10056E888();
        v85 = (v84 + *(v115 + 36));
        v86 = v168;
        *v85 = v167;
        v85[1] = v86;
        v85[2] = v169;
        sub_10000CC8C(v84, v116, &qword_1006F2C28, &qword_10059E518);
        swift_storeEnumTagMultiPayload();
        sub_100009DCC(&qword_1006F2CE0, &qword_10059E5D0);
        sub_100402110();
        sub_100010BC0(&unk_1006F2D00, &qword_1006F2CE0, &qword_10059E5D0, &protocol conformance descriptor for TupleView<A>);
        v87 = v114;
        sub_10056F5B8();
        sub_10001036C(v84, &qword_1006F2C28, &qword_10059E518);
      }

      else
      {
        v88 = v111;
        sub_100401C78(v45, v111, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v89 = (*(v109 + 80) + 16) & ~*(v109 + 80);
        v90 = swift_allocObject();
        sub_100401CE4(v88, v90 + v89, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        sub_100401C78(v45, v88, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v91 = swift_allocObject();
        sub_100401CE4(v88, v91 + v89, _s10ManagementO4ViewV19CollaboratorRowViewVMa);

        v92 = v116;
        *v116 = 1;
        *(v92 + 1) = sub_10040207C;
        *(v92 + 2) = v90;
        v92[24] = 0;
        *(v92 + 4) = sub_10040208C;
        *(v92 + 5) = v91;

        swift_storeEnumTagMultiPayload();
        sub_100009DCC(&qword_1006F2CE0, &qword_10059E5D0);
        sub_100402110();
        sub_100010BC0(&unk_1006F2D00, &qword_1006F2CE0, &qword_10059E5D0, &protocol conformance descriptor for TupleView<A>);
        v87 = v114;
        sub_10056F5B8();
      }

      sub_100019B40(v87, v147, &qword_1006F2C30, &qword_10059E520);
      v43 = 0;
    }
  }

  v93 = v147;
  (*(v143 + 56))(v147, v43, 1, v144);
  v94 = v46;
  v95 = v142;
  sub_10000CC8C(v94, v142, &unk_1006F2C50, &unk_10059E540);
  v96 = v145;
  sub_10000CC8C(v93, v145, &qword_1006F2C38, &unk_10059E528);
  v97 = v146;
  sub_10000CC8C(v95, v146, &unk_1006F2C50, &unk_10059E540);
  v98 = sub_100009DCC(&qword_1006F2CD0, &qword_10059E578);
  v99 = (v97 + v98[12]);
  v100 = v151;
  v152[0] = v151;
  v152[1] = 0;
  v101 = v149;
  LOBYTE(v153[0]) = v149;
  *(v153 + 1) = *v161;
  *(&v153[1] + 1) = *&v161[16];
  *(&v153[2] + 1) = *&v161[32];
  *(&v153[3] + 1) = *&v161[48];
  *(&v153[4] + 1) = *&v161[64];
  v102 = v153[0];
  *v99 = v151;
  v99[1] = v102;
  v103 = v153[1];
  v104 = v153[2];
  v105 = v153[3];
  *(v99 + 73) = *(&v153[3] + 9);
  v99[3] = v104;
  v99[4] = v105;
  v99[2] = v103;
  v106 = v97 + v98[16];
  *v106 = 0;
  *(v106 + 8) = 1;
  sub_10000CC8C(v96, v97 + v98[20], &qword_1006F2C38, &unk_10059E528);
  sub_10000CC8C(v152, v154, &qword_1006F2CD8, &qword_10059E580);
  sub_10001036C(v93, &qword_1006F2C38, &unk_10059E528);
  sub_10001036C(v150, &unk_1006F2C50, &unk_10059E540);
  sub_10001036C(v96, &qword_1006F2C38, &unk_10059E528);
  v154[0] = v100;
  v154[1] = 0;
  v155 = v101;
  v157 = *&v161[16];
  v158 = *&v161[32];
  v159 = *&v161[48];
  v160 = *&v161[64];
  v156 = *v161;
  sub_10001036C(v154, &qword_1006F2CD8, &qword_10059E580);
  return sub_10001036C(v95, &unk_1006F2C50, &unk_10059E540);
}

uint64_t sub_1003F59B0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100571E58();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v24 - v7;
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = __chkstk_darwin();
  v12 = &v24 - v11;
  v13 = *(v2 + 56);
  v13(&v24 - v11, 1, 1, v1, v10);
  sub_100571FB8();
  v29 = *(v2 + 48);
  if (v29(v9, 1, v1) == 1)
  {
    v25 = v13;
    sub_10001036C(v9, &unk_1006F3B10, &unk_100599150);
    sub_1000D3B98(0, &qword_1006EF688, MPArtworkCatalog_ptr);
    v14 = sub_100571F78();
    v26 = v6;
    v16 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v14, v15, 0, 1);
    v6 = v26;

    if (v16)
    {
      v17 = v27;
      sub_100571D18();
      sub_10001036C(v12, &unk_1006F3B10, &unk_100599150);
      (v25)(v17, 0, 1, v1);
      sub_100019B40(v17, v12, &unk_1006F3B10, &unk_100599150);
    }
  }

  else
  {
    sub_10001036C(v12, &unk_1006F3B10, &unk_100599150);
    (*(v2 + 32))(v12, v9, v1);
    (v13)(v12, 0, 1, v1);
  }

  sub_10000CC8C(v12, v6, &unk_1006F3B10, &unk_100599150);
  if (v29(v6, 1, v1) == 1)
  {
    sub_10001036C(v12, &unk_1006F3B10, &unk_100599150);
    sub_10001036C(v6, &unk_1006F3B10, &unk_100599150);
    v18 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v18 - 8) + 56))(v28, 1, 1, v18);
  }

  else
  {
    (*(v2 + 32))(v4, v6, v1);
    v20 = v28;
    (*(v2 + 16))(v28, v4, v1);
    v21 = type metadata accessor for ArtworkImage.ViewModel(0);
    v22 = *(v21 + 20);
    sub_100571D48();
    (*(v2 + 8))(v4, v1);
    sub_10001036C(v12, &unk_1006F3B10, &unk_100599150);
    v23 = sub_100571DC8();
    (*(*(v23 - 8) + 56))(v20 + v22, 0, 1, v23);
    return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }
}

uint64_t sub_1003F5E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v97 = a2;
  sub_100572868();
  __chkstk_darwin();
  sub_10056CC38();
  __chkstk_darwin();
  v95 = v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100572888();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v93 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = v90 - v7;
  v8 = sub_1005722D8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 20));
  swift_getKeyPath();
  swift_getKeyPath();
  v90[1] = v12;
  sub_10056E478();

  v13 = sub_100572138();
  (*(v9 + 8))(v11, v8);
  v14 = sub_1003F67EC(v13 & 1);
  if (v15)
  {
    v91 = v5;
    v92 = v4;
    v103 = v14;
    v104 = v15;
    sub_10037AD68();
    v16 = sub_10056FF28();
    v18 = v17;
    v20 = v19;
    LODWORD(v103) = sub_10056F6C8();
    v21 = sub_10056FE28();
    v23 = v22;
    v25 = v24;
    sub_10001B5A4(v16, v18, v20 & 1);

    if (qword_1006EEB78 != -1)
    {
      swift_once();
    }

    v26 = sub_10056FE88();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_10001B5A4(v21, v23, v25 & 1);

    v33 = v28 & 1;
    sub_10002AAC4(v26, v32, v28 & 1);
    v96 = v30;

    v4 = v92;
    v5 = v91;
  }

  else
  {
    v26 = 0;
    v32 = 0;
    v33 = 0;
    v96 = 0;
  }

  v34 = sub_100571FC8();
  if (v34 == 2 || (v34 & 1) == 0 || (sub_1003E3690() & 1) != 0)
  {
    v35 = sub_100571FA8();
    if (!v36)
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = -1;
      goto LABEL_17;
    }

    v37 = v35;
    v38 = v36;
    v92 = v32;
    sub_100572858();
    v108._countAndFlagsBits = 64;
    v108._object = 0xE100000000000000;
    sub_100572848(v108);
    v109._countAndFlagsBits = v37;
    v109._object = v38;
    sub_100572838(v109);

    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    sub_100572848(v110);
    v39 = v94;
    sub_100572878();
    (*(v5 + 16))(v93, v39, v4);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v91 = v26;
    v40 = qword_1006FDF00;
    sub_10056CBC8();
    v41 = sub_100572948();
    v43 = v42;
    (*(v5 + 8))(v39, v4);
    v103 = v41;
    v104 = v43;
    sub_10037AD68();
    v44 = sub_10056FF28();
    v46 = v45;
    v48 = v47;
    LODWORD(v103) = sub_10056F6F8();
    v49 = sub_10056FE28();
    v51 = v50;
    v53 = v52;
    sub_10001B5A4(v44, v46, v48 & 1);

    if (qword_1006EEB80 != -1)
    {
      swift_once();
    }

    v54 = sub_10056FE88();
    v56 = v55;
    v58 = v57;
    v60 = v59;

    sub_10001B5A4(v49, v51, v53 & 1);

    v98 = v54;
    v99 = v56;
    v100 = v58 & 1;
    v101 = v60;
    v102 = 1;
    sub_10056F5B8();
    v61 = v103;
    v62 = v104;
    v63 = v105;
    v64 = v106;
    v65 = v107;
    sub_100402240(v103, v104, v105, v106);
    v26 = v91;
  }

  else
  {
    v92 = v32;
    v69 = v94;
    sub_100572818();
    (*(v5 + 16))(v93, v69, v4);
    if (qword_1006EE950 != -1)
    {
      swift_once();
    }

    v70 = qword_1006FDF00;
    sub_10056CBC8();
    v71 = sub_100572948();
    v73 = v72;
    (*(v5 + 8))(v69, v4);
    v103 = v71;
    v104 = v73;
    sub_10037AD68();
    v74 = sub_10056FF28();
    v76 = v75;
    v78 = v77;
    LODWORD(v103) = sub_10056F6F8();
    v79 = sub_10056FE28();
    v81 = v80;
    v83 = v82;
    sub_10001B5A4(v74, v76, v78 & 1);

    if (qword_1006EEB80 != -1)
    {
      swift_once();
    }

    v84 = sub_10056FE88();
    v86 = v85;
    v88 = v87;
    v95 = v89;

    sub_10001B5A4(v79, v81, v83 & 1);

    v98 = v84;
    v99 = v86;
    v100 = v88 & 1;
    v101 = v95;
    v102 = 0;
    sub_10056F5B8();
    v61 = v103;
    v62 = v104;
    v63 = v105;
    v64 = v106;
    v65 = v107;
    sub_100402240(v103, v104, v105, v106);
  }

  v32 = v92;
LABEL_17:
  v66 = v96;
  sub_1000535A8(v26, v32, v33, v96);
  sub_100402228(v61, v62, v63, v64, v65);
  sub_1000535EC(v26, v32, v33, v66);
  sub_10040227C(v61, v62, v63, v64, v65);
  v67 = v97;
  *v97 = v26;
  v67[1] = v32;
  v67[2] = v33;
  v67[3] = v66;
  v67[4] = v61;
  v67[5] = v62;
  v67[6] = v63;
  v67[7] = v64;
  *(v67 + 64) = v65;
  sub_10040227C(v61, v62, v63, v64, v65);
  return sub_1000535EC(v26, v32, v33, v66);
}

uint64_t sub_1003F67EC(char a1)
{
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  sub_100572868();
  __chkstk_darwin();
  result = sub_100571F78();
  if (v3)
  {
    v4 = result;
    v5 = v3;
    if (Playlist.Collaborator.isHost.getter())
    {
      sub_100572858();
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      sub_100572848(v7);
      v8._countAndFlagsBits = v4;
      v8._object = v5;
      sub_100572838(v8);

      v9._countAndFlagsBits = 0x2972656E774F2820;
      v9._object = 0xE800000000000000;
      sub_100572848(v9);
      sub_100572878();
      if (a1)
      {
        if (qword_1006EE950 != -1)
        {
          swift_once();
        }
      }

      else if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v6 = qword_1006FDF00;
      sub_10056CBC8();
      return sub_100572938();
    }

    else
    {
      return v4;
    }
  }

  return result;
}

double sub_1003F6A68(uint64_t a1, const char *a2, int a3)
{
  v6 = sub_10056DF88();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.collaboration.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_10056DF68();
  v12 = sub_100573448();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  return sub_1003E7364(a1, a3);
}

uint64_t sub_1003F6BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v29 = *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin();
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006F3DC0, &qword_10059E490);
  __chkstk_darwin();
  v30 = &v27 - v4;
  v5 = sub_100009DCC(&qword_1006F2BE0, &qword_10059E470);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v28 = &v27 - v7;
  v8 = sub_1005722D8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v12 = sub_100572138();
  (*(v9 + 8))(v11, v8);
  if (v12 == 2 || (v12 & 1) == 0 || (Playlist.Collaborator.isHost.getter() & 1) != 0 || (v13 = sub_100571FC8(), v13 == 2) || (v13 & 1) != 0)
  {
    v14 = 1;
    v15 = v32;
  }

  else
  {
    v17 = v30;
    sub_10056E578();
    v18 = sub_10056E588();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    v19 = v31;
    sub_100401C78(a1, v31, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v21 = swift_allocObject();
    sub_100401CE4(v19, v21 + v20, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v22 = v28;
    sub_1005706C8();
    v23 = sub_100570488();
    KeyPath = swift_getKeyPath();
    v25 = (v22 + *(v5 + 36));
    *v25 = KeyPath;
    v25[1] = v23;
    v26 = v32;
    sub_100019B40(v22, v32, &qword_1006F2BE0, &qword_10059E470);
    v15 = v26;
    v14 = 0;
  }

  return (*(v6 + 56))(v15, v14, 1, v5);
}

uint64_t sub_1003F7010(uint64_t a1)
{
  v2 = sub_10056DF88();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100009DCC(&unk_1006F2A60, &qword_10059A450);
  __chkstk_darwin();
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v21[-v8];
  v10 = sub_100571FD8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_10000CC8C(v9, v7, &unk_1006F2A60, &qword_10059A450);
  sub_100009DCC(&qword_1006F29E8, &qword_10059DFA8);
  sub_100570688();
  sub_10001036C(v9, &unk_1006F2A60, &qword_10059A450);
  v13 = (a1 + *(v12 + 24));
  v14 = *v13;
  v15 = *(v13 + 1);
  v21[16] = v14;
  v22 = v15;
  v21[15] = 1;
  sub_100009DCC(&qword_1006F12F8, &qword_10059F360);
  sub_100570688();
  v16 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v16, v2);
  v17 = sub_10056DF68();
  v18 = sub_100573448();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "[Management] Remove swipe action triggered", v19, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003F7304@<X0>(uint64_t a1@<X8>)
{
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  sub_100572818();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FDF00;
  sub_10056CBC8();
  v9 = sub_100572948();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  sub_10037AD68();
  result = sub_10056FF28();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_1003F750C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v57 = a2;
  v51 = *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) - 8);
  __chkstk_darwin();
  v52 = v2;
  v54 = v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100570438();
  __chkstk_darwin();
  v56 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = v43 - v4;
  sub_10056CC38();
  __chkstk_darwin();
  v5 = sub_100572888();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v43 - v9;
  sub_100572818();
  v44 = *(v6 + 16);
  v44(v8, v10, v5);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v11 = qword_1006FDF00;
  v12 = qword_1006FDF00;
  v43[3] = v11;
  v13 = v12;
  sub_10056CBC8();
  v14 = v13;
  v15 = sub_100572948();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v43[1] = v6 + 8;
  v58 = v15;
  v59 = v17;
  v43[2] = sub_10037AD68();
  v19 = sub_10056FF28();
  v49 = v20;
  v50 = v19;
  v47 = v21;
  v48 = v22;
  sub_100572818();
  v23 = v44;
  v44(v8, v10, v5);
  sub_10056CBC8();
  v43[0] = v6 + 16;
  v24 = sub_100572948();
  v26 = v25;
  v18(v10, v5);
  v58 = v24;
  v59 = v26;
  v27 = sub_10056FF28();
  v45 = v28;
  v46 = v27;
  v43[4] = v29 & 1;
  v43[5] = v30;
  sub_100572818();
  v23(v8, v10, v5);
  sub_10056CBC8();
  v31 = sub_100572948();
  v33 = v32;
  v18(v10, v5);
  v58 = v31;
  v59 = v33;
  v34 = sub_10056FF28();
  v36 = v35;
  v38 = v37;
  v39 = v54;
  sub_100401C78(v53, v54, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  v40 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v41 = swift_allocObject();
  sub_100401CE4(v39, v41 + v40, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_100570408();
  sub_10001B5A4(v34, v36, v38 & 1);

  sub_100570418();
  return sub_1005703F8();
}

uint64_t sub_1003F7AB4()
{
  sub_100009DCC(&unk_1006F2A60, &qword_10059A450);
  __chkstk_darwin();
  v1 = &v3 - v0;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_100009DCC(&qword_1006F29E8, &qword_10059DFA8);
  sub_100570678();
  sub_1003E6ABC(v1);
  return sub_10001036C(v1, &unk_1006F2A60, &qword_10059A450);
}

uint64_t sub_1003F7B90(char a1)
{
  sub_10056CC38();
  __chkstk_darwin();
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_100572818();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v7 = qword_1006FDF00;
  sub_10056CBC8();
  v8 = sub_100572948();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t sub_1003F7D94@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v53 = sub_10056E698();
  v2 = *(v53 - 8);
  __chkstk_darwin();
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v49 - v4;
  v5 = *(_s10ManagementO4ViewV5ShareO6ButtonVMa(0) - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = sub_100009DCC(&qword_1006F2D28, &qword_10059E5E0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v49 - v9;
  v11 = sub_100009DCC(&qword_1006F2D30, &qword_10059E5E8) - 8;
  __chkstk_darwin();
  v13 = &v49 - v12;
  v49 = sub_100009DCC(&qword_1006F2D38, &unk_10059E5F0);
  __chkstk_darwin();
  v50 = &v49 - v14;
  sub_100401C78(v1, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_100401CE4(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v55 = v1;
  sub_100009DCC(&qword_1006F2D48, &qword_10059E600);
  sub_100402570();
  sub_1005706D8();
  sub_1005709E8();
  sub_10056EDF8();
  (*(v8 + 32))(v13, v10, v7);
  v17 = &v13[*(v11 + 44)];
  v18 = v61;
  *(v17 + 4) = v60;
  *(v17 + 5) = v18;
  *(v17 + 6) = v62;
  v19 = v57;
  *v17 = v56;
  *(v17 + 1) = v19;
  v20 = v59;
  *(v17 + 2) = v58;
  *(v17 + 3) = v20;
  if (sub_1003F8B54())
  {
    if (qword_1006EEBC0 != -1)
    {
      swift_once();
    }

    v21 = qword_1006F2178;
  }

  else
  {
    v22 = [objc_opt_self() tertiaryLabelColor];
    v21 = sub_100570528();
  }

  KeyPath = swift_getKeyPath();
  v24 = v50;
  sub_100019B40(v13, v50, &qword_1006F2D30, &qword_10059E5E8);
  v25 = (v24 + *(v49 + 36));
  *v25 = KeyPath;
  v25[1] = v21;
  v26 = v51;
  sub_1003F8CAC(v51);
  v28 = v52;
  v27 = v53;
  (*(v2 + 104))(v52, enum case for ColorScheme.light(_:), v53);
  v29 = sub_10056E688();
  v30 = *(v2 + 8);
  v30(v28, v27);
  v30(v26, v27);
  v31 = objc_opt_self();
  v32 = &selRef_systemBackgroundColor;
  if ((v29 & 1) == 0)
  {
    v32 = &selRef_secondarySystemBackgroundColor;
  }

  v33 = [v31 *v32];
  v34 = sub_100570528();
  v35 = sub_100009DCC(&qword_1006F2D98, &qword_10059E658);
  v36 = v54;
  v37 = (v54 + *(v35 + 36));
  v38 = sub_100009DCC(&qword_1006F2DA0, &qword_10059E660);
  v39 = v37 + *(v38 + 52);
  v40 = *(sub_10056EDD8() + 20);
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = sub_10056F2E8();
  (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #10.0 }

  *v39 = _Q0;
  *v37 = v34;
  *(v37 + *(v38 + 56)) = 256;
  return sub_100019B40(v24, v36, &qword_1006F2D38, &unk_10059E5F0);
}

__n128 sub_1003F83AC@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009DCC(&qword_1006F2D70, &qword_10059E610) - 8;
  __chkstk_darwin();
  v6 = v16 - v5;
  v7 = sub_100009DCC(&qword_1006F2D60, &qword_10059E608) - 8;
  __chkstk_darwin();
  v9 = v16 - v8;
  *v6 = sub_10056F368();
  *(v6 + 1) = 0x4008000000000000;
  v6[16] = 0;
  sub_1003F85A4(a1, &v6[*(v4 + 52)]);
  if (*a1)
  {
    v10 = 2.5;
  }

  else
  {
    v10 = 0.0;
  }

  sub_100019B40(v6, v9, &qword_1006F2D70, &qword_10059E610);
  v11 = &v9[*(v7 + 44)];
  *v11 = 0;
  *(v11 + 1) = v10;
  sub_1005709E8();
  sub_10056EDF8();
  sub_100019B40(v9, a2, &qword_1006F2D60, &qword_10059E608);
  v12 = a2 + *(sub_100009DCC(&qword_1006F2D48, &qword_10059E600) + 36);
  v13 = v16[5];
  *(v12 + 64) = v16[4];
  *(v12 + 80) = v13;
  *(v12 + 96) = v16[6];
  v14 = v16[1];
  *v12 = v16[0];
  *(v12 + 16) = v14;
  result = v16[3];
  *(v12 + 32) = v16[2];
  *(v12 + 48) = result;
  return result;
}

uint64_t sub_1003F85A4@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v50 = sub_100009DCC(&qword_1006F2DA8, &qword_10059E668);
  __chkstk_darwin();
  v4 = &v46[-v3];
  v5 = sub_100009DCC(&qword_1006F2DB0, &qword_10059E670);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin();
  v7 = &v46[-v6];
  v8 = sub_100009DCC(&qword_1006F2DB8, &qword_10059E678);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin();
  v51 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v46[-v10];
  v47 = *a1;
  v12 = sub_100570548();
  v13 = sub_10056FB18();
  KeyPath = swift_getKeyPath();
  v56 = v12;
  v57 = KeyPath;
  v58 = v13;
  sub_10056FB88();
  v15 = sub_100009DCC(&qword_1006F2DC0, &unk_10059E6B0);
  v16 = sub_10040277C();
  sub_10056FFA8();

  if (qword_1006EEBD0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000C49C(v50, qword_1006F2198);
  sub_10000CC8C(v17, v4, &qword_1006F2DA8, &qword_10059E668);
  v56 = v15;
  v57 = v16;
  swift_getOpaqueTypeConformance2();
  sub_100010BC0(&qword_1006F2DE0, &qword_1006F2DA8, &qword_10059E668, &protocol conformance descriptor for PartialRangeThrough<A>);
  v55 = v11;
  v18 = v49;
  sub_1005700D8();
  sub_10001036C(v4, &qword_1006F2DA8, &qword_10059E668);
  (*(v48 + 8))(v7, v18);
  v56 = sub_1003F7B90(v47);
  v57 = v19;
  sub_10037AD68();
  v20 = sub_10056FF28();
  v22 = v21;
  v24 = v23;
  if (qword_1006EEB88 != -1)
  {
    swift_once();
  }

  v25 = sub_10056FE88();
  v27 = v26;
  v29 = v28;

  sub_10001B5A4(v20, v22, v24 & 1);

  if (qword_1006EEB90 != -1)
  {
    swift_once();
  }

  v30 = sub_10056FD98();
  v32 = v31;
  v34 = v33;
  v50 = v35;
  sub_10001B5A4(v25, v27, v29 & 1);

  v36 = v51;
  v37 = v52;
  v38 = *(v52 + 16);
  v39 = v53;
  v38(v51, v55, v53);
  v40 = v54;
  *v54 = 0;
  *(v40 + 8) = 1;
  v41 = sub_100009DCC(&qword_1006F2DE8, &unk_10059E6C0);
  v38(v40 + v41[12], v36, v39);
  v42 = v40 + v41[16];
  *v42 = v30;
  *(v42 + 1) = v32;
  v34 &= 1u;
  v42[16] = v34;
  *(v42 + 3) = v50;
  v43 = v40 + v41[20];
  *v43 = 0x4020000000000000;
  v43[8] = 0;
  sub_10002AAC4(v30, v32, v34);
  v44 = *(v37 + 8);

  v44(v55, v39);
  sub_10001B5A4(v30, v32, v34);

  return (v44)(v36, v39);
}

uint64_t sub_1003F8B54()
{
  v1 = sub_10056F198();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(_s10ManagementO4ViewV5ShareO6ButtonVMa(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_100573438();
    v8 = sub_10056F9D8();
    sub_10056DE58(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();
    sub_100053068(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1003F8CAC@<X0>(void *a1@<X8>)
{
  v3 = sub_10056F198();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2D40, &qword_1005973F8);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  sub_10000CC8C(v1 + *(v9 + 24), v8, &qword_1006F2D40, &qword_1005973F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10056E698();
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  else
  {
    v12 = sub_100573438();
    v13 = sub_10056F9D8();
    sub_10056DE58(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_1003F8EB8(char a1, uint64_t a2, uint64_t a3)
{
  sub_100570A38();
  sub_10056EA28();

  return result;
}

uint64_t sub_1003F8F44@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_100009DCC(&qword_1006F2DA8, &qword_10059E668);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v16 = sub_100570548();
  sub_10056FB08();
  v6 = sub_10056FB28();

  KeyPath = swift_getKeyPath();
  v8 = sub_1005704D8();
  v9 = swift_getKeyPath();
  if (qword_1006EEBA8 != -1)
  {
    swift_once();
  }

  sub_1005709E8();
  sub_10056E888();
  if (a1)
  {
    v10 = sub_100570488();
  }

  else
  {
    v10 = sub_1005704C8();
  }

  v11 = v10;
  v12 = sub_10056FA38();
  *&v20[8] = v22[2];
  *&v20[24] = v22[3];
  *&v18 = v16;
  *(&v18 + 1) = KeyPath;
  *&v19 = v6;
  *(&v19 + 1) = v9;
  *v20 = v8;
  *&v20[40] = v22[4];
  *&v20[56] = v11;
  v20[64] = v12;
  *&v20[65] = 256;
  if (qword_1006EEBD0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000C49C(v3, qword_1006F2198);
  sub_10000CC8C(v13, v5, &qword_1006F2DA8, &qword_10059E668);
  sub_100009DCC(&qword_1006F34E0, &qword_10059F000);
  sub_1004061B4();
  sub_100010BC0(&qword_1006F2DE0, &qword_1006F2DA8, &qword_10059E668, &protocol conformance descriptor for PartialRangeThrough<A>);
  sub_1005700D8();
  sub_10001036C(v5, &qword_1006F2DA8, &qword_10059E668);
  v21[4] = *&v20[32];
  v22[0] = *&v20[48];
  *(v22 + 15) = *&v20[63];
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = *v20;
  v21[3] = *&v20[16];
  return sub_10001036C(v21, &qword_1006F34E0, &qword_10059F000);
}

uint64_t sub_1003F9228@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_10056F638();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100009DCC(&qword_1006F34D0, &qword_10059EFF0);
  v6 = *(v22 - 8);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v26 = v9;
  v27 = v11;
  v28 = v10;

  sub_100009DCC(&qword_1006F34D8, &qword_10059EFF8);
  v13 = sub_100010324(&qword_1006F34E0, &qword_10059F000);
  v14 = sub_100010324(&qword_1006F2DA8, &qword_10059E668);
  v15 = sub_1004061B4();
  v16 = sub_100010BC0(&qword_1006F2DE0, &qword_1006F2DA8, &qword_10059E668, &protocol conformance descriptor for PartialRangeThrough<A>);
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1005706D8();
  sub_10056F628();
  sub_100010BC0(&qword_1006F3530, &qword_1006F34D0, &qword_10059EFF0, &protocol conformance descriptor for Button<A>);
  sub_1003FFF94(&qword_1006F3110, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  v17 = v25;
  v19 = v22;
  v18 = v23;
  sub_10056FFE8();
  (*(v24 + 8))(v5, v18);
  (*(v6 + 8))(v8, v19);
  v20 = (v17 + *(sub_100009DCC(&qword_1006F3538, &qword_10059F028) + 36));
  sub_100009DCC(&qword_1006F3540, &qword_10059F030);
  sub_10056EE18();
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t Collaboration.Management.ViewController.__allocating_init(model:)(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin();
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(v1);

  Collaboration.Management.View.init(model:)(v3);
  v5 = sub_10056F418();

  return v5;
}

uint64_t Collaboration.Management.ViewController.init(model:)(uint64_t a1)
{
  type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin();
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));

  Collaboration.Management.View.init(model:)(v2);
  v3 = sub_10056F418();

  return v3;
}

Swift::Void __swiftcall Collaboration.Management.ViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_1003F99C8(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003F9870(void *a1)
{
  v1 = a1;
  Collaboration.Management.ViewController.viewWillLayoutSubviews()();
}

id Collaboration.Management.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  sub_1003F99C8(*&a2, *&a3, 0);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_1003F9928(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_1003F99C8(*&a2, *&a3, 0);
  v12.receiver = v11;
  v12.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1003F99C8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_opt_self();
  v8 = [v7 currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = 512.0;
  }

  else
  {
    v10 = 540.0;
  }

  if (v9 == 6)
  {
    v11 = 620.0;
  }

  else
  {
    v11 = 700.0;
  }

  v12 = [v7 currentTraitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6 && (a3 & 1) == 0)
  {
    if (qword_1006EEAB0 != -1)
    {
      swift_once();
    }

    v14 = *&qword_1006FE268 + *&qword_1006FE268;
    if (v11 + *&qword_1006FE268 + *&qword_1006FE268 > *&a2)
    {
      v11 = *&a2 - (*&qword_1006FE268 + *&qword_1006FE268);
    }

    if (v10 + v14 > *&a1)
    {
      v10 = *&a1 - v14;
    }
  }

  [v3 preferredContentSize];
  if (v10 != v16 || v11 != v15)
  {
    [v3 setPreferredContentSize:{v10, v11}];
    v18 = [v3 navigationController];
    if (v18)
    {
      v19 = v18;
      [v18 setPreferredContentSize:{v10, v11}];
    }
  }
}

uint64_t sub_1003F9C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100402374();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003F9C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100402374();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003F9CF4(uint64_t a1)
{
  sub_100402374();
  sub_10056F908();
  __break(1u);
}

char *sub_1003F9D1C()
{
  sub_10056CC38();
  __chkstk_darwin();
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v19 - v5;
  v7 = *(v0 + 16);
  v22[0] = *v0;
  v22[1] = v7;
  v23 = *(v0 + 32);
  sub_1004022E8(v0, v21);
  sub_100572818();
  v8 = *(v2 + 16);
  v8(v4, v6, v1);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v9 = qword_1006FDF00;
  sub_10056CBC8();
  v10 = v9;
  v20 = sub_100572948();
  v12 = v11;
  v13 = *(v2 + 8);
  v13(v6, v1);
  sub_100572818();
  v8(v4, v6, v1);
  sub_10056CBC8();
  v14 = sub_100572948();
  v16 = v15;
  v13(v6, v1);
  v17 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
  return QRCodeOverlayViewController.init(qrCode:title:subtitle:)(v22, v20, v12, v14, v16);
}

uint64_t sub_1003FA020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100402320();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003FA084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100402320();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003FA0E8(uint64_t a1)
{
  sub_100402320();
  sub_10056F908();
  __break(1u);
}

uint64_t PlaylistCurators.Curator.init(name:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for PlaylistCurators.Curator(0);
  return sub_100019B40(a3, a4 + *(v6 + 20), &unk_1006F3B10, &unk_100599150);
}

uint64_t sub_1003FA174@<X0>(void *a1@<X8>)
{
  v3 = sub_10056F198();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2300, &qword_1005972D0);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = type metadata accessor for PlaylistCurators.View(0);
  sub_10000CC8C(v1 + *(v9 + 20), v8, &qword_1006F2300, &qword_1005972D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100019B40(v8, a1, &qword_1006EF138, &qword_10059DD90);
  }

  v11 = sub_100573438();
  v12 = sub_10056F9D8();
  sub_10056DE58(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

  sub_10056F188();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlaylistCurators.View.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PlaylistCurators.View(0) + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_100009DCC(&qword_1006F2300, &qword_1005972D0);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t PlaylistCurators.View.body.getter()
{
  sub_100009DCC(&qword_1006F2308, &qword_10059DD60);
  __chkstk_darwin();
  v2 = &v5 - v1;
  *v2 = sub_10056F218();
  *(v2 + 1) = 0;
  v2[16] = 0;
  v3 = sub_100009DCC(&qword_1006F2310, &qword_10059DD68);
  sub_1003FA4FC(v0, &v2[*(v3 + 44)]);
  sub_100010BC0(&qword_1006F2318, &qword_1006F2308, &qword_10059DD60, &protocol conformance descriptor for HStack<A>);
  sub_10056FF48();
  return sub_10001036C(v2, &qword_1006F2308, &qword_10059DD60);
}

uint64_t sub_1003FA4FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_10056F708();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin();
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100009DCC(&unk_1006F2320, &qword_10059DD88);
  __chkstk_darwin();
  v6 = &v43 - v5;
  sub_100009DCC(&qword_1006EF138, &qword_10059DD90);
  __chkstk_darwin();
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v43 - v8;
  __chkstk_darwin();
  v52 = (&v43 - v10);
  sub_100009DCC(&qword_1006F2E70, &qword_10059E8A8);
  __chkstk_darwin();
  v12 = &v43 - v11;
  v13 = sub_100009DCC(&qword_1006F2E78, &qword_10059E8B0);
  __chkstk_darwin();
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v43 - v15;
  __chkstk_darwin();
  v18 = &v43 - v17;
  *v12 = sub_10056F218();
  *(v12 + 1) = 0x4018000000000000;
  v12[16] = 0;
  v19 = sub_100009DCC(&qword_1006F2E80, &qword_10059E8B8);
  sub_1003FABE0(a1, &v12[*(v19 + 44)]);
  if (qword_1006EEAD8 != -1)
  {
    swift_once();
  }

  v20 = unk_1006FE2B0;
  v21 = byte_1006FE2B8;
  if (byte_1006FE2B8)
  {
    v22 = *&static Corner.medium;
  }

  else
  {
    v22 = *&static Corner.medium + -3.0;
  }

  sub_100019B40(v12, v16, &qword_1006F2E70, &qword_10059E8A8);
  v23 = &v16[*(v13 + 36)];
  *v23 = v22;
  *(v23 + 1) = v20;
  v23[16] = v21;
  *(v23 + 3) = 0x4008000000000000;
  *(v23 + 4) = 0;
  *(v23 + 20) = 257;
  sub_100019B40(v16, v18, &qword_1006F2E78, &qword_10059E8B0);
  v24 = v52;
  sub_1003FA174(v52);
  v26 = v48;
  v25 = v49;
  (*(v48 + 104))(v9, enum case for UserInterfaceSizeClass.regular(_:), v49);
  (*(v26 + 56))(v9, 0, 1, v25);
  v27 = *(v47 + 48);
  sub_10000CC8C(v24, v6, &qword_1006EF138, &qword_10059DD90);
  sub_10000CC8C(v9, &v6[v27], &qword_1006EF138, &qword_10059DD90);
  v28 = *(v26 + 48);
  v29 = v28(v6, 1, v25);
  v47 = v18;
  if (v29 != 1)
  {
    v44 = v9;
    v32 = v46;
    sub_10000CC8C(v6, v46, &qword_1006EF138, &qword_10059DD90);
    v33 = v25;
    if (v28(&v6[v27], 1, v25) != 1)
    {
      v34 = &v6[v27];
      v35 = v45;
      (*(v26 + 32))(v45, v34, v25);
      sub_1003FFF94(&qword_1006F2330, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v36 = v32;
      v30 = sub_1005727E8();
      v37 = *(v26 + 8);
      v37(v35, v33);
      sub_10001036C(v44, &qword_1006EF138, &qword_10059DD90);
      sub_10001036C(v52, &qword_1006EF138, &qword_10059DD90);
      v37(v36, v33);
      v31 = v47;
      sub_10001036C(v6, &qword_1006EF138, &qword_10059DD90);
      goto LABEL_13;
    }

    sub_10001036C(v44, &qword_1006EF138, &qword_10059DD90);
    sub_10001036C(v52, &qword_1006EF138, &qword_10059DD90);
    (*(v26 + 8))(v32, v25);
    goto LABEL_11;
  }

  sub_10001036C(v9, &qword_1006EF138, &qword_10059DD90);
  sub_10001036C(v52, &qword_1006EF138, &qword_10059DD90);
  if (v28(&v6[v27], 1, v25) != 1)
  {
LABEL_11:
    sub_10001036C(v6, &unk_1006F2320, &qword_10059DD88);
    v30 = 0;
    v31 = v47;
    goto LABEL_13;
  }

  sub_10001036C(v6, &qword_1006EF138, &qword_10059DD90);
  v30 = 1;
  v31 = v47;
LABEL_13:
  v38 = v50;
  sub_10000CC8C(v31, v50, &qword_1006F2E78, &qword_10059E8B0);
  v39 = v31;
  v40 = v51;
  sub_10000CC8C(v38, v51, &qword_1006F2E78, &qword_10059E8B0);
  v41 = v40 + *(sub_100009DCC(&qword_1006F2E88, &unk_10059E8C0) + 48);
  *v41 = 0;
  *(v41 + 8) = v30 & 1;
  *(v41 + 9) = (v30 & 1) == 0;
  sub_10001036C(v39, &qword_1006F2E78, &qword_10059E8B0);
  return sub_10001036C(v38, &qword_1006F2E78, &qword_10059E8B0);
}

uint64_t sub_1003FABE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  sub_100009DCC(&qword_1006F2E90, &qword_10059D000);
  __chkstk_darwin();
  v66 = &v51[-v3];
  v4 = sub_10056FC68();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin();
  v63 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10056FED8();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin();
  v57 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = sub_100009DCC(&qword_1006F2E98, &qword_10059E8D0) - 8;
  __chkstk_darwin();
  v65 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v56 = &v51[-v9];
  sub_100009DCC(&qword_1006EF138, &qword_10059DD90);
  __chkstk_darwin();
  v11 = &v51[-v10];
  sub_100009DCC(&qword_1006F2EA0, &qword_10059E8D8);
  __chkstk_darwin();
  v62 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v14 = &v51[-v13];
  sub_1003FA174(v11);
  v15 = sub_100402E58(v11);
  sub_10001036C(v11, &qword_1006EF138, &qword_10059DD90);
  *v14 = sub_10056F218();
  v14[1] = v15;
  *(v14 + 16) = 0;
  v61 = v14;
  sub_100009DCC(&qword_1006F2EA8, &qword_10059E8E0);
  v58 = a1;
  sub_1003FB310(a1, v16);
  v70 = sub_1003FC6C4();
  v71 = v17;
  sub_10037AD68();
  v54 = sub_10056FF28();
  v53 = v18;
  v55 = v19;
  v70 = v54;
  v71 = v18;
  v52 = v20 & 1;
  v72 = v20 & 1;
  v73 = v19;
  String.nonBreakingSpace.unsafeMutableAddressor();

  sub_100570548();

  v21 = sub_10056FF38();
  v23 = v22;
  v25 = v24;
  v26 = sub_10056FE58();
  v28 = v27;
  v30 = v29;
  sub_10001B5A4(v21, v23, v25 & 1);

  v31 = v57;
  sub_10056FEC8();
  sub_10001B5A4(v26, v28, v30 & 1);

  v32 = v56;
  sub_10056FFC8();
  (*(v59 + 8))(v31, v60);
  sub_10001B5A4(v54, v53, v52);

  KeyPath = swift_getKeyPath();
  v34 = v32 + *(sub_100009DCC(&qword_1006F2EB0, &qword_10059E918) + 36);
  *v34 = KeyPath;
  *(v34 + 8) = 1;
  *(v34 + 16) = 0;
  v35 = (v32 + *(sub_100009DCC(&qword_1006F2EB8, &qword_10059E920) + 36));
  v36 = *(sub_100009DCC(&qword_1006F2EC0, &qword_10059E928) + 28);
  v37 = enum case for Image.Scale.small(_:);
  v38 = sub_1005705B8();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = swift_getKeyPath();
  v39 = v63;
  PlaylistCurators.View.fontTextStyle.getter(v63);
  v40 = sub_10056FB38();
  v41 = v66;
  (*(*(v40 - 8) + 56))(v66, 1, 1, v40);
  v42 = sub_10056FBB8();
  sub_10001036C(v41, &qword_1006F2E90, &qword_10059D000);
  (*(v67 + 8))(v39, v68);
  v43 = swift_getKeyPath();
  v44 = (v32 + *(v64 + 44));
  *v44 = v43;
  v44[1] = v42;
  v46 = v61;
  v45 = v62;
  sub_10000CC8C(v61, v62, &qword_1006F2EA0, &qword_10059E8D8);
  v47 = v65;
  sub_10000CC8C(v32, v65, &qword_1006F2E98, &qword_10059E8D0);
  v48 = v69;
  sub_10000CC8C(v45, v69, &qword_1006F2EA0, &qword_10059E8D8);
  v49 = sub_100009DCC(&qword_1006F2EC8, &qword_10059E960);
  sub_10000CC8C(v47, v48 + *(v49 + 48), &qword_1006F2E98, &qword_10059E8D0);
  sub_10001036C(v32, &qword_1006F2E98, &qword_10059E8D0);
  sub_10001036C(v46, &qword_1006F2EA0, &qword_10059E8D8);
  sub_10001036C(v47, &qword_1006F2E98, &qword_10059E8D0);
  return sub_10001036C(v45, &qword_1006F2EA0, &qword_10059E8D8);
}

uint64_t sub_1003FB310(uint64_t *a1, __n128 a2)
{
  v3 = *(type metadata accessor for PlaylistCurators.View(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = *a1;
  if (*(*a1 + 16) <= 3uLL)
  {
  }

  else
  {
    v6 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    sub_1003739DC(v5, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, 7uLL);
    v5 = v7;
  }

  sub_1004884E4(v8);
  v10 = v9;

  v15[1] = v10;
  swift_getKeyPath();
  sub_100401C78(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.View);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  sub_100401CE4(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PlaylistCurators.View);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100403418;
  *(v13 + 24) = v12;
  sub_100009DCC(&qword_1006F2ED0, &qword_10059E988);
  sub_100009DCC(&qword_1006F2ED8, &qword_10059E990);
  sub_100010BC0(&qword_1006F2EE0, &qword_1006F2ED0, &qword_10059E988, &protocol conformance descriptor for [A]);
  sub_100403544();
  return sub_1005708B8();
}

uint64_t sub_1003FB59C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    sub_1003FB604(a2, a4);
    result = sub_100009DCC(&qword_1006F2ED8, &qword_10059E990);
    *(a4 + *(result + 36)) = v8;
  }

  return result;
}

uint64_t sub_1003FB604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v111 = a2;
  v2 = sub_100571DC8();
  v115 = *(v2 - 8);
  __chkstk_darwin();
  v104 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10056DC68();
  v109 = *(v4 - 8);
  v110 = v4;
  __chkstk_darwin();
  v113 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v81 - v6;
  __chkstk_darwin();
  v107 = &v81 - v7;
  __chkstk_darwin();
  v105 = &v81 - v8;
  v9 = sub_10056DBD8();
  v114 = *(v9 - 8);
  __chkstk_darwin();
  v116 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v11 = *(v85 + 64);
  __chkstk_darwin();
  v87 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v81 - v12;
  sub_100009DCC(&qword_1006F2C40, &qword_10059C100);
  __chkstk_darwin();
  v91 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v81 - v14;
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v92 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v81 - v17;
  __chkstk_darwin();
  v19 = &v81 - v18;
  sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  __chkstk_darwin();
  v89 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v81 - v21;
  __chkstk_darwin();
  v23 = &v81 - v22;
  v102 = sub_100009DCC(&unk_1006F2F60, &qword_10059E9C8);
  v100 = *(v102 - 8);
  __chkstk_darwin();
  v96 = &v81 - v24;
  v90 = sub_100009DCC(&qword_1006F2F28, &qword_10059E9B0);
  __chkstk_darwin();
  v97 = &v81 - v25;
  v94 = sub_100009DCC(&qword_1006F2F18, &qword_10059E9A8);
  __chkstk_darwin();
  v95 = &v81 - v26;
  v93 = sub_100009DCC(&qword_1006F2F08, &qword_10059E9A0);
  __chkstk_darwin();
  v101 = &v81 - v27;
  v98 = sub_100009DCC(&qword_1006F2EF8, &qword_10059E998);
  __chkstk_darwin();
  v99 = &v81 - v28;
  sub_100009DCC(&qword_1006EF138, &qword_10059DD90);
  __chkstk_darwin();
  v30 = &v81 - v29;
  sub_1003FA174((&v81 - v29));
  v31 = sub_100403898(v30);
  sub_10001036C(v30, &qword_1006EF138, &qword_10059DD90);
  v32 = type metadata accessor for PlaylistCurators.Curator(0);
  sub_10000CC8C(v108 + *(v32 + 20), v19, &unk_1006F3B10, &unk_100599150);
  sub_100571D48();
  v33 = *(v115 + 56);
  v108 = v2;
  v83 = v115 + 56;
  v82 = v33;
  v33(v15, 0, 1, v2);
  v34 = sub_100571E58();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v19, 1, v34) == 1)
  {
    sub_10001036C(v15, &qword_1006F2C40, &qword_10059C100);
    sub_10001036C(v19, &unk_1006F3B10, &unk_100599150);
    v36 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  }

  else
  {
    (*(v35 + 32))(v23, v19, v34);
    v36 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100019B40(v15, &v23[*(v36 + 20)], &qword_1006F2C40, &qword_10059C100);
    (*(*(v36 - 8) + 56))(v23, 0, 1, v36);
  }

  v37 = sub_100009DCC(&unk_1006F2C60, &qword_10059C108);
  v38 = v112;
  (*(*(v37 - 8) + 56))(v112, 8, 11, v37);
  v86 = v31;
  v124 = 0;
  v122 = 0;
  v120 = 1;
  v39 = *(v114 + 104);
  v106 = v9;
  v39(v116, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v9);
  v40 = v87;
  sub_100401C78(v38, v87, type metadata accessor for ArtworkImage.Placeholder);
  v41 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v42 = (v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_100401CE4(v40, v43 + v41, type metadata accessor for ArtworkImage.Placeholder);
  v44 = v43 + v42;
  *v44 = v31;
  *(v44 + 8) = v124;
  *(v44 + 9) = *v123;
  *(v44 + 12) = *&v123[3];
  *(v44 + 16) = v31;
  *(v44 + 24) = v122;
  *(v44 + 25) = *v121;
  *(v44 + 28) = *&v121[3];
  *(v44 + 32) = 0;
  *(v44 + 40) = v120;
  *(v44 + 41) = 1;
  v45 = v84;
  sub_10000CC8C(v23, v84, &qword_1006F3E50, &qword_1005971F0);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = *(*(v36 - 8) + 48);
  v47 = v23;
  if (v46(v45, 1, v36) == 1)
  {
    sub_10001036C(v45, &qword_1006F3E50, &qword_1005971F0);
    v48 = 1;
    v49 = v88;
  }

  else
  {
    v49 = v88;
    (*(v35 + 16))(v88, v45, v34);
    sub_1004021C8(v45, type metadata accessor for ArtworkImage.ViewModel);
    v48 = 0;
  }

  (*(v35 + 56))(v49, v48, 1, v34);
  sub_10000CC8C(v49, v92, &unk_1006F3B10, &unk_100599150);
  v50 = v105;
  sub_10056DC28();
  sub_10001036C(v49, &unk_1006F3B10, &unk_100599150);
  sub_10056DC08();
  v92 = v47;
  v51 = v89;
  sub_10000CC8C(v47, v89, &qword_1006F3E50, &qword_1005971F0);
  v52 = v46(v51, 1, v36);
  v53 = v106;
  if (v52 == 1)
  {
    sub_10001036C(v51, &qword_1006F3E50, &qword_1005971F0);
    v54 = v91;
    v55 = v108;
    v82(v91, 1, 1, v108);
    v56 = v115;
    v57 = v104;
  }

  else
  {
    v54 = v91;
    sub_10000CC8C(v51 + *(v36 + 20), v91, &qword_1006F2C40, &qword_10059C100);
    sub_1004021C8(v51, type metadata accessor for ArtworkImage.ViewModel);
    v56 = v115;
    v55 = v108;
    v58 = (*(v115 + 48))(v54, 1, v108);
    v57 = v104;
    if (v58 != 1)
    {
      (*(v56 + 32))(v104, v54, v55);
      goto LABEL_15;
    }
  }

  if (qword_1006EEB38 != -1)
  {
    swift_once();
  }

  v59 = sub_10000C49C(v55, static Artwork.CropStyle.fallback);
  (*(v56 + 16))(v57, v59, v55);
  if ((*(v56 + 48))(v54, 1, v55) != 1)
  {
    sub_10001036C(v54, &qword_1006F2C40, &qword_10059C100);
  }

LABEL_15:
  v60 = v103;
  v61 = v113;
  sub_10056DBE8();
  (*(v56 + 8))(v57, v55);
  v62 = v110;
  v63 = *(v109 + 8);
  v63(v61, v110);
  v64 = v107;
  sub_10056DC18();
  v63(v60, v62);
  sub_100009DCC(&qword_1006F18C8, &qword_10059C530);
  sub_1003CC8F4();
  v65 = v96;
  sub_10056DBF8();

  v63(v64, v62);
  v63(v50, v62);
  (*(v114 + 8))(v116, v53);
  sub_1004021C8(v112, type metadata accessor for ArtworkImage.Placeholder);
  sub_10001036C(v92, &qword_1006F3E50, &qword_1005971F0);
  v66 = v97;
  v67 = &v97[*(v90 + 36)];
  v68 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v67 + v68) = swift_getKeyPath();
  sub_100009DCC(&qword_1006EED98, &qword_1005971B0);
  swift_storeEnumTagMultiPayload();
  *v67 = sub_1003FCF28;
  v67[1] = 0;
  (*(v100 + 32))(v66, v65, v102);
  sub_1005709E8();
  sub_10056E888();
  v69 = v95;
  sub_100019B40(v66, v95, &qword_1006F2F28, &qword_10059E9B0);
  v70 = (v69 + *(v94 + 36));
  v71 = v118;
  *v70 = v117;
  v70[1] = v71;
  v70[2] = v119;
  v72 = v101;
  sub_100019B40(v69, v101, &qword_1006F2F18, &qword_10059E9A8);
  v73 = v72 + *(v93 + 36);
  *v73 = 0;
  *(v73 + 8) = 0;
  *(v73 + 16) = 2;
  if (qword_1006EEBE0 != -1)
  {
    swift_once();
  }

  v74 = qword_1006F21B8;
  v75 = qword_1006F21C0;
  v76 = byte_1006F21C8;
  v77 = v72;
  v78 = v99;
  sub_100019B40(v77, v99, &qword_1006F2F08, &qword_10059E9A0);
  v79 = v78 + *(v98 + 36);
  *v79 = v74;
  *(v79 + 8) = v75;
  *(v79 + 16) = v76;
  *(v79 + 24) = 0;
  *(v79 + 32) = 0;
  *(v79 + 40) = 2;
  sub_100019B40(v78, v111, &qword_1006F2EF8, &qword_10059E998);
}

uint64_t sub_1003FC6C4()
{
  sub_10056CC38();
  __chkstk_darwin();
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v15 - v5;
  sub_100572868();
  __chkstk_darwin();
  type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin();
  v9 = (v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v0 + 16);
  if (v10)
  {
    sub_100401C78(*v0 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.Curator);
    v11 = v10 - 1;
    if (v11)
    {
      sub_100572858();
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      sub_100572848(v16);
      sub_100572838(*v9);
      v17._countAndFlagsBits = 2106912;
      v17._object = 0xE300000000000000;
      sub_100572848(v17);
      v15[1] = v11;
      sub_100572828();
      v18._countAndFlagsBits = 0x7328726568744F20;
      v18._object = 0xE900000000000029;
      sub_100572848(v18);
      sub_100572878();
      (*(v2 + 16))(v4, v6, v1);
      if (qword_1006EE950 != -1)
      {
        swift_once();
      }

      v13 = qword_1006FDF00;
      sub_10056CBC8();
      countAndFlagsBits = sub_100572948();
      (*(v2 + 8))(v6, v1);
    }

    else
    {
      countAndFlagsBits = v9->_countAndFlagsBits;
    }

    sub_1004021C8(v9, type metadata accessor for PlaylistCurators.Curator);
    return countAndFlagsBits;
  }

  else
  {
    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

uint64_t PlaylistCurators.View.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_10056F708();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&unk_1006F2320, &qword_10059DD88) - 8;
  __chkstk_darwin();
  v6 = &v23 - v5;
  sub_100009DCC(&qword_1006EF138, &qword_10059DD90);
  __chkstk_darwin();
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v23 - v8;
  __chkstk_darwin();
  v11 = &v23 - v10;
  sub_1003FA174((&v23 - v10));
  (*(v2 + 104))(v9, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v9, 0, 1, v1);
  v12 = *(v4 + 56);
  sub_10000CC8C(v11, v6, &qword_1006EF138, &qword_10059DD90);
  sub_10000CC8C(v9, &v6[v12], &qword_1006EF138, &qword_10059DD90);
  v13 = *(v2 + 48);
  if (v13(v6, 1, v1) == 1)
  {
    sub_10001036C(v9, &qword_1006EF138, &qword_10059DD90);
    sub_10001036C(v11, &qword_1006EF138, &qword_10059DD90);
    if (v13(&v6[v12], 1, v1) == 1)
    {
      sub_10001036C(v6, &qword_1006EF138, &qword_10059DD90);
LABEL_9:
      v14 = &enum case for Font.TextStyle.title3(_:);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_10000CC8C(v6, v25, &qword_1006EF138, &qword_10059DD90);
  if (v13(&v6[v12], 1, v1) == 1)
  {
    sub_10001036C(v9, &qword_1006EF138, &qword_10059DD90);
    sub_10001036C(v11, &qword_1006EF138, &qword_10059DD90);
    (*(v2 + 8))(v25, v1);
LABEL_6:
    sub_10001036C(v6, &unk_1006F2320, &qword_10059DD88);
    goto LABEL_7;
  }

  v15 = &v6[v12];
  v16 = v24;
  (*(v2 + 32))(v24, v15, v1);
  sub_1003FFF94(&qword_1006F2330, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = v25;
  v18 = sub_1005727E8();
  v19 = *(v2 + 8);
  v19(v16, v1);
  sub_10001036C(v9, &qword_1006EF138, &qword_10059DD90);
  sub_10001036C(v11, &qword_1006EF138, &qword_10059DD90);
  v19(v17, v1);
  sub_10001036C(v6, &qword_1006EF138, &qword_10059DD90);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = &enum case for Font.TextStyle.title2(_:);
LABEL_10:
  v20 = *v14;
  v21 = sub_10056FC68();
  return (*(*(v21 - 8) + 104))(v26, v20, v21);
}

uint64_t sub_1003FCF28(uint64_t a1)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  v4[3] = &type metadata for Color;
  v4[4] = &protocol witness table for Color;
  v4[0] = sub_100570528();
  return sub_10008B71C(v4, a1 + 40, &qword_1006F2F70, &unk_10059EA00);
}

void sub_1003FCFA8()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_1003FD070;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_1000376F0;
  v3[3] = &unk_1006A1DC8;
  v1 = _Block_copy(v3);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_1006F21B0 = v2;
}

id sub_1003FD070(void *a1)
{
  if ([a1 userInterfaceIdiom] == 6)
  {
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
    if (v4 == 2)
    {
      v3 = &selRef_blackColor;
    }
  }

  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_1003FD110()
{
  if (qword_1006EEBD8 != -1)
  {
    swift_once();
  }

  v0 = qword_1006F21B0;
  result = sub_100570448();
  qword_1006F21B8 = result;
  qword_1006F21C0 = 0x3FF0000000000000;
  byte_1006F21C8 = 1;
  return result;
}

double PlaylistCurators.ViewController.configuration.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PlaylistCurators.ViewController.configuration.setter(uint64_t a1)
{
  v3 = direct field offset for PlaylistCurators.ViewController.configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = sub_10056F428();
  *v5 = a1;

  return v4(v7, 0);
}

uint64_t (*PlaylistCurators.ViewController.configuration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = direct field offset for PlaylistCurators.ViewController.configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_1003FD2E4;
}

void sub_1003FD2E4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + v3[5]);

    v5 = sub_10056F428();
    *v6 = v4;

    v5(v3, 0);
  }

  free(v3);
}

uint64_t PlaylistCurators.ViewController.__allocating_init(configuration:)(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for PlaylistCurators.View(0) - 8;
  __chkstk_darwin();
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(v2);
  *&v7[direct field offset for PlaylistCurators.ViewController.configuration] = a1;
  v8 = *(v4 + 28);
  *(v6 + v8) = swift_getKeyPath();
  sub_100009DCC(&qword_1006F2300, &qword_1005972D0);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;

  return sub_10056F418();
}

uint64_t PlaylistCurators.ViewController.init(configuration:)(uint64_t a1, __n128 a2)
{
  type metadata accessor for PlaylistCurators.View(0);
  __chkstk_darwin();
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v2 + direct field offset for PlaylistCurators.ViewController.configuration) = a1;
  v7 = *(v6 + 28);
  *(v5 + v7) = swift_getKeyPath();
  sub_100009DCC(&qword_1006F2300, &qword_1005972D0);
  swift_storeEnumTagMultiPayload();
  *v5 = a1;

  return sub_10056F418();
}

id sub_1003FD5F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003FD90C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClearBackground.Controller();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 init];
}

uint64_t sub_1003FD948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100402294();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003FD9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100402294();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003FDA10(uint64_t a1)
{
  sub_100402294();
  sub_10056F908();
  __break(1u);
}

uint64_t sub_1003FDA38(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

uint64_t sub_1003FDAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100571FD8();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1003FFF94(&qword_1006F2E00, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v31 = a1;
  v10 = sub_100572738();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1003FFF94(&qword_1006F2E08, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v19 = sub_1005727E8();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003FDD58();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1003FE608(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_1003FDD58()
{
  v1 = v0;
  v2 = sub_100571FD8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F2E10, &qword_10059E6F0);
  v6 = *v0;
  v7 = sub_100573E88();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1003FDF90(uint64_t a1)
{
  v2 = v1;
  v34 = sub_100571FD8();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100009DCC(&qword_1006F2E10, &qword_10059E6F0);
  v7 = sub_100573E98();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1003FFF94(&qword_1006F2E00, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = sub_100572738();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_1003FE2AC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100571FD8();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100009DCC(&qword_1006F2E10, &qword_10059E6F0);
  v6 = sub_100573E98();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1003FFF94(&qword_1006F2E00, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = sub_100572738();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1003FE608(int64_t a1)
{
  v3 = sub_100571FD8();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_100573DC8();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1003FFF94(&qword_1006F2E00, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
        v23 = sub_100572738();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_1003FE910(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100571FD8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1003FFF94(&qword_1006F2E00, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v33 = a2;
  v11 = sub_100572738();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1003FFF94(&qword_1006F2E08, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = sub_1005727E8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1003FEBF0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1003FEBF0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_100571FD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003FE2AC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1003FDD58();
      goto LABEL_12;
    }

    sub_1003FDF90(v11 + 1);
  }

  v13 = *v3;
  sub_1003FFF94(&qword_1006F2E00, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v14 = sub_100572738();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1003FFF94(&qword_1006F2E08, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v22 = sub_1005727E8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100574568();
  __break(1u);
  return result;
}

uint64_t sub_1003FEE94(uint64_t a1)
{
  sub_100009DCC(&qword_1006F33E8, &qword_10059EE40);
  __chkstk_darwin();
  sub_10000CC8C(a1, &v4 - v2, &qword_1006F33E8, &qword_10059EE40);
  return sub_10056F018();
}

uint64_t sub_1003FEF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

BOOL _s11MusicCoreUI16PlaylistCuratorsO7CuratorV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_100571E58();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006F3B10, &unk_100599150);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = sub_100009DCC(&qword_1006F2F78, &qword_10059F6E0);
  __chkstk_darwin();
  v12 = &v21 - v11;
  if (*a1 == *a2 || (v13 = sub_100574498(), result = 0, (v13 & 1) != 0))
  {
    v22 = v7;
    v15 = *(type metadata accessor for PlaylistCurators.Curator(0) + 20);
    v16 = *(v10 + 48);
    sub_10000CC8C(a1 + v15, v12, &unk_1006F3B10, &unk_100599150);
    sub_10000CC8C(a2 + v15, &v12[v16], &unk_1006F3B10, &unk_100599150);
    v17 = *(v5 + 48);
    if (v17(v12, 1, v4) == 1)
    {
      if (v17(&v12[v16], 1, v4) == 1)
      {
        sub_10001036C(v12, &unk_1006F3B10, &unk_100599150);
        return 1;
      }
    }

    else
    {
      sub_10000CC8C(v12, v9, &unk_1006F3B10, &unk_100599150);
      if (v17(&v12[v16], 1, v4) != 1)
      {
        v18 = v22;
        (*(v5 + 32))(v22, &v12[v16], v4);
        sub_1003FFF94(&qword_1006F2F80, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v19 = sub_1005727E8();
        v20 = *(v5 + 8);
        v20(v18, v4);
        v20(v9, v4);
        sub_10001036C(v12, &unk_1006F3B10, &unk_100599150);
        return (v19 & 1) != 0;
      }

      (*(v5 + 8))(v9, v4);
    }

    sub_10001036C(v12, &qword_1006F2F78, &qword_10059F6E0);
    return 0;
  }

  return result;
}

uint64_t sub_1003FF37C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v61 = a1;
  sub_100009DCC(&qword_1006F4800, &qword_10059F670);
  __chkstk_darwin();
  v63 = &v53 - v4;
  sub_100009DCC(&qword_1006F2E18, &qword_10059E708);
  __chkstk_darwin();
  v55 = &v53 - v5;
  v65 = sub_1005722D8();
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v59 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = v6;
  __chkstk_darwin();
  v58 = &v53 - v7;
  v57 = sub_100009DCC(&qword_1006F2220, &unk_1005A3660);
  v56 = *(v57 - 1);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v54 = sub_100009DCC(&qword_1006F2200, &qword_10059DBC8);
  v10 = *(v54 - 8);
  __chkstk_darwin();
  v12 = &v53 - v11;
  v13 = sub_100009DCC(&qword_1006F21E8, &qword_10059DBC0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v53 - v15;
  v17 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  *&v68[0] = _swiftEmptyArrayStorage;
  sub_100009DCC(&qword_1006F21D0, &qword_10059DBB0);
  sub_10056E438();
  v18 = *(v14 + 32);
  v18(v3 + v17, v16, v13);
  v19 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators;
  *&v68[0] = _swiftEmptyArrayStorage;
  sub_10056E438();
  v18(v3 + v19, v16, v13);
  v20 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  *&v68[0] = &_swiftEmptySetSingleton;
  sub_100009DCC(&qword_1006F21D8, &qword_10059DBB8);
  sub_10056E438();
  (*(v10 + 32))(v3 + v20, v12, v54);
  v21 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL;
  LOBYTE(v68[0]) = 0;
  sub_10056E438();
  v22 = *(v56 + 32);
  v23 = v57;
  v22(v3 + v21, v9, v57);
  v24 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss;
  LOBYTE(v68[0]) = 0;
  sub_10056E438();
  v22(v3 + v24, v9, v23);
  v25 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity;
  static ApplicationCapabilities.shared.getter(v68);
  sub_100108D2C(v68);
  v67 = BYTE1(v68[0]);
  sub_10056E438();
  v22(v3 + v25, v9, v23);
  v26 = v60;
  v27 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  v28 = sub_100009DCC(&qword_1006F3E50, &qword_1005971F0);
  (*(*(v28 - 8) + 56))(v3 + v27, 1, 1, v28);
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = 0;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = 0;
  v56 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver) = 0;
  *(v3 + 16) = v61;
  v29 = v64;
  v30 = *(v64 + 16);
  v31 = v58;
  v32 = v65;
  v30(v58, v26, v65);
  swift_beginAccess();
  v57 = v30;
  v30(v59, v31, v32);

  v33 = v32;
  sub_10056E438();
  v34 = *(v29 + 8);
  v35 = v31;
  v61 = v29 + 8;
  v59 = v34;
  v34(v31, v33);
  swift_endAccess();
  v36 = v55;
  v37 = v26;
  sub_100572058();
  v38 = sub_100572048();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v36, 1, v38) == 1)
  {
    sub_10001036C(v36, &qword_1006F2E18, &qword_10059E708);
    v40 = 0;
  }

  else
  {
    v40 = Playlist.Collaboration.isOpenInvitation.getter();
    (*(v39 + 8))(v36, v38);
  }

  swift_beginAccess();
  v66 = v40 & 1;
  sub_10056E438();
  swift_endAccess();
  v41 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v42 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v43 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v44 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v41, v42, 1, 1, sub_1004059EC, v43);
  *(v3 + v56) = v44;

  v45 = sub_100572F48();
  v46 = v63;
  (*(*(v45 - 8) + 56))(v63, 1, 1, v45);
  v47 = v65;
  (v57)(v31, v37, v65);
  v48 = v64;
  v49 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v50 = (v62 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  (*(v48 + 32))(v51 + v49, v35, v47);
  *(v51 + v50) = v3;

  sub_100396F38(0, 0, v46, &unk_10059EE50, v51);

  v59(v37, v47);
  return v3;
}

unint64_t sub_1003FFD74()
{
  result = qword_1006F22B8;
  if (!qword_1006F22B8)
  {
    sub_100010324(&qword_1006F22B0, &qword_10059DCB8);
    sub_100010BC0(&qword_1006F22C0, &qword_1006F22C8, &qword_10059DCC0, &protocol conformance descriptor for List<A, B>);
    sub_100010BC0(&qword_1006F22D0, &qword_1006F22D8, &qword_10059DCC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F22B8);
  }

  return result;
}

void sub_1003FFEAC(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for Collaboration.Management.View(0);

  sub_1003F3378(a1, a2);
}

uint64_t sub_1003FFF94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100400034(uint64_t a1)
{
  result = sub_1003FFF94(&qword_1006F2340, type metadata accessor for PlaylistCurators.View, &protocol conformance descriptor for PlaylistCurators.View);
  *(a1 + 8) = result;
  return result;
}

void sub_1004000A4(uint64_t a1)
{
  sub_1004014E4(319, &qword_1006F2380, &qword_1006F21D0, &qword_10059DBB0, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_1004014E4(319, &qword_1006F2388, &qword_1006F21D8, &qword_10059DBB8, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_100401850(319, &qword_1006F2390, &type metadata accessor for Playlist, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_1004018B4(319, &qword_1006F2398, &type metadata accessor for Published);
        if (v4 <= 0x3F)
        {
          sub_1004014E4(319, qword_1006F23A0, &qword_1006F3E50, &qword_1005971F0, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_100400324(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100009DCC(&unk_1006F26F0, &unk_10059DF28);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100009DCC(&qword_1006F1108, &qword_10059BDF0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_100009DCC(&qword_1006F2700, &qword_10059DF38);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}