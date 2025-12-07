uint64_t sub_19F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_1A8C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v3;
}

id sub_1AF8()
{
  v1 = v0;
  v2 = sub_4FF4(&qword_55AC8, &qword_3E440);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_4FF4(&qword_55AD0, &qword_3E448);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v9 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  if (sub_4738())
  {
    v16 = 0;
LABEL_19:
    v23 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel__allowFingerToSwipeFromCorner;
    LOBYTE(v41[0]) = v16;
    sub_3C874();
    (*(v10 + 32))(v1 + v23, v12, v9);
    v24 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel__bottomLeftCornerGestureFeature;
    LOBYTE(v41[0]) = sub_4298();
    sub_3C874();
    v25 = *(v6 + 32);
    v25(v1 + v24, v8, v5);
    v26 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel__bottomRightCornerGestureFeature;
    LOBYTE(v41[0]) = sub_44B0();
    sub_3C874();
    v25(v1 + v26, v8, v5);
    v27 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_cornerGestureEducationTypes;
    *(v1 + v27) = sub_4738();
    v28 = (v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_referrer);
    v29 = sub_3D5B4();
    *v28 = 0;
    v28[1] = 0;
    v30 = *(*(v29 - 8) + 56);
    v30(v4, 1, 1, v29);
    sub_3D594();

    v31 = sub_3D584();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = &protocol witness table for MainActor;
    v32[4] = v1;
    sub_1E9E0(0, 0, v4, &unk_3E468, v32);

    v30(v4, 1, 1, v29);

    v33 = sub_3D584();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v1;
    sub_1E9E0(0, 0, v4, &unk_3E478, v34);

    v30(v4, 1, 1, v29);

    v35 = sub_3D584();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = &protocol witness table for MainActor;
    v36[4] = v1;
    sub_1E9E0(0, 0, v4, &unk_3E488, v36);

    return v1;
  }

  v37 = sub_488C();
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v13 = qword_572E8;
  v14 = sub_3D4C4();
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41[0] = v39;
  v41[1] = v40;
  if (*(&v40 + 1))
  {
    sub_5628();
    if (swift_dynamicCast())
    {
      v17 = v38;
      v18 = [v38 integerValue];

      v19 = v18 | v37;
      if (!(v18 | v37))
      {
        goto LABEL_18;
      }

LABEL_17:
      v16 = v19 & 1;
      goto LABEL_19;
    }
  }

  else
  {
    sub_526C(v41);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v21 = result;
    quickNoteCapability = MobileGestalt_get_quickNoteCapability();

    if (quickNoteCapability)
    {
      v19 = 3;
    }

    else
    {
      v19 = v37;
      if (!v37)
      {
LABEL_18:
        v16 = 1;
        goto LABEL_19;
      }
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_206C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55B28, &unk_3EB60);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_22B4, v9, v8);
}

uint64_t sub_22B4()
{
  v1 = v0[14];
  v9 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v9 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_referrer;
  v6 = sub_3D584();
  v0[23] = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_2518;

  return sub_1C864(v6, &protocol witness table for MainActor);
}

uint64_t sub_2518(char a1)
{
  v3 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_2630, v5, v6);
  }

  return result;
}

uint64_t sub_2630()
{
  v1 = *(v0 + 200);
  if (v1 == 2)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_49BC(v1 & 1);
    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v4 = (*(v0 + 40) + *(v0 + 176));
    v6 = *v4;
    v5 = v4[1];

    sub_1BCA0(5u, v1 & 1, v6, v5);

    v7 = sub_3D584();
    *(v0 + 184) = v7;
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = sub_2518;

    return sub_1C864(v7, &protocol witness table for MainActor);
  }
}

uint64_t sub_2814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55AF0, &qword_3E490);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55AF8, &qword_3E498);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B00, &qword_3E4A0);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B08, &qword_3E4A8);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B10, &unk_3E4B0);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_2A5C, v9, v8);
}

uint64_t sub_2A5C()
{
  v1 = v0[14];
  v9 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_55AD0, &qword_3E448);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B18, &qword_55B00, &qword_3E4A0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B20, &qword_55AF8, &qword_3E498, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v9 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_referrer;
  v6 = sub_3D584();
  v0[23] = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_2CC0;

  return sub_1CF94(v6, &protocol witness table for MainActor);
}

uint64_t sub_2CC0(char a1)
{
  v3 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_2DD8, v5, v6);
  }

  return result;
}

uint64_t sub_2DD8()
{
  v1 = *(v0 + 200);
  if (v1 == 3)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (*(v0 + 200))
    {
      if (qword_559A8 != -1)
      {
        swift_once();
      }

      v4 = qword_572E8;
      isa = sub_3D5F4().super.super.isa;
      v6 = sub_3D4C4();
      [v4 setValue:isa forKey:v6];
    }

    else
    {
      if (qword_559A8 != -1)
      {
        swift_once();
      }

      v7 = qword_572E8;
      v6 = sub_3D4C4();
      [v7 removeObjectForKey:v6];
    }

    v8 = *(v0 + 200);

    sub_4C60(v8, 1);
    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v9 = (*(v0 + 40) + *(v0 + 176));
    v10 = *v9;
    v11 = v9[1];

    sub_1BCA0(6u, v1 != 0, v10, v11);

    v12 = sub_3D584();
    *(v0 + 184) = v12;
    v13 = swift_task_alloc();
    *(v0 + 192) = v13;
    *v13 = v0;
    v13[1] = sub_2CC0;

    return sub_1CF94(v12, &protocol witness table for MainActor);
  }
}

uint64_t sub_30C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55AF0, &qword_3E490);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55AF8, &qword_3E498);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B00, &qword_3E4A0);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B08, &qword_3E4A8);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B10, &unk_3E4B0);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_3310, v9, v8);
}

uint64_t sub_3310()
{
  v1 = v0[14];
  v9 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_55AD0, &qword_3E448);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B18, &qword_55B00, &qword_3E4A0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B20, &qword_55AF8, &qword_3E498, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v9 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel_referrer;
  v6 = sub_3D584();
  v0[23] = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_3574;

  return sub_1CF94(v6, &protocol witness table for MainActor);
}

uint64_t sub_3574(char a1)
{
  v3 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_368C, v5, v6);
  }

  return result;
}

uint64_t sub_368C()
{
  v1 = *(v0 + 200);
  if (v1 == 3)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (*(v0 + 200))
    {
      if (qword_559A8 != -1)
      {
        swift_once();
      }

      v4 = qword_572E8;
      isa = sub_3D5F4().super.super.isa;
      v6 = sub_3D4C4();
      [v4 setValue:isa forKey:v6];
    }

    else
    {
      if (qword_559A8 != -1)
      {
        swift_once();
      }

      v7 = qword_572E8;
      v6 = sub_3D4C4();
      [v7 removeObjectForKey:v6];
    }

    v8 = *(v0 + 200);

    sub_4C60(v8, 0);
    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v9 = (*(v0 + 40) + *(v0 + 176));
    v10 = *v9;
    v11 = v9[1];

    sub_1BCA0(7u, v1 != 0, v10, v11);

    v12 = sub_3D584();
    *(v0 + 184) = v12;
    v13 = swift_task_alloc();
    *(v0 + 192) = v13;
    *v13 = v0;
    v13[1] = sub_3574;

    return sub_1CF94(v12, &protocol witness table for MainActor);
  }
}

uint64_t sub_397C()
{
  v1 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel__allowFingerToSwipeFromCorner;
  v2 = sub_4FF4(&qword_55AD8, &unk_3E450);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel__bottomLeftCornerGestureFeature;
  v4 = sub_4FF4(&qword_55AD0, &qword_3E448);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings30CornerGesturesSectionViewModel__bottomRightCornerGestureFeature, v4);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t sub_3AB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3C864();
  *a1 = result;
  return result;
}

uint64_t variable initialization expression of MultitaskingAndGesturesSettings.viewModel()
{
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 10;
  sub_3C814();
  return v0;
}

uint64_t sub_3B58(uint64_t *a1)
{
  if (sub_3C18C(2, 26, 0, 0))
  {
    sub_3CE34();

    return sub_3CAA4();
  }

  else
  {
    sub_3CB04();
    swift_getWitnessTable();
    sub_3CDF4();
    sub_3CAA4();
    sub_3D654();
    swift_getWitnessTable();
    sub_3CB04();
    swift_getWitnessTable();
    sub_3CDF4();
    return sub_3CAA4();
  }
}

uint64_t sub_3CBC(uint64_t *a1)
{
  if (sub_3C18C(2, 26, 0, 0))
  {
    sub_3CE34();
    sub_3CAA4();
  }

  else
  {
    sub_3CB04();
    swift_getWitnessTable();
    sub_3CDF4();
    sub_3CAA4();
    sub_3D654();
    swift_getWitnessTable();
    sub_3CB04();
    swift_getWitnessTable();
    sub_3CDF4();
    sub_3CAA4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_3EBC()
{
  sub_3D4F4();
  v0 = sub_3D544();

  return v0;
}

uint64_t sub_3EF8(uint64_t a1)
{
  sub_3D4F4();
  sub_3D524();
}

Swift::Int sub_3F4C(uint64_t a1)
{
  sub_3D4F4();
  sub_3D844();
  sub_3D524();
  v1 = sub_3D864();

  return v1;
}

uint64_t sub_3FC8(uint64_t a1, id *a2)
{
  result = sub_3D4D4();
  *a2 = 0;
  return result;
}

uint64_t sub_4040(uint64_t a1, id *a2)
{
  v3 = sub_3D4E4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_40C0@<X0>(uint64_t *a2@<X8>)
{
  sub_3D4F4();
  v3 = sub_3D4C4();

  *a2 = v3;
  return result;
}

uint64_t sub_4104(void *a1, uint64_t *a2)
{
  v2 = sub_3D4F4();
  v4 = v3;
  if (v2 == sub_3D4F4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_3D804();
  }

  return v7 & 1;
}

uint64_t sub_418C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_3D4C4();

  *a2 = v3;
  return result;
}

uint64_t sub_41D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3D4F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_4200(uint64_t a1)
{
  v2 = sub_57E4(&qword_55B80, &unk_3E638);
  v3 = sub_57E4(&qword_55B88, &unk_3E58C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_4298()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_19;
  }

  sub_5628();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  if (![v7 integerValue])
  {

    return 0;
  }

  v3 = sub_3D4C4();
  v4 = [v0 objectForKey:v3];

  if (v4)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {

LABEL_19:
    sub_526C(&v10);
    return 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 1;
  }

  v6 = [v7 integerValue];

  if (v6 + 1 >= 3)
  {
    return 1;
  }

  else
  {
    return (v6 + 1);
  }
}

id sub_44B0()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    sub_526C(&v15);
    goto LABEL_12;
  }

  sub_5628();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v6 = result;
      quickNoteCapability = MobileGestalt_get_quickNoteCapability();

      v8 = quickNoteCapability == 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (![v12 integerValue])
  {
LABEL_23:

    return 0;
  }

  v3 = sub_3D4C4();
  v4 = [v0 objectForKey:v3];

  if (v4)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = [v12 integerValue];

      if (v9 == &dword_0 + 1)
      {

        return &dword_0 + 2;
      }

      if (!v9)
      {

        return &dword_0 + 1;
      }

      if (v9 == -1)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    sub_526C(&v15);
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_30;
  }

  v10 = result;
  v11 = MobileGestalt_get_quickNoteCapability();

  v8 = v11 == 0;
LABEL_14:
  if (v8)
  {
    return 0;
  }

  else
  {
    return &dword_0 + 2;
  }
}

id sub_4738()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    sub_5628();
    if (swift_dynamicCast())
    {
      v3 = [v7 integerValue];

      return v3;
    }
  }

  else
  {
    sub_526C(v10);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    quickNoteCapability = MobileGestalt_get_quickNoteCapability();

    return quickNoteCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_488C()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_3D674();
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
    sub_5628();
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_526C(v8);
  }

  return &dword_0 + 2;
}

void sub_49BC(char a1)
{
  sub_488C();
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v1 = qword_572E8;
  v2 = sub_3D4C4();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    sub_5628();
    if (swift_dynamicCast())
    {
      [v12 integerValue];

LABEL_12:
      isa = sub_3D5F4().super.super.isa;
      v7 = sub_3D4C4();
      [v1 setValue:isa forKey:v7];

      v8 = sub_3D5F4().super.super.isa;
      v9 = sub_3D4C4();
      [v1 setValue:v8 forKey:v9];

      sub_4738();
      v10 = sub_3D5F4().super.super.isa;
      v11 = sub_3D4C4();
      [v1 setValue:v10 forKey:v11];

      return;
    }
  }

  else
  {
    sub_526C(v15);
  }

  v4 = MobileGestalt_get_current_device();
  if (v4)
  {
    v5 = v4;
    MobileGestalt_get_quickNoteCapability();

    goto LABEL_12;
  }

  __break(1u);
}

void sub_4C60(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    sub_488C();
    if (sub_4738())
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v2 = qword_572E8;
  v3 = sub_3D4C4();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_5628();
    if (swift_dynamicCast())
    {
      [v15 integerValue];

      goto LABEL_15;
    }
  }

  else
  {
    sub_526C(&v18);
  }

  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = v5;
  MobileGestalt_get_quickNoteCapability();

LABEL_15:
  if ((sub_4738() & 1) == 0)
  {
LABEL_16:
    sub_488C();
    if (qword_559A8 != -1)
    {
      swift_once();
    }

    v7 = qword_572E8;
    v8 = sub_3D4C4();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      sub_3D674();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18 = v16;
    v19 = v17;
    if (*(&v17 + 1))
    {
      sub_5628();
      if (swift_dynamicCast())
      {
        [v15 integerValue];

        goto LABEL_27;
      }
    }

    else
    {
      sub_526C(&v18);
    }

    v10 = MobileGestalt_get_current_device();
    if (v10)
    {
      v11 = v10;
      MobileGestalt_get_quickNoteCapability();

      goto LABEL_27;
    }

LABEL_31:
    __break(1u);
    return;
  }

LABEL_27:
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v12 = qword_572E8;
  isa = sub_3D5F4().super.super.isa;
  v14 = sub_3D4C4();

  [v12 setValue:isa forKey:v14];
}

