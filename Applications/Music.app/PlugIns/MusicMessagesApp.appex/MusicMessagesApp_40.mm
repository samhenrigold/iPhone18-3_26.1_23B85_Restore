void sub_1003EBB34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
    swift_beginAccess();
    if (v3[v4] == 1)
    {
      [v3 sendActionsForControlEvents:0x10000];
      v5 = v3[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode];
      v3[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode] = 2 * (v5 != 2);
      sub_1003E91E4(v5);
      [v3 sendActionsForControlEvents:4096];
      [v3 sendActionsForControlEvents:0x40000];
    }
  }
}

void sub_1003EBD0C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v58 = a4;
  v57 = a3;
  v56 = a2;
  v55 = a1;
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v7 = &v55 - v6;
  v8 = &v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange];
  *&v9.f64[0] = v55.n128_u64[0];
  *&v9.f64[1] = v56.n128_u64[0];
  *&v10.f64[0] = v57.n128_u64[0];
  *&v10.f64[1] = v58.n128_u64[0];
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange], v9), vceqq_f64(*&v4[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 16], v10)))) & 1) == 0)
  {
    v11 = sub_1003E6470();
    sub_1004DE52C();
    v12 = sub_1004DE53C();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    sub_1004DE54C();

    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v8, xmmword_1006450A0), vceqq_f64(v8[1], *&qword_1006450B0)))))
    {
      v42 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
      [*&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] anchorPoint];
      v44 = v43;
      v46 = v45;
      v47 = CGPoint.center.unsafeMutableAddressor();
      swift_beginAccess();
      if (v44 != *v47 || v46 != v47[1])
      {
        [*&v5[v42] setAnchorPoint:?];
        v49 = *&v5[v42];
        [v5 bounds];
        [v49 setFrame:?];
      }

      v50 = &v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
      *v50 = 0x3FF0000000000000;
      *(v50 + 1) = 0;
      *(v50 + 2) = 0;
      *(v50 + 3) = 0x3FF0000000000000;
      *(v50 + 4) = 0;
      *(v50 + 5) = 0;
      v51 = *&v5[v42];
      *&aBlock.a = 0x3FF0000000000000uLL;
      aBlock.c = 0.0;
      aBlock.d = 1.0;
      *&aBlock.tx = 0uLL;
      [v51 setTransform:{&aBlock, *&v55}];
      v52 = *&v5[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
      if (v52)
      {
        v53 = *(v50 + 1);
        *&aBlock.a = *v50;
        *&aBlock.c = v53;
        *&aBlock.tx = *(v50 + 2);
        CGAffineTransformInvert(&v64, &aBlock);
        aBlock = v64;
        [v52 setTransform:&aBlock];
      }

      v54 = *&v5[v42];
      [v5 bounds];
      [v54 setFrame:?];
    }

    else
    {
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v5;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1003ED124;
      *(v15 + 24) = v14;
      *&aBlock.tx = sub_100107FC0;
      *&aBlock.ty = v15;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_1000121E8;
      *&aBlock.d = &unk_1005F4170;
      v16 = _Block_copy(&aBlock);
      v17 = v5;

      [v13 performWithoutAnimation:v16];
      _Block_release(v16);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v19 = sub_1003E6524();
        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        v66.origin.x = v21;
        v66.origin.y = v23;
        v66.size.width = v25;
        v66.size.height = v27;
        v28 = CGRectGetWidth(v66) + v8->f64[1];
        v29 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView;
        [*&v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView] frame];
        v30 = v28 / CGRectGetWidth(v67);
        [*&v17[v29] frame];
        v31 = CGRectGetHeight(v68) + v8->f64[0];
        [*&v17[v29] frame];
        Height = CGRectGetHeight(v69);
        CGAffineTransformMakeScale(&aBlock, v30, v31 / Height);
        v58 = *&aBlock.c;
        v57 = *&aBlock.a;
        v64 = aBlock;
        v33 = *&aBlock.tx;
        CGAffineTransformMakeTranslation(&aBlock, 0.0, -v8[1].f64[1]);
        static CGAffineTransform.+ infix(_:_:)(&v64, &aBlock, &v61);
        v34 = &v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform];
        v35 = v62;
        v36 = v63;
        v37 = v61;
        *v34 = v61;
        *(v34 + 1) = v62;
        *(v34 + 2) = v63;
        v38 = *&v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView];
        *&v60.a = v37;
        *&v60.c = v35;
        *&v60.tx = v36;
        [v38 setTransform:&v60];
        v39 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView;
        v40 = *&v17[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView];
        if (v40)
        {
          v60 = *v34;
          CGAffineTransformInvert(&v59, &v60);
          v60 = v59;
          [v40 setTransform:&v60];
          v41 = *&v17[v39];
          if (v41)
          {
            *&v60.a = v57;
            *&v60.c = v58;
            *&v60.tx = v33;
            CGAffineTransformInvert(&v59, &v60);
            v60 = v59;
            [v41 setTransform:&v60];
          }
        }
      }
    }
  }
}

void sub_1003EC364(char *a1)
{
  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange + 24] <= 0.0)
  {
    v2 = CGPoint.topCenter.unsafeMutableAddressor();
  }

  else
  {
    v2 = CGPoint.bottomCenter.unsafeMutableAddressor();
  }

  v3 = v2;
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = sub_1003E6470();
  [v6 anchorPoint];
  v8 = v7;
  v10 = v9;

  if (v8 != v5 || v10 != v4)
  {
    v12 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView;
    [*&a1[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView] setAnchorPoint:{v5, v4}];
    v13 = *&a1[v12];
    [a1 bounds];
    [v13 setFrame:?];
  }
}

id sub_1003EC48C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:465.0 damping:21.0 initialVelocity:{0.0, 0.0}];
  qword_1006450C0 = result;
  return result;
}

id sub_1003EC4DC()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1006450C8 = result;
  return result;
}

id sub_1003EC530()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:194.0 damping:24.0 initialVelocity:{0.0, 0.0}];
  qword_1006450D0 = result;
  return result;
}

id sub_1003EC580()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1006450D8 = result;
  return result;
}

id sub_1003EC5CC()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:158.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_1006450E0 = result;
  return result;
}

id sub_1003EC61C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051931443;
  LODWORD(v2) = 1.0;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v2 :0.0 :v1 :v3];
  qword_1006450E8 = result;
  return result;
}

id sub_1003EC668()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:288.0 damping:26.5 initialVelocity:{0.0, 0.0}];
  qword_1006450F0 = result;
  return result;
}

id sub_1003EC6BC()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_1006450F8 = result;
  return result;
}

id sub_1003EC710()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:2.0 stiffness:500.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_100645100 = result;
  return result;
}

id sub_1003EC764()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  qword_100645108 = result;
  return result;
}

id VerticalToggleSlider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticalToggleSlider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003EC9C8()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

id VerticalToggleSlider.accessibilitySetSliderValue(_:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
  v3 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    v4 = a1;
    if (v2 > v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue);
    }

    if (v3 < v4)
    {
      v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue);
    }

    sub_1003E65E0(*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) + (((v4 - v2) / (v3 - v2)) * (*(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange + 4) - *(v1 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange))));

    return sub_1003E7D48();
  }

  return result;
}

uint64_t sub_1003ECB38()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_1003ECB9C(char *a1)
{
  v2 = sub_1003E6524();
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint;
  swift_beginAccess();
  v4 = a1[v3];
  v5 = [a1 traitCollection];
  *&v6 = sub_1003E83A4(v5, v4).n128_u64[0];
  v8 = v7;

  [v2 setAnchorPoint:{v6, v8}];
}

void _s11MusicCoreUI20VerticalToggleSliderC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_minLevelOffsetRatio) = 1040402485;
  v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_interactionScaleFactor;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isVisuallyDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_automaticallyDisablesOnMaxValue) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressMode) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growAnchorPoint) = 8;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___stretchView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___growView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValueRange) = 0x3F80000000000000;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_internalValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue) = 1065353216;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___feedbackGenerator) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_mode) = 2;
  v3 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_blurEffect;
  *(v0 + v3) = [objc_opt_self() effectWithBlurRadius:10.0];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___visualEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider____lazy_storage___levelView) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_sceneActivationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_longPressGestureRecognizer) = 0;
  v4 = v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialDraggingLocation;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_initialValue) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_shapeChange);
  v6 = *&qword_1006450B0;
  *v5 = xmmword_1006450A0;
  v5[1] = v6;
  v7 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_stretchTransform);
  *v7 = 0x3FF0000000000000;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0x3FF0000000000000;
  v7[4] = 0;
  v7[5] = 0;
  v8 = (v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_growTransform);
  *v8 = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  sub_1004DECCC();
  __break(1u);
}

unint64_t sub_1003ECE9C()
{
  result = qword_1006451F0;
  if (!qword_1006451F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006451F0);
  }

  return result;
}

unint64_t sub_1003ECEF4()
{
  result = qword_1006451F8;
  if (!qword_1006451F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006451F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerticalToggleSlider.AnchorPoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VerticalToggleSlider.AnchorPoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double sub_1003ED0D8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

double sub_1003ED13C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003ED15C()
{

  return swift_deallocObject();
}

uint64_t sub_1003ED1A4()
{

  return swift_deallocObject();
}

uint64_t sub_1003ED1F4()
{

  return swift_deallocObject();
}

uint64_t sub_1003ED234()
{

  return swift_deallocObject();
}

unint64_t WaveformPlayIndicator.init(settings:)(void *a1)
{
  v2 = v1;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v31 = sub_100004CB8(&qword_100641040, &unk_1005339B0);
  v3 = *(v31 - 8);
  __chkstk_darwin();
  v5 = &v29 - v4;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode) = 0;
  v6 = (v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette);
  v7 = objc_opt_self();
  v30 = [v7 tintColor];
  v8 = [v7 labelColor];
  v9 = [v8 colorWithAlphaComponent:0.35];

  v10 = [v7 labelColor];
  v11 = [v10 colorWithAlphaComponent:0.2];

  v12 = [v7 labelColor];
  v13 = [v12 colorWithAlphaComponent:0.6];

  *v6 = v30;
  v6[1] = v9;
  v6[2] = v11;
  v6[3] = v13;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v2 + v14) = [objc_opt_self() zero];
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v35 = 0;
  sub_1004D9B2C();
  (*(v3 + 32))(v2 + v15, v5, v31);
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  *(v2 + v16) = sub_1003F2CC4();
  v17 = v32;
  *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings) = v32;
  v18 = v17;
  v19 = [v18 stops];
  sub_100006F10(0, &qword_100640D40, NSNumber_ptr);
  v20 = sub_1004DD87C();

  if (v20 >> 62)
  {
    v21 = sub_1004DED5C();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = ObjectType;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars) = v21 - 1;
    v34.receiver = v2;
    v34.super_class = v22;
    v21 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    result = sub_1003ED8B0();
    v2 = result;
    if (!(result >> 62))
    {
      v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_6;
      }

LABEL_15:

      sub_100004CB8(qword_100640A00, &unk_100532090);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100511DA0;
      *(v28 + 32) = sub_1004D981C();
      *(v28 + 40) = &protocol witness table for UITraitActiveAppearance;
      sub_1004DE57C();

      swift_unknownObjectRelease();

      return v21;
    }
  }

  result = sub_1004DED5C();
  v24 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v24 >= 1)
  {
    v25 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v26 = sub_1004DEB2C();
      }

      else
      {
        v26 = *(v2 + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      [v21 addSubview:v26];
      [v27 setAlpha:0.0];
    }

    while (v24 != v25);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003ED8B0()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars);
  }

  else
  {
    sub_1003F217C();
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

void sub_1003ED914()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 <= 1)
  {
    if (!*(v0 + v1))
    {
      return;
    }

    v11 = v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
    swift_beginAccess();
    v4 = *(v11 + 8);
    v12 = sub_1003ED8B0();
    v13 = v12;
    if (v12 >> 62)
    {
      v14 = sub_1004DED5C();
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    if (v14 >= 1)
    {
      for (i = 0; i != v14; ++i)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = sub_1004DEB2C();
        }

        else
        {
          v16 = *(v13 + 8 * i + 32);
        }

        v17 = v16;
        [v16 setBackgroundColor:v4];
      }

      goto LABEL_34;
    }

LABEL_38:
    __break(1u);
    return;
  }

  if (v2 == 2)
  {
    v18 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
    swift_beginAccess();
    v4 = *(v0 + v18);
    v19 = sub_1003ED8B0();
    v20 = v19;
    if (v19 >> 62)
    {
      v21 = sub_1004DED5C();
      if (!v21)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_34;
      }
    }

    if (v21 >= 1)
    {
      for (j = 0; j != v21; ++j)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = sub_1004DEB2C();
        }

        else
        {
          v23 = *(v20 + 8 * j + 32);
        }

        v24 = v23;
        [v23 setBackgroundColor:v4];
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v2 != 3)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = sub_1003ED8B0();
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = sub_1004DED5C();
    if (v7)
    {
LABEL_6:
      if (v7 >= 1)
      {
        for (k = 0; k != v7; ++k)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = sub_1004DEB2C();
          }

          else
          {
            v9 = *(v6 + 8 * k + 32);
          }

          v10 = v9;
          [v9 setBackgroundColor:v4];
        }

        goto LABEL_34;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_6;
    }
  }

LABEL_34:
}

void sub_1003EDBF8(char a1, char a2)
{
  if (a1 == a2 && (a1 != 3 || (sub_1003EF148() & 1) != 0))
  {
    return;
  }

  v68 = sub_1003ED8B0();
  type metadata accessor for AnimationGroup();
  v2 = swift_allocObject();
  v3 = v67;
  v4 = v2;
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v71 = (v2 + 16);
  *(v2 + 24) = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask;
  if (*&v67[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask])
  {

    sub_1004DDAFC();

    v3 = v67;
  }

  *&v3[v5] = 0;

  if (a1 == 3)
  {
    sub_1003EF448();
  }

  if (a2 == 1)
  {
    v14 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.33 controlPoint2:{1.0, 0.67, 1.0}];
    v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v14 timingParameters:0.9];

    v16 = swift_allocObject();
    *(v16 + 16) = v67;
    v17 = v67;
    sub_1003F2488(v15, sub_1003F53F0, v16, 0.0);
  }

  else if (a2 == 4)
  {
    v6 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
    v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v6 timingParameters:0.25];

    v8 = swift_allocObject();
    *(v8 + 16) = v67;
    v76 = sub_1003F53F8;
    v77 = v8;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_100012680;
    v75 = &unk_1005F4B08;
    v9 = _Block_copy(&aBlock);
    v10 = v67;

    [v7 addAnimations:v9];
    _Block_release(v9);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 4;
    v76 = sub_1003F5400;
    v77 = v11;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_10015C974;
    v75 = &unk_1005F4B58;
    v12 = _Block_copy(&aBlock);
    v13 = v10;

    [v7 addCompletion:v12];
    _Block_release(v12);
    sub_1003F2488(v7, 0, 0, 0.0);
  }

  if (!a1)
  {
    v64 = v4;

    sub_1003EFE18(v18);
    v20 = v19;
    sub_1003EF85C();
    v69 = *(v20 + 16);
    v70 = v20;
    if (v69)
    {
      v4 = 0;
      v21 = (v20 + 40);
      while (v4 < *(v70 + 16))
      {
        v23 = *(v21 - 1);
        v22 = *v21;
        v24 = objc_allocWithZone(UICubicTimingParameters);
        v25 = v22;
        v26 = v23;
        v27 = [v24 initWithControlPoint1:0.32 controlPoint2:{0.0, 0.67, 0.0}];
        v28 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v27 timingParameters:0.5];

        v29 = swift_allocObject();
        *(v29 + 16) = v26;
        *(v29 + 24) = v22;
        v76 = sub_1003F53A4;
        v77 = v29;
        aBlock = _NSConcreteStackBlock;
        v73 = 1107296256;
        v74 = sub_100012680;
        v75 = &unk_1005F4A90;
        v30 = _Block_copy(&aBlock);
        swift_retain_n();
        v31 = v26;
        v32 = v25;

        [v28 addAnimations:v30];
        _Block_release(v30);

        swift_beginAccess();
        v33 = *v71;
        v34 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v71 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_1003E0C4C(0, *(v33 + 2) + 1, 1, v33);
          *v71 = v33;
        }

        v37 = *(v33 + 2);
        v36 = *(v33 + 3);
        if (v37 >= v36 >> 1)
        {
          v33 = sub_1003E0C4C((v36 > 1), v37 + 1, 1, v33);
        }

        *(v33 + 2) = v37 + 1;
        v38 = &v33[16 * v37];
        *(v38 + 4) = v34;
        *(v38 + 5) = v4 * 0.03;
        *v71 = v33;
        swift_endAccess();

        v21 += 2;
        if (v69 == ++v4)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_21:

    v4 = v64;
  }

  v39 = v68;
  if (a2)
  {
    if (a2 == 2)
    {

      v45 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
      v46 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v45 timingParameters:0.15];

      v47 = swift_allocObject();
      v44 = v67;
      *(v47 + 16) = v67;
      *(v47 + 24) = a1;
      v48 = v67;
      sub_1003F2488(v46, sub_1003F5350, v47, 0.0);
    }

    else
    {
      if (a2 == 3)
      {
        v40 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
        v41 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v40 timingParameters:0.15];

        v42 = swift_allocObject();
        *(v42 + 16) = v67;
        v43 = v67;
        sub_1003F2488(v41, sub_1003F535C, v42, 0.0);
      }

      v44 = v67;
    }

    goto LABEL_39;
  }

  if (v68 >> 62)
  {
LABEL_37:
    v54 = sub_1004DED5C();
    v39 = v68;
    v49 = v54;
    if (!v54)
    {
      goto LABEL_38;
    }

LABEL_30:
    if (v49 < 1)
    {
      __break(1u);
      return;
    }

    v50 = 0;
    v51 = v39 & 0xC000000000000001;
    do
    {
      if (v51)
      {
        v52 = sub_1004DEB2C();
      }

      else
      {
        v52 = *(v39 + 8 * v50 + 32);
      }

      v53 = v52;
      ++v50;
      [v52 setAlpha:{0.0, v64}];

      v39 = v68;
    }

    while (v49 != v50);
    goto LABEL_38;
  }

  v49 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v49)
  {
    goto LABEL_30;
  }

