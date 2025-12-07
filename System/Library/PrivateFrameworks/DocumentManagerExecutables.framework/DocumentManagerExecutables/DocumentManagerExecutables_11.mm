uint64_t DOCHierarchyController.preventImmediateChangeRequests(reason:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchTime();
  v11 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.UI);
  v20 = v2;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_2493AC000, v21, v22, "Suspending work (locationChangePreparationQueue) in hierarchy controller %@", v23, 0xCu);
    outlined destroy of CharacterSet?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v24, -1, -1);
    MEMORY[0x24C1FE850](v23, -1, -1);
  }

  type metadata accessor for DOCHierarchyController.PreventChangeAssertion(0);
  v26 = swift_allocObject();
  UUID.init()();
  v27 = OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_active;
  *(v26 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_wasTimeoutAutoDeactivated) = 0;
  v28 = (v26 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason);
  *v28 = a1;
  v28[1] = a2;
  *(v26 + v27) = 1;
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_preventImmediateChangeAssertions;
  swift_beginAccess();

  MEMORY[0x24C1FB090](v30);
  if (*((*(v20 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  dispatch_suspend(*(v20 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locationChangePreparationQueue));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v31 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v41 = v18;
  v42 = *(v11 + 8);
  v42(v14, v49);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v26;
  aBlock[4] = partial apply for closure #1 in DOCHierarchyController.preventImmediateChangeRequests(reason:);
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_883;
  v34 = _Block_copy(aBlock);

  v35 = v43;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v36 = v44;
  v37 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = v41;
  MEMORY[0x24C1FB940](v41, v35, v36, v34);
  _Block_release(v34);

  (*(v47 + 8))(v36, v37);
  (*(v45 + 8))(v35, v46);
  v42(v38, v49);
  return v26;
}

void DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_wasTimeoutAutoDeactivated;
  v6 = *(a1 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_wasTimeoutAutoDeactivated);
  v7 = OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_active;
  v8 = *(a1 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_active);

  v9 = specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(v8, v6, v6, a1);

  if (v9)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.UI);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_2493AC000, v12, v13, "Resuming work (locationChangePreparationQueue) in hierarchy controller %@", v14, 0xCu);
      outlined destroy of CharacterSet?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v15, -1, -1);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    *(a1 + v7) = 0;
    *(a1 + v5) = a2 & 1;
    v17 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_preventImmediateChangeAssertions;
    swift_beginAccess();

    v18 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v11[v17], a1);

    v20 = *&v11[v17];
    if (v20 >> 62)
    {
      v21 = __CocoaSet.count.getter();
      if (v21 >= v18)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21 >= v18)
      {
LABEL_8:
        specialized Array.replaceSubrange<A>(_:with:)(v18, v19, v21);
        swift_endAccess();
        dispatch_resume(*&v11[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locationChangePreparationQueue]);
        return;
      }
    }

    __break(1u);
    swift_endAccess();
    __break(1u);
  }
}

void closure #1 in DOCHierarchyController.loadAllParentsHiddenByEffectiveRootLocation(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (!a1)
  {
    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(a3, 0);
    a4(0);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (a9)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v20 = a1;
      v21 = swift_dynamicCastClass();
      if (!v21)
      {
        swift_unknownObjectRelease();
        v21 = MEMORY[0x277D84F90];
      }

      v22 = *(v21 + 16);

      if (__OFSUB__(a9 >> 1, a8))
      {
        __break(1u);
      }

      else if (v22 == (a9 >> 1) - a8)
      {
        if (!swift_dynamicCastClass())
        {
          swift_unknownObjectRelease();
        }

        goto LABEL_14;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v18 = a1;
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(a6, a7, a8, a9, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
LABEL_14:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v24 = a1;
    [v17 hierarchyController:a2 didReveal:isa source:v24];

    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v19 = a1;
LABEL_15:
  DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(a3, 0);
  a4(1);
}

uint64_t DOCHierarchyController.isResetBeingPerformed.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCHierarchyController.isResetBeingPerformed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCHierarchyController.loadingDisabledOperation.setter(uint64_t a1, uint64_t *a2)
{
  v34 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v33 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v31 - v18;
  v20 = *a2;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v2 + v20, v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  swift_beginAccess();
  v21 = a1;
  outlined assign with copy of DOCHierarchyController.FetchingOperationToken?(a1, v2 + v20);
  swift_endAccess();
  v22 = *(v9 + 56);
  outlined init with copy of DOCGridLayout.Spec?(v19, v12, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v23 = v34;
  outlined init with copy of DOCGridLayout.Spec?(v2 + v20, &v12[v22], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v24 = *(v5 + 48);
  if (v24(v12, 1, v23) != 1)
  {
    v28 = v33;
    outlined init with copy of DOCGridLayout.Spec?(v12, v33, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v24(&v12[v22], 1, v23) != 1)
    {
      v29 = v32;
      outlined init with take of DOCHierarchyController.FetchingOperationToken(&v12[v22], v32, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      static UUID.== infix(_:_:)();
      outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v29, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v28, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v27 = v12;
      v25 = &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd;
      v26 = &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR;
      return outlined destroy of CharacterSet?(v27, v25, v26);
    }

    outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v28, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    goto LABEL_6;
  }

  outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v24(&v12[v22], 1, v23) != 1)
  {
LABEL_6:
    v25 = &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd;
    v26 = &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR;
    v27 = v12;
    return outlined destroy of CharacterSet?(v27, v25, v26);
  }

  v25 = &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd;
  v26 = &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR;
  v27 = v12;
  return outlined destroy of CharacterSet?(v27, v25, v26);
}

uint64_t DOCHierarchyController.isLoadingDisabled.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v17[-v7];
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v0 + v9, v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v10 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v4, 1, v10) == 1)
  {
    v13 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v0 + v13, v8, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v12(v4, 1, v10) != 1)
    {
      outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v4, v8, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  if (v12(v8, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v14 = 0;
  }

  else
  {
    v15 = v8[*(v10 + 24)];
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v8, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v14 = v15 ^ 1;
  }

  return v14 & 1;
}

Swift::Void __swiftcall DOCHierarchyController.invalidateAllAssertions()()
{
  v0 = DOCHierarchyController.loadingDisabledAssertions.getter();
  (*(*v0 + 144))(v0);
}

void *DOCHierarchyController.loadingDisabledAssertions.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___loadingDisabledAssertions;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___loadingDisabledAssertions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___loadingDisabledAssertions);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for DOCAssertionCollection();
    v2 = swift_allocObject();
    v2[5] = 0x44676E6964616F4CLL;
    v2[6] = 0xEF64656C62617369;
    v2[2] = MEMORY[0x277D84F90];
    v2[3] = partial apply for closure #1 in DOCHierarchyController.loadingDisabledAssertions.getter;
    v2[4] = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t DOCHierarchyController.registerLoadingDisabledAssertion(_:)(uint64_t a1)
{
  v2 = DOCHierarchyController.loadingDisabledAssertions.getter();
  (*(*v2 + 136))(a1, 0, 1);
}

void closure #1 in DOCHierarchyController.loadingDisabledAssertions.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    DOCHierarchyController.loadingDisabledAssertionsStateDidChange()();
  }
}

uint64_t DOCHierarchyController.loadingDisabledAssertionsStateDidChange()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v18 - v3;
  v5 = DOCHierarchyController.loadingDisabledAssertions.getter();
  v6 = (*(*v5 + 152))(v5);

  if (v6)
  {
    UUID.init()();
    v7 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    v4[v7[5]] = 0;
    v4[v7[6]] = 0;
    *&v4[v7[7]] = MEMORY[0x277D84F90];
    (*(*(v7 - 1) + 56))(v4, 0, 1, v7);
  }

  else
  {
    v8 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  }

  DOCHierarchyController.loadingDisabledOperation.setter(v4, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation);
  v9 = *(**(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___loadingDisabledAssertions) + 152);

  LOBYTE(v9) = v9(v10);

  if ((v9 & 1) == 0)
  {
    v12 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock);
    v13 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock);
    if (v13)
    {
      v14 = v12[1];

      v13(v15);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v13, v14);
      v16 = *v12;
      v17 = v12[1];
      *v12 = 0;
      v12[1] = 0;
      return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v16, v17);
    }
  }

  return result;
}

uint64_t DOCHierarchyController.performWhilePreventingLoading(_:)(void (*a1)(uint64_t))
{
  type metadata accessor for DOCAssertion();
  v2 = swift_allocObject();
  *(v2 + 32) = 1;
  *(v2 + 40) = MEMORY[0x277D84F90];
  *(v2 + 16) = 0xD00000000000001DLL;
  *(v2 + 24) = 0x8000000249BCC630;
  v3 = DOCHierarchyController.loadingDisabledAssertions.getter();
  (*(*v3 + 136))(v2, 0, 1);

  a1(v4);
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = 0;
  if (v5 == 1)
  {
    DOCAssertion.notifyObservers()();
  }
}

uint64_t DOCHierarchyController.shouldForceChangeInPreparationQueue.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCHierarchyController.shouldForceChangeInPreparationQueue.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCHierarchyController.performWhileForcingChangeInPreparationQueue(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = 1;
  result = a1(v4);
  *(v1 + v3) = v5;
  return result;
}

void closure #1 in DOCHierarchyController.preventImmediateChangeRequests(reason:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(a2 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_active);

    specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)((v5 & 1) == 0, 1, 1, a2, 0xD000000000000011, 0x8000000249BCDCB0);

    if (v5)
    {
      DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(a2, 1);
    }
  }
}

uint64_t DOCHierarchyController.PreventChangeAssertion.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCHierarchyController.PreventChangeAssertion()
{
  v1 = *v0;
  _StringGuts.grow(_:)(26);

  MEMORY[0x24C1FAEA0](*(v1 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason), *(v1 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason + 8));
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0xD000000000000017;
}

void *DOCHierarchyController.sourceObserverContext.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserverContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCHierarchyController.sourceObserverContext.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserverContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCHierarchyController.userDefaultsObservedContent.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___userDefaultsObservedContent;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___userDefaultsObservedContent))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___userDefaultsObservedContent);
  }

  else
  {
    type metadata accessor for DOCHierarchyController.UserDefaultsObservedContent();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v2 + 24) = MEMORY[0x277D84F90];
    *(v2 + 32) = 1;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 40) = 0;
    *(v2 + 64) = 0;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t (*DOCHierarchyController.userDefaultsObservedContent.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCHierarchyController.userDefaultsObservedContent.getter();
  return DOCHierarchyController.userDefaultsObservedContent.modify;
}

void *DOCHierarchyController.pickerContext.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCHierarchyController.pickerContext.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *DOCHierarchyController.__allocating_init(configuration:sourceObserver:minParentLocations:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = [objc_opt_self() defaultManager];
  v9 = [objc_opt_self() sharedStore];
  v10 = objc_allocWithZone(v3);
  v11 = DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:)(a1, a2, a3, v8, v9);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

char *DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:)(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = [objc_opt_self() defaultManager];
  v8 = [objc_opt_self() sharedStore];
  v9 = objc_allocWithZone(ObjectType);
  v10 = DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:)(a1, a2, a3, v7, v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

char *DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:)(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v72 = a2;
  v73 = a5;
  v69 = a1;
  v70 = a4;
  v68 = a3;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v65 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v10);
  v76 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v12, v13);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v16 - 8, v17);
  swift_unknownObjectWeakInit();
  v18 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__lastBrowsedStateByTab] = MEMORY[0x277D84F98];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab] = 2;
  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__currentUpdateExpectation;
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  (*(*(updated - 8) + 56))(&v5[v19], 1, 1, updated);
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locationsBeingRestored] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate] = 0;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed] = 0;
  v21 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  v22 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v23 = *(*(v22 - 8) + 56);
  v23(&v6[v21], 1, 1, v22);
  v23(&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation], 1, 1, v22);
  v24 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock];
  *v24 = 0;
  v24[1] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___loadingDisabledAssertions] = 0;
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue] = 0;
  v62 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locationChangePreparationQueue;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v61 = static OS_dispatch_queue.main.getter();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = v18;
  v60 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v74 = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  v59 = v12;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v58 = *MEMORY[0x277D85260];
  v63 = *(v63 + 104);
  v25 = v64;
  (v63)(v76);
  *&v6[v62] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v62 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_nodeResolvingQueue;
  v61 = "chyControllerQueue";
  v26 = v65;
  v27 = v66;
  v28 = v67;
  (*(v66 + 13))(v65, *MEMORY[0x277D851B8], v67);
  v57[1] = static OS_dispatch_queue.global(qos:)();
  (*(v27 + 1))(v26, v28);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  v57[0] = v15;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = v76;
  v30 = v63;
  (v63)(v76, v58, v25);
  *&v6[v62] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v66 = "ue.nodeResolving";
  v67 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_lastVisitedLocationSavingQueue;
  v30(v29, *MEMORY[0x277D85268], v25);
  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v6[v67] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_preventImmediateChangeAssertions] = v31;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserverContext] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController____lazy_storage___userDefaultsObservedContent] = 0;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext] = 0;
  v32 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeOrInflightAppend];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  *v33 = 0;
  v33[8] = 1;
  v34 = v69;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_minParentLocations] = v68;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration] = v34;
  v35 = v70;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_itemManager] = v70;
  v37 = v72;
  v36 = v73;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver] = v72;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_userInterfaceStateStore] = v36;
  v78.receiver = v6;
  v78.super_class = ObjectType;
  v38 = v34;
  v39 = v35;
  v40 = v37;
  v41 = v36;
  v42 = objc_msgSendSuper2(&v78, sel_init);
  v43 = *&v42[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:);
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_13;
  v45 = _Block_copy(aBlock);
  v46 = v42;
  v47 = v43;

  v48 = [v40 addSubscriberForConfiguration:v47 usingBlock:v45];
  _Block_release(v45);

  v49 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserverContext;
  swift_beginAccess();
  v50 = *&v46[v49];
  *&v46[v49] = v48;

  v51 = objc_opt_self();
  v52 = [v51 defaultCenter];
  [v52 addObserver:v46 selector:sel_tagsDidChangeWithNotification_ name:*MEMORY[0x277D061D0] object:0];

  v53 = [v51 defaultCenter];
  v54 = v46;
  v55 = MEMORY[0x24C1FAD20](0xD00000000000001FLL, 0x8000000249BCC720);
  [v53 addObserver:v54 selector:sel_receiveInvalidateLocationsNotification name:v55 object:0];

  return v54;
}

uint64_t closure #1 in DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;

  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in DOCHierarchyController.init(configuration:sourceObserver:minParentLocations:itemManager:userInterfaceStateStore:)(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DOCHierarchyController.updateLocationFromSourceChange(sources:)(a2);
  }
}

void DOCHierarchyController.updateLocationFromSourceChange(sources:)(unint64_t a1)
{
  v2 = v1;
  rawValue = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v5 = *(rawValue + v1);
  if (v5 >> 62)
  {
    goto LABEL_34;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:
    v32 = *(rawValue + v2);
    if (v32 >> 62)
    {
      v33 = __CocoaSet.count.getter();
      if (!v33)
      {
        return;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        return;
      }
    }

    v34 = v33 - 1;
    if (__OFSUB__(v33, 1))
    {
      __break(1u);
    }

    else if ((v32 & 0xC000000000000001) == 0)
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v34 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v35 = *(v32 + 8 * v34 + 32);
LABEL_48:
        rawValue = [v35 sourceIdentifier];

        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
        if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
        {
          goto LABEL_63;
        }

        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v41)
        {
          goto LABEL_53;
        }

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
        if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
        {
LABEL_63:

          return;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v47)
        {
          goto LABEL_53;
        }

        if (a1 >> 62)
        {
          goto LABEL_117;
        }

        v48 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v115._rawValue = rawValue;
        if (v48)
        {
          goto LABEL_62;
        }

LABEL_118:
        v98 = MEMORY[0x277D84F90];
LABEL_119:
        if (v98 < 0 || (v98 & 0x4000000000000000) != 0)
        {
          if (__CocoaSet.count.getter())
          {
            goto LABEL_122;
          }
        }

        else if (*(v98 + 16))
        {
LABEL_122:
          if ((v98 & 0xC000000000000001) != 0)
          {
            v99 = MEMORY[0x24C1FC540](0, v98);
          }

          else
          {
            if (!*(v98 + 16))
            {
              __break(1u);
              return;
            }

            v99 = *(v98 + 32);
          }

          v100 = v99;

          v101 = DOCDocumentSource.representedLocation.getter();
          DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v101, 0, 0, 1, 0, 0, 0);

LABEL_53:
          return;
        }

        v102 = [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration) defaultEffectiveTabIdentifierForLocationRestore];
        v103 = DOCTabIdentifier.tab.getter(v102);
        v105 = v104;

        if (v105)
        {
          v106 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
          swift_beginAccess();
          v103 = *(v2 + v106);
          rawValue = v115._rawValue;
        }

        v107 = DOCHierarchyController._defaultBrowsedStateIgnoringAnySavedState(forTab:)(v103);
        v109 = v108;

        DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v107, 0, 0, 1, 0, 0, 0);
        goto LABEL_53;
      }

      __break(1u);
      goto LABEL_112;
    }

    v35 = MEMORY[0x24C1FC540](v34, v32);

    goto LABEL_48;
  }

LABEL_3:
  v6 = [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration) defaultEffectiveTabIdentifierForLocationRestore];
  v7 = DOCTabIdentifier.tab.getter(v6);
  v9 = v8;

  v115._rawValue = rawValue;
  if (v9)
  {
    v10 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v7 = *(v2 + v10);
  }

  v11 = DOCHierarchyController._defaultBrowsedState(forTab:checkPersistentStorage:checkLiveCachedStorage:)(v7, 1, 1);
  v116 = v12;
  v118 = v13;
  v120 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v27 = v11;
    v14 = __CocoaSet.count.getter();
    v11 = v27;
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v117 = v11;
  v119 = v2;
  rawValue = MEMORY[0x277D84F90];
  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

LABEL_21:
    if ((v18 & 0x4000000000000000) != 0)
    {
      goto LABEL_37;
    }

    v19 = *(v18 + 16);
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_38:

    v21 = MEMORY[0x277D84F90];
LABEL_39:
    v28 = v117;
    v29 = [v117 sourceIdentifier];
    v120 = v29;
    MEMORY[0x28223BE20](v29, v30);
    v110[2] = &v120;
    v31 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v110, v21);

    v2 = v119;
    if ((v31 & 1) == 0)
    {
      DOCHierarchyController.clearLastVisitedBrowseState(clearPersistentStorage:clearLiveCachedStorage:)(1, 1);

      return;
    }

    rawValue = v115._rawValue;
    goto LABEL_41;
  }

  v15 = 0;
  rawValue = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x24C1FC540](v15, a1);
    }

    else
    {
      if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v16 = *(a1 + 8 * v15 + 32);
    }

    v17 = v16;
    v2 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_41;
      }

      goto LABEL_3;
    }

    if (([v16 status] | 2) == 2)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v15;
  }

  while (v2 != v14);
  v18 = v120;
  rawValue = MEMORY[0x277D84F90];
  if ((v120 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_37:
  v19 = __CocoaSet.count.getter();
  if (!v19)
  {
    goto LABEL_38;
  }

LABEL_23:
  v120 = rawValue;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = v120;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C1FC540](v20, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v22 identifier];

      v120 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v21 = v120;
      }

      ++v20;
      *(v21 + 16) = v26 + 1;
      *(v21 + 8 * v26 + 32) = v24;
    }

    while (v19 != v20);

    goto LABEL_39;
  }

LABEL_112:
  __break(1u);
  while (2)
  {
    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      v48 = __CocoaSet.count.getter();
      v115._rawValue = rawValue;
      if (!v48)
      {
        goto LABEL_118;
      }

LABEL_62:
      v49 = 0;
      v118 = (a1 & 0xC000000000000001);
      v119 = v2;
      v116 = v48;
      v117 = (a1 & 0xFFFFFFFFFFFFFF8);
LABEL_67:
      if (v118)
      {
        v50 = MEMORY[0x24C1FC540](v49, a1);
      }

      else
      {
        if (v49 >= *(v117 + 2))
        {
          continue;
        }

        v50 = *(a1 + 8 * v49 + 32);
      }

      break;
    }

    v2 = v50;
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      continue;
    }

    break;
  }

  v52 = [v50 identifier];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;
  if (v53 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v55 != v56)
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v58)
    {
      goto LABEL_83;
    }

    v59 = type metadata accessor for DOCFileProviderSource();
    v60 = swift_dynamicCastClass();
    if (v60)
    {
      v61 = *(v60 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v61)
      {
        v62 = v61;
        v63 = v2;
        if (DOCProviderDomainIsSharedServerDomain())
        {
          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v112 = v65;
          v113 = v64;
          v66 = v59;
          v67 = [v63 identifier];
          v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v111 = v63;
          v69 = v68;
          v71 = v70;

          v59 = v66;
          v72._countAndFlagsBits = v69;
          v72._object = v71;
          LOBYTE(v69) = String.hasPrefix(_:)(v72);

          v48 = v116;

          if (v69)
          {
            goto LABEL_83;
          }
        }

        else
        {
        }
      }
    }

    ++v49;
    if (v51 != v48)
    {
      goto LABEL_67;
    }

    v2 = 0;
    v120 = MEMORY[0x277D84F90];
    v114 = v59;
    while (2)
    {
      if (v118)
      {
        v82 = MEMORY[0x24C1FC540](v2, a1);
      }

      else
      {
        if (v2 >= *(v117 + 2))
        {
          goto LABEL_116;
        }

        v82 = *(a1 + 8 * v2 + 32);
      }

      v83 = v82;
      v84 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        goto LABEL_115;
      }

      v85 = swift_dynamicCastClass();
      if (v85)
      {
        v86 = v85;
        v87 = *(v85 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
        if (v87)
        {
          v88 = v83;
          v89 = v87;
          rawValue = v115._rawValue;
          v90 = FPProviderDomain.matches(iCloudSourceIdentifier:)(v115);

          if (v90)
          {

            goto LABEL_101;
          }
        }

        else
        {
          v91 = v83;
          rawValue = v115._rawValue;
        }

        v92 = [v86 identifier];
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v94;

        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        LOBYTE(v93) = specialized Sequence<>.starts<A>(with:)(v96, v97, v93, v95);

        if (v93)
        {
LABEL_101:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v48 = v116;
      }

      else
      {
      }

      ++v2;
      if (v84 == v48)
      {
        v98 = v120;
        v2 = v119;
        goto LABEL_119;
      }

      continue;
    }
  }

LABEL_83:
  if ([v2 status] != 1)
  {

    goto LABEL_53;
  }

  v73 = v119;
  DOCHierarchyController.clearLastVisitedBrowseState(clearPersistentStorage:clearLiveCachedStorage:)(1, 1);
  v74 = [*(v73 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration) defaultEffectiveTabIdentifierForLocationRestore];
  v75 = DOCTabIdentifier.tab.getter(v74);
  v77 = v76;

  if (v77)
  {
    v78 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v75 = *(v73 + v78);
  }

  v79 = DOCHierarchyController._defaultBrowsedStateIgnoringAnySavedState(forTab:)(v75);
  v81 = v80;

  DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v79, 0, 0, 1, 0, 0, 0);
}

