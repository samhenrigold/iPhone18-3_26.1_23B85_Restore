__n128 sub_1940(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1964(uint64_t a1, int a2)
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

uint64_t sub_1984(uint64_t result, int a2, int a3)
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

uint64_t sub_19C0()
{
  v0 = sub_12754();
  sub_1B00(v0, qword_1EAD0);
  sub_1B64(v0, qword_1EAD0);
  return sub_12744();
}

Swift::Int sub_1A3C()
{
  v1 = *v0;
  sub_12984();
  sub_12994(v1);
  return sub_129A4();
}

Swift::Int sub_1AB0(uint64_t a1)
{
  v2 = *v1;
  sub_12984();
  sub_12994(v2);
  return sub_129A4();
}

uint64_t *sub_1B00(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1B64(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_1BB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 sub_1BD4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BE8(uint64_t a1, int a2)
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

uint64_t sub_1C08(uint64_t result, int a2, int a3)
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

__n128 sub_1C50(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5C(uint64_t a1, int a2)
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

uint64_t sub_1C7C(uint64_t result, int a2, int a3)
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

unint64_t sub_1CD4()
{
  result = qword_1E1B8;
  if (!qword_1E1B8)
  {
    type metadata accessor for CLKDeviceSizeClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E1B8);
  }

  return result;
}

__n128 sub_1D2C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_1DA0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_1F5C(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 && a3)
    {
      v13 = Strong;
      v8 = a1;
      v9 = sub_12774();
      v14.receiver = v3;
      v14.super_class = ObjectType;
      objc_msgSendSuper2(&v14, "configureComplicationView:forSlot:faceView:", v8, v9, v13);

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        v10 = swift_dynamicCastObjCClassUnconditional();
        v11 = sub_12834();
        __chkstk_darwin(v11);
        v12[2] = v10;
        v12[3] = v3;
        sub_2548(sub_306C, v12, "NTKPride2025FaceBundle/Pride2025ComplicationFactory.swift", 57, 2u, 149);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_21F4(_BYTE *a1, void *a2)
{
  v4 = a1[OBJC_IVAR____TtC22NTKPride2025FaceBundle28Pride2025ComplicationFactory_textPosition];
  v5 = (v4 & 0xFE) == 2;
  v6 = (v4 & 0xFD) == 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  *(v7 + 32) = v6;
  *(v7 + 33) = v5;
  v11[4] = sub_2D48;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_24F4;
  v11[3] = &unk_1AC28;
  v8 = _Block_copy(v11);
  v9 = a2;
  v10 = a1;

  NTKEnumerateComplicationStates();
  _Block_release(v8);
}

void sub_2304(uint64_t a1, id a2, char *a3, char a4, char a5)
{
  v10 = [a2 complicationLayoutforSlot:NTKComplicationSlotCenter];
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR____TtC22NTKPride2025FaceBundle28Pride2025ComplicationFactory_complicationWidth;
    v13 = *&a3[OBJC_IVAR____TtC22NTKPride2025FaceBundle28Pride2025ComplicationFactory_complicationWidth];
    [a2 bounds];
    v14 = (CGRectGetWidth(v26) * 0.5 - *&a3[OBJC_IVAR____TtC22NTKPride2025FaceBundle28Pride2025ComplicationFactory_circleRadius]) * 0.5;
    v15 = *&a3[v12] * 0.5;
    if ((a4 & 1) == 0)
    {
      [a2 bounds];
      v14 = CGRectGetWidth(v27) - v14;
    }

    v16 = v14 - v15;
    [a2 bounds];
    v17 = CGRectGetHeight(v28) * 0.5;
    if (a5)
    {
      [a2 bounds];
      v17 = v17 + CGRectGetHeight(v29) / -5.0;
    }

    v18 = [a3 device];
    CGAffineTransformMakeScale(&v25, 0.9, 0.9);
    tx = v25.tx;
    ty = v25.ty;
    v23 = *&v25.c;
    v24 = *&v25.a;
    v21 = objc_opt_self();
    *&v25.a = v24;
    *&v25.c = v23;
    v25.tx = tx;
    v25.ty = ty;
    v22 = [v21 layoutRuleForDevice:v18 withReferenceFrame:1 horizontalLayout:3 verticalLayout:1 keylinePadding:&v25 clip:v16 contentTransform:{v17 + -12.5, v13, 25.0, 0.0, 2.0, 0.0, 2.0}];

    [v11 setDefaultLayoutRule:v22 forState:a1];
  }
}

uint64_t sub_24F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_12824();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_2C68();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_128A4(66);
    v12._object = 0x8000000000013740;
    v12._countAndFlagsBits = 0xD00000000000003FLL;
    sub_127B4(v12);
    v13._countAndFlagsBits = sub_129B4();
    sub_127B4(v13);

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    sub_127B4(v14);
    result = sub_12924();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_12824();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_2CA8(v14);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v14[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_128A4(66);
  v15._object = 0x8000000000013740;
  v15._countAndFlagsBits = 0xD00000000000003FLL;
  sub_127B4(v15);
  v16._countAndFlagsBits = sub_129B4();
  sub_127B4(v16);

  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  sub_127B4(v17);
  result = sub_12924();
  __break(1u);
  return result;
}

void sub_29B4(void *a1, id a2)
{
  v3 = [a2 device];
  NTKUtilityComplicationFontSize();
  v5 = v4;

  [a1 setFontSize:v5];
  [a1 setFontWeight:UIFontWeightMedium];
  v6 = [objc_opt_self() whiteColor];
  [a1 setForegroundColor:v6];
}

id sub_2BD0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_2CA8@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_2D08()
{

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_2D58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_2D70(void *a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    if (a3)
    {
      if (a1)
      {
        v7 = [a1 complicationType];
        v8 = sub_12834();
        __chkstk_darwin(v8);
        v10[2] = v7;
        v9 = sub_26D0(sub_30A0, v10, "NTKPride2025FaceBundle/Pride2025ComplicationFactory.swift", 57, 2, 113);

        return v9;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_2E60(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC22NTKPride2025FaceBundle28Pride2025ComplicationFactory_textPosition] = 2;
  v5 = [objc_allocWithZone(CLKDeviceMetrics) initWithDevice:a1 identitySizeClass:2];
  sub_10B24(&off_18890);
  sub_12854();
  v7 = v6;

  *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle28Pride2025ComplicationFactory_complicationWidth] = v7;
  v8 = objc_opt_self();
  v9 = a1;
  v10 = [v8 defaultHourConfigurationForDevice:v9];
  v11 = v10;
  v12 = 0.0;
  v13 = 0.0;
  if (v10)
  {
    [v10 handWidth];
    v13 = v14;
  }

  v15 = [v8 defaultMinuteConfigurationForDevice:v9];

  if (v15)
  {
    [v15 handWidth];
    v12 = v16;
  }

  if (v13 > v12)
  {
    v17 = v13;
  }

  else
  {
    v17 = v12;
  }

  *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle28Pride2025ComplicationFactory_circleRadius] = v17 * 0.5;
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, "initForDevice:", v9);

  return v18;
}

id sub_3010@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() smallComplicationViewForType:*(v1 + 16)];
  *a1 = result;
  return result;
}

uint64_t sub_30BC(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = 0;
  *(v3 + 32) = 0xBFF0000000000000;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 88) = nullsub_1;
  *(v3 + 96) = 0;
  *(v3 + 24) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  return v3;
}

uint64_t sub_30F4()
{

  return _swift_deallocClassInstance(v0, 104, 7);
}

void sub_3134()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v8 = v1;
    [v8 setPaused:1];
    v2 = *(v0 + 64);

    v2(v3);

    if (qword_1E070 != -1)
    {
      swift_once();
    }

    v4 = sub_12754();
    sub_1B64(v4, qword_1EAD0);
    v5 = sub_12734();
    v6 = sub_12844();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Displaylink Timer paused", v7, 2u);
    }
  }
}

uint64_t sub_3278()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;

    v3 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
  }

  return _swift_deallocClassInstance(v0, 80, 7);
}

void sub_32F8()
{
  v1 = v0;
  v2 = CACurrentMediaTime();
  swift_beginAccess();
  v3 = *(v0 + 24);
  if (!(v3 >> 62))
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_27:
    v22 = *(v1 + 32);

    v22(v23);

LABEL_28:
    sub_3134();
    return;
  }

LABEL_26:
  v4 = sub_12944();
  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_3:
  v24 = v1;

  v5 = 0;
  v6 = 0;
  while (2)
  {
    v25 = v5;
    v1 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_128B4();
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v1 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v7 = *(v3 + 8 * v1 + 32);

        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      v8 = *(v7 + 32);
      if (v8 < 0.0)
      {
        goto LABEL_5;
      }

      v9 = v2 - (v8 + *(v7 + 16));
      if (v9 < 0.0)
      {
        goto LABEL_19;
      }

      v10 = *(v7 + 40);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_24;
      }

      *(v7 + 40) = v12;
      v13 = v9 / *(v7 + 24);
      *(v7 + 48) = v9;
      *(v7 + 56) = v13;
      if (v13 <= 0.999)
      {
        break;
      }

      *(v7 + 56) = 0x3FF0000000000000;
      *(v7 + 64) = 1;
      *(v7 + 32) = 0xBFF0000000000000;
      v14 = *(v7 + 72);

      v14(v7);

      v15 = *(v7 + 88);

      v15(v16);

LABEL_5:

      ++v1;
      if (v6 == v4)
      {

        v20 = *(v24 + 32);

        v20(v21);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        return;
      }
    }

    v17 = *(v7 + 72);

    v17(v7);

LABEL_19:

    v5 = 1;
    if (v6 != v4)
    {
      continue;
    }

    break;
  }

  v18 = *(v24 + 32);

  v18(v19);
}

id sub_3734()
{
  result = [v0 _faceDescriptionKey];
  if (result)
  {
    v2 = result;
    sub_12784();

    type metadata accessor for Pride2025FaceBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_12774();

    v5 = sub_12774();
    v6 = [ObjCClassFromMetadata localizedStringForKey:v4 comment:v5];

    v7 = sub_12784();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_396C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Pride2025Face();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_39F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_12944();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_3EF0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_128B4();
        sub_4568(0, &qword_1E4D0, NSNumber_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_3EF0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_44F8(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_4568(0, &qword_1E4D0, NSNumber_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_3EF0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_44F8(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_3EA8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_3EF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_3F10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_3F10(char *result, int64_t a2, char a3, char *a4)
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
    sub_3EA8(&qword_1E920, &qword_148C0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_4020()
{
  v0 = sub_3EA8(&qword_1E4B8, &qword_14588);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v27 - v5;
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = NTKAllUtilitySmallFlatComplicationTypes();
  if (v9)
  {
    v10 = v9;
    sub_12704();

    v11 = sub_12714();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v12 = sub_12714();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_4418(v6, v8);
  sub_3EA8(&qword_1E920, &qword_148C0);
  v13 = swift_allocObject();
  v27 = xmmword_14540;
  *(v13 + 16) = xmmword_14540;
  *(v13 + 56) = &type metadata for UInt;
  *(v13 + 32) = 0;
  isa = sub_127D4().super.isa;

  v15 = NTKComplicationTypeRankedListWithDefaultTypes();

  if (v15)
  {
    sub_4568(0, &qword_1E4D0, NSNumber_ptr);
    v16 = sub_127E4();
  }

  else
  {
    v16 = 0;
  }

  sub_3EA8(&qword_1E4C0, &qword_14590);
  inited = swift_initStackObject();
  *(inited + 16) = v27;
  *(inited + 32) = sub_12784();
  *(inited + 40) = v18;
  sub_4488(v8, v3);
  v19 = sub_12714();
  v20 = *(v19 - 8);
  v22 = 0;
  if ((*(v20 + 48))(v3, 1, v19) != 1)
  {
    sub_126F4(v21);
    v22 = v23;
    (*(v20 + 8))(v3, v19);
  }

  if (v16)
  {

    sub_39F0(v24);

    v25.super.isa = sub_127D4().super.isa;
  }

  else
  {
    v25.super.isa = 0;
  }

  v26 = NTKComplicationSlotDescriptor();

  if (v26)
  {

    sub_12894();
    swift_unknownObjectRelease();
    sub_44F8(v28, &v29);
    sub_4568(0, &qword_1E4B0, NSObject_ptr);
    swift_dynamicCast();
    sub_10C04(inited);
    swift_setDeallocating();
    sub_4508(inited + 32, &qword_1E4C8, qword_14598);
    sub_4508(v8, &qword_1E4B8, &qword_14588);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4418(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EA8(&qword_1E4B8, &qword_14588);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4488(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EA8(&qword_1E4B8, &qword_14588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_44F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_4508(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3EA8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_4568(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_460C(uint64_t a1)
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [ObjCClassFromMetadata identifier];
  if (!v3)
  {
    sub_12784();
    v3 = sub_12774();
  }

  v4 = [ObjCClassFromMetadata analyticsIdentifier];
  if (!v4)
  {
    sub_12784();
    v4 = sub_12774();
  }

  type metadata accessor for Pride2025Face();
  v5 = [swift_getObjCClassFromMetadata() bundledFaceWithIdentifier:v3 analyticsIdentifier:v4 forDevice:a1 initCustomization:0];

  if (!v5)
  {
    __break(1u);
  }
}

uint64_t sub_4878(uint64_t a1)
{
  v3 = NTKShowGalleryLiteUI();
  v4 = type metadata accessor for Pride2025FaceBundle();
  if (v3)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = sub_12774();
    v7 = sub_12774();
    v8 = [ObjCClassFromMetadata localizedStringForKey:v6 comment:v7];
  }

  else
  {
    v11.receiver = v1;
    v11.super_class = v4;
    v8 = objc_msgSendSuper2(&v11, "galleryTitleForDevice:", a1);
  }

  v9 = sub_12784();

  return v9;
}

_OWORD *sub_49F4(uint64_t a1)
{
  v2 = [v1 defaultFaceForDevice:a1];
  sub_3EA8(&qword_1E508, "j\t");
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_145C0;
  v4 = objc_opt_self();
  result = [v4 placementWithWatchOS12Group:1 zOrder:6000];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v3 + 32) = result;
  result = [v4 placementWithWatchOS12Group:3 zOrder:4000];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v3 + 40) = result;
  result = [v4 placementWithWatchOS12Group:14 zOrder:9000];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v3 + 48) = result;
  result = [v4 placementWithWatchOS12Group:12 zOrder:4000];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v3 + 56) = result;
  result = [v4 placementWithWatchOS12Group:13 zOrder:4000];
  if (result)
  {
    *(v3 + 64) = result;
    sub_4568(0, &qword_1E518, NTKFaceCurationPlacementValue_ptr);
    isa = sub_127D4().super.isa;

    [v2 setCurationPlacements:isa];

    result = swift_allocObject();
    result[1] = xmmword_145D0;
    *(result + 4) = v2;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_4BDC(void *a1)
{
  if (!pride2025SupportsDeviceCapability(a1))
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = [v1 defaultFaceForDevice:a1];
  v4 = [objc_allocWithZone(NTKFaceBundleSortableGalleryFace) initWithFace:v3 priority:pride2025HeroPriority()];

  sub_3EA8(&qword_1E508, "j\t");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_145D0;
  *(v5 + 32) = v4;

  return v5;
}

void *sub_4D38(uint64_t a1)
{
  [v1 faceClass];
  swift_getObjCClassMetadata();
  if ([swift_getObjCClassFromMetadata() isRestrictedForDevice:a1])
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = [v1 defaultFaceForDevice:a1];
  v5 = [objc_allocWithZone(NTKFaceBundleSortableGalleryFace) initWithFace:v4 priority:pride2025SortOrder()];

  sub_3EA8(&qword_1E508, "j\t");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_145D0;
  *(v6 + 32) = v5;

  return v6;
}

Class sub_4E50(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id), unint64_t *a5, void *a6)
{
  v10 = a3;
  v11 = a1;
  v12 = a4(v10);

  if (v12)
  {
    sub_4568(0, a5, a6);
    v13.super.isa = sub_127D4().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  return v13.super.isa;
}

id sub_4F6C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Pride2025FaceBundle();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_4FC4()
{
  result = qword_1E530;
  if (!qword_1E530)
  {
    sub_4568(255, &qword_1E4D0, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E530);
  }

  return result;
}

void sub_5034(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_layerController] = 0;
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_token] = 0;
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_wobbleSpeed] = 0;
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_hour] = -1;
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_colorIndex] = 0;
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_tritiumIndex] = 0;
  if (!a2)
  {
    goto LABEL_20;
  }

  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_prideComplicationFactory] = [objc_allocWithZone(type metadata accessor for Pride2025ComplicationFactory()) initForDevice:a2];
  type metadata accessor for Pride2025DisplayLinkTimer();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = &_swiftEmptyArrayStorage;
  v9 = v8 + 3;
  v8[4] = nullsub_1;
  v8[5] = 0;
  v8[6] = nullsub_1;
  v8[7] = 0;
  v8[8] = nullsub_1;
  v8[9] = 0;
  v10 = OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_timerController;
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_timerController] = v8;
  type metadata accessor for Pride2025DisplayLinkTimer.TimerData();
  swift_allocObject();
  v11 = sub_30BC(nullsub_1, 0, 0.0);
  swift_beginAccess();

  sub_127C4();
  if (*(&dword_10 + (*v9 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v9 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_127F4();
  }

  sub_12814();
  swift_endAccess();

  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_tapTimer] = v11;
  v12 = *&v4[v10];
  swift_allocObject();
  v13 = sub_30BC(nullsub_1, 0, 0.0);
  swift_beginAccess();

  sub_127C4();
  if (*(&dword_10 + (*(v12 + 24) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v12 + 24) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_127F4();
  }

  sub_12814();
  swift_endAccess();

  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_wobbleTimer] = v13;
  v14 = *&v4[v10];
  swift_allocObject();
  v15 = sub_30BC(nullsub_1, 0, 0.0);
  swift_beginAccess();

  sub_127C4();
  if (*(&dword_10 + (*(v14 + 24) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v14 + 24) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_127F4();
  }

  sub_12814();
  swift_endAccess();

  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_hourTimer] = v15;
  v16 = [objc_allocWithZone(CLKDeviceMetrics) initWithDevice:a2 identitySizeClass:2];
  sub_3EA8(&qword_1E520, "n\t");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_14540;
  *(inited + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:5];
  sub_726C();
  *(inited + 40) = sub_12864(-3);
  sub_10D08(inited);
  swift_setDeallocating();
  sub_4508(inited + 32, &qword_1E528, qword_14628);
  sub_4FC4();
  isa = sub_12764().super.isa;

  [v16 scaledValue:isa withOverrides:-2.0];
  v20 = v19;
  v21 = v19;

  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  *&v5[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_dimmingPixelOffset] = v20;
  if (a4)
  {
    v22 = sub_12774();
  }

  else
  {
    v22 = 0;
  }

  v30.receiver = v5;
  v30.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v30, "initWithFaceStyle:forDevice:clientIdentifier:", a1, a2, v22, a3);

  if (v23)
  {

    v24 = OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_prideComplicationFactory;
    swift_unknownObjectWeakAssign();
    v25 = *&v23[v24];
    v26 = v23;
    [v26 setComplicationFactory:v25];
  }
}

id sub_5704()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_token];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedInstance];
    [v5 stopUpdatesForToken:v4];
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

id sub_58FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_3EA8(&qword_1E5C0, qword_146F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v35.receiver = v1;
  v35.super_class = ObjectType;
  objc_msgSendSuper2(&v35, "_loadSnapshotContentViews");
  result = [v1 device];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = result;
  [result screenScale];
  v12 = v11;

  [v1 frame];
  v14 = v13;
  v16 = v15;
  v17 = *&v1[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_dimmingPixelOffset];
  v18 = objc_allocWithZone(type metadata accessor for Pride2025StripeLayerController());
  sub_A19C((&dword_4 + 1), 5, 8, v14, v16, v12, v17);
  v20 = v19;
  result = [v1 contentView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = [result layer];

  [v22 addSublayer:*&v20[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerOverall]];
  v23 = OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_layerController;
  v24 = *&v1[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_layerController];
  *&v1[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_layerController] = v20;
  v25 = v20;

  v26 = sub_126A4();
  v27 = *(*(v26 - 8) + 56);
  v27(v8, 1, 1, v26);
  v28 = sub_11F9C(v8);
  sub_4508(v8, &qword_1E5C0, qword_146F0);
  *&v1[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_hour] = v28;
  v27(v6, 1, 1, v26);
  v29 = sub_11DB8(v6);
  v31 = v30 % 11;
  *&v1[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_tritiumIndex] = v30 % 11;
  *&v1[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_colorIndex] = v30 % 11;
  if ([v1 dataMode] == &dword_0 + 3)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  v33 = *&v1[v23];
  if (v33)
  {
    sub_8984(v29, 0.0);
    if (v32 != *&v33[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdx] || *&v33[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdxProgress] != 0.0)
    {
      *&v33[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdx] = v32;
      *&v33[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdxProgress] = 0;
      v33[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorsDirty] = 1;
      v33[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_dirty] = 1;
    }

    sub_89F4(v32, 0, 0.0);
    v34 = v33;
    sub_6A88();

    v25 = v34;
  }

  return sub_4508(v6, &qword_1E5C0, qword_146F0);
}

id sub_5DD0(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_5E10(void *a1, uint64_t a2, NSString a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    a3 = sub_12774();
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "_configureComplicationView:forSlot:", a1, a3);

  if (a1)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = a1;
      [v8 transitionToMonochromeWithFraction:1.0];
      v10 = [v3 complicationColor];
      [v8 setForegroundColor:v10];
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = a1;
      v14 = [v3 complicationColor];
      [v12 setForegroundColor:v14];
    }
  }
}

