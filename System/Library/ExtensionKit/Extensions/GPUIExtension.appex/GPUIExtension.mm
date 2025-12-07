uint64_t sub_100001968()
{
  v1 = sub_1000032E4(&qword_10000C4D0, &qword_100006368);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  sub_100005BDC();
  swift_allocObject();
  v4 = sub_100005BCC();
  *(v0 + 16) = v4;

  v5 = sub_100005D9C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_100005D7C();

  v6 = sub_100005D6C();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v4;
  sub_100002DAC(0, 0, v3, &unk_100006378, v7);
}

uint64_t sub_100001AC8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_1000032E4(&qword_10000C4E0, &qword_100006398);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  __chkstk_darwin(v1);
  v4 = &v23 - v3;
  v5 = sub_1000032E4(&qword_10000C4E8, &qword_1000063A0);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = sub_1000032E4(&qword_10000C4F0, &qword_1000063A8);
  v10 = *(v9 - 8);
  v28 = v9;
  v29 = v10;
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v25 = sub_1000032E4(&qword_10000C4F8, &qword_1000063B0);
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v23 - v13;
  v24 = sub_1000032E4(&qword_10000C500, &qword_1000063B8);
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v16 = &v23 - v15;

  sub_1000032E4(&qword_10000C508, &unk_1000063C0);
  sub_10000398C();
  sub_100005B9C();

  sub_100005CDC();

  sub_100005CCC();

  sub_100005CAC();

  sub_100005C9C();
  sub_100003C2C(&qword_10000C520, &qword_10000C500, &qword_1000063B8, &protocol conformance descriptor for GPEditorScene<A>);
  sub_100003C2C(&qword_10000C528, &qword_10000C4F8, &qword_1000063B0, &protocol conformance descriptor for GPEditorWithSingleSelectionPickerScene<A>);
  sub_100003C2C(&qword_10000C530, &qword_10000C4F0, &qword_1000063A8, &protocol conformance descriptor for GPEditorWithMultiSelectionPickerScene<A>);
  sub_100003C2C(&qword_10000C538, &qword_10000C4E8, &qword_1000063A0, &protocol conformance descriptor for GPSingleSelectionPickerScene<A>);
  sub_100003C2C(&unk_10000C540, &qword_10000C4E0, &qword_100006398, &protocol conformance descriptor for GPMultiSelectionPickerScene<A>);
  v17 = v32;
  v18 = v30;
  v19 = v24;
  v20 = v25;
  v21 = v28;
  sub_100005BBC();
  (*(v33 + 8))(v4, v17);
  (*(v31 + 8))(v8, v18);
  (*(v29 + 8))(v12, v21);
  (*(v27 + 8))(v14, v20);
  return (*(v26 + 8))(v16, v19);
}

uint64_t sub_100002074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v22 = a2;
  v21 = sub_100005B1C();
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005C1C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005C2C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for CreationViewStyle.modalSheetEditor(_:), v9);
  v13 = sub_100002388(v12);
  (*(v10 + 8))(v12, v9);

  v14 = v20;
  sub_100005CBC();
  (*(v2 + 104))(v4, enum case for ImagePlaygroundScene.Identifier.editor(_:), v21);

  sub_100005C0C();
  sub_100003AC4(&qword_10000C518, 255, &type metadata accessor for PickerEditorView, &protocol conformance descriptor for PickerEditorView);
  v15 = v22;
  sub_100005D0C();
  (*(v6 + 8))(v8, v5);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v14;
  v17 = (v15 + *(sub_1000032E4(&qword_10000C508, &unk_1000063C0) + 36));
  *v17 = sub_100003CD4;
  v17[1] = v16;
  v17[2] = 0;
  v17[3] = 0;
}

