uint64_t sub_10071DBB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v33 = a5;
  v30 = a4;
  v27 = a3;
  v25[1] = a2;
  v26 = type metadata accessor for Location();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationData();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v29 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DetailViewData();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewData();
  sub_10071E248(&qword_100CB3EE0, &type metadata accessor for ViewData, &protocol conformance descriptor for ViewData);
  AccessTracker.push<A>(data:traits:file:line:)();
  v17 = v27;
  v18 = v9;
  v19 = v26;
  (*(v10 + 16))(v12, v27, v18);
  DetailViewData.init(type:)();
  sub_10071E248(&qword_100CD5378, &type metadata accessor for DetailViewData, &protocol conformance descriptor for DetailViewData);
  AccessTracker.push<A>(data:traits:file:line:)();
  (*(v14 + 8))(v16, v13);
  v20 = v28;
  v21 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  (*(v20 + 16))(v6, v17 + *(v21 + 20), v19);
  if (v30)
  {
    Location.coordinate.getter();
    Location.coordinate.getter();
  }

  v22 = v29;
  LocationData.init(latitudeDouble:longitudeDouble:)();
  (*(v20 + 8))(v6, v19);
  sub_10071E248(&qword_100CB12A8, &type metadata accessor for LocationData, &protocol conformance descriptor for LocationData);
  v23 = v32;
  AccessTracker.push<A>(data:traits:file:line:)();
  (*(v31 + 8))(v22, v23);
  type metadata accessor for DetailViewOriginationData();
  sub_10071E248(&qword_100CD5380, &type metadata accessor for DetailViewOriginationData, &protocol conformance descriptor for DetailViewOriginationData);
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for DetailViewEvent();
  sub_10071E248(&qword_100CD5368, &type metadata accessor for DetailViewEvent, &protocol conformance descriptor for DetailViewEvent);
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

uint64_t sub_10071E0E0()
{
  type metadata accessor for DetailViewEvent();
  sub_10071E248(&qword_100CD5368, &type metadata accessor for DetailViewEvent, &protocol conformance descriptor for DetailViewEvent);
  memset(v1, 0, sizeof(v1));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_1003C1574(v1);
}

