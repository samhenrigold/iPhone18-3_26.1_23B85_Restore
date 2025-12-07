uint64_t MusicLibrary.ActionableStateController.setupSubscriptions()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D7LibraryC0dE8InternalE14DownloadStatusO_GMd, &_s7Combine9PublishedV9PublisherVy8MusicKit0D7LibraryC0dE8InternalE14DownloadStatusO_GMR);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin();
  v27 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D7LibraryC0dE8InternalE9AddStatusO_GMd, &_s7Combine9PublishedV9PublisherVy8MusicKit0D7LibraryC0dE8InternalE9AddStatusO_GMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = v1[21];
  swift_beginAccess();
  *(v0 + v9) = &_swiftEmptySetSingleton;

  v26 = *(v0 + *(*v0 + 136));
  dispatch thunk of MusicLibrary.ItemState.$addStatus.getter();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v25 = &protocol conformance descriptor for Published<A>.Publisher;
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MusicLibrary.AddStatus>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy8MusicKit0D7LibraryC0dE8InternalE9AddStatusO_GMd, &_s7Combine9PublishedV9PublisherVy8MusicKit0D7LibraryC0dE8InternalE9AddStatusO_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  v24 = v1[10];
  v11[2] = v24;
  v23 = v1[11];
  v11[3] = v23;
  v12 = v1[12];
  v11[4] = v12;
  v13 = v1[13];
  v11[5] = v13;
  v11[6] = v10;
  v14 = Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v30, v14);
  swift_endAccess();

  v15 = v27;
  dispatch thunk of MusicLibrary.ItemState.$downloadStatus.getter();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *&v18 = v24;
  *(&v18 + 1) = v23;
  *&v19 = v12;
  *(&v19 + 1) = v13;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  *(v17 + 48) = v16;
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MusicLibrary.DownloadStatus>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy8MusicKit0D7LibraryC0dE8InternalE14DownloadStatusO_GMd, &_s7Combine9PublishedV9PublisherVy8MusicKit0D7LibraryC0dE8InternalE14DownloadStatusO_GMR, v25);
  v20 = v28;
  v21 = Publisher<>.sink(receiveValue:)();

  (*(v29 + 8))(v15, v20);
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v30, v21);
  swift_endAccess();
}

uint64_t closure #1 in MusicLibrary.ActionableStateController.setupSubscriptions()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
  __chkstk_darwin();
  v5 = &v28 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
  __chkstk_darwin();
  v7 = (&v28 - v6);
  v8 = type metadata accessor for MusicLibrary.AddStatus();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for libraryActionableState != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.libraryActionableState);
  v34 = *(v9 + 16);
  v34(v11, a1, v8);
  v13 = v9;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v33 = v5;
    v31 = v18;
    v35[0] = v18;
    *v17 = 136446210;
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v19 = v13;
    v29 = v13;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = a1;
    v21 = v7;
    v23 = v22;
    (*(v19 + 8))(v11, v8);
    v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v23, v35);
    v7 = v21;
    a1 = v30;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Add status has updated to %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    v5 = v33;

    v25 = v29;
  }

  else
  {

    (*(v13 + 8))(v11, v8);
    v25 = v13;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v34(v7, a1, v8);
    (*(v25 + 56))(v7, 0, 1, v8);
    v27 = type metadata accessor for MusicLibrary.DownloadStatus();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    MusicLibrary.ActionableStateController.updateState(addStatus:downloadStatus:)(v7, v5);

    outlined destroy of TaskPriority?(v5, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
    return outlined destroy of TaskPriority?(v7, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
  }

  return result;
}

uint64_t closure #2 in MusicLibrary.ActionableStateController.setupSubscriptions()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
  __chkstk_darwin();
  v5 = &v28 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
  __chkstk_darwin();
  v7 = (&v28 - v6);
  v8 = type metadata accessor for MusicLibrary.DownloadStatus();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for libraryActionableState != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.libraryActionableState);
  v33 = *(v9 + 16);
  v33(v11, a1, v8);
  v13 = v9;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v8;
    v17 = v16;
    v31 = swift_slowAlloc();
    v32 = v5;
    v35[0] = v31;
    *v17 = 136446210;
    lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(&lazy protocol witness table cache variable for type MusicLibrary.DownloadStatus and conformance MusicLibrary.DownloadStatus, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v18 = v13;
    v29 = v13;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = a2;
    v20 = v7;
    v21 = a1;
    v23 = v22;
    (*(v18 + 8))(v11, v34);
    v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v23, v35);
    a1 = v21;
    v7 = v20;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Download status has updated to %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    v5 = v32;

    v8 = v34;

    v25 = v29;
  }

  else
  {

    (*(v13 + 8))(v11, v8);
    v25 = v13;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = type metadata accessor for MusicLibrary.AddStatus();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    v33(v5, a1, v8);
    (*(v25 + 56))(v5, 0, 1, v8);
    MusicLibrary.ActionableStateController.updateState(addStatus:downloadStatus:)(v7, v5);

    outlined destroy of TaskPriority?(v5, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
    return outlined destroy of TaskPriority?(v7, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
  }

  return result;
}

char *MusicLibrary.ActionableStateController.deinit()
{
  v1 = *v0;

  outlined destroy of weak ActionsObserver?((v0 + 3));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));

  return v0;
}

uint64_t MusicLibrary.ActionableStateController.__deallocating_deinit()
{
  MusicLibrary.ActionableStateController.deinit();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for libraryActionableState()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.libraryActionableState);
  __swift_project_value_buffer(v0, static Logger.libraryActionableState);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static Logger.libraryActionableState.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for libraryActionableState != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.libraryActionableState);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t specialized closure #2 in Action.execute(checkSupportedStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, a2, a3, a4, v10);
}

uint64_t specialized static MusicLibrary.ActionableState.__derived_enum_equals(_:_:)(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  if (a2 >> 14)
  {
    if (a2 >> 14 != 1)
    {
      if (a1 | a2 ^ 0x8000)
      {
        v5 = a4 & 0xC000;
        if (a2 == 0x8000 && a1 == 1)
        {
          if (v5 == 0x8000 && a3 == 1 && a4 == 0x8000)
          {
            return 1;
          }
        }

        else if (v5 == 0x8000 && a3 == 2 && a4 == 0x8000)
        {
          return 1;
        }
      }

      else if ((a4 & 0xC000) == 0x8000 && *&a3 == 0.0 && a4 == 0x8000)
      {
        return 1;
      }

      return 0;
    }

    if ((a4 & 0xC000) == 0x4000)
    {
      if (a2)
      {
        if ((a4 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a4 & 1) != 0 || *&a1 != *&a3)
      {
        return 0;
      }

      return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
    }
  }

  else if (a4 < 0x4000u)
  {
    if (a1 == 5)
    {
      if (a3 == 5)
      {
        return 1;
      }
    }

    else if (a3 != 5 && a3 == a1)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error()
{
  result = lazy protocol witness table cache variable for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error;
  if (!lazy protocol witness table cache variable for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error;
  if (!lazy protocol witness table cache variable for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MusicLibrary.ActionableState.Error and conformance MusicLibrary.ActionableState.Error);
  }

  return result;
}

uint64_t outlined init with copy of Actions.MetricsReportingContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001887B0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *specialized MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v52 = a4;
  v53 = a5;
  v11 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
  __chkstk_darwin();
  v13 = &v46 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
  __chkstk_darwin();
  v15 = (&v46 - v14);
  *(v7 + 4) = 0;
  swift_unknownObjectWeakInit();
  v16 = &v7[*(*v7 + 152)];
  *v16 = 0;
  *(v16 + 4) = 0x8000;
  *&v7[*(*v7 + 160)] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = &_swiftEmptySetSingleton;
  }

  *&v7[*(*v7 + 168)] = v17;
  v18 = v11[10];
  v19 = v11[12];
  v51 = a1;
  v54 = v18;
  v55 = v19;
  v20 = MusicLibrary.state<A>(for:)();
  *&v7[*(*v7 + 136)] = v20;
  v21 = one-time initialization token for libraryActionableState;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.libraryActionableState);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v50 = v20;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v48 = v13;
    v27 = v26;
    v28 = swift_slowAlloc();
    v47 = v15;
    v29 = v28;
    v56 = v20;
    v57 = v28;
    *v27 = 136446210;
    v30 = String.init<A>(describing:)();
    v49 = v11;
    v32 = a6;
    v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v31, &v57);
    v11 = v49;

    *(v27 + 4) = v33;
    a6 = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Initializing item state: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    v15 = v47;

    v13 = v48;
  }

  v34 = v54;
  (*(*(v54 - 8) + 16))(&v7[*(*v7 + 128)], v51, v54);
  *(v7 + 2) = a2;
  *(v7 + 4) = v52;
  swift_unknownObjectWeakAssign();
  v35 = &v7[*(*v7 + 144)];
  *v35 = v53;
  v35[1] = a6;
  v36 = type metadata accessor for MusicLibrary.AddStatus();
  (*(*(v36 - 8) + 56))(v15, 1, 1, v36);
  v37 = type metadata accessor for MusicLibrary.DownloadStatus();
  (*(*(v37 - 8) + 56))(v13, 1, 1, v37);

  MusicLibrary.ActionableStateController.updateState(addStatus:downloadStatus:)(v15, v13);
  outlined destroy of TaskPriority?(v13, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE14DownloadStatusOSgMR);
  outlined destroy of TaskPriority?(v15, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMd, &_s8MusicKit0A7LibraryC0aB8InternalE9AddStatusOSgMR);
  v38 = MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification;
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 sharedCloudController];
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = v34;
  v44 = v55;
  v43[3] = v11[11];
  v43[4] = v44;
  v43[5] = v11[13];
  v43[6] = v42;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v7[*(*v7 + 160)] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v40, v41, 1, 1, partial apply for closure #1 in MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:), v43);

  MusicLibrary.ActionableStateController.setupSubscriptions()();

  swift_unknownObjectRelease();
  return v7;
}

uint64_t specialized MusicLibrary.ActionableStateController.item.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11[-v6];
  v9 = *(v8 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v9, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v9, a1, v4);
  swift_endAccess();
  MusicLibrary.ActionableStateController.item.didset(v7);
  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MusicLibrary.ActionableState.AddOverride and conformance MusicLibrary.ActionableState.AddOverride()
{
  result = lazy protocol witness table cache variable for type MusicLibrary.ActionableState.AddOverride and conformance MusicLibrary.ActionableState.AddOverride;
  if (!lazy protocol witness table cache variable for type MusicLibrary.ActionableState.AddOverride and conformance MusicLibrary.ActionableState.AddOverride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MusicLibrary.ActionableState.AddOverride and conformance MusicLibrary.ActionableState.AddOverride);
  }

  return result;
}

uint64_t sub_100188FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 152);
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

__n128 sub_100189050(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MusicLibrary.ActionableState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 10))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 8) & 0x3E00 | (*(a1 + 8) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 8) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MusicLibrary.ActionableState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 8) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t getEnumTag for MusicLibrary.ActionableState(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for MusicLibrary.ActionableState(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0x101 | (a2 << 14);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x8000;
  }

  return result;
}

uint64_t type metadata completion function for MusicLibrary.ActionableStateController(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100189318()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100189350()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type MusicLibrary.AddStatus and conformance MusicLibrary.AddStatus(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for specialized closure #1 in Action.execute(checkSupportedStatus:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v1 + 16, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  return partial apply for specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  return partial apply for specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR, "%{public}s: waiting for perform to return…");
}

{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v7, "%{public}s: waiting for perform to return…");
}

uint64_t sub_100189420()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #2 in Action.execute(checkSupportedStatus:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v6, v7, v1 + v5);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, v1 + 32, (v1 + 288));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, (v1 + 32));
}

{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v6, v7, v1 + v5);
}

{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v6, v7, v1 + v5);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return specialized closure #2 in Action.execute(checkSupportedStatus:)(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t partial apply for specialized closure #1 in closure #2 in Action.execute(checkSupportedStatus:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8DownloadO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO14RemoveDownloadO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v1 + 16, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[4];
  v6[2] = v1[3];
  v6[3] = v2;
  v3 = v1[6];
  v6[4] = v1[5];
  v6[5] = v3;
  v4 = v1[2];
  v6[0] = v1[1];
  v6[1] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO15UndoSuggestLessO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO11SuggestLessO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12UndoFavoriteO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO8FavoriteO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12DeleteFolderO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12RenameFolderO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12CreateFolderO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO17DeleteFromLibraryO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO13AddToPlaylistO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12MoveToFolderO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = v1[6];
  v6[4] = v1[5];
  v6[5] = v2;
  v6[6] = v1[7];
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v4 = v1[4];
  v6[2] = v1[3];
  v6[3] = v4;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v6, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12AddToLibraryO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  return partial apply for specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  return partial apply for specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR, "%{public}s: waiting for finish to return…");
}

{
  v2 = *(v1 + 128);
  v7[6] = *(v1 + 112);
  v7[7] = v2;
  v8 = *(v1 + 144);
  v3 = *(v1 + 64);
  v7[2] = *(v1 + 48);
  v7[3] = v3;
  v4 = *(v1 + 96);
  v7[4] = *(v1 + 80);
  v7[5] = v4;
  v5 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v5;
  return specialized closure #1 in Action.execute(checkSupportedStatus:)(a1, v7, "%{public}s: waiting for finish to return…");
}

