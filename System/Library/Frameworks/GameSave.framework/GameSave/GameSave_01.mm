void specialized GameSaveSyncedDirectory._customizeAlert<A>(_:with:)(void *a1)
{
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy8GameSave11SpinnerViewVGMd, &_s7SwiftUI19UIHostingControllerCy8GameSave11SpinnerViewVGMR));
  v4 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v5 = v4;
  v6 = [v5 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    [a1 setContentViewController_];
  }

  else
  {
    __break(1u);
  }
}

id specialized static GameSaveSyncedDirectory.closeAllDirectories()()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    if (one-time initialization token for loadedDirectorysLock != -1)
    {
LABEL_20:
      swift_once();
    }

    v1 = static GameSaveSyncedDirectory.loadedDirectorysLock;
    [static GameSaveSyncedDirectory.loadedDirectorysLock lock];
    if (one-time initialization token for loadedDirectorys != -1)
    {
      swift_once();
    }

    v2 = static GameSaveSyncedDirectory.loadedDirectorys + 64;
    v3 = 1 << *(static GameSaveSyncedDirectory.loadedDirectorys + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(static GameSaveSyncedDirectory.loadedDirectorys + 8);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *&v2[8 * v8];
      ++v7;
      if (v5)
      {
        v7 = v8;
        do
        {
LABEL_13:
          v5 &= v5 - 1;

          GameSaveSyncedDirectory.close()();
        }

        while (v5);
        continue;
      }
    }

    return [v1 unlock];
  }

  return result;
}

uint64_t specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:), 0, 0);
}

uint64_t specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)()
{
  if (os_variant_has_internal_content())
  {
    v1 = specialized static GameSaveSyncedDirectory._resolveContainerIdentifier(_:)(v0[3], v0[4]);
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.common);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_238952000, v6, v7, "Cleaning GameSaveSyncedDirectory", v8, 2u);
        MEMORY[0x23EE6C260](v8, -1, -1);
      }

      type metadata accessor for GameSaveSyncedDirectory(0);
      swift_allocObject();
      v0[9] = GameSaveSyncedDirectory.init(containerIdentifier:)(v3, v4);
      GameSaveSyncedDirectory.startSyncing(mode:)(255);
      v9 = swift_task_alloc();
      v0[10] = v9;
      *v9 = v0;
      v9[1] = specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

      return GameSaveSyncedDirectory._waitForDirectorySync(ui:)(0);
    }

    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.common);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_238952000, v12, v13, "Can't request Game Synced Directory without a valid containerIdentifier", v14, 2u);
      MEMORY[0x23EE6C260](v14, -1, -1);
    }
  }

  v15 = v0[1];

  return v15();
}

{

  return MEMORY[0x2822009F8](specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:), 0, 0);
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  GameSaveSyncedDirectory.close()();
  GameSaveSyncedDirectory.getLocalURL()(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];

    outlined destroy of URL?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    v5 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    v0[2] = 0;
    v9 = [v5 removeItemAtURL:v7 error:v0 + 2];

    v10 = v0[2];
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    if (v9)
    {
      v14 = *(v12 + 8);
      v15 = v10;
      v14(v11, v13);
    }

    else
    {
      v16 = v10;
      v17 = _convertNSErrorToError(_:)();

      swift_willThrow();

      (*(v12 + 8))(v11, v13);
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_23896D9B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_23896D9CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_23896DA1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

void type metadata completion function for GameSaveSyncedDirectory(uint64_t a1)
{
  type metadata accessor for GameSaveSyncedDirectory.State(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation<(), Never>?(319, &lazy cache variable for type metadata for CheckedContinuation<(), Never>?, &_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GameSaveSyncedDirectory.State?(319, &lazy cache variable for type metadata for GameSaveSyncedDirectory.State?, type metadata accessor for GameSaveSyncedDirectory.State, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of GameSaveSyncedDirectory.triggerPendingUpload()()
{
  v4 = (*(*v0 + 832) + **(*v0 + 832));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of GameSaveSyncedDirectory.triggerPendingUpload();

  return v4();
}

uint64_t dispatch thunk of GameSaveSyncedDirectory.triggerPendingUpload()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of GameSaveSyncedDirectory.finishSyncing(statusDisplay:)(uint64_t a1)
{
  v6 = (*(*v1 + 1168) + **(*v1 + 1168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = GameSaveSyncedDirectory.finishSyncing();

  return v6(a1);
}

uint64_t dispatch thunk of GameSaveSyncedDirectory.finishSyncing()()
{
  v4 = (*(*v0 + 1184) + **(*v0 + 1184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = GameSaveSyncedDirectory.finishSyncing();

  return v4();
}

uint64_t dispatch thunk of static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 1216) + **(v2 + 1216));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 1224) + **(*v2 + 1224));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return v8(a1, a2);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata completion function for GameSaveSyncedDirectory.State(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (versions: [GameSaveSyncedDirectory.Version])();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Error();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (versions: [GameSaveSyncedDirectory.Version])()
{
  if (!lazy cache variable for type metadata for (versions: [GameSaveSyncedDirectory.Version]))
  {
    type metadata accessor for GameSaveSyncedDirectory.State?(0, &lazy cache variable for type metadata for [GameSaveSyncedDirectory.Version], type metadata accessor for GameSaveSyncedDirectory.Version, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (versions: [GameSaveSyncedDirectory.Version]));
    }
  }
}

void type metadata accessor for GameSaveSyncedDirectory.State?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

void type metadata completion function for GameSaveSyncedDirectory.Version(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GameSaveSyncedDirectory.State?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t type metadata accessor for GameSaveSyncedDirectory(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for GameSaveSyncedDirectory.StateObserver(uint64_t a1)
{
  type metadata accessor for CheckedContinuation<(), Never>?(319, &lazy cache variable for type metadata for Published<GameSaveSyncedDirectory.Version?>, &_s8GameSave0aB15SyncedDirectoryC7VersionCSgMd, &_s8GameSave0aB15SyncedDirectoryC7VersionCSgMR, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation<(), Never>?(319, &lazy cache variable for type metadata for Published<UIAlertController?>, &_sSo17UIAlertControllerCSgMd, &_sSo17UIAlertControllerCSgMR, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for CheckedContinuation<(), Never>?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23896EBD8(void *a1)
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type GameSaveLoadingViewModifier and conformance GameSaveLoadingViewModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type GameSaveLoadingViewModifier and conformance GameSaveLoadingViewModifier()
{
  result = lazy protocol witness table cache variable for type GameSaveLoadingViewModifier and conformance GameSaveLoadingViewModifier;
  if (!lazy protocol witness table cache variable for type GameSaveLoadingViewModifier and conformance GameSaveLoadingViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveLoadingViewModifier and conformance GameSaveLoadingViewModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameSaveSyncedDirectoryError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GameSaveSyncedDirectoryError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23896EE60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = GameSaveSyncedDirectory.finishSyncing();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(a1, v4);
}

double partial apply for closure #1 in GameSaveSyncedDirectory.showSyncAlertAfterTimeHeuristic.setter()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__showSyncAlertAfterTimeHeuristic) = result;
  return result;
}

void sub_23896F0AC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  GameSaveSyncedDirectory.alert.setter(v1);
}

void partial apply for closure #1 in GameSaveSyncedDirectory.alert.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert) = v2;
  v4 = v2;
}

void sub_23896F144(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  GameSaveSyncedDirectory.window.setter(v1);
}

void partial apply for closure #1 in GameSaveSyncedDirectory.window.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window) = v2;
  v4 = v2;
}

uint64_t partial apply for closure #1 in GameSaveSyncedDirectory.stateObserver.setter()
{
  return partial apply for closure #1 in GameSaveSyncedDirectory.stateObserver.setter();
}

{
  *(*(v0 + 16) + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver) = *(v0 + 24);
}

uint64_t sub_23896F214()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23896F290()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23896F32C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #2 in GameSaveSyncedDirectory.startSyncing(mode:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in closure #2 in GameSaveSyncedDirectory.startSyncing(mode:)(a1, v4, v5, v6, v7);
}

uint64_t outlined destroy of GameSaveSyncedDirectory.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in GameSaveSyncedDirectory.containerIdentifier.setter()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  *v2 = v0[3];
  v2[1] = v1;
}

void sub_23896F5A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  GameSaveSyncedDirectory.remoteProgressObserver.setter(v1);
}

void partial apply for closure #1 in GameSaveSyncedDirectory.remoteProgressObserver.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__remoteProgressObserver);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__remoteProgressObserver) = v2;
  v4 = v2;
}

void partial apply for closure #1 in GameSaveSyncedDirectory.gameSyncedDirectoryPresenter.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter) = v2;
  v4 = v2;
}

uint64_t outlined assign with copy of GameSaveSyncedDirectory.State?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void partial apply for closure #1 in GameSaveSyncedDirectory.progress.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress) = v2;
  v4 = v2;
}

uint64_t outlined assign with copy of GameSaveSyncedDirectory.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #1 in GameSaveSyncedDirectory.waitWithUI()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in GameSaveSyncedDirectory.waitWithUI()(a1, v4, v5, v6);
}

uint64_t objectdestroy_24Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #1 in closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #6 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in closure #6 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = GameSaveSyncedDirectory.finishSyncing();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t outlined destroy of URL?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for UIAlertController(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t GSSyncedDirectoryState.url.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 internalValue])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v3 = type metadata accessor for URL();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    outlined destroy of URL?(v9, &_sypSgMd, &_sypSgMR);
    v6 = type metadata accessor for URL();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t GSSyncedDirectoryState.conflictedVersions.getter()
{
  if ([v0 internalValue])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24GSSyncedDirectoryVersionCGMd, &_sSaySo24GSSyncedDirectoryVersionCGMR);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of URL?(v5, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

uint64_t GSSyncedDirectoryState.error.getter()
{
  if ([v0 internalValue])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of URL?(v5, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

unint64_t GSSyncedDirectoryState.init(_:)(unint64_t result)
{
  v1 = result;
  v8 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      result &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = MEMORY[0x23EE6BAE0](result);
    v2 = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
LABEL_12:
      v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      type metadata accessor for GameSaveSyncedDirectory.Version(0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v7 = [v5 initWithId:isa syncState:4];

      return v7;
    }
  }

  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EE6BA40](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      [objc_allocWithZone(GSSyncedDirectoryVersion) initWithVersion_];
      MEMORY[0x23EE6B780]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id GSSyncedDirectoryVersion.init(version:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v8);
  if (!v9)
  {
    outlined destroy of URL?(v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  type metadata accessor for GameSaveSyncedDirectory.Version(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v6;
LABEL_6:
  *&v1[OBJC_IVAR___GSSyncedDirectoryVersion_version] = v3;
  v7.receiver = v1;
  v7.super_class = GSSyncedDirectoryVersion;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  outlined destroy of URL?(a1, &_sypSgMd, &_sypSgMR);
  return v4;
}

uint64_t GSSyncedDirectoryVersion.description.getter()
{
  if (*(v0 + OBJC_IVAR___GSSyncedDirectoryVersion_version))
  {
    return GameSaveSyncedDirectory.Version.description.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:);

  return specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)(a4, a5);
}

uint64_t closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:)()
{

  return MEMORY[0x2822009F8](closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:), 0, 0);
}

{
  dispatch_group_leave(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in GSSyncedDirectory.finishSyncing()(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](@objc closure #1 in GSSyncedDirectory.finishSyncing(), 0, 0);
}

uint64_t @objc closure #1 in GSSyncedDirectory.finishSyncing()()
{
  v0[4] = *(v0[2] + OBJC_IVAR___GSSyncedDirectory_directory);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = @objc closure #1 in GSSyncedDirectory.finishSyncing();

  return GameSaveSyncedDirectory._waitForDirectorySync(ui:)(0);
}

{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t @objc closure #1 in GSSyncedDirectory.triggerPendingUpload()(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](@objc closure #1 in GSSyncedDirectory.triggerPendingUpload(), 0, 0);
}

uint64_t @objc closure #1 in GSSyncedDirectory.triggerPendingUpload()()
{
  v0[4] = *(v0[2] + OBJC_IVAR___GSSyncedDirectory_directory);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = @objc closure #1 in GSSyncedDirectory.triggerPendingUpload();

  return GameSaveSyncedDirectory.triggerPendingUpload()();
}

uint64_t @objc closure #1 in GSSyncedDirectory.triggerPendingUpload()(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 24);
    v7[2](v7, a1 & 1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t @objc closure #1 in GSSyncedDirectory.finishSyncing(_:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in GSSyncedDirectory.finishSyncing(_:), 0, 0);
}

uint64_t @objc closure #1 in GSSyncedDirectory.finishSyncing(_:)()
{
  v0[5] = *(v0[3] + OBJC_IVAR___GSSyncedDirectory_directory);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = @objc closure #1 in GSSyncedDirectory.finishSyncing(_:);
  v2 = v0[2];

  return GameSaveSyncedDirectory.finishSyncing(statusDisplay:)(v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  if (v2)
  {
    v6 = *(v1 + 32);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

id GSSyncedDirectory.directoryState.getter()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + OBJC_IVAR___GSSyncedDirectory_directory);
  v12 = *(v11 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);

  [v12 lock];
  swift_getKeyPath();
  v27[0] = v11;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v11 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v10);
  [v12 unlock];

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v2 + 32))(v7, v10, v1);
        v16 = objc_allocWithZone(GSSyncedDirectoryState);
        (*(v2 + 16))(v5, v7, v1);
        v17 = [v16 initWithId:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() syncState:1];
      }

      else
      {
        (*(v2 + 32))(v7, v10, v1);
        v19 = objc_allocWithZone(GSSyncedDirectoryState);
        (*(v2 + 16))(v5, v7, v1);
        v17 = [v19 initWithId:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() syncState:2];
      }
    }

    else
    {
      (*(v2 + 32))(v7, v10, v1);
      v18 = objc_allocWithZone(GSSyncedDirectoryState);
      (*(v2 + 16))(v5, v7, v1);
      v17 = [v18 initWithId:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() syncState:0];
    }

    v20 = v17;
    swift_unknownObjectRelease();
    (*(v2 + 8))(v7, v1);
    return v20;
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return [objc_allocWithZone(GSSyncedDirectoryState) initWithId:0 syncState:3];
    }

    else
    {
      return [objc_allocWithZone(GSSyncedDirectoryState) initWithId:0 syncState:6];
    }
  }

  else
  {
    v14 = *v10;
    if (EnumCaseMultiPayload == 3)
    {
      type metadata accessor for GSSyncedDirectoryState(EnumCaseMultiPayload);
      return GSSyncedDirectoryState.init(_:)(v14);
    }

    else
    {
      swift_getErrorValue();
      v21 = v26;
      v27[3] = v26;
      __swift_allocate_boxed_opaque_existential_0(v27);
      (*(*(v21 - 8) + 16))();
      v22 = objc_allocWithZone(GSSyncedDirectoryState);
      v23 = _bridgeAnythingToObjectiveC<A>(_:)();
      __swift_destroy_boxed_opaque_existential_0(v27);
      v24 = [v22 initWithId:v23 syncState:5];
      swift_unknownObjectRelease();

      return v24;
    }
  }
}

