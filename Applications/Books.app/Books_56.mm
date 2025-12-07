uint64_t sub_1006DC2C0@<X0>(uint64_t a2@<X8>)
{
  v26 = a2;
  v2 = sub_10079C104();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v23[-v7];
  sub_1001F1160(&qword_100ADBD40, &qword_10081A5B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10080EFF0;
  *(v9 + 32) = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v10 = sub_10079DE24();

  v25 = v9;
  *(v9 + 40) = v10;
  sub_1006DBA6C(v8);
  v11 = *(v3 + 104);
  v24 = enum case for LayoutDirection.leftToRight(_:);
  v11(v5);
  LOBYTE(v10) = sub_10079C0F4();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  if (v10)
  {
    sub_10079E644();
  }

  else
  {
    sub_10079E654();
  }

  sub_1006DBA6C(v8);
  (v11)(v5, v24, v2);
  v13 = sub_10079C0F4();
  v12(v5, v2);
  v12(v8, v2);
  if (v13)
  {
    sub_10079E654();
  }

  else
  {
    sub_10079E644();
  }

  sub_10079E364();
  sub_10079BFE4();
  type metadata accessor for ClipHorizontallyWithFadeout(0);
  sub_10079E474();
  sub_10079BE54();
  *&v34 = v40;
  v14 = v37;
  v29 = v37;
  v15 = v26;
  *(v26 + 80) = v37;
  v16 = v38;
  v17 = v39;
  v32 = v38;
  v33 = v39;
  v19 = v35;
  v18 = v36;
  v20 = v34;
  v28[3] = v35;
  v28[4] = v36;
  v28[0] = v38;
  v28[1] = v39;
  v15[3] = v35;
  v15[4] = v18;
  v28[2] = v34;
  v21 = v34;
  *v15 = v16;
  v15[1] = v17;
  v15[2] = v21;
  v30[0] = v32;
  v30[1] = v33;
  v31 = v14;
  v30[3] = v19;
  v30[4] = v36;
  v30[2] = v20;
  sub_1000077D8(v28, &v27, &qword_100ADBD50, &qword_10081A5C0);
  return sub_100007840(v30, &qword_100ADBD50, &qword_10081A5C0);
}

uint64_t sub_1006DC600@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = sub_10079D254();
  v5 = sub_1001F1160(&qword_100AF3600, &qword_10083FF90);
  return sub_1006DBE94(a1, v2, &a2[*(v5 + 44)]);
}

void sub_1006DC65C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_10079BC44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = *a1;
  v11 = objc_opt_self();
  sub_1001F1160(&qword_100AF3500, &qword_10083FD18);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10080B690;
  *(v12 + 32) = sub_10000A7C4(0, &qword_100AF3508, UIAlertController_ptr);
  sub_1001F1160(&unk_100AF3510, &qword_10083FD20);
  isa = sub_1007A25D4().super.isa;

  v19 = [v11 appearanceWhenContainedInInstancesOfClasses:isa];

  if (v10 == 1)
  {
    sub_10000A7C4(0, &qword_100AEEF60, UIColor_ptr);
    ChromeStyle.accentColor.getter();
    v14 = sub_1007A3144();
    [v19 setTintColor:v14];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v9);

    (*(v4 + 104))(v6, enum case for ColorScheme.dark(_:), v3);
    LOBYTE(v14) = sub_10079BC34();
    v15 = *(v4 + 8);
    v15(v6, v3);
    v15(v9, v3);
    if (v14)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    [v19 setOverrideUserInterfaceStyle:v16];
  }

  else
  {
    [v19 setTintColor:0];
    [v19 setOverrideUserInterfaceStyle:0];
    v17 = v19;
  }
}

uint64_t sub_1006DC978(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
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

uint64_t sub_1006DC9CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for ClipHorizontallyWithFadeout(uint64_t a1)
{
  result = qword_100AF35A0;
  if (!qword_100AF35A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006DCAD0(uint64_t a1)
{
  sub_1001F4FE8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1006DCB54()
{
  result = qword_100AF35E0;
  if (!qword_100AF35E0)
  {
    sub_1001F1234(&qword_100AF3528, &qword_10083FE70);
    sub_100005920(&qword_100AF35E8, &qword_100AF3520, &qword_10083FE68, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF35E0);
  }

  return result;
}

unint64_t sub_1006DCC0C()
{
  result = qword_100AF35F0;
  if (!qword_100AF35F0)
  {
    sub_1001F1234(&unk_100AF3538, &unk_10083FE80);
    sub_100005920(&qword_100AF35F8, &qword_100AF3530, &qword_10083FE78, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF35F0);
  }

  return result;
}

unint64_t sub_1006DCCFC()
{
  result = qword_100AF3648;
  if (!qword_100AF3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3648);
  }

  return result;
}

uint64_t sub_1006DCD50(uint64_t a1)
{
  v3 = *(sub_1001F1160(&qword_100AF3650, &qword_10083FFD8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_1006DB858(a1, v4, v5);
}

unint64_t sub_1006DCDFC()
{
  result = qword_100AF3680;
  if (!qword_100AF3680)
  {
    sub_1001F1234(&qword_100AF3670, &qword_10083FFF8);
    sub_1006DCE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3680);
  }

  return result;
}

unint64_t sub_1006DCE88()
{
  result = qword_100AF3688;
  if (!qword_100AF3688)
  {
    sub_1001F1234(&qword_100AF3668, &qword_10083FFF0);
    sub_1006DCF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3688);
  }

  return result;
}

unint64_t sub_1006DCF14()
{
  result = qword_100AF3690;
  if (!qword_100AF3690)
  {
    sub_1001F1234(&qword_100AF3678, &qword_100840000);
    sub_100005920(&qword_100AF3698, &qword_100AF3650, &qword_10083FFD8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3690);
  }

  return result;
}

uint64_t sub_1006DCFDC(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1006DD038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

unint64_t sub_1006DD098()
{
  result = qword_100AF36B0;
  if (!qword_100AF36B0)
  {
    sub_1001F1234(&qword_100AF3660, &qword_10083FFE8);
    sub_1006DD150();
    sub_100005920(&qword_100AF36C0, &qword_100AF36C8, &qword_100840090, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF36B0);
  }

  return result;
}

unint64_t sub_1006DD150()
{
  result = qword_100AF36B8;
  if (!qword_100AF36B8)
  {
    sub_1001F1234(&qword_100AF3658, &qword_10083FFE0);
    sub_100005920(&qword_100AF3698, &qword_100AF3650, &qword_10083FFD8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF36B8);
  }

  return result;
}

unint64_t sub_1006DD240()
{
  result = qword_100AF36E8;
  if (!qword_100AF36E8)
  {
    sub_1001F1234(&qword_100AEFE48, &unk_100840140);
    sub_100005920(&unk_100AF36F0, &qword_100AF36E0, &unk_100839450, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100005920(&qword_100AEFE40, &qword_100AF3700, &qword_100840150, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF36E8);
  }

  return result;
}

unint64_t sub_1006DD324()
{
  result = qword_100AF3718;
  if (!qword_100AF3718)
  {
    sub_1001F1234(&qword_100AF3720, &qword_100840168);
    sub_1006DD3A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3718);
  }

  return result;
}

unint64_t sub_1006DD3A8()
{
  result = qword_100AF3728;
  if (!qword_100AF3728)
  {
    sub_1001F1234(&qword_100AF3730, &qword_100840170);
    sub_1006DD240();
    sub_100005920(&unk_100AF36F0, &qword_100AF36E0, &unk_100839450, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3728);
  }

  return result;
}

unint64_t sub_1006DD460()
{
  result = qword_100AF3738;
  if (!qword_100AF3738)
  {
    sub_1001F1234(&qword_100AF3708, &qword_100840158);
    sub_100005920(&unk_100AF3740, &qword_100AF3710, &qword_100840160, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3738);
  }

  return result;
}

id sub_1006DD520@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_1006DD52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v11 = *(a1 + 32);
  v5 = v11;
  v12 = v3;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
  v7 = v2;
  swift_unknownObjectRetain();
  v8 = v4;
  sub_100012ACC(&v12, v10);
  return sub_100012ACC(&v11, v10);
}

uint64_t sub_1006DD594@<X0>(uint64_t *a1@<X8>)
{
  sub_1007A1774();
  result = sub_1007A1764();
  *a1 = result;
  return result;
}

uint64_t static EventReporter.setupEventDataProvider()(uint64_t a1, uint64_t a2)
{
  sub_100798004();
  v2 = sub_100797FF4();
  v4[3] = &type metadata for EventDataProvider;
  v4[4] = sub_10001866C();
  sub_100797FE4();

  return sub_1000074E0(v4);
}

void sub_1006DD644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5)
{
  v8 = sub_1007A2214();
  v9 = [a1 libraryAssetWithAssetID:v8 inManagedObjectContext:a4];

  if (v9)
  {
    if ([v9 contentType] == 3)
    {
      [v9 pageCount];
      v10.super.super.isa = sub_1007A3BE4().super.super.isa;
    }

    else
    {

      v10.super.super.isa = 0;
    }

    v11 = *a5;
    *a5 = v10.super.super.isa;
  }
}

uint64_t sub_1006DD718(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_100797DD4();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1006DD7D8, 0, 0);
}

uint64_t sub_1006DD7D8()
{
  sub_1007A26F4();
  *(v0 + 128) = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_1006DD86C, v2, v1);
}

uint64_t sub_1006DD86C()
{

  sub_1006DDDC4(v0 + 56);

  return _swift_task_switch(sub_1006DD8DC, 0, 0);
}

uint64_t sub_1006DD8DC()
{
  if (*(v0 + 80))
  {
    sub_1000077C0((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_10000E3E8((v0 + 16), v1);
    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *v3 = v0;
    v3[1] = sub_1006DDA40;

    return dispatch thunk of UserEncodingServiceType.userEncodings()(v1, v2);
  }

  else
  {
    v4 = *(v0 + 96);
    sub_100007840(v0 + 56, &qword_100AF3768, &unk_1008401D8);
    v5 = sub_100798104();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1006DDA40(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1006DDD54;
  }

  else
  {
    v4 = sub_1006DDB54;
  }

  return _swift_task_switch(v4, 0, 0);
}

void *sub_1006DDB54()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    result = sub_1003BDA00(0, v2, 0);
    v5 = 0;
    v14 = v1;
    v6 = v1 + 48;
    while (v5 < *(v1 + 16))
    {

      sub_100797DC4();
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_1003BDA00((v7 > 1), v8 + 1, 1);
      }

      v9 = v0[15];
      v10 = v0[13];
      ++v5;
      _swiftEmptyArrayStorage[2] = v8 + 1;
      result = (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v9, v10);
      v6 += 24;
      v1 = v14;
      if (v2 == v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v11 = v0[12];
    sub_1007980F4();
    v12 = sub_100798104();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    sub_1000074E0(v0 + 2);

    v13 = v0[1];

    return v13();
  }

  return result;
}

uint64_t sub_1006DDD54()
{
  sub_1000074E0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

double sub_1006DDDC4@<D0>(uint64_t a1@<X8>)
{
  if (BCGetUnsafeAppDelegateReference())
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v5 = v8;
  v6 = v9;
  if (*(&v9 + 1))
  {
    sub_10001292C();
    if (swift_dynamicCast())
    {
      v2 = v7;
      v3 = [v7 containerHost];
      sub_1000076D8(&v5);

      sub_10000E3E8(&v5, *(&v6 + 1));
      sub_1001F1160(&unk_100AF3770, &qword_1008401E8);
      sub_100798CD4();

      sub_1000074E0(&v5);
      return result;
    }
  }

  else
  {
    sub_100007840(&v5, &unk_100AD5B40, &unk_100811300);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1006DDF10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002812C;

  return sub_1006DD718(a1);
}

void sub_1006DDFB0(uint64_t a1, uint64_t a2)
{
  if (BCGetUnsafeAppDelegateReference())
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v11 = v16;
  v12 = v17;
  if (*(&v17 + 1))
  {
    sub_10001292C();
    if (swift_dynamicCast())
    {
      v4 = v15;
      v5 = [v15 libraryAssetProvider];
      *&v16 = 0;
      v6 = [v5 readOnlyChildContext];
      v7 = swift_allocObject();
      v7[2] = v5;
      v7[3] = a1;
      v7[4] = a2;
      v7[5] = v6;
      v7[6] = &v16;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1006DE210;
      *(v8 + 24) = v7;
      v13 = sub_10025D774;
      v14 = v8;
      *&v11 = _NSConcreteStackBlock;
      *(&v11 + 1) = 1107296256;
      *&v12 = sub_100685954;
      *(&v12 + 1) = &unk_100A2D950;
      v9 = _Block_copy(&v11);
      swift_unknownObjectRetain();

      v10 = v6;

      [v10 performBlockAndWait:v9];
      swift_unknownObjectRelease();

      _Block_release(v9);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100007840(&v11, &unk_100AD5B40, &unk_100811300);
  }
}

uint64_t sub_1006DE248()
{
  v1 = [*(*(v0 + 48) + 16) activeStoreAccount];
  if (v1)
  {
    v2 = v1;
    if ([v1 ams_accountFlagValueForAccountFlag:AMSAccountFlagPersonalization])
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {

      v5 = 0u;
      v6 = 0u;
    }

    *(v0 + 16) = v5;
    *(v0 + 32) = v6;
    if (*(v0 + 40))
    {
      if (swift_dynamicCast())
      {
        v1 = *(v0 + 56);
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000230BC(v0 + 16);
    }

    v1 = 1;
  }

LABEL_10:
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1006DE368()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002BB768;

  return sub_1006DE228();
}

char *sub_1006DE594(int a1, id a2)
{
  if (a2)
  {
    [a2 frame];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = 0.0;
    v6 = 0.0;
  }

  v7 = 0.0;
  v8 = [objc_allocWithZone(type metadata accessor for FrozenSnapshotView()) initWithFrame:{0.0, 0.0, v4, v6}];
  v9 = v8;
  if (a2)
  {
    [a2 _continuousCornerRadius];
    v7 = v10;
  }

  [v8 _setContinuousCornerRadius:v7];
  v11 = [v8 layer];
  v12 = v11;
  if (!a2)
  {
    [v11 setMaskedCorners:0];

    v16 = [v8 layer];
    [v16 setMasksToBounds:1];
    goto LABEL_10;
  }

  v13 = [a2 layer];
  v14 = [v13 maskedCorners];

  [v12 setMaskedCorners:v14];
  v15 = [v8 layer];

  [v15 setMasksToBounds:1];
  v16 = a2;
  v17 = [v16 snapshotViewAfterScreenUpdates:0];
  if (!v17)
  {
LABEL_10:

    v20 = OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView;
    [*&v8[OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView] removeFromSuperview];
    v19 = *&v8[v20];
    *&v8[v20] = 0;
    goto LABEL_11;
  }

  v18 = v17;
  [v8 addSubview:v17];

  v19 = *&v8[OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView];
  *&v8[OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView] = v18;
LABEL_11:

  return v8;
}

void sub_1006DE7C0(char *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 snapshotViewAfterScreenUpdates:0];
    if (v5)
    {
      v6 = v5;
      [a1 addSubview:v5];

      v7 = *&a1[OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView];
      *&a1[OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView] = v6;
      goto LABEL_6;
    }
  }

  v8 = OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView;
  [*&a1[OBJC_IVAR____TtC5Books18FrozenSnapshotView_childView] removeFromSuperview];
  v7 = *&a1[v8];
  *&a1[v8] = 0;
LABEL_6:
}

uint64_t sub_1006DE884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1006DEB44();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1006DE8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1006DEB44();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1006DE94C(uint64_t a1)
{
  sub_1006DEB44();
  sub_10079CC64();
  __break(1u);
}

id sub_1006DEA80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1006DEAF0()
{
  result = qword_100AF3880;
  if (!qword_100AF3880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3880);
  }

  return result;
}

unint64_t sub_1006DEB44()
{
  result = qword_100AF3888;
  if (!qword_100AF3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3888);
  }

  return result;
}

double sub_1006DECCC()
{
  v1 = [v0 presentedView];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v0 containerView];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v2 = v6;
      [v5 bounds];
      CGRectGetWidth(v8);
      [v5 bounds];
      CGRectGetHeight(v9);
      [v3 bounds];
      CGRectGetHeight(v10);
    }
  }

  return v2;
}