id DOCHierarchyController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_preventImmediateChangeAssertions;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    goto LABEL_51;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v39 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locationChangePreparationQueue;

  if (v4)
  {
    v5 = 0;
    v42 = v3 & 0xFFFFFFFFFFFFFF8;
    v43 = v3 & 0xC000000000000001;
    v41 = v2;
    v37 = v3;
    v38 = v1;
    v40 = v4;
    while (1)
    {
      if (v43)
      {
        v7 = MEMORY[0x24C1FC540](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v5 >= *(v42 + 16))
        {
          goto LABEL_46;
        }

        v7 = *(v3 + 8 * v5 + 32);

        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v4 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      v9 = OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_active;
      v10 = *(v7 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_active);

      specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)((v10 & 1) == 0, 1, 1, v7, 0x696E696564206E69, 0xE900000000000074);

      if (v10)
      {
        break;
      }

LABEL_9:

      ++v5;
      if (v8 == v4)
      {
        goto LABEL_42;
      }
    }

    v11 = OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_wasTimeoutAutoDeactivated;
    v12 = *(v7 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_wasTimeoutAutoDeactivated);
    v13 = *(v7 + v9);

    v14 = specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(v13, v12, v12, v7);

    if ((v14 & 1) == 0)
    {
LABEL_8:
      v4 = v40;
      goto LABEL_9;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.UI);
    v16 = v1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v38;
      v21 = v16;
      _os_log_impl(&dword_2493AC000, v17, v18, "Resuming work (locationChangePreparationQueue) in hierarchy controller %@", v19, 0xCu);
      outlined destroy of CharacterSet?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v22 = v20;
      v1 = v38;
      MEMORY[0x24C1FE850](v22, -1, -1);
      v23 = v19;
      v2 = v41;
      MEMORY[0x24C1FE850](v23, -1, -1);
    }

    *(v7 + v9) = 0;
    *(v7 + v11) = 1;
    swift_beginAccess();

    v24 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v1[v2], v7);

    v2 = *&v1[v2];
    v25 = v2 >> 62;
    if (v2 >> 62)
    {
      v3 = __CocoaSet.count.getter();
      v26 = v3 - v24;
      if (v3 < v24)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = v3 - v24;
      if (v3 < v24)
      {
        goto LABEL_41;
      }
    }

    if (v24 < 0)
    {
      goto LABEL_47;
    }

    if (v25)
    {
      v27 = __CocoaSet.count.getter();
    }

    else
    {
      v27 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v27 < v3)
    {
      goto LABEL_48;
    }

    v28 = __OFSUB__(0, v26);
    v29 = -v26;
    if (v28)
    {
      goto LABEL_49;
    }

    if (v25)
    {
      v30 = __CocoaSet.count.getter();
    }

    else
    {
      v30 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = __OFADD__(v30, v29);
    v31 = v30 + v29;
    if (v28)
    {
      goto LABEL_50;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v1[v41] = v2;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v25)
      {
        if (v31 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v6 = v41;
          goto LABEL_7;
        }

LABEL_6:
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v41;
        *&v1[v41] = v2;
LABEL_7:
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v24, v3, 0, type metadata accessor for DOCHierarchyController.PreventChangeAssertion);
        *&v1[v6] = v2;
        swift_endAccess();
        dispatch_resume(*&v1[v39]);
        v2 = v6;
        v3 = v37;
        goto LABEL_8;
      }
    }

    else if (!v25)
    {
      goto LABEL_6;
    }

    __CocoaSet.count.getter();
    goto LABEL_6;
  }

LABEL_42:

  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserverContext;
  swift_beginAccess();
  if (*&v1[v33])
  {
    [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver] removeSubscriberForToken_];
  }

  v34 = [objc_opt_self() defaultCenter];
  [v34 removeObserver_];

  v44.receiver = v1;
  v44.super_class = ObjectType;
  return objc_msgSendSuper2(&v44, sel_dealloc);
}

uint64_t DOCHierarchyController.dismissSearch(withCompletion:)(uint64_t (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1();
  }

  v6 = Strong;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_19_1;
  v8 = _Block_copy(aBlock);

  [v6 hierarchyController:v2 prepareByDismissingSearchWithCompletion:v8];
  _Block_release(v8);
  return swift_unknownObjectRelease();
}

id DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = [Strong hierarchyChangeTransitionCoordinator], swift_unknownObjectRelease(), !v1))
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
    v1 = [v2 _definiteTransitionCoordinator];
  }

  return v1;
}

Swift::Void __swiftcall DOCHierarchyController.resetWithDefaultLocation(animated:)(Swift::Bool animated)
{
  swift_getObjectType();
  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration];
  v4 = [v3 defaultEffectiveTabIdentifierForLocationRestore];
  v5 = DOCTabIdentifier.tab.getter(v4);
  v7 = v6;

  if (v7)
  {
    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v5 = *&v1[v8];
  }

  v9 = [objc_opt_self() sharedManager];
  v10 = [v3 hostIdentifier];
  if (!v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x24C1FAD20](v11);
  }

  [v9 setHostIdentifier_];

  v12 = [objc_opt_self() defaultPermission];
  v13 = [v3 hostIdentifier];
  if (!v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = MEMORY[0x24C1FAD20](v14);
  }

  [v12 setHostIdentifier_];

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.UI);
  v16 = v1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = animated;
    v21 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v21 = v16;
    v22 = v16;
    _os_log_impl(&dword_2493AC000, v17, v18, "0. Will reset initially selected location (browser: %@)", v19, 0xCu);
    outlined destroy of CharacterSet?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = v21;
    animated = v20;
    MEMORY[0x24C1FE850](v23, -1, -1);
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

  v24 = [v3 defaultLocation];
  if (v24)
  {
    v25 = v24;
    if ([v3 allowsDisplaying_])
    {
      v26 = v16;
      v27 = v25;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412546;
        *(v30 + 4) = v26;
        *(v30 + 12) = 2112;
        *(v30 + 14) = v27;
        *v31 = v26;
        v31[1] = v25;
        v32 = v26;
        v33 = v27;
        _os_log_impl(&dword_2493AC000, v28, v29, "1. Will reset to configuration's defaultLocation (browser: %@, location: %@)", v30, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v31, -1, -1);
        MEMORY[0x24C1FE850](v30, -1, -1);
      }

      DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v27, 0, animated, 0, 1, 0, 0);
      return;
    }
  }

  if (![v3 isPickerUI])
  {
    DOCHierarchyController.resetToDefaultBrowsedStateForEffectiveTab(animated:)(animated);
    return;
  }

  v34 = v16;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = animated;
    v39 = swift_slowAlloc();
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v39 = v34;
    v40 = v34;
    _os_log_impl(&dword_2493AC000, v35, v36, "2 Will reset using picker strategy (browser: %@)", v37, 0xCu);
    outlined destroy of CharacterSet?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v41 = v39;
    animated = v38;
    MEMORY[0x24C1FE850](v41, -1, -1);
    MEMORY[0x24C1FE850](v37, -1, -1);
  }

  if (![v3 isPickerUI] || (UsedOpenSave = DOCHierarchyController.getLastUsedOpenSaveLocation()()) == 0)
  {
LABEL_35:
    v60 = v34;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v60;
      *v64 = v60;
      v65 = v60;
      _os_log_impl(&dword_2493AC000, v61, v62, "2.2 lastUsedOpenSaveLocation couldn't be found or used. Will fetch from getSaveLocation (browser: %@)", v63, 0xCu);
      outlined destroy of CharacterSet?(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v64, -1, -1);
      MEMORY[0x24C1FE850](v63, -1, -1);
    }

    v66 = [v3 defaultEffectiveTabIdentifierForLocationRestore];
    v67 = DOCTabIdentifier.tab.getter(v66);
    v69 = v68;

    if (v69)
    {
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_2493AC000, v70, v71, "WARNING: expected configuration.defaultEffectiveTabForLocationRestore to be set at this point", v72, 2u);
        MEMORY[0x24C1FE850](v72, -1, -1);
      }

      v73 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
      swift_beginAccess();
      v67 = 2;
      *&v60[v73] = 2;
      v74 = MEMORY[0x277D061B0];
    }

    else
    {
      v75 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
      swift_beginAccess();
      *&v60[v75] = v67;
      if (v67 > 2)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v74 = qword_278FA2C68[v67];
    }

    v76 = *v74;
    [v3 setDefaultEffectiveTabIdentifierForLocationRestore_];

    v77 = swift_allocObject();
    *(v77 + 16) = v67;
    *(v77 + 24) = v3;
    *(v77 + 32) = v60;
    *(v77 + 40) = animated;
    v78 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v79 = *&v60[v78];
    if (v79 >> 62)
    {
      v80 = __CocoaSet.count.getter();
      if (v80)
      {
LABEL_45:
        v81 = v80 - 1;
        if (__OFSUB__(v80, 1))
        {
          __break(1u);
        }

        else if ((v79 & 0xC000000000000001) == 0)
        {
          if ((v81 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v81 < *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v82 = *(v79 + 8 * v81 + 32);
            v83 = v60;
            v84 = v3;
            v85 = v82;
            goto LABEL_50;
          }

          __break(1u);
          goto LABEL_64;
        }

        v101 = v60;
        v102 = v3;

        v85 = MEMORY[0x24C1FC540](v81, v79);

LABEL_50:
        v86 = [v85 fileProviderItem];
        if (v86)
        {
          v87 = v86;
          v88 = animated;
          v89 = *MEMORY[0x277CC6028];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_249BA0290;
          *(inited + 32) = v87;
          v91 = v87;
          specialized static DOCActionManager.canPerform(_:on:)(v89, inited);
          LOBYTE(v89) = v92;
          swift_setDeallocating();
          swift_arrayDestroy();

          if (v89)
          {
            v93 = v85;
            specialized closure #1 in DOCHierarchyController.resetWithDefaultLocation(animated:)(v85, v67, v3, v60, v88);

LABEL_59:

            return;
          }
        }

LABEL_58:
        v96 = *&v60[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
        v97 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
        swift_beginAccess();
        v98 = *&v60[v97];
        v99 = swift_allocObject();
        *(v99 + 16) = partial apply for specialized closure #1 in DOCHierarchyController.resetWithDefaultLocation(animated:);
        *(v99 + 24) = v77;
        v100 = v98;

        static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v3, v96, v98, partial apply for closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:), v99);

        goto LABEL_59;
      }
    }

    else
    {
      v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v80)
      {
        goto LABEL_45;
      }
    }

    v94 = v60;
    v95 = v3;
    goto LABEL_58;
  }

  v43 = UsedOpenSave;
  v103 = animated;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_249BA0290;
  *(v44 + 32) = v43;
  v45 = v43;
  v46 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v44, 0);
  v48 = v47;

  if (!v46)
  {
LABEL_65:
    __break(1u);
    return;
  }

  if (v48)
  {
    v49 = v48;
  }

  else
  {
    v49 = v46;
  }

  if (v5 != [v49 effectiveTabSwitcherTab] || !objc_msgSend(v46, sel_canBeRestored) || !objc_msgSend(v3, sel_allowsDisplaying_, v46))
  {

    animated = v103;
    goto LABEL_35;
  }

  v50 = v46;
  v51 = v34;
  v52 = v50;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412546;
    *(v55 + 4) = v51;
    *(v55 + 12) = 2112;
    *(v55 + 14) = v52;
    *v56 = v51;
    v56[1] = v46;
    v57 = v51;
    v58 = v52;
    _os_log_impl(&dword_2493AC000, v53, v54, "2.1 Will reset to lastUsedOpenSaveLocation (browser: %@, location: %@)", v55, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v56, -1, -1);
    MEMORY[0x24C1FE850](v55, -1, -1);
  }

  if ([v3 isPickerUI])
  {
    v59 = DOCHierarchyController.getLastUsedOpenSaveLocation()();
  }

  else
  {
    v59 = 0;
  }

  DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v52, v59, v103, 0, 1, 0, 0);
}

uint64_t DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(void *a1, void *a2, int a3, int a4, int a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v116 = a7;
  v115 = a6;
  v112 = a5;
  LODWORD(v110) = a4;
  v113 = a3;
  v111 = a2;
  v114 = a1;
  v109 = type metadata accessor for DispatchWorkItemFlags();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v9);
  v106 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for DispatchQoS();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v11);
  v104 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13, v15);
  v100 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v103 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v99 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v102 = &v99 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v99 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v99 - v33;
  v35 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
  swift_beginAccess();
  if (v7[v35] == 1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.UI);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v35;
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2493AC000, v37, v38, "Attempt to reset locations, while a reset is already in progress", v40, 2u);
      v41 = v40;
      v35 = v39;
      MEMORY[0x24C1FE850](v41, -1, -1);
    }
  }

  v101 = v35;
  v8[v35] = 1;
  v42 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&v8[v42], v30, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v43 = v14;
  v44 = *(v14 + 48);
  if (v44(v30, 1, v13) == 1)
  {
    v45 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    v46 = &v8[v45];
    v43 = v14;
    outlined init with copy of DOCGridLayout.Spec?(v46, v34, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v44(v30, 1, v13) != 1)
    {
      outlined destroy of CharacterSet?(v30, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v30, v34, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v14 + 56))(v34, 0, 1, v13);
  }

  if (v44(v34, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v34, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  }

  else
  {
    v47 = v34[v13[6]];
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v34, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    if (v47)
    {
LABEL_15:
      v49 = swift_allocObject();
      v50 = v114;
      *(v49 + 16) = v8;
      *(v49 + 24) = v50;
      v51 = v115;
      v52 = v116;
      *(v49 + 32) = v115;
      *(v49 + 40) = v52;
      *(v49 + 48) = v113 & 1;
      *(v49 + 49) = v110 & 1;
      *(v49 + 50) = v112 & 1;
      v53 = v111;
      *(v49 + 56) = v111;
      aBlock[4] = partial apply for closure #1 in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:);
      aBlock[5] = v49;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_37;
      v54 = _Block_copy(aBlock);
      v55 = v53;
      v56 = v50;
      v57 = v8;
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v51, v52);
      v58 = v104;
      static DispatchQoS.unspecified.getter();
      v118 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v59 = v106;
      v60 = v109;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v58, v59, v54);
      _Block_release(v54);
      (*(v108 + 8))(v59, v60);
      (*(v105 + 8))(v58, v107);
    }
  }

  v48 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_shouldForceChangeInPreparationQueue;
  swift_beginAccess();
  if (v8[v48])
  {
    goto LABEL_15;
  }

  outlined init with copy of DOCGridLayout.Spec?(&v8[v42], v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v44(v23, 1, v13) == 1)
  {
    v61 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    v62 = v102;
    outlined init with copy of DOCGridLayout.Spec?(&v8[v61], v102, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v63 = v44(v23, 1, v13);
    v64 = v103;
    if (v63 != 1)
    {
      outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    v62 = v102;
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v23, v102, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v43 + 56))(v62, 0, 1, v13);
    v64 = v103;
  }

  if (v44(v62, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v62, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v65 = 1;
  }

  else
  {
    v66 = *(v62 + v13[6]);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v62, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v65 = v66 ^ 1;
  }

  v67 = v114;
  v68 = v8;
  specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(v65 & 1, 1, 1, v67, v68);

  v70 = *(v43 + 56);
  v69 = v43 + 56;
  v114 = v70;
  (v70)(v64, 1, 1, v13);
  DOCHierarchyController.loadingDisabledOperation.setter(v64, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
  v118 = 0x203A7465736572;
  v119 = 0xE700000000000000;
  v71 = [v67 shortDescription];
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  MEMORY[0x24C1FAEA0](v72, v74);

  v75 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(v118, v119);

  if ([*&v68[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration] allowsDisplaying_])
  {
    v76 = swift_allocObject();
    v77 = v111;
    *(v76 + 16) = v111;
    *(v76 + 24) = v68;
    LODWORD(v109) = v110 & 1;
    *(v76 + 32) = v110 & 1;
    v78 = v115;
    *(v76 + 40) = v75;
    *(v76 + 48) = v78;
    *(v76 + 56) = v116;
    v110 = swift_allocBox();
    v80 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v81 = swift_allocObject();
    v108 = v69;
    v82 = v81;
    *(v81 + 16) = xmmword_249BA0290;
    *(v81 + 32) = v67;
    v83 = v77;
    v111 = v75;

    v84 = v67;
    v85 = v68;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v78, v116);
    UUID.init()();
    *(v80 + v13[5]) = 0;
    *(v80 + v13[6]) = 1;
    *(v80 + v13[7]) = v82;
    outlined init with copy of DOCHierarchyController.FetchingOperationToken(v80, v64, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (v114)(v64, 0, 1, v13);
    DOCHierarchyController.loadingDisabledOperation.setter(v64, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    v86 = v113;
    if (v112)
    {
      v87 = v100;
      outlined init with copy of DOCHierarchyController.FetchingOperationToken(v80, v100, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:)(v87, v84, v86 & 1);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v87, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    }

    v88 = swift_allocObject();
    v89 = v110;
    *(v88 + 16) = v85;
    *(v88 + 24) = v89;
    *(v88 + 32) = partial apply for closure #1 in performChange #1 () in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:);
    *(v88 + 40) = v76;
    *(v88 + 48) = v86 & 1;
    *(v88 + 49) = v109;
    v90 = v85;

    specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v84, 1, v90, partial apply for closure #1 in DOCHierarchyController.loadInitialLocation(from:animated:shouldSave:shouldShowPlaceholder:completionHandler:), v88);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    __swift_project_value_buffer(v91, static Logger.UI);
    v92 = v67;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v95 = 138412290;
      *(v95 + 4) = v92;
      *v96 = v92;
      v97 = v92;
      _os_log_impl(&dword_2493AC000, v93, v94, "Tried to reset with location %@, which is not allowed by the configuration", v95, 0xCu);
      outlined destroy of CharacterSet?(v96, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v96, -1, -1);
      MEMORY[0x24C1FE850](v95, -1, -1);
    }

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v75, 0);
    v8[v101] = 0;
    if (v115)
    {
      v115();
    }
  }
}

id DOCHierarchyController.lastUsedOpenSaveLocation.getter()
{
  if (![*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration) isPickerUI])
  {
    return 0;
  }

  return DOCHierarchyController.getLastUsedOpenSaveLocation()();
}

void specialized closure #1 in DOCHierarchyController.resetWithDefaultLocation(animated:)(void *a1, id a2, void *a3, void *a4, char a5)
{
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = [objc_opt_self() defaultLocation];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_249BA0290;
  *(v11 + 32) = v10;
  v12 = v10;
  v13 = a1;
  v14 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v11, 0);
  v35 = v15;

  if (v14)
  {

    v16 = v35;
    if (!v35)
    {
      v16 = v14;
    }

    if ([v16 effectiveTabSwitcherTab] == a2 && objc_msgSend(v14, sel_canBeRestored) && (objc_msgSend(a3, sel_allowsDisplaying_, v14) & 1) != 0)
    {
      v17 = one-time initialization token for UI;
      v18 = v14;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.UI);
      v20 = a4;
      v21 = v18;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412546;
        *(v24 + 4) = v20;
        *(v24 + 12) = 2112;
        *(v24 + 14) = v21;
        *v25 = v20;
        v25[1] = v14;
        v26 = v20;
        v27 = v21;
        _os_log_impl(&dword_2493AC000, v22, v23, "2.2.2 Will use getSaveLocation's suggested location (browser: %@, location: %@)", v24, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v25, -1, -1);
        MEMORY[0x24C1FE850](v24, -1, -1);
      }

      DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v21, 0, a5 & 1, 0, 1, 0, 0);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.UI);
      v29 = a4;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v29;
        *v33 = v29;
        v34 = v29;
        _os_log_impl(&dword_2493AC000, v30, v31, "2.2.1 Location from getSaveLocation isn't appropriate, falling back to standard restore (browse: %@)", v32, 0xCu);
        outlined destroy of CharacterSet?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C1FE850](v33, -1, -1);
        MEMORY[0x24C1FE850](v32, -1, -1);
      }

      DOCHierarchyController.resetToDefaultBrowsedStateForEffectiveTab(animated:)(a5 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void DOCHierarchyController.resetToDefaultBrowsedStateForEffectiveTab(animated:)(char a1)
{
  v3 = DOCHierarchyController.browseStateForResetToDefaultLocation.getter();
  if (v3)
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration] setRestoreLastVisitedLocation_];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.UI);
    v10 = v8;
    v11 = v1;
    v32 = v6;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v14 = 138412546;
      *(v14 + 4) = v11;
      *v29 = v11;
      *(v14 + 12) = 2080;
      v15 = v11;
      v16 = v32;

      v31 = v10;
      v17 = v10;
      v18 = DOCHierarchyController.BrowsedState.debugDescription.getter(v16, v7, v8);
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v33);

      *(v14 + 14) = v21;
      v10 = v31;
      _os_log_impl(&dword_2493AC000, v12, v13, "3. Using last visited information to perform restoration (browser:%@, restoreState: %s)", v14, 0x16u);
      outlined destroy of CharacterSet?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    DOCHierarchyController.BrowsedState.restore(to:animated:)(v11, 0, v32, v7, v8);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.UI);
    v23 = v1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_2493AC000, v24, v25, "4. Will use emptyLocation as initially selected location since no other cases are valid (browser:%@)", v26, 0xCu);
      outlined destroy of CharacterSet?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v27, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    v32 = [objc_opt_self() emptyLocation];
    DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v32, 0, a1 & 1, 1, 1, 0, 0);
  }
}

void DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:)(void (*a1)(id), uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_12:
    v18 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
    v19 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver);
    v20 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
    swift_beginAccess();
    v21 = *(v3 + v20);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    *(v22 + 24) = a2;
    v23 = v21;

    static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v18, v19, v21, closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:)partial apply, v22);

    return;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_3:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_16:

    v10 = MEMORY[0x24C1FC540](v9, v7);

LABEL_8:
    v11 = [v10 fileProviderItem];
    if (v11)
    {
      v12 = v11;
      v13 = *MEMORY[0x277CC6028];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA0290;
      *(inited + 32) = v12;
      v15 = v12;
      specialized static DOCActionManager.canPerform(_:on:)(v13, inited);
      LOBYTE(v13) = v16;
      swift_setDeallocating();
      swift_arrayDestroy();

      if (v13)
      {
        v17 = v10;
        a1(v10);

        return;
      }
    }

    goto LABEL_12;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v9 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

DOCConcreteLocation *DOCHierarchyController.browseStateForResetToDefaultLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
  v2 = [v1 defaultEffectiveTabIdentifierForLocationRestore];
  v3 = DOCTabIdentifier.tab.getter(v2);
  v5 = v4;

  if (v5)
  {
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v3 = *(v0 + v6);
  }

  v7 = DOCHierarchyController._defaultBrowsedState(forTab:checkPersistentStorage:checkLiveCachedStorage:)(v3, [v1 restoreLastVisitedLocation], 1);
  v9 = v8;
  if (![v1 allowsDisplaying_] || (v10 = objc_msgSend(objc_opt_self(), sel_sharedManager), v11 = DOCAppProtectionManager.hostAppCanNavigate(to:)(v7), v10, !v11))
  {

    return 0;
  }

  return v7;
}

void DOCHierarchyController.resetFromRoot(with:animated:completionHandler:)(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = DOCHierarchyController.loadingDisabledAssertions.getter();
  v11 = (*(*v10 + 152))(v10);

  if (v11)
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    *(v13 + 32) = a2 & 1;
    *(v13 + 40) = a3;
    *(v13 + 48) = a4;
    v14 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock);
    v15 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock);
    v16 = v14[1];
    *v14 = partial apply for closure #1 in DOCHierarchyController.resetFromRoot(with:animated:completionHandler:);
    v14[1] = v13;

    v17 = a1;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a3, a4);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v15, v16);

    return;
  }

  v18 = [a1 fileProviderItem];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 providerDomainID];

    v22 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v20 node:0];
    DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(a1, v22, a2 & 1, 1, 0, a3, a4);

    v21 = v22;
LABEL_8:

    return;
  }

  v21 = [a1 fileProviderItem];
  if (v21)
  {
    goto LABEL_8;
  }

  DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(a1, a1, a2 & 1, 1, 0, a3, a4);
}

void closure #1 in DOCHierarchyController.resetFromRoot(with:animated:completionHandler:)(uint64_t a1, void *a2, char a3, void (*a4)(void), uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    DOCHierarchyController.resetFromRoot(with:animated:completionHandler:)(a2, a3 & 1, a4, a5);
  }
}