void sub_6004(unint64_t a1, unint64_t a2, double a3)
{
  v16.receiver = v3;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "_configureForTransitionFraction:fromEditMode:toEditMode:", a1, a2, a3);
  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  v9 = [v3 timeView];
  if (v9)
  {
    v10 = v9;
    [v9 setAlpha:v8];

    v11 = [v3 contentView];
    if (v11)
    {
      v12 = v11;
      [v11 setAlpha:v8];

      CLKInterpolateBetweenFloatsClipped();
      v14 = v13;
      v15 = [v3 complicationContainerView];
      [v15 setAlpha:v14];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_61CC(uint64_t a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_3EA8(&qword_1E5C0, qword_146F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  sub_6554(a1, &v18 - v8);
  v10 = sub_126A4();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    isa = sub_12674().super.isa;
    (*(v11 + 8))(v9, v10);
  }

  v18.receiver = v3;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "setOverrideDate:duration:", isa, a2);

  v13 = sub_11DB8(a1);
  v14 = *&v3[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_colorIndex];
  if ([v3 dataMode] == &dword_0 + 3)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v16 = *&v3[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_layerController];
  if (v16)
  {
    sub_8984(v13, 0.0);
    if (v15 != *&v16[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdx] || *&v16[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdxProgress] != 0.0)
    {
      *&v16[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdx] = v15;
      *&v16[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdxProgress] = 0;
      v16[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorsDirty] = 1;
      v16[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_dirty] = 1;
    }

    sub_89F4(v15, 0, 0.0);
    v17 = v16;
    sub_6A88();
  }
}

uint64_t sub_6554(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EA8(&qword_1E5C0, qword_146F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_65C4(int a1, int a2, id a3, void *a4)
{
  v5 = [a3 display];
  if (v5)
  {
    v14 = v5;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v14;
      [v7 transitionToMonochromeWithFraction:1.0];
      v9 = [a4 complicationColor];
      [v7 setForegroundColor:v9];
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = [a4 complicationColor];
      [v11 setForegroundColor:v12];

      v13 = v12;
    }

    else
    {
      v13 = v14;
    }
  }
}

uint64_t sub_6718(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = sub_12784();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

void sub_67B0(unint64_t a1, unint64_t a2, double a3)
{
  if (a3 >= 0.3)
  {
    v11 = 0.0;
    if (a3 <= 0.7)
    {
      goto LABEL_13;
    }

    v10 = 1.0;
    v12 = (1.0 - a3) / 0.3 + -1.0;
    v13 = -v12;
    if (v12 > 0.0)
    {
      v13 = 0.0;
    }

    if (v12 >= -1.0)
    {
      v10 = v13;
    }
  }

  else
  {
    v7 = a3 / 0.3 + -1.0;
    v8 = -v7;
    if (v7 > 0.0)
    {
      v8 = 0.0;
    }

    v9 = v7 < -1.0;
    v10 = 1.0;
    if (!v9)
    {
      v10 = v8;
    }
  }

  v11 = v10 * v10 * (3.0 - (v10 + v10));
LABEL_13:
  v14 = [v3 complicationContainerView];
  if (v14)
  {
    v15 = v14;
    [v14 setAlpha:v11];
  }

  if (a1 > 0xC)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (a2 > 0xC)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v16 = *&v3[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_prideComplicationFactory];
  if (a3 >= 0.5)
  {
    v17 = &off_188E0 + a2;
  }

  else
  {
    v17 = &off_188E0 + a1;
  }

  v18 = v17[32];
  if (*(v16 + OBJC_IVAR____TtC22NTKPride2025FaceBundle28Pride2025ComplicationFactory_textPosition) != v18)
  {
    *(v16 + OBJC_IVAR____TtC22NTKPride2025FaceBundle28Pride2025ComplicationFactory_textPosition) = v18;
    [v3 _loadLayoutRules];
    v22[4] = sub_6A20;
    v22[5] = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_6718;
    v22[3] = &unk_1ACA0;
    v19 = _Block_copy(v22);
    [v3 enumerateComplicationDisplayWrappersWithBlock:v19];
    _Block_release(v19);
    v20 = [v3 foregroundContainerView];
    [v20 setNeedsLayout];

    v21 = [v3 delegate];
    if (v21)
    {
      [v21 faceViewWantsComplicationKeylineFramesReloaded];
      swift_unknownObjectRelease();
    }
  }
}

void sub_6A20(int a1, int a2, id a3)
{
  v3 = [a3 display];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }
}

void sub_6A88()
{
  v5 = *&v0[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_layerController];
  if (v5)
  {
    v6 = v0;
    v7 = *(*&v0[OBJC_IVAR____TtC22NTKPride2025FaceBundle17Pride2025FaceView_hourTimer] + 32);
    v8 = *&v5[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hour];
    v9 = v8;
    if (v7 >= 0.0)
    {
      if (__OFADD__(v8, 1))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v10 = 12;
      if (v8 != -1)
      {
        v10 = v8 + 1;
      }

      if (v8 + 1 >= 13)
      {
        v9 = v8 - 11;
      }

      else
      {
        v9 = v10;
      }
    }

    v11 = *&v5[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdx];
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      if (v12 < 11)
      {
        if (v12 < 0)
        {
          v13 = -11;
          if (v12 > 0xFFFFFFFFFFFFFFF5)
          {
            v13 = v11 + 1;
          }

          v15 = v13 + ~v11;
          v14 = v15 == 0;
          v16 = (v15 - (v15 != 0)) / 0xB;
          if (!v14)
          {
            ++v16;
          }

          v12 = v11 + 11 * v16 + 12;
        }
      }

      else
      {
        v12 = (v11 - 10) % 0xBuLL;
      }

      v17 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hourDirty;
      if ((v5[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hourDirty] & 1) == 0 && (v5[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorsDirty] & 1) == 0 && (v5[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumDirty] & 1) == 0)
      {
        v59 = v5;
LABEL_43:
        sub_8A6C();

        return;
      }

      v60 = v5;
      v71 = v8;
      v18 = sub_111D0(v11, v8);
      v19 = [objc_allocWithZone(UIColor) initWithCGColor:v18];

      v20 = sub_111D0(v12, v9);
      v21 = [objc_allocWithZone(UIColor) initWithCGColor:v20];

      v68 = v21;
      v69 = v19;
      v22 = CLKInterpolateBetweenColors();
      if (!v22)
      {
        goto LABEL_53;
      }

      v23 = v22;
      v1 = objc_opt_self();
      v24 = v23;
      v25 = [v1 whiteColor];
      v26 = CLKInterpolateBetweenColors();
      v67 = v24;

      if (!v26)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v4 = v26;
      v27 = [v6 timeView];
      if (!v27)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v28 = v27;
      [v27 applySecondHandColor:v4];

      v29 = [v6 timeView];
      if (!v29)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v30 = v29;
      v66 = v17;
      v31 = [v29 secondHandView];

      if (!v31)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v72 = v9;
      v32 = [v1 blackColor];
      [v31 setHandDotColor:v32];

      v33 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
      if (!v33)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v34 = v33;
      v70 = v11;
      sub_123F0(0x303030FFuLL);
      v36 = CGColorCreate(v34, (v35 + 32));

      if (!v36)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v37 = [objc_allocWithZone(UIColor) initWithCGColor:v36];

      v11 = [v1 whiteColor];
      v38 = [v1 whiteColor];
      v3 = [v1 blackColor];
      v65 = v38;
      v39 = CLKInterpolateBetweenColors();
      if (!v39)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v2 = v39;
      v64 = v37;
      v40 = CLKInterpolateBetweenColors();
      if (!v40)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v8 = v40;
      v41 = [v6 timeView];
      if (!v41)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v42 = v41;
      [v41 applyHourMinuteHandsStrokeColor:v2 fillColor:v8];

      if (qword_1E180 == -1)
      {
LABEL_32:
        v43 = qword_1E778;
        v44 = sub_113F8(v70, v71);
        v62 = v11;
        v63 = v4;
        v61 = v3;
        if ((v43 & 0xC000000000000001) != 0)
        {
          v47 = sub_128B4();
          sub_113F8(v12, v72);
          v49 = sub_128B4();
LABEL_38:
          v50 = v49;
          v51 = CLKInterpolateBetweenColors();
          if (v51)
          {
            v52 = v51;
            v53 = [v1 whiteColor];
            v54 = CLKInterpolateBetweenColors();

            if (v54)
            {
              [v6 setComplicationColor:v54];
              v55 = [v1 grayColor];
              [v6 setAlternateComplicationColor:v55];

              v56 = swift_allocObject();
              *(v56 + 16) = v6;
              aBlock[4] = sub_724C;
              aBlock[5] = v56;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_6718;
              aBlock[3] = &unk_1AC78;
              v57 = _Block_copy(aBlock);
              v58 = v6;

              [v58 enumerateComplicationDisplayWrappersWithBlock:v57];

              _Block_release(v57);
              if (v5[v66] == 1)
              {
                sub_67B0(*&v60[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hour], v72, *&v60[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hourProgress]);
              }

              goto LABEL_43;
            }

LABEL_64:
            __break(1u);
            return;
          }

LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if ((v44 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v45 = v43 & 0xFFFFFFFFFFFFFF8;
          if (v44 < *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
          {
            v46 = v43 + 32;
            v47 = *(v46 + 8 * v44);
            v48 = sub_113F8(v12, v72);
            if ((v48 & 0x8000000000000000) == 0)
            {
              if (v48 < *(&dword_10 + v45))
              {
                v49 = *(v46 + 8 * v48);
                goto LABEL_38;
              }

              goto LABEL_51;
            }

LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }
        }

        __break(1u);
        goto LABEL_50;
      }
    }

    swift_once();
    goto LABEL_32;
  }
}

uint64_t sub_7214()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7254(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_726C()
{
  result = qword_1E4D0;
  if (!qword_1E4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E4D0);
  }

  return result;
}

id sub_73B4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_token] = 0;
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveHour] = -1;
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveIndex] = -1;
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumHour] = -1;
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumMinute] = -1;
  v9 = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveView] = v9;
  v10 = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumView] = v10;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for Pride2025MiniClockView();
  return objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
}

char *sub_74CC(void *a1, void *a2)
{
  v18 = sub_126A4();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_token] = 0;
  *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveHour] = -1;
  *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveIndex] = -1;
  *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumHour] = -1;
  *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumMinute] = -1;
  v8 = [objc_allocWithZone(UIImageView) init];
  *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveView] = v8;
  v9 = [objc_allocWithZone(UIImageView) init];
  *&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumView] = v9;
  v10 = type metadata accessor for Pride2025MiniClockView();
  v19.receiver = v2;
  v19.super_class = v10;
  v11 = objc_msgSendSuper2(&v19, "initWithDevice:clockTimer:", a1, a2);
  v12 = OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumView;
  v13 = *&v11[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumView];
  v14 = v11;
  [v14 insertSubview:v13 atIndex:0];
  [*&v11[v12] setAlpha:0.0];
  [v14 insertSubview:*&v14[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveView] atIndex:0];
  sub_7A18(0, 0);
  v15 = [objc_opt_self() now];
  sub_12684();

  sub_7868(v7);
  (*(v5 + 8))(v7, v18);
  return v14;
}

void sub_7868(uint64_t a1)
{
  v2 = sub_11B94(a1);
  if (v3 != *(v1 + OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumMinute) || v2 != *(v1 + OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumHour))
  {
    *(v1 + OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumMinute) = v3;
    *(v1 + OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumHour) = v2;
    v4 = v3 % 11;
    sub_3EA8(&qword_1E650, "h\t");
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_14540;
    *(v5 + 56) = &type metadata for Int;
    *(v5 + 64) = &protocol witness table for Int;
    *(v5 + 32) = v4;
    sub_12794();

    type metadata accessor for Pride2025FaceBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = sub_12774();

    v8 = [ObjCClassFromMetadata imageWithName:v7];

    [*(v1 + OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumView) setImage:v8];
  }
}

void sub_7A18(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveHour) != a1 || *(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveIndex) != a2)
  {
    *(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveHour) = a1;
    v3 = a2 % 11;
    *(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveIndex) = a2 % 11;
    sub_3EA8(&qword_1E650, "h\t");
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_14540;
    *(v4 + 56) = &type metadata for Int;
    *(v4 + 64) = &protocol witness table for Int;
    *(v4 + 32) = v3;
    sub_12794();

    type metadata accessor for Pride2025FaceBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = sub_12774();

    v7 = [ObjCClassFromMetadata imageWithName:v6];

    [*(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveView) setImage:v7];
  }
}

id sub_7BC4(uint64_t a1, void *a2)
{
  v5 = sub_3EA8(&qword_1E5C0, qword_146F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_126A4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = type metadata accessor for Pride2025MiniClockView();
  v25.receiver = v2;
  v25.super_class = v15;
  objc_msgSendSuper2(&v25, "traitCollectionDidChange:previousTraitCollection:", a1, a2);
  v16 = [v2 traitCollection];
  v17 = [v16 activeAppearance];

  result = [a2 activeAppearance];
  if (v17 != result)
  {
    v19 = [v2 overrideDate];
    if (v19)
    {
      v20 = v19;
      sub_12684();

      v21 = *(v9 + 32);
      v21(v7, v12, v8);
      (*(v9 + 56))(v7, 0, 1, v8);
      v21(v14, v7, v8);
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
      sub_12694();
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        sub_8790(v7);
      }
    }

    sub_7868(v14);
    (*(v9 + 8))(v14, v8);
    v22 = [v2 traitCollection];
    v23 = [v22 activeAppearance];

    if (v23)
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.0;
    }

    [*&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_liveView] setAlpha:v24];
    return [*&v2[OBJC_IVAR____TtC22NTKPride2025FaceBundle22Pride2025MiniClockView_tritiumView] setAlpha:1.0 - v24];
  }

  return result;
}

uint64_t sub_833C()
{
  v1 = sub_3EA8(&qword_1E5C0, qword_146F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_126A4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = [v0 overrideDate];
  if (v11)
  {
    v12 = v11;
    sub_12684();

    v13 = *(v5 + 32);
    v13(v3, v8, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    v13(v10, v3, v4);
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    sub_12694();
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_8790(v3);
    }
  }

  sub_7868(v10);
  return (*(v5 + 8))(v10, v4);
}

void sub_8614(void *a1, uint64_t a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for Pride2025MiniClockView();
  objc_msgSendSuper2(&v8, "setConfiguration:", a1);
  v4 = [v2 configuration];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for Pride2025MiniClockViewConfiguration();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = a1;
      sub_7A18(*(v6 + OBJC_IVAR____TtC22NTKPride2025FaceBundle35Pride2025MiniClockViewConfiguration_hour), *(v6 + OBJC_IVAR____TtC22NTKPride2025FaceBundle35Pride2025MiniClockViewConfiguration_colorIndex));
      a1 = v5;
      v5 = v7;
    }
  }

  else
  {
    v5 = a1;
  }
}