LABEL_38:

  v44 = v67;
  sub_1003EF85C();
LABEL_39:
  v55 = *&v44[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation];
  if (v55)
  {
    v56 = swift_allocObject();
    *(v56 + 16) = v44;
    *(v56 + 24) = v4;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1003F5310;
    *(v57 + 24) = v56;
    swift_beginAccess();
    v58 = *(v55 + 24);
    v59 = v44;

    v60 = swift_isUniquelyReferenced_nonNull_native();
    *(v55 + 24) = v58;
    if ((v60 & 1) == 0)
    {
      v58 = sub_1003E0D58(0, v58[2] + 1, 1, v58);
      *(v55 + 24) = v58;
    }

    v62 = v58[2];
    v61 = v58[3];
    if (v62 >= v61 >> 1)
    {
      v58 = sub_1003E0D58((v61 > 1), v62 + 1, 1, v58);
    }

    v58[2] = v62 + 1;
    v63 = &v58[2 * v62];
    v63[4] = sub_10001185C;
    v63[5] = v57;
    *(v55 + 24) = v58;
    swift_endAccess();
  }

  else
  {
    sub_1003F2614();
  }
}

uint64_t WaveformPlayIndicator.mode.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  return *(v0 + v1);
}

void WaveformPlayIndicator.mode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1003EDBF8(v4, a1);
}

void (*WaveformPlayIndicator.mode.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1003EE72C;
}

void sub_1003EE72C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(v3 + v2);
  v5 = v1[40];
  *(v3 + v2) = v5;
  sub_1003EDBF8(v4, v5);

  free(v1);
}

void sub_1003EE7A0()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 whiteColor];
  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.2];

  v5 = [v0 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.6];

  static WaveformPlayIndicator.ColorPalette.overlay = v1;
  *algn_100673D98 = v2;
  qword_100673DA0 = v4;
  unk_100673DA8 = v6;
}

uint64_t *WaveformPlayIndicator.ColorPalette.overlay.unsafeMutableAddressor()
{
  if (qword_10063DBA0 != -1)
  {
    swift_once();
  }

  return &static WaveformPlayIndicator.ColorPalette.overlay;
}

uint64_t static WaveformPlayIndicator.ColorPalette.overlay.getter()
{
  if (qword_10063DBA0 != -1)
  {
    swift_once();
  }

  v0 = static WaveformPlayIndicator.ColorPalette.overlay;
  v1 = *algn_100673D98;
  v2 = qword_100673DA0;
  v3 = unk_100673DA8;
  v4 = static WaveformPlayIndicator.ColorPalette.overlay;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  return v0;
}

uint64_t static WaveformPlayIndicator.ColorPalette.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100006F10(0, &unk_100644F40, NSObject_ptr);
  if (sub_1004DE5FC() & 1) != 0 && (sub_1004DE5FC() & 1) != 0 && (sub_1004DE5FC())
  {
    return sub_1004DE5FC() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003EEA30(uint64_t *a1, uint64_t *a2)
{
  sub_100006F10(0, &unk_100644F40, NSObject_ptr);
  if (sub_1004DE5FC() & 1) != 0 && (sub_1004DE5FC() & 1) != 0 && (sub_1004DE5FC())
  {
    return sub_1004DE5FC() & 1;
  }

  else
  {
    return 0;
  }
}

void *WaveformPlayIndicator.colorPalette.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = v2;
  v7 = v3;
  v8 = v5;
  v9 = v4;
  return v2;
}

void WaveformPlayIndicator.colorPalette.setter(void *a1, void *a2, void *a3, void *a4)
{
  sub_1003F4F0C(a1, a2, a3, a4);
}

void (*WaveformPlayIndicator.colorPalette.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v8;
  v10 = v6;
  v11 = v7;
  v12 = v9;
  v13 = v8;
  return sub_1003EEC70;
}

void sub_1003EEC70(void ***a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  if (a2)
  {
    v7 = v4;
    v8 = v3;
    v9 = v6;
    v10 = v5;
    sub_1003F4F0C(v7, v8, v9, v10);

    v4 = *v2;
    v3 = v2[1];
    v6 = v2[2];
    v5 = v2[3];
  }

  else
  {
    sub_1003F4F0C(**a1, v3, v6, v5);
  }

  free(v2);
}

id WaveformPlayIndicator.waveform.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WaveformPlayIndicator.waveform.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (v1[v6] == 2)
  {
    v7 = objc_opt_self();
    v8 = *&v1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings];
    [v8 animationDuration];
    v10 = v9;
    [v8 springDamping];
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    v16[4] = sub_1003F5060;
    v16[5] = v13;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_100012680;
    v16[3] = &unk_1005F4698;
    v14 = _Block_copy(v16);
    v15 = v1;

    [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];

    _Block_release(v14);
  }

  else
  {
  }
}

void (*WaveformPlayIndicator.waveform.modify(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  return sub_1003EEFBC;
}

void sub_1003EEFBC(void ****a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[9];
    v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
    swift_beginAccess();
    if (*(v4 + v5) == 2)
    {
      v6 = v3[9];
      v7 = objc_opt_self();
      v8 = *(v6 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings);
      [v8 animationDuration];
      v10 = v9;
      [v8 springDamping];
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      v3[4] = sub_1003F5954;
      v3[5] = v13;
      *v3 = _NSConcreteStackBlock;
      v3[1] = 1107296256;
      v3[2] = sub_100012680;
      v3[3] = &unk_1005F46E8;
      v14 = _Block_copy(v3);
      v15 = v6;

      [v7 animateWithDuration:0 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v10 options:0.0 animations:v12 completion:0.0];
      _Block_release(v14);
    }
  }

  free(v3);
}

uint64_t sub_1003EF148()
{
  v0 = sub_1003ED8B0();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1004DEB2C();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 layer];
      v8 = sub_1004DD3FC();

      v9 = [v7 animationForKey:v8];

      if (!v9 || (v9, v10 = [v5 layer], v11 = sub_1004DD3FC(), , v12 = objc_msgSend(v10, "animationForKey:", v11), v10, v11, !v12) || (v12, v13 = objc_msgSend(v5, "layer"), v14 = sub_1004DD3FC(), , v15 = objc_msgSend(v13, "animationForKey:", v14), v13, v14, !v15))
      {

        return 0;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  return 1;
}

void sub_1003EF448()
{
  v0 = sub_1003ED8B0();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_3:
  sub_1004DEBCC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1004DEB2C();
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6 = [v4 layer];

      sub_1004DEB9C();
      sub_1004DEBDC();
      sub_1004DEBEC();
      sub_1004DEBAC();
    }

    while (v2 != v3);

    v1 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      while (1)
      {
        v7 = sub_1004DED5C();
        if (!v7)
        {
          break;
        }

LABEL_11:
        v8 = 0;
        v17 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v9 = sub_1004DEB2C();
          }

          else
          {
            if (v8 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v9 = _swiftEmptyArrayStorage[v8 + 4];
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          v12 = sub_1004DD3FC();
          [v10 removeAnimationForKey:v12];

          v13 = sub_1004DD3FC();
          [v10 removeAnimationForKey:v13];

          v14 = sub_1004DD3FC();
          [v10 removeAnimationForKey:v14];

          v15 = [v10 presentationLayer];
          if (v15)
          {
            v16 = v15;
            [v15 frame];
            [v10 setFrame:?];
            [v16 cornerRadius];
            [v10 setCornerRadius:?];
          }

          ++v8;
          if (v11 == v7)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v2 = sub_1004DED5C();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_23:

        v1 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v7 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_11;
      }
    }

LABEL_25:
  }
}