id GSSyncedDirectoryState.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory()
{
  result = lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory;
  if (!lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory)
  {
    type metadata accessor for GameSaveSyncedDirectory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2389729CC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in GSSyncedDirectory.finishSyncing(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = GameSaveSyncedDirectory.finishSyncing();

  return @objc closure #1 in GSSyncedDirectory.finishSyncing(_:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = GameSaveSyncedDirectory.finishSyncing();

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = GameSaveSyncedDirectory.finishSyncing();

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in GSSyncedDirectory.triggerPendingUpload()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = GameSaveSyncedDirectory.finishSyncing();

  return @objc closure #1 in GSSyncedDirectory.triggerPendingUpload()(v2, v3);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t objectdestroy_19Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in GSSyncedDirectory.finishSyncing()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = GameSaveSyncedDirectory.finishSyncing();

  return @objc closure #1 in GSSyncedDirectory.finishSyncing()(v2, v3);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238972F00()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t View.gameSyncSheet(directory:finishedLoading:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[7] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
  State.init(wrappedValue:)();
  v14 = v16[0];
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;

  MEMORY[0x23EE6B520](v16, a6, &type metadata for GameSaveLoadingViewModifier, a7);
}

id GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView.init(coder:)(void *a1)
{
  v8 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
  static Binding.constant(_:)();
  v3 = v10;
  v4 = &v1[OBJC_IVAR____TtCVV8GameSave27GameSaveLoadingViewModifier29WindowReaderViewRepresentable16WindowReaderView__windowBinding];
  *v4 = v9;
  *(v4 + 2) = v3;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for GameSaveLoadingViewModifier(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GameSaveLoadingViewModifier(uint64_t result, int a2, int a3)
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

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable()
{
  v1 = *(v0 + 2);
  v10 = *v0;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo8UIWindowCSgGMd, &_s7SwiftUI7BindingVySo8UIWindowCSgGMR);
  Binding.projectedValue.getter();
  v2 = v9;
  v3 = type metadata accessor for GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCVV8GameSave27GameSaveLoadingViewModifier29WindowReaderViewRepresentable16WindowReaderView__windowBinding];
  *v5 = v8;
  *(v5 + 2) = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable(uint64_t a1)
{
  lazy protocol witness table accessor for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t closure #1 in GameSaveLoadingViewModifier.body(content:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v57 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_C16Modifier_ContentVy8GameSave0jk7LoadingcH0VG_AI0jK15SyncedDirectoryCSgQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_C16Modifier_ContentVy8GameSave0jk7LoadingcH0VG_AI0jK15SyncedDirectoryCSgQo_MR);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_C16Modifier_ContentVy8GameSave0jk7LoadingcH0VG_AI0jK15SyncedDirectoryCSgQo__So8UIWindowCSgQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_C16Modifier_ContentVy8GameSave0jk7LoadingcH0VG_AI0jK15SyncedDirectoryCSgQo__So8UIWindowCSgQo_MR);
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = &v41 - v10;
  type metadata accessor for MainActor();
  v50 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1[1];
  v63[0] = *a1;
  v11 = v63[0];
  v63[1] = v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo8UIWindowCSgGMd, &_s7SwiftUI5StateVySo8UIWindowCSgGMR);
  State.projectedValue.getter();
  v48 = v59;
  v49 = v58;
  v47 = v60;
  v14 = a1[3];
  v15 = a1[4];
  v58 = a1[2];
  v13 = v58;
  v59 = v14;
  v43 = v14;
  v60 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8GameSave0dE15SyncedDirectoryCSgGMd, &_s7SwiftUI7BindingVy8GameSave0dE15SyncedDirectoryCSgGMR);
  MEMORY[0x23EE6B5C0](v63, v16);
  v44 = v63[0];
  v58 = v63[0];
  v65 = v15;
  v66[0] = v11;
  v63[0] = v12;
  v64 = v13;
  v18 = a1[6];
  v42 = a1[5];
  v17 = v42;
  v41 = v18;
  v19 = swift_allocObject();
  v20 = *(a1 + 1);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a1 + 2);
  *(v19 + 64) = a1[6];
  outlined init with copy of URL?(v66, &v62, &_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
  outlined init with copy of URL?(v63, &v62, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMd, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMR);
  outlined init with copy of Transaction(&v64, &v62);

  outlined init with copy of URL?(&v65, &v62, &_s8GameSave0aB15SyncedDirectoryCSgMd, &_s8GameSave0aB15SyncedDirectoryCSgMR);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v17, v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy8GameSave0fg7LoadingcD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy8GameSave0fg7LoadingcD0VGMR);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryCSgMd, &_s8GameSave0aB15SyncedDirectoryCSgMR);
  v23 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _ViewModifier_Content<GameSaveLoadingViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy8GameSave0fg7LoadingcD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy8GameSave0fg7LoadingcD0VGMR, MEMORY[0x277CE04B0]);
  v24 = lazy protocol witness table accessor for type GameSaveSyncedDirectory? and conformance <A> A?();
  View.onChange<A>(of:initial:_:)();

  v58 = v11;
  v59 = v12;
  State.wrappedValue.getter();
  v25 = v62;
  v26 = swift_allocObject();
  v27 = *(a1 + 1);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v27;
  *(v26 + 48) = *(a1 + 2);
  *(v26 + 64) = a1[6];
  outlined init with copy of URL?(v66, &v58, &_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
  outlined init with copy of URL?(v63, &v58, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMd, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMR);
  outlined init with copy of Transaction(&v64, &v58);

  outlined init with copy of URL?(&v65, &v58, &_s8GameSave0aB15SyncedDirectoryCSgMd, &_s8GameSave0aB15SyncedDirectoryCSgMR);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
  v58 = v21;
  v59 = v22;
  v60 = v23;
  v61 = v24;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type UIWindow? and conformance <A> A?();
  v28 = v51;
  v29 = v53;
  View.onChange<A>(of:initial:_:)();

  (*(v52 + 8))(v6, v29);
  v31 = v54;
  v30 = v55;
  v32 = *(v55 + 16);
  v33 = v56;
  v32(v54, v28, v56);
  v34 = v57;
  v35 = v48;
  *v57 = v49;
  v34[1] = v35;
  v36 = v47;
  v34[2] = v47;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB19LoadingViewModifierV012WindowReaderD13RepresentableV_7SwiftUI0D0PAFE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAhFEAijK_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAF01_dE8_ContentVyACG_AA0aB15SyncedDirectoryCSgQo__So8UIWindowCSgQo_tMd, &_s8GameSave0aB19LoadingViewModifierV012WindowReaderD13RepresentableV_7SwiftUI0D0PAFE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAhFEAijK_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAF01_dE8_ContentVyACG_AA0aB15SyncedDirectoryCSgQo__So8UIWindowCSgQo_tMR);
  v32(v34 + *(v37 + 48), v31, v33);
  v38 = *(v30 + 8);

  v39 = v36;
  v38(v28, v33);
  v38(v31, v33);
}

uint64_t closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20[-v6];
  v8 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v8)
  {
    v9 = *a3;
    v10 = a3[1];
    v21[0] = *a3;
    v21[1] = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo8UIWindowCSgGMd, &_s7SwiftUI5StateVySo8UIWindowCSgGMR);
    State.wrappedValue.getter();
    v11 = v24;
    if (v24)
    {
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
      v21[0] = v10;
      v23 = a3[2];
      v24 = v9;
      v13 = a3[5];
      v22 = a3[4];
      v14 = a3[6];

      v15 = v11;
      outlined init with copy of URL?(&v24, v20, &_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
      outlined init with copy of URL?(v21, v20, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMd, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMR);
      outlined init with copy of Transaction(&v23, v20);

      outlined init with copy of URL?(&v22, v20, &_s8GameSave0aB15SyncedDirectoryCSgMd, &_s8GameSave0aB15SyncedDirectoryCSgMR);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v13, v14);
      v16 = static MainActor.shared.getter();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = MEMORY[0x277D85700];
      *(v17 + 32) = v8;
      *(v17 + 40) = v15;
      v18 = *(a3 + 1);
      *(v17 + 48) = *a3;
      *(v17 + 64) = v18;
      *(v17 + 80) = *(a3 + 2);
      *(v17 + 96) = a3[6];
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:), v17);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = type metadata accessor for MainActor();
  v6[4] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:);

  return GameSaveSyncedDirectory.finishSyncing(statusDisplay:)(a5);
}

uint64_t closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:)()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:), v1, v0);
}

{
  v1 = *(v0 + 16);

  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(*(v0 + 16) + 48);

    v2(v4);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GameSaveSyncedDirectory.State) -> ())?(v2, v3);
  }

  v5 = *(v0 + 8);

  return v5();
}

void closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:)(uint64_t *a1, void **a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27[-v7 - 8];
  v9 = *a1;
  v10 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v11 = MEMORY[0x277D85700];
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v9 || !v10)
  {
  }

  else
  {
    v13 = a3[2];
    v12 = a3[3];
    v14 = a3[4];
    v28[0] = v13;
    v28[1] = v12;
    v26 = v12;
    v28[2] = v14;
    v15 = v10;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8GameSave0dE15SyncedDirectoryCSgGMd, &_s7SwiftUI7BindingVy8GameSave0dE15SyncedDirectoryCSgGMR);
    MEMORY[0x23EE6B5C0](&v31, v16);
    v17 = v31;
    if (v31)
    {
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
      v19 = *a3;
      v29 = a3[1];
      v30 = v19;
      v31 = v13;
      v28[0] = v14;
      v20 = a3[5];
      v21 = a3[6];
      v22 = v15;

      outlined init with copy of URL?(&v30, v27, &_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
      outlined init with copy of URL?(&v29, v27, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMd, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMR);
      outlined init with copy of Transaction(&v31, v27);

      outlined init with copy of URL?(v28, v27, &_s8GameSave0aB15SyncedDirectoryCSgMd, &_s8GameSave0aB15SyncedDirectoryCSgMR);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v20, v21);
      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v11;
      *(v24 + 32) = v17;
      *(v24 + 40) = v22;
      v25 = *(a3 + 1);
      *(v24 + 48) = *a3;
      *(v24 + 64) = v25;
      *(v24 + 80) = *(a3 + 2);
      *(v24 + 96) = a3[6];
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:), v24);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = type metadata accessor for MainActor();
  v6[4] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:);

  return GameSaveSyncedDirectory.finishSyncing(statusDisplay:)(a5);
}

uint64_t closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:)()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:), v1, v0);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance GameSaveLoadingViewModifier@<X0>(uint64_t a1@<X0>, uint64_t *a8@<X8>)
{
  v11 = *(v8 + 16);
  v15[0] = *v8;
  v15[1] = v11;
  v15[2] = *(v8 + 32);
  v16 = *(v8 + 48);
  *a8 = static Alignment.center.getter();
  a8[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0Vy8GameSave0ij7LoadingD8ModifierV012WindowReaderD13RepresentableV_AA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyApAEAqrS_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_dL8_ContentVyALG_AJ0iJ15SyncedDirectoryCSgQo__So8UIWindowCSgQo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0Vy8GameSave0ij7LoadingD8ModifierV012WindowReaderD13RepresentableV_AA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyApAEAqrS_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_dL8_ContentVyALG_AJ0iJ15SyncedDirectoryCSgQo__So8UIWindowCSgQo_tGGMR);
  return closure #1 in GameSaveLoadingViewModifier.body(content:)(v15, a1, (a8 + *(v13 + 44)));
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GameSaveSyncedDirectory? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type GameSaveSyncedDirectory? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type GameSaveSyncedDirectory? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8GameSave0aB15SyncedDirectoryCSgMd, &_s8GameSave0aB15SyncedDirectoryCSgMR);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory, &protocol conformance descriptor for GameSaveSyncedDirectory);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveSyncedDirectory? and conformance <A> A?);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t lazy protocol witness table accessor for type UIWindow? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIWindow? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIWindow? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type UIWindow and conformance NSObject, type metadata accessor for UIWindow, MEMORY[0x277D85380]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIWindow? and conformance <A> A?);
  }

  return result;
}

