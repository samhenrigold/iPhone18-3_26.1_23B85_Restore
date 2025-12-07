id DOCItemCollectionViewController.traitCollection.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DOCItemCollectionViewController(0);
  v12.receiver = v0;
  v12.super_class = v2;
  v3 = objc_msgSendSuper2(&v12, sel_traitCollection);
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();

  if (v11[0] == (*((*MEMORY[0x277D85000] & *v1) + 0xBD8))())
  {
    v9.receiver = v1;
    v9.super_class = v2;
    v4 = objc_msgSendSuper2(&v9, sel_traitCollection);

    return v4;
  }

  else
  {
    v10.receiver = v1;
    v10.super_class = v2;
    v6 = objc_msgSendSuper2(&v10, sel_traitCollection);
    MEMORY[0x28223BE20](v6, v7);
    v8 = UITraitCollection.modifyingTraits(_:)();

    return v8;
  }
}

uint64_t closure #1 in DOCItemCollectionViewController.traitCollection.getter(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = UIMutableTraits.doc_browserLayoutConfiguration.getter(v4, v5);
  LOBYTE(v5) = v7;
  v9 = v8;
  v10 = (*((*MEMORY[0x277D85000] & *a2) + 0xBD8))(v6);
  v11 = a1[3];
  v12 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  return UIMutableTraits.doc_browserLayoutConfiguration.setter(v10, v5, v9, v11, v12);
}

uint64_t DOCItemCollectionViewController.displayMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_displayMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.displayMode.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_displayMode;
  v5 = swift_beginAccess();
  if (*(v1 + v4) != a1)
  {
    v6 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v1) + 0xBD8))(v5) == 2)
    {
      v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
      if (!v7)
      {
        __break(1u);
        return;
      }

      (*((*v6 & *v7) + 0x1E8))();
    }

    *(v2 + v4) = a1;
    v8 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController);
    v9 = *(v8 + 16);
    if (v9)
    {

      v10 = (v8 + 64);
      do
      {
        v11 = *v10;
        v12 = *(**v10 + 160);

        v14 = v12(v13);
        (*(*v11 + 144))(v14 & 1);

        v10 += 5;
        --v9;
      }

      while (v9);
    }

    DOCItemCollectionViewController.displayModeDidChange()();
  }
}

void (*DOCItemCollectionViewController.displayMode.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_displayMode;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCItemCollectionViewController.displayMode.modify;
}

void DOCItemCollectionViewController.displayMode.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    DOCItemCollectionViewController.displayMode.setter(*(*a1 + 24));
  }

  else
  {
    v4 = v2[4];
    if (v3 != *(v4 + v2[5]))
    {
      v5 = MEMORY[0x277D85000];
      if ((*((*MEMORY[0x277D85000] & *v4) + 0xBD8))() == 2)
      {
        v6 = *(v2[4] + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
        if (!v6)
        {
          __break(1u);
          return;
        }

        (*((*v5 & *v6) + 0x1E8))();
      }

      v7 = v2[4];
      *(v7 + v2[5]) = v3;
      v8 = *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController);
      v9 = *(v8 + 16);
      if (v9)
      {

        v10 = (v8 + 64);
        do
        {
          v11 = *v10;
          v12 = *(**v10 + 160);

          v14 = v12(v13);
          (*(*v11 + 144))(v14 & 1);

          v10 += 5;
          --v9;
        }

        while (v9);
      }

      DOCItemCollectionViewController.displayModeDidChange()();
    }
  }

  free(v2);
}

unint64_t DOCItemCollectionViewController.RestorableSettingsCacheKey.description.getter(void *a1, char a2)
{
  if (a2)
  {
    v8 = 0;
    _StringGuts.grow(_:)(19);
    MEMORY[0x24C1FAEA0](0xD000000000000011, 0x8000000249BDEA40);
    type metadata accessor for DOCDocumentSourceIdentifier(0);
    _print_unlocked<A, B>(_:_:)();
  }

  else
  {
    _StringGuts.grow(_:)(24);

    v8 = 0xD000000000000015;
    v3 = [a1 description];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    MEMORY[0x24C1FAEA0](v4, v6);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  }

  return v8;
}

void DOCItemCollectionViewController.RestorableSettingsCacheKey.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x24C1FCBD0](1);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x24C1FCBD0](0);
    NSObject.hash(into:)();
  }
}

Swift::Int DOCItemCollectionViewController.RestorableSettingsCacheKey.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x24C1FCBD0](1);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x24C1FCBD0](0);
    NSObject.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCItemCollectionViewController.RestorableSettingsCacheKey()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    MEMORY[0x24C1FCBD0](1);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x24C1FCBD0](0);
    NSObject.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DOCItemCollectionViewController.RestorableSettingsCacheKey(uint64_t a1)
{
  if (*(v1 + 8))
  {
    MEMORY[0x24C1FCBD0](1);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x24C1FCBD0](0);
    NSObject.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCItemCollectionViewController.RestorableSettingsCacheKey(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x24C1FCBD0](1);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x24C1FCBD0](0);
    NSObject.hash(into:)();
  }

  return Hasher._finalize()();
}

void *one-time initialization function for restorableSettingsCache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables31DOCItemCollectionViewControllerC26RestorableSettingsCacheKeyO_AC0jK033_45098A9DF3FF02797EF1E06F74668D65LLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static DOCItemCollectionViewController.restorableSettingsCache = result;
  return result;
}

uint64_t static DOCItemCollectionViewController.resetCachedRestorableSettings(for:)(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  if (one-time initialization token for restorableSettingsCache != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for RestorableSettings(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_beginAccess();
  v9 = a1;
  specialized Dictionary.subscript.setter(v7, a1, a2 & 1);
  return swift_endAccess();
}

double static DOCItemCollectionViewController.resetRestorableSettingsCache()()
{
  if (one-time initialization token for restorableSettingsCache != -1)
  {
    swift_once();
  }

  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables31DOCItemCollectionViewControllerC26RestorableSettingsCacheKeyO_AC0jK033_45098A9DF3FF02797EF1E06F74668D65LLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  swift_beginAccess();
  static DOCItemCollectionViewController.restorableSettingsCache = v0;

  return result;
}

id DOCItemCollectionViewController.restorableSettingsCacheKey.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xC70))();
  if (v2)
  {
    v3 = [v2 fpfs_fpItem];
    swift_unknownObjectRelease();
    if (v3)
    {
      return v3;
    }
  }

  (*((*v1 & *v0) + 0xA50))(v8);
  v5 = v9;
  v6 = v9;
  outlined destroy of DOCItemCollectionConfiguration(v8);
  if (!v5)
  {
    return 0;
  }

  v7 = [v6 sourceIdentifier];

  return v7;
}

uint64_t DOCItemCollectionViewController.blockToRunWhenMenuInteractionFinishedDismissing.getter(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t DOCItemCollectionViewController.blockToRunWhenMenuInteractionFinishedDismissing.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t DOCItemCollectionViewController.existingOverlayTitleBeforeRename.getter(void *a1, void (*a2)(uint64_t))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(v4[1]);
  return v5;
}

uint64_t DOCItemCollectionViewController.existingOverlayTitleBeforeRename.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

uint64_t DOCItemCollectionViewController.needsUpdateDiffableSnapshot.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsUpdateDiffableSnapshot;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.needsUpdateDiffableSnapshot.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsUpdateDiffableSnapshot;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.appLaunchOptimizationsActive.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_appLaunchOptimizationsActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.appLaunchOptimizationsActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_appLaunchOptimizationsActive;
  swift_beginAccess();
  if (*(v1 + v3) != 1 || (a1 & 1) != 0 || *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) != 1)
  {
    goto LABEL_7;
  }

  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v4)
  {
    if (([v4 isGathering] & 1) == 0)
    {
      (*((*MEMORY[0x277D85000] & *v1) + 0x1820))();
    }

LABEL_7:
    *(v1 + v3) = a1 & 1;
    return;
  }

  __break(1u);
}

void (*DOCItemCollectionViewController.appLaunchOptimizationsActive.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_appLaunchOptimizationsActive;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionViewController.appLaunchOptimizationsActive.modify;
}

void DOCItemCollectionViewController.appLaunchOptimizationsActive.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  v5 = v4 | *(v3 + *(v2 + 32)) ^ 1;
  if (a2)
  {
    if (((v4 | *(v3 + *(v2 + 32)) ^ 1) & 1) != 0 || *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) != 1)
    {
      goto LABEL_11;
    }

    v6 = v2;
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
    v2 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v2)
    {
LABEL_9:
      v7 = [v2 isGathering];
      v2 = v6;
      v3 = *(v6 + 24);
      if ((v7 & 1) == 0)
      {
        (*((*MEMORY[0x277D85000] & *v3) + 0x1820))();
        v2 = v6;
        v3 = *(v6 + 24);
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  if ((v5 & 1) == 0 && *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) == 1)
  {
    v6 = v2;
    v2 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v2)
    {
      __break(1u);
      return;
    }

    goto LABEL_9;
  }

LABEL_11:
  *(v3 + *(v2 + 32)) = v4;

  free(v2);
}

void *DOCItemCollectionViewController.nodeCollection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  v2 = v1;
  return v1;
}

uint64_t DOCItemCollectionViewController.observedNode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v1)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x1B0))();
  }

  __break(1u);
  return result;
}

uint64_t DOCItemCollectionViewController.cellForFocusedItem.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13, v14);
  v17 = &v36 - v16;
  v18 = MEMORY[0x277D85000];
  v19 = *((*MEMORY[0x277D85000] & *v0) + 0x1018);
  v20 = v19(v15);
  if (v20)
  {
    v21 = *((*v18 & *v20) + 0xF0);
    v22 = v20;
    v23 = v21();
    (*(*v23 + 104))(v23);

    v18 = MEMORY[0x277D85000];

    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v24 = (*(v10 + 32))(v17, v8, v9);
      v25 = (v19)(v24);
      if (!v25)
      {
        (*(v10 + 8))(v17, v9);
        return 0;
      }

      v26 = v25;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v28 = [v26 cellForItemAtIndexPath_];

      (*(v10 + 8))(v17, v9);
      goto LABEL_11;
    }
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  v29 = outlined destroy of CharacterSet?(v8, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  result = (*((*v18 & *v0) + 0x1268))(v29);
  if (!result)
  {
    return result;
  }

  (*((*v18 & *v0) + 0xD98))();
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v4, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    return 0;
  }

  v31 = v37;
  v32 = (*(v10 + 32))(v37, v4, v9);
  v33 = (v19)(v32);
  if (!v33)
  {
    (*(v10 + 8))(v31, v9);
    swift_unknownObjectRelease();
    return 0;
  }

  v34 = v33;
  v35 = IndexPath._bridgeToObjectiveC()().super.isa;
  v28 = [v34 cellForItemAtIndexPath_];

  swift_unknownObjectRelease();
  (*(v10 + 8))(v31, v9);
LABEL_11:
  if (v28)
  {
    type metadata accessor for DOCItemCollectionCell();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t key path setter for DOCItemCollectionViewController.currentFocusEngineIndexPath : DOCItemCollectionViewController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xC88))(v7);
}

uint64_t DOCItemCollectionViewController.lastDropIndexPath.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of DOCGridLayout.Spec?(v2 + v4, a2, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
}

uint64_t DOCItemCollectionViewController.preferredFocusEnvironments.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1018))();
  if (v2)
  {
    v3 = v2;
    if ((*((*v1 & *v0) + 0xBD8))() == 2 && (v4 = (*((*v1 & *v0) + 0xB08))(), swift_beginAccess(), v5 = *(v4 + 120), , v5 == 1))
    {
      v11.receiver = v0;
      v11.super_class = type metadata accessor for DOCItemCollectionViewController(0);
      v6 = objc_msgSendSuper2(&v11, sel_preferredFocusEnvironments);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd, &_sSo18UIFocusEnvironment_pMR);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      result = swift_allocObject();
      *(result + 16) = xmmword_249BA0290;
      *(result + 32) = v3;
    }
  }

  else
  {
    v12.receiver = v0;
    v12.super_class = type metadata accessor for DOCItemCollectionViewController(0);
    v9 = objc_msgSendSuper2(&v12, sel_preferredFocusEnvironments);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd, &_sSo18UIFocusEnvironment_pMR);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v10;
  }

  return result;
}

void *DOCItemCollectionViewController.preferredFocusCell.getter()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v1, v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v0) + 0xC78))(v4);
  if (v8)
  {
    v9 = v8;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.UI);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v52 = v15;
      *v14 = 136315394;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000249BDEA80, &v52);
      *(v14 + 12) = 2080;
      v16 = (*((*v7 & *v11) + 0x208))();
      if (v16)
      {
        v17 = *((*v7 & *v16) + 0x640);
        v18 = v16;
        v19 = v17();
        v21 = v20;
      }

      else
      {
        v19 = 7104878;
        v21 = 0xE300000000000000;
      }

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v52);

      *(v14 + 14) = v33;
      _os_log_impl(&dword_2493AC000, v12, v13, "%s 1 cellForFocusedItem title: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v15, -1, -1);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    return v9;
  }

  v22 = (*((*v7 & *v0) + 0x1018))();
  if (v22)
  {
    v23 = v22;
    MEMORY[0x24C1F8100](0, 0);
    v24 = IndexPath.section.getter();
    if (v24 < [v23 numberOfSections])
    {
      v25 = IndexPath.item.getter();
      if (v25 < [v23 numberOfItemsInSection_])
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v27 = [v23 cellForItemAtIndexPath_];

        if (v27)
        {
          type metadata accessor for DOCItemCollectionCell();
          v9 = swift_dynamicCastClass();
          if (!v9)
          {
          }
        }

        else
        {
          v9 = 0;
        }

        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static Logger.UI);
        v36 = v9;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v51 = v38;
          v39 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v52 = v50;
          *v39 = 136315394;
          *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000249BDEA80, &v52);
          *(v39 + 12) = 2080;
          if (v9 && (v40 = (*((*v7 & *v36) + 0x208))()) != 0)
          {
            v41 = *((*v7 & *v40) + 0x640);
            v42 = v40;
            v43 = v41();
            v45 = v44;

            v46 = v43;
          }

          else
          {
            v45 = 0xE300000000000000;
            v46 = 7104878;
          }

          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, &v52);

          *(v39 + 14) = v47;
          _os_log_impl(&dword_2493AC000, v37, v51, "%s 2 cell title: %s", v39, 0x16u);
          v48 = v50;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v48, -1, -1);
          MEMORY[0x24C1FE850](v39, -1, -1);
        }

        else
        {
        }

        (*(v2 + 8))(v6, v1);
        return v9;
      }
    }

    (*(v2 + 8))(v6, v1);
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.UI);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v52 = v32;
    *v31 = 136315138;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000249BDEA80, &v52);
    _os_log_impl(&dword_2493AC000, v29, v30, "%s 3 nil", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x24C1FE850](v32, -1, -1);
    MEMORY[0x24C1FE850](v31, -1, -1);
  }

  return 0;
}

uint64_t DOCItemCollectionViewController.items.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() == 2 && (result = (*((*v1 & *v0) + 0xF10))(), (result & 1) == 0))
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v3)
    {
      return (*((*v1 & *v3) + 0x290))();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }

  return result;
}

uint64_t DOCItemCollectionViewController.items.setter(unint64_t a1)
{
  v2 = v1;
  v114 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v105 = v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v111 = v101 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v12 = v101 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = v101 - v15;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v106._rawValue = v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v101 - v23;
  v112 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController;
  v25 = MEMORY[0x277D85000];
  v26 = (*MEMORY[0x277D85000] & *v1) + 4120;
  v27 = *((*MEMORY[0x277D85000] & *v1) + 0x1018);
  v110 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 8);

  v107 = v27;
  v108 = v26;
  v29 = v27(v28);
  if (v29)
  {
    v30 = *((*v25 & *v29) + 0xF0);
    v31 = v29;
    v32 = v30();
    (*(*v32 + 104))(v32);

    v25 = MEMORY[0x277D85000];

    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      (*(v18 + 32))(v24, v16, v17);
      v33 = (*((*v25 & *v1) + 0xD88))(v24, 0);
      (*(v18 + 8))(v24, v17);
      v113 = v33;
      v34 = swift_unknownObjectRetain();
      goto LABEL_6;
    }
  }

  else
  {
    (*(v18 + 56))(v16, 1, 1, v17);
  }

  v34 = outlined destroy of CharacterSet?(v16, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v113 = 0;
LABEL_6:
  v35 = v112;
  (*((*v25 & *v2) + 0xE30))(v34);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    outlined destroy of CharacterSet?(v12, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    v36 = 0;
  }

  else
  {
    rawValue = v106._rawValue;
    (*(v18 + 32))(v106._rawValue, v12, v17);
    v36 = (*((*v25 & *v2) + 0xD88))(rawValue, 0);
    (*(v18 + 8))(rawValue, v17);
    swift_unknownObjectRetain();
  }

  v38 = *(v35 + 2);
  v39 = v35[24];
  v40 = v35[25];
  v115 = *v35;
  v116 = v38;
  v117 = v39;
  v118 = v40;
  DOCItemCollectionFPController.toggledSections.getter();
  v42 = v41;
  v43 = (*((*v25 & *v2) + 0xF10))();
  v109 = v17;
  v104 = v18;
  v112 = v36;
  v106._rawValue = v42;
  if (v43)
  {
    v44 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
    if ([v44 isFilesApp])
    {
      v45 = 0;
    }

    else
    {
      v59 = [v44 recentDocumentsContentTypes];
      type metadata accessor for UTType();
      v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v60 = (*((*v25 & *v2) + 0xCE8))(v120);
    v61 = LOBYTE(v120[0]);
    result = (*((*v25 & *v2) + 0x11B8))(v60);
    v62 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v62)
    {
      goto LABEL_62;
    }

    v63 = result;
    v17 = (*((*v25 & *v62) + 0x1B8))();
    v119[0] = v63 & 1;
    v64 = specialized static DOCItemCollectionFPController.removeSentinel(from:)(v114);
    LODWORD(v102) = v61;
    LOBYTE(v115) = v61;
    type metadata accessor for DOCItemCollectionViewNodeGrouper();
    swift_allocObject();
    v65 = DOCItemCollectionViewNodeGrouper.init(nodes:groupingBehavior:preferredContentTypes:)(v64, &v115, v45);
    v51 = v65;
    v103 = v17;
    if ((v63 & 1) == 0)
    {
      v58 = 0;
      goto LABEL_37;
    }

    v66 = (*(*v65 + 128))(v65);
    if (v66[2])
    {
      v67 = v66[5];
      v69 = v66[7];
      v68 = v66[8];

      if (v17)
      {
        v101[1] = v69;
        v101[2] = v67;
        v70 = *(*v68 + 128);
        swift_unknownObjectRetain();
        v49 = &v115;
        v25 = v70(&v115);
        if (!(*v71 >> 62))
        {
LABEL_30:
          specialized Array.replaceSubrange<A>(_:with:)(0, 0, v17);
          swift_unknownObjectRelease();
          (v25)(&v115, 0);

          v58 = v119[0];
LABEL_37:
          v72 = (*(*v51 + 128))(v65);

          specialized static DOCItemCollectionFPController.createFlatNodes(with:)(v77);
          v74 = v78;

          *&v115 = MEMORY[0x277D84F98];
          specialized Sequence.forEach(_:)(v114, &v115);

          swift_unknownObjectRelease();
          v75 = v115;
          v76 = v102;
LABEL_38:
          *v35 = v72;
          *(v35 + 1) = v74;
          *(v35 + 2) = v75;
          v35[24] = v76;
          v35[25] = v58;

          v79 = *(v35 + 1);
          v80 = *(v35 + 2);
          v81 = v35[24];
          v82 = v35[25];
          *&v115 = *v35;
          *(&v115 + 1) = v79;
          v116 = v80;
          v117 = v81;
          v118 = v82;

          DOCItemCollectionFPController.restoreExpandedState(on:)(v106);

          v84 = v113;
          if (v113)
          {
            v85 = v107(v83);
            v86 = MEMORY[0x277D85000];
            v87 = v109;
            v88 = v111;
            if (!v85)
            {
              swift_unknownObjectRelease();
              v98 = v112;
              if (v112)
              {
                goto LABEL_45;
              }

              goto LABEL_47;
            }

            v89 = v85;
            v90 = (*((*MEMORY[0x277D85000] & *v2) + 0xD90))(v84);
            v91 = (*((*v86 & *v89) + 0xF0))(v90);
            v92 = v105;
            outlined init with copy of DOCGridLayout.Spec?(v88, v105, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
            (*(*v91 + 112))(v92);

            swift_unknownObjectRelease();
          }

          else
          {
            v93 = v107(v83);
            v86 = MEMORY[0x277D85000];
            v87 = v109;
            v88 = v111;
            if (!v93)
            {
              goto LABEL_44;
            }

            v94 = v93;
            v95 = (*(v104 + 56))(v111, 1, 1, v109);
            v96 = (*((*v86 & *v94) + 0xF0))(v95);
            v97 = v105;
            outlined init with copy of DOCGridLayout.Spec?(v88, v105, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
            (*(*v96 + 112))(v97);
          }

          outlined destroy of CharacterSet?(v88, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
LABEL_44:
          v98 = v112;
          if (v112)
          {
LABEL_45:
            (*((*v86 & *v2) + 0xD90))(v98);
            (*((*v86 & *v2) + 0xE38))(v88);
            swift_unknownObjectRelease();
LABEL_48:
            v99 = *(v35 + 1);

            DOCItemCollectionViewController.reportDidUpdateContentIfNecessary(from:to:)(v110, v99);

            (*((*v86 & *v2) + 0xA40))(v100);
            DOCItemCollectionViewController.updateSectionHeaders()();
            swift_unknownObjectRelease();
            return swift_unknownObjectRelease();
          }

LABEL_47:
          (*(v104 + 56))(v88, 1, 1, v87);
          (*((*v86 & *v2) + 0xE38))(v88);
          goto LABEL_48;
        }

        goto LABEL_57;
      }
    }

    v58 = 1;
    goto LABEL_37;
  }

  result = (*((*v25 & *v2) + 0x11B8))();
  v47 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v47)
  {
    v48 = result;
    v49 = (*((*v25 & *v47) + 0x1B8))();
    v121 = v48 & 1;
    v50 = specialized static DOCItemCollectionFPController.removeSentinel(from:)(v114);
    type metadata accessor for DOCItemCollectionViewNodeGrouper();
    v51 = swift_allocObject();
    v52 = MEMORY[0x277D84F90];
    v51[3] = MEMORY[0x277D84F90];
    v53 = v51 + 3;
    v51[4] = v52;
    v51[2] = v50;
    if (v50 >> 62)
    {
      if (v50 < 0)
      {
        v17 = v50;
      }

      else
      {
        v17 = v50 & 0xFFFFFFFFFFFFFF8;
      }

      if (__CocoaSet.count.getter() != 1 || !__CocoaSet.count.getter())
      {
        goto LABEL_19;
      }
    }

    else if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_19;
    }

    if ((v50 & 0xC000000000000001) != 0)
    {

      MEMORY[0x24C1FC540](0, v50);
    }

    else
    {
      if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_57:
        if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_59;
      }

      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    DOCNode.isCreateDocumentSentinel()();
    swift_unknownObjectRelease();
LABEL_19:
    DOCItemCollectionViewNodeGrouper.groupByNothing()();
    if ((v48 & 1) == 0)
    {
      v58 = 0;
      goto LABEL_34;
    }

    swift_beginAccess();
    v54 = *v53;
    if (!*(*v53 + 16) || !v49)
    {
      v58 = 1;
      goto LABEL_34;
    }

    v55 = *(v54 + 56);
    v56 = *(**(v54 + 64) + 128);
    v103 = *(v54 + 40);

    v102 = v55;

    swift_unknownObjectRetain();
    v25 = v56(&v115);
    if (!(*v57 >> 62))
    {
LABEL_23:
      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v49);
      swift_unknownObjectRelease();
      (v25)(&v115, 0);

      v58 = v121;
LABEL_34:
      swift_beginAccess();
      v72 = v51[3];
      swift_bridgeObjectRetain_n();
      specialized static DOCItemCollectionFPController.createFlatNodes(with:)(v72);
      v74 = v73;

      *&v115 = MEMORY[0x277D84F98];
      specialized Sequence.forEach(_:)(v114, &v115);

      swift_unknownObjectRelease();
      v75 = v115;
      v76 = 11;
      goto LABEL_38;
    }

LABEL_59:
    result = __CocoaSet.count.getter();
    if (result < 0)
    {
      __break(1u);
      goto LABEL_61;
    }

    goto LABEL_23;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

double DOCItemCollectionViewController.updateSectionHeaders()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0xF10))() & 1) == 0)
  {
    return result;
  }

  v4 = (*((*v2 & *v0) + 0x1018))();
  if (!v4)
  {
    return result;
  }

  v5 = DOCItemCollectionViewController.visibleSectionHeaders.getter();
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_27:

    return result;
  }