uint64_t sub_4FF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for CornerGesturesSectionViewModel(uint64_t a1)
{
  result = qword_55A00;
  if (!qword_55A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5090(uint64_t a1)
{
  sub_572C(319, &qword_55A10, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_572C(319, &unk_55A18, &type metadata for CornerGestureAction, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 sub_51B8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_51C8(uint64_t a1, int a2)
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

uint64_t sub_51E8(uint64_t result, int a2, int a3)
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

uint64_t sub_526C(uint64_t a1)
{
  v2 = sub_4FF4(&qword_55AE0, &qword_3E940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_52D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_206C(a1, v4, v5, v6);
}

uint64_t sub_538C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_2814(a1, v4, v5, v6);
}

uint64_t sub_5440()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5534()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_5574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_30C8(a1, v4, v5, v6);
}

unint64_t sub_5628()
{
  result = qword_55AE8;
  if (!qword_55AE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_55AE8);
  }

  return result;
}

uint64_t sub_5674(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_56BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_5674(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_572C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_57E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CornerGestureAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CornerGestureAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_59F0(char a1)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v1 = qword_572B8;
  return sub_3CF84();
}

void *sub_5B14@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if ((*result + 1) < 3)
  {
    v2 = *result + 1;
  }

  else
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_5B44()
{
  result = qword_55B90;
  if (!qword_55B90)
  {
    sub_5674(&qword_55B98, &qword_41840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55B90);
  }

  return result;
}

Swift::Int sub_5BB4()
{
  v1 = *v0;
  sub_3D844();
  sub_3D854(v1 - 1);
  return sub_3D864();
}

Swift::Int sub_5C2C(uint64_t a1)
{
  v2 = *v1;
  sub_3D844();
  sub_3D854(v2 - 1);
  return sub_3D864();
}

void sub_5C70(void *a2@<X8>)
{
  v3 = MobileGestalt_get_current_device();
  if (v3)
  {
    v4 = v3;
    quickNoteCapability = MobileGestalt_get_quickNoteCapability();

    v6 = &off_51CC0;
    if (quickNoteCapability)
    {
      v6 = &off_51C98;
    }

    *a2 = v6;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_5CDC()
{
  result = qword_55BA0;
  if (!qword_55BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55BA0);
  }

  return result;
}

unint64_t sub_5D34()
{
  result = qword_55BA8;
  if (!qword_55BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55BA8);
  }

  return result;
}

uint64_t sub_5D88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_5DFC()
{
  v1 = v0;
  v2 = sub_4FF4(&qword_55AC8, &qword_3E440);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v9 = qword_572E8;
  *(v1 + 16) = sub_3C8D4();
  *(v1 + 24) = sub_3C8D4();
  v10 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36ProductivityGesturesSectionViewModel__productivityGesturesEnabled;
  v16[15] = sub_6AC0() & 1;
  sub_3C874();
  (*(v6 + 32))(v1 + v10, v8, v5);
  v11 = (v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36ProductivityGesturesSectionViewModel_referrer);
  v12 = sub_3D5B4();
  *v11 = 0;
  v11[1] = 0;
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_3D594();

  v13 = sub_3D584();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v1;
  sub_1E9E0(0, 0, v4, &unk_3E930, v14);

  return v1;
}

uint64_t sub_60A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55B28, &unk_3EB60);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_62E8, v9, v8);
}

uint64_t sub_62E8()
{
  v1 = v0[14];
  v9 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v9 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36ProductivityGesturesSectionViewModel_referrer;
  v6 = sub_3D584();
  v0[23] = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_654C;

  return sub_1C864(v6, &protocol witness table for MainActor);
}

uint64_t sub_654C(char a1)
{
  v3 = *v2;
  *(*v2 + 202) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_6664, v5, v6);
  }

  return result;
}

uint64_t sub_6664()
{
  v1 = *(v0 + 202);
  if (v1 == 2)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = v1 & 1;
    *(v0 + 200) = v1 & 1;

    sub_3C8F4();

    *(v0 + 201) = 0;

    sub_3C8F4();

    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v5 = (*(v0 + 40) + *(v0 + 176));
    v6 = *v5;
    v7 = v5[1];

    sub_1BCA0(3u, v4, v6, v7);

    v8 = sub_3D584();
    *(v0 + 184) = v8;
    v9 = swift_task_alloc();
    *(v0 + 192) = v9;
    *v9 = v0;
    v9[1] = sub_654C;

    return sub_1C864(v8, &protocol witness table for MainActor);
  }
}

uint64_t sub_68A8()
{

  v1 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36ProductivityGesturesSectionViewModel__productivityGesturesEnabled;
  v2 = sub_4FF4(&qword_55AD8, &unk_3E450);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ProductivityGesturesSectionViewModel(uint64_t a1)
{
  result = qword_55BE0;
  if (!qword_55BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_69C8(uint64_t a1)
{
  sub_6A70();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_6A70()
{
  if (!qword_55A10)
  {
    v0 = sub_3C8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_55A10);
    }
  }
}

uint64_t sub_6AC0()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = v8;
      goto LABEL_11;
    }
  }

  else
  {
    sub_526C(&v11);
  }

  v3 = 1;
LABEL_11:
  v4 = sub_3D4C4();
  v5 = [v0 valueForKey:v4];

  if (v5)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_526C(&v11);
LABEL_19:
    v6 = 0;
    result = 0;
    if (!v3)
    {
      return result;
    }

    return v6 ^ 1u;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_19;
  }

  if (v3)
  {
    v6 = v8;
    return v6 ^ 1u;
  }

  return 0;
}

uint64_t sub_6CA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6CE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_60A0(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for MultitaskingAndGesturesFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MultitaskingAndGesturesFeatureFlags(_WORD *result, int a2, int a3)
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

unint64_t sub_6E8C()
{
  result = qword_55C80;
  if (!qword_55C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55C80);
  }

  return result;
}

Swift::Int sub_6EE8()
{
  sub_3D844();
  sub_3D854(0);
  return sub_3D864();
}

Swift::Int sub_6F54(uint64_t a1)
{
  sub_3D844();
  sub_3D854(0);
  return sub_3D864();
}

uint64_t sub_6FBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_706C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

id sub_70E0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_4FF4(&qword_55AC8, &qword_3E440);
  __chkstk_darwin(v1 - 8);
  v59 = &v49 - v2;
  v3 = sub_4FF4(&qword_55D40, &qword_3EB10);
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = &v49 - v4;
  v5 = sub_4FF4(&qword_55D48, &unk_41CF0);
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v51 = &v49 - v6;
  v7 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - v9;
  v50 = sub_4FF4(&qword_55D50, &qword_3EB18);
  v11 = *(v50 - 8);
  __chkstk_darwin(v50);
  v13 = &v49 - v12;
  v14 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__hideRecentApps;
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v58 = qword_572E8;
  *&v0[v14] = sub_3C8D4();
  v15 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__hideDock;
  *&v0[v15] = sub_3C8D4();
  v16 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__shouldRestorePreviousOpenWindows;
  *&v0[v16] = sub_3C8D4();
  v17 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__multitaskingWindowManagementStyleType;
  LOBYTE(v61) = sub_A430();
  sub_3C874();
  (*(v11 + 32))(&v0[v17], v13, v50);
  v18 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__shouldCloseAllWindowsAfterSwipingHomeInWindowedApps;
  LOBYTE(v61) = sub_A5D0() & 1;
  sub_3C874();
  v19 = *(v8 + 32);
  v19(&v0[v18], v10, v7);
  v20 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__shouldShowRecentAppsInStageManager;
  LOBYTE(v61) = sub_A6E8() & 1;
  sub_3C874();
  v19(&v0[v20], v10, v7);
  v21 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__shouldShowDockInWindowedAppsAndStageManager;
  LOBYTE(v61) = sub_A800() & 1;
  sub_3C874();
  v19(&v0[v21], v10, v7);
  v22 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__orientation;
  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 orientation];

  v61 = v24;
  type metadata accessor for UIDeviceOrientation(0);
  v25 = v51;
  sub_3C874();
  (*(v52 + 32))(&v0[v22], v25, v53);
  v26 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__displayManager;
  if (qword_55988 != -1)
  {
    swift_once();
  }

  v27 = qword_572C0;
  v61 = qword_572C0;
  type metadata accessor for MultiTaskingDisplayManager(0);
  v28 = v27;
  v29 = v54;
  sub_3C874();
  (*(v55 + 32))(&v0[v26], v29, v56);
  v60.receiver = v0;
  v60.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v60, "init");
  v31 = sub_3D5B4();
  v32 = *(*(v31 - 8) + 56);
  v33 = v59;
  v32(v59, 1, 1, v31);
  sub_3D594();
  v34 = v30;
  v35 = sub_3D584();
  v36 = swift_allocObject();
  v36[2] = v35;
  v36[3] = &protocol witness table for MainActor;
  v36[4] = v34;
  sub_1E9E0(0, 0, v33, &unk_3EB28, v36);

  v32(v33, 1, 1, v31);
  v37 = v34;
  v38 = sub_3D584();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = &protocol witness table for MainActor;
  v39[4] = v37;
  sub_1E9E0(0, 0, v33, &unk_3EB38, v39);

  v32(v33, 1, 1, v31);
  v40 = v37;
  v41 = sub_3D584();
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = &protocol witness table for MainActor;
  v42[4] = v40;
  sub_1E9E0(0, 0, v33, &unk_3EB48, v42);

  v32(v33, 1, 1, v31);
  v43 = sub_3D584();
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = &protocol witness table for MainActor;
  v44[4] = v40;
  sub_1E9E0(0, 0, v33, &unk_3EB58, v44);

  v45 = sub_3D4C4();
  v46 = v58;
  [v58 addObserver:v40 forKeyPath:v45 options:3 context:0];

  v47 = sub_3D4C4();
  [v46 addObserver:v40 forKeyPath:v47 options:3 context:0];

  return v40;
}

uint64_t sub_7914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55D58, &qword_407E0);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55D60, &qword_3EB90);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55D68, &qword_3EB98);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55D70, &qword_3EBA0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55D78, &qword_3EBA8);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_7B5C, v9, v8);
}

uint64_t sub_7B5C()
{
  v1 = *(v0 + 112);
  v10 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v6 = *(v0 + 192);
  swift_beginAccess();
  sub_4FF4(&qword_55D50, &qword_3EB18);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55D80, &qword_55D68, &qword_3EB98, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55D88, &qword_55D60, &qword_3EB90, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v10 + 8))(v1, v2);
  sub_3D7E4();
  *(v0 + 193) = v6;
  v7 = sub_3D584();
  *(v0 + 176) = v7;
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_7E04;

  return sub_1D59C(v7, &protocol witness table for MainActor);
}

uint64_t sub_7E04(char a1)
{
  v3 = *v2;
  *(*v2 + 194) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_7F1C, v5, v6);
  }

  return result;
}

uint64_t sub_7F1C()
{
  if (*(v0 + 194) <= 1u)
  {
    if (*(v0 + 194))
    {
      v1 = 0x6465776F646E6977;
    }

    else
    {
      v1 = 0x657263536C6C7566;
    }

    if (*(v0 + 194))
    {
      v2 = 0xEC00000073707041;
    }

    else
    {
      v2 = 0xEE00737070416E65;
    }

LABEL_10:
    v3 = 0x6465776F646E6977;
    v4 = 0xEC00000073707041;
    if (*(v0 + 193) != 1)
    {
      v3 = 0x6E614D6567617473;
      v4 = 0xEC00000072656761;
    }

    if (*(v0 + 193))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x657263536C6C7566;
    }

    if (*(v0 + 193))
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEE00737070416E65;
    }

    if (v1 == v5 && v2 == v6)
    {

LABEL_51:
      v25 = sub_3D584();
      *(v0 + 176) = v25;
      v26 = swift_task_alloc();
      *(v0 + 184) = v26;
      *v26 = v0;
      v26[1] = sub_7E04;

      return sub_1D59C(v25, &protocol witness table for MainActor);
    }

    v7 = sub_3D804();

    if (v7)
    {
      goto LABEL_51;
    }

    if (qword_559A8 != -1)
    {
      swift_once();
    }

    v8 = qword_572E8;
    if (*(v0 + 193) && *(v0 + 193) != 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_3D804();
    }

    v12 = *(v0 + 194);

    v13 = sub_3D4C4();
    [v8 setBool:v11 & 1 forKey:v13];

    if (v12)
    {
      if (v12 != 1)
      {

        v19 = sub_3D4C4();
        v20 = 1;
        [v8 setBool:1 forKey:v19];

        swift_bridgeObjectRelease_n();
        goto LABEL_47;
      }

      v27 = v8;
    }

    else
    {
      v27 = v8;
    }

    v14 = *(v0 + 194);
    v15 = sub_3D804();

    v16 = sub_3D4C4();
    v8 = v27;
    [v27 setBool:v15 & 1 forKey:v16];

    v17 = sub_3D804();

    if ((v17 & 1) == 0)
    {
      if (v14)
      {
        v18 = 1;
      }

      else
      {
        v18 = sub_3D804();
      }

      v21 = sub_3D4C4();
      [v27 setBool:v18 & 1 forKey:v21];
    }

    v22 = sub_3D804();

    if ((v22 & 1) == 0)
    {
      if (v14)
      {
      }

      else
      {
        v23 = sub_3D804();

        if ((v23 & 1) == 0)
        {
LABEL_48:
          if (qword_559A0 != -1)
          {
            swift_once();
          }

          sub_1C308(*(v0 + 193), *(v0 + 194));
          *(v0 + 193) = *(v0 + 194);
          goto LABEL_51;
        }
      }
    }

    v20 = sub_3D804();
LABEL_47:

    v24 = sub_3D4C4();
    [v8 setBool:v20 & 1 forKey:v24];

    goto LABEL_48;
  }

  if (*(v0 + 194) == 2)
  {
    v1 = 0x6E614D6567617473;
    v2 = 0xEC00000072656761;
    goto LABEL_10;
  }

  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_85EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55B28, &unk_3EB60);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_8834, v9, v8);
}

uint64_t sub_8834()
{
  v1 = v0[14];
  v9 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v9 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__shouldRestorePreviousOpenWindows;
  v6 = sub_3D584();
  v0[23] = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_8A98;

  return sub_1C864(v6, &protocol witness table for MainActor);
}

uint64_t sub_8A98(char a1)
{
  v3 = *v2;
  *(*v2 + 201) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_8BB0, v5, v6);
  }

  return result;
}

uint64_t sub_8BB0()
{
  v1 = *(v0 + 201);
  if (v1 == 2)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 200) = (v1 & 1) == 0;

    sub_3C8F4();

    v4 = sub_3D584();
    *(v0 + 184) = v4;
    v5 = swift_task_alloc();
    *(v0 + 192) = v5;
    *v5 = v0;
    v5[1] = sub_8A98;

    return sub_1C864(v4, &protocol witness table for MainActor);
  }
}

uint64_t sub_8D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55B28, &unk_3EB60);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_8FB0, v9, v8);
}

uint64_t sub_8FB0()
{
  v1 = v0[14];
  v9 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v9 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__hideRecentApps;
  v6 = sub_3D584();
  v0[23] = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_9214;

  return sub_1C864(v6, &protocol witness table for MainActor);
}

uint64_t sub_9214(char a1)
{
  v3 = *v2;
  *(*v2 + 201) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_932C, v5, v6);
  }

  return result;
}

uint64_t sub_932C()
{
  v1 = *(v0 + 201);
  if (v1 == 2)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 200) = (v1 & 1) == 0;

    sub_3C8F4();

    v4 = sub_3D584();
    *(v0 + 184) = v4;
    v5 = swift_task_alloc();
    *(v0 + 192) = v5;
    *v5 = v0;
    v5[1] = sub_9214;

    return sub_1C864(v4, &protocol witness table for MainActor);
  }
}

uint64_t sub_94E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55B28, &unk_3EB60);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_972C, v9, v8);
}

uint64_t sub_972C()
{
  v1 = v0[14];
  v9 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v9 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings37MultitaskingWindowManagementViewModel__hideDock;
  v6 = sub_3D584();
  v0[23] = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_9990;

  return sub_1C864(v6, &protocol witness table for MainActor);
}

uint64_t sub_9990(char a1)
{
  v3 = *v2;
  *(*v2 + 201) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_9AA8, v5, v6);
  }

  return result;
}

uint64_t sub_9AA8()
{
  v1 = *(v0 + 201);
  if (v1 == 2)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 200) = (v1 & 1) == 0;

    sub_3C8F4();

    v4 = sub_3D584();
    *(v0 + 184) = v4;
    v5 = swift_task_alloc();
    *(v0 + 192) = v5;
    *v5 = v0;
    v5[1] = sub_9990;

    return sub_1C864(v4, &protocol witness table for MainActor);
  }
}

uint64_t sub_9C84(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_A430();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_3C8A4();
  }

  return result;
}