void sub_1003EF750(uint64_t a1, __n128 a2)
{
  sub_1003EF85C();
  v3 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = sub_1003ED8B0();
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v7 = sub_1004DED5C();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1004DEB2C();
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      [v9 setBackgroundColor:v4];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1003EF85C()
{
  [v0 bounds];
  Width = CGRectGetWidth(v27);
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  v3 = CGRectGetWidth(v28);
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (v0[v4] == 2)
  {
    v5 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
    swift_beginAccess();
    v6 = *&v0[v5];
  }

  else
  {
    v6 = [objc_opt_self() zero];
  }

  v26 = v6;
  v7 = sub_1003ED8B0();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
  {
    v10 = Width / *&v2;
    Width = v10 * 0.5;
    v11 = v3 / *&v2 - v10 * 0.5;
    v3 = v10 * 0.5 * 0.5;
    v12 = 4;
    v13 = v11 * 0.5;
    while (1)
    {
      v14 = v12 - 4;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v15 = sub_1004DEB2C();
      }

      else
      {
        if (v14 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v15 = *(v8 + 8 * v12);
      }

      v16 = v15;
      v17 = v12 - 3;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v2 = v13 + v3 + v10 * v14;
      [v0 bounds];
      [v16 setCenter:{v2, CGRectGetMidY(v29)}];
      v18 = [v16 layer];
      [v18 setCornerRadius:v10 * 0.5 * 0.5];

      v19 = [v26 amplitudes];
      sub_100006F10(0, &qword_100640D40, NSNumber_ptr);
      v20 = sub_1004DD87C();

      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = sub_1004DEB2C();
      }

      else
      {
        if (v14 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v21 = *(v20 + 8 * v12);
      }

      v22 = v21;

      [v22 doubleValue];
      v24 = v23;

      [v0 bounds];
      Height = CGRectGetHeight(v30);
      if (v24 < 1.0)
      {
        Height = v24 * Height;
      }

      if (Width > Height)
      {
        v2 = v10 * 0.5;
      }

      else
      {
        v2 = Height;
      }

      [v16 bounds];
      [v16 setBounds:?];
      [v16 bounds];
      [v16 setBounds:?];

      ++v12;
      if (v17 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
}

double sub_1003EFBA0(uint64_t a1, char *a2, char a3)
{
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (a2[v7] == a3)
  {
    v9 = sub_1004DDA8C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_1004DDA4C();
    v10 = a2;
    v11 = sub_1004DDA3C();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    *&v10[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask] = sub_100302950(0, 0, v6, &unk_100533C88, v12);
  }

  return result;
}

void sub_1003EFD0C(uint64_t a1)
{
  sub_1003EF85C();
  v2 = a1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(v2 + 8);
  v4 = sub_1003ED8B0();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v6 = sub_1004DED5C();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_1004DEB2C();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1003EFE18(unint64_t a1)
{
  sub_1003F4538(a1);
  v2 = v1;

  v3 = v2[2];
  if (v3 < 2)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = v3 >> 1;
  v7 = v3 - 1;
  v8 = 16 * v3 + 24;
  v24 = v3 >> 1;
  while (1)
  {
    if (v5 == v7)
    {
      goto LABEL_5;
    }

    v12 = v2[2];
    if (v5 >= v12)
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_14;
    }

    v13 = v2[v4 + 4];
    v14 = v2[v4 + 5];
    v15 = *(v2 + v8 - 8);
    v16 = *(v2 + v8);
    v17 = v16;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1003F4204(v2);
    }

    v21 = &v2[v4];
    v22 = v2[v4 + 4];
    v23 = v2[v4 + 5];
    v21[4] = v20;
    v21[5] = v16;

    if (v7 >= v2[2])
    {
      goto LABEL_15;
    }

    v9 = (v2 + v8);
    v10 = *(v2 + v8 - 8);
    v11 = *(v2 + v8);
    *(v9 - 1) = v18;
    *v9 = v14;

    v6 = v24;
LABEL_5:
    ++v5;
    --v7;
    v8 -= 16;
    v4 += 2;
    if (v6 == v5)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_1003EFF60(uint64_t a1)
{
  sub_1003EF85C();
  v2 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = sub_1003ED8B0();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_1003F006C();
    return;
  }

  v6 = sub_1004DED5C();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_1004DEB2C();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor:v3];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1003F006C()
{
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset);
  if (!v2)
  {
    return;
  }

  v3 = sub_1000FEFA0(3uLL);
  if (v3 > 2)
  {
    __break(1u);
LABEL_13:
    v5 = sub_1004DED5C();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v45 = *(&off_1005EBA98 + v3 + 32);
  v4 = sub_1003ED8B0();
  v1 = v4;
  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_5:
    v47[0] = _swiftEmptyArrayStorage;
    sub_1004DEBCC();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1004DEB2C();
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 layer];

      sub_1004DEB9C();
      sub_1004DEBDC();
      sub_1004DEBEC();
      sub_1004DEBAC();
    }

    while (v5 != v6);

    v10 = v47[0];
    goto LABEL_15;
  }

LABEL_14:

  v10 = _swiftEmptyArrayStorage;
LABEL_15:
  v42 = v10;
  if (v10 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
  {
    v12 = 0;
    v44 = v2;
    v43 = i;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v13 = sub_1004DEB2C();
      }

      else
      {
        if (v12 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v13 = *(v42 + 32 + 8 * v12);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = sub_1003F2F70(v45, v12);
      if (!v16)
      {
        goto LABEL_20;
      }

      v17 = v16;
      v18 = v16 + 64;
      v19 = 1 << v16[32];
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(v16 + 8);
      v2 = (v19 + 63) >> 6;

      v22 = 0;
      if (v21)
      {
        while (1)
        {
          v23 = v22;
LABEL_34:
          v24 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v25 = *(*(v17 + 7) + 8 * (v24 | (v23 << 6)));
          v26 = sub_1004DD3FC();

          [v14 addAnimation:v25 forKey:v26];

          v22 = v23;
          if (!v21)
          {
            goto LABEL_31;
          }
        }
      }

      while (1)
      {
LABEL_31:
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v23 >= v2)
        {
          break;
        }

        v21 = *&v18[8 * v23];
        ++v22;
        if (v21)
        {
          goto LABEL_34;
        }
      }

      i = v43;
      v2 = v44;
      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v27 = sub_100395BA0(1);
      if ((v28 & 1) == 0)
      {
        goto LABEL_19;
      }

      v29 = [*(*(v17 + 7) + 8 * v27) values];
      if (!v29)
      {
        goto LABEL_19;
      }

      v30 = v29;
      v31 = sub_1004DD87C();

      if (!*(v31 + 16))
      {
        goto LABEL_18;
      }

      sub_10000904C(v31 + 32, v47);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v32 = sub_100395BA0(0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_19;
      }

      v34 = [*(*(v17 + 7) + 8 * v32) values];
      if (!v34)
      {
        goto LABEL_19;
      }

      v35 = v34;
      v36 = sub_1004DD87C();

      if (!*(v36 + 16))
      {
LABEL_18:

LABEL_19:

        goto LABEL_20;
      }

      sub_10000904C(v36 + 32, v47);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (!*(v17 + 2))
      {
        goto LABEL_19;
      }

      v37 = sub_100395BA0(2);
      if ((v38 & 1) == 0)
      {
        goto LABEL_19;
      }

      v39 = *(*(v17 + 7) + 8 * v37);

      v40 = [v39 values];

      if (!v40)
      {
        goto LABEL_20;
      }

      v41 = sub_1004DD87C();

      if (!*(v41 + 16))
      {
        goto LABEL_19;
      }

      sub_10000904C(v41 + 32, v47);

      if (swift_dynamicCast())
      {
        [v14 frame];
        [v14 setFrame:?];
        [v14 setCornerRadius:v46];
      }

LABEL_20:

      v12 = v15;
      if (v15 == i)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_57:
}

void sub_1003F0644(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v5 = *&a1[v4];
  v6 = sub_1003ED8B0();
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_1004DED5C();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_1004DEB2C();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    [v10 setBackgroundColor:v5];
  }

LABEL_10:

  if (a2 == 3)
  {
    v12 = objc_opt_self();
    v13 = *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_settings];
    [v13 animationDuration];
    v15 = v14;
    [v13 springDamping];
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    aBlock[4] = sub_1003F5954;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005F4D10;
    v19 = _Block_copy(aBlock);
    v20 = a1;

    [v12 animateWithDuration:0 delay:v19 usingSpringWithDamping:0 initialSpringVelocity:v15 options:0.0 animations:v17 completion:0.0];
    _Block_release(v19);
  }
}

void sub_1003F086C(char *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = a2;

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1003F5648;
  *(v5 + 24) = v4;
  swift_beginAccess();
  v6 = *(a2 + 24);

  v7 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1003E0D58(0, v6[2] + 1, 1, v6);
    *(a2 + 24) = v6;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_1003E0D58((v9 > 1), v10 + 1, 1, v6);
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  v11[4] = sub_100051F90;
  v11[5] = v5;
  *(a2 + 24) = v6;
  swift_endAccess();

  sub_1003F2614();
}

void sub_1003F09C8(char *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  if (!*&a1[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    sub_1003EF85C();
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  if (!*&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation])
  {
    sub_1003EF85C();
  }
}

void sub_1003F0A68()
{
  v1 = v0;
  [v0 bounds];
  Width = CGRectGetWidth(v61);
  v3 = *&v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars];
  [v0 bounds];
  Height = CGRectGetHeight(v62);
  v5 = &v0[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette];
  swift_beginAccess();
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  type metadata accessor for AnimationGroup();
  v8 = swift_allocObject();
  *(v8 + 16) = _swiftEmptyArrayStorage;
  v9 = (v8 + 16);
  *(v8 + 24) = _swiftEmptyArrayStorage;
  v45 = (v8 + 24);
  v53 = v7;
  v52 = v6;
  v10 = sub_1003ED8B0();
  v11 = v10;
  v46 = v8;
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
  {
    v13 = 0;
    v50 = v11 & 0xFFFFFFFFFFFFFF8;
    v51 = v11 & 0xC000000000000001;
    v3 = Width / *&v3 * 0.5;
    Height = Height * 0.7;
    Width = 0.11;
    v48 = i;
    v49 = v11;
    v47 = v9;
    while (1)
    {
      if (v51)
      {
        v14 = sub_1004DEB2C();
      }

      else
      {
        if (v13 >= *(v50 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v54 = v13 + 1;
      v16 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v17 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v16 timingParameters:0.25];

      v18 = swift_allocObject();
      *(v18 + 16) = v15;
      *(v18 + 24) = v52;
      *(v18 + 32) = Height;
      v59 = sub_1003F594C;
      v60 = v18;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_100012680;
      v58 = &unk_1005F4BD0;
      v19 = _Block_copy(&aBlock);
      v20 = v52;
      v21 = v15;

      [v17 addAnimations:v19];
      _Block_release(v19);
      v22 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v23 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v22 timingParameters:0.25];

      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v53;
      *(v24 + 32) = v3;
      v59 = sub_1003F5588;
      v60 = v24;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v57 = sub_100012680;
      v58 = &unk_1005F4C20;
      v25 = _Block_copy(&aBlock);
      v26 = v53;
      v27 = v21;

      [v23 addAnimations:v25];
      _Block_release(v25);
      v28 = swift_allocObject();
      *(v28 + 16) = v23;
      v59 = sub_1003F55F8;
      v60 = v28;
      aBlock = _NSConcreteStackBlock;
      v56 = 1107296256;
      v9 = v47;
      v57 = sub_10015C974;
      v58 = &unk_1005F4C70;
      v29 = _Block_copy(&aBlock);
      v30 = v23;

      [v17 addCompletion:v29];
      _Block_release(v29);
      swift_beginAccess();
      v31 = *v47;
      v32 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v47 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1003E0C4C(0, *(v31 + 2) + 1, 1, v31);
        *v47 = v31;
      }

      v35 = *(v31 + 2);
      v34 = *(v31 + 3);
      if (v35 >= v34 >> 1)
      {
        v31 = sub_1003E0C4C((v34 > 1), v35 + 1, 1, v31);
      }

      *(v31 + 2) = v35 + 1;
      v36 = &v31[16 * v35];
      *(v36 + 4) = v32;
      *(v36 + 5) = v13 * 0.1;
      *v47 = v31;
      swift_endAccess();

      ++v13;
      v11 = v49;
      if (v54 == v48)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1003F5950;
  *(v38 + 24) = v37;
  swift_beginAccess();
  v39 = *v45;
  v40 = v1;

  v41 = swift_isUniquelyReferenced_nonNull_native();
  *v45 = v39;
  if ((v41 & 1) == 0)
  {
    v39 = sub_1003E0D58(0, v39[2] + 1, 1, v39);
    *v45 = v39;
  }

  v43 = v39[2];
  v42 = v39[3];
  if (v43 >= v42 >> 1)
  {
    v39 = sub_1003E0D58((v42 > 1), v43 + 1, 1, v39);
  }

  v39[2] = v43 + 1;
  v44 = &v39[2 * v43];
  v44[4] = sub_100051F90;
  v44[5] = v38;
  *(v46 + 24) = v39;
  swift_endAccess();

  *&v40[OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation] = v46;

  sub_1003F2614();
}

uint64_t sub_1003F110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1004DEC4C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1004DDA4C();
  v4[6] = sub_1004DDA3C();
  v7 = sub_1004DD9BC();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1003F1200, v7, v6);
}

uint64_t sub_1003F1200(__n128 a1)
{
  result = sub_1004DDB0C();
  if (result)
  {

    v3 = v1[1];

    return v3();
  }

  v4 = *(v1[2] + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  v5 = 100 * v4;
  if ((v4 * 100) >> 64 != (100 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = __OFADD__(v5, 500);
  v7 = v5 + 500;
  if (v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = __OFADD__(v7, 600);
  v8 = v7 + 600;
  v1[9] = v8;
  if (v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v9 = 1000000000000000 * v8;
  v10 = (v8 * 0x38D7EA4C68000uLL) >> 64;
  sub_1003F0A68();
  sub_1004DF19C();
  v11 = swift_task_alloc();
  v1[10] = v11;
  *v11 = v1;
  v11[1] = sub_1003F1384;

  return sub_1003F3D4C(v9, v10, 0, 0, 1);
}

uint64_t sub_1003F1384()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = (v5 + 8);
  if (v0)
  {

    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_1003F5914;
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_1003F151C;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1003F151C(__n128 a1)
{
  if (sub_1004DDB0C())
  {

    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = v1[9];
    sub_1003F0A68();
    sub_1004DF19C();
    v5 = swift_task_alloc();
    v1[10] = v5;
    *v5 = v1;
    v5[1] = sub_1003F1384;

    return sub_1003F3D4C(1000000000000000 * v4, (v4 * 0x38D7EA4C68000uLL) >> 64, 0, 0, 1);
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.tintColorDidChange()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "tintColorDidChange");
  v1 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode;
  swift_beginAccess();
  if (*(v0 + v1) == 2)
  {
    v2 = [v0 tintColor];
    if (!v2)
    {
      goto LABEL_15;
    }

    v3 = v2;
    v4 = sub_1003ED8B0();
    v5 = v4;
    if (v4 >> 62)
    {
      v6 = sub_1004DED5C();
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_5:
        if (v6 >= 1)
        {
          for (i = 0; i != v6; ++i)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v8 = sub_1004DEB2C();
            }

            else
            {
              v8 = *(v5 + 8 * i + 32);
            }

            v9 = v8;
            [v8 setBackgroundColor:v3];
          }

          goto LABEL_12;
        }

        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }
    }

LABEL_12:
  }
}

Swift::Void __swiftcall WaveformPlayIndicator.didMoveToWindow()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "didMoveToWindow");
  v1 = [v0 window];
  if (v1)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  sub_1004D9B7C();
  sub_1003F1A60(v3);
}

void WaveformPlayIndicator.isVisible.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_1004D9B7C();
  sub_1003F1A60(v3);
}

void sub_1003F1A60(char a1)
{
  v1 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  if (v3 != v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    if (v2 == 1)
    {
      sub_1003EF85C();
    }
  }
}

uint64_t WaveformPlayIndicator.isVisible.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  return v1;
}

void sub_1003F1BA8(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

void sub_1003F1C28(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_1004D9B7C();
  sub_1003F1A60(v3);
}

void (*WaveformPlayIndicator.isVisible.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *(a1 + 8) = *(a1 + 9);
  return sub_1003F1D8C;
}

void sub_1003F1D8C(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  sub_1004D9B6C();

  v4 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v5 = v3;
  sub_1004D9B7C();
  sub_1003F1A60(v4);
}

uint64_t WaveformPlayIndicator.$isVisible.getter()
{
  swift_beginAccess();
  sub_100004CB8(&qword_100641040, &unk_1005339B0);
  sub_1004D9B3C();
  return swift_endAccess();
}

uint64_t WaveformPlayIndicator.$isVisible.setter(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_1006444B8, &qword_1005327E0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100004CB8(&qword_100641040, &unk_1005339B0);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WaveformPlayIndicator.$isVisible.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100004CB8(&qword_1006444B8, &qword_1005327E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100004CB8(&qword_100641040, &unk_1005339B0);
  sub_1004D9B3C();
  swift_endAccess();
  return sub_1001F5F38;
}

void sub_1003F217C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_numberOfBars);
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    sub_1004DEBCC();
    do
    {
      v2 = [objc_allocWithZone(UIView) init];
      v3 = [v2 layer];
      [v3 setCornerCurve:kCACornerCurveContinuous];

      v4 = [v2 layer];
      [v4 setAllowsEdgeAntialiasing:1];

      v5 = [v2 tintColor];
      [v2 setBackgroundColor:v5];

      sub_1004DEB9C();
      sub_1004DEBDC();
      sub_1004DEBEC();
      sub_1004DEBAC();
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1003F2448@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_1004D9AFC();
  *a2 = result;
  return result;
}

uint64_t sub_1003F2488(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v17[4] = a2;
    v17[5] = a3;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_100012680;
    v17[3] = &unk_1005F49A0;
    v9 = _Block_copy(v17);
    sub_10000DE64(a2, a3);

    [a1 addAnimations:v9];
    _Block_release(v9);
    sub_10000DE74(a2, a3);
  }

  swift_beginAccess();
  v10 = *(v4 + 16);
  v11 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1003E0C4C(0, *(v10 + 2) + 1, 1, v10);
    *(v4 + 16) = v10;
  }

  v14 = *(v10 + 2);
  v13 = *(v10 + 3);
  if (v14 >= v13 >> 1)
  {
    v10 = sub_1003E0C4C((v13 > 1), v14 + 1, 1, v10);
  }

  *(v10 + 2) = v14 + 1;
  v15 = &v10[16 * v14];
  *(v15 + 4) = v11;
  *(v15 + 5) = a4;
  *(v4 + 16) = v10;
  return swift_endAccess();
}

void sub_1003F2614()
{
  v1 = v0;
  v2 = sub_1004DBEBC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v29 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DBEFC();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin();
  v26 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = dispatch_group_create();
  swift_beginAccess();
  v8 = *(*(v0 + 16) + 16);
  if (v8)
  {
    v23 = v0;
    v24 = v3;
    v25 = v2;

    v9 = (v22 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 2;
      v12 = v10;
      dispatch_group_enter(v7);
      [v12 startAnimationAfterDelay:v11];
      v13 = swift_allocObject();
      *(v13 + 16) = v7;
      v35 = sub_1003F52C0;
      v36 = v13;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_10015C974;
      v34 = &unk_1005F4950;
      v14 = _Block_copy(&aBlock);
      v15 = v12;
      v16 = v7;

      [v15 addCompletion:v14];
      _Block_release(v14);

      --v8;
    }

    while (v8);

    v3 = v24;
    v2 = v25;
    v1 = v23;
  }

  sub_100006F10(0, &qword_100642240, OS_dispatch_queue_ptr);
  v25 = sub_1004DE14C();
  v35 = sub_1003F52C8;
  v36 = v1;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100012680;
  v34 = &unk_1005F4978;
  v17 = _Block_copy(&aBlock);

  v18 = v26;
  sub_1004DBEDC();
  v30 = _swiftEmptyArrayStorage;
  sub_1003F5500(&qword_10063E488, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004CB8(&qword_10063E490, &unk_100533C70);
  sub_100042B08(&qword_10063E498, &qword_10063E490, &unk_100533C70, &protocol conformance descriptor for [A]);
  v19 = v29;
  sub_1004DE92C();
  v20 = v25;
  sub_1004DE0DC();
  _Block_release(v17);

  (*(v3 + 8))(v19, v2);
  (*(v27 + 8))(v18, v28);
}

double sub_1003F2A48(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = v3 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1003F2ADC()
{

  return swift_deallocClassInstance();
}

void sub_1003F2B1C()
{
  v0 = sub_1004D809C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035718(v4, qword_100645230);
  v5 = sub_100035430(v0, qword_100645230);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v6 = qword_1006734A0;
  v7 = sub_1004DD3FC();
  v8 = sub_1004DD3FC();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    sub_1004D802C();

    (*(v1 + 32))(v5, v3, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003F2CC4()
{
  v1 = v0;
  v2 = sub_1004D809C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = xmmword_100527380;
  *(v1 + 32) = 0x4030000000000000;
  if (qword_10063DBA8 != -1)
  {
    swift_once();
  }

  v6 = sub_100035430(v2, qword_100645230);
  (*(v3 + 16))(v5, v6, v2);
  *(v1 + 40) = sub_1003F48C8(v5);
  *(v1 + 48) = v7;
  return v1;
}

id sub_1003F2F70(uint64_t a1, unint64_t a2)
{
  sub_1003F36D4(a1, a2);
  if (!v3)
  {
LABEL_25:
    if (qword_10063DBB0 != -1)
    {
LABEL_43:
      swift_once();
    }

    v33 = sub_1004D966C();
    sub_100035430(v33, qword_100645248);
    v34 = sub_1004D964C();
    v35 = sub_1004DDF9C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "BouncyBars asset does not have expected layers / animations", v36, 2u);
    }

    return 0;
  }

  v4 = v3;
  v5 = [v3 values];
  if (!v5)
  {

    goto LABEL_25;
  }

  v6 = v5;
  v7 = sub_1004DD87C();

  [v4 copy];
  sub_1004DE8DC();
  swift_unknownObjectRelease();
  sub_100006F10(0, &qword_100645500, CAKeyframeAnimation_ptr);
  swift_dynamicCast();
  v8 = v49;
  [v4 copy];
  sub_1004DE8DC();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v45 = v49;
  v43 = v4;
  [v4 copy];
  sub_1004DE8DC();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v44 = v49;
  v46 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v46 + 32;
    while (1)
    {
      if (v10 >= v9)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      *&v49 = v10;
      sub_10000904C(v11, &v49 + 8);
      v52 = v49;
      v53 = v50;
      v54 = v51;
      if (!v51)
      {
        goto LABEL_31;
      }

      v47 = v49;
      sub_100006F5C((&v52 + 8), &v49);
      if (!swift_dynamicCast())
      {
        swift_bridgeObjectRelease_n();
        if (qword_10063DBB0 != -1)
        {
          swift_once();
        }

        v39 = sub_1004D966C();
        sub_100035430(v39, qword_100645248);
        v40 = sub_1004D964C();
        v41 = sub_1004DDF9C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "BouncyBars asset does not have expected layers / animations", v42, 2u);
        }

        return 0;
      }

      v12 = v48 / 100.0 * v2[4];
      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v12;
      result = [v8 values];
      if (!result)
      {
        break;
      }

      v14 = result;
      v15 = sub_1004DD87C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1003F4218(v15);
      }

      if ((v47 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v47 >= *(v15 + 16))
      {
        goto LABEL_39;
      }

      v16 = v15 + 32 * v47;
      sub_100008D24((v16 + 32));
      sub_100006F5C(&v49, (v16 + 32));
      isa = sub_1004DD85C().super.isa;

      [v8 setValues:isa];

      v18 = v45;
      v19 = sub_1004DD3FC();
      [v18 setKeyPath:v19];

      v20 = v2[3];
      v21 = v20 + v2[2];
      if (v20 > v21)
      {
        goto LABEL_40;
      }

      v22 = v20 + v48 / 100.0 * (v21 - v20);
      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22;
      result = [v18 values];
      if (!result)
      {
        goto LABEL_45;
      }

      v23 = result;
      v24 = sub_1004DD87C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1003F4218(v24);
      }

      if (v47 >= *(v24 + 16))
      {
        goto LABEL_41;
      }

      v25 = v24 + 32 * v47;
      sub_100008D24((v25 + 32));
      sub_100006F5C(&v49, (v25 + 32));
      v26 = sub_1004DD85C().super.isa;

      [v18 setValues:v26];

      v27 = v44;
      v28 = sub_1004DD3FC();
      [v27 setKeyPath:v28];

      *(&v50 + 1) = &type metadata for CGFloat;
      *&v49 = v22 * 0.5;
      result = [v27 values];
      if (!result)
      {
        goto LABEL_46;
      }

      v29 = result;
      v30 = sub_1004DD87C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1003F4218(v30);
      }

      if (v47 >= *(v30 + 16))
      {
        goto LABEL_42;
      }

      ++v10;
      v31 = v30 + 32 * v47;
      sub_100008D24((v31 + 32));
      sub_100006F5C(&v49, (v31 + 32));
      v32 = sub_1004DD85C().super.isa;

      [v27 setValues:v32];

      v9 = *(v46 + 16);
      v11 += 32;
      if (v10 == v9)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_30:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