id sub_86DC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Pride2025MiniClockView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_8790(uint64_t a1)
{
  v2 = sub_3EA8(&qword_1E5C0, qword_146F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_87F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EA8(&qword_1E5C0, qword_146F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_892C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for Pride2025MiniClockViewConfiguration();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_8984(uint64_t result, double a2)
{
  v3 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hour;
  if (*(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hour) != result)
  {
    *(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorsDirty) = 1;
    *(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_dirty) = 1;
    goto LABEL_5;
  }

  if (*(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hourProgress) != a2)
  {
LABEL_5:
    *(v2 + v3) = result;
    *(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hourProgress) = a2;
    *(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hourDirty) = 1;
    *(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_dirty) = 1;
  }

  return result;
}

uint64_t sub_89F4(uint64_t result, char a2, double a3)
{
  if (*(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumIdx) != result || *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumProgress) != a3 || *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_enteringTritium) != (a2 & 1))
  {
    *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumIdx) = result;
    *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumProgress) = a3;
    *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_enteringTritium) = a2 & 1;
    *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumDirty) = 1;
    *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_dirty) = 1;
  }

  return result;
}

void sub_8A6C()
{
  v1 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_dirty;
  if (*(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_dirty) == 1)
  {
    v2 = objc_opt_self();
    [v2 begin];
    [v2 disableActions];
    v3 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorsDirty;
    if ((*(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorsDirty) & 1) != 0 || (v4 = (v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumDirty), *(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumDirty) == 1))
    {
      v5 = *(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdxProgress);
      if (v5 <= 0.0)
      {
        v6 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumProgress;
      }

      else
      {
        v6 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumProgress;
        if (*(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_enteringTritium) == 1)
        {
          v5 = *(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumProgress) + v5 * (1.0 - *(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumProgress));
        }
      }

      v7 = *(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdx);
      v8 = *(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hour);
      v9 = sub_114F8(v7, *(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumIdx), *(v0 + v6));
      sub_C9D0(v9, v7, v8, v5);

      v4 = (v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumDirty);
      if (*(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumDirty) == 1)
      {
        sub_C888(*(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumProgress) * 0.8);
      }
    }

    v10 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hourDirty;
    if (*(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hourDirty) == 1)
    {
      sub_DDDC(*(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hour), *(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hourProgress));
    }

    v11 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_warbleDirty;
    if ((*(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_warbleDirty) & 1) != 0 || *v4 == 1)
    {
      sub_EA78(*(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_warbleSpeed) * (1.0 - *(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumProgress)), *(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumProgress));
    }

    [v2 commit];
    *(v0 + v3) = 0;
    *v4 = 0;
    *(v0 + v10) = 0;
    *(v0 + v11) = 0;
    *(v0 + v1) = 0;
  }
}