unint64_t type metadata accessor for UIWindow()
{
  result = lazy cache variable for type metadata for UIWindow;
  if (!lazy cache variable for type metadata for UIWindow)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIWindow);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:)(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t objectdestroy_10Tm_0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:)(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t getEnumTagSinglePayload for ConflictScrollView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for ConflictScrollView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GameSaveLoadingViewModifier.WindowReaderViewRepresentable(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GameSaveLoadingViewModifier.WindowReaderViewRepresentable(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable()
{
  result = lazy protocol witness table cache variable for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable;
  if (!lazy protocol witness table cache variable for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable;
  if (!lazy protocol witness table cache variable for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable);
  }

  return result;
}

uint64_t closure #1 in ConflictButton.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AA012_ConditionalJ0VyAKyAA0D0PAAE4boldyQrSbFQOyAKyAKyAA5ImageVAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingG0VGAKyAtAEAUyQrSbFQOyAKyAPA2_G_Qo_A6_GGApKyAKyAWA2_GAOGAA6VStackVyAIyAA4TextV_ARyA17_A17_GtGGAMtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AA012_ConditionalJ0VyAKyAA0D0PAAE4boldyQrSbFQOyAKyAKyAA5ImageVAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingG0VGAKyAtAEAUyQrSbFQOyAKyAPA2_G_Qo_A6_GGApKyAKyAWA2_GAOGAA6VStackVyAIyAA4TextV_ARyA17_A17_GtGGAMtGGMR);
  closure #1 in closure #1 in ConflictButton.body.getter(a1, (a2 + *(v4 + 44)));

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0G0PAAE4boldyQrSbFQOyACyACyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGACyApAEAQyQrSbFQOyACyAlZG_Qo_A2_GGAlCyACyAsZGAKGAA6VStackVyAGyAA4TextV_ANyA13_A13_GtGGAItGGAA01_d5ShapeQ0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0G0PAAE4boldyQrSbFQOyACyACyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGACyApAEAQyQrSbFQOyACyAlZG_Qo_A2_GGAlCyACyAsZGAKGAA6VStackVyAGyAA4TextV_ANyA13_A13_GtGGAItGGAA01_d5ShapeQ0VyAA9RectangleVGGMR);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in ConflictButton.body.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v87 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR);
  MEMORY[0x28223BE20](v89);
  v4 = &v73[-v3];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAGyAGyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGAGyAiAEAJyQrSbFQOyAGyAGyAA6SpacerVANGAUG_Qo_AYG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAGyAGyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGAGyAiAEAJyQrSbFQOyAGyAGyAA6SpacerVANGAUG_Qo_AYG_GMR);
  MEMORY[0x28223BE20](v80);
  v82 = &v73[-v5];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR);
  MEMORY[0x28223BE20](v81);
  v7 = &v73[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v90 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v73[-v11];
  type metadata accessor for MainActor();
  v88 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v85 = v116;
  v86 = v114;
  v83 = v119;
  v84 = v118;
  v113 = 1;
  v112 = v115;
  v111 = v117;
  if (*(a1 + *(type metadata accessor for ConflictButton(0) + 32)) == 1)
  {
    v77 = Image.init(systemName:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v13 = v120;
    v14 = v121;
    v15 = a1;
    v16 = v122;
    v17 = v12;
    v18 = v123;
    v78 = v7;
    v19 = v124;
    v20 = v125;
    v21 = static Font.subheadline.getter();
    KeyPath = swift_getKeyPath();
    LOBYTE(v107[0]) = v14;
    LOBYTE(v100) = v18;
    *&v102 = v77;
    *(&v102 + 1) = v13;
    LOBYTE(v103[0]) = v14;
    *(&v103[0] + 1) = v16;
    a1 = v15;
    LOBYTE(v103[1]) = v18;
    v12 = v17;
    *(&v103[1] + 1) = v19;
    *&v103[2] = v20;
    *(&v103[2] + 1) = KeyPath;
    *&v103[3] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v23 = v78;
    View.bold(_:)();
    *&v105[16] = v103[1];
    *&v105[32] = v103[2];
    *&v105[48] = *&v103[3];
    v104 = v102;
    *v105 = v103[0];
    outlined destroy of URL?(&v104, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    LOBYTE(v17) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v24 = v82;
    v25 = v23 + *(v81 + 36);
    *v25 = v17;
    *(v25 + 8) = v26;
    *(v25 + 16) = v27;
    *(v25 + 24) = v28;
    *(v25 + 32) = v29;
    *(v25 + 40) = 0;
    outlined init with copy of URL?(v23, v24, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v30 = v23;
    v31 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd;
    v32 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR;
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v33 = v120;
    v34 = v122;
    v35 = v124;
    v36 = v125;
    LOBYTE(v107[0]) = 1;
    LOBYTE(v100) = v121;
    LOBYTE(v98[0]) = v123;
    v37 = static Font.subheadline.getter();
    v38 = swift_getKeyPath();
    *&v102 = 0;
    BYTE8(v102) = v107[0];
    *&v103[0] = v33;
    BYTE8(v103[0]) = v100;
    *&v103[1] = v34;
    BYTE8(v103[1]) = v98[0];
    *&v103[2] = v35;
    *(&v103[2] + 1) = v36;
    *&v103[3] = v38;
    *(&v103[3] + 1) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    View.bold(_:)();
    *&v105[16] = v103[1];
    *&v105[32] = v103[2];
    *&v105[48] = v103[3];
    v104 = v102;
    *v105 = v103[0];
    outlined destroy of URL?(&v104, &_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    LOBYTE(v37) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v39 = &v4[*(v89 + 36)];
    *v39 = v37;
    *(v39 + 1) = v40;
    *(v39 + 2) = v41;
    *(v39 + 3) = v42;
    *(v39 + 4) = v43;
    v39[40] = 0;
    outlined init with copy of URL?(v4, v82, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v30 = v4;
    v31 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd;
    v32 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR;
  }

  outlined destroy of URL?(v30, v31, v32);
  v79 = v12;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v81 = v128;
  v82 = v126;
  v80 = v130;
  v78 = v131;
  v97 = 1;
  v96 = v127;
  v95 = v129;

  v77 = Image.init(_internalSystemName:)();
  v76 = static Font.title2.getter();
  v89 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v75 = static HorizontalAlignment.leading.getter();
  LOBYTE(v104) = 1;
  closure #1 in closure #1 in closure #1 in ConflictButton.body.getter(a1, v98);
  *&v94[23] = v98[1];
  *&v94[39] = v98[2];
  *&v94[55] = v98[3];
  v94[71] = v99;
  *&v94[7] = v98[0];
  v74 = v104;
  v44 = v113;
  v45 = v112;
  v46 = v111;
  v47 = v90;
  outlined init with copy of URL?(v12, v90, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMR);
  v48 = v97;
  v49 = v96;
  v50 = v95;
  v51 = v86;
  v52 = v87;
  *v87 = 0;
  *(v52 + 8) = v44;
  v52[2] = v51;
  *(v52 + 24) = v45;
  v53 = v84;
  v52[4] = v85;
  *(v52 + 40) = v46;
  v54 = v83;
  v52[6] = v53;
  v52[7] = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingG0VGACyAlAEAMyQrSbFQOyACyAhVG_Qo_AZGGAhCyACyAoVGAGGAA6VStackVyAA05TupleI0VyAA4TextV_AJyA11_A11_GtGGAEtMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingG0VGACyAlAEAMyQrSbFQOyACyAhVG_Qo_AZGGAhCyACyAoVGAGGAA6VStackVyAA05TupleI0VyAA4TextV_AJyA11_A11_GtGGAEtMR);
  outlined init with copy of URL?(v47, v52 + v55[12], &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMR);
  v56 = v52 + v55[16];
  *v56 = 0;
  v56[8] = v48;
  v57 = v81;
  *(v56 + 2) = v82;
  v56[24] = v49;
  *(v56 + 4) = v57;
  v56[40] = v50;
  v59 = v77;
  v58 = v78;
  *(v56 + 6) = v80;
  *(v56 + 7) = v58;
  v60 = v52 + v55[20];
  *&v100 = v59;
  *(&v100 + 1) = v89;
  v61 = v76;
  *v101 = v76;
  *&v101[8] = v91;
  *&v101[24] = v92;
  *&v101[40] = v93;
  v62 = *&v101[32];
  *(v60 + 2) = *&v101[16];
  *(v60 + 3) = v62;
  *(v60 + 8) = *&v101[48];
  v63 = *v101;
  *v60 = v100;
  *(v60 + 1) = v63;
  v64 = (v52 + v55[24]);
  v65 = v75;
  v102 = v75;
  v66 = v74;
  LOBYTE(v103[0]) = v74;
  *(v103 + 1) = *v94;
  *(&v103[4] + 1) = *&v94[64];
  *(&v103[3] + 1) = *&v94[48];
  *(&v103[2] + 1) = *&v94[32];
  *(&v103[1] + 1) = *&v94[16];
  v67 = v103[0];
  *v64 = v75;
  v64[1] = v67;
  v68 = v103[1];
  v69 = v103[2];
  v70 = v103[3];
  *(v64 + 73) = *(&v103[3] + 9);
  v64[3] = v69;
  v64[4] = v70;
  v64[2] = v68;
  v71 = v52 + v55[28];
  *v71 = 0;
  v71[8] = 1;
  outlined init with copy of URL?(&v100, &v104, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGMR);
  outlined init with copy of URL?(&v102, &v104, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA19_ConditionalContentVyA2GGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA19_ConditionalContentVyA2GGtGGMR);
  outlined destroy of URL?(v79, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMR);
  v104 = v65;
  v105[0] = v66;
  *&v105[17] = *&v94[16];
  *&v105[33] = *&v94[32];
  *&v105[49] = *&v94[48];
  v106 = *&v94[64];
  *&v105[1] = *v94;
  outlined destroy of URL?(&v104, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA19_ConditionalContentVyA2GGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA19_ConditionalContentVyA2GGtGGMR);
  v107[0] = v59;
  v107[1] = v89;
  v107[2] = v61;
  v108 = v91;
  v109 = v92;
  v110 = v93;
  outlined destroy of URL?(v107, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGMR);
  outlined destroy of URL?(v90, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in ConflictButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  v73[2] = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v76 = type metadata accessor for Calendar();
  *&v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v80 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + 24);
  *&v87 = *(a1 + 16);
  *(&v87 + 1) = v6;
  v7 = lazy protocol witness table accessor for type String and conformance String();

  v73[1] = v7;
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Font.footnote.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;

  outlined consume of Text.Storage(v8, v10, v12 & 1);

  static Font.Weight.bold.getter();
  v78 = Text.fontWeight(_:)();
  v79 = v18;
  v20 = v19;
  v77 = v21;
  outlined consume of Text.Storage(v13, v15, v17 & 1);

  v22 = v74;
  static Calendar.current.getter();
  type metadata accessor for ConflictButton(0);
  v23 = Calendar.isDateInToday(_:)();
  (*(v75 + 8))(v22, v76);
  if (v23)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._countAndFlagsBits = 0x7461207961646F54;
    v24._object = 0xE900000000000020;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v24);
    v25 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v27 = [v25 localizedStringFromDate:isa dateStyle:0 timeStyle:1];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v31);

    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v32);
    LocalizedStringKey.init(stringInterpolation:)();
    if (one-time initialization token for bundleForGameSave != -1)
    {
      swift_once();
    }

    v33 = static GameSaveSyncedDirectory.bundleForGameSave;
    v34 = Text.init(_:tableName:bundle:comment:)();
    v36 = v35;
    v38 = v37;
    static Font.caption.getter();
    v39 = Text.font(_:)();
    v41 = v40;
    v43 = v42;
    v45 = v44;

    outlined consume of Text.Storage(v34, v36, v38 & 1);

    v82 = v39;
    v83 = v41;
    v84 = v43 & 1;
    v85 = v45;
    v86 = 0;
  }

  else
  {
    v46 = objc_opt_self();
    v47 = Date._bridgeToObjectiveC()().super.isa;
    v48 = [v46 localizedStringFromDate:v47 dateStyle:2 timeStyle:1];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    *&v87 = v49;
    *(&v87 + 1) = v51;
    v52 = Text.init<A>(_:)();
    v54 = v53;
    LOBYTE(v51) = v55;
    static Font.caption.getter();
    v56 = Text.font(_:)();
    v58 = v57;
    v60 = v59;
    v62 = v61;

    outlined consume of Text.Storage(v52, v54, v51 & 1);

    v82 = v56;
    v83 = v58;
    v84 = v60 & 1;
    v85 = v62;
    v86 = 1;
  }

  _ConditionalContent<>.init(storage:)();
  v63 = v87;
  v64 = v88;
  v65 = v89;
  v75 = v87;
  v76 = v88;
  v66 = v77 & 1;
  LOBYTE(v87) = v77 & 1;
  LOBYTE(v82) = v89;
  v67 = v81;
  v69 = v78;
  v68 = v79;
  *v81 = v78;
  v67[1] = v20;
  *(v67 + 16) = v66;
  v67[3] = v68;
  *(v67 + 2) = v63;
  *(v67 + 3) = v64;
  *(v67 + 64) = v65;
  outlined copy of Text.Storage(v69, v20, v66);

  v70 = v75;
  v71 = v76;
  outlined copy of _ConditionalContent<Text, Text>.Storage(v75, *(&v75 + 1), v76, *(&v76 + 1));
  outlined consume of _ConditionalContent<Text, Text>.Storage(v70, *(&v70 + 1), v71, *(&v71 + 1));
  outlined consume of Text.Storage(v69, v20, v66);
}