uint64_t _s9MusicCore6NoticeV7VariantOWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100189C00()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_95Tm()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v1);
  }

  if (*(v0 + 160))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100189E70()
{
  v1 = type metadata accessor for URL();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t _s9MusicCore5AlertV6ActionV10tapToRadar5title11description11screenshots11attachments5files8keywords16withDevicePrefixAESgSSSg_SSSaySo7UIImageCGSDySS10Foundation4DataVGSayAS3URLVGSayAA3TTRO7KeywordOGSbtFZyAE_ACSgtYaYbScMYccfU_TA_0(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for URL() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(a1, a2, v2 + v7);
}

uint64_t sub_10018A020()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_288Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = type metadata accessor for MusicPin.Item();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_10018B784()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t Library.ContentFilterOption.id.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0x657469726F766166;
  }

  return 0x64616F6C6E776F64;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Library.ContentFilterOption(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657469726F766166;
  if (v2 != 1)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 7105633;
  }

  if (v2)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = 0x657469726F766166;
  if (*a2 != 1)
  {
    v6 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7105633;
  }

  if (*a2)
  {
    v8 = 0xE900000000000073;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Library.ContentFilterOption@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Library.ContentFilterOption.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Library.ContentFilterOption(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x657469726F766166;
  if (v2 != 1)
  {
    v4 = 0x64616F6C6E776F64;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7105633;
  }

  if (!v5)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Library.ContentFilterOption()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Library.ContentFilterOption(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Library.ContentFilterOption(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void *Optional<A>.convertToSet.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      return 0;
    }
  }

  else if (!a1)
  {

    return &_swiftEmptySetSingleton;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    return &_swiftEmptySetSingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore7LibraryO19ContentFilterOptionOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore7LibraryO19ContentFilterOptionOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = a1;
  v5 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9MusicCore7LibraryO19ContentFilterOptionO_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  return v5;
}

uint64_t Library.Context.musicLibrary.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Library.Context.useDownloadedContentOnly.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t Library.Context.sortOption.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.filterOption.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for Library.Context(0) + 60));

  return v1;
}