void sub_8E24()
{
  v0 = kCGColorSpaceSRGB;
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    qword_1E6E8 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_9054()
{
  sub_3EA8(&qword_1E928, &unk_148C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_14790;
  if (qword_1E078 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1E690;
  v1 = qword_1E080;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_1E698;
  v2 = qword_1E088;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_1E6A0;
  v3 = qword_1E090;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = qword_1E6A8;
  v4 = qword_1E098;

  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = qword_1E6B0;
  v5 = qword_1E0A0;

  if (v5 != -1)
  {
    swift_once();
  }

  *(v0 + 72) = qword_1E6B8;
  v6 = qword_1E0A8;

  if (v6 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = qword_1E6C0;
  v7 = qword_1E0B0;

  if (v7 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = qword_1E6C8;
  v8 = qword_1E0B8;

  if (v8 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = qword_1E6D0;
  v9 = qword_1E0C0;

  if (v9 != -1)
  {
    swift_once();
  }

  *(v0 + 104) = qword_1E6D8;
  v10 = qword_1E0C8;

  if (v10 != -1)
  {
    swift_once();
  }

  *(v0 + 112) = qword_1E6E0;
  qword_1EAE8 = v0;
}

id sub_9374()
{
  sub_3EA8(&qword_1E508, "j\t");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_147A0;
  if (qword_1E0D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1E6F0;
  *(v0 + 32) = qword_1E6F0;
  v2 = qword_1E0E0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1E6F8;
  *(v0 + 40) = qword_1E6F8;
  v5 = qword_1E0E8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1E700;
  *(v0 + 48) = qword_1E700;
  v8 = qword_1E0F0;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1E708;
  *(v0 + 56) = qword_1E708;
  v11 = qword_1E0F8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1E710;
  *(v0 + 64) = qword_1E710;
  v14 = qword_1E100;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1E718;
  *(v0 + 72) = qword_1E718;
  v17 = qword_1E108;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1E720;
  *(v0 + 80) = qword_1E720;
  v20 = qword_1E110;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_1E728;
  *(v0 + 88) = qword_1E728;
  v23 = qword_1E118;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1E730;
  *(v0 + 96) = qword_1E730;
  v26 = qword_1E120;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_1E738;
  *(v0 + 104) = qword_1E738;
  v29 = qword_1E128;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_1E740;
  *(v0 + 112) = qword_1E740;
  qword_1EAF0 = v0;

  return v31;
}

uint64_t sub_9694()
{
  if (qword_1E088 != -1)
  {
    swift_once();
  }

  result = sub_1249C(&off_18910, qword_1E6A0, 0.8);
  qword_1E748 = result;
  return result;
}

uint64_t sub_96FC()
{
  if (qword_1E0A8 != -1)
  {
    swift_once();
  }

  result = sub_1249C(&off_18910, qword_1E6C0, 0.75);
  qword_1E750 = result;
  return result;
}

uint64_t sub_9760()
{
  if (qword_1E0B0 != -1)
  {
    swift_once();
  }

  result = sub_1249C(&off_18910, qword_1E6C8, 0.9);
  qword_1E758 = result;
  return result;
}

uint64_t sub_984C(uint64_t a1, uint64_t *a2, uint64_t *a3, CGColorRef *a4, uint64_t a5)
{
  if (qword_1E0D0 != -1)
  {
    swift_once();
  }

  v8 = *a2;
  v9 = qword_1E6E8;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = *a3;

  v11 = CGColorCreate(v9, (v10 + 32));

  if (v11)
  {
    *a4 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_9918()
{
  sub_3EA8(&qword_1E928, &unk_148C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_14790;
  if (qword_1E078 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1E690;
  v1 = qword_1E080;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_1E698;
  v2 = qword_1E140;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_1E748;
  v3 = qword_1E090;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = qword_1E6A8;
  v4 = qword_1E098;

  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = qword_1E6B0;
  v5 = qword_1E0A0;

  if (v5 != -1)
  {
    swift_once();
  }

  *(v0 + 72) = qword_1E6B8;
  v6 = qword_1E148;

  if (v6 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = qword_1E750;
  v7 = qword_1E150;

  if (v7 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = qword_1E758;
  v8 = qword_1E0B8;

  if (v8 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = qword_1E6D0;
  v9 = qword_1E0C0;

  if (v9 != -1)
  {
    swift_once();
  }

  *(v0 + 104) = qword_1E6D8;
  v10 = qword_1E0C8;

  if (v10 != -1)
  {
    swift_once();
  }

  *(v0 + 112) = qword_1E6E0;
  qword_1EAF8 = v0;
}

id sub_9C38()
{
  sub_3EA8(&qword_1E508, "j\t");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_147A0;
  if (qword_1E0D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1E6F0;
  *(v0 + 32) = qword_1E6F0;
  v2 = qword_1E0E0;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1E6F8;
  *(v0 + 40) = qword_1E6F8;
  v5 = qword_1E158;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1E760;
  *(v0 + 48) = qword_1E760;
  v8 = qword_1E0F0;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1E708;
  *(v0 + 56) = qword_1E708;
  v11 = qword_1E0F8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1E710;
  *(v0 + 64) = qword_1E710;
  v14 = qword_1E100;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_1E718;
  *(v0 + 72) = qword_1E718;
  v17 = qword_1E160;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1E768;
  *(v0 + 80) = qword_1E768;
  v20 = qword_1E168;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_1E770;
  *(v0 + 88) = qword_1E770;
  v23 = qword_1E118;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_1E730;
  *(v0 + 96) = qword_1E730;
  v26 = qword_1E120;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_1E738;
  *(v0 + 104) = qword_1E738;
  v29 = qword_1E128;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_1E740;
  *(v0 + 112) = qword_1E740;
  qword_1EB00 = v0;

  return v31;
}

Swift::Int sub_9F6C()
{
  v1 = *v0;
  sub_12984();
  sub_12994(v1);
  return sub_129A4();
}

Swift::Int sub_9FE0(uint64_t a1)
{
  v2 = *v1;
  sub_12984();
  sub_12994(v2);
  return sub_129A4();
}

id sub_A024()
{
  sub_3EA8(&qword_1E508, "j\t");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_147A0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 whiteColor];
  *(v0 + 40) = [v1 whiteColor];
  *(v0 + 48) = [v1 blackColor];
  *(v0 + 56) = [v1 whiteColor];
  *(v0 + 64) = [v1 whiteColor];
  *(v0 + 72) = [v1 whiteColor];
  *(v0 + 80) = [v1 blackColor];
  *(v0 + 88) = [v1 blackColor];
  *(v0 + 96) = [v1 blackColor];
  *(v0 + 104) = [v1 whiteColor];
  result = [v1 whiteColor];
  *(v0 + 112) = result;
  qword_1E778 = v0;
  return result;
}

void sub_A19C(uint64_t *a1, uint64_t a2, uint64_t a3, long double a4, long double a5, CGFloat a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_meshTime] = 0;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_maxNumStripesPerLayer] = 7;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumMesh] = &_swiftEmptyArrayStorage;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdx] = -1;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorIdxProgress] = 0xBFF0000000000000;
  v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_colorsDirty] = 0;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumIdx] = -1;
  v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_enteringTritium] = 0;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumProgress] = 0xBFF0000000000000;
  v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumDirty] = 0;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hour] = -1;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hourProgress] = 0xBFF0000000000000;
  v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_hourDirty] = 0;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_warbleSpeed] = 0;
  v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_warbleDirty] = 0;
  v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_dirty] = 0;
  v15 = [objc_allocWithZone(CALayer) init];
  v16 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerOverall;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerOverall] = v15;
  v17 = &off_1D000;
  [v15 setBounds:{0.0, 0.0, a4, a5}];
  [*&v7[v16] setAnchorPoint:{0.0, 0.0}];
  v18 = [objc_allocWithZone(CALayer) init];
  v19 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_liveContainer;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_liveContainer] = v18;
  [v18 setBounds:{0.0, 0.0, a4, a5}];
  [*&v7[v19] setAnchorPoint:{0.0, 0.0}];
  [*&v7[v16] addSublayer:*&v7[v19]];
  [*&v7[v19] setShouldRasterize:1];
  [*&v7[v19] setRasterizationScale:a6 * 1.666];
  [*&v7[v19] setMinificationFilter:kCAFilterBox];
  [*&v7[v19] setOpaque:1];
  v20 = sub_10F04();
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_mesh] = v20;
  [*&v7[v19] setMeshTransform:v20];
  v21 = &snoise4_ptr;
  v22 = [objc_allocWithZone(CALayer) init];
  v23 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerHorizontal;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerHorizontal] = v22;
  [v22 setBounds:{0.0, 0.0, a4, a5}];
  [*&v7[v23] setAnchorPoint:{0.0, 0.0}];
  v24 = v23;
  [*&v7[v19] addSublayer:*&v7[v23]];
  v25 = [objc_allocWithZone(CALayer) init];
  v26 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerVertical;
  *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerVertical] = v25;
  [v25 setBounds:{0.0, 0.0, a4, a5}];
  [*&v7[v26] setAnchorPoint:{0.0, 0.0}];
  v209 = v26;
  v211 = v7;
  [*&v7[v19] addSublayer:*&v7[v26]];
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  v204 = v19;
  v205 = v16;
  v8 = a4 / a1;
  v27 = &off_1D000;
  v210 = v24;
  if (a1)
  {
    *&v213.m11 = &_swiftEmptyArrayStorage;
    sub_128F4();
    v28 = 0;
    do
    {
      v29 = round(v8 * v28 * a6) / a6;
      v30 = [objc_allocWithZone(CAGradientLayer) init];
      [v30 setPosition:{v29, 0.0}];
      [v30 setAnchorPoint:{0.0, 0.0}];
      [v30 setBounds:{0.0, 0.0, round(v8 * (v28 + 1) * a6 + 1.0) / a6 - v29, a5}];

      sub_128D4();
      v21 = &off_1D000;
      sub_12904();
      v27 = &off_1D000;
      sub_12914();
      sub_128E4();
      ++v28;
    }

    while (a1 != v28);
    *&v211[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeColumns] = v213.m11;
    *&v213.m11 = &_swiftEmptyArrayStorage;
    sub_128F4();
    v31 = 0;
    v9 = 1.0;
    do
    {
      v32 = (v31 + 1);
      v33 = [objc_allocWithZone(CAGradientLayer) init];
      v34 = round(v8 * v31 * a6) / a6;
      v35 = round(v8 * (v31 + 1) * a6 + 1.0) / a6;
      v36 = v27[190];
      v37 = v33;
      [v37 v36];
      [v37 setAnchorPoint:{0.0, 0.0}];
      [v37 setBounds:{0.0, 0.0, v35 - v34, a5}];

      sub_128D4();
      sub_12904();
      v17 = &off_1D000;
      v27 = &off_1D000;
      sub_12914();
      sub_128E4();
      v31 = v32;
    }

    while (a1 != v32);
    m11 = v213.m11;
    v26 = v210;
    v39 = v211;
  }

  else
  {
    v39 = v7;
    *&v7[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeColumns] = &_swiftEmptyArrayStorage;
    m11 = COERCE_DOUBLE(&_swiftEmptyArrayStorage);
    v26 = v24;
  }

  *&v39[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeAlternateColumns] = m11;
  if (a2 < 0)
  {
    goto LABEL_50;
  }

  v9 = a5 / a2;
  if (a2)
  {
    *&v213.m11 = &_swiftEmptyArrayStorage;
    sub_128F4();
    v40 = 0;
    v21 = &off_1D000;
    do
    {
      v41 = v40 + 1;
      v42 = [objc_allocWithZone(CAGradientLayer) init];
      v43 = round(v9 * v40 * a6) / a6;
      v44 = round(v9 * (v40 + 1) * a6 + 1.0) / a6;
      v45 = v27[190];
      v46 = v42;
      [v46 v45];
      [v46 setAnchorPoint:{0.0, 0.0}];
      [v46 setBounds:{0.0, 0.0, a4, v44 - v43}];

      sub_128D4();
      sub_12904();
      v27 = &off_1D000;
      sub_12914();
      sub_128E4();
      v40 = v41;
    }

    while (a2 != v41);
    *&v211[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeRows] = v213.m11;
    *&v213.m11 = &_swiftEmptyArrayStorage;
    sub_128F4();
    v47 = 0;
    do
    {
      v48 = v47 + 1;
      v49 = [objc_allocWithZone(CAGradientLayer) init];
      v50 = round(v9 * v47 * a6) / a6;
      v51 = round(v9 * (v47 + 1) * a6 + 1.0) / a6;
      v52 = v27[190];
      v53 = v49;
      [v53 v52];
      [v53 setAnchorPoint:{0.0, 0.0}];
      [v53 setBounds:{0.0, 0.0, a4, v51 - v50}];

      sub_128D4();
      sub_12904();
      v27 = &off_1D000;
      sub_12914();
      sub_128E4();
      v47 = v48;
    }

    while (a2 != v48);
    v54 = v213.m11;
    v26 = v210;
    v39 = v211;
  }

  else
  {
    *&v39[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeRows] = &_swiftEmptyArrayStorage;
    v54 = COERCE_DOUBLE(&_swiftEmptyArrayStorage);
    v21 = &off_1D000;
  }

  *&v39[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeAlternateRows] = v54;
  v55 = &v39[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_imageSize];
  *v55 = a4;
  v55[1] = a5;
  v56 = *&v209[v39];
  v213.m11 = *&v39[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeColumns];
  a1 = v56;

  sub_F8A8(v57, sub_1087C);
  if (*&v213.m11 >> 62)
  {
    goto LABEL_51;
  }

  sub_12974();
  v58 = sub_4568(0, &qword_1E930, CALayer_ptr);
  while (1)
  {

    sub_4568(0, &qword_1E930, CALayer_ptr);
    isa = sub_127D4().super.isa;

    [a1 setSublayers:isa];

    v60 = *&v211[v26];
    v213.m11 = *&v211[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeRows];
    v61 = v60;

    sub_F8A8(v62, sub_1087C);
    if (*&v213.m11 >> 62)
    {

      sub_12934();
    }

    else
    {

      sub_12974();
    }

    v63 = a3;

    v64 = sub_127D4().super.isa;

    [v61 setSublayers:v64];

    v65 = [objc_allocWithZone(CALayer) init];
    v66 = v8 / a3 * a6;
    if (v66 <= -9.22337204e18)
    {
      break;
    }

    if (v66 >= 9.22337204e18)
    {
      goto LABEL_54;
    }

    v8 = v9 / a3 * a6;
    if (v8 <= -9.22337204e18)
    {
      goto LABEL_55;
    }

    if (v8 >= 9.22337204e18)
    {
      goto LABEL_56;
    }

    v67 = a5 * a6;
    if (COERCE__INT64(fabs(a5 * a6)) > 0x7FEFFFFFFFFFFFFFLL || (*&v66 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(v9 / a3 * a6)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_57;
    }

    if (v67 <= -9.22337204e18)
    {
      goto LABEL_58;
    }

    if (v67 >= 9.22337204e18)
    {
      goto LABEL_59;
    }

    v68 = v65;
    v69 = v67;
    *&v213.m11 = sub_11130(v67);
    v213.m12 = v70;
    v63 = 0;
    v71 = sub_FA40(&v213, v69, a7, v8, 1uLL, v69, 1, v8);
    sub_11A8C(*&v213.m11, *&v213.m12);
    [v68 setContents:v71];

    [v68 setContentsScale:a6];
    v72 = sub_12774();
    [v68 setContentsScaling:v72];

    [v68 v21[185]];
    [v68 v17[182]];
    [*&v211[v26] addSublayer:v68];
    v73 = [objc_allocWithZone(CALayer) init];
    v74 = a4 * a6;
    if (COERCE__INT64(fabs(a4 * a6)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_60;
    }

    if (v74 <= -9.22337204e18)
    {
      goto LABEL_61;
    }

    if (v74 >= 9.22337204e18)
    {
      goto LABEL_62;
    }

    v75 = v73;
    a3 = v58;
    v76 = v17;
    v77 = v74;
    *&v213.m11 = sub_11130(v74);
    v213.m12 = v78;
    v79 = sub_FA40(&v213, v77, a7, v66, v77, 1uLL, 0, v66);
    sub_11A8C(*&v213.m11, *&v213.m12);
    [v75 setContents:v79];

    [v75 setContentsScale:a6];
    v80 = sub_12774();
    [v75 setContentsScaling:v80];

    [v75 v21[185]];
    [v75 v76[182]];
    v81 = v211;
    [*&v209[v211] addSublayer:v75];
    v82 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterLuminanceToAlpha];
    v83 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterAlphaThreshold];
    sub_3EA8(&qword_1E920, &qword_148C0);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_145B0;
    v85 = sub_4568(0, &qword_1E938, CAFilter_ptr);
    *(v84 + 32) = v82;
    *(v84 + 88) = v85;
    *(v84 + 56) = v85;
    *(v84 + 64) = v83;
    v199 = v82;
    v86 = v83;
    v87 = sub_127D4().super.isa;

    [v68 setFilters:v87];

    v88 = [v68 filters];
    [v75 setFilters:v88];

    v89 = sub_12724().super.super.isa;
    v90 = sub_12774();
    [v86 setValue:v89 forKey:v90];

    sub_3EA8(&qword_1E508, "j\t");
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_147B0;
    *&v211[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_dimmingOverlays] = v91;
    *(v91 + 32) = v68;
    *(v91 + 40) = v75;
    *&v211[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_dimmingFilter] = v86;
    v92 = objc_allocWithZone(CALayer);
    v198 = v86;
    v203 = v68;
    v202 = v75;
    v93 = [v92 init];
    v94 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_maskLayer;
    *&v211[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_maskLayer] = v93;
    v95 = v94;
    [v93 setAnchorPoint:{0.5, 0.0}];
    v96 = hypot(a4, a5);
    [*&v211[v95] v76[182]];
    v97 = *&v211[v95];
    GenericGray = CGColorCreateGenericGray(0.0, 1.0);
    [v97 setBackgroundColor:GenericGray];

    v99 = v95;
    [*&v211[v95] setPosition:{(a4 * 0.5), (a5 * 0.5)}];
    v100 = *&v211[v95];
    v101 = v99;
    v201 = v99;
    a6 = -atan(a5 / a4);
    v102 = v100;
    CATransform3DMakeRotation(&v213, a6, 0.0, 0.0, 1.0);
    [v102 setTransform:&v213];

    [*&v209[v81] setMask:*&v81[v101]];
    v103 = [objc_allocWithZone(CALayer) init];
    v104 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerTopVerticalBlackStripes;
    *&v211[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerTopVerticalBlackStripes] = v103;
    v105 = v104;
    v206 = v104;
    v106 = v76;
    [v103 v76[182]];
    [*&v211[v105] setAnchorPoint:{0.0, 0.0}];
    [*&v209[v81] addSublayer:*&v81[v105]];
    *&v213.m11 = &_swiftEmptyArrayStorage;
    sub_128F4();
    v107 = objc_opt_self();
    v108 = [objc_allocWithZone(CALayer) init];
    [v108 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v108 v106[182]];
    v109 = [v107 blackColor];
    v110 = [v109 CGColor];

    [v108 setBackgroundColor:v110];
    [v108 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    v111 = [objc_allocWithZone(CALayer) init];
    [v111 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v111 v106[182]];
    v112 = [v107 blackColor];
    v113 = [v112 CGColor];

    [v111 setBackgroundColor:v113];
    [v111 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    v114 = [objc_allocWithZone(CALayer) init];
    [v114 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v114 v106[182]];
    v115 = [v107 blackColor];
    v116 = [v115 CGColor];

    [v114 setBackgroundColor:v116];
    [v114 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    v117 = [objc_allocWithZone(CALayer) init];
    [v117 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v117 v106[182]];
    v118 = [v107 blackColor];
    v119 = [v118 CGColor];

    [v117 setBackgroundColor:v119];
    [v117 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    v120 = [objc_allocWithZone(CALayer) init];
    [v120 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v120 v106[182]];
    v121 = [v107 blackColor];
    v122 = [v121 CGColor];

    [v120 setBackgroundColor:v122];
    [v120 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    v123 = [objc_allocWithZone(CALayer) init];
    [v123 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v123 v106[182]];
    v124 = [v107 blackColor];
    v125 = [v124 CGColor];

    [v123 setBackgroundColor:v125];
    [v123 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    v126 = [objc_allocWithZone(CALayer) init];
    [v126 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v126 v106[182]];
    v127 = [v107 blackColor];
    v128 = [v127 CGColor];

    [v126 setBackgroundColor:v128];
    [v126 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    *&v211[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_topVerticalBlackStripes] = v213.m11;
    v129 = *&v211[v206];

    v130 = sub_127D4().super.isa;

    [v129 setSublayers:v130];

    v131 = [objc_allocWithZone(CALayer) init];
    v132 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerBottomHorizontalBlackStripes;
    *&v211[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerBottomHorizontalBlackStripes] = v131;
    v133 = v132;
    a7 = v132;
    [v131 v106[182]];
    [*&v211[v133] setAnchorPoint:{0.0, 0.0}];
    [*&v210[v81] addSublayer:*&v81[v133]];
    *&v213.m11 = &_swiftEmptyArrayStorage;
    sub_128F4();
    v134 = [objc_allocWithZone(CALayer) init];
    [v134 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v134 v106[182]];
    v135 = [v107 blackColor];
    v136 = [v135 CGColor];

    [v134 setBackgroundColor:v136];
    [v134 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    v137 = [objc_allocWithZone(CALayer) init];
    [v137 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v137 v106[182]];
    v138 = [v107 blackColor];
    v139 = [v138 CGColor];

    [v137 setBackgroundColor:v139];
    [v137 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    v140 = [objc_allocWithZone(CALayer) init];
    [v140 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v140 v106[182]];
    v141 = [v107 blackColor];
    v142 = [v141 CGColor];

    [v140 setBackgroundColor:v142];
    [v140 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    v143 = [objc_allocWithZone(CALayer) init];
    [v143 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v143 v106[182]];
    v144 = [v107 blackColor];
    v145 = [v144 CGColor];

    [v143 setBackgroundColor:v145];
    [v143 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    v146 = [objc_allocWithZone(CALayer) init];
    [v146 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v146 v106[182]];
    v147 = [v107 blackColor];
    v148 = [v147 CGColor];

    [v146 setBackgroundColor:v148];
    [v146 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    v149 = [objc_allocWithZone(CALayer) init];
    [v149 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v149 v106[182]];
    v150 = [v107 blackColor];
    v151 = [v150 CGColor];

    [v149 setBackgroundColor:v151];
    [v149 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    v152 = [objc_allocWithZone(CALayer) init];
    [v152 setFrame:{-1.0, -1.0, 0.0, 0.0}];
    [v152 v106[182]];
    v153 = [v107 blackColor];
    v154 = [v153 CGColor];

    [v152 setBackgroundColor:v154];
    [v152 setHidden:1];
    sub_128D4();
    sub_12904();
    sub_12914();
    sub_128E4();
    *&v211[OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_bottomHorizontalBlackStripes] = v213.m11;
    v155 = *&v211[a7];

    v156 = sub_127D4().super.isa;

    [v155 setSublayers:v156];

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_147C0;
    v158 = *&v211[v205];
    *(inited + 32) = v158;
    v159 = *&v211[v204];
    *(inited + 40) = v159;
    v160 = *&v209[v211];
    *(inited + 48) = v160;
    v161 = *&v210[v211];
    *(inited + 56) = v161;
    v17 = *&v211[v201];
    *(inited + 64) = v17;
    *(inited + 72) = v202;
    *(inited + 80) = v203;
    v162 = *&v211[a7];
    *(inited + 88) = v162;
    *(inited + 96) = v162;
    v163 = v162;
    v164 = v203;
    v209 = v202;
    v165 = v163;
    v166 = v158;
    v167 = v159;
    v168 = v160;
    v169 = v161;
    v170 = v17;
    v171 = [v168 sublayers];
    if (!v171)
    {
      goto LABEL_76;
    }

    v172 = v171;
    v173 = sub_127E4();

    *&v213.m11 = inited;
    sub_F8A8(v173, sub_106DC);
    v174 = v213.m11;
    v175 = [*&v210[v211] sublayers];
    if (!v175)
    {
      goto LABEL_77;
    }

    v176 = v175;
    v177 = sub_127E4();

    v213.m11 = v174;
    sub_F8A8(v177, sub_106DC);
    v178 = v213.m11;
    v179 = [*&v211[v206] sublayers];
    if (!v179)
    {
      goto LABEL_78;
    }

    v180 = v179;
    v210 = v164;
    v181 = sub_127E4();

    v213.m11 = v178;
    sub_F8A8(v181, sub_106DC);
    v182 = v213.m11;
    v183 = [*&v211[a7] sublayers];
    if (!v183)
    {
      goto LABEL_79;
    }

    v184 = v183;
    v185 = sub_127E4();

    v213.m11 = v182;
    sub_F8A8(v185, sub_106DC);
    v186 = v213.m11;
    sub_3EA8(&qword_1E9A0, &qword_148D8);
    v187 = swift_initStackObject();
    *(v187 + 16) = xmmword_147D0;
    *(v187 + 32) = 0x73746E65746E6F63;
    v21 = 0xE800000000000000;
    *(v187 + 40) = 0xE800000000000000;
    *(v187 + 48) = [objc_allocWithZone(NSNull) init];
    *(v187 + 56) = 0x756F72676B636162;
    *(v187 + 64) = 0xEF726F6C6F43646ELL;
    *(v187 + 72) = [objc_allocWithZone(NSNull) init];
    *(v187 + 80) = 0x726F66736E617274;
    *(v187 + 88) = 0xE90000000000006DLL;
    *(v187 + 96) = [objc_allocWithZone(NSNull) init];
    *(v187 + 104) = 0x73646E756F62;
    *(v187 + 112) = 0xE600000000000000;
    *(v187 + 120) = [objc_allocWithZone(NSNull) init];
    *(v187 + 128) = 0x6E6F697469736F70;
    *(v187 + 136) = 0xE800000000000000;
    *(v187 + 144) = [objc_allocWithZone(NSNull) init];
    *(v187 + 152) = 0x7974696361706FLL;
    *(v187 + 160) = 0xE700000000000000;
    *(v187 + 168) = [objc_allocWithZone(NSNull) init];
    *(v187 + 176) = 0x6E6564646968;
    *(v187 + 184) = 0xE600000000000000;
    *(v187 + 192) = [objc_allocWithZone(NSNull) init];
    *(v187 + 200) = 0x6F50726F68636E61;
    *(v187 + 208) = 0xEB00000000746E69;
    *(v187 + 216) = [objc_allocWithZone(NSNull) init];
    *(v187 + 224) = 1802723693;
    *(v187 + 232) = 0xE400000000000000;
    *(v187 + 240) = [objc_allocWithZone(NSNull) init];
    *(v187 + 248) = 0x73726F6C6F63;
    *(v187 + 256) = 0xE600000000000000;
    *(v187 + 264) = [objc_allocWithZone(NSNull) init];
    *(v187 + 272) = 0x696F507472617473;
    *(v187 + 280) = 0xEA0000000000746ELL;
    *(v187 + 288) = [objc_allocWithZone(NSNull) init];
    *(v187 + 296) = 0x746E696F50646E65;
    *(v187 + 304) = 0xE800000000000000;
    *(v187 + 312) = [objc_allocWithZone(NSNull) init];
    sub_10E00(v187);
    swift_setDeallocating();
    sub_3EA8(&qword_1E9A8, &qword_148E0);
    swift_arrayDestroy();
    v63 = *&v186;
    if (*&v186 >> 62)
    {
      goto LABEL_63;
    }

    v188 = *(&dword_10 + (*&v186 & 0xFFFFFFFFFFFFFF8));
    if (!v188)
    {
      goto LABEL_64;
    }

LABEL_39:
    v189 = 0;
    v26 = v63 & 0xFFFFFFFFFFFFFF8;
    a1 = &qword_148E8;
    while (1)
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v190 = sub_128B4();
      }

      else
      {
        if (v189 >= *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_48;
        }

        v190 = *(v63 + 8 * v189 + 32);
      }

      v17 = v190;
      v191 = v189 + 1;
      if (__OFADD__(v189, 1))
      {
        break;
      }

      sub_3EA8(&qword_1E9B0, &qword_148E8);
      v21 = sub_12764().super.isa;
      [(SEL *)v17 setActions:v21];

      ++v189;
      if (v191 == v188)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v58 = sub_4568(0, &qword_1E930, CALayer_ptr);

    sub_12934();
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
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
  v188 = sub_12944();
  if (v188)
  {
    goto LABEL_39;
  }

LABEL_64:

  v212.receiver = v211;
  v212.super_class = ObjectType;
  v192 = objc_msgSendSuper2(&v212, "init");
  v193 = v63;
  if (!v188)
  {
LABEL_73:

    sub_C66C();

    return;
  }

  v194 = 0;
  while (1)
  {
    if ((v193 & 0xC000000000000001) != 0)
    {
      v195 = sub_128B4();
    }

    else
    {
      if (v194 >= *(&dword_10 + (v193 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_75;
      }

      v195 = *(v193 + 8 * v194 + 32);
    }

    v196 = v195;
    v197 = v194 + 1;
    if (__OFADD__(v194, 1))
    {
      break;
    }

    [v195 setDelegate:v192];

    ++v194;
    if (v197 == v188)
    {
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
}

uint64_t sub_C66C()
{
  type metadata accessor for CGPoint(0);
  v1 = sub_12804();
  *(v1 + 16) = 11;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  sub_3EA8(&qword_1E9B8, &qword_148F0);
  v2 = sub_12804();
  v2[2] = 15;
  v2[4] = v1;
  v2[5] = v1;
  v2[6] = v1;
  v2[7] = v1;
  v2[8] = v1;
  v2[9] = v1;
  v2[10] = v1;
  v2[11] = v1;
  v2[12] = v1;
  v2[13] = v1;
  v2[14] = v1;
  v2[15] = v1;
  v2[16] = v1;
  v2[17] = v1;
  v2[18] = v1;
  v3 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumMesh;
  *(v0 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumMesh) = v2;
  swift_bridgeObjectRetain_n();

  v4 = 1;
LABEL_3:
  v5 = v4 + 1;
  v6 = v4 / 11.0;
  v7 = 5;
  while (1)
  {
    v8 = (v7 - 4) / 15.0;
    v9 = simplexNoise4(v6 * 3.0, v8 * 3.0, 1.0, 0.0);
    v10 = simplexNoise4(1.0, 0.0, v6 * 3.0 + 5.0, v8 * 3.0);
    v11 = *(v0 + v3);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + v3) = v11;
    if ((result & 1) == 0)
    {
      result = sub_106C8(v11);
      v11 = result;
      *(v0 + v3) = result;
    }

    if ((v7 - 4) >= v11[2])
    {
      break;
    }

    v13 = v11[v7];
    result = swift_isUniquelyReferenced_nonNull_native();
    v11[v7] = v13;
    if ((result & 1) == 0)
    {
      result = sub_106B4(v13);
      v13 = result;
      v11[v7] = result;
    }

    if (v4 >= *(v13 + 16))
    {
      goto LABEL_14;
    }

    v14 = v13 + 16 * v4;
    *(v14 + 32) = v6 + v9 * 0.015;
    *(v14 + 40) = v8 + v10 * 0.015;
    *(v0 + v3) = v11;
    if (++v7 == 18)
    {
      ++v4;
      if (v5 == 10)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_C888(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_dimmingOverlays);
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (v3)
  {
    do
    {
      v4 = 0;
      a1 = fmin(1.0 - a1, 1.0);
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_128B4();
        }

        else
        {
          if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
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

        isa = sub_12724().super.super.isa;
        v9 = sub_12774();
        [v6 setValue:isa forKeyPath:v9];

        ++v4;
        if (v7 == v3)
        {
          return;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      v10 = a1;
      v11 = sub_12944();
      a1 = v10;
      v3 = v11;
    }

    while (v11);
  }
}

void sub_C9D0(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v235 = a2 - 10;
  if (a2 > 0xA)
  {
    return;
  }

  v5 = a3;
  v7 = a2;
  v8 = *(v207 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeRows);
  v9 = v8 >> 62;
  v10 = 0x2E8BA2E8BA2E8BA3;
  v189 = v8 >> 62;
  v190 = v8;
  if (v8 >> 62)
  {
    goto LABEL_99;
  }

  v193 = v8 & 0xFFFFFFFFFFFFFF8;
  v11 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (v11)
  {
    v12 = v11 - 1;
    v202 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    v205 = v202;
    while (1)
    {
      v4 = 0;
      v226 = a1 & 0xC000000000000001;
      v195 = a1 + 32;
      v13 = -v7;
      v233 = v7 - 11;
      v14 = ~v7;
      v15 = v7 + 2;
      v16 = 0.25 / v12;
      v191 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeAlternateRows;
      v17 = -2 - v7;
      v231 = v7 - 9;
      v18 = v7 + 3;
      v19 = -3 - v7;
      v20 = v7 - 8;
      v21 = v7 + 1;
      v8 = v7;
      v198 = v12;
      v200 = v11;
      while (1)
      {
        v224 = v20;
        v5 = -11;
        v32 = v8 <= 0xFFFFFFFFFFFFFFF5 ? -11 : v8;
        v33 = v32 + v13 - (v32 != v8);
        v34 = v32 == v8 ? v33 / 0xB : v33 / 0xB + 1;
        v35 = v21 <= 0xFFFFFFFFFFFFFFF5 ? -11 : v21;
        v36 = v35 - 1;
        v37 = (v35 + v14 - (v35 - 1 != v8)) / 0xB;
        v38 = v36 == v8 ? v37 : v37 + 1;
        v39 = v15 <= 0xFFFFFFFFFFFFFFF5 ? -11 : v15;
        v40 = v39 - 2;
        v41 = (v39 + v17 - (v39 - 2 != v8)) / 0xB;
        v42 = v40 == v8 ? v41 : v41 + 1;
        v43 = v18 <= 0xFFFFFFFFFFFFFFF5 ? -11 : v18;
        v44 = v43 - 3;
        v45 = (v43 + v19 - (v43 - 3 != v8)) / 0xB;
        v46 = v44 == v8 ? v45 : v45 + 1;
        if (v4 >= v11)
        {
          break;
        }

        v229 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_87;
        }

        v47 = v12 - v4;
        if (__OFSUB__(v12, v4))
        {
          goto LABEL_88;
        }

        v220 = v13;
        v222 = v42;
        v210 = v21;
        v211 = v19;
        v213 = v18;
        v215 = v17;
        v216 = v15;
        v218 = v14;
        v48 = (a4 - v16 * v47) / 0.75;
        if (v48 < 0.0)
        {
          v49 = 0.0;
        }

        else
        {
          v49 = (a4 - v16 * v47) / 0.75;
        }

        if (v48 <= 1.0)
        {
          v50 = v49;
        }

        else
        {
          v50 = 1.0;
        }

        v51 = objc_allocWithZone(CAMediaTimingFunction);
        LODWORD(v52) = 1051260355;
        LODWORD(v53) = 1045220557;
        LODWORD(v54) = 1.0;
        v55 = [v51 initWithControlPoints:v52 :0.0 :v53 :v54];
        *&v56 = v50;
        [v55 _solveForInput:v56];
        v58 = v57;

        v9 = v7 + v4;
        if (__OFADD__(v7, v4))
        {
          goto LABEL_89;
        }

        v59 = v8 + 11 * v34 + 11;
        if (v9 >= 0)
        {
          v59 = v7 + v4;
        }

        if (v9 <= 10)
        {
          v60 = v59;
        }

        else
        {
          v60 = v8 - 11 * (v233 / 0xB) - 11;
        }

        v61 = v7 + v229;
        if (__OFADD__(v7, v229))
        {
          goto LABEL_90;
        }

        v62 = v8 + 11 * v38 + 12;
        if (v61 >= 0)
        {
          v62 = v7 + v229;
        }

        if (v61 <= 10)
        {
          v63 = v62;
        }

        else
        {
          v63 = v8 - 11 * (v235 / 0xB) - 10;
        }

        if (v226)
        {
          v5 = sub_128B4();
          v64 = sub_128B4();
        }

        else
        {
          v65 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
          if (v60 >= v65)
          {
            goto LABEL_95;
          }

          if (v63 >= v65)
          {
            goto LABEL_96;
          }

          v66 = *(v195 + 8 * v63);
          v5 = *(v195 + 8 * v60);
          v64 = v66;
        }

        v67 = v64;
        v68 = v58;
        if (v4 < v205)
        {
          if ((v190 & 0xC000000000000001) != 0)
          {
            v69 = sub_128B4();
          }

          else
          {
            if (v4 >= *(v193 + 16))
            {
              goto LABEL_93;
            }

            v69 = *(v190 + 32 + 8 * v4);
          }

          v70 = v69;
          sub_3EA8(&qword_1E920, &qword_148C0);
          v71 = swift_allocObject();
          *(v71 + 16) = xmmword_145B0;
          type metadata accessor for CGColor(0);
          *(v71 + 32) = v5;
          *(v71 + 88) = v72;
          *(v71 + 56) = v72;
          *(v71 + 64) = v67;
          v73 = v70;
          v74 = v5;
          v75 = v67;
          isa = sub_127D4().super.isa;

          [v73 setColors:isa];

          [v73 bounds];
          v77 = 1.0 / CGRectGetHeight(v238);
          v78 = (v77 + 1.0) * v68;
          [v73 setStartPoint:{0.0, 1.0 - v78}];
          [v73 setEndPoint:{0.0, v77 - v78 + 1.0}];

          v7 = a2;
          v10 = 0x2E8BA2E8BA2E8BA3;
        }

        v79 = v9 + 2;
        if (__OFADD__(v9, 2))
        {
          goto LABEL_91;
        }

        v80 = v8 + 11 * v222 + 13;
        if (v79 >= 0)
        {
          v80 = v9 + 2;
        }

        if (v79 <= 10)
        {
          v81 = v80;
        }

        else
        {
          v81 = v8 - 11 * (v231 / 0xB) - 9;
        }

        v82 = v61 + 2;
        if (__OFADD__(v61, 2))
        {
          goto LABEL_92;
        }

        v83 = v8 + 11 * v46 + 14;
        if (v82 >= 0)
        {
          v83 = v61 + 2;
        }

        if (v82 <= 10)
        {
          v84 = v83;
        }

        else
        {
          v84 = v8 - 11 * (v224 / 0xB) - 8;
        }

        if (v226)
        {
          v9 = a1;
          v5 = sub_128B4();
          v85 = sub_128B4();
        }

        else
        {
          v86 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
          if (v81 >= v86)
          {
            goto LABEL_97;
          }

          if (v84 >= v86)
          {
            goto LABEL_98;
          }

          v87 = *(v195 + 8 * v84);
          v5 = *(v195 + 8 * v81);
          v85 = v87;
        }

        v88 = v85;
        if (v4 < v202)
        {
          v89 = *(v207 + v191);
          if ((v89 & 0xC000000000000001) != 0)
          {
            v22 = sub_128B4();
          }

          else
          {
            if (v4 >= *(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_94;
            }

            v22 = *(v89 + 8 * v4 + 32);
          }

          v23 = v22;
          sub_3EA8(&qword_1E920, &qword_148C0);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_145B0;
          type metadata accessor for CGColor(0);
          *(v24 + 32) = v5;
          *(v24 + 88) = v25;
          *(v24 + 56) = v25;
          *(v24 + 64) = v88;
          v26 = v23;
          v27 = v5;
          v28 = v88;
          v29 = sub_127D4().super.isa;

          [v26 setColors:v29];

          [v26 bounds];
          v30 = 1.0 / CGRectGetHeight(v237);
          v31 = (v30 + 1.0) * v68;
          [v26 setStartPoint:{0.0, 1.0 - v31}];
          [v26 setEndPoint:{0.0, v30 - v31 + 1.0}];

          v7 = a2;
          v10 = 0x2E8BA2E8BA2E8BA3;
        }

        v13 = v220 - 1;
        ++v233;
        v14 = v218 - 1;
        ++v235;
        v15 = v216 + 1;
        v17 = v215 - 1;
        ++v231;
        v18 = v213 + 1;
        v19 = v211 - 1;
        v20 = v224 + 1;
        v21 = v210 + 1;
        ++v4;
        ++v8;
        v12 = v198;
        v11 = v200;
        v5 = a3;
        if (v229 == v200)
        {
          goto LABEL_104;
        }
      }

      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      v90 = sub_12944();
      if (v90 < 0)
      {
        __break(1u);
      }

      v193 = v8 & 0xFFFFFFFFFFFFFF8;
      if (!v90)
      {
        break;
      }

      v91 = v90;
      v92 = sub_12944();
      v9 = v92 - 1;
      if (__OFSUB__(v92, 1))
      {
        __break(1u);
        return;
      }

      v205 = sub_12944();
      v202 = sub_12944();
      v7 = a2;
      v11 = v91;
      v12 = v9;
    }
  }

LABEL_104:
  v93 = *(v207 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeColumns);
  v94 = v93 >> 62;
  if (v93 >> 62)
  {
    goto LABEL_307;
  }

  v9 = *(v207 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeColumns);
  v4 = *(&dword_10 + (v93 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
    return;
  }

  do
  {
    if (v189)
    {
      goto LABEL_309;
    }

    v95 = *(&dword_10 + (v190 & 0xFFFFFFFFFFFFFF8));
    v96 = v95 - 1;
    if (__OFSUB__(v95, 1))
    {
      goto LABEL_311;
    }

    while (2)
    {
      v97 = v96;
      v203 = v96;
      if (v94)
      {
        v199 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v9 < 0)
        {
          v93 = v9;
        }

        else
        {
          v93 = v9 & 0xFFFFFFFFFFFFFF8;
        }

        v217 = sub_12944();
        v214 = sub_12944();
      }

      else
      {
        v199 = v9 & 0xFFFFFFFFFFFFFF8;
        v214 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
        v217 = v214;
      }

      v98 = 0;
      v196 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeAlternateColumns;
      v99 = v7 + 6;
      v206 = a1 + 32;
      v201 = v9 & 0xC000000000000001;
      v197 = v9 + 32;
      v219 = v7 - 1;
      v221 = a1 & 0xC000000000000001;
      v94 = v7 + 5;
      v225 = v7 + 15;
      v230 = -10 - v7;
      v232 = v7 | 0x10;
      v223 = v7 + 17;
      v234 = v7 + 4;
      v100 = -v7;
      v9 = -6;
      v101 = 0.25 / v97;
      v204 = v7 + 6;
      v192 = v7 + 10;
      v227 = v7 + 10;
      v194 = v7 + 5;
      v212 = v4;
      while (v98 < v4)
      {
        if (__OFADD__(v98, 1))
        {
          goto LABEL_285;
        }

        v112 = v98;
        if ((v5 & 1) == 0)
        {
          v112 = v203 - v98;
          if (__OFSUB__(v203, v98))
          {
            goto LABEL_293;
          }
        }

        v4 = v98 + 1;
        v113 = (a4 - v101 * v112) / 0.75;
        if (v113 < 0.0)
        {
          v114 = 0.0;
        }

        else
        {
          v114 = (a4 - v101 * v112) / 0.75;
        }

        if (v113 <= 1.0)
        {
          v115 = v114;
        }

        else
        {
          v115 = 1.0;
        }

        v116 = objc_allocWithZone(CAMediaTimingFunction);
        LODWORD(v117) = 1051260355;
        LODWORD(v118) = 1045220557;
        LODWORD(v119) = 1.0;
        v93 = [v116 initWithControlPoints:v117 :0.0 :v118 :v119];
        *&v120 = v115;
        [v93 _solveForInput:v120];
        v122 = v121;

        if (v5)
        {
          v123 = 1.0 - v122;
        }

        else
        {
          v123 = v122;
        }

        v236 = v98 + 1;
        if (v5 == 9)
        {
          v124 = 0;
        }

        else if ((v5 - 10) >= 2)
        {
          if (v5 == 12)
          {
            v128 = 2;
LABEL_155:
            v133 = v7 + v98;
            if (__OFADD__(v7, v98))
            {
              goto LABEL_304;
            }

            v134 = __OFADD__(v133, 5);
            v135 = v133 + 5;
            if (v134)
            {
              goto LABEL_305;
            }

            v127 = v135 + v128;
            if (__OFADD__(v135, v128))
            {
              goto LABEL_306;
            }

            if (v127 < 11)
            {
              if (v127 < 0)
              {
                v137 = v128 + v94;
                if (v128 + v94 <= 0xFFFFFFFFFFFFFFF5)
                {
                  v137 = -11;
                }

                v138 = v137 + v100 - 5;
                v139 = (((v100 + v137 - v128 - (v138 != v128) - 5) * v10) >> 64) >> 1;
                if (v138 != v128)
                {
                  ++v139;
                }

                v127 = v128 + v232 + 11 * v139;
              }
            }

            else
            {
              v136 = v128 + v94;
              if (v128 + v94 >= 0x15)
              {
                v136 = 21;
              }

              v127 = v7 + v98 + v128 - 11 * ((((v7 + v98 + v128 - v136 + 15) * v10) >> 64) >> 1) - 6;
            }

            goto LABEL_168;
          }

          v128 = 0;
          v124 = 0;
          if ((v5 & 1) == 0)
          {
            goto LABEL_155;
          }
        }

        else
        {
          v128 = 2;
          v124 = 2;
          if ((v5 & 1) == 0)
          {
            goto LABEL_155;
          }
        }

        v125 = v7 + v124 + v9;
        v126 = v125 + 16;
        if ((v125 + 16) < 11)
        {
          if ((v126 & 0x8000000000000000) != 0)
          {
            v129 = v124 + v227;
            if (v124 + v227 <= 0xFFFFFFFFFFFFFFF5)
            {
              v129 = -11;
            }

            v130 = v129 + v230;
            if (v130 == v124)
            {
              v131 = v124;
            }

            else
            {
              v131 = v124 + 1;
            }

            v127 = v7 + v124 + v9 + 11 * (v130 != v124) + 11 * ((((v130 - v131) * v10) >> 64) >> 1) + 27;
            if (v5 == 9)
            {
LABEL_153:
              v132 = 0;
              goto LABEL_182;
            }
          }

          else
          {
            v127 = v192 - v98 + v124;
            if (v5 == 9)
            {
              goto LABEL_153;
            }
          }
        }

        else
        {
          if (v126 <= 0x15)
          {
            v127 = v125 + 5;
          }

          else
          {
            v127 = 0;
          }

          if (v5 == 9)
          {
            goto LABEL_153;
          }
        }

LABEL_168:
        if ((v5 - 10) >= 2)
        {
          if (v5 == 12)
          {
            v132 = 2;
LABEL_174:
            v140 = v7 + v4;
            if (__OFADD__(v7, v4))
            {
              goto LABEL_296;
            }

            v134 = __OFADD__(v140, 5);
            v141 = v140 + 5;
            if (v134)
            {
              goto LABEL_297;
            }

            v4 = v141 + v132;
            if (__OFADD__(v141, v132))
            {
              goto LABEL_298;
            }

            if (v4 < 11)
            {
              if ((v4 & 0x8000000000000000) == 0)
              {
                goto LABEL_194;
              }

              v147 = v132 + v99;
              if (v132 + v99 <= 0xFFFFFFFFFFFFFFF5)
              {
                v147 = -11;
              }

              v148 = v147 + v100 - 6;
              v149 = (((v100 + v147 - v132 - (v148 != v132) - 6) * v10) >> 64) >> 1;
              if (v148 != v132)
              {
                ++v149;
              }

              v4 = v132 + v223 + 11 * v149;
              if (v221)
              {
LABEL_195:
                v10 = a1;
                v93 = sub_128B4();
                v146 = sub_128B4();
                goto LABEL_204;
              }
            }

            else
            {
              v142 = v132 + v99;
              if (v132 + v99 >= 0x15)
              {
                v142 = 21;
              }

              v4 = v7 + v98 + v132 - 11 * ((((v7 + v98 + v132 - v142 + 16) * v10) >> 64) >> 1) - 5;
              if (v221)
              {
                goto LABEL_195;
              }
            }

            goto LABEL_201;
          }

          v132 = 0;
          if ((v5 & 1) == 0)
          {
            goto LABEL_174;
          }
        }

        else
        {
          v132 = 2;
          if ((v5 & 1) == 0)
          {
            goto LABEL_174;
          }

          v132 = 2;
        }

LABEL_182:
        if (__OFSUB__(4, v4))
        {
          goto LABEL_289;
        }

        v143 = v204 + 3 - v98 + v132;
        if (v143 <= 10)
        {
          v4 = v143;
        }

        else
        {
          v4 = v143 - 11;
        }

        if ((v4 & 0x8000000000000000) == 0)
        {
LABEL_194:
          if (v221)
          {
            goto LABEL_195;
          }

          goto LABEL_201;
        }

        v144 = -11 - v4;
        if (v4 > 0xFFFFFFFFFFFFFFF5)
        {
          v144 = 0;
        }

        v145 = ((((__PAIR128__(v144, v4) - 0xFFFFFFFFFFFFFFF5) >> 64) * v10) >> 64) >> 1;
        if (v4 < 0xFFFFFFFFFFFFFFF5)
        {
          ++v145;
        }

        v4 += 11 * v145 + 11;
        if (v221)
        {
          goto LABEL_195;
        }

LABEL_201:
        v150 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
        if (v127 >= v150)
        {
          goto LABEL_300;
        }

        if (v4 >= v150)
        {
          goto LABEL_301;
        }

        v10 = *(v206 + 8 * v4);
        v93 = *(v206 + 8 * v127);
        v146 = v10;
LABEL_204:
        v4 = v146;
        if (v98 < v217)
        {
          if (v201)
          {
            v151 = sub_128B4();
          }

          else
          {
            if (v98 >= *(v199 + 16))
            {
              goto LABEL_294;
            }

            v151 = *(v197 + 8 * v98);
          }

          v152 = v151;
          sub_3EA8(&qword_1E920, &qword_148C0);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_145B0;
          type metadata accessor for CGColor(0);
          *(v10 + 32) = v93;
          *(v10 + 88) = v153;
          *(v10 + 56) = v153;
          *(v10 + 64) = v4;
          v154 = v152;
          v155 = v93;
          v156 = v4;
          v157 = sub_127D4().super.isa;

          [v154 setColors:v157];

          [v154 bounds];
          v158 = 1.0 / CGRectGetWidth(v240);
          v159 = v123 * (v158 + 1.0);
          [v154 setStartPoint:{1.0 - v159, 0.0}];
          [v154 setEndPoint:{v158 - v159 + 1.0, 0.0}];

          v5 = a3;
          v7 = a2;
        }

        if (v5 == 9)
        {
          v160 = 2;
          v161 = v98 + 1;
        }

        else
        {
          v161 = v98 + 1;
          if ((v5 - 10) >= 2)
          {
            if (v5 == 12)
            {
              v166 = 0;
LABEL_234:
              v170 = v7 + v166 + v9;
              v171 = v170 + 15;
              v172 = v170 + 4;
              if (v171 <= 10)
              {
                v164 = v171;
              }

              else
              {
                v164 = v172;
              }

              if (v164 < 0)
              {
                v173 = -11 - v164;
                if (v164 > 0xFFFFFFFFFFFFFFF5)
                {
                  v173 = 0;
                }

                v174 = ((__PAIR128__(v173, v164) - 0xFFFFFFFFFFFFFFF5) >> 64) / 0xB;
                if (v164 < 0xFFFFFFFFFFFFFFF5)
                {
                  ++v174;
                }

                v164 += 11 * v174 + 11;
              }

              goto LABEL_243;
            }

            v166 = 0;
            v160 = 0;
            if ((v5 & 1) == 0)
            {
              goto LABEL_234;
            }
          }

          else
          {
            v166 = 2;
            v160 = 2;
            if ((v5 & 1) == 0)
            {
              goto LABEL_234;
            }
          }
        }

        v162 = v219 + v98;
        if (__OFADD__(v219, v98))
        {
          goto LABEL_286;
        }

        v134 = __OFADD__(v162, 5);
        v163 = v162 + 5;
        if (v134)
        {
          goto LABEL_287;
        }

        v164 = v163 + v160;
        if (__OFADD__(v163, v160))
        {
          goto LABEL_288;
        }

        if (v164 < 11)
        {
          if (v164 < 0)
          {
            v167 = v160 + v234;
            if (v160 + v234 <= 0xFFFFFFFFFFFFFFF5)
            {
              v167 = -11;
            }

            v168 = v167 + v100 - 4;
            v169 = (v100 + v167 - v160 - (v168 != v160) - 4) / 0xB;
            if (v168 != v160)
            {
              ++v169;
            }

            v164 = v160 + v225 + 11 * v169;
            if (v5 == 9)
            {
LABEL_245:
              v175 = 2;
LABEL_246:
              v176 = v219 + v161;
              if (__OFADD__(v219, v161))
              {
                goto LABEL_290;
              }

              v134 = __OFADD__(v176, 5);
              v177 = v176 + 5;
              if (v134)
              {
                goto LABEL_291;
              }

              v93 = v177 + v175;
              if (__OFADD__(v177, v175))
              {
                goto LABEL_292;
              }

              if (v93 < 11)
              {
                if ((v93 & 0x8000000000000000) == 0)
                {
                  goto LABEL_269;
                }

                v179 = v175 + v94;
                if (v175 + v94 <= 0xFFFFFFFFFFFFFFF5)
                {
                  v179 = -11;
                }

                v180 = v179 + v100 - 5;
                v181 = (v100 + v179 - v175 - (v180 != v175) - 5) / 0xB;
                if (v180 != v175)
                {
                  ++v181;
                }

                v93 = v175 + v232 + 11 * v181;
                if (v221)
                {
                  goto LABEL_270;
                }
              }

              else
              {
                v178 = v175 + v94;
                if (v175 + v94 >= 0x15)
                {
                  v178 = 21;
                }

                v93 = v7 + v98 + v175 - 11 * ((v7 + v98 + v175 - v178 + 15) / 0xB) - 6;
                if (v221)
                {
                  goto LABEL_270;
                }
              }

              goto LABEL_276;
            }
          }

          else if (v5 == 9)
          {
            goto LABEL_245;
          }
        }

        else
        {
          v165 = v160 + v234;
          if (v160 + v234 >= 0x15)
          {
            v165 = 21;
          }

          v164 = v7 + v98 + v160 - 11 * ((v7 + v98 + v160 - v165 + 14) / 0xB) - 7;
          if (v5 == 9)
          {
            goto LABEL_245;
          }
        }

LABEL_243:
        if ((v5 - 10) >= 2)
        {
          if (v5 == 12)
          {
            v175 = 0;
          }

          else
          {
            v175 = 0;
            if (v5)
            {
              goto LABEL_246;
            }
          }
        }

        else
        {
          v175 = 2;
          if (v5)
          {
            goto LABEL_245;
          }
        }

        if (__OFSUB__(4, v161))
        {
          goto LABEL_299;
        }

        v182 = v194 + 4 - v161 + v175;
        if (v182 <= 10)
        {
          v93 = v182;
        }

        else
        {
          v93 = v182 - 11;
        }

        if ((v93 & 0x8000000000000000) == 0)
        {
LABEL_269:
          if (v221)
          {
            goto LABEL_270;
          }

          goto LABEL_276;
        }

        v184 = -11 - v93;
        if (v93 > 0xFFFFFFFFFFFFFFF5)
        {
          v184 = 0;
        }

        v185 = ((__PAIR128__(v184, v93) - 0xFFFFFFFFFFFFFFF5) >> 64) / 0xB;
        if (v93 < 0xFFFFFFFFFFFFFFF5)
        {
          ++v185;
        }

        v93 += 11 * v185 + 11;
        if (v221)
        {
LABEL_270:
          v10 = a1;
          v4 = sub_128B4();
          v183 = sub_128B4();
          goto LABEL_279;
        }

LABEL_276:
        v186 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
        if (v164 >= v186)
        {
          goto LABEL_302;
        }

        if (v93 >= v186)
        {
          goto LABEL_303;
        }

        v187 = *(v206 + 8 * v93);
        v4 = *(v206 + 8 * v164);
        v183 = v187;
LABEL_279:
        v93 = v183;
        if (v98 < v214)
        {
          v188 = *(v207 + v196);
          if ((v188 & 0xC000000000000001) != 0)
          {
            v102 = sub_128B4();
          }

          else
          {
            if (v98 >= *(&dword_10 + (v188 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_295;
            }

            v102 = *(v188 + 8 * v98 + 32);
          }

          v103 = v102;
          sub_3EA8(&qword_1E920, &qword_148C0);
          v104 = swift_allocObject();
          *(v104 + 16) = xmmword_145B0;
          type metadata accessor for CGColor(0);
          *(v104 + 32) = v4;
          *(v104 + 88) = v105;
          *(v104 + 56) = v105;
          *(v104 + 64) = v93;
          v106 = v103;
          v107 = v4;
          v108 = v93;
          v109 = sub_127D4().super.isa;

          [v106 setColors:v109];

          [v106 bounds];
          v110 = 1.0 / CGRectGetWidth(v239);
          v111 = v123 * (v110 + 1.0);
          [v106 setStartPoint:{1.0 - v111, 0.0}];
          [v106 setEndPoint:{v110 - v111 + 1.0, 0.0}];

          v7 = a2;
        }

        ++v94;
        ++v225;
        --v227;
        ++v230;
        ++v232;
        ++v223;
        ++v99;
        ++v234;
        --v100;
        --v9;
        v98 = v236;
        v4 = v212;
        v10 = 0x2E8BA2E8BA2E8BA3;
        if (v236 == v212)
        {
          return;
        }
      }

      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      v95 = sub_12944();
      if (v95 < 0)
      {
        __break(1u);
LABEL_309:
        v95 = sub_12944();
        v96 = v95 - 1;
        if (!__OFSUB__(v95, 1))
        {
          continue;
        }

LABEL_311:
        __break(1u);
      }

      break;
    }

    v4 = v95;
    v9 = v93;
  }

  while (v95);
}

void sub_DDDC(unint64_t a1, double a2)
{
  v186 = a2;
  if (a1 > 0xC)
  {
    __break(1u);
  }

  else
  {
    v7 = a1;
    v8 = &off_1A690 + 2 * a1;
    v5 = v8[5];
    v6 = *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_containerVertical);
    v171 = v8[4];

    v2 = &off_1D000;
    [v6 size];
    v4 = *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeColumns);
    v175 = v4 >> 62;
    if (!(v4 >> 62))
    {
      v9 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_4;
    }
  }

  v48 = a2;
  v9 = sub_12944();
  a2 = v48;
LABEL_4:
  v184 = a2 / v9;
  [v6 v2[179]];
  v11 = *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeRows);
  v12 = &unk_1E000;
  v173 = v3;
  v174 = v4;
  v169 = v11 >> 62;
  v170 = v11;
  v168 = v6;
  v172 = v5;
  if (!(v11 >> 62))
  {
    v13 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    v182 = v10 / v13;
    v15 = v5 + 2;
    v14 = v5[2];
    if (v14)
    {
      v16 = v13 - 1;
      if (!__OFSUB__(v13, 1))
      {
        goto LABEL_7;
      }

      goto LABEL_32;
    }

LABEL_33:
    v46 = 0;
LABEL_34:
    v50 = *(v3 + v12[252]);
    if ((v50 & 0xC000000000000001) != 0)
    {
      goto LABEL_40;
    }

    v51 = *(&dword_10 + (v50 & 0xFFFFFFFFFFFFFF8));
    if (v46 < v51 && v51 >= 7)
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_38:
    for (i = sub_128B4(); ; i = *(v50 + 8 * v46 + 32))
    {
      v53 = i;
      ++v46;
      [i setHidden:1];

      if (v46 == 7)
      {
        break;
      }

LABEL_40:
      if ((v50 & 0xC000000000000001) != 0)
      {
        goto LABEL_38;
      }
    }

    v3 = v173;
    goto LABEL_43;
  }

  v182 = v10 / sub_12944();
  v15 = v5 + 2;
  v14 = v5[2];
  if (!v14)
  {
    goto LABEL_33;
  }

  v49 = sub_12944();
  v16 = v49 - 1;
  if (__OFSUB__(v49, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_7:
  if (v14 > *v15)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v17 = *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_bottomHorizontalBlackStripes);
  v18 = v17 & 0xC000000000000001;
  if ((v17 & 0xC000000000000001) == 0 && v14 > *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_150;
  }

  v19 = v15;
  v20 = 0;
  v177 = 0.25 / v16;
  v21 = (v172 + 6);
  v22 = 1.0;
  do
  {
    v25 = (v186 - v177 * *(v21 + 6)) / 0.75;
    v26 = 0.0;
    if (v25 >= 0.0)
    {
      v26 = (v186 - v177 * *(v21 + 6)) / 0.75;
    }

    if (v25 <= v22)
    {
      v27 = v26;
    }

    else
    {
      v27 = v22;
    }

    v28 = objc_allocWithZone(CAMediaTimingFunction);
    LODWORD(v29) = 1.0;
    LODWORD(v31) = 1045220557;
    LODWORD(v30) = 1051260355;
    v32 = [v28 initWithControlPoints:v30 :0.0 :v31 :v29];
    *&v33 = v27;
    [v32 _solveForInput:v33];
    v35 = v34;

    v37 = *(v21 - 2);
    v36 = *(v21 - 1);
    v38 = *v21;
    v180 = v21[1];
    v40 = v21[2];
    v39 = v21[3];
    v41 = v21[4];
    v42 = v21[5];
    if (v18)
    {
      v43 = sub_128B4();
    }

    else
    {
      v43 = *(v17 + 8 * v20 + 32);
    }

    v44 = v43;
    v45 = v35;
    v22 = 1.0;
    [v43 setFrame:{v184 * (v37 * (1.0 - v45) + v40 * v45), v182 * ((1.0 - v45) * v36 + v39 * v45), v184 * ((1.0 - v45) * v38 + v41 * v45), v182 * ((1.0 - v45) * v180 + v42 * v45)}];

    if (v18)
    {
      v23 = sub_128B4();
    }

    else
    {
      v23 = *(v17 + 8 * v20 + 32);
    }

    v24 = v23;
    ++v20;
    v21 += 10;
    [v23 setHidden:0];
  }

  while (v14 != v20);
  v46 = *v19;
  v47 = *v19 == 7;
  if (*v19 > 7)
  {
    goto LABEL_144;
  }

  v3 = v173;
  v12 = &unk_1E000;
  if (!v47)
  {
    goto LABEL_34;
  }

LABEL_43:
  v54 = v171[2];
  if (v54)
  {
    if (v175)
    {
      v55 = sub_12944();
    }

    else
    {
      v55 = *(&dword_10 + (v174 & 0xFFFFFFFFFFFFFF8));
    }

    v176 = v55 - 1;
    if (__OFSUB__(v55, 1))
    {
      goto LABEL_151;
    }

    if (v54 > v171[2])
    {
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v58 = *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_topVerticalBlackStripes);
    v59 = v58 & 0xC000000000000001;
    if ((v58 & 0xC000000000000001) == 0 && v54 > *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_153;
    }

    v60 = v7;
    v61 = 0;
    v178 = 0.25 / v176;
    v62 = (v171 + 7);
    v63 = 1.0;
    while (1)
    {
      v66 = *(v62 + 6);
      if ((v60 & 1) == 0)
      {
        v67 = __OFSUB__(v176, v66);
        v66 = v176 - v66;
        if (v67)
        {
          break;
        }
      }

      v68 = (v186 - v178 * v66) / 0.75;
      v69 = 0.0;
      if (v68 >= 0.0)
      {
        v69 = (v186 - v178 * v66) / 0.75;
      }

      if (v68 <= v63)
      {
        v70 = v69;
      }

      else
      {
        v70 = v63;
      }

      v71 = objc_allocWithZone(CAMediaTimingFunction);
      LODWORD(v72) = 1051260355;
      LODWORD(v73) = 1045220557;
      LODWORD(v74) = 1.0;
      v75 = [v71 initWithControlPoints:v72 :0.0 :v73 :v74];
      *&v76 = v70;
      [v75 _solveForInput:v76];
      v78 = v77;

      v80 = *(v62 - 3);
      v79 = *(v62 - 2);
      v81 = *(v62 - 1);
      v181 = *v62;
      v83 = *(v62 + 1);
      v82 = *(v62 + 2);
      v84 = *(v62 + 3);
      v85 = *(v62 + 4);
      if (v59)
      {
        v86 = sub_128B4();
      }

      else
      {
        v86 = *(v58 + 8 * v61 + 32);
      }

      v87 = v86;
      v88 = v78;
      v63 = 1.0;
      [v86 setFrame:{v184 * (v80 * (1.0 - v88) + v83 * v88), v182 * ((1.0 - v88) * v79 + v82 * v88), v184 * ((1.0 - v88) * v81 + v84 * v88), v182 * ((1.0 - v88) * v181 + v85 * v88)}];

      if (v59)
      {
        v64 = sub_128B4();
      }

      else
      {
        v64 = *(v58 + 8 * v61 + 32);
      }

      v65 = v64;
      ++v61;
      v62 += 80;
      [v64 setHidden:0];

      if (v54 == v61)
      {
        v56 = v171[2];
        v7 = v60;
        v3 = v173;
        v57 = v174;
        goto LABEL_68;
      }
    }

    __break(1u);
    goto LABEL_143;
  }

  v56 = 0;
  v57 = v174;
LABEL_68:

  if (v56 > 7)
  {
    goto LABEL_145;
  }

  if (v56 != 7)
  {
    v90 = *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_topVerticalBlackStripes);
    if ((v90 & 0xC000000000000001) != 0)
    {
      goto LABEL_80;
    }

    v91 = *(&dword_10 + (v90 & 0xFFFFFFFFFFFFFF8));
    if (v56 < v91 && v91 >= 7)
    {
      goto LABEL_80;
    }

    __break(1u);
LABEL_78:
    for (j = *(v90 + 8 * v56 + 32); ; j = sub_128B4())
    {
      v94 = j;
      ++v56;
      [j setHidden:1];

      if (v56 == 7)
      {
        break;
      }

LABEL_80:
      if ((v90 & 0xC000000000000001) == 0)
      {
        goto LABEL_78;
      }
    }
  }

  if (v175)
  {
    v89 = sub_12944();
  }

  else
  {
    v89 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
  }

  if (__OFSUB__(v89, 1))
  {
    goto LABEL_146;
  }

  v95 = 0.0;
  v96 = (v186 + -0.25 / (v89 - 1) * 0.0) / 0.75;
  if (v96 >= 0.0)
  {
    v95 = (v186 + -0.25 / (v89 - 1) * 0.0) / 0.75;
  }

  if (v96 <= 1.0)
  {
    v97 = v95;
  }

  else
  {
    v97 = 1.0;
  }

  v98 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v99) = 1051260355;
  LODWORD(v100) = 1045220557;
  LODWORD(v101) = 1.0;
  v102 = [v98 initWithControlPoints:v99 :0.0 :v100 :v101];
  *&v103 = v97;
  [v102 _solveForInput:v103];
  v105 = v104;

  v106 = v105;
  [v168 frame];
  Height = CGRectGetHeight(v189);
  [v168 frame];
  Width = CGRectGetWidth(v190);
  v109 = atan(Height / Width);
  [v168 frame];
  v110 = CGRectGetHeight(v191);
  [v168 frame];
  v111 = CGRectGetWidth(v192);
  v112 = atan(v110 / v111);
  v113 = 1.0 - v106;
  if (v7)
  {
    v114 = v109 * v106 - v113 * v112;
  }

  else
  {
    v114 = v113 * v109 - v112 * v106;
  }

  v115 = *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_maskLayer);
  CATransform3DMakeRotation(&v188, v114, 0.0, 0.0, 1.0);
  v187 = v188;
  [v115 setTransform:&v187];
  v116 = (v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_imageSize);
  v117 = *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_imageSize + 8);
  if (v169)
  {
    v118 = sub_12944();
  }

  else
  {
    v118 = *(&dword_10 + (v170 & 0xFFFFFFFFFFFFFF8));
  }

  v119 = *v116;
  if (v175)
  {
    v120 = sub_12944();
  }

  else
  {
    v120 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
  }

  v121 = v119 / v120;
  v122 = (&off_1A780 + 3 * v7);
  v183 = v122[5];
  v185 = v122[4];
  v179 = v117;
  if (!v169)
  {
    v123 = *(&dword_10 + (v170 & 0xFFFFFFFFFFFFFF8));
    v124 = v123;
    if (!v123)
    {
      goto LABEL_117;
    }

    goto LABEL_104;
  }

  v125 = sub_12944();
  if (v125 < 0)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v123 = v125;
  if (v125)
  {
    v124 = sub_12944();
LABEL_104:
    if (__OFSUB__(v124, 1))
    {
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v126 = *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeAlternateRows);
    if ((v126 & 0xC000000000000001) == 0 && v123 > *(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_155;
    }

    v127 = 0;
    v128 = v117 / v118;
    v129 = 0.25 / (v124 - 1);
    do
    {
      v134 = v127;
      v135 = (v186 - v129 * v127) / 0.75;
      v136 = 0.0;
      if (v135 >= 0.0)
      {
        v136 = (v186 - v129 * v127) / 0.75;
      }

      if (v135 <= 1.0)
      {
        v137 = v136;
      }

      else
      {
        v137 = 1.0;
      }

      v138 = objc_allocWithZone(CAMediaTimingFunction);
      LODWORD(v139) = 1.0;
      LODWORD(v140) = 1051260355;
      LODWORD(v141) = 1045220557;
      v142 = [v138 initWithControlPoints:v140 :0.0 :v141 :v139];
      *&v143 = v137;
      [v142 _solveForInput:v143];
      v145 = v144;

      if ((v126 & 0xC000000000000001) != 0)
      {
        v130 = sub_128B4();
      }

      else
      {
        v130 = *(v126 + 8 * v127 + 32);
      }

      v131 = v130;
      ++v127;
      v132 = v121 * (v183 * v145 + v185 * (1.0 - v145));
      v133 = v128 * v134;
      [v130 setFrame:{v132, v133, v119, v128}];
      [v131 setBounds:{v132, v133, v119, v128}];
    }

    while (v123 != v127);
  }

LABEL_117:
  if (!v175)
  {
    v146 = *(&dword_10 + (v174 & 0xFFFFFFFFFFFFFF8));
    v147 = v146;
    v148 = v179;
    if (!v146)
    {
      return;
    }

LABEL_123:
    v150 = v147 - 1;
    if (__OFSUB__(v147, 1))
    {
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      return;
    }

    v151 = *(v3 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_stripeAlternateColumns);
    if ((v151 & 0xC000000000000001) == 0 && v146 > *(&dword_10 + (v151 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_157;
    }

    v152 = 0;
    v153 = 0.25 / v150;
    while (1)
    {
      v167 = v152;
      if ((v7 & 1) == 0)
      {
        v167 = v150 - v152;
        if (__OFSUB__(v150, v152))
        {
          break;
        }
      }

      v154 = (v186 - v153 * v167) / 0.75;
      if (v154 < 0.0)
      {
        v155 = 0.0;
      }

      else
      {
        v155 = (v186 - v153 * v167) / 0.75;
      }

      if (v154 <= 1.0)
      {
        v156 = v155;
      }

      else
      {
        v156 = 1.0;
      }

      v157 = objc_allocWithZone(CAMediaTimingFunction);
      LODWORD(v158) = 1051260355;
      LODWORD(v159) = 1045220557;
      LODWORD(v160) = 1.0;
      v161 = [v157 initWithControlPoints:v158 :0.0 :v159 :v160];
      *&v162 = v156;
      [v161 _solveForInput:v162];
      v164 = v163;

      if ((v151 & 0xC000000000000001) != 0)
      {
        v165 = sub_128B4();
      }

      else
      {
        v165 = *(v151 + 8 * v152 + 32);
      }

      v166 = v165;
      [v165 setFrame:{v121 * v152, v148 * (1.0 - v164), v121, v148}];

      if (v146 == ++v152)
      {
        return;
      }
    }

LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v149 = sub_12944();
  v148 = v179;
  if (v149 < 0)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v146 = v149;
  if (v149)
  {
    v147 = sub_12944();
    goto LABEL_123;
  }
}

void sub_EA78(double a1, double a2)
{
  v3 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_meshTime;
  v4 = *(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_meshTime) + a1;
  if (v4 > 1795.196)
  {
    v4 = v4 + -1795.196;
  }

  *(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_meshTime) = v4;
  if (a2 <= 0.0001)
  {
    v7 = *(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_mesh);
    v20 = 1;
    v21 = 12;
    v22 = 3.0;
    v23 = 15.0;
    do
    {
      v24 = v20++;
      v25 = v24 / 11.0;
      v36 = v24 / 11.0 * v22 + 5.0;
      v37 = v24 / 11.0 * v22;
      v26 = v21;
      v27 = 1;
      do
      {
        v28 = v27 + 1;
        v29 = v27 / v23;
        v30 = v29 * v22;
        v31 = __sincos_stret(*(v2 + v3) * 0.0035);
        v32 = simplexNoise4(v37, v30, v31.__cosval, v31.__sinval) * 0.015;
        v33 = simplexNoise4(v31.__cosval, v31.__sinval, v36, v30);
        *&v38 = v25;
        *(&v38 + 1) = v29;
        *&v39 = v25 + v32;
        *(&v39 + 1) = v29 + v33 * 0.015;
        v40 = 0;
        [v7 replaceVertexAtIndex:v26 withVertex:&v38];
        v23 = 15.0;
        v22 = 3.0;
        v26 += 11;
        v27 = v28;
      }

      while (v28 != 14);
      ++v21;
    }

    while (v20 != 10);
  }

  else
  {
    if (a2 > 1.0)
    {
      a2 = 1.0;
    }

    v35 = a2 * a2 * (3.0 - (a2 + a2));
    v5 = 1.0 - v35;
    v6 = OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_tritiumMesh;
    v7 = *(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_mesh);
    v8 = 1;
    v9 = 12;
    while (2)
    {
      v34 = v8 + 1;
      v10 = v8 / 11.0;
      v11 = 5;
      v12 = v9;
      do
      {
        v13 = (v11 - 4) / 15.0;
        v14 = __sincos_stret(*(v2 + v3) * 0.0035);
        v15 = simplexNoise4(v10 * 3.0, v13 * 3.0, v14.__cosval, v14.__sinval);
        v16 = simplexNoise4(v14.__cosval, v14.__sinval, v10 * 3.0 + 5.0, v13 * 3.0);
        v17 = *(v2 + v6);
        if ((v11 - 4) >= *(v17 + 16))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return;
        }

        v18 = *(v17 + 8 * v11);
        if (v8 >= *(v18 + 16))
        {
          goto LABEL_19;
        }

        v19 = v35 * *(v18 + 16 * v8 + 40);
        *&v38 = v8 / 11.0;
        *(&v38 + 1) = (v11 - 4) / 15.0;
        *&v39 = v5 * (v10 + v15 * 0.015) + v35 * (v10 + v15 * 0.015);
        *(&v39 + 1) = v5 * (v13 + v16 * 0.015) + v19;
        v40 = 0;
        [v7 replaceVertexAtIndex:v12 withVertex:&v38];
        v12 += 11;
        ++v11;
      }

      while (v11 != 18);
      ++v9;
      ++v8;
      if (v34 != 10)
      {
        continue;
      }

      break;
    }
  }

  v38 = xmmword_147E0;
  v39 = xmmword_147E0;
  v40 = 0;
  [v7 replaceVertexAtIndex:82 withVertex:&v38];
  [*(v2 + OBJC_IVAR____TtC22NTKPride2025FaceBundle30Pride2025StripeLayerController_liveContainer) setMeshTransform:v7];
}

uint64_t getEnumTagSinglePayload for Pride2025StripeLayerController.TextPosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Pride2025StripeLayerController.TextPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_F0DC()
{
  result = qword_1E910;
  if (!qword_1E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E910);
  }

  return result;
}

char *sub_F130(char *result, int64_t a2, char a3, char *a4)
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
    sub_3EA8(&qword_1EA00, &qword_14920);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_F234(char *result, int64_t a2, char a3, char *a4)
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
    sub_3EA8(&qword_1EA08, &qword_14928);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_F350(char *result, int64_t a2, char a3, char *a4)
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
    sub_3EA8(&qword_1E9C0, &qword_148F8);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_F454(void *result, int64_t a2, char a3, void *a4)
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
    sub_3EA8(&qword_1E9C8, &qword_14900);
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
    sub_3EA8(&qword_1E9B8, &qword_148F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_F588(Swift::UInt a1)
{
  sub_12984();
  sub_12994(a1);
  v2 = sub_129A4();

  return sub_F6B0(a1, v2);
}

unint64_t sub_F5F4(uint64_t a1, uint64_t a2)
{
  sub_12984();
  sub_127A4();
  v4 = sub_129A4();

  return sub_F71C(a1, a2, v4);
}

unint64_t sub_F66C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_12874(*(v2 + 40));

  return sub_F7D4(a1, v4);
}

unint64_t sub_F6B0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_F71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_12964())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_F7D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_4568(0, &qword_1E4D0, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_12884();

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

uint64_t sub_F8A8(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_12944();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v2 >> 62))
  {
    v6 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_12944();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_F9A0(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_F9A0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_12944();
LABEL_9:
  result = sub_128C4();
  *v2 = result;
  return result;
}

CGImageRef sub_FA40(uint64_t *a1, int64_t __len, uint64_t a3, uint64_t a4, size_t a5, size_t a6, char a7, double a8)
{
  v15 = *a1;
  v14 = a1[1];
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 != 2)
    {
      *(&__b + 7) = 0;
      *&__b = 0;
      if (__len < 0)
      {
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
        goto LABEL_256;
      }

      if (__len)
      {
        v56 = a5;
        v57 = a7;
        memset(&__b, 255, __len);
        a7 = v57;
        a5 = v56;
      }

      v58 = round(a8 * 0.5 - a8);
      if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_208;
      }

      v59 = a4 + 1;
      v60 = __OFADD__(a4, 1);
      if (v58 <= -9.22337204e18)
      {
        goto LABEL_204;
      }

      v61 = -1;
      while (1)
      {
        if (v58 >= 9.22337204e18)
        {
          goto LABEL_212;
        }

        v63 = v58 + a3;
        if (__OFADD__(v58, a3))
        {
          break;
        }

        if (v63 >= __len)
        {
          if (a7)
          {
            v76 = 1;
          }

          else
          {
            v76 = __len;
          }

          v77 = a5;
          DeviceGray = CGColorSpaceCreateDeviceGray();
          v79 = sub_11B28(&__b, v77, a6, v76, DeviceGray);

          if (!v79)
          {
            return 0;
          }

          Image = CGBitmapContextCreateImage(v79);

          return Image;
        }

        v23 = __OFADD__(v61++, 1);
        if (v23)
        {
          goto LABEL_220;
        }

        v58 = round(a8 * 0.5 + v61 * a8);
        if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_222;
        }

        if (v58 <= -9.22337204e18)
        {
          goto LABEL_225;
        }

        if (v58 >= 9.22337204e18)
        {
          goto LABEL_229;
        }

        v64 = v58 + a3;
        if (__OFADD__(v58, a3))
        {
          goto LABEL_233;
        }

        v65 = v64 - v63;
        if (__OFSUB__(v64, v63))
        {
          goto LABEL_237;
        }

        if (v60)
        {
          goto LABEL_241;
        }

        if (v59 < 0)
        {
          goto LABEL_245;
        }

        if (a4 != -1)
        {
          v66 = 0;
          v67 = v65;
          do
          {
            v68 = v66 / v67;
            if (v66 <= 5)
            {
              v62 = a8;
              v68 = v66 / v62;
            }

            v69 = v68 * 255.0;
            if ((LODWORD(v69) & 0x7FFFFFFFu) > 0x7F7FFFFF)
            {
              goto LABEL_188;
            }

            if (v69 <= -9.2234e18)
            {
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
              goto LABEL_195;
            }

            if (v69 >= 9.2234e18)
            {
              goto LABEL_193;
            }

            if (v69 >= 255)
            {
              v70 = 255;
            }

            else
            {
              v70 = v69;
            }

            v71 = v63 + v66;
            if (__OFADD__(v63, v66))
            {
              goto LABEL_197;
            }

            if ((v71 & 0x8000000000000000) == 0 && v71 < __len)
            {
              *(&__b + v71) = v70 & ~(v70 >> 63);
            }

            ++v66;
          }

          while (v59 != v66);
        }

        if (v58 <= -9.22337204e18)
        {
          goto LABEL_204;
        }
      }

LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    v112 = a7;
    *v114 = a5;

    sub_11A8C(v15, v14);
    *&__b = v15;
    *(&__b + 1) = v14 & 0x3FFFFFFFFFFFFFFFLL;
    v32 = a1;
    *a1 = xmmword_147F0;
    sub_11A8C(0, 0xC000000000000000);
    sub_12654();
    v33 = *(&__b + 1);
    v108 = __b;
    v34 = *(__b + 16);
    result = sub_12604();
    if (result)
    {
      v36 = result;
      v37 = sub_12634();
      v23 = __OFSUB__(v34, v37);
      v38 = v34 - v37;
      if (!v23)
      {
        sub_12624();
        if ((__len & 0x8000000000000000) == 0)
        {
          v39 = v36 + v38;
          if (__len)
          {
            memset(v39, 255, __len);
          }

          v40 = round(a8 * 0.5 - a8);
          if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_209;
          }

          v41 = a4 + 1;
          v42 = __OFADD__(a4, 1);
          if (v40 <= -9.22337204e18)
          {
            goto LABEL_205;
          }

          v43 = -1;
          while (1)
          {
            if (v40 >= 9.22337204e18)
            {
              goto LABEL_215;
            }

            v45 = v40 + a3;
            if (__OFADD__(v40, a3))
            {
              goto LABEL_216;
            }

            if (v45 >= __len)
            {
              break;
            }

            v23 = __OFADD__(v43++, 1);
            if (v23)
            {
              goto LABEL_223;
            }

            v40 = round(a8 * 0.5 + v43 * a8);
            if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_226;
            }

            if (v40 <= -9.22337204e18)
            {
              goto LABEL_230;
            }

            if (v40 >= 9.22337204e18)
            {
              goto LABEL_234;
            }

            v46 = v40 + a3;
            if (__OFADD__(v40, a3))
            {
              goto LABEL_238;
            }

            v47 = v46 - v45;
            if (__OFSUB__(v46, v45))
            {
              goto LABEL_242;
            }

            if (v42)
            {
              goto LABEL_246;
            }

            if (v41 < 0)
            {
              goto LABEL_248;
            }

            if (a4 != -1)
            {
              v48 = 0;
              v49 = v47;
              while (1)
              {
                v50 = v48 / v49;
                if (v48 <= 5)
                {
                  v44 = a8;
                  v50 = v48 / v44;
                }

                v51 = v50 * 255.0;
                if ((LODWORD(v51) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                {
                  goto LABEL_191;
                }

                if (v51 <= -9.2234e18)
                {
                  goto LABEL_194;
                }

                if (v51 >= 9.2234e18)
                {
                  goto LABEL_198;
                }

                v52 = v51 >= 255 ? 255 : v51;
                v53 = v45 + v48;
                if (__OFADD__(v45, v48))
                {
                  break;
                }

                if ((v53 & 0x8000000000000000) == 0 && v53 < __len)
                {
                  v39[v53] = v52 & ~(v52 >> 63);
                }

                if (v41 == ++v48)
                {
                  goto LABEL_51;
                }
              }

LABEL_200:
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
LABEL_206:
              __break(1u);
LABEL_207:
              __break(1u);
LABEL_208:
              __break(1u);
LABEL_209:
              __break(1u);
LABEL_210:
              __break(1u);
LABEL_211:
              __break(1u);
LABEL_212:
              __break(1u);
LABEL_213:
              __break(1u);
              goto LABEL_214;
            }

LABEL_51:
            if (v40 <= -9.22337204e18)
            {
              goto LABEL_205;
            }
          }

          if (v112)
          {
            v80 = 1;
          }

          else
          {
            v80 = __len;
          }

          v81 = CGColorSpaceCreateDeviceGray();
          v82 = sub_11B28(v39, *v114, a6, v80, v81);

          if (v82)
          {
            Image = CGBitmapContextCreateImage(v82);
          }

          else
          {
            Image = 0;
          }

          *v32 = v108;
          v32[1] = v33 | 0x8000000000000000;
          return Image;
        }

        goto LABEL_255;
      }

      goto LABEL_253;
    }

    __break(1u);
  }

  else
  {
    v111 = a7;
    *v113 = a5;
    if (!v16)
    {
      sub_11A8C(v15, v14);
      *&__b = v15;
      WORD4(__b) = v14;
      BYTE10(__b) = BYTE2(v14);
      BYTE11(__b) = BYTE3(v14);
      BYTE12(__b) = BYTE4(v14);
      BYTE13(__b) = BYTE5(v14);
      BYTE14(__b) = BYTE6(v14);
      if ((__len & 0x8000000000000000) == 0)
      {
        if (__len)
        {
          memset(&__b, 255, __len);
        }

        v17 = round(a8 * 0.5 - a8);
        if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_207;
        }

        v18 = a4 + 1;
        v19 = __OFADD__(a4, 1);
        if (v17 <= -9.22337204e18)
        {
          goto LABEL_203;
        }

        v20 = -1;
        while (1)
        {
          if (v17 >= 9.22337204e18)
          {
            goto LABEL_211;
          }

          v22 = v17 + a3;
          if (__OFADD__(v17, a3))
          {
            goto LABEL_213;
          }

          if (v22 >= __len)
          {
            break;
          }

          v23 = __OFADD__(v20++, 1);
          if (v23)
          {
            goto LABEL_219;
          }

          v17 = round(a8 * 0.5 + v20 * a8);
          if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_221;
          }

          if (v17 <= -9.22337204e18)
          {
            goto LABEL_224;
          }

          if (v17 >= 9.22337204e18)
          {
            goto LABEL_228;
          }

          v24 = v17 + a3;
          if (__OFADD__(v17, a3))
          {
            goto LABEL_232;
          }

          v25 = v24 - v22;
          if (__OFSUB__(v24, v22))
          {
            goto LABEL_236;
          }

          if (v19)
          {
            goto LABEL_240;
          }

          if (v18 < 0)
          {
            goto LABEL_244;
          }

          if (a4 != -1)
          {
            v26 = 0;
            v27 = v25;
            while (1)
            {
              v28 = v26 / v27;
              if (v26 <= 5)
              {
                v21 = a8;
                v28 = v26 / v21;
              }

              v29 = v28 * 255.0;
              if ((LODWORD(v29) & 0x7FFFFFFFu) > 0x7F7FFFFF)
              {
                break;
              }

              if (v29 <= -9.2234e18)
              {
                goto LABEL_189;
              }

              if (v29 >= 9.2234e18)
              {
                goto LABEL_192;
              }

              if (v29 >= 255)
              {
                v30 = 255;
              }

              else
              {
                v30 = v29;
              }

              v31 = v22 + v26;
              if (__OFADD__(v22, v26))
              {
                goto LABEL_196;
              }

              if ((v31 & 0x8000000000000000) == 0 && v31 < __len)
              {
                *(&__b + v31) = v30 & ~(v30 >> 63);
              }

              if (v18 == ++v26)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
            goto LABEL_190;
          }

LABEL_12:
          if (v17 <= -9.22337204e18)
          {
            goto LABEL_203;
          }
        }

        if (v111)
        {
          v72 = 1;
        }

        else
        {
          v72 = __len;
        }

        v73 = CGColorSpaceCreateDeviceGray();
        v74 = sub_11B28(&__b, *v113, a6, v72, v73);

        if (v74)
        {
          Image = CGBitmapContextCreateImage(v74);
        }

        else
        {
          Image = 0;
        }

        v106 = DWORD2(__b) | ((WORD6(__b) | (BYTE14(__b) << 16)) << 32);
        *a1 = __b;
        a1[1] = v106;
        return Image;
      }

      goto LABEL_251;
    }

    v54 = v14 & 0x3FFFFFFFFFFFFFFFLL;

    sub_11A8C(v15, v14);
    *a1 = xmmword_147F0;
    sub_11A8C(0, 0xC000000000000000);
    v55 = v15 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v55 < v15)
      {
LABEL_258:
        __break(1u);
        goto LABEL_259;
      }

      if (sub_12604() && __OFSUB__(v15, sub_12634()))
      {
LABEL_259:
        __break(1u);
      }

      sub_12644();
      swift_allocObject();
      v83 = sub_125F4();

      v54 = v83;
    }

    if (v55 < v15)
    {
      goto LABEL_254;
    }

    v84 = a4;

    result = sub_12604();
    if (result)
    {
      v85 = result;
      v86 = sub_12634();
      v87 = v15 - v86;
      if (!__OFSUB__(v15, v86))
      {
        sub_12624();
        if ((__len & 0x8000000000000000) == 0)
        {
          v88 = v85 + v87;
          if (__len)
          {
            memset(v85 + v87, 255, __len);
          }

          v89 = round(a8 * 0.5 - a8);
          if ((*&v89 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_210;
          }

          v90 = v84 + 1;
          v91 = __OFADD__(v84, 1);
          if (v89 <= -9.22337204e18)
          {
            goto LABEL_206;
          }

          v92 = -1;
          while (1)
          {
            if (v89 >= 9.22337204e18)
            {
              goto LABEL_217;
            }

            v94 = v89 + a3;
            if (__OFADD__(v89, a3))
            {
              goto LABEL_218;
            }

            if (v94 >= __len)
            {
              break;
            }

            v23 = __OFADD__(v92++, 1);
            if (v23)
            {
              goto LABEL_227;
            }

            v89 = round(a8 * 0.5 + v92 * a8);
            if ((*&v89 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_231;
            }

            if (v89 <= -9.22337204e18)
            {
              goto LABEL_235;
            }

            if (v89 >= 9.22337204e18)
            {
              goto LABEL_239;
            }

            v95 = v89 + a3;
            if (__OFADD__(v89, a3))
            {
              goto LABEL_243;
            }

            v96 = v95 - v94;
            if (__OFSUB__(v95, v94))
            {
              goto LABEL_247;
            }

            if (v91)
            {
              goto LABEL_249;
            }

            if (v90 < 0)
            {
              goto LABEL_250;
            }

            if (v84 != -1)
            {
              v97 = 0;
              v98 = v96;
              while (1)
              {
                v99 = v97 / v98;
                if (v97 <= 5)
                {
                  v93 = a8;
                  v99 = v97 / v93;
                }

                v100 = v99 * 255.0;
                if ((LODWORD(v100) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                {
                  break;
                }

                if (v100 <= -9.2234e18)
                {
                  goto LABEL_199;
                }

                if (v100 >= 9.2234e18)
                {
                  goto LABEL_201;
                }

                if (v100 >= 255)
                {
                  v101 = 255;
                }

                else
                {
                  v101 = v100;
                }

                v102 = v94 + v97;
                if (__OFADD__(v94, v97))
                {
                  goto LABEL_202;
                }

                if ((v102 & 0x8000000000000000) == 0 && v102 < __len)
                {
                  v88[v102] = v101 & ~(v101 >> 63);
                }

                if (v90 == ++v97)
                {
                  goto LABEL_147;
                }
              }

LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
              goto LABEL_200;
            }

LABEL_147:
            if (v89 <= -9.22337204e18)
            {
              goto LABEL_206;
            }
          }

          if (v111)
          {
            v103 = 1;
          }

          else
          {
            v103 = __len;
          }

          v104 = CGColorSpaceCreateDeviceGray();
          v105 = sub_11B28(v88, *v113, a6, v103, v104);

          if (v105)
          {
            Image = CGBitmapContextCreateImage(v105);
          }

          else
          {

            Image = 0;
          }

          *a1 = v15;
          a1[1] = v54 | 0x4000000000000000;
          return Image;
        }

        goto LABEL_257;
      }

LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_106DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_12944();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_12944();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_11B3C(&qword_1E9E0, &qword_1E9D8, &qword_14910);
          for (i = 0; i != v6; ++i)
          {
            sub_3EA8(&qword_1E9D8, &qword_14910);
            v9 = sub_10A1C(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_4568(0, &qword_1E930, CALayer_ptr);
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

uint64_t sub_1087C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_12944();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_12944();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_11B3C(&qword_1E9F8, &qword_1E9F0, &qword_14918);
          for (i = 0; i != v6; ++i)
          {
            sub_3EA8(&qword_1E9F0, &qword_14918);
            v9 = sub_10A9C(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_4568(0, &qword_1E9E8, CAGradientLayer_ptr);
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

void (*sub_10A1C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_128B4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_11B90;
  }

  __break(1u);
  return result;
}

void (*sub_10A9C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_128B4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10B1C;
  }

  __break(1u);
  return result;
}

unint64_t sub_10B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3EA8(&qword_1EA28, &unk_14940);
    v3 = sub_12954();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_F588(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3EA8(&qword_1EA20, &qword_14938);
    v3 = sub_12954();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_F5F4(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10D08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3EA8(&unk_1EA10, &qword_14930);
    v3 = sub_12954();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_F66C(v6);
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

unint64_t sub_10E00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3EA8(&qword_1E9D0, &qword_14908);
    v3 = sub_12954();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_F5F4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_10F04()
{
  v0 = sub_F234(0, 165, 0, &_swiftEmptyArrayStorage);
  v1 = 0;
  v2 = *(v0 + 2);
  do
  {
    v3 = 0;
    v4 = v1 / 14.0;
    v5 = 40 * v2;
    v6 = -440;
    do
    {
      v7 = *(v0 + 3);
      v8 = v2++ >= v7 >> 1;
      if (v8)
      {
        v0 = sub_F234((v7 > 1), v2, 1, v0);
      }

      v9 = v3 / 10.0;
      *(v0 + 2) = v2;
      v10 = &v0[v5 + v6];
      *(v10 + 59) = v9;
      *(v10 + 60) = v4;
      *(v10 + 61) = v9;
      *(v10 + 62) = v4;
      *(v10 + 63) = 0;
      ++v3;
      v6 += 40;
    }

    while (v6);
    ++v1;
  }

  while (v1 != 15);
  v11 = sub_F130(0, 140, 0, &_swiftEmptyArrayStorage);
  v12 = 0;
  v13 = *(v11 + 2);
  do
  {
    v14 = 0;
    v15 = 32 * v13;
    v16 = v12;
    do
    {
      v17 = *(v11 + 3);
      v8 = v13++ >= v17 >> 1;
      if (v8)
      {
        v11 = sub_F130((v17 > 1), v13, 1, v11);
      }

      v18 = vadd_s32(vdup_n_s32(v16), 0xC00000001);
      *(v11 + 2) = v13;
      v19 = &v11[v15 + v14];
      *(v19 + 8) = v16;
      v16 += 11;
      *(v19 + 36) = v18;
      *(v19 + 11) = v16;
      *(v19 + 6) = 0;
      *(v19 + 7) = 0;
      v14 += 32;
    }

    while (v14 != 448);
    ++v12;
  }

  while (v12 != 10);
  v20 = *(v0 + 2);
  sub_12784();
  v21 = objc_allocWithZone(CAMutableMeshTransform);
  v22 = sub_12774();

  v23 = [v21 initWithVertexCount:v20 vertices:v0 + 32 faceCount:v13 faces:v11 + 32 depthNormalization:v22];

  return v23;
}

uint64_t sub_11130(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_12644();
      swift_allocObject();
      sub_12614();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_12664();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_111D0(uint64_t result, uint64_t a2)
{
  if (a2 >= 10)
  {
    if (qword_1E138 == -1)
    {
      v2 = result + 1;
      if (!__OFADD__(result, 1))
      {
        goto LABEL_8;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  else
  {
    if (qword_1E138 == -1)
    {
      v2 = result + 4;
      if (!__OFADD__(result, 4))
      {
LABEL_4:
        v3 = qword_1EAF0;
        if (v2 < 11)
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            if (v2 <= 0xFFFFFFFFFFFFFFF5)
            {
              v2 = -11;
            }

            v4 = v2 - 4;
            if (v4 == result)
            {
              v5 = result;
            }

            else
            {
              v5 = result + 1;
            }

            v6 = v4 == result;
            v7 = (v4 - v5) / 0xB;
            if (!v6)
            {
              ++v7;
            }

            v2 = result + 11 * v7 + 15;
          }
        }

        else
        {
          v2 = (result - 7) % 0xBuLL;
        }

        if ((qword_1EAF0 & 0xC000000000000001) != 0)
        {
          goto LABEL_33;
        }

        if (v2 < *(&dword_10 + (qword_1EAF0 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_30:
          v10 = *(v3 + 8 * v2 + 32);

          return v10;
        }

        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      v11 = result;
      swift_once();
      result = v11;
      v2 = v11 + 4;
      if (!__OFADD__(v11, 4))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  v12 = result;
  swift_once();
  result = v12;
  v2 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    goto LABEL_41;
  }

LABEL_8:
  v3 = qword_1EAF0;
  if (v2 >= 11)
  {
    v2 = (result - 10) % 0xBuLL;
    goto LABEL_28;
  }

LABEL_22:
  if ((v2 & 0x8000000000000000) != 0)
  {
    if (v2 <= 0xFFFFFFFFFFFFFFF5)
    {
      v2 = -11;
    }

    v8 = v2 + ~result;
    v6 = v8 == 0;
    v9 = (v8 - (v8 != 0)) / 0xB;
    if (!v6)
    {
      ++v9;
    }

    v2 = result + 11 * v9 + 12;
  }

LABEL_28:
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (v2 < *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_30;
    }

LABEL_42:
    __break(1u);
    return result;
  }

LABEL_33:

  return sub_128B4();
}

unint64_t sub_113F8(unint64_t result, unint64_t a2)
{
  if (a2 > 0xC)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((*(&off_188E0 + a2 + 32) & 0xFE) == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = result + v2;
  if (__OFADD__(result, v2))
  {
    goto LABEL_22;
  }

  v4 = 2 * (a2 > 9);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (v6 < 11)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      v8 = -11;
      if (v6 > 0xFFFFFFFFFFFFFFF5)
      {
        v8 = v6;
      }

      if (v6 >= 0xFFFFFFFFFFFFFFF5)
      {
        v9 = v6;
      }

      else
      {
        v9 = v6 + 1;
      }

      v10 = __CFADD__(v6, 11);
      v11 = v2 + v4 + result;
      v12 = (v8 - v9) / 0xB;
      if (!v10)
      {
        ++v12;
      }

      return v11 + 11 * v12 + 11;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v7 = v2 + v4 + result;
    if (v6 >= 0x15)
    {
      v6 = 21;
    }

    return (v7 - v6 + 10) % 0xB - (10 - v6) - 11;
  }
}

CGColorRef sub_114F8(unint64_t a1, uint64_t a2, double a3)
{
  if (qword_1E138 != -1)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v4 = qword_1EAF0;
    if (qword_1EAF0 >> 62)
    {
      v43 = a1;
      v44 = a2;
      v45 = sub_12944();
      a2 = v44;
      v5 = v45;
      a1 = v43;
      v6 = v44 - v43;
      if (__OFSUB__(v44, v43))
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v5 = *(&dword_10 + (qword_1EAF0 & 0xFFFFFFFFFFFFFF8));
      v6 = a2 - a1;
      if (__OFSUB__(a2, a1))
      {
        goto LABEL_84;
      }
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = __OFADD__(v6, v5);
      v6 += v5;
      if (v7)
      {
        goto LABEL_85;
      }
    }

    if (a3 < 0.001)
    {

      return v4;
    }

    v52 = v5;
    v53 = v6;
    if (a3 > 0.999)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (!v5)
        {
          return &_swiftEmptyArrayStorage;
        }

        if (qword_1E178 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_88;
      }

      goto LABEL_86;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    a1 = swift_once();
    v5 = v52;
LABEL_12:
    v8 = 0;
    v9 = qword_1EB00 & 0xC000000000000001;
    v49 = qword_1EB00 & 0xFFFFFFFFFFFFFF8;
    v47 = qword_1EB00 + 32;
    v10 = -v6;
    v11 = v6 - 11;
    v12 = v6;
    while (1)
    {
      v13 = -11;
      if (v12 > 0xFFFFFFFFFFFFFFF5)
      {
        v13 = v12;
      }

      v15 = v13 + v10;
      v14 = v15 == 0;
      v16 = (v15 - (v15 != 0)) / 0xB;
      if (!v14)
      {
        ++v16;
      }

      if (v8 >= v5)
      {
        break;
      }

      v17 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_73;
      }

      v18 = v8 + v53;
      if (__OFADD__(v8, v53))
      {
        goto LABEL_74;
      }

      v19 = v11 + 11 * v16 + 22;
      if (v18 >= 0)
      {
        v19 = v8 + v53;
      }

      if (v18 <= 10)
      {
        a1 = v19;
      }

      else
      {
        a1 = v11 % 0xB;
      }

      if (v9)
      {
        sub_128B4();
      }

      else
      {
        if (a1 >= *(v49 + 16))
        {
          goto LABEL_80;
        }

        v20 = *(v47 + 8 * a1);
      }

      sub_127C4();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_127F4();
      }

      a1 = sub_12814();
      ++v12;
      --v10;
      ++v11;
      ++v8;
      v5 = v52;
      if (v17 == v52)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    v41 = a1;
    v42 = a2;
    swift_once();
    a1 = v41;
    a2 = v42;
  }

  if (v5)
  {
    if (qword_1E130 != -1)
    {
      a1 = swift_once();
      v5 = v52;
    }

    v21 = 0;
    v51 = qword_1EAE8;
    v22 = -v6;
    v23 = v6 - 11;
    v46 = v5 + 10;
    v24 = 10;
    v48 = v6 - 11;
    v50 = qword_1EAE8 + 32;
    v25 = v6;
    while (1)
    {
      if (v25 <= 0xFFFFFFFFFFFFFFF5)
      {
        v26 = -11;
      }

      else
      {
        v26 = v25;
      }

      v14 = v21 + v6 - v26 == 0;
      v27 = (v26 + v22 - (v21 + v6 - v26 != 0)) / 0xB;
      if (v14)
      {
        v28 = v27;
      }

      else
      {
        v28 = v27 + 1;
      }

      v29 = v21 - 21;
      if (v21 < 0x15)
      {
        v29 = 0;
      }

      if (v5 == v21)
      {
        goto LABEL_75;
      }

      if (v24 == 0x8000000000000009)
      {
        goto LABEL_76;
      }

      v30 = v21 - 11 * ((v29 + 10) / 0xB) - 11;
      if (v21 <= 0xA)
      {
        v30 = v21;
      }

      if (v30 >= *(v51 + 16))
      {
        goto LABEL_77;
      }

      v31 = *(v50 + 8 * v30);
      v32 = qword_1E170;

      if (v32 == -1)
      {
        v33 = v21 + v6;
        if (__OFADD__(v21, v6))
        {
          goto LABEL_78;
        }
      }

      else
      {
        a1 = swift_once();
        v33 = v21 + v6;
        if (__OFADD__(v21, v6))
        {
          goto LABEL_78;
        }
      }

      v34 = v23 + 11 * v28 + 22;
      if (v33 >= 0)
      {
        v34 = v33;
      }

      if (v33 <= 10)
      {
        v35 = v34;
      }

      else
      {
        v35 = v21 + v48 - 11 * (v23 / 0xB);
      }

      if (v35 >= *(qword_1EAF8 + 16))
      {
        goto LABEL_79;
      }

      v36 = *(qword_1EAF8 + 8 * v35 + 32);
      v37 = qword_1E0D0;

      if (v37 != -1)
      {
        swift_once();
      }

      v38 = qword_1E6E8;
      v39 = sub_1249C(v31, v36, a3);
      result = CGColorCreate(v38, (v39 + 32));
      if (!result)
      {
        __break(1u);
        return result;
      }

      sub_127C4();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_127F4();
      }

      a1 = sub_12814();
      ++v24;
      ++v25;
      --v22;
      ++v23;
      ++v21;
      v5 = v52;
      v6 = v53;
      if (v24 == v46)
      {
        return &_swiftEmptyArrayStorage;
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_11A8C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_11AE0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_11B3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_11AE0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_11B94(uint64_t a1)
{
  v1 = sub_126C4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_126E4();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() currentCalendar];
  sub_126B4();

  v9 = *(v2 + 104);
  v9(v4, enum case for Calendar.Component.hour(_:), v1);
  v10 = sub_126D4();
  v11 = *(v2 + 8);
  v11(v4, v1);
  if (v10 > 12)
  {
    v10 -= 12;
  }

  v9(v4, enum case for Calendar.Component.minute(_:), v1);
  sub_126D4();
  v11(v4, v1);
  (*(v5 + 8))(v7, v14);
  return v10;
}

id sub_11DB8(uint64_t a1)
{
  v2 = sub_3EA8(&qword_1E5C0, qword_146F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_126A4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  sub_6554(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v11, v4, v5);
    goto LABEL_5;
  }

  sub_8790(v4);
  result = [objc_opt_self() faceDate];
  if (result)
  {
    v13 = result;
    sub_12684();

    v11 = v9;
LABEL_5:
    v14 = sub_11B94(v11);
    (*(v6 + 8))(v11, v5);
    return v14;
  }

  __break(1u);
  return result;
}

id sub_11F9C(uint64_t a1)
{
  v30 = a1;
  v1 = sub_126C4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_126E4();
  v31 = *(v29 - 8);
  v5 = __chkstk_darwin(v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = sub_3EA8(&qword_1E5C0, qword_146F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_126A4();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  sub_6554(v30, v12);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v19, v12, v13);
    v26 = [objc_opt_self() currentCalendar];
    sub_126B4();

    (*(v2 + 104))(v4, enum case for Calendar.Component.hour(_:), v1);
    v27 = sub_126D4();
    (*(v2 + 8))(v4, v1);
    (*(v31 + 8))(v9, v29);
    (*(v14 + 8))(v19, v13);
    if (v27 <= 12)
    {
      return v27;
    }

    else
    {
      return (v27 - 12);
    }
  }

  v20 = v31;
  sub_8790(v12);
  result = [objc_opt_self() faceDate];
  if (result)
  {
    v22 = result;
    sub_12684();

    v23 = [objc_opt_self() currentCalendar];
    sub_126B4();

    (*(v2 + 104))(v4, enum case for Calendar.Component.hour(_:), v1);
    v24 = sub_126D4();
    (*(v2 + 8))(v4, v1);
    (*(v20 + 8))(v7, v29);
    if (v24 <= 12)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 - 12;
    }

    (*(v14 + 8))(v17, v13);
    return v25;
  }

  __break(1u);
  return result;
}

double sub_123F0(unint64_t a1)
{
  v6 = vshlq_u64(vdupq_n_s64(a1), xmmword_14950);
  v1 = BYTE1(a1) / 255.0;
  v2 = a1 / 255.0;
  sub_3EA8(&qword_1EA30, qword_14970);
  v3 = swift_allocObject();
  *&result = 4;
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  *(v3 + 16) = xmmword_14960;
  *(v3 + 32) = vdivq_f64(vcvtq_f64_u64(vandq_s8(v6, v5)), vdupq_n_s64(0x406FE00000000000uLL));
  *(v3 + 48) = v1;
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_1249C(uint64_t a1, uint64_t a2, double a3)
{
  sub_3EA8(&qword_1EA30, qword_14970);
  result = swift_allocObject();
  *(result + 16) = xmmword_14960;
  v7 = *(a1 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1.0 - a3;
  *(result + 32) = (1.0 - a3) * *(a1 + 32) + *(a2 + 32) * a3;
  if (v7 == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(result + 40) = v9 * *(a1 + 40) + *(a2 + 40) * a3;
  if (v7 < 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < 3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(result + 48) = v9 * *(a1 + 48) + *(a2 + 48) * a3;
  if (v7 == 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v8 != 3)
  {
    *(result + 56) = v9 * *(a1 + 56) + *(a2 + 56) * a3;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}