uint64_t protocol witness for View.body.getter in conformance ConflictButton(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v8[-v3];
  v9 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0G0PAAE4boldyQrSbFQOyACyACyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGACyApAEAQyQrSbFQOyACyAlZG_Qo_A2_GGAlCyACyAsZGAKGAA6VStackVyAGyAA4TextV_ANyA13_A13_GtGGAItGGAA01_d5ShapeQ0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0G0PAAE4boldyQrSbFQOyACyACyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGACyApAEAQyQrSbFQOyACyAlZG_Qo_A2_GGAlCyACyAsZGAKGAA6VStackVyAGyAA4TextV_ANyA13_A13_GtGGAItGGAA01_d5ShapeQ0VyAA9RectangleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGMR) + 36)];
  v6 = v11;
  *v5 = v10;
  v5[1] = v6;
  v5[2] = v12;
  *&v4[*(v2 + 36)] = static HierarchicalShapeStyle.primary.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();
  return outlined destroy of URL?(v4, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGMR);
}

uint64_t ConflictScrollView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay8GameSave0jK15SyncedDirectoryC7VersionCG10Foundation3URLVAA05TupleD0VyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAJ08ConflictU0V_AA05PlainuS0VQo__AA7DividerVSgtGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay8GameSave0jK15SyncedDirectoryC7VersionCG10Foundation3URLVAA05TupleD0VyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAJ08ConflictU0V_AA05PlainuS0VQo__AA7DividerVSgtGGGMR);
  closure #1 in ConflictScrollView.body.getter(v1);
  v3 = static Alignment.center.getter();
  v5 = v4;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Color.gray.getter();
  v6 = Color.opacity(_:)();

  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGMR) + 36));
  *v7 = v6;
  v7[1] = v3;
  v7[2] = v5;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR) + 36));
  v9 = *(type metadata accessor for RoundedRectangle() + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = type metadata accessor for RoundedCornerStyle();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #10.0 }

  *v8 = _Q0;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
  LOBYTE(v10) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA14_PaddingLayoutVGMR);
  v26 = a1 + *(result + 36);
  *v26 = v10;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t closure #1 in ConflictScrollView.body.getter(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5[0] = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay8GameSave0dE15SyncedDirectoryC7VersionCGGMd, &_s7SwiftUI5StateVySay8GameSave0dE15SyncedDirectoryC7VersionCGGMR);
  State.wrappedValue.getter();
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  outlined init with copy of ConflictScrollView(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMd, &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMR);
  type metadata accessor for URL();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOy8GameSave08ConflictH0V_AA05PlainhF0VQo__AA7DividerVSgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOy8GameSave08ConflictH0V_AA05PlainhF0VQo__AA7DividerVSgtGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [GameSaveSyncedDirectory.Version] and conformance [A], &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMd, &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOy8GameSave08ConflictH0V_AA05PlainhF0VQo__AA7DividerVSgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOy8GameSave08ConflictH0V_AA05PlainhF0VQo__AA7DividerVSgtGMR, MEMORY[0x277CE14C0]);
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory.Version and conformance GameSaveSyncedDirectory.Version, type metadata accessor for GameSaveSyncedDirectory.Version, &protocol conformance descriptor for GameSaveSyncedDirectory.Version);
  ForEach<>.init(_:content:)();
}

unint64_t closure #1 in closure #1 in ConflictScrollView.body.getter@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, char *a3@<X8>)
{
  v134 = a2;
  v117 = a3;
  v116 = type metadata accessor for Divider();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v107 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v135 = v5;
  v136 = v6;
  MEMORY[0x28223BE20](v5);
  v100 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  MEMORY[0x28223BE20](v108);
  v132 = &v100 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v114 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v113 = &v100 - v12;
  v13 = type metadata accessor for PlainButtonStyle();
  v128 = *(v13 - 8);
  v129 = v13;
  MEMORY[0x28223BE20](v13);
  v127 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Date.ISO8601FormatStyle();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v101 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v130 = &v100 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v131 = &v100 - v22;
  MEMORY[0x28223BE20](v21);
  v120 = &v100 - v23;
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v103 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v100 - v28;
  v124 = type metadata accessor for ConflictButton(0);
  MEMORY[0x28223BE20](v124);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy8GameSave08ConflictG0V_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy8GameSave08ConflictG0V_AA05PlaingE0VQo_MR);
  v111 = *(v112 - 8);
  v32 = MEMORY[0x28223BE20](v112);
  v110 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v133 = &v100 - v34;
  v35 = *a1;
  type metadata accessor for MainActor();
  v109 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = *(v35 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_computerSymbol + 8);
  v121 = *(v35 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_computerSymbol);
  v37 = *(v35 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer + 8);
  v118 = *(v35 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
  v38 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
  v39 = *(v25 + 16);
  v123 = v29;
  v102 = v39;
  v39(v29, v35 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v24);
  v40 = v120;
  outlined init with copy of URL?(v35 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, v120, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v125 = *(v136 + 48);
  v126 = v136 + 48;
  v41 = v125(v40, 1, v135);
  v122 = v36;

  v119 = v37;

  outlined destroy of URL?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v41 == 1)
  {
    v42 = v103;
    v102(v103, v35 + v38, v24);
    v43 = v104;
    default argument 0 of Date.ISO8601Format(_:)(v104);
    v44 = Date.ISO8601Format(_:)();
    v120 = v45;
    (*(v105 + 8))(v43, v106);
    v46 = v25;
    v47 = v42;
    v48 = v24;
    (*(v25 + 8))(v47, v24);
  }

  else
  {
    v46 = v25;
    v48 = v24;
    v120 = 0xE500000000000000;
    v44 = 0x6C61636F6CLL;
  }

  v49 = v35;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v50 = v138;
  v51 = v131;
  if (v138)
  {

    v52 = v49 == v50;
  }

  else
  {
    v52 = 0;
  }

  v53 = v48;
  v54 = swift_allocObject();
  v55 = v134;
  v56 = v134[1];
  *(v54 + 16) = *v134;
  *(v54 + 32) = v56;
  *(v54 + 48) = *(v55 + 32);
  *(v54 + 64) = *(v55 + 48);
  *(v54 + 72) = v49;
  v57 = v122;
  *v31 = v121;
  *(v31 + 1) = v57;
  v58 = v119;
  *(v31 + 2) = v118;
  *(v31 + 3) = v58;
  v59 = v124;
  (*(v46 + 32))(&v31[*(v124 + 24)], v123, v53);
  v60 = &v31[v59[7]];
  v61 = v120;
  *v60 = v44;
  v60[1] = v61;
  v31[v59[8]] = v52;
  v62 = &v31[v59[9]];
  *v62 = partial apply for closure #1 in closure #1 in closure #1 in ConflictScrollView.body.getter;
  v62[1] = v54;
  outlined init with copy of ConflictScrollView(v55, &v138);

  v63 = v127;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type ConflictButton and conformance ConflictButton, type metadata accessor for ConflictButton, &protocol conformance descriptor for ConflictButton);
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v64 = v129;
  View.buttonStyle<A>(_:)();
  (*(v128 + 8))(v63, v64);
  outlined destroy of ConflictButton(v31);
  v65 = v51;
  GameSaveSyncedDirectory.Version.url.getter();
  v66 = v135;
  v67 = *(v136 + 56);
  v67(v51, 0, 1, v135);
  v138 = *(v55 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay8GameSave0dE15SyncedDirectoryC7VersionCGGMd, &_s7SwiftUI5StateVySay8GameSave0dE15SyncedDirectoryC7VersionCGGMR);
  State.wrappedValue.getter();
  v68 = v137;
  if (v137 >> 62)
  {
    if (v137 < 0)
    {
      v99 = v137;
    }

    else
    {
      v99 = v137 & 0xFFFFFFFFFFFFFF8;
    }

    v69 = MEMORY[0x23EE6BAE0](v99);
  }

  else
  {
    v69 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v70 = v132;
  v71 = v130;
  v72 = v125;
  if (!v69)
  {

    v75 = 1;
LABEL_19:
    v67(v71, v75, 1, v66);
    v76 = *(v108 + 48);
    outlined init with copy of URL?(v65, v70, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of URL?(v71, v70 + v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v72(v70, 1, v66) == 1)
    {
      outlined destroy of URL?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of URL?(v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (v72(v70 + v76, 1, v66) == 1)
      {
        outlined destroy of URL?(v70, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v77 = 1;
        v78 = v116;
        v79 = v115;
LABEL_28:
        v82 = v113;
        goto LABEL_29;
      }
    }

    else
    {
      v80 = v101;
      outlined init with copy of URL?(v70, v101, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (v72(v70 + v76, 1, v66) != 1)
      {
        v84 = v136;
        v85 = v70 + v76;
        v86 = v100;
        (*(v136 + 32))(v100, v85, v66);
        lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v87 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88 = *(v84 + 8);
        v88(v86, v66);
        outlined destroy of URL?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined destroy of URL?(v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v88(v80, v66);
        outlined destroy of URL?(v70, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v79 = v115;
        if (v87)
        {
          v77 = 1;
          v78 = v116;
          goto LABEL_28;
        }

LABEL_25:
        v81 = v107;
        Divider.init()();
        v82 = v113;
        v83 = v81;
        v78 = v116;
        (*(v79 + 32))(v113, v83, v116);
        v77 = 0;
LABEL_29:
        (*(v79 + 56))(v82, v77, 1, v78);
        v89 = v111;
        v90 = *(v111 + 16);
        v91 = v110;
        v92 = v133;
        v93 = v112;
        v90(v110, v133, v112);
        v94 = v82;
        v95 = v114;
        outlined init with copy of URL?(v82, v114, &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
        v96 = v117;
        v90(v117, v91, v93);
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy8GameSave08ConflictG0V_AA05PlaingE0VQo__AA7DividerVSgtMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy8GameSave08ConflictG0V_AA05PlaingE0VQo__AA7DividerVSgtMR);
        outlined init with copy of URL?(v95, &v96[*(v97 + 48)], &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
        outlined destroy of URL?(v94, &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
        v98 = *(v89 + 8);
        v98(v92, v93);
        outlined destroy of URL?(v95, &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
        v98(v91, v93);
      }

      outlined destroy of URL?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of URL?(v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v136 + 8))(v80, v66);
    }

    outlined destroy of URL?(v70, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    v79 = v115;
    goto LABEL_25;
  }

  v73 = __OFSUB__(v69, 1);
  result = v69 - 1;
  if (v73)
  {
    __break(1u);
    goto LABEL_35;
  }

  if ((v68 & 0xC000000000000001) != 0)
  {
LABEL_35:
    MEMORY[0x23EE6BA40](result, v68);
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_17:

    GameSaveSyncedDirectory.Version.url.getter();

    v75 = 0;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t default argument 0 of Date.ISO8601Format(_:)@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v24 - v2;
  v28 = type metadata accessor for TimeZone();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  MEMORY[0x28223BE20](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9458], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9468], v8);
  (*(v5 + 104))(v21, *MEMORY[0x277CC9480], v27);
  TimeZone.init(secondsFromGMT:)();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in ConflictScrollView.body.getter(id *a1, uint64_t a2)
{
  [a1[6] setEnabled_];
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a2;
  outlined init with copy of URL?(&v7, v5, &_s7SwiftUI14ObservedObjectVy8GameSave0eF15SyncedDirectoryC13StateObserverCGMd, &_s7SwiftUI14ObservedObjectVy8GameSave0eF15SyncedDirectoryC13StateObserverCGMR);

  return static Published.subscript.setter();
}

uint64_t protocol witness for View.body.getter in conformance SpinnerView@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CircularProgressViewStyle();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  ProgressView<>.init<>()();
  static Color.gray.getter();
  CircularProgressViewStyle.init(tint:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR, MEMORY[0x277CDD7F8]);
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  View.progressViewStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMR) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR) + 28);
  v12 = *MEMORY[0x277CDF420];
  v13 = type metadata accessor for ControlSize();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  result = swift_getKeyPath();
  *v10 = result;
  return result;
}

uint64_t sub_238977D60()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t key path setter for EnvironmentValues.controlSize : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x23EE6B200](v4);
}

uint64_t type metadata accessor for ConflictButton(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConflictButton;
  if (!type metadata singleton initialization cache for ConflictButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238977EE4()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t outlined destroy of ConflictButton(uint64_t a1)
{
  v2 = type metadata accessor for ConflictButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238978044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238978104(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for ConflictButton(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7ForEachVySay8GameSave0fG15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0N0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAF08ConflictR0V_AA05PlainrP0VQo__AA7DividerVSgtGGGMd, &_s7SwiftUI6VStackVyAA7ForEachVySay8GameSave0fG15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0N0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAF08ConflictR0V_AA05PlainrP0VQo__AA7DividerVSgtGGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _BackgroundModifier<Color> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA5ColorVGMd, &_s7SwiftUI19_BackgroundModifierVyAA5ColorVGMR, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR);
    type metadata accessor for CircularProgressViewStyle();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR, MEMORY[0x277CDD7F8]);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0G0PAAE4boldyQrSbFQOyACyACyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGACyApAEAQyQrSbFQOyACyAlZG_Qo_A2_GGAlCyACyAsZGAKGAA6VStackVyAGyAA4TextV_ANyA13_A13_GtGGAItGGAA01_d5ShapeQ0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0G0PAAE4boldyQrSbFQOyACyACyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGACyApAEAQyQrSbFQOyACyAlZG_Qo_A2_GGAlCyACyAsZGAKGAA6VStackVyAGyAA4TextV_ANyA13_A13_GtGGAItGGAA01_d5ShapeQ0VyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalG0VyAGyAA0E0PAAE4boldyQrSbFQOyAGyAGyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAGyApAEAQyQrSbFQOyAGyAlZG_Qo_A2_GGAlGyAGyAsZGAKGAA6VStackVyAEyAA4TextV_ANyA13_A13_GtGGAItGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalG0VyAGyAA0E0PAAE4boldyQrSbFQOyAGyAGyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAGyApAEAQyQrSbFQOyAGyAlZG_Qo_A2_GGAlGyAGyAsZGAKGAA6VStackVyAEyAA4TextV_ANyA13_A13_GtGGAItGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalE0VyAEyAA0H0PAAE4boldyQrSbFQOyAEyAEyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGAEyArAEASyQrSbFQOyAEyANA0_G_Qo_A4_GGAnEyAEyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_e5ShapeR0VyAA9RectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalE0VyAEyAA0H0PAAE4boldyQrSbFQOyAEyAEyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGAEyArAEASyQrSbFQOyAEyANA0_G_Qo_A4_GGAnEyAEyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_e5ShapeR0VyAA9RectangleVGGGMR, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_2389788BC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of _ConditionalContent<Text, Text>.Storage(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);
}

uint64_t outlined consume of _ConditionalContent<Text, Text>.Storage(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined consume of Text.Storage(a1, a2, a3 & 1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGAA023AccessibilityAttachmentR0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGAA023AccessibilityAttachmentR0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in BundleUpdatesWaiter.updateStream.getter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_updateStreamContinuation;
  outlined destroy of URL?(a2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_updateStreamContinuation, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo14NSMetadataItemC_GMd, &_sScS12ContinuationVySo14NSMetadataItemC_GMR);
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(a2 + v4, 0, 1, v5);
}

Swift::Void __swiftcall BundleUpdatesWaiter.initMetadataQuery()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.common);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = &OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__continuation;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v53 = v11;
    *v10 = 136315138;
    v54 = *(v3 + 16);
    v55 = v11;
    v12 = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v54(v5, v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL, v2);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v1;
    v15 = v2;
    v16 = v3;
    v18 = v17;
    (*(v16 + 8))(v5, v15);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v18, &v55);
    v3 = v16;
    v2 = v15;
    v1 = v14;

    *(v10 + 4) = v19;
    v9 = &OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__continuation;
    _os_log_impl(&dword_238952000, v7, v8, "Initializing metadata query for %s", v10, 0xCu);
    v20 = v53;
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x23EE6C260](v20, -1, -1);
    MEMORY[0x23EE6C260](v10, -1, -1);
  }

  else
  {

    v54 = *(v3 + 16);
    v12 = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  v52 = v9[173];
  v54(v5, v1 + v52, v2);
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v53 = *(v3 + 8);
  (v53)(v5, v2);
  v24 = [v23 br_containerID];

  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = [objc_allocWithZone(MEMORY[0x277CCAB28]) init];
  v29 = *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery);
  *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery) = v28;
  v30 = v28;

  if (v30)
  {
    if (v27)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_2389886B0;
      v32 = MEMORY[0x277D837D0];
      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 32) = v25;
      *(v31 + 40) = v27;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v31 + 88) = v32;
      *(v31 + 64) = v33;
      *(v31 + 72) = v34;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v30 setSearchScopes_];

      v36 = type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSPredicate, 0x277CCAC30);
      v51[2] = "itemGatheredWithUploadingStatus";
      v51[3] = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_2389886C0;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51[1] = v12;
      v40 = v39;
      *(v37 + 56) = v32;
      v41 = lazy protocol witness table accessor for type String and conformance String();
      *(v37 + 32) = v38;
      *(v37 + 40) = v40;
      *(v37 + 96) = v32;
      *(v37 + 104) = v41;
      *(v37 + 64) = v41;
      *(v37 + 72) = 0xD000000000000019;
      *(v37 + 80) = 0x800000023898CAA0;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v37 + 136) = v32;
      *(v37 + 144) = v41;
      *(v37 + 112) = v42;
      *(v37 + 120) = v43;
      v54(v5, v1 + v52, v2);
      v44 = URL.lastPathComponent.getter();
      v46 = v45;
      (v53)(v5, v2);
      *(v37 + 176) = v32;
      *(v37 + 184) = v41;
      *(v37 + 152) = v44;
      *(v37 + 160) = v46;
      v47 = NSPredicate.init(format:_:)();
      [v30 setPredicate_];

      [v30 setOperationQueue_];
      v48 = objc_opt_self();
      v49 = [v48 defaultCenter];
      [v49 addObserver:v1 selector:sel_finishedGatheringWithNotification_ name:*MEMORY[0x277CCA4E8] object:v30];

      v50 = [v48 defaultCenter];
      [v50 addObserver:v1 selector:sel_receivedUpdatesWithNotification_ name:*MEMORY[0x277CCA4F0] object:v30];

      [v30 startQuery];
    }
  }

  else
  {
  }
}