LABEL_26:
  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_5:
  v8 = 0;
  v29 = v6 & 0xFFFFFFFFFFFFFF8;
  v30 = v6 & 0xC000000000000001;
  v28 = v6;
  while (1)
  {
    if (v30)
    {
      v9 = MEMORY[0x24C1FC540](v8, v6);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_17:
        __break(1u);
LABEL_18:

        return result;
      }
    }

    else
    {
      if (v8 >= *(v29 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v9 = *(v6 + 8 * v8 + 32);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }
    }

    v35 = v9;
    v11 = (*((*v2 & *v9) + 0x410))(&v36);
    v12 = v37;
    if (!v37)
    {
      goto LABEL_18;
    }

    v13 = v39;
    v14 = *v2 & *v1;
    v33 = v36;
    v34 = v38;
    v41[0] = v36;
    v41[1] = v37;
    v41[2] = v38;
    v41[3] = v39;
    v31 = v10;
    v32 = v40;
    v41[4] = v40;
    v2 = *(v14 + 3424);
    v15 = v2(v11);
    v16 = specialized Collection<>.firstIndex(of:)(v41, v15);
    v18 = v17;

    if (v18)
    {
      break;
    }

    v20 = v2(v19);
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if (v16 >= *(v20 + 16))
    {
      goto LABEL_25;
    }

    v21 = (v20 + 40 * v16);
    v23 = v21[4];
    v22 = v21[5];
    v24 = v1;
    v26 = v21[6];
    v25 = v21[7];
    v27 = v21[8];

    v36 = v23;
    v37 = v22;
    v38 = v26;
    v1 = v24;
    v6 = v28;
    v2 = MEMORY[0x277D85000];
    v39 = v25;
    v40 = v27;
    DOCItemCollectionViewController.configure(sectionHeader:with:)(v35, &v36);
    outlined consume of DOCCollectionSection?(v33, v12, v34, v13, v32);

    ++v8;
    if (v31 == v7)
    {
      goto LABEL_27;
    }
  }

  outlined consume of DOCCollectionSection?(v33, v12, v34, v13, v32);

  return result;
}

void (*DOCItemCollectionViewController.items.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = MEMORY[0x277D85000];
  if (*((*MEMORY[0x277D85000] & *v1) + 0xBD8))() != 2 || (result = (*((*v3 & *v1) + 0xF10))(), (result))
  {

LABEL_6:
    *a1 = v5;
    return DOCItemCollectionViewController.items.modify;
  }

  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v6)
  {
    v5 = (*((*v3 & *v6) + 0x290))();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void DOCItemCollectionViewController.items.modify(unint64_t *a1, char a2)
{
  if (a2)
  {

    DOCItemCollectionViewController.items.setter(v2);
  }

  else
  {
    DOCItemCollectionViewController.items.setter(*a1);
  }
}

void DOCItemCollectionViewController.collectionGroupingBehavior.setter(_BYTE *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__groupingBehavior) = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x1198))(0);
  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v5)
  {
    v6 = (*((*v3 & *v5) + 0x258))(v4);
    v7 = (*((*v3 & *v2) + 0xCC0))(v6);
    v8 = (*((*v3 & *v2) + 0xBD8))(v7);
    v9 = (*((*v3 & *v2) + 0xD60))();
    if (v8 == 2)
    {
      v12 = 2;
      v10 = &v12;
      v11 = 1;
    }

    else
    {
      v13 = 0;
      v10 = &v13;
      v11 = 0;
    }

    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v4 = v3;
  v109 = a3;
  v111 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v97[-v8];
  v10 = type metadata accessor for ScrollPositionInfo(0);
  v108 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v97[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = type metadata accessor for IndexPath();
  v114 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v14);
  v16 = &v97[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 1);
  v20.n128_f64[0] = MEMORY[0x28223BE20](v17, v19);
  v22 = &v97[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = *a2;
  v23 = *MEMORY[0x277D85000] & *v4;
  v115 = *(v23 + 0x820);
  v116 = v23 + 2080;
  v115(v120, v20);
  v24 = v121;
  result = outlined destroy of CharacterSet?(v120, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMd, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMR);
  if (v24)
  {
    v106 = v10;
    v105 = v13;
    v26 = [v4 doc_hasAppearedOrIsAppearing];
    if (!v26 || (v27 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isApplyingSnapshot, (*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isApplyingSnapshot) & 1) != 0))
    {
      v28 = MEMORY[0x277D85000];
      v29 = (*((*MEMORY[0x277D85000] & *v4) + 0xC40))();
      return (*((*v28 & *v4) + 0xC48))(v29 & 1 | ((v26 & 1) == 0));
    }

    (*((*MEMORY[0x277D85000] & *v4) + 0xC48))(0);
    *(v4 + v27) = 1;
    v30 = [v4 doc_hasAppearedOrIsAppearing];
    v99 = v9;
    if (v30)
    {
      result = [v4 view];
      if (!result)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v31 = result;
      v26 = [result window];

      if (v26)
      {

        if ([v4 doc_isAppearing])
        {
          v32 = [v4 navigationController];
          if (v32)
          {
            v26 = v32;
            v33 = [v32 topViewController];
            if (v33)
            {
              v9 = v33;
              type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
              v34 = v4;
              v35 = static NSObject.== infix(_:_:)();

              v107 = 0;
              if ((v35 & 1) != 0 || v112 == 2)
              {
LABEL_17:
                v36 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
                if (v36)
                {
                  v37 = [v36 activeDocumentCreationSession];
                  if (v37)
                  {
                    v38 = v37;
                    v26 = (*((*MEMORY[0x277D85000] & *v37) + 0x110))();

                    v107 &= v26 ^ 1;
                  }
                }

                v113 = v18;
                if (one-time initialization token for UI != -1)
                {
LABEL_71:
                  swift_once();
                }

                v39 = type metadata accessor for Logger();
                v104 = __swift_project_value_buffer(v39, static Logger.UI);
                v40 = Logger.logObject.getter();
                v41 = static os_log_type_t.default.getter();
                v42 = os_log_type_enabled(v40, v41);
                v103 = v27;
                if (v42)
                {
                  v9 = swift_slowAlloc();
                  v120[0] = swift_slowAlloc();
                  v43 = v120[0];
                  *v9 = 136315650;
                  *(v9 + 1) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE1320, v120);
                  *(v9 + 6) = 2080;
                  LOWORD(v118[0]) = v112;
                  v44 = DOCItemCollectionViewController.DiffableReloadType.description.getter();
                  v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v120);

                  *(v9 + 14) = v26;
                  *(v9 + 11) = 1024;
                  v9[6] = v107 & 1;
                  _os_log_impl(&dword_2493AC000, v40, v41, "%s reloadType: %s actually animate: %{BOOL}d", v9, 0x1Cu);
                  swift_arrayDestroy();
                  MEMORY[0x24C1FE850](v43, -1, -1);
                  MEMORY[0x24C1FE850](v9, -1, -1);
                }

                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
                *v22 = static OS_dispatch_queue.main.getter();
                v46 = v113;
                (v113[13])(v22, *MEMORY[0x277D85200], v17);
                v47 = _dispatchPreconditionTest(_:)();
                v49 = v46[1];
                v48 = (v46 + 1);
                v49(v22, v17);
                if ((v47 & 1) == 0)
                {
                  __break(1u);
                  goto LABEL_73;
                }

                v50 = objc_opt_self();
                v51 = [v50 areAnimationsEnabled];
                v52 = MEMORY[0x277D85000];
                if ((v107 & 1) == 0)
                {
                  [v50 setAnimationsEnabled_];
                }

                v53 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController + 25);
                result = (*((*v52 & *v4) + 0x11B8))();
                if (v53 != (result & 1))
                {
                  v54 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
                  if (!v54)
                  {
LABEL_79:
                    __break(1u);
                    return result;
                  }

                  v55 = (*((*v52 & *v54) + 0x258))();
                  result = (*((*v52 & *v4) + 0xCC0))(v55);
                }

                v101 = v51;
                v102 = v50;
                v56 = *((*v52 & *v4) + 0xAE0);
                v57 = (v56)(result);
                v113 = v4;
                v58 = Logger.logObject.getter();
                v59 = static os_log_type_t.default.getter();
                v60 = os_log_type_enabled(v58, v59);
                if (v57)
                {
                  if (v60)
                  {
                    v61 = swift_slowAlloc();
                    v62 = swift_slowAlloc();
                    v120[0] = v62;
                    *v61 = 136315394;
                    *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE1320, v120);
                    *(v61 + 12) = 1024;
                    v63 = v113;
                    *(v61 + 14) = v56() & 1;

                    v64 = "[PROTECTED APPS] %s removing content from collection because shouldShowAppProtectionShieldUI: %{BOOL}d";
LABEL_34:
                    _os_log_impl(&dword_2493AC000, v58, v59, v64, v61, 0x12u);
                    __swift_destroy_boxed_opaque_existential_0(v62);
                    MEMORY[0x24C1FE850](v62, -1, -1);
                    MEMORY[0x24C1FE850](v61, -1, -1);

                    goto LABEL_36;
                  }
                }

                else if (v60)
                {
                  v61 = swift_slowAlloc();
                  v62 = swift_slowAlloc();
                  v120[0] = v62;
                  *v61 = 136315394;
                  *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BE1320, v120);
                  *(v61 + 12) = 1024;
                  v65 = v113;
                  *(v61 + 14) = v56() & 1;

                  v64 = "[PROTECTED APPS] %s allowing all items in collection because shouldShowAppProtectionShieldUI: %{BOOL}d";
                  goto LABEL_34;
                }

LABEL_36:
                v9 = v110;
                v98 = v112;
                if (v112 == 2 && *(v111 + 16))
                {
                  v66 = *(**(v111 + 64) + 112);

                  v68 = v66(v67);

                  v69 = v68 >> 62 ? __CocoaSet.count.getter() : *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);

                  if (v69 >= 1)
                  {
                    v70 = Logger.logObject.getter();
                    v71 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v70, v71))
                    {
                      v72 = swift_slowAlloc();
                      *v72 = 0;
                      _os_log_impl(&dword_2493AC000, v70, v71, "Doing expensive full reload", v72, 2u);
                      v73 = v72;
                      v9 = v110;
                      MEMORY[0x24C1FE850](v73, -1, -1);
                    }
                  }
                }

                v74 = *v52 & *v113;
                v104 = v4;
                v26 = (*(v74 + 4112))();
                v75 = [v26 indexPathsForSelectedItems];

                v76 = MEMORY[0x277D84F90];
                if (v75)
                {
                  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  v27 = 0;
                  v100 = v76;
                  v118[0] = v76;
                  v77 = v22[2];
                  v4 = (v114 + 16);
                  v17 = (v114 + 8);
                  while (1)
                  {
                    if (v77 == v27)
                    {

                      v76 = v100;
                      goto LABEL_54;
                    }

                    if (v27 >= v22[2])
                    {
                      __break(1u);
                      goto LABEL_71;
                    }

                    v78 = (*(v114 + 16))(v16, v22 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v27, v9);
                    result = (v115)(v120, v78);
                    v79 = v121;
                    if (!v121)
                    {
                      break;
                    }

                    ++v27;
                    v80 = v122;
                    __swift_project_boxed_opaque_existential_1(v120, v121);
                    v26 = (*(v80 + 64))(v16, v79, v80);
                    (*v17)(v16, v9);
                    v81 = __swift_destroy_boxed_opaque_existential_0(v120);
                    if (v26)
                    {
                      MEMORY[0x24C1FB090](v81);
                      if (*((v118[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                        v9 = v110;
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      v100 = v118[0];
                    }
                  }

                  __break(1u);
                  goto LABEL_76;
                }

LABEL_54:
                v82 = swift_allocObject();
                v83 = v112;
                *(v82 + 16) = v112;
                *(v82 + 18) = v107 & 1;
                v84 = v113;
                *(v82 + 24) = v113;
                v85 = v84;
                result = (v115)(v120);
                v86 = v121;
                if (!v121)
                {
LABEL_76:
                  __break(1u);
                  goto LABEL_77;
                }

                v87 = v122;
                result = __swift_project_boxed_opaque_existential_1(v120, v121);
                v119 = v83;
                v88 = *&v85[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
                if (!v88)
                {
LABEL_77:
                  __break(1u);
                  goto LABEL_78;
                }

                v118[3] = type metadata accessor for DOCNodeCollection();
                v118[4] = &protocol witness table for DOCNodeCollection;
                v118[0] = v88;
                v117[3] = type metadata accessor for DOCItemCollectionViewController(0);
                v117[4] = &protocol witness table for DOCItemCollectionViewController;
                v117[0] = v85;
                v89 = swift_allocObject();
                *(v89 + 16) = v85;
                *(v89 + 24) = partial apply for specialized closure #2 in DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:);
                *(v89 + 32) = v82;
                *(v89 + 40) = v109 & 1;
                *(v89 + 48) = v76;
                v90 = *(v87 + 72);
                v17 = v85;
                v91 = v88;

                v90(v111, &v119, v118, v117, v107 & 1, partial apply for closure #3 in DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:), v89, v86, v87);

                __swift_destroy_boxed_opaque_existential_0(v117);
                __swift_destroy_boxed_opaque_existential_0(v118);
                v92 = __swift_destroy_boxed_opaque_existential_0(v120);
                v26 = v104;
                if ((*((*MEMORY[0x277D85000] & *v17) + 0xBD8))(v92) == 2)
                {
                  v93 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
                  swift_beginAccess();
                  v94 = v99;
                  outlined init with copy of DOCGridLayout.Spec?(&v17[v93], v99, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
                  v95 = (*(v108 + 48))(v94, 1, v106);
                  v48 = v103;
                  if (v95 == 1)
                  {

                    outlined destroy of CharacterSet?(v94, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
                  }

                  else
                  {
                    v96 = v105;
                    outlined init with take of ScrollPositionInfo.ItemOffset(v94, v105, type metadata accessor for ScrollPositionInfo);
                    DOCItemCollectionViewController.scroll(using:shouldEnqueue:shouldClear:)(v96, 0, 0);

                    outlined destroy of RestorableSettings(v96, type metadata accessor for ScrollPositionInfo);
                  }

                  v9 = v102;
                  goto LABEL_67;
                }

                v48 = v103;
                v9 = v102;
                if (v98 == 2)
                {
                  DOCItemCollectionViewController.adjustContentOffsetIfNeeded()();
                  (*((*MEMORY[0x277D85000] & *v17) + 0xF60))();
                }

                else if ((v107 & 1) == 0)
                {
                  DOCItemCollectionViewController.adjustContentOffsetIfNeeded()();
                }

                DOCItemCollectionViewController.applyRestorableSettingsIfStillEnqueued(force:)(0);
                DOCItemCollectionViewController.updateViewOptionsViewModel()();
                v47 = [objc_opt_self() defaultCenter];
                if (one-time initialization token for DOCItemCollectionViewDidUpdateContents == -1)
                {
LABEL_66:
                  [v47 postNotificationName:static NSNotificationName.DOCItemCollectionViewDidUpdateContents object:v17];

LABEL_67:
                  result = [v9 setAnimationsEnabled_];
                  v48[v26] = 0;
                  return result;
                }

LABEL_73:
                swift_once();
                goto LABEL_66;
              }

LABEL_69:
              v107 = v112;
              goto LABEL_17;
            }
          }
        }

        if (v112 != 2)
        {
          goto LABEL_69;
        }
      }
    }

    v107 = 0;
    goto LABEL_17;
  }

  return result;
}

void (*DOCItemCollectionViewController.collectionGroupingBehavior.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__groupingBehavior);
  return DOCItemCollectionViewController.collectionGroupingBehavior.modify;
}

void DOCItemCollectionViewController.collectionGroupingBehavior.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  DOCItemCollectionViewController.collectionGroupingBehavior.setter(v2);
}

uint64_t DOCItemCollectionViewController.collectionShouldShowAllFilenameExtensions.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static DOCFileExtensionManager.shared + 168))() & 1;
}

void DOCItemCollectionViewController.collectionShouldShowAllFilenameExtensions.setter(char a1)
{
  if (one-time initialization token for shared != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  (*(*static DOCFileExtensionManager.shared + 176))(a1 & 1);

  DOCItemCollectionViewController.updateFilenameExtensionVisibilityIfNeeded()();
}

void (*DOCItemCollectionViewController.collectionShouldShowAllFilenameExtensions.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static DOCFileExtensionManager.shared;
  *(a1 + 8) = static DOCFileExtensionManager.shared;
  *(a1 + 16) = (*(*v3 + 168))() & 1;
  return DOCItemCollectionViewController.collectionShouldShowAllFilenameExtensions.modify;
}

void closure #1 in DOCItemCollectionViewController.subscribeToFilenameExtensionsChanges()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    DOCItemCollectionViewController.updateFilenameExtensionVisibilityIfNeeded()();
  }
}

void DOCItemCollectionViewController.updateFilenameExtensionVisibilityIfNeeded()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xD00))();
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isShowingAllFilenameExtensions;
  if ((v3 & 1) == *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isShowingAllFilenameExtensions))
  {
    return;
  }

  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v3;
  v7 = (*((*v2 & *v5) + 0x258))();
  v8 = (*((*v2 & *v1) + 0xCC0))(v7);
  v9 = (*((*v2 & *v1) + 0xD60))(v8);
  v22 = 257;
  DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v9, &v22, 0);

  v10 = [v1 presentedViewController];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for DOCSearchController();
    v12 = swift_dynamicCastClass();
    if (!v12 || (v13 = v12, ![v12 isActive]))
    {

      goto LABEL_10;
    }

    v14 = *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController];
    v15 = *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
    if (v15)
    {
      v16 = *((*v2 & *v15) + 0x258);
      v17 = v14;
      v18 = v16();
      v19 = (*((*v2 & *v17) + 0xCC0))(v18);
      v20 = (*((*v2 & *v17) + 0xD60))(v19);
      v21 = 257;
      DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v20, &v21, 0);

      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_10:
  *(v1 + v4) = v6 & 1;

  specialized DOCItemCollectionViewController.reloadNodeTitleMenuConfigurations(canFetchURLIfNecessary:)();
}

uint64_t DOCItemCollectionViewController.visibleSectionHeaders.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1018))();
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    if (one-time initialization token for sectionHeader != -1)
    {
LABEL_21:
      swift_once();
    }

    v4 = MEMORY[0x24C1FAD20](static DOCItemCollectionViewController.ElementKind.sectionHeader, *algn_27EF18858);
    v5 = [v3 visibleSupplementaryViewsOfKind_];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionReusableView, 0x277D75298);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = v2;
    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
      if (v7)
      {
LABEL_5:
        v8 = 0;
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x24C1FC540](v9, v6);
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v10 = *(v6 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            type metadata accessor for DOCItemCollectionViewSectionHeader();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_23;
            }
          }

          MEMORY[0x24C1FB090]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v2 = v13;
        }

        while (v8 != v7);
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_5;
      }
    }

LABEL_23:
  }

  return v2;
}

uint64_t *DOCItemCollectionViewController.ElementKind.sectionHeader.unsafeMutableAddressor()
{
  if (one-time initialization token for sectionHeader != -1)
  {
    swift_once();
  }

  return &static DOCItemCollectionViewController.ElementKind.sectionHeader;
}

uint64_t DOCItemCollectionViewController.viewsIgnoredForBackgroundTap.getter()
{
  if (DOCItemCollectionViewController.needsHeaderView.getter())
  {
    v0 = DOCItemCollectionViewController._headerContainerView.getter();
    v5 = v0;
    v1 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    if (v0)
    {
      v2 = v0;
      MEMORY[0x24C1FB090]();
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v4;
    }
  }

  else
  {
    v5 = 0;
    v1 = MEMORY[0x277D84F90];
  }

  outlined destroy of CharacterSet?(&v5, &_sSo6UIViewCSgMd, &_sSo6UIViewCSgMR);
  return v1;
}

uint64_t DOCItemCollectionViewController.globalSupplementaryViews.getter()
{
  if (DOCItemCollectionViewController.needsHeaderView.getter())
  {
    v1 = DOCItemCollectionViewController._headerContainerView.getter();
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView);
  v10[4] = v1;
  v10[5] = v2;
  v3 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v4 = v2;
  for (i = 0; i != 2; ++i)
  {
    v6 = v10[i + 4];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x24C1FB090]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewCSgMd, &_sSo6UIViewCSgMR);
  swift_arrayDestroy();
  return v3;
}

void DOCItemCollectionViewController.preparedCells.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1010))();
  v2 = [v1 preparedCells];

  if (v2)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