uint64_t sub_100002388(uint64_t a1)
{
  v2 = sub_100005C2C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v25 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  v8 = sub_100005C5C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v23 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v21 - v12;
  v14 = [objc_allocWithZone(type metadata accessor for AppleConnectAuthenticator()) init];
  v21[1] = [objc_allocWithZone(GPAppleConnectTokenProvider) initWithAuthenticatingProtocol:v14];

  sub_100005C8C();
  swift_allocObject();
  v21[0] = sub_100005C7C();
  v15 = *(v3 + 16);
  v24 = a1;
  v15(v7, a1, v2);
  v16 = (*(v3 + 88))(v7, v2);
  if (v16 == enum case for CreationViewStyle.modalSheetEditorAndPickerSingleSelection(_:))
  {
    (*(v9 + 104))(v13, enum case for PhotoGridViewModel.PickerMode.singleSelection(_:), v8);
  }

  else
  {
    v17 = *(v9 + 104);
    if (v16 == enum case for CreationViewStyle.modalSheetEditorAndPickerMultiSelection(_:))
    {
      v17(v13, enum case for PhotoGridViewModel.PickerMode.multiSelection(_:), v8);
    }

    else
    {
      v17(v13, enum case for PhotoGridViewModel.PickerMode.none(_:), v8);
      (*(v3 + 8))(v7, v2);
    }
  }

  v18 = *(v22 + 16);
  *(v22 + 16) = 0;
  if (!v18)
  {
    sub_100005BDC();
    swift_allocObject();
    sub_100005BCC();
  }

  v15(v25, v24, v2);
  (*(v9 + 16))(v23, v13, v8);
  sub_100005B8C();
  swift_allocObject();
  v19 = sub_100005B6C();
  (*(v9 + 8))(v13, v8);
  return v19;
}

uint64_t sub_100002718(uint64_t a1, uint64_t a2)
{
  sub_100005B4C();
  sub_100005C3C();

  swift_unknownObjectRetain();
  sub_100005B7C();
  sub_100005B4C();
  swift_unknownObjectRetain();
  sub_100005C4C();
}

uint64_t sub_1000027A4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X2>, unsigned int *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v28 = a4;
  v29 = a5;
  v25 = a3;
  v26 = a6;
  v27 = a1;
  v24 = sub_100005B1C();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005C1C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005C2C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, *a2, v14);
  v18 = sub_100002388(v17);
  (*(v15 + 8))(v17, v14);
  (*(v7 + 104))(v9, *v25, v24);

  sub_100005C0C();
  sub_100003AC4(&qword_10000C518, 255, &type metadata accessor for PickerEditorView, &protocol conformance descriptor for PickerEditorView);
  v20 = v26;
  v19 = v27;
  sub_100005D0C();
  (*(v11 + 8))(v13, v10);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v18;
  v22 = (v20 + *(sub_1000032E4(&qword_10000C508, &unk_1000063C0) + 36));
  *v22 = v29;
  v22[1] = v21;
  v22[2] = 0;
  v22[3] = 0;
}

uint64_t sub_100002A8C(uint64_t a1, uint64_t a2)
{

  sub_100005CBC();
  sub_100005B4C();
  sub_100005C3C();

  swift_unknownObjectRetain();
  sub_100005B7C();
  sub_100005B5C();
  swift_unknownObjectRetain();
  sub_100005C6C();

  sub_100005B4C();
  swift_unknownObjectRetain();
  sub_100005C4C();
}

uint64_t sub_100002B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_100005D7C();
  v4[3] = sub_100005D6C();
  sub_100005BFC();
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100002C10;

  return static ServicesStartup.preWarmServices(in:)(a4);
}

uint64_t sub_100002C10()
{

  v1 = sub_100005D5C();

  return _swift_task_switch(sub_100002D4C, v1, v0);
}

uint64_t sub_100002D4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000032E4(&qword_10000C4D0, &qword_100006368);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100003514(a3, v25 - v10);
  v12 = sub_100005D9C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100003584(v11);
  }

  else
  {
    sub_100005D8C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100005D5C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100005D4C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100003584(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100003584(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000306C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1000030C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003AC4(&qword_10000C4D8, a2, type metadata accessor for UIExtension, &unk_1000062E4);

  return GPUIExtension.configuration.getter(a1, v3);
}

uint64_t sub_100003144@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_100001968();
  *a1 = v2;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for UIExtension();
  sub_100003AC4(&qword_10000C420, v3, type metadata accessor for UIExtension, &unk_100006324);
  sub_100005B3C();
  return 0;
}

uint64_t sub_1000032E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000332C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000336C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003420;

  return sub_100002B54(a1, v4, v5, v6);
}