void closure #1 in performChange #1 () in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(char a1, void *a2, char *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_13;
    }

    v15 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v16 = *&a3[v15];
    if (v16 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_6:
        if ((v16 & 0xC000000000000001) != 0)
        {
          goto LABEL_31;
        }

        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v17 = *(v16 + 32);
          goto LABEL_11;
        }

        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    v17 = 0;
    goto LABEL_11;
  }

  aBlock[0] = a3;
  swift_getKeyPath();
  v11 = a2;
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  swift_beginAccess();
  v13 = *&a3[v12];
  *&a3[v12] = a2;
  v14 = v11;

  aBlock[0] = a3;
  swift_getKeyPath();
  while (1)
  {
    _KeyValueCodingAndObserving.didChangeValue<A>(for:)();

LABEL_13:
    v20 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v16 = *&a3[v20];
    if (v16 >> 62)
    {
      v21 = __CocoaSet.count.getter();
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    v22 = v21 - 1;
    if (__OFSUB__(v21, 1))
    {
      break;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_27;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v16 + 8 * v22 + 32);
      if (a4)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_31:

    v17 = MEMORY[0x24C1FC540](0, v16);

LABEL_11:
    aBlock[0] = a3;
    swift_getKeyPath();
    _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
    v18 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
    swift_beginAccess();
    v19 = *&a3[v18];
    *&a3[v18] = v17;
    v14 = v17;

    aBlock[0] = a3;
    swift_getKeyPath();
  }

  __break(1u);
LABEL_27:

  v23 = MEMORY[0x24C1FC540](v22, v16);

  if (a4)
  {
    goto LABEL_22;
  }

LABEL_20:
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  swift_beginAccess();
  v25 = *&a3[v24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_249BA0290;
  *(v26 + 32) = v23;
  v27 = v25;
  v28 = v23;
  v29 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v26, v25);
  v31 = v30;
  v23 = v32;

  if (!v29)
  {
    goto LABEL_33;
  }

  DOCHierarchyController.sendDelegateDidUpdateLastDisplayedLocationPath(browsedState:)(v29, v31, v23);

LABEL_22:
LABEL_23:
  v33 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
  v34 = swift_allocObject();
  v34[2] = a3;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  aBlock[4] = partial apply for closure #1 in closure #1 in performChange #1 () in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:);
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  aBlock[3] = &block_descriptor_869;
  v35 = _Block_copy(aBlock);
  v36 = a3;

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a6, a7);

  [v33 animateAlongsideTransition:0 completion:v35];
  _Block_release(v35);
  swift_unknownObjectRelease();
}

void DOCHierarchyController.sendDelegateDidUpdateLastDisplayedLocationPath(browsedState:)(id a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v8 = [a3 effectiveTabSwitcherTab];
  }

  else
  {
    v8 = [a1 effectiveTabSwitcherTab];
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__lastBrowsedStateByTab;
  swift_beginAccess();
  v11 = a1;

  v12 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v4 + v10);
  *(v4 + v10) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, a3, v9, isUniquelyReferenced_nonNull_native);
  *(v4 + v10) = v26;
  swift_endAccess();
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v15 = *(v4 + v14);
  if (v15 >> 62)
  {
    v16 = __CocoaSet.count.getter();
    if (!v16)
    {
      return;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return;
    }
  }

  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_20:

    v18 = MEMORY[0x24C1FC540](v17, v15);

    goto LABEL_11;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:
    __break(1u);
    return;
  }

  v18 = *(v15 + 8 * v17 + 32);
LABEL_11:
  v19 = [v18 sourceIdentifier];

  v20 = [*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver) sourceForIdentifier_];
  if (v20)
  {
    v21 = v20;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v25 = DOCHierarchyController.effectiveRootLocation.getter();
      [v23 hierarchyController:v4 didUpdateLastDisplayedLocationPath:isa anchorLocation:v25 source:v21];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #1 in performChange #1 () in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(a3, 0);
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
  result = swift_beginAccess();
  *(a2 + v6) = 0;
  if (a4)
  {
    return a4(result);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(char *a1, void *a2, void (*a3)(void), uint64_t a4, int a5, int a6, int a7, void *a8)
{
  v75 = a8;
  v76 = a7;
  v77 = a5;
  LODWORD(v74) = a6;
  v78 = a4;
  v79 = a3;
  v10 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10, v12);
  v73 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = v71 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = v71 - v24;
  v26 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&a1[v26], v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v27 = *(v11 + 48);
  if (v27(v21, 1, v10) == 1)
  {
    v28 = v11;
    v29 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    v30 = &a1[v29];
    v11 = v28;
    outlined init with copy of DOCGridLayout.Spec?(v30, v25, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v27(v21, 1, v10) != 1)
    {
      outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v21, v25, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v11 + 56))(v25, 0, 1, v10);
  }

  if (v27(v25, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v25, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v31 = 1;
  }

  else
  {
    v32 = v25[v10[6]];
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v25, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v31 = v32 ^ 1;
  }

  v33 = v17;
  v34 = a2;
  v35 = a1;
  specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(v31 & 1, 1, 1, v34, v35);

  v38 = *(v11 + 56);
  v36 = v11 + 56;
  v37 = v38;
  v38(v33, 1, 1, v10);
  DOCHierarchyController.loadingDisabledOperation.setter(v33, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
  v80 = 0x203A7465736572;
  v81 = 0xE700000000000000;
  v39 = [v34 shortDescription];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  MEMORY[0x24C1FAEA0](v40, v42);

  v43 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(v80, v81);

  if ([*&v35[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration] allowsDisplaying_])
  {
    v44 = swift_allocObject();
    v45 = v75;
    *(v44 + 16) = v75;
    *(v44 + 24) = v35;
    v72 = v74 & 1;
    *(v44 + 32) = v74 & 1;
    v47 = v78;
    v46 = v79;
    *(v44 + 40) = v43;
    *(v44 + 48) = v46;
    *(v44 + 56) = v47;
    v74 = swift_allocBox();
    v71[1] = v36;
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v50 = swift_allocObject();
    v71[0] = v37;
    v51 = v33;
    v52 = v50;
    *(v50 + 16) = xmmword_249BA0290;
    *(v50 + 32) = v34;
    v53 = v45;
    v75 = v43;

    v54 = v34;
    v55 = v35;
    v56 = v77;
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v79, v47);
    UUID.init()();
    *(v49 + v10[5]) = 0;
    *(v49 + v10[6]) = 1;
    *(v49 + v10[7]) = v52;
    outlined init with copy of DOCHierarchyController.FetchingOperationToken(v49, v51, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (v71[0])(v51, 0, 1, v10);
    DOCHierarchyController.loadingDisabledOperation.setter(v51, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    if (v76)
    {
      v57 = v73;
      outlined init with copy of DOCHierarchyController.FetchingOperationToken(v49, v73, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:)(v57, v54, v56 & 1);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v57, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    }

    v58 = swift_allocObject();
    v59 = v74;
    *(v58 + 16) = v55;
    *(v58 + 24) = v59;
    *(v58 + 32) = closure #1 in performChange #1 () in DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)partial apply;
    *(v58 + 40) = v44;
    *(v58 + 48) = v56 & 1;
    *(v58 + 49) = v72;
    v60 = v55;

    specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v54, 1, v60, closure #1 in DOCHierarchyController.loadInitialLocation(from:animated:shouldSave:shouldShowPlaceholder:completionHandler:)partial apply, v58);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.UI);
    v62 = v34;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      *(v65 + 4) = v62;
      *v66 = v62;
      v67 = v62;
      _os_log_impl(&dword_2493AC000, v63, v64, "Tried to reset with location %@, which is not allowed by the configuration", v65, 0xCu);
      outlined destroy of CharacterSet?(v66, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v66, -1, -1);
      MEMORY[0x24C1FE850](v65, -1, -1);
    }

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v43, 0);
    v68 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_isResetBeingPerformed;
    v69 = swift_beginAccess();
    v35[v68] = 0;
    if (v79)
    {
      v79(v69);
    }
  }
}

void DOCHierarchyController.revealLocation(_:animated:completion:)(void *a1, int a2, void (*a3)(void), uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  v67 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v66[-v13];
  v15 = [a1 fileProviderItem];
  v71 = v14;
  if (v15)
  {
    v16 = v15;
    v74 = [v15 parentItemID];
  }

  else
  {
    v74 = 0;
  }

  v17 = DOCHierarchyController.effectiveLocations.getter();
  v18 = v17;
  v72 = a1;
  v73 = v4;
  v70 = v9;
  if (v17 >> 62)
  {
    goto LABEL_23;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v74; v19; i = v74)
  {
    v21 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C1FC540](v21, v18);
      }

      else
      {
        if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = [v22 fileProviderItem];
      if (v25 && (v26 = v25, v27 = [v25 itemID], v26, v27))
      {
        if (i)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID, 0x277CC6400);
          v28 = i;
          v29 = static NSObject.== infix(_:_:)();

          i = v74;
          if (v29)
          {
LABEL_20:

            v31 = v72;
            v30 = v73;
            v33 = v70;
            v32 = v71;
            goto LABEL_39;
          }
        }

        else
        {
        }
      }

      else if (!i)
      {
        goto LABEL_20;
      }

      ++v21;
      if (v24 == v19)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v19 = __CocoaSet.count.getter();
  }

LABEL_24:

  v30 = v73;
  v34 = DOCHierarchyController.effectiveLocations.getter();
  if (v34 >> 62)
  {
    v65 = v34;
    v35 = __CocoaSet.count.getter();
    v34 = v65;
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v71;
  v31 = v72;
  v33 = v70;
  if (!v35)
  {

LABEL_38:
    v23 = 0;
LABEL_39:
    v46 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    if (*(v30 + v46) >> 62 && __CocoaSet.count.getter() < 0 || !v23)
    {
      goto LABEL_62;
    }

    v47 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v30 + v47, v33, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v48 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    v49 = *(v48 - 8);
    v50 = *(v49 + 48);
    if (v50(v33, 1, v48) == 1)
    {
      v51 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
      swift_beginAccess();
      outlined init with copy of DOCGridLayout.Spec?(v30 + v51, v32, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      LODWORD(v51) = v50(v33, 1, v48);
      v52 = v23;
      if (v51 != 1)
      {
        outlined destroy of CharacterSet?(v33, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      }
    }

    else
    {
      outlined init with take of DOCHierarchyController.FetchingOperationToken(v33, v32, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      (*(v49 + 56))(v32, 0, 1, v48);
      v53 = v23;
    }

    if (v50(v32, 1, v48) == 1)
    {

      outlined destroy of CharacterSet?(v32, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }

    else
    {
      v54 = *(v32 + *(v48 + 24));
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v32, type metadata accessor for DOCHierarchyController.FetchingOperationToken);

      if (v54)
      {
        goto LABEL_62;
      }
    }

    v55 = [v23 fileProviderItem];
    if (v55)
    {
      v56 = v55;
      v57 = [v55 itemID];
    }

    else
    {
      v57 = 0;
    }

    v58 = [v31 fileProviderItem];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 itemID];

      if (v57)
      {
        if (v60)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID, 0x277CC6400);
          v61 = static NSObject.== infix(_:_:)();

          if (v61)
          {
            goto LABEL_62;
          }

LABEL_60:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_249BA0290;
          *(v62 + 32) = v31;
          v63 = v23;
          v64 = v31;
          DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(v62, v23, 0, 1, 1, 0, v68, v69);

LABEL_63:
          return;
        }

        goto LABEL_57;
      }

      if (v60)
      {
        goto LABEL_59;
      }
    }

    else if (v57)
    {
LABEL_57:
      v60 = v57;
LABEL_59:

      goto LABEL_60;
    }

LABEL_62:
    DOCHierarchyController.resetFromRoot(with:animated:completionHandler:)(v31, v67 & 1, v68, v69);
    goto LABEL_63;
  }

  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x24C1FC540](0);
    goto LABEL_30;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v34 + 32);
LABEL_30:
    v23 = v36;

    v37 = [v23 sourceIdentifier];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
    if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
    {
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
LABEL_37:

        goto LABEL_38;
      }
    }

    v43 = [v31 fileProviderItem];
    if (v43)
    {
      v44 = v43;
      v45 = [v43 isTopLevelSharedItem];

      if (v45)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  __break(1u);
}