id sub_1006DEDEC(void *a1, int a2)
{
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001389C();
  sub_1007A33F4();
  v8 = [objc_allocWithZone(BCAugmentedExperience) init];
  v9 = [a1 endOfBookLocation];
  if (v9)
  {
    v52 = a2;
    v10 = v9;
    sub_1007A2254();

    v11 = [objc_allocWithZone(BCAugmentedExperiencePoint) init];
    v12 = objc_allocWithZone(BCCFI);
    v13 = sub_1007A2214();

    v53 = 0;
    v14 = [v12 initWithCFI:v13 error:&v53];

    v15 = v53;
    if (v14)
    {
      v16 = objc_opt_self();
      v17 = v15;
      v18 = [v16 positionWithCFI:v14];
      [v11 setExperiencePoint:v18];

      v19 = [a1 endOfBookConfidence];
      if (v19)
      {
        LODWORD(v53) = 0;
        BYTE4(v53) = 1;
        v21 = v19;
        sub_1007A27F4();

        LODWORD(v20) = v53;
        if (BYTE4(v53))
        {
          *&v20 = 1.0;
        }
      }

      else
      {
        LODWORD(v20) = 1.0;
      }

      [v11 setConfidence:v20];
      v25 = [a1 endOfBookValidRange];
      if (v25)
      {
        v50 = v16;
        v51 = v4;
        v26 = v25;
        sub_1007A2254();

        v27 = objc_allocWithZone(BCCFI);
        v28 = sub_1007A2214();

        v53 = 0;
        v29 = [v27 initWithCFI:v28 error:&v53];

        if (v29)
        {
          v30 = v53;
          v31 = [v29 headCFI];
          v32 = [v29 tailCFI];
          v33 = v32;
          if (v31)
          {
            if (v32)
            {
              v34 = v50;
              v49 = [v50 positionWithCFI:v31];
              v50 = [v34 positionWithCFI:v33];
              v35 = [objc_opt_self() bookSectionWithStartPosition:v49 endPosition:v50];
              [v11 setValidRange:v35];
            }

            else
            {
            }

            v33 = v29;
          }

          else
          {
          }
        }

        else
        {
          v36 = v53;
          sub_1007967D4();

          swift_willThrow();
          v33 = sub_10079ACC4();
          v37 = sub_1007A29D4();
          if (os_log_type_enabled(v33, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&_mh_execute_header, v33, v37, "no validRangeCFI for end-of-book", v38, 2u);
          }
        }

        v4 = v51;
      }

      [v8 setLocation:v11];
    }

    else
    {
      v22 = v53;
      sub_1007967D4();

      swift_willThrow();
      v14 = sub_10079ACC4();
      v23 = sub_1007A29D4();
      if (os_log_type_enabled(v14, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v14, v23, "no endOfBookCFI for end-of-book", v24, 2u);
      }
    }
  }

  v39 = [objc_opt_self() sharedRegistry];
  [v8 setPresenter:{objc_msgSend(v39, "presenterForExperienceType:", 0)}];
  [v8 setDelay:0.0];
  [v8 setKind:0];
  [v8 setEnabled:1];
  [v8 setSkipToast:0];
  v40 = [a1 endOfBookVersion];
  if (v40)
  {
    v41 = v40;
    [v8 setVersion:v40];
  }

  v42 = sub_1007A0CE4();
  v44 = v43;
  v45 = 1;
  if (v42 != sub_1007A0CE4() || v44 != v46)
  {
    v45 = sub_1007A3AB4();
  }

  [v8 setPageProgressionIsRTL:v45 & 1];

  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1006DF5C0(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SidebarTextFieldListCell();
  v2 = objc_msgSendSuper2(&v5, "_bridgedConfigurationState");
  sub_10079B244();

  if (qword_100AD1AF8 != -1)
  {
    swift_once();
  }

  v3 = qword_100B23998;
  sub_1007A36B4();
  sub_10079B264();
  return sub_10079B204();
}

id sub_1006DF7B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SidebarTextFieldListCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

NSString sub_1006DF808()
{
  result = sub_1007A2214();
  qword_100B23998 = result;
  return result;
}

void sub_1006DF840(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1007A35E4();
    sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
    sub_1002E4850();
    sub_1007A2864();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v11 = (v10 - 1) & v10;
    if (!*(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10))))))
    {
LABEL_20:
      sub_10004DC54(v1);
      return;
    }

    while (1)
    {
      sub_1007A25C4();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
      v5 = v11;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1007A3654())
      {
        sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
        swift_dynamicCast();
        v11 = v5;
        if (v12)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1006DFA80(uint64_t a1, uint64_t a2)
{
  v105 = a1;
  v106 = a2;
  v3 = sub_10079ACE4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100796CF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v91 - v12;
  v14 = sub_1007A21D4();
  v99 = *(v14 - 8);
  __chkstk_darwin(v14);
  v97 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v98 = &v91 - v17;
  v107 = v2;
  sub_1006E0614();
  if (!v18)
  {
    sub_10079AC44();
    v30 = sub_10079ACC4();
    v31 = sub_1007A29C4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "RemoveActionItem cannot handle due to missing sourceView or provider", v32, 2u);
    }

    (*(v4 + 8))(v6, v3);
    return;
  }

  v19 = v18;
  v92 = v13;
  v93 = v14;
  v94 = v8;
  v95 = v7;
  v108 = objc_opt_self();
  v20 = [v108 bk_localizedWarningStringForProvider:v19];
  if (!v20)
  {
    goto LABEL_5;
  }

  v21 = v20;
  v22 = sub_1007A2254();
  v24 = v23;

  aBlock = v22;
  v110 = v24;
  sub_1002060B4();
  if ((sub_1007A28A4() & 1) == 0)
  {

LABEL_5:
    v24 = 0;
  }

  v25 = &v107[OBJC_IVAR____TtC5Books16RemoveActionItem_data];
  sub_10000E3E8(&v107[OBJC_IVAR____TtC5Books16RemoveActionItem_data], *&v107[OBJC_IVAR____TtC5Books16RemoveActionItem_data + 24]);
  v26 = sub_100797714();
  if (v26)
  {
    v27 = v26;
    sub_100797174();
    v28 = [v27 isKindOfClass:swift_getObjCClassFromMetadata()];

    v29 = v28;
  }

  else
  {
    v29 = 1;
  }

  sub_10000E3E8(v25, *(v25 + 3));
  v33 = sub_100797754();
  if (v33)
  {

    v29 = 0;
  }

  if (v24)
  {
    v34 = sub_1007A2214();
  }

  else
  {
    v34 = 0;
  }

  v91 = v10;
  v96 = v25;
  v35 = [objc_opt_self() alertControllerWithTitle:0 message:v34 preferredStyle:v29];

  v36 = [v19 actionItems];
  sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
  v37 = sub_1007A25E4();

  v104 = v35;
  if (v37 >> 62)
  {
    v38 = sub_1007A38D4();
    if (!v38)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_38;
    }
  }

  if (v38 >= 1)
  {
    v39 = 0;
    v40 = v37 & 0xC000000000000001;
    v100 = &v111;
    v41 = &selRef_hasTooManyAuthors;
    v102 = v37;
    v103 = v19;
    v101 = v37 & 0xC000000000000001;
    do
    {
      if (v40)
      {
        v43 = sub_1007A3784();
      }

      else
      {
        v43 = *(v37 + 8 * v39 + 32);
      }

      v44 = v43;
      v45 = [v43 v41[479]];
      if (v45 == 8 || (v46 = v45, (v47 = [v108 bk_localizedStringForDeleteAction:v45 deleteActionProvider:v19]) == 0))
      {
        v42 = v44;
      }

      else
      {
        v48 = v47;
        v49 = 2 * (v46 == 1);
        if (v46 == 5)
        {
          v49 = 2;
        }

        if (v46)
        {
          v50 = v49;
        }

        else
        {
          v50 = 2;
        }

        v51 = swift_allocObject();
        v53 = v105;
        v52 = v106;
        v51[2] = v105;
        v51[3] = v52;
        v54 = v107;
        v51[4] = v107;
        v51[5] = v46;
        v113 = sub_1006EE838;
        v114 = v51;
        aBlock = _NSConcreteStackBlock;
        v110 = 1107296256;
        v111 = sub_100201C54;
        v112 = &unk_100A2DA98;
        v55 = _Block_copy(&aBlock);
        sub_1000260E8(v53, v52);
        v56 = v54;

        v42 = [objc_opt_self() actionWithTitle:v48 style:v50 handler:v55];
        _Block_release(v55);

        v57 = _UISolariumEnabled();
        if (!v50 && (v57 & 1) == 0)
        {
          v58 = [objc_opt_self() bc_booksKeyColor];
          [v42 _setTitleTextColor:v58];
        }

        [v104 addAction:v42];

        v37 = v102;
        v19 = v103;
        v40 = v101;
        v41 = &selRef_hasTooManyAuthors;
      }

      ++v39;
    }

    while (v38 != v39);
LABEL_38:

    v59 = v98;
    sub_1007A2154();
    v60 = v92;
    sub_100796C94();
    v61 = v99;
    v62 = v97;
    v63 = v93;
    (*(v99 + 16))(v97, v59, v93);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v65 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v66 = v94;
    v67 = v91;
    v68 = v95;
    (*(v94 + 16))(v91, v60, v95);
    sub_1007A22D4(v62, 0, 0, v65, v67, "Cancel", 6, 2);
    (*(v66 + 8))(v60, v68);
    (*(v61 + 8))(v59, v63);
    v69 = swift_allocObject();
    v70 = v105;
    v71 = v106;
    *(v69 + 16) = v105;
    *(v69 + 24) = v71;
    sub_1000260E8(v70, v71);
    v72 = sub_1007A2214();

    v113 = sub_1006EE7FC;
    v114 = v69;
    aBlock = _NSConcreteStackBlock;
    v110 = 1107296256;
    v111 = sub_100201C54;
    v112 = &unk_100A2DA48;
    v73 = _Block_copy(&aBlock);

    v74 = [objc_opt_self() actionWithTitle:v72 style:1 handler:v73];
    _Block_release(v73);

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v75 = [objc_opt_self() bc_booksKeyColor];
      [v74 _setTitleTextColor:v75];
    }

    v76 = v104;
    [v104 addAction:v74];
    v77 = v96;
    sub_10000E3E8(v96, *(v96 + 3));
    v78 = sub_100797714();
    if (v78)
    {
      v79 = v78;
      v80 = v76;
      v81 = [v80 presentationController];
      if (v81)
      {
        v82 = v81;
        [v81 setSourceView:v79];
      }

      sub_10000E3E8(v77, *(v77 + 3));
      *&v83 = COERCE_DOUBLE(sub_100797724());
      if (v85)
      {
        goto LABEL_49;
      }

      v86 = *&v83;
      v87 = v84;
      v88 = [v80 presentationController];

      v80 = v79;
      if (v88)
      {
        [v88 setSourceRect:{v86, v87, 1.0, 1.0}];
        v79 = v88;
LABEL_49:
      }
    }

    else
    {
      sub_10000E3E8(v77, *(v77 + 3));
      v89 = sub_100797754();
      if (!v89)
      {
LABEL_51:
        sub_10000E3E8(&v107[OBJC_IVAR____TtC5Books16RemoveActionItem_context], *&v107[OBJC_IVAR____TtC5Books16RemoveActionItem_context + 24]);
        sub_100796EC4();

        return;
      }

      v80 = v89;
      v90 = [v76 presentationController];
      if (v90)
      {
        v79 = v90;
        [v90 setBarButtonItem:v80];
        goto LABEL_49;
      }
    }

    goto LABEL_51;
  }

  __break(1u);
}