id sub_9E4C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MultitaskingWindowManagementViewModel(uint64_t a1)
{
  result = qword_55CF8;
  if (!qword_55CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A0B0(uint64_t a1)
{
  sub_A260(319, &qword_55D08, &type metadata for MultitaskingWindowManagementStyleType);
  if (v1 <= 0x3F)
  {
    sub_A260(319, &qword_55A10, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_A2AC(319, &qword_55D10, type metadata accessor for UIDeviceOrientation);
      if (v3 <= 0x3F)
      {
        sub_A2AC(319, &qword_55D18, type metadata accessor for MultiTaskingDisplayManager);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_A260(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_3C8B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_A2AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_3C8B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_A300@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_3C864();
  *a1 = result;
  return result;
}

uint64_t sub_A340@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v4;
  return result;
}

uint64_t sub_A3C0(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_3C8A4();
}

id sub_A430()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    return &dword_0 + 2;
  }

  v4 = sub_3D4C4();
  v5 = [v0 objectForKey:v4];

  if (v5)
  {
    sub_3D674();
    swift_unknownObjectRelease();
    sub_526C(v10);
    v6 = sub_3D4C4();
    v7 = [v0 BOOLForKey:v6];

    return v7;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_526C(v10);
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v8 = result;
      deviceMemorySize = MobileGestalt_get_deviceMemorySize();

      return (vcvtd_n_f64_s64(deviceMemorySize, 0x1EuLL) >= 4.0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_A5D0()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_526C(v8);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

  v3 = v5 ^ 1;
  return v3 & 1;
}

uint64_t sub_A6E8()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_526C(v8);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v3 = 1;
    return v3 & 1;
  }

  v3 = v5 ^ 1;
  return v3 & 1;
}

uint64_t sub_A800()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_526C(v8);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v3 = 1;
    return v3 & 1;
  }

  v3 = v5 ^ 1;
  return v3 & 1;
}

uint64_t sub_A918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_3D3B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3D3D4();
  v21 = *(v11 - 8);
  result = __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 24) && a2)
  {
    if (a1 == 0xD000000000000019 && 0x8000000000042A60 == a2 || (sub_3D804() & 1) != 0 || a1 == 0xD00000000000001BLL && 0x8000000000042A30 == a2 || (result = sub_3D804(), (result & 1) != 0))
    {
      sub_ACD0();
      v20 = sub_3D624();
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = ObjectType;
      aBlock[4] = sub_AD8C;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_BFC0;
      aBlock[3] = &unk_52560;
      v17 = _Block_copy(aBlock);

      sub_3D3C4();
      v22 = _swiftEmptyArrayStorage;
      sub_ADAC(&qword_55D28, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v19 = v11;
      sub_4FF4(&qword_55D30, &qword_3EF70);
      sub_56BC(&qword_55D38, &qword_55D30, &qword_3EF70, &protocol conformance descriptor for [A]);
      sub_3D694();
      v18 = v20;
      sub_3D634();
      _Block_release(v17);

      (*(v8 + 8))(v10, v7);
      (*(v21 + 8))(v14, v19);
    }
  }

  return result;
}

unint64_t sub_ACD0()
{
  result = qword_55D20;
  if (!qword_55D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_55D20);
  }

  return result;
}

uint64_t sub_AD1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_AD54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_AD94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_ADAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_ADFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_7914(a1, v4, v5, v6);
}

uint64_t sub_AEB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_85EC(a1, v4, v5, v6);
}

uint64_t sub_AF68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_8D68(a1, v4, v5, v6);
}

uint64_t sub_B01C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B05C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_94E4(a1, v4, v5, v6);
}

__n128 sub_B148(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_B15C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_B1A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B210@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_4FF4(&qword_55D90, &qword_3F130);
  __chkstk_darwin(v8);
  v10 = v42 - v9;
  v11 = [objc_opt_self() isPictureInPictureSupported];
  if (v11)
  {
    v46 = v8;
    v47 = a4;
    v45 = v42;
    __chkstk_darwin(v11);
    v44 = &v42[-6];
    v42[-4] = a1;
    v43 = a2 & 1;
    LOBYTE(v42[-3]) = a2 & 1;
    v40 = a3;
    sub_3CCB4();
    v42[0] = a3;
    v42[1] = a1;
    if (qword_55980 != -1)
    {
      swift_once();
    }

    v12 = qword_572B8;
    LOWORD(v41) = 256;
    v40 = 0;
    v13 = sub_3CF84();
    v15 = v14;
    v17 = v16;
    sub_3CEC4();
    v18 = sub_3CF74();
    v20 = v19;
    v22 = v21;

    sub_BAF8(v13, v15, v17 & 1);

    v23 = sub_3CF64();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_BAF8(v18, v20, v22 & 1);

    v30 = &v10[*(v46 + 36)];
    v31 = *(sub_4FF4(&qword_55DA0, &qword_3EDC8) + 28);
    v32 = sub_3CF54();
    (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
    *v30 = swift_getKeyPath();
    *v10 = v23;
    *(v10 + 1) = v25;
    v10[16] = v27 & 1;
    *(v10 + 3) = v29;
    sub_B8B0(&v48);
    sub_4FF4(&qword_55DA8, &qword_3EE00);
    sub_4FF4(&qword_55DB0, &qword_3EE08);
    sub_BBE4();
    v33 = sub_BC9C();
    v34 = sub_BDAC();
    v40 = v33;
    v41 = v34;
    v35 = v47;
    sub_3D2C4();
    v36 = sub_4FF4(&qword_55D98, &qword_3EDC0);
    return (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  }

  else
  {
    v38 = sub_4FF4(&qword_55D98, &qword_3EDC0);
    v39 = *(*(v38 - 8) + 56);

    return v39(a4, 1, 1, v38);
  }
}

uint64_t sub_B64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_4FF4(&qword_55DD8, &qword_3EE10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_3C904();
  sub_3D224();
  sub_56BC(&qword_55DD0, &qword_55DD8, &qword_3EE10, &protocol conformance descriptor for Toggle<A>);
  sub_3D074();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_B7D0@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void *sub_B8B0@<X0>(uint64_t a2@<X8>)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    if (homeButtonType == 2)
    {
      sub_3CCB4();
      if (qword_55980 == -1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_3CCB4();
      if (qword_55980 == -1)
      {
LABEL_6:
        v6 = qword_572B8;
        sub_3CF84();
        result = sub_3CDB4();
        *a2 = v7;
        *(a2 + 16) = v8;
        *(a2 + 32) = v9;
        return result;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_BAF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_BB50(uint64_t a1)
{
  v2 = sub_4FF4(&qword_55DF0, &qword_3EE18);
  __chkstk_darwin(v2 - 8);
  sub_BE28(a1, &v5 - v3);
  return sub_3CC14();
}

unint64_t sub_BBE4()
{
  result = qword_55DB8;
  if (!qword_55DB8)
  {
    sub_5674(&qword_55D90, &qword_3F130);
    sub_56BC(&qword_55DC0, &qword_55DA0, &qword_3EDC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55DB8);
  }

  return result;
}

unint64_t sub_BC9C()
{
  result = qword_55DC8;
  if (!qword_55DC8)
  {
    sub_5674(&qword_55DA8, &qword_3EE00);
    sub_56BC(&qword_55DD0, &qword_55DD8, &qword_3EE10, &protocol conformance descriptor for Toggle<A>);
    sub_BD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55DC8);
  }

  return result;
}

unint64_t sub_BD54()
{
  result = qword_55DE0;
  if (!qword_55DE0)
  {
    sub_3CE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55DE0);
  }

  return result;
}

unint64_t sub_BDAC()
{
  result = qword_55DE8;
  if (!qword_55DE8)
  {
    sub_5674(&qword_55DB0, &qword_3EE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55DE8);
  }

  return result;
}

uint64_t sub_BE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_55DF0, &qword_3EE18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_BE9C()
{
  result = qword_55DF8;
  if (!qword_55DF8)
  {
    sub_5674(&qword_55E00, &unk_3EE20);
    sub_BF20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55DF8);
  }

  return result;
}

unint64_t sub_BF20()
{
  result = qword_55E08;
  if (!qword_55E08)
  {
    sub_5674(&qword_55D98, &qword_3EDC0);
    sub_BBE4();
    sub_BC9C();
    sub_BDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55E08);
  }

  return result;
}

uint64_t sub_BFC0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_C004()
{
  swift_getKeyPath();
  sub_D25C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
  sub_3C804();

  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_C0B4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001FLL;
    v6 = 0x7041746E65636552;
    if (a1 != 8)
    {
      v6 = 1801678660;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x654772656E726F43;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x73617469746C754DLL;
    v2 = 0xD000000000000012;
    v3 = 0x69746375646F7250;
    if (a1 != 3)
    {
      v3 = 0x556F54656B616853;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_C224(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_C0B4(*a1);
  v5 = v4;
  if (v3 == sub_C0B4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3D804();
  }

  return v8 & 1;
}

Swift::Int sub_C2AC()
{
  v1 = *v0;
  sub_3D844();
  sub_C0B4(v1);
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_C310(uint64_t a1)
{
  sub_C0B4(*v1);
  sub_3D524();
}

Swift::Int sub_C364(uint64_t a1)
{
  v2 = *v1;
  sub_3D844();
  sub_C0B4(v2);
  sub_3D524();

  return sub_3D864();
}

unint64_t sub_C3C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_D13C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_C3F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_C0B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_C420@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_D25C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
  sub_3C804();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_C4CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_C50C(v1, v2);
}

uint64_t sub_C50C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_3D804() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_D25C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
    sub_3C7F4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_C67C()
{
  swift_getKeyPath();
  sub_D25C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
  sub_3C804();

  return *(v0 + 32);
}

uint64_t sub_C71C(unsigned __int8 a1)
{
  result = *(v1 + 32);
  if (result == 10)
  {
    if (a1 == 10)
    {
      goto LABEL_13;
    }

LABEL_5:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_D25C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
    sub_3C7F4();
  }

  if (a1 == 10)
  {
    goto LABEL_5;
  }

  v5 = sub_C0B4(result);
  v7 = v6;
  if (v5 != sub_C0B4(a1) || v7 != v8)
  {
    v10 = sub_3D804();

    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

LABEL_13:
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_C904(uint64_t a1)
{
  v1 = sub_3D3B4();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3D3D4();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3D3F4();
  v19 = v7;
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  sub_ACD0();
  v14 = sub_3D624();
  sub_3D3E4();
  sub_3D404();
  v18 = *(v8 + 8);
  v18(v11, v7);
  v15 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_D1C0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_BFC0;
  aBlock[3] = &unk_52760;
  v16 = _Block_copy(aBlock);

  sub_3D3C4();
  v23 = _swiftEmptyArrayStorage;
  sub_D25C(&qword_55D28, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_4FF4(&qword_55D30, &qword_3EF70);
  sub_D1E0();
  sub_3D694();
  sub_3D614();
  _Block_release(v16);

  (*(v22 + 8))(v3, v1);
  (*(v20 + 8))(v6, v21);
  v18(v13, v19);
}

uint64_t sub_CCB4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 32) != 10)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_D25C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
      sub_3C7F4();
    }
  }

  return result;
}

uint64_t sub_CDF8()
{

  v1 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingAndGesturesSettingsListViewModel___observationRegistrar;
  v2 = sub_3C824();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for MultitaskingAndGesturesSettingsListViewModel(uint64_t a1)
{
  result = qword_55E40;
  if (!qword_55E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CEF0(uint64_t a1)
{
  result = sub_3C824();
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

uint64_t getEnumTagSinglePayload for MultitaskingAndGesturesSettingsListViewModel.CellIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MultitaskingAndGesturesSettingsListViewModel.CellIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_D0E8()
{
  result = qword_55ED8;
  if (!qword_55ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55ED8);
  }

  return result;
}

unint64_t sub_D13C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_51CE8;
  v6._object = a2;
  v4 = sub_3D784(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_D188()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_D1E0()
{
  result = qword_55D38;
  if (!qword_55D38)
  {
    sub_5674(&qword_55D30, &qword_3EF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55D38);
  }

  return result;
}

uint64_t sub_D25C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_D2A4()
{
  result = qword_55EE8;
  if (!qword_55EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55EE8);
  }

  return result;
}

uint64_t sub_D2FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_C50C(v1, v2);
}

uint64_t sub_D33C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_D394()
{
  type metadata accessor for FourAndFiveFingersSectionViewModel(0);
  swift_allocObject();
  return sub_12960();
}

uint64_t sub_D3CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_4FF4(&qword_55EF0, &unk_3F120);
  __chkstk_darwin(v3);
  v16 = v1;
  sub_DA78(&v15[-v4]);
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v5 = qword_572B8;
  *&v18 = sub_3CF84();
  *(&v18 + 1) = v6;
  v19 = v7 & 1;
  v20 = v8;
  sub_4FF4(&qword_55DA8, &qword_3EE00);
  sub_E100();
  sub_BC9C();
  sub_3D2C4();
  v9 = *v1;
  v24 = *(v1 + 8);
  v18 = *(v1 + 1);
  v19 = *(v1 + 32);
  v10 = v1[6];
  v22 = v1[5];
  v23 = v9;
  v21 = v10;
  v11 = swift_allocObject();
  v12 = *(v1 + 1);
  *(v11 + 16) = *v1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v1 + 2);
  *(v11 + 64) = v1[6];
  v13 = (a1 + *(sub_4FF4(&qword_55F00, &qword_3F138) + 36));
  *v13 = sub_E1E0;
  v13[1] = v11;
  v13[2] = 0;
  v13[3] = 0;
  sub_E1E8(&v23, v17, &qword_55F08, &qword_3F140);
  sub_E1E8(&v18, v17, &qword_55F10, &qword_3F148);
  sub_E1E8(&v22, v17, &qword_55F18, &qword_3F150);
  return sub_E1E8(&v21, v17, &qword_55F18, &qword_3F150);
}

uint64_t sub_D694(uint64_t a1)
{
  v1 = sub_4FF4(&qword_55DD8, &qword_3EE10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  type metadata accessor for FourAndFiveFingersSectionViewModel(0);
  sub_E2C0(&qword_55F20, type metadata accessor for FourAndFiveFingersSectionViewModel, &unk_3F7B0);
  sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  sub_3D224();
  sub_56BC(&qword_55DD0, &qword_55DD8, &qword_3EE10, &protocol conformance descriptor for Toggle<A>);
  sub_3D074();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_D8A4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v4;
  return result;
}

uint64_t sub_D924(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3C8A4();
}

uint64_t sub_D998@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_DA78@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_4FF4(&qword_55D90, &qword_3F130);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - v5;
  sub_3C8E4();
  if (v36 & 1) != 0 || (sub_3C8E4(), (v35))
  {
    v7 = 1;
  }

  else
  {
    v34 = a2;
    sub_3CCB4();
    if (qword_55980 != -1)
    {
      swift_once();
    }

    v8 = qword_572B8;
    v9 = sub_3CF84();
    v11 = v10;
    v13 = v12;
    sub_3CEC4();
    v14 = sub_3CF74();
    v31 = v15;
    v32 = v14;
    v17 = v16;
    v19 = v18;

    sub_BAF8(v9, v11, v13 & 1);

    v20 = v32;
    v21 = sub_3CF64();
    v23 = v22;
    v25 = v24;
    v33 = v26;
    sub_BAF8(v20, v17, v19 & 1);

    v27 = &v6[*(v3 + 36)];
    v28 = *(sub_4FF4(&qword_55DA0, &qword_3EDC8) + 28);
    v29 = sub_3CF54();
    (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
    *v27 = swift_getKeyPath();
    *v6 = v21;
    *(v6 + 1) = v23;
    v6[16] = v25 & 1;
    a2 = v34;
    *(v6 + 3) = v33;
    sub_E310(v6, a2);
    v7 = 0;
  }

  return (*(v4 + 56))(a2, v7, 1, v3);
}

uint64_t sub_DD6C(uint64_t a1)
{
  v2 = sub_3CC54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FourAndFiveFingersSectionViewModel(0);
  sub_E2C0(&qword_55F20, type metadata accessor for FourAndFiveFingersSectionViewModel, &unk_3F7B0);
  v6 = sub_3C994();
  v7 = *a1;
  v15 = *a1;
  v16 = *(a1 + 8);
  LOBYTE(a1) = v16;

  if ((a1 & 1) == 0)
  {
    sub_3D604();
    v8 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_E250(&v15);
    (*(v3 + 8))(v5, v2);
    v7 = v14;
  }

  swift_getKeyPath();
  v14 = v7;
  sub_E2C0(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
  sub_3C804();

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);

  v11 = (v6 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings34FourAndFiveFingersSectionViewModel_referrer);
  *v11 = v10;
  v11[1] = v9;
}

__n128 sub_E01C(uint64_t a1, uint64_t a2)
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

uint64_t sub_E038(uint64_t a1, int a2)
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

uint64_t sub_E080(uint64_t result, int a2, int a3)
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

unint64_t sub_E100()
{
  result = qword_55EF8;
  if (!qword_55EF8)
  {
    sub_5674(&qword_55EF0, &unk_3F120);
    sub_BBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55EF8);
  }

  return result;
}

uint64_t sub_E184()
{

  sub_E1D8(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_E1E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4FF4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_E250(uint64_t a1)
{
  v2 = sub_4FF4(&qword_55F08, &qword_3F140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E2C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_E310(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_55D90, &qword_3F130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_E38C()
{
  result = qword_55F28;
  if (!qword_55F28)
  {
    sub_5674(&qword_55F00, &qword_3F138);
    sub_E418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55F28);
  }

  return result;
}

unint64_t sub_E418()
{
  result = qword_55F30;
  if (!qword_55F30)
  {
    sub_5674(&qword_55F38, &qword_3F1F8);
    sub_E100();
    sub_BC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55F30);
  }

  return result;
}

BOOL sub_E510(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_E540@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_E56C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_E658@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_E688@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_E828(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_E6CC()
{
  result = qword_55F40;
  if (!qword_55F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55F40);
  }

  return result;
}

unint64_t sub_E724()
{
  result = qword_55F48;
  if (!qword_55F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55F48);
  }

  return result;
}

unint64_t sub_E77C()
{
  result = qword_55F50;
  if (!qword_55F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55F50);
  }

  return result;
}

unint64_t sub_E7D4()
{
  result = qword_55F58;
  if (!qword_55F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55F58);
  }

  return result;
}

uint64_t sub_E828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id sub_E864()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_4FF4(&qword_56008, &qword_3F528);
  sub_3D264();
  objc_allocWithZone(type metadata accessor for MultitaskingWindowManagementPackageAnimationView());

  return sub_31CD4(v4, v1, v2);
}

void sub_E8F4(uint64_t a1)
{
  sub_4FF4(&qword_56008, &qword_3F528);
  sub_3D264();
  v2 = *(a1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_currentState);
  *(a1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_currentState) = v3;
  sub_31700(v2);
}

uint64_t sub_E974@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PackageViewCoordinator();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_E9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_EC2C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_EA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_EC2C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_EAB8(uint64_t a1)
{
  sub_EC2C();
  sub_3CD84();
  __break(1u);
}

__n128 sub_EB14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_EB28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_EB70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_EBCC()
{
  result = qword_55FF8;
  if (!qword_55FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55FF8);
  }

  return result;
}

unint64_t sub_EC2C()
{
  result = qword_56000;
  if (!qword_56000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56000);
  }

  return result;
}

uint64_t sub_EC80(uint64_t a1, char a2, uint64_t a3, char a4, char *a5)
{
  if (a2)
  {
    v5 = UIViewNoIntrinsicMetric;
  }

  else
  {
    v5 = *&a1;
  }

  v7 = *&a5[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize];
  v6 = *&a5[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings48MultitaskingWindowManagementPackageAnimationView_originalSize + 8];
  if (v7 == 0.0 && v6 == 0.0)
  {
    if (a4)
    {
      v8 = UIViewNoIntrinsicMetric;
    }

    else
    {
      v8 = *&a3;
    }

    v12.receiver = a5;
    v12.super_class = type metadata accessor for MultitaskingWindowManagementPackageAnimationView();
    objc_msgSendSuper2(&v12, "sizeThatFits:", v5, v8);
    v5 = v9;
  }

  else
  {
    v10 = sub_32848(140.0) / v6;
    if (v10 < v5 / v7)
    {
      v5 = v7 * v10;
    }
  }

  return *&v5;
}

id sub_EDD0()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_572B8 = result;
  return result;
}