LABEL_31:
    swift_bridgeObjectRelease_n();
    sub_100004CB8(&qword_100645508, &qword_100533C60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511A40;
    *(inited + 32) = 0;
    *(inited + 40) = v8;
    *(inited + 48) = 1;
    *(inited + 56) = v45;
    *(inited + 64) = 2;
    *(inited + 72) = v44;
    v38 = sub_1002F18D4(inited);
    swift_setDeallocating();
    sub_100004CB8(&qword_100645510, &qword_100533C68);
    swift_arrayDestroy();

    return v38;
  }

  return result;
}

void sub_1003F36D4(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 40);
  v5 = (a1 << 56) + 0x41746E6169726156;

  v6 = sub_1003F38B0(v5, 0xE800000000000000, v4);

  if (!v6)
  {
    return;
  }

  v7 = [v6 sublayers];

  if (!v7)
  {
    return;
  }

  sub_100006F10(0, &qword_10063E718, CALayer_ptr);
  v8 = sub_1004DD87C();

  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v9 = *(v8 + 8 * a2 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v9 = sub_1004DEB2C();
LABEL_7:
  v10 = v9;

  v11 = [v10 animationKeys];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1004DD87C();

    if (*(v13 + 16))
    {

      v14 = sub_1004DD3FC();

      v15 = [v10 animationForKey:v14];

      if (v15)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
        }
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1003F38B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_100028F80(a1, a2), (v5 & 1) != 0))
  {
    sub_10000904C(*(a3 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_100004CB8(&qword_100644FB0, &unk_1005293E0);
  sub_100006F10(0, &qword_10063E718, CALayer_ptr);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F3958(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "cannedHeightAnimation";
  v4 = 0xD000000000000014;
  if (v2 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v2 == 1)
  {
    v6 = "cannedHeightAnimation";
  }

  else
  {
    v6 = "cannedWidthAnimation";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ntroller1XCroppedImage";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = "cannedWidthAnimation";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "ntroller1XCroppedImage";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004DF08C();
  }

  return v11 & 1;
}

Swift::Int sub_1003F3A2C()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

double sub_1003F3AC4(uint64_t a1)
{
  sub_1004DD55C();

  return result;
}

Swift::Int sub_1003F3B48()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

unint64_t sub_1003F3BDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003F589C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1003F3C0C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = "cannedHeightAnimation";
  v4 = 0xD000000000000014;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = "cannedWidthAnimation";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "ntroller1XCroppedImage";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_1003F3C74()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100645248);
  sub_100035430(v0, qword_100645248);
  sub_100006F10(0, &qword_10063E768, OS_os_log_ptr);
  OS_os_log.init(musicCategory:)(0x614279636E756F42, 0xEF74657373417372);
  return sub_1004D967C();
}

uint64_t sub_1003F3D04()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003F3D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1004DEC3C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1003F3E4C, 0, 0);
}

