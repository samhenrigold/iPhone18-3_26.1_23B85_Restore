int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for PMPasswordsApp(0);
  sub_1000018F0(&qword_10000C170, 255, type metadata accessor for PMPasswordsApp, &unk_100005D38);
  static App.main()();
  return 0;
}

uint64_t type metadata accessor for PMPasswordsApp(uint64_t a1)
{
  result = qword_10000C270;
  if (!qword_10000C270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000170C(uint64_t a1)
{
  sub_1000017D8(319, &qword_10000C280, &type metadata accessor for PMUIApplicationDelegate, &type metadata accessor for UIApplicationDelegateAdaptor);
  if (v1 <= 0x3F)
  {
    sub_100001860(319);
    if (v2 <= 0x3F)
    {
      sub_100001938(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000017D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100001860(uint64_t a1)
{
  if (!qword_10000C288)
  {
    type metadata accessor for AppLaunchActions();
    sub_1000018F0(&qword_10000C290, v1, type metadata accessor for AppLaunchActions, "!(");
    v2 = type metadata accessor for StateObject();
    if (!v3)
    {
      atomic_store(v2, &qword_10000C288);
    }
  }
}

uint64_t sub_1000018F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_100001938(uint64_t a1)
{
  if (!qword_10000C298)
  {
    type metadata accessor for PMDebugSettingsManager();
    sub_1000018F0(&unk_10000C2A0, 255, &type metadata accessor for PMDebugSettingsManager, &protocol conformance descriptor for PMDebugSettingsManager);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C298);
    }
  }
}

uint64_t sub_1000019D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PMUIApplicationDelegate();
  sub_1000018F0(&qword_10000C2D8, 255, &type metadata accessor for PMUIApplicationDelegate, &protocol conformance descriptor for PMUIApplicationDelegate);
  UIApplicationDelegateAdaptor<>.init(_:)();
  v4 = a2 + *(a1 + 20);
  *v4 = sub_100001D58;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  v5 = (a2 + *(a1 + 24));
  swift_getKeyPath();
  sub_1000018F0(&unk_10000C2A0, 255, &type metadata accessor for PMDebugSettingsManager, &protocol conformance descriptor for PMDebugSettingsManager);
  result = ObservedObject.init(dependency:)();
  *v5 = result;
  v5[1] = v7;
  return result;
}

unint64_t sub_100001B24()
{
  result = qword_10000C470;
  if (!qword_10000C470)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10000C470);
  }

  return result;
}

void sub_100001B74(uint64_t a1)
{
  sub_100001B24();
  if (v1 <= 0x3F)
  {
    sub_100001C40(319);
    if (v2 <= 0x3F)
    {
      sub_1000017D8(319, &qword_10000C480, &type metadata accessor for PMExtensionCoordinator, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100001C40(uint64_t a1)
{
  if (!qword_10000C478)
  {
    sub_100005304(&qword_10000C3E0, &qword_100005EA0);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C478);
    }
  }
}

uint64_t sub_100001D10(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005304(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001D58()
{
  type metadata accessor for AppLaunchActions();
  v0 = swift_allocObject();
  sub_100004414();
  return v0;
}

uint64_t sub_100001D90@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AppLaunchActions();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100001DCC@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v69 = sub_100004BF8(&qword_10000C2F8, &qword_100005DE0);
  __chkstk_darwin(v69);
  v68 = &v52 - v1;
  v65 = sub_100004BF8(&qword_10000C300, &qword_100005DE8);
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v52 - v2;
  v67 = sub_100004BF8(&qword_10000C308, &qword_100005DF0);
  v81 = *(v67 - 8);
  v3 = __chkstk_darwin(v67);
  v64 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v79 = &v52 - v5;
  v61 = sub_100004BF8(&qword_10000C310, &qword_100005DF8);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v52 - v6;
  v78 = sub_100004BF8(&qword_10000C318, &qword_100005E00);
  v80 = *(v78 - 8);
  v7 = __chkstk_darwin(v78);
  v77 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v83 = &v52 - v9;
  v10 = type metadata accessor for PMPasswordsApp(0);
  v72 = *(v10 - 8);
  v11 = *(v72 + 8);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for PMWindowGroupIdentifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004BF8(&qword_10000C320, &qword_100005E08);
  v57 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v58 = sub_100004BF8(&qword_10000C328, &qword_100005E10);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v52 = &v52 - v19;
  v20 = sub_100004BF8(&qword_10000C330, &qword_100005E18);
  v21 = *(v20 - 8);
  v75 = v20;
  v76 = v21;
  v22 = __chkstk_darwin(v20);
  v74 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v82 = &v52 - v24;
  v25 = *(v13 + 104);
  v56 = v13 + 104;
  v71 = v25;
  v53 = v12;
  v25(v15, enum case for PMWindowGroupIdentifier.main(_:), v12);
  PMWindowGroupIdentifier.rawValue.getter();
  v54 = *(v13 + 8);
  v55 = v13 + 8;
  v54(v15, v12);
  sub_100002AF0(v73, &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v27 = swift_allocObject();
  sub_100002B54(&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  sub_100004BF8(&qword_10000C338, &qword_100005E20);
  sub_100001D10(&qword_10000C340, &qword_10000C338, &qword_100005E20, &unk_100005EE0);
  WindowGroup.init(id:title:lazyContent:)();
  sub_100002BB8(&off_100008780);
  sub_100002D20(&unk_1000087A0);
  v72 = &protocol conformance descriptor for WindowGroup<A>;
  v28 = sub_100001D10(&qword_10000C348, &qword_10000C320, &qword_100005E08, &protocol conformance descriptor for WindowGroup<A>);
  v29 = v52;
  Scene.handlesExternalEvents(matching:)();

  (*(v57 + 8))(v18, v16);
  v84 = v73;
  sub_100004BF8(&qword_10000C350, &qword_100005E28);
  v85 = v16;
  v86 = v28;
  swift_getOpaqueTypeConformance2();
  sub_100001D10(&qword_10000C358, &qword_10000C350, &qword_100005E28, &protocol conformance descriptor for TupleCommandContent<A>);
  v30 = v58;
  Scene.commands<A>(content:)();
  (*(v59 + 8))(v29, v30);
  v31 = v53;
  v71(v15, enum case for PMWindowGroupIdentifier.accountDetails(_:), v53);
  PMWindowGroupIdentifier.rawValue.getter();
  v32 = v54;
  v54(v15, v31);
  v73 = sub_100004BF8(&qword_10000C360, &qword_100005E30);
  sub_100001D10(&qword_10000C368, &qword_10000C360, &qword_100005E30, &protocol conformance descriptor for NavigationStack<A, B>);
  v33 = v60;
  WindowGroup.init<A, B>(id:for:content:)();
  sub_100001D10(&qword_10000C370, &qword_10000C310, &qword_100005DF8, v72);
  v34 = v61;
  Scene.pmDisableSceneRestoration()();
  (*(v62 + 8))(v33, v34);
  v71(v15, enum case for PMWindowGroupIdentifier.wifiDetails(_:), v31);
  PMWindowGroupIdentifier.rawValue.getter();
  v32(v15, v31);
  type metadata accessor for PMWiFiNetworkIdentifier();
  sub_1000018F0(&qword_10000C378, 255, &type metadata accessor for PMWiFiNetworkIdentifier, &protocol conformance descriptor for PMWiFiNetworkIdentifier);
  sub_1000018F0(&qword_10000C380, 255, &type metadata accessor for PMWiFiNetworkIdentifier, &protocol conformance descriptor for PMWiFiNetworkIdentifier);
  sub_1000018F0(&qword_10000C388, 255, &type metadata accessor for PMWiFiNetworkIdentifier, &protocol conformance descriptor for PMWiFiNetworkIdentifier);
  v35 = v63;
  WindowGroup.init<A, B>(id:for:content:)();
  sub_100001D10(&qword_10000C390, &qword_10000C300, &qword_100005DE8, v72);
  v36 = v79;
  v37 = v65;
  Scene.pmDisableSceneRestoration()();
  (*(v66 + 8))(v35, v37);
  v38 = v75;
  v73 = *(v76 + 16);
  v39 = v74;
  v73(v74, v82, v75);
  v72 = *(v80 + 16);
  v40 = v77;
  v72(v77, v83, v78);
  v71 = *(v81 + 16);
  v41 = v64;
  v42 = v67;
  v71(v64, v36, v67);
  v43 = v68;
  v73(v68, v39, v38);
  v44 = v69;
  v45 = v78;
  v72(&v43[*(v69 + 48)], v40, v78);
  v71(&v43[*(v44 + 64)], v41, v42);
  _TupleScene.init(_:)();
  v46 = *(v81 + 8);
  v47 = v42;
  v46(v79, v42);
  v48 = *(v80 + 8);
  v48(v83, v45);
  v49 = v75;
  v50 = *(v76 + 8);
  v50(v82, v75);
  v46(v41, v47);
  v48(v77, v45);
  return (v50)(v74, v49);
}

uint64_t sub_100002AF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordsApp(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002B54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordsApp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100002BB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004BF8(&qword_10000C3D0, &qword_100005E60);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
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

uint64_t sub_100002D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v29 = a2;
  v28 = sub_100004BF8(&qword_10000C3B0, &qword_100005E48);
  __chkstk_darwin(v28);
  v3 = &v24 - v2;
  v4 = sub_100004BF8(&qword_10000C3B8, &qword_100005E50);
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v24 = &v24 - v5;
  v6 = sub_100004BF8(&qword_10000C3C0, &qword_100005E58);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for PMWindowGroupIdentifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAppCommands();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for PMWindowGroupIdentifier.main(_:), v9);
  PMWindowGroupIdentifier.rawValue.getter();
  (*(v10 + 8))(v12, v9);
  PMAppCommands.init(mainWindowGroupIdentifier:)();
  type metadata accessor for PMPasswordsApp(0);
  if ((dispatch thunk of PMDebugSettingsManager.shouldShowDebugMenu.getter() & 1) != 0 && (dispatch thunk of PMDebugSettingsManager.hideDebugMenuUntilRelaunch.getter() & 1) == 0 && [objc_opt_self() isInternalInstall])
  {
    v25 = LocalizedStringKey.init(stringLiteral:)();
    type metadata accessor for PMDebugSettingsControls();
    sub_1000018F0(&qword_10000C3C8, 255, &type metadata accessor for PMDebugSettingsControls, &protocol conformance descriptor for PMDebugSettingsControls);
    v17 = v24;
    CommandMenu.init(_:content:)();
    v19 = v26;
    v18 = v27;
    (*(v26 + 32))(v8, v17, v27);
    v20 = v18;
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v19 = v26;
    v20 = v27;
  }

  (*(v19 + 56))(v8, v21, 1, v20);
  v22 = *(v28 + 48);
  (*(v14 + 16))(v3, v16, v13);
  sub_100005528(v8, &v3[v22], &qword_10000C3C0, &qword_100005E58);
  TupleCommandContent.init(_:)();
  sub_1000054C8(v8, &qword_10000C3C0, &qword_100005E58);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_100003234(uint64_t *a1)
{
  sub_100005304(&qword_10000C498, &qword_100005F30);
  type metadata accessor for ModifiedContent();
  sub_100001D10(&qword_10000C4A8, &qword_10000C498, &qword_100005F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

void *sub_1000032E0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = type metadata accessor for PMPasswordsApp(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_100002AF0(a1, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100002B54(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a2 = sub_100003860;
  a2[1] = v8;
  v9 = sub_100004BF8(&qword_10000C338, &qword_100005E20);
  v10 = *(v9 + 36);
  *(a2 + v10) = swift_getKeyPath();
  sub_100004BF8(&qword_10000C3D8, &qword_100005E98);
  swift_storeEnumTagMultiPayload();
  v11 = (a2 + *(v9 + 40));
  [objc_allocWithZone(type metadata accessor for PMPasswordManagerState()) init];
  type metadata accessor for PMExtensionCoordinator();
  swift_allocObject();
  v14[1] = PMExtensionCoordinator.init(appState:)();
  result = State.init(wrappedValue:)();
  v13 = v14[3];
  *v11 = v14[2];
  v11[1] = v13;
  return result;
}

void *sub_100003494@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *(type metadata accessor for PMPasswordsApp(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000032E0(v4, a1);
}

uint64_t sub_100003508@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v4 = sub_100004BF8(&qword_10000C3E0, &qword_100005EA0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  v8 = *(a1 + 16);
  v9 = a1;
  v31 = a1;
  v10 = *(v8 - 8);
  v33 = v8;
  v34 = v10;
  __chkstk_darwin(v5);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005304(&qword_10000C498, &qword_100005F30);
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  v32 = v2;
  v20 = *v2;
  v21 = (v2 + *(v9 + 40));
  v23 = *v21;
  v22 = v21[1];
  v39 = v23;
  v40 = v22;
  sub_100004BF8(&qword_10000C4A0, &qword_100005F38);
  State.wrappedValue.getter();
  v20(v38);

  swift_getKeyPath();
  v24 = v31;
  sub_100003994(v7);
  v25 = *(v24 + 24);
  v26 = v33;
  View.environment<A>(_:_:)();

  sub_1000054C8(v7, &qword_10000C3E0, &qword_100005EA0);
  (*(v34 + 8))(v12, v26);
  v27 = sub_100001D10(&qword_10000C4A8, &qword_10000C498, &qword_100005F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v36 = v25;
  v37 = v27;
  swift_getWitnessTable();
  v28 = *(v14 + 16);
  v28(v19, v17, v13);
  v29 = *(v14 + 8);
  v29(v17, v13);
  v28(v35, v19, v13);
  return (v29)(v19, v13);
}

uint64_t sub_100003860(uint64_t a1)
{
  type metadata accessor for PMPasswordsApp(0);

  return sub_1000038E0();
}

uint64_t sub_1000038E0()
{
  v0 = type metadata accessor for PMAccountsNavigationStyle();
  __chkstk_darwin(v0 - 8);
  PMExtensionCoordinator.appState.getter();
  type metadata accessor for PMPasswordsApp(0);
  dispatch thunk of PMDebugSettingsManager.accountsNavigationStyle.getter();
  return PMPasswordsPaneView.init(appState:style:)();
}

uint64_t sub_100003994@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004BF8(&qword_10000C3D8, &qword_100005E98);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100005528(v2, &v13 - v9, &qword_10000C3D8, &qword_100005E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100003B64(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100003B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004BF8(&qword_10000C3E0, &qword_100005EA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004BF8(&qword_10000C210, &qword_100005CE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100003CA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004BF8(&qword_10000C210, &qword_100005CE8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100003D68()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003DA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003DD8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004BF8(qword_10000C3E8, &qword_100005EA8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_100003E94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004BF8(qword_10000C3E8, &qword_100005EA8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100003F4C(uint64_t a1)
{
  sub_100004BF8(&qword_10000C3A8, &qword_100005E40);
  Binding.projectedValue.getter();
  type metadata accessor for PMAppAccountDetailsWindowModel();
  swift_allocObject();
  PMAppAccountDetailsWindowModel.init(accountID:)();
  type metadata accessor for PMAppDetailsWindowView();
  sub_1000018F0(&qword_10000C3A0, 255, &type metadata accessor for PMAppDetailsWindowView, &protocol conformance descriptor for PMAppDetailsWindowView);
  NavigationStack.init<>(root:)();
}

uint64_t sub_100004064(uint64_t a1)
{
  v2 = sub_100004BF8(&qword_10000C398, &qword_100005E38);
  v3 = __chkstk_darwin(v2);
  __chkstk_darwin(v3);
  v5 = &v7 - v4;
  sub_100005528(a1, &v7 - v4, &qword_10000C398, &qword_100005E38);
  Binding.projectedValue.getter();
  type metadata accessor for PMWiFiDetailsWindowModel();
  swift_allocObject();
  PMWiFiDetailsWindowModel.init(networkID:)();
  type metadata accessor for PMAppDetailsWindowView();
  sub_1000018F0(&qword_10000C3A0, 255, &type metadata accessor for PMAppDetailsWindowView, &protocol conformance descriptor for PMAppDetailsWindowView);
  NavigationStack.init<>(root:)();

  return sub_1000054C8(v5, &qword_10000C398, &qword_100005E38);
}

uint64_t sub_1000041F0(uint64_t a1, unsigned int *a2)
{
  v4 = type metadata accessor for PMAppDetailsWindowView.Detail();
  __chkstk_darwin(v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a1;
  (*(v7 + 104))(v6, *a2);

  return PMAppDetailsWindowView.init(model:)();
}

uint64_t sub_100004344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_100004BF8(&qword_10000C3E0, &qword_100005EA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_100005528(a1, &v11 - v8, &qword_10000C3E0, &qword_100005EA0);
  return a5(v9);
}

uint64_t sub_100004414()
{
  v1 = sub_100004BF8(&qword_10000C2E0, &qword_100005DA8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = [objc_opt_self() sharedLogger];
  [v4 didLaunchPasswordsApp];

  if ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled])
  {
    v5 = [objc_allocWithZone(PMSignInWithAppleController) init];
    [v5 performHealthCheckInBackground];
  }

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1000048D4(0, 0, v3, &unk_100005DB8, v7);

  return v0;
}

uint64_t sub_1000045A8()
{
  v1 = [objc_allocWithZone(_ASAgentPeriodicMaintenanceActivity) initRegisteringActivityHandler:0];
  v0[18] = v1;
  v2 = [objc_opt_self() sharedStore];
  isa = [v2 savedAccounts];

  if (!isa)
  {
    sub_1000051AC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v0[19] = isa;
  v0[2] = v0;
  v0[3] = sub_10000475C;
  v4 = swift_continuation_init();
  v0[17] = sub_100004BF8(&qword_10000C2F0, &qword_100005DD8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000048A0;
  v0[13] = &unk_100008828;
  v0[14] = v4;
  [v1 performPasskeyAvailabilityCheckForDomainsInSavedAccounts:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000475C()
{

  return _swift_task_switch(sub_10000483C, 0, 0);
}

uint64_t sub_10000483C()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000048A0(uint64_t a1)
{
  v1 = *sub_1000052B8((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_1000048D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004BF8(&qword_10000C2E0, &qword_100005DA8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005528(a3, v25 - v10, &qword_10000C2E0, &qword_100005DA8);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000054C8(v11, &qword_10000C2E0, &qword_100005DA8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
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

      sub_1000054C8(a3, &qword_10000C2E0, &qword_100005DA8);

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

  sub_1000054C8(a3, &qword_10000C2E0, &qword_100005DA8);
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

uint64_t sub_100004BF8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004C54@<X0>(uint64_t *a1@<X8>)
{
  result = PMDependencyStore.debugSettingsManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100004CAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100004D58;

  return sub_10000458C();
}

uint64_t sub_100004D58()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100004E4C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100004F44;

  return v6(a1);
}

uint64_t sub_100004F44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000503C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005590;

  return sub_100004E4C(a1, v4);
}

uint64_t sub_1000050F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004D58;

  return sub_100004E4C(a1, v4);
}

unint64_t sub_1000051AC()
{
  result = qword_10000C2E8;
  if (!qword_10000C2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C2E8);
  }

  return result;
}

uint64_t sub_100005208(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000526C(void *a1)
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

void *sub_1000052B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005304(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005394()
{
  v1 = (type metadata accessor for PMPasswordsApp(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_100004BF8(&qword_10000C210, &qword_100005CE8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  sub_1000052FC(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000054C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004BF8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005528(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004BF8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}