uint64_t sub_EE3C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_3D414();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_3C774();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_3C7C4();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_EFBC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_3D414();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_3C774();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_3C7C4();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for MultitaskingAndGesturesSettingsList(uint64_t a1)
{
  result = qword_56090;
  if (!qword_56090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_F174(uint64_t a1)
{
  sub_F240(319);
  if (v1 <= 0x3F)
  {
    sub_3D414();
    if (v2 <= 0x3F)
    {
      sub_3C774();
      if (v3 <= 0x3F)
      {
        sub_3C7C4();
        if (v4 <= 0x3F)
        {
          sub_F298();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_F240(uint64_t a1)
{
  if (!qword_560A0)
  {
    type metadata accessor for MultitaskingAndGesturesSettingsListViewModel(255);
    v1 = sub_3D1C4();
    if (!v2)
    {
      atomic_store(v1, &qword_560A0);
    }
  }
}

void sub_F298()
{
  if (!qword_560A8)
  {
    v0 = sub_3C914();
    if (!v1)
    {
      atomic_store(v0, &qword_560A8);
    }
  }
}

uint64_t sub_F304@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_11418();
  sub_3C804();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_F3A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v68 = a3;
  v4 = sub_3CAC4();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v60 = v5;
  v64 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for MultitaskingAndGesturesSettingsList(0);
  v52 = *(v67 - 8);
  __chkstk_darwin(v67);
  v54 = v6;
  v55 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4FF4(&qword_560E8, &qword_3F5B8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v47 - v9;
  v50 = sub_4FF4(&qword_560F0, &qword_3F5C0);
  v11 = *(v50 - 8);
  __chkstk_darwin(v50);
  v13 = v47 - v12;
  v57 = sub_4FF4(&qword_560F8, &qword_3F5C8);
  v53 = *(v57 - 8);
  __chkstk_darwin(v57);
  v69 = v47 - v14;
  v62 = sub_4FF4(&qword_56100, &qword_3F5D0);
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v51 = v47 - v15;
  v63 = sub_4FF4(&qword_56108, &qword_3F5D8);
  v59 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = v47 - v16;
  v17 = a2;
  v70 = a2;
  sub_4FF4(&qword_56110, &qword_3F5E0);
  sub_56BC(&qword_56118, &qword_56110, &qword_3F5E0, &protocol conformance descriptor for TupleView<A>);
  sub_3CF14();
  v18 = sub_56BC(&qword_56120, &qword_560E8, &qword_3F5B8, &protocol conformance descriptor for List<A, B>);
  sub_3CFB4();
  (*(v8 + 8))(v10, v7);
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v19 = qword_572B8;
  v20 = sub_3CF84();
  v22 = v21;
  v24 = v23;
  v71 = v7;
  v72 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v50;
  sub_3D064();
  sub_BAF8(v20, v22, v24 & 1);

  (*(v11 + 8))(v13, v26);
  v49 = *v17;
  v48 = v17[1];
  v71 = v49;
  v72 = v48;
  v47[0] = sub_4FF4(&qword_56128, &qword_3F5E8);
  sub_3D194();
  v27 = v75;
  swift_getKeyPath();
  v71 = v27;
  v47[1] = sub_11418();
  sub_3C804();

  v28 = *(v27 + 32);

  LOBYTE(v75) = v28;
  v29 = v55;
  sub_11114(v17, v55);
  v31 = v64;
  v30 = v65;
  v32 = v66;
  (*(v65 + 16))(v64, v61, v66);
  v33 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v34 = (v54 + *(v30 + 80) + v33) & ~*(v30 + 80);
  v35 = swift_allocObject();
  sub_11300(v29, v35 + v33);
  (*(v30 + 32))(v35 + v34, v31, v32);
  v36 = sub_4FF4(&qword_56130, &qword_3F618);
  v71 = v26;
  v72 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_11760();
  v39 = v51;
  v40 = v57;
  v41 = v69;
  sub_3D084();

  (*(v53 + 8))(v41, v40);
  v71 = v40;
  v72 = v36;
  v73 = v37;
  v74 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v58;
  v44 = v62;
  sub_3CFC4();
  (*(v56 + 8))(v39, v44);
  v71 = v49;
  v72 = v48;
  sub_3D194();
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel(0);
  v71 = v44;
  v72 = v42;
  swift_getOpaqueTypeConformance2();
  v45 = v63;
  sub_3D024();

  return (*(v59 + 8))(v43, v45);
}

uint64_t sub_FCDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *(&v137 + 1) = &type metadata for MultitaskingAndGesturesFeatureFlags;
  v138 = sub_1180C();
  v3 = sub_3C834();
  sub_11860(&v136);
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel(0);
  sub_11418();
  v103 = sub_3C984();
  v104 = v4 & 1;
  if (v3)
  {
    v105 = sub_27E78;
    v106 = 0;
    LOWORD(v107) = 0;
  }

  else
  {
    v105 = sub_24114;
    v106 = 0;
    LOWORD(v107) = 256;
  }

  sub_118AC();
  sub_11900();
  sub_3CDB4();
  v60 = v136;
  v61 = v137;
  v5 = v138;
  v6 = BYTE1(v138);
  type metadata accessor for MultitaskingAndGesturesSettingsList(0);
  v68 = v5;
  sub_11954(v60, *(&v60 + 1), v61, *(&v61 + 1), v5);
  sub_3C8E4();
  if ((v136 & 1) != 0 || (sub_3C8E4(), v136 == 1))
  {
    v67 = sub_3C984();
    v8 = v7;
    v9 = a1[1];
    v103 = *a1;
    v104 = v9;
    sub_4FF4(&qword_56128, &qword_3F5E8);
    sub_3D1B4();
    v10 = v136;
    v11 = v137;
    swift_getKeyPath();
    v136 = v10;
    *&v137 = v11;
    sub_4FF4(&qword_56158, &qword_3F620);
    sub_3D284();

    v65 = v104;
    v66 = v103;

    LOBYTE(v99) = v8 & 1;
    LOBYTE(v86) = 0;
    v63 = v8 & 1;
    v64 = v105 | 0x100;
    v62 = sub_14498;
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v62 = 0;
    v63 = 0;
    v65 = 0;
    v64 = 0;
  }

  v59 = sub_3C984();
  v13 = v12;
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v14 = qword_572E8;
  v58 = sub_3C8D4();
  v43 = v14;
  v57 = sub_3C8D4();
  v41 = a1[1];
  v103 = *a1;
  sub_4FF4(&qword_56128, &qword_3F5E8);
  sub_3D1B4();
  v15 = v136;
  v16 = v137;
  swift_getKeyPath();
  v136 = v15;
  *&v137 = v16;
  sub_4FF4(&qword_56158, &qword_3F620);
  sub_3D284();

  v56 = v103;
  v55 = v105;

  v54 = v13 & 1;
  v53 = sub_3C984();
  v18 = v17;
  sub_3D1B4();
  v19 = v136;
  v20 = v137;
  swift_getKeyPath();
  v136 = v19;
  *&v137 = v20;
  sub_3D284();

  v52 = v103;
  v51 = v105;

  v50 = sub_3C984();
  v47 = v21;
  sub_3D1B4();
  v22 = v136;
  v23 = v137;
  swift_getKeyPath();
  v136 = v22;
  *&v137 = v23;
  sub_3D284();

  v49 = v103;
  v48 = v105;

  v47 &= 1u;
  v46 = sub_3C984();
  v39 = v24;
  v25 = v43;
  v45 = sub_3C8D4();
  v44 = sub_3C8D4();
  sub_3D1B4();
  v26 = v136;
  v27 = v137;
  swift_getKeyPath();
  v136 = v26;
  *&v137 = v27;
  sub_3D284();

  v36 = v103;
  v42 = v105;

  v28 = v39 & 1;
  v37 = v39 & 1;
  v29 = sub_3C984();
  v38 = v30;
  v40 = sub_3C8D4();
  v104 = v41;
  sub_3D1B4();
  v31 = v136;
  v32 = v137;
  swift_getKeyPath();
  v136 = v31;
  *&v137 = v32;
  sub_3D284();

  v33 = v103;
  LOBYTE(v14) = v105;

  *&v82 = v67;
  *(&v82 + 1) = v63;
  v83 = v62;
  v84 = 0;
  *v85 = 0;
  *&v85[8] = v66;
  *&v85[16] = v65;
  *&v85[24] = v64;
  *&v73[48] = *&v85[10];
  *&v73[38] = *v85;
  *&v73[22] = v62;
  *&v73[6] = v82;
  *&v86 = v59;
  BYTE8(v86) = v54;
  HIDWORD(v86) = *&v81[3];
  *(&v86 + 9) = *v81;
  v87 = sub_D394;
  v88 = 0;
  LOBYTE(v89) = 0;
  DWORD1(v89) = *&v80[3];
  *(&v89 + 1) = *v80;
  *(&v89 + 1) = v58;
  *v90 = v57;
  *&v90[8] = v103;
  *&v90[16] = v41;
  v90[24] = v105;
  v90[25] = 2;
  *&v72[6] = v86;
  *&v72[64] = *&v90[10];
  *&v72[54] = *v90;
  *&v72[38] = v89;
  *&v72[22] = sub_D394;
  *&v91 = v53;
  BYTE8(v91) = v18 & 1;
  HIDWORD(v91) = *&v79[3];
  *(&v91 + 9) = *v79;
  v92 = sub_138B4;
  v93 = 0;
  v94[0] = 0;
  *&v94[4] = *&v78[3];
  *&v94[1] = *v78;
  *&v94[8] = v103;
  *&v94[16] = v41;
  v94[24] = v105;
  v94[25] = 3;
  *&v71[48] = *&v94[10];
  *&v71[38] = *v94;
  *&v71[22] = sub_138B4;
  *&v71[6] = v91;
  *&v95 = v50;
  BYTE8(v95) = v47;
  HIDWORD(v95) = *&v77[3];
  *(&v95 + 9) = *v77;
  v96 = sub_2D538;
  v97 = 0;
  v98[0] = 0;
  *&v98[4] = *&v76[3];
  *&v98[1] = *v76;
  *&v98[8] = v103;
  *&v98[16] = v41;
  v98[24] = v105;
  v98[25] = 4;
  *&v70[48] = *&v98[10];
  *&v70[38] = *v98;
  *&v70[22] = sub_2D538;
  *&v70[6] = v95;
  *&v99 = v46;
  BYTE8(v99) = v28;
  HIDWORD(v99) = *&v75[3];
  *(&v99 + 9) = *v75;
  *&v100 = sub_2E004;
  *(&v100 + 1) = 0;
  LOBYTE(v101) = 0;
  DWORD1(v101) = *&v74[3];
  *(&v101 + 1) = *v74;
  *(&v101 + 1) = v45;
  *v102 = v44;
  *&v102[8] = v103;
  *&v102[16] = v41;
  v102[24] = v105;
  *(a2 + 33) = v6;
  v102[25] = 5;
  *&v69[6] = v99;
  *&v69[64] = *&v102[10];
  *&v69[54] = *v102;
  *&v69[38] = v101;
  *&v69[22] = v100;
  *(a2 + 274) = *&v70[32];
  *(a2 + 290) = *&v70[48];
  *(a2 + 258) = *&v70[16];
  *(a2 + 354) = *&v69[48];
  *(a2 + 370) = *&v69[64];
  *(a2 + 306) = *v69;
  *(a2 + 322) = *&v69[16];
  *(a2 + 338) = *&v69[32];
  *(a2 + 400) = v38 & 1;
  *(a2 + 432) = v14;
  *(a2 + 433) = 6;
  *a2 = v60;
  *(a2 + 16) = v61;
  *(a2 + 82) = *&v73[48];
  *(a2 + 66) = *&v73[32];
  *(a2 + 50) = *&v73[16];
  *(a2 + 34) = *v73;
  *(a2 + 98) = *v72;
  *(a2 + 162) = *&v72[64];
  *(a2 + 146) = *&v72[48];
  *(a2 + 130) = *&v72[32];
  *(a2 + 32) = v68;
  *(a2 + 114) = *&v72[16];
  *(a2 + 226) = *&v71[48];
  *(a2 + 210) = *&v71[32];
  *(a2 + 194) = *&v71[16];
  *(a2 + 178) = *v71;
  *(a2 + 242) = *v70;
  *(a2 + 392) = v29;
  *(a2 + 408) = v40;
  *(a2 + 416) = v33;
  *(a2 + 424) = v41;
  sub_11954(v60, *(&v60 + 1), v61, *(&v61 + 1), v68);
  sub_E1E8(&v82, &v136, &qword_56160, &qword_3F628);
  sub_E1E8(&v86, &v136, &qword_56168, &qword_3F630);
  sub_E1E8(&v91, &v136, &qword_56170, &qword_3F638);
  sub_E1E8(&v95, &v136, &qword_56178, &qword_3F640);
  sub_E1E8(&v99, &v136, &qword_56180, &qword_3F648);

  sub_119B4(v60, *(&v60 + 1), v61, *(&v61 + 1), v68);

  v103 = v46;
  LOBYTE(v104) = v37;
  *(&v104 + 1) = *v75;
  HIDWORD(v104) = *&v75[3];
  v105 = sub_2E004;
  v106 = 0;
  LOBYTE(v107) = 0;
  *(&v107 + 1) = *v74;
  HIDWORD(v107) = *&v74[3];
  v108 = v45;
  v109 = v44;
  v110 = v36;
  v111 = v41;
  v112 = v42;
  v113 = 5;
  sub_11A14(&v103, &qword_56180, &qword_3F648);
  v114 = v50;
  v115 = v47;
  *v116 = *v77;
  *&v116[3] = *&v77[3];
  v117 = sub_2D538;
  v118 = 0;
  v119 = 0;
  *v120 = *v76;
  *&v120[3] = *&v76[3];
  v121 = v49;
  v122 = v41;
  v123 = v48;
  v124 = 4;
  sub_11A14(&v114, &qword_56178, &qword_3F640);
  v125 = v53;
  v126 = v18 & 1;
  *v127 = *v79;
  *&v127[3] = *&v79[3];
  v128 = sub_138B4;
  v129 = 0;
  v130 = 0;
  *v131 = *v78;
  *&v131[3] = *&v78[3];
  v132 = v52;
  v133 = v41;
  v134 = v51;
  v135 = 3;
  sub_11A14(&v125, &qword_56170, &qword_3F638);
  *&v136 = v59;
  BYTE8(v136) = v54;
  *(&v136 + 9) = *v81;
  HIDWORD(v136) = *&v81[3];
  v137 = sub_D394;
  LOBYTE(v138) = 0;
  *(&v138 + 1) = *v80;
  HIDWORD(v138) = *&v80[3];
  v139 = v58;
  v140 = v57;
  v141 = v56;
  v142 = v41;
  v143 = v55;
  v144 = 2;
  sub_11A14(&v136, &qword_56168, &qword_3F630);
  v145[0] = v67;
  v145[1] = v63;
  v145[2] = v62;
  v145[3] = 0;
  v145[4] = 0;
  v145[5] = v66;
  v145[6] = v65;
  v146 = v64;
  sub_11A14(v145, &qword_56160, &qword_3F628);
  return sub_119B4(v60, *(&v60 + 1), v61, *(&v61 + 1), v68);
}

uint64_t sub_10BF8(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  v7 = sub_3CE54();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  if (v12 != 10)
  {
    v13 = a3[1];
    v15[2] = *a3;
    v15[3] = v13;
    sub_4FF4(&qword_56128, &qword_3F5E8);
    v14 = sub_3D194();
    __chkstk_darwin(v14);
    v15[-2] = a4;
    LOBYTE(v15[-1]) = v12;

    sub_3D344();
    sub_3CE44();
    sub_3CA44();

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_10DB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_4FF4(&qword_56188, &qword_3F650);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v18[1] = a1;
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel(0);
  sub_3D184();
  v7 = v18[3];
  *a2 = v18[2];
  *(a2 + 1) = v7;
  v8 = type metadata accessor for MultitaskingAndGesturesSettingsList(0);
  v9 = &a2[v8[5]];
  *v9 = 0xD000000000000024;
  *(v9 + 1) = 0x8000000000043020;
  v10 = enum case for SettingsEventImage.graphicIcon(_:);
  v11 = sub_3D414();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  sub_3C764();
  sub_3C7B4();
  v12 = sub_3C7C4();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v6, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(&a2[v8[7]], v6, v12);
    v15 = v8[8];
    if (qword_559A8 != -1)
    {
      swift_once();
    }

    v16 = qword_572E8;
    *&a2[v15] = sub_3C8D4();
    v17 = v8[9];
    result = sub_3C8D4();
    *&a2[v17] = result;
  }

  return result;
}

uint64_t sub_11028@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_11114(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_11300(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_11364;
  a2[1] = v7;
  return result;
}

uint64_t sub_11114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultitaskingAndGesturesSettingsList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11178()
{
  v1 = (type metadata accessor for MultitaskingAndGesturesSettingsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_3D414();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = sub_3C774();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[9];
  v10 = sub_3C7C4();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_11300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultitaskingAndGesturesSettingsList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_11364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MultitaskingAndGesturesSettingsList(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_F3A4(a1, v6, a2);
}

unint64_t sub_11418()
{
  result = qword_55EE0;
  if (!qword_55EE0)
  {
    type metadata accessor for MultitaskingAndGesturesSettingsListViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55EE0);
  }

  return result;
}

uint64_t sub_11470()
{
  v1 = (type metadata accessor for MultitaskingAndGesturesSettingsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_3CAC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;

  v12 = v1[7];
  v13 = sub_3D414();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  v14 = v1[8];
  v15 = sub_3C774();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  v16 = v1[9];
  v17 = sub_3C7C4();
  (*(*(v17 - 8) + 8))(v11 + v16, v17);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1167C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for MultitaskingAndGesturesSettingsList(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_3CAC4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_10BF8(a1, a2, (v2 + v6), v9);
}

unint64_t sub_11760()
{
  result = qword_56138;
  if (!qword_56138)
  {
    sub_5674(&qword_56130, &qword_3F618);
    sub_D0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56138);
  }

  return result;
}

unint64_t sub_1180C()
{
  result = qword_56140;
  if (!qword_56140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56140);
  }

  return result;
}

uint64_t sub_11860(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_118AC()
{
  result = qword_56148;
  if (!qword_56148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56148);
  }

  return result;
}

unint64_t sub_11900()
{
  result = qword_56150;
  if (!qword_56150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56150);
  }

  return result;
}

uint64_t sub_11954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  return sub_119A4(a3, a4, a5 & 1);
}

uint64_t sub_119A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_retain_x1(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_119B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  return sub_11A04(a3, a4, a5 & 1);
}

uint64_t sub_11A04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_11A14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4FF4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_11AC0()
{
  result = [objc_allocWithZone(type metadata accessor for MultiTaskingDisplayManager(0)) init];
  qword_572C0 = result;
  return result;
}

uint64_t sub_11AF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

char *sub_11B68()
{
  ObjectType = swift_getObjectType();
  v2 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager__isExternalDisplayConnected;
  LOBYTE(v22) = sub_126B4() & 1;
  sub_3C874();
  (*(v3 + 32))(&v0[v6], v5, v2);
  *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService] = 0;
  *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo] = 0;
  *&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayObserver] = 0;
  v23.receiver = v0;
  v23.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v23, "init");
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  if (deviceSupportsEnhancedMultitasking)
  {
LABEL_5:
    v13 = [objc_allocWithZone(SBSExternalDisplayService) init];
    v14 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService;
    v15 = *&v7[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService];
    *&v7[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService] = v13;

    v16 = *&v7[v14];
    if (v16)
    {
      [v16 addObserver:v7];
    }

    if (sub_126B4())
    {
      sub_12760(sub_128E8, &unk_529A8);
    }

    goto LABEL_9;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v11 = result;
  deviceSupportsSingleDisplayEnhancedMultitasking = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();

  if (deviceSupportsSingleDisplayEnhancedMultitasking)
  {
    goto LABEL_5;
  }

LABEL_9:
  v17 = [objc_opt_self() TVOutDisplay];
  if (v17)
  {
    v22 = v17;
    v18 = v17;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = sub_3C784();
  }

  else
  {
    v19 = 0;
  }

  v20 = *&v7[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayObserver];
  *&v7[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayObserver] = v19;

  return v7;
}

void sub_11E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_12760(sub_128E8, &unk_529A8);
  }
}

id sub_11EBC(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1 >> 62)
    {
      result = sub_3D744();
      if (result)
      {
LABEL_4:
        if ((a1 & 0xC000000000000001) != 0)
        {
          result = sub_3D6F4();
        }

        else
        {
          if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          result = *(a1 + 32);
        }
      }
    }

    else
    {
      result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_4;
      }
    }

    v6 = *&v4[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo];
    *&v4[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo] = result;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo);
      v9 = v7;
      v10 = v8;

      if (v8)
      {
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_3C8A4();
  }

  return result;
}

