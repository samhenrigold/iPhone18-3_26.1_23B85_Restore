uint64_t sub_10038EA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v51 = type metadata accessor for LocationPreviewModalViewState(0);
  __chkstk_darwin(v51);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = &v43 - v5;
  v50 = type metadata accessor for LocationPreviewViewState(0);
  __chkstk_darwin(v50);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v43 - v8;
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState(0);
  __chkstk_darwin(HourPrecipitationDetailViewState);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v43 - v11;
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v15);
  v52 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  __chkstk_darwin(v23);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v43 - v27;
  v29 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  sub_10038F404(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v22, type metadata accessor for ModalViewState);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_10038F3A4(v22, v28, type metadata accessor for ModalViewState.LocationDetailModal);
    sub_10038F3A4(v28, v25, type metadata accessor for ModalViewState.LocationDetailModal);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10038F3A4(v25, v14, type metadata accessor for NextHourPrecipitationDetailViewState);
      v30 = v14;
LABEL_20:
      sub_10038F3A4(v30, v54, type metadata accessor for NextHourPrecipitationDetailViewState);
      v40 = 0;
      return sub_10001B350(v54, v40, 1, HourPrecipitationDetailViewState);
    }

    v31 = type metadata accessor for ModalViewState.LocationDetailModal;
    v32 = v25;
  }

  else
  {
    v31 = type metadata accessor for ModalViewState;
    v32 = v22;
  }

  sub_10038F34C(v32, v31);
  sub_10038F404(a1 + v29, v19, type metadata accessor for ModalViewState);
  if (swift_getEnumCaseMultiPayload())
  {
    v33 = type metadata accessor for ModalViewState;
  }

  else
  {
    v34 = v48;
    sub_10038F3A4(v19, v48, type metadata accessor for LocationPreviewViewState);
    v19 = v49;
    sub_10038F404(v34 + *(v50 + 20), v49, type metadata accessor for LocationPreviewModalViewState);
    sub_10038F34C(v34, type metadata accessor for LocationPreviewViewState);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v35 = v19;
      v36 = v45;
LABEL_19:
      sub_10038F3A4(v35, v36, type metadata accessor for NextHourPrecipitationDetailViewState);
      v30 = v36;
      goto LABEL_20;
    }

    v33 = type metadata accessor for LocationPreviewModalViewState;
  }

  sub_10038F34C(v19, v33);
  v37 = v52;
  sub_10038F404(a1 + v29, v52, type metadata accessor for ModalViewState);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v39 = type metadata accessor for ModalViewState;
    goto LABEL_15;
  }

  v38 = type metadata accessor for ModalViewState.MapViewModal(0);
  if (sub_100024D10(v37, 1, v38) != 1)
  {
    v41 = v46;
    sub_10038F3A4(v37, v46, type metadata accessor for LocationPreviewViewState);
    v37 = v47;
    sub_10038F404(v41 + *(v50 + 20), v47, type metadata accessor for LocationPreviewModalViewState);
    sub_10038F34C(v41, type metadata accessor for LocationPreviewViewState);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v35 = v37;
      v36 = v44;
      goto LABEL_19;
    }

    v39 = type metadata accessor for LocationPreviewModalViewState;
LABEL_15:
    sub_10038F34C(v37, v39);
    goto LABEL_16;
  }

  sub_1000180EC(v37, &qword_100CA65E0, &unk_100A31400);
LABEL_16:
  v40 = 1;
  return sub_10001B350(v54, v40, 1, HourPrecipitationDetailViewState);
}

uint64_t sub_10038F12C(uint64_t a1)
{
  HourPrecipitationDetail = type metadata accessor for NextHourPrecipitationDetailInput.Input(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return HourPrecipitationDetail;
}

void sub_10038F1AC(uint64_t a1)
{
  type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    sub_10038F248(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for WeatherData(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10038F248(uint64_t a1)
{
  if (!qword_100CB1730)
  {
    type metadata accessor for MinuteWeather();
    sub_10038F464(&qword_100CB1738, &type metadata accessor for MinuteWeather, &protocol conformance descriptor for MinuteWeather);
    sub_10038F464(&qword_100CB1740, &type metadata accessor for MinuteWeather, &protocol conformance descriptor for MinuteWeather);
    sub_10038F464(&unk_100CB1748, &type metadata accessor for MinuteWeather, &protocol conformance descriptor for MinuteWeather);
    v1 = type metadata accessor for Forecast();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB1730);
    }
  }
}

uint64_t sub_10038F34C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10038F3A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10038F404(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10038F464(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_10038F4AC()
{
  sub_100035B30(v0, v8);
  v1 = sub_10002D7F8(v8, v8[3]);
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = (v3 - v2);
  (*(v5 + 16))(v3 - v2);
  v6 = sub_10038FF08(*v4);
  sub_100006F14(v8);
  return v6;
}

id sub_10038F584()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  sub_1000037D8();
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  sub_1000037D8();
  v2 = [objc_opt_self() systemFontOfSize:60.0];
  v3 = [objc_opt_self() configurationWithFont:v2 scale:-1];

  sub_100169C04();
  v38 = v3;
  v4 = sub_10038F9FC(0x6E6F697461636F6CLL, 0xED00006C6C69662ELL, v3);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10001BFB8();
  v5 = String.init(localized:table:bundle:locale:comment:)();
  v7 = v6;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10001BFB8();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  v10 = v9;
  v11 = objc_allocWithZone(OBWelcomeController);
  v37 = v4;
  v12 = sub_10038FDF4(v5, v7, v8, v10, v4);
  v13 = [objc_opt_self() boldButton];
  v14 = objc_opt_self();
  v15 = [v14 mainBundle];
  v21 = sub_10000FD84(0x65756E69746E6F43, 0xE800000000000000, v16, v17, v18, v19, v20, 0xD00000000000001ELL);
  v23 = v22;

  sub_10038FE94(v21, v23, 0, v13);
  sub_10022C350(&qword_100CB17D8, &qword_100A41E38);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v13 addTarget:v39 action:"continueButtonTapped" forControlEvents:64];

  v24 = [v12 buttonTray];
  [v24 addButton:v13];

  v25 = [objc_opt_self() linkButton];
  v26 = [v14 mainBundle];
  v32 = sub_10000FD84(0x776F4E20746F4ELL, 0xE700000000000000, v27, v28, v29, v30, v31, 0xD000000000000028);
  v34 = v33;

  sub_10038FE94(v32, v34, 0, v25);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v25 addTarget:v39 action:"notNowButtonTapped" forControlEvents:64];

  v35 = [v12 buttonTray];
  [v35 addButton:v25];

  [v12 setModalPresentationStyle:2];
  return v12;
}

id sub_10038F9FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

uint64_t *sub_10038FA8C@<X0>(uint64_t **a1@<X8>)
{
  result = sub_10038F4AC();
  *a1 = result;
  return result;
}

uint64_t sub_10038FAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10038FDA0();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10038FB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10038FDA0();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10038FB80(uint64_t a1)
{
  sub_10038FDA0();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10038FC28()
{
  v1 = (v0 + OBJC_IVAR____TtCV7Weather40NotificationsOptInLocationPermissionView11Coordinator_interactor);
  v2 = *(v0 + OBJC_IVAR____TtCV7Weather40NotificationsOptInLocationPermissionView11Coordinator_interactor + 24);
  v3 = *(v0 + OBJC_IVAR____TtCV7Weather40NotificationsOptInLocationPermissionView11Coordinator_interactor + 32);
  sub_1000161C0(v1, v2);
  return (*(*(v3 + 8) + 16))(v2);
}

unint64_t sub_10038FD4C()
{
  result = qword_100CB17C0;
  if (!qword_100CB17C0)
  {
    result = swift_getWitnessTable(asc_100A41DE4, &type metadata for NotificationsOptInLocationPermissionView, v0, v1);
    atomic_store(result, &qword_100CB17C0);
  }

  return result;
}

unint64_t sub_10038FDA0()
{
  result = qword_100CB17C8;
  if (!qword_100CB17C8)
  {
    result = swift_getWitnessTable(aM_41, &type metadata for NotificationsOptInLocationPermissionView, v0, v1);
    atomic_store(result, &qword_100CB17C8);
  }

  return result;
}

id sub_10038FDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithTitle:v8 detailText:v9 icon:a5];

  return v10;
}

void sub_10038FE94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 setTitle:v6 forState:a3];
}

uint64_t *sub_10038FF08(uint64_t *a1)
{
  v1 = *a1;
  v14[3] = v1;
  v14[4] = &off_100C528A0;
  v14[0] = a1;
  v2 = type metadata accessor for NotificationsOptInLocationPermissionView.Coordinator();
  v3 = objc_allocWithZone(v2);
  v4 = sub_10002D7F8(v14, v1);
  v5 = __chkstk_darwin(v4);
  v7 = (&v12 - v6);
  (*(v8 + 16))(&v12 - v6, v5);
  v9 = *v7;
  v13[3] = v1;
  v13[4] = &off_100C528A0;
  v13[0] = v9;
  sub_100035B30(v13, v3 + OBJC_IVAR____TtCV7Weather40NotificationsOptInLocationPermissionView11Coordinator_interactor);
  v12.receiver = v3;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100006F14(v13);
  sub_100006F14(v14);
  return v10;
}

void *sub_100390060@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1890, &qword_100A41EA0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA49A0, &qword_100A41EE0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for ConditionDetailDynamicContentViewBuilder();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = result;
    v7 = sub_10002D7F8(v23, v24);
    v8 = __chkstk_darwin(v7);
    v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for ConditionDetailInteractor();
    v22[3] = v13;
    v22[4] = &off_100C4E748;
    v22[0] = v12;
    v14 = type metadata accessor for ConditionDetailModule();
    v15 = swift_allocObject();
    v16 = sub_10002D7F8(v22, v13);
    v17 = __chkstk_darwin(v16);
    v19 = (v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v15[5] = v13;
    v15[6] = &off_100C4E748;
    v15[2] = v21;
    v15[7] = v5;
    v15[8] = v6;
    sub_100006F14(v22);
    result = sub_100006F14(v23);
    a2[3] = v14;
    a2[4] = &off_100C707D8;
    *a2 = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100390314()
{
  type metadata accessor for ConditionDetailDynamicContentViewBuilder();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1888, &qword_100A41E98);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1890, &qword_100A41EA0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1898, &qword_100A41EA8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB18A0, &qword_100A41EB0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB18A8, &qword_100A41EB8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB18B0, &qword_100A41EC0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB18B8, &qword_100A41EC8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB18C0, &qword_100A41ED0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB18C8, &qword_100A41ED8);
  RegistrationContainer.register<A>(_:name:factory:)();

  RegistrationContainer.register<A>(_:name:factory:)();

  RegistrationContainer.register<A>(_:name:factory:)();

  RegistrationContainer.register<A>(_:name:factory:)();

  RegistrationContainer.register<A>(_:name:factory:)();

  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA49A0, &qword_100A41EE0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB18D0, &qword_100A41EE8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB18D8, &unk_100A41EF0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CAFC50, &qword_100A3F818);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB18E0, &qword_100A41F00);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_1003907F8()
{
  type metadata accessor for ConditionDetailDynamicContentViewBuilder();

  return swift_allocObject();
}

void *sub_10039082C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (result)
  {
    v5 = Tracker.chain(name:identifier:)();

    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4918, &unk_100A2EC30);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v8)
    {
      a2[3] = &type metadata for ConditionDetailTracker;
      a2[4] = &off_100C71770;
      v6 = swift_allocObject();
      *a2 = v6;
      *(v6 + 16) = v5;
      return sub_100013188(&v7, v6 + 24);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10039097C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v27;
  if (v27)
  {
    v23 = v28;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CB1888, &qword_100A41E98);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v26)
    {
      v6 = sub_10002D7F8(v25, v26);
      v7 = __chkstk_darwin(v6);
      v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v24[3] = &type metadata for ConditionDetailTracker;
      v24[4] = &off_100C71770;
      v11 = swift_allocObject();
      v24[0] = v11;
      v12 = v9[1];
      v11[1] = *v9;
      v11[2] = v12;
      v11[3] = v9[2];
      v13 = type metadata accessor for ConditionDetailInteractor();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v24, &type metadata for ConditionDetailTracker);
      v16 = __chkstk_darwin(v15);
      v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v14[7] = &type metadata for ConditionDetailTracker;
      v14[8] = &off_100C71770;
      v20 = swift_allocObject();
      v21 = v18[1];
      v20[1] = *v18;
      v20[2] = v21;
      v20[3] = v18[2];
      v14[2] = v5;
      v14[3] = v23;
      v14[4] = v20;
      sub_100006F14(v24);
      result = sub_100006F14(v25);
      a2[3] = v13;
      a2[4] = &off_100C4E748;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100390C40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1880, &qword_100A41E90);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v14)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CAFC38, &qword_100A3F800);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v12)
    {
      v5 = sub_10002D7F8(v13, v14);
      v6 = __chkstk_darwin(v5);
      v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = sub_1003938A0(*v8, &v11);
      sub_100006F14(v13);
      result = type metadata accessor for ConditionDetailInputFactory();
      a2[3] = result;
      a2[4] = &off_100C50AE8;
      *a2 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100390DD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for UnfairLock.Options();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC48, &qword_100A3F810);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v213)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18A8, &qword_100A41EB8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v211)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1930, &unk_100A41F60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18B0, &qword_100A41EC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v209)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC58, &unk_100A3F820);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v207[3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v155 = type metadata accessor for ConditionDetailLegendViewModelFactory();
  v154 = swift_allocObject();
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC68, &qword_100A3F830);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v206[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1938, &unk_100A41F70);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v205[3])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4908, &unk_100A2EC20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v204)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18D8, &unk_100A41EF0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v202)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC50, &qword_100A3F818);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v200)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18E0, &qword_100A41F00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v198)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v149 = v5;
  v150 = v9;
  v151 = v4;
  v152 = v7;
  v153 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18B8, &qword_100A41EC8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v196)
  {
    v10 = sub_10002D7F8(v212, v213);
    v148 = &v125;
    v11 = __chkstk_darwin(v10);
    v13 = (&v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_10002D7F8(v210, v211);
    v147 = &v125;
    v16 = __chkstk_darwin(v15);
    v18 = (&v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = sub_10002D7F8(v208, v209);
    v146 = &v125;
    v21 = __chkstk_darwin(v20);
    v23 = (&v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = sub_10002D7F8(v203, v204);
    v145 = &v125;
    v26 = __chkstk_darwin(v25);
    v28 = (&v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28, v26);
    v30 = sub_10002D7F8(v201, v202);
    v144 = &v125;
    v31 = __chkstk_darwin(v30);
    v33 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v33, v31);
    v35 = sub_10002D7F8(v199, v200);
    v143 = &v125;
    v36 = __chkstk_darwin(v35);
    v38 = &v125 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38, v36);
    v40 = sub_10002D7F8(v197, v198);
    v142 = &v125;
    v41 = __chkstk_darwin(v40);
    v43 = &v125 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v43, v41);
    v45 = sub_10002D7F8(v195, v196);
    v141 = &v125;
    v46 = __chkstk_darwin(v45);
    v48 = (&v125 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v49 + 16))(v48, v46);
    v50 = *v13;
    v51 = *v18;
    v52 = *v23;
    v53 = *v28;
    v54 = *v48;
    v55 = type metadata accessor for DetailChartViewModelFactory();
    v194[4] = &off_100C4E100;
    v194[3] = v55;
    v194[0] = v50;
    v133 = type metadata accessor for ConditionDetailChartHeaderViewModelFactory();
    v193 = &off_100C709A8;
    v192 = v133;
    v191[0] = v51;
    v132 = type metadata accessor for ConditionDetailPlatterViewModelFactory();
    v190 = &off_100C4F958;
    v189 = v132;
    v188[0] = v52;
    v187 = &off_100C50F30;
    v186 = v155;
    v185[0] = v154;
    v131 = type metadata accessor for NewsArticleComponentViewModelFactory();
    v184 = &off_100C60578;
    v183 = v131;
    v182[0] = v53;
    v180 = &type metadata for LollipopDetailViewModelFactory;
    v181 = &off_100C55E20;
    v56 = swift_allocObject();
    v179[0] = v56;
    v57 = *(v33 + 1);
    *(v56 + 16) = *v33;
    *(v56 + 32) = v57;
    *(v56 + 48) = *(v33 + 4);
    v177 = &type metadata for LollipopDataFactory;
    v178 = &off_100C70E58;
    v58 = swift_allocObject();
    v176[0] = v58;
    v59 = *(v38 + 1);
    *(v58 + 16) = *v38;
    *(v58 + 32) = v59;
    *(v58 + 48) = *(v38 + 4);
    v174 = &type metadata for ConditionDetailLollipopPlatterViewModelFactory;
    v175 = &off_100C7A860;
    v60 = swift_allocObject();
    v173[0] = v60;
    v61 = *(v43 + 1);
    *(v60 + 16) = *v43;
    *(v60 + 32) = v61;
    *(v60 + 48) = *(v43 + 4);
    v129 = type metadata accessor for PrecipitationTotalConditionDetailPlatterViewModelFactory();
    v172 = &off_100C61D10;
    v171 = v129;
    v170[0] = v54;
    v154 = type metadata accessor for ConditionDetailViewModelFactory(0);
    v62 = swift_allocObject();
    v63 = sub_10002D7F8(v194, v55);
    v140 = &v125;
    v127 = v55;
    v64 = __chkstk_darwin(v63);
    v126 = (&v125 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v66 + 16))(v64);
    v67 = sub_10002D7F8(v191, v192);
    v139 = &v125;
    v68 = __chkstk_darwin(v67);
    v125 = (&v125 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v68);
    v71 = sub_10002D7F8(v188, v189);
    v138 = &v125;
    v72 = __chkstk_darwin(v71);
    v74 = (&v125 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v75 + 16))(v74, v72);
    v76 = sub_10002D7F8(v185, v186);
    v137 = &v125;
    v77 = __chkstk_darwin(v76);
    v79 = (&v125 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v80 + 16))(v79, v77);
    v81 = sub_10002D7F8(v182, v183);
    v136 = &v125;
    v82 = __chkstk_darwin(v81);
    v84 = (&v125 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v85 + 16))(v84, v82);
    v86 = sub_10002D7F8(v179, v180);
    v135 = &v125;
    v87 = __chkstk_darwin(v86);
    v89 = &v125 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v90 + 16))(v89, v87);
    v91 = sub_10002D7F8(v176, v177);
    v134 = &v125;
    v92 = __chkstk_darwin(v91);
    v94 = &v125 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v95 + 16))(v94, v92);
    v96 = sub_10002D7F8(v173, v174);
    v130 = &v125;
    v97 = __chkstk_darwin(v96);
    v99 = &v125 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v100 + 16))(v99, v97);
    v101 = sub_10002D7F8(v170, v171);
    v128 = &v125;
    v102 = __chkstk_darwin(v101);
    v104 = (&v125 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v105 + 16))(v104, v102);
    v106 = *v126;
    v107 = *v125;
    v108 = *v74;
    v109 = *v79;
    v110 = *v84;
    v111 = *v104;
    v169[4] = &off_100C4E100;
    v169[3] = v127;
    v169[0] = v106;
    v168[4] = &off_100C709A8;
    v168[3] = v133;
    v168[0] = v107;
    v167[4] = &off_100C4F958;
    v167[3] = v132;
    v167[0] = v108;
    v166[3] = v155;
    v166[4] = &off_100C50F30;
    v166[0] = v109;
    v165[3] = v131;
    v165[4] = &off_100C60578;
    v165[0] = v110;
    v164[3] = &type metadata for LollipopDetailViewModelFactory;
    v164[4] = &off_100C55E20;
    v112 = swift_allocObject();
    v164[0] = v112;
    v113 = *(v89 + 1);
    *(v112 + 16) = *v89;
    *(v112 + 32) = v113;
    *(v112 + 48) = *(v89 + 4);
    v163[3] = &type metadata for LollipopDataFactory;
    v163[4] = &off_100C70E58;
    v114 = swift_allocObject();
    v163[0] = v114;
    v115 = *(v94 + 1);
    *(v114 + 16) = *v94;
    *(v114 + 32) = v115;
    *(v114 + 48) = *(v94 + 4);
    v161 = &type metadata for ConditionDetailLollipopPlatterViewModelFactory;
    v162 = &off_100C7A860;
    v116 = swift_allocObject();
    *&v160 = v116;
    v117 = *(v99 + 1);
    *(v116 + 16) = *v99;
    *(v116 + 32) = v117;
    *(v116 + 48) = *(v99 + 4);
    v158 = v129;
    v159 = &off_100C61D10;
    *&v157 = v111;
    sub_100046E64();
    v62[65] = OS_os_log.init(subsystem:category:)();
    sub_10022C350(&qword_100CA2D40, &unk_100A41F80);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_100A2C3F0;
    static UnfairLock.Options.dataSynchronization.getter();
    v156 = v118;
    sub_100393624();
    sub_10022C350(&qword_100CA2D50, &qword_100A2C490);
    sub_100047F1C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v62[66] = UnfairLock.init(options:)();
    v119 = OBJC_IVAR____TtC7Weather31ConditionDetailViewModelFactory_cachedModel;
    v120 = type metadata accessor for ConditionDetailViewModel(0);
    sub_10001B350(v62 + v119, 1, 1, v120);
    v121 = OBJC_IVAR____TtC7Weather31ConditionDetailViewModelFactory_cachedChartModelInputs;
    v122 = type metadata accessor for ConditionDetailViewModelFactory.CachedChartModelInputs(0);
    sub_10001B350(v62 + v121, 1, 1, v122);
    sub_100035B30(v169, (v62 + 2));
    sub_100035B30(v168, (v62 + 7));
    v62[12] = v150;
    sub_100035B30(v167, (v62 + 13));
    sub_100035B30(v207, (v62 + 18));
    sub_100035B30(v166, (v62 + 23));
    sub_100035B30(v206, (v62 + 28));
    sub_100035B30(v205, (v62 + 33));
    sub_100035B30(v165, (v62 + 38));
    sub_100035B30(v164, (v62 + 43));
    sub_100035B30(v163, (v62 + 48));
    sub_10022C350(&qword_100CB1940, &qword_100A41F90);
    swift_allocObject();
    v62[53] = Cache.init()();
    sub_10022C350(&qword_100CB1948, &qword_100A41F98);
    swift_allocObject();
    v123 = Cache.init()();
    sub_100006F14(v205);
    sub_100006F14(v206);
    sub_100006F14(v207);
    sub_100006F14(v163);
    sub_100006F14(v164);
    sub_100006F14(v165);
    sub_100006F14(v166);
    sub_100006F14(v167);
    sub_100006F14(v168);
    sub_100006F14(v169);
    v62[54] = v123;
    sub_100013188(&v160, (v62 + 55));
    sub_100013188(&v157, (v62 + 60));
    sub_100006F14(v170);
    sub_100006F14(v173);
    sub_100006F14(v176);
    sub_100006F14(v179);
    sub_100006F14(v182);
    sub_100006F14(v185);
    sub_100006F14(v188);
    sub_100006F14(v191);
    sub_100006F14(v194);
    sub_100006F14(v195);
    sub_100006F14(v197);
    sub_100006F14(v199);
    sub_100006F14(v201);
    sub_100006F14(v203);
    sub_100006F14(v208);
    sub_100006F14(v210);
    result = sub_100006F14(v212);
    v124 = v153;
    v153[3] = v154;
    v124[4] = &off_100C75AA8;
    *v124 = v62;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100392380@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ChanceOfRainChartHeaderStringBuilder();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18D0, &qword_100A41EE8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v37)
  {
    v32 = v5;
    v33 = v4;
    v34 = a2;
    v9 = type metadata accessor for HumidityChartHeaderStringBuilder();
    swift_allocObject();
    v10 = HumidityChartHeaderStringBuilder.init(humidityTitleStringBuilder:)();
    v37 = v9;
    v38 = &protocol witness table for HumidityChartHeaderStringBuilder;
    *&v36 = v10;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CB1928, &unk_100A41F50);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v35)
    {
      v11 = type metadata accessor for PrecipitationTotalChartHeaderStringBuilder();
      swift_allocObject();
      v31 = PrecipitationTotalChartHeaderStringBuilder.init(precipitationTotalHeroStringBuilder:)();
      v12 = type metadata accessor for PressureChartHeaderStringBuilder();
      swift_allocObject();
      v30 = PressureChartHeaderStringBuilder.init()();
      v13 = type metadata accessor for TemperatureChartHeaderStringBuilder();
      swift_allocObject();
      v29 = TemperatureChartHeaderStringBuilder.init()();
      v14 = type metadata accessor for TemperatureFeelsLikeChartHeaderStringBuilder();
      swift_allocObject();
      v28 = TemperatureFeelsLikeChartHeaderStringBuilder.init()();
      v15 = type metadata accessor for UVIndexChartHeaderStringBuilder();
      swift_allocObject();
      v27 = UVIndexChartHeaderStringBuilder.init()();
      v16 = type metadata accessor for VisibilityChartHeaderStringBuilder();
      swift_allocObject();
      v26 = VisibilityChartHeaderStringBuilder.init()();
      v17 = type metadata accessor for WindChartHeaderStringBuilder();
      swift_allocObject();
      v25 = WindChartHeaderStringBuilder.init()();
      ChanceOfRainChartHeaderStringBuilder.init()();
      v18 = type metadata accessor for ConditionDetailChartHeaderViewModelFactory();
      v19 = swift_allocObject();
      v19[10] = v11;
      v19[11] = &protocol witness table for PrecipitationTotalChartHeaderStringBuilder;
      v19[7] = v31;
      v19[15] = v12;
      v19[16] = &protocol witness table for PressureChartHeaderStringBuilder;
      v19[12] = v30;
      v19[20] = v13;
      v19[21] = &protocol witness table for TemperatureChartHeaderStringBuilder;
      v20 = v28;
      v19[17] = v29;
      v19[25] = v14;
      v19[26] = &protocol witness table for TemperatureFeelsLikeChartHeaderStringBuilder;
      v19[22] = v20;
      v19[30] = v15;
      v19[31] = &protocol witness table for UVIndexChartHeaderStringBuilder;
      v19[27] = v27;
      v19[35] = v16;
      v19[36] = &protocol witness table for VisibilityChartHeaderStringBuilder;
      v19[32] = v26;
      v19[40] = v17;
      v19[41] = &protocol witness table for WindChartHeaderStringBuilder;
      v19[37] = v25;
      v21 = v33;
      v19[45] = v33;
      v19[46] = &protocol witness table for ChanceOfRainChartHeaderStringBuilder;
      v22 = sub_100042FB0(v19 + 42);
      (*(v32 + 32))(v22, v7, v21);
      result = sub_100013188(&v36, (v19 + 2));
      v23 = v34;
      v34[3] = v18;
      v23[4] = &off_100C709A8;
      *v23 = v19;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100392710@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18F8, &qword_100A41F18);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v67)
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18C8, &qword_100A41ED8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v65)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1900, &qword_100A41F20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1908, &qword_100A41F28);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v61)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1910, &qword_100A41F30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v59)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1918, &qword_100A41F38);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v57)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1920, &unk_100A41F40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v55)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC58, &unk_100A3F820);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v53)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v51)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v46)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v48 = &type metadata for TemperatureComparisonTextBuilder;
  v49 = &off_100C6B7E0;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v42)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v44 = &type metadata for HumidityComparisonTextBuilder;
  v45 = &off_100C53DF8;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v38)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v40 = &type metadata for VisibilityComparisonTextBuilder;
  v41 = &off_100C6E510;
  *&v39 = v38;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v34)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v36 = &type metadata for WindComparisonTextBuilder;
  v37 = &off_100C55500;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24 = a2;
  v32 = &type metadata for UVIndexComparisonTextBuilder;
  v33 = &off_100C7AD30;
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v5 = v29;
  if (v29 != 2)
  {
    v6 = sub_10002D7F8(v64, v65);
    v7 = __chkstk_darwin(v6);
    v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9, v7);
    v28[3] = &type metadata for UVIDescriptorViewModelFactory;
    v28[4] = &off_100C49470;
    v11 = swift_allocObject();
    v28[0] = v11;
    v12 = *(v9 + 1);
    *(v11 + 16) = *v9;
    *(v11 + 32) = v12;
    *(v11 + 48) = *(v9 + 4);
    v13 = type metadata accessor for ConditionDetailPlatterViewModelFactory();
    v14 = swift_allocObject();
    v15 = sub_10002D7F8(v28, &type metadata for UVIDescriptorViewModelFactory);
    v16 = __chkstk_darwin(v15);
    v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18, v16);
    v26 = &type metadata for UVIDescriptorViewModelFactory;
    v27 = &off_100C49470;
    v20 = swift_allocObject();
    *&v25 = v20;
    v21 = *(v18 + 1);
    *(v20 + 16) = *v18;
    *(v20 + 32) = v21;
    *(v20 + 48) = *(v18 + 4);
    sub_100013188(&v66, v14 + 16);
    sub_100013188(&v25, v14 + 56);
    sub_100013188(&v62, v14 + 96);
    sub_100013188(&v60, v14 + 136);
    sub_100013188(&v58, v14 + 176);
    sub_100013188(&v56, v14 + 216);
    sub_100013188(&v54, v14 + 256);
    sub_100013188(&v52, v14 + 496);
    sub_100013188(&v50, v14 + 536);
    sub_100013188(&v47, v14 + 296);
    sub_100013188(&v43, v14 + 336);
    sub_100013188(&v39, v14 + 376);
    sub_100013188(&v35, v14 + 416);
    sub_100013188(&v31, v14 + 456);
    *(v14 + 576) = v5 & 1;
    sub_100006F14(v28);
    result = sub_100006F14(v64);
    v22 = v24;
    v24[3] = v13;
    v22[4] = &off_100C4F958;
    *v22 = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