LABEL_20:
      v4 = __CocoaSet.count.getter();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        do
        {
          v6 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x24C1FC540](v6, v3);
            }

            else
            {
              if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }

              v7 = *(v3 + 8 * v6 + 32);
            }

            v8 = v7;
            v5 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for DOCItemCollectionCell();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v6;
            if (v5 == v4)
            {
              goto LABEL_21;
            }
          }

          MEMORY[0x24C1FB090]();
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        while (v5 != v4);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

LABEL_21:

    return;
  }

  __break(1u);
}

uint64_t DOCItemCollectionViewController.node(at:in:)(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x1898))() & 1) == 0)
  {
    (*((*v3 & *v1) + 0x820))(v17);
    v4 = v18;
    if (v18)
    {
      v5 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v6 = (*(v5 + 64))(a1, v4, v5);
      v7 = __swift_destroy_boxed_opaque_existential_0(v17);
      if (v6)
      {
        result = (*((*v3 & *v1) + 0xBD8))(v7);
        if (result == 2 && (result = (*((*v3 & *v1) + 0xF10))(), (result & 1) == 0))
        {
          v11 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
          if (v11)
          {
            v10 = (*((*v3 & *v11) + 0x290))();
            goto LABEL_11;
          }
        }

        else
        {
          v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
          if (v9)
          {
            v10 = (*((*v3 & *v9) + 0x258))();
LABEL_11:
            v12 = v10;
            if (v10 >> 62)
            {
              goto LABEL_25;
            }

            v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v13)
            {
              while (1)
              {
                v14 = 0;
                while ((v12 & 0xC000000000000001) != 0)
                {
                  v15 = MEMORY[0x24C1FC540](v14, v12);
                  v16 = v14 + 1;
                  if (__OFADD__(v14, 1))
                  {
LABEL_22:
                    __break(1u);
LABEL_23:

                    swift_unknownObjectRelease();
                    return v15;
                  }

LABEL_17:
                  swift_getObjectType();
                  if (DOCNode.isEqualTo(node:)(v15))
                  {
                    goto LABEL_23;
                  }

                  swift_unknownObjectRelease();
                  ++v14;
                  if (v16 == v13)
                  {
                    goto LABEL_26;
                  }
                }

                if (v14 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  break;
                }

                __break(1u);
LABEL_25:
                v13 = __CocoaSet.count.getter();
                if (!v13)
                {
                  goto LABEL_26;
                }
              }

              v15 = *(v12 + 8 * v14 + 32);
              swift_unknownObjectRetain();
              v16 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_22;
              }

              goto LABEL_17;
            }

LABEL_26:

            swift_unknownObjectRelease();
            return 0;
          }

          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMd, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMR);
    }
  }

  return 0;
}

unint64_t DOCItemCollectionViewController.indexPathForNodeInBackingModel(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0xD60))();
  v29 = 0;
  v30 = 0;
  v28 = v2;
  specialized EnumeratedSequence.Iterator.next()(&v22);
  v3 = v24;
  if (!v24)
  {
LABEL_19:

    v16 = type metadata accessor for IndexPath();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  v4 = v22;
  v5 = v23;
  v6 = v25;
  v7 = v26;
  v8 = v27;
  while (1)
  {
    result = (*(*v8 + 112))();
    v10 = result;
    v19 = v4;
    v20 = v3;
    v18 = v6;
    if (result >> 62)
    {
      break;
    }

    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_3:

    outlined consume of (offset: Int, element: DOCCollectionSection)?(v19, v5, v20, v18, v7, v8);
    specialized EnumeratedSequence.Iterator.next()(&v22);
    v4 = v22;
    v5 = v23;
    v3 = v24;
    v6 = v25;
    v7 = v26;
    v8 = v27;
    if (!v24)
    {
      goto LABEL_19;
    }
  }

  result = __CocoaSet.count.getter();
  v11 = result;
  if (!result)
  {
    goto LABEL_3;
  }

LABEL_6:
  v12 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x24C1FC540](v12, v10);
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_20;
    }

LABEL_10:
    swift_getObjectType();
    DOCNode.identifierKey.getter();
    swift_getObjectType();
    DOCNode.identifierKey.getter();
    v14 = MEMORY[0x24C1FC430](&v22, v21);
    outlined destroy of AnyHashable(v21);
    outlined destroy of AnyHashable(&v22);
    if (v14)
    {

      MEMORY[0x24C1F8100](v12, v19);
      swift_unknownObjectRelease();
      outlined consume of (offset: Int, element: DOCCollectionSection)?(v19, v5, v20, v18, v7, v8);
      v15 = type metadata accessor for IndexPath();
      return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }

    result = swift_unknownObjectRelease();
    ++v12;
    if (v13 == v11)
    {
      goto LABEL_3;
    }
  }

  if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  result = swift_unknownObjectRetain();
  v13 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_10;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t DOCItemCollectionViewController.indexPathForNodeInDataSource(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v32 - v8;
  (*((*MEMORY[0x277D85000] & *v2) + 0x820))(&v32, v7);
  if (v33)
  {
    outlined init with take of DOCGoToFolderCandidate(&v32, v34);
    swift_getObjectType();
    if (DOCNode.isCreateDocumentSentinel()())
    {
      v10 = type metadata accessor for IndexPath();
      (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
    }

    else
    {
      v21 = v35;
      v22 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      (*(v22 + 88))(a1, v21, v22);
      v23 = type metadata accessor for IndexPath();
      if ((*(*(v23 - 8) + 48))(v9, 1, v23) == 1)
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Logger.UI);
        swift_unknownObjectRetain();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *&v32 = v28;
          *v27 = 136315138;
          v29 = DOCNode.nodeDescription.getter();
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v32);

          *(v27 + 4) = v31;
          _os_log_impl(&dword_2493AC000, v25, v26, "Unable to find index path for node '%s' in diffable data source", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x24C1FE850](v28, -1, -1);
          MEMORY[0x24C1FE850](v27, -1, -1);
        }
      }

      outlined init with take of (key: URL, value: FPItem)(v9, a2, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    }

    return __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    outlined destroy of CharacterSet?(&v32, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMd, &_s26DocumentManagerExecutables33DOCNodeDiffableDataSourceProtocol_pSgMR);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);
    swift_unknownObjectRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v34[0] = v15;
      *v14 = 136315138;
      swift_getObjectType();
      v16 = DOCNode.nodeDescription.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v34);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2493AC000, v12, v13, "Diffable data source is nil when trying to find index path for node '%s'", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1FE850](v15, -1, -1);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    v19 = type metadata accessor for IndexPath();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

uint64_t DOCItemCollectionViewController.fpfs_getNode(matching:with:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v3)
  {
    v5 = result;
    v6 = (*((*MEMORY[0x277D85000] & *v3) + 0x290))();
    MEMORY[0x28223BE20](v6, v7);
    v9[2] = v5;
    v9[3] = a2;
    v8 = specialized Sequence.first(where:)(partial apply for closure #1 in DOCItemCollectionViewController.fpfs_getNode(matching:with:), v9, v6);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in DOCItemCollectionViewController.fpfs_getNode(matching:with:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  MEMORY[0x28223BE20](v67, v6);
  v69 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v66 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v68 = &v61 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v61 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v71 = &v61 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v61 - v27;
  v29 = type metadata accessor for URL();
  v73 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v30);
  v65 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v72 = &v61 - v34;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = v35;
    v70 = v3;
    swift_unknownObjectRetain();
    v37 = [v36 fpItem];
    if (v37 && (v38 = v37, swift_getObjectType(), v39 = specialized DOCNode.isEqualTo(node:)(a2, v38), v38, (v39 & 1) != 0))
    {
      swift_unknownObjectRelease();
      v40 = 1;
    }

    else
    {
      outlined init with copy of DOCGridLayout.Spec?(a3, v28, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v41 = v73;
      v42 = *(v73 + 48);
      if (v42(v28, 1, v29) != 1)
      {
        v62 = *(v41 + 32);
        v63 = v41 + 32;
        v62(v72, v28, v29);
        v46 = [v36 fileURL];
        if (v46)
        {
          v47 = v46;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = v73;
          v48 = 0;
        }

        else
        {
          v48 = 1;
        }

        v49 = *(v41 + 56);
        v49(v17, v48, 1, v29);
        outlined init with take of (key: URL, value: FPItem)(v17, v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v64 = v42;
        if (v42(v21, 1, v29) == 1)
        {
          outlined destroy of CharacterSet?(v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v50 = 1;
          v51 = v71;
        }

        else
        {
          v51 = v71;
          URL.standardizedFileURL.getter();
          (*(v41 + 8))(v21, v29);
          v50 = 0;
        }

        v49(v51, v50, 1, v29);
        v52 = v68;
        URL.standardizedFileURL.getter();
        v49(v52, 0, 1, v29);
        v53 = *(v67 + 48);
        v54 = v69;
        outlined init with copy of DOCGridLayout.Spec?(v51, v69, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined init with copy of DOCGridLayout.Spec?(v52, v54 + v53, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v55 = v64;
        if (v64(v54, 1, v29) == 1)
        {
          swift_unknownObjectRelease();
          outlined destroy of CharacterSet?(v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          outlined destroy of CharacterSet?(v51, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          (*(v73 + 8))(v72, v29);
          if (v55(v54 + v53, 1, v29) == 1)
          {
            outlined destroy of CharacterSet?(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            v40 = 1;
            return v40 & 1;
          }
        }

        else
        {
          v56 = v66;
          outlined init with copy of DOCGridLayout.Spec?(v54, v66, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          if (v55(v54 + v53, 1, v29) != 1)
          {
            v58 = (v54 + v53);
            v59 = v65;
            v62(v65, v58, v29);
            _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
            v40 = dispatch thunk of static Equatable.== infix(_:_:)();
            swift_unknownObjectRelease();
            v60 = *(v73 + 8);
            v60(v59, v29);
            outlined destroy of CharacterSet?(v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            outlined destroy of CharacterSet?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            v60(v72, v29);
            v60(v56, v29);
            outlined destroy of CharacterSet?(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            return v40 & 1;
          }

          swift_unknownObjectRelease();
          outlined destroy of CharacterSet?(v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          outlined destroy of CharacterSet?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v57 = *(v73 + 8);
          v57(v72, v29);
          v57(v56, v29);
        }

        outlined destroy of CharacterSet?(v54, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
        v40 = 0;
        return v40 & 1;
      }

      swift_unknownObjectRelease();
      outlined destroy of CharacterSet?(v28, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v40 = 0;
    }

    return v40 & 1;
  }

  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (v43)
  {
    v44 = v43;
    swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v44) = specialized DOCNode.isEqualTo(node:)(a2, v44);
    swift_unknownObjectRelease();
    return v44 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double DOCItemCollectionViewController.fpfs_getNode(matching:with:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if ((*((*MEMORY[0x277D85000] & *v4) + 0xDA0))())
  {
    a3();

    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.UI);
    swift_unknownObjectRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v20 = v12;
      v13 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BDEAA0, &v22);
      *(v13 + 12) = 2080;
      v14 = [a1 displayName];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v22);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_2493AC000, v11, v20, "%s - Waiting for matching node for %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v21, -1, -1);
      MEMORY[0x24C1FE850](v13, -1, -1);
    }

    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a3;
    v19[4] = a4;
    swift_unknownObjectRetain();

    DOCItemCollectionViewController.waitForPending(node:url:resolutionHandler:)(a1, a2, partial apply for closure #1 in DOCItemCollectionViewController.fpfs_getNode(matching:with:completion:), v19);
  }

  return result;
}

uint64_t closure #1 in DOCItemCollectionViewController.fpfs_getNode(matching:with:completion:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x8000000249BDEAA0, &v21);
    *(v9 + 12) = 2080;
    v11 = [a2 displayName];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v21);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    if (a1)
    {
      swift_getObjectType();
      v16 = DOCNode.nodeDescription.getter();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 4271950;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v21);

    *(v9 + 24) = v19;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s - matching node for %s is %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {
  }

  return a3(a1);
}

void DOCItemCollectionViewController.indexPathsForNodesInDataSource(_:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v26 - v4;
  v6 = type metadata accessor for IndexPath();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10, v11);
  v35 = v26 - v13;
  if (a1 >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    v15 = 0;
    v16 = *((*MEMORY[0x277D85000] & *v36) + 0xD98);
    v33 = (*MEMORY[0x277D85000] & *v36) + 3480;
    v34 = v16;
    v17 = (v30 + 48);
    v31 = (v30 + 32);
    v32 = a1 & 0xC000000000000001;
    v27 = (v30 + 16);
    v18 = MEMORY[0x277D84F90];
    v26[1] = v30 + 8;
    v28 = v9;
    v29 = a1;
    do
    {
      if (v32)
      {
        v19 = MEMORY[0x24C1FC540](v15, a1, v12);
      }

      else
      {
        v19 = *(a1 + 8 * v15 + 32);
        swift_unknownObjectRetain();
      }

      v34(v19);
      if ((*v17)(v5, 1, v6) == 1)
      {
        swift_unknownObjectRelease();
        outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      }

      else
      {
        v20 = v14;
        v21 = *v31;
        v22 = v35;
        (*v31)(v35, v5, v6);
        (*v27)(v9, v22, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
        }

        v24 = *(v18 + 2);
        v23 = *(v18 + 3);
        if (v24 >= v23 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v18);
        }

        swift_unknownObjectRelease();
        v25 = v30;
        (*(v30 + 8))(v35, v6);
        *(v18 + 2) = v24 + 1;
        v9 = v28;
        v21(&v18[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v24], v28, v6);
        a1 = v29;
        v14 = v20;
      }

      ++v15;
    }

    while (v14 != v15);
  }
}

void *DOCItemCollectionViewController.gatheringObservation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringObservation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.gatheringObservation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringObservation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.itemsOriginObservation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsOriginObservation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.itemsOriginObservation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsOriginObservation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for DOCItemCollectionViewController.indexPathForRememberedFocusNode : DOCItemCollectionViewController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xE38))(v7);
}

uint64_t DOCItemCollectionViewController.currentFocusEngineIndexPath.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of IndexPath?(a1, v2 + v4, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  return swift_endAccess();
}

void *DOCItemCollectionViewController.additionalHeaderView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.additionalHeaderView.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderView;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x1758);
  v7 = a1;
  v6(&outlined read-only object #0 of DOCItemCollectionViewController.additionalHeaderView.setter);
  v8 = *(v2 + v4);
  if (!v8)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_6:
    DOCItemCollectionViewController.setUpAdditionalHeaderContainer()();

    v7 = v5;
    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v9 = v8;
  v10 = v5;
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v10;
LABEL_7:
}

void (*DOCItemCollectionViewController.additionalHeaderView.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionViewController.additionalHeaderView.modify;
}

void DOCItemCollectionViewController.additionalHeaderView.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = *((*MEMORY[0x277D85000] & *v7) + 0x1758);
  v10 = v4;
  v11 = v10;
  v12 = v3[4];
  v13 = v3[5];
  if (a2)
  {
    v14 = v10;
    v9(&outlined read-only object #1 of DOCItemCollectionViewController.additionalHeaderView.modify);
    v15 = *(v12 + v13);
    if (v15)
    {
      if (v8)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
        v16 = v15;
        v17 = v8;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {

LABEL_12:
          v11 = *v5;
          goto LABEL_15;
        }
      }
    }

    else if (!v8)
    {
      goto LABEL_12;
    }

    DOCItemCollectionViewController.setUpAdditionalHeaderContainer()();

    v14 = v8;
    goto LABEL_12;
  }

  v9(&outlined read-only object #0 of DOCItemCollectionViewController.additionalHeaderView.modify);
  v19 = *(v12 + v13);
  if (v19)
  {
    if (v8)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
      v20 = v19;
      v21 = v8;
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {

        goto LABEL_15;
      }
    }
  }

  else if (!v8)
  {
    goto LABEL_15;
  }

  DOCItemCollectionViewController.setUpAdditionalHeaderContainer()();

  v11 = v8;
LABEL_15:

  free(v3);
}

id DOCItemCollectionViewController.wantsSyncStateHeader.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xBD8))();
  if (result != 3)
  {
    goto LABEL_5;
  }

  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v4)
  {
    __break(1u);
    return result;
  }

  result = (*((*v2 & *v4) + 0x1B0))();
  if (result)
  {
    v5 = [result isRootItem];
    result = swift_unknownObjectRelease();
    if (!v5)
    {
      return 0;
    }

LABEL_5:
    v6 = (*((*v2 & *v1) + 0xA68))(result);
    v7 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
    v8 = v7;

    if (v7)
    {
      v9 = [v8 isMainiCloudDriveDomain];

      return v9;
    }

    return 0;
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.setUpSyncStateHeaderView()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView;
    v4 = *&Strong[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView];
    v5 = MEMORY[0x277D85000];
    if (v4)
    {
      goto LABEL_6;
    }

    v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0xA68))();
    v7 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
    v8 = v7;

    if (v7)
    {
      type metadata accessor for DOCFileProviderSyncStateHeaderViewModel();
      v9 = swift_allocObject();
      *(v9 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v9 + 72) = 0u;
      *(v9 + 56) = 0u;
      *(v9 + 40) = 0u;
      *(v9 + 88) = 1;
      *(v9 + 32) = v8;
      v10 = objc_allocWithZone(type metadata accessor for DOCFileProviderSyncStateHeaderView());
      v11 = DOCFileProviderSyncStateHeaderView.init(with:)(v9);
      v12 = *&v2[v3];
      *&v2[v3] = v11;
    }

    v4 = *&v2[v3];
    if (v4)
    {
LABEL_6:
      v13 = *((*v5 & *v4) + 0xA8);
      v14 = v4;
      v15 = v2;
      v13(v2, &protocol witness table for DOCItemCollectionViewController);

      v16 = *&v2[v3];
      if (v16)
      {
        v17 = *((*v5 & *v16) + 0xD8);
        v18 = v16;
        v17();
      }
    }
  }
}

double closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v41 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 BOOLForKey_];
    }

    else
    {
      v12 = 0;
    }

    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.DocumentManager);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = v12;
      _os_log_impl(&dword_2493AC000, v14, v15, "Files Family Tip, isSharingFolderWithAdultFamilyMember %{BOOL}d", v16, 8u);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    if (one-time initialization token for $hasSharedFolderWithAdultFamilyMember != -1)
    {
      swift_once();
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints, &_s6TipKit4TipsO9ParameterVy_SbGMR);
    __swift_project_value_buffer(v17, static DOCTipsFamilyTip.$hasSharedFolderWithAdultFamilyMember);
    HIDWORD(v41) = v12;
    LOBYTE(v42) = v12;
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
    v18 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsManager;
    v19 = *(v9 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsManager);
    v20 = MEMORY[0x277D85000];
    if (v19 || (v21 = *((*MEMORY[0x277D85000] & *v9) + 0x878), v22 = v9, v23 = v21(v43), (*((*v20 & *v22) + 0x710))(v23), objc_allocWithZone(type metadata accessor for DOCTipsManager(0)), v24 = a2, v25 = DOCTipsManager.init(_:_:_:_:)(v22, v43, a2), v26 = *(v9 + v18), *(v9 + v18) = v25, v26, (v19 = *(v9 + v18)) != 0))
    {
      v27 = *((*v20 & *v19) + 0x140);
      v28 = v19;
      v27();
    }

    v29 = type metadata accessor for TaskPriority();
    v30 = *(*(v29 - 8) + 56);
    v30(v6, 1, 1, v29);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();
    v32 = v9;

    v33 = static MainActor.shared.getter();
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D85700];
    v34[2] = v33;
    v34[3] = v35;
    v34[4] = v31;

    v36 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:), v34);
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(&v42, v36);
    swift_endAccess();

    v30(v6, 1, 1, v29);
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v38 = static MainActor.shared.getter();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = MEMORY[0x277D85700];
    *(v39 + 32) = v37;
    *(v39 + 40) = BYTE4(v41);

    v40 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:), v39);
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(&v42, v40);
    swift_endAccess();
  }

  return result;
}

uint64_t closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd, &_sScSy6TipKit4TipsO6StatusOGMR);
  v4[15] = swift_task_alloc();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMR);
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd, &_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMR);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd, _ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMR);
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MainActor();
  v4[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v9;
  v4[27] = v8;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:), v9, v8);
}

uint64_t closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[18];
    (*((*MEMORY[0x277D85000] & *Strong) + 0x710))();
    lazy protocol witness table accessor for type DOCTipsFamilyTip and conformance DOCTipsFamilyTip();
    Tip.shouldDisplayUpdates.getter();
    MEMORY[0x24C1FC670](v4);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd, &_sScSy6TipKit4TipsO6StatusOGMR, MEMORY[0x277D857C0]);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    AsyncMapSequence.Iterator.transform.getter();
    (*(v3 + 8))(v2, v4);
    AsyncMapSequence.Iterator.init(_:transform:)();
    v5 = static MainActor.shared.getter();
    v0[29] = v5;
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v0[30] = v6;
    v0[31] = v8;

    return MEMORY[0x2822009F8](closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:), v6, v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

{
  v1 = v0[29];
  v0[32] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMR, MEMORY[0x277D857B0]);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:);
  v3 = v0[10];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v3, v1, v4);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:);
  }

  else
  {
    (*(v2 + 256))();
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    outlined destroy of CharacterSet?(v3, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
    v4 = v0[26];
    v5 = v0[27];

    return MEMORY[0x2822009F8](closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:), v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[34] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[35] = v8;
    *v8 = v0;
    v8[1] = closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:);
    v9 = v0[13];

    return (v11)(v0 + 36, v9);
  }
}

{
  return (*(v0 + 256))();
}

{
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);

  (*(v3 + 8))(v2, v4);
  *(v1 + 289) = *(v1 + 288);
  v5 = *(v1 + 248);
  v6 = *(v1 + 240);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:), v6, v5);
}

{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:), v1, v2);
}

{
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.DocumentManager);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 289);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2493AC000, v2, v3, "Files Family Tip, shouldDisplay changed to %{BOOL}d", v5, 8u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v6 = *(v0 + 289);
  v7 = *(v0 + 224);

  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x898))(v6);
  v10 = (*((*v8 & *v7) + 0x10D8))(v9);
  (*((*v8 & *v7) + 0xA40))(v10);
  v11 = static MainActor.shared.getter();
  *(v0 + 232) = v11;
  if (v11)
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v0 + 240) = v12;
  *(v0 + 248) = v14;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:), v12, v14);
}

uint64_t closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 291) = a5;
  *(v5 + 192) = a4;
  type metadata accessor for MainActor();
  *(v5 + 200) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 208) = v7;
  *(v5 + 216) = v6;

  return MEMORY[0x2822009F8](closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:), v7, v6);
}