uint64_t sub_10071E1E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10071E248(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10071E2C4(uint64_t a1)
{
  v3 = type metadata accessor for ViewData();
  sub_100003AE8(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  sub_100003AE8(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = v10 + *(v11 + 64);
  v13 = *(type metadata accessor for DetailViewOriginationData() - 8);
  v14 = *(v1 + v12);
  v15 = v1 + ((v12 + *(v13 + 80) + 1) & ~*(v13 + 80));

  return sub_10071DBB4(a1, v1 + v5, v1 + v10, v14, v15);
}

uint64_t sub_10071E3FC(const void *a1)
{
  v3 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  memcpy(v5, a1, 0x60uLL);
  type metadata accessor for ModalViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10029C25C(a1, v9);
  sub_10004F034(v5, v10, v7, v6);
  sub_1000E17D8(v10);
  return sub_1000547B8(v5);
}

uint64_t sub_10071E4F8()
{
  sub_1000161C0((v0 + 32), *(v0 + 56));
  type metadata accessor for ReportWeatherExposureEvent();
  sub_10071E84C(&qword_100CA6E18, 255, &type metadata accessor for ReportWeatherExposureEvent, &protocol conformance descriptor for ReportWeatherExposureEvent);
  return Tracker.submit<A>(_:onlyIfTimed:completion:)();
}

uint64_t sub_10071E584(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000161C0(v1 + 4, v1[7]);
  sub_100387178(a1);
  v7 = v1[12];
  v8 = v1[13];
  sub_1000161C0(v1 + 9, v7);
  result = (*(v8 + 8))(v7, v8);
  if ((*(a1 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_entrySource) & 1) == 0)
  {
    if (qword_100CA2158 != -1)
    {
      swift_once();
    }

    static WeatherClock.date.getter();
    Date.timeIntervalSince1970.getter();
    v11 = v10;
    (*(v4 + 8))(v6, v3);
    v14 = v11;
    sub_10071E84C(&qword_100CD5440, v12, type metadata accessor for ReportWeatherInteractor, aI_17);
    Updatable.save<A>(setting:value:)();
    if (qword_100CA2160 != -1)
    {
      swift_once();
    }

    v13[7] = 1;
    return Updatable.save<A>(setting:value:)();
  }

  return result;
}

uint64_t sub_10071E84C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10071EA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v49 = sub_10022C350(&qword_100CA2DD8, &qword_100A2C518);
  __chkstk_darwin(v49);
  v6 = &v42 - v5;
  v48 = sub_10022C350(&qword_100CD5590, &qword_100A7DCE8);
  v47 = *(v48 - 1);
  __chkstk_darwin(v48);
  v8 = &v42 - v7;
  sub_100035B30(a1, __dst);
  v9 = type metadata accessor for WeatherApp(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  sub_100720520();
  v12 = *(v10 + 80);
  v13 = swift_allocObject();
  sub_100013188(__dst, v13 + 16);
  sub_10005B7F8();
  v14 = sub_10022C350(&qword_100CD17D8, &qword_100A76BD8);
  *&__src[80] = sub_10008360C;
  *&__src[88] = 0;
  __src[96] = 0;
  *__src = v14;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  v52 = v6;
  swift_beginAccess();
  result = sub_100095588();
  if (*&__dst[24])
  {
    v51 = ~v12;
    sub_100013188(__dst, &__src[24]);
    *&__src[8] = sub_1007205D4;
    *&__src[16] = v13;
    v16 = Dictionary.init(dictionaryLiteral:)();
    *&__src[64] = _swiftEmptyArrayStorage;
    *&__src[72] = v16;
    memcpy(__dst, __src, sizeof(__dst));
    v46 = a1;
    sub_100035B30(a1, __src);
    v17 = swift_allocObject();
    sub_100013188(__src, v17 + 16);
    sub_10022C350(&qword_100CD5540, &qword_100A7DCC0);
    sub_100006F64(&qword_100CD5548, &qword_100CD5540, &qword_100A7DCC0, byte_100A5F580);
    View.onOpenURL(perform:)();

    v18 = sub_1000180EC(__dst, &qword_100CD5540, &qword_100A7DCC0);
    v44 = &v42;
    __chkstk_darwin(v18);
    v43 = v8;
    sub_100720520();
    sub_100035B30(a1, __dst);
    v45 = a2;
    v19 = (v11 + 7 + ((v12 + 16) & v51)) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    sub_10005B7F8();
    sub_100013188(__dst, v20 + v19);
    v21 = v52;
    v22 = (*(v47 + 32))(v52, v43, v48);
    v23 = &v21[*(v49 + 9)];
    *v23 = sub_100720660;
    *(v23 + 1) = v20;
    __chkstk_darwin(v22);
    sub_100720520();
    sub_100035B30(v46, __dst);
    type metadata accessor for MainActor();
    v24 = static MainActor.shared.getter();
    v25 = (v11 + 7 + ((v12 + 32) & v51)) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = &protocol witness table for MainActor;
    sub_10005B7F8();
    sub_100013188(__dst, v26 + v25);
    v27 = type metadata accessor for TaskPriority();
    v28 = *(v27 - 8);
    v29 = *(v28 + 64);
    __chkstk_darwin(v27);
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
    v31 = &v42 - v30;
    static TaskPriority.userInitiated.getter();
    if (sub_100A162A0(2, 26, 4, 0))
    {
      v47 = type metadata accessor for _TaskModifier2();
      v48 = &v42;
      v46 = *(v47 - 8);
      __chkstk_darwin(v47);
      v51 = &v42;
      v49 = &v42;
      v33 = &v42 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      *__src = 0;
      *&__src[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      *__src = 0xD000000000000025;
      *&__src[8] = 0x8000000100ADC260;
      v53 = 60;
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v36 = __chkstk_darwin(v35);
      (*(v28 + 16))(&v42 - v30, v31, v27, v36);
      _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
      (*(v28 + 8))(v31, v27);
      v37 = v50;
      sub_10020E9F0();
      v38 = sub_10022C350(&qword_100CA2DE0, &qword_100A2C520);
      return (*(v46 + 32))(v37 + *(v38 + 36), v33, v47);
    }

    else
    {
      v39 = sub_10022C350(&qword_100CA2DE8, &qword_100A2C528);
      v40 = (v50 + *(v39 + 36));
      v41 = type metadata accessor for _TaskModifier();
      (*(v28 + 32))(&v40[*(v41 + 20)], &v42 - v30, v27);
      *v40 = &unk_100A7DCF8;
      *(v40 + 1) = v26;
      return sub_10020E9F0();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10071F3E0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v34 = a4;
  v6 = type metadata accessor for MainView(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10022C350(&qword_100CD55A8, &qword_100A7DD10);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v35 = sub_10022C350(&qword_100CD55B0, &qword_100A7DD18);
  __chkstk_darwin(v35);
  v13 = &v33 - v12;
  v36 = sub_10022C350(&qword_100CD55B8, &qword_100A7DD20);
  __chkstk_darwin(v36);
  v15 = &v33 - v14;
  sub_1000161C0(a1, a1[3]);
  sub_10009E8D0(v8);
  KeyPath = swift_getKeyPath();
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CD17E0, &qword_100A76BE0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v39)
  {
    v18 = *sub_1000161C0(v38, v39);
    sub_10005B7F8();
    v19 = &v11[*(v9 + 36)];
    *v19 = KeyPath;
    v19[8] = v18;
    sub_100006F14(v38);
    v33 = swift_getKeyPath();
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA2258 != -1)
    {
      swift_once();
    }

    DeviceSupportsStickyHeaders();
    v20 = SettingReader.isEnabled(_:with:)();

    static SettingReader.shared.getter();
    if (qword_100CA2268 != -1)
    {
      swift_once();
    }

    v21 = SettingReader.isEnabled(_:with:)();

    static SettingReader.shared.getter();
    if (qword_100CA2270 != -1)
    {
      swift_once();
    }

    v22 = SettingReader.isEnabled(_:with:)();

    static SettingReader.shared.getter();
    static Settings.VFX.foregroundEffects.getter();
    DeviceSupportsForegroundEffects();
    v23 = SettingReader.isEnabled(_:with:)();

    sub_100051BBC();
    v24 = &v13[*(v35 + 36)];
    *v24 = v33;
    v24[8] = v20 & 1;
    v24[9] = v21 & 1;
    v24[10] = v22 & 1;
    v24[11] = v23 & 1;
    sub_10022C350(&qword_100CD5450, &qword_100A7DC38);
    v25 = UIApplicationDelegateAdaptor.wrappedValue.getter();
    v26 = sub_100083E30();

    type metadata accessor for ObservableResolver();
    sub_1000030C8(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);
    v27 = static ObservableObject.environmentStore.getter();
    sub_100051BBC();
    v28 = &v15[*(v36 + 36)];
    *v28 = v27;
    v28[1] = v26;
    sub_1000161C0(a2, a2[3]);
    sub_10022C350(&qword_100CBF860, &unk_100A61BF0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v29 = result;
      sub_100006F64(&qword_100CD19C8, &qword_100CBF860, &unk_100A61BF0, aG_1);
      v30 = static ObservableObject.environmentStore.getter();
      v31 = v34;
      sub_100051BBC();
      result = sub_10022C350(&qword_100CD55C0, &qword_100A7DD78);
      v32 = (v31 + *(result + 9));
      *v32 = v30;
      v32[1] = v29;
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

uint64_t sub_10071F950(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10022C350(&qword_100CD5598, &qword_100A7DD00);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  sub_100095588();
  v7 = type metadata accessor for OpenURLOptions();
  if (sub_100024D10(v6, 1, v7) == 1)
  {
    sub_1000180EC(v6, &qword_100CD5598, &qword_100A7DD00);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = OpenURLOptions.uiSceneOpenURLOptions.getter();
    (*(*(v7 - 8) + 8))(v6, v7);
    v8 = sub_1003E2674(v10);
    v9 = v11;
  }

  sub_1000161C0(a3, a3[3]);
  sub_10022C350(&qword_100CBE1B8, &qword_100A55880);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v13[0] = v8;
    v13[1] = v9;
    URLHandlerManager.handle(url:context:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10071FAF4(_BYTE *a1, uint64_t a2, void *a3)
{
  v5 = sub_10022C350(&unk_100CD54D8, &qword_100A7DC58);
  __chkstk_darwin(v5 - 8);
  __chkstk_darwin(v6);
  v8 = &v17[-1] - v7;
  __chkstk_darwin(v9);
  v11 = &v17[-1] - v10;
  if (*a1 == 1)
  {
    type metadata accessor for WeatherApp(0);
    sub_10022C350(&qword_100CD5458, &qword_100A7DC40);
    State.wrappedValue.getter();
    v12 = type metadata accessor for WeatherMenuCommands(0);
    v13 = sub_100024D10(v11, 1, v12);
    sub_1000180EC(v11, &unk_100CD54D8, &qword_100A7DC58);
    if (v13 == 1)
    {
      type metadata accessor for SettingReader();
      static SettingReader.shared.getter();
      if (qword_100CA24E0 != -1)
      {
        swift_once();
      }

      SettingReader.read<A>(_:)();

      if (LOBYTE(v17[0]) == 1 && (v14 = [objc_opt_self() currentDevice], v15 = objc_msgSend(v14, "userInterfaceIdiom"), v14, v15 == 1))
      {
        sub_1000161C0(a3, a3[3]);
        sub_10022C350(&qword_100CB9760, &qword_100A4E200);
        dispatch thunk of ResolverType.resolve<A>(_:)();
        if (!v18)
        {
          __break(1u);
          return;
        }

        sub_1000161C0(v17, v18);
        sub_1009BA00C();
        sub_10001B350(v8, 0, 1, v12);
        sub_100006F14(v17);
      }

      else
      {
        sub_10001B350(v8, 1, 1, v12);
      }

      sub_100095588();
      State.wrappedValue.setter();
      sub_1000180EC(v8, &unk_100CD54D8, &qword_100A7DC58);
    }
  }
}

uint64_t sub_10071FDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10071FE64, v6, v5);
}

uint64_t sub_10071FE64()
{
  v1 = *(v0 + 24);

  sub_1001887D4(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10071FED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  v23 = sub_10022C350(&qword_100CD5588, &qword_100A7DCE0);
  __chkstk_darwin(v23);
  v3 = &v22 - v2;
  v4 = sub_10022C350(&qword_100CD5580, &qword_100A7DCD8);
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for SidebarCommands();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&unk_100CD54D8, &qword_100A7DC58);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for WeatherMenuCommands(0);
  __chkstk_darwin(v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherApp(0);
  sub_10022C350(&qword_100CD5458, &qword_100A7DC40);
  State.wrappedValue.getter();
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &unk_100CD54D8, &qword_100A7DC58);
    v17 = 1;
    v18 = v25;
  }

  else
  {
    sub_10005B7F8();
    SidebarCommands.init()();
    v19 = *(v23 + 48);
    sub_100720520();
    (*(v8 + 16))(&v3[v19], v10, v7);
    TupleCommandContent.init(_:)();
    (*(v8 + 8))(v10, v7);
    sub_100720578(v16);
    v20 = v25;
    (*(v22 + 32))(v25, v6, v4);
    v17 = 0;
    v18 = v20;
  }

  return sub_10001B350(v18, v17, 1, v4);
}

void sub_100720268(uint64_t a1)
{
  if (!qword_100CD54D0)
  {
    sub_10022E824(&unk_100CD54D8, &qword_100A7DC58);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100CD54D0);
    }
  }
}

uint64_t sub_1007202CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WeatherApp(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_10071EA88(v1 + 16, v4, a1);
}

unint64_t sub_100720340()
{
  result = qword_100CD5538;
  if (!qword_100CD5538)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CA2DD8, &qword_100A2C518);
    v4[2] = sub_10022E824(&qword_100CD5540, &qword_100A7DCC0);
    v4[3] = sub_100006F64(&qword_100CD5548, &qword_100CD5540, &qword_100A7DCC0, byte_100A5F580);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100006F64(&qword_100CD5550, &qword_100CD5558, &qword_100A7DCC8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD5538);
  }

  return result;
}

unint64_t sub_100720470()
{
  result = qword_100CD5570;
  if (!qword_100CD5570)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CD5568, &qword_100A7DCD0);
    v4[0] = sub_100006F64(&qword_100CD5578, &qword_100CD5580, &qword_100A7DCD8, &protocol conformance descriptor for TupleCommandContent<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CD5570);
  }

  return result;
}

uint64_t sub_100720520()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100720578(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMenuCommands(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1007205D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WeatherApp(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_10071F3E0(a1, (v2 + 16), v6, a2);
}

void sub_100720660(_BYTE *a1)
{
  v3 = *(type metadata accessor for WeatherApp(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10071FAF4(a1, v1 + v4, v5);
}

uint64_t sub_1007206FC()
{
  v2 = *(type metadata accessor for WeatherApp(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000926F8;

  return sub_10071FDCC(v5, v6, v0 + v3, v0 + v4);
}

uint64_t sub_10072080C()
{
  v1 = type metadata accessor for ActivityAction(0);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((v0 + 16), *(v0 + 40));
  swift_storeEnumTagMultiPayload();
  v4 = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
  v5 = static VerticalSizingBehaviorKey.defaultValue.getter();
  sub_100366814(v3, v4 & 1, v5 & 1);
  return sub_1002AC218(v3);
}

uint64_t sub_100720908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1007209A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v309 = a1;
  v310 = a5;
  v308 = a3;
  v271 = a6;
  v8 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v8 - 8);
  v254 = v251 - v9;
  v252 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v252);
  sub_100003848();
  v281 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v269 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v268 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  v278 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  v266 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v275 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v263 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v261 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v273 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v258 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v272 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v255 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v251[0] = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v37 = v251 - v36;
  v38 = *(a4 - 8);
  __chkstk_darwin(v39);
  sub_100003848();
  v270 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v290 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v289 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v288 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v287 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v286 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v285 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v284 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v283 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v282 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v267 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v280 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v265 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v305 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v264 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v304 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v262 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v303 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v260 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v302 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v259 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v300 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v257 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v299 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v256 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v298 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v253 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v297 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v251[3] = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v296 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v251[2] = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v295 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v251[1] = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v294 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  v109 = v251 - v108;
  __chkstk_darwin(v110);
  v112 = v251 - v111;
  v301 = type metadata accessor for Optional();
  v274 = *(v301 - 8);
  __chkstk_darwin(v301);
  sub_100003848();
  v279 = v113;
  sub_10000386C();
  __chkstk_darwin(v114);
  sub_100003878();
  v293 = v115;
  sub_10000386C();
  __chkstk_darwin(v116);
  v118 = v251 - v117;
  __chkstk_darwin(v119);
  v292 = v251 - v120;
  v121 = a2;
  sub_100566A24(a2, v328);
  v306 = v118;
  v307 = v109;
  v291 = v112;
  if (v329)
  {
    v122 = 1;
  }

  else
  {
    v123 = v328[3];
    v124 = v328[2];
    v125 = v38;
    v126 = v328[1];
    v277 = v121;
    v127 = v328[0];
    sub_1001B3B30(v309 + OBJC_IVAR____TtCV7Weather18NoAqiSevereContent8_Storage_severeAlert, v37);
    v128 = v123;
    v109 = v307;
    v308(v37, v127, v126, v124, v128);
    sub_1001B4354(v37);
    v129 = v310;
    sub_1000833D8(v109, a4, v310);
    v130 = *(v125 + 8);
    v130(v109, a4);
    v131 = sub_100005480();
    v132 = v129;
    v118 = v306;
    sub_1000833D8(v131, v133, v132);
    v134 = sub_100005480();
    (v130)(v134);
    v38 = v125;
    v121 = v277;
    (*(v125 + 32))(v118, v109, a4);
    v122 = 0;
  }

  sub_10001B350(v118, v122, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v135, v136);
  v276 = *(v274 + 8);
  v277 = v274 + 8;
  v276(v118, v301);
  v137 = OBJC_IVAR____TtCV7Weather18NoAqiSevereContent8_Storage_map;
  v138 = v309;
  swift_beginAccess();
  v139 = v138 + v137;
  v140 = v254;
  sub_10026E174(v139, v254);
  if (sub_100024D10(v140, 1, v252) == 1)
  {
    sub_10026E1E4(v140);
LABEL_8:
    v142 = 1;
    v143 = v306;
    goto LABEL_10;
  }

  v141 = v251[0];
  sub_10026E24C(v140, v251[0]);
  sub_100566A5C(v121, v330);
  if (v330[32])
  {
    sub_1001B4354(v141);
    goto LABEL_8;
  }

  v144 = sub_100028198();
  v145(v144);
  sub_1001B4354(v141);
  v146 = v310;
  sub_1000833D8(v109, a4, v310);
  v147 = *(v38 + 8);
  v147(v307, a4);
  v148 = sub_100005480();
  sub_1000833D8(v148, v149, v146);
  v150 = sub_100005480();
  (v147)(v150);
  v143 = v306;
  (*(v38 + 32))(v306, v307, a4);
  v142 = 0;
LABEL_10:
  sub_10001B350(v143, v142, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v151, v152);
  v276(v143, v301);
  sub_10001420C();
  v154 = v255;
  sub_1001B3B30(v153 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v255);
  sub_100566A78(v121, v331);
  if (v332)
  {
    goto LABEL_28;
  }

  v308(v154, v331[0], v331[1], v331[2], v331[3]);
  sub_1001B4354(v154);
  v155 = sub_100005480();
  sub_1000833D8(v155, v156, v310);
  v157 = *(v38 + 8);
  v158 = sub_100005480();
  v157(v158);
  sub_10001420C();
  sub_1001B3B30(v159 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v272);
  sub_100566A94(v121, v333);
  if (v334)
  {
    goto LABEL_28;
  }

  v160 = v272;
  v308(v272, v333[0], v333[1], v333[2], v333[3]);
  sub_1001B4354(v160);
  v161 = sub_100005480();
  sub_1000833D8(v161, v162, v310);
  v163 = sub_100005480();
  v157(v163);
  sub_10001420C();
  v165 = v258;
  sub_1001B3B30(v164 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v258);
  sub_100566AB0(v121, v335);
  if (v335[32])
  {
    goto LABEL_31;
  }

  v166 = sub_10001926C();
  v167(v166);
  sub_1001B4354(v165);
  v168 = sub_100005480();
  sub_1000833D8(v168, v169, v310);
  v170 = sub_100005480();
  v157(v170);
  sub_10001420C();
  sub_1001B3B30(v171 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v273);
  sub_100566ACC(v121, v336);
  if (v337)
  {
    goto LABEL_28;
  }

  v172 = v273;
  v308(v273, v336[0], v336[1], v336[2], v336[3]);
  sub_1001B4354(v172);
  v173 = sub_100005480();
  sub_1000833D8(v173, v174, v310);
  v175 = sub_100005480();
  v157(v175);
  sub_10001420C();
  v177 = v261;
  sub_1001B3B30(v176 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v261);
  sub_100566AE8(v121, v338);
  if (v338[32])
  {
    goto LABEL_31;
  }

  v178 = sub_10001926C();
  v179(v178);
  sub_1001B4354(v177);
  v180 = sub_100005480();
  sub_1000833D8(v180, v181, v310);
  v182 = sub_100005480();
  v157(v182);
  sub_10001420C();
  v184 = v263;
  sub_1001B3B30(v183 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v263);
  sub_100566B04(v121, v339);
  if (v339[32])
  {
    goto LABEL_28;
  }

  v185 = sub_100028198();
  v186(v185);
  sub_1001B4354(v184);
  sub_100007FFC();
  sub_1000833D8(v187, v188, v189);
  v190 = sub_100005474();
  v157(v190);
  sub_10001420C();
  sub_1001B3B30(v191 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v275);
  sub_100566B20(v121, v340);
  if (v340[32])
  {
    goto LABEL_28;
  }

  v192 = v275;
  v193 = sub_100028198();
  v194(v193);
  sub_1001B4354(v192);
  sub_100007FFC();
  sub_1000833D8(v195, v196, v197);
  v198 = sub_100005474();
  v157(v198);
  sub_10001420C();
  v200 = v266;
  sub_1001B3B30(v199 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v266);
  sub_100566B3C(v121, v341);
  if (v341[32])
  {
LABEL_31:
    sub_100013470();
    goto LABEL_32;
  }

  v201 = sub_10001926C();
  v202(v201);
  sub_1001B4354(v200);
  v203 = sub_100005480();
  sub_1000833D8(v203, v204, v310);
  v205 = sub_100005480();
  v157(v205);
  sub_10001420C();
  sub_1001B3B30(v206 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v278);
  sub_100566B58(v121, v342);
  if ((v343 & 1) == 0)
  {
    v207 = v278;
    v308(v278, v342[0], v342[1], v342[2], v342[3]);
    sub_1001B4354(v207);
    v208 = sub_100005480();
    sub_1000833D8(v208, v209, v310);
    v210 = sub_100005480();
    v157(v210);
    sub_10001420C();
    v212 = v268;
    sub_1001B3B30(v211 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v268);
    sub_100566B74(v121, &v344);
    if ((v345 & 1) == 0)
    {
      v213 = sub_10001926C();
      v214(v213);
      sub_1001B4354(v212);
      v215 = sub_100005480();
      sub_1000833D8(v215, v216, v310);
      v217 = sub_100005480();
      v157(v217);
      sub_10001420C();
      v219 = v269;
      sub_1001B3B30(v218 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v269);
      sub_100566B90(v121, &v346);
      if ((v347 & 1) == 0)
      {
        v220 = sub_100028198();
        v221(v220);
        sub_1001B4354(v219);
        sub_100007FFC();
        sub_1000833D8(v222, v223, v224);
        v225 = sub_100005474();
        v157(v225);
        sub_10001420C();
        sub_1001B3B30(v226 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v281);
        sub_100566BAC(v121, v348);
        if ((v349 & 1) == 0)
        {
          v227 = v267;
          v228 = v281;
          v308(v281, v348[0], v348[1], v348[2], v348[3]);
          sub_1001B4354(v228);
          v229 = v310;
          sub_1000833D8(v227, a4, v310);
          (v157)(v227, a4);
          v230 = *(v274 + 16);
          v231 = v306;
          v232 = v301;
          v230(v306, v292, v301);
          v327[0] = v231;
          v233 = v279;
          v230(v279, v293, v232);
          v327[1] = v233;
          v234 = *(v38 + 16);
          v235 = v291;
          v234(v291, v294, a4);
          v327[2] = v235;
          v236 = v307;
          v234(v307, v295, a4);
          v327[3] = v236;
          v237 = v282;
          v234(v282, v296, a4);
          v327[4] = v237;
          v238 = v283;
          v234(v283, v297, a4);
          v327[5] = v238;
          v239 = v284;
          v234(v284, v298, a4);
          v327[6] = v239;
          v240 = v285;
          v234(v285, v299, a4);
          v327[7] = v240;
          v241 = v286;
          v234(v286, v300, a4);
          v327[8] = v241;
          v242 = v287;
          v234(v287, v302, a4);
          v327[9] = v242;
          v243 = v288;
          v234(v288, v303, a4);
          v327[10] = v243;
          v244 = v289;
          v234(v289, v304, a4);
          v327[11] = v244;
          v245 = v290;
          v234(v290, v305, a4);
          v327[12] = v245;
          v246 = v270;
          v234(v270, v280, a4);
          v327[13] = v246;
          v247 = v246;
          v326[0] = v232;
          v326[1] = v232;
          v326[2] = a4;
          v326[3] = a4;
          v326[4] = a4;
          v326[5] = a4;
          v326[6] = a4;
          v326[7] = a4;
          v326[8] = a4;
          v326[9] = a4;
          v326[10] = a4;
          v326[11] = a4;
          v326[12] = a4;
          v326[13] = a4;
          v311 = v229;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v232, &v311);
          v313 = WitnessTable;
          v314 = v229;
          v315 = v229;
          v316 = v229;
          v317 = v229;
          v318 = v229;
          v319 = v229;
          v320 = v229;
          v321 = v229;
          v322 = v229;
          v323 = v229;
          v324 = v229;
          v325 = v229;
          sub_10012E24C(v327, 14, v326);
          v248 = sub_100005474();
          v157(v248);
          (v157)(v305, a4);
          (v157)(v304, a4);
          (v157)(v303, a4);
          (v157)(v302, a4);
          (v157)(v300, a4);
          (v157)(v299, a4);
          (v157)(v298, a4);
          (v157)(v297, a4);
          (v157)(v296, a4);
          (v157)(v295, a4);
          (v157)(v294, a4);
          v249 = v276;
          v276(v293, v232);
          v249(v292, v232);
          (v157)(v247, a4);
          (v157)(v290, a4);
          (v157)(v289, a4);
          (v157)(v288, a4);
          (v157)(v287, a4);
          (v157)(v286, a4);
          (v157)(v285, a4);
          (v157)(v284, a4);
          (v157)(v283, a4);
          (v157)(v282, a4);
          (v157)(v307, a4);
          (v157)(v291, a4);
          v249(v279, v232);
          return (v249)(v306, v232);
        }
      }
    }

    goto LABEL_31;
  }

LABEL_28:
  sub_10001E640();
LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100722030@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD5980, &qword_100A7E1B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4D38, &unk_100A7E1D0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v22, v23);
      v7 = __chkstk_darwin(v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for MoonScrubberInteractor();
      v21[3] = v12;
      v21[4] = &off_100C648F0;
      v21[0] = v11;
      v13 = type metadata accessor for MoonScrubberModule();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, v12);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_100C648F0;
      v14[2] = v20;
      v14[7] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C6D9A8;
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

uint64_t sub_1007222AC()
{
  sub_10022C350(&qword_100CD5980, &qword_100A7E1B8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CD5988, &qword_100A7E1C0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(qword_100CD5990, &qword_100A7E1C8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4D38, &unk_100A7E1D0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_1007223D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for MoonScrubberInteractor();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v6;
    a2[3] = v4;
    a2[4] = &off_100C648F0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10072247C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MoonScrubberInputFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C56848;
  *a1 = result;
  return result;
}

void *sub_1007224C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v4 = type metadata accessor for MoonScrubberViewModelFactory();
    swift_allocObject();
    result = sub_10048FBA4();
    a2[3] = v4;
    a2[4] = &off_100C594B0;
    *a2 = result;
  }

  return result;
}

void *sub_10072255C(void *a1)
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
  sub_10022C350(&qword_100CD5988, &qword_100A7E1C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v18, v19);
  v16 = type metadata accessor for MoonScrubberInputFactory();
  v17 = &off_100C56848;
  v15[0] = v7;
  sub_100035B30(v15, v14);
  v8 = swift_allocObject();
  sub_100013188(v14, v8 + 16);

  sub_100006F14(v15);
  sub_100006F14(v18);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1007228F4;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(qword_100CD5990, &qword_100A7E1C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v10 = *sub_1000161C0(v18, v19);
    v16 = type metadata accessor for MoonScrubberViewModelFactory();
    v17 = &off_100C594B0;
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
    *(v13 + 16) = sub_1007228FC;
    *(v13 + 24) = v11;
    sub_10022C350(&qword_100CA4D38, &unk_100A7E1D0);
    swift_allocObject();
    return sub_10024BD0C(v3, v6, v5, v4, sub_100266DE8, 0, sub_10009F81C, v12, sub_1000E87D0, v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100722904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10072299C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v309 = a1;
  v310 = a5;
  v308 = a3;
  v271 = a6;
  v8 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v8 - 8);
  v254 = v251 - v9;
  v252 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v252);
  sub_100003848();
  v281 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v269 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v268 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  v278 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  v266 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v275 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v263 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v261 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v273 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v258 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v272 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v255 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v251[0] = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v37 = v251 - v36;
  v38 = *(a4 - 8);
  __chkstk_darwin(v39);
  sub_100003848();
  v270 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v290 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v289 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v288 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v287 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v286 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v285 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v284 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v283 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v282 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v267 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v280 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v265 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v305 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v264 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v304 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v262 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v303 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v260 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v302 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v259 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v300 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v257 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v299 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v256 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v298 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v253 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v297 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v251[3] = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v296 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v251[2] = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v295 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v251[1] = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v294 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  v109 = v251 - v108;
  __chkstk_darwin(v110);
  v112 = v251 - v111;
  v301 = type metadata accessor for Optional();
  v274 = *(v301 - 8);
  __chkstk_darwin(v301);
  sub_100003848();
  v279 = v113;
  sub_10000386C();
  __chkstk_darwin(v114);
  sub_100003878();
  v293 = v115;
  sub_10000386C();
  __chkstk_darwin(v116);
  v118 = v251 - v117;
  __chkstk_darwin(v119);
  v292 = v251 - v120;
  v121 = a2;
  sub_100566A40(a2, v328);
  v306 = v118;
  v307 = v109;
  v291 = v112;
  if (v329)
  {
    v122 = 1;
  }

  else
  {
    v123 = v328[3];
    v124 = v328[2];
    v125 = v38;
    v126 = v328[1];
    v277 = v121;
    v127 = v328[0];
    sub_1001B3B30(v309 + OBJC_IVAR____TtCV7Weather14DefaultContent8_Storage_airQuality, v37);
    v128 = v123;
    v109 = v307;
    v308(v37, v127, v126, v124, v128);
    sub_1001B4354(v37);
    v129 = v310;
    sub_1000833D8(v109, a4, v310);
    v130 = *(v125 + 8);
    v130(v109, a4);
    v131 = sub_100005480();
    v132 = v129;
    v118 = v306;
    sub_1000833D8(v131, v133, v132);
    v134 = sub_100005480();
    (v130)(v134);
    v38 = v125;
    v121 = v277;
    (*(v125 + 32))(v118, v109, a4);
    v122 = 0;
  }

  sub_10001B350(v118, v122, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v135, v136);
  v276 = *(v274 + 8);
  v277 = v274 + 8;
  v276(v118, v301);
  v137 = OBJC_IVAR____TtCV7Weather14DefaultContent8_Storage_map;
  v138 = v309;
  swift_beginAccess();
  v139 = v138 + v137;
  v140 = v254;
  sub_10026E174(v139, v254);
  if (sub_100024D10(v140, 1, v252) == 1)
  {
    sub_10026E1E4(v140);
LABEL_8:
    v142 = 1;
    v143 = v306;
    goto LABEL_10;
  }

  v141 = v251[0];
  sub_10026E24C(v140, v251[0]);
  sub_100566A5C(v121, v330);
  if (v330[32])
  {
    sub_1001B4354(v141);
    goto LABEL_8;
  }

  v144 = sub_100028198();
  v145(v144);
  sub_1001B4354(v141);
  v146 = v310;
  sub_1000833D8(v109, a4, v310);
  v147 = *(v38 + 8);
  v147(v307, a4);
  v148 = sub_100005480();
  sub_1000833D8(v148, v149, v146);
  v150 = sub_100005480();
  (v147)(v150);
  v143 = v306;
  (*(v38 + 32))(v306, v307, a4);
  v142 = 0;
LABEL_10:
  sub_10001B350(v143, v142, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v151, v152);
  v276(v143, v301);
  sub_10001420C();
  v154 = v255;
  sub_1001B3B30(v153 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v255);
  sub_100566A78(v121, v331);
  if (v332)
  {
    goto LABEL_28;
  }

  v308(v154, v331[0], v331[1], v331[2], v331[3]);
  sub_1001B4354(v154);
  v155 = sub_100005480();
  sub_1000833D8(v155, v156, v310);
  v157 = *(v38 + 8);
  v158 = sub_100005480();
  v157(v158);
  sub_10001420C();
  sub_1001B3B30(v159 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v272);
  sub_100566A94(v121, v333);
  if (v334)
  {
    goto LABEL_28;
  }

  v160 = v272;
  v308(v272, v333[0], v333[1], v333[2], v333[3]);
  sub_1001B4354(v160);
  v161 = sub_100005480();
  sub_1000833D8(v161, v162, v310);
  v163 = sub_100005480();
  v157(v163);
  sub_10001420C();
  v165 = v258;
  sub_1001B3B30(v164 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v258);
  sub_100566AB0(v121, v335);
  if (v335[32])
  {
    goto LABEL_31;
  }

  v166 = sub_10001926C();
  v167(v166);
  sub_1001B4354(v165);
  v168 = sub_100005480();
  sub_1000833D8(v168, v169, v310);
  v170 = sub_100005480();
  v157(v170);
  sub_10001420C();
  sub_1001B3B30(v171 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v273);
  sub_100566ACC(v121, v336);
  if (v337)
  {
    goto LABEL_28;
  }

  v172 = v273;
  v308(v273, v336[0], v336[1], v336[2], v336[3]);
  sub_1001B4354(v172);
  v173 = sub_100005480();
  sub_1000833D8(v173, v174, v310);
  v175 = sub_100005480();
  v157(v175);
  sub_10001420C();
  v177 = v261;
  sub_1001B3B30(v176 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v261);
  sub_100566AE8(v121, v338);
  if (v338[32])
  {
    goto LABEL_31;
  }

  v178 = sub_10001926C();
  v179(v178);
  sub_1001B4354(v177);
  v180 = sub_100005480();
  sub_1000833D8(v180, v181, v310);
  v182 = sub_100005480();
  v157(v182);
  sub_10001420C();
  v184 = v263;
  sub_1001B3B30(v183 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v263);
  sub_100566B04(v121, v339);
  if (v339[32])
  {
    goto LABEL_28;
  }

  v185 = sub_100028198();
  v186(v185);
  sub_1001B4354(v184);
  sub_100007FFC();
  sub_1000833D8(v187, v188, v189);
  v190 = sub_100005474();
  v157(v190);
  sub_10001420C();
  sub_1001B3B30(v191 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v275);
  sub_100566B20(v121, v340);
  if (v340[32])
  {
    goto LABEL_28;
  }

  v192 = v275;
  v193 = sub_100028198();
  v194(v193);
  sub_1001B4354(v192);
  sub_100007FFC();
  sub_1000833D8(v195, v196, v197);
  v198 = sub_100005474();
  v157(v198);
  sub_10001420C();
  v200 = v266;
  sub_1001B3B30(v199 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v266);
  sub_100566B3C(v121, v341);
  if (v341[32])
  {
LABEL_31:
    sub_100013470();
    goto LABEL_32;
  }

  v201 = sub_10001926C();
  v202(v201);
  sub_1001B4354(v200);
  v203 = sub_100005480();
  sub_1000833D8(v203, v204, v310);
  v205 = sub_100005480();
  v157(v205);
  sub_10001420C();
  sub_1001B3B30(v206 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v278);
  sub_100566B58(v121, v342);
  if ((v343 & 1) == 0)
  {
    v207 = v278;
    v308(v278, v342[0], v342[1], v342[2], v342[3]);
    sub_1001B4354(v207);
    v208 = sub_100005480();
    sub_1000833D8(v208, v209, v310);
    v210 = sub_100005480();
    v157(v210);
    sub_10001420C();
    v212 = v268;
    sub_1001B3B30(v211 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v268);
    sub_100566B74(v121, &v344);
    if ((v345 & 1) == 0)
    {
      v213 = sub_10001926C();
      v214(v213);
      sub_1001B4354(v212);
      v215 = sub_100005480();
      sub_1000833D8(v215, v216, v310);
      v217 = sub_100005480();
      v157(v217);
      sub_10001420C();
      v219 = v269;
      sub_1001B3B30(v218 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v269);
      sub_100566B90(v121, &v346);
      if ((v347 & 1) == 0)
      {
        v220 = sub_100028198();
        v221(v220);
        sub_1001B4354(v219);
        sub_100007FFC();
        sub_1000833D8(v222, v223, v224);
        v225 = sub_100005474();
        v157(v225);
        sub_10001420C();
        sub_1001B3B30(v226 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v281);
        sub_100566BAC(v121, v348);
        if ((v349 & 1) == 0)
        {
          v227 = v267;
          v228 = v281;
          v308(v281, v348[0], v348[1], v348[2], v348[3]);
          sub_1001B4354(v228);
          v229 = v310;
          sub_1000833D8(v227, a4, v310);
          (v157)(v227, a4);
          v230 = *(v274 + 16);
          v231 = v306;
          v232 = v301;
          v230(v306, v292, v301);
          v327[0] = v231;
          v233 = v279;
          v230(v279, v293, v232);
          v327[1] = v233;
          v234 = *(v38 + 16);
          v235 = v291;
          v234(v291, v294, a4);
          v327[2] = v235;
          v236 = v307;
          v234(v307, v295, a4);
          v327[3] = v236;
          v237 = v282;
          v234(v282, v296, a4);
          v327[4] = v237;
          v238 = v283;
          v234(v283, v297, a4);
          v327[5] = v238;
          v239 = v284;
          v234(v284, v298, a4);
          v327[6] = v239;
          v240 = v285;
          v234(v285, v299, a4);
          v327[7] = v240;
          v241 = v286;
          v234(v286, v300, a4);
          v327[8] = v241;
          v242 = v287;
          v234(v287, v302, a4);
          v327[9] = v242;
          v243 = v288;
          v234(v288, v303, a4);
          v327[10] = v243;
          v244 = v289;
          v234(v289, v304, a4);
          v327[11] = v244;
          v245 = v290;
          v234(v290, v305, a4);
          v327[12] = v245;
          v246 = v270;
          v234(v270, v280, a4);
          v327[13] = v246;
          v247 = v246;
          v326[0] = v232;
          v326[1] = v232;
          v326[2] = a4;
          v326[3] = a4;
          v326[4] = a4;
          v326[5] = a4;
          v326[6] = a4;
          v326[7] = a4;
          v326[8] = a4;
          v326[9] = a4;
          v326[10] = a4;
          v326[11] = a4;
          v326[12] = a4;
          v326[13] = a4;
          v311 = v229;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v232, &v311);
          v313 = WitnessTable;
          v314 = v229;
          v315 = v229;
          v316 = v229;
          v317 = v229;
          v318 = v229;
          v319 = v229;
          v320 = v229;
          v321 = v229;
          v322 = v229;
          v323 = v229;
          v324 = v229;
          v325 = v229;
          sub_10012E24C(v327, 14, v326);
          v248 = sub_100005474();
          v157(v248);
          (v157)(v305, a4);
          (v157)(v304, a4);
          (v157)(v303, a4);
          (v157)(v302, a4);
          (v157)(v300, a4);
          (v157)(v299, a4);
          (v157)(v298, a4);
          (v157)(v297, a4);
          (v157)(v296, a4);
          (v157)(v295, a4);
          (v157)(v294, a4);
          v249 = v276;
          v276(v293, v232);
          v249(v292, v232);
          (v157)(v247, a4);
          (v157)(v290, a4);
          (v157)(v289, a4);
          (v157)(v288, a4);
          (v157)(v287, a4);
          (v157)(v286, a4);
          (v157)(v285, a4);
          (v157)(v284, a4);
          (v157)(v283, a4);
          (v157)(v282, a4);
          (v157)(v307, a4);
          (v157)(v291, a4);
          v249(v279, v232);
          return (v249)(v306, v232);
        }
      }
    }

    goto LABEL_31;
  }

LABEL_28:
  sub_10001E640();
LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100724004(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return sub_100724014(a1, v2);
}

uint64_t sub_100724014(uint64_t a1, int a2)
{
  v429 = a2;
  v3 = sub_10022C350(&qword_100CA65C0, &unk_100A313E0);
  __chkstk_darwin(v3 - 8);
  v399 = &v359 - v4;
  v5 = sub_10022C350(&qword_100CA65D0, &unk_100A313F0);
  __chkstk_darwin(v5 - 8);
  v398 = &v359 - v6;
  v7 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  __chkstk_darwin(v7 - 8);
  v397 = &v359 - v8;
  v427 = type metadata accessor for LocationPreviewModalViewState(0);
  __chkstk_darwin(v427);
  *&v448 = &v359 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v415 = &v359 - v11;
  v426 = type metadata accessor for LocationPreviewViewState(0);
  __chkstk_darwin(v426);
  *&v446 = &v359 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v417 = &v359 - v14;
  v449 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v449);
  v370 = &v359 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v382 = &v359 - v17;
  __chkstk_darwin(v18);
  *&v445 = &v359 - v19;
  v447 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v447);
  v396 = &v359 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v425 = &v359 - v22;
  __chkstk_darwin(v23);
  *&v444 = &v359 - v24;
  v452 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v452);
  v395 = &v359 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v424 = &v359 - v27;
  __chkstk_darwin(v28);
  v443 = &v359 - v29;
  v453 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v453);
  v394 = &v359 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v423 = &v359 - v32;
  __chkstk_darwin(v33);
  v442 = &v359 - v34;
  v455 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v455);
  v393 = &v359 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v422 = &v359 - v37;
  __chkstk_darwin(v38);
  v441 = &v359 - v39;
  v451 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v451);
  v392 = &v359 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v421 = &v359 - v42;
  __chkstk_darwin(v43);
  v440 = &v359 - v44;
  v450 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v450);
  v391 = &v359 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v420 = &v359 - v47;
  __chkstk_darwin(v48);
  v439 = &v359 - v49;
  v50 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v50 - 8);
  v366 = &v359 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v365 = &v359 - v53;
  __chkstk_darwin(v54);
  v377 = &v359 - v55;
  __chkstk_darwin(v56);
  v376 = &v359 - v57;
  __chkstk_darwin(v58);
  v405 = &v359 - v59;
  __chkstk_darwin(v60);
  v404 = &v359 - v61;
  v62 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v62 - 8);
  *(&v369 + 1) = &v359 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v390 = &v359 - v65;
  __chkstk_darwin(v66);
  v381 = &v359 - v67;
  __chkstk_darwin(v68);
  v419 = &v359 - v69;
  __chkstk_darwin(v70);
  v409 = &v359 - v71;
  __chkstk_darwin(v72);
  v438 = &v359 - v73;
  v74 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v74 - 8);
  *&v369 = &v359 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v76);
  v389 = &v359 - v77;
  __chkstk_darwin(v78);
  v380 = &v359 - v79;
  __chkstk_darwin(v80);
  v418 = &v359 - v81;
  __chkstk_darwin(v82);
  v408 = &v359 - v83;
  __chkstk_darwin(v84);
  v437 = &v359 - v85;
  v86 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v86 - 8);
  v368 = &v359 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v388 = &v359 - v89;
  __chkstk_darwin(v90);
  v379 = &v359 - v91;
  __chkstk_darwin(v92);
  v416 = &v359 - v93;
  __chkstk_darwin(v94);
  v407 = &v359 - v95;
  __chkstk_darwin(v96);
  v436 = &v359 - v97;
  v98 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v98 - 8);
  v367 = &v359 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v100);
  v386 = &v359 - v101;
  __chkstk_darwin(v102);
  v378 = &v359 - v103;
  __chkstk_darwin(v104);
  v413 = &v359 - v105;
  __chkstk_darwin(v106);
  v406 = &v359 - v107;
  __chkstk_darwin(v108);
  v435 = &v359 - v109;
  v110 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v110 - 8);
  v364 = &v359 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v112);
  v385 = &v359 - v113;
  __chkstk_darwin(v114);
  v375 = &v359 - v115;
  __chkstk_darwin(v116);
  v412 = &v359 - v117;
  __chkstk_darwin(v118);
  v403 = &v359 - v119;
  __chkstk_darwin(v120);
  v433 = &v359 - v121;
  v122 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v122 - 8);
  v363 = &v359 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v124);
  v384 = &v359 - v125;
  __chkstk_darwin(v126);
  v374 = &v359 - v127;
  __chkstk_darwin(v128);
  v411 = &v359 - v129;
  __chkstk_darwin(v130);
  v402 = &v359 - v131;
  __chkstk_darwin(v132);
  v432 = &v359 - v133;
  v134 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v134 - 8);
  v362 = &v359 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v136);
  v383 = &v359 - v137;
  __chkstk_darwin(v138);
  v373 = &v359 - v139;
  __chkstk_darwin(v140);
  v410 = &v359 - v141;
  __chkstk_darwin(v142);
  v401 = &v359 - v143;
  __chkstk_darwin(v144);
  v431 = &v359 - v145;
  v428 = type metadata accessor for SunriseSunsetDetailViewState(0);
  __chkstk_darwin(v428);
  v360 = &v359 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v147);
  v371 = &v359 - v148;
  __chkstk_darwin(v149);
  v151 = &v359 - v150;
  v152 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v152);
  v361 = &v359 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v154);
  v387 = &v359 - v155;
  __chkstk_darwin(v156);
  v158 = &v359 - v157;
  __chkstk_darwin(v159);
  v372 = &v359 - v160;
  __chkstk_darwin(v161);
  v414 = &v359 - v162;
  __chkstk_darwin(v163);
  v165 = &v359 - v164;
  __chkstk_darwin(v166);
  v430 = &v359 - v167;
  __chkstk_darwin(v168);
  v400 = &v359 - v169;
  __chkstk_darwin(v170);
  v434 = &v359 - v171;
  __chkstk_darwin(v172);
  v174 = &v359 - v173;
  v175 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  __chkstk_darwin(v175);
  v177 = &v359 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v178);
  v180 = &v359 - v179;
  v181 = a1;
  v454 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  sub_1000BCA80(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v174, type metadata accessor for ModalViewState);
  v182 = v152;
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1000D39A4(v174, v180, type metadata accessor for ModalViewState.LocationDetailModal);
    sub_1000D39A4(v180, v177, type metadata accessor for ModalViewState.LocationDetailModal);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1000D39A4(v177, v151, type metadata accessor for SunriseSunsetDetailViewState);
      sub_10001B350(v431, 1, 1, v450);
      sub_10001B350(v432, 1, 1, v451);
      sub_10001B350(v433, 1, 1, v455);
      sub_10001B350(v435, 1, 1, v453);
      sub_10001B350(v436, 1, 1, v452);
      v183 = v447;
      sub_10001B350(v437, 1, 1, v447);
      v184 = v449;
      sub_10001B350(v438, 1, 1, v449);
      v185 = type metadata accessor for Location();
      v186 = v404;
      (*(*(v185 - 8) + 16))(v404, v151, v185);
      v187 = v428;
      v188 = &v151[*(v428 + 20)];
      v189 = v188[32];
      v190 = *(v188 + 1);
      v448 = *v188;
      v446 = v190;
      sub_1000E00F0(v151, type metadata accessor for SunriseSunsetDetailViewState);
      v191 = v186 + *(v187 + 20);
      v192 = v446;
      *v191 = v448;
      *(v191 + 16) = v192;
      *(v191 + 32) = v189;
      *(v186 + *(v187 + 24)) = v429;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v186, 0, 1, v182);
      v193 = v181;
      v194 = v400;
      sub_1000BCA80(v181 + v454, v400, type metadata accessor for ModalViewState);
      v195 = v186;
      v196 = v405;
      sub_1002AB08C(v195, v405, &qword_100CA65E8, &unk_100A31410);
      if (sub_100024D10(v196, 1, v182) == 1)
      {
        sub_1000180EC(v196, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000E00F0(v194, type metadata accessor for ModalViewState);
        sub_1000D39A4(v196, v194, type metadata accessor for ModalViewState);
      }

      v257 = v406;
      v258 = v402;
      v259 = v184;
      sub_1000D39A4(v194, v434, type metadata accessor for ModalViewState);
      v260 = *(v193 + 16);
      LODWORD(v448) = *(v193 + 24);
      v261 = v401;
      sub_1002AB08C(v431, v401, &qword_100CA6640, qword_100A32640);
      v262 = v450;
      v263 = sub_100024D10(v261, 1, v450);
      v264 = v455;
      v454 = v260;
      if (v263 == 1)
      {
        sub_1000BCA80(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v439, type metadata accessor for AppConfigurationState);
        v265 = sub_100024D10(v261, 1, v262);

        v266 = v453;
        v267 = v451;
        if (v265 != 1)
        {
          sub_1000180EC(v261, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000D39A4(v261, v439, type metadata accessor for AppConfigurationState);

        v266 = v453;
        v267 = v451;
      }

      sub_1002AB08C(v432, v258, &qword_100CA6638, &unk_100A31460);
      if (sub_100024D10(v258, 1, v267) == 1)
      {
        v268 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        sub_1000BCA80(v193 + v268, v440, type metadata accessor for EnvironmentState);
        v269 = sub_100024D10(v258, 1, v267);
        v270 = v409;
        v271 = v407;
        v272 = v259;
        if (v269 != 1)
        {
          sub_1000180EC(v258, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_1000D39A4(v258, v440, type metadata accessor for EnvironmentState);
        v270 = v409;
        v271 = v407;
        v272 = v259;
      }

      v273 = v403;
      sub_1002AB08C(v433, v403, &qword_100CA6630, &unk_100A32630);
      if (sub_100024D10(v273, 1, v264) == 1)
      {
        sub_1000BCA80(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v441, type metadata accessor for LocationsState);
        v274 = sub_100024D10(v273, 1, v264);
        v275 = v408;
        if (v274 != 1)
        {
          sub_1000180EC(v273, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_1000D39A4(v273, v441, type metadata accessor for LocationsState);
        v275 = v408;
      }

      sub_1002AB08C(v435, v257, &qword_100CA6628, &unk_100A31450);
      if (sub_100024D10(v257, 1, v266) == 1)
      {
        sub_1000BCA80(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v442, type metadata accessor for NotificationsState);
        v276 = sub_100024D10(v257, 1, v266);
        v277 = v445;
        if (v276 != 1)
        {
          sub_1000180EC(v257, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000D39A4(v257, v442, type metadata accessor for NotificationsState);
        v277 = v445;
      }

      sub_1002AB08C(v436, v271, &qword_100CA6620, &unk_100A32620);
      v278 = v452;
      if (sub_100024D10(v271, 1, v452) == 1)
      {
        sub_1000BCA80(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn, v443, type metadata accessor for NotificationsOptInState);
        if (sub_100024D10(v271, 1, v278) != 1)
        {
          sub_1000180EC(v271, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000D39A4(v271, v443, type metadata accessor for NotificationsOptInState);
      }

      sub_1002AB08C(v437, v275, &qword_100CA6618, &unk_100A31440);
      if (sub_100024D10(v275, 1, v183) == 1)
      {
        sub_1000BCA80(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v444, type metadata accessor for TimeState);
        if (sub_100024D10(v275, 1, v183) != 1)
        {
          sub_1000180EC(v275, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000D39A4(v275, v444, type metadata accessor for TimeState);
      }

      sub_1002AB08C(v438, v270, &qword_100CA6610, &unk_100A32610);
      if (sub_100024D10(v270, 1, v272) == 1)
      {
        sub_1000BCA80(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v277, type metadata accessor for ViewState);
        if (sub_100024D10(v270, 1, v272) != 1)
        {
          sub_1000180EC(v270, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000D39A4(v270, v277, type metadata accessor for ViewState);
      }

      v279 = v430;
      sub_1000D39A4(v434, v430, type metadata accessor for ModalViewState);
      v281 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v280 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v283 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v282 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v284 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v286 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v285 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v287 = *(v193 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v358) = v284;
      sub_10003E038(v454, v448, v439, v440, v441, v442, v443, v444, v445, v279, v281, v280, v283, v282, v358, v286, v285, v287, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375);
      v199 = v288;

      goto LABEL_118;
    }

    v197 = type metadata accessor for ModalViewState.LocationDetailModal;
    v198 = v177;
  }

  else
  {
    v197 = type metadata accessor for ModalViewState;
    v198 = v174;
  }

  sub_1000E00F0(v198, v197);
  v199 = v181;
  v200 = v454;
  sub_1000BCA80(v181 + v454, v165, type metadata accessor for ModalViewState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v202 = v455;
  v203 = v448;
  if (EnumCaseMultiPayload)
  {
    sub_1000E00F0(v165, type metadata accessor for ModalViewState);
  }

  else
  {
    v204 = v417;
    sub_1000D39A4(v165, v417, type metadata accessor for LocationPreviewViewState);
    v205 = v415;
    sub_1000BCA80(v204 + *(v426 + 20), v415, type metadata accessor for LocationPreviewModalViewState);
    v206 = v427;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v207 = v371;
      sub_1000D39A4(v205, v371, type metadata accessor for SunriseSunsetDetailViewState);
      sub_10001B350(v410, 1, 1, v450);
      sub_10001B350(v411, 1, 1, v451);
      sub_10001B350(v412, 1, 1, v202);
      sub_10001B350(v413, 1, 1, v453);
      sub_10001B350(v416, 1, 1, v452);
      sub_10001B350(v418, 1, 1, v447);
      sub_10001B350(v419, 1, 1, v449);
      v208 = type metadata accessor for PreviewLocation(0);
      v209 = v204;
      v210 = v397;
      sub_10001B350(v397, 1, 1, v208);
      v211 = v428;
      v212 = v207 + *(v428 + 20);
      v213 = *(v212 + 32);
      v214 = type metadata accessor for Location();
      v215 = *(*(v214 - 8) + 16);
      v216 = *(v212 + 16);
      v448 = *v212;
      v446 = v216;
      v217 = v398;
      v215(v398, v207, v214);
      v218 = v217 + *(v211 + 20);
      v219 = v446;
      *v218 = v448;
      *(v218 + 16) = v219;
      *(v218 + 32) = v213;
      *(v217 + *(v211 + 24)) = v429;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v217, 0, 1, v206);
      v220 = type metadata accessor for SelectedSearchResult(0);
      v221 = v399;
      sub_10001B350(v399, 1, 1, v220);
      v222 = v376;
      sub_10043DB64(v210, v217, v221, v376);
      sub_1000180EC(v221, &qword_100CA65C0, &unk_100A313E0);
      sub_1000180EC(v217, &qword_100CA65D0, &unk_100A313F0);
      sub_1000180EC(v210, &qword_100CA65C8, &unk_100A31670);
      sub_1000E00F0(v207, type metadata accessor for SunriseSunsetDetailViewState);
      sub_1000E00F0(v209, type metadata accessor for LocationPreviewViewState);
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v222, 0, 1, v182);
      v223 = v372;
      sub_1000BCA80(v199 + v454, v372, type metadata accessor for ModalViewState);
      v224 = v377;
      sub_1002AB08C(v222, v377, &qword_100CA65E8, &unk_100A31410);
      if (sub_100024D10(v224, 1, v182) == 1)
      {
        sub_1000180EC(v224, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000E00F0(v223, type metadata accessor for ModalViewState);
        sub_1000D39A4(v224, v223, type metadata accessor for ModalViewState);
      }

      v289 = v379;
      v290 = v378;
      v291 = v375;
      v292 = v373;
      sub_1000D39A4(v223, v414, type metadata accessor for ModalViewState);
      v293 = *(v199 + 16);
      LODWORD(v448) = *(v199 + 24);
      sub_1002AB08C(v410, v292, &qword_100CA6640, qword_100A32640);
      v294 = v450;
      v295 = sub_100024D10(v292, 1, v450);
      v296 = v455;
      if (v295 == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v420, type metadata accessor for AppConfigurationState);
        v297 = sub_100024D10(v292, 1, v294);

        v298 = v297 == 1;
        v299 = v380;
        v300 = v374;
        if (!v298)
        {
          sub_1000180EC(v292, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000D39A4(v292, v420, type metadata accessor for AppConfigurationState);

        v299 = v380;
        v300 = v374;
      }

      v454 = v293;
      sub_1002AB08C(v411, v300, &qword_100CA6638, &unk_100A31460);
      v301 = v451;
      if (sub_100024D10(v300, 1, v451) == 1)
      {
        v302 = v300;
        v303 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        sub_1000BCA80(v199 + v303, v421, type metadata accessor for EnvironmentState);
        v304 = sub_100024D10(v302, 1, v301);
        v305 = v382;
        v306 = v381;
        if (v304 != 1)
        {
          sub_1000180EC(v302, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_1000D39A4(v300, v421, type metadata accessor for EnvironmentState);
        v305 = v382;
        v306 = v381;
      }

      sub_1002AB08C(v412, v291, &qword_100CA6630, &unk_100A32630);
      if (sub_100024D10(v291, 1, v296) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v422, type metadata accessor for LocationsState);
        if (sub_100024D10(v291, 1, v296) != 1)
        {
          sub_1000180EC(v291, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_1000D39A4(v291, v422, type metadata accessor for LocationsState);
      }

      sub_1002AB08C(v413, v290, &qword_100CA6628, &unk_100A31450);
      if (sub_100024D10(v290, 1, v453) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v423, type metadata accessor for NotificationsState);
        if (sub_100024D10(v290, 1, v453) != 1)
        {
          sub_1000180EC(v290, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000D39A4(v290, v423, type metadata accessor for NotificationsState);
      }

      sub_1002AB08C(v416, v289, &qword_100CA6620, &unk_100A32620);
      v307 = v452;
      if (sub_100024D10(v289, 1, v452) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn, v424, type metadata accessor for NotificationsOptInState);
        if (sub_100024D10(v289, 1, v307) != 1)
        {
          sub_1000180EC(v289, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000D39A4(v289, v424, type metadata accessor for NotificationsOptInState);
      }

      sub_1002AB08C(v418, v299, &qword_100CA6618, &unk_100A31440);
      v308 = v447;
      if (sub_100024D10(v299, 1, v447) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v425, type metadata accessor for TimeState);
        if (sub_100024D10(v299, 1, v308) != 1)
        {
          sub_1000180EC(v299, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000D39A4(v299, v425, type metadata accessor for TimeState);
      }

      sub_1002AB08C(v419, v306, &qword_100CA6610, &unk_100A32610);
      v309 = v449;
      if (sub_100024D10(v306, 1, v449) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v305, type metadata accessor for ViewState);
        v310 = sub_100024D10(v306, 1, v309);
        v311 = v305;
        if (v310 != 1)
        {
          sub_1000180EC(v306, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000D39A4(v306, v305, type metadata accessor for ViewState);
        v311 = v305;
      }

      v312 = v430;
      sub_1000D39A4(v414, v430, type metadata accessor for ModalViewState);
      v314 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v313 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v316 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v315 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v317 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v318 = v199;
      v320 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v319 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v321 = *(v318 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v358) = v317;
      sub_10003E038(v454, v448, v420, v421, v422, v423, v424, v425, v311, v312, v314, v313, v316, v315, v358, v320, v319, v321, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375);
      goto LABEL_117;
    }

    sub_1000E00F0(v204, type metadata accessor for LocationPreviewViewState);
    sub_1000E00F0(v205, type metadata accessor for LocationPreviewModalViewState);
    v200 = v454;
  }

  sub_1000BCA80(v181 + v200, v158, type metadata accessor for ModalViewState);
  v225 = swift_getEnumCaseMultiPayload();
  v226 = v446;
  if (v225 != 4)
  {
    v230 = type metadata accessor for ModalViewState;
    v231 = v158;
    goto LABEL_17;
  }

  v227 = type metadata accessor for ModalViewState.MapViewModal(0);
  v228 = sub_100024D10(v158, 1, v227);
  v229 = v449;
  if (v228 != 1)
  {
    sub_1000D39A4(v158, v226, type metadata accessor for LocationPreviewViewState);
    sub_1000BCA80(v226 + *(v426 + 20), v203, type metadata accessor for LocationPreviewModalViewState);
    v236 = v427;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v237 = v360;
      sub_1000D39A4(v203, v360, type metadata accessor for SunriseSunsetDetailViewState);
      sub_10001B350(v383, 1, 1, v450);
      sub_10001B350(v384, 1, 1, v451);
      sub_10001B350(v385, 1, 1, v202);
      sub_10001B350(v386, 1, 1, v453);
      sub_10001B350(v388, 1, 1, v452);
      sub_10001B350(v389, 1, 1, v447);
      sub_10001B350(v390, 1, 1, v229);
      v238 = type metadata accessor for PreviewLocation(0);
      v239 = v397;
      sub_10001B350(v397, 1, 1, v238);
      v240 = v428;
      v241 = v236;
      v242 = v237 + *(v428 + 20);
      v243 = *(v242 + 32);
      v244 = type metadata accessor for Location();
      v245 = *(*(v244 - 8) + 16);
      v246 = *v242;
      v444 = *(v242 + 16);
      v445 = v246;
      *&v448 = v182;
      v247 = v226;
      v248 = v398;
      v245(v398, v237, v244);
      v249 = v248 + *(v240 + 20);
      v250 = v444;
      *v249 = v445;
      *(v249 + 16) = v250;
      *(v249 + 32) = v243;
      *(v248 + *(v240 + 24)) = v429;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v248, 0, 1, v241);
      v251 = type metadata accessor for SelectedSearchResult(0);
      v252 = v399;
      sub_10001B350(v399, 1, 1, v251);
      v253 = v365;
      sub_10043DB64(v239, v248, v252, v365);
      sub_1000180EC(v252, &qword_100CA65C0, &unk_100A313E0);
      sub_1000180EC(v248, &qword_100CA65D0, &unk_100A313F0);
      sub_1000180EC(v239, &qword_100CA65C8, &unk_100A31670);
      sub_1000E00F0(v237, type metadata accessor for SunriseSunsetDetailViewState);
      sub_1000E00F0(v247, type metadata accessor for LocationPreviewViewState);
      sub_10001B350(v253, 0, 1, v227);
      v254 = v448;
      swift_storeEnumTagMultiPayload();
      sub_10001B350(v253, 0, 1, v254);
      v255 = v361;
      sub_1000BCA80(v199 + v454, v361, type metadata accessor for ModalViewState);
      v256 = v366;
      sub_1002AB08C(v253, v366, &qword_100CA65E8, &unk_100A31410);
      if (sub_100024D10(v256, 1, v254) == 1)
      {
        sub_1000180EC(v256, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000E00F0(v255, type metadata accessor for ModalViewState);
        sub_1000D39A4(v256, v255, type metadata accessor for ModalViewState);
      }

      v323 = v368;
      v324 = v367;
      v325 = v364;
      v326 = v362;
      sub_1000D39A4(v255, v387, type metadata accessor for ModalViewState);
      v327 = *(v199 + 16);
      LODWORD(v448) = *(v199 + 24);
      sub_1002AB08C(v383, v326, &qword_100CA6640, qword_100A32640);
      v328 = v450;
      v329 = sub_100024D10(v326, 1, v450);
      v330 = v453;
      v331 = v455;
      if (v329 == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v391, type metadata accessor for AppConfigurationState);
        v332 = sub_100024D10(v326, 1, v328);

        v298 = v332 == 1;
        v333 = v369;
        v334 = v363;
        if (!v298)
        {
          sub_1000180EC(v326, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000D39A4(v326, v391, type metadata accessor for AppConfigurationState);

        v333 = v369;
        v334 = v363;
      }

      v454 = v327;
      sub_1002AB08C(v384, v334, &qword_100CA6638, &unk_100A31460);
      v335 = v451;
      if (sub_100024D10(v334, 1, v451) == 1)
      {
        v336 = v334;
        v337 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
        swift_beginAccess();
        sub_1000BCA80(v199 + v337, v392, type metadata accessor for EnvironmentState);
        v338 = sub_100024D10(v336, 1, v335);
        v339 = v370;
        v340 = *(&v369 + 1);
        if (v338 != 1)
        {
          sub_1000180EC(v336, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_1000D39A4(v334, v392, type metadata accessor for EnvironmentState);
        v339 = v370;
        v340 = *(&v369 + 1);
      }

      sub_1002AB08C(v385, v325, &qword_100CA6630, &unk_100A32630);
      if (sub_100024D10(v325, 1, v331) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v393, type metadata accessor for LocationsState);
        if (sub_100024D10(v325, 1, v331) != 1)
        {
          sub_1000180EC(v325, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_1000D39A4(v325, v393, type metadata accessor for LocationsState);
      }

      sub_1002AB08C(v386, v324, &qword_100CA6628, &unk_100A31450);
      if (sub_100024D10(v324, 1, v330) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications, v394, type metadata accessor for NotificationsState);
        if (sub_100024D10(v324, 1, v330) != 1)
        {
          sub_1000180EC(v324, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000D39A4(v324, v394, type metadata accessor for NotificationsState);
      }

      sub_1002AB08C(v388, v323, &qword_100CA6620, &unk_100A32620);
      v341 = v452;
      if (sub_100024D10(v323, 1, v452) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn, v395, type metadata accessor for NotificationsOptInState);
        if (sub_100024D10(v323, 1, v341) != 1)
        {
          sub_1000180EC(v323, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000D39A4(v323, v395, type metadata accessor for NotificationsOptInState);
      }

      sub_1002AB08C(v389, v333, &qword_100CA6618, &unk_100A31440);
      v342 = v447;
      if (sub_100024D10(v333, 1, v447) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v396, type metadata accessor for TimeState);
        v343 = sub_100024D10(v333, 1, v342);
        v344 = v449;
        if (v343 != 1)
        {
          sub_1000180EC(v333, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000D39A4(v333, v396, type metadata accessor for TimeState);
        v344 = v449;
      }

      sub_1002AB08C(v390, v340, &qword_100CA6610, &unk_100A32610);
      if (sub_100024D10(v340, 1, v344) == 1)
      {
        sub_1000BCA80(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v339, type metadata accessor for ViewState);
        v345 = v339;
        if (sub_100024D10(v340, 1, v344) != 1)
        {
          sub_1000180EC(v340, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000D39A4(v340, v339, type metadata accessor for ViewState);
        v345 = v339;
      }

      v346 = v430;
      sub_1000D39A4(v387, v430, type metadata accessor for ModalViewState);
      v348 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v347 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v350 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v349 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v351 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v352 = v199;
      v354 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v353 = *(v199 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v355 = *(v352 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      swift_allocObject();
      LOBYTE(v358) = v351;
      sub_10003E038(v454, v448, v391, v392, v393, v394, v395, v396, v345, v346, v348, v347, v350, v349, v358, v354, v353, v355, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375);
LABEL_117:
      v356 = v322;

      v199 = v356;
LABEL_118:

      return v199;
    }

    sub_1000E00F0(v226, type metadata accessor for LocationPreviewViewState);
    v230 = type metadata accessor for LocationPreviewModalViewState;
    v231 = v203;
LABEL_17:
    sub_1000E00F0(v231, v230);
    goto LABEL_18;
  }

  sub_1000180EC(v158, &qword_100CA65E0, &unk_100A31400);
LABEL_18:
  if (qword_100CA2700 != -1)
  {
    swift_once();
  }

  v232 = type metadata accessor for Logger();
  sub_10000703C(v232, qword_100D90B68);
  v233 = Logger.logObject.getter();
  v234 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v233, v234))
  {
    v235 = swift_slowAlloc();
    *v235 = 0;
    _os_log_impl(&_mh_execute_header, v233, v234, "Update data state when there is no modal presented", v235, 2u);
  }

  return v199;
}

unint64_t sub_1007274D0(uint64_t a1)
{
  v3 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004C02C8(a1, v5);
  v6 = sub_10054B774(v5);
  v7 = type metadata accessor for NotificationsOptInInput(0);
  v8 = *(a1 + v7[7]);
  v9 = *(a1 + v7[10]);
  v10 = *(a1 + v7[11]);
  v11 = *(a1 + v7[6]);
  v12 = sub_100727628(v6, v11, v8 == 1, v9, v10, *(a1 + v7[12]), *(a1 + v7[9]));
  v13 = *(v1 + 16);
  v14 = sub_100141E8C(v10, 0, 0, v11, v8, *(a1 + v7[8]));
  v15 = *(a1 + v7[5]);
  if (v12 != 3)
  {
    *(v1 + 16) = v12;
  }

  v16 = v15 == 0;
  v17 = 0x1000000000000;
  if (v16)
  {
    v17 = 0;
  }

  v18 = v17 | ((v14 & 0xFFFFFF) << 24);
  v19 = 0x10000;
  if (!v9)
  {
    v19 = 0;
  }

  return (v18 | v19) & 0xFFFFFFFFFFFFFF00 | (v13 << 8) | v12;
}

uint64_t sub_100727628(char a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7)
{
  if (a7)
  {
    return 2;
  }

  if (a1 == 2 || (a1 & 1) != 0)
  {
    return sub_100727684(a2, a3 & 1, a4 & 1, a5 & 1, a6 & 1);
  }

  if (a4)
  {
    v8 = 3;
  }

  else
  {
    v8 = 5;
  }

  if ((a6 & 1) == 0)
  {
    v8 = 1;
  }

  if (a3)
  {
    return 3;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100727684(char a1, char a2, char a3, char a4, char a5)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        return 0;
      }

      if (LocationAuthorizationState.rawValue.getter(a1) == 0xD000000000000013 && 0x8000000100ABA3F0 == v11)
      {

        if ((a4 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) != 0 && (a4 & 1) == 0)
        {
          return 0;
        }
      }

      if (LocationAuthorizationState.rawValue.getter(a1) == 0xD000000000000010 && 0x8000000100ABA410 == v15)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17 & 1) == 0 && (a4 & 1) != 0 && (a3)
        {
          return 3;
        }
      }

      if (LocationAuthorizationState.rawValue.getter(a1) == 0x6465696E6564 && v18 == 0xE600000000000000)
      {

        return 4;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        return 4;
      }

      if (LocationAuthorizationState.rawValue.getter(a1) == 0xD000000000000013 && 0x8000000100ABA3F0 == v21)
      {

        v24 = a2;
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v24 = a2;
        if ((v23 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (a4)
      {
        return 4;
      }

LABEL_36:
      if (a3)
      {
        v25 = 3;
      }

      else
      {
        v25 = 5;
      }

      if ((a5 & 1) == 0)
      {
        v25 = 1;
      }

      if (v24)
      {
        return 3;
      }

      else
      {
        return v25;
      }

    default:

      return 0;
  }
}

uint64_t sub_100727954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  type metadata accessor for AirQualityScale();
  sub_1000037C4();
  v47 = v5;
  v48 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for AirQualityScaleCategory();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v46 = type metadata accessor for ProviderDataOrigination();
  sub_1000037C4();
  v44 = v16;
  __chkstk_darwin(v17);
  v45 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  v22 = sub_10022C350(&qword_100CB1288, &unk_100A5D770);
  __chkstk_darwin(v22 - 8);
  v24 = &v44 - v23;
  v25 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  __chkstk_darwin(v25 - 8);
  v27 = &v44 - v26;
  v28 = type metadata accessor for AirQuality();
  sub_1000037C4();
  v49 = v29;
  __chkstk_darwin(v30);
  sub_1000037D8();
  v33 = v32 - v31;
  v50 = a1;
  sub_100727E74(a1, v24);
  v34 = type metadata accessor for WeatherDataModel();
  if (sub_100024D10(v24, 1, v34) == 1)
  {
    sub_10003FDF4(v24, &qword_100CB1288, &unk_100A5D770);
    sub_10001B350(v27, 1, 1, v28);
LABEL_4:
    sub_10003FDF4(v50, &qword_100CB1288, &unk_100A5D770);
    sub_10003FDF4(v27, &qword_100CC62B8, &qword_100A61CA0);
    v35 = 1;
    v36 = v51;
LABEL_10:
    v43 = type metadata accessor for AQIData();
    return sub_10001B350(v36, v35, 1, v43);
  }

  WeatherDataModel.airQuality.getter();
  (*(*(v34 - 8) + 8))(v24, v34);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    goto LABEL_4;
  }

  (*(v49 + 32))(v33, v27, v28);
  sub_100727EE4(v21);
  result = AirQuality.index.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  AirQuality.currentScaleCategory.getter();
  v38 = AirQualityScaleCategory.number.getter();
  result = (*(v11 + 8))(v15, v9);
  if (v38 < 0xFFFFFFFF80000000)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v38 <= 0x7FFFFFFF)
  {
    AirQuality.scale.getter();
    AirQualityScale.displayName.getter();
    (*(v47 + 8))(v8, v48);
    v39 = v44;
    v40 = *(v44 + 16);
    v41 = v21;
    v48 = v21;
    v42 = v46;
    v40(v45, v41, v46);
    v36 = v51;
    AQIData.init(index:category:scale:providerDataOrigination:)();
    sub_10003FDF4(v50, &qword_100CB1288, &unk_100A5D770);
    (*(v39 + 8))(v48, v42);
    (*(v49 + 8))(v33, v28);
    v35 = 0;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100727E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB1288, &unk_100A5D770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100727EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AirQualitySourceKind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AirQualitySource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AirQuality.source.getter();
  AirQualitySource.kind.getter();
  (*(v7 + 8))(v9, v6);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == enum case for AirQualitySourceKind.modeled(_:))
  {
    v11 = &enum case for ProviderDataOrigination.modeled(_:);
LABEL_5:
    v13 = *v11;
    v14 = type metadata accessor for ProviderDataOrigination();
    return (*(*(v14 - 8) + 104))(a1, v13, v14);
  }

  v12 = v10;
  if (v10 == enum case for AirQualitySourceKind.station(_:))
  {
    v11 = &enum case for ProviderDataOrigination.station(_:);
    goto LABEL_5;
  }

  v16 = enum case for AirQualitySourceKind.unknown(_:);
  v17 = enum case for ProviderDataOrigination.unknown(_:);
  v18 = type metadata accessor for ProviderDataOrigination();
  result = (*(*(v18 - 8) + 104))(a1, v17, v18);
  if (v12 != v16)
  {
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_100728154(uint64_t a1, uint64_t a2)
{
  v928 = a2;
  v933 = a1;
  v881 = type metadata accessor for Locale();
  v879 = *(v881 - 8);
  __chkstk_darwin(v881);
  sub_1000038E4();
  sub_100003990(v2);
  v3 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v5);
  sub_10000E70C();
  v7 = sub_100003918(v6);
  v8 = type metadata accessor for PreviewLocation(v7);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000038E4();
  v11 = sub_100003918(v10);
  active = type metadata accessor for LocationViewerActiveLocationState(v11);
  v13 = sub_100003810(active);
  __chkstk_darwin(v13);
  sub_1000038E4();
  sub_100003918(v14);
  v15 = type metadata accessor for SavedLocation();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000038E4();
  v921 = v17;
  v936 = type metadata accessor for TimeState(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_10000E70C();
  v25 = sub_100003918(v24);
  v932 = type metadata accessor for NotificationsOptInState(v25);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_10000E70C();
  v33 = sub_100003918(v32);
  v930 = type metadata accessor for NotificationsState(v33);
  sub_1000037E8();
  __chkstk_darwin(v34);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_10000E70C();
  v41 = sub_100003918(v40);
  v929 = type metadata accessor for LocationsState(v41);
  sub_1000037E8();
  __chkstk_darwin(v42);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_10000E70C();
  v49 = sub_100003918(v48);
  v935 = type metadata accessor for EnvironmentState(v49);
  sub_1000037E8();
  __chkstk_darwin(v50);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_10000E70C();
  v58 = sub_100003918(v57);
  v934 = type metadata accessor for AppConfigurationState(v58);
  sub_1000037E8();
  __chkstk_darwin(v59);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_10000E70C();
  sub_100003990(v65);
  v66 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v67 = sub_100003810(v66);
  __chkstk_darwin(v67);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_10000E70C();
  sub_100003990(v79);
  v80 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v81 = sub_100003810(v80);
  __chkstk_darwin(v81);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  v920 = v89;
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_10000E70C();
  sub_100003990(v94);
  v95 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v96 = sub_100003810(v95);
  __chkstk_darwin(v96);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_10000E70C();
  sub_100003990(v108);
  v109 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v110 = sub_100003810(v109);
  __chkstk_darwin(v110);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_10000E70C();
  sub_100003990(v122);
  v123 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v124 = sub_100003810(v123);
  __chkstk_darwin(v124);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_10000E70C();
  sub_100003990(v136);
  v137 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v138 = sub_100003810(v137);
  __chkstk_darwin(v138);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_10000E70C();
  sub_100003990(v150);
  v151 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v152 = sub_100003810(v151);
  __chkstk_darwin(v152);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_10000E70C();
  sub_100003990(v164);
  v165 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v166 = sub_100003810(v165);
  __chkstk_darwin(v166);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_10000E70C();
  v179 = sub_100003918(v178);
  v924 = type metadata accessor for WeatherMapPresentationState(v179);
  sub_1000037E8();
  __chkstk_darwin(v180);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_10000E70C();
  v185 = sub_100003918(v184);
  v927 = type metadata accessor for DisplayMetrics(v185);
  sub_1000037E8();
  __chkstk_darwin(v186);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_10000E70C();
  v191 = sub_100003918(v190);
  v922 = type metadata accessor for ViewState.SecondaryViewState(v191);
  sub_1000037E8();
  __chkstk_darwin(v192);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_10000E70C();
  sub_100003990(v196);
  v197 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v198 = sub_100003810(v197);
  __chkstk_darwin(v198);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v199);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_10000E70C();
  sub_100003990(v206);
  v207 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v208 = sub_100003810(v207);
  __chkstk_darwin(v208);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v209);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_10000E70C();
  sub_100003990(v216);
  v217 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v218 = sub_100003810(v217);
  __chkstk_darwin(v218);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v222);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v223);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v228);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v229);
  sub_10000E70C();
  sub_100003990(v230);
  v231 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v232 = sub_100003810(v231);
  __chkstk_darwin(v232);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v233);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v234);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v235);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v236);
  v238 = &v802 - v237;
  __chkstk_darwin(v239);
  __chkstk_darwin(v240);
  v242 = (&v802 - v241);
  __chkstk_darwin(v243);
  v245 = &v802 - v244;
  v937 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v246);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v249);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v250);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_100003878();
  v923 = v252;
  __chkstk_darwin(v253);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v254);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v255);
  v257 = &v802 - v256;
  __chkstk_darwin(v258);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v259);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v260);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v261);
  v263 = (&v802 - v262);
  type metadata accessor for ActivityAction(0);
  sub_1000037E8();
  __chkstk_darwin(v264);
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v265);
  v267 = &v802 - ((v266 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v268);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v269);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  v273 = &v802 - v272;
  __chkstk_darwin(v274);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v275);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v276);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v277);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v278);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v279);
  sub_100003878();
  v926 = v280;
  __chkstk_darwin(v281);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v282);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v283);
  v931 = &v802 - v284;
  v925 = v285;
  swift_storeEnumTagMultiPayload();
  sub_1007345F8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000109B0();
      sub_1000E0148(v931, v409);
      sub_100073090();
      v410 = sub_100003BCC(v877);
      sub_10001B350(v410, v411, v412, v934);
      v413 = sub_100003BCC(&v879);
      sub_10001B350(v413, v414, v415, v935);
      v416 = sub_100003BCC(&v883);
      sub_10001B350(v416, v417, v418, v929);
      v419 = sub_100003BCC(&v887);
      sub_10001B350(v419, v420, v421, v930);
      v422 = sub_100003BCC(&v891);
      v423 = v932;
      sub_10001B350(v422, v424, v425, v932);
      v426 = sub_100003BCC(&v895);
      sub_10001B350(v426, v427, v428, v936);
      v429 = sub_100003BCC(&v900);
      sub_10001B350(v429, v430, v431, v937);
      v432 = type metadata accessor for LocationPreviewViewState(0);
      type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      v433 = *(v432 + 24);
      type metadata accessor for SelectedSearchResult(0);
      swift_storeEnumTagMultiPayload();
      sub_100073090();
      v434 = v925;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v435, v436, v437, v434);
      sub_10002CA34();
      v438 = v933;
      sub_1007345F8();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v433);
      if (v319)
      {
        sub_1000180EC(v433, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000109B0();
        sub_1000E0148(v273, v606);
        sub_10001F650();
        sub_100073090();
      }

      v607 = v837;
      v608 = v831;
      sub_10001F650();
      sub_100073090();
      v609 = *(v438 + 16);
      LODWORD(v931) = *(v438 + 24);
      v610 = v829;
      sub_100051BBC();
      v611 = sub_100007FC4();
      v612 = v934;
      sub_1000038B4(v611, v613, v934);
      if (v319)
      {
        sub_10000CE4C();
        sub_1007345F8();
        sub_100086880(v610);

        v614 = v610;
        v623 = v834;
        if (v612 != 1)
        {
          sub_1000180EC(v614, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100024A14();
        sub_100073090();

        v623 = v834;
      }

      sub_1000AF628();
      sub_100003A40(v608);
      if (v319)
      {
        swift_beginAccess();
        sub_100019E08();
        sub_1007345F8();
        sub_100003A40(v608);
        v629 = v849;
        v630 = v843;
        if (!v319)
        {
          sub_1000180EC(v608, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10003C79C();
        sub_100073090();
        v629 = v849;
        v630 = v843;
      }

      sub_100051BBC();
      sub_100003BDC(v623);
      if (v319)
      {
        sub_100017CF4();
        sub_1007345F8();
        sub_100003BDC(v623);
        v664 = v841;
        if (!v319)
        {
          sub_1000180EC(v623, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100069924();
        sub_100073090();
        v664 = v841;
      }

      sub_100030224(&v887);
      sub_100051BBC();
      sub_10000E7EC(v607);
      if (v319)
      {
        sub_100013B7C();
        sub_1007345F8();
        sub_10000E7EC(v607);
        if (!v319)
        {
          sub_1000180EC(v607, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10004E9EC();
        sub_100073090();
      }

      v935 = v609;
      sub_100051BBC();
      v672 = sub_1000162B0();
      sub_1000038B4(v672, v673, v423);
      if (v319)
      {
        sub_100016E2C();
        sub_1007345F8();
        v674 = sub_1000162B0();
        sub_1000038B4(v674, v675, v423);
        if (!v319)
        {
          sub_1000180EC(v664, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100049B7C();
        sub_100073090();
      }

      sub_1000436AC(&v895);
      sub_100051BBC();
      sub_10000E7EC(v630);
      if (v319)
      {
        sub_100074EE4();
        sub_1007345F8();
        sub_10000E7EC(v630);
        if (!v319)
        {
          sub_1000180EC(v630, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100028A54();
        sub_100073090();
      }

      sub_100051BBC();
      sub_10000554C(v629);
      if (v319)
      {
        sub_10001CC10();
        sub_1007345F8();
        sub_10000554C(v629);
        if (!v319)
        {
          sub_1000180EC(v629, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000230B0();
        sub_100073090();
      }

      sub_10001F650();
      sub_1000719D8();
      sub_10003A0FC();
      v681 = sub_100087104();
      sub_100003B6C(v681);
      sub_10000E80C();
      v528 = v935;
      v529 = v931;
      v530 = v882;
      v531 = v883;
      v532 = v885[0];
      v533 = v886;
      v534 = v888;
      v535 = &v915;
      goto LABEL_276;
    case 2u:
      sub_10001CC10();
      v325 = v933;
      v928 = v326;
      sub_1007345F8();
      v327 = v937;
      v328 = v836;
      if ((*(v263 + v937[10] + 1) & 0xC0) == 0x40)
      {
        sub_100003934();
        v329 = v922;
        sub_10001B350(v330, v331, v332, v922);
        v333 = type metadata accessor for SearchViewState(0);
        sub_100003934();
        sub_10001B350(v334, v335, v336, v333);
        v337 = sub_100003BCC(v835);
        sub_10001B350(v337, v338, v339, v927);
        sub_10039981C(v824);
        sub_10000E7B0();
        sub_10001B350(v340, v341, v342, v924);
        v343 = *v263;
        sub_100095588();
        v344 = sub_1000201BC();
        sub_1000038B4(v344, v345, v329);
        if (v319)
        {
          sub_1000186D8();
          sub_1007345F8();
          v346 = sub_1000201BC();
          v348 = sub_100024D10(v346, v347, v329);

          if (v348 != 1)
          {
            sub_1000180EC(v242, &qword_100CA6608, &unk_100A31430);
          }
        }

        else
        {
          sub_100014D7C();
          sub_100073090();
        }

        v242 = v937;
        LODWORD(v923) = *(v263 + v937[6]);
        v733 = [objc_opt_self() currentDevice];
        v734 = [v733 userInterfaceIdiom];

        if (v734 && *(v263 + v242[9] + 8) == 2)
        {
          v735 = 1;
        }

        else
        {
          v735 = *(v263 + v242[7]);
        }

        sub_1000180EC(v245, &qword_100CA6608, &unk_100A31430);
        sub_100020FE8();
        sub_100051BBC();
        v736 = sub_10000C834();
        sub_1000038B4(v736, v737, v333);
        v738 = v806;
        if (v319)
        {
          sub_100095588();
          v739 = sub_10000C834();
          sub_1000038B4(v739, v740, v333);
          v744 = v805;
          if (!v319)
          {
            sub_1000180EC(v245, &qword_100CA6600, &unk_100A5C400);
          }
        }

        else
        {
          sub_10003005C();
          sub_100020FE8();
          sub_100073090();
          sub_10000E7B0();
          sub_10001B350(v741, v742, v743, v333);
          v744 = v805;
        }

        sub_100051BBC();
        v745 = sub_100007FC4();
        sub_1000038B4(v745, v746, v927);
        if (v319)
        {
          sub_100031F10();
          sub_1007345F8();
          sub_10000554C(v744);
          if (!v319)
          {
            sub_1000180EC(v744, &qword_100CA65F8, &dword_100A31420);
          }
        }

        else
        {
          sub_100008D8C();
          sub_100073090();
        }

        sub_100120130();
        v747 = sub_1000175DC();
        sub_1000038B4(v747, v748, v924);
        if (v319)
        {
          sub_1000117A8();
          sub_1007345F8();
          sub_10000554C(v738);
          v749 = v804;
          if (!v319)
          {
            sub_1000180EC(v738, &qword_100CA65F0, &unk_100A5C3F0);
          }
        }

        else
        {
          sub_100006654();
          sub_100073090();
          v749 = v804;
        }

        v750 = *(v263 + v242[11]);
        sub_1000049A4();
        sub_1000E0148(v263, v751);
        *v749 = v343;
        sub_100014D7C();
        sub_100073090();
        *(v749 + v242[6]) = v923;
        *(v749 + v242[7]) = v735;
        sub_100051BBC();
        sub_100008D8C();
        sub_100073090();
        sub_100006654();
        sub_100073090();
        *(v749 + v242[11]) = v750;
        sub_1000230B0();
        sub_100073090();
        v325 = v933;
        v327 = v242;
      }

      sub_10081BAEC();
      sub_1000049A4();
      sub_1000E0148(v263, v752);
      sub_100073090();
      v753 = sub_100003BCC(&v884);
      sub_10001B350(v753, v754, v755, v934);
      sub_100003934();
      sub_10001B350(v756, v757, v758, v935);
      sub_100003934();
      sub_10001B350(v759, v760, v761, v929);
      v762 = sub_100003BCC(&v897);
      sub_10001B350(v762, v763, v764, v930);
      v765 = sub_100003BCC(v902);
      v766 = v932;
      sub_10001B350(v765, v767, v768, v932);
      v769 = sub_100003BCC(v906);
      sub_10001B350(v769, v770, v771, v936);
      sub_1000113EC();
      sub_100073090();
      sub_10000E7B0();
      sub_10001B350(v772, v773, v774, v327);
      sub_10001F650();
      sub_1000113EC();
      sub_100073090();
      sub_10000E7B0();
      sub_10001B350(v775, v776, v777, v925);
      sub_10002CA34();
      sub_1000325C0();
      sub_1007345F8();
      sub_1000C83F8();
      sub_10000554C(v242);
      if (v319)
      {
        sub_1000180EC(v242, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000109B0();
        sub_1000E0148(v328, v778);
        sub_10001F650();
        sub_100073090();
      }

      sub_10001F650();
      sub_100073090();
      v779 = *(v325 + 16);
      LODWORD(v933) = *(v325 + 24);
      sub_1000C83F8();
      v780 = sub_1000201BC();
      v781 = v934;
      sub_1000038B4(v780, v782, v934);
      v937 = v779;
      if (v319)
      {
        sub_10000CE4C();
        sub_1007345F8();
        v783 = sub_1000201BC();
        v785 = sub_100024D10(v783, v784, v781);

        if (v785 != 1)
        {
          sub_1000180EC(v242, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100024A14();
        sub_100073090();
      }

      sub_1000325C0();
      sub_100051BBC();
      v786 = sub_1000162B0();
      v787 = v935;
      sub_1000038B4(v786, v788, v935);
      if (v319)
      {
        sub_100043A6C();
        sub_100019E08();
        sub_1007345F8();
        v789 = sub_1000162B0();
        sub_1000038B4(v789, v790, v787);
        v791 = v863;
        v792 = v846;
        if (!v319)
        {
          sub_1000180EC(v779, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10003C79C();
        sub_100073090();
        v791 = v863;
        v792 = v846;
      }

      sub_1000325C0();
      sub_100051BBC();
      sub_1000083BC(v779);
      if (v319)
      {
        sub_100017CF4();
        sub_1007345F8();
        sub_1000083BC(v779);
        v793 = v852;
        if (!v319)
        {
          sub_1000180EC(v779, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100069924();
        sub_100073090();
        v793 = v852;
      }

      sub_1000AF628();
      sub_10000E7EC(v792);
      if (v319)
      {
        sub_100013B7C();
        sub_1007345F8();
        sub_10000E7EC(v792);
        v794 = v858;
        if (!v319)
        {
          sub_1000180EC(v792, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10004E9EC();
        sub_100073090();
        v794 = v858;
      }

      sub_100051BBC();
      v795 = sub_100007FC4();
      sub_1000038B4(v795, v796, v766);
      if (v319)
      {
        sub_100016E2C();
        sub_1007345F8();
        v797 = sub_100007FC4();
        sub_1000038B4(v797, v798, v766);
        if (!v319)
        {
          sub_1000180EC(v793, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100049B7C();
        sub_100073090();
      }

      sub_100120130();
      sub_10000554C(v794);
      if (v319)
      {
        sub_100074EE4();
        sub_1007345F8();
        sub_10000554C(v794);
        if (!v319)
        {
          sub_1000180EC(v794, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100028A54();
        sub_100073090();
      }

      sub_1000436AC(&v908);
      sub_100051BBC();
      sub_100003A40(v791);
      if (v319)
      {
        sub_10001CC10();
        sub_1007345F8();
        sub_100003A40(v791);
        if (!v319)
        {
          sub_1000180EC(v791, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000230B0();
        sub_100073090();
      }

      sub_10001F650();
      sub_1000719D8();
      sub_100042750();
      sub_100036E40();
      v799 = sub_100087104();
      sub_100003B6C(v799);
      sub_10000E80C();
      v528 = v937;
      v529 = v933;
      v530 = v894;
      v531 = v898;
      v532 = v904;
      v533 = v906[1];
      v534 = v907[2];
      v535 = &v938;
      goto LABEL_276;
    case 3u:
      v349 = sub_100003BCC(&v882);
      sub_10001B350(v349, v350, v351, v934);
      v352 = sub_100003BCC(&v886);
      sub_10001B350(v352, v353, v354, v935);
      v355 = sub_100003BCC(&v890);
      sub_10001B350(v355, v356, v357, v929);
      v358 = sub_100003BCC(&v894);
      sub_10001B350(v358, v359, v360, v930);
      v361 = sub_100003BCC(&v899);
      sub_10001B350(v361, v362, v363, v932);
      v364 = sub_100003BCC(&v904);
      sub_10001B350(v364, v365, v366, v936);
      sub_10001CC10();
      v367 = v933;
      v928 = v368;
      sub_1007345F8();
      type metadata accessor for ListViewState._Storage();
      swift_allocObject();
      sub_10000E7B0();
      v377 = sub_1000B0CD0(v369, v370, v371, v372, v373, v374, v375, v376, 0, 0, 0, 0, 1, 0);
      sub_100003934();
      v378 = v922;
      sub_10001B350(v379, v380, v381, v922);
      v382 = type metadata accessor for SearchViewState(0);
      sub_100003934();
      sub_10001B350(v383, v384, v385, v382);
      v386 = v822;
      sub_100003934();
      sub_10001B350(v387, v388, v389, v927);
      v390 = sub_100003BCC(v874);
      sub_10001B350(v390, v391, v392, v924);
      sub_100051BBC();
      v393 = sub_1000175DC();
      sub_1000038B4(v393, v394, v378);
      if (v319)
      {
        sub_1000186D8();
        sub_1007345F8();
        v395 = sub_1000175DC();
        v397 = sub_100024D10(v395, v396, v378);

        v492 = v860;
        v493 = v828;
        if (v397 != 1)
        {
          sub_1000180EC(v238, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_100014D7C();
        sub_100073090();

        v492 = v860;
        v493 = v828;
      }

      v494 = v257[v937[6]];
      v495 = v814;
      sub_100051BBC();
      sub_100003A40(v495);
      if (v319)
      {
        sub_100095588();
        sub_100003A40(v495);
        if (!v319)
        {
          sub_1000180EC(v495, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_10003005C();
        sub_100032590();
        sub_100073090();
        sub_10000E7B0();
        sub_10001B350(v496, v497, v498, v382);
      }

      sub_1000131DC();
      sub_100051BBC();
      sub_1000113D0(v386, 1);
      if (v319)
      {
        sub_100031F10();
        sub_1007345F8();
        sub_100003A40(v386);
        if (!v319)
        {
          sub_1000180EC(v386, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100008D8C();
        sub_100073090();
      }

      sub_1000AF628();
      v499 = sub_1000201BC();
      sub_1000113D0(v499, v500);
      if (v319)
      {
        sub_1000117A8();
        sub_1007345F8();
        sub_100003A40(v493);
        v501 = v813;
        if (!v319)
        {
          sub_1000180EC(v493, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100006654();
        sub_100073090();
        v501 = v813;
      }

      v502 = v937;
      v503 = v257[v937[11]];
      sub_1000049A4();
      sub_1000E0148(v257, v504);
      *v492 = v377;
      sub_100014D7C();
      sub_100073090();
      *(v492 + v502[6]) = v494;
      *(v492 + v502[7]) = 0;
      sub_100051BBC();
      sub_100008D8C();
      sub_100073090();
      sub_100006654();
      sub_100073090();

      *(v492 + v502[11]) = v503;
      sub_10000E7B0();
      sub_10001B350(v505, v506, v507, v502);
      sub_10001F650();
      sub_1000113EC();
      sub_100073090();
      sub_10000E7B0();
      sub_10001B350(v508, v509, v510, v925);
      sub_10002CA34();
      sub_1007345F8();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v503);
      if (v319)
      {
        sub_1000180EC(v503, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000109B0();
        sub_1000E0148(v501, v511);
        sub_10001F650();
        sub_100073090();
      }

      v512 = v934;
      v513 = v856;
      v514 = v848;
      sub_10001F650();
      sub_100073090();
      v515 = *(v367 + 16);
      LODWORD(v934) = *(v367 + 24);
      v516 = v833;
      sub_100051BBC();
      v517 = sub_100007FC4();
      sub_1000038B4(v517, v518, v512);
      v935 = v515;
      if (v319)
      {
        sub_10000CE4C();
        sub_1007345F8();
        sub_100086880(v516);

        if (v512 != 1)
        {
          sub_1000180EC(v516, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100024A14();
        sub_100073090();
      }

      sub_1000131DC();
      sub_100051BBC();
      sub_100003A40(v515);
      if (v319)
      {
        sub_100043A6C();
        sub_100019E08();
        sub_1007345F8();
        sub_100003A40(v515);
        v519 = v840;
        if (!v319)
        {
          sub_1000180EC(v515, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10003C79C();
        sub_100073090();
        v519 = v840;
      }

      sub_1000436AC(&v890);
      sub_100051BBC();
      v520 = v929;
      sub_1000113D0(v519, 1);
      if (v319)
      {
        sub_100017CF4();
        sub_1007345F8();
        sub_100003A40(v519);
        if (!v319)
        {
          sub_1000180EC(v519, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100069924();
        sub_100073090();
      }

      sub_1000113EC();
      sub_100051BBC();
      v521 = sub_10000C7F0();
      v522 = v930;
      sub_1000038B4(v521, v523, v930);
      if (v319)
      {
        sub_100013B7C();
        sub_1007345F8();
        v524 = sub_10000C7F0();
        sub_1000038B4(v524, v525, v522);
        v526 = v862;
        if (!v319)
        {
          sub_1000180EC(v520, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10004E9EC();
        sub_100073090();
        v526 = v862;
      }

      sub_100120130();
      sub_1000083BC(v514);
      if (v319)
      {
        sub_100016E2C();
        sub_1007345F8();
        sub_1000083BC(v514);
        if (!v319)
        {
          sub_1000180EC(v514, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100049B7C();
        sub_100073090();
      }

      sub_100051BBC();
      sub_10000554C(v513);
      if (v319)
      {
        sub_100074EE4();
        sub_1007345F8();
        sub_10000554C(v513);
        if (!v319)
        {
          sub_1000180EC(v513, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100028A54();
        sub_100073090();
      }

      sub_100051BBC();
      sub_100003A40(v526);
      if (v319)
      {
        sub_10001CC10();
        sub_1007345F8();
        sub_100003A40(v526);
        if (!v319)
        {
          sub_1000180EC(v526, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000230B0();
        sub_100073090();
      }

      sub_10001F650();
      sub_100073090();
      sub_100042750();
      sub_100036E40();
      v527 = sub_100087104();
      sub_100003B6C(v527);
      sub_10000E80C();
      v528 = v935;
      v529 = v934;
      v530 = v891;
      v531 = v893;
      v532 = v902[0];
      v533 = v903;
      v534 = v906[0];
      v535 = &v936;
      goto LABEL_276;
    case 4u:
      v323 = v933;
      v324 = 1;
      goto LABEL_31;
    case 5u:
      v439 = sub_100003BCC(v885);
      sub_10001B350(v439, v440, v441, v934);
      v442 = sub_100003BCC(&v889);
      sub_10001B350(v442, v443, v444, v935);
      v445 = sub_100003BCC(&v893);
      v446 = v929;
      sub_10001B350(v445, v447, v448, v929);
      v449 = sub_100003BCC(&v898);
      sub_10001B350(v449, v450, v451, v930);
      v452 = sub_100003BCC(&v903);
      sub_10001B350(v452, v453, v454, v932);
      v455 = sub_100003BCC(v907);
      sub_10001B350(v455, v456, v457, v936);
      sub_10001CC10();
      v928 = v458;
      v459 = v912;
      sub_1007345F8();
      type metadata accessor for ListViewState._Storage();
      swift_allocObject();
      sub_10000E7B0();
      v468 = sub_1000B0CD0(v460, v461, v462, v463, v464, v465, v466, v467, 0, 1, 0, 0, 1, 0);
      sub_100003934();
      v469 = v922;
      sub_10001B350(v470, v471, v472, v922);
      v473 = type metadata accessor for SearchViewState(0);
      type metadata accessor for SearchViewState.ViewState(0);
      v474 = v867;
      swift_storeEnumTagMultiPayload();
      v475 = *(v473 + 28);
      type metadata accessor for Location();
      sub_100003934();
      sub_10001B350(v476, v477, v478, v479);
      *v474 = 0;
      v474[1] = 0xE000000000000000;
      *(v474 + *(v473 + 24)) = 0;
      sub_10000E7B0();
      sub_10001B350(v480, v481, v482, v473);
      v483 = sub_100003BCC(v872);
      sub_10001B350(v483, v484, v485, v927);
      v486 = sub_100003BCC(v875);
      v487 = v924;
      sub_10001B350(v486, v488, v489, v924);
      sub_1000131DC();
      sub_100051BBC();
      if (sub_100024D10(v475, 1, v469) == 1)
      {
        sub_1000186D8();
        sub_1007345F8();
        v490 = sub_100024D10(v475, 1, v469);

        if (v490 != 1)
        {
          sub_1000180EC(v475, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_100014D7C();
        sub_100073090();
      }

      v690 = *(v459 + v937[6]);
      sub_1000C83F8();
      sub_100003A40(v446);
      if (v319)
      {
        sub_100095588();
        sub_100003A40(v446);
        v694 = v925;
        if (!v319)
        {
          sub_1000180EC(v446, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_10003005C();
        sub_1000131DC();
        sub_100073090();
        sub_10000E7B0();
        sub_10001B350(v691, v692, v693, v473);
        v694 = v925;
      }

      sub_100032590();
      sub_100051BBC();
      v695 = sub_1000175DC();
      v696 = v927;
      sub_1000113D0(v695, v697);
      if (v319)
      {
        sub_100031F10();
        sub_1007345F8();
        sub_100003A40(v238);
        v698 = v869;
        if (!v319)
        {
          sub_1000180EC(v238, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100008D8C();
        sub_100073090();
        v698 = v869;
      }

      sub_1000113EC();
      sub_100051BBC();
      v699 = sub_10000C7F0();
      sub_1000038B4(v699, v700, v487);
      if (v319)
      {
        sub_1000117A8();
        v701 = v912;
        sub_1007345F8();
        sub_1000049A4();
        sub_1000E0148(v701, v702);
        v703 = sub_10000C7F0();
        sub_1000038B4(v703, v704, v487);
        v706 = v817;
        v707 = v933;
        if (!v319)
        {
          sub_1000180EC(v696, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_1000049A4();
        sub_1000E0148(v912, v705);
        sub_100006654();
        sub_100073090();
        v706 = v817;
        v707 = v933;
      }

      v708 = v884;
      *v884 = v468;
      v709 = v937;
      sub_100014D7C();
      sub_100073090();
      *(v708 + v709[6]) = v690;
      *(v708 + v709[7]) = 0;
      sub_100051BBC();
      sub_100008D8C();
      sub_100073090();
      sub_100006654();
      sub_100073090();

      *(v708 + v709[11]) = 1;
      sub_10000E7B0();
      sub_10001B350(v710, v711, v712, v709);
      sub_10001F650();
      sub_100020FE8();
      sub_100073090();
      sub_10000E7B0();
      sub_10001B350(v713, v714, v715, v694);
      sub_10002CA34();
      sub_1007345F8();
      sub_100020FE8();
      sub_100051BBC();
      v716 = sub_10000C834();
      sub_1000038B4(v716, v717, v694);
      if (v319)
      {
        sub_1000180EC(v468, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000109B0();
        sub_1000E0148(v706, v718);
        sub_10001F650();
        sub_100073090();
      }

      v720 = v934;
      v719 = v935;
      v721 = v859;
      v722 = v854;
      sub_10001F650();
      sub_100073090();
      v723 = *(v707 + 16);
      v724 = *(v707 + 24);
      sub_1000325C0();
      sub_100051BBC();
      v725 = sub_1000162B0();
      sub_1000038B4(v725, v726, v720);
      v935 = v723;
      LODWORD(v934) = v724;
      if (v319)
      {
        sub_10000CE4C();
        sub_1007345F8();
        sub_100086880(v698);

        if (v720 != 1)
        {
          sub_1000180EC(v698, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100024A14();
        sub_100073090();
      }

      sub_100032590();
      sub_100051BBC();
      sub_100003A40(v724);
      if (v319)
      {
        sub_100043A6C();
        sub_100019E08();
        sub_1007345F8();
        sub_100003A40(v724);
        v727 = v864;
        if (!v319)
        {
          sub_1000180EC(v724, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10003C79C();
        sub_100073090();
        v727 = v864;
      }

      sub_1000113EC();
      sub_100051BBC();
      v728 = sub_10000C7F0();
      sub_1000038B4(v728, v729, v446);
      if (v319)
      {
        sub_100017CF4();
        sub_1007345F8();
        v730 = sub_10000C7F0();
        sub_1000038B4(v730, v731, v446);
        if (!v319)
        {
          sub_1000180EC(v719, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100069924();
        sub_100073090();
      }

      sub_1000C83F8();
      sub_100003BDC(v446);
      if (v319)
      {
        sub_100013B7C();
        sub_1007345F8();
        sub_100003BDC(v446);
        if (!v319)
        {
          sub_1000180EC(v446, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10004E9EC();
        sub_100073090();
      }

      sub_100030224(&v903);
      sub_100051BBC();
      sub_10000E7EC(v722);
      if (v319)
      {
        sub_100016E2C();
        sub_1007345F8();
        sub_10000E7EC(v722);
        if (!v319)
        {
          sub_1000180EC(v722, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100049B7C();
        sub_100073090();
      }

      sub_100051BBC();
      sub_10000554C(v721);
      if (v319)
      {
        sub_100074EE4();
        sub_1007345F8();
        sub_10000554C(v721);
        if (!v319)
        {
          sub_1000180EC(v721, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100028A54();
        sub_100073090();
      }

      sub_1000436AC(v909);
      sub_100051BBC();
      sub_100003A40(v727);
      if (v319)
      {
        sub_10001CC10();
        sub_1007345F8();
        sub_100003A40(v727);
        if (!v319)
        {
          sub_1000180EC(v727, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000230B0();
        sub_100073090();
      }

      sub_10001F650();
      sub_100073090();
      sub_100042750();
      sub_100036E40();
      v732 = sub_100087104();
      sub_100003B6C(v732);
      sub_10000E80C();
      v528 = v935;
      v529 = v934;
      v530 = v895;
      v531 = v899;
      v532 = v905;
      v533 = v906[2];
      v534 = v907[3];
      v535 = &v939;
      goto LABEL_276;
    case 6u:
      v323 = v933;
      v324 = 0;
LABEL_31:
      v491 = sub_10072D9DC(v323, v324);
      goto LABEL_181;
    case 7u:
      sub_1000109B0();
      sub_1000E0148(v931, v398);
      v399 = sub_100003BCC(v880);
      sub_10001B350(v399, v400, v401, v934);
      v402 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      sub_100019E08();
      v913 = v402;
      v403 = v842;
      sub_1007345F8();
      v404 = v850;
      sub_100003934();
      v405 = v881;
      sub_10001B350(v406, v407, v408, v881);
      LODWORD(v931) = *v403;
      LODWORD(v928) = v403[1];
      LODWORD(v927) = v403[2];
      LODWORD(v924) = v403[3];
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v404);
      if (v319)
      {
        v536 = v935;
        (*(v879 + 16))(v878, &v403[v935[8]], v405);
        sub_10000554C(v404);
        if (!v319)
        {
          sub_1000180EC(v404, &qword_100CAA9F0, qword_100A44F50);
        }
      }

      else
      {
        (*(v879 + 32))(v878, v404, v405);
        v536 = v935;
      }

      v537 = &v403[v536[9]];
      LODWORD(v922) = v403[v536[10]];
      v538 = v536[12];
      LODWORD(v917) = v403[v536[11]];
      LODWORD(v919) = v403[v538];
      v539 = v536[15];
      v921 = *&v403[v536[14]];
      LODWORD(v923) = v403[v539];
      v540 = v536[17];
      LODWORD(v918) = v403[v536[16]];
      LODWORD(v920) = v403[v540];
      v541 = v537[1];
      v915 = *v537;
      v542 = v536[19];
      v543 = &v403[v536[18]];
      v545 = v543[1];
      v914 = *v543;
      v544 = v914;
      v546 = v543[2];
      v547 = v543[3];
      v548 = v543[4];
      v549 = v543[5];
      LODWORD(v916) = v403[v542];
      v550 = v549;

      v551 = v544;
      v552 = v545;
      v553 = v546;
      v554 = v547;
      v555 = v548;
      sub_1000E0148(v403, type metadata accessor for EnvironmentState);
      v556 = v868;
      *v868 = v931;
      v556[1] = v928;
      v556[2] = v927;
      v556[3] = v924;
      (*(v879 + 32))(&v556[v536[8]], v878, v881);
      v557 = &v556[v536[9]];
      *v557 = v915;
      v557[1] = v541;
      v556[v536[10]] = v922;
      sub_10003BB84(v536[11]);
      sub_10003BB84(v536[12]);
      v556[v536[13]] = 0;
      *&v556[v536[14]] = v921;
      v556[v536[15]] = v923;
      sub_10003BB84(v536[16]);
      v556[v536[17]] = v920;
      v558 = &v556[v536[18]];
      *v558 = v914;
      v558[1] = v545;
      v558[2] = v546;
      v558[3] = v547;
      v558[4] = v548;
      v558[5] = v549;
      sub_10003BB84(v536[19]);
      sub_10000E7B0();
      sub_10001B350(v559, v560, v561, v536);
      v562 = sub_100003BCC(&v888);
      sub_10001B350(v562, v563, v564, v929);
      v565 = sub_100003BCC(&v892);
      sub_10001B350(v565, v566, v567, v930);
      v568 = sub_100003BCC(&v896);
      sub_10001B350(v568, v569, v570, v932);
      v571 = sub_100003BCC(&v901);
      v572 = v936;
      sub_10001B350(v571, v573, v574, v936);
      v575 = sub_100003BCC(&v905);
      sub_10001B350(v575, v576, v577, v937);
      sub_100003934();
      sub_10001B350(v578, v579, v580, v925);
      sub_10002CA34();
      v581 = v933;
      sub_1007345F8();
      v582 = v844;
      sub_100051BBC();
      sub_10000554C(v582);
      if (v319)
      {
        sub_1000180EC(v582, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000109B0();
        sub_1000E0148(v267, v583);
        sub_10001F650();
        sub_100073090();
      }

      v584 = v934;
      v585 = v838;
      v586 = v832;
      sub_10001F650();
      sub_100073090();
      v587 = *(v581 + 16);
      LODWORD(v931) = *(v581 + 24);
      sub_1000AF628();
      v588 = sub_1000201BC();
      sub_1000038B4(v588, v589, v584);
      v934 = v587;
      if (v319)
      {
        sub_10000CE4C();
        sub_1007345F8();
        v590 = sub_1000201BC();
        v592 = sub_100024D10(v590, v591, v584);

        v593 = v845;
        if (v592 != 1)
        {
          sub_1000180EC(v586, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100024A14();
        sub_100073090();

        v593 = v845;
      }

      sub_1000C83F8();
      v594 = sub_1000201BC();
      v595 = v935;
      sub_1000038B4(v594, v596, v935);
      if (v319)
      {
        sub_100019E08();
        sub_1007345F8();
        v597 = sub_1000201BC();
        sub_1000038B4(v597, v598, v595);
        v599 = v851;
        if (!v319)
        {
          sub_1000180EC(v586, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10003C79C();
        sub_100073090();
        v599 = v851;
      }

      sub_100051BBC();
      sub_100003A40(v585);
      if (v319)
      {
        sub_100017CF4();
        sub_1007345F8();
        sub_100003A40(v585);
        v600 = v857;
        if (!v319)
        {
          sub_1000180EC(v585, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100069924();
        sub_100073090();
        v600 = v857;
      }

      sub_100020FE8();
      sub_100051BBC();
      sub_100003BDC(v585);
      if (v319)
      {
        sub_100013B7C();
        sub_1007345F8();
        sub_100003BDC(v585);
        if (!v319)
        {
          sub_1000180EC(v585, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10004E9EC();
        sub_100073090();
      }

      sub_100030224(&v896);
      sub_100051BBC();
      sub_10000E7EC(v593);
      if (v319)
      {
        sub_100016E2C();
        sub_1007345F8();
        sub_10000E7EC(v593);
        if (!v319)
        {
          sub_1000180EC(v593, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100049B7C();
        sub_100073090();
      }

      sub_1000436AC(&v901);
      sub_100051BBC();
      sub_1000038B4(v599, 1, v572);
      if (v319)
      {
        sub_100074EE4();
        sub_1007345F8();
        sub_1000038B4(v599, 1, v572);
        if (!v319)
        {
          sub_1000180EC(v599, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100028A54();
        sub_100073090();
      }

      sub_100051BBC();
      sub_1000083BC(v600);
      if (v319)
      {
        sub_10001CC10();
        sub_1007345F8();
        sub_1000083BC(v600);
        if (!v319)
        {
          sub_1000180EC(v600, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000230B0();
        sub_100073090();
      }

      sub_10001F650();
      sub_1000719D8();
      sub_10003A0FC();
      v601 = sub_100087104();
      sub_100003B6C(v601);
      sub_10000E80C();
      v528 = v934;
      v529 = v931;
      v530 = v885[1];
      v531 = v887;
      v532 = v889;
      v533 = v892;
      v534 = v896;
      v535 = &v926;
LABEL_276:
      sub_10003E038(v528, v529, v530, v531, v532, v533, v534, *(v535 - 32), v802, v803, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824, v825, v826, v827, v828);
      v491 = v800;

      return v491;
    default:
      sub_100073090();
      v286 = v933;
      if (qword_100CA2760 != -1)
      {
        swift_once();
      }

      v287 = type metadata accessor for Logger();
      sub_10000703C(v287, qword_100D90C78);
      v288 = Logger.logObject.getter();
      v289 = static os_log_type_t.default.getter();
      v290 = os_log_type_enabled(v288, v289);
      v291 = v937;
      v292 = v922;
      v293 = v821;
      v294 = v811;
      if (v290)
      {
        v295 = swift_slowAlloc();
        *v295 = 0;
        _os_log_impl(&_mh_execute_header, v288, v289, "ActivityActionReducer handling location activity", v295, 2u);
      }

      v296 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_10001CC10();
      v297 = v923;
      sub_1007345F8();
      v298 = v853;
      SavedLocation.identifier.getter();
      type metadata accessor for Location.Identifier();
      sub_10000E7B0();
      sub_10001B350(v299, v300, v301, v302);
      v303 = type metadata accessor for LocationViewerViewState._Storage(0);
      sub_100003B6C(v303);
      v304 = sub_10003DDB8(v298, 0, 0, 2, 0, 0);
      *v866 = v304;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v305, v306, v307, v292);
      v308 = type metadata accessor for SearchViewState(0);
      v309 = sub_100003BCC(v871);
      sub_10001B350(v309, v310, v311, v308);
      v312 = sub_100003BCC(v873);
      sub_10001B350(v312, v313, v314, v927);
      v315 = sub_100003BCC(v876);
      sub_10001B350(v315, v316, v317, v924);
      v318 = *v297;
      sub_100095588();
      sub_100003BDC(v294);
      v913 = v296;
      if (v319)
      {
        sub_1000186D8();
        sub_1007345F8();
        v320 = sub_100007FC4();
        v322 = sub_100024D10(v320, v321, v292);

        v602 = v930;
        v603 = v830;
        if (v322 != 1)
        {
          sub_1000180EC(v294, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_100014D7C();
        sub_100073090();

        v602 = v930;
        v603 = v830;
      }

      v604 = *(v923 + v291[6]);
      sub_1000180EC(v866, &qword_100CA6608, &unk_100A31430);
      sub_100120130();
      sub_100003A40(v293);
      if (v319)
      {
        sub_100095588();
        sub_100003A40(v293);
        v605 = v293;
        v618 = v826;
        if (!v319)
        {
          sub_1000180EC(v605, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_10003005C();
        sub_100032590();
        sub_100073090();
        sub_10000E7B0();
        sub_10001B350(v615, v616, v617, v308);
        v618 = v826;
      }

      sub_100120130();
      v619 = sub_1000175DC();
      v620 = v927;
      sub_1000113D0(v619, v621);
      v622 = v602;
      if (v319)
      {
        sub_100031F10();
        sub_1007345F8();
        sub_100003A40(v618);
        v624 = v924;
        if (!v319)
        {
          sub_1000180EC(v618, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100008D8C();
        sub_100073090();
        v624 = v924;
      }

      sub_1000113EC();
      sub_100051BBC();
      v625 = sub_10000C7F0();
      sub_1000038B4(v625, v626, v624);
      if (v319)
      {
        sub_1000117A8();
        sub_1007345F8();
        v627 = sub_10000C7F0();
        sub_1000038B4(v627, v628, v624);
        v631 = v936;
        if (!v319)
        {
          sub_1000180EC(v620, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100006654();
        sub_100073090();
        v631 = v936;
      }

      v632 = *(v923 + v291[11]);
      sub_1000049A4();
      sub_1000E0148(v633, v634);
      v635 = v870;
      *v870 = v318;
      sub_100014D7C();
      sub_100073090();
      *(v635 + v291[6]) = v604;
      *(v635 + v291[7]) = 1;
      sub_100051BBC();
      sub_100008D8C();
      sub_100073090();
      sub_100006654();
      sub_100073090();
      *(v635 + v291[11]) = v632;
      v636 = sub_100003BCC(&v940);
      v637 = v934;
      sub_10001B350(v636, v638, v639, v934);
      v640 = sub_100003BCC(&v941);
      sub_10001B350(v640, v641, v642, v935);
      v643 = sub_100003BCC(&v942);
      sub_10001B350(v643, v644, v645, v929);
      v646 = sub_100003BCC(&v943);
      sub_10001B350(v646, v647, v648, v622);
      v649 = sub_100003BCC(&v944);
      sub_10001B350(v649, v650, v651, v932);
      v652 = sub_100003BCC(&v945);
      sub_10001B350(v652, v653, v654, v631);
      sub_10001CC10();
      sub_1007345F8();
      sub_10000E7B0();
      sub_10001B350(v655, v656, v657, v291);
      sub_1007345F8();
      sub_10000E7B0();
      v658 = v925;
      sub_10001B350(v659, v660, v661, v925);
      sub_100032590();
      sub_1007345F8();
      sub_100020FE8();
      sub_100095588();
      v662 = sub_10000C834();
      sub_1000038B4(v662, v663, v658);
      if (v319)
      {
        sub_1000180EC(type metadata accessor for ModalViewState, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000109B0();
        sub_1000E0148(v631, v665);
        sub_10001F650();
        sub_100073090();
      }

      v666 = v855;
      v667 = v847;
      sub_10001F650();
      sub_100073090();
      v668 = *(v286 + 16);
      v669 = *(v286 + 24);
      sub_1000325C0();
      sub_100095588();
      v670 = sub_1000162B0();
      sub_1000038B4(v670, v671, v637);
      v930 = v668;
      if (v319)
      {
        sub_10000CE4C();
        sub_1007345F8();
        sub_100086880(v603);

        v676 = v839;
        if (v637 != 1)
        {
          sub_1000180EC(v603, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_100024A14();
        sub_100073090();

        v676 = v839;
      }

      sub_100095588();
      sub_100003A40(v676);
      LODWORD(v928) = v669;
      if (v319)
      {
        sub_100043A6C();
        sub_100019E08();
        sub_1007345F8();
        sub_100003A40(v676);
        v677 = v865;
        v678 = v861;
        if (!v319)
        {
          sub_1000180EC(v676, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_10003C79C();
        sub_100073090();
        v677 = v865;
        v678 = v861;
      }

      sub_100032590();
      sub_100095588();
      v679 = sub_1000175DC();
      sub_1000038B4(v679, v680, v929);
      if (v319)
      {
        sub_100017CF4();
        sub_1007345F8();
        sub_10000554C(v669);
        if (!v319)
        {
          sub_1000180EC(v669, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100069924();
        sub_100073090();
      }

      sub_100030224(&v943);
      sub_100095588();
      sub_1000083BC(v667);
      if (v319)
      {
        sub_100013B7C();
        sub_1007345F8();
        sub_1000083BC(v667);
        if (!v319)
        {
          sub_1000180EC(v667, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_10004E9EC();
        sub_100073090();
      }

      sub_100095588();
      sub_100003BDC(v666);
      if (v319)
      {
        sub_100016E2C();
        sub_1007345F8();
        sub_100003BDC(v666);
        if (!v319)
        {
          sub_1000180EC(v666, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100049B7C();
        sub_100073090();
      }

      sub_1000436AC(&v945);
      sub_100095588();
      sub_10000554C(v678);
      if (v319)
      {
        sub_100074EE4();
        sub_1007345F8();
        sub_10000554C(v678);
        if (!v319)
        {
          sub_1000180EC(v678, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100028A54();
        sub_100073090();
      }

      sub_100095588();
      v682 = sub_10000C7F0();
      sub_1000038B4(v682, v683, v291);
      if (v319)
      {
        sub_10001CC10();
        sub_1007345F8();
        v684 = sub_10000C7F0();
        sub_1000038B4(v684, v685, v291);
        if (!v319)
        {
          sub_1000180EC(v677, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_1000230B0();
        sub_100073090();
      }

      sub_10001F650();
      sub_1000719D8();
      sub_100042750();
      sub_100036E40();
      v686 = sub_100087104();
      sub_100003B6C(v686);
      sub_10000E80C();
      sub_10003E038(v930, v928, v900, v902[1], v907[0], v908, v910, v911, v802, v803, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815, v816, v817, v818, v819, v820, v821, v822, v823, v824, v825, v826, v827, v828);
      v491 = v687;

      sub_1000180EC(v897, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v920, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v919, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v918, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v917, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v916, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v915, &qword_100CA6638, &unk_100A31460);
      sub_1000180EC(v914, &qword_100CA6640, qword_100A32640);
      sub_1000049A4();
      sub_1000E0148(v870, v688);
      sub_1000E0148(v921, &type metadata accessor for SavedLocation);
LABEL_181:
      sub_1000109B0();
      sub_1000E0148(v931, v689);
      return v491;
  }
}

uint64_t sub_10072D9DC(uint64_t a1, int a2)
{
  v873 = a2;
  v3 = sub_10022C350(&qword_100CA6890, &qword_100A31680);
  __chkstk_darwin(v3 - 8);
  v795 = &v728 - v4;
  v793 = type metadata accessor for SavedLocation();
  __chkstk_darwin(v793);
  v750 = &v728 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v915 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v915);
  v907 = &v728 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v857 = &v728 - v8;
  __chkstk_darwin(v9);
  v833 = &v728 - v10;
  __chkstk_darwin(v11);
  v834 = &v728 - v12;
  v914 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v914);
  v906 = &v728 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v856 = &v728 - v15;
  __chkstk_darwin(v16);
  v831 = &v728 - v17;
  __chkstk_darwin(v18);
  v832 = &v728 - v19;
  v913 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v913);
  v905 = &v728 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v855 = &v728 - v22;
  __chkstk_darwin(v23);
  v829 = &v728 - v24;
  __chkstk_darwin(v25);
  v830 = &v728 - v26;
  v887 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v887);
  v904 = &v728 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v854 = &v728 - v29;
  __chkstk_darwin(v30);
  v827 = &v728 - v31;
  __chkstk_darwin(v32);
  v828 = &v728 - v33;
  v912 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v912);
  v903 = &v728 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v853 = &v728 - v36;
  __chkstk_darwin(v37);
  v825 = &v728 - v38;
  __chkstk_darwin(v39);
  v826 = &v728 - v40;
  v41 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v41 - 8);
  v878 = &v728 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v877 = &v728 - v44;
  __chkstk_darwin(v45);
  v823 = &v728 - v46;
  __chkstk_darwin(v47);
  v822 = &v728 - v48;
  __chkstk_darwin(v49);
  v764 = &v728 - v50;
  __chkstk_darwin(v51);
  v762 = &v728 - v52;
  __chkstk_darwin(v53);
  v765 = &v728 - v54;
  __chkstk_darwin(v55);
  v763 = &v728 - v56;
  v911 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v911);
  v875 = &v728 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v820 = &v728 - v59;
  __chkstk_darwin(v60);
  v758 = &v728 - v61;
  __chkstk_darwin(v62);
  v759 = &v728 - v63;
  v909 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v909);
  v901 = &v728 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v851 = &v728 - v66;
  __chkstk_darwin(v67);
  v813 = &v728 - v68;
  __chkstk_darwin(v69);
  v816 = &v728 - v70;
  v882 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v882);
  v900 = &v728 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v850 = &v728 - v73;
  __chkstk_darwin(v74);
  v811 = &v728 - v75;
  __chkstk_darwin(v76);
  v812 = &v728 - v77;
  v78 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  __chkstk_darwin(v78 - 8);
  v872 = &v728 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v898 = &v728 - v81;
  __chkstk_darwin(v82);
  v84 = &v728 - v83;
  __chkstk_darwin(v85);
  v848 = &v728 - v86;
  __chkstk_darwin(v87);
  v754 = &v728 - v88;
  __chkstk_darwin(v89);
  v805 = &v728 - v90;
  __chkstk_darwin(v91);
  v755 = &v728 - v92;
  __chkstk_darwin(v93);
  v806 = &v728 - v94;
  v95 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  __chkstk_darwin(v95 - 8);
  v870 = &v728 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v97);
  v894 = &v728 - v98;
  __chkstk_darwin(v99);
  v810 = &v728 - v100;
  __chkstk_darwin(v101);
  v844 = &v728 - v102;
  __chkstk_darwin(v103);
  v749 = &v728 - v104;
  __chkstk_darwin(v105);
  v792 = &v728 - v106;
  __chkstk_darwin(v107);
  v751 = &v728 - v108;
  __chkstk_darwin(v109);
  v794 = &v728 - v110;
  v111 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v111 - 8);
  v868 = &v728 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v113);
  v897 = &v728 - v114;
  __chkstk_darwin(v115);
  v892 = &v728 - v116;
  __chkstk_darwin(v117);
  v804 = &v728 - v118;
  __chkstk_darwin(v119);
  v846 = &v728 - v120;
  __chkstk_darwin(v121);
  v798 = &v728 - v122;
  __chkstk_darwin(v123);
  v745 = &v728 - v124;
  __chkstk_darwin(v125);
  v799 = &v728 - v126;
  __chkstk_darwin(v127);
  v785 = &v728 - v128;
  __chkstk_darwin(v129);
  v746 = &v728 - v130;
  __chkstk_darwin(v131);
  v800 = &v728 - v132;
  __chkstk_darwin(v133);
  v786 = &v728 - v134;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v841 = &v728 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v137);
  v881 = &v728 - v138;
  v139 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  __chkstk_darwin(v139 - 8);
  v865 = &v728 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v141);
  v864 = (&v728 - v142);
  __chkstk_darwin(v143);
  v788 = &v728 - v144;
  __chkstk_darwin(v145);
  v787 = (&v728 - v146);
  __chkstk_darwin(v147);
  v742 = &v728 - v148;
  __chkstk_darwin(v149);
  v740 = (&v728 - v150);
  __chkstk_darwin(v151);
  v741 = &v728 - v152;
  __chkstk_darwin(v153);
  v781 = (&v728 - v154);
  v886 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v886);
  v879 = &v728 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v156);
  v908 = &v728 - v157;
  __chkstk_darwin(v158);
  v824 = &v728 - v159;
  __chkstk_darwin(v160);
  v858 = &v728 - v161;
  __chkstk_darwin(v162);
  v766 = &v728 - v163;
  __chkstk_darwin(v164);
  v835 = &v728 - v165;
  __chkstk_darwin(v166);
  v767 = &v728 - v167;
  __chkstk_darwin(v168);
  v836 = &v728 - v169;
  v170 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v170 - 8);
  v876 = &v728 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v172);
  v902 = (&v728 - v173);
  __chkstk_darwin(v174);
  v821 = &v728 - v175;
  __chkstk_darwin(v176);
  v852 = (&v728 - v177);
  __chkstk_darwin(v178);
  v760 = &v728 - v179;
  __chkstk_darwin(v180);
  v815 = (&v728 - v181);
  __chkstk_darwin(v182);
  v761 = &v728 - v183;
  __chkstk_darwin(v184);
  v817 = (&v728 - v185);
  v186 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v186 - 8);
  v874 = &v728 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v188);
  v899 = &v728 - v189;
  __chkstk_darwin(v190);
  v819 = &v728 - v191;
  __chkstk_darwin(v192);
  v849 = &v728 - v193;
  __chkstk_darwin(v194);
  v756 = &v728 - v195;
  __chkstk_darwin(v196);
  v808 = &v728 - v197;
  __chkstk_darwin(v198);
  v757 = &v728 - v199;
  __chkstk_darwin(v200);
  v809 = &v728 - v201;
  v202 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v202 - 8);
  v871 = &v728 - ((v203 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v204);
  v896 = &v728 - v205;
  __chkstk_darwin(v206);
  v814 = &v728 - v207;
  __chkstk_darwin(v208);
  v847 = &v728 - v209;
  __chkstk_darwin(v210);
  v752 = &v728 - v211;
  __chkstk_darwin(v212);
  v802 = &v728 - v213;
  __chkstk_darwin(v214);
  v753 = &v728 - v215;
  __chkstk_darwin(v216);
  v803 = &v728 - v217;
  v218 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v218 - 8);
  v869 = &v728 - ((v219 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v220);
  v893 = &v728 - v221;
  __chkstk_darwin(v222);
  v807 = &v728 - v223;
  __chkstk_darwin(v224);
  v843 = &v728 - v225;
  __chkstk_darwin(v226);
  v747 = &v728 - v227;
  __chkstk_darwin(v228);
  v790 = &v728 - v229;
  __chkstk_darwin(v230);
  v748 = &v728 - v231;
  __chkstk_darwin(v232);
  v791 = &v728 - v233;
  v234 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v234 - 8);
  v867 = &v728 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v236);
  v891 = &v728 - v237;
  __chkstk_darwin(v238);
  v801 = &v728 - v239;
  __chkstk_darwin(v240);
  v842 = &v728 - v241;
  __chkstk_darwin(v242);
  v743 = &v728 - v243;
  __chkstk_darwin(v244);
  v783 = &v728 - v245;
  __chkstk_darwin(v246);
  v744 = &v728 - v247;
  __chkstk_darwin(v248);
  v784 = &v728 - v249;
  v910 = type metadata accessor for Locale();
  v880 = *(v910 - 8);
  __chkstk_darwin(v910);
  v888 = &v728 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v251);
  v838 = &v728 - v252;
  __chkstk_darwin(v253);
  v770 = &v728 - v254;
  __chkstk_darwin(v255);
  v768 = &v728 - v256;
  v257 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v257 - 8);
  v860 = &v728 - ((v258 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v259);
  v261 = &v728 - v260;
  __chkstk_darwin(v262);
  v771 = &v728 - v263;
  __chkstk_darwin(v264);
  v769 = &v728 - v265;
  __chkstk_darwin(v266);
  v732 = &v728 - v267;
  __chkstk_darwin(v268);
  v730 = &v728 - v269;
  __chkstk_darwin(v270);
  v731 = &v728 - v271;
  __chkstk_darwin(v272);
  v729 = &v728 - v273;
  v917 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v917);
  v895 = &v728 - ((v274 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v275);
  v277 = &v728 - v276;
  __chkstk_darwin(v278);
  v845 = &v728 - v279;
  __chkstk_darwin(v280);
  v772 = &v728 - v281;
  __chkstk_darwin(v282);
  v796 = &v728 - v283;
  __chkstk_darwin(v284);
  v734 = &v728 - v285;
  __chkstk_darwin(v286);
  v797 = &v728 - v287;
  __chkstk_darwin(v288);
  v733 = &v728 - v289;
  v290 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v290 - 8);
  v863 = &v728 - ((v291 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v292);
  v890 = &v728 - v293;
  __chkstk_darwin(v294);
  v782 = &v728 - v295;
  __chkstk_darwin(v296);
  v840 = &v728 - v297;
  __chkstk_darwin(v298);
  *(&v738 + 1) = &v728 - v299;
  __chkstk_darwin(v300);
  v776 = &v728 - v301;
  __chkstk_darwin(v302);
  v739 = &v728 - v303;
  __chkstk_darwin(v304);
  v777 = &v728 - v305;
  v306 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v306 - 8);
  v862 = &v728 - ((v307 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v308);
  v889 = &v728 - v309;
  __chkstk_darwin(v310);
  v778 = &v728 - v311;
  __chkstk_darwin(v312);
  v839 = &v728 - v313;
  __chkstk_darwin(v314);
  v737 = &v728 - v315;
  __chkstk_darwin(v316);
  v773 = &v728 - v317;
  __chkstk_darwin(v318);
  *&v738 = &v728 - v319;
  __chkstk_darwin(v320);
  v774 = &v728 - v321;
  v322 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v322 - 8);
  v324 = &v728 - v323;
  v325 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v325);
  v837 = &v728 - ((v326 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v327);
  v861 = &v728 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v329);
  v866 = &v728 - v330;
  __chkstk_darwin(v331);
  v775 = &v728 - v332;
  __chkstk_darwin(v333);
  v789 = &v728 - v334;
  __chkstk_darwin(v335);
  v735 = &v728 - v336;
  __chkstk_darwin(v337);
  v779 = &v728 - v338;
  __chkstk_darwin(v339);
  v885 = &v728 - v340;
  __chkstk_darwin(v341);
  v736 = &v728 - v342;
  __chkstk_darwin(v343);
  v780 = &v728 - v344;
  __chkstk_darwin(v345);
  v883 = &v728 - v346;
  v884 = v347;
  swift_storeEnumTagMultiPayload();
  if (qword_100CA2760 != -1)
  {
    swift_once();
  }

  v348 = type metadata accessor for Logger();
  sub_10000703C(v348, qword_100D90C78);

  v349 = Logger.logObject.getter();
  v350 = static os_log_type_t.default.getter();
  v351 = os_log_type_enabled(v349, v350);
  v916 = a1;
  v818 = v84;
  if (v351)
  {
    v352 = swift_slowAlloc();
    *v352 = 67240192;
    v353 = v916 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    v354 = *(v353 + v917[13]);
    a1 = v916;
    *(v352 + 4) = v354;

    _os_log_impl(&_mh_execute_header, v349, v350, "ActivityActionReducer handling current location activity; was pending = %{BOOL,public}d", v352, 8u);
  }

  else
  {
  }

  v355 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v357 = LocationAuthorizationState.rawValue.getter(*(v355 + 1)) == 0x7265746544746F6ELL && v356 == 0xED000064656E696DLL;
  v859 = v355;
  if (v357)
  {
  }

  else
  {
    v358 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v358 & 1) == 0)
    {
      if (*(v355 + 1) - 1 <= 1)
      {
        v908 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
        sub_100095588();
        if (sub_100024D10(v324, 1, v325) == 1)
        {
          sub_1000180EC(v324, &unk_100CE49F0, &unk_100A3AFA0);
          v359 = Logger.logObject.getter();
          v360 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v359, v360))
          {
            v361 = swift_slowAlloc();
            *v361 = 0;
            _os_log_impl(&_mh_execute_header, v359, v360, "ActivityActionReducer handling current location activity with authorization but no current location", v361, 2u);
          }

          sub_10001B350(v773, 1, 1, v912);
          v362 = v734;
          sub_1007345F8();
          v363 = v910;
          sub_10001B350(v730, 1, 1, v910);
          LODWORD(v907) = *v362;
          LODWORD(v906) = v362[1];
          LODWORD(v905) = v362[2];
          LODWORD(v904) = v362[3];
          v364 = v732;
          sub_100051BBC();
          if (sub_100024D10(v364, 1, v363) == 1)
          {
            v365 = v917;
            v366 = v880;
            (*(v880 + 16))(v770, &v362[v917[8]], v363);
            if (sub_100024D10(v364, 1, v363) != 1)
            {
              sub_1000180EC(v364, &qword_100CAA9F0, qword_100A44F50);
            }
          }

          else
          {
            v366 = v880;
            (*(v880 + 32))(v770, v364, v363);
            v365 = v917;
          }

          v564 = &v362[v365[9]];
          LODWORD(v902) = v362[v365[10]];
          v565 = v365[12];
          LODWORD(v897) = v362[v365[11]];
          LODWORD(v899) = v362[v565];
          v566 = v365[15];
          v901 = *&v362[v365[14]];
          LODWORD(v903) = v362[v566];
          v567 = v365[17];
          LODWORD(v898) = v362[v365[16]];
          LODWORD(v900) = v362[v567];
          v568 = v564[1];
          v895 = *v564;
          v569 = &v362[v365[18]];
          v570 = *v569;
          v571 = *(v569 + 1);
          v572 = *(v569 + 2);
          v573 = *(v569 + 3);
          v574 = *(v569 + 4);
          v575 = *(v569 + 5);
          LODWORD(v896) = v362[v365[19]];
          v576 = v575;

          v577 = v570;
          v578 = v571;
          v579 = v572;
          v580 = v573;
          v581 = v574;
          sub_1000E0148(v362, type metadata accessor for EnvironmentState);
          v582 = v776;
          *v776 = v907;
          v582[1] = v906;
          v582[2] = v905;
          v582[3] = v904;
          (*(v366 + 32))(&v582[v365[8]], v770, v910);
          v583 = &v582[v365[9]];
          *v583 = v895;
          v583[1] = v568;
          v582[v365[10]] = v902;
          v582[v365[11]] = v897;
          v582[v365[12]] = v899;
          v582[v365[13]] = 0;
          *&v582[v365[14]] = v901;
          v582[v365[15]] = v903;
          v582[v365[16]] = v898;
          v582[v365[17]] = v900;
          v584 = &v582[v365[18]];
          *v584 = v570;
          v584[1] = v571;
          v584[2] = v572;
          v584[3] = v573;
          v584[4] = v574;
          v584[5] = v575;
          v582[v365[19]] = v896;
          sub_10001B350(v582, 0, 1, v365);
          v585 = v887;
          sub_10001B350(v783, 1, 1, v887);
          sub_10001B350(v790, 1, 1, v913);
          sub_10001B350(v802, 1, 1, v914);
          sub_10001B350(v808, 1, 1, v915);
          v586 = v916;
          v907 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
          v587 = v835;
          sub_1007345F8();
          v588 = type metadata accessor for Location.Identifier();
          v589 = v881;
          sub_10001B350(v881, 1, 1, v588);
          type metadata accessor for LocationViewerViewState._Storage(0);
          swift_allocObject();
          v590 = sub_10003DDB8(v589, 0, 0, 2, 0, 0);
          v591 = v740;
          *v740 = v590;
          v592 = v882;
          swift_storeEnumTagMultiPayload();
          sub_10001B350(v591, 0, 1, v592);
          v593 = type metadata accessor for SearchViewState(0);
          sub_10001B350(v785, 1, 1, v593);
          sub_10001B350(v792, 1, 1, v909);
          sub_10001B350(v805, 1, 1, v911);
          v594 = *v587;
          v595 = v742;
          sub_100051BBC();
          if (sub_100024D10(v595, 1, v592) == 1)
          {
            v596 = v886;
            sub_1007345F8();
            v597 = sub_100024D10(v595, 1, v592);

            v598 = v754;
            v599 = v595;
            v600 = v745;
            v601 = v737;
            if (v597 != 1)
            {
              sub_1000180EC(v599, &qword_100CA6608, &unk_100A31430);
            }
          }

          else
          {
            sub_100073090();

            v596 = v886;
            v598 = v754;
            v600 = v745;
            v601 = v737;
          }

          v640 = *(v587 + v596[6]);
          sub_100051BBC();
          if (sub_100024D10(v600, 1, v593) == 1)
          {
            sub_100095588();
            v641 = sub_100024D10(v600, 1, v593);
            v642 = v749;
            if (v641 != 1)
            {
              sub_1000180EC(v600, &qword_100CA6600, &unk_100A5C400);
            }
          }

          else
          {
            v646 = v799;
            sub_100073090();
            sub_10001B350(v646, 0, 1, v593);
            v642 = v749;
          }

          sub_100051BBC();
          v647 = v909;
          v648 = sub_100024D10(v642, 1, v909);
          v649 = v911;
          if (v648 == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v642, 1, v647) != 1)
            {
              sub_1000180EC(v642, &qword_100CA65F8, &dword_100A31420);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          if (sub_100024D10(v598, 1, v649) == 1)
          {
            v654 = v835;
            sub_1007345F8();
            if (sub_100024D10(v598, 1, v649) != 1)
            {
              sub_1000180EC(v598, &qword_100CA65F0, &unk_100A5C3F0);
            }
          }

          else
          {
            sub_100073090();
            v654 = v835;
          }

          v656 = *(v654 + v596[11]);
          sub_1000E0148(v654, type metadata accessor for ViewState);
          v657 = v815;
          *v815 = v594;
          sub_100073090();
          *(v657 + v596[6]) = v640;
          *(v657 + v596[7]) = 1;
          sub_100051BBC();
          sub_100073090();
          sub_100073090();
          *(v657 + v596[11]) = v656;
          sub_10001B350(v657, 0, 1, v596);
          v658 = v762;
          sub_100073090();
          v659 = v884;
          sub_10001B350(v658, 0, 1, v884);
          v660 = v735;
          sub_1007345F8();
          v661 = v764;
          sub_100051BBC();
          if (sub_100024D10(v661, 1, v659) == 1)
          {
            sub_1000180EC(v661, &qword_100CA65E8, &unk_100A31410);
          }

          else
          {
            sub_1000E0148(v660, type metadata accessor for ModalViewState);
            sub_100073090();
          }

          v668 = v912;
          v669 = v756;
          v670 = v752;
          v671 = v747;
          v672 = v743;
          sub_100073090();
          v673 = *(v586 + 16);
          LODWORD(v910) = *(v586 + 24);
          sub_100051BBC();
          v674 = sub_100024D10(v601, 1, v668);
          v911 = v673;
          if (v674 == 1)
          {
            sub_1007345F8();
            v675 = sub_100024D10(v601, 1, v668);

            v357 = v675 == 1;
            v676 = v760;
            if (!v357)
            {
              sub_1000180EC(v601, &qword_100CA6640, qword_100A32640);
            }
          }

          else
          {
            sub_100073090();

            v676 = v760;
          }

          v686 = *(&v738 + 1);
          sub_100051BBC();
          v687 = v917;
          if (sub_100024D10(v686, 1, v917) == 1)
          {
            sub_1007345F8();
            v688 = sub_100024D10(v686, 1, v687);
            v689 = v766;
            if (v688 != 1)
            {
              sub_1000180EC(v686, &qword_100CA6638, &unk_100A31460);
            }
          }

          else
          {
            sub_100073090();
            v689 = v766;
          }

          sub_100051BBC();
          if (sub_100024D10(v672, 1, v585) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v672, 1, v585) != 1)
            {
              sub_1000180EC(v672, &qword_100CA6630, &unk_100A32630);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v694 = v913;
          if (sub_100024D10(v671, 1, v913) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v671, 1, v694) != 1)
            {
              sub_1000180EC(v671, &qword_100CA6628, &unk_100A31450);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v696 = v914;
          if (sub_100024D10(v670, 1, v914) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v670, 1, v696) != 1)
            {
              sub_1000180EC(v670, &qword_100CA6620, &unk_100A32620);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v698 = v915;
          if (sub_100024D10(v669, 1, v915) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v669, 1, v698) != 1)
            {
              sub_1000180EC(v669, &qword_100CA6618, &unk_100A31440);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          if (sub_100024D10(v676, 1, v596) == 1)
          {
            sub_1007345F8();
            v700 = v689;
            if (sub_100024D10(v676, 1, v596) != 1)
            {
              sub_1000180EC(v676, &qword_100CA6610, &unk_100A32610);
            }
          }

          else
          {
            sub_100073090();
            v700 = v689;
          }

          v702 = v885;
          sub_100073090();
          v703 = *(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
          v704 = *(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
          v705 = *(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
          v706 = *(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
          v707 = v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
          v708 = v586;
          v709 = *(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
          v710 = *(v586 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
          v711 = *(v707 + 16);
          v712 = *(v708 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
          type metadata accessor for MainState._Storage(0);
          swift_allocObject();
          LOBYTE(v726) = v709;
          sub_10003E038(v911, v910, v825, v796, v827, v829, v831, v833, v700, v702, v703, v704, v705, v706, v726, v710, v711, v712, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744);
        }

        else
        {
          sub_100073090();
          v465 = Logger.logObject.getter();
          v466 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v465, v466))
          {
            v467 = swift_slowAlloc();
            *v467 = 0;
            _os_log_impl(&_mh_execute_header, v465, v466, "ActivityActionReducer handling current location activity with authorization and current location", v467, 2u);
          }

          sub_10001B350(v774, 1, 1, v912);
          v468 = v733;
          sub_1007345F8();
          v469 = v910;
          sub_10001B350(v729, 1, 1, v910);
          LODWORD(v907) = *v468;
          LODWORD(v906) = v468[1];
          LODWORD(v905) = v468[2];
          LODWORD(v904) = v468[3];
          v470 = v731;
          sub_100051BBC();
          if (sub_100024D10(v470, 1, v469) == 1)
          {
            v471 = v917;
            v472 = v880;
            (*(v880 + 16))(v768, &v468[v917[8]], v469);
            if (sub_100024D10(v470, 1, v469) != 1)
            {
              sub_1000180EC(v470, &qword_100CAA9F0, qword_100A44F50);
            }
          }

          else
          {
            v472 = v880;
            (*(v880 + 32))(v768, v470, v469);
            v471 = v917;
          }

          v602 = &v468[v471[9]];
          LODWORD(v902) = v468[v471[10]];
          v603 = v471[12];
          LODWORD(v897) = v468[v471[11]];
          LODWORD(v899) = v468[v603];
          v604 = v471[15];
          v901 = *&v468[v471[14]];
          LODWORD(v903) = v468[v604];
          v605 = v471[17];
          LODWORD(v898) = v468[v471[16]];
          LODWORD(v900) = v468[v605];
          v606 = v602[1];
          v895 = *v602;
          v607 = &v468[v471[18]];
          v608 = *v607;
          v609 = *(v607 + 1);
          v610 = *(v607 + 2);
          v611 = *(v607 + 3);
          v612 = *(v607 + 4);
          v613 = *(v607 + 5);
          LODWORD(v896) = v468[v471[19]];
          v614 = v613;

          v615 = v608;
          v616 = v609;
          v617 = v610;
          v618 = v611;
          v619 = v612;
          sub_1000E0148(v468, type metadata accessor for EnvironmentState);
          v620 = v777;
          *v777 = v907;
          v620[1] = v906;
          v620[2] = v905;
          v620[3] = v904;
          (*(v472 + 32))(&v620[v471[8]], v768, v910);
          v621 = &v620[v471[9]];
          *v621 = v895;
          v621[1] = v606;
          v620[v471[10]] = v902;
          v620[v471[11]] = v897;
          v620[v471[12]] = v899;
          v620[v471[13]] = 0;
          *&v620[v471[14]] = v901;
          v620[v471[15]] = v903;
          v620[v471[16]] = v898;
          v620[v471[17]] = v900;
          v622 = &v620[v471[18]];
          *v622 = v608;
          v622[1] = v609;
          v622[2] = v610;
          v622[3] = v611;
          v622[4] = v612;
          v622[5] = v613;
          v620[v471[19]] = v896;
          sub_10001B350(v620, 0, 1, v471);
          v623 = v887;
          sub_10001B350(v784, 1, 1, v887);
          sub_10001B350(v791, 1, 1, v913);
          sub_10001B350(v803, 1, 1, v914);
          sub_10001B350(v809, 1, 1, v915);
          v624 = v916;
          v907 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
          v625 = v836;
          sub_1007345F8();
          v626 = v881;
          CurrentLocation.identifier.getter();
          v627 = type metadata accessor for Location.Identifier();
          sub_10001B350(v626, 0, 1, v627);
          type metadata accessor for LocationViewerViewState._Storage(0);
          swift_allocObject();
          v628 = sub_10003DDB8(v626, 0, 0, 2, 0, 0);
          v629 = v781;
          *v781 = v628;
          v630 = v882;
          swift_storeEnumTagMultiPayload();
          sub_10001B350(v629, 0, 1, v630);
          v631 = type metadata accessor for SearchViewState(0);
          sub_10001B350(v786, 1, 1, v631);
          sub_10001B350(v794, 1, 1, v909);
          sub_10001B350(v806, 1, 1, v911);
          v632 = *v625;
          v633 = v741;
          sub_100095588();
          if (sub_100024D10(v633, 1, v630) == 1)
          {
            v634 = v886;
            sub_1007345F8();
            v635 = sub_100024D10(v633, 1, v630);

            v636 = v755;
            v637 = v633;
            v638 = v746;
            v639 = v738;
            if (v635 != 1)
            {
              sub_1000180EC(v637, &qword_100CA6608, &unk_100A31430);
            }
          }

          else
          {
            sub_100073090();

            v634 = v886;
            v636 = v755;
            v638 = v746;
            v639 = v738;
          }

          v643 = *(v625 + v634[6]);
          sub_1000180EC(v781, &qword_100CA6608, &unk_100A31430);
          sub_1000E0148(v837, &type metadata accessor for CurrentLocation);
          sub_100051BBC();
          if (sub_100024D10(v638, 1, v631) == 1)
          {
            sub_100095588();
            v644 = sub_100024D10(v638, 1, v631);
            v645 = v751;
            if (v644 != 1)
            {
              sub_1000180EC(v638, &qword_100CA6600, &unk_100A5C400);
            }
          }

          else
          {
            v650 = v800;
            sub_100073090();
            sub_10001B350(v650, 0, 1, v631);
            v645 = v751;
          }

          sub_100051BBC();
          v651 = v909;
          v652 = sub_100024D10(v645, 1, v909);
          v653 = v911;
          if (v652 == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v645, 1, v651) != 1)
            {
              sub_1000180EC(v645, &qword_100CA65F8, &dword_100A31420);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          if (sub_100024D10(v636, 1, v653) == 1)
          {
            v655 = v836;
            sub_1007345F8();
            if (sub_100024D10(v636, 1, v653) != 1)
            {
              sub_1000180EC(v636, &qword_100CA65F0, &unk_100A5C3F0);
            }
          }

          else
          {
            sub_100073090();
            v655 = v836;
          }

          v662 = *(v655 + v634[11]);
          sub_1000E0148(v655, type metadata accessor for ViewState);
          v663 = v817;
          *v817 = v632;
          sub_100073090();
          *(v663 + v634[6]) = v643;
          *(v663 + v634[7]) = 1;
          sub_100051BBC();
          sub_100073090();
          sub_100073090();
          *(v663 + v634[11]) = v662;
          sub_10001B350(v663, 0, 1, v634);
          v664 = v763;
          sub_100073090();
          v665 = v884;
          sub_10001B350(v664, 0, 1, v884);
          v666 = v736;
          sub_1007345F8();
          v667 = v765;
          sub_100051BBC();
          if (sub_100024D10(v667, 1, v665) == 1)
          {
            sub_1000180EC(v667, &qword_100CA65E8, &unk_100A31410);
          }

          else
          {
            sub_1000E0148(v666, type metadata accessor for ModalViewState);
            sub_100073090();
          }

          v677 = v912;
          v678 = v757;
          v679 = v753;
          v680 = v748;
          v681 = v744;
          sub_100073090();
          v682 = *(v624 + 16);
          LODWORD(v910) = *(v624 + 24);
          sub_100051BBC();
          v683 = sub_100024D10(v639, 1, v677);
          v911 = v682;
          if (v683 == 1)
          {
            sub_1007345F8();
            v684 = sub_100024D10(v639, 1, v677);

            v357 = v684 == 1;
            v685 = v761;
            if (!v357)
            {
              sub_1000180EC(v639, &qword_100CA6640, qword_100A32640);
            }
          }

          else
          {
            sub_100073090();

            v685 = v761;
          }

          v690 = v739;
          sub_100051BBC();
          v691 = v917;
          if (sub_100024D10(v690, 1, v917) == 1)
          {
            sub_1007345F8();
            v692 = sub_100024D10(v690, 1, v691);
            v693 = v767;
            if (v692 != 1)
            {
              sub_1000180EC(v690, &qword_100CA6638, &unk_100A31460);
            }
          }

          else
          {
            sub_100073090();
            v693 = v767;
          }

          sub_100051BBC();
          if (sub_100024D10(v681, 1, v623) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v681, 1, v623) != 1)
            {
              sub_1000180EC(v681, &qword_100CA6630, &unk_100A32630);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v695 = v913;
          if (sub_100024D10(v680, 1, v913) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v680, 1, v695) != 1)
            {
              sub_1000180EC(v680, &qword_100CA6628, &unk_100A31450);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v697 = v914;
          if (sub_100024D10(v679, 1, v914) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v679, 1, v697) != 1)
            {
              sub_1000180EC(v679, &qword_100CA6620, &unk_100A32620);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v699 = v915;
          if (sub_100024D10(v678, 1, v915) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v678, 1, v699) != 1)
            {
              sub_1000180EC(v678, &qword_100CA6618, &unk_100A31440);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          if (sub_100024D10(v685, 1, v634) == 1)
          {
            sub_1007345F8();
            v701 = v693;
            if (sub_100024D10(v685, 1, v634) != 1)
            {
              sub_1000180EC(v685, &qword_100CA6610, &unk_100A32610);
            }
          }

          else
          {
            sub_100073090();
            v701 = v693;
          }

          v713 = v885;
          sub_100073090();
          v714 = *(v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
          v715 = *(v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
          v716 = *(v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
          v717 = *(v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
          v718 = v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
          v719 = v624;
          v720 = *(v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
          v721 = *(v624 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
          v722 = *(v718 + 16);
          v723 = *(v719 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
          type metadata accessor for MainState._Storage(0);
          swift_allocObject();
          LOBYTE(v726) = v720;
          sub_10003E038(v911, v910, v826, v797, v828, v830, v832, v834, v701, v713, v714, v715, v716, v717, v726, v721, v722, v723, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744);
        }

        goto LABEL_234;
      }

      v455 = Logger.logObject.getter();
      v456 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v455, v456))
      {
        v457 = swift_slowAlloc();
        *v457 = 0;
        _os_log_impl(&_mh_execute_header, v455, v456, "ActivityActionReducer handling current location activity without authorization", v457, 2u);
      }

      v458 = *(v887 + 20);
      v892 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
      v459 = v795;
      sub_1003DFA4C(*(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + v458), v795);
      v460 = 1;
      LODWORD(v906) = sub_100024D10(v459, 1, v793);
      if (v906 == 1)
      {
        sub_1000180EC(v459, &qword_100CA6890, &qword_100A31680);
        v473 = type metadata accessor for Location.Identifier();
        sub_10001B350(v841, 1, 1, v473);
        type metadata accessor for ListViewState._Storage();
        swift_allocObject();
        v474 = sub_100042DA8(0, 0, 1, 0, 0, 0, 0xE000000000000000, 0, 0, 1, 0, 0, 1, 0);
        v475 = objc_opt_self();
        v908 = v474;

        v476 = [v475 currentDevice];
        v477 = [v476 userInterfaceIdiom];

        v464 = v910;
        if (v477 == 1)
        {
LABEL_84:
          LODWORD(v907) = v460;

          sub_10001B350(v839, 1, 1, v912);
          v478 = v772;
          sub_1007345F8();
          sub_10001B350(v769, 1, 1, v464);
          LODWORD(v905) = *v478;
          LODWORD(v904) = v478[1];
          LODWORD(v903) = v478[2];
          LODWORD(v902) = v478[3];
          v479 = v771;
          sub_100051BBC();
          v480 = sub_100024D10(v479, 1, v464);
          v481 = v917;
          v482 = v880;
          if (v480 == 1)
          {
            (*(v880 + 16))(v838, &v478[v917[8]], v464);
            if (sub_100024D10(v479, 1, v464) != 1)
            {
              sub_1000180EC(v479, &qword_100CAA9F0, qword_100A44F50);
            }
          }

          else
          {
            (*(v880 + 32))(v838, v479, v464);
          }

          v483 = &v478[v481[9]];
          LODWORD(v900) = v478[v481[10]];
          v484 = v481[12];
          LODWORD(v895) = v478[v481[11]];
          LODWORD(v897) = v478[v484];
          v485 = v481[15];
          v899 = *&v478[v481[14]];
          LODWORD(v901) = v478[v485];
          v486 = v481[17];
          LODWORD(v896) = v478[v481[16]];
          LODWORD(v898) = v478[v486];
          v487 = v483[1];
          v893 = *v483;
          v488 = &v478[v481[18]];
          v490 = *v488;
          v489 = *(v488 + 1);
          v491 = *(v488 + 2);
          v492 = *(v488 + 3);
          v493 = *(v488 + 4);
          v494 = *(v488 + 5);
          LODWORD(v894) = v478[v481[19]];
          v495 = v494;

          v496 = v490;
          v497 = v489;
          v498 = v491;
          v499 = v492;
          v500 = v493;
          sub_1000E0148(v478, type metadata accessor for EnvironmentState);
          v501 = v840;
          *v840 = v905;
          v501[1] = v904;
          v501[2] = v903;
          v501[3] = v902;
          (*(v482 + 32))(&v501[v481[8]], v838, v910);
          v502 = &v501[v481[9]];
          *v502 = v893;
          v502[1] = v487;
          v501[v481[10]] = v900;
          v501[v481[11]] = v895;
          v501[v481[12]] = v897;
          v501[v481[13]] = 0;
          *&v501[v481[14]] = v899;
          v501[v481[15]] = v901;
          v501[v481[16]] = v896;
          v501[v481[17]] = v898;
          v503 = &v501[v481[18]];
          *v503 = v490;
          v503[1] = v489;
          v503[2] = v491;
          v503[3] = v492;
          v503[4] = v493;
          v503[5] = v494;
          v501[v481[19]] = v894;
          sub_10001B350(v501, 0, 1, v481);
          sub_10001B350(v842, 1, 1, v887);
          sub_10001B350(v843, 1, 1, v913);
          sub_10001B350(v847, 1, 1, v914);
          sub_10001B350(v849, 1, 1, v915);
          v504 = v916;
          v905 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
          v505 = v858;
          sub_1007345F8();
          v506 = v881;
          sub_100073090();
          type metadata accessor for LocationViewerViewState._Storage(0);
          swift_allocObject();
          v507 = sub_10003DDB8(v506, 0, 0, 2, 0, 0);
          v508 = v787;
          *v787 = v507;
          v509 = v882;
          swift_storeEnumTagMultiPayload();
          sub_10001B350(v508, 0, 1, v509);
          v510 = type metadata accessor for SearchViewState(0);
          sub_10001B350(v798, 1, 1, v510);
          v511 = v909;
          sub_10001B350(v844, 1, 1, v909);
          sub_10001B350(v848, 1, 1, v911);
          v512 = v788;
          sub_100051BBC();
          if (sub_100024D10(v512, 1, v509) == 1)
          {
            v513 = v886;
            sub_1007345F8();
            v514 = sub_100024D10(v512, 1, v509);
            v515 = v512;
            v516 = v514;

            v517 = v818;
            v518 = v778;
            if (v516 != 1)
            {
              sub_1000180EC(v515, &qword_100CA6608, &unk_100A31430);
            }
          }

          else
          {
            sub_100073090();

            v513 = v886;
            v517 = v818;
            v518 = v778;
          }

          v519 = *(v505 + v513[6]);
          v520 = v804;
          sub_100051BBC();
          if (sub_100024D10(v520, 1, v510) == 1)
          {
            sub_100095588();
            v521 = sub_100024D10(v520, 1, v510);
            v522 = v810;
            if (v521 != 1)
            {
              sub_1000180EC(v520, &qword_100CA6600, &unk_100A5C400);
            }
          }

          else
          {
            v523 = v846;
            sub_100073090();
            sub_10001B350(v523, 0, 1, v510);
            v522 = v810;
          }

          sub_100051BBC();
          v524 = sub_100024D10(v522, 1, v511);
          v525 = v911;
          v526 = v823;
          if (v524 == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v522, 1, v511) != 1)
            {
              sub_1000180EC(v522, &qword_100CA65F8, &dword_100A31420);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          if (sub_100024D10(v517, 1, v525) == 1)
          {
            v527 = v858;
            sub_1007345F8();
            sub_1000E0148(v527, type metadata accessor for ViewState);
            if (sub_100024D10(v517, 1, v525) != 1)
            {
              sub_1000180EC(v517, &qword_100CA65F0, &unk_100A5C3F0);
            }
          }

          else
          {
            sub_1000E0148(v858, type metadata accessor for ViewState);
            sub_100073090();
          }

          v528 = v906 != 1;
          v529 = v852;
          *v852 = v908;
          sub_100073090();
          *(v529 + v513[6]) = v519;
          *(v529 + v513[7]) = v528;
          sub_100051BBC();
          sub_100073090();
          sub_100073090();

          *(v529 + v513[11]) = v907;
          sub_10001B350(v529, 0, 1, v513);
          v530 = v822;
          sub_100073090();
          v531 = v884;
          sub_10001B350(v530, 0, 1, v884);
          v532 = v775;
          sub_1007345F8();
          sub_100051BBC();
          if (sub_100024D10(v526, 1, v531) == 1)
          {
            sub_1000180EC(v526, &qword_100CA65E8, &unk_100A31410);
          }

          else
          {
            sub_1000E0148(v532, type metadata accessor for ModalViewState);
            sub_100073090();
          }

          v533 = v801;
          v534 = v782;
          sub_100073090();
          v911 = *(v504 + 16);
          LODWORD(v910) = *(v504 + 24);
          sub_100051BBC();
          v535 = v912;
          v536 = sub_100024D10(v518, 1, v912);
          v537 = v819;
          if (v536 == 1)
          {
            sub_1007345F8();
            v538 = sub_100024D10(v518, 1, v535);

            v357 = v538 == 1;
            v539 = v821;
            v540 = v814;
            if (!v357)
            {
              sub_1000180EC(v518, &qword_100CA6640, qword_100A32640);
            }
          }

          else
          {
            sub_100073090();

            v539 = v821;
            v540 = v814;
          }

          sub_100051BBC();
          v541 = v534;
          v542 = v534;
          v543 = v917;
          if (sub_100024D10(v541, 1, v917) == 1)
          {
            sub_1007345F8();
            v544 = sub_100024D10(v542, 1, v543);
            v545 = v807;
            if (v544 != 1)
            {
              sub_1000180EC(v542, &qword_100CA6638, &unk_100A31460);
            }
          }

          else
          {
            sub_100073090();
            v545 = v807;
          }

          sub_100051BBC();
          v546 = v887;
          if (sub_100024D10(v533, 1, v887) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v533, 1, v546) != 1)
            {
              sub_1000180EC(v533, &qword_100CA6630, &unk_100A32630);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v547 = v913;
          if (sub_100024D10(v545, 1, v913) == 1)
          {
            sub_1007345F8();
            v548 = sub_100024D10(v545, 1, v547);
            v549 = v824;
            if (v548 != 1)
            {
              sub_1000180EC(v545, &qword_100CA6628, &unk_100A31450);
            }
          }

          else
          {
            sub_100073090();
            v549 = v824;
          }

          sub_100051BBC();
          v550 = v914;
          if (sub_100024D10(v540, 1, v914) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v540, 1, v550) != 1)
            {
              sub_1000180EC(v540, &qword_100CA6620, &unk_100A32620);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          v551 = v915;
          if (sub_100024D10(v537, 1, v915) == 1)
          {
            sub_1007345F8();
            if (sub_100024D10(v537, 1, v551) != 1)
            {
              sub_1000180EC(v537, &qword_100CA6618, &unk_100A31440);
            }
          }

          else
          {
            sub_100073090();
          }

          sub_100051BBC();
          if (sub_100024D10(v539, 1, v513) == 1)
          {
            sub_1007345F8();
            v552 = v549;
            if (sub_100024D10(v539, 1, v513) != 1)
            {
              sub_1000180EC(v539, &qword_100CA6610, &unk_100A32610);
            }
          }

          else
          {
            sub_100073090();
            v552 = v549;
          }

          v553 = v885;
          sub_100073090();
          v554 = *(v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
          v555 = *(v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
          v556 = *(v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
          v557 = *(v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
          v558 = v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
          v559 = v504;
          v560 = *(v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
          v561 = *(v504 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
          v562 = *(v558 + 16);
          v563 = *(v559 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
          type metadata accessor for MainState._Storage(0);
          swift_allocObject();
          LOBYTE(v727) = v560;
          sub_10003E038(v911, v910, v853, v845, v854, v855, v856, v857, v552, v553, v554, v555, v556, v557, v727, v561, v562, v563, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744);
          goto LABEL_234;
        }
      }

      else
      {
        v461 = v750;
        sub_100073090();
        type metadata accessor for ListViewState._Storage();
        swift_allocObject();
        v908 = sub_100042DA8(0, 0, 1, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0, 0, 1, 0);

        v462 = v841;
        SavedLocation.identifier.getter();
        sub_1000E0148(v461, &type metadata accessor for SavedLocation);
        v463 = type metadata accessor for Location.Identifier();
        sub_10001B350(v462, 0, 1, v463);
        v464 = v910;
      }

      v460 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view + *(v886 + 44));
      goto LABEL_84;
    }
  }

  v367 = Logger.logObject.getter();
  v368 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v367, v368))
  {
    v369 = swift_slowAlloc();
    *v369 = 0;
    _os_log_impl(&_mh_execute_header, v367, v368, "ActivityActionReducer handling current location activity with undetermined authorization", v369, 2u);
  }

  sub_10001B350(v889, 1, 1, v912);
  sub_1007345F8();
  v370 = v910;
  sub_10001B350(v261, 1, 1, v910);
  LODWORD(v858) = *v277;
  LODWORD(v857) = v277[1];
  LODWORD(v856) = v277[2];
  LODWORD(v855) = v277[3];
  v371 = v860;
  sub_100051BBC();
  if (sub_100024D10(v371, 1, v370) == 1)
  {
    v372 = v917;
    v373 = v880;
    (*(v880 + 16))(v888, &v277[v917[8]], v370);
    if (sub_100024D10(v371, 1, v370) != 1)
    {
      sub_1000180EC(v371, &qword_100CAA9F0, qword_100A44F50);
    }
  }

  else
  {
    v373 = v880;
    (*(v880 + 32))(v888, v371, v370);
    v372 = v917;
  }

  v374 = &v277[v372[9]];
  LODWORD(v860) = v277[v372[10]];
  v375 = v372[12];
  LODWORD(v850) = v277[v372[11]];
  LODWORD(v852) = v277[v375];
  v376 = v372[15];
  v854 = *&v277[v372[14]];
  LODWORD(v880) = v277[v376];
  v377 = v372[17];
  LODWORD(v851) = v277[v372[16]];
  LODWORD(v853) = v277[v377];
  v378 = v374[1];
  v848 = *v374;
  v379 = &v277[v372[18]];
  v380 = *v379;
  v381 = *(v379 + 1);
  v383 = *(v379 + 2);
  v382 = *(v379 + 3);
  v385 = *(v379 + 4);
  v384 = *(v379 + 5);
  LODWORD(v849) = v277[v372[19]];
  v386 = v384;

  v387 = v380;
  v388 = v381;
  v389 = v383;
  v390 = v382;
  v391 = v385;
  sub_1000E0148(v277, type metadata accessor for EnvironmentState);
  v392 = v890;
  *v890 = v858;
  v392[1] = v857;
  v392[2] = v856;
  v392[3] = v855;
  (*(v373 + 32))(&v392[v372[8]], v888, v910);
  v393 = &v392[v372[9]];
  *v393 = v848;
  v393[1] = v378;
  v392[v372[10]] = v860;
  v392[v372[11]] = v850;
  v392[v372[12]] = v852;
  v392[v372[13]] = v873 & 1;
  *&v392[v372[14]] = v854;
  v392[v372[15]] = v880;
  v392[v372[16]] = v851;
  v392[v372[17]] = v853;
  v394 = &v392[v372[18]];
  *v394 = v380;
  v394[1] = v381;
  v394[2] = v383;
  v394[3] = v382;
  v394[4] = v385;
  v394[5] = v384;
  v392[v372[19]] = v849;
  sub_10001B350(v392, 0, 1, v372);
  v395 = v887;
  sub_10001B350(v891, 1, 1, v887);
  sub_10001B350(v893, 1, 1, v913);
  sub_10001B350(v896, 1, 1, v914);
  sub_10001B350(v899, 1, 1, v915);
  v396 = v916;
  v888 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  v397 = v908;
  sub_1007345F8();
  v398 = type metadata accessor for Location.Identifier();
  v399 = v881;
  sub_10001B350(v881, 1, 1, v398);
  type metadata accessor for LocationViewerViewState._Storage(0);
  swift_allocObject();
  v400 = sub_10003DDB8(v399, 0, 0, 2, 0, 0);
  v401 = v864;
  *v864 = v400;
  v402 = v882;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v401, 0, 1, v402);
  v403 = type metadata accessor for SearchViewState(0);
  sub_10001B350(v892, 1, 1, v403);
  sub_10001B350(v894, 1, 1, v909);
  sub_10001B350(v898, 1, 1, v911);
  v404 = *v397;
  v405 = v865;
  sub_100051BBC();
  if (sub_100024D10(v405, 1, v402) == 1)
  {
    v406 = v886;
    sub_1007345F8();
    v407 = sub_100024D10(v405, 1, v402);

    v408 = v405;
    v409 = v872;
    v410 = v868;
    v411 = v862;
    if (v407 != 1)
    {
      sub_1000180EC(v408, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_100073090();

    v406 = v886;
    v409 = v872;
    v410 = v868;
    v411 = v862;
  }

  v412 = *(v397 + v406[6]);
  sub_100051BBC();
  if (sub_100024D10(v410, 1, v403) == 1)
  {
    sub_100095588();
    v413 = sub_100024D10(v410, 1, v403);
    v414 = v870;
    if (v413 != 1)
    {
      sub_1000180EC(v410, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    v415 = v897;
    sub_100073090();
    sub_10001B350(v415, 0, 1, v403);
    v414 = v870;
  }

  sub_100051BBC();
  v416 = v909;
  v417 = sub_100024D10(v414, 1, v909);
  v418 = v911;
  if (v417 == 1)
  {
    sub_1007345F8();
    if (sub_100024D10(v414, 1, v416) != 1)
    {
      sub_1000180EC(v414, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_100073090();
  }

  sub_100051BBC();
  if (sub_100024D10(v409, 1, v418) == 1)
  {
    v419 = v908;
    sub_1007345F8();
    if (sub_100024D10(v409, 1, v418) != 1)
    {
      sub_1000180EC(v409, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_100073090();
    v419 = v908;
  }

  v420 = *(v419 + v406[11]);
  sub_1000E0148(v419, type metadata accessor for ViewState);
  v421 = v902;
  *v902 = v404;
  sub_100073090();
  *(v421 + v406[6]) = v412;
  *(v421 + v406[7]) = 1;
  sub_100051BBC();
  sub_100073090();
  sub_100073090();
  *(v421 + v406[11]) = v420;
  sub_10001B350(v421, 0, 1, v406);
  v422 = v877;
  sub_100073090();
  v423 = v884;
  sub_10001B350(v422, 0, 1, v884);
  v424 = v861;
  sub_1007345F8();
  v425 = v878;
  sub_100051BBC();
  if (sub_100024D10(v425, 1, v423) == 1)
  {
    sub_1000180EC(v425, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1000E0148(v424, type metadata accessor for ModalViewState);
    sub_100073090();
  }

  v426 = v874;
  v427 = v871;
  v428 = v867;
  sub_100073090();
  v429 = *(v396 + 16);
  LODWORD(v911) = *(v396 + 24);
  sub_100051BBC();
  v430 = v912;
  v431 = sub_100024D10(v411, 1, v912);
  v910 = v429;
  if (v431 == 1)
  {
    sub_1007345F8();
    v432 = sub_100024D10(v411, 1, v430);

    v357 = v432 == 1;
    v433 = v869;
    if (!v357)
    {
      sub_1000180EC(v411, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_100073090();

    v433 = v869;
  }

  v434 = v863;
  sub_100051BBC();
  v435 = v917;
  if (sub_100024D10(v434, 1, v917) == 1)
  {
    sub_1007345F8();
    v436 = sub_100024D10(v434, 1, v435);
    v437 = v879;
    if (v436 != 1)
    {
      sub_1000180EC(v434, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_100073090();
    v437 = v879;
  }

  sub_100051BBC();
  if (sub_100024D10(v428, 1, v395) == 1)
  {
    sub_1007345F8();
    if (sub_100024D10(v428, 1, v395) != 1)
    {
      sub_1000180EC(v428, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_100073090();
  }

  sub_100051BBC();
  v438 = v913;
  if (sub_100024D10(v433, 1, v913) == 1)
  {
    sub_1007345F8();
    if (sub_100024D10(v433, 1, v438) != 1)
    {
      sub_1000180EC(v433, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_100073090();
  }

  sub_100051BBC();
  v439 = v914;
  if (sub_100024D10(v427, 1, v914) == 1)
  {
    sub_1007345F8();
    if (sub_100024D10(v427, 1, v439) != 1)
    {
      sub_1000180EC(v427, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_100073090();
  }

  sub_100051BBC();
  v440 = v915;
  if (sub_100024D10(v426, 1, v915) == 1)
  {
    sub_1007345F8();
    if (sub_100024D10(v426, 1, v440) != 1)
    {
      sub_1000180EC(v426, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_100073090();
  }

  v441 = v876;
  sub_100051BBC();
  if (sub_100024D10(v441, 1, v406) == 1)
  {
    sub_1007345F8();
    v442 = v437;
    if (sub_100024D10(v441, 1, v406) != 1)
    {
      sub_1000180EC(v441, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_100073090();
    v442 = v437;
  }

  v443 = v885;
  sub_100073090();
  v444 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v445 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v446 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v447 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v448 = v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  v449 = v396;
  v450 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v451 = *(v396 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v452 = *(v448 + 16);
  v453 = *(v449 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v726) = v450;
  sub_10003E038(v910, v911, v903, v895, v904, v905, v906, v907, v442, v443, v444, v445, v446, v447, v726, v451, v452, v453, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739, v740, v741, v742, v743, v744);
LABEL_234:
  v724 = v454;

  return v724;
}

uint64_t sub_1007345F8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100734650@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = (a1 + *(type metadata accessor for VisibilityComponent(0) + 20));
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v10[5];
  v29 = v10[4];
  v30 = v13;

  CurrentWeather.visibility.getter();
  v28 = Measurement<>.formattedAndClampedVisibilityWithUnit.getter();
  v17 = v16;
  (*(v6 + 8))(v9, v4);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0x6C6C69662E657965;
  *(a2 + 24) = 0xE800000000000000;
  *(a2 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for LocationComponentContainerViewModel(0);
  v19 = (a2 + v18[5]);
  *v19 = v28;
  v19[1] = v17;
  v20 = v29;
  v19[2] = v30;
  v19[3] = v14;
  v19[4] = v20;
  v19[5] = v15;
  type metadata accessor for LocationComponentViewModel(0);
  swift_storeEnumTagMultiPayload();
  v21 = a2 + v18[8];
  v22 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
  v23 = enum case for DetailCondition.visibility(_:);
  v24 = type metadata accessor for DetailCondition();
  (*(*(v24 - 8) + 104))(v21, v23, v24);
  *(v21 + v22) = 0;
  v25 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v21, 0, 1, v25);
  sub_10013D288();
  result = Dictionary.init(dictionaryLiteral:)();
  *(a2 + v18[6]) = 256;
  *(a2 + v18[7]) = result;
  return result;
}

uint64_t sub_1007348DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1000B8384(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for ContentStatusBanner(0);
    sub_10010A338(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for ContentStatusBanner(0);
    v11 = a4;
    v12 = 1;
  }

  return sub_10001B350(v11, v12, 1, v13);
}

uint64_t sub_10073498C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000100ABE610 == a2)
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

uint64_t sub_100734A28(void *a1, uint64_t a2)
{
  sub_10022C350(&qword_100CD5CB0, &qword_100A7E5B8);
  sub_10000FB48();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_1000161C0(a1, a1[3]);
  sub_100734E2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10022C350(&qword_100CD5C98, &qword_100A7E5B0);
  sub_100734F28();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v2);
}

void *sub_100734B74(void *a1)
{
  sub_10022C350(&qword_100CD5C88, &qword_100A7E5A8);
  sub_10000FB48();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  v9 = sub_1000161C0(a1, a1[3]);
  sub_100734E2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_10022C350(&qword_100CD5C98, &qword_100A7E5B0);
    sub_100734E80();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v2);
    v9 = v11[1];
    sub_100006F14(a1);
  }

  return v9;
}

uint64_t sub_100734CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10073498C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100734D18(uint64_t a1)
{
  v2 = sub_100734E2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100734D54(uint64_t a1)
{
  v2 = sub_100734E2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100734D90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100734B74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_100734DD8(uint64_t *a1@<X8>)
{
  sub_100780D78();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_100734E2C()
{
  result = qword_100CD5C90;
  if (!qword_100CD5C90)
  {
    result = swift_getWitnessTable(aM_78, &type metadata for ContentStatusBannerState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5C90);
  }

  return result;
}

unint64_t sub_100734E80()
{
  result = qword_100CD5CA0;
  if (!qword_100CD5CA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD5C98, &qword_100A7E5B0);
    v4[0] = sub_1006E3958();
    v4[1] = sub_100734FD0(&qword_100CD5CA8, aA0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CD5CA0);
  }

  return result;
}

unint64_t sub_100734F28()
{
  result = qword_100CD5CB8;
  if (!qword_100CD5CB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD5C98, &qword_100A7E5B0);
    v4[0] = sub_1006E3A00();
    v4[1] = sub_100734FD0(&qword_100CD5CC0, aY0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_100CD5CB8);
  }

  return result;
}

uint64_t sub_100734FD0(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for ContentStatusBanner(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentStatusBannerState.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1007350C4()
{
  result = qword_100CD5CC8;
  if (!qword_100CD5CC8)
  {
    result = swift_getWitnessTable(byte_100A7E65C, &type metadata for ContentStatusBannerState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5CC8);
  }

  return result;
}

unint64_t sub_10073511C()
{
  result = qword_100CD5CD0;
  if (!qword_100CD5CD0)
  {
    result = swift_getWitnessTable(byte_100A7E5CC, &type metadata for ContentStatusBannerState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5CD0);
  }

  return result;
}

unint64_t sub_100735174()
{
  result = qword_100CD5CD8;
  if (!qword_100CD5CD8)
  {
    result = swift_getWitnessTable(byte_100A7E5F4, &type metadata for ContentStatusBannerState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5CD8);
  }

  return result;
}

uint64_t sub_1007351C8()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Domain();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [objc_opt_self() currentDevice];
  v13 = [v12 userInterfaceIdiom];

  (*(v8 + 104))(v11, enum case for Domain.standard(_:), v6);
  (*(v2 + 104))(v5, enum case for Access.public(_:), v0);
  v15[15] = v13 == 1;
  sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  swift_allocObject();
  result = Setting.init(_:defaultValue:domain:access:)();
  qword_100D90840 = result;
  return result;
}

uint64_t sub_1007353EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74617265706D6574 && a2 == 0xEF74696E55657275;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x8000000100ADC460 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1007355A0(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100735648(void *a1, void *a2)
{
  v4 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10022C350(&qword_100CACF38, &unk_100A47BB0);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = (&v35 - v9);
  v11 = sub_10022C350(&qword_100CB4978, &qword_100A7E7B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = *a1 == *a2 && a1[1] == a2[1];
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  v16 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_30;
    }

    v19 = a1[4] == a2[4] && v17 == v18;
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v18)
  {
    goto LABEL_30;
  }

  v20 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
  v21 = *(v20 + 28);
  v22 = *(v11 + 48);
  sub_1001163D0(a1 + v21, v14);
  sub_1001163D0(a2 + v21, &v14[v22]);
  sub_10000394C(v14);
  if (!v15)
  {
    sub_1001163D0(v14, v10);
    sub_10000394C(&v14[v22]);
    if (!v23)
    {
      sub_1003227B4(&v14[v22], v7);
      v28 = *v10 == *v7 && v10[1] == v7[1];
      if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v29 = sub_1003CD3FC(v10 + *(v4 + 20), v7 + *(v4 + 20));
        sub_10073616C(v7, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
        sub_10073616C(v10, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
        sub_1000180EC(v14, &qword_100CACF38, &unk_100A47BB0);
        if (v29)
        {
          goto LABEL_38;
        }

LABEL_30:
        v26 = 0;
        return v26 & 1;
      }

      sub_10073616C(v7, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
      sub_10073616C(v10, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
      v24 = &qword_100CACF38;
      v25 = &unk_100A47BB0;
LABEL_29:
      sub_1000180EC(v14, v24, v25);
      goto LABEL_30;
    }

    sub_10073616C(v10, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
LABEL_28:
    v24 = &qword_100CB4978;
    v25 = &qword_100A7E7B0;
    goto LABEL_29;
  }

  sub_10000394C(&v14[v22]);
  if (!v15)
  {
    goto LABEL_28;
  }

  sub_1000180EC(v14, &qword_100CACF38, &unk_100A47BB0);
LABEL_38:
  v30 = *(v20 + 32);
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  if (v31 == *v33 && v32 == v33[1])
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v26 & 1;
}

uint64_t sub_10073598C(void *a1)
{
  v3 = sub_10022C350(&qword_100CD5D98, &qword_100A7E7C0);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_100736044();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_100018594();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    sub_100018594();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    sub_100018594();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
    v10[12] = 3;
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
    sub_1007361C4(&qword_100CD5DA0, byte_100A47C78);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[11] = 4;
    sub_100018594();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_100735B84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_10022C350(&qword_100CACF38, &unk_100A47BB0);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = v25 - v5;
  sub_10022C350(&qword_100CD5D80, &qword_100A7E7B8);
  sub_1000037C4();
  v27 = v8;
  v28 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000161C0(a1, a1[3]);
  sub_100736044();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v31 = 0;
  *v13 = sub_100008DA4(&v31);
  v13[1] = v14;
  v25[2] = v14;
  v30 = 1;
  v13[2] = sub_100008DA4(&v30);
  v13[3] = v15;
  v29[2] = 2;
  v25[1] = 0;
  v13[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13[5] = v16;
  type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  v29[1] = 3;
  sub_1007361C4(&qword_100CD5D90, byte_100A47CA0);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100736098(v6, v13 + *(v10 + 28));
  v29[0] = 4;
  v17 = sub_100008DA4(v29);
  v25[0] = v18;
  v19 = v17;
  v20 = sub_1000109DC();
  v21(v20);
  v22 = (v13 + *(v10 + 32));
  v23 = v25[0];
  *v22 = v19;
  v22[1] = v23;
  sub_100736108(v13, v26);
  sub_100006F14(a1);
  return sub_10073616C(v13, type metadata accessor for FeelsLikeComponentPreprocessedDataModel);
}

uint64_t sub_100735F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007353EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100735F98(uint64_t a1)
{
  v2 = sub_100736044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100735FD4(uint64_t a1)
{
  v2 = sub_100736044();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100736044()
{
  result = qword_100CD5D88;
  if (!qword_100CD5D88)
  {
    result = swift_getWitnessTable(aE_70, &type metadata for FeelsLikeComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5D88);
  }

  return result;
}

uint64_t sub_100736098(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CACF38, &unk_100A47BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100736108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10073616C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1007361C4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeelsLikeComponentPreprocessedDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1007362E8()
{
  result = qword_100CD5DA8;
  if (!qword_100CD5DA8)
  {
    result = swift_getWitnessTable(byte_100A7E864, &type metadata for FeelsLikeComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5DA8);
  }

  return result;
}

unint64_t sub_100736340()
{
  result = qword_100CD5DB0;
  if (!qword_100CD5DB0)
  {
    result = swift_getWitnessTable(asc_100A7E7D4, &type metadata for FeelsLikeComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5DB0);
  }

  return result;
}

unint64_t sub_100736398()
{
  result = qword_100CD5DB8;
  if (!qword_100CD5DB8)
  {
    result = swift_getWitnessTable(byte_100A7E7FC, &type metadata for FeelsLikeComponentPreprocessedDataModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD5DB8);
  }

  return result;
}

uint64_t sub_1007363EC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(35, v7, v8);
  qword_100D90848 = result;
  return result;
}

uint64_t sub_10073653C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(34, v7, v8);
  qword_100D90850 = result;
  return result;
}

uint64_t sub_10073668C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(33, v7, v8);
  qword_100D90858 = result;
  return result;
}

uint64_t sub_1007367DC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(29, v7, v8);
  qword_100D90860 = result;
  return result;
}

uint64_t sub_10073692C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(38, v7, v8);
  qword_100D90868 = result;
  return result;
}

uint64_t sub_100736A7C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(37, v7, v8);
  qword_100D90870 = result;
  return result;
}

uint64_t sub_100736BCC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(33, v7, v8);
  qword_100D90878 = result;
  return result;
}

uint64_t sub_100736D1C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(24, v7, v8);
  qword_100D90880 = result;
  return result;
}

uint64_t sub_100736E6C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(39, v7, v8);
  qword_100D90888 = result;
  return result;
}

uint64_t sub_100736FBC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(36, v7, v8);
  qword_100D90890 = result;
  return result;
}

uint64_t sub_10073710C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(35, v7, v8);
  qword_100D90898 = result;
  return result;
}

uint64_t sub_10073725C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(23, v7, v8);
  qword_100D908A0 = result;
  return result;
}

uint64_t sub_1007373AC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(33, v7, v8);
  qword_100D908A8 = result;
  return result;
}

uint64_t sub_1007374FC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(35, v7, v8);
  qword_100D908B0 = result;
  return result;
}

uint64_t sub_10073764C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(29, v7, v8);
  qword_100D908B8 = result;
  return result;
}

uint64_t sub_1007377A4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(36, v7, v8);
  qword_100D908C8 = result;
  return result;
}

uint64_t sub_1007378F4()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  sub_10022C350(&qword_100CAFFD0, &unk_100A964A0);
  (*(v2 + 104))(v6, enum case for Access.protected(_:), v0);
  result = Setting<>.init(_:defaultValue:min:max:access:)();
  qword_100D908D0 = result;
  return result;
}

uint64_t sub_100737A14()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(35, v7, v8);
  qword_100D908D8 = result;
  return result;
}

unint64_t sub_100737B68()
{
  result = qword_100CD5E10;
  if (!qword_100CD5E10)
  {
    result = swift_getWitnessTable(asc_100A7E958, &type metadata for InterfaceOrientationEnvironmentKey, v0, v1);
    atomic_store(result, &qword_100CD5E10);
  }

  return result;
}

uint64_t sub_100737BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003C0DAC();
  sub_100737DAC(&qword_100CB3DB0, byte_100A2C720);
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t sub_100737C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100737DAC(&qword_100CD5E18, asc_100A2C6F4);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100737CC0()
{
  sub_1003C0DAC();
  sub_100737DAC(&qword_100CB3DB0, byte_100A2C720);
  UITraitCollection.subscript.getter();
  return v1;
}

uint64_t sub_100737D30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  sub_10002D7F8(a1, v3);
  return sub_100737BBC(a2, v3, v4);
}

uint64_t sub_100737D7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100737CC0();
  *a1 = result;
  return result;
}

uint64_t sub_100737DAC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIInterfaceOrientation(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100737E14()
{
  v0 = [objc_opt_self() mainBundle];
  v7._object = 0x8000000100ADCC20;
  sub_100003CD0();
  sub_100003F1C();
  v7._countAndFlagsBits = 0xD000000000000042;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v3, v4, v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

double sub_100737EC4@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v18._object = 0x8000000100ADCB10;
  v4._object = 0x8000000100ADCAF0;
  v18._countAndFlagsBits = 0xD000000000000033;
  v4._countAndFlagsBits = 0xD000000000000018;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v18);

  v7 = [v2 mainBundle];
  v19._object = 0x8000000100ADCBC0;
  v8._object = 0x8000000100ADCB50;
  v19._countAndFlagsBits = 0xD00000000000005ELL;
  v8._countAndFlagsBits = 0x1000000000000060;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v19);

  v11 = sub_100737E14();
  v13 = v12;
  static Color.blue.getter();
  v14 = Color.hex.getter();
  v16 = v15;

  *&result = 0x8000000000000001;
  *a1 = xmmword_100A7EA40;
  *(a1 + 16) = 0x8000000100AD6AC0;
  *(a1 + 24) = v6;
  *(a1 + 40) = v10;
  *(a1 + 56) = 1;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v16;
  return result;
}

double sub_100738064@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v18._object = 0x8000000100ADCCB0;
  v4._object = 0x8000000100ADCC90;
  v18._countAndFlagsBits = 0xD000000000000054;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v18);

  v7 = [v2 mainBundle];
  v19._object = 0x8000000100ADCD80;
  v8._object = 0x8000000100ADCD10;
  v19._countAndFlagsBits = 0xD000000000000067;
  v8._countAndFlagsBits = 0x100000000000006DLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v19);

  v11 = sub_100737E14();
  v13 = v12;
  static Color.blue.getter();
  v14 = Color.hex.getter();
  v16 = v15;

  *&result = 0x8000000000000001;
  *a1 = xmmword_100A7EA50;
  *(a1 + 16) = 0x8000000100ADCC70;
  *(a1 + 24) = v6;
  *(a1 + 40) = v10;
  *(a1 + 56) = 0;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v16;
  return result;
}

void sub_1007381FC(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  *&v288[1] = a2;
  v334 = a3;
  v315 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v316 = v5;
  v6 = sub_1000038CC();
  v7 = type metadata accessor for TimeState(v6);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000038E4();
  v314 = v9;
  sub_1000038CC();
  type metadata accessor for AirQualityScaleCategory();
  sub_1000037C4();
  *&v281 = v11;
  *(&v281 + 1) = v10;
  __chkstk_darwin(v10);
  sub_1000038E4();
  v280 = v12;
  sub_1000038CC();
  type metadata accessor for AirQualityScale();
  sub_1000037C4();
  v285 = v14;
  v286 = v13;
  __chkstk_darwin(v13);
  sub_1000038E4();
  v284 = v15;
  v16 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v311 = v18;
  sub_1000038CC();
  type metadata accessor for AirQuality();
  sub_1000037C4();
  v312 = v20;
  v313 = v19;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v289 = v21;
  v22 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  sub_100003810(v22);
  sub_100003828();
  __chkstk_darwin(v23);
  sub_1000039BC();
  v304 = v24;
  sub_1000038CC();
  v305 = type metadata accessor for NSUnitSpeed.WeatherFormatUsage();
  sub_1000037C4();
  v303 = v25;
  __chkstk_darwin(v26);
  sub_1000038E4();
  v301 = v27;
  sub_1000038CC();
  type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle();
  sub_1000037C4();
  v309 = v29;
  v310 = v28;
  __chkstk_darwin(v28);
  sub_1000038E4();
  v308 = v30;
  sub_10022C350(&qword_100CACCC8, &unk_100A3E7D0);
  sub_1000037C4();
  v306 = v32;
  v307 = v31;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  v302 = v34;
  sub_1000038CC();
  type metadata accessor for Wind();
  sub_1000037C4();
  v299 = v36;
  v300 = v35;
  __chkstk_darwin(v35);
  sub_1000038E4();
  v298 = v37;
  sub_1000038CC();
  v321 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v324 = v38;
  __chkstk_darwin(v39);
  sub_1000038E4();
  v320 = v40;
  sub_1000038CC();
  v297 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  *&v296 = v41;
  __chkstk_darwin(v42);
  sub_1000038E4();
  v295 = v43;
  sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v293 = v45;
  v294 = v44;
  sub_100003828();
  __chkstk_darwin(v46);
  sub_1000039BC();
  v292 = v47;
  sub_1000038CC();
  *&v326 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  *&v328 = v48;
  __chkstk_darwin(v49);
  sub_1000038E4();
  *&v325 = v50;
  v51 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  v52 = sub_100003810(v51);
  __chkstk_darwin(v52);
  sub_100003C38();
  v282 = v53 - v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  v290 = &v271 - v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  v319 = &v271 - v58;
  sub_1000038CC();
  *&v327 = type metadata accessor for URL();
  sub_1000037C4();
  v323 = v59;
  __chkstk_darwin(v60);
  sub_100003C38();
  v287 = v61 - v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  v317 = &v271 - v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  v283 = &v271 - v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  v322 = &v271 - v68;
  sub_1000038CC();
  v69 = type metadata accessor for ReportWeatherConfiguration();
  sub_1000037C4();
  v318 = v70;
  __chkstk_darwin(v71);
  v73 = &v271 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for AppConfigurationState(0);
  v75 = sub_100003810(v74);
  __chkstk_darwin(v75);
  v77 = &v271 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v78);
  sub_1000038E4();
  v330 = v79;
  v80 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  sub_100003810(v80);
  sub_100003828();
  __chkstk_darwin(v81);
  v83 = &v271 - v82;
  v84 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v85);
  sub_100003C38();
  v88 = v86 - v87;
  __chkstk_darwin(v89);
  v329 = &v271 - v90;
  v91 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v91);
  sub_100003828();
  __chkstk_darwin(v92);
  v94 = &v271 - v93;
  v95 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v96);
  sub_1000038E4();
  v331 = v97;
  *&v332 = a1;
  v98 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  sub_100003CD0();
  swift_beginAccess();
  if (*(v98 + 3) != 4)
  {
    if (*(v98 + 1) - 1 > 1)
    {
LABEL_6:
      sub_10003C7B4();
      sub_100737EC4(v101);
      goto LABEL_7;
    }

    v100 = v332;
    sub_100035AD0(v332 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v94, &unk_100CE49F0, &unk_100A3AFA0);
    if (sub_100024D10(v94, 1, v95) == 1)
    {
      sub_1000180EC(v94, &unk_100CE49F0, &unk_100A3AFA0);
      goto LABEL_6;
    }

    v109 = v94;
    v110 = v100;
    v111 = v331;
    sub_1000307A4(v109, v331, &type metadata accessor for CurrentLocation);
    v112 = *(v110 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v113 = CurrentLocation.id.getter();
    sub_1000864C0(v113, v114, v112);

    if (sub_100024D10(v83, 1, v84) == 1)
    {
      sub_1000180EC(v83, &qword_100CA37B0, &unk_100A2D740);
      sub_10003C7B4();
      sub_100737EC4(v115);
      sub_100008DC0();
LABEL_16:
      sub_100019E20();
      sub_1000311A0(v111, v130);
      v107 = v325;
      v106 = v326;
      v105 = v327;
      v104 = v328;
      v103 = v332;
      v102 = v333;
      goto LABEL_8;
    }

    v116 = v83;
    v117 = v329;
    sub_1000307A4(v116, v329, type metadata accessor for LocationWeatherDataState);
    sub_1001AF6BC(v117, v88, type metadata accessor for LocationWeatherDataState);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1000311A0(v88, type metadata accessor for LocationWeatherDataState);
      sub_10003C7B4();
      sub_100738064(v129);
      sub_100008DC0();
      v128 = v117;
      v127 = type metadata accessor for LocationWeatherDataState;
      goto LABEL_15;
    }

    v118 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
    v119 = *(v118 + 48);
    v120 = *(v118 + 64);
    v121 = v330;
    sub_1000307A4(v88, v330, type metadata accessor for WeatherData);
    sub_1000311A0(v88 + v120, type metadata accessor for NewsDataModel);
    sub_1000311A0(v88 + v119, type metadata accessor for PreprocessedWeatherData);
    sub_1001AF6BC(v332 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration, v77, type metadata accessor for AppConfigurationState);
    AppConfiguration.reportWeather.getter();
    type metadata accessor for AppConfiguration();
    sub_1000037E8();
    (*(v122 + 8))(v77);
    ReportWeatherConfiguration.onlineFeedbackURL.getter();
    (v318)[1](v73, v69);
    v123 = v319;
    URL.init(string:)();

    v124 = v327;
    if (sub_100024D10(v123, 1, v327) == 1)
    {
      sub_1000180EC(v123, &qword_100CB3AB0, &unk_100A2FB80);
      sub_10003C7B4();
      sub_100738064(v125);
      sub_100008DC0();
      sub_100028A6C();
      sub_1000311A0(v121, v126);
      sub_1000230C8();
      v128 = v117;
LABEL_15:
      sub_1000311A0(v128, v127);
      goto LABEL_16;
    }

    v272 = *(v323 + 32);
    v273 = v323 + 32;
    v272(v322, v123, v124);
    v319 = *(v291 + 24);
    v131 = v325;
    WeatherDataModel.currentWeather.getter();
    v132 = v292;
    CurrentWeather.temperature.getter();
    v133 = *(v328 + 8);
    *&v328 = v328 + 8;
    v291 = v133;
    v133(v131, v326);
    v134 = v295;
    static WeatherFormatStyle<>.weather.getter();
    HIDWORD(v279) = enum case for WeatherFormatPlaceholder.none(_:);
    v135 = v324;
    v136 = *(v324 + 104);
    v277 = v324 + 104;
    v278 = v136;
    v137 = v320;
    v138 = v321;
    v136(v320);
    v276 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_100115114(&qword_100CA5410, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
    v139 = v294;
    v140 = v297;
    v141 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v274 = v142;

    v143 = *(v135 + 8);
    v324 = v135 + 8;
    v275 = v143;
    v143(v137, v138);
    (*(v296 + 8))(v134, v140);
    (*(v293 + 8))(v132, v139);
    v318 = objc_opt_self();
    v144 = [v318 mainBundle];
    v338._object = 0x8000000100ADC810;
    sub_10006993C();
    sub_10000666C();
    sub_100003F1C();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v145, v146, v147, v148, v338);

    v297 = sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v149 = swift_allocObject();
    v296 = xmmword_100A2C3F0;
    *(v149 + 16) = xmmword_100A2C3F0;
    *(v149 + 56) = &type metadata for String;
    v295 = sub_100035744();
    *(v149 + 64) = v295;
    v150 = v274;
    *(v149 + 32) = v141;
    *(v149 + 40) = v150;
    v293 = String.init(format:_:)();
    v294 = v151;

    v152 = v325;
    WeatherDataModel.currentWeather.getter();
    v153 = v298;
    CurrentWeather.wind.getter();
    (v291)(v152, v326);
    v154 = v302;
    Wind.speed.getter();
    (*(v299 + 8))(v153, v300);
    v155 = v303;
    v156 = v301;
    v157 = v305;
    (*(v303 + 104))(v301, enum case for NSUnitSpeed.WeatherFormatUsage.windSpeed(_:), v305);
    v158 = type metadata accessor for Locale();
    v159 = v304;
    sub_10001B350(v304, 1, 1, v158);
    static Set<>.full.getter();
    v160 = v308;
    static WeatherFormatStyle<>.weather(_:usage:locale:)();

    sub_1000180EC(v159, &qword_100CAA9F0, qword_100A44F50);
    (*(v155 + 8))(v156, v157);
    v161 = v320;
    v162 = v321;
    v278(v320, HIDWORD(v279), v321);
    static UnitManager.standard.getter();
    sub_100115114(&qword_100CAECB0, &type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitSpeed.BaseWeatherFormatStyle);
    v163 = v307;
    v164 = v310;
    v165 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v167 = v166;

    v275(v161, v162);
    (*(v309 + 8))(v160, v164);
    (*(v306 + 8))(v154, v163);
    v168 = v318;
    v169 = [v318 mainBundle];
    v339._object = 0x8000000100ADC860;
    sub_10006993C();
    sub_10000666C();
    sub_100003F1C();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v170, v171, v172, v173, v339);

    v174 = sub_10000CE64();
    *(v174 + 16) = v296;
    v175 = v295;
    *(v174 + 56) = &type metadata for String;
    *(v174 + 64) = v175;
    *(v174 + 32) = v165;
    *(v174 + 40) = v167;
    v309 = String.init(format:_:)();
    v310 = v176;

    v177 = v311;
    WeatherDataModel.airQuality.getter();
    v178 = v313;
    if (sub_100024D10(v177, 1, v313) == 1)
    {
      sub_1000180EC(v177, &qword_100CC62B8, &qword_100A61CA0);
      v311 = 0;
      v320 = 0;
      v321 = 0;
      v324 = 0;
      v179 = v323;
      v180 = v332;
    }

    else
    {
      v181 = v289;
      (*(v312 + 32))(v289, v177, v178);
      v182 = v284;
      AirQuality.scale.getter();
      v320 = AirQualityScale.displayLabel.getter();
      v324 = v183;
      v184 = v286;
      v185 = *(v285 + 8);
      v185(v182, v286);
      AirQuality.scale.getter();
      v186 = AirQualityScale.isNumerical.getter();
      v185(v182, v184);
      v187 = [v168 mainBundle];
      v180 = v332;
      if (v186)
      {
        v340._object = 0x8000000100ADCA10;
        sub_10006993C();
        sub_100003CD0();
        sub_100003F1C();
        NSLocalizedString(_:tableName:bundle:value:comment:)(v188, v189, v190, v191, v340);

        v192 = sub_10000CE64();
        *(v192 + 16) = v296;
        v193 = AirQuality.index.getter();
        *(v192 + 56) = &type metadata for Int;
        *(v192 + 64) = &protocol witness table for Int;
        *(v192 + 32) = v193;
        v311 = static String.localizedStringWithFormat(_:_:)();
        v321 = v194;
      }

      else
      {
        v341._object = 0x8000000100ADC9C0;
        sub_10006993C();
        sub_10000666C();
        sub_100003F1C();
        NSLocalizedString(_:tableName:bundle:value:comment:)(v195, v196, v197, v198, v341);

        v199 = sub_10000CE64();
        *(v199 + 16) = v296;
        v200 = v280;
        AirQuality.currentScaleCategory.getter();
        v201 = AirQualityScaleCategory.description.getter();
        v203 = v202;
        (*(v281 + 8))(v200, *(&v281 + 1));
        v204 = v295;
        *(v199 + 56) = &type metadata for String;
        *(v199 + 64) = v204;
        *(v199 + 32) = v201;
        *(v199 + 40) = v203;
        v181 = v289;
        v311 = String.init(format:_:)();
        v321 = v205;
      }

      v179 = v323;

      (*(v312 + 8))(v181, v178);
    }

    v206 = v325;
    WeatherDataModel.currentWeather.getter();
    v207 = v314;
    sub_1001AF6BC(v180 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v314, type metadata accessor for TimeState);
    *&v332 = sub_100739D90();
    *&v333 = v208;
    v319 = v209;
    v211 = v210;
    (v291)(v206, v326);
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v212 + 8))(v207);
    v213 = v316;
    sub_1001AF6BC(v180 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v316, type metadata accessor for ModalViewState);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v213 = *v213;
      memcpy(v336, v213 + 2, 0x60uLL);
      v214 = v336[0];
      if ((v336[0] & 0x8000000000000000) == 0)
      {
        *&v326 = v213;

        memcpy(v337, (v214 + 16), 0xC2uLL);
        v215 = v327;
        sub_10001B350(v290, 1, 1, v327);
        LODWORD(v332) = *(v214 + 232);
        LODWORD(v333) = *(v214 + 256);
        if (!v324)
        {
          v216 = *(v214 + 272);
          v320 = *(v214 + 264);
          v324 = v216;
        }

        v218 = v282;
        v217 = v283;
        if (!v321)
        {
          v219 = *(v214 + 288);
          v311 = *(v214 + 280);
          v321 = v219;
        }

        LODWORD(v328) = *(v214 + 296);
        v221 = *(v214 + 304);
        v220 = *(v214 + 312);
        sub_100035AD0(v290, v218, &qword_100CB3AB0, &unk_100A2FB80);
        v222 = sub_100024D10(v218, 1, v215);
        *&v325 = v220;
        if (v222 == 1)
        {
          v319 = *(v179 + 16);
          (v319)(v217, v214 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_onlineFeedbackURL, v215);
          if (sub_100024D10(v218, 1, v215) == 1)
          {
            sub_1002DD184(v337, v335);
          }

          else
          {
            sub_1002DD184(v337, v335);

            sub_1000180EC(v218, &qword_100CB3AB0, &unk_100A2FB80);
          }

          v260 = v327;
          v179 = v323;
          v258 = v221;
          v259 = v283;
          v257 = v319;
        }

        else
        {
          v272(v217, v218, v215);
          sub_1002DD184(v337, v335);
          v257 = *(v179 + 16);

          v258 = v221;
          v259 = v217;
          v260 = v215;
        }

        v261 = *(v214 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_showOnlineFeedbackSafariView);
        v262 = *(v214 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_entrySource);
        v263 = v317;
        v257(v317, v259, v260);
        type metadata accessor for ReportWeatherContentViewModel._Storage(0);
        swift_allocObject();
        BYTE1(v270) = v262;
        LOBYTE(v270) = v261;
        LOBYTE(v269) = v328;
        sub_1002D5EE8(v337, v293, v294, v332, v309, v310, v333, v320, v324, v311, v321, v269, v258, v325, v263, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, SBYTE1(v287));
        v255 = v264;
        sub_10026AD10(v336);

        v265 = *(v179 + 8);
        v265(v259, v260);
        sub_1000180EC(v290, &qword_100CB3AB0, &unk_100A2FB80);
        v265(v322, v260);
        goto LABEL_39;
      }

      *&v328 = v211;
    }

    else
    {
      *&v328 = v211;
      sub_1000311A0(v213, type metadata accessor for ModalViewState);
    }

    v223 = sub_100049B94();
    sub_10006993C();
    v342._object = v213;
    sub_1000109EC();
    v228 = NSLocalizedString(_:tableName:bundle:value:comment:)(v224, v225, v226, v227, v342);
    *&v326 = v228._countAndFlagsBits;
    *&v325 = v228._object;

    v229 = sub_100049B94();
    v343._object = v213;
    sub_1000109EC();
    v343._countAndFlagsBits = 0xD000000000000031;
    v234 = NSLocalizedString(_:tableName:bundle:value:comment:)(v230, v231, v232, v233, v343);

    v235 = sub_100049B94();
    v344._object = v213;
    sub_100003CD0();
    sub_100003F1C();
    v240 = NSLocalizedString(_:tableName:bundle:value:comment:)(v236, v237, v238, v239, v344);

    v241 = sub_100049B94();
    v345._object = v213;
    sub_100003CD0();
    sub_100003F1C();
    v345._countAndFlagsBits = 0xD000000000000031;
    v246 = NSLocalizedString(_:tableName:bundle:value:comment:)(v242, v243, v244, v245, v345);

    *&v337[0] = v332;
    *(&v337[0] + 1) = v333;
    *&v337[1] = v319;
    *(&v337[1] + 1) = v328;
    LOBYTE(v337[2]) = 0;
    *(&v337[2] + 1) = v326;
    *&v337[3] = v325;
    *(&v337[3] + 1) = 0x69662E64756F6C63;
    *&v337[4] = 0xEA00000000006C6CLL;
    WORD4(v337[4]) = 0;
    v337[5] = v234;
    *&v337[6] = 0x61722E64756F6C63;
    *(&v337[6] + 1) = 0xEF6C6C69662E6E69;
    LOWORD(v337[7]) = 0;
    *(&v337[7] + 8) = v240;
    sub_10006993C();
    *(&v337[8] + 1) = v247 - 33;
    *&v337[9] = 0x8000000100ADC960;
    WORD4(v337[9]) = 0;
    v337[10] = v246;
    *&v337[11] = 0x6B616C66776F6E73;
    *(&v337[11] + 1) = 0xE900000000000065;
    LOWORD(v337[12]) = 0;
    v249 = v322;
    v248 = v323;
    v250 = *(v323 + 16);
    v251 = v317;
    v252 = v327;
    v250(v317, v322, v327);
    v253 = v287;
    v250(v287, v251, v252);
    type metadata accessor for ReportWeatherContentViewModel._Storage(0);
    swift_allocObject();
    LOWORD(v270) = *v288 & 0x100;
    LOBYTE(v269) = 1;
    sub_1002D5EE8(v337, v293, v294, 1, v309, v310, 1, v320, v324, v311, v321, v269, &_swiftEmptySetSingleton, &_swiftEmptySetSingleton, v253, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, SBYTE1(v287));
    v255 = v254;
    v256 = *(v248 + 8);
    v256(v251, v252);
    v256(v249, v252);
LABEL_39:
    sub_100028A6C();
    sub_1000311A0(v330, v266);
    sub_1000230C8();
    sub_1000311A0(v329, v267);
    sub_100019E20();
    sub_1000311A0(v331, v268);
    *&v102 = v255 & 0xFFFFFFFFFFFFFF9;
    goto LABEL_8;
  }

  sub_10003C7B4();
  sub_100738064(v99);
LABEL_7:
  v102 = v337[0];
  v103 = v337[1];
  v104 = v337[2];
  v105 = v337[3];
  v106 = v337[4];
  v107 = v337[5];
LABEL_8:
  v108 = v334;
  *v334 = v102;
  v108[1] = v103;
  v108[2] = v104;
  v108[3] = v105;
  v108[4] = v106;
  v108[5] = v107;
}