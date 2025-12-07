uint64_t getEnumTagSinglePayload for SomeColor.Component(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SomeColor.Component(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SomeColor.ColorSpace(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SomeColor.ColorSpace(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001AD6C()
{
  result = qword_100075288;
  if (!qword_100075288)
  {
    sub_100008B90(&qword_100075290, qword_1000507B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075288);
  }

  return result;
}

unint64_t sub_10001ADD4()
{
  result = qword_100075298;
  if (!qword_100075298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075298);
  }

  return result;
}

unint64_t sub_10001AE2C()
{
  result = qword_1000752A0;
  if (!qword_1000752A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752A0);
  }

  return result;
}

unint64_t sub_10001AE84()
{
  result = qword_1000752A8;
  if (!qword_1000752A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752A8);
  }

  return result;
}

unint64_t sub_10001AEDC()
{
  result = qword_1000752B0;
  if (!qword_1000752B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752B0);
  }

  return result;
}

unint64_t sub_10001AF34()
{
  result = qword_1000752B8;
  if (!qword_1000752B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752B8);
  }

  return result;
}

unint64_t sub_10001AF88()
{
  result = qword_1000752C8;
  if (!qword_1000752C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752C8);
  }

  return result;
}

unint64_t sub_10001AFDC()
{
  result = qword_1000752D0;
  if (!qword_1000752D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752D0);
  }

  return result;
}

unint64_t sub_10001B030(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_10001B060(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_10001B0B4(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10001B144()
{
  result = qword_1000752E0;
  if (!qword_1000752E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752E0);
  }

  return result;
}

unint64_t sub_10001B19C()
{
  result = qword_1000752E8;
  if (!qword_1000752E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752E8);
  }

  return result;
}

unint64_t sub_10001B1F4()
{
  result = qword_1000752F0;
  if (!qword_1000752F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752F0);
  }

  return result;
}

unint64_t sub_10001B24C()
{
  result = qword_1000752F8;
  if (!qword_1000752F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000752F8);
  }

  return result;
}

uint64_t sub_10001B33C()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10001B398(uint64_t *a1, int a2)
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

uint64_t sub_10001B3E0(uint64_t result, int a2, int a3)
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

uint64_t sub_10001B434@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for SystemCloseButton.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = v5;
}

uint64_t sub_10001B48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B57C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001B4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B57C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001B554(uint64_t a1)
{
  sub_10001B57C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10001B57C()
{
  result = qword_1000753D0;
  if (!qword_1000753D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000753D0);
  }

  return result;
}

id sub_10001B5D0()
{
  v0 = sub_100004944(&qword_1000753D8, &qword_100050D68);
  __chkstk_darwin(v0 - 8);
  v2 = v10 - v1;
  v3 = [objc_opt_self() buttonWithType:7];
  sub_100004944(&qword_1000753E0, &unk_100050D70);
  UIViewRepresentableContext.coordinator.getter();
  [v3 addTarget:v10[1] action:"primaryAction" forControlEvents:0x2000];

  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    sub_10001B784();
    v6 = v3;
    static UIShape.circle.getter();
    v7 = type metadata accessor for UIShape();
    (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
    v8 = UIHoverStyle.init(shape:)();
    [v6 setHoverStyle:v8];
  }

  return v3;
}

unint64_t sub_10001B784()
{
  result = qword_1000753E8;
  if (!qword_1000753E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000753E8);
  }

  return result;
}

void sub_10001B7D0(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v10 & 0xFF00) == 0x200)
    {
      v3 = [objc_opt_self() blackColor];
      sub_100019F88(v3, v7);
    }

    else
    {
      v10 &= 0x101u;
      v4 = *v1;
      if (v4 == 4)
      {
        v5 = 1.0;
      }

      else
      {
        v5 = 0.0;
      }

      sub_1000197D4(3, 0, v9, COERCE_UNSIGNED_INT64(1.0));
      sub_1000197D4(v4, 0, v7, *&v5);
    }

    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v8;
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_10001CB98();
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_10001B964(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    if ((v21 & 0xFF00) == 0x200)
    {

      v3 = [objc_opt_self() blackColor];
      sub_100019F88(v3, &v14);
LABEL_13:
      v12 = v15;
      *a1 = v14;
      *(a1 + 16) = v12;
      *(a1 + 32) = v16;
      *(a1 + 48) = v17;
      return;
    }

    v21 &= 0x101u;
    v4 = *v1;
    if (*v1 <= 2u || v4 == 3)
    {

      v5 = 1.0;
    }

    else
    {
      if (v4 == 4)
      {
      }

      else
      {
        v6 = *(v1 + 7);
        v7 = v1[64];
        v8 = *(sub_10001CE7C(v6, v7) + 56);

        if (v8 != 1)
        {
          v9 = sub_10001CE7C(v6, v7);
          sub_1000088E4((v9 + 2), v18);

          v10 = v19;
          v11 = v20;
          sub_100008948(v18, v19);
          v14 = *(v1 + 8);
          *&v15 = *(v1 + 3);
          sub_100004944(&qword_100075498, &qword_100053730);
          Binding.wrappedValue.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v5 = (*(v11 + 56))(v10, v11, v13, *&v14);
          sub_10000898C(v18);
          goto LABEL_12;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v5 = *v18;
    }

LABEL_12:
    sub_1000197D4(3, 0, v18, COERCE_UNSIGNED_INT64(1.0));
    sub_1000197D4(v4, 0, &v14, *&v5);
    goto LABEL_13;
  }

  type metadata accessor for ColorPickerState(0);
  sub_10001CB98();
  EnvironmentObject.error()();
  __break(1u);
}

void *sub_10001BCB4()
{
  v1 = [objc_allocWithZone(UISlider) init];
  v3 = v1;
  v4 = *v0;
  if (v4 < 4)
  {
    [v1 setMinimumValue:0.0];
LABEL_7:
    LODWORD(v5) = 1.0;
    [v3 setMaximumValue:v5];
    goto LABEL_8;
  }

  if (v4 != 4)
  {
    LODWORD(v2) = -1.0;
    [v1 setMinimumValue:v2];
    goto LABEL_7;
  }

  [v1 setMinimumValue:0.0];
  if (*(v0 + 9))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    HIDWORD(v6) = HIDWORD(v11);
    *&v6 = v11;
    [v3 setMaximumValue:v6];
LABEL_8:
    v12 = *(v0 + 8);
    sub_100004944(&qword_100075498, &qword_100053730);
    Binding.wrappedValue.getter();
    HIDWORD(v7) = HIDWORD(v10);
    *&v7 = v10;
    [v3 setValue:v7];
    [v3 _setSliderStyle:120];
    v8 = sub_10001BECC();
    [v3 _setSliderConfiguration:v8];

    sub_100004944(&qword_1000754A0, &qword_100050F50);
    UIViewRepresentableContext.coordinator.getter();
    [v3 addTarget:v12 action:"sliderValueChangedWithSlider:" forControlEvents:4096];

    return v3;
  }

  type metadata accessor for ColorPickerState(0);
  sub_10001CB98();
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

id sub_10001BECC()
{
  if (*(v0 + 9))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    v1 = v43;
    if ((v43 & 0xFF00) == 0x200)
    {
      v2 = [objc_opt_self() blackColor];
      sub_100019F88(v2, v31);
      v28 = v31[0];
      v29 = v31[1];
      v3 = v32;
      v4 = v33;
      v1 = v34;
    }

    else
    {
      v28 = v39;
      v29 = v40;
      v3 = v41;
      v4 = v42;
    }

    v40 = v29;
    v39 = v28;
    v41 = v3;
    v42 = v4;
    v43 = v1;
    v5 = *v0;
    if (v5 >= 4)
    {
      if (v5 != 4)
      {

        v13 = sub_10001CE7C(*(v0 + 7), v0[64]);
        sub_1000088E4((v13 + 2), v35);

        v14 = v36;
        v15 = v37;
        sub_100008948(v35, v36);
        sub_10001B964(v38);
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        (*(v15 + 48))(&v39, v38, v14, v15);
        sub_10000898C(v35);
        sub_100004944(&qword_1000746F0, &qword_10004E888);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_100050D80;
        v17 = objc_allocWithZone(_UISliderTick);
        LODWORD(v18) = 0.5;
        *(v16 + 32) = [v17 initWithPosition:0 title:0 image:v18];
        v19 = sub_10001CE7C(*(v0 + 7), v0[64]);
        sub_1000088E4((v19 + 2), v35);

        v20 = v36;
        v21 = v37;
        sub_100008948(v35, v36);
        v22 = (*(v21 + 24))(v20, v21);
        sub_100027D6C(v22);

        v23 = objc_allocWithZone(_UISliderFluidColorConfiguration);
        sub_10000598C(0, &qword_100074CE0, UIColor_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        sub_10000598C(0, &qword_1000754A8, NSNumber_ptr);
        v25 = Array._bridgeToObjectiveC()().super.isa;

        sub_10000598C(0, &qword_1000754B0, _UISliderTick_ptr);
        v26 = Array._bridgeToObjectiveC()().super.isa;

        v27 = [v23 initWithColors:isa locations:v25 ticks:v26 tickBehavior:0];

        sub_10000898C(v35);
        [v27 setNeutralPosition:0.5];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        [v27 setMaxGain:v35[0]];
        return v27;
      }

      sub_100004944(&qword_1000746F0, &qword_10004E888);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10004E490;
      sub_10001B7D0(v35);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_1000195E4(v38[0]);
      *(v6 + 32) = v9;
      sub_10001B964(v38);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_1000195E4(v30);
    }

    else
    {

      sub_100004944(&qword_1000746F0, &qword_10004E888);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10004E490;
      sub_10001B7D0(v35);
      sub_100018314();
      *(v6 + 32) = v7;
      sub_10001B964(v38);
      sub_100018314();
    }

    *(v6 + 40) = v8;

    v10 = objc_allocWithZone(_UISliderFluidColorConfiguration);
    sub_10000598C(0, &qword_100074CE0, UIColor_ptr);
    v11 = Array._bridgeToObjectiveC()().super.isa;

    v27 = [v10 initWithColors:v11];

    [v27 setShowCheckerboard:v5 == 3];
    return v27;
  }

  type metadata accessor for ColorPickerState(0);
  sub_10001CB98();
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_10001C4E4(void *a1)
{
  sub_100004944(&qword_100075498, &qword_100053730);
  Binding.wrappedValue.getter();
  if (([a1 isTracking] & 1) == 0)
  {
    v2 = v7;
    [a1 value];
    if (v3 != v2)
    {
      sub_100004944(&qword_1000754A0, &qword_100050F50);
      UIViewRepresentableContext.transaction.getter();
      v4 = Transaction.animation.getter();

      if (v4)
      {
      }

      *&v5 = v7;
      [a1 setValue:v4 != 0 animated:v5];
    }
  }

  v6 = sub_10001BECC();
  [a1 _setSliderConfiguration:v6];
}

uint64_t sub_10001C69C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v11[3] = *(v1 + 48);
  v11[4] = v4;
  v12 = *(v1 + 80);
  v5 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v5;
  v11[2] = v3;
  type metadata accessor for ColorPickerUISlider.Coordinator();
  v6 = swift_allocObject();
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = *(v1 + 80);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  *a1 = v6;
  return sub_10001CB60(v11, v10);
}

uint64_t sub_10001C728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001DB10();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001C78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001DB10();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001C7F0(uint64_t a1)
{
  sub_10001DB10();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10001C818(uint64_t a1, id a2)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  LOBYTE(v7) = *(a1 + 64);
  LOBYTE(v4) = [a2 isTracking];
  sub_100004944(&qword_100074608, &qword_100053770);
  Binding.wrappedValue.setter();
  [a2 value];
  sub_100004944(&qword_100075498, &qword_100053730);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10001C990()
{

  return _swift_deallocClassInstance(v0, 104, 7);
}

__n128 sub_10001CA38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10001CA5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10001CAA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001CB0C()
{
  result = qword_100075490;
  if (!qword_100075490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075490);
  }

  return result;
}

unint64_t sub_10001CB98()
{
  result = qword_100076250;
  if (!qword_100076250)
  {
    type metadata accessor for ColorPickerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076250);
  }

  return result;
}