uint64_t closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v2 = *((*MEMORY[0x277D85000] & *Strong) + 0x878);
    v3 = ((*MEMORY[0x277D85000] & *Strong) + 2168) & 0xFFFFFFFFFFFFLL | 0xF5D3000000000000;
    v0[29] = v2;
    v0[30] = v3;
    v2();
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v9 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[31] = v6;
    *v6 = v0;
    v6[1] = closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:);

    return v9(v4, v5);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = *(v0 + 256);
  if (!v1)
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_44:
    v27 = *(v0 + 8);

    return v27();
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = [v1 members];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FAFamilyMember, 0x277D08268);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v35 = v1;
    v36 = v0;
    v5 = 0;
    v1 = (v3 & 0xC000000000000001);
    v37 = i;
    while (1)
    {
      if (v1)
      {
        v6 = MEMORY[0x24C1FC540](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v0 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 memberType] || (objc_msgSend(v7, sel_isMe) & 1) != 0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        i = v37;
      }

      ++v5;
      if (v0 == i)
      {
        v8 = v39;
        v1 = v35;
        v0 = v36;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_21:
  *(v0 + 264) = v8;

  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.DocumentManager);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *(v8 + 16);
    }

    *(v12 + 4) = v13;

    _os_log_impl(&dword_2493AC000, v10, v11, "Files Family Tip, adultsInFamily count %ld", v12, 0xCu);
    MEMORY[0x24C1FE850](v12, -1, -1);
  }

  else
  {
  }

  v14 = [v1 me];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 memberType];
    if (one-time initialization token for $isAdult != -1)
    {
      v34 = v16;
      swift_once();
      v16 = v34;
    }

    v17 = v16 == 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints, &_s6TipKit4TipsO9ParameterVy_SbGMR);
    __swift_project_value_buffer(v18, static DOCTipsFamilyTip.$isAdult);
    *(v0 + 290) = v17;
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    if (one-time initialization token for $isAdult != -1)
    {
      swift_once();
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints, &_s6TipKit4TipsO9ParameterVy_SbGMR);
    __swift_project_value_buffer(v22, static DOCTipsFamilyTip.$isAdult);
    swift_beginAccess();
    Tips.Parameter.wrappedValue.getter();
    v23 = *(v0 + 289);
    swift_endAccess();
    *(v21 + 4) = v23;
    _os_log_impl(&dword_2493AC000, v19, v20, "Files Family Tip, user isAdult %{BOOL}d", v21, 8u);
    MEMORY[0x24C1FE850](v21, -1, -1);
  }

  if ((v8 & 0x8000000000000000) == 0 && (v8 & 0x4000000000000000) == 0)
  {
    if (*(v8 + 16) >= 1)
    {
      goto LABEL_40;
    }

LABEL_43:

    goto LABEL_44;
  }

  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_43;
  }

LABEL_40:
  if (one-time initialization token for $hasFamilyWithAdultMember != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 291);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&sharedTypeToFocusInputView._internalConstraints, &_s6TipKit4TipsO9ParameterVy_SbGMR);
  __swift_project_value_buffer(v25, static DOCTipsFamilyTip.$hasFamilyWithAdultMember);
  *(v0 + 288) = 1;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  v26 = swift_endAccess();
  if (v24)
  {
    goto LABEL_43;
  }

  v29 = *(v0 + 224);
  (*(v0 + 232))(v26);
  v30 = *(v0 + 80);
  v31 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v30);
  v32 = (*((*MEMORY[0x277D85000] & *v29) + 0xCB8))();
  *(v0 + 272) = v32;
  v38 = (*(v31 + 16) + **(v31 + 16));
  v33 = swift_task_alloc();
  *(v0 + 280) = v33;
  *v33 = v0;
  v33[1] = closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:);

  return v38(v32, v8, v30, v31);
}

{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:), v3, v2);
}

{
  v1 = *(v0 + 256);

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return MEMORY[0x2822009F8](closure #2 in closure #1 in DOCItemCollectionViewController.setUpTips(configuration:), v4, v3);
}

void DOCItemCollectionViewController.setUpAdditionalHeaderContainer()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE78);
  v3 = v2();
  [v3 removeFromSuperview];

  v4 = v2();
  if (v4)
  {
    v23 = v4;
    v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v6 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderContainerView);
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderContainerView) = v5;
    v7 = v5;

    if (!v7)
    {
      goto LABEL_5;
    }

    [v7 addSubview_];
    v8 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249BA0470;
    v10 = [v23 topAnchor];
    v11 = [v7 topAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v9 + 32) = v12;
    v13 = [v23 bottomAnchor];
    v14 = [v7 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v9 + 40) = v15;
    v16 = [v23 leadingAnchor];
    v17 = [v7 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:-20.0];

    *(v9 + 48) = v18;
    v19 = [v23 trailingAnchor];
    v20 = [v7 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:20.0];

    *(v9 + 56) = v21;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 activateConstraints_];
  }

  v23 = (*((*v1 & *v0) + 0xFC8))();
  specialized DOCItemCollectionViewController.configureSupplementaryItems(for:footerContentInsets:)(v23);
LABEL_5:
}

uint64_t DOCItemCollectionViewController.firstItemInsertionRequestsFocus.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_firstItemInsertionRequestsFocus;
  swift_beginAccess();
  return *(v0 + v1);
}

id DOCItemCollectionViewController.firstItemInsertionRequestsFocus.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_firstItemInsertionRequestsFocus;
  swift_beginAccess();
  v1[v3] = a1;
  if (a1)
  {
    return [v1 performSelector:sel_firstItemInsertionRequestsFocusExpired withObject:0 afterDelay:1.0];
  }

  else
  {
    return [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:sel_firstItemInsertionRequestsFocusExpired object:0];
  }
}

void (*DOCItemCollectionViewController.firstItemInsertionRequestsFocus.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_firstItemInsertionRequestsFocus;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemCollectionViewController.firstItemInsertionRequestsFocus.modify;
}

void DOCItemCollectionViewController.firstItemInsertionRequestsFocus.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + v3[4]) == 1)
    {
      [v3[3] performSelector:sel_firstItemInsertionRequestsFocusExpired withObject:0 afterDelay:1.0];
    }

    else
    {
      [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v4 selector:sel_firstItemInsertionRequestsFocusExpired object:0];
    }
  }

  free(v3);
}

uint64_t DOCItemCollectionViewController.pickableNodes.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xCB8))();
  v4 = v3;
  v12 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_16:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = v1;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1FC540](v6, v4);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v9 = v12;
            goto LABEL_18;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        if ((*((*v2 & *v1) + 0x18C0))(v7))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v1 = v11;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v6;
        if (v8 == v5)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_18:

  return v9;
}

uint64_t DOCItemCollectionViewController.focusableNodes.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xCB8))();
  v4 = v3;
  v12 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_16:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = v1;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1FC540](v6, v4);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v9 = v12;
            goto LABEL_18;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        if ((*((*v2 & *v1) + 0x1798))(v7))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v1 = v11;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v6;
        if (v8 == v5)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_18:

  return v9;
}

unint64_t DOCItemCollectionViewController.needsSectionHeaders.getter()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xF10))())
  {
    return 1;
  }

  return DOCItemCollectionViewController.shouldDisplaySortableColumns.getter();
}

uint64_t DOCItemCollectionViewController.listModeHasMultipleColumns.getter()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x11C0))();
  if (result)
  {
    (*(*result + 256))(v10);

    v3 = outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v10);
    v4 = v11;
    (*((*v1 & *v0) + 0x1160))(&v7, v3);
    if (v8)
    {
      v5 = v7;
    }

    else
    {
      v5 = 10;
    }

    outlined consume of DOCItemSortDescriptor?(v7, v8, v9);
    LOBYTE(v7) = v5;
    v6 = DOCItemCollectionRowStyle.columns(with:)(&v7, v4)[2];

    return v6 > 1;
  }

  return result;
}

void *DOCItemCollectionRowStyle.columns(with:)(unsigned __int8 *a1, char a2)
{
  v2 = *a1;
  v3 = static DOCItemCollectionRowStyle.lastColumns;
  if ((a2 & 2) != 0)
  {
    if (a2)
    {

      specialized Array.append<A>(contentsOf:)(&outlined read-only object #1 of DOCItemCollectionRowStyle.columns(with:));
      if (v2 == 10 || (specialized == infix<A>(_:_:)(v2, 5u) & 1) == 0)
      {
        v6 = &outlined read-only object #3 of DOCItemCollectionRowStyle.columns(with:);
      }

      else
      {
        v6 = &outlined read-only object #2 of DOCItemCollectionRowStyle.columns(with:);
      }

      specialized Array.append<A>(contentsOf:)(v6);
      v4 = &outlined read-only object #0 of DOCItemCollectionRowStyle.columns(with:);
      if (!v3 || qword_285C7F0F0 != v3[2])
      {
        goto LABEL_32;
      }

      if (v2 != 10)
      {

        if (specialized == infix<A>(_:_:)(v2, 2u))
        {
        }

        else
        {
          v7 = specialized == infix<A>(_:_:)(v2, 0);

          if ((v7 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_30:

      return v3;
    }

    if (v2 != 10)
    {
      if (specialized == infix<A>(_:_:)(v2, 5u))
      {
        v5 = &outlined read-only object #4 of DOCItemCollectionRowStyle.columns(with:);
        goto LABEL_26;
      }

      if (specialized == infix<A>(_:_:)(v2, 4u))
      {
        v5 = &outlined read-only object #5 of DOCItemCollectionRowStyle.columns(with:);
        goto LABEL_26;
      }
    }

    v5 = &outlined read-only object #6 of DOCItemCollectionRowStyle.columns(with:);
LABEL_26:
    specialized Array.append<A>(contentsOf:)(v5);
    v4 = &outlined read-only object #0 of DOCItemCollectionRowStyle.columns(with:);
    if (!v3 || qword_285C7F0F0 != v3[2] || v2 != 10 && (specialized == infix<A>(_:_:)(v2, 2u) & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2)
  {

    if (v2 != 10)
    {
      if (specialized == infix<A>(_:_:)(v2, 0))
      {
        v5 = &outlined read-only object #7 of DOCItemCollectionRowStyle.columns(with:);
        goto LABEL_26;
      }

      if (specialized == infix<A>(_:_:)(v2, 5u))
      {
        v5 = &outlined read-only object #8 of DOCItemCollectionRowStyle.columns(with:);
        goto LABEL_26;
      }
    }

    v5 = &outlined read-only object #9 of DOCItemCollectionRowStyle.columns(with:);
    goto LABEL_26;
  }

  v4 = &outlined read-only object #0 of DOCItemCollectionRowStyle.columns(with:);
LABEL_32:
  if (qword_285C7F0F0 == 1)
  {

    static DOCItemCollectionRowStyle.lastColumns = 0;
LABEL_37:

    return v4;
  }

  if (!v3 || (v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables26DOCItemCollectionRowColumnO_Tt1g5(&outlined read-only object #0 of DOCItemCollectionRowStyle.columns(with:), v3), , (v8 & 1) == 0))
  {
    static DOCItemCollectionRowStyle.lastColumns = &outlined read-only object #0 of DOCItemCollectionRowStyle.columns(with:);

    goto LABEL_37;
  }

  return v4;
}

unint64_t DOCItemCollectionViewController.shouldDisplaySortableColumns.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xCB8);
  v4 = v3();
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 1)
  {
    goto LABEL_13;
  }

  result = (v3)(v6);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v9 = result;
  v10 = __CocoaSet.count.getter();
  result = v9;
  if (!v10)
  {
LABEL_12:

LABEL_13:
    Document = 0;
LABEL_14:
    v11 = *((*v2 & *v1) + 0xBD8);
    if ((v11)(v6) == 2)
    {
      if (!Document)
      {
        v12 = [v1 traitCollection];
        v13 = [v12 horizontalSizeClass];

        v14 = v13 != 1;
        return v14 & 1;
      }
    }

    else if (DOCDeviceIsPad() && v11() == 1 && (DOCItemCollectionViewController.listModeHasMultipleColumns.getter() & 1) != 0)
    {
      v15 = [v1 traitCollection];
      v16 = [v15 preferredContentSizeCategory];

      LOBYTE(v15) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v14 = (v15 | Document) ^ 1;
      return v14 & 1;
    }

    v14 = 0;
    return v14 & 1;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0);
    goto LABEL_9;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_9:

    swift_getObjectType();
    Document = DOCNode.isCreateDocumentSentinel()();
    v6 = swift_unknownObjectRelease();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

BOOL DOCItemCollectionViewController.shouldGroupSections.getter()
{
  v1 = MEMORY[0x277D85000];
  result = 0;
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xF20))())
  {
    (*((*v1 & *v0) + 0xCE8))(&v4);
    if (v4 != 10)
    {
      v3 = v4;
      if (specialized static DOCItemCollectionViewNodeGrouper.canGroup(by:)(&v3))
      {
        return 1;
      }
    }
  }

  return result;
}

void DOCItemCollectionViewController.isForDisplayingSearchResults.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v1)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0x298))();
  }

  else
  {
    __break(1u);
  }
}

void DOCItemCollectionViewController.toggleSection(_:header:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v4 = a1[4];
  v5 = MEMORY[0x277D85000];
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    goto LABEL_33;
  }

  v45 = *a1;
  v42 = a1[1];
  v43 = a1[4];
  v40 = a1[2];
  v41 = a1[3];
  v34 = v3;
  v8 = DOCItemCollectionViewController.visibleSectionHeaders.getter();
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_27;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_5:
    v11 = 0;
    v38 = v9 & 0xFFFFFFFFFFFFFF8;
    v39 = v9 & 0xC000000000000001;
    v36 = v10;
    v37 = v9;
    while (1)
    {
      if (v39)
      {
        v18 = MEMORY[0x24C1FC540](v11, v9);
      }

      else
      {
        if (v11 >= *(v38 + 16))
        {
          goto LABEL_26;
        }

        v18 = *(v9 + 8 * v11 + 32);
      }

      v6 = v18;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v10 = __CocoaSet.count.getter();
        if (!v10)
        {
          goto LABEL_28;
        }

        goto LABEL_5;
      }

      (*((*v5 & *v18) + 0x410))(&v49);
      v19 = v49;
      v20 = v50;
      v17 = v51;
      v21 = v52;
      v46 = v11 + 1;
      v47 = v53;
      if (!v50)
      {
        break;
      }

      v44 = v51;
      if (!v42)
      {
        v12 = v5;
        v13 = v41;

        v14 = 0;
        v15 = v43;

        outlined copy of DOCCollectionSection?(v19, v20, v17, v21);

        v16 = v47;
        v17 = v44;

LABEL_7:
        outlined consume of DOCCollectionSection?(v19, v20, v17, v21, v16);
        outlined consume of DOCCollectionSection?(v45, v14, v40, v13, v15);
        v5 = v12;
        v9 = v37;
        goto LABEL_8;
      }

      if (v49 == v45 && v50 == v42)
      {

        outlined copy of DOCCollectionSection?(v45, v42, v17, v21);
        outlined consume of DOCCollectionSection?(v45, v42, v40, v41, v43);

        outlined consume of DOCCollectionSection?(v45, v42, v17, v21, v47);
LABEL_23:

        v3 = v34;
        v5 = MEMORY[0x277D85000];
        v4 = v43;
        goto LABEL_33;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined copy of DOCCollectionSection?(v19, v20, v17, v21);
      v9 = v37;
      outlined consume of DOCCollectionSection?(v45, v42, v40, v41, v43);

      outlined consume of DOCCollectionSection?(v19, v20, v44, v21, v47);
      if (v35)
      {
        goto LABEL_23;
      }

      v5 = MEMORY[0x277D85000];
LABEL_8:
      ++v11;
      if (v46 == v36)
      {
        goto LABEL_28;
      }
    }

    v12 = v5;
    v14 = v42;
    if (!v42)
    {

      v4 = v43;

      outlined consume of DOCCollectionSection?(v19, 0, v17, v21, v47);
      v3 = v34;
      v5 = v12;
      goto LABEL_33;
    }

    v13 = v41;

    v15 = v43;

    v16 = v47;
    goto LABEL_7;
  }

LABEL_28:

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.UI);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = v26;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000249BE0A10, &v48);
    *(v25 + 12) = 2080;
    v49 = v45;
    v50 = v42;
    v51 = v40;
    v52 = v41;
    v53 = v43;

    v27 = String.init<A>(describing:)();
    v29 = v5;
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v48);

    *(v25 + 14) = v30;
    v5 = v29;
    _os_log_impl(&dword_2493AC000, v23, v24, "%s could not find header for section: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v26, -1, -1);
    MEMORY[0x24C1FE850](v25, -1, -1);
  }

  v6 = 0;
  v3 = v34;
  v4 = v43;
LABEL_33:
  v31 = (*(*v4 + 136))(v7) ^ 1;
  v32 = (*(*v4 + 144))(v31 & 1);
  if (v6)
  {
    v32 = (*((*v5 & *v6) + 0x458))(v31 & 1);
  }

  v33 = (*((*v5 & *v3) + 0xD60))(v32);
  LOWORD(v49) = 2;
  DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v33, &v49, 0);
}

void DOCItemCollectionViewController.didObserveLayoutRelatedChanges(forceLayoutInvalidation:)()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  [v2 enclosingUIPHorizontalInset];
  v4 = v3;

  v5 = 0.0;
  v6 = [v1 setAdditionalSafeAreaInsets_];
  v7 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xBD8))(v6) != 2)
  {
    v8 = *((*v7 & *v1) + 0xB20);
    v9 = v8();
    if (v9)
    {
      v10 = v9;
      v11 = [v1 view];
      if (!v11)
      {
        __break(1u);
        return;
      }

      v12 = v11;
      [v11 bounds];
      v14 = v13;
      v16 = v15;

      [v10 setContentSize_];
    }

    v17 = v8();
    if (v17)
    {
      v18 = v17;
      v19 = (*((*v7 & *v1) + 0x1010))();
      [v18 bounds];
      [v19 setFrame_];
    }
  }

  v20 = [v1 traitCollection];
  (*((*v7 & *v1) + 0x13F8))();

  v21 = DOCItemCollectionViewController.traitCollectionForBarLayout.getter();
  [v21 enclosingUIPHorizontalInset];
  v23 = v22;

  v24 = -v23;
  v25 = DOCItemCollectionViewController.traitCollectionForBarLayout.getter();
  if ([v25 contextPrefersVariableBlurBottomTabBar])
  {
    lazy protocol witness table accessor for type UITraitCollection.DOCTabBarBlurAvoidanceTrait and conformance UITraitCollection.DOCTabBarBlurAvoidanceTrait();
    UITraitCollection.subscript.getter();
    v5 = v26;
  }

  v27 = (*((*v7 & *v1) + 0x1010))();
  [v27 setVerticalScrollIndicatorInsets_];

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
  v28 = [v1 viewIfLoaded];
  v29 = [v28 window];

  if (v29)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()(v30);
  }

  else
  {

    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

void DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [objc_opt_self() tabSidebar];
  v8 = [v7 isEnabled];

  if (v8)
  {
    return;
  }

  v9 = *(a1 + OBJC_IVAR___DOCSplitViewState__impl);
  if (v9 == 2)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v10 = *(a2 + OBJC_IVAR___DOCSplitViewState__impl);
  if (v10 == 2)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v11 = *(a2 + OBJC_IVAR___DOCSplitViewState__impl + 8) == 2;
  v12 = v11 & ~v10;
  v13 = !v11;
  v14 = v10 | v13;
  if (*(a1 + OBJC_IVAR___DOCSplitViewState__impl + 8) != 2)
  {
    v14 = v12;
  }

  if (v9)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  if ([v3 enclosedInUIPDocumentLanding])
  {
    if (v15)
    {
      if ([a3 isAnimated])
      {
        if ([v3 doc_hasAppeared])
        {
          v16 = [v3 viewIfLoaded];
          if (v16)
          {
            v44 = v16;
            v17 = (*((*MEMORY[0x277D85000] & *v3) + 0x1018))();
            if (v17)
            {
              v18 = v17;
              v19 = MEMORY[0x24C1FDA70]();
              v20 = [v18 snapshotViewAfterScreenUpdates_];
              if (!v20)
              {
LABEL_30:
                objc_autoreleasePoolPop(v19);

                return;
              }

              v21 = v20;
              v43 = v19;
              v22 = objc_opt_self();
              v23 = swift_allocObject();
              v23[2] = v21;
              v23[3] = v44;
              v23[4] = v18;
              v24 = swift_allocObject();
              *(v24 + 16) = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:);
              *(v24 + 24) = v23;
              v49 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
              v50 = v24;
              aBlock = MEMORY[0x277D85DD0];
              v46 = 1107296256;
              v47 = thunk for @escaping @callee_guaranteed () -> ();
              v48 = &block_descriptor_57_2;
              v25 = _Block_copy(&aBlock);
              v26 = v21;
              v27 = v44;
              v28 = v18;

              [v22 performWithoutAnimation_];
              _Block_release(v25);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if ((isEscapingClosureAtFileLocation & 1) == 0)
              {
                v34 = 1;
                if ((*((*MEMORY[0x277D85000] & *v3) + 0xBD8))(v30) != 3)
                {
                  v31 = [v3 splitViewController];
                  if (!v31 || (v32 = v31, v33 = UISplitViewController.hasEnoughRoomToTileSidebar.getter(), v32, (v33 & 1) != 0))
                  {
                    v34 = 0;
                  }
                }

                v35 = swift_allocObject();
                *(v35 + 16) = v26;
                *(v35 + 24) = v28;
                *(v35 + 32) = v34;
                v49 = partial apply for closure #2 in closure #1 in DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:);
                v50 = v35;
                aBlock = MEMORY[0x277D85DD0];
                v46 = 1107296256;
                v47 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
                v48 = &block_descriptor_63_2;
                v36 = _Block_copy(&aBlock);
                v37 = v26;
                v38 = v28;

                v39 = swift_allocObject();
                *(v39 + 16) = v38;
                *(v39 + 24) = v37;
                v49 = partial apply for closure #3 in closure #1 in DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:);
                v50 = v39;
                aBlock = MEMORY[0x277D85DD0];
                v46 = 1107296256;
                v47 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
                v48 = &block_descriptor_69_0;
                v40 = _Block_copy(&aBlock);
                v41 = v37;
                v42 = v38;

                [a3 animateAlongsideTransition:v36 completion:v40];

                _Block_release(v40);
                _Block_release(v36);

                v19 = v43;
                goto LABEL_30;
              }

              __break(1u);
              goto LABEL_32;
            }
          }
        }
      }
    }
  }
}

void closure #1 in closure #1 in DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:)(void *a1, void *a2, void *a3)
{
  [a1 setAlpha_];
  [a2 addSubview_];
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249BA0470;
  v8 = [a1 centerXAnchor];
  v9 = [a2 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [a1 topAnchor];
  v12 = [a2 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  v14 = [a1 widthAnchor];
  [a3 frame];
  v15 = [v14 constraintEqualToConstant_];

  *(v7 + 48) = v15;
  v16 = [a1 heightAnchor];
  [a3 frame];
  v17 = [v16 constraintEqualToConstant_];

  *(v7 + 56) = v17;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints_];
}

void closure #2 in closure #1 in DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:)(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.prepareSnapshotForSplitStateChanging(fromState:toState:alongside:);
  *(v9 + 24) = v8;
  v13[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed () -> ();
  v13[3] = &block_descriptor_1380;
  v10 = _Block_copy(v13);
  v11 = a2;
  v12 = a3;

  [v7 performWithoutAnimation_];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (a4)
    {
      [v12 setAlpha_];
      [v11 setAlpha_];
    }
  }
}