uint64_t sub_1003F3E4C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1004DEC4C();
  v5 = sub_1003F5500(&qword_100645518, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1004DF17C();
  sub_1003F5500(&qword_100645520, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1004DEC5C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1003F3FDC;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1003F3FDC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1003F4198, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1003F4198()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003F422C(uint64_t a1)
{
  v41 = sub_100004CB8(&qword_100641D78, &qword_10052ED10);
  v2 = *(v41 - 8);
  __chkstk_darwin();
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = *(v2 + 80);
    v38 = v9;
    v39 = (v9 + 32) & ~v9;
    v10 = _swiftEmptyArrayStorage + v39;
    v11 = 0;
    v12 = 0;
    v13 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v40 = *(v13 + 72);
    v15 = _swiftEmptyArrayStorage;
    v36 = v7;
    v37 = v2;
    while (1)
    {
      v17 = *(v41 + 48);
      *v4 = v11;
      sub_1003F56B4(v14, v4 + v17);
      sub_1003F5718(v4, v6);
      if (v12)
      {
        v8 = v15;
        v16 = __OFSUB__(v12--, 1);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v18 = v15[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v19 = v6;
        v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        sub_100004CB8(&qword_100645558, &qword_100533CA8);
        v22 = *(v2 + 72);
        v23 = v39;
        v8 = swift_allocObject();
        v24 = j__malloc_size(v8);
        if (!v22)
        {
          goto LABEL_34;
        }

        v25 = v24 - v23;
        if (v24 - v23 == 0x8000000000000000 && v22 == -1)
        {
          goto LABEL_35;
        }

        v27 = v25 / v22;
        v8[2] = v21;
        v8[3] = 2 * (v25 / v22);
        v28 = v8 + v23;
        v29 = v15[3] >> 1;
        v30 = v29 * v22;
        if (v15[2])
        {
          if (v8 < v15 || v28 >= v15 + v39 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v15[2] = 0;
        }

        v10 = &v28[v30];
        v32 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

        v6 = v19;
        v7 = v36;
        v2 = v37;
        v16 = __OFSUB__(v32, 1);
        v12 = v32 - 1;
        if (v16)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v11;
      sub_1003F5718(v6, v10);
      v10 += *(v2 + 72);
      v14 += v40;
      v15 = v8;
      if (v7 == v11)
      {
        goto LABEL_29;
      }
    }
  }

  v12 = 0;
LABEL_29:
  v33 = v8[3];
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v16 = __OFSUB__(v34, v12);
    v35 = v34 - v12;
    if (v16)
    {
      goto LABEL_36;
    }

    v8[2] = v35;
  }
}

void sub_1003F4538(unint64_t a1)
{

  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  for (i = &_swiftEmptyArrayStorage[4]; ; i += 2)
  {
    v5 = a1 >> 62;
    if (a1 >> 62)
    {
      break;
    }

    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

LABEL_4:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = sub_1004DEB2C();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v6 = *(a1 + 32);
    }

    v7 = v6;
    if (v5)
    {
      if (!sub_1004DED5C())
      {
        goto LABEL_61;
      }

      if (sub_1004DED5C() < 1)
      {
        goto LABEL_62;
      }

      v8 = sub_1004DED5C();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_61;
      }
    }

    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      goto LABEL_58;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v5)
      {
        v10 = a1 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_1004DED5C();
      goto LABEL_20;
    }

    if (v5)
    {
      goto LABEL_19;
    }

LABEL_20:
    a1 = sub_1004DEB3C();
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_21:

    if (a1 >> 62)
    {
      v17 = sub_1004DED5C();
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_67;
      }

      memmove((v10 + 32), (v10 + 40), 8 * (v17 - 1));
      v18 = sub_1004DED5C();
      if (__OFSUB__(v18, 1))
      {
        goto LABEL_68;
      }

      *(v10 + 16) = v18 - 1;
      if (!sub_1004DED5C())
      {
LABEL_39:
        v15 = 0;
        if (v2)
        {
          goto LABEL_28;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v11 = *(v10 + 16);
      memmove((v10 + 32), (v10 + 40), 8 * v11 - 8);
      *(v10 + 16) = v11 - 1;
      if (v11 == 1)
      {
        goto LABEL_39;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (a1 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      a1 = sub_1000117AC(a1);
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = *(v10 + 16);
    if (!v13)
    {
      goto LABEL_60;
    }

    v14 = v13 - 1;
    v15 = *(v10 + 8 * v14 + 32);
    *(v10 + 16) = v14;
    if (v2)
    {
LABEL_28:
      v16 = __OFSUB__(v2--, 1);
      if (v16)
      {
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_40:
    v19 = v3[3];
    if (((v19 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_63;
    }

    v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    sub_100004CB8(&qword_100644FD0, &qword_1005335F0);
    v22 = swift_allocObject();
    v23 = j__malloc_size(v22);
    v24 = v23 - 32;
    if (v23 < 32)
    {
      v24 = v23 - 17;
    }

    v25 = v24 >> 4;
    v22[2] = v21;
    v22[3] = 2 * (v24 >> 4);
    v26 = (v22 + 4);
    v27 = v3[3] >> 1;
    if (v3[2])
    {
      v28 = v3 + 4;
      if (v22 != v3 || v26 >= v28 + 16 * v27)
      {
        memmove(v22 + 4, v28, 16 * v27);
      }

      v3[2] = 0;
    }

    i = (v26 + 16 * v27);
    v29 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

    v3 = v22;
    v16 = __OFSUB__(v29, 1);
    v2 = v29 - 1;
    if (v16)
    {
      goto LABEL_59;
    }

LABEL_52:
    *i = v7;
    i[1] = v15;
  }

  if (sub_1004DED5C())
  {
    if (!sub_1004DED5C())
    {
      goto LABEL_65;
    }

    if (!sub_1004DED5C())
    {
      goto LABEL_66;
    }

    goto LABEL_4;
  }

LABEL_53:

  v30 = v3[3];
  if (v30 < 2)
  {
    return;
  }

  v31 = v30 >> 1;
  v16 = __OFSUB__(v31, v2);
  v32 = v31 - v2;
  if (!v16)
  {
    v3[2] = v32;
    return;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

void *sub_1003F48C8(uint64_t a1)
{
  v3 = sub_1004D80BC();
  if (v1)
  {
    goto LABEL_2;
  }

  v7 = v3;
  v8 = v4;
  sub_100006F10(0, &qword_100645528, NSKeyedUnarchiver_ptr);
  sub_100004CB8(&qword_100645530, &qword_100533CA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100512790;
  *(v9 + 32) = sub_100006F10(0, &qword_10063E718, CALayer_ptr);
  *(v9 + 40) = sub_100006F10(0, &qword_100645538, NSMutableDictionary_ptr);
  *(v9 + 48) = sub_100006F10(0, &qword_100645540, NSArray_ptr);
  *(v9 + 56) = sub_100006F10(0, &qword_100645548, NSString_ptr);
  *(v9 + 64) = sub_100006F10(0, &qword_100640D40, NSNumber_ptr);
  sub_1004DE0CC();

  if (!v17)
  {
    sub_1002DFAAC(v16);
    goto LABEL_14;
  }

  sub_100004CB8(&qword_10063EAA8, &qword_10052A340);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_1003F5660();
    swift_allocError();
    swift_willThrow();
    sub_100010598(v7, v8);
LABEL_2:
    v5 = sub_1004D809C();
    return (*(*(v5 - 8) + 8))(a1, v5);
  }

  if (!v15[2] || (v10 = sub_100028F80(0x6579614C746F6F72, 0xE900000000000072), (v11 & 1) == 0) || (sub_10000904C(v15[7] + 32 * v10, v16), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_14;
  }

  if (!v15[2] || (v12 = sub_100028F80(0xD000000000000010, 0x80000001004F8F10), (v13 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_10000904C(v15[7] + 32 * v12, v16);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    goto LABEL_14;
  }

  v14 = sub_1004D809C();
  (*(*(v14 - 8) + 8))(a1, v14);
  sub_100010598(v7, v8);
  return v15;
}

void _s11MusicCoreUI21WaveformPlayIndicatorC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v18 = sub_100004CB8(&qword_100641040, &unk_1005339B0);
  v2 = *(v18 - 8);
  __chkstk_darwin();
  v4 = &v16 - v3;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_mode) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette);
  v6 = objc_opt_self();
  v17 = [v6 tintColor];
  v7 = [v6 labelColor];
  v8 = [v7 colorWithAlphaComponent:0.35];

  v9 = [v6 labelColor];
  v10 = [v9 colorWithAlphaComponent:0.2];

  v11 = [v6 labelColor];
  v12 = [v11 colorWithAlphaComponent:0.6];

  *v5 = v17;
  v5[1] = v8;
  v5[2] = v10;
  v5[3] = v12;
  v13 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_waveform;
  *(v1 + v13) = [objc_opt_self() zero];
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_barRatio) = 0x3FE0000000000000;
  v14 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator__isVisible;
  v19 = 0;
  sub_1004D9B2C();
  (*(v2 + 32))(v1 + v14, v4, v18);
  *(v1 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  v15 = OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_cannedAnimationAsset;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  *(v1 + v15) = sub_1003F2CC4();
  sub_1004DECCC();
  __break(1u);
}

void sub_1003F4F0C(void *a1, void *a2, void *a3, void *a4)
{
  v9 = v4 + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_colorPalette;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_100006F10(0, &unk_100644F40, NSObject_ptr);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  if ((sub_1004DE5FC() & 1) == 0 || (sub_1004DE5FC() & 1) == 0 || (sub_1004DE5FC() & 1) == 0 || (sub_1004DE5FC() & 1) == 0)
  {
    sub_1003ED914();
  }
}

uint64_t sub_1003F5028()
{

  return swift_deallocObject();
}

double sub_1003F5068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1003F508C()
{
  result = qword_1006452B8;
  if (!qword_1006452B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006452B8);
  }

  return result;
}

uint64_t type metadata accessor for WaveformPlayIndicator(uint64_t a1)
{
  result = qword_1006452E8;
  if (!qword_1006452E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003F5134(uint64_t a1)
{
  sub_1003F520C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003F520C()
{
  if (!qword_1006411B8)
  {
    v0 = sub_1004D9B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1006411B8);
    }
  }
}

uint64_t sub_1003F52D0()
{

  return swift_deallocObject();
}

uint64_t sub_1003F5318()
{

  return swift_deallocObject();
}

uint64_t sub_1003F5364()
{

  return swift_deallocObject();
}

id sub_1003F53A4()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:1.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_1003F540C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1003F544C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035B28;

  return sub_1003F110C(a1, v4, v5, v6);
}

uint64_t sub_1003F5500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003F5548()
{

  return swift_deallocObject();
}

id sub_1003F558C()
{
  v1 = *(v0 + 16);
  [v1 setBackgroundColor:*(v0 + 24)];
  [v1 bounds];

  return [v1 setBounds:?];
}

id sub_1003F55F8(id result)
{
  if (!result)
  {
    return [*(v1 + 16) startAnimation];
  }

  return result;
}

uint64_t sub_1003F5610()
{

  return swift_deallocObject();
}

double sub_1003F5648()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11MusicCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;

  return result;
}

unint64_t sub_1003F5660()
{
  result = qword_100645550;
  if (!qword_100645550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645550);
  }

  return result;
}

uint64_t sub_1003F56B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCurators.Curator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F5718(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100641D78, &qword_10052ED10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003F57F0()
{
  result = qword_100645570;
  if (!qword_100645570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645570);
  }

  return result;
}

unint64_t sub_1003F5848()
{
  result = qword_100645578;
  if (!qword_100645578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100645578);
  }

  return result;
}

unint64_t sub_1003F589C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005EBAC0;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

id sub_1003F598C()
{
  result = sub_1003F59AC();
  qword_100673DB0 = result;
  return result;
}

id sub_1003F59AC()
{
  v0 = sub_1004D809C();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(sub_100004CB8(&qword_1006457D0, &unk_1005349F0) - 8);
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  __chkstk_darwin();
  v8 = &v48 - v7;
  __chkstk_darwin();
  v55 = &v48 - v9;
  __chkstk_darwin();
  v11 = &v48 - v10;
  v54 = sub_1003F5FF0(_swiftEmptyArrayStorage);
  sub_100004CB8(&qword_1006457D8, &qword_100534220);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100511A40;
  v58 = v12;
  v51 = v13;
  v14 = v13 + v12;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = [v16 resourceURL];

  if (v17)
  {
    sub_1004D802C();

    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 0;
  }

  else
  {
    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 1;
  }

  v57 = v18;
  v18(v19, v20, 1, v0);
  sub_1003F66C0(v11, v14);
  type metadata accessor for BundleFinder();
  v21 = [v15 bundleForClass:swift_getObjCClassFromMetadata()];
  v22 = [v21 resourceURL];

  if (v22)
  {
    v23 = v55;
    sub_1004D802C();

    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v55;
  }

  v25 = (v1 + 56);
  v26 = v57;
  v57(v23, v24, 1, v0);
  v49 = v1;
  v27 = v56;
  sub_1003F66C0(v23, v14 + v56);
  v28 = [v15 mainBundle];
  v29 = [v28 bundleURL];

  sub_1004D802C();
  v55 = v25;
  v26(v14 + 2 * v27, 0, 1, v0);
  v59 = v54;
  sub_1003F6730(v51);
  v30 = v59;
  v31 = v59[2];
  v32 = v53;
  if (v31)
  {
    v33 = 0;
    v34 = v58 + v59;
    v58 = (v49 + 6);
    v54 = (v49 + 1);
    v49 += 4;
    v50 = "319BF3FEA1012BundleFinder";
    v51 = v31;
    while (v33 < v30[2])
    {
      sub_1003F6868(v34, v6);
      v35 = *v58;
      if ((*v58)(v6, 1, v0) == 1)
      {
        sub_1003F68D8(v6);
        v36 = 1;
      }

      else
      {
        sub_1004D7FFC();
        (*v54)(v6, v0);
        v36 = 0;
      }

      v57(v8, v36, 1, v0);
      sub_1003F6868(v8, v32);
      if (v35(v32, 1, v0) == 1)
      {
        sub_1003F68D8(v8);
      }

      else
      {
        v37 = v30;
        v38 = v8;
        v39 = v6;
        v40 = v52;
        (*v49)(v52, v32, v0);
        v41 = objc_allocWithZone(NSBundle);
        sub_1004D7FDC(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43];

        v32 = v53;
        v46 = v40;
        v6 = v39;
        v8 = v38;
        v30 = v37;
        v31 = v51;
        (*v54)(v46, v0);
        sub_1003F68D8(v8);
        if (v45)
        {

          return v45;
        }
      }

      ++v33;
      v34 += v56;
      if (v31 == v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

void *sub_1003F5FF0(uint64_t a1)
{
  v2 = sub_1004D809C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004CB8(&qword_1006457D0, &unk_1005349F0);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_1003F6940(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_1003F6940((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_1003F66C0(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t variable initialization expression of ShaderFallback.calculator()
{
  type metadata accessor for ShaderFallback.Calculator(0);
  swift_allocObject();
  return sub_1004029EC();
}

__n128 sub_1003F6294(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1003F62C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 368))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F62E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 368) = v3;
  return result;
}

uint64_t sub_1003F63A8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1004D879C();
}

Swift::Int sub_1003F650C(uint64_t a1, uint64_t a2)
{
  sub_1004DF26C();
  swift_getWitnessTable();
  sub_1004D87AC();
  return sub_1004DF2BC();
}

uint64_t sub_1003F65BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003F6604(uint64_t a1)
{
  sub_1003F65BC(&qword_100645820, type metadata accessor for Option, &unk_100534430);
  sub_1003F65BC(&qword_100645828, type metadata accessor for Option, &unk_100534384);

  return sub_1004DEE0C();
}

uint64_t sub_1003F66C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_1006457D0, &unk_1005349F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1003F6730(uint64_t a1)
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

  v3 = sub_1003FE850(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  sub_100004CB8(&qword_1006457D0, &unk_1005349F0);
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

uint64_t sub_1003F6868(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_1006457D0, &unk_1005349F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F68D8(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_1006457D0, &unk_1005349F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1003F6940(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003F6960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003F6960(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_1006457D8, &qword_100534220);
  v10 = *(sub_100004CB8(&qword_1006457D0, &unk_1005349F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_1006457D0, &unk_1005349F0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

__n128 sub_1003F6B50(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1003F6B64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F6B84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 sub_1003F6BCC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1003F6C00(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1003F6C1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F6C3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

__n128 sub_1003F6C90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1003F6CA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F6CC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Backdrop.RGBColor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

double sub_1003F6E2C()
{
  xmmword_100673DC0 = xmmword_100533E50;
  *algn_100673DD0 = xmmword_100533E60;
  result = 0.0;
  xmmword_100673DE0 = xmmword_100533E70;
  unk_100673DF0 = xmmword_100533E80;
  return result;
}

void sub_1003F6E60(void *a1)
{
  v3 = [v1 vertexCount];
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      [v1 vertexAtIndex:{v5, *&v32}];
      [a1 vertexAtIndex:v5];
      v32 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1003FEB3C(0, *(v6 + 2) + 1, 1, v6);
      }

      v8 = *(v6 + 2);
      v7 = *(v6 + 3);
      if (v8 >= v7 >> 1)
      {
        v6 = sub_1003FEB3C((v7 > 1), v8 + 1, 1, v6);
      }

      ++v5;
      *(&v9 + 1) = *&v33.f64[1];
      *&v9 = vcvt_f32_f64(v33);
      *&v10 = vcvt_f32_f64(v34);
      *&v11 = v35;
      *(&v10 + 1) = v11;
      *&v12 = v10;
      *&v13 = v35;
      *(&v12 + 1) = v13;
      *(v6 + 2) = v8 + 1;
      v14 = &v6[64 * v8];
      *(v14 + 2) = v9;
      *(v14 + 6) = v9;
      *(v14 + 4) = v10;
      *(v14 + 5) = v12;
    }

    while (v4 != v5);
  }

  v15 = [v1 faceCount];
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v16 = v15;
  if (v15)
  {
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    while (1)
    {
      [v1 faceAtIndex:v17];
      sub_100004CB8(&unk_100645960, &unk_1005349C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1005128C0;
      if (HIWORD(LODWORD(v33.f64[0])))
      {
        break;
      }

      v20 = inited;
      *(inited + 32) = LOWORD(v33.f64[0]);
      if (HIWORD(LODWORD(v33.f64[1])))
      {
        goto LABEL_29;
      }

      *(inited + 34) = LOWORD(v33.f64[1]);
      if (HIWORD(HIDWORD(v33.f64[1])))
      {
        goto LABEL_30;
      }

      *(inited + 36) = WORD2(v33.f64[1]);
      *(inited + 38) = LOWORD(v33.f64[0]);
      if (HIWORD(HIDWORD(v33.f64[0])))
      {
        goto LABEL_31;
      }

      *(inited + 40) = WORD2(v33.f64[0]);
      *(inited + 42) = LOWORD(v33.f64[1]);
      v21 = *(v18 + 2);
      v22 = v21 + 6;
      if (__OFADD__(v21, 6))
      {
        goto LABEL_32;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v24 = *(v18 + 3) >> 1, v24 < v22))
      {
        if (v21 <= v22)
        {
          v25 = v21 + 6;
        }

        else
        {
          v25 = v21;
        }

        v18 = sub_1003FEA40(isUniquelyReferenced_nonNull_native, v25, 1, v18);
        v24 = *(v18 + 3) >> 1;
      }

      v26 = *(v18 + 2);
      if (v24 - v26 < 6)
      {
        goto LABEL_33;
      }

      v27 = *(v20 + 32);
      v28 = &v18[2 * v26];
      *(v28 + 10) = *(v20 + 40);
      *(v28 + 4) = v27;

      v29 = *(v18 + 2);
      v30 = __OFADD__(v29, 6);
      v31 = v29 + 6;
      if (v30)
      {
        goto LABEL_34;
      }

      ++v17;
      *(v18 + 2) = v31;
      if (v16 == v17)
      {
        return;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }
}

uint64_t sub_1003F714C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat);
  *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat) = result;
  if (v2 != result)
  {
    v3 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 16);
    *(v3 + 16) = result;
    *(v3 + 160) = sub_1003F97A8();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003F71C0(void *a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage;
  v7 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage);
  if (!a1)
  {
    *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage) = 0;
    v10 = 0;

    goto LABEL_17;
  }

  if (v7)
  {
    _s3__C7CGImageCMa_0(0);
    sub_1003FD214(&qword_100646478, _s3__C7CGImageCMa_0, &unk_100534178);
    v8 = v7;
    v9 = sub_1004D879C();

    if (v9)
    {
      return;
    }

    v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage;
  }

  v11 = *(v3 + v6);
  *(v3 + v6) = a1;
  v12 = a1;

  v13 = *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
  v14 = *(v13 + 24);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(v13 + 32);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v16 = sub_1003F7440(v14, 0, v15, 0);
  if (v16)
  {
    v20 = v16;
    sub_1003F7C60(v16, 0, 0, 0, a2 & 1);

    return;
  }

LABEL_17:
  v17 = sub_1003F8868(*(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor), *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor + 8), *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor + 16));
  v18 = 1.0;
  if (a2)
  {
    v18 = 0.0;
  }

  *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v18;
  v19 = *(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
  *(v19 + 96) = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v19 + 104) = 1;

  swift_unknownObjectRelease();
}

CGImageRef sub_1003F7440(uint64_t Width, char a2, int64_t Height, char a4)
{
  v5 = v4;
  if (a2)
  {
    Width = CGImageGetWidth(v5);
  }

  v9 = CGImageGetWidth(v5);
  if (v9 < Width)
  {
    Width = v9;
  }

  if (a4)
  {
    Height = CGImageGetHeight(v5);
  }

  v10 = CGImageGetHeight(v5);
  if (v10 >= Height)
  {
    v11 = Height;
  }

  else
  {
    v11 = v10;
  }

  v12 = CGImageGetColorSpace(v5);
  if (!v12 || (v13 = v12, Model = CGColorSpaceGetModel(v12), v13, Model))
  {
    if (CGImageGetAlphaInfo(v5) != kCGImageAlphaNoneSkipFirst && CGImageGetAlphaInfo(v5) != kCGImageAlphaPremultipliedFirst)
    {
      return v5;
    }
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16 = sub_1003FD25C(Width, v11, DeviceRGB);

  if (!v16)
  {
    return v5;
  }

  v17 = sub_1004DDF5C();
  sub_100006F10(0, &qword_100646408, OS_os_log_ptr);
  v18 = sub_1004DE79C();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    _s3__C7CGImageCMa_0(0);
    v21 = v5;
    v22 = sub_1004DD4DC();
    v24 = sub_1003FC40C(v22, v23, &v27);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v17, "Backdrop: Redrawing incompatible image: %s", v19, 0xCu);
    sub_100008D24(v20);
  }

  sub_1004DDEBC();
  Image = CGBitmapContextCreateImage(v16);

  return Image;
}

uint64_t sub_1003F766C(uint64_t result, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  if (!*(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage))
  {
    v6 = result;
    v7 = sub_1003F8868(a2, a3, a4);
    v8 = 1.0;
    if (v6)
    {
      v8 = 0.0;
    }

    *(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v8;
    v9 = *(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
    *(v9 + 96) = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v9 + 104) = 1;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_1003F7728(uint64_t *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_state] = 0;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_framebufferPixelFormat] = 80;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_colorPixelFormat] = 115;
  v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_isPaused] = 0;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration] = 1077097267;
  *&v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage] = 0;
  v4 = &v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_placeholderColor];
  *v4 = 0x3FF0000000000000;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  v5 = &v1[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_environment];
  *v5 = 0;
  *(v5 + 4) = 0x432000004019999ALL;
  v6 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeTimingFunction;
  v7 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v8) = 1050253722;
  LODWORD(v9) = 1.0;
  *&v2[v6] = [v7 initWithControlPoints:0.0 :0.0 :v8 :v9];
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_warpTimingSpeed] = 0x400C000000000000;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix] = 0;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix] = 0;
  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchMix] = 0;
  v10 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
  if (qword_1006455C8 != -1)
  {
    swift_once();
  }

  memmove(&v2[v10], &static Uniforms.standard, 0x170uLL);
  memmove(&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms], &static Uniforms.standard, 0x170uLL);
  v11 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_spectrumAnalysis;
  type metadata accessor for SpectrumAnalysis();
  swift_allocObject();
  *&v2[v11] = sub_1003FDF78();
  __asm { FMOV            V0.2S, #1.0 }

  *&v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_aspectRatio] = _D0;
  v17 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor];
  *v17 = 0;
  v17[4] = 1;
  v18 = a1[3];
  v19 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context];
  *(v19 + 25) = *(a1 + 25);
  v20 = *(a1 + 1);
  *v19 = *a1;
  *(v19 + 1) = v20;
  type metadata accessor for Backdrop.TextureBlender();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = v18;
  v22 = sub_1003FCAA4(a1);
  type metadata accessor for Backdrop.RotatingArtworkRenderer();
  v23 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = v21;
  sub_1003FA7E8(a1);
  type metadata accessor for Backdrop.PinchRenderer();
  v25 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v26 = v24;
  sub_1003F8FDC(a1, 0);
  v27 = &v2[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers];
  *v27 = v22;
  v27[1] = v23;
  v27[2] = v25;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for Backdrop.CompositeRenderer();
  v28 = objc_msgSendSuper2(&v30, "init");
  sub_1003F7A84();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v28;
}

void sub_1003F7A84()
{
  sub_1003FCDA0();
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 3)
  {
    v14 = *(v1 + 48);
    v15 = *(v1 + 32);
    v12 = *(v1 + 80);
    v13 = *(v1 + 64);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100533E50, COERCE_FLOAT(*(v1 + 96))), xmmword_100533E60, *(v1 + 96), 1), xmmword_100533E70, *(v1 + 96), 2), xmmword_100533E90, *(v1 + 96), 3);
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100533E50, COERCE_FLOAT(*(v1 + 112))), xmmword_100533E60, *(v1 + 112), 1), xmmword_100533E70, *(v1 + 112), 2), xmmword_100533E90, *(v1 + 112), 3);
    v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100533E50, COERCE_FLOAT(*(v1 + 128))), xmmword_100533E60, *(v1 + 128), 1), xmmword_100533E70, *(v1 + 128), 2), xmmword_100533E90, *(v1 + 128), 3);
    v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100533E50, COERCE_FLOAT(*(v1 + 144))), xmmword_100533E60, *(v1 + 144), 1), xmmword_100533E70, *(v1 + 144), 2), xmmword_100533E90, *(v1 + 144), 3);
    v6 = *(v1 + 176);
    v7 = *(v1 + 160);
    v4 = *(v1 + 208);
    v5 = *(v1 + 192);

    v3 = v0 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
    swift_beginAccess();
    *(v3 + 80) = v15;
    *(v3 + 96) = v14;
    *(v3 + 112) = v13;
    *(v3 + 128) = v12;
    *(v3 + 144) = -1;
    *(v3 + 148) = 1130102784;
    *(v3 + 160) = v11;
    *(v3 + 176) = v10;
    *(v3 + 192) = v9;
    *(v3 + 208) = v8;
    *(v3 + 224) = -1;
    *(v3 + 228) = 1124204544;
    *(v3 + 240) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100533E50, v7.f32[0]), xmmword_100533E60, *v7.f32, 1), xmmword_100533E70, v7, 2), xmmword_100533EA0, v7, 3);
    *(v3 + 256) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100533E50, v6.f32[0]), xmmword_100533E60, *v6.f32, 1), xmmword_100533E70, v6, 2), xmmword_100533EA0, v6, 3);
    *(v3 + 272) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100533E50, v5.f32[0]), xmmword_100533E60, *v5.f32, 1), xmmword_100533E70, v5, 2), xmmword_100533EA0, v5, 3);
    *(v3 + 288) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100533E50, v4.f32[0]), xmmword_100533E60, *v4.f32, 1), xmmword_100533E70, v4, 2), xmmword_100533EA0, v4, 3);
    *(v3 + 304) = 0;
    *(v3 + 308) = 1124859904;
    return;
  }

LABEL_7:
  __break(1u);
}