double sub_1006E0534@<D0>(_OWORD *a1@<X8>)
{
  sub_10000E3E8((v1 + OBJC_IVAR____TtC5Books16RemoveActionItem_data), *(v1 + OBJC_IVAR____TtC5Books16RemoveActionItem_data + 24));
  sub_1007977A4();
  if (v5)
  {
    sub_1001FF70C(v4);
  }

  else
  {
    sub_1001FF7E0(v4, v6);
    sub_1001FF7E0(v6, v4);
    sub_1001F1160(&qword_100AD4B48, qword_10080ED60);
    sub_1001F1160(qword_100AD4B50, &unk_1008171B0);
    if (swift_dynamicCast())
    {
      return result;
    }
  }

  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_1006E0614()
{
  v1 = v0;
  v15[5] = &_swiftEmptySetSingleton;
  sub_10000E3E8((v0 + OBJC_IVAR____TtC5Books16RemoveActionItem_data), *(v0 + OBJC_IVAR____TtC5Books16RemoveActionItem_data + 24));
  v2 = sub_100797704();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 32;
    while (v5 < *(v3 + 16))
    {
      sub_100009864(v6, v15);
      v7 = [objc_opt_self() defaultManager];
      sub_10000E3E8(v15, v15[3]);
      sub_100797674();
      sub_1000074E0(v15);
      v8 = sub_1007A2214();

      v9 = [v7 libraryAssetOnMainQueueWithAssetID:v8];

      if (!v9)
      {

        return;
      }

      ++v5;
      sub_1006E6AC0(&v14, v9);

      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_1006E0850(v1);
    v11 = v10;
    sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
    sub_1002E4850();
    v12.super.isa = sub_1007A2824().super.isa;

    if (v11)
    {
      v13 = sub_1007A2214();
    }

    else
    {
      v13 = 0;
    }

    [objc_allocWithZone(BKDeleteActionItemsProvider) initWithBooks:v12.super.isa currentCollectionId:v13];
  }
}

unint64_t sub_1006E0850(uint64_t a1)
{
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  __chkstk_darwin(v9);
  v11 = (&v17 - v10);
  v12 = (a1 + OBJC_IVAR____TtC5Books16RemoveActionItem_data);
  sub_10000E3E8((a1 + OBJC_IVAR____TtC5Books16RemoveActionItem_data), *(a1 + OBJC_IVAR____TtC5Books16RemoveActionItem_data + 24));
  sub_100797784();
  if ((*(v3 + 88))(v11, v2) == enum case for ContextActionSource.library(_:))
  {
    (*(v3 + 96))(v11, v2);
    v13 = *v11;
    sub_1000074E0(v11 + 2);
  }

  else
  {
    v14 = *(v3 + 8);
    v14(v11, v2);
    sub_10000E3E8(v12, v12[3]);
    sub_100797784();
    (*(v3 + 104))(v5, enum case for ContextActionSource.wantToReadEntry(_:), v2);
    v15 = sub_100797184();
    v14(v5, v2);
    v14(v8, v2);
    if (v15)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

void sub_1006E0A9C()
{
  sub_10000E3E8((v0 + OBJC_IVAR____TtC5Books16RemoveActionItem_data), *(v0 + OBJC_IVAR____TtC5Books16RemoveActionItem_data + 24));
  if (sub_1007976D4())
  {
    return;
  }

  sub_1006E0614();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_1006E0534(&v11);
  if (v12)
  {
    sub_10000E3E8(&v11, v12);
    sub_1007976B4();
    sub_1000074E0(&v11);
    if (sub_1007972D4())
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_1001FF760(&v11);
  }

  sub_1006E0534(&v11);
  if (v12)
  {
    sub_10000E3E8(&v11, v12);
    sub_1007976B4();
    sub_1000074E0(&v11);
    if (sub_1007972D4())
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_1001FF760(&v11);
  }

  v3 = [v2 actionItems];
  sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
  v4 = sub_1007A25E4();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_27:

LABEL_28:

    return;
  }

LABEL_26:
  v5 = sub_1007A38D4();
  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_13:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_1007A3784();
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v10 = [v7 integerValue];
    type metadata accessor for DeleteActionItem(0);
    if (v10 != 8)
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_27;
    }
  }

  if (v10 >= 8)
  {
    *&v11 = v10;
    sub_1007A3AF4();
    __break(1u);
  }

  else
  {
  }
}

double sub_1006E0D18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v13 = sub_100345790;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = sub_1007A2744();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_1007A26F4();
  sub_1000260E8(a2, a3);
  v15 = a4;
  sub_1000260E8(v13, v12);
  v16 = sub_1007A26E4();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  v17[5] = a5;
  v17[6] = v13;
  v17[7] = v12;
  sub_1003457A0(0, 0, v11, &unk_100840588, v17);
  sub_100007020(v13, v12);

  return result;
}

uint64_t sub_1006E0ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v7[4] = sub_1007A26F4();
  v7[5] = sub_1007A26E4();
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = sub_1006E0F8C;

  return sub_1006E1148(a5);
}

uint64_t sub_1006E0F8C()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006E10C8, v1, v0);
}

uint64_t sub_1006E10C8()
{
  v6 = v0;
  v1 = *(v0 + 16);

  if (v1)
  {
    v2 = *(v0 + 16);
    v5 = 1;
    v2(&v5);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006E1148(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = sub_10079ACE4();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v4 = sub_1007971A4();
  v2[35] = v4;
  v2[36] = *(v4 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = sub_1007A26F4();
  v2[39] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v2[40] = v6;
  v2[41] = v5;

  return _swift_task_switch(sub_1006E12B4, v6, v5);
}

uint64_t sub_1006E12B4()
{
  sub_1006E0614();
  *(v0 + 336) = v1;
  if (!v1)
  {

    goto LABEL_9;
  }

  v2 = v1;
  v3 = *(v0 + 224);
  v4 = [v1 booksToDelete];
  sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
  sub_1002E4850();
  v5 = sub_1007A2834();

  sub_1006DF840(v5);
  v7 = v6;
  *(v0 + 344) = v6;

  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        *(v0 + 400) = sub_1007A26E4();
        v22 = swift_task_alloc();
        *(v0 + 408) = v22;
        *v22 = v0;
        v22[1] = sub_1006E2494;

        return sub_1005EBA08(v7);
      }

      else
      {
        *(v0 + 416) = sub_1007A26E4();
        v11 = swift_task_alloc();
        *(v0 + 424) = v11;
        *v11 = v0;
        v11[1] = sub_1006E26FC;

        return sub_1005EF754(v7);
      }
    }

    else
    {
      if (!v3)
      {
        v19 = *(v0 + 232);
        v13 = *(v19 + OBJC_IVAR____TtC5Books16RemoveActionItem_tracker);
        v20 = OBJC_IVAR____TtC5Books16RemoveActionItem_context;
        v21 = swift_task_alloc();
        *(v0 + 352) = v21;
        *v21 = v0;
        v21[1] = sub_1006E1D88;
        v16 = v19 + v20;
        v17 = 0;
        v18 = 7;
        goto LABEL_25;
      }

      if (v3 != 1)
      {
LABEL_41:
        v42 = *(v0 + 224);
        type metadata accessor for DeleteActionItem(0);
        *(v0 + 208) = v42;

        return sub_1007A3AF4();
      }

      *(v0 + 368) = *(*(v0 + 232) + OBJC_IVAR____TtC5Books16RemoveActionItem_tracker);
      *(v0 + 376) = sub_1007A26E4();
      v10 = swift_task_alloc();
      *(v0 + 384) = v10;
      *v10 = v0;
      v10[1] = sub_1006E2178;

      return sub_1005EB650(v7);
    }
  }

  else
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          if (v3 == 8)
          {

LABEL_9:

            v8 = *(v0 + 8);

            return v8();
          }

          goto LABEL_41;
        }

        *(v0 + 504) = *(*(v0 + 232) + OBJC_IVAR____TtC5Books16RemoveActionItem_tracker);
        *(v0 + 512) = sub_1007A26E4();
        v39 = sub_1007A2694();
        v41 = v40;
        v35 = sub_1006E2F60;
        v36 = v39;
        v34 = v41;
        goto LABEL_38;
      }

      v24 = *(v0 + 288);
      v23 = *(v0 + 296);
      v25 = *(v0 + 280);
      v26 = (*(v0 + 232) + OBJC_IVAR____TtC5Books16RemoveActionItem_data);
      sub_10000E3E8(v26, v26[3]);
      sub_100797784();
      v27 = (*(v24 + 88))(v23, v25);
      if (v27 == enum case for ContextActionSource.library(_:))
      {
        v28 = *(v0 + 296);
        (*(*(v0 + 288) + 96))(v28, *(v0 + 280));

        sub_1000076D4(v28 + 16, v0 + 112);
        sub_100007484(v0 + 112, v0 + 144);
        sub_10000A7C4(0, &qword_100AE5840, BKCollection_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {

          sub_10079AC44();
          v54 = sub_10079ACC4();
          v55 = sub_1007A29C4();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&_mh_execute_header, v54, v55, "Fatal: Unable to remove from current selection due to missing BKCollection", v56, 2u);
          }

          v57 = *(v0 + 272);
          v58 = *(v0 + 240);
          v59 = *(v0 + 248);

          (*(v59 + 8))(v57, v58);
          sub_1000074E0((v0 + 112));
          goto LABEL_9;
        }

        v29 = *(v0 + 232);
        v30 = *(v0 + 216);
        *(v0 + 448) = v30;
        *(v0 + 456) = *(v29 + OBJC_IVAR____TtC5Books16RemoveActionItem_tracker);
        v31 = v30;
        *(v0 + 464) = sub_1007A26E4();
        v32 = sub_1007A2694();
        v34 = v33;
        *(v0 + 472) = v32;
        *(v0 + 480) = v33;
        v35 = sub_1006E2A84;
        v36 = v32;
LABEL_38:

        return _swift_task_switch(v35, v36, v34);
      }

      if (v27 == enum case for ContextActionSource.wantToReadEntry(_:))
      {

        sub_1006E0534((v0 + 64));
        if (*(v0 + 88))
        {
          sub_1001FF7C8((v0 + 64), (v0 + 16));
          sub_10000E3E8((v0 + 16), *(v0 + 40));
          v43 = sub_1007975B4();
          if (v43 != 2 && (v43 & 1) != 0)
          {
            sub_10000E3E8((v0 + 16), *(v0 + 40));
            v44 = sub_100797674();
            v46 = v45;

            v47 = HIBYTE(v46) & 0xF;
            if ((v46 & 0x2000000000000000) == 0)
            {
              v47 = v44 & 0xFFFFFFFFFFFFLL;
            }

            if (v47)
            {
              v48 = *(v0 + 232);
              v49 = sub_10000E3E8((v48 + OBJC_IVAR____TtC5Books16RemoveActionItem_libraryOperationProvider), *(v48 + OBJC_IVAR____TtC5Books16RemoveActionItem_libraryOperationProvider + 24));
              v50 = *(v48 + OBJC_IVAR____TtC5Books16RemoveActionItem_tracker);
              v51 = OBJC_IVAR____TtC5Books16RemoveActionItem_context;
              v52 = v49[1];
              v53 = swift_task_alloc();
              *(v0 + 496) = v53;
              *v53 = v0;
              v53[1] = sub_1006E2D94;

              return sub_1005F46A8(v26, v0 + 16, v50, v48 + v51, v52);
            }
          }

          sub_1000074E0((v0 + 16));
        }

        else
        {

          sub_1001FF760(v0 + 64);
        }

        sub_10079AC44();
        v69 = sub_10079ACC4();
        v70 = sub_1007A29C4();
        v71 = os_log_type_enabled(v69, v70);
        v63 = *(v0 + 264);
        v65 = *(v0 + 240);
        v64 = *(v0 + 248);
        if (v71)
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "Fatal: Unable to remove from current selection due to missing assetInfo", v72, 2u);
        }
      }

      else
      {

        sub_10079AC44();
        v60 = sub_10079ACC4();
        v61 = sub_1007A29C4();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "Fatal: Action doesn't have sufficient information to handle action.", v62, 2u);
        }

        v64 = *(v0 + 288);
        v63 = *(v0 + 296);
        v65 = *(v0 + 280);
        v67 = *(v0 + 248);
        v66 = *(v0 + 256);
        v68 = *(v0 + 240);

        (*(v67 + 8))(v66, v68);
      }

      (*(v64 + 8))(v63, v65);
      goto LABEL_9;
    }

    if (v3 != 4)
    {
      v12 = *(v0 + 232);
      v13 = *(v12 + OBJC_IVAR____TtC5Books16RemoveActionItem_tracker);
      v14 = OBJC_IVAR____TtC5Books16RemoveActionItem_context;
      v15 = swift_task_alloc();
      *(v0 + 360) = v15;
      *v15 = v0;
      v15[1] = sub_1006E1F80;
      v16 = v12 + v14;
      v17 = 5;
      v18 = 3;
LABEL_25:

      return sub_1006E3608(v17, v18, v2, v7, v13, v16);
    }

    v37 = *(*(v0 + 232) + OBJC_IVAR____TtC5Books16RemoveActionItem_tracker);
    *(v0 + 432) = sub_1007A26E4();
    v38 = swift_task_alloc();
    *(v0 + 440) = v38;
    *v38 = v0;
    v38[1] = sub_1006E28C0;

    return sub_1005EFC90(v7, v37);
  }
}