void DOCItemCollectionViewController.updateLayout(for:at:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v6 = v5();
  v7 = [v6 collectionViewLayout];

  if (one-time initialization token for sectionHeader != -1)
  {
    swift_once();
  }

  v8 = MEMORY[0x24C1FAD20](static DOCItemCollectionViewController.ElementKind.sectionHeader, *algn_27EF18858);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [v7 layoutAttributesForSupplementaryViewOfKind:v8 atIndexPath:isa];

  if (v10)
  {
    v11 = (*((*v4 & *v2) + 0xFE0))();
    if (v11)
    {
      v11 = [a1 setDirectionalLayoutMargins_];
    }

    v12 = (v5)(v11);
    v13 = [v10 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = (v5)(v13);
    v23 = [v22 superview];

    [v12 convertRect:v23 toView:{v15, v17, v19, v21}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = v5();
    v33 = v5();
    [v33 contentOffset];
    v35 = v34;

    [v32 contentScaleFactor];
    v37 = v36;

    v38 = round(v35 * v37) / v37;
    v39 = v5();
    v40 = v5();
    [v40 adjustedContentInset];
    v42 = v41;

    [v39 contentScaleFactor];
    v44 = v43;

    v45 = round(v42 * v44) / v44;
    v46 = v5();
    v83.origin.x = v25;
    v83.origin.y = v27;
    v83.size.width = v29;
    v83.size.height = v31;
    MinY = CGRectGetMinY(v83);
    [v46 contentScaleFactor];
    v49 = v48;

    v50 = round(MinY * v49) / v49;
    v51 = v38 + v45;
    v52 = v38 + v45 > 0.0 && v50 == v45;
    v53 = (*((*v4 & *a1) + 0x398))(v52);
    v54 = (v5)(v53);
    [v54 safeAreaInsets];
    v56 = v55;

    v80 = *((*v4 & *a1) + 0x390);
    if (v80() & 1) != 0 && (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming))
    {
      v57.n128_u64[0] = v56;
    }

    else
    {
      v57.n128_u64[0] = 0;
    }

    (*((*v4 & *a1) + 0x3B0))(v57);
    if (IndexPath.section.getter())
    {
      v58 = 0;
    }

    else
    {
      v59 = v5();
      [v59 contentOffset];
      v61 = v60;

      v62 = v5();
      (*((*v4 & *v62) + 0x138))();
      v64 = v63;

      v58 = v61 <= v64;
    }

    (*((*v4 & *a1) + 0x3E0))(v58);
    if (DOCItemCollectionViewController.needsHeaderView.getter())
    {
      v65 = DOCItemCollectionViewController._headerContainerView.getter();
      v66 = [v65 arrangedSubviews];

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
      v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v67 >> 62)
      {
        v68 = __CocoaSet.count.getter();
        if (v68)
        {
LABEL_20:
          v69 = __OFSUB__(v68, 1);
          v70 = v68 - 1;
          if (v69)
          {
            __break(1u);
          }

          else if ((v67 & 0xC000000000000001) == 0)
          {
            if ((v70 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v70 < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v71 = *(v67 + 8 * v70 + 32);
LABEL_25:
              v81 = v71;

              goto LABEL_29;
            }

            __break(1u);
            return;
          }

          v71 = MEMORY[0x24C1FC540](v70, v67);
          goto LABEL_25;
        }
      }

      else
      {
        v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v68)
        {
          goto LABEL_20;
        }
      }
    }

    v81 = 0;
LABEL_29:
    v72 = 0;
    if (!IndexPath.section.getter() && v81)
    {
      v73 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView);
      if (v73)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
        v74 = v81;
        v75 = v73;
        v72 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v72 = 0;
      }
    }

    (*((*v4 & *a1) + 0x3C8))(v72 & 1);
    if (DOCItemCollectionViewController.shouldDisplaySortableColumns.getter())
    {
      v76 = (v80() & 1) != 0 || IndexPath.section.getter() == 0;
    }

    else
    {
      v76 = 0;
    }

    v77 = (*((*v4 & *a1) + 0x348))(v76);
    v78.n128_f64[0] = v51 * 0.25;
    if (v51 * 0.25 > 1.0)
    {
      v78.n128_f64[0] = 1.0;
    }

    if (v50 > v45 || v51 <= 0.0)
    {
      v78.n128_f64[0] = 0.0;
    }

    (*((*v4 & *a1) + 0x4B8))(v77, v78);
  }
}

{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v6 = v5();
  v7 = [v6 collectionViewLayout];

  v8 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BCE120);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [v7 layoutAttributesForSupplementaryViewOfKind:v8 atIndexPath:isa];

  if (!v10)
  {
    return;
  }

  v11 = (*((*v4 & *v2) + 0xFE0))();
  if (v11)
  {
    v11 = [a1 setDirectionalLayoutMargins_];
  }

  v12 = (v5)(v11);
  v13 = [v10 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = (v5)(v13);
  v23 = [v22 superview];

  [v12 convertRect:v23 toView:{v15, v17, v19, v21}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = v5();
  v33 = v5();
  [v33 contentOffset];
  v35 = v34;

  [v32 contentScaleFactor];
  v37 = v36;

  v38 = round(v35 * v37) / v37;
  v39 = v5();
  v40 = v5();
  [v40 adjustedContentInset];
  v42 = v41;

  [v39 contentScaleFactor];
  v44 = v43;

  v45 = round(v42 * v44) / v44;
  v46 = v5();
  v84.origin.x = v25;
  v84.origin.y = v27;
  v84.size.width = v29;
  v84.size.height = v31;
  MinY = CGRectGetMinY(v84);
  [v46 contentScaleFactor];
  v49 = v48;

  v50 = round(MinY * v49) / v49;
  v51 = v38 + v45;
  v52 = v38 + v45 > 0.0 && v50 == v45;
  v53 = (*((*v4 & *a1) + 0x120))(v52);
  v54 = (v5)(v53);
  [v54 safeAreaInsets];
  v56 = v55;

  v81 = *((*v4 & *a1) + 0x118);
  if (v81() & 1) != 0 && (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming))
  {
    v57.n128_u64[0] = v56;
  }

  else
  {
    v57.n128_u64[0] = 0;
  }

  (*((*v4 & *a1) + 0x1D8))(v57);
  if (IndexPath.section.getter())
  {
    v58 = 0;
  }

  else
  {
    v59 = v5();
    [v59 contentOffset];
    v61 = v60;

    v62 = v5();
    (*((*v4 & *v62) + 0x138))();
    v64 = v63;

    v58 = v61 <= v64;
  }

  (*((*v4 & *a1) + 0x1C0))(v58);
  if (DOCItemCollectionViewController.needsHeaderView.getter())
  {
    v65 = DOCItemCollectionViewController._headerContainerView.getter();
    v66 = [v65 arrangedSubviews];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v67 >> 62)
    {
      v68 = __CocoaSet.count.getter();
      if (v68)
      {
LABEL_18:
        v69 = __OFSUB__(v68, 1);
        v70 = v68 - 1;
        if (v69)
        {
          __break(1u);
        }

        else if ((v67 & 0xC000000000000001) == 0)
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v70 < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v71 = *(v67 + 8 * v70 + 32);
LABEL_23:
            v82 = v71;

            goto LABEL_27;
          }

          __break(1u);
          return;
        }

        v71 = MEMORY[0x24C1FC540](v70, v67);
        goto LABEL_23;
      }
    }

    else
    {
      v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v68)
      {
        goto LABEL_18;
      }
    }
  }

  v82 = 0;
LABEL_27:
  v72 = 0;
  if (!IndexPath.section.getter() && v82)
  {
    v73 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView);
    if (v73)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
      v74 = v82;
      v75 = v73;
      v72 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v72 = 0;
    }
  }

  (*((*v4 & *a1) + 0x1A8))(v72 & 1);
  if (DOCItemCollectionViewController.shouldDisplaySortableColumns.getter())
  {
    v76 = (v81() & 1) != 0 || IndexPath.section.getter() == 0;
  }

  else
  {
    v76 = 0;
  }

  (*((*v4 & *a1) + 0x168))(v76);
  v77.n128_u64[0] = 0;
  if (v51 > 0.0 && v50 <= v45)
  {
    v79 = v51 * 0.25 <= 1.0 ? v51 * 0.25 : 1.0;
    v80 = _UISolariumEnabled();
    v77.n128_u64[0] = 0;
    if (!v80)
    {
      v77.n128_f64[0] = v79;
    }
  }

  (*((*v4 & *a1) + 0x1F0))(v77);
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateSectionHeaderLayout()()
{
  v1 = type metadata accessor for IndexPath();
  v51 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5, v6);
  v9 = v50 - v8;
  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *v0) + 0x1018);
  v57 = v11(v7);
  if (!v57)
  {
LABEL_18:
    v27 = (v11)();
    if (v27)
    {
      v57 = v27;
      [v27 _setPocketStyle_forEdge_];
      v28 = v57;
    }

    return;
  }

  if (((*((*v10 & *v0) + 0xEF8))() & 1) == 0)
  {

    goto LABEL_18;
  }

  if (one-time initialization token for sectionHeader != -1)
  {
    swift_once();
  }

  v55 = *algn_27EF18858;
  v56 = static DOCItemCollectionViewController.ElementKind.sectionHeader;
  v12 = MEMORY[0x24C1FAD20]();
  v13 = &selRef_setCancelsTouchesInView_;
  v14 = [v57 indexPathsForVisibleSupplementaryElementsOfKind_];

  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = 0;
  v16 = *(v15 + 16);
  v52 = v0;
  if (v16)
  {
    v17 = *(v51 + 16);
    v18 = *(v51 + 80);
    v50[1] = v15;
    v19 = v15 + ((v18 + 32) & ~v18);
    v53 = *(v51 + 72);
    v54 = v17;
    v20 = (v51 + 8);
    v17(v9, v19, v1);
    while (1)
    {
      v21 = MEMORY[0x24C1FAD20](v56, v55);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v23 = [v57 supplementaryViewForElementKind:v21 atIndexPath:isa];

      if (!v23)
      {
        goto LABEL_8;
      }

      type metadata accessor for DOCItemCollectionViewSectionHeader();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        break;
      }

      v25 = v24;
      DOCItemCollectionViewController.updateLayout(for:at:)(v24);
      if (v59 == 1)
      {
        (*v20)(v9, v1);

        v26 = 1;
      }

      else
      {
        v26 = (*((*MEMORY[0x277D85000] & *v25) + 0x390))();

        (*v20)(v9, v1);
      }

      v59 = v26 & 1;
LABEL_9:
      v19 += v53;
      if (!--v16)
      {

        v0 = v52;
        v13 = &selRef_setCancelsTouchesInView_;
        goto LABEL_24;
      }

      v54(v9, v19, v1);
    }

LABEL_8:
    (*v20)(v9, v1);
    goto LABEL_9;
  }

LABEL_24:
  v56 = "com.apple.iwork.";
  v29 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BCE120);
  v30 = [v57 v13[190]];

  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = *(v31 + 16);
  if (!v32)
  {

    goto LABEL_38;
  }

  v33 = *(v51 + 16);
  v54 = v31;
  v55 = v33;
  v34 = v31 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v35 = *(v51 + 72);
  v36 = (v51 + 8);
  v33(v4, v34, v1);
  while (1)
  {
    v37 = MEMORY[0x24C1FAD20](0xD000000000000021, v56 | 0x8000000000000000);
    v38 = IndexPath._bridgeToObjectiveC()().super.isa;
    v39 = [v57 supplementaryViewForElementKind:v37 atIndexPath:v38];

    if (!v39)
    {
      goto LABEL_27;
    }

    type metadata accessor for DOCOutlineHeaderView();
    v40 = swift_dynamicCastClass();
    if (!v40)
    {

LABEL_27:
      (*v36)(v4, v1);
      goto LABEL_28;
    }

    v41 = v40;
    DOCItemCollectionViewController.updateLayout(for:at:)(v40);
    if (v59 == 1)
    {
      (*v36)(v4, v1);

      v42 = 1;
    }

    else
    {
      v42 = (*((*MEMORY[0x277D85000] & *v41) + 0x118))();

      (*v36)(v4, v1);
    }

    v59 = v42 & 1;
LABEL_28:
    v34 += v35;
    if (!--v32)
    {
      break;
    }

    v55(v4, v34, v1);
  }

  v0 = v52;
LABEL_38:
  v43 = objc_opt_self();
  v44 = swift_allocObject();
  v45 = v57;
  v44[2] = v57;
  v44[3] = &v59;
  v44[4] = v0;
  v46 = swift_allocObject();
  *(v46 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.updateSectionHeaderLayout();
  *(v46 + 24) = v44;
  aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_79;
  v47 = _Block_copy(aBlock);
  v48 = v45;
  v49 = v0;

  [v43 performWithoutAnimation_];

  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    __break(1u);
  }
}

id closure #1 in DOCItemCollectionViewController.updateSectionHeaderLayout()(void *a1, _BYTE *a2, void *a3)
{
  if (*a2)
  {
    v4 = 1;
  }

  else
  {
    v6 = a1;
    v7 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *a3) + 0xBD8))() == 2)
    {
      v4 = 1;
    }

    else
    {
      v4 = (*((*v7 & *a3) + 0xF10))() & 1;
    }

    a1 = v6;
  }

  return [a1 _setPocketStyle_forEdge_];
}

uint64_t DOCItemCollectionViewController.expandSectionContaining(node:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = a1;
  v9 = *((*MEMORY[0x277D85000] & *v1) + 0xDA8);
  v10 = v1;
  v11 = swift_unknownObjectRetain();
  v9(v11, v6, partial apply for closure #1 in DOCItemCollectionViewController.expandSectionContaining(node:), v8);

  return outlined destroy of CharacterSet?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

double _expandSectionContaining #1 (_:) in DOCItemCollectionViewController.expandSectionContaining(node:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController) + 16);
  oslog = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController);

  v23 = v3;
  if (v3)
  {
    v4 = 0;
    v5 = &oslog[8];
    while (1)
    {
      if (v4 >= oslog[2].isa)
      {
        __break(1u);
        goto LABEL_18;
      }

      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v11 = *(**v5 + 112);

      v13 = v11(v12);
      swift_getObjectType();
      LOBYTE(v11) = specialized Array<A>.contains(node:)(a1, v13);

      if (v11)
      {
        break;
      }

      v4 = (v4 + 1);
      v5 += 5;
      if (v23 == v4)
      {
        goto LABEL_6;
      }
    }

    if ((*(*v10 + 136))(v22))
    {
    }

    else
    {
      v27[0] = v6;
      v27[1] = v7;
      v27[2] = v8;
      v27[3] = v9;
      v27[4] = v10;
      DOCItemCollectionViewController.toggleSection(_:header:)(v27, 0);
    }
  }

  else
  {
LABEL_6:

    if (one-time initialization token for UI != -1)
    {
LABEL_18:
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    swift_unknownObjectRetain();
    osloga = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(osloga, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v16 = 136315394;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE12A0, v27);
      *(v16 + 12) = 2080;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v18 = String.init<A>(describing:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v27);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_2493AC000, osloga, v15, "%s can not find section containing node: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v17, -1, -1);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    else
    {
    }
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.expandSectionContaining(node:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = swift_unknownObjectRetain();
    _expandSectionContaining #1 (_:) in DOCItemCollectionViewController.expandSectionContaining(node:)(v5, a2, a3);

    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.UI);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x8000000249BE1280, &v14);
      *(v8 + 12) = 2080;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_2493AC000, oslog, v7, "%s did not find matching node for node: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v9, -1, -1);
      MEMORY[0x24C1FE850](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t DOCItemCollectionViewController.isSectionContainingItemExpanded(_:)(void *a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController) + 16);
  v37 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController);

  v36 = v3;
  if (v3)
  {
    v4 = 0;
    v5 = (v37 + 64);
    while (1)
    {
      if (v4 >= *(v37 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *v5;
      v9 = *(**v5 + 112);

      v11 = v9(v10);
      swift_getObjectType();
      LOBYTE(v9) = specialized Array<A>.contains(node:)(a1, v11);

      if (v9)
      {
        break;
      }

      ++v4;
      v5 += 5;
      if (v36 == v4)
      {
        goto LABEL_6;
      }
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.UI);

    swift_unknownObjectRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = a1;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136315650;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BDEAD0, &v38);
      *(v27 + 12) = 2080;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v38);

      *(v27 + 14) = v29;
      *(v27 + 22) = 2080;
      v30 = [v26 displayName];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v38);

      *(v27 + 24) = v34;
      _os_log_impl(&dword_2493AC000, v24, v25, "%s found section %s containing item: %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v28, -1, -1);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    v35 = (*(*v8 + 136))();

    return v35 & 1;
  }

  else
  {
LABEL_6:

    if (one-time initialization token for UI != -1)
    {
LABEL_16:
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.UI);
    swift_unknownObjectRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v38 = v16;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BDEAD0, &v38);
      *(v15 + 12) = 2080;
      v17 = [a1 displayName];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v38);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_2493AC000, v13, v14, "%s can not find section containing item: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v16, -1, -1);
      MEMORY[0x24C1FE850](v15, -1, -1);
    }

    return 1;
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.expandAllSections()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xF10))();
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController);
    v5 = *(v4 + 16);
    if (v5)
    {

      v6 = (v4 + 64);
      do
      {
        v7 = *v6;
        v8 = *(**v6 + 136);

        if ((v8(v9) & 1) == 0)
        {
          (*(*v7 + 144))(1);
        }

        v6 += 5;
        --v5;
      }

      while (v5);
    }

    v10 = (*((*v2 & *v1) + 0xD60))(v3);
    v11 = 2;
    DOCItemCollectionViewController.updateSnapshot(for:using:maintainSelection:)(v10, &v11, 0);
  }
}

uint64_t one-time initialization function for sectionHeader()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static DOCItemCollectionViewController.ElementKind.sectionHeader = result;
  *algn_27EF18858 = v1;
  return result;
}

uint64_t static DOCItemCollectionViewController.ElementKind.sectionHeader.getter()
{
  if (one-time initialization token for sectionHeader != -1)
  {
    swift_once();
  }

  v0 = static DOCItemCollectionViewController.ElementKind.sectionHeader;

  return v0;
}

void __swiftcall DOCItemCollectionViewController.FooterView.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes *__return_ptr retstr, UICollectionViewLayoutAttributes *a2)
{
  v2 = specialized DOCItemCollectionViewController.FooterView.preferredLayoutAttributesFitting(_:)(a2);

  v3 = v2;
}

id DOCItemCollectionViewController.FooterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCItemCollectionViewController.FooterView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DOCItemCollectionViewController.FooterView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCItemCollectionViewController.FooterView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCItemCollectionViewController.FooterView.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DOCItemCollectionViewController.FooterView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id DOCDragMonitor.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *DOCItemCollectionViewController.gridSectionProvider(sectionIndex:layoutEnvironment:)(int64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x11C0))();
  if (!v5)
  {
    goto LABEL_6;
  }

  (*(*v5 + 160))(v68);

  v7 = *((*v4 & *v1) + 0xD60);
  v8 = *((v7)(v6) + 16);

  if (v8 <= a1)
  {
    outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v68);
LABEL_6:
    v14 = objc_opt_self();
    v15 = [v14 fractionalWidthDimension_];
    v16 = [v14 fractionalHeightDimension_];
    v17 = objc_opt_self();
    v18 = [v17 sizeWithWidthDimension:v15 heightDimension:v16];

    v19 = [objc_opt_self() itemWithLayoutSize_];
    v20 = [v14 fractionalWidthDimension_];
    v21 = [v14 fractionalHeightDimension_];
    v22 = [v17 sizeWithWidthDimension:v20 heightDimension:v21];

    v23 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_249BA0290;
    *(v24 + 32) = v19;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem, 0x277CFB860);
    v25 = v19;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v27 = [v23 horizontalGroupWithLayoutSize:v22 subitems:isa];

    v28 = [objc_opt_self() sectionWithGroup_];
    return v28;
  }

  v10 = *((*v4 & *v2) + 0xF10);
  if ((v10)(v9))
  {
    v12 = *&v68[5];
    v11 = *&v68[6];
    v13 = v68[7];
  }

  else
  {
    v13 = v68[3];
    v12 = *v68;
    v11 = *&v68[1];
  }

  v67 = v13;
  if ((v10() & 1) == 0)
  {
    goto LABEL_12;
  }

  result = v7();
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (result[2] > a1)
  {
    v30 = result[5 * a1 + 8];

    v32 = (*(*v30 + 136))(v31);

    if ((v32 & 1) == 0)
    {
      v55 = objc_opt_self();
      v56 = [v55 fractionalWidthDimension_];
      v57 = [v55 fractionalHeightDimension_];
      v58 = objc_opt_self();
      v54 = [v58 sizeWithWidthDimension:v56 heightDimension:v57];

      v59 = [objc_opt_self() itemWithLayoutSize_];
      v60 = [v55 absoluteDimension_];
      v61 = [v55 absoluteDimension_];
      v41 = [v58 sizeWithWidthDimension:v60 heightDimension:v61];

      v62 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_249BA0290;
      *(v63 + 32) = v59;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem, 0x277CFB860);
      v44 = v59;
      v64 = Array._bridgeToObjectiveC()().super.isa;

      v46 = [v62 horizontalGroupWithLayoutSize:v41 subitems:v64];

      v51 = [objc_opt_self() sectionWithGroup_];
      v52 = 1;
      v49 = v67;
      v53 = v67;
      v48 = &selRef_removeFromSuperlayer;
LABEL_17:
      v65 = v51;
      [v53 v48[187]];
      [v65 setInterGroupSpacing_];
      [v65 setOrthogonalScrollingBehavior_];

      [v65 setSupplementaryContentInsetsReference_];
      [v65 setContentInsetsReference_];
      [v65 setContentInsets_];
      DOCItemCollectionViewController.configureSectionHeaders(for:)(v65);

      outlined destroy of DOCItemCollectionLayoutTraits.GridTraits(v68);
      return v65;
    }