double sub_1003F7C60(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a4)
  {
    v10 = sub_1003F8868(*&a1, *&a2, *&a3);
    v11 = 1.0;
    if (a5)
    {
      v11 = 0.0;
    }

    *&v5[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix] = v11;
    v12 = *&v5[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers];
    *(v12 + 96) = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(v12 + 104) = 1;

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = a3;
    *(v14 + 40) = 0;
    *(v14 + 48) = v5;
    *(v14 + 56) = a5 & 1;
    sub_100004CB8(&qword_100646428, &qword_100534820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    v16 = MTKTextureLoaderOptionSRGB;
    *(inited + 32) = MTKTextureLoaderOptionSRGB;
    *(inited + 40) = 0;
    v17 = v5;
    sub_1003FD0A4(a1, a2, a3, 0);
    v18 = v16;
    v19 = sub_1003FC9B4(inited);
    swift_setDeallocating();
    sub_1003FD0B0(inited + 32);
    v20 = *&v17[OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context + 24];
    sub_1003F812C(v19);

    type metadata accessor for Option(0);
    sub_1003FD214(&qword_100645820, type metadata accessor for Option, &unk_100534430);
    v21.super.isa = sub_1004DD1FC().super.isa;

    if (a5)
    {
      v22 = swift_allocObject();
      v22[2] = sub_1003FD08C;
      v22[3] = v14;
      v28[4] = sub_1003FD150;
      v28[5] = v22;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 1107296256;
      v28[2] = sub_1003F87E8;
      v28[3] = &unk_1005FA428;
      v23 = _Block_copy(v28);

      [v20 newTextureWithCGImage:a1 options:v21.super.isa completionHandler:v23];

      _Block_release(v23);
    }

    else
    {
      v28[0] = 0;
      v24 = [v20 newTextureWithCGImage:a1 options:v21.super.isa error:v28];

      v25 = v28[0];
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v27 = v25;
        sub_1004D7F4C();

        swift_willThrow();

        v26 = 0;
      }

      sub_1003F8028(v26, a1, a2, a3, 0, v17, 0);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1003F8028(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a5 & 1) != 0 || (v7 = *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_imageStorage)) == 0 || (v8 = result, v9 = a6, v10 = a7, _s3__C7CGImageCMa_0(0), sub_1003FD214(&qword_100646478, _s3__C7CGImageCMa_0, &unk_100534178), v11 = v7, v12 = sub_1004D879C(), v11, a7 = v10, a6 = v9, result = v8, (v12))
  {
    v13 = 1.0;
    if (a7)
    {
      v13 = 0.0;
    }

    *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v13;
    v14 = *(a6 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
    *(v14 + 96) = result;
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    *(v14 + 104) = 1;
  }

  return result;
}

void sub_1003F812C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_100646468, &qword_100534840);
    v1 = sub_1004DEDBC();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 8;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_100006F5C((v24 + 8), v22);
    sub_100006F5C(v22, v24);
    sub_1004DD43C();
    sub_1004DF26C();
    sub_1004DD55C();
    v13 = sub_1004DF2BC();

    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~v6[v15 >> 6]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = v6[v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~v6[v15 >> 6])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v8) = v12;
    sub_100006F5C(v24, (v1[7] + 32 * v8));
    ++v1[2];
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1003F83C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v7 = sub_1004DBEBC();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_1004DBEFC();
  v11 = *(v34 - 8);
  __chkstk_darwin();
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v33 = v11;
    swift_errorRetain();
    v14 = sub_1004DDF7C();
    sub_100006F10(0, &qword_100646408, OS_os_log_ptr);
    v15 = sub_1004DE79C();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v31 = v16;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v16 = 136315138;
      swift_getErrorValue();
      v30 = v15;
      v17 = sub_1004DF1CC();
      v19 = sub_1003FC40C(v17, v18, aBlock);
      v29 = v14;
      v20 = v8;
      v21 = v19;

      v23 = v30;
      v22 = v31;
      *(v31 + 1) = v21;
      v8 = v20;
      _os_log_impl(&_mh_execute_header, v23, v29, "Error loading texture: %s", v22, 0xCu);
      sub_100008D24(v32);
    }

    else
    {
    }

    v11 = v33;
  }

  sub_100006F10(0, &qword_100646440, OS_dispatch_queue_ptr);
  v24 = sub_1004DE14C();
  v25 = swift_allocObject();
  v25[2] = v35;
  v25[3] = a4;
  v25[4] = a1;
  aBlock[4] = sub_100027370;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005FA478;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1004DBEDC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003FD214(&qword_100646448, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004CB8(&qword_100646450, &qword_100534830);
  sub_1003FD1B0();
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v26);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v34);
}