uint64_t Library.Context.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Library.Context(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double Library.Context.playlistVariants.getter()
{
  type metadata accessor for Library.Context(0);

  return result;
}

uint64_t Library.Context.playlistVariants.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Library.Context(0) + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Library.Context.isCompilation.setter(char a1)
{
  result = type metadata accessor for Library.Context(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t Library.Context.init()@<X0>(char *a1@<X8>)
{
  type metadata accessor for MusicLibrary();
  *a1 = static MusicLibrary.shared.getter();
  v2 = type metadata accessor for Library.Context(0);
  v3 = v2[5];
  v4 = type metadata accessor for Album();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Artist();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for Composer();
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[8];
  v10 = type metadata accessor for Genre();
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = v2[9];
  v12 = type metadata accessor for Playlist();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v2[10];
  v14 = type metadata accessor for TVShow();
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v2[11];
  v16 = type metadata accessor for TVSeason();
  result = (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
  a1[v2[12]] = 0;
  a1[v2[13]] = 2;
  a1[v2[14]] = 3;
  v18 = &a1[v2[15]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&a1[v2[16]] = _swiftEmptyArrayStorage;
  a1[v2[17]] = 2;
  return result;
}

uint64_t Library.Context.with<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v36 = type metadata accessor for TVSeason();
  v33 = *(v36 - 8);
  __chkstk_darwin();
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TVShow();
  v34 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Playlist();
  v37 = *(v42 - 8);
  __chkstk_darwin();
  v41 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Genre();
  v40 = *(v45 - 8);
  __chkstk_darwin();
  v44 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Composer();
  v43 = *(v48 - 8);
  __chkstk_darwin();
  v47 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Artist();
  v46 = *(v49 - 8);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Album();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v32 - v20;
  v50 = a3;
  outlined init with copy of Library.Context(v52, a3);
  v52 = v17;
  v22 = *(v17 + 16);
  v22(v21, v51, v16);
  v51 = *(a2 - 8);
  if ((*(v51 + 48))(v21, 1, a2) != 1)
  {
    v32 = v16;
    v22(v19, v21, v16);
    v23 = a2;
    v24 = v19;
    if (swift_dynamicCast())
    {
      v25 = *(type metadata accessor for Library.Context(0) + 20);
      v26 = v50;
      outlined destroy of TaskPriority?(v50 + v25, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
      (*(v13 + 32))(v26 + v25, v15, v12);
      (*(v13 + 56))(v26 + v25, 0, 1, v12);
LABEL_17:
      (*(v51 + 8))(v24, v23);
      v16 = v32;
      return (*(v52 + 8))(v21, v16);
    }

    v27 = v49;
    if (swift_dynamicCast())
    {
      v28 = *(type metadata accessor for Library.Context(0) + 24);
      v29 = v50;
      outlined destroy of TaskPriority?(v50 + v28, &_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
      v30 = v46;
    }

    else
    {
      v11 = v47;
      v27 = v48;
      if (swift_dynamicCast())
      {
        v28 = *(type metadata accessor for Library.Context(0) + 28);
        v29 = v50;
        outlined destroy of TaskPriority?(v50 + v28, &_s16MusicKitInternal8ComposerVSgMd, &_s16MusicKitInternal8ComposerVSgMR);
        v30 = v43;
      }

      else
      {
        v11 = v44;
        v27 = v45;
        if (swift_dynamicCast())
        {
          v28 = *(type metadata accessor for Library.Context(0) + 32);
          v29 = v50;
          outlined destroy of TaskPriority?(v50 + v28, &_s8MusicKit5GenreVSgMd, &_s8MusicKit5GenreVSgMR);
          v30 = v40;
        }

        else
        {
          v11 = v41;
          v27 = v42;
          if (swift_dynamicCast())
          {
            v28 = *(type metadata accessor for Library.Context(0) + 36);
            v29 = v50;
            outlined destroy of TaskPriority?(v50 + v28, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
            v30 = v37;
          }

          else
          {
            v11 = v38;
            v27 = v39;
            if (swift_dynamicCast())
            {
              v28 = *(type metadata accessor for Library.Context(0) + 40);
              v29 = v50;
              outlined destroy of TaskPriority?(v50 + v28, &_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
              v30 = v34;
            }

            else
            {
              v11 = v35;
              v27 = v36;
              if (!swift_dynamicCast())
              {
                goto LABEL_17;
              }

              v28 = *(type metadata accessor for Library.Context(0) + 44);
              v29 = v50;
              outlined destroy of TaskPriority?(v50 + v28, &_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
              v30 = v33;
            }
          }
        }
      }
    }

    (*(v30 + 32))(v29 + v28, v11, v27);
    (*(v30 + 56))(v29 + v28, 0, 1, v27);
    goto LABEL_17;
  }

  return (*(v52 + 8))(v21, v16);
}

uint64_t Library.Context.with(compilation:)@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of Library.Context(v1, a1);
  result = type metadata accessor for Library.Context(0);
  *(a1 + *(result + 68)) = 1;
  return result;
}

uint64_t Library.Context.with(sortOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  outlined init with copy of Library.Context(v2, a2);
  result = type metadata accessor for Library.Context(0);
  *(a2 + *(result + 52)) = a1;
  return result;
}

uint64_t Library.Context.with(filterOption:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  outlined init with copy of Library.Context(v2, a2);
  result = type metadata accessor for Library.Context(0);
  *(a2 + *(result + 56)) = a1;
  return result;
}

uint64_t Library.Context.with(filterText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of Library.Context(v3, a3);
  v7 = (a3 + *(type metadata accessor for Library.Context(0) + 60));

  *v7 = a1;
  v7[1] = a2;
  return result;
}

Swift::Int Library.Context.SortOption.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Library.Context.SortOption()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Library.Context.SortOption()
{
  v1 = *v0;
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Library.Context.SortOption(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void Library.Context.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Playlist.Variant();
  v4 = *(v3 - 8);
  v93 = v3;
  v94 = v4;
  __chkstk_darwin();
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for TVSeason();
  v91 = *(v96 - 8);
  __chkstk_darwin();
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
  __chkstk_darwin();
  v92 = &v69 - v7;
  v89 = type metadata accessor for TVShow();
  v95 = *(v89 - 8);
  __chkstk_darwin();
  v74 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
  __chkstk_darwin();
  v90 = &v69 - v9;
  v85 = type metadata accessor for Playlist();
  v88 = *(v85 - 8);
  __chkstk_darwin();
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  __chkstk_darwin();
  v87 = &v69 - v11;
  v82 = type metadata accessor for Genre();
  v86 = *(v82 - 8);
  __chkstk_darwin();
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5GenreVSgMd, &_s8MusicKit5GenreVSgMR);
  __chkstk_darwin();
  v81 = &v69 - v13;
  v14 = type metadata accessor for Composer();
  v83 = *(v14 - 8);
  v84 = v14;
  __chkstk_darwin();
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal8ComposerVSgMd, &_s16MusicKitInternal8ComposerVSgMR);
  __chkstk_darwin();
  v80 = &v69 - v16;
  v17 = type metadata accessor for Artist();
  v78 = *(v17 - 8);
  v79 = v17;
  __chkstk_darwin();
  v70 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
  __chkstk_darwin();
  v77 = &v69 - v19;
  v20 = type metadata accessor for Album();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  __chkstk_darwin();
  v25 = &v69 - v24;
  v97 = *v1;
  type metadata accessor for MusicLibrary();
  lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type MusicLibrary and conformance MusicLibrary, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  v26 = type metadata accessor for Library.Context(0);
  outlined init with copy of TaskPriority?(v1 + v26[5], v25, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  if ((*(v21 + 48))(v25, 1, v20) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v21 + 32))(v23, v25, v20);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type Album and conformance Album, &type metadata accessor for Album, &protocol conformance descriptor for Album);
    dispatch thunk of Hashable.hash(into:)();
    (*(v21 + 8))(v23, v20);
  }

  v27 = v77;
  outlined init with copy of TaskPriority?(v1 + v26[6], v77, &_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
  v29 = v78;
  v28 = v79;
  v30 = (*(v78 + 48))(v27, 1, v79);
  v32 = v80;
  v31 = v81;
  if (v30 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v33 = v27;
    v34 = v70;
    (*(v29 + 32))(v70, v33, v28);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type Artist and conformance Artist, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v29 + 8))(v34, v28);
  }

  v35 = v87;
  v36 = v84;
  outlined init with copy of TaskPriority?(v1 + v26[7], v32, &_s16MusicKitInternal8ComposerVSgMd, &_s16MusicKitInternal8ComposerVSgMR);
  v37 = v83;
  if ((*(v83 + 48))(v32, 1, v36) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v38 = v71;
    (*(v37 + 32))(v71, v32, v36);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type Composer and conformance Composer, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    dispatch thunk of Hashable.hash(into:)();
    (*(v37 + 8))(v38, v36);
  }

  v39 = v82;
  outlined init with copy of TaskPriority?(v2 + v26[8], v31, &_s8MusicKit5GenreVSgMd, &_s8MusicKit5GenreVSgMR);
  v40 = v86;
  if ((*(v86 + 48))(v31, 1, v39) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v41 = v72;
    (*(v40 + 32))(v72, v31, v39);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type Genre and conformance Genre, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);
    dispatch thunk of Hashable.hash(into:)();
    (*(v40 + 8))(v41, v39);
  }

  v42 = v89;
  v43 = v91;
  outlined init with copy of TaskPriority?(v2 + v26[9], v35, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  v44 = v88;
  v45 = v85;
  if ((*(v88 + 48))(v35, 1, v85) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v46 = v73;
    (*(v44 + 32))(v73, v35, v45);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v44 + 8))(v46, v45);
  }

  v47 = v90;
  outlined init with copy of TaskPriority?(v2 + v26[10], v90, &_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
  if ((*(v95 + 6))(v47, 1, v42) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v48 = v95;
    v49 = v74;
    (*(v95 + 4))(v74, v47, v42);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type TVShow and conformance TVShow, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
    dispatch thunk of Hashable.hash(into:)();
    (*(v48 + 1))(v49, v42);
  }

  v50 = v92;
  outlined init with copy of TaskPriority?(v2 + v26[11], v92, &_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
  if ((*(v43 + 48))(v50, 1, v96) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v51 = v75;
    v52 = v96;
    (*(v43 + 32))(v75, v50, v96);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type TVSeason and conformance TVSeason, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    dispatch thunk of Hashable.hash(into:)();
    (*(v43 + 8))(v51, v52);
  }

  v53 = v93;
  Hasher._combine(_:)(*(v2 + v26[12]));
  v54 = *(v2 + v26[13]);
  if (v54 == 2)
  {
    v55 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(0);
    v55 = v54 & 1;
  }

  Hasher._combine(_:)(v55);
  v56 = *(v2 + v26[14]);
  if (v56 == 3)
  {
    Hasher._combine(_:)(0);
    v57 = v76;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v57 = v76;
    String.hash(into:)();
  }

  if (*(v2 + v26[15] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v95 = v26;
  v96 = v2;
  v58 = *(v2 + v26[16]);
  Hasher._combine(_:)(*(v58 + 16));
  v59 = *(v58 + 16);
  if (v59)
  {
    v60 = v57;
    v61 = v94 + 16;
    v62 = *(v94 + 16);
    v63 = v58 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v64 = *(v94 + 72);
    v65 = (v94 + 8);
    do
    {
      v66 = v61;
      v62(v60, v63, v53);
      lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
      dispatch thunk of Hashable.hash(into:)();
      (*v65)(v60, v53);
      v61 = v66;
      v63 += v64;
      --v59;
    }

    while (v59);
  }

  v67 = *(v96 + v95[17]);
  if (v67 == 2)
  {
    v68 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v68 = v67 & 1;
  }

  Hasher._combine(_:)(v68);
}

Swift::Int Library.Context.hashValue.getter()
{
  Hasher.init(_seed:)();
  Library.Context.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Library.Context(uint64_t a1)
{
  Hasher.init(_seed:)();
  Library.Context.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for defaultValue()
{
  v0 = type metadata accessor for Library.Context(0);
  __swift_allocate_value_buffer(v0, static EnvironmentValues.LibraryContextKey.defaultValue);
  v1 = __swift_project_value_buffer(v0, static EnvironmentValues.LibraryContextKey.defaultValue);
  type metadata accessor for MusicLibrary();
  *v1 = static MusicLibrary.shared.getter();
  v2 = v0[5];
  v3 = type metadata accessor for Album();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v4 = v0[6];
  v5 = type metadata accessor for Artist();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = v0[7];
  v7 = type metadata accessor for Composer();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = v0[8];
  v9 = type metadata accessor for Genre();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = v0[9];
  v11 = type metadata accessor for Playlist();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v12 = v0[10];
  v13 = type metadata accessor for TVShow();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = v0[11];
  v15 = type metadata accessor for TVSeason();
  result = (*(*(v15 - 8) + 56))(&v1[v14], 1, 1, v15);
  v1[v0[12]] = 0;
  v1[v0[13]] = 2;
  v1[v0[14]] = 3;
  v17 = &v1[v0[15]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v1[v0[16]] = _swiftEmptyArrayStorage;
  v1[v0[17]] = 2;
  return result;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO4ViewV5StyleVSgMR);
  __swift_allocate_value_buffer(v0, static EnvironmentValues.PlaceholderStyleKey.defaultValue);
  v1 = __swift_project_value_buffer(v0, static EnvironmentValues.PlaceholderStyleKey.defaultValue);
  v2 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.LibraryContextKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Library.Context(0);
  v3 = __swift_project_value_buffer(v2, static EnvironmentValues.LibraryContextKey.defaultValue);

  return outlined init with copy of Library.Context(v3, a1);
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.LibraryContextKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type Library.Context and conformance Library.Context, type metadata accessor for Library.Context, &protocol conformance descriptor for Library.Context);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.libraryContext.getter()
{
  lazy protocol witness table accessor for type EnvironmentValues.LibraryContextKey and conformance EnvironmentValues.LibraryContextKey();

  return EnvironmentValues.subscript.getter();
}

uint64_t EnvironmentValues.libraryContext.setter(uint64_t a1)
{
  type metadata accessor for Library.Context(0);
  __chkstk_darwin();
  outlined init with copy of Library.Context(a1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  lazy protocol witness table accessor for type EnvironmentValues.LibraryContextKey and conformance EnvironmentValues.LibraryContextKey();
  EnvironmentValues.subscript.setter();
  return outlined destroy of Library.Context(a1);
}

void (*EnvironmentValues.libraryContext.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(type metadata accessor for Library.Context(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = lazy protocol witness table accessor for type EnvironmentValues.LibraryContextKey and conformance EnvironmentValues.LibraryContextKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.libraryContext.modify;
}

void EnvironmentValues.libraryContext.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  outlined init with copy of Library.Context((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    outlined init with copy of Library.Context(v3[2], v3[1]);
    EnvironmentValues.subscript.setter();
    outlined destroy of Library.Context(v6);
  }

  else
  {
    EnvironmentValues.subscript.setter();
  }

  outlined destroy of Library.Context(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t View.libraryContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t key path setter for EnvironmentValues.libraryContext : EnvironmentValues(uint64_t a1)
{
  type metadata accessor for Library.Context(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  outlined init with copy of Library.Context(a1, &v7 - v4);
  outlined init with copy of Library.Context(v5, v3);
  lazy protocol witness table accessor for type EnvironmentValues.LibraryContextKey and conformance EnvironmentValues.LibraryContextKey();
  EnvironmentValues.subscript.setter();
  return outlined destroy of Library.Context(v5);
}

uint64_t MusicLibraryRequest.apply(_:)(void *a1, uint64_t a2)
{

  MusicLibraryRequest.library.setter();
  v4 = *(a1 + *(type metadata accessor for Library.Context(0) + 48));

  return MusicLibraryRequest.includeOnlyDownloadedContent.setter(v4, a2);
}

uint64_t specialized static Library.Context.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v146 = type metadata accessor for TVSeason();
  v147 = *(v146 - 8);
  __chkstk_darwin();
  v141 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
  __chkstk_darwin();
  v142 = &v138 - v5;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal8TVSeasonVSg_ADtMd, &_s16MusicKitInternal8TVSeasonVSg_ADtMR);
  __chkstk_darwin();
  v145 = &v138 - v6;
  v152 = type metadata accessor for TVShow();
  v153 = *(v152 - 8);
  __chkstk_darwin();
  v143 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
  __chkstk_darwin();
  v150 = &v138 - v8;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal6TVShowVSg_ADtMd, &_s16MusicKitInternal6TVShowVSg_ADtMR);
  __chkstk_darwin();
  v151 = &v138 - v9;
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  v158 = v10;
  v159 = v11;
  __chkstk_darwin();
  v148 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  __chkstk_darwin();
  v156 = &v138 - v13;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSg_ADtMd, &_s8MusicKit8PlaylistVSg_ADtMR);
  __chkstk_darwin();
  v157 = &v138 - v14;
  v163 = type metadata accessor for Genre();
  v165 = *(v163 - 8);
  __chkstk_darwin();
  v154 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5GenreVSgMd, &_s8MusicKit5GenreVSgMR);
  __chkstk_darwin();
  v171 = &v138 - v16;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5GenreVSg_ADtMd, &_s8MusicKit5GenreVSg_ADtMR);
  __chkstk_darwin();
  v162 = &v138 - v17;
  v18 = type metadata accessor for Composer();
  v168 = *(v18 - 8);
  v169 = v18;
  __chkstk_darwin();
  v160 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal8ComposerVSgMd, &_s16MusicKitInternal8ComposerVSgMR);
  __chkstk_darwin();
  v164 = &v138 - v20;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal8ComposerVSg_ADtMd, &_s16MusicKitInternal8ComposerVSg_ADtMR);
  __chkstk_darwin();
  v174 = &v138 - v21;
  v173 = type metadata accessor for Artist();
  v175 = *(v173 - 8);
  __chkstk_darwin();
  v166 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
  __chkstk_darwin();
  v170 = &v138 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit6ArtistVSg_ADtMd, &_s8MusicKit6ArtistVSg_ADtMR);
  __chkstk_darwin();
  v172 = &v138 - v25;
  v26 = type metadata accessor for Album();
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v29 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  __chkstk_darwin();
  v31 = &v138 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSg_ADtMd, &_s8MusicKit5AlbumVSg_ADtMR);
  __chkstk_darwin();
  v34 = &v138 - v33;
  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v35 = type metadata accessor for Library.Context(0);
  v176 = a2;
  v36 = a1;
  v139 = v35;
  v37 = *(v35 + 20);
  v38 = *(v32 + 48);
  v140 = v36;
  outlined init with copy of TaskPriority?(v36 + v37, v34, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  outlined init with copy of TaskPriority?(v176 + v37, &v34[v38], &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  v39 = *(v27 + 48);
  if (v39(v34, 1, v26) == 1)
  {
    if (v39(&v34[v38], 1, v26) == 1)
    {
      outlined destroy of TaskPriority?(v34, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
      goto LABEL_9;
    }

LABEL_7:
    v40 = &_s8MusicKit5AlbumVSg_ADtMd;
    v41 = &_s8MusicKit5AlbumVSg_ADtMR;
    v42 = v34;
LABEL_44:
    outlined destroy of TaskPriority?(v42, v40, v41);
    return 0;
  }

  outlined init with copy of TaskPriority?(v34, v31, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  if (v39(&v34[v38], 1, v26) == 1)
  {
    (*(v27 + 8))(v31, v26);
    goto LABEL_7;
  }

  (*(v27 + 32))(v29, &v34[v38], v26);
  lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type Album and conformance Album, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v27 + 8);
  v44(v29, v26);
  v44(v31, v26);
  outlined destroy of TaskPriority?(v34, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v45 = v139;
  v46 = v139[6];
  v47 = *(v24 + 48);
  v48 = v172;
  outlined init with copy of TaskPriority?(v140 + v46, v172, &_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
  v49 = v176 + v46;
  v50 = v176;
  outlined init with copy of TaskPriority?(v49, v48 + v47, &_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
  v51 = *(v175 + 48);
  v52 = v173;
  if (v51(v48, 1, v173) == 1)
  {
    v53 = v51(v48 + v47, 1, v52);
    v54 = v171;
    v55 = v174;
    if (v53 == 1)
    {
      outlined destroy of TaskPriority?(v48, &_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v56 = v170;
  outlined init with copy of TaskPriority?(v48, v170, &_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
  v57 = v51(v48 + v47, 1, v52);
  v55 = v174;
  if (v57 == 1)
  {
    (*(v175 + 8))(v56, v52);
LABEL_14:
    v40 = &_s8MusicKit6ArtistVSg_ADtMd;
    v41 = &_s8MusicKit6ArtistVSg_ADtMR;
    v42 = v48;
    goto LABEL_44;
  }

  v58 = v175;
  v59 = v48 + v47;
  v60 = v45;
  v61 = v48;
  v62 = v166;
  (*(v175 + 32))(v166, v59, v52);
  lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type Artist and conformance Artist, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
  v63 = dispatch thunk of static Equatable.== infix(_:_:)();
  v64 = *(v58 + 8);
  v64(v62, v52);
  v64(v56, v52);
  v65 = v61;
  v45 = v60;
  v54 = v171;
  outlined destroy of TaskPriority?(v65, &_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v66 = v45[7];
  v67 = v50;
  v68 = *(v167 + 48);
  outlined init with copy of TaskPriority?(v140 + v66, v55, &_s16MusicKitInternal8ComposerVSgMd, &_s16MusicKitInternal8ComposerVSgMR);
  outlined init with copy of TaskPriority?(v67 + v66, v55 + v68, &_s16MusicKitInternal8ComposerVSgMd, &_s16MusicKitInternal8ComposerVSgMR);
  v70 = v168;
  v69 = v169;
  v71 = *(v168 + 48);
  if (v71(v55, 1, v169) == 1)
  {
    if (v71(v55 + v68, 1, v69) == 1)
    {
      outlined destroy of TaskPriority?(v55, &_s16MusicKitInternal8ComposerVSgMd, &_s16MusicKitInternal8ComposerVSgMR);
      goto LABEL_23;
    }

LABEL_21:
    v40 = &_s16MusicKitInternal8ComposerVSg_ADtMd;
    v41 = &_s16MusicKitInternal8ComposerVSg_ADtMR;
LABEL_43:
    v42 = v55;
    goto LABEL_44;
  }

  v72 = v164;
  outlined init with copy of TaskPriority?(v55, v164, &_s16MusicKitInternal8ComposerVSgMd, &_s16MusicKitInternal8ComposerVSgMR);
  if (v71(v55 + v68, 1, v69) == 1)
  {
    (*(v70 + 8))(v72, v69);
    goto LABEL_21;
  }

  v73 = v55 + v68;
  v74 = v160;
  (*(v70 + 32))(v160, v73, v69);
  lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type Composer and conformance Composer, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();
  v76 = *(v70 + 8);
  v76(v74, v69);
  v76(v72, v69);
  outlined destroy of TaskPriority?(v55, &_s16MusicKitInternal8ComposerVSgMd, &_s16MusicKitInternal8ComposerVSgMR);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v77 = v45[8];
  v55 = v162;
  v78 = *(v161 + 48);
  outlined init with copy of TaskPriority?(v140 + v77, v162, &_s8MusicKit5GenreVSgMd, &_s8MusicKit5GenreVSgMR);
  outlined init with copy of TaskPriority?(v176 + v77, v55 + v78, &_s8MusicKit5GenreVSgMd, &_s8MusicKit5GenreVSgMR);
  v79 = *(v165 + 48);
  v80 = v163;
  if (v79(v55, 1, v163) == 1)
  {
    if (v79(v55 + v78, 1, v80) == 1)
    {
      outlined destroy of TaskPriority?(v55, &_s8MusicKit5GenreVSgMd, &_s8MusicKit5GenreVSgMR);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  outlined init with copy of TaskPriority?(v55, v54, &_s8MusicKit5GenreVSgMd, &_s8MusicKit5GenreVSgMR);
  if (v79(v55 + v78, 1, v80) == 1)
  {
    (*(v165 + 8))(v54, v80);
LABEL_28:
    v40 = &_s8MusicKit5GenreVSg_ADtMd;
    v41 = &_s8MusicKit5GenreVSg_ADtMR;
    goto LABEL_43;
  }

  v81 = v54;
  v82 = v165;
  v83 = v55 + v78;
  v84 = v154;
  (*(v165 + 32))(v154, v83, v80);
  lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type Genre and conformance Genre, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);
  v85 = dispatch thunk of static Equatable.== infix(_:_:)();
  v86 = *(v82 + 8);
  v86(v84, v80);
  v86(v81, v80);
  outlined destroy of TaskPriority?(v55, &_s8MusicKit5GenreVSgMd, &_s8MusicKit5GenreVSgMR);
  if ((v85 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v87 = v45[9];
  v88 = *(v155 + 48);
  v55 = v157;
  outlined init with copy of TaskPriority?(v140 + v87, v157, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  outlined init with copy of TaskPriority?(v176 + v87, v55 + v88, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  v89 = v158;
  v90 = *(v159 + 48);
  if (v90(v55, 1, v158) == 1)
  {
    if (v90(v55 + v88, 1, v89) == 1)
    {
      outlined destroy of TaskPriority?(v55, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  outlined init with copy of TaskPriority?(v55, v156, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  if (v90(v55 + v88, 1, v89) == 1)
  {
    (*(v159 + 8))(v156, v89);
LABEL_35:
    v40 = &_s8MusicKit8PlaylistVSg_ADtMd;
    v41 = &_s8MusicKit8PlaylistVSg_ADtMR;
    goto LABEL_43;
  }

  v91 = v159;
  v92 = v55 + v88;
  v93 = v148;
  (*(v159 + 32))(v148, v92, v89);
  lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type Playlist and conformance Playlist, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  v94 = v156;
  v95 = dispatch thunk of static Equatable.== infix(_:_:)();
  v96 = *(v91 + 8);
  v96(v93, v89);
  v96(v94, v89);
  outlined destroy of TaskPriority?(v55, &_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v97 = v45[10];
  v98 = *(v149 + 48);
  v55 = v151;
  outlined init with copy of TaskPriority?(v140 + v97, v151, &_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
  outlined init with copy of TaskPriority?(v176 + v97, v55 + v98, &_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
  v99 = *(v153 + 48);
  v100 = v152;
  if (v99(v55, 1, v152) == 1)
  {
    if (v99(v55 + v98, 1, v100) == 1)
    {
      outlined destroy of TaskPriority?(v55, &_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  outlined init with copy of TaskPriority?(v55, v150, &_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
  if (v99(v55 + v98, 1, v100) == 1)
  {
    (*(v153 + 8))(v150, v100);
LABEL_42:
    v40 = &_s16MusicKitInternal6TVShowVSg_ADtMd;
    v41 = &_s16MusicKitInternal6TVShowVSg_ADtMR;
    goto LABEL_43;
  }

  v102 = v153;
  v103 = v55 + v98;
  v104 = v143;
  (*(v153 + 32))(v143, v103, v100);
  lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type TVShow and conformance TVShow, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  v105 = v150;
  v106 = dispatch thunk of static Equatable.== infix(_:_:)();
  v107 = *(v102 + 8);
  v107(v104, v100);
  v107(v105, v100);
  outlined destroy of TaskPriority?(v55, &_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
  if ((v106 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  v108 = v45[11];
  v109 = *(v144 + 48);
  v110 = v145;
  outlined init with copy of TaskPriority?(v140 + v108, v145, &_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
  outlined init with copy of TaskPriority?(v176 + v108, v110 + v109, &_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
  v111 = *(v147 + 48);
  v112 = v146;
  if (v111(v110, 1, v146) == 1)
  {
    if (v111(v110 + v109, 1, v112) == 1)
    {
      outlined destroy of TaskPriority?(v110, &_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v113 = v142;
  outlined init with copy of TaskPriority?(v110, v142, &_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
  if (v111(v110 + v109, 1, v112) == 1)
  {
    (*(v147 + 8))(v113, v112);
LABEL_53:
    v40 = &_s16MusicKitInternal8TVSeasonVSg_ADtMd;
    v41 = &_s16MusicKitInternal8TVSeasonVSg_ADtMR;
    v42 = v110;
    goto LABEL_44;
  }

  v114 = v147;
  v115 = v110 + v109;
  v116 = v141;
  (*(v147 + 32))(v141, v115, v112);
  lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(&lazy protocol witness table cache variable for type TVSeason and conformance TVSeason, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v117 = dispatch thunk of static Equatable.== infix(_:_:)();
  v118 = *(v114 + 8);
  v118(v116, v112);
  v118(v113, v112);
  outlined destroy of TaskPriority?(v110, &_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
  if ((v117 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  if (*(v140 + v45[12]) != *(v176 + v45[12]))
  {
    return 0;
  }

  v119 = v45[13];
  v120 = *(v140 + v119);
  v121 = *(v176 + v119);
  if (v120 == 2)
  {
    if (v121 != 2)
    {
      return 0;
    }

    goto LABEL_61;
  }

  result = 0;
  if (v121 != 2 && ((v121 ^ v120) & 1) == 0)
  {
LABEL_61:
    v122 = v45[14];
    v123 = *(v140 + v122);
    v124 = *(v176 + v122);
    if (v123 == 3)
    {
      if (v124 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v124 == 3)
      {
        return 0;
      }

      v125 = 0xE900000000000073;
      v126 = 7105633;
      if (v123)
      {
        if (v123 == 1)
        {
          v127 = 0x657469726F766166;
        }

        else
        {
          v127 = 0x64616F6C6E776F64;
        }

        v128 = 0xE900000000000073;
      }

      else
      {
        v128 = 0xE300000000000000;
        v127 = 7105633;
      }

      if (v124)
      {
        if (v124 == 1)
        {
          v126 = 0x657469726F766166;
        }

        else
        {
          v126 = 0x64616F6C6E776F64;
        }
      }

      else
      {
        v125 = 0xE300000000000000;
      }

      if (v127 == v126 && v128 == v125)
      {

        v45 = v139;
      }

      else
      {
        v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v45 = v139;
        if ((v129 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v130 = v45[15];
    v131 = (v140 + v130);
    v132 = *(v140 + v130 + 8);
    v133 = (v176 + v130);
    v134 = v133[1];
    if (v132)
    {
      if (v134 && (*v131 == *v133 && v132 == v134 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
LABEL_87:
        if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8MusicKit8PlaylistV0bC8InternalE7VariantO_Tt1g5(*(v140 + v139[16]), *(v176 + v139[16])))
        {
          v135 = v139[17];
          v136 = *(v140 + v135);
          v137 = *(v176 + v135);
          if (v136 == 2)
          {
            if (v137 == 2)
            {
              return 1;
            }
          }

          else if (v137 != 2 && ((v137 ^ v136) & 1) == 0)
          {
            return 1;
          }
        }
      }
    }

    else if (!v134)
    {
      goto LABEL_87;
    }

    return 0;
  }

  return result;
}

unint64_t specialized Library.ContentFilterOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Library.ContentFilterOption.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for Library.Context(uint64_t a1)
{
  result = type metadata singleton initialization cache for Library.Context;
  if (!type metadata singleton initialization cache for Library.Context)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Library.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Library.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.LibraryContextKey and conformance EnvironmentValues.LibraryContextKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.LibraryContextKey and conformance EnvironmentValues.LibraryContextKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.LibraryContextKey and conformance EnvironmentValues.LibraryContextKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.LibraryContextKey and conformance EnvironmentValues.LibraryContextKey);
  }

  return result;
}

uint64_t outlined destroy of Library.Context(uint64_t a1)
{
  v2 = type metadata accessor for Library.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Library.ContentFilterOption and conformance Library.ContentFilterOption()
{
  result = lazy protocol witness table cache variable for type Library.ContentFilterOption and conformance Library.ContentFilterOption;
  if (!lazy protocol witness table cache variable for type Library.ContentFilterOption and conformance Library.ContentFilterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.ContentFilterOption and conformance Library.ContentFilterOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.ContentFilterOption and conformance Library.ContentFilterOption;
  if (!lazy protocol witness table cache variable for type Library.ContentFilterOption and conformance Library.ContentFilterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.ContentFilterOption and conformance Library.ContentFilterOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Library.Context.SortOption and conformance Library.Context.SortOption()
{
  result = lazy protocol witness table cache variable for type Library.Context.SortOption and conformance Library.Context.SortOption;
  if (!lazy protocol witness table cache variable for type Library.Context.SortOption and conformance Library.Context.SortOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Context.SortOption and conformance Library.Context.SortOption);
  }

  return result;
}

uint64_t sub_100190A24(char *a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_17:
    v17 = *(v10 + 48);

    return v17(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_17;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal8ComposerVSgMd, &_s16MusicKitInternal8ComposerVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_17;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5GenreVSgMd, &_s8MusicKit5GenreVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_17;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[9];
    goto LABEL_17;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[10];
    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
  v19 = *(*(v18 - 8) + 48);
  v20 = &a1[a3[11]];

  return v19(v20, a2, v18);
}

char *sub_100190D18(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_15:
    v17 = *(v10 + 56);

    return v17(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal8ComposerVSgMd, &_s16MusicKitInternal8ComposerVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5GenreVSgMd, &_s8MusicKit5GenreVSgMR);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[9];
    goto LABEL_15;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal6TVShowVSgMd, &_s16MusicKitInternal6TVShowVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[10];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal8TVSeasonVSgMd, &_s16MusicKitInternal8TVSeasonVSgMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = &v5[a4[11]];

  return v19(v20, a2, a2, v18);
}

void type metadata completion function for Library.Context(uint64_t a1)
{
  type metadata accessor for MusicLibrary();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Album?(319, &lazy cache variable for type metadata for Album?, &type metadata accessor for Album, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Album?(319, &lazy cache variable for type metadata for Artist?, &type metadata accessor for Artist, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Album?(319, &lazy cache variable for type metadata for Composer?, &type metadata accessor for Composer, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Album?(319, &lazy cache variable for type metadata for Genre?, &type metadata accessor for Genre, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Album?(319, &lazy cache variable for type metadata for Playlist?, &type metadata accessor for Playlist, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Album?(319, &lazy cache variable for type metadata for TVShow?, &type metadata accessor for TVShow, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Album?(319, &lazy cache variable for type metadata for TVSeason?, &type metadata accessor for TVSeason, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Library.Context.SortOption?, &type metadata for Library.Context.SortOption);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Library.ContentFilterOption?, &type metadata for Library.ContentFilterOption);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for String?, &type metadata for String);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for Album?(319, &lazy cache variable for type metadata for [Playlist.Variant], &type metadata accessor for Playlist.Variant, &type metadata accessor for Array);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for MetricsEvent.Click.ActionContext?(319, &lazy cache variable for type metadata for Bool?, &type metadata for Bool);
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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
    }
  }
}

void type metadata accessor for Album?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1001913C0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore7LibraryO7ContextVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore7LibraryO7ContextVGMR);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Library.Context> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Library.Context> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Library.Context> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Library.Context> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore7LibraryO7ContextVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy9MusicCore7LibraryO7ContextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Library.Context> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MusicLibrary and conformance MusicLibrary(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void specialized Sequence.forEach(_:)(uint64_t a1, char **a2)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = *(*(a1 + 48) + (__clz(__rbit64(v8)) | (v11 << 6)));
      closure #2 in Library.Menu.Revision.migrate(to:)(&v12, a2);
      if (v2)
      {
        break;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_11;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

BOOL specialized Sequence<>.contains(_:)(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = ActionType.rawValue.getter(*v4);
    v9 = v8;
    if (v7 == ActionType.rawValue.getter(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v8 = 0xD000000000000029;
    v9 = "orites";
    switch(*v4)
    {
      case 1:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v8 = 0xD000000000000023;
        v9 = "LibraryView.Playlists";
        break;
      case 3:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.Artists";
        break;
      case 4:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Albums";
        break;
      case 5:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Songs";
        break;
      case 6:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.MadeForYou";
        break;
      case 7:
        v8 = 0xD000000000000022;
        v9 = "LibraryView.MusicVideos";
        break;
      case 8:
        v8 = 0xD000000000000028;
        v9 = "LibraryView.Genres";
        break;
      case 9:
        v8 = 0xD000000000000025;
        v9 = "LibraryView.Compilations";
        break;
      case 0xA:
        v8 = 0xD000000000000021;
        v9 = "LibraryView.Composers";
        break;
      case 0xB:
        v8 = 0xD000000000000026;
        v9 = "LibraryView.Shows";
        break;
      case 0xC:
        v8 = 0xD000000000000027;
        v9 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v10 = v9 | 0x8000000000000000;
    v11 = 0xD000000000000029;
    v12 = "orites";
    switch(a1)
    {
      case 1:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v11 = 0xD000000000000023;
        v12 = "LibraryView.Playlists";
        break;
      case 3:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.Artists";
        break;
      case 4:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Albums";
        break;
      case 5:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Songs";
        break;
      case 6:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.MadeForYou";
        break;
      case 7:
        v11 = 0xD000000000000022;
        v12 = "LibraryView.MusicVideos";
        break;
      case 8:
        v11 = 0xD000000000000028;
        v12 = "LibraryView.Genres";
        break;
      case 9:
        v11 = 0xD000000000000025;
        v12 = "LibraryView.Compilations";
        break;
      case 10:
        v11 = 0xD000000000000021;
        v12 = "LibraryView.Composers";
        break;
      case 11:
        v11 = 0xD000000000000026;
        v12 = "LibraryView.Shows";
        break;
      case 12:
        v11 = 0xD000000000000027;
        v12 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
    {

      return v6 != 0;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZSo17MPCPlaybackEngineC9MusicCoreE6OptionO_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1;
  if (*(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v24 = a1 + 56;
    v5 = 1 << *(a1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a1 + 56);
    v8 = (v5 + 63) >> 6;
    v28 = a2 + 56;
    v25 = v8;
    if (v7)
    {
      do
      {
        v9 = __clz(__rbit64(v7));
        v27 = (v7 - 1) & v7;
LABEL_13:
        v12 = *(*(v3 + 48) + (v9 | (v4 << 6)));
        Hasher.init(_seed:)();
        Library.Menu.Identifier.rawValue.getter(v12);
        String.hash(into:)();

        v13 = Hasher._finalize()();
        v14 = -1 << *(a2 + 32);
        v15 = v13 & ~v14;
        if (((*(v28 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }

        v16 = ~v14;
        while (1)
        {
          v17 = 0xD000000000000029;
          v18 = "orites";
          switch(*(*(a2 + 48) + v15))
          {
            case 1:
              v17 = 0xD000000000000025;
              v18 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v17 = 0xD000000000000023;
              v18 = "LibraryView.Playlists";
              break;
            case 3:
              v17 = 0xD000000000000022;
              v18 = "LibraryView.Artists";
              break;
            case 4:
              v17 = 0xD000000000000021;
              v18 = "LibraryView.Albums";
              break;
            case 5:
              v17 = 0xD000000000000026;
              v18 = "LibraryView.Songs";
              break;
            case 6:
              v17 = 0xD000000000000027;
              v18 = "LibraryView.MadeForYou";
              break;
            case 7:
              v17 = 0xD000000000000022;
              v18 = "LibraryView.MusicVideos";
              break;
            case 8:
              v17 = 0xD000000000000028;
              v18 = "LibraryView.Genres";
              break;
            case 9:
              v17 = 0xD000000000000025;
              v18 = "LibraryView.Compilations";
              break;
            case 0xA:
              v17 = 0xD000000000000021;
              v18 = "LibraryView.Composers";
              break;
            case 0xB:
              v17 = 0xD000000000000026;
              v18 = "LibraryView.Shows";
              break;
            case 0xC:
              v17 = 0xD000000000000027;
              v18 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          v19 = v18 | 0x8000000000000000;
          v20 = 0xD000000000000029;
          v21 = "orites";
          switch(v12)
          {
            case 1:
              v20 = 0xD000000000000025;
              v21 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v20 = 0xD000000000000023;
              v21 = "LibraryView.Playlists";
              break;
            case 3:
              v20 = 0xD000000000000022;
              v21 = "LibraryView.Artists";
              break;
            case 4:
              v20 = 0xD000000000000021;
              v21 = "LibraryView.Albums";
              break;
            case 5:
              v20 = 0xD000000000000026;
              v21 = "LibraryView.Songs";
              break;
            case 6:
              v20 = 0xD000000000000027;
              v21 = "LibraryView.MadeForYou";
              break;
            case 7:
              v20 = 0xD000000000000022;
              v21 = "LibraryView.MusicVideos";
              break;
            case 8:
              v20 = 0xD000000000000028;
              v21 = "LibraryView.Genres";
              break;
            case 9:
              v20 = 0xD000000000000025;
              v21 = "LibraryView.Compilations";
              break;
            case 10:
              v20 = 0xD000000000000021;
              v21 = "LibraryView.Composers";
              break;
            case 11:
              v20 = 0xD000000000000026;
              v21 = "LibraryView.Shows";
              break;
            case 12:
              v20 = 0xD000000000000027;
              v21 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          if (v17 == v20 && v19 == (v21 | 0x8000000000000000))
          {
            break;
          }

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v22)
          {
            goto LABEL_47;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v28 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            return 0;
          }
        }

LABEL_47:
        v8 = v25;
        v3 = a1;
        v7 = v27;
      }

      while (v27);
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        JUMPOUT(0x100192010);
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v11 = *(v24 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v27 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }
  }

  return 0;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ9MusicCore23ApplicationCapabilitiesV7ServiceO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v35 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v36 = v8;
  v37 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v38 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    ApplicationCapabilities.Service.rawValue.getter();
    String.hash(into:)();

    v14 = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = *(*(a2 + 48) + v16);
      if (v18 <= 4)
      {
        v21 = 0x6C6169636F73;
        if (v18 != 3)
        {
          v21 = 0x6F69646172;
        }

        v22 = 0xE600000000000000;
        if (v18 != 3)
        {
          v22 = 0xE500000000000000;
        }

        if (v18 == 2)
        {
          v21 = 0xD000000000000013;
          v22 = 0x80000001004C4B80;
        }

        v23 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v16))
        {
          v23 = 0x636973756DLL;
        }

        v24 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v16))
        {
          v24 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v19 = v23;
        }

        else
        {
          v19 = v21;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v20 = v24;
        }

        else
        {
          v20 = v22;
        }
      }

      else if (*(*(a2 + 48) + v16) > 7u)
      {
        if (v18 == 8)
        {
          v19 = 0xD000000000000013;
          v20 = 0x80000001004C4BC0;
        }

        else if (v18 == 9)
        {
          v19 = 0xD000000000000011;
          v20 = 0x80000001004C4BE0;
        }

        else
        {
          v19 = 0x6C62616E45696C6DLL;
          v20 = 0xEA00000000006465;
        }
      }

      else if (v18 == 5)
      {
        v20 = 0xE600000000000000;
        v19 = 0x73656E757469;
      }

      else
      {
        if (v18 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        else
        {
          v19 = 0x746963696C707865;
        }

        if (v18 == 6)
        {
          v20 = 0xED00007974697669;
        }

        else
        {
          v20 = 0xEF746E65746E6F43;
        }
      }

      if (v13 > 4)
      {
        v25 = 0xD000000000000011;
        if (v13 != 9)
        {
          v25 = 0x6C62616E45696C6DLL;
        }

        v26 = 0xEA00000000006465;
        if (v13 == 9)
        {
          v26 = 0x80000001004C4BE0;
        }

        if (v13 == 8)
        {
          v25 = 0xD000000000000013;
          v26 = 0x80000001004C4BC0;
        }

        v27 = 0x746963696C707865;
        if (v13 == 6)
        {
          v27 = 0x74634170756F7267;
        }

        v28 = 0xEF746E65746E6F43;
        if (v13 == 6)
        {
          v28 = 0xED00007974697669;
        }

        if (v13 == 5)
        {
          v27 = 0x73656E757469;
          v28 = 0xE600000000000000;
        }

        if (v13 <= 7)
        {
          v29 = v27;
        }

        else
        {
          v29 = v25;
        }

        if (v13 <= 7)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        if (v19 == v29)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      if (v13 <= 1)
      {
        break;
      }

      v31 = 0x6C6169636F73;
      if (v13 != 3)
      {
        v31 = 0x6F69646172;
      }

      v32 = 0xE500000000000000;
      if (v13 == 3)
      {
        v32 = 0xE600000000000000;
      }

      if (v13 == 2)
      {
        v33 = 0xD000000000000013;
      }

      else
      {
        v33 = v31;
      }

      if (v13 == 2)
      {
        v30 = 0x80000001004C4B80;
      }

      else
      {
        v30 = v32;
      }

      if (v19 == v33)
      {
        goto LABEL_83;
      }

LABEL_84:
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_89;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v13)
    {
      v30 = 0xE500000000000000;
      if (v19 == 0x636973756DLL)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    v30 = 0xEB00000000736F65;
    if (v19 != 0x646956636973756DLL)
    {
      goto LABEL_84;
    }

LABEL_83:
    if (v20 != v30)
    {
      goto LABEL_84;
    }

LABEL_89:
    v8 = v36;
    v3 = v37;
    v7 = v38;
  }

  while (v38);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v35 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t Library.Menu.setSelectionState(_:for:)(char a1, uint64_t a2)
{
  if (a1)
  {
    specialized Set._Variant.remove(_:)(a2);
  }

  else
  {
    specialized Set._Variant.insert(_:)(&v4, a2);
  }

  return a1 & 1;
}

uint64_t Library.Menu.move(_:to:)(char a1, unint64_t a2)
{
  v4 = a1;
  v5 = *v2;
  v6 = specialized Collection<>.firstIndex(of:)(a1, *v2);
  if (v7)
  {
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[4];
LABEL_5:
    v14 = v2[5];
    lazy protocol witness table accessor for type Library.Menu.MoveError and conformance Library.Menu.MoveError();
    swift_allocError();
    *v15 = v9;
    *(v15 + 8) = v8;
    *(v15 + 16) = v10;
    *(v15 + 24) = v14;
    *(v15 + 32) = v4;

    return swift_willThrow();
  }

  v11 = v6;
  v10 = v2[4];
  result = specialized Collection<>.firstIndex(of:)(v4, v10);
  if (v13)
  {
    v9 = v2[2];
    v8 = v2[3];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v5 + 16) <= a2)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = result;
  v17 = *(v5 + a2 + 32);
  v18 = specialized Collection<>.firstIndex(of:)(v17, v10);
  if (v19)
  {
    v9 = v2[2];
    v8 = v2[3];
    v4 = v17 | 0x80;
    goto LABEL_5;
  }

  v20 = v18;
  result = specialized Array.remove(at:)(v11);
  if (*(*v2 + 16) < a2)
  {
    goto LABEL_16;
  }

  specialized Array.replaceSubrange<A>(_:with:)(a2, a2, result);
  result = specialized Array.remove(at:)(v16);
  if (*(v2[4] + 16) < v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    return specialized Array.replaceSubrange<A>(_:with:)(v20, v20, result);
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Library.Menu.persist()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  NSUserDefaults.libraryMenuRevision.setter(v1, v2, v3, v4);
}

uint64_t NSUserDefaults.libraryMenuRevision.setter(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v11[2] = a3;
  lazy protocol witness table accessor for type Library.Menu.Revision and conformance Library.Menu.Revision();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  v11[3] = &type metadata for Data;
  v11[0] = v5;
  v11[1] = v7;
  v10[0] = 0x4D7972617262694CLL;
  v10[1] = 0xEB00000000756E65;
  outlined copy of Data._Representation(v5, v7);
  v8 = lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.setter(v11, v10, &type metadata for String, v8);
  return outlined consume of Data._Representation(v5, v7);
}

uint64_t Library.Menu.revision.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static Library.Menu.Request.label.getter()
{
  swift_beginAccess();
  v0 = *static Library.Menu.Request.label;

  return v0;
}

uint64_t static Library.Menu.Request.label.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *static Library.Menu.Request.label = a1;
  *&static Library.Menu.Request.label[8] = a2;
}

id Library.Menu.Request.init()@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *a1 = result;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = &_swiftEmptySetSingleton;
    *(a1 + 40) = 257;
    *(a1 + 42) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static Library.Menu.Request.with(_:)@<X0>(uint64_t (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    *&v7 = result;
    BYTE8(v7) = 0;
    v8 = 0uLL;
    *&v9 = &_swiftEmptySetSingleton;
    WORD4(v9) = 257;
    BYTE10(v9) = 0;
    v10 = 0u;
    v11 = 0u;
    result = a1(&v7);
    v5 = v10;
    a2[2] = v9;
    a2[3] = v5;
    a2[4] = v11;
    v6 = v8;
    *a2 = v7;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Library.Menu.Request.MediaLibrarySource.init(_:)()
{
  ;
}

{
  ;
}

uint64_t static Library.Menu.Request.MediaLibrarySource.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
      v4 = static NSObject.== infix(_:_:)();
      return v4 & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicLibrary();
  v4 = static MusicLibrary.== infix(_:_:)();
  return v4 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Library.Menu.Request.MediaLibrarySource(uint64_t *a1, uint64_t *a2)
{
  if ((a1[1] & 1) == 0)
  {
    if ((a2[1] & 1) == 0)
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
      v2 = static NSObject.== infix(_:_:)();
      return v2 & 1;
    }

    return 0;
  }

  if ((a2[1] & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicLibrary();
  v2 = static MusicLibrary.== infix(_:_:)();
  return v2 & 1;
}

void *Library.Menu.Request.librarySource.getter()
{
  v1 = *v0;
  outlined copy of Library.Menu.Request.MediaLibrarySource(*v0, *(v0 + 8));
  return v1;
}

void Library.Menu.Request.librarySource.setter(uint64_t a1, char a2)
{
  outlined consume of Library.Menu.Request.MediaLibrarySource(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t Library.Menu.Request.excludedIdentifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Library.Menu.Request.editingRevision.getter()
{
  v1 = v0[6];
  outlined copy of Library.Menu.Revision?(v1, v0[7], v0[8], v0[9]);
  return v1;
}

uint64_t Library.Menu.Request.editingRevision.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = outlined consume of Library.Menu.Revision?(v4[6], v4[7], v4[8], v4[9]);
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return result;
}

uint64_t Library.Menu.Request.perform(_:_:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v62 = a1;
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (v4[1])
  {
    v15 = MusicLibrary.mediaLibrary.getter();
  }

  else
  {
    v15 = v14;
  }

  v52 = v4[2];
  v53 = v15;
  v16 = swift_allocObject();
  v17 = v4[3];
  v60 = v7;
  v61 = a3;
  v58 = v10;
  v59 = v8;
  v57 = v13;
  v54 = v11;
  v55 = a2;
  if (v17)
  {
    v18 = 1;
    v19 = 1;
  }

  else
  {
    v18 = 0;
    v19 = *(v4 + 42);
  }

  v56 = v16;
  *(v16 + 16) = v18;
  v63 = swift_allocObject();
  *(v63 + 16) = v19;
  v20 = v4[4];
  v21 = *(v4 + 40);
  v22 = objc_opt_self();

  v23 = [v22 standardUserDefaults];
  v24 = swift_allocObject();
  v26 = v4[6];
  v25 = v4[7];
  v28 = v4[8];
  v27 = v4[9];
  v51 = v25;
  if (v26)
  {
    v29 = v26;
    v30 = v25;
    v31 = v28;
    v32 = v27;
    v33 = v27;
  }

  else
  {
    v32 = v27;
    v29 = NSUserDefaults.libraryMenuRevision.getter();
  }

  v24[2] = v29;
  v24[3] = v30;
  v24[4] = v31;
  v24[5] = v33;
  if (*(v4 + 41))
  {
    v34 = v31;
  }

  else
  {
    v34 = v29;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v24;
  *(v35 + 24) = v23;
  *(v35 + 32) = v17;
  *(v35 + 40) = v34;
  v36 = v17;
  v37 = v52;
  v38 = v53;
  *(v35 + 48) = v53;
  *(v35 + 56) = v37;
  *(v35 + 64) = v20;
  *(v35 + 72) = v21;
  v40 = v55;
  v39 = v56;
  *(v35 + 80) = v63;
  *(v35 + 88) = v39;
  *(v35 + 96) = v62;
  *(v35 + 104) = v40;
  aBlock[4] = partial apply for specialized closure #1 in Library.Menu.Request.perform(_:_:);
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24;
  v52 = _Block_copy(aBlock);
  v64 = _swiftEmptyArrayStorage;
  outlined copy of Library.Menu.Revision?(v26, v51, v28, v32);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  v62 = v23;
  v41 = v36;
  v42 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v43 = type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v44 = DispatchWorkItem.init(flags:block:)();

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v46 = v58;
  v45 = v59;
  v47 = v60;
  (*(v59 + 104))(v58, enum case for DispatchQoS.QoSClass.userInteractive(_:), v60);
  v48 = static OS_dispatch_queue.global(qos:)();
  (*(v45 + 8))(v46, v47);
  OS_dispatch_queue.async(execute:)();

  v49 = v61;
  v61[3] = v43;
  v49[4] = &protocol witness table for DispatchWorkItem;

  *v49 = v44;
}

uint64_t NSUserDefaults.libraryMenuRevision.getter()
{
  NSUserDefaults.migrateOldMenuIfNeeded()();
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      lazy protocol witness table accessor for type Library.Menu.Revision and conformance Library.Menu.Revision();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      outlined consume of Data._Representation(0x4D7972617262694CLL, 0xEB00000000756E65);

      return v6;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(&v6, &_sypSgMd_0, &_sypSgMR_0);
  }

  if (one-time initialization token for libraryMenu != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.libraryMenu);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "No edits found — Returning stock menu revision", v3, 2u);
  }

  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v4 = static Library.Menu.Revision.Version.current;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return v4;
}

uint64_t specialized closure #1 in Library.Menu.Request.perform(_:_:)(uint64_t *a1, void *a2, void *a3, void *a4, char *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void (*a11)(__int128 *, uint64_t, uint64_t))
{
  if (one-time initialization token for current != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v15 = static Library.Menu.Revision.Version.current;
    v14 = unk_10063D590;
    swift_beginAccess();
    v16 = a1[3];
    v104 = a7;
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(a1[2], v15) & 1) != 0 && (_sSh2eeoiySbShyxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(v16, v14))
    {
      break;
    }

    Library.Menu.Revision.migrate(to:)(v15, v14);
    swift_endAccess();
    swift_beginAccess();
    v17 = a1[2];
    v18 = a1[3];
    v19 = a1[4];
    v20 = a1[5];

    NSUserDefaults.libraryMenuRevision.setter(v17, v18, v19, v20);
    v101 = a1;
    if (a3)
    {
      goto LABEL_9;
    }

LABEL_6:
    a3 = a4;
    v21 = a4[2];
    if (!v21)
    {
      v105 = 0;
      goto LABEL_68;
    }

    v22 = 0;
    v105 = 0;
    v23 = a4 + 4;
LABEL_39:
    v32 = v22;
    while (v32 < v21)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_149;
      }

      v33 = *(v23 + v32);
      if (v33 <= 4)
      {
        if (*(v23 + v32) <= 1u)
        {
          if (*(v23 + v32))
          {
            v34 = v105 | 0xC0;
          }

          else
          {
            v34 = v105 | 0x41;
          }

LABEL_38:
          v105 = v34;
          if (v22 == v21)
          {
            goto LABEL_68;
          }

          goto LABEL_39;
        }

        switch(v33)
        {
          case 2u:
            v34 = v105 | 2;
            goto LABEL_38;
          case 3u:
            v34 = v105 | 1;
            goto LABEL_38;
          case 4u:
            v34 = v105 | 0x80;
            goto LABEL_38;
        }
      }

      else if (*(v23 + v32) > 7u)
      {
        switch(v33)
        {
          case 8u:
            v34 = v105 | 4;
            goto LABEL_38;
          case 9u:
            v34 = v105 | 8;
            goto LABEL_38;
          case 0xAu:
            v34 = v105 | 0x300;
            goto LABEL_38;
        }
      }

      else
      {
        switch(v33)
        {
          case 5u:
            v34 = v105 | 0x400;
            goto LABEL_38;
          case 6u:
            v34 = v105 | 0x20;
            goto LABEL_38;
          case 7u:
            v34 = v105 | 0x10;
            goto LABEL_38;
        }
      }

      ++v32;
      if (v22 == v21)
      {
        goto LABEL_68;
      }
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    swift_once();
  }

  swift_endAccess();
  v101 = a1;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_9:
  v94 = a3;
  MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
  a7 = 0;
  v25 = *(v24 + 16);
  a1 = 0x80000001004CA4B0;
  v105 = 0;
  v99 = v24 + 40;
LABEL_12:
  v27 = (v99 + 16 * a7);
  a3 = a7;
  while (v25 != a3)
  {
    if (a3 >= v25)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    a7 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_147;
    }

    v29 = *(v27 - 1);
    v28 = *v27;
    v30 = v29 == 0xD000000000000014 && 0x80000001004CA4D0 == v28;
    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v26 = 1247;
LABEL_11:
      v105 |= v26;
      goto LABEL_12;
    }

    if (v29 == 0xD00000000000001BLL && 0x80000001004CA4B0 == v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v26 = 32;
      goto LABEL_11;
    }

    if (v29 == 0xD00000000000001ALL && 0x80000001004CB8F0 == v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v26 = 256;
      goto LABEL_11;
    }

    if (v29 != 0xD000000000000015 || 0x80000001004CB910 != v28)
    {
      a3 = (a3 + 1);
      v27 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v26 = 512;
    goto LABEL_11;
  }

  a7 = v104;
  if ([v94 selectionMode] == 2)
  {

    a1 = v101;
    a3 = a4;
  }

  else
  {
    v31 = [v94 selectionMode];

    v30 = v31 == 3;
    a1 = v101;
    a3 = a4;
    if (!v30)
    {
      goto LABEL_68;
    }
  }

  v105 &= 0xFFFFFFFFFFFFFC5FLL;
LABEL_68:
  v100 = [a5 filterAvailableContentGroups:v105 withOptions:{a6, v91}];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v35 = static ApplicationCapabilities.Controller.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  v92 = v35;
  static Published.subscript.getter();

  v118[4] = v114;
  v118[5] = v115;
  v118[6] = v116;
  v118[7] = v117;
  v118[0] = v110;
  v118[1] = v111;
  v118[2] = v112;
  v118[3] = v113;
  LODWORD(a4) = BYTE2(v110);
  if (v116 == 2)
  {
    v95 = 1;
  }

  else
  {
    v95 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v36 = a3[2];

  v106 = a5;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  if (!v36)
  {
    a5 = _swiftEmptyArrayStorage;
    goto LABEL_133;
  }

  v37 = 0;
  a3 += 4;
  LODWORD(v91) = (v100 & 0x300) != 0;
  HIDWORD(v91) = (v100 & 0xC0) != 0;
  a5 = _swiftEmptyArrayStorage;
  while (2)
  {
    a1 = v37;
    while (2)
    {
      if (a1 >= v36)
      {
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v37 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        goto LABEL_145;
      }

      v38 = *(a1 + a3);
      if (specialized Set.contains(_:)(v38, a7))
      {
        goto LABEL_77;
      }

      if (a8)
      {
        v39 = v101[5];

        v40 = specialized Set.contains(_:)(v38, v39);

        if (v38 != 5)
        {
          goto LABEL_83;
        }

LABEL_88:
        v40 &= v95 & a4;
LABEL_100:
        v52 = (*(a9 + 16) ^ 1) & v40;
        if ((*(a9 + 16) ^ 1) & 1) == 0 && (v40)
        {
          if (v38 > 6)
          {
            if (v38 > 9)
            {
              if ((v38 - 11) >= 2)
              {
                v52 = v91;
              }

              else
              {
                v52 = 1;
              }
            }

            else
            {
              if (v38 == 7)
              {
                v55 = -17;
              }

              else if (v38 == 8)
              {
                v55 = -5;
              }

              else
              {
                v55 = -9;
              }

LABEL_122:
              v52 = (v55 | v100) == -1;
            }
          }

          else if (v38 <= 2)
          {
            v52 = (v100 & 0x41) != 0;
            if (v38)
            {
              v52 = (v100 & 0xC0) != 0;
              if (v38 != 1)
              {
                v55 = -3;
                goto LABEL_122;
              }
            }
          }

          else
          {
            if (v38 <= 4)
            {
              if (v38 == 3)
              {
                v55 = -2;
              }

              else
              {
                v55 = -129;
              }

              goto LABEL_122;
            }

            v52 = (v100 & 0x400) != 0;
            if (v38 != 5)
            {
              v55 = -33;
              goto LABEL_122;
            }
          }
        }
      }

      else
      {
        v40 = 1;
        if (v38 == 5)
        {
          goto LABEL_88;
        }

LABEL_83:
        if (v38 == 12)
        {
          v46 = [objc_opt_self() deviceMediaLibrary];
          if (v46)
          {
            v47 = v46;
            type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPMediaLibrary, MPMediaLibrary_ptr);
            v48 = v106;
            v49 = static NSObject.== infix(_:_:)();
          }

          else
          {
            v49 = 0;
          }

          v50 = [objc_opt_self() sharedManager];
          v51 = [v50 hasActiveDownloads];

          if (v40)
          {
            v40 = v49 & v51;
            goto LABEL_100;
          }

          v52 = 0;
        }

        else
        {
          if (v38 != 11)
          {
            goto LABEL_100;
          }

          v41 = [objc_opt_self() deviceMediaLibrary];
          if (v41)
          {
            v42 = v41;
            type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPMediaLibrary, MPMediaLibrary_ptr);
            v43 = v106;
            v44 = static NSObject.== infix(_:_:)();

            v45 = v44 ^ 1;
          }

          else
          {
            v45 = 1;
          }

          v53 = [objc_opt_self() sharedManager];
          v54 = [v53 hasActiveDownloads];

          v52 = 0;
          if ((v40 & 1) != 0 && (a6 & 2) == 0 && (v45 & 1) == 0)
          {
            v40 = (v100 != 0) | v54;
            goto LABEL_100;
          }
        }
      }

      if (*(a10 + 16) == 1)
      {
        v52 &= v38 != 12;
      }

      a7 = v104;
      if ((v52 & 1) == 0)
      {
LABEL_77:
        a1 = (a1 + 1);
        if (v37 == v36)
        {
          a1 = v101;
          goto LABEL_133;
        }

        continue;
      }

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
    }

    a1 = v101;
    v57 = *(a5 + 2);
    v56 = *(a5 + 3);
    if (v57 >= v56 >> 1)
    {
      a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, a5);
    }

    *(a5 + 2) = v57 + 1;
    a5[v57 + 32] = v38;
    if (v37 != v36)
    {
      continue;
    }

    break;
  }

LABEL_133:

  swift_beginAccess();
  v59 = a1[2];
  v58 = a1[3];
  v60 = a1[4];
  v61 = a1[5];
  *&v110 = a5;
  *(&v110 + 1) = a2;
  *&v111 = v59;
  *(&v111 + 1) = v58;
  *&v112 = v60;
  *(&v112 + 1) = v61;
  LOBYTE(v113) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMd, &_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMR);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1004F2EE0;
  v63 = CFRange.init(_:)(0);
  v65 = v64;
  v67 = v66;
  *(v62 + 56) = &type metadata for UserDefaultsKeyValueTrigger;
  *(v62 + 64) = &protocol witness table for UserDefaultsKeyValueTrigger;
  v68 = swift_allocObject();
  *(v62 + 32) = v68;
  v68[1] = v63;
  v68[2].location = v65;
  v68[2].length = v67;
  v69 = one-time initialization token for isCloudLibraryEnabledDidChange;

  v103 = a2;
  if (v69 != -1)
  {
    swift_once();
  }

  v70 = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v71.location = static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
  v71.length = v92;
  v72 = CFRange.init(_:)(v71);
  *(v62 + 96) = &type metadata for NotificationTrigger;
  *(v62 + 104) = &protocol witness table for NotificationTrigger;
  *(v62 + 72) = v72;
  v73 = one-time initialization token for userSubscriptionStateDidChange;
  swift_retain_n();
  v74 = v70;
  if (v73 != -1)
  {
    swift_once();
  }

  v75 = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v76.location = static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
  v76.length = v92;
  v77 = CFRange.init(_:)(v76);
  *(v62 + 136) = &type metadata for NotificationTrigger;
  *(v62 + 144) = &protocol witness table for NotificationTrigger;
  *(v62 + 112) = v77;
  v78.location = MPMediaLibraryDidChangeNotification;
  v78.length = v106;
  v79 = CFRange.init(_:)(v78);
  *(v62 + 176) = &type metadata for NotificationTrigger;
  *(v62 + 184) = &protocol witness table for NotificationTrigger;
  *(v62 + 152) = v79;
  v80 = v106;
  v81 = v75;
  v82 = MPMediaLibraryDidChangeNotification;
  if ((specialized Set.contains(_:)(12, v104) & 1) == 0)
  {
    if (one-time initialization token for downloadingStateDidChange != -1)
    {
      swift_once();
    }

    v83 = static MusicLibrary.downloadingStateDidChange;
    v84 = CFRange.init(_:)(static MusicLibrary.downloadingStateDidChange);
    v85 = *(v62 + 16);
    v86 = *(v62 + 24);
    v87 = v83;
    if (v85 >= v86 >> 1)
    {
      v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v85 + 1, 1, v62);
    }

    v108 = &type metadata for NotificationTrigger;
    v109 = &protocol witness table for NotificationTrigger;
    v107 = v84;
    *(v62 + 16) = v85 + 1;
    outlined init with take of ActionPerforming(&v107.location, v62 + 40 * v85 + 32);
  }

  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v88 = BindingRequestResponseInvalidation.init(triggers:)(v62);
  v89 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type BindingRequestResponseInvalidation and conformance BindingRequestResponseInvalidation, type metadata accessor for BindingRequestResponseInvalidation, &protocol conformance descriptor for BindingRequestResponseInvalidation);
  a11(&v110, v88, v89);

  outlined destroy of ApplicationCapabilities(v118);
}

uint64_t *Library.Menu.Revision.Version.current.unsafeMutableAddressor()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  return &static Library.Menu.Revision.Version.current;
}

uint64_t Logger.libraryMenu.unsafeMutableAddressor()
{
  if (one-time initialization token for libraryMenu != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.libraryMenu);
}

uint64_t Library.Menu.Identifier.contentGroups.getter(unsigned __int8 a1)
{
  if (a1 > 0xAu)
  {
    return 0;
  }

  else
  {
    return qword_1004FF698[a1];
  }
}

uint64_t protocol witness for Request.perform(_:_:) in conformance Library.Menu.Request@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  Library.Menu.Request.perform(_:_:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<Library.Menu, Error>, @guaranteed RequestResponseInvalidatable?) -> (), v6, a3);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Library.Menu.Request(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return specialized static Library.Menu.Request.__derived_struct_equals(_:_:)(v8, v9);
}

unint64_t Library.Menu.Identifier.symbolName(for:)(char a1, char a2)
{
  result = 0x732E657261757173;
  switch(a2)
  {
    case 1:
      if (a1 == 2)
      {
        result = 0x6F6E2E636973756DLL;
      }

      else
      {
        result = 0x672E657261757173;
      }

      break;
    case 2:
      result = 0x696D2E636973756DLL;
      break;
    case 3:
      return result;
    case 4:
    case 6:
      result = 0x6F6E2E636973756DLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x73726174697567;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 30324;
      break;
    case 11:
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      result = 0x6B636F6C63;
      break;
  }

  return result;
}

uint64_t Library.Menu.Identifier.name(for:)(char a1, char a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v9;
}

BOOL static Library.Menu.Identifier.Location.__derived_enum_equals(_:_:)(int a1, int a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Library.Menu.Identifier.Location(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t Library.Menu.Identifier.description.getter(uint64_t a1)
{
  v1 = Library.Menu.Identifier.rawValue.getter(a1);
  lazy protocol witness table accessor for type String and conformance String();
  v2 = StringProtocol.components<A>(separatedBy:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    v1 = *(v2 + 16 + 16 * v3);
  }

  return v1;
}

unint64_t Library.Menu.Identifier.rawValue.getter(char a1)
{
  result = 0xD000000000000029;
  switch(a1)
  {
    case 1:
    case 9:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
    case 7:
      result = 0xD000000000000022;
      break;
    case 4:
    case 10:
      result = 0xD000000000000021;
      break;
    case 5:
    case 11:
      result = 0xD000000000000026;
      break;
    case 6:
    case 12:
      result = 0xD000000000000027;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Library.Menu.Identifier(char *a1, char *a2)
{
  v2 = *a2;
  v3 = Library.Menu.Identifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Library.Menu.Identifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Library.Menu.Identifier()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Library.Menu.Identifier(uint64_t a1)
{
  Library.Menu.Identifier.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Library.Menu.Identifier(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Library.Menu.Identifier@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Library.Menu.Identifier.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Library.Menu.Identifier@<X0>(unint64_t *a1@<X8>)
{
  result = Library.Menu.Identifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Library.Menu.Revision.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  v17 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore7LibraryO4MenuV8RevisionV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9MusicCore7LibraryO4MenuV8RevisionV10CodingKeysOGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a4;
  v20 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore7LibraryO4MenuV10IdentifierOGMd, &_sSay9MusicCore7LibraryO4MenuV10IdentifierOGMR);
  lazy protocol witness table accessor for type [Library.Menu.Identifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [Library.Menu.Identifier] and conformance <A> [A], lazy protocol witness table accessor for type Library.Menu.Identifier and conformance Library.Menu.Identifier, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v13 = a2;
    v14 = v16;
    v18 = v17;
    v20 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy9MusicCore7LibraryO4MenuV10IdentifierOGMd, &_sShy9MusicCore7LibraryO4MenuV10IdentifierOGMR);
    lazy protocol witness table accessor for type Set<Library.Menu.Identifier> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Library.Menu.Identifier> and conformance <> Set<A>, lazy protocol witness table accessor for type Library.Menu.Identifier and conformance Library.Menu.Identifier, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = v13;
    v19 = v14;
    v20 = 2;
    lazy protocol witness table accessor for type Library.Menu.Revision.Version and conformance Library.Menu.Revision.Version();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Library.Menu.Revision.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  if (v2 != 1)
  {
    v4 = 0x6E6F6973726576;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64657463656C6573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7105633;
  if (*a2 != 1)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64657463656C6573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Library.Menu.Revision.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Library.Menu.Revision.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Library.Menu.Revision.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Library.Menu.Revision.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Library.Menu.Revision.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Library.Menu.Revision.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE300000000000000;
  v5 = 7105633;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64657463656C6573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Library.Menu.Revision.CodingKeys()
{
  v1 = 7105633;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657463656C6573;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Library.Menu.Revision.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Library.Menu.Revision.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Library.Menu.Revision.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Library.Menu.Revision.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Library.Menu.Revision.Version.identifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Library.Menu.Revision.Version.selected.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Library.Menu.Revision.Version.CodingKeys()
{
  if (*v0)
  {
    return 0x64657463656C6573;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Library.Menu.Revision.Version.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Library.Menu.Revision.Version.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Library.Menu.Revision.Version.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Library.Menu.Revision.Version.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(a2, a4);
}

uint64_t Library.Menu.Revision.Version.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore7LibraryO4MenuV8RevisionV7VersionV10CodingKeys33_CDE7296BF475887520DF32E716B298B1LLOGMd, &_ss22KeyedEncodingContainerVy9MusicCore7LibraryO4MenuV8RevisionV7VersionV10CodingKeys33_CDE7296BF475887520DF32E716B298B1LLOGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore7LibraryO4MenuV10IdentifierOGMd, &_sSay9MusicCore7LibraryO4MenuV10IdentifierOGMR);
  lazy protocol witness table accessor for type [Library.Menu.Identifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [Library.Menu.Identifier] and conformance <A> [A], lazy protocol witness table accessor for type Library.Menu.Identifier and conformance Library.Menu.Identifier, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy9MusicCore7LibraryO4MenuV10IdentifierOGMd, &_sShy9MusicCore7LibraryO4MenuV10IdentifierOGMR);
    lazy protocol witness table accessor for type Set<Library.Menu.Identifier> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Library.Menu.Identifier> and conformance <> Set<A>, lazy protocol witness table accessor for type Library.Menu.Identifier and conformance Library.Menu.Identifier, &protocol conformance descriptor for <> Set<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Library.Menu.Revision.Version@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized Library.Menu.Revision.Version.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Library.Menu.Revision.Version(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(v2, v3);
}

uint64_t Library.Menu.Revision.version.getter(uint64_t a1, uint64_t a2)
{

  return a1;
}

uint64_t MPCPlaybackEngine.Configuration.options.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void Library.Menu.Revision.migrate(to:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  if (one-time initialization token for libraryMenu != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.libraryMenu);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "╭ ⏩ Begin Migration", v10, 2u);
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v44 = v6;
    v45 = v5;
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v49 = v14;
      *v13 = 136315138;
      v47 = v6;
      v48 = v5;

      v15 = String.init<A>(describing:)();
      v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v15, v16, &v49);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "╞< %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315138;
      v47 = a1;
      v48 = a2;

      v22 = String.init<A>(describing:)();
      v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v23, &v49);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "╞> %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
    }

    v5 = v46[2];

    v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MusicCore7LibraryO4MenuV10IdentifierO_SayAJGTt0g5Tf4g_n(v25);

    v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MusicCore7LibraryO4MenuV10IdentifierO_SayAJGTt0g5Tf4g_n(v27);

    if (v28[2] <= v26[2] >> 3)
    {
      v47 = v26;

      specialized Set._subtract<A>(_:)(v28);
      v6 = v47;
    }

    else
    {

      v6 = specialized _NativeSet.subtracting<A>(_:)(v28, v26);
    }

    if (v26[2] <= v28[2] >> 3)
    {
      v47 = v28;
      specialized Set._subtract<A>(_:)(v26);
      v29 = v47;
    }

    else
    {
      v29 = specialized _NativeSet.subtracting<A>(_:)(v26, v28);
    }

    v49 = v5;
    v30 = *(v5 + 16);
    v31 = v26[2];

    if (v30 == v31)
    {
      break;
    }

    v32 = *(v5 + 16);
    if (!v32)
    {
      break;
    }

    v33 = 0;
    while (v33 < *(v5 + 16))
    {
      v34 = v33 + 1;
      LOBYTE(v47) = *(v5 + 32 + v33);
      specialized closure #1 in Library.Menu.Revision.migrate(to:)(&v47, &v49);
      v33 = v34;
      if (v32 == v34)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_19:
  specialized Sequence.forEach(_:)(v6, &v49);

  specialized Sequence.forEach(_:)(v29, a1, &v49);

  v35 = *(a1 + 16);
  swift_beginAccess();
  v36 = v49;
  if (v35 == *(v49 + 2))
  {

    v46[2] = v36;
    v37 = v46[3];
    if (v6[2] <= v37[2] >> 3)
    {

      specialized Set._subtract<A>(_:)(v6);

      v38 = v37;
    }

    else
    {

      v38 = specialized _NativeSet.subtracting<A>(_:)(v6, v37);
    }

    v42 = specialized _NativeSet.filter(_:)(v29, a1, a2);

    v43 = specialized Set.union<A>(_:)(v42, v38);

    v41 = v46;
    v46[3] = v43;
  }

  else
  {

    v39 = v46[3];
    lazy protocol witness table accessor for type Library.Menu.Revision.MigrationFailure and conformance Library.Menu.Revision.MigrationFailure();
    swift_allocError();
    *v40 = v44;
    v40[1] = v45;
    v40[2] = v5;
    v40[3] = v39;
    v40[4] = a1;
    v40[5] = a2;
    swift_willThrow();

    v41 = v46;
  }

  $defer #1 () in Library.Menu.Revision.migrate(to:)(v41, a1, a2);
}

void $defer #1 () in Library.Menu.Revision.migrate(to:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;

  v3 = one-time initialization token for libraryMenu;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.libraryMenu);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "╞ ✅ Migration ended with", v7, 2u);
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136446210;
    v12 = Array.description.getter();
    v14 = v13;

    v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "╞  - Ordered: %{public}s)", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
  }

  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    lazy protocol witness table accessor for type Library.Menu.Identifier and conformance Library.Menu.Identifier();
    v19 = Set.description.getter();
    v21 = v20;

    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v21, &v24);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, oslog, v16, "╞  - Selected: %{public}s)", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
  }
}

void *specialized closure #1 in Library.Menu.Revision.migrate(to:)(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v4 = *a2;

  v5 = specialized Collection<>.firstIndex(of:)(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    do
    {
      v20 = *a2;

      v21 = specialized BidirectionalCollection<>.lastIndex(of:)(v3, v20);
      v23 = v22;

      if ((v23 & 1) != 0 || v5 == v21)
      {
        break;
      }

      if (one-time initialization token for libraryMenu != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.libraryMenu);
      v16 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v25))
      {
        v29 = v25;
        v26 = swift_slowAlloc();
        result = swift_slowAlloc();
        v28[0] = result;
        *v26 = 136315650;
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          return result;
        }

        if (v21 >= *(*a2 + 16))
        {
          goto LABEL_15;
        }

        v9 = result;
        v10 = Library.Menu.Identifier.description.getter(*(*a2 + v21 + 32));
        log = v16;
        v12 = v5;
        v13 = a2;
        v14 = v3;
        v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, v28);

        *(v26 + 4) = v15;
        v3 = v14;
        a2 = v13;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v12;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v21;
        v16 = log;
        _os_log_impl(&_mh_execute_header, log, v29, "╞ Removing duplicate:%s at index: [%ld, %ld]", v26, 0x20u);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
      }

      swift_beginAccess();
      specialized Array.remove(at:)(v21);
      swift_endAccess();
      v17 = *a2;

      v5 = specialized Collection<>.firstIndex(of:)(v3, v17);
      v19 = v18;
    }

    while ((v19 & 1) == 0);
  }

  return result;
}

uint64_t specialized BidirectionalCollection<>.lastIndex(of:)(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = a2 + 31;
  do
  {
    v6 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
    v7 = 0xD000000000000029;
    v8 = "orites";
    switch(*(v4 + v6))
    {
      case 1:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v7 = 0xD000000000000023;
        v8 = "LibraryView.Playlists";
        break;
      case 3:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.Artists";
        break;
      case 4:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Albums";
        break;
      case 5:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Songs";
        break;
      case 6:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.MadeForYou";
        break;
      case 7:
        v7 = 0xD000000000000022;
        v8 = "LibraryView.MusicVideos";
        break;
      case 8:
        v7 = 0xD000000000000028;
        v8 = "LibraryView.Genres";
        break;
      case 9:
        v7 = 0xD000000000000025;
        v8 = "LibraryView.Compilations";
        break;
      case 0xA:
        v7 = 0xD000000000000021;
        v8 = "LibraryView.Composers";
        break;
      case 0xB:
        v7 = 0xD000000000000026;
        v8 = "LibraryView.Shows";
        break;
      case 0xC:
        v7 = 0xD000000000000027;
        v8 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    v9 = v8 | 0x8000000000000000;
    v10 = 0xD000000000000029;
    v11 = "orites";
    switch(a1)
    {
      case 1:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.RecentlyAdded";
        break;
      case 2:
        v10 = 0xD000000000000023;
        v11 = "LibraryView.Playlists";
        break;
      case 3:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.Artists";
        break;
      case 4:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Albums";
        break;
      case 5:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Songs";
        break;
      case 6:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.MadeForYou";
        break;
      case 7:
        v10 = 0xD000000000000022;
        v11 = "LibraryView.MusicVideos";
        break;
      case 8:
        v10 = 0xD000000000000028;
        v11 = "LibraryView.Genres";
        break;
      case 9:
        v10 = 0xD000000000000025;
        v11 = "LibraryView.Compilations";
        break;
      case 10:
        v10 = 0xD000000000000021;
        v11 = "LibraryView.Composers";
        break;
      case 11:
        v10 = 0xD000000000000026;
        v11 = "LibraryView.Shows";
        break;
      case 12:
        v10 = 0xD000000000000027;
        v11 = "LibraryView.Downloaded";
        break;
      default:
        break;
    }

    if (v7 == v10 && v9 == (v11 | 0x8000000000000000))
    {

      return v3;
    }

    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v5 & 1) == 0);
  return v3;
}

uint64_t closure #2 in Library.Menu.Revision.migrate(to:)(unsigned __int8 *a1, char **a2)
{
  v29 = *a1;
  swift_beginAccess();
  v4 = *a2;
  v5 = *(*a2 + 2);
  if (v5)
  {
    v28 = a2;
    v6 = 0;
    v7 = "orites";
    do
    {
      if (v6 >= *(v4 + 2))
      {
        __break(1u);
        goto LABEL_81;
      }

      v8 = 0xD000000000000029;
      v9 = "orites";
      switch(v4[v6 + 32])
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 10:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 11:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 12:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "orites";
      switch(v29)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {

LABEL_37:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5 = a2;
        *a2 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_86;
        }

        while (1)
        {
          *v5 = v4;
          v16 = *(v4 + 2);
          if ((v16 - 1) == v6)
          {
LABEL_39:
            v7 = v2;
            *v28 = v4;
            v14 = *(v4 + 2);
            if (v14 >= v6)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v5 = (v6 + 1);
            v27 = v4 + 32;
            v18 = &v4[v6 + 33];
            while (v5 < v16)
            {
              v19 = 0xD000000000000029;
              v20 = v7;
              switch(*v18)
              {
                case 1:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.RecentlyAdded";
                  break;
                case 2:
                  v19 = 0xD000000000000023;
                  v20 = "LibraryView.Playlists";
                  break;
                case 3:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.Artists";
                  break;
                case 4:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Albums";
                  break;
                case 5:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Songs";
                  break;
                case 6:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.MadeForYou";
                  break;
                case 7:
                  v19 = 0xD000000000000022;
                  v20 = "LibraryView.MusicVideos";
                  break;
                case 8:
                  v19 = 0xD000000000000028;
                  v20 = "LibraryView.Genres";
                  break;
                case 9:
                  v19 = 0xD000000000000025;
                  v20 = "LibraryView.Compilations";
                  break;
                case 10:
                  v19 = 0xD000000000000021;
                  v20 = "LibraryView.Composers";
                  break;
                case 11:
                  v19 = 0xD000000000000026;
                  v20 = "LibraryView.Shows";
                  break;
                case 12:
                  v19 = 0xD000000000000027;
                  v20 = "LibraryView.Downloaded";
                  break;
                default:
                  break;
              }

              v21 = v20 | 0x8000000000000000;
              v22 = 0xD000000000000029;
              v23 = v7;
              switch(v29)
              {
                case 1:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.RecentlyAdded";
                  break;
                case 2:
                  v22 = 0xD000000000000023;
                  v23 = "LibraryView.Playlists";
                  break;
                case 3:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.Artists";
                  break;
                case 4:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Albums";
                  break;
                case 5:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Songs";
                  break;
                case 6:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.MadeForYou";
                  break;
                case 7:
                  v22 = 0xD000000000000022;
                  v23 = "LibraryView.MusicVideos";
                  break;
                case 8:
                  v22 = 0xD000000000000028;
                  v23 = "LibraryView.Genres";
                  break;
                case 9:
                  v22 = 0xD000000000000025;
                  v23 = "LibraryView.Compilations";
                  break;
                case 10:
                  v22 = 0xD000000000000021;
                  v23 = "LibraryView.Composers";
                  break;
                case 11:
                  v22 = 0xD000000000000026;
                  v23 = "LibraryView.Shows";
                  break;
                case 12:
                  v22 = 0xD000000000000027;
                  v23 = "LibraryView.Downloaded";
                  break;
                default:
                  break;
              }

              if (v19 == v22 && v21 == (v23 | 0x8000000000000000))
              {
              }

              else
              {
                v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v24 & 1) == 0)
                {
                  if (v5 != v6)
                  {
                    if (v6 < 0)
                    {
                      goto LABEL_83;
                    }

                    v25 = *(v4 + 2);
                    if (v6 >= v25)
                    {
                      goto LABEL_84;
                    }

                    if (v5 >= v25)
                    {
                      goto LABEL_85;
                    }

                    v26 = v27[v6];
                    v27[v6] = *v18;
                    *v18 = v26;
                  }

                  ++v6;
                }
              }

              v5 = (v5 + 1);
              v16 = *(v4 + 2);
              ++v18;
              if (v5 == v16)
              {
                goto LABEL_39;
              }
            }

LABEL_81:
            __break(1u);
          }

          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        }
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_37;
      }

      ++v6;
    }

    while (v5 != v6);
    v6 = *(v4 + 2);
    v14 = v6;
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

LABEL_40:
  specialized Array.replaceSubrange<A>(_:with:)(v6, v14);
  return swift_endAccess();
}

uint64_t specialized BidirectionalCollection.last(where:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v10 = a4 >> 1;
  result = swift_beginAccess();
  do
  {
    if (a3 == v10)
    {
      return 13;
    }

    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    if (v10 < a3)
    {
      goto LABEL_11;
    }

    v13 = *a5;
    v14 = *(a2 + v10);

    v15 = specialized Sequence<>.contains(_:)(v14, v13);
  }

  while (!v15);
  __chkstk_darwin();
  v16 = v10;
  result = partial apply for specialized closure #1 in BidirectionalCollection.last(where:)(&v16, &v17);
  if (!v6)
  {
    return v17;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = specialized Set._Variant.insert(_:)(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Library.Menu.Revision.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(a1, a5) & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(a2, a6) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(a3, a7) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(a4, a8);
}

void protocol witness for Decodable.init(from:) in conformance Library.Menu.Revision(uint64_t *a1@<X8>, void *a2@<X0>)
{
  specialized Library.Menu.Revision.init(from:)(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Library.Menu.Revision(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(*a1, *a2) & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(v2, v5) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(v3, v6);
}

void *one-time initialization function for current()
{
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9MusicCore7LibraryO4MenuV10IdentifierO_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for current);
  static Library.Menu.Revision.Version.current = &outlined read-only object #0 of static Library.Menu.Identifier.allCases.getter;
  unk_10063D590 = result;
  return result;
}

uint64_t static Library.Menu.Revision.Version.current.getter()
{
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v0 = static Library.Menu.Revision.Version.current;

  return v0;
}

void NSUserDefaults.migrateOldMenuIfNeeded()()
{
  LOBYTE(v19[0]) = 0;
  v1 = lazy protocol witness table accessor for type NSUserDefaults.LegacyKey and conformance NSUserDefaults.LegacyKey();
  v2 = lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v20);
  if (!*(&v21 + 1))
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v3 = v19[0];
  LOBYTE(v19[0]) = 1;
  NSUserDefaults.subscript.getter(&v20);
  if (!*(&v21 + 1))
  {
LABEL_7:

LABEL_8:
    outlined destroy of TaskPriority?(&v20, &_sypSgMd_0, &_sypSgMR_0);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v4 = v19[0];
  v19[0] = 0x4D7972617262694CLL;
  v19[1] = 0xEB00000000756E65;
  NSUserDefaults.subscript.getter(&v20);
  if (*(&v21 + 1))
  {

    goto LABEL_7;
  }

  outlined destroy of TaskPriority?(&v20, &_sypSgMd_0, &_sypSgMR_0);
  if (one-time initialization token for current != -1)
  {
    swift_once();
  }

  v5 = specialized static Library.Menu.Revision.migrate(oldStorage:to:)(v3, v4, static Library.Menu.Revision.Version.current, unk_10063D590);
  if (v0)
  {

    if (one-time initialization token for libraryMenu != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.libraryMenu);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *&v20 = v0;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      String.init<A>(describing:)();
      v14 = String._bridgeToObjectiveC()();

      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to migrate legacy library menu: %@", v12, 0xCu);
      outlined destroy of TaskPriority?(v13, &_sSo8NSObjectCSgMd_0, &_sSo8NSObjectCSgMR_0);
    }

    else
    {
    }
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;

    NSUserDefaults.libraryMenuRevision.setter(v15, v16, v17, v18);
    v20 = 0u;
    v21 = 0u;
    LOBYTE(v19[0]) = 0;
    NSUserDefaults.subscript.setter(&v20, v19, &unk_1005B51F8, v1, v2);
    v20 = 0u;
    v21 = 0u;
    LOBYTE(v19[0]) = 1;
    NSUserDefaults.subscript.setter(&v20, v19, &unk_1005B51F8, v1, v2);
  }
}

void (*NSUserDefaults.libraryMenuRevision.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = NSUserDefaults.libraryMenuRevision.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return NSUserDefaults.libraryMenuRevision.modify;
}

void NSUserDefaults.libraryMenuRevision.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {

    NSUserDefaults.libraryMenuRevision.setter(v4, v3, v5, v6);
  }

  else
  {
    NSUserDefaults.libraryMenuRevision.setter(**a1, v3, v5, v6);
  }

  free(v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSUserDefaults.LegacyKey(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v4 = "loading";
  }

  else
  {
    v4 = "orderedLibraryViewIdentifiers";
  }

  if (*a2)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v6 = "orderedLibraryViewIdentifiers";
  }

  else
  {
    v6 = "loading";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSUserDefaults.LegacyKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSUserDefaults.LegacyKey(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSUserDefaults.LegacyKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSUserDefaults.LegacyKey@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NSUserDefaults.LegacyKey.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance NSUserDefaults.LegacyKey(unint64_t *a1@<X8>)
{
  v2 = "orderedLibraryViewIdentifiers";
  v3 = 0xD00000000000001CLL;
  if (!*v1)
  {
    v3 = 0xD00000000000001DLL;
    v2 = "loading";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t one-time initialization function for libraryMenu()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.libraryMenu);
  __swift_project_value_buffer(v0, static Logger.libraryMenu);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.libraryMenu.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for libraryMenu != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.libraryMenu);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Library.Menu.Identifier.musicAccessibilityIdentifier.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (one-time initialization token for libraryPlaylistsView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryPlaylistsView;
      break;
    case 2:
      if (one-time initialization token for libraryArtistsListView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryArtistsListView;
      break;
    case 3:
      if (one-time initialization token for libraryAlbumsView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryAlbumsView;
      break;
    case 4:
      if (one-time initialization token for librarySongsView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.librarySongsView;
      break;
    case 5:
      if (one-time initialization token for libraryMadeForYouView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMadeForYouView;
      break;
    case 6:
      if (one-time initialization token for libraryMusicVideosView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryMusicVideosView;
      break;
    case 7:
      if (one-time initialization token for libraryGenresView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryGenresView;
      break;
    case 8:
      if (one-time initialization token for libraryCompilationsView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryCompilationsView;
      break;
    case 9:
      if (one-time initialization token for libraryComposersView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryComposersView;
      break;
    case 10:
      if (one-time initialization token for libraryTVAndMoviesView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryTVAndMoviesView;
      break;
    case 11:
      if (one-time initialization token for libraryDownloadedView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadedView;
      break;
    case 12:
      if (one-time initialization token for libraryDownloadingView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryDownloadingView;
      break;
    default:
      if (one-time initialization token for libraryRecentlyAddedView != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.libraryRecentlyAddedView;
      break;
  }

  v2 = *v1;

  return v2;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  Hasher.init(_seed:)();
  ActionType.rawValue.getter(a2);
  String.hash(into:)();

  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = ActionType.rawValue.getter(*(*(v6 + 48) + v9));
      v13 = v12;
      if (v11 == ActionType.rawValue.getter(a2) && v13 == v14)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v4 = *v2;
  Hasher.init(_seed:)();
  ApplicationCapabilities.Service.rawValue.getter();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v32 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v31 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    while (1)
    {
      v8 = *(*(v32 + 48) + v7);
      v33 = v7;
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004C4B80;
        }

        v13 = *(*(v32 + 48) + v7) ? 0x646956636973756DLL : 0x636973756DLL;
        v14 = *(*(v32 + 48) + v7) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(v32 + 48) + v7) <= 1u ? v13 : v11;
        v10 = *(*(v32 + 48) + v7) <= 1u ? v14 : v12;
      }

      else if (*(*(v32 + 48) + v7) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x80000001004C4BC0;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x80000001004C4BE0;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a2 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a2 == 9)
      {
        v16 = 0x80000001004C4BE0;
      }

      if (a2 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x80000001004C4BC0;
      }

      v17 = 0x746963696C707865;
      if (a2 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a2 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a2 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a2 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a2 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a2 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a2 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x80000001004C4B80;
      }

      if (a2)
      {
        v21 = 0x646956636973756DLL;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a2)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a2 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a2 <= 4u ? v19 : v15;
      v24 = a2 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_78;
      }

      v7 = (v33 + 1) & v30;
      if (((*(v31 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_78:
    result = 0;
    LOBYTE(a2) = *(*(v32 + 48) + v33);
  }

  else
  {
LABEL_76:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v28;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v34;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v4 = *v2;
  Hasher.init(_seed:)();
  Library.Menu.Identifier.rawValue.getter(a2);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = 0xD000000000000029;
      v10 = "orites";
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Playlists";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Artists";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Albums";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Songs";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.MadeForYou";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.MusicVideos";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Genres";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Compilations";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Composers";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Shows";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v11 = v10 | 0x8000000000000000;
      v12 = 0xD000000000000029;
      v13 = "orites";
      switch(a2)
      {
        case 1:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v12 = 0xD000000000000023;
          v13 = "LibraryView.Playlists";
          break;
        case 3:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.Artists";
          break;
        case 4:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Albums";
          break;
        case 5:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Songs";
          break;
        case 6:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.MadeForYou";
          break;
        case 7:
          v12 = 0xD000000000000022;
          v13 = "LibraryView.MusicVideos";
          break;
        case 8:
          v12 = 0xD000000000000028;
          v13 = "LibraryView.Genres";
          break;
        case 9:
          v12 = 0xD000000000000025;
          v13 = "LibraryView.Compilations";
          break;
        case 10:
          v12 = 0xD000000000000021;
          v13 = "LibraryView.Composers";
          break;
        case 11:
          v12 = 0xD000000000000026;
          v13 = "LibraryView.Shows";
          break;
        case 12:
          v12 = 0xD000000000000027;
          v13 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v9 == v12 && v11 == (v13 | 0x8000000000000000))
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_35;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v7, isUniquelyReferenced_nonNull_native);
    *v17 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
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
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AudioVariant();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
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
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for Playlist.Collaborator();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
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
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
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
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  Hasher.init(_seed:)();
  v7 = a2 & 1;
  Hasher._combine(_:)(v7);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      specialized _NativeSet.resize(capacity:)(v17 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
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

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
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
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t lazy protocol witness table accessor for type Library.Menu.MoveError and conformance Library.Menu.MoveError()
{
  result = lazy protocol witness table cache variable for type Library.Menu.MoveError and conformance Library.Menu.MoveError;
  if (!lazy protocol witness table cache variable for type Library.Menu.MoveError and conformance Library.Menu.MoveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.MoveError and conformance Library.Menu.MoveError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Library.Menu.Revision and conformance Library.Menu.Revision()
{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision and conformance Library.Menu.Revision;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision and conformance Library.Menu.Revision)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision and conformance Library.Menu.Revision);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision and conformance Library.Menu.Revision;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision and conformance Library.Menu.Revision)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision and conformance Library.Menu.Revision);
  }

  return result;
}

id outlined copy of Library.Menu.Request.MediaLibrarySource(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return a1;
  }
}

void outlined consume of Library.Menu.Request.MediaLibrarySource(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

double outlined copy of Library.Menu.Revision?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t outlined consume of Library.Menu.Revision?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10019A01C()
{

  return swift_deallocObject();
}

uint64_t sub_10019A06C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy9MusicCore10ActionTypeOGMd, &_ss11_SetStorageCy9MusicCore10ActionTypeOGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8MusicKit12AudioVariantOGMd, &_ss11_SetStorageCy8MusicKit12AudioVariantOGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
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
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
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

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MusicCore18BackgroundMaterialOGMd, &_ss11_SetStorageCy9MusicCore18BackgroundMaterialOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy9MusicCore7LibraryO4MenuV10IdentifierOGMd, &_ss11_SetStorageCy9MusicCore7LibraryO4MenuV10IdentifierOGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18NSNotificationNameaGMd, &_ss11_SetStorageCySo18NSNotificationNameaGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
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
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
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

  return result;
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8MusicKit0C6ItemIDVGMd, &_ss11_SetStorageCy8MusicKit0C6ItemIDVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

{
  v1 = v0;
  v2 = type metadata accessor for Playlist.Collaborator();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGMd, &_ss11_SetStorageCy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
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

{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation9IndexPathVGMd, &_ss11_SetStorageCy10Foundation9IndexPathVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd_0, &_ss11_SetStorageCySSGMR_0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX0C14OptionsManagerC6OptionOGMd, &_ss11_SetStorageCy7LyricsX0C14OptionsManagerC6OptionOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC4WordCGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC4WordCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MusicCore10ActionTypeOGMd, &_ss11_SetStorageCy9MusicCore10ActionTypeOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      ActionType.rawValue.getter(v16);
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MusicCore23ApplicationCapabilitiesV7ServiceOGMd, &_ss11_SetStorageCy9MusicCore23ApplicationCapabilitiesV7ServiceOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MusicCore18BackgroundMaterialOGMd, &_ss11_SetStorageCy9MusicCore18BackgroundMaterialOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo17MPCPlaybackEngineC9MusicCoreE6OptionOGMd, &_ss11_SetStorageCySo17MPCPlaybackEngineC9MusicCoreE6OptionOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8MusicKit0C6ItemIDVGMd, &_ss11_SetStorageCy8MusicKit0C6ItemIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}