LABEL_12:
    v33 = objc_opt_self();
    v34 = [v33 absoluteDimension_];
    v35 = [v33 fractionalHeightDimension_];
    v36 = objc_opt_self();
    v37 = [v36 sizeWithWidthDimension:v34 heightDimension:v35];

    v66 = v37;
    v38 = [objc_opt_self() itemWithLayoutSize_];
    v39 = [v33 fractionalWidthDimension_];
    v40 = [v33 absoluteDimension_];
    v41 = [v36 sizeWithWidthDimension:v39 heightDimension:v40];

    v42 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_249BA0290;
    *(v43 + 32) = v38;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem, 0x277CFB860);
    v44 = v38;
    v45 = Array._bridgeToObjectiveC()().super.isa;

    v46 = [v42 horizontalGroupWithLayoutSize:v41 subitems:v45];

    if (v10())
    {
      v47 = objc_opt_self();
      v48 = &selRef_removeFromSuperlayer;
      v49 = v67;
      [v67 spacing];
      v50 = [v47 fixedSpacing_];
      [v46 setInterItemSpacing_];
    }

    else
    {
      v49 = v67;
      [v46 setInterItemSpacing_];
      v48 = &selRef_removeFromSuperlayer;
    }

    v51 = [objc_opt_self() sectionWithGroup_];
    v52 = 0;
    v53 = v68[2];
    v54 = v66;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t key path setter for DOCItemCollectionViewController.indexPathOfSwipedItem : DOCItemCollectionViewController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xF90))(v7);
}

uint64_t DOCItemCollectionViewController.listLayoutConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35UICollectionLayoutListConfigurationVSgMd, &_s5UIKit35UICollectionLayoutListConfigurationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___listLayoutConfiguration;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v11, v10, &_s5UIKit35UICollectionLayoutListConfigurationVSgMd, &_s5UIKit35UICollectionLayoutListConfigurationVSgMR);
  v12 = type metadata accessor for UICollectionLayoutListConfiguration();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  outlined destroy of CharacterSet?(v10, &_s5UIKit35UICollectionLayoutListConfigurationVSgMd, &_s5UIKit35UICollectionLayoutListConfigurationVSgMR);
  closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter(v14);
  (*(v13 + 16))(v6, a1, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  swift_beginAccess();
  outlined assign with take of IndexPath?(v6, v1 + v11, &_s5UIKit35UICollectionLayoutListConfigurationVSgMd, &_s5UIKit35UICollectionLayoutListConfigurationVSgMR);
  return swift_endAccess();
}

uint64_t closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter(double a1)
{
  v1 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = MEMORY[0x28223BE20](v1, v2);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D74D60], v3);
  UICollectionLayoutListConfiguration.init(appearance:)();
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration._willBeginSwipingHandler.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return UICollectionLayoutListConfiguration._didEndSwipingHandler.setter();
}

void closure #1 in closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    DOCItemCollectionViewController.separatorConfiguration(for:suggestedConfiguration:)(a2, a4);
  }

  else
  {
    v8 = type metadata accessor for UIListSeparatorConfiguration();
    (*(*(v8 - 8) + 16))(a4, a2, v8);
  }
}

void *closure #2 in closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v82 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = MEMORY[0x277D85000];
    if (*((*MEMORY[0x277D85000] & *result) + 0xBD8))() == 3 || ((*((*v18 & *v17) + 0x1898))(a1) & 1) != 0 || ((*((*v18 & *v17) + 0x1448))())
    {
      goto LABEL_8;
    }

    v83 = v12;
    v19 = *((*v18 & *v17) + 0xB20);
    result = v19();
    if (result)
    {
      v20 = result;
      [result contentSize];
      v22 = v21;

      result = v19();
      if (result)
      {
        v23 = result;
        [result bounds];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v93.origin.x = v25;
        v93.origin.y = v27;
        v93.size.width = v29;
        v93.size.height = v31;
        Width = CGRectGetWidth(v93);
        v33 = v83;
        if (v22 > Width)
        {
LABEL_8:

          return 0;
        }

        (*((*v18 & *v17) + 0x18A0))(a1);
        if ((*(v33 + 48))(v10, 1, v11) == 1)
        {

          outlined destroy of CharacterSet?(v10, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
          return 0;
        }

        (*(v33 + 32))(v15, v10, v11);
        v34 = (*((*v18 & *v17) + 0xD88))(v15, 0);
        if (!v34)
        {
          (*(v33 + 8))(v15, v11);
          goto LABEL_8;
        }

        v35 = v34;
        (*(v33 + 16))(v6, a1, v11);
        (*(v33 + 56))(v6, 0, 1, v11);
        (*((*v18 & *v17) + 0xF90))(v6);
        v36 = [v35 doc_eligibleActions];
        type metadata accessor for FPAction(0);
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
        static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = specialized Set.contains(_:)();
        v82 = v35;
        if (v37)
        {
          v38 = [*(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forbiddenActionIdentifiers];
          v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v40;
          MEMORY[0x28223BE20](aBlock, v40);
          v92._object = &aBlock;
          v41 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v82 - 4), v39);

          v42 = v41 ^ 1;
        }

        else
        {
          v42 = 0;
        }

        if (specialized Set.contains(_:)())
        {
          v43 = [*(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forbiddenActionIdentifiers];
          v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v45;
          MEMORY[0x28223BE20](aBlock, v45);
          v92._object = &aBlock;
          v46 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v82 - 4), v44);

          v33 = v83;
          v47 = v46 ^ 1;
        }

        else
        {
          v47 = 0;
        }

        v48 = specialized Set.contains(_:)();

        if (v48)
        {
          v49 = [*(v17 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) forbiddenActionIdentifiers];
          v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v51;
          MEMORY[0x28223BE20](aBlock, v51);
          v92._object = &aBlock;
          v52 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v82 - 4), v50);

          v53 = v52 ^ 1;
        }

        else
        {
          v53 = 0;
        }

        v90 = MEMORY[0x277D84F90];
        v54 = v42 | v47;
        v55 = v82;
        if ((v54 & 1) == 0)
        {
          goto LABEL_31;
        }

        result = _DocumentManagerBundle();
        if (result)
        {
          v56 = result;
          v92._object = 0x8000000249BC9970;
          v57._countAndFlagsBits = 0x6574656C6544;
          v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v58.value._object = 0xEB00000000656C62;
          v57._object = 0xE600000000000000;
          v59._countAndFlagsBits = 0;
          v59._object = 0xE000000000000000;
          v91._countAndFlagsBits = 0xD00000000000001BLL;
          v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v57, v58, v56, v59, v91);

          v61 = swift_allocObject();
          *(v61 + 16) = v55;
          *(v61 + 24) = v17;
          swift_unknownObjectRetain();
          v62 = v17;
          v63 = MEMORY[0x24C1FAD20](v60._countAndFlagsBits, v60._object);

          v88 = partial apply for closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter;
          v89 = v61;
          aBlock = MEMORY[0x277D85DD0];
          v85 = 1107296256;
          v86 = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
          v87 = &block_descriptor_1364;
          v64 = _Block_copy(&aBlock);
          v65 = [objc_opt_self() contextualActionWithStyle:1 title:v63 handler:v64];

          _Block_release(v64);

          if (_UISolariumEnabled())
          {
            v66 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
            v67 = [objc_opt_self() systemImageNamed_];

            [v65 setImage_];
          }

          v68 = v65;
          MEMORY[0x24C1FB090]();
          if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_31:
          if ((v53 & 1) == 0)
          {
LABEL_36:
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextualAction, 0x277D753C0);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v81 = [objc_opt_self() configurationWithActions_];
            swift_unknownObjectRelease();

            (*(v33 + 8))(v15, v11);
            return v81;
          }

          result = _DocumentManagerBundle();
          if (result)
          {
            v69 = result;
            v92._object = 0x8000000249BE11F0;
            v70._countAndFlagsBits = 0x7265766F636552;
            v71.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v71.value._object = 0xEB00000000656C62;
            v92._countAndFlagsBits = 0xD000000000000048;
            v70._object = 0xE700000000000000;
            v72._countAndFlagsBits = 0;
            v72._object = 0xE000000000000000;
            v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v92);

            v74 = swift_allocObject();
            *(v74 + 16) = v55;
            *(v74 + 24) = v17;
            swift_unknownObjectRetain();
            v75 = v17;
            v76 = MEMORY[0x24C1FAD20](v73._countAndFlagsBits, v73._object);

            v88 = partial apply for closure #2 in closure #2 in closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter;
            v89 = v74;
            aBlock = MEMORY[0x277D85DD0];
            v85 = 1107296256;
            v86 = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
            v87 = &block_descriptor_1358;
            v77 = _Block_copy(&aBlock);
            v78 = [objc_opt_self() contextualActionWithStyle:0 title:v76 handler:v77];

            _Block_release(v77);

            MEMORY[0x24C1FB090](v79);
            if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            goto LABEL_36;
          }

LABEL_40:
          __break(1u);
          return result;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }

  return result;
}

id closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_getObjectType();
  result = DOCNode.fpfs_syncFetchFPItem()();
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v14 = v10;

    FPItemManager.trashOrDeleteItems(_:alertPresenting:userCancellationHandler:)(inited, a6, partial apply for closure #1 in closure #1 in closure #2 in closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter, v13);

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  return result;
}

double closure #2 in closure #2 in closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCOperationItemOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables16DOCOperationItemOGMR);
  v9 = *(type metadata accessor for DOCOperationItem(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249B9A480;
  *(v11 + v10) = a5;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(4u, v11, 0, 0, 0, 1, a6, 0, 0);

  return result;
}

void closure #3 in closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x6E0))(1);
  }
}

void closure #4 in closure #1 in DOCItemCollectionViewController.listLayoutConfiguration.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong isEditing])
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    (*((*MEMORY[0x277D85000] & *v2) + 0x6E0))(v3);
  }
}

uint64_t DOCItemCollectionViewController.separatorConfiguration(for:suggestedConfiguration:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v6 = *(v5 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v5, v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = 8.0;
  if (((*((*MEMORY[0x277D85000] & *v2) + 0xFE0))(v8) & 1) == 0)
  {
    v12 = [v2 traitCollection];
    v13 = [v12 horizontalSizeClass];

    if (v13 == 1)
    {
      v11 = 16.0;
    }

    else
    {
      v11 = 10.0;
    }
  }

  v14 = type metadata accessor for UIListSeparatorConfiguration();
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  if (!IndexPath.row.getter())
  {
    (*(v6 + 104))(v10, *MEMORY[0x277D74C98], v5);
    UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  }

  v15 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
  *(v16 + 24) = v11;
  return v15(v18, 0);
}

void *DOCItemCollectionViewController.listSectionProvider(sectionIndex:layoutEnvironment:displayMode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v48 - v14;
  v51 = type metadata accessor for UICollectionLayoutListConfiguration();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  DOCItemCollectionViewController.listLayoutConfiguration.getter(v18);
  v19 = [v3 enclosedInUIPDocumentLanding];
  if (v19)
  {
    v20 = [objc_opt_self() clearColor];
    v19 = UICollectionLayoutListConfiguration.backgroundColor.setter();
  }

  if (a3 == 2)
  {
    v21 = MEMORY[0x277D85000];
    v22 = MEMORY[0x277D74DA0];
    v11 = v15;
  }

  else
  {
    v21 = MEMORY[0x277D85000];
    if (((*((*MEMORY[0x277D85000] & *v3) + 0xEF8))(v19) & 1) != 0 && ((v23 = (*((*v21 & *v3) + 0xCB8))(), v23 >> 62) ? (v24 = __CocoaSet.count.getter()) : (v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v24 > 0))
    {
      v22 = MEMORY[0x277D74D90];
    }

    else
    {
      v22 = MEMORY[0x277D74DA0];
    }
  }

  (*(v8 + 104))(v11, *v22, v7);
  UICollectionLayoutListConfiguration.headerMode.setter();
  if (!a1)
  {
    [objc_opt_self() enclosingTabSwitcherCanBeFloating];
  }

  UICollectionLayoutListConfiguration.headerTopPadding.setter();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutSection, 0x277CFB868);
  v25 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v26 = _UISolariumEnabled();
  if (v26 && a3 == 3)
  {
    [v25 contentInsets];
    v26 = [v25 setContentInsets_];
  }

  v27 = *((*v21 & *v4) + 0xFE0);
  if (v27(v26))
  {
    [v25 setContentInsets_];
  }

  [v25 setContentInsetsReference_];
  v28 = [v25 setSupplementaryContentInsetsReference_];
  if (a3 == 2)
  {
    v29 = (*((*v21 & *v4) + 0xB20))(v28);
    if (v29)
    {
      v30 = v29;
      v31 = *MEMORY[0x277D75060];
      v32 = *(MEMORY[0x277D75060] + 16);
      v33 = [v4 traitCollection];
      v34 = [v33 layoutDirection];

      [v30 safeAreaInsets];
      if (v34 == 1)
      {
        v37 = v36;
      }

      else
      {
        v37 = v35;
      }

      v38 = [v4 traitCollection];
      v39 = [v38 layoutDirection];

      v40 = [v30 safeAreaInsets];
      if (v39 == 1)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      v44 = v27(v40);
      v45 = v37 + 12.0;
      if (v44)
      {
        v46 = v43 + 12.0;
      }

      else
      {
        v46 = v43;
      }

      if ((v44 & 1) == 0)
      {
        v45 = v37;
      }

      [v25 setContentInsets_];
      [v25 setSupplementaryContentInsetsReference_];
      [v25 setContentInsetsReference_];
    }

    DOCItemCollectionViewController.configureSectionHeaders(for:)(v25);
  }

  (*(v49 + 8))(v18, v51);
  return v25;
}

id DOCItemCollectionViewController.collectionViewLayout.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___collectionViewLayout;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___collectionViewLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___collectionViewLayout);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = objc_allocWithZone(type metadata accessor for DOCCollectionViewCompositionalLayout());
    v11[4] = partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.collectionViewLayout.getter;
    v11[5] = v4;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
    v11[3] = &block_descriptor_87_2;
    v6 = _Block_copy(v11);

    v7 = [v5 initWithSectionProvider_];
    _Block_release(v6);

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t closure #1 in closure #1 in DOCItemCollectionViewController.collectionViewLayout.getter(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    DOCItemCollectionViewController.updateLayoutTraitsFromEnvironment(_:)(a2);
    v18 = MEMORY[0x277D85000];
    v19 = (*((*MEMORY[0x277D85000] & *v17) + 0xBD8))();
    if (v19)
    {
      v20 = (*((*v18 & *v17) + 0xFC0))(a1, a2, v19);
    }

    else
    {
      v20 = (*((*v18 & *v17) + 0xF80))(a1, a2);
    }

    v21 = v20;
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutSection, 0x277CFB868);
    (*(v7 + 104))(v10, *MEMORY[0x277D74D60], v6);
    UICollectionLayoutListConfiguration.init(appearance:)();
    v21 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    (*(v12 + 8))(v15, v11);
  }

  return v21;
}

void DOCItemCollectionViewController.collectionViewLayout.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___collectionViewLayout);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___collectionViewLayout) = a1;
}

void (*DOCItemCollectionViewController.collectionViewLayout.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCItemCollectionViewController.collectionViewLayout.getter();
  return DOCItemCollectionViewController.collectionViewLayout.modify;
}

void DOCItemCollectionViewController.collectionViewLayout.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___collectionViewLayout);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___collectionViewLayout) = v2;
}

uint64_t DOCItemCollectionViewController.tableLayoutContentShouldUseSidebarPlainAppearance.getter(uint64_t a1)
{
  if ((_UISolariumEnabled() & 1) == 0 && (*((*MEMORY[0x277D85000] & *v1) + 0xBD8))() == 3)
  {
    return 0;
  }

  result = DOCDeviceIsPad();
  if (result)
  {
    v3 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isPickerUI];
    v4 = [v1 traitCollection];
    if (v3)
    {
      v5 = UITraitCollection.modifyingTraits(_:)();

      v4 = v5;
    }

    v6 = [v4 horizontalSizeClass];

    return v6 == 2;
  }

  return result;
}

double DOCItemCollectionViewController.TableLayoutSidebarPlainAppearanceMetrics.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_249BAA8A0;
  result = 12.0;
  *(a1 + 24) = xmmword_249BAA8B0;
  return result;
}

double DOCItemCollectionViewController.tableLayoutSidebarPlainAppearanceMetrics.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_249BAA8A0;
  result = 12.0;
  *(a1 + 24) = xmmword_249BAA8B0;
  return result;
}

void DOCItemCollectionViewController.configureSectionHeaders(for:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xCB8))();
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= 1)
  {
    if (v7 = *((*v3 & *v1) + 0xBD8), (v7)(v6) == 2) && (v8 = [v1 traitCollection], v9 = objc_msgSend(v8, sel_horizontalSizeClass), v8, v9 != 1) || ((*((*v3 & *v1) + 0xF10))())
    {
      v10 = objc_opt_self();
      v11 = [v10 fractionalWidthDimension_];
      v12 = [v10 estimatedDimension_];
      v13 = [objc_opt_self() sizeWithWidthDimension:v11 heightDimension:v12];

      if (v7() == 2)
      {
        v14 = 0x8000000249BCE120;
        v15 = 0xD000000000000021;
      }

      else
      {
        if (one-time initialization token for sectionHeader != -1)
        {
          swift_once();
        }

        v15 = static DOCItemCollectionViewController.ElementKind.sectionHeader;
        v14 = *algn_27EF18858;
      }

      v16 = v13;
      v17 = MEMORY[0x24C1FAD20](v15, v14);

      v18 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v16 elementKind:v17 alignment:1];

      v19 = v18;
      [a1 contentInsets];
      [v19 setContentInsets_];

      [v19 setPinToVisibleBounds_];
      [v19 setZIndex_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_249BA0290;
      *(v20 + 32) = v19;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem, 0x277CFB830);
      v21 = v19;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [a1 setBoundarySupplementaryItems_];
    }
  }
}

id DOCItemCollectionViewController.collectionView.getter()
{
  [v0 loadViewIfNeeded];
  result = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView];
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DOCItemCollectionViewController.collectionViewIfLoaded.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView);
  v2 = v1;
  return v1;
}

void *DOCItemCollectionViewController.needsHeaderView.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xBD8))();
  if (result == 3)
  {
    goto LABEL_5;
  }

  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v4)
  {
    goto LABEL_38;
  }

  result = (*((*v2 & *v4) + 0x1B0))();
  if (!result)
  {
LABEL_5:
    v5 = 0;
  }

  else
  {
    v5 = [result isShared];
    result = swift_unknownObjectRelease();
  }

  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v6)
  {
    v7 = (*((*v2 & *v6) + 0x180))(result);
    if (v7)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
      if (v7)
      {
        v8 = v7;
        if ([v7 valueForKey_])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v31 = 0u;
          v32 = 0u;
        }

        v33[0] = v31;
        v33[1] = v32;
        if (*(&v32 + 1))
        {
          if ((swift_dynamicCast() & 1) != 0 && v30 == 1)
          {
            (*((*v2 & *v1) + 0xA50))(v33);
            v9 = *&v33[0];
            outlined destroy of DOCItemCollectionConfiguration(v33);
            v10 = [v9 promptText];

            v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = v12;

            v15 = HIBYTE(v13) & 0xF;
            if ((v13 & 0x2000000000000000) == 0)
            {
              v15 = v11 & 0xFFFFFFFFFFFFLL;
            }

            if (v15)
            {

              v16 = 1;
            }

            else
            {
              v16 = (*((*v2 & *v6) + 0x180))(v14);
            }

            goto LABEL_24;
          }
        }

        else
        {

          v7 = outlined destroy of CharacterSet?(v33, &_sypSgMd, &_sypSgMR);
        }
      }
    }

    (*((*v2 & *v1) + 0xA50))(v33, v7);
    v17 = *&v33[0];
    outlined destroy of DOCItemCollectionConfiguration(v33);
    v18 = [v17 promptText];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    v16 = v22 != 0;
LABEL_24:
    v23 = (*((*v2 & *v1) + 0xE78))();
    v24 = v23;
    if (v23)
    {
    }

    if ((DOCItemCollectionViewController.wantsSyncStateHeader.getter() & 1) != 0 && (v25 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView)) != 0)
    {
      v26 = *((*v2 & *v25) + 0xF0);
      v27 = v25;
      v28 = v26();

      v29 = 1;
      if (((v5 | v16) & 1) != 0 || v24 || (v28 & 1) == 0)
      {
        return (v29 & 1);
      }
    }

    else
    {
      v29 = 1;
      if (((v5 | v16) & 1) != 0 || v24)
      {
        return (v29 & 1);
      }
    }

    v29 = DOCItemCollectionViewController.wantsTipsHeader.getter();
    return (v29 & 1);
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id DOCItemCollectionViewController._headerContainerView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setLayoutMarginsRelativeArrangement_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void DOCItemCollectionViewController.promptText.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x180))())
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v8 = MEMORY[0x24C1FAD20](v4, v6);

    v9 = [v7 initWithSuiteName_];

    if (v9)
    {
      if ([v9 valueForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0u;
        v22 = 0u;
      }

      v23[0] = v21;
      v23[1] = v22;
      if (*(&v22 + 1))
      {
        if (swift_dynamicCast())
        {

          if (v20 == 1)
          {
            return;
          }
        }

        else
        {
        }
      }

      else
      {

        outlined destroy of CharacterSet?(v23, &_sypSgMd, &_sypSgMR);
      }
    }
  }

  v10 = *((*v3 & *v1) + 0xA50);
  (v10)(v23);
  v11 = *&v23[0];
  outlined destroy of DOCItemCollectionConfiguration(v23);
  v12 = [v11 promptText];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v10(&v21, v16);
    v18 = v21;
    outlined destroy of DOCItemCollectionConfiguration(&v21);
    v19 = [v18 promptText];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

void *DOCItemCollectionViewController.promptView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___promptView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___promptView);
  v3 = v2;
  if (v2 == 1)
  {
    closure #1 in DOCItemCollectionViewController.promptView.getter(v0);
    v3 = v4;
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v6 = v4;
    outlined consume of DOCProgressCollectionIndicatorView??(v5);
  }

  outlined copy of DOCProgressCollectionIndicatorView??(v2);
  return v3;
}

void closure #1 in DOCItemCollectionViewController.promptView.getter(uint64_t a1)
{
  DOCItemCollectionViewController.promptText.getter();
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v4)
    {
      v5 = v2;
      v6 = v3;
      v7 = (*((*MEMORY[0x277D85000] & *v4) + 0x1B0))();
      if (v7)
      {
        v8 = [v7 isShared];
        swift_unknownObjectRelease();
        if (v8)
        {
          v9 = 0x322E6E6F73726570;
        }

        else
        {
          v9 = 0;
        }

        if (v8)
        {
          v10 = 0xED00006C6C69662ELL;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      v11 = objc_allocWithZone(type metadata accessor for DOCPromptHeaderView());
      DOCPromptHeaderView.init(text:glyphName:)(v5, v6, v9, v10);
    }

    else
    {
      __break(1u);
    }
  }
}