uint64_t sub_1003F87E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1003F8868(double a1, double a2, double a3)
{
  v7 = [objc_opt_self() texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
  result = [*(v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context) newTextureWithDescriptor:v7];
  v9 = result;
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = a3 * 255.0;
  if (COERCE__INT64(fabs(a3 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v10 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= 256.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16[0] = v10;
  v11 = a2 * 255.0;
  if (COERCE__INT64(fabs(a2 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v11 >= 256.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16[1] = v11;
  v12 = a1 * 255.0;
  if (COERCE__INT64(fabs(a1 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v12 < 256.0)
  {
    v16[2] = v12;
    v16[3] = -1;
    memset(v13, 0, sizeof(v13));
    v14 = vdupq_n_s64(1uLL);
    v15 = 1;
    [result replaceRegion:v13 mipmapLevel:0 withBytes:v16 bytesPerRow:4];
LABEL_12:

    return v9;
  }

LABEL_21:
  __break(1u);
  return result;
}

id sub_1003F8A70(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Backdrop.CompositeRenderer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

int8x8_t sub_1003F8B94(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = a1 / a2;
  v9 = 1.0 / v8;
  if (v8 < 1.0)
  {
    v8 = 1.0;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = (v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_aspectRatio);
  *v10 = v9;
  v10[1] = v8;
  v19 = LODWORD(v9);
  LODWORD(v11) = 0;
  *(&v11 + 1) = v8;
  v18 = v11;
  v12 = (v3 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms);
  swift_beginAccess();
  v12[1] = v19;
  v12[2] = v18;
  v12[3] = xmmword_100533E70;
  v12[4] = xmmword_100533E80;
  v13 = v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers;
  v14 = *(v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
  v14[6] = a3;
  sub_1003FAA04(a1, a2);
  v15 = v14[5] < v14[4];
  v16 = v4 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_environment;
  *v16 = v15;
  result = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v15), 0x1FuLL)), 0x42F000004019999ALL, 0x42AA000040000000);
  *(v16 + 4) = result;
  *(*(v13 + 16) + 104) = v15;
  return result;
}

void sub_1003F8D2C(void *a1)
{
  v2 = v1;
  v14 = [a1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 isDrawableAvailable];

    if (v5)
    {
      sub_1003FCE28(0.016667);
      v6 = [*(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_context + 8) commandBuffer];
      if (v6)
      {
        v7 = v6;
        v8 = v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers;
        v9 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers);
        v10 = OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
        swift_beginAccess();
        sub_1003FA328(v7, v2 + v10);
        swift_endAccess();
        v11 = *(v8 + 8);
        *(v11 + 152) = *(v9 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        swift_beginAccess();
        sub_1003FAA94(v7, v2 + v10);
        swift_endAccess();
        *(*(v8 + 16) + 32) = *(v11 + 168);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v12 = [a1 currentRenderPassDescriptor];
        swift_beginAccess();
        sub_1003F942C(v7, v2 + v10, v12);
        swift_endAccess();

        v13 = [a1 currentDrawable];
        if (v13)
        {
          [v7 presentDrawable:v13];
          swift_unknownObjectRelease();
        }

        [v7 commit];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
  }
}

void sub_1003F8FDC(uint64_t a1, char a2)
{
  v3 = v2;
  *(v2 + 16) = 80;
  *(v2 + 32) = 0;
  *(v2 + 104) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);
  *(v3 + 112) = *a1;
  *(v3 + 128) = v6;
  *(v3 + 137) = *(a1 + 25);
  v45 = v4;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v43 = v5;
  sub_1003FF210(1, &v46);
  v7 = v48;
  v8 = v49;
  v9 = kCADepthNormalizationNone;
  v10 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v46 + 2) vertices:v46 + 32 faceCount:*(v47 + 16) faces:v47 + 32 depthNormalization:kCADepthNormalizationNone];
  v11 = [v10 subdividedMesh:2];

  v12 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v7 + 16) vertices:v7 + 32 faceCount:*(v8 + 16) faces:v8 + 32 depthNormalization:v9];

  v13 = [v12 subdividedMesh:2];

  sub_1003F6E60(v13);
  v16 = *(v14 + 16);
  if (v16 >> 57)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = v14;
  v18 = v15;
  v19 = v16 << 6;

  v20 = [v45 newBufferWithBytes:v17 + 32 length:v19 options:0];
  v21 = *(v18 + 16);
  if (v21 + 0x4000000000000000 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v22 = v20;
  v23 = 2 * v21;
  swift_unknownObjectRetain();
  v24 = [v45 newBufferWithBytes:v18 + 32 length:v23 options:0];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  *(v3 + 40) = v17;
  *(v3 + 48) = v18;
  *(v3 + 56) = v22;
  *(v3 + 64) = v24;
  swift_unknownObjectRetain();
  sub_1003FF210(0, &v46);
  v25 = v48;
  v26 = v49;
  v27 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v46 + 2) vertices:v46 + 32 faceCount:*(v47 + 16) faces:v47 + 32 depthNormalization:v9];
  v28 = [v27 subdividedMesh:2];

  v29 = [objc_allocWithZone(CAMeshTransform) initWithVertexCount:*(v25 + 16) vertices:v25 + 32 faceCount:*(v26 + 16) faces:v26 + 32 depthNormalization:v9];

  v30 = [v29 subdividedMesh:2];

  sub_1003F6E60(v30);
  v33 = *(v31 + 16);
  if (v33 >> 57)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v34 = v31;
  v35 = v32;
  v36 = v33 << 6;

  v37 = [v45 newBufferWithBytes:v34 + 32 length:v36 options:0];
  v38 = *(v35 + 16);
  if (v38 + 0x4000000000000000 >= 0)
  {
    v39 = v37;
    v40 = 2 * v38;
    swift_unknownObjectRetain();
    v41 = [v45 newBufferWithBytes:v35 + 32 length:v40 options:0];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    *(v3 + 72) = v34;
    *(v3 + 80) = v35;
    *(v3 + 88) = v39;
    *(v3 + 96) = v41;
    *(v3 + 24) = a2 & 1;
    v42 = sub_1003F97A8();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v3 + 160) = v42;
    swift_unknownObjectRelease();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1003F942C(void *a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 160);
  if (!v4)
  {
    return;
  }

  if (*(v3 + 104) == 1)
  {
    v5 = *(v3 + 56);
    if (!v5)
    {
      return;
    }

    v6 = *(v3 + 64);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v5 = *(v3 + 88);
    if (!v5)
    {
      return;
    }

    v6 = *(v3 + 96);
    if (!v6)
    {
      return;
    }
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = *(v3 + 32);
  if (!v10 || !a3)
  {
    swift_unknownObjectRelease();
LABEL_16:

    swift_unknownObjectRelease();
    return;
  }

  swift_unknownObjectRetain();
  v15 = a3;
  swift_unknownObjectRetain();
  v11 = [a1 renderCommandEncoderWithDescriptor:v15];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1004DD3FC();
    [v12 setLabel:v13];

    [v12 setRenderPipelineState:v4];
    [v12 setVertexBuffer:v5 offset:0 atIndex:0];
    [v12 setVertexBytes:a2 length:368 atIndex:1];
    [v12 setFragmentBytes:a2 length:368 atIndex:1];
    [v12 setFragmentTexture:v10 atIndex:0];
    v14 = 80;
    if (*(v3 + 104))
    {
      v14 = 48;
    }

    [v12 drawIndexedPrimitives:3 indexCount:*(*(v3 + v14) + 16) indexType:0 indexBuffer:v6 indexBufferOffset:0 instanceCount:1];
    [v12 endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id sub_1003F96C4()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 168);
  }

  else
  {
    if (*(v0 + 24))
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x72665F68636E6970;
    }

    if (*(v0 + 24))
    {
      v4 = 0x80000001004F9760;
    }

    else
    {
      v4 = 0xEE00746E656D6761;
    }

    v5 = sub_1003FDC24(0x65765F68636E6970, 0xEC00000078657472, v3, v4, 0xD000000000000022, 0x80000001004F9730, *(v0 + 128));

    v6 = *(v0 + 168);
    *(v0 + 168) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

id sub_1003F97A8()
{
  v1 = sub_1003F96C4();
  if (qword_100645598 != -1)
  {
    swift_once();
  }

  [v1 setVertexDescriptor:qword_100673E30];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (!v3)
  {
    v7 = sub_1004DDF7C();
    sub_100006F10(0, &qword_100646408, OS_os_log_ptr);
    v8 = sub_1004DE79C();
    sub_1004D953C(v7, &_mh_execute_header, v8, "Backdrop: could not create pipeline for pinch. Missing color attachments", 72, 2, _swiftEmptyArrayStorage);

    return 0;
  }

  [v3 setPixelFormat:*(v0 + 16)];
  v4 = *(v0 + 112);
  v20 = 0;
  v5 = [v4 newRenderPipelineStateWithDescriptor:v1 error:&v20];
  v6 = v20;
  if (!v5)
  {
    v9 = v6;
    v10 = sub_1004D7F4C();

    swift_willThrow();
    v23 = v10;
    sub_100004CB8(&qword_100646410, &qword_100534810);
    sub_100006F10(0, &qword_100646418, NSError_ptr);
    swift_dynamicCast();
    v11 = v22;
    sub_100004CB8(&qword_100646420, &qword_100534818);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100511DA0;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1004DEAAC(33);

    v20 = 0xD00000000000001FLL;
    v21 = 0x80000001004F9510;
    v13 = [v11 description];
    v14 = sub_1004DD43C();
    v16 = v15;

    v24._countAndFlagsBits = v14;
    v24._object = v16;
    sub_1004DD5FC(v24);

    v17 = v20;
    v18 = v21;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v17;
    *(v12 + 40) = v18;
    sub_1004DF23C();

    return 0;
  }

  return v5;
}

uint64_t sub_1003F9AB4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1003F9B9C()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    v3 = sub_1003F9BF4();
    v4 = *(v0 + 152);
    *(v0 + 152) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1003F9BF4()
{
  v1 = sub_1003FDC24(0x797469746E656469, 0xEF7865747265765FLL, 0xD000000000000010, 0x80000001004F96C0, 0x2065727574786554, 0xEF7265646E656C42, *(v0 + 64));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    if (qword_100645598 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_100673E30];

    return v1;
  }

  else
  {
    sub_1004DEAAC(56);
    v9._countAndFlagsBits = 0xD000000000000036;
    v9._object = 0x80000001004F9530;
    sub_1004DD5FC(v9);
    v5 = [v1 description];
    v6 = sub_1004DD43C();
    v8 = v7;

    v10._countAndFlagsBits = v6;
    v10._object = v8;
    sub_1004DD5FC(v10);

    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

id sub_1003F9DE8()
{
  v1 = *(v0 + 48);
  v2 = sub_1003F9B9C();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1004D7F4C();

    swift_willThrow();
    v19 = v6;
    sub_100004CB8(&qword_100646410, &qword_100534810);
    sub_100006F10(0, &qword_100646418, NSError_ptr);
    swift_dynamicCast();
    v7 = v18;
    sub_100004CB8(&qword_100646420, &qword_100534818);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100511DA0;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1004DEAAC(33);

    v16 = 0xD00000000000001FLL;
    v17 = 0x80000001004F9510;
    v9 = [v7 description];
    v10 = sub_1004DD43C();
    v12 = v11;

    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_1004DD5FC(v20);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1004DF23C();

    return 0;
  }

  return v3;
}

id sub_1003F9FE0()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 40);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];
    [v5 setStoreAction:1];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    sub_1004DEAAC(52);
    v11._object = 0x80000001004F94D0;
    v11._countAndFlagsBits = 0xD000000000000032;
    sub_1004DD5FC(v11);
    v7 = [v1 description];
    v8 = sub_1004DD43C();
    v10 = v9;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    sub_1004DD5FC(v12);

    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

void sub_1003FA190(void *a1)
{
  v2 = *(v1 + 24);
  if (v2 <= 0.0)
  {
    return;
  }

  v3 = *(v1 + 32);
  if (v3 <= 0.0)
  {
    return;
  }

  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*&v2 >> 52 > 0x7FEuLL || *&v3 >> 52 > 0x7FEuLL)
  {
    goto LABEL_15;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 height:v3 mipmapped:0];
  [v5 setStorageMode:0];
  [v5 setUsage:7];
  *(v1 + 40) = [a1 newTextureWithDescriptor:v5];
  swift_unknownObjectRelease();
  *(v1 + 112) = [a1 newTextureWithDescriptor:v5];
  swift_unknownObjectRelease();
  v6 = sub_1003F9FE0();

  v7 = *(v1 + 168);
  *(v1 + 168) = v6;
}

void sub_1003FA328(void *a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  if (!v3 || (v4 = *(v2 + 136)) == 0 || (v5 = *(v2 + 144)) == 0 || (v6 = *(v2 + 96)) == 0)
  {
    v13 = sub_1004DDF5C();
    sub_100006F10(0, &qword_100646408, OS_os_log_ptr);
    v18 = sub_1004DE79C();
    sub_1004D953C(v13, &_mh_execute_header, v18, "Backdrop: could not encode texture blender, missing required value", 66, 2, _swiftEmptyArrayStorage);
LABEL_11:

    return;
  }

  if (*(v2 + 104) == 1 && (v7 = *(v2 + 40)) != 0)
  {
    v8 = a1;
    v9 = a2;
    v10 = *(v2 + 112);
    if (v10)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = [v8 blitCommandEncoder];
      if (v11)
      {
        v12 = v11;
        [v11 copyFromTexture:v7 toTexture:v10];
        *(v2 + 104) = 0;
        [v12 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (!*(v2 + 168))
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v8 = a1;
    v9 = a2;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (!*(v2 + 168))
  {
LABEL_21:
    v17 = sub_1004DDF7C();
    sub_100006F10(0, &qword_100646408, OS_os_log_ptr);
    v18 = sub_1004DE79C();
    sub_1004D953C(v17, &_mh_execute_header, v18, "Backdrop: Could not create command encoder", 42, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

LABEL_16:
  v14 = [v8 renderCommandEncoderWithDescriptor:?];
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = v14;
  v16 = sub_1004DD3FC();
  [v15 setLabel:v16];

  [v15 setRenderPipelineState:v3];
  [v15 setVertexBuffer:v4 offset:0 atIndex:0];
  [v15 setVertexBytes:v9 length:368 atIndex:1];
  [v15 setFragmentTexture:v6 atIndex:0];
  [v15 setFragmentTexture:*(v2 + 112) atIndex:1];
  [v15 setFragmentBytes:v9 length:368 atIndex:1];
  [v15 drawIndexedPrimitives:3 indexCount:*(*(v2 + 128) + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:1];
  [v15 endEncoding];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

id *sub_1003FA6F4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003FA790()
{
  sub_1003FA6F4();

  return swift_deallocClassInstance();
}

uint64_t sub_1003FA7E8(uint64_t *a1)
{
  v2 = v1;
  *(v2 + 16) = 115;
  *(v2 + 24) = 1117782016;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0x3FF0000000000000;
  *(v2 + 184) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0;
  v4 = a1[3];
  *(v2 + 81) = *(a1 + 25);
  v5 = *a1;
  *(v2 + 72) = *(a1 + 1);
  *(v2 + 56) = v5;
  v6 = qword_1006455C0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  result = qword_100673F40;
  *(v2 + 104) = qword_100673F40;
  *(v2 + 112) = &off_1005F4FE8;
  v9 = *(result + 16);
  if (v9 >> 57)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 120) = [*(v2 + 56) newBufferWithBytes:+ 32 length:v9 << 6 options:0];
    result = swift_unknownObjectRelease();
    v10 = *(v2 + 112);
    v11 = *(v10 + 16);
    if (v11 + 0x4000000000000000 >= 0)
    {
      *(v2 + 128) = [*(v2 + 56) newBufferWithBytes:v10 + 32 length:2 * v11 options:0];
      swift_unknownObjectRelease();
      type metadata accessor for Backdrop.TexturePan();
      swift_allocObject();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = v7;
      v13 = sub_1003FCC28(a1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 176) = v13;
      v14 = sub_1003FAFF8();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v2 + 136) = v14;
      swift_unknownObjectRelease();
      return v2;
    }
  }

  __break(1u);
  return result;
}

double sub_1003FAA04(double result, double a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  if (v3 != result || v4 != a2)
  {
    sub_1003FB38C(*(v2 + 56));
    sub_1003FB568();
    v6 = *(v2 + 176);
    result = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    *(v6 + 24) = result;
    *(v6 + 32) = v7;
    if (result != v8 || v7 != v9)
    {
      v11 = *(v6 + 56);

      sub_1003FB708(v11);
    }
  }

  return result;
}

void sub_1003FAA94(void *a1, uint64_t a2)
{
  v3 = v2[17];
  if (v3 && (v4 = v2[15]) != 0 && (v5 = v2[16]) != 0 && (v6 = v2[20]) != 0 && (v7 = v2[21]) != 0)
  {
    v8 = v2[18];
    if (v8)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = a1;
      v12 = [a1 renderCommandEncoderWithDescriptor:v8];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1004DD3FC();
        [v13 setLabel:v14];

        [v13 setRenderPipelineState:v3];
        [v13 setVertexBuffer:v4 offset:0 atIndex:0];
        [v13 setVertexBytes:a2 length:368 atIndex:1];
        [v13 setFragmentBytes:a2 length:368 atIndex:1];
        [v13 setFragmentTexture:v2[19] atIndex:0];
        [v13 drawIndexedPrimitives:3 indexCount:*(v2[14] + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:3];
        [v13 endEncoding];
        *(v2[22] + 40) = v6;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();

        v15 = v2;
        sub_1003FBEA4(v11, a2);

        v16 = *(v2[22] + 48);
        if (v16 && (v17 = v15[23]) != 0)
        {
          swift_unknownObjectRetain();
          v18 = v17;
          [v18 encodeToCommandBuffer:v11 sourceTexture:v16 destinationTexture:v7];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    v20 = sub_1004DDF7C();
    sub_100006F10(0, &qword_100646408, OS_os_log_ptr);
    v21 = sub_1004DE79C();
    sub_1004D953C(v20, &_mh_execute_header, v21, "Backdrop: Could not create command Encoder", 42, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = sub_1004DDF5C();
    sub_100006F10(0, &qword_100646408, OS_os_log_ptr);
    v21 = sub_1004DE79C();
    sub_1004D953C(v19, &_mh_execute_header, v21, "Backdrop: could not encode rotating artwork, missing required value", 67, 2, _swiftEmptyArrayStorage);
  }
}

id sub_1003FAE68()
{
  v1 = sub_1003FDC24(0x6E6F697461746F72, 0xEF7865747265765FLL, 0xD000000000000011, 0x80000001004F9570, 0xD000000000000024, 0x80000001004F9590, *(v0 + 72));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    [v3 setBlendingEnabled:0];
    if (qword_100645598 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_100673E30];

    return v1;
  }

  else
  {
    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

id sub_1003FAFF8()
{
  v1 = *(v0 + 56);
  v2 = sub_1003FAE68();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1004D7F4C();

    swift_willThrow();
    v19 = v6;
    sub_100004CB8(&qword_100646410, &qword_100534810);
    sub_100006F10(0, &qword_100646418, NSError_ptr);
    swift_dynamicCast();
    v7 = v18;
    sub_100004CB8(&qword_100646420, &qword_100534818);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100511DA0;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1004DEAAC(33);

    v16 = 0xD00000000000001FLL;
    v17 = 0x80000001004F9510;
    v9 = [v7 description];
    v10 = sub_1004DD43C();
    v12 = v11;

    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_1004DD5FC(v20);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1004DF23C();

    return 0;
  }

  return v3;
}

id sub_1003FB1F0()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 160);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    sub_1004DEAAC(52);
    v11._object = 0x80000001004F94D0;
    v11._countAndFlagsBits = 0xD000000000000032;
    sub_1004DD5FC(v11);
    v7 = [v1 description];
    v8 = sub_1004DD43C();
    v10 = v9;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    sub_1004DD5FC(v12);

    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

void sub_1003FB38C(void *a1)
{
  v2 = *(v1 + 32);
  if (v2 > 0.0)
  {
    v3 = *(v1 + 40);
    if (v3 > 0.0)
    {
      if (v2 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v2 < 9.22337204e18)
      {
        if (*&v2 >> 52 <= 0x7FEuLL && *&v3 >> 52 <= 0x7FEuLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 / 4 height:v3 / 4 mipmapped:0];
              [v5 setStorageMode:0];
              [v5 setUsage:7];
              *(v1 + 160) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              *(v1 + 168) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              v6 = sub_1003FB1F0();

              v7 = *(v1 + 144);
              *(v1 + 144) = v6;

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  *(v1 + 160) = 0;
  swift_unknownObjectRelease();
  *(v1 + 168) = 0;

  swift_unknownObjectRelease();
}

void sub_1003FB568()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24) / (4.0 / v1);
  v3 = *(v0 + 184);
  if (!v3 || ([v3 sigma], v2 != v4))
  {
    v5 = *(v0 + 56);
    v6 = objc_allocWithZone(MPSImageGaussianBlur);
    *&v7 = v2;
    v8 = [v6 initWithDevice:v5 sigma:v7];
    v9 = *(v0 + 184);
    *(v0 + 184) = v8;
  }
}

id *sub_1003FB60C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1003FB6B0()
{
  sub_1003FB60C();

  return swift_deallocClassInstance();
}

void sub_1003FB708(void *a1)
{
  v2 = *(v1 + 24);
  if (v2 > 0.0)
  {
    v3 = *(v1 + 32);
    if (v3 > 0.0)
    {
      if (v2 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v2 < 9.22337204e18)
      {
        if (*&v2 >> 52 <= 0x7FEuLL && *&v3 >> 52 <= 0x7FEuLL)
        {
          if (v3 > -9.22337204e18)
          {
            if (v3 < 9.22337204e18)
            {
              v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:*(v1 + 16) width:v2 / 4 height:v3 / 4 mipmapped:0];
              [v5 setStorageMode:0];
              [v5 setUsage:7];
              *(v1 + 48) = [a1 newTextureWithDescriptor:v5];
              swift_unknownObjectRelease();
              v6 = sub_1003FBCF4();

              v7 = *(v1 + 152);
              *(v1 + 152) = v6;

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  *(v1 + 48) = 0;

  swift_unknownObjectRelease();
}

id sub_1003FB8B8()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = sub_1003FB910();
    v4 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1003FB910()
{
  v1 = sub_1003FDC24(0x797469746E656469, 0xEF7865747265765FLL, 0x676172665F6E6170, 0xEC000000746E656DLL, 0x2065727574786554, 0xEE0072656E6E6150, *(v0 + 72));
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    [v3 setPixelFormat:*(v0 + 16)];
    if (qword_100645598 != -1)
    {
      swift_once();
    }

    [v1 setVertexDescriptor:qword_100673E30];

    return v1;
  }

  else
  {
    sub_1004DEAAC(56);
    v9._object = 0x80000001004F9530;
    v9._countAndFlagsBits = 0xD000000000000036;
    sub_1004DD5FC(v9);
    v5 = [v1 description];
    v6 = sub_1004DD43C();
    v8 = v7;

    v10._countAndFlagsBits = v6;
    v10._object = v8;
    sub_1004DD5FC(v10);

    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

id sub_1003FBAFC()
{
  v1 = *(v0 + 56);
  v2 = sub_1003FB8B8();
  v16 = 0;
  v3 = [v1 newRenderPipelineStateWithDescriptor:v2 error:&v16];

  v4 = v16;
  if (!v3)
  {
    v5 = v4;
    v6 = sub_1004D7F4C();

    swift_willThrow();
    v19 = v6;
    sub_100004CB8(&qword_100646410, &qword_100534810);
    sub_100006F10(0, &qword_100646418, NSError_ptr);
    swift_dynamicCast();
    v7 = v18;
    sub_100004CB8(&qword_100646420, &qword_100534818);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100511DA0;
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1004DEAAC(33);

    v16 = 0xD00000000000001FLL;
    v17 = 0x80000001004F9510;
    v9 = [v7 description];
    v10 = sub_1004DD43C();
    v12 = v11;

    v20._countAndFlagsBits = v10;
    v20._object = v12;
    sub_1004DD5FC(v20);

    v13 = v16;
    v14 = v17;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1004DF23C();

    return 0;
  }

  return v3;
}

id sub_1003FBCF4()
{
  v1 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v2 = [v1 colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];

  if (v3)
  {
    v4 = *(v0 + 48);
    v5 = v3;
    [v5 setTexture:v4];
    [v5 setLoadAction:2];
    [v5 setStoreAction:1];

    [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    return v1;
  }

  else
  {
    sub_1004DEAAC(52);
    v11._object = 0x80000001004F94D0;
    v11._countAndFlagsBits = 0xD000000000000032;
    sub_1004DD5FC(v11);
    v7 = [v1 description];
    v8 = sub_1004DD43C();
    v10 = v9;

    v12._countAndFlagsBits = v8;
    v12._object = v10;
    sub_1004DD5FC(v12);

    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

void sub_1003FBEA4(void *a1, uint64_t a2)
{
  v3 = v2[18];
  if (v3 && (v4 = v2[15]) != 0 && (v5 = v2[16]) != 0 && (v6 = v2[5]) != 0)
  {
    v7 = v2[19];
    if (v7)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = [a1 renderCommandEncoderWithDescriptor:v7];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1004DD3FC();
        [v11 setLabel:v12];

        [v11 setRenderPipelineState:v3];
        [v11 setVertexBuffer:v4 offset:0 atIndex:0];
        [v11 setVertexBytes:a2 length:368 atIndex:1];
        [v11 setFragmentTexture:v6 atIndex:0];
        [v11 setFragmentBytes:a2 length:368 atIndex:1];
        [v11 drawIndexedPrimitives:3 indexCount:*(v2[14] + 16) indexType:0 indexBuffer:v5 indexBufferOffset:0 instanceCount:1];
        [v11 endEncoding];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    v14 = sub_1004DDF7C();
    sub_100006F10(0, &qword_100646408, OS_os_log_ptr);
    v15 = sub_1004DE79C();
    sub_1004D953C(v14, &_mh_execute_header, v15, "Backdrop: Could not create command encoder", 42, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_1004DDF5C();
    sub_100006F10(0, &qword_100646408, OS_os_log_ptr);
    v15 = sub_1004DE79C();
    sub_1004D953C(v13, &_mh_execute_header, v15, "Backdrop: could not encode texture blender, missing required value", 66, 2, _swiftEmptyArrayStorage);
  }
}

id *sub_1003FC1A4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1003FC238()
{
  sub_1003FC1A4();

  return swift_deallocClassInstance();
}

__n128 sub_1003FC290(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Backdrop.Specs.Environment(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Backdrop.Specs.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Backdrop.Specs.Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1003FC3B8()
{
  result = qword_100646400;
  if (!qword_100646400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100646400);
  }

  return result;
}

unint64_t sub_1003FC40C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1003FC4D8(v11, 0, 0, 1, a1, a2);
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

unint64_t sub_1003FC4D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1003FC5E4(a5, a6);
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

void *sub_1003FC5E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1003FC630(a1, a2);
  sub_1003FC760(&off_1005F4F90);
  return v3;
}

void *sub_1003FC630(uint64_t a1, unint64_t a2)
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

  v6 = sub_1003FC84C(v5, 0);
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
        v7 = sub_1003FC84C(v10, 0);
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

void sub_1003FC760(uint64_t a1)
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

  v3 = sub_1003FC8C0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

void *sub_1003FC84C(uint64_t a1, uint64_t a2)
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

  sub_100004CB8(&qword_100646460, &qword_100534838);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1003FC8C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100646460, &qword_100534838);
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

unint64_t sub_1003FC9B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_100646470, &qword_100534848);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100028E14(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
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

char *sub_1003FCAA4(char *result)
{
  *(v1 + 16) = 115;
  *(v1 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v1 + 40) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  if (qword_1006455C0 != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
  }

  v2 = qword_100673F40;
  *(v1 + 120) = qword_100673F40;
  *(v1 + 128) = &off_1005F4FE8;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0;
  v3 = *result;
  v4 = *(result + 3);
  v5 = *(result + 1);
  *(v1 + 48) = *result;
  *(v1 + 64) = v5;
  *(v1 + 73) = *(result + 25);
  v6 = *(v2 + 16);
  if (v6 >> 57)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 << 6;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8 = v4;
    result = [v3 newBufferWithBytes:v2 + 32 length:v7 options:0];
    *(v1 + 136) = result;
    v9 = *(v1 + 128);
    v10 = *(v9 + 16);
    if (v10 + 0x4000000000000000 >= 0)
    {
      *(v1 + 144) = [*(v1 + 48) newBufferWithBytes:v9 + 32 length:2 * v10 options:0];
      *(v1 + 160) = sub_1003F9DE8();
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      sub_1003FA190(v11);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

char *sub_1003FCC28(char *result)
{
  *(v1 + 16) = 115;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  if (qword_1006455C0 != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
  }

  v2 = qword_100673F40;
  *(v1 + 104) = qword_100673F40;
  *(v1 + 112) = &off_1005F4FE8;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  *(v1 + 136) = 0;
  v3 = *result;
  v4 = *(result + 3);
  v5 = *(result + 1);
  *(v1 + 56) = *result;
  *(v1 + 72) = v5;
  *(v1 + 81) = *(result + 25);
  v6 = *(v2 + 16);
  if (v6 >> 57)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 << 6;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v8 = v4;
    result = [v3 newBufferWithBytes:v2 + 32 length:v7 options:0];
    *(v1 + 120) = result;
    v9 = *(v1 + 112);
    v10 = *(v9 + 16);
    if (v10 + 0x4000000000000000 >= 0)
    {
      *(v1 + 128) = [*(v1 + 56) newBufferWithBytes:v9 + 32 length:2 * v10 options:0];
      *(v1 + 144) = sub_1003FBAFC();
      swift_unknownObjectRelease();
      v11 = swift_unknownObjectRetain();
      sub_1003FB708(v11);
      swift_unknownObjectRelease();
      return v1;
    }
  }

  __break(1u);
  return result;
}

double sub_1003FCDA0()
{
  sub_100004CB8(&unk_100646480, qword_100534850);
  v0 = swift_allocObject();
  v0[1] = xmmword_100511A40;
  v0[2] = xmmword_100533EB0;
  v0[3] = xmmword_100533EC0;
  v0[4] = xmmword_100533E70;
  result = 0.0;
  v0[5] = xmmword_100533E80;
  v0[6] = xmmword_100533ED0;
  v0[7] = xmmword_100533EE0;
  v0[8] = xmmword_100533E70;
  v0[9] = xmmword_100533E80;
  v0[10] = xmmword_100533ED0;
  v0[11] = xmmword_100533EE0;
  v0[12] = xmmword_100533E70;
  v0[13] = xmmword_100533E80;
  return result;
}

id sub_1003FCE28(float a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms;
  v5 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_incomingUniforms);
  v6 = v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_uniforms;
  swift_beginAccess();
  *v6 = v5;
  *(v6 + 340) = *(v4 + 340);
  *(v6 + 352) = *(v4 + 352);
  *(v6 + 8) = *(v4 + 8);
  if ((*(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor + 4) & 1) == 0)
  {
    v7 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_blurRadiusFactor);
    v8 = *(v1 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
    v9 = *(v8 + 32);
    if (*(v8 + 40) < v9)
    {
      v9 = *(v8 + 40);
    }

    v10 = v9;
    *(v8 + 24) = v7 * v10;
    sub_1003FB568();
  }

  if ((((a1 + a1) / *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration)) + *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix)) <= 1.0)
  {
    v11 = ((a1 + a1) / *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeDuration)) + *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix);
  }

  else
  {
    v11 = 1.0;
  }

  *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_textureTransitionMix) = v11;
  v12 = *(v4 + 348);
  swift_beginAccess();
  *(v6 + 348) = v12;
  *(v6 + 344) = *(v4 + 344);
  *(v6 + 328) = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_pinchWarpMix);
  *&v13 = v11;
  result = [*(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_crossfadeTimingFunction) _solveForInput:v13];
  *(v6 + 320) = v15;
  *(v6 + 332) = 1082130432;
  v16 = *(v2 + OBJC_IVAR____TtCO17ShaderFallbackKit8Backdrop17CompositeRenderer_renderers + 8);
  v17 = *(v16 + 32);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v17 <= -32769.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v17 >= 32768.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v6 + 336) = v17;
  v18 = *(v16 + 40);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v18 <= -32769.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v18 < 32768.0)
  {
    *(v6 + 338) = v18;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1003FD038()
{
  sub_1003FD080(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

void sub_1003FD080(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

id sub_1003FD0A4(id result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_1003FD0B0(uint64_t a1)
{
  v2 = sub_100004CB8(&unk_100646430, &qword_100534828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003FD118()
{

  return swift_deallocObject();
}

double sub_1003FD158(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1003FD170()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1003FD1B0()
{
  result = qword_100646458;
  if (!qword_100646458)
  {
    sub_100008DE4(&qword_100646450, &qword_100534830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100646458);
  }

  return result;
}

uint64_t sub_1003FD214(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

int *Uniforms.standard.unsafeMutableAddressor()
{
  if (qword_1006455C8 != -1)
  {
    swift_once();
  }

  return &static Uniforms.standard;
}

double sub_1003FD2D4()
{
  v0 = MTLCreateSystemDefaultDevice();
  sub_1003FDD38(v0, &v2);
  xmmword_100673E00 = v2;
  unk_100673E10 = v3[0];
  result = *(v3 + 9);
  *(&qword_100673E18 + 1) = *(v3 + 9);
  return result;
}

void sub_1003FD334()
{
  v0 = [objc_allocWithZone(MTLVertexDescriptor) init];
  v1 = [v0 attributes];
  v2 = [v1 objectAtIndexedSubscript:0];

  if (!v2)
  {
    goto LABEL_21;
  }

  [v2 setFormat:30];

  v3 = [v0 attributes];
  v4 = [v3 objectAtIndexedSubscript:0];

  if (!v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v4 setOffset:0];

  v5 = [v0 attributes];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v6 setBufferIndex:0];

  v7 = [v0 attributes];
  v8 = [v7 objectAtIndexedSubscript:1];

  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v8 setFormat:30];

  v9 = [v0 attributes];
  v10 = [v9 objectAtIndexedSubscript:1];

  if (!v10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v10 setOffset:16];

  v11 = [v0 attributes];
  v12 = [v11 objectAtIndexedSubscript:1];

  if (!v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v12 setBufferIndex:0];

  v13 = [v0 attributes];
  v14 = [v13 objectAtIndexedSubscript:2];

  if (!v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v14 setFormat:30];

  v15 = [v0 attributes];
  v16 = [v15 objectAtIndexedSubscript:2];

  if (!v16)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = [v0 attributes];
  v18 = [v17 objectAtIndexedSubscript:1];

  if (!v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v19 = [v18 offset];

  if (__OFADD__(v19, 16))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v16 setOffset:v19 + 16];

  v20 = [v0 attributes];
  v21 = [v20 objectAtIndexedSubscript:2];

  if (!v21)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v21 setBufferIndex:0];

  v22 = [v0 attributes];
  v23 = [v22 objectAtIndexedSubscript:3];

  if (!v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v23 setFormat:29];

  v24 = [v0 attributes];
  v25 = [v24 objectAtIndexedSubscript:3];

  if (!v25)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = [v0 attributes];
  v27 = [v26 objectAtIndexedSubscript:2];

  if (!v27)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = [v27 offset];

  if (__OFADD__(v28, 16))
  {
    goto LABEL_20;
  }

  [v25 setOffset:v28 + 16];

  v29 = [v0 attributes];
  v30 = [v29 objectAtIndexedSubscript:3];

  if (!v30)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v30 setBufferIndex:0];

  v31 = [v0 layouts];
  v32 = [v31 objectAtIndexedSubscript:0];

  if (v32)
  {
    [v32 setStride:64];

    return;
  }

LABEL_35:
  __break(1u);
}

double sub_1003FD86C()
{
  result = -0.00781250557;
  xmmword_100673E40 = xmmword_100533EF0;
  qword_100673E50 = 0x3F80000000000000;
  xmmword_100673E60 = xmmword_100533EF0;
  unk_100673E70 = xmmword_100533EF0;
  return result;
}

double sub_1003FD894()
{
  result = 0.00781250557;
  xmmword_100673E80 = xmmword_100533F00;
  qword_100673E90 = 0;
  xmmword_100673EA0 = xmmword_100533F00;
  unk_100673EB0 = xmmword_100533F00;
  return result;
}

double sub_1003FD8B4()
{
  result = 0.00781250185;
  xmmword_100673EC0 = xmmword_100533F10;
  qword_100673ED0 = 1065353216;
  xmmword_100673EE0 = xmmword_100533F10;
  unk_100673EF0 = xmmword_100533F10;
  return result;
}

double sub_1003FD8DC()
{
  result = -0.00781250185;
  xmmword_100673F00 = xmmword_100533F20;
  __asm { FMOV            V1.2S, #1.0 }

  qword_100673F10 = _D1;
  xmmword_100673F20 = xmmword_100533F20;
  unk_100673F30 = xmmword_100533F20;
  return result;
}

double sub_1003FD900()
{
  sub_100004CB8(&qword_100646490, &unk_100534910);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100511B10;
  if (qword_1006455A0 != -1)
  {
    v14 = v0;
    swift_once();
    v0 = v14;
  }

  v1 = qword_100673E50;
  v2 = xmmword_100673E60;
  v3 = unk_100673E70;
  *(v0 + 32) = xmmword_100673E40;
  *(v0 + 48) = v1;
  *(v0 + 64) = v2;
  *(v0 + 80) = v3;
  if (qword_1006455A8 != -1)
  {
    v15 = v0;
    swift_once();
    v0 = v15;
  }

  v4 = qword_100673E90;
  v5 = xmmword_100673EA0;
  v6 = unk_100673EB0;
  *(v0 + 96) = xmmword_100673E80;
  *(v0 + 112) = v4;
  *(v0 + 128) = v5;
  *(v0 + 144) = v6;
  if (qword_1006455B0 != -1)
  {
    v16 = v0;
    swift_once();
    v0 = v16;
  }

  v7 = qword_100673ED0;
  v8 = xmmword_100673EE0;
  v9 = unk_100673EF0;
  *(v0 + 160) = xmmword_100673EC0;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 208) = v9;
  if (qword_1006455B8 != -1)
  {
    v17 = v0;
    swift_once();
    v0 = v17;
  }

  result = *&xmmword_100673F00;
  v11 = qword_100673F10;
  v12 = xmmword_100673F20;
  v13 = unk_100673F30;
  *(v0 + 224) = xmmword_100673F00;
  *(v0 + 240) = v11;
  *(v0 + 256) = v12;
  *(v0 + 272) = v13;
  qword_100673F40 = v0;
  return result;
}

double sub_1003FDAC0()
{
  if (qword_100645588 != -1)
  {
    swift_once();
  }

  static Uniforms.standard = 0;
  qword_100673F58 = 0;
  xmmword_100673F60 = xmmword_100673DC0;
  unk_100673F70 = *algn_100673DD0;
  xmmword_100673F80 = xmmword_100673DE0;
  unk_100673F90 = unk_100673DF0;
  dword_100673FE4 = 0;
  dword_100674034 = 0;
  dword_100674084 = 0;
  xmmword_100673FA0 = 0u;
  unk_100673FB0 = 0u;
  xmmword_100673FC0 = 0u;
  unk_100673FD0 = 0u;
  word_100673FE0 = 0;
  word_100674030 = 0;
  xmmword_100674010 = 0u;
  unk_100674020 = 0u;
  xmmword_100673FF0 = 0u;
  unk_100674000 = 0u;
  xmmword_100674040 = 0u;
  unk_100674050 = 0u;
  xmmword_100674060 = 0u;
  unk_100674070 = 0u;
  word_100674080 = 0;
  result = 0.0;
  xmmword_100674090 = xmmword_100533E80;
  qword_1006740A0 = 0x3F80000000000000;
  unk_1006740A8 = 0;
  qword_1006740B0 = 0;
  unk_1006740B8 = 0;
  return result;
}

void *static Uniforms.standard.getter@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1006455C8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &static Uniforms.standard, 0x170uLL);
}

__n128 sub_1003FDC00(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

id sub_1003FDC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_1004DD3FC();
  v9 = [a7 newFunctionWithName:v8];

  v10 = sub_1004DD3FC();
  v11 = [a7 newFunctionWithName:v10];

  v12 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v13 = sub_1004DD3FC();
  [v12 setLabel:v13];

  [v12 setVertexFunction:v9];
  [v12 setFragmentFunction:v11];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12;
}

void sub_1003FDD38(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = [swift_unknownObjectRetain() newCommandQueue];
  if (!v4)
  {
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v13 = sub_1004DDF7C();
    sub_1003FDF2C();
    v14 = sub_1004DE79C();
    sub_1004D953C(v13, &_mh_execute_header, v14, "Backdrop: Could not create default device, Metal rendering unavailable", 70, 2, _swiftEmptyArrayStorage);
    swift_unknownObjectRelease();

    v2 = 0;
    v5 = 0;
    v6 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  if (qword_100645580 != -1)
  {
    swift_once();
  }

  v15 = 0;
  v6 = [v2 newDefaultLibraryWithBundle:qword_100673DB0 error:&v15];
  v7 = v15;
  if (!v6)
  {
    v12 = v7;
    sub_1004D7F4C();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  v8 = objc_allocWithZone(MTKTextureLoader);
  swift_unknownObjectRetain();
  v9 = [v8 initWithDevice:v2];
  v10 = [v2 supportsFamily:1003];
  swift_unknownObjectRelease();
  v11 = 80;
LABEL_10:
  *a2 = v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v10;
}

unint64_t sub_1003FDF2C()
{
  result = qword_100646408;
  if (!qword_100646408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100646408);
  }

  return result;
}

uint64_t sub_1003FDF78()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = _swiftEmptyArrayStorage;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1045220557;
  *(v0 + 80) = 0u;
  sub_100004CB8(&qword_100646678, &unk_1005349E0);
  v1 = sub_1004DD8EC();
  *(v1 + 16) = 4;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v0 + 96) = v1;
  *(v0 + 104) = &off_1005F4FB8;
  return v0;
}

uint64_t sub_1003FE000()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1003FE0C0();
    [v2 unregisterObserver:v3];

    v1 = *(v0 + 16);
  }

  return swift_deallocClassInstance();
}

id sub_1003FE0C0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_1003FE11C(v0);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1003FE11C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MPCAudioSpectrumObserver) init];
  LODWORD(v2) = 20.0;
  LODWORD(v3) = 1133903872;
  [v1 addFrequencyBand:{v2, v3}];
  LODWORD(v4) = 1133903872;
  LODWORD(v5) = 1163575296;
  [v1 addFrequencyBand:{v4, v5}];
  LODWORD(v6) = 1186693120;
  LODWORD(v7) = 1163575296;
  [v1 addFrequencyBand:{v7, v6}];
  v8 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_1003FF200;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100018634;
  v11[3] = &unk_1005FA630;
  v9 = _Block_copy(v11);

  [v1 setOnUpdate:v9];
  _Block_release(v9);
  return v1;
}

double sub_1003FE278(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003FE364(a1);
  }

  return result;
}

uint64_t sub_1003FE2D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003FF068(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    result = memmove((v3 + 16 * a1 + 32), (v3 + 16 * a1 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_1003FE364(void *a1)
{
  v2 = v1;
  v4 = sub_1004DBEBC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004DBEFC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1003FE670();
  sub_1003FF07C(v12);
  v26 = v13;

  [a1 powerLevel];
  v15 = log10f(v14) * 20.0;
  v16.i64[0] = vdivq_f32(vmulq_n_f32(v26, v15), vdupq_n_s32(0x42F00000u)).u64[0];
  v16.f32[2] = vmuls_lane_f32(v15, v26, 2) / 120.0;
  v16.f32[3] = v15;
  __asm { FMOV            V1.4S, #1.0 }

  v26 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v16, 0), _Q1), *(v2 + 64));
  sub_1003FF0C8();
  v22 = sub_1004DE14C();
  v23 = swift_allocObject();
  v23[1].i64[0] = v2;
  v23[2] = v26;
  aBlock[4] = sub_1003FF14C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005FA5E0;
  v24 = _Block_copy(aBlock);

  sub_1004DBEDC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003FF170();
  sub_100004CB8(&qword_100646450, &qword_100534830);
  sub_1003FD1B0();
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1003FE670()
{
  result = [v0 numberOfBands];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (!result)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      [v0 averagePowerOfFrequencyBandAtIndex:v3 frequencyBand:0];
      v6 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1003FEE60(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_1003FEE60((v7 > 1), v8 + 1, 1, v4);
      }

      ++v3;
      *(v4 + 2) = v8 + 1;
      *&v4[4 * v8 + 32] = v6;
    }

    while (v2 != v3);
    return v4;
  }

  return result;
}

uint64_t sub_1003FE778(uint64_t a1, __n128 a2)
{
  swift_beginAccess();
  sub_1003FE2D8(0);
  v3 = *(a1 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 96) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1003FEF64(0, *(v3 + 2) + 1, 1, v3);
    *(a1 + 96) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1003FEF64((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  *&v3[16 * v6 + 32] = a2;
  *(a1 + 96) = v3;
  return swift_endAccess();
}

void *sub_1003FE850(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004CB8(&qword_1006457D8, &qword_100534220);
  v10 = *(sub_100004CB8(&qword_1006457D0, &unk_1005349F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100004CB8(&qword_1006457D0, &unk_1005349F0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1003FEA40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&unk_100645960, &unk_1005349C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1003FEB3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100646490, &unk_100534910);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

char *sub_1003FEC40(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100646668, &qword_1005349D0);
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

char *sub_1003FED44(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100646670, &qword_1005349D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}