uint64_t DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(unint64_t a1, void *a2, int a3, int a4, uint64_t a5, int a6, void (*a7)(void), uint64_t a8)
{
  v211 = a8;
  v212 = a7;
  v206 = a6;
  v205 = a4;
  LODWORD(v207) = a3;
  v215 = a2;
  v217 = a1;
  v10 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v190 = &v184[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
  MEMORY[0x28223BE20](v202, v14);
  v192 = &v184[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v197 = &v184[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v189 = &v184[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v23);
  v198 = &v184[-v24];
  MEMORY[0x28223BE20](v25, v26);
  v193 = &v184[-v27];
  MEMORY[0x28223BE20](v28, v29);
  v191 = &v184[-v30];
  MEMORY[0x28223BE20](v31, v32);
  v199 = &v184[-v33];
  MEMORY[0x28223BE20](v34, v35);
  v196 = &v184[-v36];
  MEMORY[0x28223BE20](v37, v38);
  v200 = &v184[-v39];
  MEMORY[0x28223BE20](v40, v41);
  v208 = &v184[-v42];
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v184[-v45];
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v184[-v49];
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v210 = (v51 + 16);
  v52 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  swift_beginAccess();
  *v52 = a5;
  v201 = v52;
  v52[8] = 0;
  v53 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  v195 = v53;
  outlined init with copy of DOCGridLayout.Spec?(&v8[v53], v46, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v54 = v11 + 48;
  v55 = *(v11 + 48);
  v56 = v55(v46, 1, v10);
  v213 = v11;
  if (v56 == 1)
  {
    v57 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&v8[v57], v50, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v55(v46, 1, v10) != 1)
    {
      outlined destroy of CharacterSet?(v46, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v46, v50, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v11 + 56))(v50, 0, 1, v10);
  }

  v58 = v55(v50, 1, v10);
  v216 = v8;
  v214 = v51;
  if (v58 == 1)
  {
    outlined destroy of CharacterSet?(v50, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v59 = v215;
    goto LABEL_13;
  }

  v60 = v50[*(v10 + 24)];
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v50, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v59 = v215;
  if ((v60 & 1) == 0)
  {
LABEL_13:
    v203 = v55;
    v209 = v10;
    v220 = 0;
    v221 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v220 = 0xD00000000000001DLL;
    v221 = 0x8000000249BCC750;
    v66 = v217;
    if (v217 >> 62)
    {
      v67 = __CocoaSet.count.getter();
    }

    else
    {
      v67 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = MEMORY[0x277D84F90];
    v204 = v54;
    if (v67)
    {
      v219 = MEMORY[0x277D84F90];
      v69 = &v219;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67 & ~(v67 >> 63), 0);
      if (v67 < 0)
      {
        __break(1u);
        goto LABEL_76;
      }

      v70 = 0;
      v68 = v219;
      v71 = v66;
      do
      {
        if ((v66 & 0xC000000000000001) != 0)
        {
          v72 = MEMORY[0x24C1FC540](v70, v71);
        }

        else
        {
          v72 = *(v71 + 8 * v70 + 32);
        }

        v73 = v72;
        v74 = [v72 shortDescription];
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;

        v219 = v68;
        v79 = *(v68 + 16);
        v78 = *(v68 + 24);
        if (v79 >= v78 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
          v68 = v219;
        }

        ++v70;
        *(v68 + 16) = v79 + 1;
        v80 = v68 + 16 * v79;
        *(v80 + 32) = v75;
        *(v80 + 40) = v77;
        v71 = v217;
      }

      while (v67 != v70);
      v66 = v217;
      v59 = v215;
    }

    v81 = MEMORY[0x24C1FB0D0](v68, MEMORY[0x277D837D0]);
    v83 = v82;

    MEMORY[0x24C1FAEA0](v81, v83);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    v69 = v216;
    v84 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(v220, v221);

    *v210 = v84;

    v85 = v209;
    v55 = swift_allocBox();
    v87 = v86;

    UUID.init()();
    v88 = v85[5];
    v89 = v85[6];
    *(v87 + v85[7]) = v66;
    *(v87 + v88) = 1;
    *(v87 + v89) = (v207 & 1) == 0;
    v90 = v208;
    outlined init with copy of DOCHierarchyController.FetchingOperationToken(v87, v208, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v91 = *(v213 + 56);
    v213 += 56;
    v91(v90, 0, 1, v85);
    DOCHierarchyController.loadingDisabledOperation.setter(v90, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    v54 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v92 = *(v69 + v54);
    if (v92 >> 62)
    {
      v93 = __CocoaSet.count.getter();
    }

    else
    {
      v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v194 = v91;
    v187 = v54;
    v188 = v87;
    if (v93 < 2)
    {
      v94 = 0;
      goto LABEL_39;
    }

    v95 = *(v69 + v54);
    if (!(v95 >> 62))
    {
      v96 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v97 = v96 - 2;
      if (!__OFSUB__(v96, 2))
      {
        goto LABEL_31;
      }

      goto LABEL_78;
    }

LABEL_76:
    v183 = __CocoaSet.count.getter();
    v97 = v183 - 2;
    if (!__OFSUB__(v183, 2))
    {
LABEL_31:
      swift_beginAccess();
      v98 = *(v69 + v54);
      if ((v98 & 0xC000000000000001) == 0)
      {
        if ((v97 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v97 < *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v99 = *(v98 + 8 * v97 + 32);
LABEL_35:
          v100 = v99;
          swift_endAccess();
          if (v59)
          {
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
            v101 = v59;
            v94 = static NSObject.== infix(_:_:)();

            v100 = v101;
          }

          else
          {
            v94 = 0;
          }

LABEL_39:
          v102 = swift_allocObject();
          *(v102 + 16) = v216;
          *(v102 + 24) = v55;
          v103 = v212;
          *(v102 + 32) = v214;
          *(v102 + 40) = v103;
          v104 = v211;
          *(v102 + 48) = v211;
          v105 = v205 & 1;
          *(v102 + 56) = v105;
          v106 = v94 & 1;
          *(v102 + 57) = v94 & 1;
          v207 = v55;
          v107 = v206 & 1;
          *(v102 + 58) = v107;
          v108 = v215;
          *(v102 + 64) = v215;
          v218 = v217;
          v109 = swift_allocObject();
          v110 = v109;
          *(v109 + 16) = MEMORY[0x277D84F90];
          if (v67)
          {
            v111 = v108;

            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v103, v104);

            v112 = v216;
            v113 = v110;
            specialized RangeReplaceableCollection.removeFirst()();
            v115 = v114;
            v116 = v218;
            v117 = swift_allocObject();
            *(v117 + 16) = v113;
            *(v117 + 24) = v112;
            *(v117 + 32) = v116;
            *(v117 + 40) = 1;
            *(v117 + 48) = partial apply for closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:);
            *(v117 + 56) = v102;
            v118 = v112;

            specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v115, 1, v118, partial apply for specialized closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:), v117);

LABEL_71:
          }

          v185 = v107;
          v205 = v106;
          v206 = v105;
          v217 = v109;
          v119 = v216;
          v120 = v196;
          outlined init with copy of DOCGridLayout.Spec?(v216 + v195, v196, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          v121 = v209;
          v122 = v203;
          v123 = v203(v120, 1, v209);
          v186 = v102;
          if (v123 == 1)
          {
            v124 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
            swift_beginAccess();
            v125 = v200;
            outlined init with copy of DOCGridLayout.Spec?(v119 + v124, v200, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            LODWORD(v124) = v122(v120, 1, v121);
            v126 = v215;
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v212, v211);

            v127 = v119;
            v128 = v197;
            v129 = v199;
            v130 = v194;
            v131 = v188;
            if (v124 != 1)
            {
              outlined destroy of CharacterSet?(v120, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            }
          }

          else
          {
            v125 = v200;
            outlined init with take of DOCHierarchyController.FetchingOperationToken(v120, v200, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            v130 = v194;
            v194(v125, 0, 1, v121);
            v132 = v215;
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v212, v211);

            v133 = v119;
            v128 = v197;
            v129 = v199;
            v131 = v188;
          }

          swift_beginAccess();
          outlined init with copy of DOCHierarchyController.FetchingOperationToken(v131, v129, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          v130(v129, 0, 1, v121);
          v134 = *(v202 + 48);
          outlined init with copy of DOCGridLayout.Spec?(v125, v128, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          outlined init with copy of DOCGridLayout.Spec?(v129, v128 + v134, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          v135 = v125;
          v136 = v203;
          v137 = v203(v128, 1, v121);
          v138 = v198;
          if (v137 == 1)
          {
            outlined destroy of CharacterSet?(v129, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            outlined destroy of CharacterSet?(v135, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            if (v136(v128 + v134, 1, v121) == 1)
            {
              outlined destroy of CharacterSet?(v128, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_58:
              *(v131 + v121[6]) = 0;
              v154 = v216;

              v156 = specialized DOCHierarchyController.locationsAreInsideTrash(_:)(v155);

              v157 = swift_allocObject();
              v158 = MEMORY[0x277D84F90];
              *(v157 + 16) = MEMORY[0x277D84F90];
              *(v157 + 24) = v154;
              v159 = v214;
              *(v157 + 32) = v207;
              *(v157 + 40) = v159;
              v160 = v212;
              v161 = v211;
              *(v157 + 48) = v212;
              *(v157 + 56) = v161;
              *(v157 + 64) = v205;
              *(v157 + 65) = v185;
              v162 = v215;
              *(v157 + 72) = v215;
              type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
              v163 = swift_allocObject();
              *(v163 + 40) = DOCGridLayout.specIconWidth.modify;
              *(v163 + 48) = 0;
              *(v163 + 56) = v158;
              *(v163 + 64) = 0;
              *(v163 + 16) = v154;
              *(v163 + 24) = v158;
              *(v163 + 32) = v206;
              *(v163 + 33) = v156;
              v164 = swift_allocObject();
              swift_weakInit();
              v165 = swift_allocObject();
              v165[2] = v164;
              v165[3] = partial apply for closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:);
              v165[4] = v157;
              v213 = *(v163 + 64);
              *(v163 + 64) = v163;
              v166 = v162;
              v167 = v154;
              outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v160, v161);

              v168 = v167;

              swift_unknownObjectRelease();
              v169 = swift_allocObject();
              swift_weakInit();
              v170 = swift_allocObject();
              v170[2] = partial apply for closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:);
              v170[3] = v165;
              v170[4] = v169;
              *(v163 + 40) = partial apply for closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:);
              *(v163 + 48) = v170;

              tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();

              goto LABEL_71;
            }
          }

          else
          {
            v139 = v191;
            outlined init with copy of DOCGridLayout.Spec?(v128, v191, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            if (v136(v128 + v134, 1, v121) != 1)
            {
              v150 = v128 + v134;
              v151 = v190;
              outlined init with take of DOCHierarchyController.FetchingOperationToken(v150, v190, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
              v152 = v139;
              v153 = static UUID.== infix(_:_:)();
              outlined destroy of DOCHierarchyController.FetchingOperationToken(v151, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
              outlined destroy of CharacterSet?(v199, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
              outlined destroy of CharacterSet?(v200, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
              outlined destroy of DOCHierarchyController.FetchingOperationToken(v152, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
              v138 = v198;
              v121 = v209;
              outlined destroy of CharacterSet?(v128, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
              if (v153)
              {
                goto LABEL_58;
              }

LABEL_51:
              v140 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
              v141 = v216;
              swift_beginAccess();
              v142 = v141 + v140;
              v143 = v193;
              outlined init with copy of DOCGridLayout.Spec?(v142, v193, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
              outlined init with copy of DOCHierarchyController.FetchingOperationToken(v131, v138, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
              v144 = v121;
              v194(v138, 0, 1, v121);
              v145 = *(v202 + 48);
              v146 = v192;
              outlined init with copy of DOCGridLayout.Spec?(v143, v192, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
              outlined init with copy of DOCGridLayout.Spec?(v138, &v146[v145], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
              v147 = v203;
              if (v203(v146, 1, v144) == 1)
              {
                outlined destroy of CharacterSet?(v138, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                outlined destroy of CharacterSet?(v143, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                v148 = v144;
                if (v147(&v146[v145], 1, v144) == 1)
                {
                  outlined destroy of CharacterSet?(v146, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_65:
                  v177 = v208;
                  v194(v208, 1, 1, v148);
                  DOCHierarchyController.loadingDisabledOperation.setter(v177, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
                  goto LABEL_66;
                }
              }

              else
              {
                v149 = v189;
                outlined init with copy of DOCGridLayout.Spec?(v146, v189, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                v148 = v144;
                if (v147(&v146[v145], 1, v144) != 1)
                {
                  v175 = v190;
                  outlined init with take of DOCHierarchyController.FetchingOperationToken(&v146[v145], v190, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
                  v176 = static UUID.== infix(_:_:)();
                  outlined destroy of DOCHierarchyController.FetchingOperationToken(v175, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
                  outlined destroy of CharacterSet?(v138, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                  outlined destroy of CharacterSet?(v193, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                  outlined destroy of DOCHierarchyController.FetchingOperationToken(v149, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
                  outlined destroy of CharacterSet?(v146, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                  if (v176)
                  {
                    goto LABEL_65;
                  }

LABEL_66:
                  v178 = v201;
                  *v201 = 0;
                  v178[8] = 1;
                  v179 = v210;
                  v180 = swift_beginAccess();
                  if (*v179)
                  {

                    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v181, 0);
                  }

                  if (v212)
                  {
                    v212(v180);
                  }

                  goto LABEL_71;
                }

                outlined destroy of CharacterSet?(v138, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                outlined destroy of CharacterSet?(v193, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                outlined destroy of DOCHierarchyController.FetchingOperationToken(v149, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
              }

              outlined destroy of CharacterSet?(v146, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
              goto LABEL_66;
            }

            outlined destroy of CharacterSet?(v199, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            outlined destroy of CharacterSet?(v200, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            outlined destroy of DOCHierarchyController.FetchingOperationToken(v139, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          }

          outlined destroy of CharacterSet?(v128, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
          goto LABEL_51;
        }

        __break(1u);
        goto LABEL_82;
      }

LABEL_79:
      v99 = MEMORY[0x24C1FC540](v97);
      goto LABEL_35;
    }

LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (!DOCIsInternalBuild())
  {
    if (one-time initialization token for UI == -1)
    {
LABEL_10:
      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static Logger.UI);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v220 = v65;
        *v64 = 136315138;
        *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x8000000249BCC770, &v220);
        _os_log_impl(&dword_2493AC000, v62, v63, "assertion failure: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x24C1FE850](v65, -1, -1);
        MEMORY[0x24C1FE850](v64, -1, -1);
      }

      goto LABEL_60;
    }

LABEL_82:
    swift_once();
    goto LABEL_10;
  }

LABEL_60:
  v171 = v201;
  *v201 = 0;
  v171[8] = 1;
  v172 = v210;
  v173 = swift_beginAccess();
  if (*v172)
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v174, 0);
  }

  if (v212)
  {
    v212(v173);
  }
}

Swift::Void __swiftcall DOCHierarchyController.reset()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v9 - v4;
  v6 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  DOCHierarchyController.loadingDisabledOperation.setter(v5, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
  v9[1] = v1;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
  swift_beginAccess();
  v8 = *(v1 + v7);
  *(v1 + v7) = 0;

  v9[0] = v1;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(MEMORY[0x277D84F90], 0, DOCGridLayout.specIconWidth.modify, 0);
}

uint64_t DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(unint64_t a1, char a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_39:
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  v41 = a3;
  if (!v10)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  aBlock[0] = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v40 = v9;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
        v15 = *(MEMORY[0x24C1FC540]() + 16);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v13 = v14;
      }

      while (v10 != v14);
    }

    else
    {
      v17 = (a1 + 32);
      v18 = v10;
      do
      {
        v19 = *v17++;
        v20 = *(v19 + 16);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v18;
      }

      while (v18);
    }

    v16 = aBlock[0];
    aBlock[0] = v11;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v21 = 0;
      v9 = v40;
      do
      {
        v22 = v21 + 1;
        v23 = *(MEMORY[0x24C1FC540]() + 24);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v21 = v22;
      }

      while (v10 != v22);
    }

    else
    {
      v24 = (a1 + 32);
      v9 = v40;
      do
      {
        v25 = *v24++;
        v26 = *(v25 + 24);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v10;
      }

      while (v10);
    }

LABEL_18:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v28 hierarchyController:v5 willSet:isa animated:a2 & 1];

      swift_unknownObjectRelease();
    }

    DOCHierarchyController.locations.setter(v16);
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
      v32 = Array._bridgeToObjectiveC()().super.isa;

      [v31 hierarchyController:v5 didSet:v32 animated:a2 & 1];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    if (![objc_opt_self() protectedAppsEnabled])
    {
      goto LABEL_37;
    }

    if (v9)
    {
      v33 = __CocoaSet.count.getter();
      if (!v33)
      {
LABEL_37:
        v37 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
        v38 = swift_allocObject();
        *(v38 + 16) = v41;
        *(v38 + 24) = a4;
        aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
        aBlock[5] = v38;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        aBlock[3] = &block_descriptor_458;
        v39 = _Block_copy(aBlock);

        [v37 animateAlongsideTransition:0 completion:v39];
        _Block_release(v39);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_37;
      }
    }

    v34 = 0;
    v9 = 0;
    a3 = a1 & 0xC000000000000001;
    while (1)
    {
      if (a3)
      {
        v35 = MEMORY[0x24C1FC540](v34, a1);
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      else
      {
        if (v34 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_39;
        }

        v35 = *(a1 + 8 * v34 + 32);

        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_36;
        }
      }

      aBlock[0] = v35;
      specialized closure #3 in DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(aBlock);

      ++v34;
      if (v36 == v33)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
  return result;
}

id DOCHierarchyController.appendOneLocation(_:viewController:animated:)(id a1, void *a2, char a3)
{
  v4 = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong hierarchyController:v3 willAppend:a2 animated:a3 & 1];
    swift_unknownObjectRelease();
  }

  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (v10 >> 62)
  {
    v11 = __CocoaSet.count.getter();
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  v12 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
  }

  else if ((v10 & 0xC000000000000001) == 0)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v10 + 8 * v12 + 32);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_31;
  }

  v13 = MEMORY[0x24C1FC540](v12, v10);

LABEL_10:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if (static NSObject.== infix(_:_:)())
  {
    v34 = a3;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v33 = static DOCLog.UI;
    v32 = static os_log_type_t.fault.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_249B9FA70;
    *(v14 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    *(v14 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type DOCConcreteLocation and conformance NSObject, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    *(v14 + 32) = a1;
    v15 = *(v4 + v9);
    *(v14 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo19DOCConcreteLocationCGMd, &_sSaySo19DOCConcreteLocationCGMR);
    *(v14 + 104) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCConcreteLocation] and conformance [A], &_sSaySo19DOCConcreteLocationCGMd, &_sSaySo19DOCConcreteLocationCGMR, MEMORY[0x277CC9C50]);
    *(v14 + 72) = v15;
    v16 = a1;

    os_log(_:dso:log:type:_:)("Likely performance/correctness bug: appending a location %@ which is already the currently shown location. Currently shown locations: %@", 136, 2, &dword_2493AC000, v33, v32, v14);

    a3 = v34;
  }

  else
  {
  }

LABEL_15:
  v35 = *(v4 + v9);
  a1 = a1;

  MEMORY[0x24C1FB090](v17);
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  DOCHierarchyController.locations.setter(v35);
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    [v18 hierarchyController:v4 didAppend:a2 animated:a3 & 1];
    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() protectedAppsEnabled];
  if (result)
  {
    if (one-time initialization token for UI == -1)
    {
LABEL_21:
      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.UI);
      v21 = a1;
      v22 = a2;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v35 = v27;
        *v25 = 136315650;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x8000000249BCD710, &v35);
        *(v25 + 12) = 2080;
        [v21 node];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd, &_sSo7DOCNode_pSgMR);
        v28 = String.init<A>(describing:)();
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v35);

        *(v25 + 14) = v30;
        *(v25 + 22) = 2112;
        *(v25 + 24) = v22;
        *v26 = v22;
        v31 = v22;
        _os_log_impl(&dword_2493AC000, v23, v24, "[PROTECTED APPS] %s start authentication for node: %s viewController: %@", v25, 0x20u);
        outlined destroy of CharacterSet?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C1FE850](v26, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v27, -1, -1);
        MEMORY[0x24C1FE850](v25, -1, -1);
      }

      specialized DOCHierarchyController.authenticateViewController(node:viewController:)([v21 node], v22);
      return swift_unknownObjectRelease();
    }

LABEL_31:
    swift_once();
    goto LABEL_21;
  }

  return result;
}

uint64_t closure #3 in DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t (*a7)(void))
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  DOCHierarchyController.loadingDisabledOperation.setter(v16, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v31[0] = *(a1 + v18);

  specialized RangeReplaceableCollection<>.removeLast(_:)(a2, v19, v20);
  DOCHierarchyController.locations.setter(v31[0]);
  v31[0] = *(a1 + v18);

  specialized Array.append<A>(contentsOf:)(a3);
  DOCHierarchyController.locations.setter(v31[0]);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v22 hierarchyController:a1 didReplaceTrailingLocations:a2 with:isa animated:a5 & 1];

    swift_unknownObjectRelease();
  }

  if ([objc_opt_self() protectedAppsEnabled])
  {
    if (a6 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v25 = 0;
      while ((a6 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x24C1FC540](v25, a6);
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_14;
        }

LABEL_10:
        v30 = v26;
        specialized closure #1 in closure #3 in DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)(&v30);

        ++v25;
        if (v27 == i)
        {
          return a7();
        }
      }

      if (v25 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v26 = *(a6 + 8 * v25 + 32);

      v27 = v25 + 1;
      if (!__OFADD__(v25, 1))
      {
        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }
  }

  return a7();
}

void DOCHierarchyController.removeTrailingLocations(_:animated:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  if (a1 >= 1)
  {
    v10 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    DOCHierarchyController.loadingDisabledOperation.setter(v9, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    v11 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v15 = *(v3 + v11);

    specialized RangeReplaceableCollection<>.removeLast(_:)(a1, v12, v13);
    DOCHierarchyController.locations.setter(v15);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong hierarchyController:v3 didPopLocations:a1 animated:a2 & 1];
      swift_unknownObjectRelease();
    }
  }
}

void DOCHierarchyController.loadParentIfNeeded()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    v5 = v21 - 1;
    if (!__OFSUB__(v21, 1))
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v5 & 0x8000000000000000) != 0 || v5 < *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_minParentLocations])
  {
    v10 = firstInfo #1 () in DOCHierarchyController.loadParentIfNeeded()(v0);
    if (v10)
    {
      v12 = v10;
      v13 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_itemManager];
      v14 = v11;
      v15 = [v11 itemID];
      v16 = swift_allocObject();
      v16[2] = v12;
      v16[3] = v14;
      v16[4] = v0;
      v16[5] = v1;
      aBlock[4] = partial apply for closure #1 in DOCHierarchyController.loadParentIfNeeded();
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [FPItem]?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_409;
      v17 = _Block_copy(aBlock);
      v18 = v12;
      v19 = v14;
      v20 = v0;

      [v13 fetchParentsForItemID:v15 recursively:1 completionHandler:v17];
      _Block_release(v17);
    }

    else
    {
    }

    return;
  }

  if (one-time initialization token for UI != -1)
  {
    goto LABEL_15;
  }

LABEL_6:
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2493AC000, v7, v8, "Parent loading limit reached.", v9, 2u);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }
}

Swift::Void __swiftcall DOCHierarchyController.saveLastVisitedLocationIfNeeded()()
{
  v1 = DOCHierarchyController.effectiveRootLocation.getter();
  swift_beginAccess();

  v3 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v2, v1);
  v5 = v4;
  v7 = v6;

  if (!v3)
  {
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.DocumentManager);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2493AC000, v11, v12, "Not storing last visited location: invalid browsedState", v13, 2u);
      MEMORY[0x24C1FE850](v13, -1, -1);
      outlined consume of DOCHierarchyController.BrowsedState?(0, v5, v7);
    }

    goto LABEL_19;
  }

  v8 = v7;
  v9 = v3;

  DOCHierarchyController.sendDelegateDidUpdateLastDisplayedLocationPath(browsedState:)(v9, v5, v7);
  if (![v9 canBeRestored])
  {
    outlined consume of DOCHierarchyController.BrowsedState?(v3, v5, v7);
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.DocumentManager);
    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Not storing last visited location: not available, or cannot be restored.";
    goto LABEL_17;
  }

  if (![*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration) saveLastVisitedLocation])
  {
    outlined consume of DOCHierarchyController.BrowsedState?(v3, v5, v7);
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.DocumentManager);
    v11 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Not storing last visited location: opted out.";
LABEL_17:
    _os_log_impl(&dword_2493AC000, v11, v15, v17, v16, 2u);
    MEMORY[0x24C1FE850](v16, -1, -1);
LABEL_18:

LABEL_19:

    goto LABEL_20;
  }

  DOCHierarchyController.persistBrowsedState(_:isCurrent:)(v9, v5, v7, 1);

  outlined consume of DOCHierarchyController.BrowsedState?(v3, v5, v7);
LABEL_20:
}

void closure #1 in DOCHierarchyController.removeTrailingLocationCount(_:animated:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    v7 = v9 - 1;
    if (!__OFSUB__(v9, 1))
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v7 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v7;
  }

  DOCHierarchyController.removeTrailingLocations(_:animated:)(v8, 0);
  DOCHierarchyController.loadParentIfNeeded()();
  DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
}

Swift::Bool __swiftcall DOCHierarchyController.canRemove(after:)(DOCConcreteLocation *after)
{
  v2 = DOCHierarchyController.effectiveLocations.getter();
  v5 = after;
  v4[2] = &v5;
  LOBYTE(after) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v4, v2);

  return after & 1;
}

void DOCHierarchyController.remove(after:animated:completion:)(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v11 = *&v5[v10];

  v12 = specialized Collection<>.firstIndex(of:)(a1, v11, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    v64 = a2;
    v65 = a3;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.UI);
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v62 = v12;
      v63 = a4;
      v23 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v71[0] = v61;
      *v23 = 136315650;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BCC800, v71);
      *(v23 + 12) = 2080;
      v24 = v20;
      v25 = [v24 description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v71);

      *(v23 + 14) = v29;
      *(v23 + 22) = 2080;
      v30 = [v24 node];
      v31 = v30;
      if (v30)
      {
        v32 = [v30 displayName];
        swift_unknownObjectRelease();
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      *&aBlock = v31;
      *(&aBlock + 1) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v35 = String.init<A>(describing:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v71);

      *(v23 + 24) = v37;
      _os_log_impl(&dword_2493AC000, v21, v22, "[PROTECTED APPS] %s Location needs auth location: %s node: %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v61, -1, -1);
      MEMORY[0x24C1FE850](v23, -1, -1);

      v12 = v62;
      a4 = v63;
    }

    else
    {
    }

    v38 = *&v5[v10];
    if (v38 >> 62)
    {
      v39 = __CocoaSet.count.getter();
      v40 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
LABEL_18:
        v41 = v39 - v40;
        if (!__OFSUB__(v39, v40))
        {
          _StringGuts.grow(_:)(17);

          strcpy(&aBlock, "remove(after: ");
          HIBYTE(aBlock) = -18;
          v42 = [v20 shortDescription];
          v43 = a4;
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = v45;

          v47 = v44;
          v48 = v43;
          MEMORY[0x24C1FAEA0](v47, v46);

          MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
          v49 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(aBlock, *(&aBlock + 1));

          v50 = swift_allocObject();
          *(v50 + 16) = v5;
          *(v50 + 24) = v41;
          v51 = v64 & 1;
          *(v50 + 32) = v51;
          *(v50 + 40) = v49;
          *(v50 + 48) = v65;
          *(v50 + 56) = v48;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v53 = Strong;
            v54 = swift_allocObject();
            *(v54 + 16) = partial apply for closure #1 in DOCHierarchyController.remove(after:animated:completion:);
            *(v54 + 24) = v50;
            v69 = thunk for @callee_guaranteed () -> ()partial apply;
            v70 = v54;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            v67 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
            v68 = &block_descriptor_86;
            v55 = _Block_copy(&aBlock);
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v65, v48);
            v56 = v5;

            [v53 hierarchyController:v56 willPopLocations:v41 animated:v51 completion:v55];
          }

          else
          {
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v65, v48);
            v57 = v5;

            DOCHierarchyController.removeTrailingLocations(_:animated:)(v41, v51);
            DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
            v58 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
            v59 = swift_allocObject();
            v59[2] = v57;
            v59[3] = v49;
            v59[4] = v65;
            v59[5] = v48;
            v69 = partial apply for closure #1 in closure #1 in DOCHierarchyController.remove(after:animated:completion:);
            v70 = v59;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            v67 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
            v68 = &block_descriptor_80;
            v55 = _Block_copy(&aBlock);
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v65, v48);
            v60 = v57;

            [v58 animateAlongsideTransition:0 completion:v55];
          }

          _Block_release(v55);

          swift_unknownObjectRelease();
          return;
        }

LABEL_27:
        __break(1u);
        return;
      }
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v40 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.UI);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2493AC000, v16, v17, "Cannot remove the location after a location that is not in the locations array", v18, 2u);
    MEMORY[0x24C1FE850](v18, -1, -1);
  }

  if (a3)
  {
    a3();
  }
}

uint64_t closure #1 in DOCHierarchyController.remove(after:animated:completion:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DOCHierarchyController.removeTrailingLocations(_:animated:)(a2, a3);
  DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
  v10 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v15[4] = partial apply for closure #1 in closure #1 in DOCHierarchyController.remove(after:animated:completion:);
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v15[3] = &block_descriptor_388;
  v12 = _Block_copy(v15);
  v13 = a1;

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5, a6);

  [v10 animateAlongsideTransition:0 completion:v12];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

void DOCHierarchyController.goToEnclosing(location:animated:completion:)(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v8 = DOCHierarchyController.effectiveLocations.getter();
  v11 = a1;
  v10[2] = &v11;
  v9 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v10, v8);

  if (v9)
  {
    DOCHierarchyController.remove(after:animated:completion:)(a1, a2 & 1, a3, a4);
  }

  else
  {
    DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(a1, a1, a2 & 1, 1, 0, a3, a4);
  }
}

Swift::Void __swiftcall DOCHierarchyController.discardPendingOperations(forScheduleHierarchyOperation:)(DocumentManagerExecutables::DOCHierarchyController::DOCHierarchyOperationType forScheduleHierarchyOperation)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  swift_beginAccess();
  v8 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8) && *(v7 + *(v8 + 20)) == (forScheduleHierarchyOperation & 1))
  {
    (*(v9 + 56))(v6, 1, 1, v8);
    DOCHierarchyController.loadingDisabledOperation.setter(v6, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
  }
}

uint64_t DOCHierarchyController.activeSemanticNavigationOperation.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation;
  swift_beginAccess();
  return *v1;
}