void DOCItemCollectionViewController.createShareBannerView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v1)
  {
    v2 = MEMORY[0x277D85000];
    v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x1B0))();
    if (v3)
    {
      v4 = [v3 isShared];
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = [objc_allocWithZone(type metadata accessor for DOCShareBannerView()) init];
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v7 = *((*v2 & *v5) + 0x90);

        v7(partial apply for closure #1 in DOCItemCollectionViewController.createShareBannerView(), v6);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCItemCollectionViewController.createShareBannerView()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0xC70))();
    if (v6)
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      v9 = [v7 fpfs_fpItem];
      if (v9)
      {
        v10 = v9;
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v11 = *((*v5 & *static DOCCollaborationHighlightManager.shared) + 0xA8);
        v12 = static DOCCollaborationHighlightManager.shared;
        v13 = v11(v10);

        if (v13)
        {

          v14 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
          v15 = swift_unknownObjectRetain();
          specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(v15, 2, 0, 0, v14, ObjectType);
          swift_unknownObjectRelease();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for _SWCollaborationDetailViewController, 0x277CDC680);
          v16 = v14;
          v17 = _SWCollaborationDetailViewController.init(itemProvider:)();
          v18 = _DocumentManagerBundle();
          if (v18)
          {
            v19 = v18;
            v33._object = 0x8000000249BE1190;
            v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v20.value._object = 0xEB00000000656C62;
            v21._countAndFlagsBits = 0xD00000000000002CLL;
            v21._object = 0x8000000249BE1140;
            v22._object = 0x8000000249BE1170;
            v33._countAndFlagsBits = 0xD000000000000053;
            v22._countAndFlagsBits = 0xD000000000000014;
            v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v33);

            v24 = MEMORY[0x24C1FAD20](v23._countAndFlagsBits, v23._object);

            [v17 setManageButtonTitle_];

            v25 = v17;
            [v25 setModalPresentationStyle_];
            v26 = [v25 presentationController];
            if (v26)
            {
              v27 = v26;
              [v26 setDelegate_];
            }

            v28 = [v25 popoverPresentationController];

            if (v28)
            {
              [v28 setSourceView_];
            }

            v29 = [v25 popoverPresentationController];

            if (v29)
            {
              [v29 setPermittedArrowDirections_];
            }

            swift_unknownObjectWeakAssign();

            [v4 presentViewController:v25 animated:1 completion:0];
            swift_unknownObjectRelease();
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
          v30 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
          v31 = DOCItemCollectionViewController.actionContext(from:)();
          v32 = swift_unknownObjectRetain();
          specialized static UIDocumentBrowserAction.showManageShare(for:actionContext:)(v32, v31, v30, ObjectType);

          swift_unknownObjectRelease_n();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void DOCItemCollectionViewController.updateShareBannerView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView);
  if (v1)
  {
    v2 = MEMORY[0x277D85000];
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0xC70);
    v22 = v1;
    v4 = v3();
    if (v4 && (v5 = [v4 fpfs_fpItem], swift_unknownObjectRelease(), v5) && (v6 = FPItem.collaborationSenderDisplayName.getter(), v8 = v7, v5, v8))
    {
      v9 = _DocumentManagerBundle();
      if (!v9)
      {
        __break(1u);
        return;
      }

      v10 = v9;
      v26._object = 0x8000000249BE1100;
      v11._countAndFlagsBits = 0x7720646572616853;
      v11._object = 0xEE00402520687469;
      v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v12.value._object = 0xEB00000000656C62;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v26._countAndFlagsBits = 0xD00000000000003ALL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v26);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_249B9A480;
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v14 + 32) = v6;
      *(v14 + 40) = v8;
      v15 = static String.localizedStringWithFormat(_:_:)();
      v17 = v16;

      (*((*v2 & *v22) + 0xA8))(v15, v17);
    }

    else
    {
      if (v3())
      {
        ObjectType = swift_getObjectType();
        v24 = 1;
        v23 = 0;
        v19 = DOCNode.localizedSharingStatusDescription(type:options:)(&v24, &v23, ObjectType);
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      (*((*v2 & *v22) + 0xA8))(v19, v21);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateHeaderView()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v101 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v100 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = MEMORY[0x277D84F90];
  v103 = v0;
  v10 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v10) + 0x1B0))(v8);
  v96 = v5;
  if (v12)
  {
    v13 = [v12 isShared];
    swift_unknownObjectRelease();
    if (v13)
    {
      v14 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView;
      v15 = v103;
      v16 = *(v103 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView);
      v17 = v16;
      v18 = v16;
      if (v16)
      {
LABEL_7:
        *(v15 + v14) = v18;
        v20 = v16;
        v21 = v18;

        v22 = v21;
        MEMORY[0x24C1FB090]();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v23 = v105;
        DOCItemCollectionViewController.updateShareBannerView()();
        v11 = MEMORY[0x277D85000];
        goto LABEL_12;
      }

      DOCItemCollectionViewController.createShareBannerView()();
      v11 = MEMORY[0x277D85000];
      if (v19)
      {
        v18 = v19;
        v15 = v103;
        v17 = *(v103 + v14);
        goto LABEL_7;
      }
    }
  }

  v15 = v103;
  v24 = *(v103 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView);
  *(v103 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v22 = Strong;
  [(__objc2_prot *)Strong dismissViewControllerAnimated:1 completion:0];
  v23 = MEMORY[0x277D84F90];
LABEL_12:

LABEL_14:
  v26 = DOCItemCollectionViewController.promptView.getter();
  if (v26)
  {
    v27 = v26;
    MEMORY[0x24C1FB090]();
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v23 = v105;
    v15 = v103;
  }

  v28 = *(v15 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderContainerView);
  if (v28)
  {
    v29 = v28;
    MEMORY[0x24C1FB090]();
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v23 = v105;
    v15 = v103;
  }

  if (DOCItemCollectionViewController.wantsSyncStateHeader.getter())
  {
    v30 = *(v15 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView);
    if (v30)
    {
      v31 = *((*v11 & *v30) + 0xF0);
      v32 = v30;
      if (v31())
      {
      }

      else
      {
        v33 = v32;
        MEMORY[0x24C1FB090]();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v23 = v105;
        v15 = v103;
      }
    }
  }

  v34 = DOCItemCollectionViewController.wantsTipsHeader.getter();
  v98 = v2;
  v99 = v1;
  v97 = v6;
  if (v34 & 1) != 0 && ((*((*v11 & *v15) + 0x890))())
  {
    v35 = *(v15 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsManager);
    if (v35)
    {
      v36 = one-time initialization token for DocumentManager;
      v37 = v35;
      if (v36 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.DocumentManager);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2493AC000, v39, v40, "Files Family Tip, adding tipsHeaderView", v41, 2u);
        MEMORY[0x24C1FE850](v41, -1, -1);
      }

      v42 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView;
      v15 = v103;
      v43 = *(v103 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView);
      if (v43)
      {
        v44 = *(v103 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView);
      }

      else
      {
        v44 = (*((*v11 & *v37) + 0x188))();
        v43 = 0;
      }

      v45 = v43;
      v46 = v44;
      MEMORY[0x24C1FB090]();
      if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v23 = v105;
      v47 = *(v15 + v42);
      *(v15 + v42) = v46;
      v48 = v46;

      v49 = (*((*v11 & *v15) + 0xBD8))();
      v50 = *(v15 + v42);
      if (v50)
      {
        if (v49 == 3)
        {
          v51 = 16.0;
        }

        else
        {
          v51 = 0.0;
        }

        v52 = v50;
        [v52 setDirectionalLayoutMargins_];
      }
    }
  }

  v53 = DOCItemCollectionViewController._headerContainerView.getter();
  v54 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  v55 = [v53 arrangedSubviews];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v56 >> 62)
  {
    goto LABEL_70;
  }

  for (i = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      if (v23 >> 62)
      {
        if (__CocoaSet.count.getter() > 0)
        {
          goto LABEL_57;
        }
      }

      else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
      {
        goto LABEL_57;
      }
    }

    v58 = [*(v15 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView) v54[322]];
    v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v59 >> 62)
    {
      v60 = __CocoaSet.count.getter();
    }

    else
    {
      v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v60 >= 1 && v23 >> 62)
    {
      __CocoaSet.count.getter();
    }

LABEL_57:
    v61 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView;
    v62 = [*(v15 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView) v54[322]];
    v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v62) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo6UIViewC_Tt1g5(v63, v23);

    if (v62)
    {
      goto LABEL_88;
    }

    v64 = [*(v15 + v61) v54[322]];
    v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v102 = v23;
    if (v65 >> 62)
    {
      break;
    }

    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v66)
    {
      goto LABEL_73;
    }

LABEL_60:
    v67 = 0;
    v23 = v65 & 0xFFFFFFFFFFFFFF8;
    v15 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
    while (1)
    {
      if ((v65 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x24C1FC540](v67, v65);
      }

      else
      {
        if (v67 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v68 = *(v65 + 8 * v67 + 32);
      }

      v54 = v68;
      v69 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      [(__objc2_prot *)*(v103 + v61) removeArrangedSubview:v68];
      [(SEL *)v54 removeFromSuperview];

      ++v67;
      if (v69 == v66)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    ;
  }

  v66 = __CocoaSet.count.getter();
  if (v66)
  {
    goto LABEL_60;
  }

LABEL_73:

  if (v102 >> 62)
  {
    goto LABEL_85;
  }

  v70 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (j = v103; v70; j = v103)
  {
    v72 = 0;
    v73 = v102 & 0xC000000000000001;
    v74 = v102 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v73)
      {
        v75 = MEMORY[0x24C1FC540](v72, v102);
      }

      else
      {
        if (v72 >= *(v74 + 16))
        {
          goto LABEL_84;
        }

        v75 = *(v102 + 8 * v72 + 32);
      }

      v76 = v75;
      v77 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      [*(j + v61) addArrangedSubview_];

      ++v72;
      if (v77 == v70)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    v70 = __CocoaSet.count.getter();
  }

LABEL_86:
  v78 = MEMORY[0x277D85000];
  v79 = (*((*MEMORY[0x277D85000] & *j) + 0x1758))(&outlined read-only object #0 of DOCItemCollectionViewController.updateHeaderView());
  v80 = *((*v78 & *j) + 0x1010);
  v81 = (v80)(v79);
  [v81 contentOffset];
  v83 = v82;

  v84 = v83 + -1.0;
  v85 = v80();
  [v85 adjustedContentInset];
  v87 = v86;

  if (v84 + v87 == 0.0)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v88 = static OS_dispatch_queue.main.getter();
    v89 = swift_allocObject();
    *(v89 + 16) = j;
    aBlock[4] = partial apply for closure #3 in DOCItemCollectionViewController.updateHeaderView();
    aBlock[5] = v89;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_94;
    v90 = _Block_copy(aBlock);
    v91 = j;

    v92 = v100;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v93 = v96;
    v94 = v99;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v92, v93, v90);
    _Block_release(v90);

    (*(v98 + 8))(v93, v94);
    (*(v101 + 8))(v92, v97);

    return;
  }

LABEL_88:
}

void closure #3 in DOCItemCollectionViewController.updateHeaderView()(void *a1)
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *a1) + 0x1010))();
  (*((*v1 & *v2) + 0x168))();
}

void DOCItemCollectionViewController.moreActionsAlert.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCItemCollectionViewController.moreActionsAlert.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsAlert;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

void *DOCItemCollectionViewController.moreActionsBarButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsBarButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.moreActionsBarButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsBarButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.enumerationProperties.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationProperties);
  v2 = v1;
  return v1;
}

void *DOCItemCollectionViewController.enumerationIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationIdentifier);
  v2 = v1;
  return v1;
}

uint64_t DOCItemCollectionViewController.isSpringLoading.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSpringLoading;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.isSpringLoading.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSpringLoading;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path setter for DOCItemCollectionViewController.sortingDescriptor : DOCItemCollectionViewController(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a1 + 24);
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v9 = v5;
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x1168);
  outlined copy of DOCItemSortDescriptor?(v8[0], v2, v3);
  return v6(v8);
}

void DOCItemCollectionViewController.sortingDescriptor.didset(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v2)
  {
    return;
  }

  v3 = v1;
  v4 = MEMORY[0x277D85000];
  if (*(a1 + 8))
  {
    v5 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
    swift_beginAccess();
    v6 = *(v5 + 1);
    if (v6)
    {
    }

    v7 = v2;
    v8 = *((*v4 & *v2) + 0x220);
    v9 = v7;
    v10 = v7;
    v11 = v8();
    if (v6)
    {
      v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo16NSSortDescriptorC_Tt1g5(v6, v11);

      v2 = v9;
      if (v12)
      {

        return;
      }
    }

    else
    {

      v2 = v9;
    }
  }

  else
  {
    v13 = v2;
  }

  v14 = v3 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  swift_beginAccess();
  v15 = *v14;
  v16 = *(v14 + 2);
  v17 = v14[24];
  v81 = v2;
  if (!*(v14 + 1))
  {
    v82 = *v14;
    v83 = 0;
    v84 = v16;
    v85 = v17;
    (*((*v4 & *v2) + 0x228))(&v82);
    goto LABEL_60;
  }

  v79 = v14[24];
  v18 = *((*v4 & *v3) + 0x1198);
  v78 = *(v14 + 1);

  v80 = v16;

  v18(0);
  v19.n128_f64[0] = DOCItemCollectionViewController.updateViewOptionsViewModel()();
  v20 = (*((*v4 & *v3) + 0xA68))(v19);
  v21 = (*((*v4 & *v20) + 0x1D0))();

  v22 = Array<A>.displayableModes.getter(v21);

  v76 = v22;
  v77 = v15;
  v23 = byte_249BAB83A[v15];
  v24 = *(v22 + 16);
  v25 = (v22 + 32);
  while (1)
  {
    if (!v24)
    {

      outlined consume of DOCItemSortDescriptor?(v77, v78, v80);
      v37 = *v14;
      v38 = *(v14 + 1);
      v39 = *(v14 + 2);
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      v14[24] = 0;
      outlined consume of DOCItemSortDescriptor?(v37, v38, v39);
      return;
    }

    v27 = *v25;
    if (v27 <= 2)
    {
      v30 = 1936154996;
      if (v27 == 1)
      {
        v30 = 1701667182;
      }

      if (*v25)
      {
        v28 = v30;
      }

      else
      {
        v28 = 1702125924;
      }

      v29 = 0xE400000000000000;
      if (v23 > 2)
      {
LABEL_30:
        v31 = 0x7942646572616873;
        if (v23 != 5)
        {
          v31 = 0x745364756F6C6369;
        }

        v32 = 0xEC00000073757461;
        if (v23 == 5)
        {
          v32 = 0xE800000000000000;
        }

        v33 = 1702521203;
        if (v23 != 3)
        {
          v33 = 1684957547;
        }

        if (v23 <= 4)
        {
          v34 = v33;
        }

        else
        {
          v34 = v31;
        }

        if (v23 <= 4)
        {
          v35 = 0xE400000000000000;
        }

        else
        {
          v35 = v32;
        }

        if (v28 != v34)
        {
          goto LABEL_12;
        }

        goto LABEL_52;
      }
    }

    else if (*v25 > 4u)
    {
      if (v27 == 5)
      {
        v29 = 0xE800000000000000;
        v28 = 0x7942646572616873;
        if (v23 > 2)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v28 = 0x745364756F6C6369;
        v29 = 0xEC00000073757461;
        if (v23 > 2)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (v27 == 3)
      {
        v28 = 1702521203;
      }

      else
      {
        v28 = 1684957547;
      }

      v29 = 0xE400000000000000;
      if (v23 > 2)
      {
        goto LABEL_30;
      }
    }

    if (v23)
    {
      break;
    }

    v35 = 0xE400000000000000;
    if (v28 == 1702125924)
    {
      goto LABEL_52;
    }

LABEL_12:
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v25;
    --v24;
    if (v26)
    {
      goto LABEL_56;
    }
  }

  if (v23 == 1)
  {
    v36 = 1701667182;
  }

  else
  {
    v36 = 1936154996;
  }

  v35 = 0xE400000000000000;
  if (v28 != v36)
  {
    goto LABEL_12;
  }

LABEL_52:
  if (v29 != v35)
  {
    goto LABEL_12;
  }

LABEL_56:

  v82 = v77;
  v83 = v78;
  v2 = v81;
  v84 = v80;
  v85 = v79 & 1;
  (*((*v4 & *v81) + 0x228))(&v82);
  v40.n128_f64[0] = outlined consume of DOCItemSortDescriptor?(v82, v83, v84);
  v41 = (*((*v4 & *v81) + 0x258))(v40);
  if (v41 >> 62)
  {
    v55 = __CocoaSet.count.getter();

    if (!v55)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v42)
    {
LABEL_58:
      if (((*((*v4 & *v3) + 0xC58))(v43) & 1) == 0)
      {
        specialized DOCItemCollectionViewController.updateOverlay(animated:)();
      }
    }
  }

LABEL_60:
  if (![v3 isViewLoaded])
  {

    return;
  }

  v44 = DOCItemCollectionViewController.visibleSectionHeaders.getter();
  v45 = v44;
  if (v44 >> 62)
  {
    v46 = __CocoaSet.count.getter();
    if (!v46)
    {
      goto LABEL_73;
    }

LABEL_63:
    if (v46 >= 1)
    {
      v47 = 0;
      do
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x24C1FC540](v47, v45);
        }

        else
        {
          v48 = *(v45 + 8 * v47 + 32);
        }

        v49 = v48;
        ++v47;
        v50 = *(v14 + 1);
        v51 = *(v14 + 2);
        v52 = *v4 & *v48;
        v53 = v14[24];
        v82 = *v14;
        v83 = v50;
        v84 = v51;
        v85 = v53;
        v54 = *(v52 + 816);
        outlined copy of DOCItemSortDescriptor?(v82, v50, v51);
        v54(&v82);
      }

      while (v46 != v47);
      goto LABEL_73;
    }

    __break(1u);
LABEL_90:
    __break(1u);
    return;
  }

  v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v46)
  {
    goto LABEL_63;
  }

LABEL_73:

  v56 = DOCItemCollectionViewController.headerRowView()();
  if (v56)
  {
    v57 = v56;
    v58 = *(v14 + 1);
    v59 = *(v14 + 2);
    v60 = *v4 & *v56;
    v61 = v14[24];
    v82 = *v14;
    v83 = v58;
    v84 = v59;
    v85 = v61;
    v62 = *(v60 + 792);
    outlined copy of DOCItemSortDescriptor?(v82, v58, v59);
    v62(&v82);
  }

  DOCItemCollectionViewController.preparedCells.getter();
  v64 = v63;
  if (v63 >> 62)
  {
    v65 = __CocoaSet.count.getter();
    if (!v65)
    {
      goto LABEL_87;
    }

LABEL_77:
    if (v65 >= 1)
    {
      for (i = 0; i != v65; ++i)
      {
        if ((v64 & 0xC000000000000001) != 0)
        {
          v73 = MEMORY[0x24C1FC540](i, v64);
        }

        else
        {
          v73 = *(v64 + 8 * i + 32);
        }

        v74 = v73;
        v75 = (*((*v4 & *v73) + 0x208))();
        if (v75)
        {
          v67 = v75;
          v68 = *(v14 + 1);
          v69 = *(v14 + 2);
          v70 = *v4 & *v75;
          v71 = v14[24];
          v82 = *v14;
          v83 = v68;
          v84 = v69;
          v85 = v71;
          v72 = *(v70 + 1008);
          outlined copy of DOCItemSortDescriptor?(v82, v68, v69);
          v72(&v82);
        }

        else
        {
        }
      }

      goto LABEL_87;
    }

    goto LABEL_90;
  }

  v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v65)
  {
    goto LABEL_77;
  }

LABEL_87:
}

void DOCItemCollectionViewController.sortingDescriptor.getter(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v3 + 24);
  outlined copy of DOCItemSortDescriptor?(v4, v5, v6);
}

double DOCItemCollectionViewController.sortingDescriptor.setter(__int128 *a1)
{
  v9 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  *v4 = v9;
  *(v4 + 16) = v2;
  LOBYTE(v2) = *(v4 + 24);
  *(v4 + 24) = v3;
  outlined copy of DOCItemSortDescriptor?(v5, v6, v7);
  outlined consume of DOCItemSortDescriptor?(v5, v6, v7);
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  v11 = v2;
  DOCItemCollectionViewController.sortingDescriptor.didset(v10);
  return outlined consume of DOCItemSortDescriptor?(v5, v6, v7);
}

void (*DOCItemCollectionViewController.sortingDescriptor.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *v4 = *v6;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  outlined copy of DOCItemSortDescriptor?(v7, v8, v9);
  return DOCItemCollectionViewController.sortingDescriptor.modify;
}

void DOCItemCollectionViewController.sortingDescriptor.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[7] + (*a1)[8];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v3 + 24);
  v10 = *v4;
  v9 = *(v4 + 8);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  if (a2)
  {
    outlined copy of DOCItemSortDescriptor?(v5, v6, v7);
    outlined copy of DOCItemSortDescriptor?(v10, v9, v11);
    outlined consume of DOCItemSortDescriptor?(v10, v9, v11);
    v16 = v10;
    v17 = v9;
    v18 = v11;
    v19 = v12;
    DOCItemCollectionViewController.sortingDescriptor.didset(&v16);
    outlined consume of DOCItemSortDescriptor?(v10, v9, v11);
    v13 = *v3;
    v14 = v3[1];
    v15 = v3[2];
  }

  else
  {
    outlined copy of DOCItemSortDescriptor?(v10, v9, v11);
    outlined consume of DOCItemSortDescriptor?(v10, v9, v11);
    v16 = v10;
    v17 = v9;
    v18 = v11;
    v19 = v12;
    DOCItemCollectionViewController.sortingDescriptor.didset(&v16);
    v13 = v10;
    v14 = v9;
    v15 = v11;
  }

  outlined consume of DOCItemSortDescriptor?(v13, v14, v15);

  free(v3);
}

void DOCItemCollectionViewController.performingBatchUpdates.didset()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.UI);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    v7 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates;
    swift_beginAccess();
    *(v5 + 4) = *(v2 + v7);

    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "performingBatchUpdates = %ld in %@", v5, 0x16u);
    outlined destroy of CharacterSet?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  else
  {
  }

  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates;
  v10 = swift_beginAccess();
  if (!*(v2 + v9) && *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) == 1)
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x1820))(v10);
  }
}

uint64_t DOCItemCollectionViewController.performingBatchUpdates.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.performingBatchUpdates.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates;
  swift_beginAccess();
  *(v1 + v3) = a1;
  DOCItemCollectionViewController.performingBatchUpdates.didset();
}

void (*DOCItemCollectionViewController.performingBatchUpdates.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemCollectionViewController.performingBatchUpdates.modify;
}

void DOCItemCollectionViewController.performingBatchUpdates.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCItemCollectionViewController.performingBatchUpdates.didset();
  }
}