uint64_t sub_100003420()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003514(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032E4(&qword_10000C4D0, &qword_100006368);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003584(uint64_t a1)
{
  v2 = sub_1000032E4(&qword_10000C4D0, &qword_100006368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000035EC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000036E4;

  return v6(a1);
}

uint64_t sub_1000036E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000037DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003814(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003EE8;

  return sub_1000035EC(a1, v4);
}

uint64_t sub_1000038CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003420;

  return sub_1000035EC(a1, v4);
}

unint64_t sub_10000398C()
{
  result = qword_10000C510;
  if (!qword_10000C510)
  {
    sub_100003A7C(&qword_10000C508, &unk_1000063C0);
    sub_100005C1C();
    sub_100003AC4(&qword_10000C518, 255, &type metadata accessor for PickerEditorView, &protocol conformance descriptor for PickerEditorView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C510);
  }

  return result;
}

uint64_t sub_100003A7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003AC4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100003C2C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003A7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003C94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003CDC()
{
  sub_100003A7C(&qword_10000C500, &qword_1000063B8);
  sub_100003A7C(&qword_10000C4F8, &qword_1000063B0);
  sub_100003A7C(&qword_10000C4F0, &qword_1000063A8);
  sub_100003A7C(&qword_10000C4E8, &qword_1000063A0);
  sub_100003A7C(&qword_10000C4E0, &qword_100006398);
  sub_100003C2C(&qword_10000C520, &qword_10000C500, &qword_1000063B8, &protocol conformance descriptor for GPEditorScene<A>);
  sub_100003C2C(&qword_10000C528, &qword_10000C4F8, &qword_1000063B0, &protocol conformance descriptor for GPEditorWithSingleSelectionPickerScene<A>);
  sub_100003C2C(&qword_10000C530, &qword_10000C4F0, &qword_1000063A8, &protocol conformance descriptor for GPEditorWithMultiSelectionPickerScene<A>);
  sub_100003C2C(&qword_10000C538, &qword_10000C4E8, &qword_1000063A0, &protocol conformance descriptor for GPSingleSelectionPickerScene<A>);
  sub_100003C2C(&unk_10000C540, &qword_10000C4E0, &qword_100006398, &protocol conformance descriptor for GPMultiSelectionPickerScene<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100003EEC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_100003F1C()
{
  v1[2] = v0;
  v2 = sub_100005CFC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_100005D7C();
  v1[7] = sub_100005D6C();
  v4 = sub_100005D5C();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_10000401C, v4, v3);
}

uint64_t sub_10000401C()
{
  sub_100005B2C();
  v1 = sub_100005CEC();
  v2 = sub_100005DAC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching auth token", v3, 2u);
  }

  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  v8 = *(v6 + 8);
  v8(v4, v5);
  v9 = *(v7 + OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_token + 8);
  if (v9)
  {
    v10 = *(v7 + OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_token);

    sub_100005B2C();
    v11 = sub_100005CEC();
    v12 = sub_100005DAC();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[5];
    v15 = v0[3];
    if (v13)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Reusing cached authentication token", v16, 2u);
    }

    v8(v14, v15);

    v17 = v0[1];

    return v17(v10, v9);
  }

  else
  {
    v19 = swift_task_alloc();
    v0[10] = v19;
    *v19 = v0;
    v19[1] = sub_10000428C;

    return sub_1000044C0();
  }
}