uint64_t closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, int a7, int a8, char a9, int *a10)
{
  v95 = a8;
  v96 = a7;
  v109 = a6;
  v108 = a5;
  v107 = a4;
  v97 = a1;
  v12 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v99 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
  MEMORY[0x28223BE20](v111, v16);
  v102 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v92 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v93 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v94 = &v92 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v105 = &v92 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v101 = &v92 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v100 = &v92 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v92 - v39;
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v92 - v43;
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v92 - v47;
  v98 = a3;
  v112 = swift_projectBox();
  v49 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&a2[v49], v44, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v50 = *(v13 + 48);
  v51 = v50(v44, 1, v12);
  v110 = v50;
  v106 = a2;
  if (v51 == 1)
  {
    v52 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&a2[v52], v48, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v50(v44, 1, v12) != 1)
    {
      outlined destroy of CharacterSet?(v44, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v44, v48, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v13 + 56))(v48, 0, 1, v12);
  }

  v53 = v112;
  swift_beginAccess();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v53, v40, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v54 = *(v13 + 56);
  v104 = v13 + 56;
  v103 = v54;
  v54(v40, 0, 1, v12);
  v55 = v111[12];
  outlined init with copy of DOCGridLayout.Spec?(v48, v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v40, &v21[v55], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v56 = v110;
  if (v110(v21, 1, v12) == 1)
  {
    outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v48, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v56(&v21[v55], 1, v12) == 1)
    {
      outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      v57 = v106;
LABEL_18:
      v111 = a10;
      v69 = v112;
      swift_beginAccess();
      *(v69 + *(v12 + 24)) = 0;
      swift_beginAccess();

      v71 = specialized DOCHierarchyController.locationsAreInsideTrash(_:)(v70);

      v72 = swift_allocObject();
      v73 = v97;
      *(v72 + 16) = v97;
      *(v72 + 24) = v57;
      v74 = v107;
      *(v72 + 32) = v98;
      *(v72 + 40) = v74;
      v75 = v108;
      v76 = v109;
      *(v72 + 48) = v108;
      *(v72 + 56) = v76;
      *(v72 + 64) = v95 & 1;
      *(v72 + 65) = a9 & 1;
      *(v72 + 72) = a10;
      type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
      v77 = swift_allocObject();
      *(v77 + 40) = DOCGridLayout.specIconWidth.modify;
      *(v77 + 48) = 0;
      *(v77 + 56) = MEMORY[0x277D84F90];
      *(v77 + 64) = 0;
      *(v77 + 16) = v57;
      *(v77 + 24) = v73;
      *(v77 + 32) = v96 & 1;
      *(v77 + 33) = v71;
      v78 = swift_allocObject();
      swift_weakInit();
      v79 = swift_allocObject();
      v79[2] = v78;
      v79[3] = closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)partial apply;
      v79[4] = v72;
      *(v77 + 64) = v77;
      swift_bridgeObjectRetain_n();
      v80 = v57;

      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v75, v109);
      v81 = v111;

      swift_unknownObjectRelease();
      v82 = swift_allocObject();
      swift_weakInit();
      v83 = swift_allocObject();
      v83[2] = closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
      v83[3] = v79;
      v83[4] = v82;
      *(v77 + 40) = closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
      *(v77 + 48) = v83;

      tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
    }

    goto LABEL_10;
  }

  v58 = v100;
  outlined init with copy of DOCGridLayout.Spec?(v21, v100, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v56(&v21[v55], 1, v12) == 1)
  {
    outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v48, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v58, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_10:
    outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    v57 = v106;
    goto LABEL_11;
  }

  v67 = v99;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(&v21[v55], v99, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v68 = static UUID.== infix(_:_:)();
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v67, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v40, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of CharacterSet?(v48, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v58, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v21, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v57 = v106;
  if (v68)
  {
    goto LABEL_18;
  }

LABEL_11:
  v59 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  swift_beginAccess();
  v60 = v101;
  outlined init with copy of DOCGridLayout.Spec?(&v57[v59], v101, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v61 = v112;
  swift_beginAccess();
  v62 = v105;
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v61, v105, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v103(v62, 0, 1, v12);
  v63 = v111[12];
  v64 = v102;
  outlined init with copy of DOCGridLayout.Spec?(v60, v102, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v62, v64 + v63, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v65 = v110;
  if (v110(v64, 1, v12) == 1)
  {
    outlined destroy of CharacterSet?(v62, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v60, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v65(v64 + v63, 1, v12) == 1)
    {
      outlined destroy of CharacterSet?(v64, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_20:
      v88 = v93;
      v103(v93, 1, 1, v12);
      DOCHierarchyController.loadingDisabledOperation.setter(v88, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v66 = v94;
  outlined init with copy of DOCGridLayout.Spec?(v64, v94, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v65(v64 + v63, 1, v12) == 1)
  {
    outlined destroy of CharacterSet?(v105, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v60, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v66, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_16:
    outlined destroy of CharacterSet?(v64, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    goto LABEL_21;
  }

  v85 = v64 + v63;
  v86 = v99;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(v85, v99, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v87 = static UUID.== infix(_:_:)();
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v86, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v105, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of CharacterSet?(v60, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v66, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v64, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v87)
  {
    goto LABEL_20;
  }

LABEL_21:
  v89 = &v57[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  swift_beginAccess();
  *v89 = 0;
  v89[8] = 1;
  v90 = v107;
  result = swift_beginAccess();
  if (*(v90 + 16))
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v91, 0);
  }

  if (v108)
  {
    return v108(result);
  }

  return result;
}

void closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, int a8, char a9, void *a10)
{
  v106 = a8;
  v108 = a7;
  v111 = a6;
  v113 = a5;
  v13 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v115 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v104 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
  MEMORY[0x28223BE20](v110, v16);
  v18 = &v104 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v105 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v107 = &v104 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v104 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v104 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v104 - v35;
  v109 = swift_projectBox();
  v37 = *(a2 + 16);
  v38 = MEMORY[0x277D84F90];
  v114 = a3;
  if (v37)
  {
    v112 = a1;
    aBlock = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v39 = (a2 + 32);
    do
    {
      v40 = *v39;
      v39 += 2;
      v41 = v40;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v37;
    }

    while (v37);
    v38 = aBlock;
    a3 = v114;
    a1 = v112;
  }

  v112 = _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSaySo011DOCConcreteD0CG_SaySo06UIViewG0CGtFZAD_Tt1g5(v38, a1);

  v42 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&a3[v42], v32, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v43 = v115;
  v44 = *(v115 + 48);
  if (v44(v32, 1, v13) == 1)
  {
    v45 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&a3[v45], v36, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v46 = v44(v32, 1, v13);
    v47 = v110;
    if (v46 != 1)
    {
      outlined destroy of CharacterSet?(v32, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v32, v36, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v43 + 56))(v36, 0, 1, v13);
    v47 = v110;
  }

  v48 = v109;
  swift_beginAccess();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v48, v28, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v49 = *(v43 + 56);
  v115 = v43 + 56;
  v49(v28, 0, 1, v13);
  v50 = *(v47 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v36, v18, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v28, &v18[v50], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v44(v18, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v28, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v44(&v18[v50], 1, v13) == 1)
    {
      outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      v51 = v111;
      v52 = v112;
      v53 = v114;
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v110 = v49;
  v54 = v107;
  outlined init with copy of DOCGridLayout.Spec?(v18, v107, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v44(&v18[v50], 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v28, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v54, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_14:
    outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    v51 = v111;
    v53 = v114;
    goto LABEL_15;
  }

  v59 = v104;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(&v18[v50], v104, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v60 = static UUID.== infix(_:_:)();
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v59, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v28, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v54, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v51 = v111;
  v52 = v112;
  v53 = v114;
  v49 = v110;
  if (v60)
  {
LABEL_20:
    v61 = swift_allocObject();
    v62 = v113;
    v61[2] = v53;
    v61[3] = v62;
    v63 = v108;
    v61[4] = v51;
    v61[5] = v63;
    v64 = v105;
    v49(v105, 1, 1, v13);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v51, v63);

    v65 = v53;
    DOCHierarchyController.loadingDisabledOperation.setter(v64, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    if (v106)
    {

      specialized DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)(1, v52, a9 & 1, v65, partial apply for closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:), v61);

LABEL_58:

      return;
    }

    v66 = swift_allocObject();
    *(v66 + 16) = partial apply for closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:);
    *(v66 + 24) = v61;
    if (v52 >> 62)
    {
      v67 = __CocoaSet.count.getter();
      if (v67 >= 1)
      {
LABEL_24:
        v68 = &_sSo9NSCopying_pMd;
        if (a10)
        {
          v69 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
          v70 = swift_beginAccess();
          v51 = *&v65[v69];
          aBlock = a10;
          MEMORY[0x28223BE20](v70, v71);
          *(&v104 - 2) = &aBlock;
          swift_retain_n();

          v72 = a10;
          v73 = specialized BidirectionalCollection.lastIndex(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v104 - 4), v51);
          v75 = v74;

          v76 = *&v65[v69];
          v77 = v76 >> 62;
          if (v75)
          {
            if (v77)
            {
              v78 = __CocoaSet.count.getter();
            }

            else
            {
              v78 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v52 = v112;
            v68 = &_sSo9NSCopying_pMd;
LABEL_39:
            v82 = v68[276];
            swift_beginAccess();
            v83 = *&v65[v82];
            if (v83 >> 62)
            {
              if (v78 == __CocoaSet.count.getter())
              {
                goto LABEL_41;
              }
            }

            else if (v78 == *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_41:
              DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(v52, a9 & 1, thunk for @callee_guaranteed () -> ()partial apply, v66);

              return;
            }

            specialized DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)(v78, v52, a9 & 1, v65, partial apply for closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:), v61);

            goto LABEL_58;
          }

          if (v77)
          {
            v80 = __CocoaSet.count.getter();
          }

          else
          {
            v80 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v68 = &_sSo9NSCopying_pMd;

          v81 = v80 - v73;
          if (!__OFSUB__(v80, v73))
          {
            v78 = v81 - 1;
            v52 = v112;
            if (!__OFSUB__(v81, 1))
            {
              goto LABEL_39;
            }

            __break(1u);
LABEL_38:
            swift_retain_n();
            v78 = 0;
            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_63;
        }

        if (v67 != 1)
        {
          goto LABEL_38;
        }

        if (v52 >> 62)
        {
          v79 = __CocoaSet.count.getter();
        }

        else
        {
          v79 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v79)
        {
          if ((v52 & 0xC000000000000001) == 0)
          {
            if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v84 = *(v52 + 32);
            v85 = *(v84 + 16);
            swift_retain_n();
            v86 = v85;

            goto LABEL_47;
          }
        }

        else
        {
          __break(1u);
        }

        swift_retain_n();
        v86 = *(MEMORY[0x24C1FC540](0, v52) + 16);
        swift_unknownObjectRelease();
        v84 = MEMORY[0x24C1FC540](0, v52);
LABEL_47:

        v87 = *(v84 + 24);

        DOCHierarchyController.appendOneLocation(_:viewController:animated:)(v86, v87, a9 & 1);

        DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
        v88 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
        v89 = swift_allocObject();
        v90 = v113;
        v89[2] = v65;
        v89[3] = v90;
        v89[4] = v51;
        v91 = v51;
        v92 = v108;
        v89[5] = v108;
        v120 = closure #1 in closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)partial apply;
        v121 = v89;
        aBlock = MEMORY[0x277D85DD0];
        v117 = 1107296256;
        v93 = &block_descriptor_483;
LABEL_55:
        v118 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
        v119 = v93;
        v102 = _Block_copy(&aBlock);
        outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v91, v92);

        v103 = v65;

        [v88 animateAlongsideTransition:0 completion:v102];
        _Block_release(v102);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v67 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v67 >= 1)
      {
        goto LABEL_24;
      }
    }

    swift_retain_n();

    if (DOCIsInternalBuild())
    {
LABEL_54:
      DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
      v88 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
      v100 = swift_allocObject();
      v101 = v113;
      v100[2] = v65;
      v100[3] = v101;
      v100[4] = v51;
      v91 = v51;
      v92 = v108;
      v100[5] = v108;
      v120 = partial apply for closure #1 in closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:);
      v121 = v100;
      aBlock = MEMORY[0x277D85DD0];
      v117 = 1107296256;
      v93 = &block_descriptor_476;
      goto LABEL_55;
    }

    if (one-time initialization token for UI == -1)
    {
LABEL_51:
      v94 = type metadata accessor for Logger();
      __swift_project_value_buffer(v94, static Logger.UI);
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        aBlock = v98;
        *v97 = 136315138;
        *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000249BCD680, &aBlock);
        _os_log_impl(&dword_2493AC000, v95, v96, "assertion failure: %s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v98);
        v99 = v98;
        v51 = v111;
        MEMORY[0x24C1FE850](v99, -1, -1);
        MEMORY[0x24C1FE850](v97, -1, -1);
      }

      goto LABEL_54;
    }

LABEL_63:
    swift_once();
    goto LABEL_51;
  }

LABEL_15:

  v55 = &v53[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  swift_beginAccess();
  *v55 = 0;
  v55[8] = 1;
  v56 = v113;
  v57 = swift_beginAccess();
  if (*(v56 + 16))
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v58, 0);
  }

  if (v51)
  {
    v51(v57);
  }
}

uint64_t _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSaySo011DOCConcreteD0CG_SaySo06UIViewG0CGtFZAD_Tt1g5(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!(a2 >> 62))
    {
LABEL_3:
      if (v4 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

LABEL_26:
      if ((DOCIsInternalBuild() & 1) == 0)
      {
        if (one-time initialization token for UI == -1)
        {
LABEL_28:
          v23 = type metadata accessor for Logger();
          __swift_project_value_buffer(v23, static Logger.UI);
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v28 = v27;
            *v26 = 136315138;
            *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000249BCD7D0, &v28);
            _os_log_impl(&dword_2493AC000, v24, v25, "assertion failure: %s", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v27);
            MEMORY[0x24C1FE850](v27, -1, -1);
            MEMORY[0x24C1FE850](v26, -1, -1);
          }

          return MEMORY[0x277D84F90];
        }

LABEL_34:
        swift_once();
        goto LABEL_28;
      }

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a2 >> 62))
    {
      goto LABEL_3;
    }
  }

  if (v4 != __CocoaSet.count.getter())
  {
    goto LABEL_26;
  }

LABEL_4:
  v28 = MEMORY[0x277D84F90];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) == 0 && v4 > *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  if (((a2 | a1) & 0xC000000000000001) != 0)
  {
    for (i = 4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](i - 4, a1);
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v7 = *(a1 + 8 * i);
        if (!v5)
        {
LABEL_14:
          v8 = *(a2 + 8 * i);
          goto LABEL_15;
        }
      }

      v8 = MEMORY[0x24C1FC540](i - 4, a2);
LABEL_15:
      v9 = v8;
      type metadata accessor for LocationPairedViewController();
      v10 = swift_allocObject();
      *(v10 + 16) = v7;
      *(v10 + 24) = v9;
      v11 = v7;
      v12 = v9;
      MEMORY[0x24C1FB090]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (!--v4)
      {
        return v28;
      }
    }
  }

  v13 = (a1 + 32);
  v14 = (a2 + 32);
  type metadata accessor for LocationPairedViewController();
  do
  {
    v15 = *v13;
    v16 = *v14;
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v18 = v15;
    v19 = v16;
    v20 = v18;
    v21 = v19;
    MEMORY[0x24C1FB090]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    ++v14;
    ++v13;
    --v4;
  }

  while (v4);
  return v28;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation;
  swift_beginAccess();
  *v6 = 0;
  *(v6 + 8) = 1;
  result = swift_beginAccess();
  if (*(a3 + 16))
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v8, 0);
  }

  if (a4)
  {
    return a4(result);
  }

  return result;
}

void DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(unint64_t a1, void *a2, int a3, int a4, int a5, void (*a6)(uint64_t), uint64_t a7)
{
  v247 = a7;
  v248 = a6;
  LODWORD(v239) = a5;
  v238 = a4;
  LODWORD(v241) = a3;
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  v9 = *(updated - 8);
  MEMORY[0x28223BE20](updated, v10);
  v225 = &v213 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v213 - v14;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
  MEMORY[0x28223BE20](v234, v16);
  v230 = &v213 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v233 = &v213 - v20;
  v250 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v252 = *(v250 - 8);
  MEMORY[0x28223BE20](v250, v21);
  v23 = &v213 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v240 = &v213 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v27, v28);
  v231 = &v213 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v229 = &v213 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v242 = &v213 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v213 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v40 - 8, v41);
  MEMORY[0x28223BE20](v42, v43);
  MEMORY[0x28223BE20](v44, v45);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v213 - v48;
  MEMORY[0x28223BE20](v50, v51);
  MEMORY[0x28223BE20](v53, &v213 - v52);
  v232 = &v213 - v54;
  MEMORY[0x28223BE20](v55, v56);
  MEMORY[0x28223BE20](v57, v58);
  v243 = &v213 - v59;
  MEMORY[0x28223BE20](v60, v61);
  v63 = &v213 - v62;
  MEMORY[0x28223BE20](v64, v65);
  v72 = &v213 - v71;
  v73 = a1 >> 62;
  if (a1 >> 62)
  {
    v215 = v68;
    v219 = v69;
    v218 = v70;
    v221 = v67;
    v222 = v66;
    v228 = a1 >> 62;
    v74 = __CocoaSet.count.getter();
    v73 = v228;
    v66 = v222;
    v67 = v221;
    v70 = v218;
    v69 = v219;
    v68 = v215;
    if (v74)
    {
LABEL_3:
      v228 = v73;
      v226 = v74;
      v222 = v66;
      v221 = v67;
      v216 = v49;
      v218 = v70;
      v219 = v69;
      v215 = v68;
      v217 = v23;
      v235 = a2;
      v214 = v15;
      v245 = swift_allocBox();
      v224 = v9;
      v75 = *(v9 + 56);
      v237 = v76;
      v227 = v75;
      v75(v76, 1, 1, updated);
      v77 = swift_allocObject();
      v246 = v77;
      *(v77 + 16) = 0;
      v236 = (v77 + 16);
      v78 = v251;
      v79 = &v251[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
      swift_beginAccess();
      v80 = *v79;
      if (v79[8])
      {
        v80 = 0;
      }

      *v79 = v80;
      v223 = v79;
      v79[8] = 0;
      v81 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
      swift_beginAccess();
      v220 = v81;
      outlined init with copy of DOCGridLayout.Spec?(&v78[v81], v63, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      v82 = v252;
      v84 = v252 + 6;
      isa = v252[6].isa;
      v85 = v250;
      v86 = (isa)(v63, 1, v250);
      v244 = v84;
      if (v86 == 1)
      {
        v87 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
        swift_beginAccess();
        outlined init with copy of DOCGridLayout.Spec?(&v78[v87], v72, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        v88 = isa;
        if ((isa)(v63, 1, v85) != 1)
        {
          outlined destroy of CharacterSet?(v63, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        }
      }

      else
      {
        outlined init with take of DOCHierarchyController.FetchingOperationToken(v63, v72, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        (v82[7].isa)(v72, 0, 1, v85);
        v88 = isa;
      }

      if ((v88)(v72, 1, v85) == 1)
      {
        outlined destroy of CharacterSet?(v72, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      }

      else
      {
        v89 = v72[*(v85 + 24)];
        outlined destroy of DOCHierarchyController.FetchingOperationToken(v72, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        if ((v89 & 1) == 0)
        {
          v150 = DOCIsInternalBuild();
          v93 = v248;
          v96 = v231;
          if (v150)
          {
LABEL_40:
            if ((v223[8] & 1) == 0 && !*v223)
            {
              v223[8] = 1;
            }

            v157 = v236;
            swift_beginAccess();
            if (*v157)
            {

              DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v158, 0);
            }

            v159 = v237;
            swift_beginAccess();
            outlined init with copy of DOCGridLayout.Spec?(v159, v96, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            if ((*(v224 + 48))(v96, 1, updated) == 1)
            {
              v160 = outlined destroy of CharacterSet?(v96, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            }

            else
            {
              v180 = v225;
              outlined init with take of DOCHierarchyController.FetchingOperationToken(v96, v225, type metadata accessor for DOCHierarchyController.UpdateExpectation);
              DOCHierarchyController.endUpdateExpectation(_:)(v180);
              v160 = outlined destroy of DOCHierarchyController.FetchingOperationToken(v180, type metadata accessor for DOCHierarchyController.UpdateExpectation);
            }

            if (v93)
            {
              v93(v160);
            }

            goto LABEL_79;
          }

          if (one-time initialization token for UI == -1)
          {
LABEL_37:
            v151 = type metadata accessor for Logger();
            __swift_project_value_buffer(v151, static Logger.UI);
            v152 = Logger.logObject.getter();
            v153 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v152, v153))
            {
              v154 = swift_slowAlloc();
              v155 = swift_slowAlloc();
              v255 = v155;
              *v154 = 136315138;
              *(v154 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x8000000249BCC850, &v255);
              _os_log_impl(&dword_2493AC000, v152, v153, "assertion failure: %s", v154, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v155);
              v156 = v155;
              v93 = v248;
              MEMORY[0x24C1FE850](v156, -1, -1);
              MEMORY[0x24C1FE850](v154, -1, -1);
            }

            goto LABEL_40;
          }

LABEL_93:
          swift_once();
          goto LABEL_37;
        }
      }

      UUID.init()();
      v90 = updated;
      *&v39[*(updated + 20)] = a1;
      v91 = v242;
      outlined init with copy of DOCHierarchyController.FetchingOperationToken(v39, v242, type metadata accessor for DOCHierarchyController.UpdateExpectation);
      v92 = v227;
      v227(v91, 0, 1, v90);
      v93 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__currentUpdateExpectation;
      v94 = v251;
      swift_beginAccess();
      outlined assign with take of DOCHierarchyController.UpdateExpectation?(v91, v93 + v94);
      swift_endAccess();
      v92(v39, 0, 1, v90);
      outlined assign with take of DOCHierarchyController.UpdateExpectation?(v39, v237);
      v255 = 0;
      v256 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v255 = 0xD00000000000001ALL;
      v256 = 0x8000000249BCC830;
      if (v228)
      {
        v95 = __CocoaSet.count.getter();
      }

      else
      {
        v95 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v96 = v248;
      v97 = MEMORY[0x277D84F90];
      v231 = v88;
      if (!v95)
      {
        goto LABEL_25;
      }

      v253 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95 & ~(v95 >> 63), 0);
      if ((v95 & 0x8000000000000000) == 0)
      {
        v98 = 0;
        v97 = v253;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v99 = MEMORY[0x24C1FC540](v98, a1);
          }

          else
          {
            v99 = *(a1 + 8 * v98 + 32);
          }

          v100 = v99;
          v101 = [v99 shortDescription];
          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v103;

          v253 = v97;
          v106 = *(v97 + 16);
          v105 = *(v97 + 24);
          if (v106 >= v105 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1);
            v97 = v253;
          }

          ++v98;
          *(v97 + 16) = v106 + 1;
          v107 = v97 + 16 * v106;
          *(v107 + 32) = v102;
          *(v107 + 40) = v104;
        }

        while (v95 != v98);
        v96 = v248;
        v94 = v251;
LABEL_25:
        v108 = MEMORY[0x24C1FB0D0](v97, MEMORY[0x277D837D0]);
        v110 = v109;

        MEMORY[0x24C1FAEA0](v108, v110);

        MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
        v111 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(v255, v256);

        *v236 = v111;

        v112 = v250;
        v113 = swift_allocBox();
        v115 = v114;

        UUID.init()();
        v116 = v112[5];
        v117 = v112[6];
        *(v115 + v112[7]) = a1;
        *(v115 + v116) = 0;
        *(v115 + v117) = (v241 & 1) == 0;
        v118 = v243;
        outlined init with copy of DOCHierarchyController.FetchingOperationToken(v115, v243, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        v119 = v252[7].isa;
        v252 += 7;
        v241 = v119;
        (v119)(v118, 0, 1, v112);
        DOCHierarchyController.loadingDisabledOperation.setter(v118, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
        v120 = v240;
        outlined init with copy of DOCHierarchyController.FetchingOperationToken(v115, v240, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        v121 = v226 - 1;
        if (__OFSUB__(v226, 1))
        {
          __break(1u);
        }

        else
        {
          v228 = v115;
          if ((a1 & 0xC000000000000001) == 0)
          {
            if ((v121 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v121 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v122 = *(a1 + 8 * v121 + 32);
              goto LABEL_30;
            }

            __break(1u);
            goto LABEL_91;
          }
        }

        v122 = MEMORY[0x24C1FC540](v121, a1);
LABEL_30:
        v123 = v122;
        DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:)(v120, v122, 0);

        outlined destroy of DOCHierarchyController.FetchingOperationToken(v120, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        v124 = swift_allocObject();
        *(v124 + 16) = v94;
        *(v124 + 24) = v113;
        v242 = v113;
        v125 = v245;
        *(v124 + 32) = v246;
        *(v124 + 40) = v125;
        v126 = v247;
        *(v124 + 48) = v96;
        *(v124 + 56) = v126;
        v127 = v235;
        *(v124 + 64) = v235;
        v128 = v238 & 1;
        *(v124 + 72) = v128;
        *(v124 + 80) = a1;
        v129 = v239 & 1;
        *(v124 + 88) = v239 & 1;
        v254 = a1;
        v130 = swift_allocObject();
        v131 = v96;
        v132 = v130;
        *(v130 + 16) = MEMORY[0x277D84F90];
        if (v95)
        {
          v133 = v127;
          swift_bridgeObjectRetain_n();
          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v131, v126);

          v134 = v94;
          specialized RangeReplaceableCollection.removeFirst()();
          v136 = v135;
          v137 = v254;
          v138 = swift_allocObject();
          *(v138 + 16) = v132;
          *(v138 + 24) = v134;
          *(v138 + 32) = v137;
          *(v138 + 40) = 1;
          *(v138 + 48) = partial apply for closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:);
          *(v138 + 56) = v124;
          v139 = v134;

          specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v136, 1, v139, closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:)specialized partial apply, v138);

LABEL_79:

          return;
        }

        LODWORD(v227) = v129;
        v238 = v128;
        v239 = v130;
        v240 = v124;
        v140 = v232;
        outlined init with copy of DOCGridLayout.Spec?(v94 + v220, v232, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        v141 = v250;
        v142 = v231;
        if ((v231)(v140, 1, v250) == 1)
        {
          v143 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
          swift_beginAccess();
          v144 = v221;
          outlined init with copy of DOCGridLayout.Spec?(v94 + v143, v221, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          LODWORD(v143) = v142(v140, 1, v141);
          v145 = v235;

          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v248, v247);

          v146 = v94;
          v147 = v143 == 1;
          v148 = v233;
          v149 = v228;
          if (!v147)
          {
            outlined destroy of CharacterSet?(v140, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          }
        }

        else
        {
          v144 = v221;
          outlined init with take of DOCHierarchyController.FetchingOperationToken(v140, v221, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          v241(v144, 0, 1, v141);
          v161 = v235;

          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v248, v247);

          v162 = v94;
          v148 = v233;
          v149 = v228;
        }

        swift_beginAccess();
        v163 = v222;
        outlined init with copy of DOCHierarchyController.FetchingOperationToken(v149, v222, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        v241(v163, 0, 1, v141);
        v164 = *(v234 + 48);
        outlined init with copy of DOCGridLayout.Spec?(v144, v148, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        outlined init with copy of DOCGridLayout.Spec?(v163, v148 + v164, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        v165 = v231;
        if ((v231)(v148, 1, v141) == 1)
        {
          outlined destroy of CharacterSet?(v163, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          outlined destroy of CharacterSet?(v144, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          if (v165(v148 + v164, 1, v141) == 1)
          {
            outlined destroy of CharacterSet?(v148, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_65:
            *(v228 + *(v250 + 24)) = 0;
            v183 = specialized DOCHierarchyController.locationsAreInsideTrash(_:)(a1);
            v184 = swift_allocObject();
            v185 = MEMORY[0x277D84F90];
            v186 = v251;
            *(v184 + 16) = MEMORY[0x277D84F90];
            *(v184 + 24) = v186;
            v187 = v246;
            *(v184 + 32) = v242;
            *(v184 + 40) = v187;
            v188 = v248;
            *(v184 + 48) = v245;
            *(v184 + 56) = v188;
            v189 = v247;
            v190 = v235;
            *(v184 + 64) = v247;
            *(v184 + 72) = v190;
            *(v184 + 80) = v227;
            *(v184 + 88) = v185;
            type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
            v191 = swift_allocObject();
            *(v191 + 40) = DOCGridLayout.specIconWidth.modify;
            *(v191 + 48) = 0;
            *(v191 + 56) = v185;
            *(v191 + 64) = 0;
            *(v191 + 16) = v186;
            *(v191 + 24) = v185;
            *(v191 + 32) = v238;
            *(v191 + 33) = v183;
            v192 = swift_allocObject();
            swift_weakInit();
            v193 = swift_allocObject();
            v193[2] = v192;
            v193[3] = partial apply for closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:);
            v193[4] = v184;
            *(v191 + 64) = v191;
            v194 = v186;
            v195 = v190;
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v188, v189);

            v196 = v194;

            swift_unknownObjectRelease();
            v197 = swift_allocObject();
            swift_weakInit();
            v198 = swift_allocObject();
            v198[2] = closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
            v198[3] = v193;
            v198[4] = v197;
            *(v191 + 40) = closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
            *(v191 + 48) = v198;

            tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();

            goto LABEL_79;
          }
        }

        else
        {
          v166 = v216;
          outlined init with copy of DOCGridLayout.Spec?(v148, v216, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          v167 = v165(v148 + v164, 1, v141);
          v168 = v217;
          if (v167 != 1)
          {
            outlined init with take of DOCHierarchyController.FetchingOperationToken(v148 + v164, v217, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            v182 = static UUID.== infix(_:_:)();
            outlined destroy of DOCHierarchyController.FetchingOperationToken(v168, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            outlined destroy of CharacterSet?(v222, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            outlined destroy of CharacterSet?(v221, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            outlined destroy of DOCHierarchyController.FetchingOperationToken(v166, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            outlined destroy of CharacterSet?(v148, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            v169 = v230;
            if (v182)
            {
              goto LABEL_65;
            }

LABEL_54:
            v170 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
            v171 = v251;
            swift_beginAccess();
            v172 = v219;
            outlined init with copy of DOCGridLayout.Spec?(&v171[v170], v219, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            v173 = v218;
            outlined init with copy of DOCHierarchyController.FetchingOperationToken(v228, v218, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            v174 = v250;
            v241(v173, 0, 1, v250);
            v175 = *(v234 + 48);
            outlined init with copy of DOCGridLayout.Spec?(v172, v169, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            outlined init with copy of DOCGridLayout.Spec?(v173, v169 + v175, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
            v176 = v231;
            if ((v231)(v169, 1, v174) == 1)
            {
              outlined destroy of CharacterSet?(v173, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
              outlined destroy of CharacterSet?(v172, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
              v177 = v176(v169 + v175, 1, v174);
              v178 = v229;
              if (v177 == 1)
              {
                outlined destroy of CharacterSet?(v169, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                v179 = v248;
LABEL_67:
                v202 = v243;
                v241(v243, 1, 1, v174);
                DOCHierarchyController.loadingDisabledOperation.setter(v202, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
LABEL_68:
                if ((v223[8] & 1) == 0 && !*v223)
                {
                  v223[8] = 1;
                }

                v203 = v236;
                swift_beginAccess();
                if (*v203)
                {

                  DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v204, 0);
                }

                v205 = v237;
                swift_beginAccess();
                outlined init with copy of DOCGridLayout.Spec?(v205, v178, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                if ((*(v224 + 48))(v178, 1, updated) == 1)
                {
                  v206 = outlined destroy of CharacterSet?(v178, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                }

                else
                {
                  v207 = v178;
                  v208 = v214;
                  outlined init with take of DOCHierarchyController.FetchingOperationToken(v207, v214, type metadata accessor for DOCHierarchyController.UpdateExpectation);
                  DOCHierarchyController.endUpdateExpectation(_:)(v208);
                  v206 = outlined destroy of DOCHierarchyController.FetchingOperationToken(v208, type metadata accessor for DOCHierarchyController.UpdateExpectation);
                }

                if (v179)
                {
                  v179(v206);
                }

                goto LABEL_79;
              }
            }

            else
            {
              v181 = v215;
              outlined init with copy of DOCGridLayout.Spec?(v169, v215, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
              if (v176(v169 + v175, 1, v174) != 1)
              {
                v199 = v169 + v175;
                v200 = v217;
                outlined init with take of DOCHierarchyController.FetchingOperationToken(v199, v217, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
                v201 = static UUID.== infix(_:_:)();
                outlined destroy of DOCHierarchyController.FetchingOperationToken(v200, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
                outlined destroy of CharacterSet?(v218, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                outlined destroy of CharacterSet?(v219, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                outlined destroy of DOCHierarchyController.FetchingOperationToken(v181, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
                v174 = v250;
                outlined destroy of CharacterSet?(v169, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
                v179 = v248;
                v178 = v229;
                if ((v201 & 1) == 0)
                {
                  goto LABEL_68;
                }

                goto LABEL_67;
              }

              outlined destroy of CharacterSet?(v218, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
              outlined destroy of CharacterSet?(v219, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
              outlined destroy of DOCHierarchyController.FetchingOperationToken(v181, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
              v178 = v229;
            }

            outlined destroy of CharacterSet?(v169, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
            v179 = v248;
            goto LABEL_68;
          }

          outlined destroy of CharacterSet?(v222, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          outlined destroy of CharacterSet?(v221, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          outlined destroy of DOCHierarchyController.FetchingOperationToken(v166, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        }

        outlined destroy of CharacterSet?(v148, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
        v169 = v230;
        goto LABEL_54;
      }

      __break(1u);
      goto LABEL_93;
    }
  }

  else
  {
    v74 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v74)
    {
      goto LABEL_3;
    }
  }

  if (one-time initialization token for UI != -1)
  {
LABEL_91:
    swift_once();
  }

  v209 = type metadata accessor for Logger();
  __swift_project_value_buffer(v209, static Logger.UI);
  v252 = Logger.logObject.getter();
  v210 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v252, v210))
  {
    v211 = swift_slowAlloc();
    *v211 = 0;
    _os_log_impl(&dword_2493AC000, v252, v210, "Unexpected: got call to applyUpdate() with empty locations array", v211, 2u);
    MEMORY[0x24C1FE850](v211, -1, -1);
  }

  v212 = v252;
}

uint64_t DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:)(uint64_t a1, void *a2, int a3)
{
  v7 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v12 = *&v3[v11];
  if (v12 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }
  }

  v37 = a3;
  v14 = swift_allocObject();
  v39 = v14;
  v40 = 1;
  *(v14 + 16) = 1;
  v38 = v14 + 16;
  v15 = [a2 placeholderLocation];
  v16 = [a2 sourceIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v19 != v20)
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(a1, &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v22 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(&v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v24 + v22, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v25 = v39;
  *(v24 + v23) = v39;
  v26 = v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v26 = v15;
  *(v26 + 8) = v37 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC20ResolvedLocationInfo33_3085D686B27B1518531DD3257B8A8BC0LLVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC20ResolvedLocationInfo33_3085D686B27B1518531DD3257B8A8BC0LLVGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_249B9A480;
  *(v27 + 32) = v15;
  *(v27 + 40) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #1 in DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:);
  *(v28 + 24) = v24;
  type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
  v29 = swift_allocObject();
  *(v29 + 40) = DOCGridLayout.specIconWidth.modify;
  *(v29 + 48) = 0;
  *(v29 + 56) = MEMORY[0x277D84F90];
  *(v29 + 64) = 0;
  *(v29 + 16) = v3;
  *(v29 + 24) = v27;
  *(v29 + 32) = 0;
  *(v29 + 33) = v40 & 1;
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = closure #1 in DOCHierarchyController.prepareController(forResolvedLocationInfo:isUserInteraction:isBrowsingTrash:completion:)partial apply;
  v31[4] = v28;
  *(v29 + 64) = v29;
  v32 = v15;

  v33 = v3;

  swift_unknownObjectRelease();
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
  v35[3] = v31;
  v35[4] = v34;
  *(v29 + 40) = closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
  *(v29 + 48) = v35;

  tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();

  swift_beginAccess();
  *(v25 + 16) = 0;
}

uint64_t closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, void *a8, unsigned __int8 a9, unint64_t a10, unsigned __int8 a11)
{
  v135 = a8;
  v139 = a7;
  v140 = a6;
  v136 = a5;
  v137 = a4;
  v123 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v131 = &v117[-v15];
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  v129 = *(updated - 8);
  MEMORY[0x28223BE20](updated, v16);
  v121 = &v117[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v125 = &v117[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
  MEMORY[0x28223BE20](v141, v22);
  v128 = &v117[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v117[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v119 = &v117[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31, v32);
  v120 = &v117[-v33];
  MEMORY[0x28223BE20](v34, v35);
  v134 = &v117[-v36];
  MEMORY[0x28223BE20](v37, v38);
  v127 = &v117[-v39];
  MEMORY[0x28223BE20](v40, v41);
  v126 = &v117[-v42];
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v117[-v45];
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v117[-v49];
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v117[-v53];
  v124 = a3;
  v142 = swift_projectBox();
  v55 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  v56 = v19;
  outlined init with copy of DOCGridLayout.Spec?(&a2[v55], v50, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v57 = *(v19 + 48);
  v58 = v57(v50, 1, v18);
  v138 = a2;
  if (v58 == 1)
  {
    v59 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&a2[v59], v54, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v57(v50, 1, v18) != 1)
    {
      outlined destroy of CharacterSet?(v50, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v50, v54, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v56 + 56))(v54, 0, 1, v18);
  }

  v60 = v142;
  swift_beginAccess();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v60, v46, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v61 = *(v56 + 56);
  v132 = v56 + 56;
  v133 = v61;
  v61(v46, 0, 1, v18);
  v62 = *(v141 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v54, v27, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v46, &v27[v62], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v57(v27, 1, v18) == 1)
  {
    outlined destroy of CharacterSet?(v46, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v54, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v57(&v27[v62], 1, v18) == 1)
    {
      outlined destroy of CharacterSet?(v27, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v63 = v126;
  outlined init with copy of DOCGridLayout.Spec?(v27, v126, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v57(&v27[v62], 1, v18) == 1)
  {
    outlined destroy of CharacterSet?(v46, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v54, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v63, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_10:
    v122 = v57;
    outlined destroy of CharacterSet?(v27, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    goto LABEL_11;
  }

  v122 = v57;
  v73 = v125;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(&v27[v62], v125, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v118 = static UUID.== infix(_:_:)();
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v73, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v46, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of CharacterSet?(v54, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v63, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v27, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v118)
  {
LABEL_18:
    LODWORD(v141) = a11;
    v74 = a9;
    v75 = v142;
    swift_beginAccess();
    *(v75 + *(v18 + 24)) = 0;
    v76 = v123;
    if (v135)
    {
      LODWORD(v142) = a9;
      v77 = *(v123 + 16);
      v78 = v135;
      if (v77)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
        v79 = 0;
        v80 = 0;
        while (1)
        {
          v81 = v76 + 8 * v79;
          v82 = *(v81 + 32);
          v83 = *(v81 + 40);
          v84 = v82;
          v85 = static NSObject.== infix(_:_:)();

          if (v85)
          {
            break;
          }

          ++v80;
          v79 += 2;
          if (v77 == v80)
          {
            goto LABEL_23;
          }
        }

        specialized _copyCollectionToContiguousArray<A>(_:)(v113, v76 + 32, 0, v79 + 1);
        v86 = v114;
        v87 = v138;
        if (v80)
        {
          specialized _copyCollectionToContiguousArray<A>(_:)(v76, v76 + 32, v80, (2 * v77) | 1);
          v116 = v115;

          v76 = v116;
        }

        v74 = v142;

        goto LABEL_25;
      }

LABEL_23:

      v74 = v142;
    }

    swift_bridgeObjectRetain_n();
    v86 = MEMORY[0x277D84F90];
    v87 = v138;
LABEL_25:
    v88 = specialized DOCHierarchyController.locationsAreInsideTrash(_:)(a10);
    v89 = swift_allocObject();
    *(v89 + 16) = v76;
    *(v89 + 24) = v87;
    v90 = v76;
    v91 = v137;
    *(v89 + 32) = v124;
    *(v89 + 40) = v91;
    v92 = v140;
    *(v89 + 48) = v136;
    *(v89 + 56) = v92;
    v93 = v135;
    *(v89 + 64) = v139;
    *(v89 + 72) = v93;
    *(v89 + 80) = v141 & 1;
    *(v89 + 88) = v86;
    type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
    v94 = swift_allocObject();
    *(v94 + 40) = DOCGridLayout.specIconWidth.modify;
    *(v94 + 48) = 0;
    *(v94 + 56) = MEMORY[0x277D84F90];
    *(v94 + 64) = 0;
    *(v94 + 16) = v87;
    *(v94 + 24) = v90;
    *(v94 + 32) = v74 & 1;
    *(v94 + 33) = v88;
    v95 = swift_allocObject();
    swift_weakInit();
    v96 = swift_allocObject();
    v96[2] = v95;
    v96[3] = closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)partial apply;
    v96[4] = v89;
    *(v94 + 64) = v94;
    v97 = v87;
    v98 = v93;
    v99 = v97;

    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v140, v139);

    swift_unknownObjectRelease();
    v100 = swift_allocObject();
    swift_weakInit();
    v101 = swift_allocObject();
    v101[2] = closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
    v101[3] = v96;
    v101[4] = v100;
    *(v94 + 40) = closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
    *(v94 + 48) = v101;

    tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
  }

LABEL_11:
  v64 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  v65 = v138;
  swift_beginAccess();
  v66 = v127;
  outlined init with copy of DOCGridLayout.Spec?(&v65[v64], v127, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v67 = v142;
  swift_beginAccess();
  v68 = v134;
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v67, v134, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v133(v68, 0, 1, v18);
  v69 = *(v141 + 48);
  v70 = v128;
  outlined init with copy of DOCGridLayout.Spec?(v66, v128, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v68, &v70[v69], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v71 = v122;
  if (v122(v70, 1, v18) != 1)
  {
    v72 = v120;
    outlined init with copy of DOCGridLayout.Spec?(v70, v120, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v71(&v70[v69], 1, v18) != 1)
    {
      v103 = v125;
      outlined init with take of DOCHierarchyController.FetchingOperationToken(&v70[v69], v125, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v104 = static UUID.== infix(_:_:)();
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v103, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v134, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of CharacterSet?(v66, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v72, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      if ((v104 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    outlined destroy of CharacterSet?(v134, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v66, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v72, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_16:
    outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    goto LABEL_28;
  }

  outlined destroy of CharacterSet?(v68, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of CharacterSet?(v66, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v71(&v70[v69], 1, v18) != 1)
  {
    goto LABEL_16;
  }

  outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_27:
  v105 = v119;
  v133(v119, 1, 1, v18);
  DOCHierarchyController.loadingDisabledOperation.setter(v105, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
LABEL_28:
  v106 = swift_projectBox();
  v107 = &v65[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  swift_beginAccess();
  if ((v107[8] & 1) == 0 && !*v107)
  {
    v107[8] = 1;
  }

  v108 = v137;
  swift_beginAccess();
  if (*(v108 + 16))
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v109, 0);
  }

  swift_beginAccess();
  v110 = v131;
  outlined init with copy of DOCGridLayout.Spec?(v106, v131, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if ((*(v129 + 48))(v110, 1, updated) == 1)
  {
    result = outlined destroy of CharacterSet?(v110, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  }

  else
  {
    v111 = v110;
    v112 = v121;
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v111, v121, type metadata accessor for DOCHierarchyController.UpdateExpectation);
    DOCHierarchyController.endUpdateExpectation(_:)(v112);
    result = outlined destroy of DOCHierarchyController.FetchingOperationToken(v112, type metadata accessor for DOCHierarchyController.UpdateExpectation);
  }

  if (v140)
  {
    return v140(result);
  }

  return result;
}

void closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(unint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, uint64_t a11)
{
  v87 = a8;
  v99 = a7;
  v95 = a6;
  v97 = a5;
  v92 = a2;
  v96 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v90 = &v83 - v14;
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  v88 = *(updated - 8);
  MEMORY[0x28223BE20](updated, v15);
  v86 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v85 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
  MEMORY[0x28223BE20](v93, v21);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v84 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v94 = &v83 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v83 - v32;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v83 - v36;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v83 - v40;
  v91 = swift_projectBox();
  v96 = _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSayAA012DOCHierarchyG0C08ResolvedD4InfoACLLVG_SaySo06UIViewG0CGtFZAD_Tt1g5(v92, v96);
  v42 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&a3[v42], v37, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v43 = *(v18 + 48);
  v44 = v43(v37, 1, v17);
  v98 = a3;
  if (v44 == 1)
  {
    v45 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&a3[v45], v41, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v46 = v41;
    if (v43(v37, 1, v17) != 1)
    {
      outlined destroy of CharacterSet?(v37, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v37, v41, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v18 + 56))(v41, 0, 1, v17);
    v46 = v41;
  }

  v47 = v91;
  swift_beginAccess();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v47, v33, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v49 = *(v18 + 56);
  v48 = v18 + 56;
  v92 = v49;
  v49(v33, 0, 1, v17);
  v50 = *(v93 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v46, v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v33, &v23[v50], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v51 = v43(v23, 1, v17);
  v52 = v94;
  if (v51 != 1)
  {
    v93 = v46;
    outlined init with copy of DOCGridLayout.Spec?(v23, v94, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v43(&v23[v50], 1, v17) != 1)
    {
      v91 = v17;
      v83 = v48;
      v56 = v85;
      outlined init with take of DOCHierarchyController.FetchingOperationToken(&v23[v50], v85, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v57 = static UUID.== infix(_:_:)();
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v56, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v33, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of CharacterSet?(v93, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v52, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      v54 = v98;
      v55 = v96;
      if ((v57 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    outlined destroy of CharacterSet?(v33, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v93, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v52, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v54 = v98;
LABEL_10:
    outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    goto LABEL_20;
  }

  outlined destroy of CharacterSet?(v33, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of CharacterSet?(v46, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v53 = v43(&v23[v50], 1, v17);
  v54 = v98;
  v55 = v96;
  if (v53 != 1)
  {
    goto LABEL_10;
  }

  v91 = v17;
  v83 = v48;
  outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_12:
  if (v55 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_14;
    }
  }

  else if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    v58 = swift_allocObject();
    v59 = v97;
    v58[2] = v54;
    v58[3] = v59;
    v60 = v99;
    v58[4] = v95;
    v58[5] = v60;
    v61 = v87;
    v58[6] = v87;
    v62 = v84;
    v92(v84, 1, 1, v91);
    v63 = v54;

    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v60, v61);
    DOCHierarchyController.loadingDisabledOperation.setter(v62, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    v64 = a9;
    if (a9)
    {
LABEL_18:
      LODWORD(v99) = a10;
      LODWORD(v98) = a9 == 0;
      v101 = v63;
      swift_getKeyPath();
      v66 = v55;
      v67 = v64;
      v68 = a9;
      _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
      v69 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
      swift_beginAccess();
      v70 = *&v63[v69];
      *&v63[v69] = v64;
      v71 = v67;

      v100 = v63;
      swift_getKeyPath();
      _KeyValueCodingAndObserving.didChangeValue<A>(for:)();

      v72 = swift_allocObject();
      *(v72 + 16) = a11;
      *(v72 + 24) = v63;
      *(v72 + 32) = partial apply for closure #1 in closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:);
      *(v72 + 40) = v58;
      *(v72 + 48) = v98;
      v73 = v63;

      DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(v66, v99 & 1, partial apply for specialized closure #2 in closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:), v72);

      return;
    }

    if ((v55 & 0xC000000000000001) != 0)
    {
      v64 = *(MEMORY[0x24C1FC540](0, v55) + 16);
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v64 = *(*(v55 + 32) + 16);
      v65 = v64;
      goto LABEL_18;
    }

    __break(1u);
    return;
  }

LABEL_20:

  v74 = swift_projectBox();
  v75 = &v54[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  swift_beginAccess();
  if ((v75[8] & 1) == 0 && !*v75)
  {
    v75[8] = 1;
  }

  v76 = v97;
  swift_beginAccess();
  if (*(v76 + 16))
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v77, 0);
  }

  swift_beginAccess();
  v78 = v90;
  outlined init with copy of DOCGridLayout.Spec?(v74, v90, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if ((*(v88 + 48))(v78, 1, updated) == 1)
  {
    v79 = outlined destroy of CharacterSet?(v78, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v80 = v99;
    if (!v99)
    {
      return;
    }
  }

  else
  {
    v81 = v78;
    v82 = v86;
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v81, v86, type metadata accessor for DOCHierarchyController.UpdateExpectation);
    DOCHierarchyController.endUpdateExpectation(_:)(v82);
    v79 = outlined destroy of DOCHierarchyController.FetchingOperationToken(v82, type metadata accessor for DOCHierarchyController.UpdateExpectation);
    v80 = v99;
    if (!v99)
    {
      return;
    }
  }

  v80(v79);
}

uint64_t _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSayAA012DOCHierarchyG0C08ResolvedD4InfoACLLVG_SaySo06UIViewG0CGtFZAD_Tt1g5(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = a2;
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6;
      v6 += 2;
      v8 = v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    v3 = v11;
    a2 = v5;
  }

  v9 = _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSaySo011DOCConcreteD0CG_SaySo06UIViewG0CGtFZAD_Tt1g5(v3, a2);

  return v9;
}

uint64_t closure #1 in closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
  v10 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;
  v15[4] = partial apply for closure #1 in closure #1 in closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:);
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v15[3] = &block_descriptor_367;
  v12 = _Block_copy(v15);
  v13 = a1;

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4, a5);

  [v10 animateAlongsideTransition:0 completion:v12];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v21 - v10;
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  v13 = *(updated - 8);
  MEMORY[0x28223BE20](updated, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_projectBox();
  v18 = a2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation;
  swift_beginAccess();
  if ((*(v18 + 8) & 1) == 0 && !*v18)
  {
    *(v18 + 8) = 1;
  }

  swift_beginAccess();
  if (*(a3 + 16))
  {

    DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v19, 0);
  }

  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v17, v11, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if ((*(v13 + 48))(v11, 1, updated) != 1)
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v11, v16, type metadata accessor for DOCHierarchyController.UpdateExpectation);
    DOCHierarchyController.endUpdateExpectation(_:)(v16);
    result = outlined destroy of DOCHierarchyController.FetchingOperationToken(v16, type metadata accessor for DOCHierarchyController.UpdateExpectation);
    if (!a5)
    {
      return result;
    }

    return a5(result);
  }

  result = outlined destroy of CharacterSet?(v11, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (a5)
  {
    return a5(result);
  }

  return result;
}

uint64_t specialized closure #2 in closure #2 in closure #2 in DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, char a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    swift_beginAccess();
    v9 = (a1 + 16 * v6 + 24);
    while (1)
    {
      v12 = *(v9 - 1);
      v13 = *v9;
      Strong = swift_unknownObjectWeakLoadStrong();
      v15 = v13;
      if (Strong)
      {
        [Strong hierarchyController:a2 willPrepend:v12 source:v15];
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = v12;
      }

      v23 = *(a2 + v8);
      if (v23 >> 62)
      {
        if (__CocoaSet.count.getter() < 0)
        {
          break;
        }
      }

      v11 = v12;

      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v11);

      DOCHierarchyController.locations.setter(v23);
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        [v17 hierarchyController:a2 didPrepend:v11 source:v15];
        swift_unknownObjectRelease();
        v10 = v15;
      }

      else
      {
        v10 = v11;
        v11 = v15;
      }

      --v6;
      v9 -= 2;

      if (!v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

LABEL_13:
  result = a3();
  if (a5)
  {
    swift_getKeyPath();
    _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
    v19 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_effectiveRootLocationCandidate;
    swift_beginAccess();
    v20 = *(a2 + v19);
    *(a2 + v19) = 0;

    swift_getKeyPath();
    return _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  }

  return result;
}

void DOCHierarchyController.applyUpdate(popToLocation:animated:completion:)(void *a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v52 = a4;
  v50 = a2;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = a1;
    v13 = swift_slowAlloc();
    v54[0] = v13;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x8000000249BCC890, v54);
    _os_log_impl(&dword_2493AC000, v9, v10, "[PROTECTED APPS] BTBT: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v14 = v13;
    a1 = v12;
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  v15 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation];
  swift_beginAccess();
  *v15 = 2;
  v15[8] = 0;
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a3;
  v17 = v52;
  v51 = v16;
  v16[4] = v52;
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v19 = *&v4[v18];
  v20 = v4;

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a3, v17);
  v21 = specialized Collection<>.firstIndex(of:)(a1, v19, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  v23 = v22;

  if (v23)
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2493AC000, v24, v25, "Cannot pop to a location not present in the locations array", v26, 2u);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    *v15 = 0;
    v15[8] = 1;
    if (a3)
    {
      a3();
    }

    return;
  }

  v27 = DOCHierarchyController.effectiveLocations.getter();
  v28 = &v49;
  v53 = a1;
  MEMORY[0x28223BE20](v27, v29);
  v48[2] = &v53;
  v30 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v48, v27);

  if (v30)
  {
    v32 = v51;

    DOCHierarchyController.remove(after:animated:completion:)(a1, v50 & 1, partial apply for closure #1 in DOCHierarchyController.applyUpdate(popToLocation:animated:completion:), v32);

    return;
  }

  i = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((i & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    if (v28 < 0)
    {
      v5 = v28;
    }

    else
    {
      v5 = v31;
    }

    if (__CocoaSet.count.getter() < 0)
    {
      __break(1u);
      return;
    }

    if (__CocoaSet.count.getter() >= i)
    {
      goto LABEL_17;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v28 = *&v4[v18];
  v31 = v28 & 0xFFFFFFFFFFFFFF8;
  v27 = v28 >> 62;
  if (v28 >> 62)
  {
    goto LABEL_46;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < i)
  {
    goto LABEL_51;
  }

LABEL_17:
  if ((v28 & 0xC000000000000001) == 0 || v21 == -1)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    swift_bridgeObjectRetain_n();
    v34 = 0;
    do
    {
      v35 = v34 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v34);
      v34 = v35;
    }

    while (i != v35);
  }

  if (v27)
  {
    v23 = _CocoaArrayWrapper.subscript.getter();
    v18 = v36;
    v5 = v37;
    i = v38;

    if ((i & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v5 = 0;
    v23 = v28 & 0xFFFFFFFFFFFFFF8;
    v18 = (v28 & 0xFFFFFFFFFFFFFF8) + 32;
    i = (2 * i) | 1;
    if ((i & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v40 = swift_dynamicCastClass();
  if (!v40)
  {
    swift_unknownObjectRelease();
    v40 = MEMORY[0x277D84F90];
  }

  v41 = *(v40 + 16);

  if (__OFSUB__(i >> 1, v5))
  {
    goto LABEL_59;
  }

  if (v41 != (i >> 1) - v5)
  {
    goto LABEL_60;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (i)
  {
    goto LABEL_35;
  }

  for (i = MEMORY[0x277D84F90]; ; i = v39)
  {
    swift_unknownObjectRelease();
LABEL_35:

    v42 = *(i + 16);
    if (!v42)
    {
      goto LABEL_53;
    }

LABEL_38:
    v43 = __OFSUB__(v42, 1);
    v44 = v42 - 1;
    if (v43)
    {
      __break(1u);
LABEL_56:
      v45 = MEMORY[0x24C1FC540](v44, i);
LABEL_43:
      v46 = v45;
      goto LABEL_54;
    }

    if ((i & 0xC000000000000001) != 0)
    {
      goto LABEL_56;
    }

    if ((v44 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v44 < *(i + 16))
    {
      v45 = *(i + 8 * v44 + 32);
      goto LABEL_43;
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    swift_unknownObjectRelease_n();
LABEL_27:
    specialized _copyCollectionToContiguousArray<A>(_:)(v23, v18, v5, i, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  }

LABEL_52:
  v42 = __CocoaSet.count.getter();
  if (v42)
  {
    goto LABEL_38;
  }

LABEL_53:
  v46 = 0;
LABEL_54:
  v47 = v51;

  DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(i, v46, 1, 1, v50 & 1, partial apply for closure #1 in DOCHierarchyController.applyUpdate(popToLocation:animated:completion:), v47);
}

void closure #1 in DOCHierarchyController.prepareController(forResolvedLocationInfo:isUserInteraction:isBrowsingTrash:completion:)(unint64_t a1, void (*a2)(void))
{
  v2 = a2;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_18;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_17:

      goto LABEL_18;
    }

    v5 = *(a1 + 32);
  }

  a2 = v5;
  v7 = v5;
  if (v4)
  {
    v6 = __CocoaSet.count.getter();
    a2 = v7;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 != 1)
  {
    goto LABEL_17;
  }

  v2(a2);
}

double closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();

    a2(v4);
  }

  return result;
}

uint64_t closure #1 in DOCHierarchyController.___prepareControllers(for:_:isUserInteraction:isBrowsingTrash:completion:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a2;
  v8 = (a2 >> 62);
  if (a2 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v10 = a1 >> 62;
    if (a1 >> 62)
    {
      if (i != __CocoaSet.count.getter())
      {
LABEL_43:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_44:
        swift_once();
        goto LABEL_7;
      }
    }

    else if (i != *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    if (![objc_opt_self() protectedAppsEnabled])
    {
      return a4(a1);
    }

    v41 = a4;
    v42 = v8;
    Current = CFAbsoluteTimeGetCurrent();
    if (one-time initialization token for UI != -1)
    {
      goto LABEL_44;
    }

LABEL_7:
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      break;
    }

    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_11:
    v17 = __CocoaSet.count.getter();
    if (!v17)
    {
      goto LABEL_30;
    }

LABEL_16:
    v47 = a1 & 0xFFFFFFFFFFFFFF8;
    v48 = a1 & 0xC000000000000001;
    v46 = v6 & 0xC000000000000001;
    v43 = v6 & 0xFFFFFFFFFFFFFF8;
    v18 = 4;
    v44 = v17;
    v45 = v6;
    while (1)
    {
      a4 = (v18 - 4);
      if (v48)
      {
        v19 = MEMORY[0x24C1FC540](v18 - 4, a1);
      }

      else
      {
        if (a4 >= *(v47 + 16))
        {
          goto LABEL_39;
        }

        v19 = *(a1 + 8 * v18);
      }

      v20 = v19;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      v49 = v18 - 3;
      if (v46)
      {
        v21 = MEMORY[0x24C1FC540](v18 - 4, v6);
      }

      else
      {
        if (a4 >= *(v43 + 16))
        {
          goto LABEL_40;
        }

        v21 = *(v6 + 8 * v18);
      }

      v8 = v21;
      v22 = [objc_opt_self() sharedManager];
      v23 = [v22 nodeRequiresAuthentication:objc_msgSend(v8 Sync:sel_node)];

      swift_unknownObjectRelease();
      specialized DOCHierarchyController.resetProtectedAppAuthenticationState(on:requiresAuthentication:)(v20, v23);
      v24 = v8;
      v25 = v20;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = a1;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v50[0] = v8;
        *v29 = 136315906;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDAD0, v50);
        *(v29 + 12) = 1024;
        *(v29 + 14) = v23;
        *(v29 + 18) = 2112;
        *(v29 + 20) = v24;
        *(v29 + 28) = 2112;
        *(v29 + 30) = v25;
        *v30 = v24;
        v30[1] = v25;
        v31 = v24;
        v32 = v25;
        _os_log_impl(&dword_2493AC000, v26, v27, "[PROTECTED APPS] %s requiresAuthentication: %{BOOL}d location: %@ viewController: %@", v29, 0x26u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x24C1FE850](v8, -1, -1);
        v33 = v29;
        a1 = v28;
        MEMORY[0x24C1FE850](v33, -1, -1);
      }

      else
      {
      }

      v6 = v45;
      ++v18;
      if (v49 == v44)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v14 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v50[0] = v8;
  *v14 = 136315394;
  *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDAD0, v50);
  *(v14 + 12) = 2048;
  if (v42)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v14 + 14) = v15;

  _os_log_impl(&dword_2493AC000, v12, v13, "[PROTECTED APPS] %s Checking if %ld locations need auth authentication.", v14, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x24C1FE850](v8, -1, -1);
  MEMORY[0x24C1FE850](v14, -1, -1);

  v16 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_15:
  v17 = *(v16 + 16);
  if (v17)
  {
    goto LABEL_16;
  }

LABEL_30:
  v34 = CFAbsoluteTimeGetCurrent();

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v50[0] = v38;
    *v37 = 136315650;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDAD0, v50);
    *(v37 + 12) = 2048;
    *(v37 + 14) = v34 - Current;
    *(v37 + 22) = 2048;
    if (v42)
    {
      v39 = __CocoaSet.count.getter();
    }

    else
    {
      v39 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 24) = v39;

    _os_log_impl(&dword_2493AC000, v35, v36, "[PROTECTED APPS] %s check took %f sec for %ld locations", v37, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x24C1FE850](v38, -1, -1);
    MEMORY[0x24C1FE850](v37, -1, -1);
  }

  else
  {
  }

  a4 = v41;
  return a4(a1);
}

double thunk for @escaping @callee_guaranteed (@guaranteed [UIViewController]) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);

  return result;
}

uint64_t DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:)(void *a1, void *a2, char a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v50 = a6;
  v51 = a7;
  v48 = a4;
  v49 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v47 - v14;
  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v52 = 0xD000000000000011;
  v53 = 0x8000000249BCC8C0;
  v16 = [a1 shortDescription];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  MEMORY[0x24C1FAEA0](v17, v19);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v20 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(v52, v53);

  v21 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v22 = swift_allocBox();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_249BA0290;
  *(v25 + 32) = a1;
  v26 = a1;
  UUID.init()();
  v27 = v21[5];
  v28 = v21[6];
  *(v24 + v21[7]) = v25;
  *(v24 + v27) = 1;
  *(v24 + v28) = a3 ^ 1;
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v24, v15, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  (*(*(v21 - 1) + 56))(v15, 0, 1, v21);
  DOCHierarchyController.loadingDisabledOperation.setter(v15, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v30 = *&v8[v29];
  if (v30 >> 62)
  {
    if (__CocoaSet.count.getter() < 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_3:
    v31 = 0;
    v32 = v49;
LABEL_15:
    v41 = swift_allocObject();
    *(v41 + 16) = v8;
    *(v41 + 24) = v22;
    v43 = v50;
    v42 = v51;
    *(v41 + 32) = v20;
    *(v41 + 40) = v43;
    *(v41 + 48) = v42;
    *(v41 + 56) = v48 & 1;
    *(v41 + 57) = v31 & 1;
    *(v41 + 58) = v32 & 1;
    *(v41 + 64) = a2;
    v44 = a2;

    v45 = v8;

    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v43, v42);
    specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v26, 1, v45, partial apply for closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:), v41);
  }

  v33 = *&v8[v29];
  if (!(v33 >> 62))
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v34 - 2;
    if (!__OFSUB__(v34, 2))
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v46 = __CocoaSet.count.getter();
  v35 = v46 - 2;
  if (__OFSUB__(v46, 2))
  {
    goto LABEL_18;
  }

LABEL_7:
  result = swift_beginAccess();
  v37 = *&v8[v29];
  if ((v37 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v38 = MEMORY[0x24C1FC540](v35);
    goto LABEL_11;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v35 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v37 + 8 * v35 + 32);
LABEL_11:
    v39 = v38;
    swift_endAccess();
    if (a2)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
      v40 = a2;
      v31 = static NSObject.== infix(_:_:)();

      v39 = v40;
    }

    else
    {
      v31 = 0;
    }

    v32 = v49;

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:)(void *a1, void *a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, int a8, char a9, char a10, char *a11)
{
  v108 = a8;
  v119 = a7;
  v120 = a5;
  v121 = a6;
  v111 = a2;
  v109 = a1;
  v13 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v112 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
  MEMORY[0x28223BE20](v122, v17);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v125 = &v106 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v106 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v107 = &v106 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v114 = &v106 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v115 = &v106 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v113 = &v106 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v106 - v40;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v106 - v44;
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v106 - v48;
  v110 = a4;
  v124 = swift_projectBox();
  v50 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  v51 = v14;
  outlined init with copy of DOCGridLayout.Spec?(&a3[v50], v45, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v52 = *(v14 + 48);
  v53 = v52(v45, 1, v13);
  v123 = v52;
  v118 = a3;
  if (v53 == 1)
  {
    v54 = v19;
    v55 = v51;
    v56 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    v57 = &a3[v56];
    v51 = v55;
    v19 = v54;
    outlined init with copy of DOCGridLayout.Spec?(v57, v49, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v58 = v52(v45, 1, v13);
    v59 = v13;
    if (v58 != 1)
    {
      outlined destroy of CharacterSet?(v45, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v45, v49, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v51 + 56))(v49, 0, 1, v13);
    v59 = v13;
  }

  v60 = v124;
  swift_beginAccess();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v60, v41, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v61 = *(v51 + 56);
  v117 = v51 + 56;
  v116 = v61;
  v61(v41, 0, 1, v59);
  v62 = v122;
  v63 = *(v122 + 48);
  v64 = v125;
  outlined init with copy of DOCGridLayout.Spec?(v49, v125, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v41, &v64[v63], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v65 = v123;
  if (v123(v64, 1, v59) == 1)
  {
    outlined destroy of CharacterSet?(v41, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v49, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v66 = v65(&v125[v63], 1, v59);
    v64 = v125;
    if (v66 == 1)
    {
      outlined destroy of CharacterSet?(v125, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_18:
      v125 = a11;
      v78 = v124;
      swift_beginAccess();
      *(v78 + *(v59 + 24)) = 0;
      v79 = v118;
      swift_beginAccess();

      v81 = specialized DOCHierarchyController.locationsAreInsideTrash(_:)(v80);

      v82 = swift_allocObject();
      v83 = v110;
      *(v82 + 16) = v79;
      *(v82 + 24) = v83;
      v84 = v109;
      v85 = v120;
      v86 = v121;
      *(v82 + 32) = v109;
      *(v82 + 40) = v85;
      v87 = v119;
      *(v82 + 48) = v86;
      *(v82 + 56) = v87;
      *(v82 + 64) = a9 & 1;
      *(v82 + 65) = a10 & 1;
      *(v82 + 72) = a11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC20ResolvedLocationInfo33_3085D686B27B1518531DD3257B8A8BC0LLVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC20ResolvedLocationInfo33_3085D686B27B1518531DD3257B8A8BC0LLVGMR);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_249B9A480;
      v89 = v111;
      *(v88 + 32) = v84;
      *(v88 + 40) = v89;
      v90 = swift_allocObject();
      *(v90 + 16) = partial apply for closure #1 in closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:);
      *(v90 + 24) = v82;
      type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
      v91 = swift_allocObject();
      *(v91 + 40) = DOCGridLayout.specIconWidth.modify;
      *(v91 + 48) = 0;
      *(v91 + 56) = MEMORY[0x277D84F90];
      *(v91 + 64) = 0;
      *(v91 + 16) = v79;
      *(v91 + 24) = v88;
      *(v91 + 32) = v108 & 1;
      *(v91 + 33) = v81;
      v92 = swift_allocObject();
      swift_weakInit();
      v93 = swift_allocObject();
      v93[2] = v92;
      v93[3] = partial apply for closure #1 in DOCHierarchyController.prepareController(forResolvedLocationInfo:isUserInteraction:isBrowsingTrash:completion:);
      v93[4] = v90;
      *(v91 + 64) = v91;
      v94 = v79;
      v95 = v84;
      v96 = v94;

      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v121, v119);
      v97 = v125;
      v98 = v89;

      swift_unknownObjectRelease();
      v99 = swift_allocObject();
      swift_weakInit();
      v100 = swift_allocObject();
      v100[2] = closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
      v100[3] = v93;
      v100[4] = v99;
      *(v91 + 40) = closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
      *(v91 + 48) = v100;

      tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();

      return;
    }

    goto LABEL_10;
  }

  v67 = v113;
  outlined init with copy of DOCGridLayout.Spec?(v64, v113, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v65(&v64[v63], 1, v59) == 1)
  {
    outlined destroy of CharacterSet?(v41, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v49, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v67, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v62 = v122;
LABEL_10:
    outlined destroy of CharacterSet?(v64, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    goto LABEL_11;
  }

  v76 = v112;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(&v64[v63], v112, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v77 = static UUID.== infix(_:_:)();
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v76, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v41, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of CharacterSet?(v49, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v67, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v64, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v62 = v122;
  if (v77)
  {
    goto LABEL_18;
  }

LABEL_11:
  v68 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
  v69 = v118;
  swift_beginAccess();
  v70 = v115;
  outlined init with copy of DOCGridLayout.Spec?(&v69[v68], v115, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v71 = v124;
  swift_beginAccess();
  v72 = v114;
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v71, v114, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v116(v72, 0, 1, v59);
  v73 = *(v62 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v70, v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v72, &v19[v73], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v74 = v123;
  if (v123(v19, 1, v59) != 1)
  {
    v75 = v107;
    outlined init with copy of DOCGridLayout.Spec?(v19, v107, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v74(&v19[v73], 1, v59) != 1)
    {
      v101 = &v19[v73];
      v102 = v112;
      outlined init with take of DOCHierarchyController.FetchingOperationToken(v101, v112, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v103 = v72;
      v104 = static UUID.== infix(_:_:)();
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v102, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v103, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v75, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      if ((v104 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    outlined destroy of CharacterSet?(v72, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v75, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_16:
    outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    goto LABEL_21;
  }

  outlined destroy of CharacterSet?(v72, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of CharacterSet?(v70, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v74(&v19[v73], 1, v59) != 1)
  {
    goto LABEL_16;
  }

  outlined destroy of CharacterSet?(v19, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_20:
  v105 = v106;
  v116(v106, 1, 1, v59);
  DOCHierarchyController.loadingDisabledOperation.setter(v105, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
LABEL_21:
  DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v120, 0);
  if (v121)
  {
    v121();
  }
}

void closure #1 in closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:)(void *a1, char *a2, uint64_t a3, void *a4, void *a5, void (*a6)(void), uint64_t a7, int a8, unsigned __int8 a9, void *a10)
{
  v117 = a8;
  v119 = a7;
  v120 = a6;
  v122 = a5;
  v114 = a4;
  v115 = a1;
  v11 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v124 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v113 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
  MEMORY[0x28223BE20](v14, v15);
  *&v123 = &v111 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v116 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v118 = (&v111 - v22);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v111 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v111 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v111 - v33;
  v35 = swift_projectBox();
  v36 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  v37 = v124;
  outlined init with copy of DOCGridLayout.Spec?(&a2[v36], v30, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v38 = *(v37 + 48);
  v39 = v38(v30, 1, v11);
  v121 = a2;
  if (v39 == 1)
  {
    v112 = v26;
    v40 = v38;
    v41 = v35;
    v42 = v14;
    v43 = v37;
    v44 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    v45 = &a2[v44];
    v37 = v43;
    v14 = v42;
    v35 = v41;
    v38 = v40;
    v26 = v112;
    outlined init with copy of DOCGridLayout.Spec?(v45, v34, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v38(v30, 1, v11) != 1)
    {
      outlined destroy of CharacterSet?(v30, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v30, v34, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v37 + 56))(v34, 0, 1, v11);
  }

  swift_beginAccess();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v35, v26, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v46 = *(v37 + 56);
  v124 = v37 + 56;
  (v46)(v26, 0, 1, v11);
  v47 = *(v14 + 48);
  v48 = v123;
  outlined init with copy of DOCGridLayout.Spec?(v34, v123, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v26, v48 + v47, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v38(v48, 1, v11) == 1)
  {
    outlined destroy of CharacterSet?(v26, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v49 = v123;
    outlined destroy of CharacterSet?(v34, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v38((v49 + v47), 1, v11) == 1)
    {
      outlined destroy of CharacterSet?(v49, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      v50 = v121;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v112 = v46;
  v51 = v34;
  v52 = v118;
  outlined init with copy of DOCGridLayout.Spec?(v48, v118, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v38((v48 + v47), 1, v11) == 1)
  {
    outlined destroy of CharacterSet?(v26, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v49 = v123;
    outlined destroy of CharacterSet?(v51, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v52, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_10:
    outlined destroy of CharacterSet?(v49, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    goto LABEL_11;
  }

  v53 = v113;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(v48 + v47, v113, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v54 = v48;
  v55 = static UUID.== infix(_:_:)();
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v53, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v26, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of CharacterSet?(v51, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v52, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v54, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v50 = v121;
  v46 = v112;
  if (v55)
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v56 = v11;
    inited = swift_initStackObject();
    v123 = xmmword_249BA0290;
    *(inited + 16) = xmmword_249BA0290;
    v58 = v114;
    *(inited + 32) = v114;
    v59 = swift_initStackObject();
    *(v59 + 16) = v123;
    v60 = v115;
    *(v59 + 32) = v115;
    v61 = v58;
    v62 = v60;
    v63 = _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSaySo011DOCConcreteD0CG_SaySo06UIViewG0CGtFZAD_Tt1g5(inited, v59);

    swift_setDeallocating();
    swift_arrayDestroy();
    v64 = v116;
    (v46)(v116, 1, 1, v56);
    DOCHierarchyController.loadingDisabledOperation.setter(v64, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
    v65 = swift_allocObject();
    v66 = v122;
    v65[2] = v50;
    v65[3] = v66;
    v67 = v120;
    v68 = v119;
    v65[4] = v120;
    v65[5] = v68;
    if (v117)
    {

      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v67, v68);

      specialized DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)(1, v63, a9 & 1, v50, partial apply for closure #1 in closure #1 in closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:), v65);

LABEL_50:

      return;
    }

    v69 = swift_allocObject();
    *(v69 + 16) = partial apply for closure #1 in closure #1 in closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:);
    *(v69 + 24) = v65;
    if (v63 >> 62)
    {
      v70 = __CocoaSet.count.getter();
      if (v70 >= 1)
      {
LABEL_18:
        LODWORD(v124) = a9;
        if (a10)
        {
          *&v123 = v69;
          v71 = v67;
          v67 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
          v72 = swift_beginAccess();
          v118 = &v111;
          v73 = *&v50[v67];
          aBlock = a10;
          MEMORY[0x28223BE20](v72, v74);
          *(&v111 - 2) = &aBlock;
          swift_retain_n();
          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v71, v68);

          v75 = v50;

          v66 = a10;
          v76 = specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), (&v111 - 4), v73);
          v78 = v77;

          v79 = *&v50[v67];
          v80 = v79 >> 62;
          if (v78)
          {
            v81 = v124;
            if (v80)
            {
              v76 = __CocoaSet.count.getter();
            }

            else
            {
              v76 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v69 = v123;
            goto LABEL_30;
          }

          v81 = v124;
          if (v80)
          {
            v83 = __CocoaSet.count.getter();
          }

          else
          {
            v83 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v69 = v123;

          v84 = v83 - v76;
          if (__OFSUB__(v83, v76))
          {
            __break(1u);
          }

          else
          {
            v76 = (v84 - 1);
            if (!__OFSUB__(v84, 1))
            {
LABEL_30:
              v85 = &_sSo9NSCopying_pMd;
              goto LABEL_32;
            }
          }

          __break(1u);
          goto LABEL_56;
        }

        if (v70 != 1)
        {
          swift_retain_n();
          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v67, v68);

          v86 = v50;
          v85 = &_sSo9NSCopying_pMd;
          v76 = 0;
          v81 = v124;
LABEL_32:
          v87 = v85[276];
          swift_beginAccess();
          v88 = *&v50[v87];
          if (v88 >> 62)
          {
            if (v76 == __CocoaSet.count.getter())
            {
              goto LABEL_34;
            }
          }

          else if (v76 == *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_34:
            DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(v63, v81 & 1, thunk for @callee_guaranteed () -> ()partial apply, v69);

            return;
          }

          specialized DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)(v76, v63, v81 & 1, v50, partial apply for closure #1 in closure #1 in closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:), v65);

          goto LABEL_50;
        }

        if (v63 >> 62)
        {
          v82 = __CocoaSet.count.getter();
        }

        else
        {
          v82 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v82)
        {
          if ((v63 & 0xC000000000000001) == 0)
          {
            if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v89 = *(v63 + 32);
            v90 = *(v89 + 16);
            swift_retain_n();
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v67, v68);

            v91 = v50;
            v92 = v90;

LABEL_40:
            v93 = v68;

            v94 = *(v89 + 24);

            DOCHierarchyController.appendOneLocation(_:viewController:animated:)(v92, v94, v124 & 1);

            DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
            v95 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
            v96 = swift_allocObject();
            v96[2] = v50;
            v96[3] = v66;
            v96[4] = v67;
            v96[5] = v93;
            v129 = partial apply for closure #1 in closure #1 in DOCHierarchyController.remove(after:animated:completion:);
            v130 = v96;
            aBlock = MEMORY[0x277D85DD0];
            v126 = 1107296256;
            v127 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
            v128 = &block_descriptor_328;
            v97 = _Block_copy(&aBlock);
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v67, v93);

            v98 = v50;

            [v95 animateAlongsideTransition:0 completion:v97];
            _Block_release(v97);

            swift_unknownObjectRelease();
            return;
          }
        }

        else
        {
          __break(1u);
        }

        swift_retain_n();
        outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v67, v68);

        v110 = v50;
        v92 = *(MEMORY[0x24C1FC540](0, v63) + 16);
        swift_unknownObjectRelease();
        v89 = MEMORY[0x24C1FC540](0, v63);
        goto LABEL_40;
      }
    }

    else
    {
      v70 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v70 >= 1)
      {
        goto LABEL_18;
      }
    }

    swift_retain_n();
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v67, v68);

    v76 = v50;

    if (DOCIsInternalBuild())
    {
LABEL_47:
      DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
      v104 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
      v105 = swift_allocObject();
      v105[2] = v76;
      v105[3] = v66;
      v105[4] = v67;
      v105[5] = v68;
      v129 = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:);
      v130 = v105;
      aBlock = MEMORY[0x277D85DD0];
      v126 = 1107296256;
      v127 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
      v128 = &block_descriptor_321;
      v106 = _Block_copy(&aBlock);
      v107 = v68;
      v108 = v106;
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v67, v107);

      v109 = v76;

      [v104 animateAlongsideTransition:0 completion:v108];
      _Block_release(v108);

      swift_unknownObjectRelease();
      return;
    }

    if (one-time initialization token for UI == -1)
    {
LABEL_44:
      v99 = type metadata accessor for Logger();
      __swift_project_value_buffer(v99, static Logger.UI);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        aBlock = v103;
        *v102 = 136315138;
        *(v102 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000249BCD680, &aBlock);
        _os_log_impl(&dword_2493AC000, v100, v101, "assertion failure: %s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x24C1FE850](v103, -1, -1);
        MEMORY[0x24C1FE850](v102, -1, -1);
      }

      v68 = v119;
      goto LABEL_47;
    }

LABEL_56:
    swift_once();
    goto LABEL_44;
  }

LABEL_11:
  DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(v122, 0);
  if (v120)
  {
    v120();
  }
}

uint64_t closure #2 in closure #1 in closure #2 in DOCHierarchyController.applyUpdate(appendLocations:after:interruptable:isUserInteraction:semanticNavigationOperation:animated:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
  v13 = DOCHierarchyController.hierarchyChangeTransitionCoordinator.getter();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v18[4] = a6;
  v18[5] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v18[3] = a7;
  v15 = _Block_copy(v18);
  v16 = a1;

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a3, a4);

  [v13 animateAlongsideTransition:0 completion:v15];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

void closure #1 in DOCHierarchyController.loadInitialLocation(from:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(char *a1, char *a2, char *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, int a7, int a8)
{
  LODWORD(v202) = a8;
  LODWORD(v201) = a7;
  v213 = a6;
  v211 = a5;
  v212 = a2;
  v209 = a1;
  v10 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v196 = &v190 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
  MEMORY[0x28223BE20](v208, v14);
  v195 = &v190 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v205 = &v190 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v190 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v191 = &v190 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v190 - v28;
  MEMORY[0x28223BE20](v30, v31);
  v194 = &v190 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v199 = &v190 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v203 = &v190 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v190 - v41;
  MEMORY[0x28223BE20](v43, v44);
  v204 = (&v190 - v45);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v190 - v48;
  MEMORY[0x28223BE20](v50, v51);
  v192 = &v190 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v197 = &v190 - v55;
  MEMORY[0x28223BE20](v56, v57);
  v59 = &v190 - v58;
  v210 = swift_projectBox();
  v60 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v61 = *&a3[v60];
  if (v61 >> 62)
  {
    v62 = __CocoaSet.count.getter();
  }

  else
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v206 = a4;
  v214 = v10;
  v198 = v29;
  v193 = v49;
  if (v62 >= 2)
  {
    v190 = v59;
    v64 = *&a3[v60];
    v65 = v64 >> 62;
    if (v64 >> 62)
    {
      goto LABEL_96;
    }

    v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v67 = -v66;
    if (!__OFSUB__(0, v66))
    {
      goto LABEL_7;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    return;
  }

  v63 = 0;
  while (1)
  {
    v64 = *&a3[v60];
    v65 = v22;
    if (v64 >> 62)
    {
      v86 = __CocoaSet.count.getter();
    }

    else
    {
      v86 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = v209;
    v22 = v212;
    if (!v86)
    {
      goto LABEL_53;
    }

    v87 = v11;
    v11 = v86 - 1;
    if (__OFSUB__(v86, 1))
    {
      break;
    }

    if ((v64 & 0xC000000000000001) != 0)
    {
      goto LABEL_93;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v88 = *(v64 + 8 * v11 + 32);
      goto LABEL_51;
    }

    __break(1u);
LABEL_96:
    v66 = __CocoaSet.count.getter();
    v67 = -v66;
    if (__OFSUB__(0, v66))
    {
      goto LABEL_98;
    }

LABEL_7:
    if ((v67 + 1) >= 2)
    {
      v68 = v66 - 2;
      if (__OFSUB__(v66, 2))
      {
        goto LABEL_104;
      }

      if (v66 < v68)
      {
        goto LABEL_105;
      }

      if (!v65)
      {
LABEL_10:
        v69 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_15;
      }
    }

    else
    {
      if (v66 < 0)
      {
        goto LABEL_103;
      }

      v68 = 0;
      if (!v65)
      {
        goto LABEL_10;
      }
    }

    v69 = __CocoaSet.count.getter();
LABEL_15:
    if (v69 < v68)
    {
      goto LABEL_99;
    }

    if (v68 < 0)
    {
      goto LABEL_100;
    }

    if (v65)
    {
      v70 = __CocoaSet.count.getter();
    }

    else
    {
      v70 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v70 < v66)
    {
      goto LABEL_101;
    }

    if (v66 < 0)
    {
      goto LABEL_102;
    }

    v207 = v11;
    if ((v64 & 0xC000000000000001) == 0 || v68 == v66)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (v68 >= v66)
      {
        goto LABEL_106;
      }

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
      swift_bridgeObjectRetain_n();
      v71 = v68;
      do
      {
        v72 = v71 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v71);
        v71 = v72;
      }

      while (v66 != v72);
    }

    if (v65)
    {
      _CocoaArrayWrapper.subscript.getter();
      v73 = v82;
      v68 = v83;
      v85 = v84;

      v85 = v85 >> 1;
      v74 = v68 < v85;
      if (v68 == v85)
      {
LABEL_39:
        swift_unknownObjectRelease();
        v63 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v73 = (v64 & 0xFFFFFFFFFFFFFF8) + 32;
      v74 = v68 < v66;
      if (v68 == v66)
      {
        goto LABEL_39;
      }
    }

    if (!v74)
    {
      goto LABEL_107;
    }

    v75 = *(v73 + 8 * v68);
    swift_unknownObjectRelease();
    v76 = [v75 sourceIdentifier];
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;
    if (v77 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v79 == v80)
    {
      v63 = 1;
    }

    else
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

LABEL_42:
    v11 = v207;
    v59 = v190;
  }

  __break(1u);
LABEL_93:

  v88 = MEMORY[0x24C1FC540](v11, v64);

LABEL_51:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v89 = static NSObject.== infix(_:_:)();
  v90 = v88;
  v11 = v87;
  if (!(v63 & 1 | ((v89 & 1) == 0)))
  {
    v212 = v90;
    v127 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    v128 = v59;
    outlined init with copy of DOCGridLayout.Spec?(&a3[v127], v59, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v129 = v210;
    swift_beginAccess();
    v130 = v197;
    outlined init with copy of DOCHierarchyController.FetchingOperationToken(v129, v197, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    v210 = *(v87 + 56);
    (v210)(v130, 0, 1, v214);
    v131 = *(v208 + 48);
    outlined init with copy of DOCGridLayout.Spec?(v128, v65, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v132 = v214;
    outlined init with copy of DOCGridLayout.Spec?(v130, v65 + v131, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v133 = *(v11 + 48);
    if (v133(v65, 1, v132) == 1)
    {
      outlined destroy of CharacterSet?(v130, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      v134 = v214;
      outlined destroy of CharacterSet?(v128, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      v135 = v133(v65 + v131, 1, v134);
      v136 = v212;
      if (v135 == 1)
      {
        outlined destroy of CharacterSet?(v65, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_83:
        v184 = v193;
        (v210)(v193, 1, 1, v134);
        DOCHierarchyController.loadingDisabledOperation.setter(v184, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
        goto LABEL_84;
      }
    }

    else
    {
      v177 = v192;
      outlined init with copy of DOCGridLayout.Spec?(v65, v192, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      if (v133(v65 + v131, 1, v132) != 1)
      {
        v180 = v65 + v131;
        v181 = v196;
        outlined init with take of DOCHierarchyController.FetchingOperationToken(v180, v196, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        v182 = v177;
        v183 = static UUID.== infix(_:_:)();
        outlined destroy of DOCHierarchyController.FetchingOperationToken(v181, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        outlined destroy of CharacterSet?(v130, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        outlined destroy of CharacterSet?(v128, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        v134 = v214;
        outlined destroy of DOCHierarchyController.FetchingOperationToken(v182, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        outlined destroy of CharacterSet?(v65, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        v136 = v212;
        if (v183)
        {
          goto LABEL_83;
        }

LABEL_84:
        v211(1);

        return;
      }

      outlined destroy of CharacterSet?(v130, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of CharacterSet?(v128, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v177, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v136 = v212;
    }

    outlined destroy of CharacterSet?(v65, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    goto LABEL_84;
  }

LABEL_53:
  v91 = swift_allocObject();
  *(v91 + 16) = v206;
  *(v91 + 24) = a3;
  *(v91 + 32) = v60;
  *(v91 + 40) = v22;
  v92 = v211;
  *(v91 + 48) = v60;
  *(v91 + 56) = v92;
  *(v91 + 64) = v213;
  LODWORD(v197) = v201 & 1;
  *(v91 + 72) = v201 & 1;
  v201 = v91;
  LODWORD(v192) = v202 & 1;
  *(v91 + 73) = v202 & 1;
  v93 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  v94 = &a3[v93];
  v95 = v214;
  outlined init with copy of DOCGridLayout.Spec?(v94, v42, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v96 = v42;
  v97 = *(v11 + 48);
  v98 = v97(v96, 1, v95);
  v202 = v97;
  v200 = a3;
  if (v98 == 1)
  {
    v99 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    v100 = &a3[v99];
    v95 = v214;
    v101 = v204;
    outlined init with copy of DOCGridLayout.Spec?(v100, v204, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v102 = v97(v96, 1, v95);
    v103 = v22;
    v104 = v102;
    v105 = v103;
    v106 = a3;

    v107 = v60;
    if (v104 != 1)
    {
      outlined destroy of CharacterSet?(v96, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    v101 = v204;
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v96, v204, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v11 + 56))(v101, 0, 1, v95);
    v108 = v22;
    v109 = a3;

    v110 = v60;
  }

  v111 = v210;
  swift_beginAccess();
  v112 = v203;
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v111, v203, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v113 = *(v11 + 56);
  v207 = v11 + 56;
  v204 = v113;
  (v113)(v112, 0, 1, v95);
  v114 = v208;
  v115 = *(v208 + 48);
  v116 = v205;
  outlined init with copy of DOCGridLayout.Spec?(v101, v205, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v112, v116 + v115, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v117 = v202;
  if (v202(v116, 1, v95) != 1)
  {
    v118 = v199;
    outlined init with copy of DOCGridLayout.Spec?(v116, v199, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v117(v116 + v115, 1, v95) != 1)
    {
      v149 = v196;
      outlined init with take of DOCHierarchyController.FetchingOperationToken(v116 + v115, v196, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v150 = static UUID.== infix(_:_:)();
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v149, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      outlined destroy of CharacterSet?(v112, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of CharacterSet?(v101, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v118, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v95 = v214;
      outlined destroy of CharacterSet?(v116, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      if (v150)
      {
        goto LABEL_72;
      }

LABEL_63:
      v119 = v200;
      v120 = DOCHierarchyController.loadingDisabledAssertions.getter();
      v121 = (*(*v120 + 152))(v120);

      if (v121)
      {
        v122 = swift_allocObject();
        v123 = v201;
        *(v122 + 16) = partial apply for closure #1 in closure #1 in DOCHierarchyController.loadInitialLocation(from:animated:shouldSave:shouldShowPlaceholder:completionHandler:);
        *(v122 + 24) = v123;
        v124 = &v119[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock];
        v126 = *&v119[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock];
        v125 = *&v119[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_delayedLoadingBlock + 8];
        *v124 = thunk for @callee_guaranteed () -> ()partial apply;
        *(v124 + 1) = v122;
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v126, v125);
        return;
      }

      v137 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
      swift_beginAccess();
      v138 = v194;
      outlined init with copy of DOCGridLayout.Spec?(&v119[v137], v194, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      v139 = v210;
      swift_beginAccess();
      v140 = v198;
      outlined init with copy of DOCHierarchyController.FetchingOperationToken(v139, v198, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      v141 = v214;
      (v204)(v140, 0, 1, v214);
      v142 = *(v114 + 48);
      v143 = v138;
      v144 = v138;
      v145 = v195;
      outlined init with copy of DOCGridLayout.Spec?(v143, v195, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      v146 = v145;
      outlined init with copy of DOCGridLayout.Spec?(v140, v145 + v142, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      v147 = v202;
      if (v202(v145, 1, v141) == 1)
      {
        outlined destroy of CharacterSet?(v140, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        v148 = v214;
        outlined destroy of CharacterSet?(v144, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        if (v147(v145 + v142, 1, v148) == 1)
        {
          outlined destroy of CharacterSet?(v145, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_86:
          v189 = v193;
          (v204)(v193, 1, 1, v148);
          DOCHierarchyController.loadingDisabledOperation.setter(v189, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
          goto LABEL_87;
        }
      }

      else
      {
        v178 = v145;
        v179 = v191;
        outlined init with copy of DOCGridLayout.Spec?(v178, v191, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        if (v147(v146 + v142, 1, v141) != 1)
        {
          v185 = v146 + v142;
          v186 = v196;
          outlined init with take of DOCHierarchyController.FetchingOperationToken(v185, v196, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          v187 = v179;
          v188 = static UUID.== infix(_:_:)();
          outlined destroy of DOCHierarchyController.FetchingOperationToken(v186, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          outlined destroy of CharacterSet?(v198, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          outlined destroy of CharacterSet?(v144, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          v148 = v214;
          outlined destroy of DOCHierarchyController.FetchingOperationToken(v187, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          outlined destroy of CharacterSet?(v146, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          if (v188)
          {
            goto LABEL_86;
          }

LABEL_87:
          v211(0);
          goto LABEL_88;
        }

        outlined destroy of CharacterSet?(v198, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        outlined destroy of CharacterSet?(v144, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        outlined destroy of DOCHierarchyController.FetchingOperationToken(v179, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      }

      outlined destroy of CharacterSet?(v146, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
      goto LABEL_87;
    }

    outlined destroy of CharacterSet?(v112, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v101, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v118, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_62:
    outlined destroy of CharacterSet?(v116, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    goto LABEL_63;
  }

  outlined destroy of CharacterSet?(v112, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of CharacterSet?(v101, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v117(v116 + v115, 1, v95) != 1)
  {
    goto LABEL_62;
  }

  outlined destroy of CharacterSet?(v116, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_72:
  v151 = 1;
  v152 = v210;
  swift_beginAccess();
  v152[*(v95 + 24)] = 0;
  v153 = v209;
  v154 = [v209 sourceIdentifier];
  v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v157 = v156;
  if (v155 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v157 != v158)
  {
    v151 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v159 = swift_allocObject();
  v160 = v200;
  *(v159 + 16) = v153;
  *(v159 + 24) = v160;
  v161 = v211;
  *(v159 + 32) = v206;
  *(v159 + 40) = v161;
  *(v159 + 48) = v213;
  *(v159 + 56) = v197;
  *(v159 + 57) = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC20ResolvedLocationInfo33_3085D686B27B1518531DD3257B8A8BC0LLVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC20ResolvedLocationInfo33_3085D686B27B1518531DD3257B8A8BC0LLVGMR);
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_249B9A480;
  v163 = v212;
  *(v162 + 32) = v153;
  *(v162 + 40) = v163;
  v164 = swift_allocObject();
  *(v164 + 16) = partial apply for closure #1 in closure #1 in closure #1 in DOCHierarchyController.loadInitialLocation(from:animated:shouldSave:shouldShowPlaceholder:completionHandler:);
  *(v164 + 24) = v159;
  type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
  v165 = swift_allocObject();
  *(v165 + 40) = DOCGridLayout.specIconWidth.modify;
  *(v165 + 48) = 0;
  *(v165 + 56) = MEMORY[0x277D84F90];
  *(v165 + 64) = 0;
  *(v165 + 16) = v160;
  *(v165 + 24) = v162;
  *(v165 + 32) = 0;
  *(v165 + 33) = v151 & 1;
  v166 = swift_allocObject();
  swift_weakInit();
  v167 = swift_allocObject();
  v168 = v153;
  v169 = v167;
  v167[2] = v166;
  v167[3] = closure #1 in DOCHierarchyController.prepareController(forResolvedLocationInfo:isUserInteraction:isBrowsingTrash:completion:)partial apply;
  v167[4] = v164;
  *(v165 + 64) = v165;
  v170 = v168;
  v171 = v160;
  v172 = v170;
  v173 = v212;
  v174 = v171;

  swift_unknownObjectRelease();
  v175 = swift_allocObject();
  swift_weakInit();
  v176 = swift_allocObject();
  v176[2] = closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
  v176[3] = v169;
  v176[4] = v175;
  *(v165 + 40) = closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
  *(v165 + 48) = v176;

  tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();

LABEL_88:
}

uint64_t closure #1 in closure #1 in DOCHierarchyController.loadInitialLocation(from:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v13 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v14 = a1;
  v15 = swift_projectBox();
  v16 = 1;
  swift_beginAccess();
  *(v15 + *(v13 + 24)) = 0;
  v17 = [a5 sourceIdentifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v20 != v21)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  *(v23 + 24) = a2;
  v24 = v16;
  v25 = a2;
  *(v23 + 32) = v14;
  *(v23 + 40) = a6;
  *(v23 + 48) = a7;
  *(v23 + 56) = a8 & 1;
  *(v23 + 57) = a9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC20ResolvedLocationInfo33_3085D686B27B1518531DD3257B8A8BC0LLVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC20ResolvedLocationInfo33_3085D686B27B1518531DD3257B8A8BC0LLVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_249B9A480;
  *(v26 + 32) = a3;
  *(v26 + 40) = a4;
  v27 = swift_allocObject();
  *(v27 + 16) = closure #1 in closure #1 in closure #1 in DOCHierarchyController.loadInitialLocation(from:animated:shouldSave:shouldShowPlaceholder:completionHandler:)partial apply;
  *(v27 + 24) = v23;
  type metadata accessor for BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
  v28 = swift_allocObject();
  *(v28 + 40) = DOCGridLayout.specIconWidth.modify;
  *(v28 + 48) = 0;
  *(v28 + 56) = MEMORY[0x277D84F90];
  *(v28 + 64) = 0;
  *(v28 + 16) = a2;
  *(v28 + 24) = v26;
  *(v28 + 32) = 0;
  *(v28 + 33) = v24 & 1;
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = closure #1 in DOCHierarchyController.prepareController(forResolvedLocationInfo:isUserInteraction:isBrowsingTrash:completion:)partial apply;
  v30[4] = v27;
  *(v28 + 64) = v28;
  v31 = v25;
  v32 = a5;

  v33 = a3;
  v34 = a4;

  swift_unknownObjectRelease();
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v36[2] = closure #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
  v36[3] = v30;
  v36[4] = v35;
  *(v28 + 40) = closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)partial apply;
  *(v28 + 48) = v36;

  tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
}

uint64_t closure #1 in closure #1 in closure #1 in DOCHierarchyController.loadInitialLocation(from:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, int a7, int a8)
{
  v93 = a8;
  v92 = a7;
  v99 = a6;
  v97 = a1;
  v11 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  *&v103 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v90 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v85[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v91 = &v85[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21, v22);
  v94 = &v85[-v23];
  MEMORY[0x28223BE20](v24, v25);
  v101 = &v85[-v26];
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v85[-v29];
  MEMORY[0x28223BE20](v31, v32);
  v102 = &v85[-v33];
  v95 = swift_projectBox();
  v96 = a2;
  v34 = [a2 node];
  v100 = a5;
  v98 = a3;
  if (v34)
  {
    v35 = v34;
    v36 = *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v35;
    swift_unknownObjectRetain();
    DOCAnalyticsActionEvent.FileProvider.init(nodes:)(inited);
    v88 = v107[0];
    v38 = objc_opt_self();
    v39 = [v38 mainBundle];

    DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)([v96 sourceIdentifier]);
    v87 = v106[0];
    type metadata accessor for DOCBrowserContainerController();
    v40 = swift_dynamicCastClass();
    if (v40 && (v41 = (*((*MEMORY[0x277D85000] & *v40) + 0xE8))()) != 0)
    {
      v42 = v41;
      type metadata accessor for DOCItemCollectionViewController(0);
      v43 = swift_dynamicCastClass();
      if (v43)
      {
        v44 = (*((*MEMORY[0x277D85000] & *v43) + 0xBD8))();

        if (v44 >= 4)
        {
          v108[0] = v44;
          result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
          return result;
        }

        v86 = 0x3020201u >> (8 * v44);
      }

      else
      {

        v86 = 0;
      }
    }

    else
    {
      v86 = 0;
    }

    v45 = [v38 mainBundle];
    v46 = [v45 bundleIdentifier];

    v89 = v14;
    if (v46)
    {
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0;
    }

    v50 = v36;
    DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v50, v47, v49, v108);
    v51 = v108[0];
    v52 = v50;
    DOCAnalyticsActionEvent.SortMode.init(configuration:)(v52, &v105);
    v53 = v105;
    v54 = v52;
    DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v54, &v104);
    v55 = v104;
    v56 = [v54 hostIdentifier];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v108[0] = 0xD000000000000032;
    v108[1] = 0x8000000249BCDC20;
    v108[2] = v57;
    v108[3] = v59;
    v109 = 4;
    v110 = v51;
    v111 = v88;
    v112 = v87;
    v113 = v86;
    v114 = v53;
    v115 = v55;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(v108, static DOCAnalyticsManager.shared);
    swift_unknownObjectRelease();
    outlined destroy of DOCAnalyticsActionEvent(v108);
    a3 = v98;
    v14 = v89;
  }

  v60 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(a3 + v60, v30, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v61 = v103;
  v62 = *(v103 + 48);
  if (v62(v30, 1, v11) == 1)
  {
    v63 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    v64 = v102;
    outlined init with copy of DOCGridLayout.Spec?(a3 + v63, v102, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v65 = v62(v30, 1, v11);
    v66 = v101;
    if (v65 != 1)
    {
      outlined destroy of CharacterSet?(v30, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    v64 = v102;
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v30, v102, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v61 + 56))(v64, 0, 1, v11);
    v66 = v101;
  }

  v67 = v95;
  swift_beginAccess();
  outlined init with copy of DOCHierarchyController.FetchingOperationToken(v67, v66, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v68 = *(v61 + 56);
  *&v103 = v61 + 56;
  v68(v66, 0, 1, v11);
  v69 = *(v14 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v64, v17, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v66, &v17[v69], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v62(v17, 1, v11) == 1)
  {
    outlined destroy of CharacterSet?(v66, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v64, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v62(&v17[v69], 1, v11) == 1)
    {
      outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_26:
      v76 = v91;
      v68(v91, 1, 1, v11);
      DOCHierarchyController.loadingDisabledOperation.setter(v76, &OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v77 = swift_initStackObject();
      v103 = xmmword_249BA0290;
      *(v77 + 16) = xmmword_249BA0290;
      v78 = v96;
      *(v77 + 32) = v96;
      v79 = swift_initStackObject();
      *(v79 + 16) = v103;
      v80 = v97;
      *(v79 + 32) = v97;
      v81 = v78;
      v82 = v80;
      v83 = _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSaySo011DOCConcreteD0CG_SaySo06UIViewG0CGtFZAD_Tt1g5(v77, v79);

      swift_setDeallocating();
      swift_arrayDestroy();
      DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(v83, v92 & 1, DOCGridLayout.specIconWidth.modify, 0);

      if (v93)
      {
        DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
      }

      DOCHierarchyController.loadParentIfNeeded()();
      v71 = 1;
      return v100(v71);
    }

LABEL_24:
    outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    v71 = 0;
    return v100(v71);
  }

  v70 = v94;
  outlined init with copy of DOCGridLayout.Spec?(v17, v94, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v62(&v17[v69], 1, v11) == 1)
  {
    outlined destroy of CharacterSet?(v101, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of CharacterSet?(v102, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v70, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    goto LABEL_24;
  }

  v72 = &v17[v69];
  v73 = v90;
  outlined init with take of DOCHierarchyController.FetchingOperationToken(v72, v90, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  v74 = v70;
  v75 = static UUID.== infix(_:_:)();
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v73, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v101, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of CharacterSet?(v102, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  outlined destroy of DOCHierarchyController.FetchingOperationToken(v74, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
  outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  if (v75)
  {
    goto LABEL_26;
  }

  return v100(0);
}