uint64_t sub_1202C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_12668();
  v3 = sub_3D554();

  v2(v3);
}

void sub_120A0(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo);
  if (v3)
  {
    v4 = [v3 identifier];
    sub_3D4F4();

    v5 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService;
    v6 = *(v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService);
    if (v6)
    {
      v7 = v6;
      v8 = sub_3D4C4();

      [v7 setMirroringEnabled:a1 & 1 forDisplay:v8];

      v9 = *(v1 + v5);
      if (!v9)
      {
        return;
      }
    }

    else
    {

      v9 = *(v1 + v5);
      if (!v9)
      {
        return;
      }
    }

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13[4] = sub_12648;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1202C;
    v13[3] = &unk_52958;
    v11 = _Block_copy(v13);
    v12 = v9;

    [v12 getConnectedDisplayInfoWithCompletionHandler:v11];
    _Block_release(v11);
  }
}

void sub_12238(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1 >> 62)
    {
      v5 = sub_3D744();
      if (v5)
      {
LABEL_4:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = sub_3D6F4();
        }

        else
        {
          if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return;
          }

          v5 = *(a1 + 32);
        }
      }
    }

    else
    {
      v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v6 = *&v4[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo];
    *&v4[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo] = v5;
  }
}

uint64_t type metadata accessor for MultiTaskingDisplayManager(uint64_t a1)
{
  result = qword_56248;
  if (!qword_56248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1256C(uint64_t a1)
{
  sub_6A70();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_12610()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12650(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_12668()
{
  result = qword_56260;
  if (!qword_56260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_56260);
  }

  return result;
}

uint64_t sub_126B4()
{
  v0 = [objc_opt_self() TVOutDisplay];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 currentMode];

    if (v2)
    {
      if ([v2 height] < 1)
      {
      }

      else
      {
        v3 = [v2 width];

        if (v3 > 0)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void sub_12760(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo);
  *(v2 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo) = 0;

  v6 = *(v2 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_displayService);
  if (v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = a1;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1202C;
    v10[3] = a2;
    v8 = _Block_copy(v10);
    v9 = v6;

    [v9 getConnectedDisplayInfoWithCompletionHandler:v8];
    _Block_release(v8);
  }
}

id sub_12878@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferences];
  *a2 = result;
  return result;
}

uint64_t sub_128EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_12960()
{
  v1 = v0;
  v2 = sub_4FF4(&qword_55AC8, &qword_3E440);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v9 = qword_572E8;
  *(v1 + 16) = sub_3C8D4();
  *(v1 + 24) = sub_3C8D4();
  v10 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings34FourAndFiveFingersSectionViewModel__fourAndFiveFingersEnabled;
  v16[15] = sub_135D4() & 1;
  sub_3C874();
  (*(v6 + 32))(v1 + v10, v8, v5);
  v11 = (v1 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings34FourAndFiveFingersSectionViewModel_referrer);
  v12 = sub_3D5B4();
  *v11 = 0;
  v11[1] = 0;
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_3D594();

  v13 = sub_3D584();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v1;
  sub_1E9E0(0, 0, v4, &unk_3F7F0, v14);

  return v1;
}

uint64_t sub_12C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_4FF4(&qword_55B28, &unk_3EB60);
  v4[6] = swift_task_alloc();
  v4[7] = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[8] = swift_task_alloc();
  v5 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v9 = sub_3D564();
  v4[20] = v9;
  v4[21] = v8;

  return _swift_task_switch(sub_12E4C, v9, v8);
}

uint64_t sub_12E4C()
{
  v1 = v0[14];
  v9 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70, &protocol conformance descriptor for Published<A>.Publisher);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0, &protocol conformance descriptor for AsyncPublisher<A>);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v9 + 8))(v1, v2);
  sub_3D7E4();
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings34FourAndFiveFingersSectionViewModel_referrer;
  v6 = sub_3D584();
  v0[23] = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_130B0;

  return sub_1C864(v6, &protocol witness table for MainActor);
}

uint64_t sub_130B0(char a1)
{
  v3 = *v2;
  *(*v2 + 202) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return _swift_task_switch(sub_131C8, v5, v6);
  }

  return result;
}

uint64_t sub_131C8()
{
  v1 = *(v0 + 202);
  if (v1 == 2)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = v1 & 1;
    *(v0 + 200) = v1 & 1;

    sub_3C8F4();

    *(v0 + 201) = 0;

    sub_3C8F4();

    if (qword_559A0 != -1)
    {
      swift_once();
    }

    v5 = (*(v0 + 40) + *(v0 + 176));
    v6 = *v5;
    v7 = v5[1];

    sub_1BCA0(2u, v4, v6, v7);

    v8 = sub_3D584();
    *(v0 + 184) = v8;
    v9 = swift_task_alloc();
    *(v0 + 192) = v9;
    *v9 = v0;
    v9[1] = sub_130B0;

    return sub_1C864(v8, &protocol witness table for MainActor);
  }
}

uint64_t sub_1340C()
{

  v1 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings34FourAndFiveFingersSectionViewModel__fourAndFiveFingersEnabled;
  v2 = sub_4FF4(&qword_55AD8, &unk_3E450);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for FourAndFiveFingersSectionViewModel(uint64_t a1)
{
  result = qword_56300;
  if (!qword_56300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1352C(uint64_t a1)
{
  sub_6A70();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_135D4()
{
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v0 = qword_572E8;
  v1 = sub_3D4C4();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = v8;
      goto LABEL_11;
    }
  }

  else
  {
    sub_526C(&v11);
  }

  v3 = 1;
LABEL_11:
  v4 = sub_3D4C4();
  v5 = [v0 valueForKey:v4];

  if (v5)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_526C(&v11);
LABEL_19:
    v6 = 0;
    result = 0;
    if (!v3)
    {
      return result;
    }

    return v6 ^ 1u;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_19;
  }

  if (v3)
  {
    v6 = v8;
    return v6 ^ 1u;
  }

  return 0;
}

uint64_t sub_137B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_137F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5440;

  return sub_12C04(a1, v4, v5, v6);
}