uint64_t sub_10000428C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_100004448;
  }

  else
  {
    v6[12] = a2;
    v6[13] = a1;
    v7 = v6[8];
    v8 = v6[9];
    v9 = sub_1000043C0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000043C0()
{

  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_100004448()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000044C0()
{
  v1[23] = v0;
  sub_100005D7C();
  v1[24] = sub_100005D6C();
  v3 = sub_100005D5C();
  v1[25] = v3;
  v1[26] = v2;

  return _swift_task_switch(sub_100004558, v3, v2);
}

uint64_t sub_100004558()
{
  v1 = sub_100005CFC();
  v0[27] = v1;
  v2 = *(v1 - 8);
  v3 = v2;
  v0[28] = v2;
  v0[29] = *(v2 + 64);
  v4 = swift_task_alloc();
  sub_100005B2C();
  v5 = sub_100005CEC();
  v6 = sub_100005DAC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting Apple Connect authentication", v7, 2u);
  }

  v8 = *(v3 + 8);
  v0[30] = v8;
  v8(v4, v1);

  if (ACAuthenticationRequest)
  {
    v9 = v0[23];
    v10 = [objc_allocWithZone(ACAuthenticationRequest) init];
    v0[31] = v10;
    [v10 setAuthType:3];
    v11 = *(v9 + OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_context);
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_100004848;
    v12 = swift_continuation_init();
    v0[17] = sub_1000032E4(&qword_10000C5F8, &qword_1000064B0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100004CBC;
    v0[13] = &unk_1000088C0;
    v0[14] = v12;
    [v11 authenticateWithRequest:v10 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    sub_100005780(v13, v14, v15);
    swift_allocError();
    *v16 = xmmword_1000063E0;
    swift_willThrow();
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100004848()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(sub_100004950, v2, v1);
}

uint64_t sub_100004950()
{

  v1 = v0[21];
  v2 = [v1 serviceTicket];
  if (v2)
  {
    v3 = v0[31];
    v4 = v0[23];
    v5 = v2;
    v6 = sub_100005D3C();
    v8 = v7;

    v9 = (v4 + OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_token);
    *v9 = v6;
    v9[1] = v8;

    v10 = v0[1];

    return v10(v6, v8);
  }

  else
  {
    v12 = swift_task_alloc();
    sub_100005B2C();
    v13 = v1;
    v14 = sub_100005CEC();
    v15 = sub_100005DBC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = [v13 error];
      if (v18)
      {
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      *(v16 + 4) = v18;
      *v17 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to authenticate: %@", v16, 0xCu);
      sub_100005894(v17);
    }

    v20 = v0[30];
    v21 = v0[27];

    v20(v12, v21);

    v22 = [v13 error];
    if (v22)
    {
      v25 = v22;
      swift_getErrorValue();
      v26 = v0[18];
      v27 = v0[19];
      v28 = *(v27 - 8);
      v29 = swift_task_alloc();
      (*(v28 + 16))(v29, v26, v27);

      v30 = sub_100005DCC();
      v32 = v31;
      (*(v28 + 8))(v29, v27);
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = v0[31];
    sub_100005780(v22, v23, v24);
    swift_allocError();
    *v34 = v30;
    v34[1] = v32;
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_100004CBC(uint64_t a1, void *a2)
{
  v3 = sub_1000058FC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_100004D20(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return sub_100005D2C();
  }

  sub_1000032E4(&qword_10000C608, &unk_1000065A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000063F0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100005A60(v5, v6, v7);
  if (a2)
  {
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
  }

  else
  {
    *(v5 + 32) = 0x6E776F6E6B6E75;
    *(v5 + 40) = 0xE700000000000000;
    sub_100005AB4(a1, 0);
  }

  sub_100005AC8(a1, a2);
  v8 = sub_100005D2C();

  return v8;
}

id sub_100004E58()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_token];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC13GPUIExtension25AppleConnectAuthenticator_context;
  v4 = [objc_allocWithZone(ACMobileAuthenticationContext) init];
  v5 = objc_allocWithZone(NSNumber);
  v6 = v4;
  v7 = [v5 initWithInteger:191000];
  [v6 setAppID:v7];

  [v6 setEnvironment:0];
  *&v0[v3] = v6;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

id sub_100004F68()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100005014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_100005D7C();
  v6[5] = sub_100005D6C();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_1000050C4;

  return sub_100003F1C();
}

uint64_t sub_1000050C4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_100005D5C();
    v9 = v8;
    v10 = sub_1000052DC;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_100005D5C();
    v9 = v11;
    v10 = sub_100005250;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_100005250()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[2];

  v3(v2, v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000052DC()
{
  v1 = v0[7];
  v2 = v0[2];

  swift_errorRetain();
  v2(0, 0, v1);

  v3 = v0[1];

  return v3();
}

__n128 sub_100005500(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000550C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005554(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1000055A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_100005D1C();
    if (a3)
    {
LABEL_3:
      v7 = sub_100005B0C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_100005630()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005670()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000056B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003420;

  return sub_100005014(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100005780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10000C5F0;
  if (!qword_10000C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5F0);
  }

  return result;
}

uint64_t sub_1000057E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005848(void *a1)
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

uint64_t sub_100005894(uint64_t a1)
{
  v2 = sub_1000032E4(&qword_10000C600, &qword_1000064B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000058FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005940(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000059C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100005A20(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_100005A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10000C610;
  if (!qword_10000C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C610);
  }

  return result;
}

uint64_t sub_100005AB4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100005AC8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}