uint64_t BundleUpdatesWaiter.init(bundleURL:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGathering) = 0;
  v3 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v6 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_updateStreamContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo14NSMetadataItemC_GMd, &_sScS12ContinuationVySo14NSMetadataItemC_GMR);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_itemGatheredWithUploadingStatus) = 0;
  v8 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v1 + v8, a1, v9);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v12 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_queue;
  *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_queue) = v11;
  v13 = v11;
  v14 = MEMORY[0x23EE6B6E0](0xD000000000000028, 0x800000023898CAC0);
  [v13 setName_];

  [*(v1 + v12) setMaxConcurrentOperationCount_];
  BundleUpdatesWaiter.initMetadataQuery()();
  (*(v10 + 8))(a1, v9);
  return v1;
}

void closure #1 in BundleUpdatesWaiter.invalidate()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo14NSMetadataItemC_GMd, &_sScS12ContinuationVySo14NSMetadataItemC_GMR);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v33 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery);
  if (v11)
  {
    v35 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery;
    v12 = one-time initialization token for common;
    v34 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.common);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32 = v2;
      v17 = v16;
      v30 = v16;
      v31 = swift_slowAlloc();
      v37 = v31;
      *v17 = 136315138;
      v18 = v8;
      (*(v8 + 16))(v10, a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL, v7);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v18 + 8))(v10, v7);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v37);

      v23 = v30;
      *(v30 + 4) = v22;
      v24 = v23;
      _os_log_impl(&dword_238952000, v14, v15, "Stopping metadata query for %s", v23, 0xCu);
      v25 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x23EE6C260](v25, -1, -1);
      v2 = v32;
      MEMORY[0x23EE6C260](v24, -1, -1);
    }

    outlined init with copy of URL?(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_updateStreamContinuation, v6, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
    if ((*(v36 + 48))(v6, 1, v2))
    {
      outlined destroy of URL?(v6, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
    }

    else
    {
      v26 = v36;
      v27 = v33;
      (*(v36 + 16))(v33, v6, v2);
      outlined destroy of URL?(v6, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
      AsyncStream.Continuation.finish()();
      (*(v26 + 8))(v27, v2);
    }

    v28 = v34;
    [v34 stopQuery];

    v29 = *(a1 + v35);
    *(a1 + v35) = 0;
  }
}

uint64_t BundleUpdatesWaiter.deinit()
{
  v1 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock;
  v2 = *(v0 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
  [v2 lock];
  closure #1 in BundleUpdatesWaiter.invalidate()(v0);
  [v2 unlock];

  v3 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_updateStreamContinuation, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
  return v0;
}

uint64_t BundleUpdatesWaiter.__deallocating_deinit()
{
  BundleUpdatesWaiter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for BundleUpdatesWaiter(uint64_t a1)
{
  result = type metadata singleton initialization cache for BundleUpdatesWaiter;
  if (!type metadata singleton initialization cache for BundleUpdatesWaiter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BundleUpdatesWaiter.isItemUploading(item:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2389886B0;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  v10 = *MEMORY[0x277CCA548];
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [a1 valuesForAttributes_];

  if (!v13)
  {
    return 0;
  }

  v72 = v7;
  v73 = v5;
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.common);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v71 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v70 = v10;
    v21 = v4;
    v22 = v20;
    v75[0] = v20;
    *v19 = 136315138;
    v23 = Dictionary.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v75);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_238952000, v16, v17, "Item values: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v26 = v22;
    v4 = v21;
    MEMORY[0x23EE6C260](v26, -1, -1);
    v27 = v19;
    v2 = v71;
    MEMORY[0x23EE6C260](v27, -1, -1);
  }

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v14 + 16))
  {

    goto LABEL_13;
  }

  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0 || (outlined init with copy of Any(*(v14 + 56) + 32 * v30, v75), type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_13:
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v14 + 16))
    {
      v52 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v51);
      v54 = v53;

      if (v54)
      {
        outlined init with copy of Any(*(v14 + 56) + 32 * v52, v75);

        type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
        if (swift_dynamicCast())
        {
          v55 = v74;

          v56 = v55;
          v57 = v2;
          v36 = v56;
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v70 = v58;
            v71 = swift_slowAlloc();
            v75[0] = v71;
            *v39 = 138412546;
            *(v39 + 4) = v36;
            *v58 = v36;
            *(v39 + 12) = 2080;
            v60 = v72;
            v59 = v73;
            (*(v73 + 16))(v72, v57 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL, v4);
            lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v61 = v4;
            v44 = v36;
            v62 = dispatch thunk of CustomStringConvertible.description.getter();
            v64 = v63;
            (*(v59 + 8))(v60, v61);
            v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v75);

            *(v39 + 14) = v65;
            v49 = "Upload in error: %@ for %s";
            goto LABEL_18;
          }

          goto LABEL_22;
        }

        return 0;
      }
    }

    else
    {
    }

    return 0;
  }

  v33 = v74;
  [v74 doubleValue];
  if (v34 <= 0.0)
  {

    goto LABEL_13;
  }

  v35 = v2;
  v36 = v33;

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v70 = v40;
    v71 = swift_slowAlloc();
    v75[0] = v71;
    *v39 = 138412546;
    *(v39 + 4) = v36;
    *v40 = v36;
    *(v39 + 12) = 2080;
    v42 = v72;
    v41 = v73;
    (*(v73 + 16))(v72, v35 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL, v4);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v43 = v4;
    v44 = v36;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    (*(v41 + 8))(v42, v43);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v75);

    *(v39 + 14) = v48;
    v49 = "Upload in progress: %@ for %s";
LABEL_18:
    _os_log_impl(&dword_238952000, v37, v38, v49, v39, 0x16u);
    v66 = v70;
    outlined destroy of URL?(v70, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE6C260](v66, -1, -1);
    v67 = v71;
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x23EE6C260](v67, -1, -1);
    MEMORY[0x23EE6C260](v39, -1, -1);

    return 1;
  }

LABEL_22:

  return 1;
}

uint64_t closure #1 in BundleUpdatesWaiter.finishedGathering(notification:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery);
  if (!v14)
  {
    return result;
  }

  v53 = v13;
  v58 = a1;
  v55 = result;
  v15 = v14;
  [v15 disableUpdates];
  v16 = [v15 results];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = specialized _arrayConditionalCast<A, B>(_:)(v17);

  v54 = v10;
  if (!v18)
  {
    goto LABEL_15;
  }

  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if (v18 >= 0)
  {
    v24 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v24 = v18;
  }

  result = MEMORY[0x23EE6BAE0](v24);
  if (!result)
  {
LABEL_14:

LABEL_15:
    [v15 enableUpdates];
LABEL_16:
    v56 = 0;
    v22 = v58;
    goto LABEL_17;
  }

LABEL_5:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x23EE6BA40](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v18 + 32);
  }

  v20 = v19;

  [v15 enableUpdates];
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  v22 = v58;
  v23 = BundleUpdatesWaiter.isItemUploading(item:)(v21);
  v56 = v21;

  *(v22 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_itemGatheredWithUploadingStatus) = v23 & 1;