uint64_t sub_138B4()
{
  type metadata accessor for ProductivityGesturesSectionViewModel(0);
  swift_allocObject();
  return sub_5DFC();
}

__n128 sub_138F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1390C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_13954(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_139C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3CCD4();
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v4 = qword_572B8;
  v13 = v3;
  v14 = 1;
  v15 = sub_3CF84();
  v16 = v5;
  v17 = v6 & 1;
  v18 = v7;
  sub_4FF4(&qword_55DA8, &qword_3EE00);
  sub_4FF4(&qword_563A0, &unk_3F988);
  sub_BC9C();
  sub_56BC(&qword_563A8, &qword_563A0, &unk_3F988, &protocol conformance descriptor for VStack<A>);
  sub_3D2E4();
  v19 = *v1;
  v20 = *(v1 + 8);
  v13 = *(v1 + 1);
  v14 = *(v1 + 32);
  v8 = swift_allocObject();
  v9 = *(v1 + 1);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v1 + 32);
  v10 = (a1 + *(sub_4FF4(&qword_563B0, &unk_3F998) + 36));
  *v10 = sub_142E4;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  sub_E1E8(&v19, v12, &qword_55F08, &qword_3F140);
  return sub_E1E8(&v13, v12, &qword_563B8, &qword_3F9A8);
}

uint64_t sub_13C18(uint64_t a1)
{
  v1 = sub_4FF4(&qword_55DD8, &qword_3EE10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  type metadata accessor for ProductivityGesturesSectionViewModel(0);
  sub_142F4(&qword_563C0, type metadata accessor for ProductivityGesturesSectionViewModel, &unk_3E8F0);
  sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  sub_3D224();
  sub_56BC(&qword_55DD0, &qword_55DD8, &qword_3EE10, &protocol conformance descriptor for Toggle<A>);
  sub_3D074();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_13E28@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v4;
  return result;
}

uint64_t sub_13EA8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3C8A4();
}

uint64_t sub_13F1C@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_13FFC(uint64_t a1)
{
  v2 = sub_3CC54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductivityGesturesSectionViewModel(0);
  sub_142F4(&qword_563C0, type metadata accessor for ProductivityGesturesSectionViewModel, &unk_3E8F0);
  v6 = sub_3C994();
  v7 = *a1;
  v15 = *a1;
  v16 = *(a1 + 8);
  LOBYTE(a1) = v16;

  if ((a1 & 1) == 0)
  {
    sub_3D604();
    v8 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_E250(&v15);
    (*(v3 + 8))(v5, v2);
    v7 = v14;
  }

  swift_getKeyPath();
  v14 = v7;
  sub_142F4(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
  sub_3C804();

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);

  v11 = (v6 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36ProductivityGesturesSectionViewModel_referrer);
  *v11 = v10;
  v11[1] = v9;
}

uint64_t sub_142A0()
{

  sub_E1D8(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_142F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_14348()
{
  result = qword_563C8;
  if (!qword_563C8)
  {
    sub_5674(&qword_563B0, &unk_3F998);
    sub_143D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_563C8);
  }

  return result;
}

unint64_t sub_143D4()
{
  result = qword_563D0;
  if (!qword_563D0)
  {
    sub_5674(&qword_563D8, &unk_3FA20);
    sub_BC9C();
    sub_56BC(&qword_563A8, &qword_563A0, &unk_3F988, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_563D0);
  }

  return result;
}

uint64_t sub_14498()
{
  type metadata accessor for SwipeToRevealMenuBarSectionViewModel(0);
  swift_allocObject();
  return sub_1ED44();
}

uint64_t sub_144D0@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v38 = sub_4FF4(&qword_55D90, &qword_3F130);
  __chkstk_darwin(v38);
  v37 = &v37 - v2;
  v39 = v1;
  v41 = v1;
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v3 = qword_572B8;
  v4 = sub_3CF84();
  v6 = v5;
  v8 = v7;
  sub_3CEC4();
  v9 = sub_3CF74();
  v11 = v10;
  v13 = v12;

  sub_BAF8(v4, v6, v8 & 1);

  v14 = sub_3CF64();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_BAF8(v9, v11, v13 & 1);

  v21 = v37;
  v22 = &v37[*(v38 + 36)];
  v23 = *(sub_4FF4(&qword_55DA0, &qword_3EDC8) + 28);
  v24 = sub_3CF54();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  *v22 = swift_getKeyPath();
  *v21 = v14;
  *(v21 + 1) = v16;
  v21[16] = v18 & 1;
  *(v21 + 3) = v20;
  v25 = sub_3CCD4();
  sub_3CCB4();
  v26 = qword_572B8;
  v27 = sub_3CF84();
  v43 = v25;
  v44 = 1;
  v45 = v27;
  v46 = v28;
  v47 = v29 & 1;
  v48 = v30;
  sub_4FF4(&qword_55DA8, &qword_3EE00);
  sub_4FF4(&qword_563A0, &unk_3F988);
  sub_BBE4();
  sub_BC9C();
  sub_56BC(&qword_563A8, &qword_563A0, &unk_3F988, &protocol conformance descriptor for VStack<A>);
  v31 = v40;
  sub_3D2C4();
  v32 = v39;
  v49 = *v39;
  v50 = *(v39 + 8);
  v43 = *(v39 + 1);
  v44 = *(v39 + 32);
  v33 = swift_allocObject();
  v34 = *(v32 + 1);
  *(v33 + 16) = *v32;
  *(v33 + 32) = v34;
  *(v33 + 48) = *(v32 + 32);
  v35 = (v31 + *(sub_4FF4(&qword_563E0, &unk_3FBA8) + 36));
  *v35 = sub_1503C;
  v35[1] = v33;
  v35[2] = 0;
  v35[3] = 0;
  sub_E1E8(&v49, v42, &qword_55F08, &qword_3F140);
  return sub_E1E8(&v43, v42, &qword_563E8, &qword_3FBB8);
}

uint64_t sub_14930(uint64_t a1)
{
  v1 = sub_4FF4(&qword_55DD8, &qword_3EE10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  type metadata accessor for SwipeToRevealMenuBarSectionViewModel(0);
  sub_1504C(&qword_563F0, type metadata accessor for SwipeToRevealMenuBarSectionViewModel, &unk_40720);
  sub_3C9A4();
  swift_getKeyPath();
  sub_3CA84();

  sub_3D224();
  sub_56BC(&qword_55DD0, &qword_55DD8, &qword_3EE10, &protocol conformance descriptor for Toggle<A>);
  sub_3D074();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_14B40@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v4;
  return result;
}

uint64_t sub_14BC0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3C8A4();
}

uint64_t sub_14C34@<X0>(uint64_t a1@<X8>)
{
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  result = sub_3CF84();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_14D14(uint64_t a1)
{
  v2 = sub_3CC54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SwipeToRevealMenuBarSectionViewModel(0);
  sub_1504C(&qword_563F0, type metadata accessor for SwipeToRevealMenuBarSectionViewModel, &unk_40720);
  v6 = sub_3C994();
  v7 = *a1;
  v15 = *a1;
  v16 = *(a1 + 8);
  LOBYTE(a1) = v16;

  if ((a1 & 1) == 0)
  {
    sub_3D604();
    v8 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_E250(&v15);
    (*(v3 + 8))(v5, v2);
    v7 = v14;
  }

  swift_getKeyPath();
  v14 = v7;
  sub_1504C(&qword_55EE0, type metadata accessor for MultitaskingAndGesturesSettingsListViewModel, &unk_3EF50);
  sub_3C804();

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);

  v11 = (v6 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings36SwipeToRevealMenuBarSectionViewModel_referrer);
  *v11 = v10;
  v11[1] = v9;
}

uint64_t sub_14FF8()
{

  sub_E1D8(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1504C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_150A0()
{
  result = qword_563F8;
  if (!qword_563F8)
  {
    sub_5674(&qword_563E0, &unk_3FBA8);
    sub_1512C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_563F8);
  }

  return result;
}

unint64_t sub_1512C()
{
  result = qword_56400;
  if (!qword_56400)
  {
    sub_5674(&qword_56408, &qword_3FC30);
    sub_BBE4();
    sub_BC9C();
    sub_56BC(&qword_563A8, &qword_563A0, &unk_3F988, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56400);
  }

  return result;
}

__n128 sub_151F8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1521C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_15264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_152E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = sub_3CAF4();
  __chkstk_darwin(v5);
  v7 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v8 = sub_3D154();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v12 = qword_55980;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_572B8;
  sub_3D174();
  (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
  v14 = sub_3D164();

  (*(v9 + 8))(v11, v8);
  sub_3D324();
  sub_3CA14();
  LOBYTE(v45) = 1;
  *&v41[6] = v42;
  *&v41[22] = v43;
  *&v41[38] = v44;
  v15 = (a3 + *(sub_4FF4(&qword_56530, &qword_3FF88) + 36));
  v16 = *(v5 + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = sub_3CCC4();
  v19 = *(*(v18 - 8) + 104);
  v19(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #5.0 }

  v40 = _Q0;
  *v15 = _Q0;
  *&v15[*(sub_4FF4(&qword_56538, &qword_3FF90) + 36)] = 256;
  v25 = *&v41[16];
  *(a3 + 18) = *v41;
  *a3 = v14;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 34) = v25;
  *(a3 + 50) = *&v41[32];
  *(a3 + 64) = *&v41[46];
  v19(&v7[*(v5 + 20)], v17, v18);
  *v7 = v40;
  sub_3D0C4();
  v26 = sub_3D0F4();

  sub_3C9C4();
  v27 = a3 + *(sub_4FF4(&qword_56540, &qword_3FF98) + 36);
  sub_17454(v7, v27);
  v28 = v27 + *(sub_4FF4(&qword_56548, &qword_3FFA0) + 36);
  v29 = v46;
  *v28 = v45;
  *(v28 + 16) = v29;
  *(v28 + 32) = v47;
  v30 = sub_4FF4(&qword_56550, &qword_3FFA8);
  *(v27 + *(v30 + 52)) = v26;
  *(v27 + *(v30 + 56)) = 256;
  v31 = sub_3D324();
  v33 = v32;
  sub_174B8(v7);
  v34 = (v27 + *(sub_4FF4(&qword_56558, &qword_3FFB0) + 36));
  *v34 = v31;
  v34[1] = v33;
  v35 = sub_3D324();
  v37 = v36;
  result = sub_4FF4(&qword_56560, &qword_3FFB8);
  v39 = (v27 + *(result + 36));
  *v39 = v35;
  v39[1] = v37;
  return result;
}

void sub_15718()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 mainScreen];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v42.origin.x = v6;
    v42.origin.y = v8;
    v42.size.width = v10;
    v42.size.height = v12;
    Height = CGRectGetHeight(v42);
    v14 = [v2 mainScreen];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v43.origin.x = v16;
    v43.origin.y = v18;
    v43.size.width = v20;
    v43.size.height = v22;
    Width = CGRectGetWidth(v43);

    if (Height >= Width)
    {
      v24 = [v2 mainScreen];
      [v24 bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v44.origin.x = v26;
      v44.origin.y = v28;
      v44.size.width = v30;
      v44.size.height = v32;
      CGRectGetWidth(v44);
      v33 = [v2 mainScreen];
      [v33 bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v45.origin.x = v35;
      v45.origin.y = v37;
      v45.size.width = v39;
      v45.size.height = v41;
      CGRectGetHeight(v45);
    }
  }

  else
  {
    type metadata accessor for MultiTaskingSectionViewModel(0);
    sub_16C98(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel, &unk_41B80);
    sub_3CB34();
    __break(1u);
  }
}

uint64_t sub_15928@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_3CAE4();
  v3 = *(v2 - 8);
  v18 = v2;
  v19 = v3;
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_4FF4(&qword_56410, &qword_3FCF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v17 = sub_4FF4(&qword_56418, &qword_3FCF8);
  __chkstk_darwin(v17);
  v11 = &v17 - v10;
  v12 = swift_allocObject();
  v13 = *(v1 + 48);
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(v1 + 64);
  v14 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v14;
  v21 = v1;
  sub_16B78(v1, &v22);
  sub_4FF4(&qword_56420, &qword_3FD00);
  sub_56BC(&qword_56428, &qword_56420, &qword_3FD00, &protocol conformance descriptor for VStack<A>);
  sub_3D1D4();
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_3D6E4(45);

  v22 = 0xD00000000000002BLL;
  v23 = 0x8000000000043430;
  sub_3D534(*(v1 + 40));
  sub_56BC(&qword_56430, &qword_56410, &qword_3FCF0, &protocol conformance descriptor for Button<A>);
  sub_3D074();

  (*(v7 + 8))(v9, v6);
  sub_3CAD4();
  sub_16BB0();
  sub_16C98(&qword_56440, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v15 = v18;
  sub_3D014();
  (*(v19 + 8))(v5, v15);
  return sub_11A14(v11, &qword_56418, &qword_3FCF8);
}

void sub_15CCC(unsigned __int8 *a1)
{
  v1 = *(a1 + 7);
  if (v1)
  {
    v2 = *a1;
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    sub_3C8A4();
    if (qword_559A0 != -1)
    {
      swift_once();
    }

    sub_1C380(v2);
  }

  else
  {
    type metadata accessor for MultiTaskingSectionViewModel(0);
    sub_16C98(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel, &unk_41B80);
    sub_3CB34();
    __break(1u);
  }
}

uint64_t sub_15DD4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_3CCD4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_4FF4(&qword_56448, &qword_3FD08);
  return sub_15E28(a1, a2 + *(v4 + 44));
}

uint64_t sub_15E28@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4FF4(&qword_56450, &qword_3FD10);
  v107 = *(v4 - 8);
  v108 = v4;
  __chkstk_darwin(v4);
  v113 = &v97 - v5;
  v104 = sub_4FF4(&qword_56458, &qword_3FD18);
  __chkstk_darwin(v104);
  v101 = &v97 - v6;
  v99 = sub_4FF4(&qword_56460, &qword_3FD20);
  __chkstk_darwin(v99);
  v103 = &v97 - v7;
  v100 = sub_4FF4(&qword_56468, &qword_3FD28);
  __chkstk_darwin(v100);
  v106 = &v97 - v8;
  v105 = sub_4FF4(&qword_56470, &qword_3FD30);
  v9 = __chkstk_darwin(v105);
  v111 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v102 = &v97 - v12;
  __chkstk_darwin(v11);
  v110 = &v97 - v13;
  v98 = sub_4FF4(&qword_56478, &qword_3FD38);
  v14 = __chkstk_darwin(v98);
  v109 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v114 = &v97 - v16;
  v17 = *(a1 + 7);
  if (!v17)
  {
    type metadata accessor for MultiTaskingSectionViewModel(0);
    sub_16C98(&qword_56480, type metadata accessor for MultiTaskingSectionViewModel, &unk_41B80);
    result = sub_3CB34();
    __break(1u);
    return result;
  }

  v18 = 0xED0000656D695441;
  v19 = 0x7441707041656E4FLL;
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v17;
  sub_3C894();

  v21 = *&v130[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v112 = a2;
  if ((v130[0] & 1) == 0)
  {

    v23 = *a1;
    goto LABEL_7;
  }

  v22 = sub_32AC4();

  v23 = *a1;
  if ((v22 & 1) == 0)
  {
LABEL_7:
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v18 = 0x8000000000043480;
        v19 = 0xD000000000000012;
      }

      else
      {
        v19 = 0x6E614D6567617453;
        v18 = 0xEC00000072656761;
      }
    }

    else if (v23)
    {
      v19 = 0x694D6E6565726353;
      v18 = 0xEF676E69726F7272;
    }

    sub_15718();
    LOBYTE(v121[0]) = 1;
    *&v124 = v19;
    *(&v124 + 1) = v18;
    *&v125 = v24;
    BYTE8(v125) = 1;
    HIBYTE(v129) = 1;
    goto LABEL_14;
  }

  if (*a1 <= 1u || v23 == 2)
  {
    v92 = sub_3D804();

    if (v92)
    {
      goto LABEL_24;
    }

    goto LABEL_7;
  }