void *sub_100392E54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18F0, &qword_100A41F10);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v4 = type metadata accessor for PrecipitationTotalConditionDetailPlatterViewModelFactory();
    v5 = swift_allocObject();
    *(v5 + 56) = 0;
    result = sub_100013188(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_100C61D10;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100392F04@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ConstantConditionsStringBuilder();
  result = ConstantConditionsStringBuilder.__allocating_init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for ConstantConditionsStringBuilder;
  *a1 = result;
  return result;
}

void *sub_100392F44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18E8, &qword_100A41F08);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for UVIDescriptorViewModelFactory;
    a2[4] = &off_100C49470;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100392FF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for VisibilityFormatter();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100393050(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v21;
  v4 = v22;
  v6 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1898, &qword_100A41EA8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v17, v18);
  v15 = type metadata accessor for ConditionDetailInputFactory();
  v16 = &off_100C50AE8;
  v14[0] = v7;
  sub_100035B30(v14, v13);
  v8 = swift_allocObject();
  sub_100013188(v13, v8 + 16);

  sub_100006F14(v14);
  sub_100006F14(v17);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100393614;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18A0, &qword_100A41EB0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    v10 = *sub_1000161C0(v17, v18);
    v15 = type metadata accessor for ConditionDetailViewModelFactory(0);
    v16 = &off_100C75AA8;
    v14[0] = v10;
    sub_100035B30(v14, v13);
    v11 = swift_allocObject();
    sub_100013188(v13, v11 + 16);

    sub_100006F14(v14);
    sub_100006F14(v17);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10039361C;
    *(v12 + 24) = v11;
    sub_10022C350(&qword_100CA49A0, &qword_100A41EE0);
    swift_allocObject();
    return sub_10024A754(v3, v6, v5, v4, sub_10001BAA8, 0, sub_100104B5C, v9, sub_100318CB0, v12);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1003933C0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for HumidityTitleStringBuilder();
  a1[4] = &protocol witness table for HumidityTitleStringBuilder;
  sub_100042FB0(a1);
  return HumidityTitleStringBuilder.init()();
}

void *sub_100393404@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18D0, &qword_100A41EE8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for LollipopDetailViewModelFactory;
    a2[4] = &off_100C55E20;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003934B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC58, &unk_100A3F820);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for LollipopDataFactory;
    a2[4] = &off_100C70E58;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100393564@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB18C8, &qword_100A41ED8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    a2[3] = &type metadata for ConditionDetailLollipopPlatterViewModelFactory;
    a2[4] = &off_100C7A860;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_100013188(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100393624()
{
  result = qword_100CA2D48;
  if (!qword_100CA2D48)
  {
    v3 = type metadata accessor for UnfairLock.Options();
    result = swift_getWitnessTable(&protocol conformance descriptor for UnfairLock.Options, v3, v0, v1);
    atomic_store(result, &qword_100CA2D48);
  }

  return result;
}

void *sub_10039367C(uint64_t a1, __int128 *a2, void *a3)
{
  v6 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v6);
  v9 = type metadata accessor for DailyForecastFilter();
  v10 = &off_100C4AB20;
  *&v8 = a1;
  sub_100046E64();
  a3[12] = OS_os_log.init(subsystem:category:)();
  sub_10022C350(&qword_100CA2D40, &unk_100A41F80);
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static UnfairLock.Options.dataSynchronization.getter();
  sub_100393624();
  sub_10022C350(&qword_100CA2D50, &qword_100A2C490);
  sub_100047F1C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  a3[13] = UnfairLock.init(options:)();
  type metadata accessor for IsSameDayCache();
  swift_allocObject();
  a3[14] = IsSameDayCache.init()();
  sub_100013188(&v8, (a3 + 2));
  sub_100013188(a2, (a3 + 7));
  return a3;
}

void *sub_1003938A0(uint64_t a1, __int128 *a2)
{
  v14 = type metadata accessor for DailyForecastFilter();
  v15 = &off_100C4AB20;
  v13[0] = a1;
  type metadata accessor for ConditionDetailInputFactory();
  v4 = swift_allocObject();
  v5 = sub_10002D7F8(v13, v14);
  v6 = __chkstk_darwin(v5);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = sub_10039367C(*v8, a2, v4);
  sub_100006F14(v13);
  return v10;
}

void *sub_1003939BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB19F8, &qword_100A41FF8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA49D8, &unk_100A42010);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v22, v23);
      v7 = __chkstk_darwin(v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for UnitsConfigurationInteractor();
      v21[3] = v12;
      v21[4] = &off_100C66770;
      v21[0] = v11;
      v13 = type metadata accessor for UnitsConfigurationModule();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, v12);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_100C66770;
      v14[2] = v20;
      v14[7] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C74C80;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100393C38()
{
  sub_10022C350(&qword_100CB19F8, &qword_100A41FF8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1A00, &qword_100A42000);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB1A08, &qword_100A42008);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA49D8, &unk_100A42010);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_100393D64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for UnitsConfigurationInteractor();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v6;
    a2[3] = v4;
    a2[4] = &off_100C66770;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100393E48(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v21;
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v23;
  v4 = v24;
  v6 = v22;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1A00, &qword_100A42000);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v19, v20);
  v17 = type metadata accessor for UnitsConfigurationInputFactory();
  v18 = &off_100C6EA40;
  v16[0] = v7;
  sub_100035B30(v16, v15);
  v8 = swift_allocObject();
  sub_100013188(v15, v8 + 16);

  sub_100006F14(v16);
  sub_100006F14(v19);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100394228;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1A08, &qword_100A42008);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v20)
  {
    v10 = *sub_1000161C0(v19, v20);
    v17 = type metadata accessor for UnitsConfigurationViewModelFactory();
    v18 = &off_100C5FAA8;
    v16[0] = v10;
    sub_100035B30(v16, v15);
    v11 = swift_allocObject();
    sub_100013188(v15, v11 + 16);

    sub_100006F14(v16);
    sub_100006F14(v19);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100394284;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100394230;
    *(v13 + 24) = v9;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10039428C;
    *(v14 + 24) = v12;
    sub_10022C350(&qword_100CA49D8, &unk_100A42010);
    swift_allocObject();
    return sub_10024A900(v3, v6, v5, v4, sub_100266DE8, 0, sub_10026AB64, v13, sub_100394314, v14);
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_100394170@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1000161C0(a2, a2[3]);
  sub_1007FD02C(a1, v7);
  v5 = v7[1];
  *a3 = v7[0];
  a3[1] = v5;
  a3[2] = v8[0];
  result = *(v8 + 10);
  *(a3 + 42) = *(v8 + 10);
  return result;
}

double sub_100394230@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  (*(v2 + 16))(v6, *a1);
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  a2[2] = v7[0];
  result = *(v7 + 10);
  *(a2 + 42) = *(v7 + 10);
  return result;
}

uint64_t sub_10039428C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  return v2(v5);
}

uint64_t sub_1003942D8(_OWORD *a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  return sub_100318B98(v5, a2, a3);
}