LABEL_17:
  v57 = v15;
  v25 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGathering;
  *(v22 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGathering) = 1;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.common);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v49 = v29;
    v30 = swift_slowAlloc();
    v52 = v2;
    v50 = v30;
    v59 = v30;
    *v29 = 136315138;
    v31 = v54;
    v32 = *(v54 + 16);
    v33 = v22 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL;
    v60 = v28;
    v34 = v53;
    v35 = v55;
    v32(v53, v33, v55);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v36 = v25;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v8;
    v38 = v5;
    v39 = v3;
    v41 = v40;
    (*(v31 + 8))(v34, v35);
    v42 = v37;
    v25 = v36;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v59);
    v3 = v39;
    v5 = v38;
    v8 = v51;

    v44 = v49;
    *(v49 + 1) = v43;
    v22 = v58;
    v45 = v44;
    _os_log_impl(&dword_238952000, v27, v60, "Finished gathering %s", v44, 0xCu);
    v46 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    v2 = v52;
    MEMORY[0x23EE6C260](v46, -1, -1);
    MEMORY[0x23EE6C260](v45, -1, -1);
  }

  v47 = v57;
  v48 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation;
  outlined init with copy of URL?(v22 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation, v8, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  if ((*(v3 + 48))(v8, 1, v2))
  {

    outlined destroy of URL?(v8, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    outlined destroy of URL?(v8, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
    v61 = *(v22 + v25);
    CheckedContinuation.resume(returning:)();
    v22 = v58;

    (*(v3 + 8))(v5, v2);
  }

  outlined destroy of URL?(v22 + v48, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  return (*(v3 + 56))(v22 + v48, 1, 1, v2);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v5);
    type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSMetadataItem, 0x277CCAB20);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void closure #1 in BundleUpdatesWaiter.receivedUpdates(notification:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo14NSMetadataItemC_GMd, &_sScS12ContinuationVySo14NSMetadataItemC_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v53 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo14NSMetadataItemC__GSgMd, &_sScS12ContinuationV11YieldResultOySo14NSMetadataItemC__GSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery);
  if (!v16)
  {
    return;
  }

  v52 = v8;
  v50 = v11;
  v17 = one-time initialization token for common;
  v54 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.common);

  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v51 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v49 = v1;
    v24 = v23;
    v47 = swift_slowAlloc();
    v48 = v3;
    v55 = v47;
    *v24 = 136315138;
    (*(v13 + 16))(v15, v19 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL, v12);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v4;
    v28 = v27;
    (*(v13 + 8))(v15, v12);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, &v55);
    v4 = v26;

    *(v24 + 4) = v29;
    _os_log_impl(&dword_238952000, v20, v21, "Recieved Updates for %s", v24, 0xCu);
    v30 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    v3 = v48;
    MEMORY[0x23EE6C260](v30, -1, -1);
    MEMORY[0x23EE6C260](v24, -1, -1);
  }

  v31 = v54;
  [v54 disableUpdates];
  v32 = [v31 results];
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = specialized _arrayConditionalCast<A, B>(_:)(v33);

  if (!v34)
  {
    goto LABEL_22;
  }

  if (!(v34 >> 62))
  {
    v36 = v51;
    v35 = v52;
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (v34 >= 0)
  {
    v45 = v34 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v45 = v34;
  }

  v46 = MEMORY[0x23EE6BAE0](v45);
  v36 = v51;
  v35 = v52;
  if (!v46)
  {
LABEL_21:

LABEL_22:
    [v31 enableUpdates];
LABEL_23:

    return;
  }

LABEL_9:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x23EE6BA40](0, v34);
  }

  else
  {
    if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v37 = *(v34 + 32);
  }

  v38 = v37;

  [v31 enableUpdates];
  if (!v38)
  {
    goto LABEL_23;
  }

  outlined init with copy of URL?(v36 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_updateStreamContinuation, v35, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
  if ((*(v4 + 48))(v35, 1, v3))
  {

    outlined destroy of URL?(v35, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
    v39 = 1;
    v40 = v50;
  }

  else
  {
    v41 = v53;
    (*(v4 + 16))(v53, v35, v3);
    v42 = v38;
    outlined destroy of URL?(v35, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
    v55 = v42;
    v43 = v42;
    v40 = v50;
    AsyncStream.Continuation.yield(_:)();

    (*(v4 + 8))(v41, v3);
    v39 = 0;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo14NSMetadataItemC__GMd, &_sScS12ContinuationV11YieldResultOySo14NSMetadataItemC__GMR);
  (*(*(v44 - 8) + 56))(v40, v39, 1, v44);
  outlined destroy of URL?(v40, &_sScS12ContinuationV11YieldResultOySo14NSMetadataItemC__GSgMd, &_sScS12ContinuationV11YieldResultOySo14NSMetadataItemC__GSgMR);
}

uint64_t @objc BundleUpdatesWaiter.finishedGathering(notification:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);

  v11 = v10;
  [v11 lock];
  a4(a1);
  [v11 unlock];

  return (*(v7 + 8))(v9, v6);
}

void type metadata completion function for BundleUpdatesWaiter(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation<Bool, Never>?(319, &lazy cache variable for type metadata for CheckedContinuation<Bool, Never>?, &_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CheckedContinuation<Bool, Never>?(319, &lazy cache variable for type metadata for AsyncStream<NSMetadataItem>.Continuation?, &_sScS12ContinuationVySo14NSMetadataItemC_GMd, &_sScS12ContinuationVySo14NSMetadataItemC_GMR);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:), 0, 0);
}

uint64_t closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:);
  v3 = v0[2];
  v2 = v0[3];

  return specialized Clock.sleep(for:tolerance:)(v3, v2, 0, 0, 1);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:);
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
  [v2 lock];
  closure #1 in closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(v1);
  [v2 unlock];

  v3 = *(v0 + 8);

  return v3();
}

id closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = *(v2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
  [v3 lock];
  closure #1 in closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(v2);
  if (v1)
  {

    return [v3 unlock];
  }

  else
  {
    [v3 unlock];

    v5 = v0[1];

    return v5();
  }
}

uint64_t closure #1 in closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  v9 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation;
  outlined init with copy of URL?(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation, &v11 - v7, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    outlined destroy of URL?(v8, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    outlined destroy of URL?(v8, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
    v12 = *(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGathering);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v5, v2);
  }

  outlined destroy of URL?(a1 + v9, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  return (*(v3 + 56))(a1 + v9, 1, 1, v2);
}

void closure #2 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
  [v4 lock];
  if (*(a2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGathering) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v5 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation;
    outlined destroy of URL?(a2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
    v7 = *(v6 - 8);
    (*(v7 + 16))(a2 + v5, a1, v6);
    (*(v7 + 56))(a2 + v5, 0, 1, v6);
  }

  [v4 unlock];
}

uint64_t BundleUpdatesWaiter.waitForUploadToStart(duration:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](BundleUpdatesWaiter.waitForUploadToStart(duration:), 0, 0);
}

uint64_t BundleUpdatesWaiter.waitForUploadToStart(duration:)()
{
  v30 = v0;
  v1 = v0[4];
  if (*(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_itemGatheredWithUploadingStatus) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
    [v2 lock];
    closure #1 in BundleUpdatesWaiter.invalidate()(v1);
    [v2 unlock];

    v27 = v0[1];

    return v27(0);
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.common);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      v9 = v0[4];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136315138;
      (*(v7 + 16))(v6, v9 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL, v8);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      (*(v7 + 8))(v6, v8);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v29);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_238952000, v4, v5, "Wait for upload to start at %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23EE6C260](v11, -1, -1);
      MEMORY[0x23EE6C260](v10, -1, -1);
    }

    v16 = v0[4];
    v17 = v0[5];
    v19 = v0[2];
    v18 = v0[3];
    v20 = type metadata accessor for TaskPriority();
    v21 = *(*(v20 - 8) + 56);
    v21(v17, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = v18;
    v22[6] = v16;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:), v22);

    v21(v17, 1, 1, v20);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v16;

    v24 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:), v23);
    v0[9] = v24;
    v25 = swift_task_alloc();
    v0[10] = v25;
    *v25 = v0;
    v25[1] = BundleUpdatesWaiter.waitForUploadToStart(duration:);
    v26 = MEMORY[0x277D839B0];

    return MEMORY[0x282200460](v0 + 11, v24, v26);
  }
}

{

  return MEMORY[0x2822009F8](BundleUpdatesWaiter.waitForUploadToStart(duration:), 0, 0);
}

{

  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

void type metadata accessor for CheckedContinuation<Bool, Never>?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:), 0, 0);
}

uint64_t closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:)()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:);
  v3 = v0[2];
  v2 = v0[3];

  return specialized Clock.sleep(for:tolerance:)(v3, v2, 0, 0, 1);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:);
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
  [v2 lock];
  closure #1 in BundleUpdatesWaiter.invalidate()(v1);
  [v2 unlock];

  v3 = *(v0 + 8);

  return v3();
}

id closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:)()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = *(v2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
  [v3 lock];
  closure #1 in BundleUpdatesWaiter.invalidate()(v2);
  if (v1)
  {

    return [v3 unlock];
  }

  else
  {
    [v3 unlock];

    v5 = v0[1];

    return v5();
  }
}

uint64_t closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo14NSMetadataItemC__GMd, &_sScS12ContinuationV15BufferingPolicyOySo14NSMetadataItemC__GMR);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo14NSMetadataItemCGMd, &_sScSySo14NSMetadataItemCGMR);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo14NSMetadataItemC_GMd, &_sScS8IteratorVySo14NSMetadataItemC_GMR);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:), 0, 0);
}

uint64_t closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:)()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSMetadataItem, 0x277CCAB20);
  (*(v6 + 104))(v4, *MEMORY[0x277D85778], v5);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:);
  v8 = v0[11];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v8);
}

{

  return MEMORY[0x2822009F8](closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:), 0, 0);
}

{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (BundleUpdatesWaiter.isItemUploading(item:)(*(v0 + 16)))
  {
    v2 = *(v0 + 32);
    v3 = *(v2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
    [v3 lock];
    closure #1 in BundleUpdatesWaiter.invalidate()(v2);
    [v3 unlock];

    v6 = 1;
LABEL_8:
    v7 = *(v0 + 24);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    *v7 = v6;

    v8 = *(v0 + 8);

    return v8();
  }

  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:);
  v5 = *(v0 + 88);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v5);
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23897D52C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:)(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23897D634()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:)(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for common()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.common);
  __swift_project_value_buffer(v0, static Logger.common);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.common.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.common);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for stateTracking()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Logger.stateTracking = result;
  return result;
}

id static Logger.stateTracking.getter()
{
  if (one-time initialization token for stateTracking != -1)
  {
    swift_once();
  }

  v1 = static Logger.stateTracking;

  return v1;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

NSXPCInterface __swiftcall gameSaveXPCInterface()()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_238987820;
  v1 = type metadata accessor for GameSyncedDirectoryRequest();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0A22SyncedDirectoryRequestCmMd, &_s8GameSave0A22SyncedDirectoryRequestCmMR);
  *(v0 + 32) = v1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 initWithArray_];

  result.super.isa = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GameSaveError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GameSaveError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

_BYTE *protocol witness for RawRepresentable.init(rawValue:) in conformance GameSaveError@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4u)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance GameSaveError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GameSaveError and conformance GameSaveError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance GameSaveError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GameSaveError and conformance GameSaveError();
  v3 = lazy protocol witness table accessor for type GameSaveError and conformance GameSaveError();
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GetSyncedDirectoryMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EE6BC50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GetSyncedDirectoryMode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EE6BC50](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetSyncedDirectoryMode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized GetSyncedDirectoryMode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Void __swiftcall GameSyncedDirectoryResponse.encode(with:)(NSCoder with)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(OBJC_IVAR___GameSyncedDirectoryResponse_directoryURL);
  v5 = v4;
  v6 = MEMORY[0x23EE6B6E0](0x726F746365726964, 0xEC0000004C525579);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL);
  v8 = MEMORY[0x23EE6B6E0](0xD000000000000016, 0x800000023898CB70);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline);
  v10 = MEMORY[0x23EE6B6E0](0x656E696C6E4F7369, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeBool:v9 forKey:v10];

  if (*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName + 8))
  {
    v11 = MEMORY[0x23EE6B6E0](*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName));
    v12 = MEMORY[0x23EE6B6E0](0xD000000000000014, 0x800000023898CB90);
    [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  }

  if ((*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts + 8) & 1) == 0)
  {
    v13 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts);
    v14 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898CBB0);
    [(objc_class *)with.super.isa encodeInteger:v13 forKey:v14];
  }

  v15 = MEMORY[0x23EE6B6E0](*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension), *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension + 8));
  v16 = MEMORY[0x23EE6B6E0](0xD000000000000019, 0x800000023898CBD0);
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  if (*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_devices))
  {
    type metadata accessor for DeviceInfo();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v18 = MEMORY[0x23EE6B6E0](0x73656369766564, 0xE700000000000000);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v18];
  }
}

uint64_t GameSyncedDirectoryResponse.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(116);
  MEMORY[0x23EE6B750](0x5255656C646E7542, 0xEB00000000203A4CLL);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL();
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EE6B750](v2);

  MEMORY[0x23EE6B750](0xD000000000000019, 0x800000023898CCD0);
  v3 = [*(v0 + OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL) description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x23EE6B750](v4, v6);

  MEMORY[0x23EE6B750](0x696C6E4F7369202CLL, 0xEC000000203A656ELL);
  if (*(v1 + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x23EE6B750](v7, v8);

  MEMORY[0x23EE6B750](0xD000000000000018, 0x800000023898CCF0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v9 = String.init<A>(describing:)();
  MEMORY[0x23EE6B750](v9);

  MEMORY[0x23EE6B750](0xD000000000000015, 0x800000023898CD10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v10 = String.init<A>(describing:)();
  MEMORY[0x23EE6B750](v10);

  MEMORY[0x23EE6B750](0x656369766564202CLL, 0xEB00000000203A73);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8GameSave10DeviceInfoCGSgMd, &_sSay8GameSave10DeviceInfoCGSgMR);
  v11 = String.init<A>(describing:)();
  MEMORY[0x23EE6B750](v11);

  return 0;
}

uint64_t type metadata accessor for GameSyncedDirectoryResponse(uint64_t a1)
{
  result = type metadata singleton initialization cache for GameSyncedDirectoryResponse;
  if (!type metadata singleton initialization cache for GameSyncedDirectoryResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for GameSyncedDirectoryResponse(uint64_t a1)
{
  result = type metadata accessor for URL();
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

Swift::Void __swiftcall GameSyncedDirectoryRequest.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___GameSyncedDirectoryRequest_mode);
  v4 = MEMORY[0x23EE6B6E0](1701080941, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = v1 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier;
  v6 = *(v1 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier);
  v7 = *(v5 + 8);

  v8 = MEMORY[0x23EE6B6E0](v6, v7);

  v9 = MEMORY[0x23EE6B6E0](0xD000000000000013, 0x800000023898CC10);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
}

uint64_t GameSyncedDirectoryRequest.description.getter()
{
  _StringGuts.grow(_:)(33);

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EE6B750](v1);

  MEMORY[0x23EE6B750](0xD000000000000017, 0x800000023898CC80);
  v2 = *(v0 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier);
  v3 = *(v0 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier + 8);

  MEMORY[0x23EE6B750](v2, v3);

  return 0x203A65646F4DLL;
}

id GameSyncedDirectoryRequest.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GameSyncedDirectoryRequest();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall DeviceInfo.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x23EE6B6E0](*(v1 + OBJC_IVAR___DeviceInfo_name), *(v1 + OBJC_IVAR___DeviceInfo_name + 8));
  v4 = MEMORY[0x23EE6B6E0](1701667182, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = MEMORY[0x23EE6B6E0](*(v1 + OBJC_IVAR___DeviceInfo_symbol), *(v1 + OBJC_IVAR___DeviceInfo_symbol + 8));
  v6 = MEMORY[0x23EE6B6E0](0x6C6F626D7973, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id @objc GameSyncedDirectoryResponse.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x23EE6B6E0](v5, v7);

  return v8;
}

uint64_t DeviceInfo.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(27);

  MEMORY[0x23EE6B750](*(v1 + OBJC_IVAR___DeviceInfo_name), *(v1 + OBJC_IVAR___DeviceInfo_name + 8));
  MEMORY[0x23EE6B750](0xD000000000000011, 0x800000023898BDD0);
  MEMORY[0x23EE6B750](*(v1 + OBJC_IVAR___DeviceInfo_symbol), *(v1 + OBJC_IVAR___DeviceInfo_symbol + 8));
  return 0x203A656D614ELL;
}

id GameSyncedDirectoryResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetSyncedDirectoryMode and conformance GetSyncedDirectoryMode()
{
  result = lazy protocol witness table cache variable for type GetSyncedDirectoryMode and conformance GetSyncedDirectoryMode;
  if (!lazy protocol witness table cache variable for type GetSyncedDirectoryMode and conformance GetSyncedDirectoryMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetSyncedDirectoryMode and conformance GetSyncedDirectoryMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GameSaveError and conformance GameSaveError()
{
  result = lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError;
  if (!lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError;
  if (!lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError;
  if (!lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError;
  if (!lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8GameSave0cD15SyncedDirectoryCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8GameSave0cD15SyncedDirectoryCGMd, &_ss18_DictionaryStorageCySS8GameSave0cD15SyncedDirectoryCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, _sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized GetSyncedDirectoryMode.init(rawValue:)(unint64_t result)
{
  if (result == 255)
  {
    v1 = 255;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 3)
  {
    return v1;
  }

  return result;
}

id specialized GameSyncedDirectoryResponse.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 32))(&v2[OBJC_IVAR___GameSyncedDirectoryResponse_directoryURL], v8, v5);
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSSecurityScopedURLWrapper, 0x277CCAC90);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  *&v2[OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL] = result;
  v11 = MEMORY[0x23EE6B6E0](0x656E696C6E4F7369, 0xE800000000000000);
  v12 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___GameSyncedDirectoryResponse_isOnline] = v12;
  v13 = MEMORY[0x23EE6B6E0](0xD000000000000014, 0x800000023898CB90);
  v14 = [a1 containsValueForKey_];

  if (v14)
  {
    type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
    v15 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v15)
    {
      v33 = 0;
      v34 = 0;
      v16 = v15;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      v18 = v33;
      v17 = v34;
      if (!v34)
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v20 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName];
    *v20 = v18;
    v20[1] = v17;
  }

  else
  {
    v19 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName];
    *v19 = 0;
    v19[1] = 0;
  }

  v21 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898CBB0);
  v22 = [a1 containsValueForKey_];

  if (v22)
  {
    v23 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898CBB0);
    v24 = [a1 decodeIntegerForKey_];
  }

  else
  {
    v24 = 0;
  }

  v25 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts];
  *v25 = v24;
  v25[8] = v22 ^ 1;
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
    goto LABEL_21;
  }

  v26 = result;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension];
  *v30 = v27;
  v30[1] = v29;
  v31 = MEMORY[0x23EE6B6E0](0x73656369766564, 0xE700000000000000);
  LODWORD(v27) = [a1 containsValueForKey_];

  if (v27)
  {
    type metadata accessor for DeviceInfo();
    v32 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  }

  else
  {
    v32 = 0;
  }

  *&v2[OBJC_IVAR___GameSyncedDirectoryResponse_devices] = v32;
  v35.receiver = v2;
  v35.super_class = ObjectType;
  return objc_msgSendSuper2(&v35, sel_init);
}

id specialized GameSyncedDirectoryRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x23EE6B6E0](1701080941, 0xE400000000000000);
  v5 = [a1 decodeIntegerForKey_];

  if (v5 == 255)
  {
    v6 = 255;
  }

  else
  {
    v6 = 0;
  }

  if (v5 < 3)
  {
    v6 = v5;
  }

  *&v2[OBJC_IVAR___GameSyncedDirectoryRequest_mode] = v6;
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = &v2[OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier];
    *v12 = v9;
    v12[1] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for GameSyncedDirectoryRequest();
    return objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized DeviceInfo.init(coder:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v4 = result;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = &v0[OBJC_IVAR___DeviceInfo_name];
    *v8 = v5;
    v8[1] = v7;
    result = NSCoder.decodeObject<A>(of:forKey:)();
    if (result)
    {
      v9 = result;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = &v1[OBJC_IVAR___DeviceInfo_symbol];
      *v13 = v10;
      v13[1] = v12;
      v14.receiver = v1;
      v14.super_class = ObjectType;
      return objc_msgSendSuper2(&v14, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameSaveError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GameSaveError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id GameSyncedDirectoryHolder.init()()
{
  v1 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);
  v3(&v0[v1], 1, 1, v2);
  v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_allowReaders] = 0;
  v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_isAppInBackground] = 0;
  v3(&v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_securityScopedURL], 1, 1, v2);
  v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_shouldStopAccessingSecurityScopedResource] = 0;
  v4 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionCalled] = 0;
  v5 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  v7 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationWriterCallers] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *&v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemOperationQueue] = v8;
  [v8 setMaxConcurrentOperationCount_];
  v11.receiver = v0;
  v11.super_class = type metadata accessor for GameSyncedDirectoryHolder(0);
  v9 = objc_msgSendSuper2(&v11, sel_init);
  GameSyncedDirectoryHolder.startMonitoringApplicationActivity()();

  return v9;
}

id GameSyncedDirectoryHolder.__deallocating_deinit()
{
  GameSyncedDirectoryHolder.stopMonitoringApplicationActivity()();
  GameSyncedDirectoryHolder.stopHoldingItem()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameSyncedDirectoryHolder(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GameSyncedDirectoryHolder(uint64_t a1)
{
  result = type metadata singleton initialization cache for GameSyncedDirectoryHolder;
  if (!type metadata singleton initialization cache for GameSyncedDirectoryHolder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void GameSyncedDirectoryHolder.stopMonitoringApplicationActivity()()
{
  v1 = *MEMORY[0x277D76768];
  v2 = *MEMORY[0x277D76758];
  v3 = objc_opt_self();
  v7 = v1;
  v4 = v2;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v0 name:v7 object:0];
  v6 = v4;
  [v5 removeObserver:v0 name:v6 object:0];
}

void GameSyncedDirectoryHolder.startMonitoringApplicationActivity()()
{
  v1 = *MEMORY[0x277D76768];
  v2 = *MEMORY[0x277D76758];
  v3 = objc_opt_self();
  v7 = v1;
  v4 = v2;
  v5 = [v3 defaultCenter];
  [v5 addObserver:v0 selector:sel__willResignActiveNotificationWithNotif_ name:v7 object:0];
  v6 = v4;
  [v5 addObserver:v0 selector:sel__willEnterForegroundNotificationWithNotif_ name:v6 object:0];
}

uint64_t GameSyncedDirectoryHolder._willResignActiveNotification(notif:)()
{
  v1 = v0;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.common);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238952000, v3, v4, "Application willResignActiveNotification", v5, 2u);
    MEMORY[0x23EE6C260](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  [v6 lock];
  *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_isAppInBackground) = 1;
  [v6 unlock];
  [v6 lock];
  v7 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers);
  *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers) = MEMORY[0x277D84F90];
  [v6 unlock];
  specialized GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:)(0x726564616572, 0xE600000000000000, v7, 0);
}

id GameSyncedDirectoryHolder._willEnterForegroundNotification(notif:)()
{
  v1 = v0;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.common);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238952000, v3, v4, "Application willEnterForegroundNotification", v5, 2u);
    MEMORY[0x23EE6C260](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  [v6 lock];
  *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_isAppInBackground) = 0;

  return [v6 unlock];
}

uint64_t @objc GameSyncedDirectoryHolder._willResignActiveNotification(notif:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t closure #1 in GameSyncedDirectoryHolder.stopAccessingSecurityScopedResource()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_securityScopedURL;
  outlined init with copy of URL?(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_securityScopedURL, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of URL?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (*(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_shouldStopAccessingSecurityScopedResource) == 1)
    {
      URL.stopAccessingSecurityScopedResource()();
    }

    (*(v6 + 8))(v8, v5);
  }

  outlined destroy of URL?(a1 + v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return (*(v6 + 56))(a1 + v9, 1, 1, v5);
}

uint64_t closure #1 in GameSyncedDirectoryHolder.startHoldingItem(at:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for URLResourceValues();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v53 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL;
  v54 = a1;
  outlined init with copy of URL?(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, &v46 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  LODWORD(a1) = (*(v10 + 48))(v15, 1, v9);
  result = outlined destroy of URL?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (a1 == 1)
  {
    v49 = v10;
    v17 = *(v10 + 16);
    v18 = v50;
    v50 = v10 + 16;
    v48 = v17;
    v17(v12, v18, v9);
    URLResourceValues.init()();
    Date.init()();
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
    URLResourceValues.contentAccessDate.setter();
    v20 = v55;
    URL.setResourceValues(_:)();
    v21 = v20;
    v22 = v9;
    v23 = v12;
    if (v20)
    {

      v21 = 0;
    }

    (*(v51 + 8))(v8, v52);
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.common);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v55 = v21;
      v28 = v27;
      v29 = swift_slowAlloc();
      v56 = v29;
      *v28 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v56);

      *(v28 + 4) = v32;
      v23 = v12;
      _os_log_impl(&dword_238952000, v25, v26, "Starting to hold item at %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v33 = v29;
      v22 = v9;
      MEMORY[0x23EE6C260](v33, -1, -1);
      MEMORY[0x23EE6C260](v28, -1, -1);
    }

    v34 = v49;
    v36 = v53;
    v35 = v54;
    outlined destroy of URL?(v54 + v53, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v48(v35 + v36, v23, v22);
    (*(v34 + 56))(v35 + v36, 0, 1, v22);
    [objc_opt_self() addFilePresenter_];
    v37 = v23;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v22;
      v42 = v41;
      v56 = v41;
      *v40 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v56);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_238952000, v38, v39, "Started holding item at %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x23EE6C260](v42, -1, -1);
      MEMORY[0x23EE6C260](v40, -1, -1);

      return (*(v34 + 8))(v37, v47);
    }

    else
    {

      return (*(v34 + 8))(v37, v22);
    }
  }

  return result;
}

Swift::Void __swiftcall GameSyncedDirectoryHolder.stopHoldingItem()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v58 = *(v2 - 8);
  v3 = v58;
  v4 = MEMORY[0x28223BE20](v2);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = &v50 - v7;
  MEMORY[0x28223BE20](v6);
  v57 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = *(v3 + 56);
  v15(&v50 - v13, 1, 1, v2);
  v16 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  [v16 lock];
  outlined destroy of URL?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v17 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL;
  outlined init with take of URL?(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, v14);
  v15((v1 + v17), 1, 1, v2);
  [v16 unlock];
  [v16 lock];
  v18 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers);
  v19 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers) = MEMORY[0x277D84F90];
  [v16 unlock];
  specialized GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:)(0x726564616572, 0xE600000000000000, v18, 0);

  [v16 lock];
  v20 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationWriterCallers);
  *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationWriterCallers) = v19;
  v21 = v58;
  [v16 unlock];
  specialized GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:)(0x726574697277, 0xE600000000000000, v20, 0);

  outlined init with copy of URL?(v14, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v21 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of URL?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v22 = v12;
  }

  else
  {
    v23 = v57;
    (*(v21 + 32))(v57, v12, v2);
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v54 = v14;
    v24 = type metadata accessor for Logger();
    v25 = __swift_project_value_buffer(v24, static Logger.common);
    v26 = v55;
    v52 = *(v21 + 16);
    v52(v55, v23, v2);
    v53 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v26;
      v51 = swift_slowAlloc();
      v59 = v51;
      *v29 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v21;
      v34 = v33;
      v35 = *(v32 + 8);
      v35(v30, v2);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v34, &v59);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_238952000, v27, v28, "Stopping holding item at %s.", v29, 0xCu);
      v37 = v51;
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x23EE6C260](v37, -1, -1);
      v38 = v29;
      v23 = v57;
      MEMORY[0x23EE6C260](v38, -1, -1);
    }

    else
    {

      v35 = *(v21 + 8);
      v35(v26, v2);
    }

    v39 = v56;
    [objc_opt_self() removeFilePresenter_];
    v52(v39, v23, v2);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v23;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = v44;
      *v43 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v39;
      v48 = v47;
      v35(v46, v2);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v48, &v59);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_238952000, v40, v41, "Stopped holding item at %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x23EE6C260](v44, -1, -1);
      MEMORY[0x23EE6C260](v43, -1, -1);

      v35(v42, v2);
    }

    else
    {

      v35(v39, v2);
      v35(v23, v2);
    }

    v22 = v54;
  }

  outlined destroy of URL?(v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t GameSyncedDirectoryHolder.allowReaders(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](GameSyncedDirectoryHolder.allowReaders(for:), 0, 0);
}