LABEL_24:
  v93 = sub_3CC94();
  LOBYTE(v115) = 0;
  sub_15718();
  v95 = v94;
  sub_15718();
  LOBYTE(v121[0]) = 0;
  *&v124 = v93;
  *(&v124 + 1) = 0x4010000000000000;
  LOBYTE(v125) = v115;
  *(&v125 + 1) = 0xD00000000000001DLL;
  *&v126 = 0x80000000000434A0;
  *(&v126 + 1) = v95;
  LOBYTE(v127) = 1;
  *(&v127 + 1) = 0xD00000000000001DLL;
  *&v128 = 0x80000000000434C0;
  *(&v128 + 1) = v96;
  v129 = 65537;
LABEL_14:
  sub_4FF4(&qword_56488, &qword_3FDD0);
  sub_4FF4(&qword_56490, &qword_3FDD8);
  sub_16CF0();
  sub_16DA8();
  sub_3CDB4();
  v25 = qword_55980;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_572B8;
  v27 = sub_3CF84();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  KeyPath = swift_getKeyPath();
  v35 = sub_3CEF4();
  v36 = swift_getKeyPath();
  LOBYTE(v121[0]) = v31 & 1;
  *&v124 = v27;
  *(&v124 + 1) = v29;
  LOBYTE(v125) = v31 & 1;
  *(&v125 + 1) = v33;
  *&v126 = KeyPath;
  BYTE8(v126) = 1;
  *&v127 = v36;
  *(&v127 + 1) = v35;
  sub_3CED4();
  sub_4FF4(&qword_564C8, &unk_42240);
  sub_16F8C();
  v37 = v114;
  sub_3D004();
  v123[0] = v124;
  v123[1] = v125;
  v123[2] = v126;
  v123[3] = v127;
  sub_11A14(v123, &qword_564C8, &unk_42240);
  v38 = sub_3D104();
  v39 = swift_getKeyPath();
  v40 = (v37 + *(sub_4FF4(&qword_56508, &qword_3FE98) + 36));
  *v40 = v39;
  v40[1] = v38;
  LOBYTE(v38) = sub_3CEB4();
  sub_3C924();
  v41 = v37 + *(v98 + 36);
  *v41 = v38;
  *(v41 + 8) = v42;
  *(v41 + 16) = v43;
  *(v41 + 24) = v44;
  *(v41 + 32) = v45;
  *(v41 + 40) = 0;
  v46 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  sub_2FF80(v46, v124);
  v47 = sub_3D144();
  v48 = sub_3CEE4();
  v49 = swift_getKeyPath();
  *&v124 = v47;
  *(&v124 + 1) = v49;
  *&v125 = v48;
  sub_3CED4();
  sub_4FF4(&qword_56510, &qword_3FEE8);
  sub_1715C();
  sub_3D004();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (sub_2FF80(v46, v124))
  {
    v50 = sub_3D0B4();
  }

  else
  {
    v51 = [objc_opt_self() tertiaryLabelColor];
    v50 = sub_3D114();
  }

  v52 = v50;
  v53 = v112;
  v54 = swift_getKeyPath();
  v55 = v101;
  (*(v107 + 32))(v101, v113, v108);
  v56 = (v55 + *(v104 + 36));
  *v56 = v54;
  v56[1] = v52;
  v57 = v103;
  sub_17214(v55, v103, &qword_56458, &qword_3FD18);
  *(v57 + *(v99 + 36)) = 256;
  LOBYTE(v52) = sub_3CE94();
  sub_3C924();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v57;
  v67 = v106;
  sub_17214(v66, v106, &qword_56460, &qword_3FD20);
  v68 = v67 + *(v100 + 36);
  *v68 = v52;
  *(v68 + 8) = v59;
  *(v68 + 16) = v61;
  *(v68 + 24) = v63;
  *(v68 + 32) = v65;
  *(v68 + 40) = 0;
  LOBYTE(v52) = sub_3CEA4();
  sub_3C924();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = v67;
  v78 = v102;
  sub_17214(v77, v102, &qword_56468, &qword_3FD28);
  v79 = v78 + *(v105 + 36);
  *v79 = v52;
  *(v79 + 8) = v70;
  *(v79 + 16) = v72;
  *(v79 + 24) = v74;
  *(v79 + 32) = v76;
  *(v79 + 40) = 0;
  v80 = v110;
  sub_17214(v78, v110, &qword_56470, &qword_3FD30);
  v117 = v130[2];
  v118 = v130[3];
  v119 = v130[4];
  v120 = v131;
  v115 = v130[0];
  v116 = v130[1];
  v81 = v114;
  v82 = v109;
  sub_E1E8(v114, v109, &qword_56478, &qword_3FD38);
  v83 = v111;
  sub_E1E8(v80, v111, &qword_56470, &qword_3FD30);
  v84 = v118;
  v121[2] = v117;
  v121[3] = v118;
  v85 = v119;
  v121[4] = v119;
  v86 = v120;
  v122 = v120;
  v87 = v115;
  v88 = v116;
  v121[0] = v115;
  v121[1] = v116;
  *(v53 + 32) = v117;
  *(v53 + 48) = v84;
  *(v53 + 64) = v85;
  *(v53 + 80) = v86;
  *v53 = v87;
  *(v53 + 16) = v88;
  v89 = sub_4FF4(&qword_56520, &qword_3FEF0);
  sub_E1E8(v82, v53 + v89[12], &qword_56478, &qword_3FD38);
  v90 = v53 + v89[16];
  *v90 = 0;
  *(v90 + 8) = 0;
  sub_E1E8(v83, v53 + v89[20], &qword_56470, &qword_3FD30);
  sub_1727C(v121, &v124);
  sub_11A14(v80, &qword_56470, &qword_3FD30);
  sub_11A14(v81, &qword_56478, &qword_3FD38);
  sub_11A14(v83, &qword_56470, &qword_3FD30);
  sub_11A14(v82, &qword_56478, &qword_3FD38);
  v126 = v117;
  v127 = v118;
  v128 = v119;
  v129 = v120;
  v124 = v115;
  v125 = v116;
  return sub_11A14(&v124, &qword_56528, &qword_3FEF8);
}

uint64_t sub_16B18()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_16BB0()
{
  result = qword_56438;
  if (!qword_56438)
  {
    sub_5674(&qword_56418, &qword_3FCF8);
    sub_56BC(&qword_56430, &qword_56410, &qword_3FCF0, &protocol conformance descriptor for Button<A>);
    sub_16C98(&qword_55DE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56438);
  }

  return result;
}

uint64_t sub_16C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_16CF0()
{
  result = qword_56498;
  if (!qword_56498)
  {
    sub_5674(&qword_56488, &qword_3FDD0);
    sub_56BC(&qword_564A0, &qword_564A8, &qword_3FDE0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56498);
  }

  return result;
}

unint64_t sub_16DA8()
{
  result = qword_564B0;
  if (!qword_564B0)
  {
    sub_5674(&qword_56490, &qword_3FDD8);
    sub_16E34();
    sub_16E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_564B0);
  }

  return result;
}

unint64_t sub_16E34()
{
  result = qword_564B8;
  if (!qword_564B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_564B8);
  }

  return result;
}

unint64_t sub_16E88()
{
  result = qword_564C0;
  if (!qword_564C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_564C0);
  }

  return result;
}

uint64_t sub_16EDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3CBC4();
  *a1 = result;
  return result;
}

uint64_t sub_16F08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3CBC4();
  *a1 = result;
  return result;
}

unint64_t sub_16F8C()
{
  result = qword_564D0;
  if (!qword_564D0)
  {
    sub_5674(&qword_564C8, &unk_42240);
    sub_17044();
    sub_56BC(&qword_564F8, &qword_56500, &qword_3FE60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_564D0);
  }

  return result;
}

unint64_t sub_17044()
{
  result = qword_564D8;
  if (!qword_564D8)
  {
    sub_5674(&qword_564E0, &qword_3FE50);
    sub_56BC(&qword_564E8, &qword_564F0, &qword_3FE58, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_564D8);
  }

  return result;
}

uint64_t sub_170FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3CB74();
  *a1 = result;
  return result;
}

unint64_t sub_1715C()
{
  result = qword_56518;
  if (!qword_56518)
  {
    sub_5674(&qword_56510, &qword_3FEE8);
    sub_56BC(&qword_564F8, &qword_56500, &qword_3FE60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56518);
  }

  return result;
}