uint64_t sub_1006E1D88(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 184) = a1;
  *(v3 + 176) = v1;

  v4 = *(v2 + 328);
  v5 = *(v2 + 320);

  return _swift_task_switch(sub_1006E1ED4, v5, v4);
}

uint64_t sub_1006E1ED4()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 336);
  if ((v1 & 1) == 0)
  {
    sub_1006E4B78(*(v0 + 224), *(v0 + 336));
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006E1F80(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 200) = a1;
  *(v3 + 192) = v1;

  v4 = *(v2 + 328);
  v5 = *(v2 + 320);

  return _swift_task_switch(sub_1006E20CC, v5, v4);
}

uint64_t sub_1006E20CC()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 336);
  if ((v1 & 1) == 0)
  {
    sub_1006E4B78(*(v0 + 224), *(v0 + 336));
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006E2178()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[49] = v3;
  *v3 = v2;
  v3[1] = sub_1006E22D0;
  v4 = v1[46];
  v5 = v1[43];

  return sub_1005EC6C8(v5, v4);
}

uint64_t sub_1006E22D0()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006E2430, v1, v0);
}

uint64_t sub_1006E2430()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_1006EEA08, v1, v2);
}

uint64_t sub_1006E2494()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006E25F4, v1, v0);
}

uint64_t sub_1006E25F4()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_1006E2658, v1, v2);
}

uint64_t sub_1006E2658()
{

  v1 = *(v0 + 336);
  sub_1006E4B78(*(v0 + 224), v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006E26FC()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006E285C, v1, v0);
}

uint64_t sub_1006E285C()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_1006EEA08, v1, v2);
}

uint64_t sub_1006E28C0()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1006E2A20, v1, v0);
}

uint64_t sub_1006E2A20()
{

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_1006EEA08, v1, v2);
}

uint64_t sub_1006E2A84()
{
  v1 = *(v0 + 448);
  v2 = swift_task_alloc();
  *(v0 + 488) = v2;
  *v2 = v0;
  v2[1] = sub_1006E2B28;
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  v5 = *(v0 + 344);

  return sub_1005EDFF0(v5, v3, v4);
}

uint64_t sub_1006E2B28()
{
  v1 = *v0;

  v2 = *(v1 + 480);
  v3 = *(v1 + 472);

  return _swift_task_switch(sub_1006E2C6C, v3, v2);
}

uint64_t sub_1006E2C6C()
{
  v1 = v0[56];

  v2 = v0[40];
  v3 = v0[41];

  return _swift_task_switch(sub_1006E2CE0, v2, v3);
}

uint64_t sub_1006E2CE0()
{
  v1 = *(v0 + 448);

  sub_1000074E0((v0 + 112));
  v2 = *(v0 + 336);
  sub_1006E4B78(*(v0 + 224), v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006E2D94()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return _swift_task_switch(sub_1006E2EB4, v3, v2);
}

uint64_t sub_1006E2EB4()
{

  sub_1000074E0((v0 + 16));
  v1 = *(v0 + 336);
  sub_1006E4B78(*(v0 + 224), v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006E2F60()
{
  v1 = v0[63];
  v2 = v0[43];

  sub_1005EEF5C(v2, v1);

  v3 = v0[40];
  v4 = v0[41];

  return _swift_task_switch(sub_1006EEA08, v3, v4);
}

uint64_t type metadata accessor for RemoveActionItem(uint64_t a1)
{
  result = qword_100AF3940;
  if (!qword_100AF3940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006E311C(uint64_t a1)
{
  result = sub_100797144();
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

uint64_t sub_1006E31D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Books16RemoveActionItem_type;
  v5 = sub_100797144();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1006E3278()
{
  *(v1 + 16) = *v0;
  sub_1007A26F4();
  *(v1 + 24) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_1006E3314, v3, v2);
}

uint64_t sub_1006E3314()
{

  sub_1006DFA80(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

void *sub_1006E33D8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Books16RemoveActionItem_tracker);
  v2 = v1;
  return v1;
}

uint64_t sub_1006E3438@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a5;
  v10 = a1[3];
  v9 = a1[4];
  v11 = sub_10022569C(a1, v10);
  v12 = __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v17 = a2[3];
  v16 = a2[4];
  v18 = sub_10022569C(a2, v17);
  v19 = __chkstk_darwin(v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  v23 = sub_1006EE4B8(v14, v21, a3, a4, v25, v10, v17, v9, v16);

  sub_1000074E0(a2);
  result = sub_1000074E0(a1);
  *v26 = v23;
  return result;
}

uint64_t sub_1006E3608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[13] = a6;
  v7[14] = v6;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  v8 = sub_100796CF4();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v9 = sub_1007A21D4();
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = sub_1007A26F4();
  v7[24] = sub_1007A26E4();
  v11 = sub_1007A2694();
  v7[25] = v11;
  v7[26] = v10;

  return _swift_task_switch(sub_1006E3780, v11, v10);
}

uint64_t sub_1006E3780()
{
  if ([v0[10] canDeleteFromAllDevices] && (objc_msgSend(v0[10], "ubiquityCount") || objc_msgSend(v0[10], "iTunesUCount")))
  {
    v1 = v0[11];

    if (v1 >> 62)
    {
      v2 = sub_1007A38D4();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v0[19];
    v4 = (v0[20] + 16);
    v5 = v0[15];
    v6 = (v0[16] + 16);
    v7 = v0[21];
    v8 = v0[22];
    v10 = v0[17];
    v9 = v0[18];
    if (v2 < 2)
    {
      sub_1007A2154();
      sub_100796C94();
      v60 = *v4;
      (*v4)(v7, v8, v3);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v58 = *v6;
      (*v6)(v10, v9, v5);
      sub_1007A22D4(v7, 0, 0, v14, v10, "Are you sure you want to delete this book? It will be removed from iCloud and all your iCloud devices.", 102, 2);
    }

    else
    {
      sub_1007A2154();
      sub_100796C94();
      v60 = *v4;
      (*v4)(v7, v8, v3);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v58 = *v6;
      (*v6)(v10, v9, v5);
      sub_1007A22D4(v7, 0, 0, v11, v10, "Are you sure you want to delete these books? They will be removed from iCloud and all your iCloud devices.", 106, 2);
    }

    v16 = v0[21];
    v15 = v0[22];
    v18 = v0[19];
    v17 = v0[20];
    v20 = v0[17];
    v19 = v0[18];
    v21 = v0[15];
    v57 = *(v0[16] + 8);
    v57(v19, v21);
    v56 = *(v17 + 8);
    v51 = v18;
    v56(v15, v18);
    sub_1007A2154();
    sub_100796C94();
    v60(v16, v15, v18);
    type metadata accessor for BundleFinder();
    v54 = objc_opt_self();
    v22 = [v54 bundleForClass:ObjCClassFromMetadata];
    v58(v20, v19, v21);
    sub_1007A22D4(v16, 0, 0, v22, v20, "Delete from iCloud?", 19, 2);
    v57(v19, v21);
    v56(v15, v51);
    v23 = sub_1007A2214();

    v24 = sub_1007A2214();

    v55 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

    sub_1007A2154();
    sub_100796C94();
    v60(v16, v15, v51);
    v25 = [v54 bundleForClass:ObjCClassFromMetadata];
    v58(v20, v19, v21);
    sub_1007A22D4(v16, 0, 0, v25, v20, "Cancel", 6, 2);
    v57(v19, v21);
    v56(v15, v51);
    v26 = sub_1007A2214();

    v53 = objc_opt_self();
    v27 = [v53 actionWithTitle:v26 style:1 handler:0];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v28 = [objc_opt_self() bc_booksKeyColor];
      [v27 _setTitleTextColor:v28];
    }

    v29 = v0[21];
    v30 = v0[22];
    v31 = v0[18];
    v32 = v0[19];
    v33 = v0[17];
    v35 = v0[14];
    v34 = v0[15];
    v36 = v0[12];
    v52 = v0[13];
    [v55 addAction:{v27, v0[9], v0[11], v0[8], v0[10]}];
    sub_1007A2154();
    sub_100796C94();
    v60(v29, v30, v32);
    v61 = v27;
    v37 = [v54 bundleForClass:ObjCClassFromMetadata];
    v58(v33, v31, v34);
    sub_1007A22D4(v29, 0, 0, v37, v33, "Delete", 6, 2);
    v57(v31, v34);
    v56(v30, v32);
    v38 = swift_allocObject();
    v38[2] = v48;
    v38[3] = v47;
    v38[4] = v36;
    v38[5] = v35;
    v38[6] = v49;
    v38[7] = v50;
    v39 = v36;
    v40 = v35;
    v41 = v50;

    v42 = sub_1007A2214();

    v0[6] = sub_1006EE918;
    v0[7] = v38;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100201C54;
    v0[5] = &unk_100A2DB38;
    v43 = _Block_copy(v0 + 2);

    v44 = [v53 actionWithTitle:v42 style:2 handler:v43];
    _Block_release(v43);

    [v55 addAction:v44];
    sub_10000E3E8(v52, v52[3]);
    sub_100796EC4();

    v45 = v0[1];

    return v45(1);
  }

  else
  {
    v0[27] = sub_1007A26E4();
    v13 = sub_1007A2694();
    v0[28] = v13;
    v0[29] = v12;

    return _swift_task_switch(sub_1006E404C, v13, v12);
  }
}

uint64_t sub_1006E404C()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[30] = v2;
    *v2 = v0;
    v2[1] = sub_1006E4308;
    v3 = v0[11];

    return sub_1005EB650(v3);
  }

  else if ((v1 & 2) != 0)
  {
    v5 = swift_task_alloc();
    v0[34] = v5;
    *v5 = v0;
    v5[1] = sub_1006E487C;
    v6 = v0[11];

    return sub_1005EBA08(v6);
  }

  else if ((v1 & 4) != 0)
  {
    v7 = swift_task_alloc();
    v0[31] = v7;
    *v7 = v0;
    v7[1] = sub_1006E4428;
    v9 = v0[11];
    v8 = v0[12];

    return sub_1005EC6C8(v9, v8);
  }

  else
  {
    if ((v1 & 8) != 0)
    {
LABEL_8:

LABEL_19:
      v12 = v0[25];
      v13 = v0[26];

      return _swift_task_switch(sub_1006E4548, v12, v13);
    }

    if ((v1 & 0x10) != 0)
    {
      v10 = v0[11];
      v11 = v0[12];

      sub_1005EEF5C(v10, v11);
      goto LABEL_19;
    }

    if ((v1 & 0x20) != 0)
    {
      v14 = swift_task_alloc();
      v0[32] = v14;
      *v14 = v0;
      v14[1] = sub_1006E45D8;
      v15 = v0[11];

      return sub_1005EF754(v15);
    }

    else
    {
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      v16 = swift_task_alloc();
      v0[33] = v16;
      *v16 = v0;
      v16[1] = sub_1006E46F8;
      v18 = v0[11];
      v17 = v0[12];

      return sub_1005EFC90(v18, v17);
    }
  }
}

uint64_t sub_1006E4308()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_1006EE9F8, v3, v2);
}

uint64_t sub_1006E4428()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_1006EEA0C, v3, v2);
}

uint64_t sub_1006E4548()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1006E45D8()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_1006EEA0C, v3, v2);
}

uint64_t sub_1006E46F8()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_1006E4818, v3, v2);
}

uint64_t sub_1006E4818()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_1006E4548, v1, v2);
}

uint64_t sub_1006E487C()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_1006E499C, v3, v2);
}