uint64_t DOCItemCollectionViewController.fallbackDisplayMode(for:)(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xA68))();
  v5 = (*((*v3 & *v4) + 0x228))();

  v6 = *(v5 + 16);
  v7 = 32;
  while (v6)
  {
    v8 = *(v5 + v7);
    v7 += 8;
    --v6;
    if (v8 == a1)
    {
      goto LABEL_6;
    }
  }

  a1 = 2;
LABEL_6:

  return a1;
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateShowsCreateButton(reload:)(Swift::Bool_optional reload)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__showsCreateButton;
    v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__showsCreateButton);
    v8 = [v1 effectiveAppearance];
    if (v8 && (v9 = v8, v10 = [v8 showsCreateButton], v9, v10) && (objc_msgSend(*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration), sel_isPickerUI) & 1) == 0 && (v11 = *MEMORY[0x277CC6028], __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR), inited = swift_initStackObject(), *(inited + 16) = xmmword_249BA0290, *(inited + 32) = v5, swift_unknownObjectRetain(), specialized static DOCActionManager.canPerform(_:on:)(v11, inited), LOBYTE(v11) = v13, swift_setDeallocating(), swift_arrayDestroy(), (v11 & 1) != 0) && (objc_msgSend(v5, sel_isTrashed) & 1) == 0 && (*((*v3 & *v1) + 0xBD8))() != 3)
    {
      v14 = (*((*v3 & *v1) + 0xF10))() ^ 1;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 & 1;
    *(v1 + v6) = v15;
    if (reload.value == 2)
    {
      if (v7 == v15)
      {
        goto LABEL_14;
      }
    }

    else if (!reload.value)
    {
LABEL_14:
      swift_unknownObjectRelease();
      return;
    }

    (*((*v3 & *v1) + 0x1820))();
    goto LABEL_14;
  }
}

void *DOCItemCollectionViewController.showsCreateButton.getter()
{
  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (result)
  {
    if ([result isGathering])
    {
      return 0;
    }

    else
    {
      return *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__showsCreateButton);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double key path setter for DOCItemCollectionViewController.collectionViewLayoutTraits : DOCItemCollectionViewController(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewLayoutTraits;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

uint64_t DOCItemCollectionViewController.gatheringThumbnails.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringThumbnails;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.gatheringThumbnails.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringThumbnails;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.lastPreviewedFPItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastPreviewedFPItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.lastPreviewedFPItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastPreviewedFPItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.currentDragSession.getter(uint64_t *a1, uint64_t (*a2)(void, __n128))
{
  v4 = *a1;
  swift_beginAccess();
  return (a2)(*(v2 + v4));
}

uint64_t DOCItemCollectionViewController.currentDropSession.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t DOCItemCollectionViewController.selectedChildNode.getter()
{
  v1 = MEMORY[0x277D85000];
  if (*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() != 3 || ([v0 isEditing])
  {
    return 0;
  }

  v3 = *((*v1 & *v0) + 0x1250);

  return v3();
}

uint64_t DOCItemCollectionViewController.selectedChildNode.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8, v9);
  v12 = &v31 - v11;
  v13 = MEMORY[0x277D85000];
  v14 = *((*MEMORY[0x277D85000] & *v1) + 0x1250);
  v15 = v14(v10);
  v16 = v15;
  if (a1)
  {
    if (v15)
    {
      swift_getObjectType();
      v17 = DOCNode.isEqualTo(node:)(a1);
      swift_unknownObjectRelease();
      if (v17)
      {
LABEL_10:

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  v18 = (v14)();
  v19 = *((*v13 & *v2) + 0x1258);
  v20 = swift_unknownObjectRetain();
  v21 = v19(v20);
  result = (*((*v13 & *v2) + 0xBD8))(v21);
  if (result != 3)
  {
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (a1)
  {
    (*((*v13 & *v2) + 0x16D8))(a1, 0, 1);
    goto LABEL_9;
  }

  if (!v18)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249BA0290;
  *(v23 + 32) = v18;
  v24 = *((*v13 & *v2) + 0xDB0);
  swift_unknownObjectRetain_n();
  v25 = v24(v23);

  if (*(v25 + 16))
  {
    v26 = v32;
    (*(v32 + 16))(v7, v25 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v4);

    v27 = (*(v26 + 32))(v12, v7, v4);
    v28 = (*((*v13 & *v2) + 0x1018))(v27);
    if (v28)
    {
      v29 = v28;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v29 deselectItemAtIndexPath:isa animated:0];
      swift_unknownObjectRelease_n();

      return (*(v26 + 8))(v12, v4);
    }

    (*(v26 + 8))(v12, v4);
  }

  else
  {
  }

  return swift_unknownObjectRelease_n();
}

uint64_t (*DOCItemCollectionViewController.selectedChildNode.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xBD8))() == 3 && ([v1 isEditing] & 1) == 0)
  {
    v4 = (*((*v3 & *v1) + 0x1250))();
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return DOCItemCollectionViewController.selectedChildNode.modify;
}

uint64_t DOCItemCollectionViewController.selectedChildNode.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return DOCItemCollectionViewController.selectedChildNode.setter(*a1);
  }

  v2 = swift_unknownObjectRetain();
  DOCItemCollectionViewController.selectedChildNode.setter(v2);

  return swift_unknownObjectRelease();
}

uint64_t DOCItemCollectionViewController.selectedIndexPathWasAlreadySelected.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_selectedIndexPathWasAlreadySelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.selectedIndexPathWasAlreadySelected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_selectedIndexPathWasAlreadySelected;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL DOCItemCollectionViewController.configurationShouldAllowCollectionViewMultipleSelection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if ([v1 isPopoverOrWidget])
  {
    return 0;
  }

  v2 = [v1 isPickerUI];
  v3 = MEMORY[0x277D85000];
  if ((v2 & 1) != 0 && ((*((*MEMORY[0x277D85000] & *v0) + 0x130))() & 1) == 0)
  {
    return 0;
  }

  v4 = (*((*v3 & *v0) + 0xA68))();
  v5 = [v4 identifier];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  v12 = [v0 traitCollection];
  v13 = [v12 horizontalSizeClass];

  return v13 != 1;
}

void DOCItemCollectionViewController.applyCommonConfiguration()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xA68);
  v4 = v3();
  (*((*v2 & *v4) + 0x1B8))(v74);

  (*((*v2 & *v1) + 0xA50))((v74 + 1));
  outlined destroy of DOCItemCollectionConfiguration(v74 + 1);
  if (v75 != 10)
  {
    v24 = 0;
    LOBYTE(v74[0]) = v75;
    goto LABEL_18;
  }

  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if (![v5 showCollectionControls] || (v6 = objc_msgSend(objc_opt_self(), sel_sharedStore), v7 = objc_msgSend(v6, sel_interfaceStateForConfiguration_, v5), v6, !v7))
  {
LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v8 = [v7 sortingMode];
  if (!v8)
  {
LABEL_16:

    goto LABEL_17;
  }

  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v10 + 16))
  {

LABEL_15:

    goto LABEL_16;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_15;
  }

  outlined init with copy of Any(*(v10 + 56) + 32 * v13, &v68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = v71;
  v16 = v72;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v10 + 16))
  {

    goto LABEL_15;
  }

  v67._countAndFlagsBits = v17;
  v67._object = v16;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {

    goto LABEL_15;
  }

  outlined init with copy of Any(*(v10 + 56) + 32 * v20, &v68);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = v71;
  DOCItemSortMode.init(rawValue:)(v67);

  if (v68 == 10)
  {
    goto LABEL_17;
  }

  LOBYTE(v74[0]) = v68;
  v24 = v23;
LABEL_18:
  LOBYTE(v71) = v74[0];
  DOCItemSortDescriptor.init(type:isReversed:)(&v71, v24, &v68);
  v71 = v68;
  v73 = v70;
  v25 = *v2 & *v1;
  v72 = v69;
  v26 = (*(v25 + 4456))(&v71);
  v27 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (!v27)
  {
    __break(1u);
    return;
  }

  v28 = (*((*v2 & *v27) + 0x1A8))(v26);
  if (v28)
  {
    v29 = v28;
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      v68 = v30;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      (*((*v2 & *v1) + 0xDF0))(v31);
    }
  }

  v32 = v3();
  v68 = v32;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v34 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sourceEjectableObservation);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sourceEjectableObservation) = v33;

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCUserInterfaceStateStore, 0x277D05F20);
  v35 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v36 = v3();
  v37 = [v36 identifier];

  v38 = v3();
  (*((*v2 & *v38) + 0x220))(&v71);

  static DOCUserInterfaceStateStore.retrieveDefaultGroupingBehavior(configuration:sourceIdentifier:fallback:)(v35, v37, &v71, &v68);
  v39 = v68;
  if (v68 == 10)
  {
    goto LABEL_89;
  }

  v40 = v3();
  v41 = (*((*v2 & *v40) + 0x218))();

  v42 = *(v41 + 16);
  v43 = (v41 + 32);
  while (1)
  {
    if (!v42)
    {

      v60 = (v3)(v59);
      v2 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v60) + 0x220))(&v68);

      v61 = (*((*v2 & *v1) + 0xCF0))(&v68);
      goto LABEL_90;
    }

    v45 = *v43;
    if (v45 > 4)
    {
      if (*v43 <= 6u)
      {
        if (v45 == 5)
        {
          v49 = 1684957547;
        }

        else
        {
          v49 = 0x7942646572616873;
        }

        if (v45 == 5)
        {
          v50 = 0xE400000000000000;
        }

        else
        {
          v50 = 0xE800000000000000;
        }

        if (v39 <= 4)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v45 == 7)
        {
          v49 = 0x6E6F697461657263;
          v54 = 1702125892;
        }

        else
        {
          if (v45 == 8)
          {
            v49 = 0x6564644165746164;
            v50 = 0xE900000000000064;
            if (v39 <= 4)
            {
              goto LABEL_43;
            }

            goto LABEL_68;
          }

          v49 = 0x745364756F6C6369;
          v54 = 1937077345;
        }

        v50 = v54 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v39 <= 4)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      v46 = 1936154996;
      if (v45 != 3)
      {
        v46 = 1702521203;
      }

      if (v45 == 2)
      {
        v46 = 1701667182;
      }

      v47 = 0xD000000000000010;
      if (*v43)
      {
        v47 = 0x646573557473616CLL;
      }

      v48 = 0xEC00000065746144;
      if (!*v43)
      {
        v48 = 0x8000000249BC5DF0;
      }

      if (*v43 <= 1u)
      {
        v49 = v47;
      }

      else
      {
        v49 = v46;
      }

      if (*v43 <= 1u)
      {
        v50 = v48;
      }

      else
      {
        v50 = 0xE400000000000000;
      }

      if (v39 <= 4)
      {
LABEL_43:
        if (v39 <= 1)
        {
          v52 = 0x646573557473616CLL;
          v53 = 0xEC00000065746144;
          if (!v39)
          {
            v52 = 0xD000000000000010;
            v53 = 0x8000000249BC5DF0;
          }
        }

        else
        {
          v51 = 1936154996;
          if (v39 != 3)
          {
            v51 = 1702521203;
          }

          if (v39 == 2)
          {
            v52 = 1701667182;
          }

          else
          {
            v52 = v51;
          }

          v53 = 0xE400000000000000;
        }

        goto LABEL_84;
      }
    }

LABEL_68:
    v55 = 0x745364756F6C6369;
    if (v39 == 8)
    {
      v55 = 0x6564644165746164;
    }

    v56 = 0xEC00000073757461;
    if (v39 == 8)
    {
      v56 = 0xE900000000000064;
    }

    if (v39 == 7)
    {
      v55 = 0x6E6F697461657263;
      v56 = 0xEC00000065746144;
    }

    v57 = 0x7942646572616873;
    if (v39 == 5)
    {
      v57 = 1684957547;
    }

    v58 = 0xE800000000000000;
    if (v39 == 5)
    {
      v58 = 0xE400000000000000;
    }

    v52 = v39 <= 6 ? v57 : v55;
    v53 = v39 <= 6 ? v58 : v56;
LABEL_84:
    if (v49 == v52 && v50 == v53)
    {
      break;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v43;
    --v42;
    if (v44)
    {
      goto LABEL_88;
    }
  }

LABEL_88:

  v2 = MEMORY[0x277D85000];
LABEL_89:
  LOBYTE(v68) = v39;
  v61 = (*((*v2 & *v1) + 0xCF0))(&v68);
LABEL_90:
  v62 = (*((*v2 & *v27) + 0x258))(v61);
  v63 = (*((*v2 & *v1) + 0xCC0))(v62);
  v64 = (*((*v2 & *v27) + 0x1A8))(v63);
  if (v64)
  {
    v65 = v64;
    objc_opt_self();
    v66 = swift_dynamicCastObjCClass();

    if (v66)
    {
      DOCItemCollectionViewController.updateItemCollectionFilteringPredicate()();
    }
  }
}

double closure #1 in DOCItemCollectionViewController.applyCommonConfiguration()(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = v4;

  v6 = v4;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in DOCItemCollectionViewController.applyCommonConfiguration()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DOCItemCollectionViewController.itemsOriginDidChange(_:)([a2 itemsOrigin]);
  }
}

void closure #2 in DOCItemCollectionViewController.applyCommonConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      (*((*MEMORY[0x277D85000] & *v6) + 0x1D8))();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t DOCItemCollectionViewController.title.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xA78))();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = [v2 displayName];
  swift_unknownObjectRelease();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 0xE000000000000000;
  }

  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

LABEL_8:
    v8 = (*((*v1 & *v0) + 0xA68))(v2);
    v9 = [v8 displayName];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v4;
}

void sub_2496A6318()
{
}

Swift::Void __swiftcall DOCItemCollectionViewController.saveRestorableSettings(force:)(Swift::Bool force)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMd, &_s26DocumentManagerExecutables18RestorableSettings33_45098A9DF3FF02797EF1E06F74668D65LLVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v135 = &v115 - v6;
  v7 = type metadata accessor for RestorableSettings(0);
  v134 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v132 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v115 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v115 - v16;
  v133 = type metadata accessor for ScrollPositionInfo(0);
  MEMORY[0x28223BE20](v133, v18);
  v20 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVSgMR);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v136 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v115 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = (&v115 - v30);
  v32 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  v138 = *(v32 - 8);
  v139 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v137 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.n128_f64[0] = MEMORY[0x28223BE20](v35, v36);
  v39 = &v115 - v38;
  if ((*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticSaveRestorableSettingsAllowed) & 1) == 0 && !force)
  {
    return;
  }

  v40 = MEMORY[0x277D85000];
  v41 = (*((*MEMORY[0x277D85000] & *v1) + 0x1018))(v37);
  if (!v41)
  {
    return;
  }

  v131 = v41;
  v125 = (*((*v40 & *v1) + 0xBF0))();
  v130 = v42;
  if (v42 == 0xFF)
  {
    v44 = v131;

    return;
  }

  DOCItemCollectionViewController.restorableOffsetForVerticallyPositioningVisibleCells()(v31);
  v43 = *(v138 + 48);
  v124 = v138 + 48;
  v123 = v43;
  if (v43(v31, 1, v139) == 1)
  {

    outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v125, v130);
    outlined destroy of CharacterSet?(v31, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVSgMR);
    return;
  }

  v117 = v13;
  outlined init with take of ScrollPositionInfo.ItemOffset(v31, v39, type metadata accessor for ScrollPositionInfo.ItemOffset);
  [v131 contentOffset];
  v46 = v45;
  (*((*v40 & *v131) + 0x138))();
  v48 = v47;
  v49 = DOCItemCollectionViewController.visibleCellsBySection.getter();
  v118 = v17;
  v121 = v39;
  if (!v49)
  {
    v55 = MEMORY[0x277D84F98];
LABEL_41:
    outlined init with copy of ScrollPositionInfo.ItemOffset(v39, v20, type metadata accessor for ScrollPositionInfo.ItemOffset);
    v90 = v133;
    v20[*(v133 + 20)] = v46 != v48;
    *&v20[*(v90 + 24)] = v55;
    v139 = v55;

    v91 = specialized static RestorableSearchInfo.restorableInfo(for:)(v2);
    v93 = v92;
    v95 = v94;
    v97 = v96;
    outlined init with copy of ScrollPositionInfo.ItemOffset(v20, v17, type metadata accessor for ScrollPositionInfo);
    v98 = &v17[*(v7 + 20)];
    *v98 = v91;
    v98[1] = v93;
    v98[2] = v95;
    v98[3] = v97;
    LOBYTE(v27) = v130;
    if (one-time initialization token for restorableSettingsCache == -1)
    {
LABEL_42:
      v99 = v135;
      outlined init with copy of ScrollPositionInfo.ItemOffset(v17, v135, type metadata accessor for RestorableSettings);
      (*(v134 + 56))(v99, 0, 1, v7);
      swift_beginAccess();
      v100 = v125;
      outlined copy of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v125, v27);
      specialized Dictionary.subscript.setter(v99, v100, v27 & 1);
      swift_endAccess();
      v101 = v117;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      __swift_project_value_buffer(v102, static Logger.UI);
      outlined init with copy of ScrollPositionInfo.ItemOffset(v17, v101, type metadata accessor for RestorableSettings);
      outlined copy of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v100, v27);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v100, v27);
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v140[0] = v106;
        *v105 = 136315394;
        v107 = DOCItemCollectionViewController.RestorableSettingsCacheKey.description.getter(v100, v27 & 1);
        v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, v140);

        *(v105 + 4) = v109;
        *(v105 + 12) = 2080;
        outlined init with copy of ScrollPositionInfo.ItemOffset(v101, v132, type metadata accessor for RestorableSettings);
        v110 = String.init<A>(describing:)();
        v112 = v111;
        outlined destroy of RestorableSettings(v101, type metadata accessor for RestorableSettings);
        v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, v140);

        *(v105 + 14) = v113;
        _os_log_impl(&dword_2493AC000, v103, v104, "[Restorable Settings] Stored settings for %s; info: %s", v105, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v106, -1, -1);
        MEMORY[0x24C1FE850](v105, -1, -1);

        outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v100, v130);
        v114 = v118;
      }

      else
      {

        outlined consume of DOCItemCollectionViewController.RestorableSettingsCacheKey?(v100, v27);
        outlined destroy of RestorableSettings(v101, type metadata accessor for RestorableSettings);
        v114 = v17;
      }

      outlined destroy of RestorableSettings(v114, type metadata accessor for RestorableSettings);
      outlined destroy of RestorableSettings(v20, type metadata accessor for ScrollPositionInfo);
      outlined destroy of RestorableSettings(v121, type metadata accessor for ScrollPositionInfo.ItemOffset);

      return;
    }

LABEL_51:
    swift_once();
    goto LABEL_42;
  }

  v50 = v49 + 64;
  v51 = 1 << *(v49 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v49 + 64);
  v17 = ((v51 + 63) >> 6);
  v116 = (v138 + 56);
  v122 = v49;

  v54 = 0;
  v55 = MEMORY[0x277D84F98];
  v120 = v7;
  v119 = v20;
  if (v53)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_18:
    v60 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v60 >= v17)
    {

      v17 = v118;
      v39 = v121;
      goto LABEL_41;
    }

    v53 = *(v50 + 8 * v60);
    ++v54;
  }

  while (!v53);
  v59 = v55;
  v54 = v60;
  while (2)
  {
    v61 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v62 = v61 | (v54 << 6);
    v63 = *(v122 + 56);
    v64 = *(v122 + 48) + 40 * v62;
    v65 = *(v64 + 32);
    v66 = *(v64 + 16);
    v141 = *v64;
    v142 = v66;
    v143 = v65;
    v129 = *(v64 + 8);
    v68 = *(v64 + 24);
    v67 = *(v64 + 32);
    v128 = v68;
    v127 = v67;
    v69 = *(v63 + 8 * v62);
    outlined init with copy of DOCCollectionSection(&v141, v140);
    outlined init with copy of DOCCollectionSection(&v141, v140);

    v126 = v69;
    DOCItemCollectionViewController.restorableItemOffset(forHorizontallyScrollableSection:visibleCells:)(v69, v27);
    if (v123(v27, 1, v139) == 1)
    {
      outlined destroy of CharacterSet?(v27, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVSgMR);
      v55 = v59;
      v70 = specialized __RawDictionaryStorage.find<A>(_:)(&v141);
      if (v71)
      {
        v72 = v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v140[0] = v55;
        v74 = v55;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v74 = v140[0];
        }

        v55 = v74;

        v58 = v136;
        outlined init with take of ScrollPositionInfo.ItemOffset(*(v74 + 56) + *(v138 + 72) * v72, v136, type metadata accessor for ScrollPositionInfo.ItemOffset);
        specialized _NativeDictionary._delete(at:)(v72, v74);
        v57 = 0;
        v56 = v120;
        v20 = v119;
      }

      else
      {
        v56 = v7;
        v57 = 1;
        v58 = v136;
      }

      (*v116)(v58, v57, 1, v139);
      outlined destroy of DOCCollectionSection(&v141);
      outlined destroy of CharacterSet?(v58, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVSgMd, &_s26DocumentManagerExecutables18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVSgMR);

      v7 = v56;
      if (!v53)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    outlined init with take of ScrollPositionInfo.ItemOffset(v27, v137, type metadata accessor for ScrollPositionInfo.ItemOffset);
    v75 = v59;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v140[0] = v59;
    v77 = specialized __RawDictionaryStorage.find<A>(_:)(&v141);
    v78 = *(v75 + 16);
    v79 = (v76 & 1) == 0;
    v80 = v78 + v79;
    if (__OFADD__(v78, v79))
    {
      goto LABEL_50;
    }

    v81 = v76;
    if (*(v75 + 24) >= v80)
    {
      if ((v7 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v80, v7);
      v82 = specialized __RawDictionaryStorage.find<A>(_:)(&v141);
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_53;
      }

      v77 = v82;
    }

    v7 = v120;
    v55 = v140[0];
    if (v81)
    {
      outlined assign with take of ScrollPositionInfo.ItemOffset(v137, *(v140[0] + 56) + *(v138 + 72) * v77);
      outlined destroy of DOCCollectionSection(&v141);
      goto LABEL_37;
    }

    *(v140[0] + 8 * (v77 >> 6) + 64) |= 1 << v77;
    v84 = v55[6] + 40 * v77;
    v85 = v141;
    v86 = v142;
    *(v84 + 32) = v143;
    *v84 = v85;
    *(v84 + 16) = v86;
    outlined init with take of ScrollPositionInfo.ItemOffset(v137, v55[7] + *(v138 + 72) * v77, type metadata accessor for ScrollPositionInfo.ItemOffset);
    v87 = v55[2];
    v88 = __OFADD__(v87, 1);
    v89 = v87 + 1;
    if (!v88)
    {
      v55[2] = v89;
LABEL_37:
      v20 = v119;

      if (!v53)
      {
        goto LABEL_18;
      }

LABEL_17:
      v59 = v55;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_53:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}