uint64_t sub_10039431C(uint64_t a1, uint64_t a2, char *a3)
{
  v175 = a3;
  v159 = a2;
  v184 = a1;
  v192 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v192);
  v198 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v191);
  v197 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v190);
  v196 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v189);
  v195 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v188);
  v194 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v187);
  v193 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v9 - 8);
  v172 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v170 = &v148 - v12;
  v155 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v155);
  v168 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v180);
  v185 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v152);
  v156 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  __chkstk_darwin(v16 - 8);
  v164 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v182 = &v148 - v19;
  v20 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  __chkstk_darwin(v20 - 8);
  v161 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v181 = &v148 - v23;
  v24 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v24 - 8);
  v157 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v183 = &v148 - v27;
  __chkstk_darwin(v28);
  v150 = &v148 - v29;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v151 = &v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  __chkstk_darwin(v32 - 8);
  v149 = &v148 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = (&v148 - v35);
  v37 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v37);
  v179 = &v148 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = (&v148 - v40);
  v42 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v42 - 8);
  v178 = &v148 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v162 = (&v148 - v45);
  v46 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v46 - 8);
  v177 = &v148 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v50 = &v148 - v49;
  v51 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v51 - 8);
  v174 = &v148 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v55 = &v148 - v54;
  v56 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v56 - 8);
  v171 = &v148 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v148 - v59;
  v61 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v61 - 8);
  v167 = &v148 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v65 = &v148 - v64;
  v66 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v66 - 8);
  v165 = &v148 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v70 = &v148 - v69;
  v71 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v71 - 8);
  v160 = &v148 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v75 = &v148 - v74;
  v154 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v154);
  v176 = &v148 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  *&v158 = &v148 - v78;
  __chkstk_darwin(v79);
  v186 = &v148 - v80;
  __chkstk_darwin(v81);
  v153 = &v148 - v82;
  sub_100396CBC(&v148 - v82);
  *(&v158 + 1) = v75;
  sub_10001B350(v75, 1, 1, v187);
  v163 = v70;
  v83 = v70;
  v84 = v150;
  sub_10001B350(v83, 1, 1, v188);
  v166 = v65;
  v85 = v65;
  v86 = v152;
  sub_10001B350(v85, 1, 1, v189);
  v169 = v60;
  sub_10001B350(v60, 1, 1, v190);
  v173 = v55;
  sub_10001B350(v55, 1, 1, v191);
  v175 = v50;
  sub_10001B350(v50, 1, 1, v192);
  v148 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_10017CBB0();
  v87 = v151;
  sub_10017CBB0();
  type metadata accessor for LocationViewerViewState._Storage(0);
  swift_allocObject();
  *v36 = sub_10003DDB8(v87, 0, 0, 2, 0, 0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v36, 0, 1, v86);
  v88 = type metadata accessor for SearchViewState(0);
  sub_10001B350(v84, 1, 1, v88);
  sub_10001B350(v181, 1, 1, v180);
  v89 = v155;
  sub_10001B350(v182, 1, 1, v155);
  v90 = *v41;
  v91 = v149;
  sub_100095588();
  v92 = sub_100024D10(v91, 1, v86);
  v159 = v90;
  if (v92 == 1)
  {
    sub_10017CBB0();
    v93 = sub_100024D10(v91, 1, v86);

    if (v93 != 1)
    {
      sub_1000180EC(v91, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_100072FD8();
  }

  v94 = *(v41 + v37[6]);
  sub_1000180EC(v36, &qword_100CA6608, &unk_100A31430);
  v95 = v157;
  sub_100051BBC();
  v96 = sub_100024D10(v95, 1, v88);
  v97 = v184;
  v98 = v162;
  if (v96 == 1)
  {
    sub_100095588();
    v99 = sub_100024D10(v95, 1, v88) == 1;
    v100 = v95;
    v101 = v180;
    if (!v99)
    {
      sub_1000180EC(v100, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    v102 = v183;
    sub_100072FD8();
    sub_10001B350(v102, 0, 1, v88);
    v101 = v180;
  }

  v103 = v161;
  sub_100051BBC();
  if (sub_100024D10(v103, 1, v101) == 1)
  {
    sub_10017CBB0();
    if (sub_100024D10(v103, 1, v101) != 1)
    {
      sub_1000180EC(v103, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_100072FD8();
  }

  v104 = v164;
  sub_100051BBC();
  if (sub_100024D10(v104, 1, v89) == 1)
  {
    sub_10017CBB0();
    v105 = sub_100024D10(v104, 1, v89);
    v106 = v158;
    if (v105 != 1)
    {
      sub_1000180EC(v104, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_100072FD8();
    v106 = v158;
  }

  v107 = *(v41 + v37[11]);
  sub_1000DFE80(v41, type metadata accessor for ViewState);
  *v98 = v159;
  sub_100072FD8();
  *(v98 + v37[6]) = v94;
  *(v98 + v37[7]) = 1;
  sub_100051BBC();
  sub_100072FD8();
  sub_100072FD8();
  *(v98 + v37[11]) = v107;
  sub_10001B350(v98, 0, 1, v37);
  v108 = v170;
  sub_100072FD8();
  v109 = v154;
  sub_10001B350(v108, 0, 1, v154);
  sub_10017CBB0();
  v110 = v172;
  sub_100051BBC();
  if (sub_100024D10(v110, 1, v109) == 1)
  {
    sub_1000180EC(v110, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1000DFE80(v106, type metadata accessor for ModalViewState);
    sub_100072FD8();
  }

  v111 = v189;
  v112 = v187;
  v113 = v174;
  v114 = v167;
  v115 = v165;
  v116 = v160;
  sub_100072FD8();
  v117 = *(v97 + 16);
  LODWORD(v183) = *(v97 + 24);
  sub_100051BBC();
  v118 = sub_100024D10(v116, 1, v112);
  v185 = v117;
  if (v118 == 1)
  {
    sub_10017CBB0();
    v119 = sub_100024D10(v116, 1, v112);

    if (v119 != 1)
    {
      sub_1000180EC(v116, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_100072FD8();
  }

  sub_100051BBC();
  v120 = v188;
  if (sub_100024D10(v115, 1, v188) == 1)
  {
    swift_beginAccess();
    sub_10017CBB0();
    v121 = sub_100024D10(v115, 1, v120);
    v122 = v192;
    v123 = v171;
    if (v121 != 1)
    {
      sub_1000180EC(v115, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_100072FD8();
    v122 = v192;
    v123 = v171;
  }

  sub_100051BBC();
  if (sub_100024D10(v114, 1, v111) == 1)
  {
    sub_10017CBB0();
    v124 = sub_100024D10(v114, 1, v111);
    v125 = v177;
    if (v124 != 1)
    {
      sub_1000180EC(v114, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_100072FD8();
    v125 = v177;
  }

  sub_100051BBC();
  v126 = v190;
  if (sub_100024D10(v123, 1, v190) == 1)
  {
    sub_10017CBB0();
    v127 = sub_100024D10(v123, 1, v126);
    v128 = v191;
    if (v127 != 1)
    {
      sub_1000180EC(v123, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_100072FD8();
    v128 = v191;
  }

  sub_100051BBC();
  if (sub_100024D10(v113, 1, v128) == 1)
  {
    sub_10017CBB0();
    v129 = sub_100024D10(v113, 1, v128);
    v130 = v178;
    if (v129 != 1)
    {
      sub_1000180EC(v113, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_100072FD8();
    v130 = v178;
  }

  sub_100051BBC();
  if (sub_100024D10(v125, 1, v122) == 1)
  {
    sub_10017CBB0();
    v131 = sub_100024D10(v125, 1, v122);
    v132 = v179;
    if (v131 != 1)
    {
      sub_1000180EC(v125, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_100072FD8();
    v132 = v179;
  }

  sub_100051BBC();
  if (sub_100024D10(v130, 1, v37) == 1)
  {
    sub_10017CBB0();
    v133 = v132;
    if (sub_100024D10(v130, 1, v37) != 1)
    {
      sub_1000180EC(v130, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_100072FD8();
    v133 = v132;
  }

  v134 = v176;
  sub_100072FD8();
  v136 = *(v97 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v135 = *(v97 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v137 = v97;
  v139 = *(v97 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v138 = *(v97 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v140 = *(v137 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v142 = *(v137 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v141 = *(v137 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v143 = *(v137 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v147) = v140;
  sub_10003E038(v185, v183, v193, v194, v195, v196, v197, v198, v133, v134, v136, v135, v139, v138, v147, v142, v141, v143, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
  v145 = v144;

  return v145;
}

uint64_t sub_100395BE0(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v114 = a4;
  DWORD2(v107) = a3;
  *&v107 = a2;
  v108 = a1;
  v127 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v127);
  v131 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v123);
  v130 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v122);
  v129 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v121);
  v128 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v120);
  v126 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v119);
  v125 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v118);
  v124 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v103);
  v117 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v97 - v13;
  __chkstk_darwin(v14);
  v116 = &v97 - v15;
  v99 = type metadata accessor for PreviewLocation(0);
  __chkstk_darwin(v99);
  v98 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v17 - 8);
  v101 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v97 - v20;
  v22 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v22 - 8);
  v115 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v97 - v25;
  v27 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v27 - 8);
  v113 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v97 - v30;
  v32 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v32 - 8);
  v111 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v97 - v35;
  v37 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v37 - 8);
  v109 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v97 - v40;
  v42 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v42 - 8);
  v105 = &v97 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v97 - v45;
  v47 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v47 - 8);
  v102 = &v97 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v51 = &v97 - v50;
  v52 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v52 - 8);
  v54 = &v97 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v57 = &v97 - v56;
  v58 = type metadata accessor for LocationPreviewModalViewState(0);
  __chkstk_darwin(v58 - 8);
  sub_100396E7C(&v97 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001B350(v57, 1, 1, v118);
  v100 = v51;
  sub_10001B350(v51, 1, 1, v119);
  v104 = v46;
  sub_10001B350(v46, 1, 1, v120);
  v106 = v41;
  v60 = v41;
  v61 = v97;
  sub_10001B350(v60, 1, 1, v121);
  v110 = v36;
  sub_10001B350(v36, 1, 1, v122);
  v112 = v31;
  sub_10001B350(v31, 1, 1, v123);
  v114 = v26;
  sub_10001B350(v26, 1, 1, v127);
  v62 = type metadata accessor for Location();
  (*(*(v62 - 8) + 16))(v98, v107, v62);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LocationPreviewViewState(0);
  type metadata accessor for SelectedSearchResult(0);
  swift_storeEnumTagMultiPayload();
  sub_100072FD8();
  sub_100072FD8();
  v63 = v103;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v21, 0, 1, v63);
  v64 = v108;
  sub_10017CBB0();
  v65 = v101;
  sub_100051BBC();
  if (sub_100024D10(v65, 1, v63) == 1)
  {
    sub_1000180EC(v65, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1000DFE80(v61, type metadata accessor for ModalViewState);
    sub_100072FD8();
  }

  sub_100072FD8();
  v66 = v64;
  v67 = *(v64 + 16);
  LODWORD(v107) = *(v64 + 24);
  sub_100051BBC();
  v68 = v118;
  v69 = sub_100024D10(v54, 1, v118);
  v70 = v102;
  *(&v107 + 1) = v67;
  if (v69 == 1)
  {
    sub_10017CBB0();
    v71 = sub_100024D10(v54, 1, v68);

    v72 = v123;
    v73 = v121;
    if (v71 != 1)
    {
      sub_1000180EC(v54, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_100072FD8();

    v72 = v123;
    v73 = v121;
  }

  sub_100051BBC();
  v74 = v119;
  if (sub_100024D10(v70, 1, v119) == 1)
  {
    swift_beginAccess();
    sub_10017CBB0();
    v75 = sub_100024D10(v70, 1, v74);
    v76 = v127;
    v77 = v122;
    v78 = v105;
    if (v75 != 1)
    {
      sub_1000180EC(v70, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_100072FD8();
    v76 = v127;
    v77 = v122;
    v78 = v105;
  }

  sub_100051BBC();
  v79 = v120;
  if (sub_100024D10(v78, 1, v120) == 1)
  {
    sub_10017CBB0();
    if (sub_100024D10(v78, 1, v79) != 1)
    {
      sub_1000180EC(v78, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_100072FD8();
  }

  v80 = v109;
  sub_100051BBC();
  if (sub_100024D10(v80, 1, v73) == 1)
  {
    sub_10017CBB0();
    if (sub_100024D10(v80, 1, v73) != 1)
    {
      sub_1000180EC(v80, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_100072FD8();
  }

  v81 = v111;
  sub_100051BBC();
  if (sub_100024D10(v81, 1, v77) == 1)
  {
    sub_10017CBB0();
    if (sub_100024D10(v81, 1, v77) != 1)
    {
      sub_1000180EC(v81, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_100072FD8();
  }

  v82 = v113;
  sub_100051BBC();
  if (sub_100024D10(v82, 1, v72) == 1)
  {
    sub_10017CBB0();
    if (sub_100024D10(v82, 1, v72) != 1)
    {
      sub_1000180EC(v82, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_100072FD8();
  }

  v83 = v115;
  sub_100051BBC();
  if (sub_100024D10(v83, 1, v76) == 1)
  {
    sub_10017CBB0();
    if (sub_100024D10(v83, 1, v76) != 1)
    {
      sub_1000180EC(v83, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_100072FD8();
  }

  v84 = v117;
  sub_100072FD8();
  v86 = *(v66 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v85 = *(v66 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v88 = *(v66 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v87 = *(v66 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v89 = *(v66 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v91 = *(v66 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v90 = *(v66 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v92 = *(v66 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v96) = v89;
  sub_10003E038(*(&v107 + 1), v107, v124, v125, v126, v128, v129, v130, v131, v84, v86, v85, v88, v87, v96, v91, v90, v92, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
  v94 = v93;

  return v94;
}

uint64_t sub_100396CBC@<X0>(char *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095588();
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    sub_1000180EC(v4, &qword_100CB3AB0, &unk_100A2FB80);
  }

  else
  {
    v9 = *(v6 + 32);
    v9(v8, v4, v5);
    v9(a1, v8, v5);
    type metadata accessor for ModalViewState.LocationDetailModal(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for ModalViewState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100396E7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  sub_100095588();
  v5 = type metadata accessor for URL();
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    sub_1000180EC(v4, &qword_100CB3AB0, &unk_100A2FB80);
  }

  else
  {
    (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  type metadata accessor for LocationPreviewModalViewState(0);
  return swift_storeEnumTagMultiPayload();
}

void (*sub_100396FB0(void (*a1)(uint64_t *__return_ptr, uint64_t)))(uint64_t *__return_ptr)
{
  v3 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v3 - 8);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for PresetAppState(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v11 = (v10 - v9);
  (a1)(&v25);
  sub_100086288(v25 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v6, type metadata accessor for TimeState);

  Date.timeIntervalSince1970.getter();
  v13 = v12;
  type metadata accessor for Date();
  sub_1000037E8();
  v15 = (*(v14 + 8))(v6);
  a1(&v25, v15);
  sub_100086288(v25 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v11 + *(v8 + 28), type metadata accessor for LocationsState);

  a1(&v25, v16);
  v18 = *(v25 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v17 = *(v25 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v19 = *(v25 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v20 = *(v25 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);

  *v11 = v13;
  v21 = (v11 + *(v8 + 32));
  *v21 = v18;
  v21[1] = v17;
  v21[2] = v19;
  v21[3] = v20;
  sub_100399548(v11, v1 + OBJC_IVAR____TtC7Weather26LocalPresetsViewController_currentAppState);
  v24.receiver = v1;
  v24.super_class = type metadata accessor for LocalPresetsViewController(0);
  v22 = objc_msgSendSuper2(&v24, "initWithStyle:", 2);

  return v22;
}

void sub_100397268()
{
  v1 = type metadata accessor for LocalPresetsViewController(0);
  v11.receiver = v0;
  v11.super_class = v1;
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v2 = [v0 tableView];
  if (v2)
  {
    v3 = v2;
    sub_10000C70C(0, &qword_100CB2D30, UITableViewCell_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = String._bridgeToObjectiveC()();
    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

    sub_1003C1790(0xD000000000000017, 0x8000000100AC3FA0, v0);
    v10[3] = v1;
    v10[0] = v0;
    objc_allocWithZone(UILongPressGestureRecognizer);
    v6 = v0;
    v7 = sub_1003995AC(v10, "didLongPressWithLongPressGesture:");
    [v7 setMinimumPressDuration:{0.5, v10[0]}];
    v8 = [v6 tableView];
    if (v8)
    {
      v9 = v8;
      [v8 addGestureRecognizer:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100397428(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 1;
  }

  type metadata accessor for LocalPreset(0);
  v2 = sub_100042948()[2];

  return v2;
}

uint64_t sub_1003974C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 0x7250206465766153;
  }
}

unint64_t sub_100397548(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return 0xD00000000000002FLL;
  }

  if (a2)
  {
    return 0;
  }

  type metadata accessor for LocalPreset(0);
  v2 = sub_100042948()[2];

  if (v2)
  {
    return 0xD000000000000033;
  }

  else
  {
    return 0;
  }
}

id sub_100397668(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a1 dequeueReusableCellWithIdentifier:v2 forIndexPath:isa];

  if (IndexPath.section.getter())
  {
    sub_1003989A0();
  }

  else
  {
    v5 = IndexPath.row.getter();
    sub_100398638(v4, v5);
  }

  return v4;
}

void sub_100397828()
{
  v0 = sub_10022C350(&qword_100CB1B20, &unk_100A42150);
  __chkstk_darwin(v0 - 8);
  v2 = &v62 - v1;
  v3 = type metadata accessor for PresetAppState(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100003C38();
  v65 = v5 - v6;
  __chkstk_darwin(v7);
  v9 = &v62 - v8;
  v10 = type metadata accessor for URL();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003C38();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  __chkstk_darwin(v20);
  v22 = &v62 - v21;
  if (IndexPath.section.getter())
  {
    if (IndexPath.section.getter() == 1)
    {
      sub_1000083DC();
      v23 = v65;
      v24 = v66;
      sub_100086288(v66 + v25, v65, v26);
      v27 = objc_allocWithZone(type metadata accessor for LocalPresetLocationsViewController(0));
      v28 = sub_10030D858(0, 0, v23);
      v29 = [v24 navigationController];
      if (v29)
      {
        v30 = v29;
        [v29 pushViewController:v28 animated:1];
      }
    }

    goto LABEL_16;
  }

  v62 = v16;
  v63 = v9;
  v64 = v22;
  type metadata accessor for LocalPreset(0);
  v31 = sub_100042948();
  v32 = IndexPath.row.getter();
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v32 >= v31[2])
  {
LABEL_18:
    __break(1u);
LABEL_19:
    sub_100014454(&qword_100CA2778);
LABEL_10:
    v38 = type metadata accessor for Logger();
    sub_10000703C(v38, qword_100D90CC0);
    v39 = v62;
    v40 = v10;
    (v12)(v62, v31, v10);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v67 = v44;
      *v43 = 136315138;
      v45 = URL.absoluteString.getter();
      v47 = v46;
      v48 = *(v19 + 1);
      v48(v39, v40);
      v49 = sub_100078694(v45, v47, &v67);

      *(v43 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "failed to load local preset app state from url: %s", v43, 0xCu);
      sub_100006F14(v44);
      sub_100003884(v44);
      sub_100003884(v43);

      v48(v64, v40);
    }

    else
    {

      v61 = *(v19 + 1);
      v61(v39, v10);
      v61(v31, v10);
    }

    goto LABEL_16;
  }

  v33 = v12;
  v34 = v12 + 16;
  v12 = *(v12 + 2);
  sub_100011468();
  v37 = v64;
  (v12)(v64, v31 + v35 + *(v34 + 7) * v36, v10);
  v31 = v37;

  (v12)(v19, v37, v10);
  sub_10051D67C(v19, v2);
  if (sub_100024D10(v2, 1, v3) == 1)
  {
    v19 = v33;
    sub_100399748(v2);
    if (qword_100CA2778 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v50 = v63;
  sub_100399548(v2, v63);
  URL.deletingPathExtension()();
  v51 = URL.lastPathComponent.getter();
  v53 = v52;
  v54 = *(v33 + 1);
  v54(v19, v10);
  sub_1000083DC();
  v55 = v65;
  sub_100086288(v50, v65, v56);
  v57 = objc_allocWithZone(type metadata accessor for LocalPresetLocationsViewController(0));
  v58 = sub_10030D858(v51, v53, v55);
  v59 = [v66 navigationController];
  if (v59)
  {
    v60 = v59;
    [v59 pushViewController:v58 animated:1];

    v58 = v60;
  }

  sub_1003997B0(v50);
  v54(v64, v10);
LABEL_16:
  sub_10000536C();
}

void sub_100397E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for URL();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v68 - v15;
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  if (a2 != 1 || IndexPath.section.getter())
  {
    goto LABEL_27;
  }

  type metadata accessor for LocalPreset(0);
  v20 = sub_100042948();
  v21 = v20[2];
  if (IndexPath.row.getter() >= v21)
  {
    sub_10000536C();

    return;
  }

  v22 = IndexPath.row.getter();
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v22 < v20[2])
  {
    sub_100011468();
    v75 = v20;
    v26 = v20 + v23 + *(v24 + 56) * v25;
    v69 = v27;
    v70 = v24;
    v27(v19, v26, v7);
    if (qword_100CA23C8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

  __break(1u);
LABEL_30:
  sub_10000FDC0(&qword_100CA23C8);
LABEL_7:
  v28 = qword_100D90658;
  v29 = type metadata accessor for LocalPresetsViewController(0);
  sub_10001BFE8(&qword_100CB1B08);
  v71 = v29;
  v72 = v28;
  v74 = v4;
  Configurable.setting<A>(_:)();
  v30 = v78;
  v31 = v79;
  URL.deletingPathExtension()();
  v32 = URL.lastPathComponent.getter();
  v34 = v33;
  v35 = *(v9 + 8);
  v73 = v9 + 8;
  v76 = v35;
  v35(v16, v7);
  if (v30 == v32 && v31 == v34)
  {

    v38 = v74;
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v38 = v74;
    if ((v37 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v78 = 0;
  v79 = 0xE000000000000000;
  sub_100399704(&qword_100CB1B10, a5_18);
  Updatable.save<A>(setting:value:)();
LABEL_18:
  v40 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v41);
  v43 = v42;
  v78 = 0;
  v44 = [v40 removeItemAtURL:v42 error:&v78];

  if (v44)
  {
    v45 = v78;
  }

  else
  {
    v46 = v78;
    v47 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100CA2778 != -1)
    {
      sub_100014454(&qword_100CA2778);
    }

    v48 = type metadata accessor for Logger();
    sub_10000703C(v48, qword_100D90CC0);
    v69(v13, v19, v7);
    swift_errorRetain();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v78 = v74;
      *v51 = 136315394;
      LODWORD(v72) = v50;
      v52 = URL.lastPathComponent.getter();
      v54 = v53;
      v76(v13, v7);
      v55 = sub_100078694(v52, v54, &v78);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      v77 = v47;
      swift_errorRetain();
      sub_10022C350(&qword_100CD8220, &qword_100A4A330);
      v56 = String.init<A>(describing:)();
      v58 = sub_100078694(v56, v57, &v78);

      *(v51 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v49, v72, "Failed to delete local preset named '%s'. error=%s", v51, 0x16u);
      v59 = v74;
      swift_arrayDestroy();
      sub_100003884(v59);
      sub_100003884(v51);
    }

    else
    {

      v76(v13, v7);
    }
  }

  v60 = [v38 tableView];
  if (v60)
  {
    v61 = v60;

    sub_10022C350(&qword_100CB1B18, &unk_100A42140);
    v62 = type metadata accessor for IndexPath();
    sub_1000037C4();
    v64 = v63;
    v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_100A2C3F0;
    (*(v64 + 16))(v66 + v65, a3, v62);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v61 deleteRowsAtIndexPaths:isa withRowAnimation:100];

    v76(v19, v7);
LABEL_27:
    sub_10000536C();
    return;
  }

  __break(1u);
}

void sub_100398638(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for URL();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100003C38();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v33 - v19;
  type metadata accessor for LocalPreset(0);
  v21 = sub_100042948();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v22 = v21;
    if (v21[2] > a2)
    {
      v34 = a1;
      sub_100011468();
      (*(v13 + 16))(v20, v22 + v23 + *(v13 + 72) * a2, v11);

      URL.deletingPathExtension()();
      a1 = URL.lastPathComponent.getter();
      a2 = v24;
      v25 = *(v13 + 8);
      v25(v17, v11);
      v25(v20, v11);
      if (qword_100CA23C8 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  sub_10000FDC0(&qword_100CA23C8);
LABEL_4:
  type metadata accessor for LocalPresetsViewController(0);
  sub_10001BFE8(&qword_100CB1B08);
  Configurable.setting<A>(_:)();
  if (a1 == v35 && a2 == v36)
  {
  }

  else
  {
    sub_1000059A0();
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v35 = 42;
  v36 = 0xE100000000000000;
  v28._countAndFlagsBits = sub_1000059A0();
  String.append(_:)(v28);

LABEL_12:
  static UIListContentConfiguration.subtitleCell()();
  sub_1000059A0();
  UIListContentConfiguration.text.setter();
  v29 = [objc_opt_self() labelColor];
  v30 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v30(&v35, 0);
  v37 = v4;
  v38 = &protocol witness table for UIListContentConfiguration;
  v31 = sub_100042FB0(&v35);
  (*(v6 + 16))(v31, v10, v4);
  v32 = v34;
  UITableViewCell.contentConfiguration.setter();
  [v32 setAccessoryType:1];
  (*(v6 + 8))(v10, v4);
  sub_10000536C();
}

uint64_t sub_1003989A0()
{
  v0 = type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  static UIListContentConfiguration.subtitleCell()();
  UIListContentConfiguration.text.setter();
  v7 = [objc_opt_self() greenColor];
  v8 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v8(v11, 0);
  v11[3] = v0;
  v11[4] = &protocol witness table for UIListContentConfiguration;
  v9 = sub_100042FB0(v11);
  (*(v2 + 16))(v9, v6, v0);
  UITableViewCell.contentConfiguration.setter();
  return (*(v2 + 8))(v6, v0);
}

void sub_100398B14(void *a1)
{
  v3 = type metadata accessor for URL();
  sub_1000037C4();
  v61 = v4;
  __chkstk_darwin(v5);
  sub_100003C38();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  v12 = type metadata accessor for IndexPath();
  sub_1000037C4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100003C38();
  v18 = v16 - v17;
  v20 = __chkstk_darwin(v19);
  v63 = &v60 - v21;
  v22 = [v1 tableView];
  [a1 locationInView:v22];
  v24 = v23;
  v26 = v25;

  v62 = v1;
  v27 = [v1 tableView];
  if (!v27)
  {
    __break(1u);
    return;
  }

  v28 = v27;
  v29 = [v27 indexPathForRowAtPoint:{v24, v26}];

  if (v29)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = v14;
    v31 = *(v14 + 32);
    v32 = v63;
    v31(v63, v18, v12);
    if (IndexPath.section.getter() || [a1 state] != 1)
    {
      goto LABEL_17;
    }

    type metadata accessor for LocalPreset(0);
    v33 = sub_100042948();
    v34 = IndexPath.row.getter();
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v34 < *(v33 + 2))
    {
      v35 = v61;
      sub_100011468();
      (*(v35 + 16))(v11, &v33[v36 + *(v35 + 72) * v37], v3);

      URL.deletingPathExtension()();
      v28 = URL.lastPathComponent.getter();
      v33 = v38;
      v39 = *(v35 + 8);
      v32 = (v35 + 8);
      v39(v8, v3);
      v39(v11, v3);
      if (qword_100CA23C8 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_21:
    sub_10000FDC0(&qword_100CA23C8);
LABEL_8:
    type metadata accessor for LocalPresetsViewController(0);
    sub_10001BFE8(&qword_100CB1B08);
    v40 = v62;
    Configurable.setting<A>(_:)();
    if (v28 == v64 && v33 == v65)
    {
    }

    else
    {
      sub_1000059A0();
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
        sub_10000C70C(0, &qword_100CAC5F8, UIAlertController_ptr);
        sub_100074924();
        sub_100028320("Do you wish to apply the preset named '");
        v43._countAndFlagsBits = sub_1000059A0();
        String.append(_:)(v43);
        v44._countAndFlagsBits = (v32 + 5);
        v44._object = 0x8000000100AC3EA0;
        String.append(_:)(v44);
        v45 = sub_100604878(0x50207463656C6553, 0xED00007465736572, v64, v65, 1);
        sub_10000C70C(0, &qword_100CAC600, UIAlertAction_ptr);
        v46 = swift_allocObject();
        v46[2] = v62;
        v46[3] = v28;
        v46[4] = v33;
        v47 = v62;
        v48 = v45;
        v49 = sub_1003996F0;
        v50 = 0x7463656C6553;
        v51 = 0xE600000000000000;
        v52 = v46;
        v40 = v62;
LABEL_16:
        v58 = sub_100604930(v50, v51, 0, v49, v52);
        [v48 addAction:v58];

        sub_10000C70C(0, &qword_100CAC600, UIAlertAction_ptr);
        v59 = sub_100604930(0x6C65636E6143, 0xE600000000000000, 1, 0, 0);
        [v48 addAction:v59];

        [v40 presentViewController:v48 animated:1 completion:0];
        v32 = v63;
LABEL_17:
        (*(v30 + 8))(v32, v12);
        return;
      }
    }

    sub_10000C70C(0, &qword_100CAC5F8, UIAlertController_ptr);
    sub_100074924();
    sub_100028320("Do you wish deselect the preset named '");
    v53._countAndFlagsBits = sub_1000059A0();
    String.append(_:)(v53);

    v54._countAndFlagsBits = (v32 + 5);
    v54._object = 0x8000000100AC3EA0;
    String.append(_:)(v54);
    v55 = sub_100604878(0x7463656C65736544, 0xEF74657365725020, v64, v65, 1);
    sub_10000C70C(0, &qword_100CAC600, UIAlertAction_ptr);
    v56 = swift_allocObject();
    *(v56 + 16) = v40;
    v48 = v55;
    v57 = v40;
    v49 = sub_1003996FC;
    v50 = 0x7463656C65736544;
    v51 = 0xE800000000000000;
    v52 = v56;
    goto LABEL_16;
  }
}

void sub_100399150()
{
  if (qword_100CA23C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for LocalPresetsViewController(0);
  sub_100399704(&qword_100CB1B10, a5_18);
  Updatable.save<A>(setting:value:)();
  exit(0);
}

void sub_1003991F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100CA23C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for LocalPresetsViewController(0);
  sub_100399704(&qword_100CB1B10, a5_18);
  Updatable.save<A>(setting:value:)();
  exit(0);
}

id sub_10039939C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalPresetsViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LocalPresetsViewController(uint64_t a1)
{
  result = qword_100CB1AF8;
  if (!qword_100CB1AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100399438(uint64_t a1)
{
  result = type metadata accessor for PresetAppState(319);
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

uint64_t sub_100399548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresetAppState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1003995AC(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = sub_1000161C0(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v4);
    sub_100006F14(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_100399704(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for LocalPresetsViewController(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100399748(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB1B20, &unk_100A42150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003997B0(uint64_t a1)
{
  v2 = type metadata accessor for PresetAppState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10039981C@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for WeatherMapPresentationState(0);
  v3 = v2[6];
  v4 = enum case for WeatherMapPrecipitationOverlayKind.auto(_:);
  type metadata accessor for WeatherMapPrecipitationOverlayKind();
  sub_1000037E8();
  (*(v5 + 104))(&a1[v3], v4);
  v6 = enum case for WeatherMapOverlayKind.precipitation(_:);
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037E8();
  (*(v7 + 104))(&a1[v3], v6);
  v8 = v2[8];
  v9 = sub_10022C350(&qword_100CA6660, &unk_100A41280);
  result = sub_10001B350(&a1[v8], 3, 3, v9);
  *a1 = -32764;
  v11 = &a1[v2[7]];
  *v11 = 0;
  *(v11 + 1) = 0;
  a1[v2[9]] = 1;
  return result;
}

uint64_t sub_100399920@<X0>(unsigned __int8 a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X8>)
{
  v10 = v7;
  v46 = a1;
  v13 = a1;
  v14 = sub_10022C350(&qword_100CA6698, &unk_100A314B0);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_100014230();
  v16 = type metadata accessor for WeatherMapTrackingState(0);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v44 = v19 - v18;
  v20 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  sub_10001320C();
  v22 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_1000037D8();
  v28 = v27 - v26;
  if (v13 == 6)
  {
    v46 = *v10;
  }

  v29 = a2;
  if (a2 >= 0xFEu)
  {
    v29 = v10[1];
  }

  v42 = v29;
  sub_100035AD0(a3, v8, &qword_100CA5CF8, &unk_100A302F0);
  v30 = a4;
  if (sub_100024D10(v8, 1, v22) == 1)
  {
    v31 = type metadata accessor for WeatherMapPresentationState(0);
    (*(v24 + 16))(v28, &v10[*(v31 + 24)], v22);
    if (sub_100024D10(v8, 1, v22) != 1)
    {
      sub_1000180EC(v8, &qword_100CA5CF8, &unk_100A302F0);
    }
  }

  else
  {
    (*(v24 + 32))(v28, v8, v22);
  }

  v32 = a5;
  if (!a5)
  {
    v33 = &v10[*(type metadata accessor for WeatherMapPresentationState(0) + 28)];
    v30 = *v33;
    v32 = v33[1];
  }

  sub_100035AD0(a6, v9, &qword_100CA6698, &unk_100A314B0);
  if (sub_100024D10(v9, 1, v16) == 1)
  {
    type metadata accessor for WeatherMapPresentationState(0);
    sub_10000FDE0();
    sub_1000BBEF8(&v10[v34], v44);
    v35 = v16;
    v36 = v44;
    v37 = sub_100024D10(v9, 1, v35);

    if (v37 != 1)
    {
      sub_1000180EC(v9, &qword_100CA6698, &unk_100A314B0);
    }
  }

  else
  {
    v36 = v44;
    sub_1000B0AD0(v9, v44);
  }

  v38 = sub_100399CD0(a2, v10);
  *a7 = v46;
  a7[1] = v42;
  v39 = type metadata accessor for WeatherMapPresentationState(0);
  (*(v24 + 32))(&a7[v39[6]], v28, v22);
  v40 = &a7[v39[7]];
  *v40 = v30;
  *(v40 + 1) = v32;
  result = sub_1000B0AD0(v36, &a7[v39[8]]);
  a7[v39[9]] = v38 & 1;
  return result;
}

uint64_t sub_100399CD0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 0xFEu)
  {
    return *(a2 + *(type metadata accessor for WeatherMapPresentationState(0) + 36));
  }

  v4 = *(a2 + 1);
  IsSlow = DeviceIsSlow();
  if ((v2 & 0xFFFFFFC1) == 0x40)
  {
    return 0;
  }

  if (IsSlow)
  {
    return 0;
  }

  return (v4 & 0xFFFFFFC1) != 64;
}

uint64_t sub_100399D40()
{
  if (*v0 == 5)
  {
    return 2;
  }

  else
  {
    return 5;
  }
}

BOOL sub_100399D58(char a1, char a2)
{
  if (a1 == 5)
  {
    return a2 == 5;
  }

  if (a1 == 4)
  {
    return a2 == 4;
  }

  if ((a2 & 0xFE) == 4)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t sub_100399DAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000100AC4170 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000100AC4190 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4B79616C7265766FLL && a2 == 0xEB00000000646E69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x8000000100AC41B0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E696B63617274 && a2 == 0xED00006574617453;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000011 && 0x8000000100AC41D0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100399FA8(char a1)
{
  result = 0x4B79616C7265766FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0x676E696B63617274;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_10039A080(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000100AC41F0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x536E6F6973736573 && a2 == 0xEE00646574726174;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000100AC4210 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x456E6F6973736573 && a2 == 0xEC0000006465646ELL)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_10039A1F4(char a1)
{
  result = 0x536E6F6973736573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x456E6F6973736573;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_10039A298(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C6C7546736177 && a2 == 0xED00006E65657263;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B79616C7265766FLL && a2 == 0xEB00000000646E69)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10039A36C(char a1)
{
  if (a1)
  {
    return 0x4B79616C7265766FLL;
  }

  else
  {
    return 0x736C6C7546736177;
  }
}

uint64_t sub_10039A3B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F74747542726162 && a2 == 0xE90000000000006ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614D656E696C6E69 && a2 == 0xE900000000000070;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614D64656E6E6970 && a2 == 0xE900000000000070;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C616E7265747865 && a2 == 0xED00006574617453)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10039A524(char a1)
{
  result = 0x6F74747542726162;
  switch(a1)
  {
    case 1:
      v3 = 0x656E696C6E69;
      goto LABEL_4;
    case 2:
      v3 = 0x64656E6E6970;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614D000000000000;
      break;
    case 3:
      result = 0x6C616E7265747865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10039A5C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465656873 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10039A68C(char a1)
{
  if (a1)
  {
    return 0x656C616373;
  }

  else
  {
    return 0x7465656873;
  }
}

uint64_t sub_10039A6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100399DAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10039A6E4(uint64_t a1)
{
  v2 = sub_1003A008C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039A720(uint64_t a1)
{
  v2 = sub_1003A008C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039A764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10039A080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10039A78C(uint64_t a1)
{
  v2 = sub_1003A0968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039A7C8(uint64_t a1)
{
  v2 = sub_1003A0968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039A804(uint64_t a1)
{
  v2 = sub_1003A09BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039A840(uint64_t a1)
{
  v2 = sub_1003A09BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039A884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10039A298(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10039A8AC(uint64_t a1)
{
  v2 = sub_1003A0A10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039A8E8(uint64_t a1)
{
  v2 = sub_1003A0A10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039A924(uint64_t a1)
{
  v2 = sub_1003A0AB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039A960(uint64_t a1)
{
  v2 = sub_1003A0AB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039A99C(uint64_t a1)
{
  v2 = sub_1003A0A64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039A9D8(uint64_t a1)
{
  v2 = sub_1003A0A64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039AA14(uint64_t a1)
{
  v2 = sub_1003A0578();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039AA50(uint64_t a1)
{
  v2 = sub_1003A0578();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039AA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10039A3B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10039AABC(uint64_t a1)
{
  v2 = sub_1003A0428();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039AAF8(uint64_t a1)
{
  v2 = sub_1003A0428();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039AB34(uint64_t a1)
{
  v2 = sub_1003A047C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039AB70(uint64_t a1)
{
  v2 = sub_1003A047C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039ABAC(uint64_t a1)
{
  v2 = sub_1003A0524();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039ABE8(uint64_t a1)
{
  v2 = sub_1003A0524();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039AC24(uint64_t a1)
{
  v2 = sub_1003A04D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039AC60(uint64_t a1)
{
  v2 = sub_1003A04D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039AC9C(uint64_t a1)
{
  v2 = sub_1003A0230();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039ACD8(uint64_t a1)
{
  v2 = sub_1003A0230();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039AD18(uint64_t a1)
{
  v2 = sub_1003A0284();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039AD54(uint64_t a1)
{
  v2 = sub_1003A0284();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039AD90(uint64_t a1)
{
  v2 = sub_1003A0380();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039ADCC(uint64_t a1)
{
  v2 = sub_1003A0380();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039AE08(uint64_t a1)
{
  v2 = sub_1003A032C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039AE44(uint64_t a1)
{
  v2 = sub_1003A032C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039AE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10039A5C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10039AEB0(uint64_t a1)
{
  v2 = sub_1003A086C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039AEEC(uint64_t a1)
{
  v2 = sub_1003A086C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039AF28(uint64_t a1)
{
  v2 = sub_1003A08C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039AF64(uint64_t a1)
{
  v2 = sub_1003A08C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039AFA0(uint64_t a1)
{
  v2 = sub_1003A0914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039AFDC(uint64_t a1)
{
  v2 = sub_1003A0914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039B018(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C6E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_100071914(0x656E696C6E69, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64656E6E6970 && a2 == 0xE600000000000000;
    if (v6 || (sub_100071914(0x64656E6E6970, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x657263736C6C7566 && a2 == 0xEA00000000006E65)
    {

      return 2;
    }

    else
    {
      v8 = sub_100071914(0x657263736C6C7566, 0xEA00000000006E65);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int sub_10039B10C(unsigned __int8 a1)
{
  sub_10003259C();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_10039B14C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_10039B1BC()
{
  sub_10003259C();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10039B1F8(uint64_t a1)
{
  v2 = sub_1003A05CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039B234(uint64_t a1)
{
  v2 = sub_1003A05CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039B270(uint64_t a1)
{
  v2 = sub_1003A0620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039B2AC(uint64_t a1)
{
  v2 = sub_1003A0620();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039B2E8(uint64_t a1)
{
  v2 = sub_1003A0770();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039B324(uint64_t a1)
{
  v2 = sub_1003A0770();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039B360(uint64_t a1)
{
  v2 = sub_1003A06C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039B39C(uint64_t a1)
{
  v2 = sub_1003A06C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039B3D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10039B4A0(char a1)
{
  if (a1)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 7368564;
  }
}

uint64_t sub_10039B4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10039B3D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10039B500(uint64_t a1)
{
  v2 = sub_1003A0B0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039B53C(uint64_t a1)
{
  v2 = sub_1003A0B0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039B578(uint64_t a1)
{
  v2 = sub_1003A0BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039B5B4(uint64_t a1)
{
  v2 = sub_1003A0BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039B5F0(uint64_t a1)
{
  v2 = sub_1003A0B60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039B62C(uint64_t a1)
{
  v2 = sub_1003A0B60();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10039B678(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 != 1)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  v4 = a2 & 1;
LABEL_7:
  Hasher._combine(_:)(v4);
}

Swift::Int sub_10039B6CC(unsigned __int8 a1)
{
  sub_10003259C();
  sub_10039B678(v3, a1);
  return Hasher._finalize()();
}

void sub_10039B70C()
{
  sub_1000038D8();
  v1 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for WeatherMapTrackingState(0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = (v11 - v10);
  sub_10000FDE0();
  sub_1000BBEF8(v0, v12);
  v13 = sub_10022C350(&qword_100CA6660, &unk_100A41280);
  switch(sub_100024D10(v12, 3, v13))
  {
    case 1u:
      v17 = 0;
      goto LABEL_6;
    case 2u:
      v17 = 1;
      goto LABEL_6;
    case 3u:
      v17 = 3;
LABEL_6:
      Hasher._combine(_:)(v17);
      break;
    default:
      v14 = *v12;
      (*(v3 + 32))(v7, &v12[*(v13 + 48)], v1);
      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(v14);
      sub_10001C00C();
      sub_1003A0044(v15, v16, &protocol conformance descriptor for WeatherMapOverlayKind);
      dispatch thunk of Hashable.hash(into:)();
      (*(v3 + 8))(v7, v1);
      break;
  }
}

Swift::Int sub_10039B8E4()
{
  sub_10003259C();
  sub_10039B70C();
  return Hasher._finalize()();
}

Swift::Int sub_10039B91C(char a1)
{
  sub_10003259C();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_10039B95C(uint64_t a1)
{
  v3 = sub_10022C350(&qword_100CB1CE0, &qword_100A42940);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v16[-v7];
  v9 = sub_10003A17C();
  sub_10001930C(v9, v10);
  sub_1003A008C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16[15] = *v1;
  v16[14] = 0;
  sub_1003A0188();
  sub_100016834();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16[13] = v1[1];
    sub_10012006C();
    sub_1003A01DC();
    sub_100016834();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for WeatherMapPresentationState(0);
    v16[11] = 2;
    type metadata accessor for WeatherMapOverlayKind();
    sub_10001C00C();
    sub_1003A0044(v11, v12, &protocol conformance descriptor for WeatherMapOverlayKind);
    sub_100016834();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[10] = 3;
    sub_100016834();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16[9] = 4;
    type metadata accessor for WeatherMapTrackingState(0);
    sub_10000E9AC();
    sub_1003A0044(v13, v14, byte_100A42560);
    sub_100016834();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[8] = 5;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_10039BBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000E8AC();
  v29 = v28;
  v55 = v30;
  type metadata accessor for WeatherMapTrackingState(0);
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_1000037D8();
  v34 = v33 - v32;
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v56 = v36;
  v57 = v35;
  __chkstk_darwin(v35);
  sub_1000037D8();
  v39 = v38 - v37;
  sub_10022C350(&qword_100CB1CB0, &qword_100A42938);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v40);
  sub_10000C8D8();
  v58 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_1000037D8();
  v44 = (v43 - v42);
  sub_10001930C(v29, v29[3]);
  sub_1003A008C();
  sub_1000C899C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    sub_100006F14(v29);
  }

  else
  {
    sub_1003A00E0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v44 = a17;
    sub_10012006C();
    sub_1003A0134();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44[1] = a15;
    sub_10001C00C();
    sub_1003A0044(v45, v46, &protocol conformance descriptor for WeatherMapOverlayKind);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v56 + 32))(&v44[v58[6]], v39, v57);
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48 = &v44[v58[7]];
    *v48 = v47;
    v48[1] = v49;
    sub_10000E9AC();
    sub_1003A0044(v50, v51, byte_100A42588);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000B0AD0(v34, &v44[v58[8]]);
    v52 = KeyedDecodingContainer.decode(_:forKey:)();
    v53 = sub_1000A7BCC();
    v54(v53);
    v44[v58[9]] = v52 & 1;
    sub_1000BBEF8(v44, v55);
    sub_100006F14(v29);
    sub_1000BBFB0(v44, type metadata accessor for WeatherMapPresentationState);
  }

  sub_10000C8F4();
}

void sub_10039C0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_10000E8AC();
  a24 = v28;
  a25 = v29;
  sub_100086754(v30, v31);
  sub_10022C350(&qword_100CB1D50, &qword_100A42970);
  sub_1000037C4();
  v50 = v32;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  sub_10022C350(&qword_100CB1D58, &qword_100A42978);
  sub_1000037C4();
  v48 = v35;
  v49 = v34;
  sub_100003828();
  __chkstk_darwin(v36);
  sub_10001634C();
  v37 = sub_10022C350(&qword_100CB1D60, &qword_100A42980);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v38);
  sub_100003CB4();
  v39 = sub_10022C350(&qword_100CB1D68, &qword_100A42988);
  sub_1000037C4();
  v41 = v40;
  sub_100003828();
  __chkstk_darwin(v42);
  sub_100014230();
  sub_10001930C(v25, v25[3]);
  sub_1003A0230();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (a10 == 5)
  {
    sub_10001635C();
    sub_1003A032C();
    sub_1000716B8(&type metadata for WeatherMapPresentationIntent.PinnedCodingKeys, &a13);
    v45 = v49;
    v44 = *(v48 + 8);
    v43 = v27;
  }

  else
  {
    if (a10 != 4)
    {
      sub_1001706C0();
      sub_1003A0284();
      sub_1000716B8(&type metadata for WeatherMapPresentationIntent.FullscreenCodingKeys, &a15);
      a14 = a10;
      sub_1003A03D4();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v46 = sub_1000168C4();
      v47(v46, v50);
      (*(v41 + 8))(v26, v39);
      goto LABEL_7;
    }

    a12 = 0;
    sub_1003A0380();
    sub_1000716B8(&type metadata for WeatherMapPresentationIntent.InlineCodingKeys, &a12);
    v43 = sub_1000168C4();
    v45 = v37;
  }

  v44(v43, v45);
  (*(v41 + 8))(v26, v39);
LABEL_7:
  sub_10002FE90();
  sub_10000C8F4();
}

void sub_10039C3FC()
{
  sub_10000E8AC();
  v3 = v2;
  sub_10022C350(&qword_100CB1D08, &qword_100A42948);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  sub_10022C350(&qword_100CB1D10, &qword_100A42950);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_100003CB4();
  v6 = sub_10022C350(&qword_100CB1D18, &qword_100A42958);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_10002C698();
  v8 = sub_10022C350(&qword_100CB1D20, &unk_100A42960);
  sub_1000037C4();
  v42 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001320C();
  sub_10001930C(v3, v3[3]);
  sub_1003A0230();
  sub_1000201C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.allKeys.getter();
    sub_100618E80();
    sub_1000325B4();
    if (v11)
    {
      goto LABEL_9;
    }

    sub_1000168B4();
    sub_100071CB4();
    if (v18 == v19)
    {
      __break(1u);
      return;
    }

    v20 = *(v17 + v16);
    sub_100031CE0(v12, v13, v14, v15, v16);
    sub_100618E7C();
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 != v24 >> 1)
    {
LABEL_9:
      v29 = type metadata accessor for DecodingError();
      sub_10004399C(v29, &protocol witness table for DecodingError);
      v31 = v30;
      sub_10022C350(&qword_100CA7610, &qword_100A327C0);
      *v31 = &type metadata for WeatherMapPresentationIntent;
      v32 = KeyedDecodingContainer.codingPath.getter();
      sub_10000E98C(v32);
      sub_100003B20();
      (*(v33 + 104))(v31);
      swift_willThrow();
      swift_unknownObjectRelease();
      v34 = sub_100028348();
      v35(v34);
    }

    else if (v20)
    {
      if (v20 == 1)
      {
        sub_10001635C();
        sub_1003A032C();
        sub_100031584();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        v25 = sub_1000168C4();
        v26(v25);
        v27 = sub_100028348();
        v28(v27);
      }

      else
      {
        sub_1001706C0();
        sub_1003A0284();
        sub_100031584();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_1003A02D8();
        sub_100022A44();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v40 = sub_1000B98F4();
        v41(v40);
        (*(v42 + 8))(v1, v8);
      }
    }

    else
    {
      sub_1003A0380();
      sub_100031584();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      v36 = sub_1000C834C();
      v37(v36, v6);
      v38 = sub_100028348();
      v39(v38);
    }
  }

  sub_100006F14(v3);
  sub_10002FE90();
  sub_10000C8F4();
}

void sub_10039C964()
{
  sub_10000E8AC();
  v14 = v0;
  v2 = v1;
  sub_10022C350(&qword_100CB1DC8, &qword_100A429B8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  sub_10022C350(&qword_100CB1DD0, &qword_100A429C0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  sub_10022C350(&qword_100CB1DD8, &qword_100A429C8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_100003CB4();
  v6 = sub_10022C350(&qword_100CB1DE0, &qword_100A429D0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100014230();
  sub_10022C350(&qword_100CB1DE8, &qword_100A429D8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_10000C8D8();
  sub_10001930C(v2, v2[3]);
  sub_1003A0428();
  sub_1000C899C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v14)
  {
    case 1:
      sub_10001635C();
      sub_1003A0524();
      sub_100022A44();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v9 = sub_1000168C4();
      break;
    case 2:
      sub_1000C8FEC();
      sub_1003A04D0();
      sub_100022A44();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      goto LABEL_5;
    case 3:
      sub_1000BCE14();
      sub_1003A047C();
      sub_100022A44();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
LABEL_5:
      v9 = sub_1000C834C();
      break;
    default:
      sub_1003A0578();
      sub_100022A44();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v9 = sub_1000419B4();
      v11 = v6;
      break;
  }

  v10(v9, v11);
  v12 = sub_1000B98F4();
  v13(v12);
  sub_10000C8F4();
}

void sub_10039CCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_10000E8AC();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v68 = sub_10022C350(&qword_100CB1D78, &qword_100A42990);
  sub_1000037C4();
  v65 = v30;
  sub_100003828();
  __chkstk_darwin(v31);
  sub_1000039BC();
  v67 = v32;
  sub_10022C350(&qword_100CB1D80, &qword_100A42998);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  sub_10022C350(&qword_100CB1D88, &qword_100A429A0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v34);
  sub_100003CB4();
  v35 = sub_10022C350(&qword_100CB1D90, &qword_100A429A8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v36);
  sub_10001320C();
  v37 = sub_10022C350(&qword_100CB1D98, &qword_100A429B0);
  sub_1000037C4();
  v66 = v38;
  sub_100003828();
  __chkstk_darwin(v39);
  sub_10002C698();
  sub_10001930C(v29, v29[3]);
  sub_1003A0428();
  sub_1000201C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    v69 = v29;
    v40 = v25;
    KeyedDecodingContainer.allKeys.getter();
    sub_100618E80();
    sub_1000325B4();
    if (!v41)
    {
      sub_1000168B4();
      sub_100071CB4();
      if (v48 == v49)
      {
        __break(1u);
        return;
      }

      v50 = *(v47 + v46);
      sub_100031CE0(v42, v43, v44, v45, v46);
      sub_100618E7C();
      v52 = v51;
      v54 = v53;
      swift_unknownObjectRelease();
      if (v52 == v54 >> 1)
      {
        switch(v50)
        {
          case 1:
            sub_10001635C();
            sub_1003A0524();
            sub_100022A54(&type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.InlineMapCodingKeys, &a12);
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            sub_1000C8FEC();
            sub_1003A04D0();
            sub_100022A54(&type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.PinnedMapCodingKeys, &a13);
            swift_unknownObjectRelease();
LABEL_14:
            v55 = sub_1000168C4();
            goto LABEL_15;
          case 3:
            sub_1000BCE14();
            sub_1003A047C();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            swift_unknownObjectRelease();
            (*(v65 + 8))(v67, v68);
            goto LABEL_16;
          default:
            a11 = 0;
            sub_1003A0578();
            sub_100022A54(&type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.BarButtonCodingKeys, &a11);
            swift_unknownObjectRelease();
            v55 = sub_1000168C4();
            v57 = v35;
LABEL_15:
            v56(v55, v57);
LABEL_16:
            (*(v66 + 8))(v40, v37);
            sub_100006F14(v69);
            break;
        }

        goto LABEL_10;
      }
    }

    v58 = type metadata accessor for DecodingError();
    sub_10004399C(v58, &protocol witness table for DecodingError);
    v60 = v59;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v60 = &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource;
    v61 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v61);
    sub_100003B20();
    (*(v62 + 104))(v60);
    swift_willThrow();
    swift_unknownObjectRelease();
    v63 = sub_1000419B4();
    v64(v63, v37);
    v29 = v69;
  }

  sub_100006F14(v29);
LABEL_10:
  sub_10002FE90();
  sub_10000C8F4();
}

void sub_10039D25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10000E8AC();
  a25 = v28;
  a26 = v29;
  v54 = v30;
  v32 = v31;
  sub_10022C350(&qword_100CB1E40, &qword_100A42A00);
  sub_1000037C4();
  v52 = v34;
  v53 = v33;
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  v51 = v36;
  sub_10022C350(&qword_100CB1E48, &qword_100A42A08);
  sub_1000037C4();
  v49 = v38;
  v50 = v37;
  sub_100003828();
  __chkstk_darwin(v39);
  sub_10001634C();
  v40 = sub_10022C350(&qword_100CB1E50, &qword_100A42A10);
  sub_1000037C4();
  v48 = v41;
  sub_100003828();
  __chkstk_darwin(v42);
  sub_10001320C();
  sub_10022C350(&qword_100CB1E58, &qword_100A42A18);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v43);
  sub_10002C698();
  sub_10001930C(v32, v32[3]);
  sub_1003A05CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v54 >> 6)
  {
    if (v54 >> 6 != 1)
    {
      a12 = 0;
      sub_1003A0770();
      sub_100037A70(&type metadata for WeatherMapPresentationStyle.InlineCodingKeys, &a12);
      (*(v48 + 8))(v26, v40);
      v46 = sub_100008408();
      v47(v46);
      goto LABEL_7;
    }

    sub_1001706C0();
    sub_1003A0620();
    sub_100037A70(&type metadata for WeatherMapPresentationStyle.FullscreenCodingKeys, &a16);
    a15 = v54 & 1;
    sub_1003A07C4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v52 + 8))(v51, v53);
  }

  else
  {
    sub_10001635C();
    sub_1003A06C8();
    sub_100037A70(&type metadata for WeatherMapPresentationStyle.PinnedCodingKeys, &a14);
    a13 = v54 & 1;
    sub_1003A0818();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v49 + 8))(v27, v50);
  }

  v44 = sub_100008408();
  v45(v44);
LABEL_7:
  sub_10002FE90();
  sub_10000C8F4();
}

void sub_10039D5C8()
{
  sub_10000E8AC();
  v3 = v2;
  v45 = sub_10022C350(&qword_100CB1DF0, &qword_100A429E0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v46 = v5;
  sub_10022C350(&qword_100CB1DF8, &qword_100A429E8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100003CB4();
  v7 = sub_10022C350(&qword_100CB1E00, &qword_100A429F0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_100014230();
  v9 = sub_10022C350(&qword_100CB1E08, &qword_100A429F8);
  sub_1000037C4();
  v11 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_10001320C();
  v47 = v3;
  sub_10001930C(v3, v3[3]);
  sub_1003A05CC();
  sub_1000201C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_11;
  }

  v48 = v11;
  v13 = v1;
  KeyedDecodingContainer.allKeys.getter();
  sub_100618E80();
  sub_1000325B4();
  if (v14)
  {
LABEL_10:
    v28 = type metadata accessor for DecodingError();
    sub_10004399C(v28, &protocol witness table for DecodingError);
    v30 = v29;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v30 = &type metadata for WeatherMapPresentationStyle;
    v31 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v31);
    sub_100003B20();
    (*(v32 + 104))(v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v48 + 8))(v13, v9);
LABEL_11:
    v33 = v47;
    goto LABEL_12;
  }

  sub_1000168B4();
  sub_100071CB4();
  if (v21 == v22)
  {
    __break(1u);
    return;
  }

  v23 = *(v20 + v19);
  sub_100031CE0(v15, v16, v17, v18, v19);
  sub_100618E7C();
  v25 = v24;
  v27 = v26;
  swift_unknownObjectRelease();
  if (v25 != v27 >> 1)
  {
    v13 = v1;
    goto LABEL_10;
  }

  if (!v23)
  {
    sub_1003A0770();
    sub_100031584();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    swift_unknownObjectRelease();
    v34 = sub_1000C834C();
    v35(v34, v7);
    v36 = sub_1000083F4();
    v37(v36);
    goto LABEL_15;
  }

  if (v23 == 1)
  {
    sub_10001635C();
    sub_1003A06C8();
    sub_100031584();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_1003A071C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    v38 = sub_1000AF558();
    v39(v38);
    v40 = sub_1000083F4();
    v41(v40);
LABEL_15:
    v33 = v47;
    goto LABEL_12;
  }

  sub_1001706C0();
  sub_1003A0620();
  sub_100031584();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v33 = v47;
  sub_1003A0674();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  sub_100014484();
  v42(v46, v45);
  v43 = sub_100052680();
  v44(v43);
LABEL_12:
  sub_100006F14(v33);
  sub_10000C8F4();
}

void sub_10039DBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_10000E8AC();
  sub_100086754(v10, v11);
  sub_10022C350(&qword_100CB1EA0, &qword_100A42A38);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_100003CB4();
  sub_10022C350(&qword_100CB1EA8, &qword_100A42A40);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v13);
  sub_10001634C();
  sub_10022C350(&qword_100CB1EB0, &qword_100A42A48);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v14);
  sub_10000C8D8();
  v15 = sub_10003A17C();
  sub_10001930C(v15, v16);
  sub_1003A086C();
  sub_1000C899C();
  sub_100087158();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (a10)
  {
    sub_1000168D0();
    sub_1003A08C0();
    sub_100022A44();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = sub_1000168C4();
  }

  else
  {
    sub_1003A0914();
    sub_100022A44();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = sub_100052680();
  }

  v18(v17);
  v19 = sub_1000B98F4();
  v20(v19);
  sub_10000C8F4();
}

void sub_10039DE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  sub_10022C350(&qword_100CB1E70, &qword_100A42A20);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v28);
  sub_10000C8C8();
  v29 = sub_10022C350(&qword_100CB1E78, &qword_100A42A28);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v30);
  sub_10001634C();
  v31 = sub_10022C350(&qword_100CB1E80, &qword_100A42A30);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v32);
  sub_100003CB4();
  v33 = v27[4];
  sub_10001930C(v27, v27[3]);
  sub_1003A086C();
  sub_1000201C8();
  sub_100087158();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    sub_10012CC7C();
    sub_100618E80();
    if (v35 != v34 >> 1)
    {
      sub_1000168B4();
      sub_100071CB4();
      if (v41 == v42)
      {
        __break(1u);
        return;
      }

      sub_100088390(v36, v37, v38, v39, v40);
      sub_100618E7C();
      sub_1000C8E68();
      if (!v33)
      {
        if (v27)
        {
          sub_1000168D0();
          sub_1003A08C0();
          sub_1000059C4(&type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle.ScaleCodingKeys, &a13);
          swift_unknownObjectRelease();
          v50 = sub_1000419B4();
          v51(v50, v29);
        }

        else
        {
          a12 = 0;
          sub_1003A0914();
          sub_1000059C4(&type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle.SheetCodingKeys, &a12);
          swift_unknownObjectRelease();
          sub_100014484();
          v54();
        }

        v52 = sub_100014474();
        v53(v52);
        sub_100006F14(0);
        goto LABEL_10;
      }
    }

    v43 = type metadata accessor for DecodingError();
    sub_10004399C(v43, &protocol witness table for DecodingError);
    v45 = v44;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v45 = &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle;
    v46 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v46);
    sub_100003B20();
    (*(v47 + 104))(v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = sub_1000168C4();
    v49(v48, v31);
    v27 = 0;
  }

  sub_100006F14(v27);
LABEL_10:
  sub_10000C8F4();
}

void sub_10039E1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10000E8AC();
  a25 = v28;
  a26 = v29;
  v70 = v26;
  v31 = v30;
  sub_10022C350(&qword_100CB1F08, &qword_100A42A78);
  sub_1000037C4();
  v63 = v33;
  v64 = v32;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  v62 = v35;
  sub_10022C350(&qword_100CB1F10, &qword_100A42A80);
  sub_1000037C4();
  v69 = v36;
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  v66 = v38;
  type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v67 = v40;
  v68 = v39;
  __chkstk_darwin(v39);
  sub_1000037D8();
  v65 = v42 - v41;
  sub_10022C350(&qword_100CB1F18, &qword_100A42A88);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v43);
  sub_100003CB4();
  sub_10022C350(&qword_100CB1F20, &qword_100A42A90);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v44);
  sub_10000C8D8();
  v45 = type metadata accessor for WeatherMapTrackingState(0);
  v46 = sub_100003810(v45);
  __chkstk_darwin(v46);
  sub_1000037D8();
  v49 = v48 - v47;
  sub_10022C350(&qword_100CB1F28, &qword_100A42A98);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v50);
  sub_10002C698();
  sub_10001930C(v31, v31[3]);
  sub_1003A0968();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10000FDE0();
  sub_1000BBEF8(v70, v49);
  v51 = sub_10022C350(&qword_100CA6660, &unk_100A41280);
  switch(sub_100024D10(v49, 3, v51))
  {
    case 1u:
      a11 = 0;
      sub_1003A0AB8();
      sub_100037A70(&type metadata for WeatherMapTrackingState.SessionShouldStartCodingKeys, &a11);
      v57 = sub_1000B98F4();
      goto LABEL_8;
    case 2u:
      a12 = 1;
      sub_1003A0A64();
      sub_100037A70(&type metadata for WeatherMapTrackingState.SessionStartedCodingKeys, &a12);
      v57 = sub_1000168C4();
LABEL_8:
      v59(v57, v58);
      goto LABEL_9;
    case 3u:
      sub_1000BCE14();
      sub_1003A09BC();
      sub_100037A70(&type metadata for WeatherMapTrackingState.SessionEndedCodingKeys, &a16);
      (*(v63 + 8))(v62, v64);
LABEL_9:
      v60 = sub_100008408();
      v61(v60);
      break;
    default:
      (*(v67 + 32))(v65, v49 + *(v51 + 48), v68);
      sub_1000C8FEC();
      sub_1003A0A10();
      sub_100037A70(&type metadata for WeatherMapTrackingState.SessionShouldEndCodingKeys, &a15);
      a14 = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v27)
      {
        sub_10012006C();
        sub_10001C00C();
        sub_1003A0044(v52, v53, &protocol conformance descriptor for WeatherMapOverlayKind);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      sub_100014484();
      v54(v66, v69);
      (*(v67 + 8))(v65, v68);
      v55 = sub_100008408();
      v56(v55);
      break;
  }

  sub_10002FE90();
  sub_10000C8F4();
}

void sub_10039E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10000E8AC();
  a25 = v28;
  a26 = v29;
  v122 = v26;
  v31 = v30;
  v117 = v32;
  sub_10022C350(&qword_100CB1EB8, &qword_100A42A50);
  sub_1000037C4();
  v115 = v34;
  v116 = v33;
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  v113 = v36;
  v120 = sub_10022C350(&qword_100CB1EC0, &qword_100A42A58);
  sub_1000037C4();
  v112 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  v114 = v39;
  sub_10022C350(&qword_100CB1EC8, &qword_100A42A60);
  sub_1000037C4();
  v110 = v41;
  v111 = v40;
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  v119 = v43;
  sub_10022C350(&qword_100CB1ED0, &qword_100A42A68);
  sub_1000037C4();
  v108 = v45;
  v109 = v44;
  sub_100003828();
  __chkstk_darwin(v46);
  sub_10001320C();
  sub_10022C350(&qword_100CB1ED8, &qword_100A42A70);
  sub_1000037C4();
  v118 = v47;
  sub_100003828();
  __chkstk_darwin(v48);
  sub_10000C8C8();
  v49 = type metadata accessor for WeatherMapTrackingState(0);
  sub_1000037E8();
  __chkstk_darwin(v50);
  v52 = &v103 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v55 = &v103 - v54;
  v56 = v31[3];
  v121 = v31;
  sub_10001930C(v31, v56);
  sub_1003A0968();
  sub_1000201C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v26)
  {
    v57 = v49;
    v106 = v52;
    v107 = v27;
    v58 = v119;
    v122 = v55;
    KeyedDecodingContainer.allKeys.getter();
    sub_100618E80();
    sub_1000325B4();
    if (v59)
    {
      v60 = v57;
    }

    else
    {
      sub_1000168B4();
      v105 = 0;
      sub_100071CB4();
      if (v61 == v62)
      {
        __break(1u);
        return;
      }

      v60 = v57;
      v104 = *(v68 + v67);
      sub_100031CE0(v63, v64, v65, v66, v67);
      sub_100618E7C();
      v70 = v69;
      v72 = v71;
      swift_unknownObjectRelease();
      if (v70 == v72 >> 1)
      {
        v73 = v116;
        v74 = v117;
        v75 = v115;
        switch(v104)
        {
          case 1:
            a12 = 1;
            sub_1003A0A64();
            sub_100051DD8(&type metadata for WeatherMapTrackingState.SessionStartedCodingKeys, &a12);
            swift_unknownObjectRelease();
            (*(v110 + 8))(v58, v111);
            v92 = sub_100069528();
            v93(v92);
            sub_10022C350(&qword_100CA6660, &unk_100A41280);
            v79 = sub_1000C8740();
            v81 = 2;
            goto LABEL_16;
          case 2:
            sub_1000C8FEC();
            sub_1003A0A10();
            sub_100051DD8(&type metadata for WeatherMapTrackingState.SessionShouldEndCodingKeys, &a15);
            a14 = 0;
            v95 = KeyedDecodingContainer.decode(_:forKey:)();
            v116 = sub_10022C350(&qword_100CA6660, &unk_100A41280);
            v119 = *(v116 + 48);
            *v106 = v95 & 1;
            type metadata accessor for WeatherMapOverlayKind();
            sub_10012006C();
            sub_10001C00C();
            sub_1003A0044(v96, v97, &protocol conformance descriptor for WeatherMapOverlayKind);
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            swift_unknownObjectRelease();
            v98 = sub_100013238();
            v99(v98);
            v100 = sub_10007149C();
            v101(v100);
            v102 = v106;
            sub_10001B350(v106, 0, 3, v116);
            v72 = v122;
            sub_1000B0AD0(v102, v122);
            goto LABEL_17;
          case 3:
            sub_1000BCE14();
            sub_1003A09BC();
            v89 = v113;
            sub_100051DD8(&type metadata for WeatherMapTrackingState.SessionEndedCodingKeys, &a16);
            swift_unknownObjectRelease();
            (*(v75 + 8))(v89, v73);
            v90 = sub_100069528();
            v91(v90);
            sub_10022C350(&qword_100CA6660, &unk_100A41280);
            v79 = sub_1000C8740();
            v81 = 3;
            goto LABEL_16;
          default:
            a11 = 0;
            sub_1003A0AB8();
            v76 = v107;
            sub_100051DD8(&type metadata for WeatherMapTrackingState.SessionShouldStartCodingKeys, &a11);
            swift_unknownObjectRelease();
            (*(v108 + 8))(v76, v109);
            v77 = sub_100069528();
            v78(v77);
            sub_10022C350(&qword_100CA6660, &unk_100A41280);
            v79 = sub_1000C8740();
            v81 = 1;
LABEL_16:
            sub_10001B350(v79, v81, 3, v80);
LABEL_17:
            v94 = v121;
            sub_1000B0AD0(v72, v74);
            sub_100006F14(v94);
            break;
        }

        goto LABEL_12;
      }
    }

    v82 = type metadata accessor for DecodingError();
    sub_10004399C(v82, &protocol witness table for DecodingError);
    v84 = v83;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v84 = v60;
    v85 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v85);
    sub_100003B20();
    (*(v86 + 104))(v84);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_100014484();
    v87 = sub_10003A17C();
    v88(v87);
  }

  sub_100006F14(v121);
LABEL_12:
  sub_10000C8F4();
}

void sub_10039EF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_10000E8AC();
  sub_100086754(v10, v11);
  sub_10022C350(&qword_100CB1F60, &qword_100A42AB8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_100003CB4();
  sub_10022C350(&qword_100CB1F68, &qword_100A42AC0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v13);
  sub_10001634C();
  sub_10022C350(&qword_100CB1F70, &qword_100A42AC8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v14);
  sub_10000C8D8();
  v15 = sub_10003A17C();
  sub_10001930C(v15, v16);
  sub_1003A0B0C();
  sub_1000C899C();
  sub_100087158();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (a10)
  {
    sub_1000168D0();
    sub_1003A0B60();
    sub_100022A44();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = sub_1000168C4();
  }

  else
  {
    sub_1003A0BB4();
    sub_100022A44();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = sub_100052680();
  }

  v18(v17);
  v19 = sub_1000B98F4();
  v20(v19);
  sub_10000C8F4();
}

void sub_10039F12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  sub_10022C350(&qword_100CB1F30, &qword_100A42AA0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v28);
  sub_10000C8C8();
  v29 = sub_10022C350(&qword_100CB1F38, &qword_100A42AA8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v30);
  sub_10001634C();
  v31 = sub_10022C350(&qword_100CB1F40, &qword_100A42AB0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v32);
  sub_100003CB4();
  v33 = v27[4];
  sub_10001930C(v27, v27[3]);
  sub_1003A0B0C();
  sub_1000201C8();
  sub_100087158();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    sub_10012CC7C();
    sub_100618E80();
    if (v35 != v34 >> 1)
    {
      sub_1000168B4();
      sub_100071CB4();
      if (v41 == v42)
      {
        __break(1u);
        return;
      }

      sub_100088390(v36, v37, v38, v39, v40);
      sub_100618E7C();
      sub_1000C8E68();
      if (!v33)
      {
        if (v27)
        {
          sub_1000168D0();
          sub_1003A0B60();
          sub_1000059C4(&type metadata for PinnedWeatherMapPlacement.TrailingCodingKeys, &a13);
          swift_unknownObjectRelease();
          v50 = sub_1000419B4();
          v51(v50, v29);
        }

        else
        {
          a12 = 0;
          sub_1003A0BB4();
          sub_1000059C4(&type metadata for PinnedWeatherMapPlacement.TopCodingKeys, &a12);
          swift_unknownObjectRelease();
          sub_100014484();
          v54();
        }

        v52 = sub_100014474();
        v53(v52);
        sub_100006F14(0);
        goto LABEL_10;
      }
    }

    v43 = type metadata accessor for DecodingError();
    sub_10004399C(v43, &protocol witness table for DecodingError);
    v45 = v44;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v45 = &type metadata for PinnedWeatherMapPlacement;
    v46 = KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C(v46);
    sub_100003B20();
    (*(v47 + 104))(v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = sub_1000168C4();
    v49(v48, v31);
    v27 = 0;
  }

  sub_100006F14(v27);
LABEL_10:
  sub_10000C8F4();
}

Swift::Int sub_10039F528(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10039B678(v4, v2);
  return Hasher._finalize()();
}

Swift::Int sub_10039F574(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10039B70C();
  return Hasher._finalize()();
}

void sub_10039F5E0(_BYTE *a1@<X8>)
{
  sub_10039C3FC();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10039F670(_BYTE *a1@<X8>)
{
  sub_10039D5C8();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_10039F7B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100756440(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10039F7F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = static NotificationAuthorizationState.read(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10039F840@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1007565E8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10039F888@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = static ListSessionTrigger.read(from:)(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_10039F904@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100756C2C(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_10039F950@<X0>(uint64_t *a2@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CB1F78, &qword_100A42AD0);
  a2[4] = sub_10012EF24(&qword_100CB1F80, &qword_100CB1F78, &qword_100A42AD0);
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10039FA44(uint64_t a1)
{
  sub_1003A0C08();

  return ShortDescribable.description.getter();
}

uint64_t sub_10039FA80@<X0>(uint64_t *a2@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CB1F90, &unk_100A42AD8);
  a2[4] = sub_10012EF24(&qword_100CB1F98, &qword_100CB1F90, &unk_100A42AD8);
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10039FB64(uint64_t a1)
{
  sub_1003A0C5C();

  return ShortDescribable.description.getter();
}

uint64_t sub_10039FBA0@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 != 1)
    {
      Dictionary.init(dictionaryLiteral:)();
      a2[3] = sub_10022C350(&qword_100CB1FA8, &qword_100A42AE8);
      a2[4] = sub_10012EF24(&qword_100CB1FB0, &qword_100CB1FA8, &qword_100A42AE8);
      sub_100042FB0(a2);
      return ShortDescription.init(name:_:)();
    }

    v7 = 0;
    v8 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);
    v9 = 0;
    v10 = 0xE000000000000000;
    v3._countAndFlagsBits = 0xD000000000000027;
    v3._object = 0x8000000100AC40E0;
    String.append(_:)(v3);
    sub_10039FA80(&v7);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v9 = 0;
    v10 = 0xE000000000000000;
    v4._countAndFlagsBits = 0xD000000000000023;
    v4._object = 0x8000000100AC4110;
    String.append(_:)(v4);
    sub_10039F950(&v7);
  }

  sub_10022C350(&qword_100CB0D60, &unk_100A41090);
  _print_unlocked<A, B>(_:_:)();
  sub_100006F14(&v7);
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CB1FA8, &qword_100A42AE8);
  a2[4] = sub_10012EF24(&qword_100CB1FB0, &qword_100CB1FA8, &qword_100A42AE8);
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10039FE04(uint64_t a1)
{
  sub_1003A0CB0();

  return ShortDescribable.description.getter();
}

unint64_t sub_10039FE44()
{
  result = qword_100CB1C70;
  if (!qword_100CB1C70)
  {
    result = swift_getWitnessTable(byte_100A421D8, &type metadata for WeatherMapPresentationStyle, v0, v1);
    atomic_store(result, &qword_100CB1C70);
  }

  return result;
}

unint64_t sub_10039FE9C()
{
  result = qword_100CB1C78;
  if (!qword_100CB1C78)
  {
    result = swift_getWitnessTable(byte_100A42230, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle, v0, v1);
    atomic_store(result, &qword_100CB1C78);
  }

  return result;
}

unint64_t sub_10039FEF4()
{
  result = qword_100CB1C80;
  if (!qword_100CB1C80)
  {
    result = swift_getWitnessTable(aI_32, &type metadata for PinnedWeatherMapPlacement, v0, v1);
    atomic_store(result, &qword_100CB1C80);
  }

  return result;
}

unint64_t sub_10039FF4C()
{
  result = qword_100CB1C88;
  if (!qword_100CB1C88)
  {
    result = swift_getWitnessTable(byte_100A42840, &type metadata for PinnedWeatherMapPlacement, v0, v1);
    atomic_store(result, &qword_100CB1C88);
  }

  return result;
}

unint64_t sub_10039FFEC()
{
  result = qword_100CB1C98;
  if (!qword_100CB1C98)
  {
    result = swift_getWitnessTable(aQ_40, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle, v0, v1);
    atomic_store(result, &qword_100CB1C98);
  }

  return result;
}

uint64_t sub_1003A0044(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003A008C()
{
  result = qword_100CB1CB8;
  if (!qword_100CB1CB8)
  {
    result = swift_getWitnessTable(byte_100A44140, &type metadata for WeatherMapPresentationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1CB8);
  }

  return result;
}

unint64_t sub_1003A00E0()
{
  result = qword_100CB1CC0;
  if (!qword_100CB1CC0)
  {
    result = swift_getWitnessTable(byte_100A426C8, &type metadata for WeatherMapPresentationIntent, v0, v1);
    atomic_store(result, &qword_100CB1CC0);
  }

  return result;
}

unint64_t sub_1003A0134()
{
  result = qword_100CB1CC8;
  if (!qword_100CB1CC8)
  {
    result = swift_getWitnessTable(aY_48, &type metadata for WeatherMapPresentationStyle, v0, v1);
    atomic_store(result, &qword_100CB1CC8);
  }

  return result;
}

unint64_t sub_1003A0188()
{
  result = qword_100CB1CE8;
  if (!qword_100CB1CE8)
  {
    result = swift_getWitnessTable(asc_100A426A0, &type metadata for WeatherMapPresentationIntent, v0, v1);
    atomic_store(result, &qword_100CB1CE8);
  }

  return result;
}

unint64_t sub_1003A01DC()
{
  result = qword_100CB1CF0;
  if (!qword_100CB1CF0)
  {
    result = swift_getWitnessTable(aQ_39, &type metadata for WeatherMapPresentationStyle, v0, v1);
    atomic_store(result, &qword_100CB1CF0);
  }

  return result;
}

unint64_t sub_1003A0230()
{
  result = qword_100CB1D28;
  if (!qword_100CB1D28)
  {
    result = swift_getWitnessTable(byte_100A440F0, &type metadata for WeatherMapPresentationIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1D28);
  }

  return result;
}

unint64_t sub_1003A0284()
{
  result = qword_100CB1D30;
  if (!qword_100CB1D30)
  {
    result = swift_getWitnessTable(aQx, &type metadata for WeatherMapPresentationIntent.FullscreenCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1D30);
  }

  return result;
}

unint64_t sub_1003A02D8()
{
  result = qword_100CB1D38;
  if (!qword_100CB1D38)
  {
    result = swift_getWitnessTable(asc_100A42678, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource, v0, v1);
    atomic_store(result, &qword_100CB1D38);
  }

  return result;
}

unint64_t sub_1003A032C()
{
  result = qword_100CB1D40;
  if (!qword_100CB1D40)
  {
    result = swift_getWitnessTable(byte_100A44050, &type metadata for WeatherMapPresentationIntent.PinnedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1D40);
  }

  return result;
}

unint64_t sub_1003A0380()
{
  result = qword_100CB1D48;
  if (!qword_100CB1D48)
  {
    result = swift_getWitnessTable(byte_100A44000, &type metadata for WeatherMapPresentationIntent.InlineCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1D48);
  }

  return result;
}

unint64_t sub_1003A03D4()
{
  result = qword_100CB1D70;
  if (!qword_100CB1D70)
  {
    result = swift_getWitnessTable(asc_100A42650, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource, v0, v1);
    atomic_store(result, &qword_100CB1D70);
  }

  return result;
}

unint64_t sub_1003A0428()
{
  result = qword_100CB1DA0;
  if (!qword_100CB1DA0)
  {
    result = swift_getWitnessTable(aAy, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1DA0);
  }

  return result;
}

unint64_t sub_1003A047C()
{
  result = qword_100CB1DA8;
  if (!qword_100CB1DA8)
  {
    result = swift_getWitnessTable(byte_100A43F60, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.ExternalStateCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1DA8);
  }

  return result;
}

unint64_t sub_1003A04D0()
{
  result = qword_100CB1DB0;
  if (!qword_100CB1DB0)
  {
    result = swift_getWitnessTable(byte_100A43F10, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.PinnedMapCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1DB0);
  }

  return result;
}

unint64_t sub_1003A0524()
{
  result = qword_100CB1DB8;
  if (!qword_100CB1DB8)
  {
    result = swift_getWitnessTable(a1z, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.InlineMapCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1DB8);
  }

  return result;
}

unint64_t sub_1003A0578()
{
  result = qword_100CB1DC0;
  if (!qword_100CB1DC0)
  {
    result = swift_getWitnessTable(byte_100A43E70, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.BarButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1DC0);
  }

  return result;
}

unint64_t sub_1003A05CC()
{
  result = qword_100CB1E10;
  if (!qword_100CB1E10)
  {
    result = swift_getWitnessTable(byte_100A43E20, &type metadata for WeatherMapPresentationStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1E10);
  }

  return result;
}

unint64_t sub_1003A0620()
{
  result = qword_100CB1E18;
  if (!qword_100CB1E18)
  {
    result = swift_getWitnessTable(asc_100A43DD0, &type metadata for WeatherMapPresentationStyle.FullscreenCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1E18);
  }

  return result;
}

unint64_t sub_1003A0674()
{
  result = qword_100CB1E20;
  if (!qword_100CB1E20)
  {
    result = swift_getWitnessTable(byte_100A425D8, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle, v0, v1);
    atomic_store(result, &qword_100CB1E20);
  }

  return result;
}

unint64_t sub_1003A06C8()
{
  result = qword_100CB1E28;
  if (!qword_100CB1E28)
  {
    result = swift_getWitnessTable(aQ_38, &type metadata for WeatherMapPresentationStyle.PinnedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1E28);
  }

  return result;
}

unint64_t sub_1003A071C()
{
  result = qword_100CB1E30;
  if (!qword_100CB1E30)
  {
    result = swift_getWitnessTable(aI_31, &type metadata for PinnedWeatherMapPlacement, v0, v1);
    atomic_store(result, &qword_100CB1E30);
  }

  return result;
}

unint64_t sub_1003A0770()
{
  result = qword_100CB1E38;
  if (!qword_100CB1E38)
  {
    result = swift_getWitnessTable(byte_100A43D30, &type metadata for WeatherMapPresentationStyle.InlineCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1E38);
  }

  return result;
}

unint64_t sub_1003A07C4()
{
  result = qword_100CB1E60;
  if (!qword_100CB1E60)
  {
    result = swift_getWitnessTable(byte_100A425B0, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle, v0, v1);
    atomic_store(result, &qword_100CB1E60);
  }

  return result;
}

unint64_t sub_1003A0818()
{
  result = qword_100CB1E68;
  if (!qword_100CB1E68)
  {
    result = swift_getWitnessTable(aA_31, &type metadata for PinnedWeatherMapPlacement, v0, v1);
    atomic_store(result, &qword_100CB1E68);
  }

  return result;
}

unint64_t sub_1003A086C()
{
  result = qword_100CB1E88;
  if (!qword_100CB1E88)
  {
    result = swift_getWitnessTable(byte_100A43CE0, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1E88);
  }

  return result;
}

unint64_t sub_1003A08C0()
{
  result = qword_100CB1E90;
  if (!qword_100CB1E90)
  {
    result = swift_getWitnessTable(aA_30, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle.ScaleCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1E90);
  }

  return result;
}

unint64_t sub_1003A0914()
{
  result = qword_100CB1E98;
  if (!qword_100CB1E98)
  {
    result = swift_getWitnessTable(byte_100A43C40, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle.SheetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1E98);
  }

  return result;
}

unint64_t sub_1003A0968()
{
  result = qword_100CB1EE0;
  if (!qword_100CB1EE0)
  {
    result = swift_getWitnessTable(byte_100A43BF0, &type metadata for WeatherMapTrackingState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1EE0);
  }

  return result;
}

unint64_t sub_1003A09BC()
{
  result = qword_100CB1EE8;
  if (!qword_100CB1EE8)
  {
    result = swift_getWitnessTable(aQ_37, &type metadata for WeatherMapTrackingState.SessionEndedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1EE8);
  }

  return result;
}

unint64_t sub_1003A0A10()
{
  result = qword_100CB1EF0;
  if (!qword_100CB1EF0)
  {
    result = swift_getWitnessTable(byte_100A43B50, &type metadata for WeatherMapTrackingState.SessionShouldEndCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1EF0);
  }

  return result;
}

unint64_t sub_1003A0A64()
{
  result = qword_100CB1EF8;
  if (!qword_100CB1EF8)
  {
    result = swift_getWitnessTable(byte_100A43B00, &type metadata for WeatherMapTrackingState.SessionStartedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1EF8);
  }

  return result;
}

unint64_t sub_1003A0AB8()
{
  result = qword_100CB1F00;
  if (!qword_100CB1F00)
  {
    result = swift_getWitnessTable(aA_29, &type metadata for WeatherMapTrackingState.SessionShouldStartCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1F00);
  }

  return result;
}

unint64_t sub_1003A0B0C()
{
  result = qword_100CB1F48;
  if (!qword_100CB1F48)
  {
    result = swift_getWitnessTable(byte_100A43A60, &type metadata for PinnedWeatherMapPlacement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1F48);
  }

  return result;
}

unint64_t sub_1003A0B60()
{
  result = qword_100CB1F50;
  if (!qword_100CB1F50)
  {
    result = swift_getWitnessTable(byte_100A43A10, &type metadata for PinnedWeatherMapPlacement.TrailingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1F50);
  }

  return result;
}

unint64_t sub_1003A0BB4()
{
  result = qword_100CB1F58;
  if (!qword_100CB1F58)
  {
    result = swift_getWitnessTable(a1_10, &type metadata for PinnedWeatherMapPlacement.TopCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1F58);
  }

  return result;
}

unint64_t sub_1003A0C08()
{
  result = qword_100CB1F88;
  if (!qword_100CB1F88)
  {
    result = swift_getWitnessTable(aO_11, &type metadata for PinnedWeatherMapPlacement, v0, v1);
    atomic_store(result, &qword_100CB1F88);
  }

  return result;
}

unint64_t sub_1003A0C5C()
{
  result = qword_100CB1FA0;
  if (!qword_100CB1FA0)
  {
    result = swift_getWitnessTable(asc_100A42258, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle, v0, v1);
    atomic_store(result, &qword_100CB1FA0);
  }

  return result;
}

unint64_t sub_1003A0CB0()
{
  result = qword_100CB1FB8;
  if (!qword_100CB1FB8)
  {
    result = swift_getWitnessTable(aY_49, &type metadata for WeatherMapPresentationStyle, v0, v1);
    atomic_store(result, &qword_100CB1FB8);
  }

  return result;
}

_BYTE *sub_1003A0E44(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_100031C18(result, v6);
        break;
      case 2:
        result = sub_100018338(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100011448(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_100020E50(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1003A0F30(unsigned __int8 *a1, int a2)
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

  return sub_100016238(a1);
}

_BYTE *sub_1003A0F7C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapPresentationState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1003A1104(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100020180(-1);
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
      return sub_100020180((*a1 | (v4 << 8)) - 2);
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

      return sub_100020180((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100020180((*a1 | (v4 << 8)) - 2);
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

  return sub_100020180(v8);
}

_BYTE *sub_1003A1188(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_100031C18(result, v6);
        break;
      case 2:
        result = sub_100018338(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100011448(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_100020E50(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1003A1244(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = sub_100031C18(result, v6);
        break;
      case 2:
        result = sub_100018338(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100011448(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_100020E50(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003A1304()
{
  result = qword_100CB1FC0;
  if (!qword_100CB1FC0)
  {
    result = swift_getWitnessTable(byte_100A42D50, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource, v0, v1);
    atomic_store(result, &qword_100CB1FC0);
  }

  return result;
}

unint64_t sub_1003A135C()
{
  result = qword_100CB1FC8;
  if (!qword_100CB1FC8)
  {
    result = swift_getWitnessTable(byte_100A42E08, &type metadata for WeatherMapPresentationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1FC8);
  }

  return result;
}

unint64_t sub_1003A13B4()
{
  result = qword_100CB1FD0;
  if (!qword_100CB1FD0)
  {
    result = swift_getWitnessTable(aA_32, &type metadata for WeatherMapPresentationIntent.FullscreenCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1FD0);
  }

  return result;
}

unint64_t sub_1003A140C()
{
  result = qword_100CB1FD8;
  if (!qword_100CB1FD8)
  {
    result = swift_getWitnessTable(byte_100A43018, &type metadata for WeatherMapPresentationIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1FD8);
  }

  return result;
}

unint64_t sub_1003A1464()
{
  result = qword_100CB1FE0;
  if (!qword_100CB1FE0)
  {
    result = swift_getWitnessTable(byte_100A43210, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1FE0);
  }

  return result;
}

unint64_t sub_1003A14BC()
{
  result = qword_100CB1FE8;
  if (!qword_100CB1FE8)
  {
    result = swift_getWitnessTable(a9_12, &type metadata for WeatherMapPresentationStyle.FullscreenCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1FE8);
  }

  return result;
}

unint64_t sub_1003A1514()
{
  result = qword_100CB1FF0;
  if (!qword_100CB1FF0)
  {
    result = swift_getWitnessTable(byte_100A43380, &type metadata for WeatherMapPresentationStyle.PinnedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1FF0);
  }

  return result;
}

unint64_t sub_1003A156C()
{
  result = qword_100CB1FF8;
  if (!qword_100CB1FF8)
  {
    result = swift_getWitnessTable(aY_50, &type metadata for WeatherMapPresentationStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB1FF8);
  }

  return result;
}

unint64_t sub_1003A15C4()
{
  result = qword_100CB2000;
  if (!qword_100CB2000)
  {
    result = swift_getWitnessTable(asc_100A435E0, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2000);
  }

  return result;
}

unint64_t sub_1003A161C()
{
  result = qword_100CB2008;
  if (!qword_100CB2008)
  {
    result = swift_getWitnessTable(byte_100A436E8, &type metadata for WeatherMapTrackingState.SessionShouldEndCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2008);
  }

  return result;
}

unint64_t sub_1003A1674()
{
  result = qword_100CB2010;
  if (!qword_100CB2010)
  {
    result = swift_getWitnessTable(byte_100A43840, &type metadata for WeatherMapTrackingState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2010);
  }

  return result;
}

unint64_t sub_1003A16CC()
{
  result = qword_100CB2018;
  if (!qword_100CB2018)
  {
    result = swift_getWitnessTable(aI_33, &type metadata for PinnedWeatherMapPlacement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2018);
  }

  return result;
}

unint64_t sub_1003A1724()
{
  result = qword_100CB2020;
  if (!qword_100CB2020)
  {
    result = swift_getWitnessTable(asc_100A438B8, &type metadata for PinnedWeatherMapPlacement.TopCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2020);
  }

  return result;
}

unint64_t sub_1003A177C()
{
  result = qword_100CB2028;
  if (!qword_100CB2028)
  {
    result = swift_getWitnessTable(byte_100A438E0, &type metadata for PinnedWeatherMapPlacement.TopCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2028);
  }

  return result;
}

unint64_t sub_1003A17D4()
{
  result = qword_100CB2030;
  if (!qword_100CB2030)
  {
    result = swift_getWitnessTable(aY_51, &type metadata for PinnedWeatherMapPlacement.TrailingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2030);
  }

  return result;
}

unint64_t sub_1003A182C()
{
  result = qword_100CB2038;
  if (!qword_100CB2038)
  {
    result = swift_getWitnessTable(aA_33, &type metadata for PinnedWeatherMapPlacement.TrailingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2038);
  }

  return result;
}

unint64_t sub_1003A1884()
{
  result = qword_100CB2040;
  if (!qword_100CB2040)
  {
    result = swift_getWitnessTable(byte_100A43908, &type metadata for PinnedWeatherMapPlacement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2040);
  }

  return result;
}

unint64_t sub_1003A18DC()
{
  result = qword_100CB2048;
  if (!qword_100CB2048)
  {
    result = swift_getWitnessTable(byte_100A43930, &type metadata for PinnedWeatherMapPlacement.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2048);
  }

  return result;
}

unint64_t sub_1003A1934()
{
  result = qword_100CB2050;
  if (!qword_100CB2050)
  {
    result = swift_getWitnessTable(byte_100A43760, &type metadata for WeatherMapTrackingState.SessionShouldStartCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2050);
  }

  return result;
}

unint64_t sub_1003A198C()
{
  result = qword_100CB2058;
  if (!qword_100CB2058)
  {
    result = swift_getWitnessTable(aI_34, &type metadata for WeatherMapTrackingState.SessionShouldStartCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2058);
  }

  return result;
}

unint64_t sub_1003A19E4()
{
  result = qword_100CB2060;
  if (!qword_100CB2060)
  {
    result = swift_getWitnessTable(aS_4, &type metadata for WeatherMapTrackingState.SessionStartedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2060);
  }

  return result;
}

unint64_t sub_1003A1A3C()
{
  result = qword_100CB2068;
  if (!qword_100CB2068)
  {
    result = swift_getWitnessTable(byte_100A43738, &type metadata for WeatherMapTrackingState.SessionStartedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2068);
  }

  return result;
}

unint64_t sub_1003A1A94()
{
  result = qword_100CB2070;
  if (!qword_100CB2070)
  {
    result = swift_getWitnessTable(byte_100A43658, &type metadata for WeatherMapTrackingState.SessionShouldEndCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2070);
  }

  return result;
}

unint64_t sub_1003A1AEC()
{
  result = qword_100CB2078;
  if (!qword_100CB2078)
  {
    result = swift_getWitnessTable(aQ_41, &type metadata for WeatherMapTrackingState.SessionShouldEndCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2078);
  }

  return result;
}

unint64_t sub_1003A1B44()
{
  result = qword_100CB2080;
  if (!qword_100CB2080)
  {
    result = swift_getWitnessTable(aQ_42, &type metadata for WeatherMapTrackingState.SessionEndedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2080);
  }

  return result;
}

unint64_t sub_1003A1B9C()
{
  result = qword_100CB2088;
  if (!qword_100CB2088)
  {
    result = swift_getWitnessTable(byte_100A43630, &type metadata for WeatherMapTrackingState.SessionEndedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2088);
  }

  return result;
}

unint64_t sub_1003A1BF4()
{
  result = qword_100CB2090;
  if (!qword_100CB2090)
  {
    result = swift_getWitnessTable(a1_11, &type metadata for WeatherMapTrackingState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2090);
  }

  return result;
}

unint64_t sub_1003A1C4C()
{
  result = qword_100CB2098;
  if (!qword_100CB2098)
  {
    result = swift_getWitnessTable(byte_100A437D8, &type metadata for WeatherMapTrackingState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2098);
  }

  return result;
}

unint64_t sub_1003A1CA4()
{
  result = qword_100CB20A0;
  if (!qword_100CB20A0)
  {
    result = swift_getWitnessTable(byte_100A43500, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle.SheetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB20A0);
  }

  return result;
}

unint64_t sub_1003A1CFC()
{
  result = qword_100CB20A8;
  if (!qword_100CB20A8)
  {
    result = swift_getWitnessTable(byte_100A43528, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle.SheetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB20A8);
  }

  return result;
}

unint64_t sub_1003A1D54()
{
  result = qword_100CB20B0;
  if (!qword_100CB20B0)
  {
    result = swift_getWitnessTable(a1_12, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle.ScaleCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB20B0);
  }

  return result;
}

unint64_t sub_1003A1DAC()
{
  result = qword_100CB20B8;
  if (!qword_100CB20B8)
  {
    result = swift_getWitnessTable(byte_100A434D8, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle.ScaleCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB20B8);
  }

  return result;
}

unint64_t sub_1003A1E04()
{
  result = qword_100CB20C0;
  if (!qword_100CB20C0)
  {
    result = swift_getWitnessTable(byte_100A43550, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB20C0);
  }

  return result;
}

unint64_t sub_1003A1E5C()
{
  result = qword_100CB20C8;
  if (!qword_100CB20C8)
  {
    result = swift_getWitnessTable(aY_52, &type metadata for WeatherMapPresentationStyle.FullscreenTransitionStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB20C8);
  }

  return result;
}

unint64_t sub_1003A1EB4()
{
  result = qword_100CB20D0;
  if (!qword_100CB20D0)
  {
    result = swift_getWitnessTable(a9_13, &type metadata for WeatherMapPresentationStyle.InlineCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB20D0);
  }

  return result;
}

unint64_t sub_1003A1F0C()
{
  result = qword_100CB20D8;
  if (!qword_100CB20D8)
  {
    result = swift_getWitnessTable(byte_100A433D0, &type metadata for WeatherMapPresentationStyle.InlineCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB20D8);
  }

  return result;
}

unint64_t sub_1003A1F64()
{
  result = qword_100CB20E0;
  if (!qword_100CB20E0)
  {
    result = swift_getWitnessTable(byte_100A432F0, &type metadata for WeatherMapPresentationStyle.PinnedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB20E0);
  }

  return result;
}

unint64_t sub_1003A1FBC()
{
  result = qword_100CB20E8;
  if (!qword_100CB20E8)
  {
    result = swift_getWitnessTable(byte_100A43318, &type metadata for WeatherMapPresentationStyle.PinnedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB20E8);
  }

  return result;
}

unint64_t sub_1003A2014()
{
  result = qword_100CB20F0;
  if (!qword_100CB20F0)
  {
    result = swift_getWitnessTable(byte_100A43238, &type metadata for WeatherMapPresentationStyle.FullscreenCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB20F0);
  }

  return result;
}

unint64_t sub_1003A206C()
{
  result = qword_100CB20F8;
  if (!qword_100CB20F8)
  {
    result = swift_getWitnessTable(aQ_43, &type metadata for WeatherMapPresentationStyle.FullscreenCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB20F8);
  }

  return result;
}

unint64_t sub_1003A20C4()
{
  result = qword_100CB2100;
  if (!qword_100CB2100)
  {
    result = swift_getWitnessTable(byte_100A433F8, &type metadata for WeatherMapPresentationStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2100);
  }

  return result;
}

unint64_t sub_1003A211C()
{
  result = qword_100CB2108;
  if (!qword_100CB2108)
  {
    result = swift_getWitnessTable(byte_100A43420, &type metadata for WeatherMapPresentationStyle.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2108);
  }

  return result;
}

unint64_t sub_1003A2174()
{
  result = qword_100CB2110;
  if (!qword_100CB2110)
  {
    result = swift_getWitnessTable(byte_100A43130, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.BarButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2110);
  }

  return result;
}

unint64_t sub_1003A21CC()
{
  result = qword_100CB2118;
  if (!qword_100CB2118)
  {
    result = swift_getWitnessTable(aY_53, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.BarButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2118);
  }

  return result;
}

unint64_t sub_1003A2224()
{
  result = qword_100CB2120;
  if (!qword_100CB2120)
  {
    result = swift_getWitnessTable(byte_100A430E0, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.InlineMapCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2120);
  }

  return result;
}

unint64_t sub_1003A227C()
{
  result = qword_100CB2128;
  if (!qword_100CB2128)
  {
    result = swift_getWitnessTable(aE_40, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.InlineMapCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2128);
  }

  return result;
}

unint64_t sub_1003A22D4()
{
  result = qword_100CB2130;
  if (!qword_100CB2130)
  {
    result = swift_getWitnessTable(aQ_44, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.PinnedMapCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2130);
  }

  return result;
}

unint64_t sub_1003A232C()
{
  result = qword_100CB2138;
  if (!qword_100CB2138)
  {
    result = swift_getWitnessTable(byte_100A430B8, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.PinnedMapCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2138);
  }

  return result;
}

unint64_t sub_1003A2384()
{
  result = qword_100CB2140;
  if (!qword_100CB2140)
  {
    result = swift_getWitnessTable(byte_100A43040, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.ExternalStateCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2140);
  }

  return result;
}

unint64_t sub_1003A23DC()
{
  result = qword_100CB2148;
  if (!qword_100CB2148)
  {
    result = swift_getWitnessTable(aI_35, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.ExternalStateCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2148);
  }

  return result;
}

unint64_t sub_1003A2434()
{
  result = qword_100CB2150;
  if (!qword_100CB2150)
  {
    result = swift_getWitnessTable(aA_34, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2150);
  }

  return result;
}

unint64_t sub_1003A248C()
{
  result = qword_100CB2158;
  if (!qword_100CB2158)
  {
    result = swift_getWitnessTable(asc_100A431A8, &type metadata for WeatherMapPresentationIntent.FullscreenPresentationSource.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2158);
  }

  return result;
}

unint64_t sub_1003A24E4()
{
  result = qword_100CB2160;
  if (!qword_100CB2160)
  {
    result = swift_getWitnessTable(byte_100A42F38, &type metadata for WeatherMapPresentationIntent.InlineCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2160);
  }

  return result;
}

unint64_t sub_1003A253C()
{
  result = qword_100CB2168;
  if (!qword_100CB2168)
  {
    result = swift_getWitnessTable(aQ_45, &type metadata for WeatherMapPresentationIntent.InlineCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2168);
  }

  return result;
}

unint64_t sub_1003A2594()
{
  result = qword_100CB2170;
  if (!qword_100CB2170)
  {
    result = swift_getWitnessTable(byte_100A42EE8, &type metadata for WeatherMapPresentationIntent.PinnedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2170);
  }

  return result;
}

unint64_t sub_1003A25EC()
{
  result = qword_100CB2178;
  if (!qword_100CB2178)
  {
    result = swift_getWitnessTable(byte_100A42F10, &type metadata for WeatherMapPresentationIntent.PinnedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2178);
  }

  return result;
}

unint64_t sub_1003A2644()
{
  result = qword_100CB2180;
  if (!qword_100CB2180)
  {
    result = swift_getWitnessTable(byte_100A42E30, &type metadata for WeatherMapPresentationIntent.FullscreenCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2180);
  }

  return result;
}

unint64_t sub_1003A269C()
{
  result = qword_100CB2188;
  if (!qword_100CB2188)
  {
    result = swift_getWitnessTable(aY_54, &type metadata for WeatherMapPresentationIntent.FullscreenCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2188);
  }

  return result;
}

unint64_t sub_1003A26F4()
{
  result = qword_100CB2190;
  if (!qword_100CB2190)
  {
    result = swift_getWitnessTable(aY_55, &type metadata for WeatherMapPresentationIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2190);
  }

  return result;
}

unint64_t sub_1003A274C()
{
  result = qword_100CB2198;
  if (!qword_100CB2198)
  {
    result = swift_getWitnessTable(asc_100A42FB0, &type metadata for WeatherMapPresentationIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2198);
  }

  return result;
}

unint64_t sub_1003A27A4()
{
  result = qword_100CB21A0;
  if (!qword_100CB21A0)
  {
    result = swift_getWitnessTable(aI_36, &type metadata for WeatherMapPresentationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB21A0);
  }

  return result;
}

unint64_t sub_1003A27FC()
{
  result = qword_100CB21A8;
  if (!qword_100CB21A8)
  {
    result = swift_getWitnessTable(a1_13, &type metadata for WeatherMapPresentationState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB21A8);
  }

  return result;
}

void *sub_1003A28A0(void *a1)
{
  v3 = sub_10022C350(&qword_100CB21B8, &qword_100A442B0);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  v9 = sub_1000161C0(a1, a1[3]);
  sub_1003A2F64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_1003A2FB8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v3);
    v9 = (0x3020001u >> (8 * v11[15]));
    sub_100006F14(a1);
  }

  return v9;
}

uint64_t sub_1003A2A14(void *a1, char a2)
{
  v4 = sub_10022C350(&qword_100CB21D0, &qword_100A442B8);
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  sub_1000161C0(a1, a1[3]);
  sub_1003A2F64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = (v6 + 8);
  switch(a2)
  {
    case 1:
      v12[12] = 0;
      sub_1003A300C();
      break;
    case 2:
      v12[14] = 2;
      sub_1003A300C();
      break;
    case 3:
      v12[15] = 3;
      sub_1003A300C();
      break;
    default:
      v12[13] = 1;
      sub_1003A300C();
      break;
  }

  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*v10)(v9, v4);
}

unint64_t sub_1003A2BD8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C437D8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003A2C24(char a1)
{
  result = 1768319351;
  switch(a1)
  {
    case 1:
      result = 0x72616C756C6C6563;
      break;
    case 2:
      result = 0x726568746FLL;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1003A2CAC@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DFCC8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003A2CE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000183E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1003A2D0C@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DFCC8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003A2D38(uint64_t a1)
{
  v2 = sub_1003A2F64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003A2D74(uint64_t a1)
{
  v2 = sub_1003A2F64();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1003A2DD4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003A2BD8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003A2E04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003A2C24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1003A2EE0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003A28A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1003A2F28(uint64_t a1)
{
  sub_1003A3060();

  return ShortDescribable.description.getter();
}

unint64_t sub_1003A2F64()
{
  result = qword_100CB21C0;
  if (!qword_100CB21C0)
  {
    result = swift_getWitnessTable(byte_100A44524, &type metadata for NetworkInterface.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB21C0);
  }

  return result;
}

unint64_t sub_1003A2FB8()
{
  result = qword_100CB21C8;
  if (!qword_100CB21C8)
  {
    result = swift_getWitnessTable(byte_100A444FC, &type metadata for NetworkInterface.CodingType, v0, v1);
    atomic_store(result, &qword_100CB21C8);
  }

  return result;
}

unint64_t sub_1003A300C()
{
  result = qword_100CB21D8;
  if (!qword_100CB21D8)
  {
    result = swift_getWitnessTable(byte_100A444D4, &type metadata for NetworkInterface.CodingType, v0, v1);
    atomic_store(result, &qword_100CB21D8);
  }

  return result;
}

unint64_t sub_1003A3060()
{
  result = qword_100CB21F0;
  if (!qword_100CB21F0)
  {
    result = swift_getWitnessTable(aQu, &type metadata for NetworkInterface, v0, v1);
    atomic_store(result, &qword_100CB21F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkInterface.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1003A3170(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003A3250()
{
  result = qword_100CB2200;
  if (!qword_100CB2200)
  {
    result = swift_getWitnessTable(aYr, &type metadata for NetworkInterface, v0, v1);
    atomic_store(result, &qword_100CB2200);
  }

  return result;
}

unint64_t sub_1003A32A8()
{
  result = qword_100CB2208;
  if (!qword_100CB2208)
  {
    result = swift_getWitnessTable(byte_100A4440C, &type metadata for NetworkInterface.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2208);
  }

  return result;
}

unint64_t sub_1003A3300()
{
  result = qword_100CB2210;
  if (!qword_100CB2210)
  {
    result = swift_getWitnessTable(aUp_1, &type metadata for NetworkInterface.CodingType, v0, v1);
    atomic_store(result, &qword_100CB2210);
  }

  return result;
}

unint64_t sub_1003A3358()
{
  result = qword_100CB2218;
  if (!qword_100CB2218)
  {
    result = swift_getWitnessTable(byte_100A44344, &type metadata for NetworkInterface.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2218);
  }

  return result;
}

unint64_t sub_1003A33B0()
{
  result = qword_100CB2220;
  if (!qword_100CB2220)
  {
    result = swift_getWitnessTable(aEt_0, &type metadata for NetworkInterface.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB2220);
  }

  return result;
}

unint64_t sub_1003A3404()
{
  result = qword_100CB2228;
  if (!qword_100CB2228)
  {
    result = swift_getWitnessTable(byte_100A44434, &type metadata for NetworkInterface.CodingType, v0, v1);
    atomic_store(result, &qword_100CB2228);
  }

  return result;
}

void *sub_1003A345C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB22D8, &qword_100A445D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4A10, &qword_100A445E0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v22, v23);
      v7 = __chkstk_darwin(v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for DayPickerInteractor();
      v21[3] = v12;
      v21[4] = &off_100C4F2B0;
      v21[0] = v11;
      v13 = type metadata accessor for DayPickerModule();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, v12);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_100C4F2B0;
      v14[2] = v20;
      v14[7] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C5BD60;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003A36D8()
{
  sub_10022C350(&qword_100CB22D0, &qword_100A445C8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB22D8, &qword_100A445D0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB22E0, &qword_100A445D8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4A10, &qword_100A445E0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_1003A3804@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1880, &qword_100A41E90);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v4 = sub_10002D7F8(v20, v21);
    v5 = __chkstk_darwin(v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for DailyForecastFilter();
    v19[3] = v10;
    v19[4] = &off_100C4AB20;
    v19[0] = v9;
    v11 = type metadata accessor for DayPickerInputFactory();
    v12 = swift_allocObject();
    v13 = sub_10002D7F8(v19, v10);
    v14 = __chkstk_darwin(v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_100C4AB20;
    v12[2] = v18;
    sub_100006F14(v19);
    result = sub_100006F14(v20);
    a2[3] = v11;
    a2[4] = &off_100C5A720;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003A3A28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for DayPickerInteractor();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v6;
    a2[3] = v4;
    a2[4] = &off_100C4F2B0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003A3ACC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DayPickerViewModelFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C69D10;
  *a1 = result;
  return result;
}

void *sub_1003A3B14(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v22;
  v4 = v23;
  v6 = v21;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB22D0, &qword_100A445C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v18, v19);
  v16 = type metadata accessor for DayPickerInputFactory();
  v17 = &off_100C5A720;
  v15[0] = v7;
  sub_100035B30(v15, v14);
  v8 = swift_allocObject();
  sub_100013188(v14, v8 + 16);

  sub_100006F14(v15);
  sub_100006F14(v18);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1003A402C;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB22E0, &qword_100A445D8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v10 = *sub_1000161C0(v18, v19);
    v16 = type metadata accessor for DayPickerViewModelFactory();
    v17 = &off_100C69D10;
    v15[0] = v10;
    sub_100035B30(v15, v14);
    v11 = swift_allocObject();
    sub_100013188(v14, v11 + 16);

    sub_100006F14(v15);
    sub_100006F14(v18);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10009F868;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1003A4034;
    *(v13 + 24) = v11;
    sub_10022C350(&qword_100CA4A10, &qword_100A445E0);
    swift_allocObject();
    return sub_10024AAAC(v3, v6, v5, v4, sub_1003A3E14, 0, sub_10009F81C, v12, sub_1000E87D0, v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1003A3E14(uint64_t a1)
{
  v2 = type metadata accessor for MainAction(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v8 < *(v6 + 16))
    {
      sub_10004F14C(v9 + *(v3 + 72) * v8, v5);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        type metadata accessor for ModalViewAction(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_10004F5C4(v5, type metadata accessor for ModalViewAction);
        if (EnumCaseMultiPayload == 5)
        {
          return;
        }
      }

      else
      {
        sub_10004F5C4(v5, type metadata accessor for MainAction);
      }

      if (v7 == ++v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_1003A403C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v20 - 8);
  __chkstk_darwin(v20);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  sub_1000037D8();
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  sub_100040690();
  static DispatchQoS.unspecified.getter();
  sub_10006D318(&qword_100CA2E50, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10022C350(&qword_100CA2E58, &qword_100A2C5A0);
  sub_100067638(&qword_100CA2E60, &qword_100CA2E58, &qword_100A2C5A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  *(v6 + 80) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100CA2708 != -1)
  {
    sub_10001E9E8(&qword_100CA2708);
  }

  v14 = type metadata accessor for Logger();
  sub_10000703C(v14, qword_100D90B80);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (sub_100005954(v16))
  {
    *swift_slowAlloc() = 0;
    sub_10001BF80(&_mh_execute_header, v17, v18, "Creating time monitor");
    sub_100008370();
  }

  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  return v7;
}

uint64_t sub_1003A4328()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    [v1 invalidate];
  }

  sub_1003A438C();

  return v0;
}

void sub_1003A438C()
{
  if (static WeatherClock.supportsModification.getter())
  {
    v1 = [objc_opt_self() defaultCenter];
    v2 = static WeatherClock.clockWasModifiedNotification.getter();
    [v1 removeObserver:v0 name:v2 object:0];
  }
}

uint64_t sub_1003A4428()
{
  sub_1003A4328();

  return swift_deallocClassInstance();
}

uint64_t sub_1003A445C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 80);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1003A585C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C52198;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10006D318(&qword_100CD81C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_100067638(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_1003A4734(uint64_t a1)
{
  v1 = type metadata accessor for Calendar();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v28 = v1;
    if (qword_100CA2708 != -1)
    {
      swift_once();
    }

    v27 = v2;
    v17 = type metadata accessor for Logger();
    sub_10000703C(v17, qword_100D90B80);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Setting up periodic timer", v20, 2u);
    }

    Date.init()();
    Date.zeroSeconds.getter();
    v21 = *(v6 + 8);
    v21(v11, v5);
    static Calendar.current.getter();
    Date.wc_addMinutes(_:calendar:)();
    (*(v27 + 8))(v4, v28);
    (*(v6 + 16))(v8, v11, v5);
    v22 = objc_allocWithZone(NSTimer);

    v23 = sub_100087BC8(v8, 1, sub_1003A5864, v16, 60.0);
    v24 = swift_allocObject();
    *(v24 + 16) = v16;
    *(v24 + 24) = v23;

    v25 = v23;
    asyncMain(block:)();

    v21(v11, v5);
    return (v21)(v14, v5);
  }

  return result;
}

uint64_t sub_1003A4AD8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2708 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000703C(v6, qword_100D90B80);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Timer fired", v9, 2u);
  }

  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  swift_storeEnumTagMultiPayload();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_10004F034(v5, v13, v10, v11);
  sub_1000E17D8(v13);
  return sub_1000547B8(v5);
}

id sub_1003A4C54(uint64_t a1, void *a2)
{
  v74 = a2;
  v72 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v72);
  v4 = &v68[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v68[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v73 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v68[-v12];
  __chkstk_darwin(v14);
  v16 = &v68[-v15];
  v18 = __chkstk_darwin(v17);
  v20 = &v68[-v19];
  (*(a1 + 16))(v76, v18);
  sub_10004363C(*&v76[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v7);

  v21 = v9;
  v22 = *(v9 + 32);
  v75 = v20;
  v23 = v20;
  v24 = v8;
  v25 = v7;
  v26 = a1;
  v22(v23, v25, v8);
  if (*(a1 + 64))
  {
    if (qword_100CA2708 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000703C(v27, qword_100D90B80);
    v28 = v73;
    (*(v9 + 16))(v73, v75, v8);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v76[0] = v32;
      *v31 = 136446210;
      sub_10006D318(&qword_100CA5720, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = *(v9 + 8);
      v36(v28, v24);
      v37 = sub_100078694(v33, v35, v76);

      *(v31 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Skipping adding timer to run loop as the timer already exists; currentTime=%{public}s", v31, 0xCu);
      sub_100006F14(v32);

      return (v36)(v75, v24);
    }

    else
    {

      v51 = *(v9 + 8);
      v51(v28, v24);
      return (v51)(v75, v24);
    }
  }

  else
  {
    v73 = v4;
    if (qword_100CA2708 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    v40 = sub_10000703C(v39, qword_100D90B80);
    v41 = v16;
    (*(v21 + 16))(v16, v75, v8);

    v71 = v40;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v76[0] = v70;
      *v44 = 67240450;
      *(v44 + 4) = *(a1 + 72);

      *(v44 + 8) = 2082;
      sub_10006D318(&qword_100CA5720, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v69 = v43;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v48 = *(v21 + 8);
      v48(v41, v8);
      v49 = sub_100078694(v45, v47, v76);
      v26 = a1;

      *(v44 + 10) = v49;
      _os_log_impl(&_mh_execute_header, v42, v69, "Adding timer to run loop; firstLaunch=%{BOOL,public}d, currentTime=%{public}s", v44, 0x12u);
      sub_100006F14(v70);

      v50 = v48;
    }

    else
    {

      v50 = *(v21 + 8);
      v50(v16, v8);
    }

    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v53 = v52;
    v50(v13, v8);
    static WeatherClock.date.getter();
    Date.timeIntervalSince(_:)();
    v55 = v54;
    v50(v13, v8);
    v56 = *(v26 + 72) == 1 && v53 < 60.0;
    v57 = v73;
    if (!v56)
    {
      v58 = v26;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 134349312;
        *(v61 + 4) = v53;
        *(v61 + 12) = 2050;
        *(v61 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v59, v60, "Will update time; currentTimeAge=%{public}f, weatherClockTimeAge=%{public}f", v61, 0x16u);
        v57 = v73;
      }

      v62 = *(v58 + 48);
      v63 = *(v58 + 56);
      swift_storeEnumTagMultiPayload();
      v77 = 0;
      memset(v76, 0, sizeof(v76));
      v64 = v63;
      v26 = v58;
      sub_10004F034(v57, v76, v62, v64);
      sub_1000E17D8(v76);
      sub_1000547B8(v57);
    }

    *(v26 + 72) = 0;
    v65 = [objc_opt_self() currentRunLoop];
    [v65 addTimer:v74 forMode:NSDefaultRunLoopMode];

    v50(v75, v24);
    v66 = *(v26 + 64);
    *(v26 + 64) = v74;

    v67 = v74;

    return v67;
  }
}

void sub_1003A5448()
{
  if (static WeatherClock.supportsModification.getter())
  {
    v1 = [objc_opt_self() defaultCenter];
    v2 = static WeatherClock.clockWasModifiedNotification.getter();
    [v1 addObserver:v0 selector:"weatherClockWasModified" name:v2 object:0];
  }
}

uint64_t sub_1003A54FC()
{

  asyncMain(block:)();
}

uint64_t sub_1003A5548(uint64_t a1)
{
  v2 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10004F034(v4, v8, v6, v5);
  sub_1000E17D8(v8);
  return sub_1000547B8(v4);
}

void sub_1003A5668()
{
  if (qword_100CA2708 != -1)
  {
    sub_10001E9E8(&qword_100CA2708);
  }

  v0 = type metadata accessor for Logger();
  sub_10000703C(v0, qword_100D90B80);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_100005954(v2))
  {
    *swift_slowAlloc() = 0;
    sub_10001BF80(&_mh_execute_header, v3, v4, "applicationWillEnterForeground - will setup timer");
    sub_100008370();
  }

  sub_1003A445C();

  sub_1003A5448();
}

void sub_1003A5728()
{
  v1 = v0;
  if (qword_100CA2708 != -1)
  {
    sub_10001E9E8(&qword_100CA2708);
  }

  v2 = type metadata accessor for Logger();
  sub_10000703C(v2, qword_100D90B80);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005954(v4))
  {
    *swift_slowAlloc() = 0;
    sub_10001BF80(&_mh_execute_header, v5, v6, "applicationDidEnterBackground - will invalidate timer");
    sub_100008370();
  }

  v7 = *(v1 + 64);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(v1 + 64);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 64) = 0;

  sub_1003A438C();
}

uint64_t sub_1003A5804(uint64_t a1, uint64_t a2)
{
  result = sub_10006D318(&qword_100CB2448, a2, type metadata accessor for TimeMonitor, byte_100A446A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for RecordPinnedMapAnimatingViewModifier(uint64_t a1)
{
  result = qword_100CB24A8;
  if (!qword_100CB24A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003A58F0(uint64_t a1)
{
  sub_10013B068(319);
  if (v1 <= 0x3F)
  {
    sub_1003A598C();
    if (v2 <= 0x3F)
    {
      sub_1003A59DC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003A598C()
{
  if (!qword_100CB24B8)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB24B8);
    }
  }
}

void sub_1003A59DC(uint64_t a1)
{
  if (!qword_100CB24C0)
  {
    sub_10022E824(&qword_100CE13F0, &qword_100A44738);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB24C0);
    }
  }
}

uint64_t sub_1003A5A5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  sub_1003A76C0(v2, &v17 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_1000037E8();
    return (*(v14 + 32))(a1, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_1003A5C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v42 = a2;
  type metadata accessor for ScenePhase();
  sub_1000037C4();
  v43 = v4;
  v44 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v41 = v6 - v5;
  v7 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
  v8 = v7 - 8;
  v39 = *(v7 - 8);
  v9 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  v40 = sub_10022C350(&qword_100CB24F8, &qword_100A44790);
  sub_1000037E8();
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  KeyPath = swift_getKeyPath();
  v21 = sub_1003A6140();
  sub_10022C350(&qword_100CB2500, &qword_100A447C0);
  sub_1000037E8();
  (*(v22 + 16))(v19, v38);
  v23 = &v19[*(sub_10022C350(&qword_100CB2508, &qword_100A447C8) + 36)];
  *v23 = KeyPath;
  v23[8] = v21;
  v24 = v2 + *(v8 + 28);
  v25 = *v24;
  if (*(v24 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v25, 0);
    (*(v12 + 8))(v16, v10);
    LOBYTE(v25) = v45;
  }

  sub_1003A7224(v2, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v28 = swift_allocObject();
  sub_1003A7288(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  v29 = &v19[*(sub_10022C350(&qword_100CB2510, &unk_100A447D8) + 36)];
  *v29 = v25;
  *(v29 + 1) = sub_1003A72EC;
  *(v29 + 2) = v28;
  sub_1003A7224(v2, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = swift_allocObject();
  sub_1003A7288(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v27);
  v31 = v41;
  v32 = &v19[*(v40 + 36)];
  *v32 = sub_1003A7358;
  v32[1] = v30;
  v32[2] = 0;
  v32[3] = 0;
  sub_1003A5A5C(v31);
  sub_1003A7224(v2, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = swift_allocObject();
  sub_1003A7288(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v27);
  sub_1003A7430();
  sub_10001C024();
  sub_1003A7794(v34, v35, &protocol conformance descriptor for ScenePhase);
  v36 = v44;
  View.onChange<A>(of:initial:_:)();

  (*(v43 + 8))(v31, v36);
  return sub_1003A7658(v19);
}

uint64_t sub_1003A60AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100126A88();
  *a1 = result & 1;
  return result;
}

BOOL sub_1003A6140()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
  v6 = (v0 + *(v5 + 24));
  v7 = *v6;
  v8 = *(v6 + 1);
  v16 = *v6;
  v17 = v8;
  sub_10022C350(&qword_100CB2548, &unk_100A447F0);
  State.wrappedValue.getter();
  if (v15 <= 0xFDu)
  {
    v10 = v0 + *(v5 + 20);
    v11 = *v10;
    if (*(v10 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v12 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v11, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v11) = v16;
    }

    v16 = v7;
    v17 = v8;
    State.wrappedValue.getter();
    return v15 > 0xFDu || !sub_1001009A8(v11, v15);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003A6338(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v3 - 8);
  v63 = v3;
  __chkstk_darwin(v3);
  v60 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = type metadata accessor for DispatchTime();
  v57 = *(v65 - 8);
  __chkstk_darwin(v65);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v46 - v10;
  v50 = type metadata accessor for AnimationCompletionCriteria();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
  v14 = v13 - 8;
  v48 = *(v13 - 8);
  v15 = *(v48 + 64);
  __chkstk_darwin(v13);
  v47 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (a2 + *(v14 + 32));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(aBlock) = v21;
  v67 = v22;
  sub_10022C350(&qword_100CB2548, &unk_100A447F0);
  State.wrappedValue.getter();
  v23 = v72;
  v24 = *(v14 + 28);
  v52 = a2;
  v25 = a2 + v24;
  v26 = *v25;
  v27 = *(v25 + 8);
  if (v27 == 1)
  {
    v28 = *v25;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v26, 0);
    (*(v17 + 8))(v19, v16);
    LOBYTE(v28) = aBlock;
  }

  if (v23 <= 0xFD && sub_1001009A8(v23, v28))
  {
    return Transaction.disablesAnimations.setter();
  }

  if (!v27)
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v26, 0);
    (*(v17 + 8))(v19, v16);
    LOBYTE(v26) = aBlock;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v46 = v32;
  v33 = v47;
  sub_1003A7224(v52, v47);
  v34 = (*(v48 + 80) + 25) & ~*(v48 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v26;
  sub_1003A7288(v33, v35 + v34);

  static AnimationCompletionCriteria.logicallyComplete.getter();
  Transaction.addAnimationCompletion(criteria:_:)();
  (*(v49 + 8))(v12, v50);
  sub_100040690();
  v64 = static OS_dispatch_queue.main.getter();
  v36 = v51;
  static DispatchTime.now()();
  v38 = v53;
  v37 = v54;
  *v53 = 1;
  v39 = v55;
  (*(v37 + 104))(v38, enum case for DispatchTimeInterval.seconds(_:), v55);
  v40 = v56;
  + infix(_:_:)();
  (*(v37 + 8))(v38, v39);
  v57 = *(v57 + 8);
  (v57)(v36, v65);
  v70 = sub_1003A7730;
  v71 = v35;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_1000742F0;
  v69 = &unk_100C522D8;
  v41 = _Block_copy(&aBlock);

  v42 = v58;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1003A7794(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
  v43 = v60;
  v44 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45 = v64;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v41);

  (*(v62 + 8))(v43, v44);
  (*(v59 + 8))(v42, v61);
  (v57)(v40, v65);
}

void sub_1003A6BD4(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v10 = a2;
    swift_beginAccess();
    *(a1 + 16) = 1;
    v11 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
    v12 = a3 + *(v11 + 20);
    v13 = *v12;
    if (*(v12 + 8) == 1)
    {
      v14 = *v12;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v15 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v13, 0);
      (*(v7 + 8))(v9, v6);
      v14 = v20;
    }

    if (v10 >> 6)
    {
      if (v10 >> 6 != 1)
      {
        if (v14 != 128)
        {
          return;
        }

LABEL_11:
        v16 = (a3 + *(v11 + 24));
        v17 = *v16;
        v18 = *(v16 + 1);
        v20 = v17;
        v21 = v18;
        v19[15] = v10;
        sub_10022C350(&qword_100CB2548, &unk_100A447F0);
        State.wrappedValue.setter();
        return;
      }

      if ((v14 & 0xC0) != 0x40)
      {
        return;
      }
    }

    else if (v14 > 0x3F)
    {
      return;
    }

    if ((v14 ^ v10))
    {
      return;
    }

    goto LABEL_11;
  }
}

uint64_t sub_1003A6E08(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
  v7 = a1 + *(v6 + 20);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v8, 0);
    (*(v3 + 8))(v5, v2);
    LOBYTE(v8) = v15;
  }

  v10 = (a1 + *(v6 + 24));
  v11 = *v10;
  v12 = *(v10 + 1);
  v15 = v11;
  v16 = v12;
  v14[15] = v8;
  sub_10022C350(&qword_100CB2548, &unk_100A447F0);
  return State.wrappedValue.setter();
}

uint64_t sub_1003A6FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ScenePhase();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 104))(v12, enum case for ScenePhase.active(_:), v8, v10);
  v13 = static ScenePhase.== infix(_:_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v15 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
    v16 = a3 + *(v15 + 20);
    v17 = *v16;
    if (*(v16 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v17, 0);
      (*(v5 + 8))(v7, v4);
      LOBYTE(v17) = v23;
    }

    v19 = (a3 + *(v15 + 24));
    v20 = *v19;
    v21 = *(v19 + 1);
    v23 = v20;
    v24 = v21;
    v22[15] = v17;
    sub_10022C350(&qword_100CB2548, &unk_100A447F0);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1003A7224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A7288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A72EC(uint64_t a1)
{
  v3 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
  sub_100003810(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1003A6338(a1, v5);
}

uint64_t sub_1003A7358()
{
  v1 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
  sub_100003810(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1003A6E08(v3);
}

uint64_t sub_1003A73B4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
  sub_100003810(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1003A6FAC(a1, a2, v7);
}

unint64_t sub_1003A7430()
{
  result = qword_100CB2518;
  if (!qword_100CB2518)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB24F8, &qword_100A44790);
    v4[0] = sub_1003A74BC();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB2518);
  }

  return result;
}

unint64_t sub_1003A74BC()
{
  result = qword_100CB2520;
  if (!qword_100CB2520)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB2510, &unk_100A447D8);
    v4[0] = sub_1003A7574();
    v4[1] = sub_100006F64(&qword_100CB2538, &qword_100CB2540, &qword_100A447E8, &protocol conformance descriptor for _ValueTransactionModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB2520);
  }

  return result;
}

unint64_t sub_1003A7574()
{
  result = qword_100CB2528;
  if (!qword_100CB2528)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB2508, &qword_100A447C8);
    v4[0] = sub_100006F64(&qword_100CB2530, &qword_100CB2500, &qword_100A447C0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB2528);
  }

  return result;
}

uint64_t sub_1003A7658(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB24F8, &qword_100A44790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003A76C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1003A7730()
{
  v1 = type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
  sub_100003810(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v2 + 80) + 25) & ~*(v2 + 80));

  sub_1003A6BD4(v3, v4, v5);
}

uint64_t sub_1003A7794(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003A77EC@<X0>(uint64_t a1@<X8>)
{
  sub_1003A7830(a1);
  result = sub_10022C350(&qword_100CB2560, &qword_100A44908);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1003A7830@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = sub_10022C350(&qword_100CB2568, &qword_100A44910);
  __chkstk_darwin(v105);
  v107 = &v98 - v4;
  v102 = sub_10022C350(&qword_100CB2570, &qword_100A44918);
  __chkstk_darwin(v102);
  v103 = &v98 - v5;
  v106 = sub_10022C350(&qword_100CB2578, &qword_100A44920);
  __chkstk_darwin(v106);
  v104 = &v98 - v6;
  v118 = sub_10022C350(&qword_100CB2580, &qword_100A44928);
  __chkstk_darwin(v118);
  v108 = &v98 - v7;
  v101 = sub_10022C350(&qword_100CB2588, &qword_100A44930);
  __chkstk_darwin(v101);
  v100 = &v98 - v8;
  v109 = sub_10022C350(&qword_100CB2590, &qword_100A44938);
  __chkstk_darwin(v109);
  v110 = &v98 - v9;
  v10 = sub_10022C350(&qword_100CB2598, &qword_100A44940);
  __chkstk_darwin(v10);
  v12 = &v98 - v11;
  v113 = sub_10022C350(&qword_100CB25A0, &qword_100A44948);
  __chkstk_darwin(v113);
  v14 = &v98 - v13;
  v120 = sub_10022C350(&qword_100CB25A8, &qword_100A44950);
  __chkstk_darwin(v120);
  v16 = (&v98 - v15);
  v115 = sub_10022C350(&qword_100CB25B0, &qword_100A44958);
  __chkstk_darwin(v115);
  v117 = &v98 - v17;
  v112 = sub_10022C350(&qword_100CB25B8, &qword_100A44960);
  __chkstk_darwin(v112);
  v19 = &v98 - v18;
  v116 = sub_10022C350(&qword_100CB25C0, &qword_100A44968);
  __chkstk_darwin(v116);
  v114 = &v98 - v20;
  v121 = sub_10022C350(&qword_100CB25C8, &qword_100A44970);
  __chkstk_darwin(v121);
  v119 = &v98 - v21;
  sub_1009892E4();
  v23 = v22;
  sub_1009892E4();
  switch(v23)
  {
    case 1:
      v53 = v16;
      v55 = *(v1 + 56);
      v54 = *(v1 + 64);
      v56 = sub_1000161C0((v1 + 32), v55);
      v124 = v55;
      v125 = *(v54 + 8);
      v57 = sub_100042FB0(&v122);
      (*(*(v55 - 8) + 16))(v57, v56, v55);
      sub_1009892E4();
      LOBYTE(v126) = v58 & 1;
      sub_1003AABAC(&v122, v135);
      v135[41] = 1;
      sub_10038FD4C();
      sub_1003AA27C();
      _ConditionalContent<>.init(storage:)();
      sub_1000955E0(__src, v19, &qword_100CB25F0, &qword_100A44980);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB25F0, &qword_100A44980);
      sub_1003AA1F0();
      sub_1003AA2D0();
      v59 = v114;
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(__src, &qword_100CB25F0);
      sub_1000955E0(v59, v117, &qword_100CB25C0, &qword_100A44968);
      swift_storeEnumTagMultiPayload();
      sub_1003AA164();
      sub_1003AA468();
      v60 = v119;
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v59, &qword_100CB25C0);
      sub_1000955E0(v60, v53, &qword_100CB25C8, &qword_100A44970);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB25D0, &qword_100A44978);
      sub_1003AA0D8();
      sub_1003AA90C();
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v60, &qword_100CB25C8);
      result = sub_1003AA9CC(&v122);
      break;
    case 2:
      v111 = v16;
      v39 = *(v1 + 56);
      v38 = *(v1 + 64);
      v40 = sub_1000161C0((v1 + 32), v39);
      __src[3] = v39;
      __src[4] = *(v38 + 16);
      v41 = sub_100042FB0(__src);
      (*(*(v39 - 8) + 16))(v41, v40, v39);
      sub_1009892E4();
      LOWORD(__src[5]) = v42 >> 24;
      BYTE2(__src[5]) = BYTE5(v42);
      sub_1003AAAFC(__src, v12);
      swift_storeEnumTagMultiPayload();
      sub_1003AA35C();
      sub_1003AA3B0();
      _ConditionalContent<>.init(storage:)();
      sub_1000955E0(v14, v19, &qword_100CB25A0, &qword_100A44948);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB25F0, &qword_100A44980);
      sub_1003AA1F0();
      sub_1003AA2D0();
      v43 = v114;
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v14, &qword_100CB25A0);
      sub_1000955E0(v43, v117, &qword_100CB25C0, &qword_100A44968);
      swift_storeEnumTagMultiPayload();
      sub_1003AA164();
      sub_1003AA468();
      v44 = v119;
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v43, &qword_100CB25C0);
      sub_1000955E0(v44, v111, &qword_100CB25C8, &qword_100A44970);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB25D0, &qword_100A44978);
      sub_1003AA0D8();
      sub_1003AA90C();
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v44, &qword_100CB25C8);
      result = sub_1003AAB58(__src);
      break;
    case 3:
      v111 = v16;
      switch(v24)
      {
        case 0:
        case 4:
          sub_100035B30(v1 + 32, __src);
          KeyPath = swift_getKeyPath();
          v46 = swift_allocObject();
          *(v46 + 16) = 1;
          __src[5] = KeyPath;
          __src[6] = sub_1002B09C4;
          __src[7] = v46;
          sub_1003AA0A0(v2, v135);
          v47 = swift_allocObject();
          memcpy((v47 + 16), v135, 0x48uLL);
          __src[8] = sub_1003AAE18;
          __src[9] = v47;
          __src[10] = 0;
          __src[11] = 0;
          sub_1000955E0(__src, v103, &qword_100CB2638, &qword_100A44988);
          swift_storeEnumTagMultiPayload();
          sub_10022C350(&qword_100CB2638, &qword_100A44988);
          sub_1003AA580();
          sub_1003AA638();
          v48 = v104;
          _ConditionalContent<>.init(storage:)();
          sub_1000955E0(v48, v107, &qword_100CB2578, &qword_100A44920);
          swift_storeEnumTagMultiPayload();
          sub_10022C350(&qword_100CB2658, &qword_100A449A0);
          sub_1003AA4F4();
          sub_1003AA79C();
          v49 = v108;
          _ConditionalContent<>.init(storage:)();
          sub_10003FDA0(v48, &qword_100CB2578);
          sub_1000955E0(v49, v117, &qword_100CB2580, &qword_100A44928);
          swift_storeEnumTagMultiPayload();
          sub_1003AA164();
          sub_1003AA468();
          v50 = v119;
          _ConditionalContent<>.init(storage:)();
          sub_10003FDA0(v49, &qword_100CB2580);
          sub_1000955E0(v50, v111, &qword_100CB25C8, &qword_100A44970);
          swift_storeEnumTagMultiPayload();
          sub_10022C350(&qword_100CB25D0, &qword_100A44978);
          sub_1003AA0D8();
          sub_1003AA90C();
          _ConditionalContent<>.init(storage:)();
          sub_10003FDA0(v50, &qword_100CB25C8);
          v51 = __src;
          v52 = &qword_100CB2638;
          goto LABEL_13;
        case 1:
        case 5:
          v75 = *(v1 + 56);
          v76 = *(v1 + 64);
          v77 = sub_1000161C0((v1 + 32), v75);
          v99 = a1;
          v78 = v77;
          v124 = v75;
          v125 = *(v76 + 8);
          v79 = sub_100042FB0(&v122);
          (*(*(v75 - 8) + 16))(v79, v78, v75);
          sub_1009892E4();
          LOBYTE(v126) = v80 & 1;
          v81 = swift_getKeyPath();
          v82 = swift_allocObject();
          *(v82 + 16) = 1;
          v128 = v81;
          v129 = sub_1002B09C4;
          v130 = v82;
          sub_1003AA0A0(v2, __src);
          v83 = swift_allocObject();
          memcpy((v83 + 16), __src, 0x48uLL);
          v131 = sub_1003AAE18;
          v132 = v83;
          v133 = 0;
          v134 = 0;
          v84 = &qword_100CB2668;
          sub_1000955E0(&v122, v135, &qword_100CB2668, &qword_100A449A8);
          v136 = 0;
          sub_10022C350(&qword_100CB2668, &qword_100A449A8);
          sub_10022C350(&qword_100CB2688, &qword_100A449B8);
          sub_1003AA854();
          sub_1003AA6F0(&qword_100CB2680, &qword_100CB2688, &qword_100A449B8, sub_1003AA35C);
          _ConditionalContent<>.init(storage:)();
          sub_1000955E0(__src, v107, &qword_100CB2658, &qword_100A449A0);
          swift_storeEnumTagMultiPayload();
          sub_10022C350(&qword_100CB2658, &qword_100A449A0);
          sub_1003AA4F4();
          sub_1003AA79C();
          v85 = v108;
          _ConditionalContent<>.init(storage:)();
          sub_10003FDA0(__src, &qword_100CB2658);
          sub_1000955E0(v85, v117, &qword_100CB2580, &qword_100A44928);
          swift_storeEnumTagMultiPayload();
          sub_1003AA164();
          sub_1003AA468();
          v86 = v119;
          _ConditionalContent<>.init(storage:)();
          sub_10003FDA0(v85, &qword_100CB2580);
          sub_1000955E0(v86, v111, &qword_100CB25C8, &qword_100A44970);
          swift_storeEnumTagMultiPayload();
          sub_10022C350(&qword_100CB25D0, &qword_100A44978);
          sub_1003AA0D8();
          sub_1003AA90C();
          goto LABEL_12;
        case 2:
          v87 = *(v1 + 56);
          v88 = *(v1 + 64);
          v89 = sub_1000161C0((v1 + 32), v87);
          v124 = v87;
          v125 = *(v88 + 16);
          v90 = sub_100042FB0(&v122);
          (*(*(v87 - 8) + 16))(v90, v89, v87);
          sub_1009892E4();
          v126 = v91 >> 24;
          v127 = BYTE5(v91);
          v92 = swift_getKeyPath();
          v93 = swift_allocObject();
          *(v93 + 16) = 1;
          v128 = v92;
          v129 = sub_100168F20;
          v130 = v93;
          v84 = &qword_100CB2688;
          sub_1000955E0(&v122, v135, &qword_100CB2688, &qword_100A449B8);
          v136 = 1;
          sub_10022C350(&qword_100CB2668, &qword_100A449A8);
          sub_10022C350(&qword_100CB2688, &qword_100A449B8);
          sub_1003AA854();
          sub_1003AA6F0(&qword_100CB2680, &qword_100CB2688, &qword_100A449B8, sub_1003AA35C);
          _ConditionalContent<>.init(storage:)();
          sub_1000955E0(__src, v107, &qword_100CB2658, &qword_100A449A0);
          swift_storeEnumTagMultiPayload();
          sub_10022C350(&qword_100CB2658, &qword_100A449A0);
          sub_1003AA4F4();
          sub_1003AA79C();
          v94 = v108;
          _ConditionalContent<>.init(storage:)();
          sub_10003FDA0(__src, &qword_100CB2658);
          sub_1000955E0(v94, v117, &qword_100CB2580, &qword_100A44928);
          swift_storeEnumTagMultiPayload();
          sub_1003AA164();
          sub_1003AA468();
          v86 = v119;
          _ConditionalContent<>.init(storage:)();
          sub_10003FDA0(v94, &qword_100CB2580);
          sub_1000955E0(v86, v111, &qword_100CB25C8, &qword_100A44970);
          swift_storeEnumTagMultiPayload();
          sub_10022C350(&qword_100CB25D0, &qword_100A44978);
          sub_1003AA0D8();
          sub_1003AA90C();
LABEL_12:
          _ConditionalContent<>.init(storage:)();
          sub_10003FDA0(v86, &qword_100CB25C8);
          v51 = &v122;
          v52 = v84;
LABEL_13:
          result = sub_10003FDA0(v51, v52);
          break;
        default:
          v95 = static HorizontalAlignment.center.getter();
          sub_1003AA0A0(v2, __src);
          v96 = swift_allocObject();
          memcpy((v96 + 16), __src, 0x48uLL);
          v97 = v111;
          *v111 = v95;
          v97[1] = 0;
          *(v97 + 16) = 1;
          v97[3] = sub_1003AAE18;
          v97[4] = v96;
          v97[5] = 0;
          v97[6] = 0;
          swift_storeEnumTagMultiPayload();
          sub_10022C350(&qword_100CB25D0, &qword_100A44978);
          sub_1003AA0D8();
          sub_1003AA90C();
          result = _ConditionalContent<>.init(storage:)();
          break;
      }

      break;
    case 4:
      sub_100035B30(v1 + 32, __src);
      v28 = *(v1 + 24);
      LOBYTE(v122) = *(v1 + 16);
      v123 = v28;
      sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
      v29 = State.projectedValue.getter();
      v108 = &v98;
      v111 = v16;
      LODWORD(v107) = v135[16];
      __chkstk_darwin(v29);
      v99 = a1;
      *(&v98 - 2) = v1;
      sub_10038FD4C();
      View.alert(isPresented:content:)();

      sub_1003AAA68(__src);
      sub_1003AA0A0(v1, __src);
      v30 = swift_allocObject();
      memcpy((v30 + 16), __src, 0x48uLL);
      v31 = v110;
      v32 = &v110[*(v109 + 36)];
      *v32 = sub_1003AAABC;
      v32[1] = v30;
      v32[2] = 0;
      v32[3] = 0;
      v33 = v31;
      sub_1000955E0(v31, v12, &qword_100CB2590, &qword_100A44938);
      swift_storeEnumTagMultiPayload();
      sub_1003AA35C();
      sub_1003AA3B0();
      _ConditionalContent<>.init(storage:)();
      sub_1000955E0(v14, v19, &qword_100CB25A0, &qword_100A44948);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB25F0, &qword_100A44980);
      sub_1003AA1F0();
      sub_1003AA2D0();
      v34 = v114;
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v14, &qword_100CB25A0);
      sub_1000955E0(v34, v117, &qword_100CB25C0, &qword_100A44968);
      swift_storeEnumTagMultiPayload();
      sub_1003AA164();
      sub_1003AA468();
      v35 = v119;
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v34, &qword_100CB25C0);
      sub_1000955E0(v35, v111, &qword_100CB25C8, &qword_100A44970);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB25D0, &qword_100A44978);
      sub_1003AA0D8();
      sub_1003AA90C();
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v35, &qword_100CB25C8);
      v36 = v33;
      v37 = &qword_100CB2590;
      goto LABEL_9;
    case 5:
      v111 = v16;
      v61 = *(v1 + 56);
      v62 = *(v1 + 64);
      v63 = sub_1000161C0((v1 + 32), v61);
      v99 = a1;
      v64 = v63;
      __src[3] = v61;
      __src[4] = *(v62 + 8);
      v65 = sub_100042FB0(__src);
      (*(*(v61 - 8) + 16))(v65, v64, v61);
      sub_1009892E4();
      LOBYTE(__src[5]) = v66 & 1;
      v67 = *(v1 + 24);
      LOBYTE(v122) = *(v1 + 16);
      v123 = v67;
      sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
      v68 = State.projectedValue.getter();
      __chkstk_darwin(v68);
      *(&v98 - 2) = v1;
      sub_1003AA27C();
      v69 = v100;
      View.alert(isPresented:content:)();

      sub_1003AA9CC(__src);
      sub_1003AA0A0(v1, __src);
      v70 = swift_allocObject();
      memcpy((v70 + 16), __src, 0x48uLL);
      v71 = (v69 + *(v101 + 36));
      *v71 = sub_1003AAA20;
      v71[1] = v70;
      v71[2] = 0;
      v71[3] = 0;
      sub_1000955E0(v69, v103, &qword_100CB2588, &qword_100A44930);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB2638, &qword_100A44988);
      sub_1003AA580();
      sub_1003AA638();
      v72 = v104;
      _ConditionalContent<>.init(storage:)();
      sub_1000955E0(v72, v107, &qword_100CB2578, &qword_100A44920);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB2658, &qword_100A449A0);
      sub_1003AA4F4();
      sub_1003AA79C();
      v73 = v108;
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v72, &qword_100CB2578);
      sub_1000955E0(v73, v117, &qword_100CB2580, &qword_100A44928);
      swift_storeEnumTagMultiPayload();
      sub_1003AA164();
      sub_1003AA468();
      v74 = v119;
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v73, &qword_100CB2580);
      sub_1000955E0(v74, v111, &qword_100CB25C8, &qword_100A44970);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB25D0, &qword_100A44978);
      sub_1003AA0D8();
      sub_1003AA90C();
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v74, &qword_100CB25C8);
      v36 = v69;
      v37 = &qword_100CB2588;
LABEL_9:
      result = sub_10003FDA0(v36, v37);
      break;
    default:
      sub_100035B30(v1 + 32, &v122);
      sub_1003AAC08(&v122, v135);
      v135[41] = 0;
      sub_10038FD4C();
      sub_1003AA27C();
      _ConditionalContent<>.init(storage:)();
      sub_1000955E0(__src, v19, &qword_100CB25F0, &qword_100A44980);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB25F0, &qword_100A44980);
      sub_1003AA1F0();
      sub_1003AA2D0();
      v25 = v114;
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(__src, &qword_100CB25F0);
      sub_1000955E0(v25, v117, &qword_100CB25C0, &qword_100A44968);
      swift_storeEnumTagMultiPayload();
      sub_1003AA164();
      sub_1003AA468();
      v26 = v119;
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v25, &qword_100CB25C0);
      sub_1000955E0(v26, v16, &qword_100CB25C8, &qword_100A44970);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CB25D0, &qword_100A44978);
      sub_1003AA0D8();
      sub_1003AA90C();
      _ConditionalContent<>.init(storage:)();
      sub_10003FDA0(v26, &qword_100CB25C8);
      result = sub_1003AAA68(&v122);
      break;
  }

  return result;
}