uint64_t sub_1006E499C()
{
  v1 = v0[9];
  if ((v1 & 4) != 0)
  {
    v2 = swift_task_alloc();
    v0[31] = v2;
    *v2 = v0;
    v2[1] = sub_1006E4428;
    v4 = v0[11];
    v3 = v0[12];

    return sub_1005EC6C8(v4, v3);
  }

  else
  {
    if ((v1 & 8) != 0)
    {
LABEL_6:

LABEL_11:
      v8 = v0[25];
      v9 = v0[26];

      return _swift_task_switch(sub_1006E4548, v8, v9);
    }

    if ((v1 & 0x10) != 0)
    {
      v6 = v0[11];
      v7 = v0[12];

      sub_1005EEF5C(v6, v7);
      goto LABEL_11;
    }

    if ((v1 & 0x20) != 0)
    {
      v10 = swift_task_alloc();
      v0[32] = v10;
      *v10 = v0;
      v10[1] = sub_1006E45D8;
      v11 = v0[11];

      return sub_1005EF754(v11);
    }

    else
    {
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      v12 = swift_task_alloc();
      v0[33] = v12;
      *v12 = v0;
      v12[1] = sub_1006E46F8;
      v14 = v0[11];
      v13 = v0[12];

      return sub_1005EFC90(v14, v13);
    }
  }
}

double sub_1006E4B78(void *a1, void *a2)
{
  v56 = a1;
  v54 = sub_10079AD54();
  v4 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10079AD84();
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10079AD44();
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = (v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_10079AD64();
  v11 = *(v49 - 8);
  __chkstk_darwin(v49);
  v55 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10079ADB4();
  v36 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v2 + OBJC_IVAR____TtC5Books16RemoveActionItem_data);
  sub_10000E3E8((v2 + OBJC_IVAR____TtC5Books16RemoveActionItem_data), *(v2 + OBJC_IVAR____TtC5Books16RemoveActionItem_data + 24));
  if (sub_100797734())
  {
    v37 = v4;
    v46 = a2;
    v16 = [a2 actionItems];
    sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
    v17 = sub_1007A25E4();

    v39 = v6;
    v43 = v8;
    v44 = v11;
    if (v17 >> 62)
    {
LABEL_29:
      v18 = sub_1007A38D4();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    while (v18 != v19)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = sub_1007A3784();
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = [v20 integerValue];

      if (v22 == v56)
      {

        sub_10000E3E8(v14, v14[3]);
        v24 = sub_100797704();
        v25 = *(v24 + 16);
        if (v25)
        {
          v34[1] = v24;
          v26 = v24 + 32;
          v44 += 13;
          v43 += 13;
          v42 = enum case for FigaroClickEvent.ActionContext.actionSheet(_:);
          v41 = enum case for FigaroActionType.custom(_:);
          v40 = enum case for FigaroClickEvent.Location.Type.button(_:);
          v39 += 13;
          v38 = enum case for FigaroClickEvent.TargetType.button(_:);
          v37 += 13;
          ++v36;
          v35 = xmmword_10080B690;
          v45 = v10;
          do
          {
            sub_100009864(v26, v57);
            sub_10000E3E8(v57, v57[3]);
            sub_1007976A4();
            if (v32)
            {
              (*v44)(v55, v42, v49);
              *v10 = 0x65766F6D6572;
              v10[1] = 0xE600000000000000;
              (*v43)(v10, v41, v50);
              sub_1001F1160(&qword_100ADAF48, &unk_10082A660);
              sub_10079ADA4();
              *(swift_allocObject() + 16) = v35;
              v33 = [objc_opt_self() bk_localizedStringForDeleteAction:v56 deleteActionProvider:v46];
              if (v33)
              {
                v27 = v33;
                sub_1007A2254();
              }

              (*v39)(v51, v40, v52);

              sub_10079AD94();
              (*v37)(v53, v38, v54);
              v28 = v47;
              v10 = v45;
              sub_10079AD74();
              sub_1006EE7B4(&qword_100ADAF50, &type metadata accessor for FigaroClickEvent, &protocol conformance descriptor for FigaroClickEvent);
              v29 = v48;
              sub_10079AE74();
              (*v36)(v28, v29);
              v30 = objc_opt_self();
              type metadata accessor for FigaroKey(0);
              sub_1006EE7B4(&qword_100AD36A0, type metadata accessor for FigaroKey, &unk_10080CADC);
              isa = sub_1007A2024().super.isa;

              [v30 recordNativeEvent:isa];
            }

            sub_1000074E0(v57);
            v26 += 40;
            --v25;
          }

          while (v25);
        }

        return result;
      }

      if (__OFADD__(v19++, 1))
      {
        goto LABEL_28;
      }
    }
  }

  return result;
}

double sub_1006E53AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v12 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_1007A2744();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1007A26F4();
  v16 = a4;
  v17 = sub_1007A26E4();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = a3;
  v18[5] = a2;
  v18[6] = a4;

  sub_1003457A0(0, 0, v14, &unk_1008405A8, v18);

  return sub_1006E4B78(a6, a7);
}

uint64_t sub_1006E5518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_1007A26F4();
  v6[6] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_1006E55B8, v8, v7);
}

uint64_t sub_1006E55B8(uint64_t a1)
{
  v1[9] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_1006E5644, v3, v2);
}

uint64_t sub_1006E5644()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1006E5900;
    v3 = v0[3];

    return sub_1005EB650(v3);
  }

  else if ((v1 & 2) != 0)
  {
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_1006E5E44;
    v6 = v0[3];

    return sub_1005EBA08(v6);
  }

  else if ((v1 & 4) != 0)
  {
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_1006E5A20;
    v9 = v0[3];
    v8 = v0[4];

    return sub_1005EC6C8(v9, v8);
  }

  else
  {
    if ((v1 & 8) != 0)
    {
LABEL_8:

LABEL_19:
      v12 = v0[7];
      v13 = v0[8];

      return _swift_task_switch(sub_1006E5B40, v12, v13);
    }

    if ((v1 & 0x10) != 0)
    {
      v10 = v0[3];
      v11 = v0[4];

      sub_1005EEF5C(v10, v11);
      goto LABEL_19;
    }

    if ((v1 & 0x20) != 0)
    {
      v14 = swift_task_alloc();
      v0[14] = v14;
      *v14 = v0;
      v14[1] = sub_1006E5BA0;
      v15 = v0[3];

      return sub_1005EF754(v15);
    }

    else
    {
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      v16 = swift_task_alloc();
      v0[15] = v16;
      *v16 = v0;
      v16[1] = sub_1006E5CC0;
      v18 = v0[3];
      v17 = v0[4];

      return sub_1005EFC90(v18, v17);
    }
  }
}

uint64_t sub_1006E5900()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1006EE9FC, v3, v2);
}

uint64_t sub_1006E5A20()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1006EEA10, v3, v2);
}

uint64_t sub_1006E5B40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006E5BA0()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1006EEA10, v3, v2);
}

uint64_t sub_1006E5CC0()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1006E5DE0, v3, v2);
}

uint64_t sub_1006E5DE0()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_1006E5B40, v1, v2);
}

uint64_t sub_1006E5E44()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1006E5F64, v3, v2);
}

uint64_t sub_1006E5F64()
{
  v1 = v0[2];
  if ((v1 & 4) != 0)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_1006E5A20;
    v4 = v0[3];
    v3 = v0[4];

    return sub_1005EC6C8(v4, v3);
  }

  else
  {
    if ((v1 & 8) != 0)
    {
LABEL_6:

LABEL_11:
      v8 = v0[7];
      v9 = v0[8];

      return _swift_task_switch(sub_1006E5B40, v8, v9);
    }

    if ((v1 & 0x10) != 0)
    {
      v6 = v0[3];
      v7 = v0[4];

      sub_1005EEF5C(v6, v7);
      goto LABEL_11;
    }

    if ((v1 & 0x20) != 0)
    {
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_1006E5BA0;
      v11 = v0[3];

      return sub_1005EF754(v11);
    }

    else
    {
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      v12 = swift_task_alloc();
      v0[15] = v12;
      *v12 = v0;
      v12[1] = sub_1006E5CC0;
      v14 = v0[3];
      v13 = v0[4];

      return sub_1005EFC90(v14, v13);
    }
  }
}