uint64_t sub_17214(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4FF4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1727C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_56528, &qword_3FEF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_172EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_17334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_17384()
{
  sub_5674(&qword_56418, &qword_3FCF8);
  sub_3CAE4();
  sub_16BB0();
  sub_16C98(&qword_56440, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_17454(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CAF4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_174B8(uint64_t a1)
{
  v2 = sub_3CAF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_17518()
{
  result = qword_56568;
  if (!qword_56568)
  {
    sub_5674(&qword_56540, &qword_3FF98);
    sub_175D0();
    sub_56BC(&qword_565A0, &qword_56560, &qword_3FFB8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56568);
  }

  return result;
}

unint64_t sub_175D0()
{
  result = qword_56570;
  if (!qword_56570)
  {
    sub_5674(&qword_56530, &qword_3FF88);
    sub_17688();
    sub_56BC(&qword_56598, &qword_56538, &qword_3FF90, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56570);
  }

  return result;
}

unint64_t sub_17688()
{
  result = qword_56578;
  if (!qword_56578)
  {
    sub_5674(&qword_56580, &qword_3FFC0);
    sub_17714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56578);
  }

  return result;
}

unint64_t sub_17714()
{
  result = qword_56588;
  if (!qword_56588)
  {
    sub_5674(&qword_56590, &qword_3FFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56588);
  }

  return result;
}

unint64_t sub_177CC()
{
  result = qword_56640;
  if (!qword_56640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56640);
  }

  return result;
}

uint64_t sub_1783C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_3CA74();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_3C6A4();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = sub_3C6E4();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v7 = sub_3C7C4();
  v3[19] = v7;
  v3[20] = *(v7 - 8);
  v3[21] = swift_task_alloc();
  sub_4FF4(&qword_56660, &qword_40090);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_3D594();
  v3[25] = sub_3D584();
  v9 = sub_3D564();

  return _swift_task_switch(sub_17AA4, v9, v8);
}

uint64_t sub_17AA4()
{
  v1 = v0[24];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[17];

  sub_3D444();
  sub_3C6C4();
  (*(v4 + 8))(v3, v5);
  sub_18328(v1, v2);
  v8 = *(v7 + 48);
  if (v8(v2, 1, v6) == 1)
  {
    sub_18398(v0[23]);
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[23], v0[16]);
    result = sub_3C6B4();
    if (result)
    {
      v10 = result;
      v56 = v8;
      v11 = *(result + 16);
      if (v11)
      {
        v12 = 0;
        v13 = v0[13];
        v14 = (v13 + 8);
        while (1)
        {
          if (v12 >= *(v10 + 16))
          {
LABEL_42:
            __break(1u);
            return result;
          }

          (*(v13 + 16))(v0[14], v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12, v0[12]);
          if (sub_3C684() == 0x7265727265666572 && v15 == 0xE800000000000000)
          {
            break;
          }

          v17 = sub_3D804();

          if (v17)
          {
            goto LABEL_16;
          }

          ++v12;
          result = (*v14)(v0[14], v0[12]);
          if (v11 == v12)
          {
            goto LABEL_13;
          }
        }

LABEL_16:
        v18 = v0[14];
        v19 = v0[15];
        v20 = v0[12];
        v21 = v0[13];

        (*(v21 + 32))(v19, v18, v20);
        v22 = sub_3C694();
        v24 = v23;
        (*v14)(v19, v20);
        v25 = v24;
        v27 = v0[17];
        v26 = v0[18];
        v28 = v0[16];
        if (v25)
        {
          sub_C50C(v22, v25);
        }

        (*(v27 + 8))(v26, v28);
      }

      else
      {
LABEL_13:
        (*(v0[17] + 8))(v0[18], v0[16]);
      }

      v8 = v56;
    }

    else
    {
      (*(v0[17] + 8))(v0[18], v0[16]);
    }
  }

  v29 = v0[22];
  v30 = v0[16];
  sub_18328(v0[24], v29);
  v31 = v8(v29, 1, v30);
  v32 = v0[22];
  if (v31 == 1)
  {
    sub_18398(v0[22]);
  }

  else
  {
    v33 = v0[16];
    v34 = v0[17];
    v35 = sub_3C6D4();
    v37 = v36;
    (*(v34 + 8))(v32, v33);
    v0[2] = v35;
    v0[3] = v37;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_18400();
    v38 = sub_3D664();

    v39 = 0;
    v40 = *(v38 + 16);
LABEL_23:
    v41 = (v38 + 40 + 16 * v39);
    while (v40 != v39)
    {
      if (v39 >= *(v38 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      v43 = *(v41 - 1);
      v42 = *v41;
      v41 += 2;
      ++v39;
      v44 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v44 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (v44)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_18454(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v46 = _swiftEmptyArrayStorage[2];
        v45 = _swiftEmptyArrayStorage[3];
        if (v46 >= v45 >> 1)
        {
          result = sub_18454((v45 > 1), v46 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v46 + 1;
        v47 = &_swiftEmptyArrayStorage[2 * v46];
        v47[4] = v43;
        v47[5] = v42;
        goto LABEL_23;
      }
    }

    if (_swiftEmptyArrayStorage[2])
    {
      v48 = _swiftEmptyArrayStorage[4];
      v49 = _swiftEmptyArrayStorage[5];

      v50 = sub_D13C(v48, v49);
      if (v50 != 10)
      {
        sub_C71C(v50);
      }
    }

    else
    {
    }
  }

  v51 = v0[24];
  v52 = v0[10];
  v53 = v0[11];
  v54 = v0[9];
  sub_3D434();
  sub_3D454();
  (*(v52 + 8))(v53, v54);
  sub_18398(v51);

  v55 = v0[1];

  return v55();
}

uint64_t sub_17FD4()
{
  v0 = sub_4FF4(&qword_56648, &qword_40078);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  type metadata accessor for MultitaskingAndGesturesSettingsList(0);
  sub_181C0();

  sub_3D464();
  sub_182C4();

  sub_3D424();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1812C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MultitaskingAndGesturesSettingsListViewModel(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 10;
  result = sub_3C814();
  *a1 = v2;
  return result;
}

uint64_t sub_18184@<X0>(char *a1@<X8>)
{

  return sub_10DB0(v2, a1);
}

unint64_t sub_181C0()
{
  result = qword_56650;
  if (!qword_56650)
  {
    type metadata accessor for MultitaskingAndGesturesSettingsList(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56650);
  }

  return result;
}

uint64_t sub_18218(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_5440;

  return sub_1783C(a1, a2, v2);
}

unint64_t sub_182C4()
{
  result = qword_56658;
  if (!qword_56658)
  {
    sub_5674(&qword_56648, &qword_40078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56658);
  }

  return result;
}

uint64_t sub_18328(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_56660, &qword_40090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18398(uint64_t a1)
{
  v2 = sub_4FF4(&qword_56660, &qword_40090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18400()
{
  result = qword_56668;
  if (!qword_56668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56668);
  }

  return result;
}

char *sub_18454(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_18474(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_18474(char *result, int64_t a2, char a3, char *a4)
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
    sub_4FF4(&qword_56670, &qword_40098);
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

uint64_t sub_18594()
{
  sub_5674(&qword_56648, &qword_40078);
  sub_182C4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_185F8(uint64_t a1, unsigned __int8 a2)
{
  sub_3D524();
}

Swift::Int sub_1873C(uint64_t a1, unsigned __int8 a2)
{
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

unint64_t sub_188BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_188EC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472617473;
  v5 = 0xEB00000000697261;
  v6 = 0x666153206E65704FLL;
  if (v2 != 6)
  {
    v6 = 0x6E7275746572;
    v5 = 0xE600000000000000;
  }

  v7 = 0x8000000000042430;
  v8 = 0xD000000000000018;
  if (v2 != 4)
  {
    v8 = 0xD000000000000019;
    v7 = 0x8000000000042450;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00007365676173;
  v10 = 0x73654D206E65704FLL;
  if (v2 != 2)
  {
    v10 = 0xD000000000000019;
    v9 = 0x8000000000042410;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000000000423E0;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_18A10(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x73654D2065766F4DLL;
    v7 = 0x6E7275746572;
    if (a1 == 10)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000015;
    v9 = 0x73654D206E65704FLL;
    if (a1 != 7)
    {
      v9 = 0x4D20657A69736552;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7472617473;
    v2 = 0x666153206E65704FLL;
    v3 = 0x5320657A69736552;
    if (a1 != 4)
    {
      v3 = 0x6661532065766F4DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6F48206570697753;
    if (a1 != 1)
    {
      v4 = 0xD000000000000019;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_18BD4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_18A10(*a1);
  v5 = v4;
  if (v3 == sub_18A10(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3D804();
  }

  return v8 & 1;
}

Swift::Int sub_18C5C()
{
  v1 = *v0;
  sub_3D844();
  sub_18A10(v1);
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_18CC0(uint64_t a1)
{
  sub_18A10(*v1);
  sub_3D524();
}

Swift::Int sub_18D14(uint64_t a1)
{
  v2 = *v1;
  sub_3D844();
  sub_18A10(v2);
  sub_3D524();

  return sub_3D864();
}

unint64_t sub_18D74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B22C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_18DA4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18A10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18DE0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73654D2070617753;
  v4 = 0xED00007365676173;
  if (v2 != 1)
  {
    v3 = 0x6E7275746572;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x73654D2070617753;
  v8 = 0xED00007365676173;
  if (*a2 != 1)
  {
    v7 = 0x6E7275746572;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7472617473;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3D804();
  }

  return v11 & 1;
}

Swift::Int sub_18EF0()
{
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_18F98(uint64_t a1)
{
  sub_3D524();
}

Swift::Int sub_1902C(uint64_t a1)
{
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

unint64_t sub_190D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B278(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_19100(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xED00007365676173;
  v5 = 0x73654D2070617753;
  if (v2 != 1)
  {
    v5 = 0x6E7275746572;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7472617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_19174(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    return 0x7060504030201uLL >> (8 * a1);
  }

  if (a1 >> 6 == 1)
  {
    return aAbcdefghijk[a1 & 0x3F];
  }

  return 0x808281u >> (8 * (a1 & 0x3F));
}

uint64_t sub_191D0(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    if (a1 <= 3u)
    {
      v2 = 0x7472617473;
      v3 = 0x73654D206E65704FLL;
      if (a1 != 2)
      {
        v3 = 0xD000000000000019;
      }

      if (a1)
      {
        v2 = 0xD000000000000016;
      }

      v6 = a1 <= 1u;
      goto LABEL_19;
    }

    v8 = 0x666153206E65704FLL;
    if (a1 != 6)
    {
      v8 = 0x6E7275746572;
    }

    v10 = 0xD000000000000018;
    if (a1 != 4)
    {
      v10 = 0xD000000000000019;
    }

    v12 = a1 <= 5u;
    goto LABEL_42;
  }

  if (a1 >> 6 == 1)
  {
    v1 = a1 & 0x3F;
    if (v1 <= 5)
    {
      v2 = 0x7472617473;
      v3 = 0x666153206E65704FLL;
      v4 = 0x5320657A69736552;
      if (v1 != 4)
      {
        v4 = 0x6661532065766F4DLL;
      }

      if (v1 != 3)
      {
        v3 = v4;
      }

      v5 = 0x6F48206570697753;
      if (v1 != 1)
      {
        v5 = 0xD000000000000019;
      }

      if ((a1 & 0x3F) != 0)
      {
        v2 = v5;
      }

      v6 = (a1 & 0x3Fu) <= 2;
LABEL_19:
      if (v6)
      {
        return v2;
      }

      else
      {
        return v3;
      }
    }

    v8 = 0x73654D2065766F4DLL;
    v9 = 0xD000000000000014;
    if (v1 != 10)
    {
      v9 = 0x6E7275746572;
    }

    if (v1 != 9)
    {
      v8 = v9;
    }

    v10 = 0xD000000000000015;
    v11 = 0x73654D206E65704FLL;
    if (v1 != 7)
    {
      v11 = 0x4D20657A69736552;
    }

    if (v1 != 6)
    {
      v10 = v11;
    }

    v12 = (a1 & 0x3Fu) <= 8;
LABEL_42:
    if (v12)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  if ((a1 & 0x3F) == 0)
  {
    return 0x7472617473;
  }

  if ((a1 & 0x3F) == 1)
  {
    return 0x73654D2070617753;
  }

  return 0x6E7275746572;
}

uint64_t sub_19508()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_1957C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

id sub_195FC(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingWindowManagementPackageViewModel__isAnimating;
  v13 = 0;
  sub_3C874();
  (*(v5 + 32))(&v1[v8], v7, v4);
  *&v1[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingWindowManagementPackageViewModel_animationTask] = 0;
  if (a1)
  {
    swift_beginAccess();
    if (a1 == 1)
    {
      v9 = 64;
    }

    else
    {
      v9 = 0x80;
    }

    v12 = v9;
  }

  else
  {
    swift_beginAccess();
    v12 = 0;
  }

  sub_3C874();
  swift_endAccess();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

double sub_19794()
{
  v1 = v0;
  v2 = sub_4FF4(&qword_55AC8, &qword_3E440);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3];
  v5 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingWindowManagementPackageViewModel_animationTask;
  if (*&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingWindowManagementPackageViewModel_animationTask])
  {

    sub_3D5C4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12[15] = 1;
  v6 = v0;
  sub_3C8A4();
  v7 = sub_3D5B4();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_3D594();
  v8 = v6;
  v9 = sub_3D584();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  *&v1[v5] = sub_1E9E0(0, 0, v4, &unk_40558, v10);

  return result;
}

uint64_t sub_19954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_3D704();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_3D714();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_3D594();
  v4[15] = sub_3D584();
  v8 = sub_3D564();
  v4[16] = v8;
  v4[17] = v7;

  return _swift_task_switch(sub_19AB0, v8, v7);
}

uint64_t sub_19AB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (*(v0 + 33) == 1 && (sub_3D5D4() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3C894();

    v3 = sub_3D874();
    v5 = v4;
    sub_3D834();
    *(v0 + 40) = v3;
    *(v0 + 48) = v5;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return _swift_task_switch(sub_19C80, 0, 0);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_19C80()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_1B3C8(&qword_56720, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_3D814();
  sub_1B3C8(&qword_56728, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_3D724();
  v5 = *(v2 + 8);
  v0[18] = v5;
  v0[19] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_19E04;
  v8 = v0[11];
  v7 = v0[12];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v7, v4);
}

uint64_t sub_19E04()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[11];
    v5 = v2[8];

    v3(v4, v5);
    v6 = sub_1A1F0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = v2[13];
    v9 = v2[14];
    v11 = v2[12];
    (v2[18])(v2[11], v2[8]);
    (*(v10 + 8))(v9, v11);
    v7 = v2[16];
    v8 = v2[17];
    v6 = sub_19F78;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_19F78(__n128 a1)
{
  if (sub_3D5D4() & 1) != 0 || (v2 = *(v1 + 56), swift_getKeyPath(), swift_getKeyPath(), sub_3C894(), , , v3 = sub_19174(*(v1 + 35)), swift_getKeyPath(), swift_getKeyPath(), *(v1 + 36) = v3, v4 = v2, sub_3C8A4(), swift_getKeyPath(), swift_getKeyPath(), sub_3C894(), , , (*(v1 + 33) & 1) == 0) || (sub_3D5D4())
  {

    v5 = *(v1 + 8);

    return v5();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3C894();

    v7 = sub_3D874();
    v9 = v8;
    sub_3D834();
    *(v1 + 40) = v7;
    *(v1 + 48) = v9;
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 1;

    return _swift_task_switch(sub_19C80, 0, 0);
  }
}

uint64_t sub_1A1F0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[16];
  v2 = v0[17];

  return _swift_task_switch(sub_1B410, v1, v2);
}

uint64_t sub_1A264()
{
  if (*&v0[OBJC_IVAR____TtC31MultitaskingAndGesturesSettings44MultitaskingWindowManagementPackageViewModel_animationTask])
  {

    sub_3D5C4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_3C8A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_3C8A4();
}

uint64_t type metadata accessor for MultitaskingWindowManagementPackageViewModel(uint64_t a1)
{
  result = qword_566B8;
  if (!qword_566B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4F8(uint64_t a1)
{
  sub_A260(319, &qword_566C8, &type metadata for MultitaskingAnimationState);
  if (v1 <= 0x3F)
  {
    sub_A260(319, &qword_55A10, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for MultitaskingAnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 242 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 242) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 242;
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

      return (*a1 | (v4 << 8)) - 242;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 242;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for MultitaskingAnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
    *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1A784(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v3;
}

uint64_t sub_1A804(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_3C8A4();
}

uint64_t sub_1A874(uint64_t a1, uint64_t a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        v2 = 0x7472617473;
        v3 = a2 & 0x3F;
        v4 = a1 & 0x3F;
        if (v4 > 5)
        {
          v17 = 0x73654D2065766F4DLL;
          v18 = 0xED00007365676173;
          v19 = 0x80000000000424F0;
          v20 = 0x6E7275746572;
          if (v4 == 10)
          {
            v20 = 0xD000000000000014;
          }

          else
          {
            v19 = 0xE600000000000000;
          }

          if (v4 != 9)
          {
            v17 = v20;
            v18 = v19;
          }

          v21 = 0x80000000000424B0;
          v22 = 0xD000000000000015;
          v23 = 0x73654D206E65704FLL;
          v24 = 0xED00007365676173;
          if (v4 != 7)
          {
            v23 = 0x4D20657A69736552;
            v24 = 0xEF73656761737365;
          }

          if (v4 != 6)
          {
            v22 = v23;
            v21 = v24;
          }

          if ((a1 & 0x3Fu) <= 8)
          {
            v12 = v22;
          }

          else
          {
            v12 = v17;
          }

          if (v4 <= 8)
          {
            v13 = v21;
          }

          else
          {
            v13 = v18;
          }

          if ((a2 & 0x3Fu) > 5)
          {
LABEL_21:
            if ((a2 & 0x3Fu) > 8)
            {
              if (v3 == 9)
              {
                v14 = 1702260557;
LABEL_80:
                v2 = v14 | 0x73654D2000000000;
                v25 = 0xED00007365676173;
                goto LABEL_67;
              }

              if (v3 == 10)
              {
                v2 = 0xD000000000000014;
                v25 = 0x80000000000424F0;
              }

              else
              {
                v25 = 0xE600000000000000;
                v2 = 0x6E7275746572;
              }
            }

            else
            {
              if (v3 != 6)
              {
                if (v3 != 7)
                {
                  v2 = 0x4D20657A69736552;
                  v25 = 0xEF73656761737365;
                  goto LABEL_67;
                }

                v14 = 1852141647;
                goto LABEL_80;
              }

              v25 = 0x80000000000424B0;
              v2 = 0xD000000000000015;
            }

            goto LABEL_67;
          }
        }

        else
        {
          v5 = 0xE500000000000000;
          v6 = 0x666153206E65704FLL;
          v7 = 0xEB00000000697261;
          v8 = 0x5320657A69736552;
          v9 = 0xED00006972616661;
          if (v4 != 4)
          {
            v8 = 0x6661532065766F4DLL;
            v9 = 0xEB00000000697261;
          }

          if (v4 != 3)
          {
            v6 = v8;
            v7 = v9;
          }

          v10 = 0x6F48206570697753;
          v11 = 0xEA0000000000656DLL;
          if (v4 != 1)
          {
            v10 = 0xD000000000000019;
            v11 = 0x8000000000042410;
          }

          if ((a1 & 0x3F) != 0)
          {
            v5 = v11;
          }

          else
          {
            v10 = 0x7472617473;
          }

          if ((a1 & 0x3Fu) <= 2)
          {
            v12 = v10;
          }

          else
          {
            v12 = v6;
          }

          if (v4 <= 2)
          {
            v13 = v5;
          }

          else
          {
            v13 = v7;
          }

          if ((a2 & 0x3Fu) > 5)
          {
            goto LABEL_21;
          }
        }

        if ((a2 & 0x3Fu) > 2)
        {
          if (v3 == 3)
          {
            v29 = 1852141647;
          }

          else
          {
            if (v3 == 4)
            {
              v2 = 0x5320657A69736552;
              v25 = 0xED00006972616661;
              goto LABEL_67;
            }

            v29 = 1702260557;
          }

          v2 = v29 | 0x6661532000000000;
          v25 = 0xEB00000000697261;
          goto LABEL_67;
        }

        if ((a2 & 0x3F) != 0)
        {
          if (v3 == 1)
          {
            v2 = 0x6F48206570697753;
            v25 = 0xEA0000000000656DLL;
          }

          else
          {
            v25 = 0x8000000000042410;
            v2 = 0xD000000000000019;
          }
        }

        else
        {
          v25 = 0xE500000000000000;
        }

LABEL_67:
        if (v12 == v2 && v13 == v25)
        {

          return 1;
        }

        else
        {
          v28 = sub_3D804();

          return v28 & 1;
        }
      }
    }

    else if ((a2 & 0xC0) == 0x80)
    {
      v16 = a1 & 0x3F;
      if ((a1 & 0x3F) != 0)
      {
        if (v16 == 1)
        {
          v12 = 0x73654D2070617753;
        }

        else
        {
          v12 = 0x6E7275746572;
        }

        if (v16 == 1)
        {
          v13 = 0xED00007365676173;
        }

        else
        {
          v13 = 0xE600000000000000;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        v12 = 0x7472617473;
      }

      v26 = 0x73654D2070617753;
      v27 = 0xED00007365676173;
      if ((a2 & 0x3F) != 1)
      {
        v26 = 0x6E7275746572;
        v27 = 0xE600000000000000;
      }

      if ((a2 & 0x3F) != 0)
      {
        v2 = v26;
      }

      else
      {
        v2 = 0x7472617473;
      }

      if ((a2 & 0x3F) != 0)
      {
        v25 = v27;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      goto LABEL_67;
    }

    return 0;
  }

  if (a2 > 0x3Fu)
  {
    return 0;
  }

  return sub_300F4(a1, a2);
}

uint64_t getEnumTagSinglePayload for MultitaskingAnimationState.MultitaskingWindowedAppsAnimationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MultitaskingAnimationState.MultitaskingWindowedAppsAnimationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}