uint64_t sub_10001CBF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004944(&qword_100074A18, &unk_100051000);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_100008A40(v2, &v17 - v9, &qword_100074A18, &unk_100051000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10001D560(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_10000898C(v16);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void *sub_10001CE7C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10001D560(0xD000000000000018, 0x8000000100054170, &v14);
      _os_log_impl(&_mh_execute_header, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      sub_10000898C(v11);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

uint64_t sub_10001D044@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004944(&qword_100074F28, &qword_10004FDA0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_100008A40(v2, &v17 - v9, &qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10001D560(0x686353726F6C6F43, 0xEB00000000656D65, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_10000898C(v16);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10001D2CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004944(&qword_1000754C8, &qword_100051010);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_100008A40(v2, &v17 - v9, &qword_1000754C8, &qword_100051010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10001D560(0x694474756F79614CLL, 0xEF6E6F6974636572, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_10000898C(v16);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_10001D560(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001D62C(v11, 0, 0, 1, a1, a2);
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
    sub_10000DC90(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000898C(v11);
  return v7;
}

unint64_t sub_10001D62C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001D738(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

void *sub_10001D738(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001D784(a1, a2);
  sub_10001D8B4(&off_10006A378);
  return v3;
}

void *sub_10001D784(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001D9A0(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001D9A0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

void sub_10001D8B4(uint64_t a1)
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

  v3 = sub_10001DA14(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

void *sub_10001D9A0(uint64_t a1, uint64_t a2)
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

  sub_100004944(&qword_1000754B8, &unk_100050FF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001DA14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004944(&qword_1000754B8, &unk_100050FF0);
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

unint64_t sub_10001DB10()
{
  result = qword_1000754C0;
  if (!qword_1000754C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000754C0);
  }

  return result;
}

uint64_t sub_10001DB64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a1;
  v107 = a3;
  v101 = type metadata accessor for GeometryProxy();
  v99 = *(v101 - 8);
  v100 = *(v99 + 64);
  __chkstk_darwin(v101);
  v97 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v96);
  v95 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for DragGesture();
  v105 = *(v103 - 8);
  __chkstk_darwin(v103);
  v115 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_100004944(&qword_100075598, &qword_1000515B0);
  __chkstk_darwin(v106);
  v98 = &v88 - v7;
  v92 = type metadata accessor for RoundedRectangle() - 8;
  __chkstk_darwin(v92);
  v93 = (&v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ColorSwatchPickerView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = v9 - 8;
  v94 = v9 - 8;
  __chkstk_darwin(v9 - 8);
  v13 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004944(&qword_1000755A0, &qword_1000510A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v88 - v15;
  v17 = sub_100004944(&qword_1000755A8, &qword_1000510A8);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v89 = &v88 - v19;
  v91 = sub_100004944(&qword_1000755B0, &qword_1000510B0) - 8;
  __chkstk_darwin(v91);
  v90 = &v88 - v20;
  v116 = sub_100004944(&qword_1000755B8, &qword_1000510B8);
  __chkstk_darwin(v116);
  v113 = &v88 - v21;
  v102 = sub_100004944(&qword_1000755C0, &qword_1000510C0);
  v104 = *(v102 - 8);
  __chkstk_darwin(v102);
  v117 = &v88 - v22;
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_100004944(&qword_1000755C8, &unk_1000510C8);
  v23 = *(v12 + 36);
  v118 = a2;
  v24 = *(*(a2 + v23) + 16);
  *&v126[0] = 0;
  *(&v126[0] + 1) = v24;
  KeyPath = swift_getKeyPath();
  v108 = v13;
  sub_100021038(a2, v13);
  v26 = *(v10 + 80);
  v112 = ((v26 + 16) & ~v26) + v11;
  v27 = (v26 + 16) & ~v26;
  v110 = v27;
  v111 = v26 | 7;
  v28 = swift_allocObject();
  v109 = type metadata accessor for ColorSwatchPickerView;
  sub_100021280(v13, v28 + v27, type metadata accessor for ColorSwatchPickerView);
  v29 = sub_100004944(&qword_1000755D0, &qword_1000510F0);
  v30 = sub_100004944(&qword_1000755D8, &unk_1000510F8);
  v31 = sub_1000211A0();
  v32 = sub_100008D7C(&qword_1000755F0, &qword_1000755D8, &unk_1000510F8, &protocol conformance descriptor for HStack<A>);
  ForEach<>.init(_:id:content:)(v126, KeyPath, sub_100021120, v28, v29, v30, v31, &protocol witness table for Int, v32);
  GeometryProxy.size.getter();
  fmod(v33, 6.0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v34 = v89;
  sub_1000084B0(v16, v89, &qword_1000755A0, &qword_1000510A0);
  v35 = (v34 + *(v18 + 44));
  v36 = v126[1];
  *v35 = v126[0];
  v35[1] = v36;
  v35[2] = v126[2];
  v37 = [objc_opt_self() currentDevice];
  v38 = [v37 userInterfaceIdiom];

  if (v38 == 6)
  {
    v39 = 16.0;
  }

  else
  {
    v39 = 8.0;
  }

  v40 = *(v92 + 28);
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = type metadata accessor for RoundedCornerStyle();
  v43 = v93;
  (*(*(v42 - 8) + 104))(v93 + v40, v41, v42);
  *v43 = v39;
  v43[1] = v39;
  v44 = v90;
  v45 = &v90[*(v91 + 44)];
  sub_100021280(v43, v45, &type metadata accessor for RoundedRectangle);
  *(v45 + *(sub_100004944(&qword_100074A88, &qword_10004F220) + 36)) = 256;
  v46 = v34;
  v47 = v44;
  sub_1000084B0(v46, v44, &qword_1000755A8, &qword_1000510A8);
  v48 = v118;
  v49 = v108;
  sub_100021038(v118, v108);
  v50 = v112;
  v51 = swift_allocObject();
  v52 = v110;
  v53 = v109;
  sub_100021280(v49, v51 + v110, v109);
  v54 = static Alignment.center.getter();
  v56 = v55;
  v57 = v47;
  v58 = v113;
  sub_1000084B0(v57, v113, &qword_1000755B0, &qword_1000510B0);
  v59 = (v58 + *(v116 + 36));
  *v59 = sub_1000212E8;
  v59[1] = v51;
  v59[2] = v54;
  v59[3] = v56;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v60 = v48;
  v61 = v49;
  sub_100021038(v60, v49);
  v62 = v99;
  v63 = v97;
  v64 = v101;
  (*(v99 + 16))(v97, v114, v101);
  v65 = v62;
  v66 = (v50 + *(v62 + 80)) & ~*(v62 + 80);
  v67 = swift_allocObject();
  sub_100021280(v61, v67 + v52, v53);
  (*(v65 + 32))(v67 + v66, v63, v64);
  sub_100022644(&qword_1000755F8, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_100022644(&qword_100075600, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v68 = v98;
  v69 = v103;
  v70 = v115;
  Gesture<>.onChanged(_:)();

  (*(v105 + 8))(v70, v69);
  v71 = (v118 + *(v94 + 32));
  LODWORD(v115) = *v71;
  v72 = v71[2];
  v114 = v71[1];
  v105 = v72;
  v73 = v71[3];
  LOBYTE(v122) = v115;
  v123 = v114;
  v124 = v72;
  v125 = v73;
  sub_100004944(&qword_100075608, &qword_100051108);
  GestureState.projectedValue.getter();
  v74 = v120;
  v75 = v121;
  v76 = v106;
  v77 = v68 + *(v106 + 44);
  *v77 = v119;
  *(v77 + 8) = v74;
  *(v77 + 16) = v75;
  v78 = (v68 + *(v76 + 48));
  *v78 = sub_10001F624;
  v78[1] = 0;
  static GestureMask.all.getter();
  v79 = sub_100021618();
  v80 = sub_100008D7C(&qword_100075640, &qword_100075598, &qword_1000515B0, &protocol conformance descriptor for GestureStateGesture<A, B>);
  v81 = v116;
  v82 = v113;
  View.gesture<A>(_:including:)();
  sub_1000059D4(v68, &qword_100075598, &qword_1000515B0);
  sub_1000059D4(v82, &qword_1000755B8, &qword_1000510B8);
  LOBYTE(v122) = v115;
  v123 = v114;
  v124 = v105;
  v125 = v73;
  GestureState.wrappedValue.getter();
  v83 = v108;
  sub_100021038(v118, v108);
  v84 = swift_allocObject();
  sub_100021280(v83, v84 + v110, v109);
  v122 = v81;
  v123 = v76;
  v124 = v79;
  v125 = v80;
  swift_getOpaqueTypeConformance2();
  v85 = v102;
  v86 = v117;
  View.onChange<A>(of:initial:_:)();

  return (*(v104 + 8))(v86, v85);
}

uint64_t sub_10001E878@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ColorSwatchPickerView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = *a1;
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = sub_100004944(&qword_100075650, &qword_100051248);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *(a2 + *(v7 + 36));
    if (v10 < *(v12 + 16))
    {
      v13 = *(*(v12 + 8 * v10 + 32) + 16);
      v20[0] = 0;
      v20[1] = v13;
      KeyPath = swift_getKeyPath();
      sub_100021038(a2, v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v16 = swift_allocObject();
      sub_100021280(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ColorSwatchPickerView);
      *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
      v17 = sub_100004944(&qword_1000755D0, &qword_1000510F0);
      v18 = sub_1000211A0();
      v19 = sub_100021F18();
      return ForEach<>.init(_:id:content:)(v20, KeyPath, sub_100021E50, v16, v17, &type metadata for ColorSwatchPickerView.ColorCell, v18, &protocol witness table for Int, v19);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001EA68@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10001F71C();
  result = type metadata accessor for ColorSwatchPickerView(0);
  if (v7)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    v9 = *(v3 + *(result + 32));
    if (*(v9 + 16) <= a1)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v10 = *(v9 + 8 * a1 + 32);
    if (*(v10 + 16) > a2)
    {
LABEL_11:
      v12 = v10 + 56 * a2;
      v15 = *(v12 + 48);
      v13 = *(v12 + 64);
      LOWORD(v14) = *(v12 + 80);
      *a3 = *(v12 + 32);
      *(a3 + 16) = v15;
      *(a3 + 32) = v13;
      *(a3 + 48) = v14;
      *(a3 + 56) = a1;
      *(a3 + 64) = a2;
      return result;
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = *(v3 + *(result + 28));
  if (*(v11 + 16) <= a1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = *(v11 + 8 * a1 + 32);
  if (*(v10 + 16) > a2)
  {
    goto LABEL_11;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10001EB74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, double (**a3)@<D0>(uint64_t a2@<X8>)@<X8>)
{
  v6 = type metadata accessor for ColorSwatchPickerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *a1;
  sub_100021038(a2, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_100021280(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ColorSwatchPickerView);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  *a3 = sub_100021BA0;
  a3[1] = v11;
}

__n128 sub_10001ECA0@<Q0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = static Alignment.center.getter();
  v7 = v6;
  sub_10001EDA8(a2, v22);
  v18 = v22[2];
  v19 = v22[3];
  v20 = v22[4];
  v21 = v22[5];
  v16 = v22[0];
  v17 = v22[1];
  static Alignment.topLeading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 48) = v18;
  *(a3 + 64) = v19;
  *(a3 + 80) = v20;
  *(a3 + 96) = v21;
  *(a3 + 16) = v16;
  *(a3 + 32) = v17;
  *(a3 + 112) = v9;
  *(a3 + 128) = v10;
  result = v11;
  *(a3 + 192) = v14;
  *(a3 + 208) = v15;
  *(a3 + 160) = v12;
  *(a3 + 176) = v13;
  *(a3 + 144) = v11;
  return result;
}

uint64_t sub_10001EDA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ColorSwatchPickerView(0);
  if (*(v2 + *(v5 + 20)))
  {
    v6 = v5;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v7 = 0.0;
    if ((LOWORD(v38.f64[0]) & 0xFF00) == 0x200 || (v8 = v35, LOBYTE(v35.f64[0]) = 1, v43 = v8, v44 = v36, v45 = 0x3FF0000000000000, v46 = 0, v47 = 1, v48 = BYTE1(v38.f64[0]), sub_100018994(&v40), (v9 = *(a1 + 16)) == 0))
    {
LABEL_11:
      v17 = 0;
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
LABEL_12:
      v49.origin.x = v18;
      v49.origin.y = v19;
      v49.size.width = v20;
      v49.size.height = v21;
      CGRectGetWidth(v49);
      v50.origin.x = v18;
      v50.origin.y = v19;
      v50.size.width = v20;
      v50.size.height = v21;
      CGRectGetHeight(v50);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v22 = v35.f64[0];
      v23 = LOBYTE(v35.f64[1]);
      v24 = v36.f64[0];
      v25 = LOBYTE(v36.f64[1]);
      v26 = v37;
      v51.origin.x = v18;
      v51.origin.y = v19;
      v51.size.width = v20;
      v51.size.height = v21;
      MinX = CGRectGetMinX(v51);
      v52.origin.x = v18;
      v52.origin.y = v19;
      v52.size.width = v20;
      v52.size.height = v21;
      MinY = CGRectGetMinY(v52);
      LOBYTE(v34[0]) = v23;
      result = swift_allocObject();
      *(result + 16) = 0;
      *a2 = v17;
      *(a2 + 8) = v22;
      *(a2 + 16) = v23;
      *(a2 + 24) = v24;
      *(a2 + 32) = v25;
      *(a2 + 40) = v26;
      *(a2 + 56) = MinX;
      *(a2 + 64) = MinY;
      *(a2 + 72) = v7;
      *(a2 + 80) = sub_100021CEC;
      *(a2 + 88) = result;
      return result;
    }

    v10 = (a1 + 32);
    while (1)
    {
      v11 = v10[2];
      v12 = v10[4];
      v38 = v10[3];
      v39 = v12;
      v13 = *v10;
      v36 = v10[1];
      v37 = v11;
      v35 = v13;
      if (BYTE1(v38.f64[0]) == v42)
      {
        v14 = vsubq_f64(v35, v40);
        if (sqrt(vaddvq_f64(vmulq_f64(v14, v14)) + (v36.f64[0] - v41) * (v36.f64[0] - v41)) <= 0.001)
        {
          break;
        }
      }

      v10 += 5;
      if (!--v9)
      {
        goto LABEL_11;
      }
    }

    v15 = *(v2 + *(v6 + 28));
    v16 = *(v15 + 16);
    if (v16)
    {
      if (*&v39 == 0)
      {
        v17 = 1;
      }

      else
      {
        v30 = v16 - 1;
        if (v30 == *&v39.f64[0] && *&v39.f64[1] == 0)
        {
          v17 = 4;
        }

        else
        {
          v32 = *(*(v15 + 32) + 16) - 1;
          if (__PAIR128__(v32, 0) == *&v39)
          {
            v17 = 2;
          }

          else if (v32 == *&v39.f64[1] && v30 == *&v39.f64[0])
          {
            v17 = 8;
          }

          else
          {
            v17 = 0;
          }
        }
      }

      sub_100021C4C(&v35, v34);
      type metadata accessor for CGRect(0);
      GeometryProxy.subscript.getter();
      sub_100021C84(&v35);
      v18 = *v34;
      v19 = *&v34[1];
      v7 = 1.0;
      v20 = *&v34[2];
      v21 = *&v34[3];
      goto LABEL_12;
    }

    __break(1u);
  }

  type metadata accessor for ColorPickerState(0);
  sub_100022644(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10001F154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + *(type metadata accessor for ColorSwatchPickerView(0) + 20));
  if (v2)
  {
    v3 = swift_allocObject();
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = v2;
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v2;
    swift_retain_n();
    Binding.init(get:set:)();
    v14[2] = v17[2];
    v14[3] = v17[3];
    v15 = v18;
    v14[0] = v17[0];
    v14[1] = v17[1];
    sub_100004944(&qword_100076350, &qword_100051160);
    Binding.wrappedValue.getter();
    sub_1000059D4(v17, &qword_100076350, &qword_100051160);
    v5 = v20;
    v6 = v21;
    DragGesture.Value.location.getter();
    v8 = v7;
    v10 = v9;
    GeometryProxy.size.getter();
    sub_10001F404(v19, v8, v10, v11, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v14[0]) = 1;

    static Published.subscript.setter();

    if (v6)
    {
      sub_100018B1C(v16);
    }

    else
    {
      sub_100018994(v16);
    }

    sub_1000197D4(3, 0, v14, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100022644(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001F404@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = type metadata accessor for ColorSwatchPickerView(0);
  v15 = *(v5 + *(result + 28));
  v16 = *(v15 + 16);
  if (!v16)
  {
    __break(1u);
    goto LABEL_26;
  }

  v17 = a5 / v16;
  if (v17 != 0.0)
  {
    v6 = v15 + 32;
    v18 = *(*(v15 + 32) + 16);
    v19 = a4 / v18;
    if (v19 != 0.0)
    {
      v20 = floor(a3 / v17);
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v20 <= -9.22337204e18)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v20 >= 9.22337204e18)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v21 = v16 - 1;
      if (v21 >= v20)
      {
        v21 = v20;
      }

      v22 = floor(a2 / v19);
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_30;
      }

      if (v22 <= -9.22337204e18)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v22 >= 9.22337204e18)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v23 = result;
      v8 = v21 & ~(v21 >> 63);
      v24 = v18 - 1;
      if (v24 >= v22)
      {
        v24 = v22;
      }

      v7 = v24 & ~(v24 >> 63);
      result = sub_10001F71C();
      if ((result & 1) == 0)
      {
        goto LABEL_21;
      }

      v25 = *(v5 + *(v23 + 32));
      if (v8 >= *(v25 + 16))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v26 = *(v25 + 8 * v8 + 32);
      if (v7 < *(v26 + 16))
      {
LABEL_23:
        v28 = v26 + 56 * v7;
        goto LABEL_24;
      }

      __break(1u);
    }
  }

  v27 = *(v5 + *(result + 32));
  if (!*(v27 + 16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = *(v27 + 32);
  if (*(v28 + 16))
  {
LABEL_24:
    v29 = *(v28 + 48);
    v30 = *(v28 + 64);
    v31 = *(v28 + 80);
    *a1 = *(v28 + 32);
    *(a1 + 16) = v29;
    *(a1 + 32) = v30;
    *(a1 + 48) = v31;
    return result;
  }

  __break(1u);
LABEL_21:
  if (v8 >= *(v15 + 16))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v26 = *(v6 + 8 * v8);
  if (v7 < *(v26 + 16))
  {
    goto LABEL_23;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10001F630(uint64_t a1, char *a2, uint64_t a3)
{
  if (*(a3 + *(type metadata accessor for ColorSwatchPickerView(0) + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100022644(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001F71C()
{
  v1 = sub_100004944(&qword_100075648, &qword_1000511B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17[-v2];
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v17[-v10];
  __chkstk_darwin(v9);
  v13 = &v17[-v12];
  if (*(v0 + *(type metadata accessor for ColorSwatchPickerView(0) + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v17[15])
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        sub_1000059D4(v3, &qword_100075648, &qword_1000511B0);
        sub_10001D044(v11);
        (*(v5 + 104))(v8, enum case for ColorScheme.dark(_:), v4);
        v14 = static ColorScheme.== infix(_:_:)();
      }

      else
      {
        (*(v5 + 32))(v13, v3, v4);
        (*(v5 + 104))(v11, enum case for ColorScheme.dark(_:), v4);
        v14 = static ColorScheme.== infix(_:_:)();
        v8 = v11;
        v11 = v13;
      }

      v15 = *(v5 + 8);
      v15(v8, v4);
      v15(v11, v4);
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100022644(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_10001FA9C@<D0>(uint64_t a1@<X8>)
{
  v19 = *v1;
  v20 = v1[1];
  v21 = v1[2];
  v22 = *(v1 + 24);
  sub_10001944C();
  static Anchor.Source<A>.bounds.getter();
  v3 = swift_allocObject();
  v4 = v1[3];
  *(v3 + 48) = v1[2];
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v1 + 8);
  v5 = v1[1];
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  sub_100018314();
  v7 = v6;
  v8 = [v6 _accessibilityNameWithLuma];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C030();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  sub_100004944(&qword_100075670, &qword_100051370);
  sub_100022188();
  View.accessibility(label:)();

  sub_10000C084(v9, v11, v13 & 1);

  type metadata accessor for ColorPickerState(0);
  sub_100022644(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  v14 = EnvironmentObject.init()();
  v16 = v15;
  v17 = a1 + *(sub_100004944(&qword_100075690, &qword_100051380) + 36);
  *v17 = v14;
  *(v17 + 8) = v16;
  result = *&v19;
  *(v17 + 16) = v19;
  *(v17 + 32) = v20;
  *(v17 + 48) = v21;
  *(v17 + 64) = v22;
  return result;
}

uint64_t sub_10001FCD4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100004944(&qword_100075698, &qword_100051388);
  v6 = swift_allocObject();
  LOWORD(v11) = *(a2 + 24);
  v7 = *a2;
  v10 = a2[1];
  v8 = a2[2];
  *(v6 + 16) = xmmword_10004E4A0;
  *(v6 + 32) = v7;
  *(v6 + 48) = v10;
  *(v6 + 64) = v8;
  *(v6 + 80) = v11;
  *(v6 + 88) = a1;
  *(v6 + 96) = *(a2 + 56);
  *a3 = v6;
}

uint64_t sub_10001FD80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  v4 = type metadata accessor for AccessibilityTraits();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004944(&qword_1000756C0, &qword_100051428);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = sub_100004944(&qword_1000756C8, &qword_100051430);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000224F4(a1, &v22);
    static Published.subscript.getter();
    sub_10002252C(a1);

    if ((v23 & 0xFF00) == 0x200)
    {
      v13 = sub_100004944(&qword_1000756D0, &qword_100051438);
      (*(*(v13 - 8) + 16))(v12, v18, v13);
      swift_storeEnumTagMultiPayload();
      sub_10002255C();
      sub_100008D7C(&qword_1000756E0, &qword_1000756D0, &qword_100051438, &protocol conformance descriptor for _ViewModifier_Content<A>);
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v21 = v23 & 1;
      v23 &= 0x101u;
      sub_100018994(&v24);
      if (v27 == (*(a1 + 65) & 1) && (v15 = vsubq_f64(v24, *(a1 + 1)), sqrt(vaddvq_f64(vmulq_f64(v15, v15)) + (v25 - *(a1 + 4)) * (v25 - *(a1 + 4))) <= 0.001) && vabdd_f64(v26, *(a1 + 5)) <= 0.001)
      {
        static AccessibilityTraits.isSelected.getter();
      }

      else
      {
        v20 = _swiftEmptyArrayStorage;
        sub_100022644(&qword_1000756E8, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
        sub_100004944(&qword_1000756F0, &qword_100051440);
        sub_100008D7C(&qword_1000756F8, &qword_1000756F0, &qword_100051440, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
      }

      sub_100004944(&qword_1000756D0, &qword_100051438);
      sub_100008D7C(&qword_1000756E0, &qword_1000756D0, &qword_100051438, &protocol conformance descriptor for _ViewModifier_Content<A>);
      View.accessibility(addTraits:)();
      (*(v17 + 8))(v6, v4);
      sub_10002268C(v9, v12);
      swift_storeEnumTagMultiPayload();
      sub_10002255C();
      _ConditionalContent<>.init(storage:)();
      return sub_1000059D4(v9, &qword_1000756C0, &qword_100051428);
    }
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100022644(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002029C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 48);
  v6[2] = *(v2 + 32);
  v6[3] = v3;
  v7 = *(v2 + 64);
  v4 = *(v2 + 16);
  v6[0] = *v2;
  v6[1] = v4;
  return sub_10001FD80(v6, a1, a2);
}

void sub_1000202F0(uint64_t a1)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_10002EE50(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1000203E8@<X0>(void *a1@<X8>)
{
  if (qword_1000743C0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_10007B130;
}

void sub_1000204C4()
{
  v0 = sub_1000209E8(&off_10006A6C8);
  v1 = &off_10006C248;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_48;
  }

  do
  {
    v1[4] = v0;

    v51 = v1 + 4;
    v2 = v1[2];

    if (v2 >= 2)
    {
      v1[5] = v3;

      v4 = v1[2];

      if (v4 >= 3)
      {
        v1[6] = v5;

        v6 = v1[2];

        if (v6 >= 4)
        {
          v1[7] = v7;

          v8 = v1[2];

          if (v8 >= 5)
          {
            v1[8] = v9;

            v10 = v1[2];

            if (v10 >= 6)
            {
              v1[9] = v11;

              v12 = v1[2];

              if (v12 >= 7)
              {
                v1[10] = v13;

                v14 = v1[2];

                if (v14 >= 8)
                {
                  v1[11] = v15;

                  v16 = v1[2];

                  if (v16 >= 9)
                  {
                    v1[12] = v17;

                    v18 = v1[2];

                    if (v18 >= 0xA)
                    {
                      v1[13] = v19;

                      v20 = v1[2];
                      if (!v20)
                      {
LABEL_43:

                        return;
                      }

                      v57 = _swiftEmptyArrayStorage;
                      sub_10002F0B4(0, v20, 0);
                      v21 = 0;
                      v0 = v57;
                      v49 = v20;
                      v50 = v1;
                      while (v21 < v1[2])
                      {
                        v22 = v51[v21];
                        v23 = *(v22 + 16);
                        if (v23)
                        {
                          v52 = v0;
                          v53 = v21;
                          v56 = _swiftEmptyArrayStorage;

                          v0 = &v56;
                          sub_10002F074(0, v23, 0);
                          v24 = v56;
                          v25 = objc_opt_self();
                          v26 = 0;
                          v27 = (v22 + 81);
                          while (v26 < *(v22 + 16))
                          {
                            v54 = *(v27 - 49);
                            v55 = *(v27 - 33);
                            v28 = *(v27 - 9);
                            v29 = *(v27 - 1);
                            if (*v27)
                            {
                              v30 = kCGColorSpaceDisplayP3;
                            }

                            else
                            {
                              v30 = kCGColorSpaceSRGB;
                            }

                            v31 = CGColorSpaceCreateWithName(v30);
                            if (!v31)
                            {
                              goto LABEL_51;
                            }

                            v32 = v31;
                            sub_100004944(&qword_100076300, &qword_100051020);
                            inited = swift_initStackObject();
                            *(inited + 16) = xmmword_100050620;
                            *(inited + 32) = v54;
                            *(inited + 48) = v55;
                            if ((v29 & 1) == 0)
                            {
                              if (*&v54 > *(&v54 + 1))
                              {
                                v34 = *&v54;
                              }

                              else
                              {
                                v34 = *(&v54 + 1);
                              }

                              if (v34 > *&v55)
                              {
                                v35 = v34;
                              }

                              else
                              {
                                v35 = *&v55;
                              }

                              v36 = v28 + 1.0;
                              if (v28 + 1.0 > 1.0)
                              {
                                v36 = 1.0;
                              }

                              if (v35 <= 0.0)
                              {
                                *(inited + 32) = v36;
                                *(inited + 40) = v36;
                              }

                              else
                              {
                                v37 = v36 / v35;
                                *(inited + 32) = *&v54 * v37;
                                *(inited + 40) = *(&v54 + 1) * v37;
                                v36 = *&v55 * v37;
                              }

                              *(inited + 48) = v36;
                            }

                            v38 = CGColorCreate(v32, (inited + 32));

                            if (!v38)
                            {
                              goto LABEL_50;
                            }

                            v0 = [objc_allocWithZone(UIColor) initWithCGColor:v38];

                            v39 = [v25 _convertColorPickerColor:v0 fromUserInterfaceStyle:1 to:2];
                            sub_100019C44(v39, 0, v58);
                            v56 = v24;
                            v41 = v24[2];
                            v40 = v24[3];
                            if (v41 >= v40 >> 1)
                            {
                              v0 = &v56;
                              sub_10002F074((v40 > 1), v41 + 1, 1);
                              v24 = v56;
                            }

                            ++v26;
                            v24[2] = v41 + 1;
                            v42 = &v24[7 * v41];
                            v43 = v58[0];
                            v44 = v58[1];
                            v45 = v58[2];
                            *(v42 + 40) = v59;
                            *(v42 + 3) = v44;
                            *(v42 + 4) = v45;
                            *(v42 + 2) = v43;
                            v27 += 56;
                            if (v23 == v26)
                            {

                              v20 = v49;
                              v1 = v50;
                              v0 = v52;
                              v21 = v53;
                              goto LABEL_40;
                            }
                          }

                          __break(1u);
                          break;
                        }

                        v24 = _swiftEmptyArrayStorage;
LABEL_40:
                        v57 = v0;
                        v47 = v0[2];
                        v46 = v0[3];
                        if (v47 >= v46 >> 1)
                        {
                          v48 = v21;
                          sub_10002F0B4((v46 > 1), v47 + 1, 1);
                          v21 = v48;
                          v0 = v57;
                        }

                        ++v21;
                        v0[2] = (v47 + 1);
                        v0[v47 + 4] = v24;
                        if (v21 == v20)
                        {
                          goto LABEL_43;
                        }
                      }

                      __break(1u);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_48:
    v1 = sub_100019C1C(&off_10006C248);
  }

  while (v1[2]);
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_1000209E8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 56 * v2 - 24;
  for (i = 32; ; i += 56)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 16);
    if (v3 >= v10)
    {
      break;
    }

    v14 = *(v1 + i + 48);
    v12 = *(v1 + i + 16);
    v13 = *(v1 + i + 32);
    v11 = *(v1 + i);
    if (v5 >= v10)
    {
      goto LABEL_12;
    }

    v18 = *(v1 + v6 + 48);
    v16 = *(v1 + v6 + 16);
    v17 = *(v1 + v6 + 32);
    v15 = *(v1 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100019C08(v1);
      v1 = result;
    }

    v8 = v1 + i;
    *(v8 + 48) = v18;
    *(v8 + 16) = v16;
    *(v8 + 32) = v17;
    *v8 = v15;
    v9 = v1 + v6;
    *(v9 + 48) = v14;
    *(v9 + 16) = v12;
    *(v9 + 32) = v13;
    *v9 = v11;
LABEL_5:
    ++v3;
    --v5;
    v6 -= 56;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100020B18@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100021038(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100021280(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ColorSwatchPickerView);
  *a2 = sub_1000210A0;
  a2[1] = v7;
  return result;
}

uint64_t sub_100020C18(void *a1, uint64_t a2)
{
  result = Transaction.disablesAnimations.getter();
  if ((result & 1) == 0)
  {

    return Transaction.animation.setter();
  }

  return result;
}

uint64_t sub_100020C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004944(&qword_1000754D8, &qword_100051028);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100020D48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004944(&qword_1000754D8, &qword_100051028);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ColorSwatchPickerView(uint64_t a1)
{
  result = qword_100075538;
  if (!qword_100075538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100020E5C(uint64_t a1)
{
  sub_100020F10(319);
  if (v1 <= 0x3F)
  {
    sub_100005880(319);
    if (v2 <= 0x3F)
    {
      sub_100020F68();
      if (v3 <= 0x3F)
      {
        sub_100020FB8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100020F10(uint64_t a1)
{
  if (!qword_100075548)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100075548);
    }
  }
}

void sub_100020F68()
{
  if (!qword_100075550)
  {
    v0 = type metadata accessor for GestureState();
    if (!v1)
    {
      atomic_store(v0, &qword_100075550);
    }
  }
}

void sub_100020FB8(uint64_t a1)
{
  if (!qword_100075558)
  {
    sub_100008B90(&unk_1000765A0, &qword_1000516B0);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_100075558);
    }
  }
}

uint64_t sub_100021038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorSwatchPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000210A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ColorSwatchPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001DBAC(a1, v6, a2);
}

uint64_t sub_100021120@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ColorSwatchPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001E878(a1, v6, a2);
}

unint64_t sub_1000211A0()
{
  result = qword_1000755E0;
  if (!qword_1000755E0)
  {
    sub_100008B90(&qword_1000755D0, &qword_1000510F0);
    sub_10002122C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000755E0);
  }

  return result;
}

unint64_t sub_10002122C()
{
  result = qword_1000755E8;
  if (!qword_1000755E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000755E8);
  }

  return result;
}

uint64_t sub_100021280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000212E8@<X0>(uint64_t *a1@<X0>, double (**a2)@<D0>(uint64_t a2@<X8>)@<X8>)
{
  v5 = *(type metadata accessor for ColorSwatchPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001EB74(a1, v6, a2);
}

uint64_t sub_100021368()
{
  v1 = *(type metadata accessor for ColorSwatchPickerView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = (v3 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v10, v5);

  return _swift_deallocObject(v0, v10 + v8, v2 | v7 | 7);
}

uint64_t sub_100021544(uint64_t a1)
{
  v3 = *(type metadata accessor for ColorSwatchPickerView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for GeometryProxy();

  return sub_10001F154(a1, v1 + v4);
}

unint64_t sub_100021618()
{
  result = qword_100075610;
  if (!qword_100075610)
  {
    sub_100008B90(&qword_1000755B8, &qword_1000510B8);
    sub_1000216D0();
    sub_100008D7C(&qword_100075630, &qword_100075638, &qword_100051110, &protocol conformance descriptor for _OverlayPreferenceModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075610);
  }

  return result;
}

unint64_t sub_1000216D0()
{
  result = qword_100075618;
  if (!qword_100075618)
  {
    sub_100008B90(&qword_1000755B0, &qword_1000510B0);
    sub_100021788();
    sub_100008D7C(&qword_100074AA8, &qword_100074A88, &qword_10004F220, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075618);
  }

  return result;
}

unint64_t sub_100021788()
{
  result = qword_100075620;
  if (!qword_100075620)
  {
    sub_100008B90(&qword_1000755A8, &qword_1000510A8);
    sub_100008D7C(&qword_100075628, &qword_1000755A0, &qword_1000510A0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075620);
  }

  return result;
}

uint64_t sub_100021840()
{
  v1 = *(type metadata accessor for ColorSwatchPickerView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100021998(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for ColorSwatchPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001F630(a1, a2, v6);
}

uint64_t sub_100021A3C()
{
  v1 = *(type metadata accessor for ColorSwatchPickerView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

double sub_100021BA0@<D0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ColorSwatchPickerView(0) - 8);
  v5 = *(v2 + ((*(v4 + 64) + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  *&result = sub_10001ECA0(v5, a2).n128_u64[0];
  return result;
}

uint64_t sub_100021CB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021CF4()
{
  v1 = *(type metadata accessor for ColorSwatchPickerView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100004944(&qword_100074F28, &qword_10004FDA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

__n128 sub_100021E50@<Q0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ColorSwatchPickerView(0) - 8);
  sub_10001EA68(*(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), *a1, v8);
  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9;
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_100021F18()
{
  result = qword_100075658;
  if (!qword_100075658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075658);
  }

  return result;
}

__n128 sub_100021F6C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100021F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100021FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100022044(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100022068(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000220AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 49) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100022188()
{
  result = qword_100075678;
  if (!qword_100075678)
  {
    sub_100008B90(&qword_100075670, &qword_100051370);
    sub_100008D7C(&qword_100075680, &qword_100075688, &qword_100051378, &protocol conformance descriptor for _AnchorWritingModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075678);
  }

  return result;
}

__n128 sub_100022240(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100022264(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 66))
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

uint64_t sub_1000222C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10002233C()
{
  result = qword_1000756A0;
  if (!qword_1000756A0)
  {
    sub_100008B90(&qword_100075690, &qword_100051380);
    sub_1000223C8();
    sub_100022484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000756A0);
  }

  return result;
}

unint64_t sub_1000223C8()
{
  result = qword_1000756A8;
  if (!qword_1000756A8)
  {
    sub_100008B90(&qword_1000756B0, &qword_1000513D0);
    sub_100022188();
    sub_100022644(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000756A8);
  }

  return result;
}

unint64_t sub_100022484()
{
  result = qword_1000756B8;
  if (!qword_1000756B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000756B8);
  }

  return result;
}

unint64_t sub_10002255C()
{
  result = qword_1000756D8;
  if (!qword_1000756D8)
  {
    sub_100008B90(&qword_1000756C0, &qword_100051428);
    sub_100008D7C(&qword_1000756E0, &qword_1000756D0, &qword_100051438, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100022644(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000756D8);
  }

  return result;
}

uint64_t sub_100022644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002268C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_1000756C0, &qword_100051428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100022700()
{
  result = qword_100075700;
  if (!qword_100075700)
  {
    sub_100008B90(&qword_100075708, &qword_100051448);
    sub_100022784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075700);
  }

  return result;
}

unint64_t sub_100022784()
{
  result = qword_100075710;
  if (!qword_100075710)
  {
    sub_100008B90(&qword_100075718, &qword_100051450);
    sub_10002255C();
    sub_100008D7C(&qword_1000756E0, &qword_1000756D0, &qword_100051438, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075710);
  }

  return result;
}

uint64_t sub_10002284C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v77 = *(v3 - 8);
  v78 = v3;
  __chkstk_darwin(v3);
  v76 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v69 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004944(&qword_1000757A0, &qword_100051520);
  v8 = *(v7 - 8);
  v70 = v7;
  v71 = v8;
  __chkstk_darwin(v7);
  v10 = &v67 - v9;
  v11 = sub_100004944(&qword_1000757A8, &qword_100051528);
  v12 = *(v11 - 8);
  v72 = v11;
  v73 = v12;
  __chkstk_darwin(v11);
  v68 = &v67 - v13;
  v79 = sub_100004944(&qword_1000757B0, &unk_100051530);
  v14 = __chkstk_darwin(v79);
  v81 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = &v67 - v16;
  v17 = swift_allocObject();
  v18 = *(v1 + 176);
  *(v17 + 176) = *(v1 + 160);
  *(v17 + 192) = v18;
  *(v17 + 208) = *(v1 + 192);
  *(v17 + 224) = *(v1 + 208);
  v19 = *(v1 + 112);
  *(v17 + 112) = *(v1 + 96);
  *(v17 + 128) = v19;
  v20 = *(v1 + 144);
  *(v17 + 144) = *(v1 + 128);
  *(v17 + 160) = v20;
  v21 = *(v1 + 48);
  *(v17 + 48) = *(v1 + 32);
  *(v17 + 64) = v21;
  v22 = *(v1 + 80);
  *(v17 + 80) = *(v1 + 64);
  *(v17 + 96) = v22;
  v23 = *(v1 + 16);
  *(v17 + 16) = *v1;
  *(v17 + 32) = v23;
  v88 = sub_100024C14;
  v89 = v17;
  v24 = *(v1 + 200);
  v90 = *(v1 + 184);
  v91 = v24;
  sub_100024C1C(v1, &v83);
  sub_100004944(&qword_100075608, &qword_100051108);
  GestureState.wrappedValue.getter();
  LOBYTE(v90) = v83;
  v25 = swift_allocObject();
  v26 = *(v1 + 176);
  *(v25 + 176) = *(v1 + 160);
  *(v25 + 192) = v26;
  *(v25 + 208) = *(v1 + 192);
  *(v25 + 224) = *(v1 + 208);
  v27 = *(v1 + 112);
  *(v25 + 112) = *(v1 + 96);
  *(v25 + 128) = v27;
  v28 = *(v1 + 144);
  *(v25 + 144) = *(v1 + 128);
  *(v25 + 160) = v28;
  v29 = *(v1 + 48);
  *(v25 + 48) = *(v1 + 32);
  *(v25 + 64) = v29;
  v30 = *(v1 + 80);
  *(v25 + 80) = *(v1 + 64);
  *(v25 + 96) = v30;
  v31 = *(v1 + 16);
  *(v25 + 16) = *v1;
  *(v25 + 32) = v31;
  sub_100024C1C(v1, &v83);
  v32 = sub_100004944(&qword_1000757B8, &unk_100051540);
  v33 = sub_100008D7C(&qword_1000757C0, &qword_1000757B8, &unk_100051540, &protocol conformance descriptor for GeometryReader<A>);
  View.onChange<A>(of:initial:_:)();

  v34 = v69;
  static AccessibilityChildBehavior.ignore.getter();
  *&v83 = v32;
  *(&v83 + 1) = &type metadata for Bool;
  *&v84 = v33;
  *(&v84 + 1) = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v68;
  v37 = v70;
  View.accessibilityElement(children:)();
  (*(v74 + 8))(v34, v75);
  (*(v71 + 8))(v10, v37);
  v38 = v76;
  static AccessibilityTraits.allowsDirectInteraction.getter();
  *&v83 = v37;
  *(&v83 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v72;
  View.accessibility(addTraits:)();
  (*(v77 + 8))(v38, v78);
  (*(v73 + 8))(v36, v39);
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  *&v83 = v45;
  *(&v83 + 1) = v47;
  sub_10000C030();
  v48 = Text.init<A>(_:)();
  v50 = v49;
  LOBYTE(v10) = v51;
  v52 = v81;
  ModifiedContent<>.accessibility(label:)();
  sub_10000C084(v48, v50, v10 & 1);

  sub_1000059D4(v52, &qword_1000757B0, &unk_100051530);
  v53 = *(v2 + 144);
  v85 = *(v2 + 128);
  v86 = v53;
  v87 = *(v2 + 160);
  v54 = *(v2 + 112);
  v83 = *(v2 + 96);
  v84 = v54;
  sub_100004944(&qword_100076350, &qword_100051160);
  Binding.wrappedValue.getter();
  sub_100018314();
  v56 = v55;
  v57 = [v55 _accessibilityNameWithLuma];

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  *&v83 = v58;
  *(&v83 + 1) = v60;
  v61 = Text.init<A>(_:)();
  v63 = v62;
  LOBYTE(v43) = v64;
  sub_100024CC4();
  v65 = v82;
  View.accessibility(value:)();
  sub_10000C084(v61, v63, v43 & 1);

  return sub_1000059D4(v65, &qword_1000757B0, &unk_100051530);
}

uint64_t sub_100023004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.topLeading.getter();
  a3[1] = v6;
  v7 = sub_100004944(&qword_1000757D0, &qword_100051598);
  return sub_100023064(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_100023064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v136 = a2;
  v130 = a3;
  v4 = sub_100004944(&qword_1000757D8, &qword_1000515A0);
  v126 = *(v4 - 8);
  v127 = v4;
  __chkstk_darwin(v4);
  v119 = v107 - v5;
  v6 = sub_100004944(&qword_1000757E0, &qword_1000515A8);
  v7 = __chkstk_darwin(v6 - 8);
  v129 = v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v128 = v107 - v9;
  v134 = type metadata accessor for GeometryProxy();
  v10 = *(v134 - 8);
  v121 = *(v10 + 64);
  __chkstk_darwin(v134);
  v132 = v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v131);
  v13 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DragGesture();
  v138 = *(v133 - 8);
  __chkstk_darwin(v133);
  v15 = v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_100004944(&qword_100075598, &qword_1000515B0);
  __chkstk_darwin(v135);
  v17 = v107 - v16;
  v18 = type metadata accessor for RoundedRectangle();
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = (v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = sub_100004944(&qword_1000757E8, &qword_1000515B8);
  __chkstk_darwin(v122);
  v120 = v107 - v22;
  v23 = sub_100004944(&qword_1000757F0, &unk_1000515C0);
  v124 = *(v23 - 8);
  v125 = v23;
  v24 = __chkstk_darwin(v23);
  v123 = v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v137 = v107 - v26;
  v111 = objc_opt_self();
  v27 = [v111 currentDevice];
  v28 = [v27 userInterfaceIdiom];

  if (v28 == 6)
  {
    v29 = 16.0;
  }

  else
  {
    v29 = 8.0;
  }

  v30 = *(v19 + 28);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = type metadata accessor for RoundedCornerStyle();
  (*(*(v32 - 8) + 104))(v21 + v30, v31, v32);
  *v21 = v29;
  v21[1] = v29;
  v33 = v21;
  v34 = v120;
  sub_100024E50(v33, v120);
  *(v34 + *(sub_100004944(&qword_100074A88, &qword_10004F220) + 36)) = 256;
  static CoordinateSpaceProtocol<>.local.getter();
  v117 = v13;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v35 = v132;
  v36 = v134;
  v115 = *(v10 + 16);
  v107[1] = v10 + 16;
  v115(v132, v136, v134);
  v37 = (*(v10 + 80) + 232) & ~*(v10 + 80);
  v107[2] = *(v10 + 80);
  v114 = v37 + v121;
  v38 = swift_allocObject();
  v39 = *(a1 + 176);
  *(v38 + 176) = *(a1 + 160);
  *(v38 + 192) = v39;
  *(v38 + 208) = *(a1 + 192);
  *(v38 + 224) = *(a1 + 208);
  v40 = *(a1 + 112);
  *(v38 + 112) = *(a1 + 96);
  *(v38 + 128) = v40;
  v41 = *(a1 + 144);
  *(v38 + 144) = *(a1 + 128);
  *(v38 + 160) = v41;
  v42 = *(a1 + 48);
  *(v38 + 48) = *(a1 + 32);
  *(v38 + 64) = v42;
  v43 = *(a1 + 80);
  *(v38 + 80) = *(a1 + 64);
  *(v38 + 96) = v43;
  v44 = *(a1 + 16);
  *(v38 + 16) = *a1;
  *(v38 + 32) = v44;
  v45 = *(v10 + 32);
  v116 = v37;
  v121 = v10 + 32;
  v113 = v45;
  v45(v38 + v37, v35, v36);
  sub_100024C1C(a1, &v162);
  v46 = sub_100024EB8(&qword_1000755F8, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  v47 = sub_100024EB8(&qword_100075600, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v48 = v133;
  v112 = v46;
  v110 = v47;
  Gesture<>.onChanged(_:)();

  v49 = *(v138 + 8);
  v118 = v15;
  v138 += 8;
  v108 = v49;
  v49(v15, v48);
  v50 = *(a1 + 200);
  v167 = *(a1 + 184);
  v168 = v50;
  v51 = *(a1 + 200);
  v162 = *(a1 + 184);
  v163 = v51;
  v109 = sub_100004944(&qword_100075608, &qword_100051108);
  GestureState.projectedValue.getter();
  v52 = *(&v142 + 1);
  v53 = v143;
  v54 = v135;
  v55 = &v17[*(v135 + 44)];
  *v55 = v142;
  *(v55 + 1) = v52;
  *(v55 + 1) = v53;
  v56 = &v17[*(v54 + 48)];
  *v56 = sub_10001F624;
  *(v56 + 1) = 0;
  static GestureMask.all.getter();
  sub_100024F00();
  sub_100008D7C(&qword_100075640, &qword_100075598, &qword_1000515B0, &protocol conformance descriptor for GestureStateGesture<A, B>);
  View.gesture<A>(_:including:)();
  v122 = v17;
  sub_1000059D4(v17, &qword_100075598, &qword_1000515B0);
  sub_1000059D4(v34, &qword_1000757E8, &qword_1000515B8);
  if (*(a1 + 168))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v162 && v162 == 1)
    {
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v57 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    GeometryProxy.size.getter();
    *&v60 = COERCE_DOUBLE(sub_100023E0C(v58, v59));
    if ((v62 & 1) == 0)
    {
      v64 = *&v60;
      v65 = v61;
      v66 = *(a1 + 144);
      v164 = *(a1 + 128);
      v165 = v66;
      v166 = *(a1 + 160);
      v67 = *(a1 + 112);
      v162 = *(a1 + 96);
      v163 = v67;
      sub_100004944(&qword_100076350, &qword_100051160);
      Binding.wrappedValue.getter();
      v68 = v111;
      v69 = [v111 currentDevice];
      [v69 userInterfaceIdiom];

      v70 = [v68 currentDevice];
      [v70 userInterfaceIdiom];

      v151 = v158;
      v152 = v159;
      v153 = v160;
      LOWORD(v154) = v161;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v71 = v136;
      GeometryProxy.size.getter();
      v74 = sub_100025084(v64, v65, v72, v73);
      v146 = v155;
      v147 = v156;
      v148 = v157;
      v142 = v151;
      v143 = v152;
      v144 = v153;
      v145 = v154;
      v149 = v74;
      v150 = v75;
      static CoordinateSpaceProtocol<>.local.getter();
      v76 = v118;
      DragGesture.init<A>(minimumDistance:coordinateSpace:)();
      v77 = v132;
      v78 = v71;
      v79 = v134;
      v115(v132, v78, v134);
      v80 = swift_allocObject();
      v81 = *(a1 + 176);
      *(v80 + 176) = *(a1 + 160);
      *(v80 + 192) = v81;
      *(v80 + 208) = *(a1 + 192);
      *(v80 + 224) = *(a1 + 208);
      v82 = *(a1 + 112);
      *(v80 + 112) = *(a1 + 96);
      *(v80 + 128) = v82;
      v83 = *(a1 + 144);
      *(v80 + 144) = *(a1 + 128);
      *(v80 + 160) = v83;
      v84 = *(a1 + 48);
      *(v80 + 48) = *(a1 + 32);
      *(v80 + 64) = v84;
      v85 = *(a1 + 80);
      *(v80 + 80) = *(a1 + 64);
      *(v80 + 96) = v85;
      v86 = *(a1 + 16);
      *(v80 + 16) = *a1;
      *(v80 + 32) = v86;
      v113(v80 + v116, v77, v79);
      sub_100024C1C(a1, &v162);
      v87 = v122;
      v88 = v133;
      Gesture<>.onChanged(_:)();

      v108(v76, v88);
      v162 = v167;
      v163 = v168;
      GestureState.projectedValue.getter();
      v89 = v140;
      v90 = v141;
      v91 = v135;
      v92 = v87 + *(v135 + 44);
      *v92 = v139;
      *(v92 + 8) = v89;
      *(v92 + 16) = v90;
      v93 = (v87 + *(v91 + 48));
      *v93 = sub_10001F624;
      v93[1] = 0;
      static GestureMask.all.getter();
      sub_100004944(&qword_100075810, &qword_100051620);
      sub_1000252F8();
      v94 = v119;
      View.gesture<A>(_:including:)();
      sub_1000059D4(v87, &qword_100075598, &qword_1000515B0);
      v96 = v126;
      v95 = v127;
      v63 = v128;
      (*(v126 + 32))(v128, v94, v127);
      (*(v96 + 56))(v63, 0, 1, v95);
      goto LABEL_12;
    }

LABEL_10:
    v63 = v128;
    (*(v126 + 56))(v128, 1, 1, v127);
LABEL_12:
    v98 = v123;
    v97 = v124;
    v99 = *(v124 + 16);
    v100 = v137;
    v101 = v125;
    v99(v123, v137, v125);
    v102 = v129;
    sub_100025014(v63, v129);
    v103 = v130;
    v99(v130, v98, v101);
    v104 = sub_100004944(&qword_100075808, &qword_100051618);
    sub_100025014(v102, &v103[*(v104 + 48)]);
    sub_1000059D4(v63, &qword_1000757E0, &qword_1000515A8);
    v105 = *(v97 + 8);
    v105(v100, v101);
    sub_1000059D4(v102, &qword_1000757E0, &qword_1000515A8);
    return (v105)(v98, v101);
  }

  type metadata accessor for ColorPickerState(0);
  sub_100024EB8(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100023E0C(double a1, double a2)
{
  if (*(v2 + 168))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v22 << 8 == 512)
    {
      return 0;
    }

    sub_100004944(&qword_100075838, &qword_100051678);
    State.wrappedValue.getter();
    if (LOBYTE(v27) & 1) != 0 || (sub_100004944(&qword_100075840, &qword_100051680), State.wrappedValue.getter(), (v28 & 0xFF00) == 0x200) || (sub_100004944(&qword_100076350, &qword_100051160), Binding.wrappedValue.getter(), ((HIBYTE(v28) ^ ((v28 & 0x100) >> 8))) || sqrt((v25 - v25) * (v25 - v25) + (v26 - v26) * (v26 - v26) + (v27 - v27) * (v27 - v27)) > 0.001)
    {
      sub_100004944(&qword_100076350, &qword_100051160);
      Binding.wrappedValue.getter();
      v6 = sub_10003ADC0(&v25, a1);
      v8 = -(v7 / a2 + v7 / a2 + -1.0);
      v9 = [objc_opt_self() colorAtLocation:{fmax(fmin(v6 / a1 + v6 / a1 + -1.0, 1.0), -1.0), fmax(fmin(v8, 1.0), -1.0)}];
      sub_100019F88(v9, &v23);
      Binding.wrappedValue.getter();
      v10 = vsubq_f64(*v20, v23);
      if (sqrt(vaddvq_f64(vmulq_f64(v10, v10)) + (*&v20[16] - v24) * (*&v20[16] - v24)) >= 0.55)
      {
        State.wrappedValue.getter();
        Binding.wrappedValue.getter();
        v11 = *&v20[8];
        if (qword_1000743D0 != -1)
        {
          swift_once();
          v11 = *&v20[8];
        }

        if (v21 == byte_100075751 && (v12 = vsubq_f64(v11, *(&xmmword_100075720 + 8)), v13 = vmulq_f64(v12, v12), sqrt(v13.f64[1] + v13.f64[0] + (*v20 - *&xmmword_100075720) * (*v20 - *&xmmword_100075720)) <= 0.001))
        {

          return 0;
        }

        else
        {
          Binding.wrappedValue.getter();
          v14 = *&v20[8];
          if (qword_1000743D8 != -1)
          {
            swift_once();
            v14 = *&v20[8];
          }

          if (v21 != byte_100075789)
          {

            return 0;
          }

          v19 = v14;
          v15 = (*v20 - *&xmmword_100075758) * (*v20 - *&xmmword_100075758);
          v18 = *(&xmmword_100075758 + 8);

          v16 = vsubq_f64(v19, v18);
          v17 = vmulq_f64(v16, v16);
          if (sqrt(v17.f64[1] + v17.f64[0] + v15) > 0.001)
          {
            return 0;
          }

          return 0x7FEFFFFFFFFFFFFFLL;
        }
      }

      else
      {

        return *&v6;
      }
    }

    else
    {
      return *&v25;
    }
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100024EB8(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100024368(uint64_t a1, char *a2, uint64_t a3)
{
  if (*(a3 + 168))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100024EB8(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002443C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 21))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v51) = 1;

    static Published.subscript.setter();
    DragGesture.Value.location.getter();
    v3 = a2[1];
    v51 = *a2;
    v52 = v3;
    *&v42 = v4;
    *(&v42 + 1) = v5;
    LOBYTE(v43) = 0;
    sub_100004944(&qword_100075838, &qword_100051678);
    State.wrappedValue.setter();
    v6 = a2[7];
    v7 = a2[9];
    v53 = a2[8];
    v54 = v7;
    v8 = a2[7];
    v51 = a2[6];
    v52 = v8;
    v9 = a2[9];
    v44 = v53;
    v45 = v9;
    v55 = *(a2 + 80);
    v46 = *(a2 + 80);
    v42 = v51;
    v43 = v6;
    sub_100008A40(&v51, &v37, &qword_100076350, &qword_100051160);
    sub_100004944(&qword_100076350, &qword_100051160);
    Binding.wrappedValue.getter();
    v10 = *(&v37 + 1);
    v34 = *&v38;
    v35 = *&v37;
    v11 = *(&v38 + 1);
    v12 = BYTE1(v40);
    DragGesture.Value.location.getter();
    v14 = v13;
    v16 = v15;
    GeometryProxy.size.getter();
    v19 = [objc_opt_self() colorAtLocation:{fmax(fmin(v14 / v17 + v14 / v17 + -1.0, 1.0), -1.0), fmax(fmin(-(v16 / v18 + v16 / v18 + -1.0), 1.0), -1.0)}];
    sub_100019C44(v19, v12, v47);
    sub_1000197D4(3, 0, v48, v11);
    if (v12 == (v49 & 0x100) >> 8 && (v20.f64[0] = v35, v20.f64[1] = v34, v21 = vsubq_f64(vzip1q_s64(v48[0], v48[1]), v20), v22 = vmulq_f64(v21, v21), sqrt(v22.f64[0] + (*&v48[0].i64[1] - v10) * (*&v48[0].i64[1] - v10) + v22.f64[1]) <= 0.001))
    {
      v32 = &v51;
    }

    else
    {
      v23 = UIAccessibilityAnnouncementNotification;
      sub_100018314();
      v25 = v24;
      v26 = [v24 _accessibilityNameWithLuma];

      if (!v26)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = String._bridgeToObjectiveC()();
      }

      UIAccessibilityPostNotification(v23, v26);

      v27 = a2[3];
      v50[0] = a2[2];
      v50[1] = v27;
      v28 = a2[5];
      v30 = a2[2];
      v29 = a2[3];
      v50[2] = a2[4];
      v50[3] = v28;
      v42 = v30;
      v43 = v29;
      v31 = a2[5];
      v44 = a2[4];
      v45 = v31;
      sub_100008A40(v50, &v37, &qword_100075840, &qword_100051680);
      sub_100004944(&qword_100075840, &qword_100051680);
      State.wrappedValue.setter();
      v36[0] = v42;
      v36[1] = v43;
      v36[2] = v44;
      v36[3] = v45;
      sub_1000059D4(v36, &qword_100075840, &qword_100051680);
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v37 = v51;
      v38 = v52;
      Binding.wrappedValue.setter();
      v44 = v39;
      v45 = v40;
      v46 = v41;
      v42 = v37;
      v43 = v38;
      v32 = &v42;
    }

    return sub_1000059D4(v32, &qword_100076350, &qword_100051160);
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_100024EB8(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_1000248E8()
{
  v0 = [objc_opt_self() whiteColor];
  sub_100019F88(v0, v2);
  xmmword_100075720 = v2[0];
  *algn_100075730 = v2[1];
  result = *&v3;
  xmmword_100075740 = v3;
  unk_100075750 = v4;
  return result;
}

double sub_100024950()
{
  v0 = [objc_opt_self() blackColor];
  sub_100019F88(v0, v2);
  xmmword_100075758 = v2[0];
  unk_100075768 = v2[1];
  result = *&v3;
  xmmword_100075778 = v3;
  unk_100075788 = v4;
  return result;
}

__n128 sub_1000249B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100004944(&qword_100075790, &qword_100051460);
  State.init(wrappedValue:)();
  sub_100004944(&qword_100075798, &qword_100051468);
  State.init(wrappedValue:)();
  GestureState.init(wrappedValue:)();
  result = 0u;
  *a4 = v11;
  *(a4 + 16) = v12;
  *(a4 + 24) = *(&v12 + 1);
  *(a4 + 32) = v11;
  *(a4 + 48) = v12;
  *(a4 + 64) = v13;
  *(a4 + 80) = v14;
  v9 = *(a1 + 48);
  *(a4 + 128) = *(a1 + 32);
  *(a4 + 144) = v9;
  *(a4 + 160) = *(a1 + 64);
  v10 = *(a1 + 16);
  *(a4 + 96) = *a1;
  *(a4 + 112) = v10;
  *(a4 + 168) = a2;
  *(a4 + 176) = a3;
  *(a4 + 184) = 0;
  *(a4 + 192) = 0;
  *(a4 + 200) = 0u;
  return result;
}

__n128 sub_100024AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_100024B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100024C54()
{

  return _swift_deallocObject(v0, 232, 7);
}

unint64_t sub_100024CC4()
{
  result = qword_1000757C8;
  if (!qword_1000757C8)
  {
    sub_100008B90(&qword_1000757B0, &unk_100051530);
    sub_100008B90(&qword_1000757A0, &qword_100051520);
    sub_100008B90(&qword_1000757B8, &unk_100051540);
    sub_100008D7C(&qword_1000757C0, &qword_1000757B8, &unk_100051540, &protocol conformance descriptor for GeometryReader<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100024EB8(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000757C8);
  }

  return result;
}

uint64_t sub_100024E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024EB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100024F00()
{
  result = qword_1000757F8;
  if (!qword_1000757F8)
  {
    sub_100008B90(&qword_1000757E8, &qword_1000515B8);
    sub_100024FB8();
    sub_100008D7C(&qword_100074AA8, &qword_100074A88, &qword_10004F220, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000757F8);
  }

  return result;
}

unint64_t sub_100024FB8()
{
  result = qword_100075800;
  if (!qword_100075800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075800);
  }

  return result;
}

uint64_t sub_100025014(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_1000757E0, &qword_1000515A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100025084(double a1, double a2, double a3, double a4)
{
  v5 = fmin(a3, 0.0);
  if (a3 >= a1)
  {
    a3 = a1;
  }

  if (a1 < 0.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = a3;
  }

  v7 = objc_opt_self();
  v8 = [v7 currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = 22.0;
  }

  else
  {
    v10 = 16.5;
  }

  v11 = v6 - v10;
  v12 = [v7 currentDevice];
  [v12 userInterfaceIdiom];

  return v11;
}

uint64_t sub_100025190()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 232) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100025284(uint64_t a1)
{
  type metadata accessor for GeometryProxy();

  return sub_10002443C(a1, (v1 + 16));
}

unint64_t sub_1000252F8()
{
  result = qword_100075818;
  if (!qword_100075818)
  {
    sub_100008B90(&qword_100075810, &qword_100051620);
    sub_100025384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075818);
  }

  return result;
}

unint64_t sub_100025384()
{
  result = qword_100075820;
  if (!qword_100075820)
  {
    sub_100008B90(&qword_100075828, &qword_100051628);
    sub_100025410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075820);
  }

  return result;
}

unint64_t sub_100025410()
{
  result = qword_100075830;
  if (!qword_100075830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075830);
  }

  return result;
}

unint64_t sub_100025470()
{
  result = qword_100075848;
  if (!qword_100075848)
  {
    sub_100008B90(&qword_100075850, &qword_100051688);
    sub_100024CC4();
    sub_100024EB8(&qword_100074BB0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075848);
  }

  return result;
}

double sub_100025560@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_1000255EC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1000256EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100025760()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000257D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100025870()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100025970(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1000259F0()
{
  result = CUIGetDeviceArtworkDisplayGamut();
  byte_10007B138 = result != 0;
  return result;
}

uint64_t sub_100025A2C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

double sub_100025A98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t sub_100025B10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100004944(&qword_100075FB8, &qword_100051910);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-v6];
  v8 = sub_100004944(&qword_100075FC0, &qword_100051918);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  v14 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState____lazy_storage___finalColor;
  swift_beginAccess();
  sub_100008A40(v2 + v14, v13, &qword_100075FC0, &qword_100051918);
  v15 = sub_100004944(&unk_1000759A8, &qword_1000516E0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    return (*(v16 + 32))(a1, v13, v15);
  }

  sub_1000059D4(v13, &qword_100075FC0, &qword_100051918);
  swift_beginAccess();
  sub_100004944(&qword_100075FB0, &qword_100051758);
  Published.projectedValue.getter();
  swift_endAccess();

  sub_100004944(&qword_100075FC8, &qword_100051920);
  sub_100027934();
  Publisher.map<A>(_:)();

  (*(v5 + 8))(v7, v4);
  (*(v16 + 16))(v11, a1, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  swift_beginAccess();
  sub_100027998(v11, v2 + v14);
  return swift_endAccess();
}

void sub_100025E44(__int128 *a1@<X0>, void *a3@<X8>)
{
  if ((a1[3] & 0xFF00) == 0x200)
  {
    v4 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1000195E4(v5);
  }

  *a3 = v4;
}

uint64_t sub_100025F10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v0 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v2[0] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v2[0] != 1)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v2[0];
}

uint64_t sub_10002608C(uint64_t a1)
{
  v86 = a1;
  v2 = sub_100004944(&qword_100075F80, &qword_100051720);
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v83 = &v69 - v3;
  v82 = sub_100004944(&qword_100075648, &qword_1000511B0);
  v4 = __chkstk_darwin(v82);
  v81 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v80 = &v69 - v6;
  v7 = sub_100004944(&qword_100075F88, &qword_100051728);
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v77 = &v69 - v8;
  v76 = sub_100004944(&qword_100075F90, &unk_100051730);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v69 - v9;
  v72 = sub_100004944(&qword_100075F98, &qword_1000525C0);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v69 - v10;
  v11 = sub_100004944(&qword_100075FA0, &qword_100051740);
  v12 = *(v11 - 8);
  v88 = v11;
  v89 = v12;
  __chkstk_darwin(v11);
  v87 = &v69 - v13;
  v14 = sub_100004944(&qword_100076550, &qword_100051748);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v69 - v16;
  v73 = sub_100004944(&qword_100075FA8, &qword_100051750);
  v18 = *(v73 - 1);
  __chkstk_darwin(v73);
  v20 = &v69 - v19;
  v21 = sub_100004944(&qword_100075FB0, &qword_100051758);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v69 - v23;
  v25 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__selectedColor;
  memset(v91, 0, sizeof(v91));
  v92 = 512;
  sub_100004944(&qword_100075798, &qword_100051468);
  Published.init(initialValue:)();
  (*(v22 + 32))(v1 + v25, v24, v21);
  v26 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__fallbackColor;
  v27 = [objc_opt_self() blackColor];
  sub_100019F88(v27, v91);
  Published.init(initialValue:)();
  (*(v18 + 32))(v1 + v26, v20, v73);
  v28 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__allowsNoColor;
  LOBYTE(v91[0]) = 0;
  Published.init(initialValue:)();
  v29 = *(v15 + 32);
  v29(v1 + v28, v17, v14);
  v30 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__maxGain;
  *&v91[0] = 0x3FF0000000000000;
  v31 = v87;
  Published.init(initialValue:)();
  v32 = *(v89 + 32);
  v89 += 32;
  v73 = v32;
  v32(v1 + v30, v31, v88);
  v33 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__useAdjustment;
  LOBYTE(v91[0]) = 1;
  Published.init(initialValue:)();
  v29(v1 + v33, v17, v14);
  v34 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__lockHue;
  LOBYTE(v91[0]) = 0;
  Published.init(initialValue:)();
  v29(v1 + v34, v17, v14);
  v35 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isVolatile;
  LOBYTE(v91[0]) = 0;
  Published.init(initialValue:)();
  v29(v1 + v35, v17, v14);
  v36 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__selectedTab;
  LOBYTE(v91[0]) = 0;
  v37 = v70;
  Published.init(initialValue:)();
  (*(v71 + 32))(v1 + v36, v37, v72);
  v72 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__title;
  sub_100008BD8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v40 = String._bridgeToObjectiveC()();
  v41 = String._bridgeToObjectiveC()();
  v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  *&v91[0] = v43;
  *(&v91[0] + 1) = v45;
  v46 = v74;
  Published.init(initialValue:)();
  (*(v75 + 32))(v1 + v72, v46, v76);
  v47 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__showsAlpha;
  LOBYTE(v91[0]) = 1;
  Published.init(initialValue:)();
  v29(v1 + v47, v17, v14);
  v48 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__showsEyedropper;
  LOBYTE(v91[0]) = 1;
  Published.init(initialValue:)();
  v29(v1 + v48, v17, v14);
  v49 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__suggestedColors;
  *&v91[0] = 0;
  sub_100004944(&qword_100075990, &qword_1000516B8);
  v50 = v77;
  Published.init(initialValue:)();
  (*(v78 + 32))(v1 + v49, v50, v79);
  v51 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__eyedropperShowing;
  LOBYTE(v91[0]) = 0;
  Published.init(initialValue:)();
  v29(v1 + v51, v17, v14);
  v52 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__eyedropperIsFloating;
  LOBYTE(v91[0]) = 0;
  Published.init(initialValue:)();
  v29(v1 + v52, v17, v14);
  v53 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__useLandscapeLayout;
  LOBYTE(v91[0]) = 0;
  Published.init(initialValue:)();
  v29(v1 + v53, v17, v14);
  v54 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isEmbedded;
  LOBYTE(v91[0]) = 0;
  Published.init(initialValue:)();
  v29(v1 + v54, v17, v14);
  v55 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isPopover;
  LOBYTE(v91[0]) = 0;
  Published.init(initialValue:)();
  v29(v1 + v55, v17, v14);
  v56 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isSheet;
  LOBYTE(v91[0]) = 0;
  Published.init(initialValue:)();
  v29(v1 + v56, v17, v14);
  v57 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__width;
  *&v91[0] = 0;
  v58 = v87;
  Published.init(initialValue:)();
  v73(v1 + v57, v58, v88);
  v59 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__showsGridOnly;
  LOBYTE(v91[0]) = 0;
  Published.init(initialValue:)();
  v29(v1 + v59, v17, v14);
  v60 = (v1 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close);
  *v60 = 0;
  v60[1] = 0;
  v61 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__enableDarkGrid;
  LOBYTE(v91[0]) = 0;
  Published.init(initialValue:)();
  v29(v1 + v61, v17, v14);
  v62 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__overrideColorScheme;
  v63 = type metadata accessor for ColorScheme();
  v64 = v80;
  (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
  sub_100008A40(v64, v81, &qword_100075648, &qword_1000511B0);
  v65 = v83;
  Published.init(initialValue:)();
  sub_1000059D4(v64, &qword_100075648, &qword_1000511B0);
  (*(v84 + 32))(v1 + v62, v65, v85);
  v66 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState____lazy_storage___finalColor;
  v67 = sub_100004944(&unk_1000759A8, &qword_1000516E0);
  (*(*(v67 - 8) + 56))(v1 + v66, 1, 1, v67);
  swift_beginAccess();
  v90 = v86;
  sub_100004944(&unk_1000765A0, &qword_1000516B0);
  Published.init(initialValue:)();
  swift_endAccess();
  return v1;
}

uint64_t sub_100026CE0()
{
  v1 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__selectedColor;
  v2 = sub_100004944(&qword_100075FB0, &qword_100051758);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__fallbackColor;
  v4 = sub_100004944(&qword_100075FA8, &qword_100051750);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__allowsNoColor;
  v6 = sub_100004944(&qword_100076550, &qword_100051748);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__maxGain;
  v9 = sub_100004944(&qword_100075FA0, &qword_100051740);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__useAdjustment, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__lockHue, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isVolatile, v6);
  v11 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__selectedTab;
  v12 = sub_100004944(&qword_100075F98, &qword_1000525C0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__favoriteColors;
  v14 = sub_100004944(&qword_100075FD8, &unk_100051DF0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__title;
  v16 = sub_100004944(&qword_100075F90, &unk_100051730);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__showsAlpha, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__showsEyedropper, v6);
  v17 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__suggestedColors;
  v18 = sub_100004944(&qword_100075F88, &qword_100051728);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__eyedropperShowing, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__eyedropperIsFloating, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__useLandscapeLayout, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isEmbedded, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isPopover, v6);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__isSheet, v6);
  v10(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__width, v9);
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__showsGridOnly, v6);
  sub_10000C134(*(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close), *(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState_close + 8));
  v7(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__enableDarkGrid, v6);
  v19 = OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState__overrideColorScheme;
  v20 = sub_100004944(&qword_100075F80, &qword_100051720);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  sub_1000059D4(v0 + OBJC_IVAR____TtC20ColorPickerUIService16ColorPickerState____lazy_storage___finalColor, &qword_100075FC0, &qword_100051918);
  return v0;
}

uint64_t sub_100027188()
{
  sub_100026CE0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ColorPickerState(uint64_t a1)
{
  result = qword_100075940;
  if (!qword_100075940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100027234(uint64_t a1)
{
  sub_100027680(319, &qword_100075950, &qword_100075798, &qword_100051468, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_100027634(319, &qword_100075958, &type metadata for SomeColor);
    if (v2 <= 0x3F)
    {
      sub_100027634(319, &qword_100075960, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_100027634(319, &qword_100075968, &type metadata for CGFloat);
        if (v4 <= 0x3F)
        {
          sub_100027634(319, &qword_100075970, &type metadata for Tab);
          if (v5 <= 0x3F)
          {
            sub_100027680(319, &qword_100075978, &unk_1000765A0, &qword_1000516B0, &type metadata accessor for Published);
            if (v6 <= 0x3F)
            {
              sub_100027634(319, &qword_100075980, &type metadata for String);
              if (v7 <= 0x3F)
              {
                sub_100027680(319, &qword_100075988, &qword_100075990, &qword_1000516B8, &type metadata accessor for Published);
                if (v8 <= 0x3F)
                {
                  sub_100027680(319, &qword_100075998, &qword_100075648, &qword_1000511B0, &type metadata accessor for Published);
                  if (v9 <= 0x3F)
                  {
                    sub_100027680(319, &qword_1000759A0, &unk_1000759A8, &qword_1000516E0, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      swift_updateClassMetadata2();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100027634(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100027680(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100008B90(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000276F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ColorPickerState(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100027730(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v11;
  if ((v11 & 0xFF00) == 0x200)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v3 = v7;
    *a2 = v4;
    *(a2 + 16) = v5;
    *(a2 + 32) = v6;
  }

  else
  {
    *a2 = v8;
    *(a2 + 16) = v9;
    *(a2 + 32) = v10;
  }

  *(a2 + 48) = v3;
}

uint64_t sub_100027838(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100027934()
{
  result = qword_100075FD0;
  if (!qword_100075FD0)
  {
    sub_100008B90(&qword_100075FB8, &qword_100051910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100075FD0);
  }

  return result;
}

uint64_t sub_100027998(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004944(&qword_100075FC0, &qword_100051918);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027B20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100019C08(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = *(v9 + 80);
    result = memmove((v9 + 32), (v9 + 88), 56 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

void sub_100027BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a1;
  v17[1] = a2;
  v6 = sub_100004944(&qword_100076290, &qword_100052268);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  v10 = *(a3 + 16);
  if (v10)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_10002F0F4(0, v10, 0);
    v11 = v19;
    for (i = (a3 + 32); ; i += 4)
    {
      v13 = i[1];
      v18[0] = *i;
      v18[1] = v13;
      v14 = i[3];
      v18[2] = i[2];
      v18[3] = v14;
      (v17[0])(v18);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v19 = v11;
      v16 = v11[2];
      v15 = v11[3];
      if (v16 >= v15 >> 1)
      {
        sub_10002F0F4((v15 > 1), v16 + 1, 1);
        v11 = v19;
      }

      v11[2] = v16 + 1;
      sub_100031594(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_100027D6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      CGFloat._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_100027E14(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004944(&qword_100076290, &qword_100052268);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_10002F0F4(0, v9, 0);
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
        sub_10002F0F4((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_100031594(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void sub_10002820C(uint64_t a1)
{
  v3 = sub_100004944(&qword_100076260, &qword_100052058);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  if (*(a1 + 48) >> 62 == 2)
  {
    v7 = *(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_parent + 16);
    v31[0] = *(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_parent);
    v31[1] = v7;
    v31[2] = *(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_parent + 32);
    v32 = *(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_parent + 48);
    sub_10003126C(v31, v30);
    sub_100028550(a1);
    sub_1000312A4(v31);
    v8 = *(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
    if (v8)
    {
      v9 = v8;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v30[0] = 0;
      v10 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
      (*(v4 + 8))(v6, v3);
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = (v10 + 80);
        v13 = _swiftEmptyArrayStorage;
        do
        {
          if (*v12 >> 62 == 2)
          {
            v28 = *v12;
            v19 = *(v12 - 2);
            v27 = *(v12 - 3);
            v26 = v19;
            v25 = *(v12 - 1);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v30[0] = v13;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10002F0D4(0, v13[2] + 1, 1);
              v13 = v30[0];
            }

            v15 = v13[2];
            v14 = v13[3];
            v16 = v28;
            if (v15 >= v14 >> 1)
            {
              sub_10002F0D4((v14 > 1), v15 + 1, 1);
              v16 = v28;
              v13 = v30[0];
            }

            v13[2] = v15 + 1;
            v17 = &v13[8 * v15];
            v18 = v26;
            v17[2] = v27;
            v17[3] = v18;
            v17[4] = v25;
            v17[5] = v16;
          }

          v12 += 4;
          --v11;
        }

        while (v11);
      }

      else
      {
        v13 = _swiftEmptyArrayStorage;
      }

      v21 = sub_1000286F0(a1, v13);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        swift_beginAccess();
        swift_getKeyPath();
        swift_getKeyPath();

        v24 = static Published.subscript.modify();
        sub_100027B20(v21, v30);
        v24(v29, 0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100028550(uint64_t result)
{
  v2 = *(result + 48);
  if (v2 >> 62 == 2)
  {
    v3 = *(result + 56);
    v4 = *(result + 16);
    v19[0] = *result;
    v19[1] = v4;
    v19[2] = *(result + 32);
    v20 = v2;
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    v17 = v6;
    v18 = v5;
    v14 = v5;
    v15 = v6;
    sub_100008A40(&v18, v13, &qword_100076330, &qword_100050368);
    sub_100008A40(&v17, v13, &qword_100076338, &qword_100052370);
    sub_100004944(&qword_1000762D8, &qword_1000522E8);
    State.wrappedValue.getter();
    v7 = v13[0];
    if (*(v13[0] + 16) && (v8 = sub_10002E89C(v19), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 8 * v8);
    }

    else
    {
      v10 = &_swiftEmptySetSingleton;
    }

    v16 = v10;
    sub_10002F760(&v14, v3);
    v11 = v16;
    v14 = v5;
    v15 = v6;
    State.wrappedValue.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = v13[2];
    sub_10002FDEC(v11, v19, isUniquelyReferenced_nonNull_native);
    v13[0] = v5;
    v13[1] = v6;
    State.wrappedValue.setter();
    sub_1000059D4(&v18, &qword_100076330, &qword_100050368);
    return sub_1000059D4(&v17, &qword_100076338, &qword_100052370);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000286F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    result = 0;
    v5 = (a2 + 88);
    do
    {
      v6 = v5[-4].f64[1];
      v8 = v5[-3];
      v7 = v5[-2];
      v9 = v5[-1].f64[0];
      v10 = LOBYTE(v5[-1].f64[1]);
      v11 = BYTE1(v5[-1].f64[1]);
      v12 = v5->f64[0];
      v13 = HIWORD(v5[-1].f64[1]) >> 14;
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          v16 = v10 | (v11 << 8) | ((*(&v5[-1].f64[1] + 2) | (HIWORD(v5[-1].f64[1]) << 32)) << 16);
          if (*&v8.f64[1] | *&v8.f64[0] | *&v6 | *&v7.f64[0] | *&v7.f64[1] | *&v9 | *&v12)
          {
            v17 = 0;
          }

          else
          {
            v17 = v16 == 0xC000000000000000;
          }

          if (v17)
          {
            v20 = *(a1 + 48);
            if (v20 >> 62 == 3 && v20 == 0xC000000000000000)
            {
              v21 = vorrq_s8(*(a1 + 8), *(a1 + 24));
              if (!(*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | *(a1 + 40) | *(a1 + 56) | *a1))
              {
                return result;
              }
            }
          }

          else
          {
            v18 = *(a1 + 48);
            if (v18 >> 62 == 3 && !*(a1 + 56) && v18 == 0xC000000000000000 && *a1 == 1)
            {
              v19 = vorrq_s8(*(a1 + 16), *(a1 + 32));
              if (!(*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *(a1 + 8)))
              {
                return result;
              }
            }
          }

          goto LABEL_5;
        }

        v14 = *(a1 + 48);
        if (v14 >> 62 != 2 || *a1 != v6 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), v8), vceqq_f64(*(a1 + 24), v7)))) & 1) == 0)
        {
          goto LABEL_5;
        }

        v15 = *(a1 + 56);
        if (v10)
        {
LABEL_3:
          if (v14 & ~(v11 ^ (v14 >> 8)))
          {
            goto LABEL_4;
          }

          goto LABEL_5;
        }
      }

      else
      {
        if (v13)
        {
          if (*(a1 + 48) >> 62 == 1 && *&v6 == *a1)
          {
            return result;
          }

          goto LABEL_5;
        }

        v14 = *(a1 + 48);
        if (v14 >> 62 || *a1 != v6 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), v8), vceqq_f64(*(a1 + 24), v7)))) & 1) == 0)
        {
          goto LABEL_5;
        }

        v15 = *(a1 + 56);
        if (v10)
        {
          goto LABEL_3;
        }
      }

      if (!(v14 & 1 | (*(a1 + 40) != v9)) && (((v14 >> 8) & 1 ^ v11) & 1) == 0)
      {
LABEL_4:
        if (*&v12 == v15)
        {
          return result;
        }
      }

LABEL_5:
      ++result;
      v5 += 4;
    }

    while (v2 != result);
  }

  return 0;
}

void sub_100028938(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  if ([a1 state] == 1)
  {
    v10 = OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_collectionView;
    [a1 locationInView:*(v1 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_collectionView)];
    v11 = *(v1 + v10);
    if (v11)
    {
      v12 = [v11 indexPathForItemAtPoint:?];
      if (!v12)
      {
        return;
      }

      v13 = v12;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v4 + 32))(v9, v7, v3);
      v14 = *(v1 + v10);
      if (v14)
      {
        v15 = v1;
        v16 = v14;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v18 = [v16 cellForItemAtIndexPath:isa];

        if (v18)
        {
          type metadata accessor for FavoriteColorWellCell();
          v19 = swift_dynamicCastClass();
          if (v19)
          {
            v20 = *(v15 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
            if (v20)
            {
              v21 = v19;
              v22 = v20;
              dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

              if ((v26 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL || v26 >> 62 != 2)
              {
                (*(v4 + 8))(v9, v3);

                return;
              }

              sub_10000598C(0, &qword_100076328, UIEditMenuConfiguration_ptr);
              [v21 center];
              v23 = UIEditMenuConfiguration.init(identifier:sourcePoint:)();
              v24 = sub_10003A000();
              [v24 presentEditMenuWithConfiguration:v23];

              goto LABEL_13;
            }

LABEL_17:
            __break(1u);
            return;
          }
        }

LABEL_13:
        (*(v4 + 8))(v9, v3);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}

id sub_100028C9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoriteColorPickerView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100028DB0()
{
  v1 = v0;
  v2 = sub_100004944(&qword_100076260, &qword_100052058);
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin(v2);
  v4 = &v53 - v3;
  v5 = sub_100029638();
  v6 = [objc_allocWithZone(UICollectionView) initWithFrame:v5 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_100004944(&qword_100076258, &qword_100052050);
  UIViewRepresentableContext.coordinator.getter();
  v7 = *&v57[0];
  [v6 setDelegate:*&v57[0]];

  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 clearColor];
  [v9 setBackgroundColor:v10];

  [v9 setAllowsMultipleSelection:1];
  [v9 setAllowsSelection:1];
  [v9 setAlwaysBounceVertical:0];
  [v9 setPrefetchingEnabled:0];
  type metadata accessor for AddColorCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = String._bridgeToObjectiveC()();
  [v9 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v12];

  type metadata accessor for FavoriteColorWellCell();
  v13 = swift_getObjCClassFromMetadata();
  v14 = String._bridgeToObjectiveC()();
  [v9 registerClass:v13 forCellWithReuseIdentifier:v14];

  sub_10000598C(0, &qword_1000762E8, UICollectionViewCell_ptr);
  v15 = swift_getObjCClassFromMetadata();
  v16 = String._bridgeToObjectiveC()();
  [v9 registerClass:v15 forCellWithReuseIdentifier:v16];

  type metadata accessor for RemoveColorCell();
  v17 = swift_getObjCClassFromMetadata();
  v18 = String._bridgeToObjectiveC()();
  [v9 registerClass:v17 forCellWithReuseIdentifier:v18];

  sub_10000598C(0, &qword_1000762F0, UIColorPickerViewController_ptr);
  v19 = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  v21 = v9;
  v22 = [v20 bundleForClass:v19];
  v23 = String._bridgeToObjectiveC()();
  v24 = String._bridgeToObjectiveC()();
  v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  [v21 setAccessibilityLabel:v25];

  UIViewRepresentableContext.coordinator.getter();
  v26 = objc_allocWithZone(UILongPressGestureRecognizer);
  v27 = *&v57[0];
  v28 = [v26 initWithTarget:*&v57[0] action:"showDeleteCallout:"];

  [v21 addGestureRecognizer:v28];
  v29 = swift_allocObject();
  v30 = v21;
  UIViewRepresentableContext.coordinator.getter();
  v31 = *&v57[0];
  swift_unknownObjectWeakInit();

  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  v33 = *(v1 + 16);
  *(v32 + 24) = *v1;
  *(v32 + 40) = v33;
  *(v32 + 56) = *(v1 + 32);
  *(v32 + 72) = *(v1 + 48);
  objc_allocWithZone(sub_100004944(&qword_1000762F8, &qword_1000522F8));
  sub_10003126C(v1, v57);
  v34 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  if (*v1)
  {
    v35 = v34;
    v36 = swift_retain_n();
    sub_10002A3D0(v36, v4);
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    UIViewRepresentableContext.coordinator.getter();
    v53 = v4;
    v37 = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v38 = v58;
    v39 = v57[1];
    v40 = v57[2];
    v41 = &v37[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor];
    *v41 = v57[0];
    *(v41 + 1) = v39;
    *(v41 + 2) = v40;
    *(v41 + 24) = v38;

    UIViewRepresentableContext.coordinator.getter();
    v42 = *&v57[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *&v42[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedFavoriteColors] = v56;

    UIViewRepresentableContext.coordinator.getter();
    v43 = *&v57[0];
    *(*&v57[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSwatchesPerPage) = *(v1 + 32);

    UIViewRepresentableContext.coordinator.getter();
    v44 = *&v57[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *&v44[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSuggestedColors] = v56;

    UIViewRepresentableContext.coordinator.getter();
    v45 = *&v57[0];
    v46 = *(*&v57[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
    *(*&v57[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource) = v35;
    v47 = v35;

    UIViewRepresentableContext.coordinator.getter();
    v48 = *&v57[0];
    v49 = *(*&v57[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_collectionView);
    *(*&v57[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_collectionView) = v30;
    v50 = v30;

    UIViewRepresentableContext.coordinator.getter();
    v51 = *&v57[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    (*(v54 + 8))(v53, v55);
    v51[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_useLandscapeLayout] = v56;

    return v50;
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id sub_100029638()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    v1 = objc_opt_self();
    v2 = [v1 currentDevice];
    v3 = [v2 userInterfaceIdiom];

    v4 = 30.0;
    if (v49[0])
    {
      v4 = 28.0;
    }

    if (v3 == 6)
    {
      v5 = 42.0;
    }

    else
    {
      v5 = v4;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = [v1 currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v8 = 18.0;
    if (v49[0])
    {
      v9 = 16.0;
    }

    else
    {
      v9 = 18.0;
    }

    if (v7 == 6)
    {
      v10 = 20.0;
    }

    else
    {
      v10 = v9;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v49[0])
    {
      v8 = 16.0;
    }

    v11 = objc_opt_self();
    v12 = [v11 absoluteDimension:v5];
    v13 = [v11 absoluteDimension:v5];
    v14 = objc_opt_self();
    v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

    v16 = [objc_opt_self() itemWithLayoutSize:v15];
    v17 = objc_opt_self();
    v18 = [v11 fractionalWidthDimension:1.0];
    v19 = [v11 absoluteDimension:v5];
    v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

    sub_100004944(&qword_1000746F0, &qword_10004E888);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100050D80;
    *(v21 + 32) = v16;
    sub_10000598C(0, &qword_1000762C0, NSCollectionLayoutItem_ptr);
    v47 = v16;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v23 = [v17 horizontalGroupWithLayoutSize:v20 subitems:isa];

    v24 = objc_opt_self();
    v25 = [v24 fixedSpacing:v10];
    [v23 setInterItemSpacing:v25];

    v26 = [v11 fractionalWidthDimension:1.0];
    v27 = [v11 fractionalHeightDimension:1.0];
    v28 = [v14 sizeWithWidthDimension:v26 heightDimension:v27];

    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100050D80;
    *(v29 + 32) = v23;
    v46 = v23;
    v30 = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v17 verticalGroupWithLayoutSize:v28 subitems:v30];

    v32 = [v24 fixedSpacing:v8];
    [v31 setInterItemSpacing:v32];

    v33 = [v11 fractionalWidthDimension:1.0];
    v34 = [v11 fractionalHeightDimension:1.0];
    v35 = [v14 sizeWithWidthDimension:v33 heightDimension:v34];

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100050D80;
    *(v36 + 32) = v31;
    v37 = v31;
    v38 = Array._bridgeToObjectiveC()().super.isa;

    v39 = [v17 horizontalGroupWithLayoutSize:v35 subitems:v38];

    v40 = [objc_opt_self() sectionWithGroup:v39];
    [v40 setInterGroupSpacing:v10];
    [v40 setOrthogonalScrollingBehavior:4];
    v41 = swift_allocObject();
    v42 = *(v48 + 16);
    *(v41 + 16) = *v48;
    *(v41 + 32) = v42;
    *(v41 + 48) = *(v48 + 32);
    *(v41 + 64) = *(v48 + 48);
    aBlock[4] = sub_10003160C;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002CA98;
    aBlock[3] = &unk_10006DBA0;
    v43 = _Block_copy(aBlock);
    sub_10003126C(v48, v49);

    [v40 setVisibleItemsInvalidationHandler:v43];
    _Block_release(v43);
    v44 = [objc_allocWithZone(UICollectionViewCompositionalLayout) initWithSection:v40];

    return v44;
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

char *sub_100029DD0(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t *a5)
{
  v43 = a3[3];
  v44 = a3[1];
  v41 = a3[2];
  v42 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  v9 = v43 >> 62;
  if ((v43 >> 62) <= 1)
  {
    if (v9)
    {
      v34 = String._bridgeToObjectiveC()();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v36 = [a1 dequeueReusableCellWithReuseIdentifier:v34 forIndexPath:isa];

      v37 = objc_opt_self();
      v13 = v36;
      v16 = [v37 clearColor];
      [v13 setBackgroundColor:v16];
    }

    else
    {
      v10 = String._bridgeToObjectiveC()();
      v11 = IndexPath._bridgeToObjectiveC()().super.isa;
      v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v11];

      type metadata accessor for FavoriteColorWellCell();
      v13 = swift_dynamicCastClassUnconditional();
      sub_100018314();
      v14 = *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color];
      *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color] = v15;
      v16 = v15;

      [*&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView] setBackgroundColor:v16];
    }

    return v13;
  }

  if (v9 != 2)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [a1 dequeueReusableCellWithReuseIdentifier:v38 forIndexPath:v39];

    return v13;
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [a1 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:v18];

  type metadata accessor for FavoriteColorWellCell();
  v20 = swift_dynamicCastClassUnconditional();
  if (*a5)
  {
    v13 = v20;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v21 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maxGain;
    *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_maxGain] = v45;
    v22 = OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView;
    v23 = [*&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_colorView] layer];
    v24 = &CADynamicRangeHigh;
    if (*&v13[v21] <= 1.0)
    {
      v24 = &CADynamicRangeAutomatic;
    }

    v25 = *v24;
    [v23 setPreferredDynamicRange:v25];

    v26 = [*&v13[v22] layer];
    [v26 setContentsMaximumDesiredEDR:*&v13[v21]];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1000195E4(v45);
    v27 = *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color];
    *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_color] = v28;
    v29 = v28;

    [*&v13[v22] setBackgroundColor:v29];
    v30 = swift_allocObject();
    *(v30 + 16) = v8;
    *(v30 + 24) = v42;
    *(v30 + 40) = v44;
    *(v30 + 72) = v43;
    *(v30 + 56) = v41;
    v31 = &v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete];
    v33 = *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete];
    v32 = *&v13[OBJC_IVAR____TtC20ColorPickerUIService21FavoriteColorWellCell_onDelete + 8];
    *v31 = sub_100031804;
    v31[1] = v30;
    sub_10000C134(v33, v32);
    return v13;
  }

  type metadata accessor for ColorPickerState(0);
  sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_10002A3D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100004944(&qword_100076260, &qword_100052058);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v64 - v8;
  v10 = sub_100030DA8(_swiftEmptyArrayStorage);
  sub_1000316D4();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10006C388);
  *&v73 = v3;
  v11 = *v3;
  if (!v11)
  {
    goto LABEL_66;
  }

  v67 = v7;
  v68 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  if (v78[0])
  {
    *&v78[0] = 0;
    BYTE8(v78[0]) = 1;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v66 = v11;

  v12 = *&v78[0];
  v69 = v6;
  v70 = v9;
  if (!*&v78[0])
  {
    goto LABEL_26;
  }

  v13 = *(*&v78[0] + 16);
  if (v13)
  {
    *&v72 = a1;
    *&v74 = _swiftEmptyArrayStorage;
    sub_10002F0D4(0, v13, 0);
    v14 = *(v12 + 16);
    if (!v14)
    {
      goto LABEL_60;
    }

    v15 = 0;
    v16 = v74;
    v17 = (v12 + 80);
    while (1)
    {
      if (v15 >= *(v12 + 16))
      {
        goto LABEL_62;
      }

      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      v20 = *(v17 - 1);
      v21 = *v17;
      *&v74 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = v14;
        v71 = v18;
        v65 = v19;
        v64 = v20;
        sub_10002F0D4((v22 > 1), v23 + 1, 1);
        v20 = v64;
        v19 = v65;
        v18 = v71;
        v14 = v25;
        v16 = v74;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + (v23 << 6);
      *(v24 + 32) = v18;
      *(v24 + 48) = v19;
      *(v24 + 64) = v20;
      *(v24 + 80) = v21 & 0x101010101010101;
      *(v24 + 88) = v15;
      if (v13 - 1 == v15)
      {
        break;
      }

      ++v15;
      v17 += 28;
      if (v14 == v15)
      {
        goto LABEL_60;
      }
    }

    *&v78[0] = 0;
    BYTE8(v78[0]) = 1;
    v6 = v69;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    v26 = *(v16 + 16);

    v27 = *(v73 + 32);
    if (v27)
    {
      v28 = v27 - v26 % v27;
      if (!__OFSUB__(v27, v26 % v27))
      {
        if ((v28 & 0x8000000000000000) == 0)
        {
          if (v28)
          {
            v29 = sub_10002EF70(0, 1, 1, _swiftEmptyArrayStorage);
            v30 = 0;
            v31 = *(v29 + 2);
            v32 = v31 << 6;
            do
            {
              v33 = *(v29 + 3);
              v34 = v31 + 1;
              if (v31 >= v33 >> 1)
              {
                v29 = sub_10002EF70((v33 > 1), v34, 1, v29);
              }

              *(v29 + 2) = v34;
              v35 = &v29[v32];
              *(v35 + 4) = v30;
              *(v35 + 10) = 0x4000000000000000;
              v32 += 64;
              v31 = v34;
              ++v30;
            }

            while (v28 != v30);
          }

          *&v78[0] = 0;
          BYTE8(v78[0]) = 1;
          NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
          goto LABEL_25;
        }

        goto LABEL_65;
      }
    }

    else
    {
LABEL_63:
      __break(1u);
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    type metadata accessor for ColorPickerState(0);
    sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

LABEL_25:

LABEL_26:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v36 = *&v78[0];
  v37 = *(*&v78[0] + 16);
  if (v37)
  {
    v38 = 0;
    v77 = *(v73 + 40);
    v39 = _swiftEmptyArrayStorage;
    while (1)
    {
      v40 = v36 + 32 + 56 * v38;
      v78[0] = *v40;
      v78[1] = *(v40 + 16);
      v78[2] = *(v40 + 32);
      v41 = *(v40 + 48);
      v79 = *(v40 + 48);
      v42 = *v40;
      v72 = *(v40 + 16);
      v73 = v42;
      v71 = *(v40 + 32);
      if (*(v10 + 16) && (v43 = sub_10002E89C(v78), (v44 & 1) != 0))
      {
        v45 = *(*(v10 + 56) + 8 * v43);
        v46 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v46 = 0;
        if (__OFADD__(-1, 1))
        {
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
          goto LABEL_63;
        }
      }

      ++v38;
      while (1)
      {
        v74 = v77;
        sub_100004944(&qword_1000762D8, &qword_1000522E8);
        State.wrappedValue.getter();
        v47 = v76;
        if (!*(v76 + 16))
        {
          break;
        }

        v48 = sub_10002E89C(v78);
        if ((v49 & 1) == 0)
        {
          break;
        }

        v50 = *(*(v47 + 56) + 8 * v48);

        if (!*(v50 + 16))
        {
          break;
        }

        v51 = static Hasher._hash(seed:_:)();
        v52 = -1 << *(v50 + 32);
        v53 = v51 & ~v52;
        if (((*(v50 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
        {
          break;
        }

        v54 = ~v52;
        while (*(*(v50 + 48) + 8 * v53) != v46)
        {
          v53 = (v53 + 1) & v54;
          if (((*(v50 + 56 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        if (__OFADD__(v46++, 1))
        {
          goto LABEL_61;
        }
      }

LABEL_46:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_10002EF70(0, *(v39 + 2) + 1, 1, v39);
      }

      v57 = *(v39 + 2);
      v56 = *(v39 + 3);
      if (v57 >= v56 >> 1)
      {
        v39 = sub_10002EF70((v56 > 1), v57 + 1, 1, v39);
      }

      *(v39 + 2) = v57 + 1;
      v58 = &v39[64 * v57];
      v59 = v72;
      *(v58 + 2) = v73;
      *(v58 + 3) = v59;
      *(v58 + 4) = v71;
      *(v58 + 10) = v41 & 0x101010101010101 | 0x8000000000000000;
      *(v58 + 11) = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v74 = v10;
      sub_10002FF54(v46, v78, isUniquelyReferenced_nonNull_native);
      v10 = v74;
      if (v38 == v37)
      {

        v6 = v69;
        goto LABEL_55;
      }

      if (v38 >= *(v36 + 16))
      {
        goto LABEL_59;
      }
    }
  }

LABEL_55:
  *&v74 = 0;
  BYTE8(v74) = 1;
  v61 = v70;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v62 = v68;
  v63 = v67;
  if (v75 << 8 != 512)
  {
    *&v74 = 0;
    BYTE8(v74) = 1;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  (*(v63 + 32))(v62, v61, v6);
}

uint64_t sub_10002AC10(void *a1, void *a2)
{
  v3 = v2;
  v72 = a1;
  v71 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004944(&qword_100076258, &qword_100052050);
  v8 = *(v7 - 8);
  v64 = *(v8 + 64);
  __chkstk_darwin(v7);
  v65 = &v57 - v9;
  v62 = type metadata accessor for IndexPath();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100004944(&qword_100076260, &qword_100052058);
  v11 = *(v63 - 8);
  __chkstk_darwin(v63);
  v13 = &v57 - v12;
  UIViewRepresentableContext.coordinator.getter();
  v14 = *(aBlock[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor + 16);
  v59 = *(aBlock[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor);
  v58 = v14;
  v57 = *(aBlock[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor + 32);
  v15 = *(aBlock[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor + 48);

  v16 = *v2;
  if (!*v2)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  v17 = v76 & 0xFF00;
  if ((v15 & 0xFF00) == 0x200)
  {
    if (v17 != 512)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v17 == 512)
    {
      goto LABEL_8;
    }

    v78[0] = v59;
    v78[1] = v58;
    v78[2] = v57;
    v79 = v15;
    v80[0] = v73;
    v80[1] = v74;
    v80[2] = v75;
    v81 = v76;
    if ((sub_100019DF8(v78, v80) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  UIViewRepresentableContext.coordinator.getter();
  v18 = *(v73 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_allowsNoColor);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18 != LOBYTE(aBlock[0]))
  {
LABEL_8:

    goto LABEL_9;
  }

  UIViewRepresentableContext.coordinator.getter();
  v50 = v73;
  v51 = *(v73 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedFavoriteColors);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v52 = sub_10002E744(v51, aBlock[0]);

  if ((v52 & 1) == 0 || (UIViewRepresentableContext.coordinator.getter(), v53 = *(v73 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSwatchesPerPage), v73, v53 != *(v3 + 32)))
  {

    goto LABEL_9;
  }

  UIViewRepresentableContext.coordinator.getter();
  v54 = v73;
  v55 = *(v73 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSuggestedColors);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v55)
  {
    if (!aBlock[0])
    {
LABEL_27:

      goto LABEL_11;
    }

    goto LABEL_26;
  }

  if (!aBlock[0])
  {
LABEL_26:

    goto LABEL_9;
  }

  v56 = sub_10002E744(v55, aBlock[0]);

  if (v56)
  {
    goto LABEL_27;
  }

LABEL_9:
  sub_10002A3D0(v16, v13);

  UIViewRepresentableContext.coordinator.getter();
  v19 = v73;
  v20 = *(v73 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
  v21 = v20;

  if (v20)
  {
    UIViewRepresentableContext.coordinator.getter();

    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    UIViewRepresentableContext.coordinator.getter();
    v22 = aBlock[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v23 = v76;
    v24 = v74;
    v25 = v75;
    v26 = &v22[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_selectedColor];
    *v26 = v73;
    *(v26 + 1) = v24;
    *(v26 + 2) = v25;
    *(v26 + 24) = v23;

    UIViewRepresentableContext.coordinator.getter();
    v27 = v73;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v27[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_allowsNoColor] = aBlock[0];

    UIViewRepresentableContext.coordinator.getter();
    v28 = v73;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *&v28[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedFavoriteColors] = aBlock[0];

    UIViewRepresentableContext.coordinator.getter();
    v29 = v73;
    *(v73 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSwatchesPerPage) = *(v3 + 32);

    UIViewRepresentableContext.coordinator.getter();
    v30 = v73;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    (*(v11 + 8))(v13, v63);
    *&v30[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_appliedSuggestedColors] = aBlock[0];

LABEL_11:
    UIViewRepresentableContext.coordinator.getter();
    v31 = *(v73 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_useLandscapeLayout);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v32 = v72;
    if (v31 == LOBYTE(aBlock[0]))
    {
    }

    else
    {
      v33 = sub_100029638();
      [v32 setCollectionViewLayout:v33];

      UIViewRepresentableContext.coordinator.getter();
      v34 = v73;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v34[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_useLandscapeLayout] = aBlock[0];
    }

    sub_10002BA48(v32, a2);
    UIViewRepresentableContext.coordinator.getter();
    v35 = v73;
    *(v73 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_isEditing) = 0;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (BYTE8(v73))
    {
      goto LABEL_17;
    }

    if ((v73 * *(v3 + 32)) >> 64 == (v73 * *(v3 + 32)) >> 63)
    {
      v36 = v60;
      IndexPath.init(item:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v61 + 8))(v36, v62);
      [v32 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];

LABEL_17:
      sub_10000598C(0, &qword_100076268, OS_dispatch_queue_ptr);
      v38 = static OS_dispatch_queue.main.getter();
      v39 = v65;
      (*(v8 + 16))(v65, a2, v7);
      v40 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v41 = (v64 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      (*(v8 + 32))(&v42[v40], v39, v7);
      v43 = &v42[v41];
      v44 = *(v3 + 16);
      *v43 = *v3;
      *(v43 + 1) = v44;
      *(v43 + 2) = *(v3 + 32);
      *(v43 + 6) = *(v3 + 48);
      aBlock[4] = sub_1000313C8;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002C56C;
      aBlock[3] = &unk_10006DB50;
      v45 = _Block_copy(aBlock);
      sub_10003126C(v3, &v73);

      v46 = v66;
      static DispatchQoS.unspecified.getter();
      *&v73 = _swiftEmptyArrayStorage;
      sub_10003154C(&qword_100076270, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100004944(&qword_100076278, &qword_100052210);
      sub_100031478();
      v47 = v68;
      v48 = v71;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v45);

      (*(v70 + 8))(v47, v48);
      return (*(v67 + 8))(v46, v69);
    }

    __break(1u);
  }

  __break(1u);
LABEL_30:
  type metadata accessor for ColorPickerState(0);
  sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_10002BA48(void *a1, void *a2)
{
  v88 = a1;
  v4 = sub_100004944(&qword_100076290, &qword_100052268);
  v84 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v86 = &v74 - v8;
  v87 = type metadata accessor for IndexPath();
  v9 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004944(&qword_100076260, &qword_100052058);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v74 - v13;
  if (!*v2)
  {
    goto LABEL_43;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v15 = v93;
  v85 = a2;
  if ((v93 & 0xFF00) != 0x200)
  {
    v17 = v12;
    v81 = v89;
    v18 = v90;
    v19 = v91;
    v20 = v92;
    sub_100004944(&qword_100076258, &qword_100052050);
    UIViewRepresentableContext.coordinator.getter();
    v21 = v89.f64[0];
    v22 = *(*&v89.f64[0] + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
    v23 = v22;

    if (v22)
    {
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v24 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      (*(v17 + 8))(v14, v11);
      v25 = *(v24 + 16);
      v80 = v24;
      if (!v25)
      {
        v16 = _swiftEmptyArrayStorage;
LABEL_23:

        goto LABEL_24;
      }

      v26 = (v24 + 88);
      v16 = _swiftEmptyArrayStorage;
      v27 = v81;
      while (1)
      {
        v30 = *(v26 - 1);
        if (((v30 >> 14) | 2) == 2)
        {
          v31 = *(v26 - 7);
          if (((v15 & 0x100) == 0) != (v31 & 1))
          {
            v32 = *(v26 - 7);
            v33 = *(v26 - 5);
            v34 = vsubq_f64(v27, v32);
            if (sqrt(vaddvq_f64(vmulq_f64(v34, v34)) + (v18 - v33) * (v18 - v33)) <= 0.001)
            {
              v35 = *(v26 - 2);
              if (vabdd_f64(v19, *&v35) <= 0.001)
              {
                v36 = *(v26 - 2);
                v37 = *(v26 - 6);
                v38 = *v26;
                if (v15)
                {
                  if (*(v26 - 1))
                  {
                    goto LABEL_18;
                  }
                }

                else if ((*(v26 - 1) & 1) == 0 && vabdd_f64(v20, v36) <= 0.001)
                {
LABEL_18:
                  v76 = *(v26 - 8);
                  v77 = v36;
                  v75 = v38;
                  v78 = v35;
                  v79 = v32;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v82 = v9;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v16 = sub_10002EF70(0, *(v16 + 2) + 1, 1, v16);
                  }

                  v40 = v78;
                  v42 = *(v16 + 2);
                  v41 = *(v16 + 3);
                  v43 = v42 + 1;
                  v27 = v81;
                  v44 = v79;
                  v45 = v77;
                  v46 = v76;
                  if (v42 >= v41 >> 1)
                  {
                    v74 = v42 + 1;
                    v47 = sub_10002EF70((v41 > 1), v42 + 1, 1, v16);
                    v43 = v74;
                    v46 = v76;
                    v45 = v77;
                    v40 = v78;
                    v44 = v79;
                    v27 = v81;
                    v16 = v47;
                  }

                  *(v16 + 2) = v43;
                  v28 = &v16[64 * v42];
                  *(v28 + 2) = v44;
                  *(v28 + 6) = v33;
                  v29 = v37 & 0xFFFF0000FFFFFFFFLL | (v30 << 32);
                  *(v28 + 56) = v40;
                  *(v28 + 9) = v45;
                  v28[80] = v46;
                  v28[81] = v31;
                  *(v28 + 82) = v29;
                  *(v28 + 43) = WORD2(v29);
                  *(v28 + 11) = v75;
                  v9 = v82;
                }
              }
            }
          }
        }

        v26 += 8;
        if (!--v25)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
LABEL_43:
    type metadata accessor for ColorPickerState(0);
    sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  v16 = &off_10006C470;
LABEL_24:
  v48 = [v88 indexPathsForSelectedItems];
  if (v48)
  {
    v49 = v48;
    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v48);
  *(&v74 - 2) = v85;
  sub_100027BC8(sub_10003152C, (&v74 - 4), v16);
  v52 = v51;
  v53 = sub_100027E14(v50);
  v54 = sub_10002E328(v53, v52);

  if (v54)
  {
  }

  else
  {
    *&v81.f64[0] = v16;
    v55 = v50[2];
    v85 = v52;
    if (v55)
    {
      v80 = v7;
      v82 = v9;
      v56 = *(v9 + 16);
      v57 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      *&v79.f64[0] = v50;
      v58 = v50 + v57;
      v59 = *(v9 + 72);
      v60 = (v9 + 8);
      v62 = v87;
      v61 = v88;
      v63 = v83;
      do
      {
        v56(v63, v58, v62);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v61 deselectItemAtIndexPath:isa animated:0];

        (*v60)(v63, v62);
        v58 += v59;
        --v55;
      }

      while (v55);

      v7 = v80;
      v65 = v84;
      v52 = v85;
      v9 = v82;
    }

    else
    {

      v65 = v84;
    }

    v66 = *(v52 + 16);
    v67 = v86;
    if (v66)
    {
      v68 = v52 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v69 = *(v65 + 72);
      v70 = (v9 + 48);
      v71 = (v9 + 8);
      do
      {
        sub_100008A40(v68, v67, &qword_100076290, &qword_100052268);
        sub_100008A40(v67, v7, &qword_100076290, &qword_100052268);
        v73 = v87;
        if ((*v70)(v7, 1, v87) == 1)
        {
          v72.super.isa = 0;
        }

        else
        {
          v72.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*v71)(v7, v73);
        }

        [v88 selectItemAtIndexPath:v72.super.isa animated:0 scrollPosition:0];

        v67 = v86;
        sub_1000059D4(v86, &qword_100076290, &qword_100052268);
        v68 += v69;
        --v66;
      }

      while (v66);
    }
  }
}

void sub_10002C268(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004944(&qword_100076260, &qword_100052058);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  sub_100004944(&qword_100076258, &qword_100052050);
  UIViewRepresentableContext.coordinator.getter();
  v7 = v16;
  v8 = *(v16 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource);
  v9 = v8;

  if (!v8)
  {
    goto LABEL_14;
  }

  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v10 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  (*(v4 + 8))(v6, v3);
  v11 = *(v10 + 16);

  v12 = ceil(v11 / *(a2 + 32));
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v13 = v12;
  v16 = *(a2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  if (v14 == v13)
  {
    sub_1000059D4(&v16, &qword_100076288, &qword_100052260);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v13;
    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v15 == 1)
  {
    sub_1000059D4(&v16, &qword_100076288, &qword_100052260);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = 0;
    v15 = 1;
    static Published.subscript.setter();
  }
}

double sub_10002C56C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_10002C5B0(_OWORD *a1)
{
  sub_100004944(&qword_100076258, &qword_100052050);
  UIViewRepresentableContext.coordinator.getter();
  v1 = *&v3[OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView11Coordinator_dataSource];
  v2 = v1;

  if (v1)
  {
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10002C658(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_msgSend(a3 "container")];
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = a1 / v16;
  if (COERCE__INT64(fabs(a1 / v16)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v23 = v8;
  v18 = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v24 != v18)
  {
    sub_10000598C(0, &qword_100076268, OS_dispatch_queue_ptr);
    v19 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    v21 = *(a4 + 16);
    *(v20 + 16) = *a4;
    *(v20 + 32) = v21;
    *(v20 + 48) = *(a4 + 32);
    *(v20 + 64) = *(a4 + 48);
    *(v20 + 72) = v18;
    aBlock[4] = sub_1000316C8;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002C56C;
    aBlock[3] = &unk_10006DBF0;
    v22 = _Block_copy(aBlock);
    sub_10003126C(a4, &v24);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_10003154C(&qword_100076270, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100004944(&qword_100076278, &qword_100052210);
    sub_100031478();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v23 + 8))(v10, v7);
    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_10002CA24(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10002CA98(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = *(a1 + 32);
  sub_100004944(&qword_1000762C8, &qword_100052298);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRetain();
  v8(v9, a3, a4, a5);

  return swift_unknownObjectRelease();
}

uint64_t sub_10002CB54()
{
  v1 = v0[6];
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      goto LABEL_5;
    }

    if (v1 == 0xC000000000000000 && (*v0 | v0[7] | v0[1] | v0[2] | v0[3] | v0[4] | v0[5]) == 0)
    {
      return 0x6F74747542646441;
    }

    else
    {
      return 0x754265766F6D6552;
    }
  }

  else
  {
    if (!v2)
    {
      _StringGuts.grow(_:)(17);
      v3._countAndFlagsBits = 0x6574736567677553;
      v3._object = 0xEF20726F6C6F4364;
      String.append(_:)(v3);
LABEL_5:
      _print_unlocked<A, B>(_:_:)();
      return 0;
    }

    return 0x692072656C6C6946;
  }
}

Swift::Int sub_10002CCD4()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {
      Hasher._combine(_:)(1uLL);
      v3 = v1;
      goto LABEL_14;
    }

    v5 = 0;
    goto LABEL_6;
  }

  if (v4 == 2)
  {
    v5 = 2;
LABEL_6:
    Hasher._combine(_:)(v5);
    sub_10001910C();
    goto LABEL_14;
  }

  if (v0[2] | v0[1] | v1 | v0[3] | v0[4] | v0[5] | v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2 == 0xC000000000000000;
  }

  if (v6)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

LABEL_14:
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10002CDE8()
{
  v1 = *v0;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {
      Hasher._combine(_:)(1uLL);
      v3 = v1;
      goto LABEL_14;
    }

    v5 = 0;
    goto LABEL_6;
  }

  if (v4 == 2)
  {
    v5 = 2;
LABEL_6:
    Hasher._combine(_:)(v5);
    sub_10001910C();
    goto LABEL_14;
  }

  if (v0[2] | v0[1] | v1 | v0[3] | v0[4] | v0[5] | v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2 == 0xC000000000000000;
  }

  if (v6)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

LABEL_14:
  Hasher._combine(_:)(v3);
}

Swift::Int sub_10002CED0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  Hasher.init(_seed:)();
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (v10)
    {
      Hasher._combine(_:)(1uLL);
      v8 = v2;
      goto LABEL_14;
    }

    v11 = 0;
    goto LABEL_6;
  }

  if (v10 == 2)
  {
    v11 = 2;
LABEL_6:
    Hasher._combine(_:)(v11);
    sub_10001910C();
    goto LABEL_14;
  }

  if (v5 | v3 | v2 | v4 | v6 | v7 | v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = v9 == 0xC000000000000000;
  }

  if (v12)
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

LABEL_14:
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

BOOL sub_10002CFE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_100030EC4(v7, v8);
}

uint64_t sub_10002D044(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10002D0B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002D128()
{
  v1 = OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView5Model__numberOfPages;
  v2 = sub_100004944(&qword_100076318, &qword_100052358);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView5Model__currentPage, v2);
  v4 = OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView5Model__pageControlPendingPage;
  v5 = sub_100004944(&qword_100076320, &unk_100052360);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for FavoriteColorPickerView.Model(uint64_t a1)
{
  result = qword_100076100;
  if (!qword_100076100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002D2A0(uint64_t a1)
{
  sub_10002D36C();
  if (v1 <= 0x3F)
  {
    sub_10002D3BC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10002D36C()
{
  if (!qword_100076110)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100076110);
    }
  }
}

void sub_10002D3BC(uint64_t a1)
{
  if (!qword_100076118)
  {
    sub_100008B90(&unk_100076120, &qword_100051E38);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100076118);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for FavoriteColorPickerView.ColorItem(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for FavoriteColorPickerView.ColorItem(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for FavoriteColorPickerView.ColorItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 2) & 0xFFFFFF80 | (*(a1 + 48) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for FavoriteColorPickerView.ColorItem(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002D520(uint64_t a1)
{
  v1 = *(a1 + 48) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10002D54C(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    *(result + 48) = *(result + 48) & 0x101 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = xmmword_100051E00;
  }

  return result;
}

__n128 sub_10002D5A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10002D5BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10002D604(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10002D660()
{
  v1 = sub_100004944(&qword_100076320, &unk_100052360);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = sub_100004944(&qword_100076318, &qword_100052358);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView5Model__numberOfPages;
  v14 = 2;
  Published.init(initialValue:)();
  v10 = *(v6 + 32);
  v10(v0 + v9, v8, v5);
  v11 = OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView5Model__currentPage;
  v14 = 0;
  Published.init(initialValue:)();
  v10(v0 + v11, v8, v5);
  v12 = OBJC_IVAR____TtCV20ColorPickerUIService23FavoriteColorPickerView5Model__pageControlPendingPage;
  v14 = 0;
  v15 = 1;
  sub_100004944(&unk_100076120, &qword_100051E38);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v12, v4, v1);
  return v0;
}

uint64_t sub_10002D874@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FavoriteColorPickerView.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10002D93C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  v9[2] = *(v1 + 32);
  v10 = *(v1 + 48);
  v4 = *&v9[0];
  if (*&v9[0])
  {
    v5 = objc_allocWithZone(type metadata accessor for FavoriteColorPickerView.Coordinator());

    sub_10003126C(v9, v8);
    v6 = sub_1000310DC(v9, v4);

    result = sub_1000312A4(v9);
    *a1 = v6;
  }

  else
  {
    type metadata accessor for ColorPickerState(0);
    sub_10003154C(&qword_100076250, type metadata accessor for ColorPickerState, &unk_1000516E8);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002DA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100031840();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10002DA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100031840();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10002DAF4(uint64_t a1)
{
  sub_100031840();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10002DB20()
{
  result = qword_100076240;
  if (!qword_100076240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076240);
  }

  return result;
}

unint64_t sub_10002DB78()
{
  result = qword_100076248;
  if (!qword_100076248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100076248);
  }

  return result;
}

void sub_10002DBCC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10002DC4C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10002DCC8@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_10002DD58(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10002DDF4(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10002DE74(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10002DEE8@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_10002DF68(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10002DFE4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10002E064(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10002E11C(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t sub_10002E1AC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10002E21C(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t sub_10002E2A4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10002E328(uint64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for IndexPath();
  v4 = *(v39 - 8);
  __chkstk_darwin(v39);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004944(&qword_100076290, &qword_100052268);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v38 = &v30 - v8;
  v37 = sub_100004944(&qword_1000762A0, &qword_100052278);
  __chkstk_darwin(v37);
  v10 = &v30 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = (v4 + 48);
  v33 = (v4 + 32);
  v34 = (v4 + 8);
  v16 = *(v7 + 72);
  v17 = v38;
  v31 = (v4 + 48);
  v32 = v16;
  while (1)
  {
    v18 = *(v37 + 48);
    sub_100008A40(v13, v10, &qword_100076290, &qword_100052268);
    sub_100008A40(v14, &v10[v18], &qword_100076290, &qword_100052268);
    v19 = *v15;
    if ((*v15)(v10, 1, v39) != 1)
    {
      break;
    }

    if (v19(&v10[v18], 1, v39) != 1)
    {
      goto LABEL_14;
    }

    sub_1000059D4(v10, &qword_100076290, &qword_100052268);
LABEL_5:
    v14 += v16;
    v13 += v16;
    if (!--v11)
    {
      return 1;
    }
  }

  v20 = v10;
  v21 = v10;
  v22 = v17;
  v23 = v21;
  sub_100008A40(v20, v22, &qword_100076290, &qword_100052268);
  if (v19(&v23[v18], 1, v39) != 1)
  {
    v24 = v35;
    v25 = v39;
    (*v33)(v35, &v23[v18], v39);
    sub_10003154C(&qword_1000762A8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *v34;
    v27 = v38;
    (*v34)(v24, v25);
    v28 = v23;
    v17 = v27;
    v26(v27, v25);
    v15 = v31;
    v16 = v32;
    sub_1000059D4(v28, &qword_100076290, &qword_100052268);
    v10 = v28;
    if ((v36 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  (*v34)(v22, v39);
  v10 = v23;
LABEL_14:
  sub_1000059D4(v10, &qword_1000762A0, &qword_100052278);
  return 0;
}

uint64_t sub_10002E744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 81);
  for (i = (a1 + 81); ; i += 56)
  {
    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(i - 49), *(v3 - 49)), vceqq_f64(*(i - 33), *(v3 - 33))))) & 1) == 0 || *(i - 17) != *(v3 - 17))
    {
      break;
    }

    result = 0;
    if (*(i - 1))
    {
      if (!*(v3 - 1))
      {
        return result;
      }
    }

    else if ((*(v3 - 1) & 1) != 0 || *(i - 9) != *(v3 - 9))
    {
      return result;
    }

    if ((*i ^ *v3))
    {
      return result;
    }

    v3 += 56;
    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_10002E80C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10002E908(a1, v2);
}

unint64_t sub_10002E89C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10001910C();
  v2 = Hasher._finalize()();

  return sub_10002EA0C(a1, v2);
}

unint64_t sub_10002E908(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_10002EA0C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v8 = *(v2 + 48) + 56 * result;
      if (*v8 == *a1 && *(v8 + 8) == *(a1 + 8) && *(v8 + 16) == *(a1 + 16) && *(v8 + 24) == *(a1 + 24) && *(v8 + 32) == *(a1 + 32))
      {
        v9 = *(v8 + 49);
        if (*(v8 + 48))
        {
          if (*(a1 + 48))
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (*(v8 + 40) == *(a1 + 40))
          {
            v7 = *(a1 + 48);
          }

          else
          {
            v7 = 1;
          }

          if ((v7 & 1) == 0)
          {
LABEL_7:
            if (((v9 ^ *(a1 + 49)) & 1) == 0)
            {
              return result;
            }
          }
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

char *sub_10002EB00(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004944(&qword_100076300, &qword_100051020);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10002EC04(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004944(&qword_100076310, &qword_100052350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_10002ED1C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004944(&unk_100076360, &unk_1000523E0);
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
    sub_100004944(&unk_1000765A0, &qword_1000516B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002EE50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004944(&qword_100075698, &qword_100051388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002EF70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004944(&qword_100076298, &qword_100052270);
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

char *sub_10002F074(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002F114(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002F094(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002F22C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10002F0B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002F338(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002F0D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002F46C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10002F0F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002F570(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002F114(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004944(&qword_100076310, &qword_100052350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_10002F22C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004944(&qword_100076358, &qword_1000523D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10002F338(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004944(&unk_100076360, &unk_1000523E0);
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
    sub_100004944(&unk_1000765A0, &qword_1000516B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002F46C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004944(&qword_100076298, &qword_100052270);
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

void *sub_10002F570(void *result, int64_t a2, char a3, void *a4)
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

  sub_100004944(&unk_1000762B0, qword_100052280);
  v10 = *(sub_100004944(&qword_100076290, &qword_100052268) - 8);
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
  v15 = *(sub_100004944(&qword_100076290, &qword_100052268) - 8);
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

uint64_t sub_10002F760(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1000305A8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_10002F840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004944(&qword_100076340, &qword_100052378);
  v32 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 56 * v20;
      v33 = *v21;
      v34 = *(v21 + 16);
      v35 = *(v21 + 32);
      v36 = *(v21 + 48);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      sub_10001910C();
      v23 = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      *v16 = v33;
      *(v16 + 16) = v34;
      *(v16 + 32) = v35;
      *(v16 + 48) = v36;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10002FB24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004944(&qword_1000762E0, &qword_1000522F0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v4;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 56 * v20;
      v22 = *(*(v5 + 56) + 8 * v20);
      v36 = *(v21 + 48);
      v34 = *(v21 + 16);
      v35 = *(v21 + 32);
      v33 = *v21;
      Hasher.init(_seed:)();
      sub_10001910C();
      v23 = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      *v16 = v33;
      *(v16 + 16) = v34;
      *(v16 + 32) = v35;
      *(v16 + 48) = v36;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_10002FDEC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10002E89C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10002F840(v14, a3 & 1);
      v9 = sub_10002E89C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_100030094();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v20 = v19[6] + 56 * v9;
    v21 = *(a2 + 16);
    *v20 = *a2;
    *(v20 + 16) = v21;
    *(v20 + 32) = *(a2 + 32);
    *(v20 + 48) = *(a2 + 48);
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

unint64_t sub_10002FF54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10002E89C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100030214();
    result = v17;
    goto LABEL_8;
  }

  sub_10002FB24(v14, a3 & 1);
  result = sub_10002E89C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    v20 = v19[6] + 56 * result;
    v21 = *(a2 + 16);
    *v20 = *a2;
    *(v20 + 16) = v21;
    *(v20 + 32) = *(a2 + 32);
    *(v20 + 48) = *(a2 + 48);
    *(v19[7] + 8 * result) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}