uint64_t sub_1006E6140(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v8 = sub_1007A3C44();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1007A3AB4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1006EA454(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1006E6290(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1007A3634();

    if (v8)
    {

      sub_1001F1160(&unk_100AE2450, &qword_100823EC8);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_1007A3624();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1006E7D54(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1006E85D0(v17 + 1);
    }

    sub_1006EA318(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1001F1160(&unk_100AE2450, &qword_100823EC8);
  v10 = sub_1007A2074();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_1006EA5D4(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while ((sub_1007A2124() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1006E6500(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1007A0044();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1006EE7B4(&qword_100AF3958, &type metadata accessor for ContentMessage.CFIUpdate, &protocol conformance descriptor for ContentMessage.CFIUpdate);
  v33 = a2;
  v11 = sub_1007A2074();
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
      sub_1006EE7B4(&qword_100AE6000, &type metadata accessor for ContentMessage.CFIUpdate, &protocol conformance descriptor for ContentMessage.CFIUpdate);
      v21 = sub_1007A2124();
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
    sub_1006EA768(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1006E67E0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100796C04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1006EE7B4(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = sub_1007A2074();
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
      sub_1006EE7B4(&qword_100ADAD90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_1007A2124();
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
    sub_1006EAA30(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1006E6AC0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1007A3634();

    if (v9)
    {

      sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1007A3624();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1006E7F60(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1006E8EF0(v20 + 1, &qword_100AF3950, &unk_100840500);
    }

    v18 = v8;
    sub_1006EA3D0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
  v11 = sub_1007A3174(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1006EACF8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1007A3184();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1006E6D08(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1007A3634();

    if (v9)
    {

      type metadata accessor for BKTapActionView();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1007A3624();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1006E8170(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1006E8EF0(v20 + 1, &qword_100AD36F8, &qword_10080CC00);
    }

    v18 = v8;
    sub_1006EA3D0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for BKTapActionView();
  v11 = sub_1007A3174(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1006EAE98(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1007A3184();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1006E6F4C(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  v12 = sub_1007A3BF4();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
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
    v18 = *v5;
    sub_1006EB028(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1006E704C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1007A3C04();
  if (a3)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  v8 = sub_1007A3C44();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1006EB164(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_1007A3AB4() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_1006E71D4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10079A184();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1006EE7B4(&unk_100AE23C0, &type metadata accessor for BookHistoryFeature, &protocol conformance descriptor for BookHistoryFeature);
  v33 = a2;
  v11 = sub_1007A2074();
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
      sub_1006EE7B4(&qword_100AF3970, &type metadata accessor for BookHistoryFeature, &protocol conformance descriptor for BookHistoryFeature);
      v21 = sub_1007A2124();
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
    sub_1006EB320(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1006E74B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10079A144();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1006EE7B4(&qword_100AD36C8, &type metadata accessor for ClusteringOptions.MediaType, &protocol conformance descriptor for ClusteringOptions.MediaType);
  v33 = a2;
  v11 = sub_1007A2074();
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
      sub_1006EE7B4(&qword_100AD36D0, &type metadata accessor for ClusteringOptions.MediaType, &protocol conformance descriptor for ClusteringOptions.MediaType);
      v21 = sub_1007A2124();
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
    sub_1006EB5E8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1006E7794(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10079FFA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1006EE7B4(&qword_100AF3990, &type metadata accessor for SelectionInfo.ID, &protocol conformance descriptor for SelectionInfo.ID);
  v33 = a2;
  v11 = sub_1007A2074();
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
      sub_1006EE7B4(&qword_100AF3998, &type metadata accessor for SelectionInfo.ID, &protocol conformance descriptor for SelectionInfo.ID);
      v21 = sub_1007A2124();
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
    sub_1006EB8B0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1006E7A74(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10079FD44();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1006EE7B4(&qword_100AE23B8, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
  v33 = a2;
  v11 = sub_1007A2074();
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
      sub_1006EE7B4(&unk_100AEB800, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
      v21 = sub_1007A2124();
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
    sub_1006EBB78(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1006E7D54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001F1160(&qword_100AF39A8, &unk_100840570);
    v2 = sub_1007A36E4();
    v15 = v2;
    sub_1007A35E4();
    for (; sub_1007A3654(); ++*(v2 + 16))
    {
      sub_1001F1160(&unk_100AE2450, &qword_100823EC8);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_1006E85D0(v9 + 1);
        v2 = v15;
      }

      result = sub_1007A2074();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1006E7F60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001F1160(&qword_100AF3950, &unk_100840500);
    v2 = sub_1007A36E4();
    v15 = v2;
    sub_1007A35E4();
    if (sub_1007A3654())
    {
      sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1006E8EF0(v9 + 1, &qword_100AF3950, &unk_100840500);
        }

        v2 = v15;
        result = sub_1007A3174(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1007A3654());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1006E8170(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001F1160(&qword_100AD36F8, &qword_10080CC00);
    v2 = sub_1007A36E4();
    v15 = v2;
    sub_1007A35E4();
    if (sub_1007A3654())
    {
      type metadata accessor for BKTapActionView();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1006E8EF0(v9 + 1, &qword_100AD36F8, &qword_10080CC00);
        }

        v2 = v15;
        result = sub_1007A3174(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1007A3654());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_1006E8370(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F1160(&qword_100AEE530, &qword_100840510);
  v4 = sub_1007A36D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v21 = sub_1007A3C44();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1006E85D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F1160(&qword_100AF39A8, &unk_100840570);
  v4 = sub_1007A36D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1001F1160(&unk_100AE2450, &qword_100823EC8);
      v18 = sub_1007A2074();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1006E8838(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1007A0044();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1001F1160(&qword_100AF3960, &qword_100840518);
  v6 = sub_1007A36D4();
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
      sub_1006EE7B4(&qword_100AF3958, &type metadata accessor for ContentMessage.CFIUpdate, &protocol conformance descriptor for ContentMessage.CFIUpdate);
      v21 = sub_1007A2074();
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

void sub_1006E8B94(uint64_t a1)
{
  v2 = v1;
  v37 = sub_100796C04();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1001F1160(&qword_100AF3988, &qword_100840550);
  v6 = sub_1007A36D4();
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
      sub_1006EE7B4(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_1007A2074();
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

void sub_1006E8EF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1001F1160(a2, a3);
  v6 = sub_1007A36D4();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_1007A3174(*(v7 + 40));
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1006E9110(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1001F1160(a2, a3);
  v6 = sub_1007A36D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    v28 = v4;
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_1007A3BF4();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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

    if (v10 >= 64)
    {
      bzero((v5 + 56), 8 * v13);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v4 = v28;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1006E932C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F1160(&qword_100AF3980, &unk_100840540);
  v4 = sub_1007A36D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_1007A3C04();
      if (v19)
      {
        sub_1007A3C24(1u);
        _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1007A3C24(0);
      }

      v21 = sub_1007A3C44();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1006E95A8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10079A184();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1001F1160(&qword_100AF3978, &unk_100840530);
  v6 = sub_1007A36D4();
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
      sub_1006EE7B4(&unk_100AE23C0, &type metadata accessor for BookHistoryFeature, &protocol conformance descriptor for BookHistoryFeature);
      v21 = sub_1007A2074();
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

void sub_1006E9904(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10079A144();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1001F1160(&qword_100AD36C0, &qword_10080CBD8);
  v6 = sub_1007A36D4();
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
      sub_1006EE7B4(&qword_100AD36C8, &type metadata accessor for ClusteringOptions.MediaType, &protocol conformance descriptor for ClusteringOptions.MediaType);
      v21 = sub_1007A2074();
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

void sub_1006E9C60(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10079FFA4();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1001F1160(&qword_100AF39A0, &qword_100840558);
  v6 = sub_1007A36D4();
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
      sub_1006EE7B4(&qword_100AF3990, &type metadata accessor for SelectionInfo.ID, &protocol conformance descriptor for SelectionInfo.ID);
      v21 = sub_1007A2074();
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

void sub_1006E9FBC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10079FD44();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1001F1160(&qword_100AF3968, &unk_100840520);
  v6 = sub_1007A36D4();
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
      sub_1006EE7B4(&qword_100AE23B8, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
      v21 = sub_1007A2074();
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

unint64_t sub_1006EA318(uint64_t a1, uint64_t a2)
{
  sub_1001F1160(&unk_100AE2450, &qword_100823EC8);
  sub_1007A2074();
  result = sub_1007A35C4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1006EA3D0(uint64_t a1, void *a2)
{
  sub_1007A3174(a2[5]);
  result = sub_1007A35C4();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_1006EA454(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1006E8370(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1006EBE40();
      goto LABEL_16;
    }

    sub_1006EC750(v8 + 1);
  }

  v10 = *v4;
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v11 = sub_1007A3C44();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1007A3AB4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1007A3B14();
  __break(1u);
}

void sub_1006EA5D4(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1006E85D0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1006EBF9C();
      goto LABEL_12;
    }

    sub_1006EC988(v6 + 1);
  }

  v8 = *v3;
  sub_1001F1160(&unk_100AE2450, &qword_100823EC8);
  v9 = sub_1007A2074();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while ((sub_1007A2124() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1007A3B14();
  __break(1u);
}

uint64_t sub_1006EA768(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1007A0044();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
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
    sub_1006E8838(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1006EC518(&type metadata accessor for ContentMessage.CFIUpdate, &qword_100AF3960, &qword_100840518);
      goto LABEL_12;
    }

    sub_1006ECBC8(v11 + 1);
  }

  v13 = *v3;
  sub_1006EE7B4(&qword_100AF3958, &type metadata accessor for ContentMessage.CFIUpdate, &protocol conformance descriptor for ContentMessage.CFIUpdate);
  v14 = sub_1007A2074();
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
      sub_1006EE7B4(&qword_100AE6000, &type metadata accessor for ContentMessage.CFIUpdate, &protocol conformance descriptor for ContentMessage.CFIUpdate);
      v22 = sub_1007A2124();
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
  result = sub_1007A3B14();
  __break(1u);
  return result;
}

uint64_t sub_1006EAA30(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_100796C04();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
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
    sub_1006E8B94(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1006EC518(&type metadata accessor for UUID, &qword_100AF3988, &qword_100840550);
      goto LABEL_12;
    }

    sub_1006ECEE4(v11 + 1);
  }

  v13 = *v3;
  sub_1006EE7B4(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = sub_1007A2074();
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
      sub_1006EE7B4(&qword_100ADAD90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = sub_1007A2124();
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
  result = sub_1007A3B14();
  __break(1u);
  return result;
}

void sub_1006EACF8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1006E8EF0(v6 + 1, &qword_100AF3950, &unk_100840500);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1006EC13C(&qword_100AF3950, &unk_100840500);
      goto LABEL_12;
    }

    sub_1006ED200(v6 + 1, &qword_100AF3950, &unk_100840500);
  }

  v8 = *v3;
  v9 = sub_1007A3174(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1007A3184();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1007A3B14();
  __break(1u);
}

void sub_1006EAE98(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1006E8EF0(v6 + 1, &qword_100AD36F8, &qword_10080CC00);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1006EC13C(&qword_100AD36F8, &qword_10080CC00);
      goto LABEL_12;
    }

    sub_1006ED200(v6 + 1, &qword_100AD36F8, &qword_10080CC00);
  }

  v8 = *v3;
  v9 = sub_1007A3174(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for BKTapActionView();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1007A3184();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1007A3B14();
  __break(1u);
}

void sub_1006EB028(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1006E9110(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      sub_1006EC290(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_1006ED40C(v8 + 1, a4, a5);
  }

  v11 = *v6;
  v12 = sub_1007A3BF4();
  v13 = -1 << *(v11 + 32);
  a2 = v12 & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v11 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = result;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1007A3B14();
  __break(1u);
}

void sub_1006EB164(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    sub_1006E932C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1006EC3C0();
      goto LABEL_23;
    }

    sub_1006ED5F4(v9 + 1);
  }

  v11 = *v4;
  sub_1007A3C04();
  if (a2)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  v12 = sub_1007A3C44();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = v12 & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == result && v18 == a2;
          if (v19 || (sub_1007A3AB4() & 1) != 0)
          {
LABEL_22:
            sub_1001F1160(&qword_100AD4F30, &unk_100816940);
            sub_1007A3B14();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = result;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

uint64_t sub_1006EB320(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_10079A184();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
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
    sub_1006E95A8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1006EC518(&type metadata accessor for BookHistoryFeature, &qword_100AF3978, &unk_100840530);
      goto LABEL_12;
    }

    sub_1006ED848(v11 + 1);
  }

  v13 = *v3;
  sub_1006EE7B4(&unk_100AE23C0, &type metadata accessor for BookHistoryFeature, &protocol conformance descriptor for BookHistoryFeature);
  v14 = sub_1007A2074();
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
      sub_1006EE7B4(&qword_100AF3970, &type metadata accessor for BookHistoryFeature, &protocol conformance descriptor for BookHistoryFeature);
      v22 = sub_1007A2124();
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
  result = sub_1007A3B14();
  __break(1u);
  return result;
}

uint64_t sub_1006EB5E8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_10079A144();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
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
    sub_1006E9904(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1006EC518(&type metadata accessor for ClusteringOptions.MediaType, &qword_100AD36C0, &qword_10080CBD8);
      goto LABEL_12;
    }

    sub_1006EDB64(v11 + 1);
  }

  v13 = *v3;
  sub_1006EE7B4(&qword_100AD36C8, &type metadata accessor for ClusteringOptions.MediaType, &protocol conformance descriptor for ClusteringOptions.MediaType);
  v14 = sub_1007A2074();
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
      sub_1006EE7B4(&qword_100AD36D0, &type metadata accessor for ClusteringOptions.MediaType, &protocol conformance descriptor for ClusteringOptions.MediaType);
      v22 = sub_1007A2124();
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
  result = sub_1007A3B14();
  __break(1u);
  return result;
}

uint64_t sub_1006EB8B0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_10079FFA4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
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
    sub_1006E9C60(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1006EC518(&type metadata accessor for SelectionInfo.ID, &qword_100AF39A0, &qword_100840558);
      goto LABEL_12;
    }

    sub_1006EDE80(v11 + 1);
  }

  v13 = *v3;
  sub_1006EE7B4(&qword_100AF3990, &type metadata accessor for SelectionInfo.ID, &protocol conformance descriptor for SelectionInfo.ID);
  v14 = sub_1007A2074();
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
      sub_1006EE7B4(&qword_100AF3998, &type metadata accessor for SelectionInfo.ID, &protocol conformance descriptor for SelectionInfo.ID);
      v22 = sub_1007A2124();
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
  result = sub_1007A3B14();
  __break(1u);
  return result;
}

uint64_t sub_1006EBB78(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_10079FD44();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
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
    sub_1006E9FBC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1006EC518(&type metadata accessor for PageLocation, &qword_100AF3968, &unk_100840520);
      goto LABEL_12;
    }

    sub_1006EE19C(v11 + 1);
  }

  v13 = *v3;
  sub_1006EE7B4(&qword_100AE23B8, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
  v14 = sub_1007A2074();
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
      sub_1006EE7B4(&unk_100AEB800, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
      v22 = sub_1007A2124();
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
  result = sub_1007A3B14();
  __break(1u);
  return result;
}

void sub_1006EBE40()
{
  v1 = v0;
  sub_1001F1160(&qword_100AEE530, &qword_100840510);
  v2 = *v0;
  v3 = sub_1007A36C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1006EBF9C()
{
  v1 = v0;
  sub_1001F1160(&qword_100AF39A8, &unk_100840570);
  v2 = *v0;
  v3 = sub_1007A36C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1006EC13C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001F1160(a1, a2);
  v4 = *v2;
  v5 = sub_1007A36C4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1006EC290(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001F1160(a1, a2);
  v4 = *v2;
  v5 = sub_1007A36C4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1006EC3C0()
{
  v1 = v0;
  sub_1001F1160(&qword_100AF3980, &unk_100840540);
  v2 = *v0;
  v3 = sub_1007A36C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1006EC518(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_1001F1160(a2, a3);
  v11 = *v3;
  v12 = sub_1007A36C4();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_1006EC750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F1160(&qword_100AEE530, &qword_100840510);
  v4 = sub_1007A36D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1007A3C04();

      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      v20 = sub_1007A3C44();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }
}

void sub_1006EC988(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F1160(&qword_100AF39A8, &unk_100840570);
  v4 = sub_1007A36D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));

      sub_1001F1160(&unk_100AE2450, &qword_100823EC8);
      v17 = sub_1007A2074();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v2 = v5;
  }
}

void sub_1006ECBC8(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1007A0044();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1001F1160(&qword_100AF3960, &qword_100840518);
  v7 = sub_1007A36D4();
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
      sub_1006EE7B4(&qword_100AF3958, &type metadata accessor for ContentMessage.CFIUpdate, &protocol conformance descriptor for ContentMessage.CFIUpdate);
      v21 = sub_1007A2074();
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

void sub_1006ECEE4(uint64_t a1)
{
  v2 = v1;
  v34 = sub_100796C04();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1001F1160(&qword_100AF3988, &qword_100840550);
  v7 = sub_1007A36D4();
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
      sub_1006EE7B4(&qword_100ADAD88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = sub_1007A2074();
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

void sub_1006ED200(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1001F1160(a2, a3);
  v6 = sub_1007A36D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v20 = sub_1007A3174(v18);
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v28;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }
}

void sub_1006ED40C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1001F1160(a2, a3);
  v6 = sub_1007A36D4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_1007A3BF4();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_24;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v4 = v7;
  }
}

void sub_1006ED5F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001F1160(&qword_100AF3980, &unk_100840540);
  v4 = sub_1007A36D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_1007A3C04();
      if (v18)
      {
        sub_1007A3C24(1u);

        _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1007A3C24(0);
      }

      v20 = sub_1007A3C44();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

void sub_1006ED848(uint64_t a1)
{
  v2 = v1;
  v34 = sub_10079A184();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1001F1160(&qword_100AF3978, &unk_100840530);
  v7 = sub_1007A36D4();
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
      sub_1006EE7B4(&unk_100AE23C0, &type metadata accessor for BookHistoryFeature, &protocol conformance descriptor for BookHistoryFeature);
      v21 = sub_1007A2074();
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

void sub_1006EDB64(uint64_t a1)
{
  v2 = v1;
  v34 = sub_10079A144();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1001F1160(&qword_100AD36C0, &qword_10080CBD8);
  v7 = sub_1007A36D4();
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
      sub_1006EE7B4(&qword_100AD36C8, &type metadata accessor for ClusteringOptions.MediaType, &protocol conformance descriptor for ClusteringOptions.MediaType);
      v21 = sub_1007A2074();
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

void sub_1006EDE80(uint64_t a1)
{
  v2 = v1;
  v34 = sub_10079FFA4();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1001F1160(&qword_100AF39A0, &qword_100840558);
  v7 = sub_1007A36D4();
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
      sub_1006EE7B4(&qword_100AF3990, &type metadata accessor for SelectionInfo.ID, &protocol conformance descriptor for SelectionInfo.ID);
      v21 = sub_1007A2074();
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

void sub_1006EE19C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_10079FD44();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1001F1160(&qword_100AF3968, &unk_100840520);
  v7 = sub_1007A36D4();
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
      sub_1006EE7B4(&qword_100AE23B8, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
      v21 = sub_1007A2074();
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

id sub_1006EE4B8(uint64_t a1, uint64_t a2, void *a3, void *a4, objc_class *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37[3] = a6;
  v37[4] = a8;
  v16 = sub_1002256EC(v37);
  (*(*(a6 - 8) + 32))(v16, a1, a6);
  v36[3] = a7;
  v36[4] = a9;
  v17 = sub_1002256EC(v36);
  (*(*(a7 - 8) + 32))(v17, a2, a7);
  v18 = objc_allocWithZone(a5);
  *&v18[OBJC_IVAR____TtC5Books16RemoveActionItem_attributes] = 2;
  v19 = OBJC_IVAR____TtC5Books16RemoveActionItem_type;
  v20 = enum case for ContextActionType.remove(_:);
  v21 = sub_100797144();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  sub_100009864(v37, &v18[OBJC_IVAR____TtC5Books16RemoveActionItem_data]);
  sub_100009864(v36, &v18[OBJC_IVAR____TtC5Books16RemoveActionItem_context]);
  *&v18[OBJC_IVAR____TtC5Books16RemoveActionItem_tracker] = a3;
  sub_100009864(a4, &v18[OBJC_IVAR____TtC5Books16RemoveActionItem_figaroProvider]);
  v22 = objc_opt_self();
  v23 = a3;
  v24 = [v22 delegate];
  v25 = [v24 serviceCenter];

  v26 = [objc_opt_self() defaultManager];
  v27 = [v22 delegate];
  v28 = [v27 engagementManager];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v30 = result;
    v31 = [objc_opt_self() defaultHelper];
    v32 = &v18[OBJC_IVAR____TtC5Books16RemoveActionItem_libraryOperationProvider];
    *(v32 + 3) = &type metadata for MenuLibraryOperationProvider;
    *(v32 + 4) = &off_100A266E8;
    v33 = swift_allocObject();
    *v32 = v33;
    v33[2] = v25;
    v33[3] = v26;
    v33[4] = v28;
    v33[5] = v30;
    v33[6] = v31;
    v35.receiver = v18;
    v35.super_class = a5;
    v34 = objc_msgSendSuper2(&v35, "init");
    sub_1000074E0(a4);
    sub_1000074E0(v36);
    sub_1000074E0(v37);
    return v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006EE7B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006EE7FC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

uint64_t sub_1006EE844(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_1006E0ECC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1006EE928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_1006E5518(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1006EEA28()
{
  v0 = sub_1001F1160(&qword_100AF3AC0, &qword_1008408C8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  sub_1006F6D7C();
  sub_100795F94();
  v4 = sub_100795F14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_100795F94();
  v6 = sub_100795F14();
  v5(v3, v0);
  sub_1001F1160(&qword_100AF3AD0, &qword_1008408D8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080EFF0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_100795F04();

  return v8;
}

uint64_t sub_1006EEC30()
{
  v0 = sub_100795F34();
  sub_1001F1160(&qword_100AF39F0, &qword_1008406D8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10080B690;
  *(v1 + 32) = v0;
  v2 = sub_100795F24();

  return v2;
}

uint64_t sub_1006EECB4(uint64_t a1)
{
  v32 = sub_1001F1160(&qword_100AF3AC0, &qword_1008408C8);
  v28 = *(v32 - 8);
  __chkstk_darwin(v32);
  v3 = &v19 - v2;
  v4 = sub_1001F1160(&qword_100AF3AC8, &qword_1008408D0);
  __chkstk_darwin(v4);
  sub_1006F6D7C();
  sub_100795FC4();
  v26 = "ages one at a time";
  v33._countAndFlagsBits = 0xD000000000000016;
  v33._object = 0x80000001008E8130;
  sub_100795FB4(v33);
  swift_getKeyPath();
  v29 = sub_1006F6DD0();
  v31 = a1;
  sub_100795EF4();

  sub_100795FA4();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_100795FB4(v34);
  sub_100795FD4();
  v5 = sub_100795F14();
  v6 = *(v28 + 8);
  v27 = v5;
  v28 += 8;
  v30 = v6;
  v7 = v32;
  v6(v3, v32);
  sub_100795FC4();
  v35._countAndFlagsBits = 0xD000000000000016;
  v35._object = (v26 | 0x8000000000000000);
  sub_100795FB4(v35);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v36._countAndFlagsBits = 0x696D2065726F6D20;
  v36._object = 0xED0000736574756ELL;
  sub_100795FB4(v36);
  sub_100795FD4();
  v26 = sub_100795F14();
  v8 = v30;
  v30(v3, v7);
  sub_100795FC4();
  v24 = "Set a Sleep Timer for ";
  v37._object = 0x80000001008E8150;
  v37._countAndFlagsBits = 0xD000000000000010;
  sub_100795FB4(v37);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_100795FB4(v38);
  sub_100795FD4();
  v25 = sub_100795F14();
  v8(v3, v32);
  sub_100795FC4();
  v39._object = (v24 | 0x8000000000000000);
  v39._countAndFlagsBits = 0xD000000000000010;
  sub_100795FB4(v39);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v40._countAndFlagsBits = 0x696D2065726F6D20;
  v40._object = 0xED0000736574756ELL;
  sub_100795FB4(v40);
  sub_100795FD4();
  v24 = sub_100795F14();
  v9 = v32;
  v10 = v30;
  v30(v3, v32);
  sub_100795FC4();
  v41._countAndFlagsBits = 0x6F622065736F6C43;
  v41._object = 0xEE00206E69206B6FLL;
  sub_100795FB4(v41);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_100795FB4(v42);
  sub_100795FD4();
  v23 = sub_100795F14();
  v10(v3, v9);
  sub_100795FC4();
  v43._countAndFlagsBits = 0x6F622065736F6C43;
  v43._object = 0xEE00206E69206B6FLL;
  sub_100795FB4(v43);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v44._countAndFlagsBits = 0x696D2065726F6D20;
  v44._object = 0xED0000736574756ELL;
  sub_100795FB4(v44);
  sub_100795FD4();
  v22 = sub_100795F14();
  v10(v3, v32);
  sub_100795FC4();
  v20 = "Sleep Timer for ";
  v45._countAndFlagsBits = 0xD00000000000001BLL;
  v45._object = 0x80000001008E8170;
  sub_100795FB4(v45);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_100795FB4(v46);
  sub_100795FD4();
  v21 = sub_100795F14();
  v11 = v32;
  v30(v3, v32);
  sub_100795FC4();
  v47._countAndFlagsBits = 0xD00000000000001BLL;
  v47._object = (v20 | 0x8000000000000000);
  sub_100795FB4(v47);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v48._countAndFlagsBits = 0x696D2065726F6D20;
  v48._object = 0xED0000736574756ELL;
  sub_100795FB4(v48);
  sub_100795FD4();
  v12 = sub_100795F14();
  v30(v3, v11);
  sub_1001F1160(&qword_100AF3AD0, &qword_1008408D8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100811450;
  v14 = v26;
  *(v13 + 32) = v27;
  *(v13 + 40) = v14;
  v15 = v24;
  *(v13 + 48) = v25;
  *(v13 + 56) = v15;
  v16 = v22;
  *(v13 + 64) = v23;
  *(v13 + 72) = v16;
  *(v13 + 80) = v21;
  *(v13 + 88) = v12;
  v17 = sub_100795F04();

  return v17;
}

uint64_t sub_1006EF594(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AF3AA8, &qword_1008408B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1006F6EB8(a1, &v9 - v6);
  sub_1006F6EB8(v7, v4);
  sub_100795E04();
  return sub_1006F6F28(v7);
}

uint64_t sub_1006EF660()
{
  v0 = sub_100795F84();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1003CAC28();
  sub_100795EF4();

  sub_1006F6D7C();
  sub_100795F74();
  v4 = sub_100795F64();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1006F6DD0();
  sub_100795EF4();

  sub_100795F74();
  v6 = sub_100795F64();
  v5(v3, v0);
  sub_1001F1160(&qword_100AF39E8, &qword_1008406D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080EFF0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_100795F54();

  return v8;
}

uint64_t sub_1006EF864()
{
  v0 = sub_100795F34();
  v1 = sub_100795F34();
  v2 = sub_100795F34();
  v3 = sub_100795F34();
  sub_1001F1160(&qword_100AF39F0, &qword_1008406D8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100815060;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_100795F24();

  return v5;
}

uint64_t sub_1006EF958()
{
  v0 = sub_1001F1160(&qword_100AF3A88, &qword_100840850);
  v1 = *(v0 - 8);
  v16 = v0;
  v17 = v1;
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = sub_1001F1160(&qword_100AF3A98, &qword_100840860);
  __chkstk_darwin(v4);
  sub_1003FE9D4();
  sub_100795FC4();
  v18._countAndFlagsBits = 0x20656C62616E45;
  v18._object = 0xE700000000000000;
  sub_100795FB4(v18);
  swift_getKeyPath();
  sub_1003FCC50();
  sub_100795EF4();

  sub_100795FA4();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_100795FB4(v19);
  sub_100795FD4();
  v15 = sub_100795F14();
  v5 = v16;
  v13 = *(v17 + 8);
  v17 += 8;
  v13(v3, v16);
  sub_100795FC4();
  v20._countAndFlagsBits = 0x206E6F206E727554;
  v20._object = 0xE800000000000000;
  sub_100795FB4(v20);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_100795FB4(v21);
  sub_100795FD4();
  v14 = sub_100795F14();
  v6 = v13;
  v13(v3, v5);
  sub_100795FC4();
  v22._countAndFlagsBits = 0x206E727554;
  v22._object = 0xE500000000000000;
  sub_100795FB4(v22);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v23._countAndFlagsBits = 7237408;
  v23._object = 0xE300000000000000;
  sub_100795FB4(v23);
  sub_100795FD4();
  v7 = sub_100795F14();
  v6(v3, v16);
  sub_1001F1160(&qword_100AF3A90, &qword_100840858);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100812CF0;
  v9 = v14;
  *(v8 + 32) = v15;
  *(v8 + 40) = v9;
  *(v8 + 48) = v7;
  v10 = sub_100795F04();

  return v10;
}

uint64_t sub_1006EFDA4(uint64_t a1)
{
  v2 = sub_100795DD4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_100795E04();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1006EFED8()
{
  v0 = sub_1001F1160(&qword_100AF3A88, &qword_100840850);
  v1 = *(v0 - 8);
  v16 = v0;
  v17 = v1;
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = sub_1001F1160(&qword_100AF3A98, &qword_100840860);
  __chkstk_darwin(v4);
  sub_1003FE9D4();
  sub_100795FC4();
  v18._countAndFlagsBits = 0x20656C6261736944;
  v18._object = 0xE800000000000000;
  sub_100795FB4(v18);
  swift_getKeyPath();
  sub_1003FCC50();
  sub_100795EF4();

  sub_100795FA4();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_100795FB4(v19);
  sub_100795FD4();
  v15 = sub_100795F14();
  v5 = v16;
  v13 = *(v17 + 8);
  v17 += 8;
  v13(v3, v16);
  sub_100795FC4();
  v20._countAndFlagsBits = 0x66666F206E727554;
  v20._object = 0xE900000000000020;
  sub_100795FB4(v20);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_100795FB4(v21);
  sub_100795FD4();
  v14 = sub_100795F14();
  v6 = v13;
  v13(v3, v5);
  sub_100795FC4();
  v22._countAndFlagsBits = 0x206E727554;
  v22._object = 0xE500000000000000;
  sub_100795FB4(v22);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v23._countAndFlagsBits = 1717989152;
  v23._object = 0xE400000000000000;
  sub_100795FB4(v23);
  sub_100795FD4();
  v7 = sub_100795F14();
  v6(v3, v16);
  sub_1001F1160(&qword_100AF3A90, &qword_100840858);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100812CF0;
  v9 = v14;
  *(v8 + 32) = v15;
  *(v8 + 40) = v9;
  *(v8 + 48) = v7;
  v10 = sub_100795F04();

  return v10;
}

uint64_t sub_1006F0328()
{
  v0 = sub_1001F1160(&qword_100AF3A88, &qword_100840850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  sub_1003FE9D4();
  sub_100795F94();
  v13 = sub_100795F14();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_100795F94();
  v5 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v6 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v7 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v8 = sub_100795F14();
  v4(v3, v0);
  sub_1001F1160(&qword_100AF3A90, &qword_100840858);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10081E180;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = sub_100795F04();

  return v10;
}

uint64_t sub_1006F05E4()
{
  v0 = sub_100795F84();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1006F6D24();
  sub_100795EF4();

  sub_1003FE9D4();
  sub_100795F74();
  v4 = sub_100795F64();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1003FCC50();
  sub_100795EF4();

  sub_100795F74();
  v6 = sub_100795F64();
  v5(v3, v0);
  sub_1001F1160(&qword_100AF39E8, &qword_1008406D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080EFF0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_100795F54();

  return v8;
}

uint64_t sub_1006F07D4()
{
  v0 = sub_1001F1160(&qword_100AF3A88, &qword_100840850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - v2;
  sub_1003FE9D4();
  sub_100795F94();
  v14 = sub_100795F14();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_100795F94();
  v13 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v5 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v6 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v7 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v8 = sub_100795F14();
  v4(v3, v0);
  sub_1001F1160(&qword_100AF3A90, &qword_100840858);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100813170;
  v10 = v13;
  *(v9 + 32) = v14;
  *(v9 + 40) = v10;
  *(v9 + 48) = v5;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 72) = v8;
  v11 = sub_100795F04();

  return v11;
}

uint64_t sub_1006F0ADC()
{
  v0 = sub_100795F84();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1006F6D24();
  sub_100795EF4();

  sub_1003FE9D4();
  sub_100795F74();
  v4 = sub_100795F64();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1003FCC50();
  sub_100795EF4();

  sub_100795F74();
  v6 = sub_100795F64();
  v5(v3, v0);
  sub_1001F1160(&qword_100AF39E8, &qword_1008406D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080EFF0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_100795F54();

  return v8;
}

uint64_t sub_1006F0CCC()
{
  v0 = sub_1001F1160(&qword_100AF3A88, &qword_100840850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_1003FE9D4();
  sub_100795F94();
  v4 = sub_100795F14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_100795F94();
  v6 = sub_100795F14();
  v5(v3, v0);
  sub_100795F94();
  v7 = sub_100795F14();
  v5(v3, v0);
  sub_1001F1160(&qword_100AF3A90, &qword_100840858);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100812CF0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_100795F04();

  return v9;
}

uint64_t sub_1006F0EE8()
{
  v0 = sub_100795F84();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1006F6D24();
  sub_100795EF4();

  sub_1003FE9D4();
  sub_100795F74();
  v4 = sub_100795F64();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1003FCC50();
  sub_100795EF4();

  sub_100795F74();
  v6 = sub_100795F64();
  v5(v3, v0);
  sub_1001F1160(&qword_100AF39E8, &qword_1008406D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080EFF0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_100795F54();

  return v8;
}

uint64_t sub_1006F10EC()
{
  v0 = sub_1001F1160(&qword_100AF3A88, &qword_100840850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_1003FE9D4();
  sub_100795F94();
  v4 = sub_100795F14();
  (*(v1 + 8))(v3, v0);
  sub_1001F1160(&qword_100AF3A90, &qword_100840858);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10080B690;
  *(v5 + 32) = v4;
  v6 = sub_100795F04();

  return v6;
}

uint64_t sub_1006F1250()
{
  v0 = sub_100795F84();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1006F6D24();
  sub_100795EF4();

  sub_1003FE9D4();
  sub_100795F74();
  v4 = sub_100795F64();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1003FCC50();
  sub_100795EF4();

  sub_100795F74();
  v6 = sub_100795F64();
  v5(v3, v0);
  sub_1001F1160(&qword_100AF39E8, &qword_1008406D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080EFF0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_100795F54();

  return v8;
}

uint64_t sub_1006F1440()
{
  v0 = sub_1001F1160(&qword_100AF3A88, &qword_100840850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_1003FE9D4();
  sub_100795F94();
  v4 = sub_100795F14();
  (*(v1 + 8))(v3, v0);
  sub_1001F1160(&qword_100AF3A90, &qword_100840858);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10080B690;
  *(v5 + 32) = v4;
  v6 = sub_100795F04();

  return v6;
}

uint64_t sub_1006F15A4()
{
  v0 = sub_100795F84();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1006F6D24();
  sub_100795EF4();

  sub_1003FE9D4();
  sub_100795F74();
  v4 = sub_100795F64();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_1003FCC50();
  sub_100795EF4();

  sub_100795F74();
  v6 = sub_100795F64();
  v5(v3, v0);
  sub_1001F1160(&qword_100AF39E8, &qword_1008406D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10080EFF0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_100795F54();

  return v8;
}

uint64_t sub_1006F17D0(uint64_t a1)
{
  v31 = sub_1001F1160(&qword_100AF3A68, &qword_1008407C0);
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v3 = &v21 - v2;
  v4 = sub_1001F1160(&qword_100AF3A70, &qword_1008407C8);
  __chkstk_darwin(v4);
  sub_1002200FC();
  sub_100795FC4();
  v35._object = 0x80000001008E7E20;
  v35._countAndFlagsBits = 0xD000000000000015;
  sub_100795FB4(v35);
  swift_getKeyPath();
  v5 = sub_10021F4CC();
  v33 = a1;
  sub_100795EF4();

  sub_100795FA4();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_100795FB4(v36);
  sub_100795FD4();
  v6 = sub_100795F14();
  v7 = *(v34 + 8);
  v34 += 8;
  v29 = v6;
  v30 = v7;
  v8 = v31;
  v7(v3, v31);
  sub_100795FC4();
  v37._countAndFlagsBits = 0x6B6F6F6220747550;
  v37._object = 0xEC000000206E6F20;
  sub_100795FB4(v37);
  swift_getKeyPath();
  v32 = v5;
  sub_100795EF4();

  sub_100795FA4();

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_100795FB4(v38);
  sub_100795FD4();
  v28 = sub_100795F14();
  v30(v3, v8);
  sub_100795FC4();
  v39._object = 0x80000001008E7E40;
  v39._countAndFlagsBits = 0xD000000000000015;
  sub_100795FB4(v39);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  sub_100795FB4(v40);
  sub_100795FD4();
  v27 = sub_100795F14();
  v9 = v30;
  v30(v3, v31);
  sub_100795FC4();
  v41._countAndFlagsBits = 0x20796D20656B614DLL;
  v41._object = 0xED0000206B6F6F62;
  sub_100795FB4(v41);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_100795FB4(v42);
  sub_100795FD4();
  v26 = sub_100795F14();
  v10 = v31;
  v9(v3, v31);
  sub_100795FC4();
  v43._countAndFlagsBits = 543519573;
  v43._object = 0xE400000000000000;
  sub_100795FB4(v43);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  sub_100795FB4(v44);
  sub_100795FD4();
  v25 = sub_100795F14();
  v9(v3, v10);
  sub_100795FC4();
  v45._countAndFlagsBits = 0xD000000000000013;
  v45._object = 0x80000001008E7E60;
  sub_100795FB4(v45);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_100795FB4(v46);
  sub_100795FD4();
  v24 = sub_100795F14();
  v30(v3, v31);
  sub_100795FC4();
  v47._object = 0x80000001008E7E80;
  v47._countAndFlagsBits = 0x1000000000000016;
  sub_100795FB4(v47);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  sub_100795FB4(v48);
  sub_100795FD4();
  v23 = sub_100795F14();
  v30(v3, v31);
  sub_100795FC4();
  v49._countAndFlagsBits = 0x7420686374697753;
  v49._object = 0xEA0000000000206FLL;
  sub_100795FB4(v49);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_100795FB4(v50);
  sub_100795FD4();
  v22 = sub_100795F14();
  v11 = v30;
  v12 = v31;
  v30(v3, v31);
  sub_100795FC4();
  v51._countAndFlagsBits = 0xD000000000000018;
  v51._object = 0x80000001008E7EA0;
  sub_100795FB4(v51);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  sub_100795FB4(v52);
  sub_100795FD4();
  v21 = sub_100795F14();
  v11(v3, v12);
  sub_100795FC4();
  v53._countAndFlagsBits = 543519573;
  v53._object = 0xE400000000000000;
  sub_100795FB4(v53);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v54._countAndFlagsBits = 0x6F6F6220726F6620;
  v54._object = 0xEE0074786574206BLL;
  sub_100795FB4(v54);
  sub_100795FD4();
  v13 = sub_100795F14();
  v11(v3, v12);
  sub_1001F1160(&qword_100AF3A78, &qword_1008407F8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10083C7A0;
  v15 = v28;
  *(v14 + 32) = v29;
  *(v14 + 40) = v15;
  v16 = v26;
  *(v14 + 48) = v27;
  *(v14 + 56) = v16;
  v17 = v24;
  *(v14 + 64) = v25;
  *(v14 + 72) = v17;
  v18 = v22;
  *(v14 + 80) = v23;
  *(v14 + 88) = v18;
  *(v14 + 96) = v21;
  *(v14 + 104) = v13;
  v19 = sub_100795F04();

  return v19;
}

uint64_t sub_1006F21F4()
{
  v0 = sub_1001F1160(&qword_100AF3A50, &qword_100840788);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - v2;
  sub_100571F08();
  sub_100795F94();
  v19 = sub_100795F14();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_100795F94();
  v18 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v17 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v16 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v15 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v5 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v6 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v7 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v8 = sub_100795F14();
  v4(v3, v0);
  sub_1001F1160(&qword_100AF3A58, &qword_100840790);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10080B6A0;
  v10 = v18;
  *(v9 + 32) = v19;
  *(v9 + 40) = v10;
  v11 = v16;
  *(v9 + 48) = v17;
  *(v9 + 56) = v11;
  *(v9 + 64) = v15;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v12 = sub_100795F04();

  return v12;
}

uint64_t sub_1006F25FC()
{
  v0 = sub_1001F1160(&qword_100AF3A40, &qword_100840778);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - v2;
  sub_1005C459C();
  sub_100795F94();
  v25 = sub_100795F14();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_100795F94();
  v24 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v23 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v22 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v21 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v20 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v19 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v18 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v17 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v5 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v6 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v7 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v8 = sub_100795F14();
  v4(v3, v0);
  sub_1001F1160(&qword_100AF3A48, &qword_100840780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100837290;
  v10 = v24;
  *(v9 + 32) = v25;
  *(v9 + 40) = v10;
  v11 = v22;
  *(v9 + 48) = v23;
  *(v9 + 56) = v11;
  v12 = v20;
  *(v9 + 64) = v21;
  *(v9 + 72) = v12;
  v13 = v18;
  *(v9 + 80) = v19;
  *(v9 + 88) = v13;
  *(v9 + 96) = v17;
  *(v9 + 104) = v5;
  *(v9 + 112) = v6;
  *(v9 + 120) = v7;
  *(v9 + 128) = v8;
  v14 = sub_100795F04();

  return v14;
}

uint64_t sub_1006F2B48(uint64_t a1)
{
  v11[1] = a1;
  v13 = sub_1001F1160(&qword_100AF3A28, &qword_100840760);
  v1 = *(v13 - 8);
  __chkstk_darwin(v13);
  v3 = v11 - v2;
  v4 = sub_1001F1160(&qword_100AF3A38, &qword_100840770);
  __chkstk_darwin(v4);
  sub_1004080A4();
  sub_100795FC4();
  v14._countAndFlagsBits = 0x6F6F6220656B614DLL;
  v14._object = 0xEF20746E6F66206BLL;
  sub_100795FB4(v14);
  swift_getKeyPath();
  sub_100432480();
  sub_100795EF4();

  sub_100795FA4();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100795FB4(v15);
  sub_100795FD4();
  v12 = sub_100795F14();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_100795FC4();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100795FB4(v16);
  swift_getKeyPath();
  sub_100795EF4();

  sub_100795FA4();

  v17._countAndFlagsBits = 0x7478657420;
  v17._object = 0xE500000000000000;
  sub_100795FB4(v17);
  sub_100795FD4();
  v7 = sub_100795F14();
  v5(v3, v6);
  sub_1001F1160(&qword_100AF3A30, &qword_100840768);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10080EFF0;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_100795F04();

  return v9;
}

uint64_t sub_1006F2EC4()
{
  v0 = sub_100795F34();
  v1 = sub_100795F34();
  sub_1001F1160(&qword_100AF39F0, &qword_1008406D8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10080EFF0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100795F24();

  return v3;
}

uint64_t sub_1006F2F60()
{
  v0 = sub_1001F1160(&qword_100AF3A28, &qword_100840760);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  sub_1004080A4();
  sub_100795F94();
  v20 = sub_100795F14();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_100795F94();
  v19 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v18 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v17 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v16 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v15 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v5 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v6 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v7 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v8 = sub_100795F14();
  v4(v3, v0);
  sub_1001F1160(&qword_100AF3A30, &qword_100840768);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10083C7A0;
  v10 = v19;
  *(v9 + 32) = v20;
  *(v9 + 40) = v10;
  v11 = v17;
  *(v9 + 48) = v18;
  *(v9 + 56) = v11;
  v12 = v15;
  *(v9 + 64) = v16;
  *(v9 + 72) = v12;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v13 = sub_100795F04();

  return v13;
}

uint64_t sub_1006F3410()
{
  v0 = sub_1001F1160(&qword_100AF3A28, &qword_100840760);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - v2;
  sub_1004080A4();
  sub_100795F94();
  v19 = sub_100795F14();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_100795F94();
  v18 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v17 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v16 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v15 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v5 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v6 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v7 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v8 = sub_100795F14();
  v4(v3, v0);
  sub_1001F1160(&qword_100AF3A30, &qword_100840768);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10080B6A0;
  v10 = v18;
  *(v9 + 32) = v19;
  *(v9 + 40) = v10;
  v11 = v16;
  *(v9 + 48) = v17;
  *(v9 + 56) = v11;
  *(v9 + 64) = v15;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v12 = sub_100795F04();

  return v12;
}