uint64_t GameSyncedDirectoryHolder.allowReaders(for:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  outlined init with copy of URL?(v0[4] + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of URL?(v0[6], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    v6 = v0[10];
    v7 = v0[11];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    v12 = v0[4];
    v11 = v0[5];
    v24 = v0[3];
    v23 = v0[2];
    v13 = *(v9 + 32);
    v13(v7, v0[6], v10);
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    (*(v9 + 16))(v6, v7, v10);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    v13(v17 + v15, v6, v10);
    v18 = (v17 + v16);
    *v18 = v23;
    v18[1] = v24;
    *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v12;
    v19 = v12;
    v20 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in GameSyncedDirectoryHolder.allowReaders(for:), v17);
    v0[12] = v20;
    v21 = swift_task_alloc();
    v0[13] = v21;
    *v21 = v0;
    v21[1] = GameSyncedDirectoryHolder.allowReaders(for:);
    v22 = MEMORY[0x277D839B0];

    return MEMORY[0x282200460](v0 + 14, v20, v22);
  }
}

{

  return MEMORY[0x2822009F8](GameSyncedDirectoryHolder.allowReaders(for:), 0, 0);
}

{
  (*(*(v0 + 64) + 8))(*(v0 + 88), *(v0 + 56));
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[7] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in GameSyncedDirectoryHolder.allowReaders(for:), 0, 0);
}

uint64_t closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)()
{
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  (*(v0[9] + 16))(v1, v0[3], v0[8]);
  type metadata accessor for BundleUpdatesWaiter(0);
  swift_allocObject();
  v5 = BundleUpdatesWaiter.init(bundleURL:)(v1);
  v0[11] = v5;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:), v7);

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = closure #1 in GameSyncedDirectoryHolder.allowReaders(for:);
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 15, 0, 0, 0xD000000000000020, 0x800000023898CF60, partial apply for closure #2 in BundleUpdatesWaiter.waitForGatherComplete(duration:), v5, v9);
}

{

  return MEMORY[0x2822009F8](closure #1 in GameSyncedDirectoryHolder.allowReaders(for:), 0, 0);
}

{
  if (*(v0 + 120) == 1)
  {
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = *(v0 + 32);
    v4 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
    *(v0 + 104) = v4;
    [v4 lock];
    closure #1 in closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)(v3, v2, v1);
    v11 = *(v0 + 48);
    [v4 unlock];
    [v4 lock];
    v12 = *(v11 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers);
    *(v11 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers) = MEMORY[0x277D84F90];
    [v4 unlock];
    specialized GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:)(0x726564616572, 0xE600000000000000, v12, 1);

    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = closure #1 in GameSyncedDirectoryHolder.allowReaders(for:);
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);

    return BundleUpdatesWaiter.waitForUploadToStart(duration:)(v15, v14);
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.common);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_238952000, v6, v7, "Failed to wait for gather complete", v8, 2u);
      MEMORY[0x23EE6C260](v8, -1, -1);
    }

    **(v0 + 16) = 0;

    v9 = *(v0 + 8);

    return v9();
  }
}

{
  v1 = *(v0 + 48);
  [*(v0 + 104) lock];
  *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_allowReaders) = 0;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.common);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 121);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_238952000, v3, v4, "Allowed readers. startedUploading: %{BOOL}d", v6, 8u);
    MEMORY[0x23EE6C260](v6, -1, -1);
  }

  v7 = *(v0 + 121);
  v8 = *(v0 + 104);

  [v8 unlock];

  **(v0 + 16) = v7;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)(char a1)
{
  *(*v1 + 121) = a1;

  return MEMORY[0x2822009F8](closure #1 in GameSyncedDirectoryHolder.allowReaders(for:), 0, 0);
}

void closure #1 in closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.common);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = Duration.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_238952000, v5, v6, "Allowing readers for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EE6C260](v8, -1, -1);
    MEMORY[0x23EE6C260](v7, -1, -1);
  }

  *(a3 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_allowReaders) = 1;
}

uint64_t _sIeg_SgIeghg_xRi_zRi0_zlyytIsegr_SgytIeghnr_TR(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v3, v4);
  a2(v6, v5);

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GameSaveSyncedDirectory.State) -> ())?(v6, v5);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned (@escaping @callee_unowned @convention(block) () -> ())?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed () -> ();
    v5[3] = &block_descriptor_0;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  (*(a3 + 16))(a3, v4);
  _Block_release(v4);
}

uint64_t closure #1 in GameSyncedDirectoryHolder.relinquishPresentedItem(toReader:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v36 = a3;
  v37 = a4;
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for URLResourceValues();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    result = outlined destroy of URL?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    *v37 = 1;
  }

  else
  {
    v19 = v37;
    (*(v15 + 32))(v17, v13, v14);
    if (*(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_isAppInBackground) & 1) != 0 || (v20 = a1, (*(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_allowReaders)))
    {
      result = (*(v15 + 8))(v17, v14);
      *v19 = 1;
    }

    else
    {
      URLResourceValues.init()();
      Date.init()();
      v21 = type metadata accessor for Date();
      (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
      URLResourceValues.contentModificationDate.setter();
      URLResourceValues.contentModificationDate.getter();
      URLResourceValues.contentAccessDate.setter();
      v22 = v38;
      URL.setResourceValues(_:)();
      if (v22)
      {
      }

      v38 = 0;
      (*(v33 + 8))(v10, v34);
      v23 = swift_allocObject();
      *(v23 + 16) = v35;
      *(v23 + 24) = v36;
      v24 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers;
      v25 = *(v20 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + v24) = v25;
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v20;
      }

      else
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
        v27 = v20;
        *(v20 + v24) = v25;
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        *(v27 + v24) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v25);
      }

      result = (*(v15 + 8))(v17, v14);
      v30 = *(v27 + v24);
      *(v30 + 16) = v29 + 1;
      v31 = v30 + 16 * v29;
      *(v31 + 32) = _sIeg_SgIeghg_xRi_zRi0_zlyytIsegr_SgytIeghnr_TRTA;
      *(v31 + 40) = v23;
      *(v27 + v24) = v30;
    }
  }

  return result;
}

void @objc GameSyncedDirectoryHolder.relinquishPresentedItem(toWriter:)(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t GameSyncedDirectoryHolder.savePresentedItemChanges()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for URLResourceValues();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](GameSyncedDirectoryHolder.savePresentedItemChanges(), 0, 0);
}

{
  v1 = v0;
  v3 = v0[11];
  v2 = v0 + 11;
  v4 = *(v2 - 1);
  v5 = *(v2 - 4);
  v6 = *(v2 - 3);
  v7 = *(v2 - 9);
  (*(v6 + 56))(v3, 1, 1, v5);
  v8 = *(v7 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  [v8 lock];
  outlined destroy of URL?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of URL?(v7 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  [v8 unlock];
  outlined init with copy of URL?(v3, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of URL?(*v2--, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v1[8] + 32))(v1[9], v1[10], v1[7]);
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.common);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_238952000, v10, v11, "savePresentedItemChanges: touching bundle", v12, 2u);
      MEMORY[0x23EE6C260](v12, -1, -1);
    }

    v13 = v1[3];

    URLResourceValues.init()();
    Date.init()();
    v14 = type metadata accessor for Date();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
    URLResourceValues.contentModificationDate.setter();
    URLResourceValues.contentModificationDate.getter();
    URLResourceValues.contentAccessDate.setter();
    URL.setResourceValues(_:)();
    v16 = v1[8];
    v15 = v1[9];
    v17 = v1[7];
    (*(v1[5] + 8))(v1[6], v1[4]);
    (*(v16 + 8))(v15, v17);
  }

  outlined destroy of URL?(*v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v18 = v1[1];

  return v18();
}

uint64_t @objc closure #1 in GameSyncedDirectoryHolder.savePresentedItemChanges()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in GameSyncedDirectoryHolder.savePresentedItemChanges();

  return GameSyncedDirectoryHolder.savePresentedItemChanges()();
}

uint64_t @objc closure #1 in GameSyncedDirectoryHolder.savePresentedItemChanges()()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

Swift::Void __swiftcall GameSyncedDirectoryHolder.presentedItemDidGain(_:)(NSFileVersion a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.common);
  v12 = a1.super.isa;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_238952000, v13, v14, "Item gained version %@", v15, 0xCu);
    outlined destroy of URL?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE6C260](v16, -1, -1);
    MEMORY[0x23EE6C260](v15, -1, -1);
  }

  v18 = *(v2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  [v18 lock];
  v19 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionContinuation;
  outlined init with copy of URL?(v2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionContinuation, v6, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of URL?(v6, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
    *(v2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionCalled) = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    CheckedContinuation.resume(returning:)();
    (*(v8 + 8))(v10, v7);
  }

  outlined destroy of URL?(v2 + v19, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  (*(v8 + 56))(v2 + v19, 1, 1, v7);
  [v18 unlock];
}

void type metadata completion function for GameSyncedDirectoryHolder(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation<(), Never>?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t GameSyncedDirectoryHolder.waitForGainedVersion()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](GameSyncedDirectoryHolder.waitForGainedVersion(), 0, 0);
}

{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.common);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238952000, v2, v3, "Waiting for gained version", v4, 2u);
    MEMORY[0x23EE6C260](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = swift_task_alloc();
  v0[3] = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = GameSaveSyncedDirectory._waitForDirectorySync(ui:);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000016, 0x800000023898CF40, partial apply for closure #1 in GameSyncedDirectoryHolder.waitForGainedVersion(), v6, v8);
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

void type metadata accessor for CheckedContinuation<(), Never>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(), Never>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CheckedContinuation<(), Never>?);
    }
  }
}

id closure #1 in GameSyncedDirectoryHolder.waitForGainedVersion()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  [v4 lock];
  if (*(a2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionCalled) == 1)
  {
    *(a2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionCalled) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v5 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionContinuation;
    outlined destroy of URL?(a2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionContinuation, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    v7 = *(v6 - 8);
    (*(v7 + 16))(a2 + v5, a1, v6);
    (*(v7 + 56))(a2 + v5, 0, 1, v6);
  }

  return [v4 unlock];
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = GameSaveSyncedDirectory.finishSyncing();

  return v6();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return v7();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  outlined init with copy of URL?(a3, v23 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of URL?(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);

    return v21;
  }

LABEL_8:
  outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyyycSgYbcGMd, &_ss23_ContiguousArrayStorageCyyyycSgYbcGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void specialized GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  group = dispatch_group_create();
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.common);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v23 = a1;
  v24 = a4;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v26);
    *(v11 + 12) = 2048;
    *(v11 + 14) = *(a3 + 16);

    _os_log_impl(&dword_238952000, v9, v10, "Draining %s coordination blocks %ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EE6C260](v12, -1, -1);
    MEMORY[0x23EE6C260](v11, -1, -1);

    v13 = *(a3 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v13 = *(a3 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v14 = a3 + 40;
  do
  {
    v15 = *(v14 - 8);

    dispatch_group_enter(group);
    v16 = swift_allocObject();
    *(v16 + 16) = group;
    v17 = swift_allocObject();
    *(v17 + 16) = partial apply for closure #1 in GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:);
    *(v17 + 24) = v16;
    v26[0] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v26[1] = v17;
    v18 = group;

    v15(v26);

    v14 += 16;
    --v13;
  }

  while (v13);
LABEL_9:
  if (v24)
  {
    OS_dispatch_group.wait()();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, a2, v26);
      _os_log_impl(&dword_238952000, v19, v20, "Finished draining %s coordination blocks", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23EE6C260](v22, -1, -1);
      MEMORY[0x23EE6C260](v21, -1, -1);
    }
  }
}

uint64_t sub_238984A54()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238984A94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238984AF4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in GameSyncedDirectoryHolder.savePresentedItemChanges()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = GameSaveSyncedDirectory.finishSyncing();

  return @objc closure #1 in GameSyncedDirectoryHolder.savePresentedItemChanges()(v2, v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = GameSaveSyncedDirectory.finishSyncing();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t specialized GameSyncedDirectoryHolder.relinquishPresentedItem(toWriter:)(uint64_t a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = *(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  _Block_copy(a2);
  [v8 lock];
  outlined init with copy of URL?(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = type metadata accessor for URL();
  v10 = (*(*(v9 - 8) + 48))(v6, 1, v9);
  outlined destroy of URL?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v10 == 1)
  {
    [v8 unlock];
    a2[2](a2, 0);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned (@escaping @callee_unowned @convention(block) () -> ())?) -> ()partial apply;
    *(v11 + 24) = v7;
    v12 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationWriterCallers;
    v13 = *(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationWriterCallers);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      *(a1 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = _sIeg_SgIeghg_xRi_zRi0_zlyytIsegr_SgytIeghnr_TRTA_86;
    v17[5] = v11;
    *(a1 + v12) = v13;
    [v8 unlock];
  }
}

uint64_t specialized GameSyncedDirectoryHolder.relinquishPresentedItem(toReader:)(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7 = 0;
  v5 = *(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  _Block_copy(a2);
  [v5 lock];
  closure #1 in GameSyncedDirectoryHolder.relinquishPresentedItem(toReader:)(a1, partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned (@escaping @callee_unowned @convention(block) () -> ())?) -> (), v4, &v7);
  [v5 unlock];
  if (v7)
  {
    a2[2](a2, 0);
  }
}

uint64_t sub_2389850A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238985210()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_238985434()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(a1, v4, v5, v6, v7, v8);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x28211D098](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}