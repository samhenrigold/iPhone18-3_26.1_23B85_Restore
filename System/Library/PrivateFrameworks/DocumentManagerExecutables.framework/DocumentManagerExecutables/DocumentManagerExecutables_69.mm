void closure #2 in closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:)(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v97 = a7;
  v98 = a3;
  v99 = a4;
  v100 = a5;
  v96 = a1;
  v91 = a10;
  v92 = a8;
  v93 = a9;
  v94 = a6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v95 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v24 = type metadata accessor for DispatchQoS.QoSClass();
  v29.n128_f64[0] = MEMORY[0x28223BE20](v24, v25);
  v30 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v86 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v87 = v21;
    v88 = v11;
    v89 = v16;
    v90 = v15;
    v39 = v96;
    v40 = v97;
    if (v96)
    {
      v41 = v26;
      v42 = v96 & 0xFFFFFFFFFFFFFF8;
      if (v96 >> 62)
      {
        v72 = v26;
        v73 = v28;
        v74 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        v75 = v96;
        v76 = __CocoaSet.count.getter();
        v39 = v75;
        v30 = v74;
        v28 = v73;
        v41 = v72;
        if (v76)
        {
LABEL_8:
          v85 = v19;
          v84 = v14;
          v83 = v41;
          if ((v39 & 0xC000000000000001) != 0)
          {
            v43 = v30;
            v44 = v28;
            v45 = MEMORY[0x24C1FC540](0, v29);
          }

          else
          {
            if (!*(v42 + 16))
            {
              __break(1u);
              return;
            }

            v43 = v30;
            v44 = v28;
            v45 = *(v39 + 32);
          }

          v46 = v45;
          v98 = v45;
          v47 = [v45 providerDomainID];
          v96 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v47 node:v46];

          v48 = swift_allocObject();
          v49 = v100;
          *(v48 + 16) = v99;
          *(v48 + 24) = v49;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v50 = v83;
          (*(v44 + 104))(v43, *MEMORY[0x277D851C8], v83);

          v100 = static OS_dispatch_queue.global(qos:)();
          (*(v44 + 8))(v43, v50);
          v51 = v87;
          v52 = v86;
          (*(v87 + 16))(v86, v40, v20);
          v53 = (*(v51 + 80) + 24) & ~*(v51 + 80);
          v54 = v20;
          v55 = (v22 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
          v56 = (v55 + 39) & 0xFFFFFFFFFFFFFFF8;
          v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
          v58 = swift_allocObject();
          *(v58 + 16) = v91;
          (*(v51 + 32))(v58 + v53, v52, v54);
          v59 = (v58 + v55);
          *v59 = partial apply for closure #3 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:);
          v59[1] = v48;
          v60 = v58 + ((v55 + 23) & 0xFFFFFFFFFFFFFFF8);
          v62 = v93;
          v61 = v94;
          *v60 = v94;
          *(v60 + 8) = 1;
          v63 = (v58 + v56);
          *v63 = v92;
          v63[1] = v62;
          v64 = v96;
          *(v58 + v57) = v96;
          aBlock[4] = closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)partial apply;
          aBlock[5] = v58;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_255;
          v65 = _Block_copy(aBlock);

          v66 = v64;

          v67 = v61;
          v68 = v85;
          static DispatchQoS.unspecified.getter();
          v101 = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v69 = v84;
          v70 = v88;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v71 = v100;
          MEMORY[0x24C1FB9A0](0, v68, v69, v65);
          _Block_release(v65);

          (*(v95 + 8))(v69, v70);
          (*(v89 + 8))(v68, v90);

          return;
        }
      }

      else if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v77 = static DOCLog.UI;
    v78 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_249B9A480;
    *(v79 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    *(v79 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    v80 = v98;
    *(v79 + 32) = v98;
    v81 = v80;
    os_log(_:dso:log:type:_:)("importDocument: Unable to fetch parent for item %@.", 51, 2, &dword_2493AC000, v77, v78, v79);

    v82 = swift_allocObject();
    *(v82 + 16) = v99;
    *(v82 + 24) = v100;

    goto LABEL_16;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v31 = static DOCLog.UI;
  v32 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_249B9FA70;
  *(v33 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  *(v33 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  v34 = v98;
  *(v33 + 32) = v98;
  v35 = v34;
  v36 = _convertErrorToNSError(_:)();
  *(v33 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  *(v33 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
  *(v33 + 72) = v36;
  os_log(_:dso:log:type:_:)("importDocument: Unable to fetch parent for item %@. Error: %@", 61, 2, &dword_2493AC000, v31, v32, v33);

  v37 = swift_allocObject();
  v37[2] = v99;
  v37[3] = v100;
  v37[4] = a2;

  v38 = a2;
LABEL_16:
  DOCRunInMainThread(_:)();
}

uint64_t closure #2 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:)(void (*a1)(char *, void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  a1(v5, 0);
  return outlined destroy of CharacterSet?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

Swift::Void __swiftcall DOCDocumentManager.createNewDocument(targetLocation:)(DOCConcreteLocation_optional *targetLocation)
{
  v2 = v1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = targetLocation;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = targetLocation;
    v10 = v5;
    _os_log_impl(&dword_2493AC000, v6, v7, "Creating document at %@", v8, 0xCu);
    outlined destroy of CharacterSet?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = targetLocation;
  *(v11 + 24) = v2;
  v12 = v5;
  v13 = v2;
  DOCRunInMainThread(_:)();
}

void createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(void *a1, char *a2)
{
  v4 = [a2 activeDocumentCreationSession];
  if (v4)
  {

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.UI);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v6, "Ignore document creation because the client is still processing the previous request", v7, 2u);
      MEMORY[0x24C1FE850](v7, -1, -1);
    }

    goto LABEL_17;
  }

  v8 = *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration];
  v9 = [v8 sceneIdentifier];
  oslog = specialized static DOCInteractionManager.sharedManager(for:)(v9);

  v10 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & oslog->isa) + 0x60))())
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2493AC000, v12, v13, "Ignore document creation because the client is still processing an open document request", v14, 2u);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    goto LABEL_16;
  }

  v15 = (*((*v10 & *a2) + 0xB0))();
  if (!v15)
  {
LABEL_17:

    return;
  }

  v12 = v15;
  v16 = (*((*v10 & *a2) + 0x98))();
  if (!v16)
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v19 = [v12 configuration];
  v20 = [v19 sceneIdentifier];

  v21 = [v18 globalTabbedBrowserControllerForIdentifier_];
  if (v21)
  {
    type metadata accessor for DOCServiceDocumentBrowserViewController();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  objc_allocWithZone(type metadata accessor for DOCDocumentManager.DocumentCreationSession(0));
  v23 = v22;
  v24 = a1;
  v25 = v8;
  v26 = specialized DOCDocumentManager.DocumentCreationSession.init(targetLocation:configuration:serviceViewController:)(v24, v25, v22);

  [a2 setActiveDocumentCreationSession_];
  DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(v26, 1u);
  if ([v17 respondsToSelector_])
  {
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v26;
    v28[4] = v24;
    aBlock[4] = partial apply for closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:);
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @unowned UIDocumentBrowserImportMode) -> ();
    aBlock[3] = &block_descriptor_204_0;
    v29 = _Block_copy(aBlock);
    v30 = v24;

    v31 = v26;

    [v17 documentBrowser:v12 didRequestDocumentCreationWithHandler:v29];

    swift_unknownObjectRelease();

    _Block_release(v29);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @unowned UIDocumentBrowserImportMode) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v10(v9, a3);

  return outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

void closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v38 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v35 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v35 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (!a2)
    {
LABEL_5:
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = a4;
      v24 = v22;
      v25 = a4;
      DOCRunInMainThread(_:)();

      return;
    }

    v37 = a2;
    outlined init with copy of DOCGridLayout.Spec?(a1, v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_5;
    }

    v26 = *(v13 + 32);
    v35[1] = v13 + 32;
    v36 = v26;
    v26(v20, v11, v12);
    static os_log_type_t.info.getter();
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v39 = 0xD000000000000016;
    v40 = 0x8000000249BFCB00;
    v27 = URL.absoluteString.getter();
    MEMORY[0x24C1FAEA0](v27);

    specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(a4, v39, v40);

    (*(v13 + 16))(v16, v20, v12);
    v28 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = v22;
    *(v30 + 24) = a4;
    v36(v30 + v28, v16, v12);
    v31 = v38;
    *(v30 + v29) = v37;
    *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
    v32 = v22;
    v33 = a4;
    v34 = v31;
    DOCRunInMainThread(_:)();

    (*(v13 + 8))(v20, v12);
  }
}

double closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v66 = a5;
  v64 = a4;
  v68 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v8);
  v67 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v69 = *(v10 - 8);
  v70 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v65 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v59 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v61 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v52 - v22;
  DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(a2, 2u);
  static os_log_type_t.info.getter();
  aBlock = 0;
  v74 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  aBlock = 0xD000000000000013;
  v74 = 0x8000000249BFCB20;
  v56 = a3;
  v24 = URL.absoluteString.getter();
  MEMORY[0x24C1FAEA0](v24);

  specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(a2, aBlock, v74);

  v55 = *(v17 + 16);
  v53 = v16;
  v55(v23, a3, v16);
  v25 = *(v17 + 80);
  v26 = swift_allocObject();
  v58 = v26;
  v27 = a1;
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  v57 = *(v17 + 32);
  v57(v26 + ((v25 + 32) & ~v25), v23, v16);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v29 = v62;
  v28 = v63;
  v30 = v59;
  (*(v62 + 104))(v59, *MEMORY[0x277D851C8], v63);
  v54 = v27;
  v31 = a2;
  v60 = static OS_dispatch_queue.global(qos:)();
  (*(v29 + 8))(v30, v28);
  v32 = v61;
  v33 = v53;
  v55(v61, v56, v53);
  v34 = (v25 + 24) & ~v25;
  v35 = (v18 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 39) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v64;
  v57(v37 + v34, v32, v33);
  v38 = (v37 + v35);
  v39 = v58;
  *v38 = partial apply for closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:);
  v38[1] = v39;
  v40 = v37 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
  v41 = v54;
  *v40 = v54;
  *(v40 + 8) = 0;
  v42 = (v37 + v36);
  *v42 = 0;
  v42[1] = 0;
  v43 = v66;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = v66;
  v77 = closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)partial apply;
  v78 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v76 = &block_descriptor_220_2;
  v44 = _Block_copy(&aBlock);
  v45 = v41;

  v46 = v43;
  v47 = v65;
  static DispatchQoS.unspecified.getter();
  v72 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v49 = v67;
  v48 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = v60;
  MEMORY[0x24C1FB9A0](0, v47, v49, v44);
  _Block_release(v44);

  (*(v71 + 8))(v49, v48);
  (*(v69 + 8))(v47, v70);

  return result;
}

double closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v29 = a3;
  v30 = a2;
  v28 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.info.getter();
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v31 = 0xD000000000000014;
  v32 = 0x8000000249BFCB40;
  v17 = URL.absoluteString.getter();
  MEMORY[0x24C1FAEA0](v17);

  specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(a4, v31, v32);

  (*(v13 + 16))(v16, a5, v12);
  outlined init with copy of DOCGridLayout.Spec?(v28, v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = (v14 + *(v27 + 80) + v18) & ~*(v27 + 80);
  v20 = swift_allocObject();
  v21 = v29;
  *(v20 + 16) = v29;
  *(v20 + 24) = a4;
  (*(v13 + 32))(v20 + v18, v16, v12);
  outlined init with take of URL?(v11, v20 + v19);
  v22 = v30;
  *(v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v23 = v21;
  v24 = a4;
  v25 = v22;
  DOCRunInMainThread(_:)();

  return result;
}

double closure #1 in closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v67 = a4;
  v62 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v68 = v11;
  v69 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v63 = *(v12 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v65 = &v49 - v14;
  v58 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v15);
  v57 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v59 = *(v17 - 8);
  v60 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v56 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchTime();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v49 - v27;
  static os_log_type_t.info.getter();
  specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(a2, 0xD00000000000002CLL, 0x8000000249BFCB60);
  v66 = a2;
  DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(a2, 3u);
  v29 = [a1 activeDocumentCreationSession];
  if (v29)
  {
    v30 = v29;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v52 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v51 = v28;
    + infix(_:_:)();
    v31 = *(v21 + 8);
    v54 = v21 + 8;
    v55 = v31;
    v53 = v20;
    v31(v24, v20);
    v32 = swift_allocObject();
    *(v32 + 16) = a1;
    *(v32 + 24) = v30;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:);
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_233_0;
    v49 = _Block_copy(aBlock);
    v33 = a1;
    v50 = v30;

    v34 = v56;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v36 = v57;
    v35 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v37 = v51;
    v38 = v49;
    v39 = v52;
    MEMORY[0x24C1FB940](v51, v34, v36, v49);
    _Block_release(v38);

    (*(v61 + 8))(v36, v35);
    (*(v59 + 8))(v34, v60);
    v55(v37, v53);
  }

  static os_log_type_t.info.getter();
  specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(v66, 0xD000000000000025, 0x8000000249BFCB90);
  v40 = v65;
  outlined init with copy of DOCGridLayout.Spec?(v67, v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v41 = v69;
  (*(v9 + 16))(v69, v62, v8);
  v42 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v43 = (v64 + *(v9 + 80) + v42) & ~*(v9 + 80);
  v44 = (v68 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = a1;
  outlined init with take of URL?(v40, v45 + v42);
  (*(v9 + 32))(v45 + v43, v41, v8);
  *(v45 + v44) = a5;
  v46 = a1;
  v47 = a5;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(void *a1, char *a2)
{
  v40 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v38 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v35 - v15;
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v35 - v20;
  v37 = a1;
  v22 = [a1 activeDocumentCreationSession];
  if (v22)
  {
    v23 = *(v4 + 16);
    v24 = v22;
    v23(v21, &v22[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_identifier], v3);

    v25 = *(v4 + 56);
    v25(v21, 0, 1, v3);
  }

  else
  {
    v25 = *(v4 + 56);
    v25(v21, 1, 1, v3);
    v23 = *(v4 + 16);
  }

  v23(v16, &v40[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_identifier], v3);
  v25(v16, 0, 1, v3);
  v26 = *(v7 + 48);
  v27 = v39;
  outlined init with copy of DOCGridLayout.Spec?(v21, v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v16, v27 + v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v28 = *(v4 + 48);
  if (v28(v27, 1, v3) != 1)
  {
    v29 = v38;
    outlined init with copy of DOCGridLayout.Spec?(v27, v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v28(v27 + v26, 1, v3) != 1)
    {
      v30 = v27 + v26;
      v31 = v36;
      (*(v4 + 32))(v36, v30, v3);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v4 + 8);
      v33(v31, v3);
      outlined destroy of CharacterSet?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of CharacterSet?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v33(v29, v3);
      outlined destroy of CharacterSet?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((v32 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    outlined destroy of CharacterSet?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of CharacterSet?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v4 + 8))(v29, v3);
LABEL_9:
    outlined destroy of CharacterSet?(v27, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return;
  }

  outlined destroy of CharacterSet?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of CharacterSet?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v28(v27 + v26, 1, v3) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of CharacterSet?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_11:
  static os_log_type_t.info.getter();
  v34 = v40;
  specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(v40, 0xD000000000000036, 0x8000000249BFCBC0);
  DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(v34, 0);
}

void closure #1 in DOCDocumentManager.createNewDocument(targetLocation:)(void *a1, char *a2)
{
  if (!a1)
  {
    v3 = *&a2[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_hierarchyController];
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v6 = *(v3 + v5);
    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
      if (v7)
      {
LABEL_7:
        v8 = v7 - 1;
        if (__OFSUB__(v7, 1))
        {
          __break(1u);
        }

        else if ((v6 & 0xC000000000000001) == 0)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v9 = *(v6 + 8 * v8 + 32);
            v10 = a2;
            v11 = v9;
            goto LABEL_12;
          }

          __break(1u);
          return;
        }

        v26 = a2;

        v11 = MEMORY[0x24C1FC540](v8, v6);

LABEL_12:
        v12 = [v11 fileProviderItem];
        if (v12)
        {
          v13 = v12;
          v14 = *MEMORY[0x277CC6028];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_249BA0290;
          *(inited + 32) = v13;
          v16 = v13;
          specialized static DOCActionManager.canPerform(_:on:)(v14, inited);
          LOBYTE(v14) = v17;
          swift_setDeallocating();
          swift_arrayDestroy();

          if (v14)
          {
            v18 = v11;
            createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(v18, a2);

LABEL_19:

            return;
          }
        }

LABEL_18:
        type metadata accessor for DOCHierarchyController(0);
        v20 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
        v21 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver);
        v22 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
        swift_beginAccess();
        v23 = *(v3 + v22);
        v24 = swift_allocObject();
        *(v24 + 16) = partial apply for closure #1 in closure #1 in DOCDocumentManager.createNewDocument(targetLocation:);
        *(v24 + 24) = v4;
        v25 = v23;

        static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v20, v21, v23, closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:)partial apply, v24);

        goto LABEL_19;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_7;
      }
    }

    v19 = a2;
    goto LABEL_18;
  }

  v27 = a1;
  createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(v27, a2);
}

void closure #1 in closure #1 in DOCDocumentManager.createNewDocument(targetLocation:)(void *a1, char *a2)
{
  if (a1)
  {
    oslog = a1;
    createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(oslog, a2);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.UI);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v4, "Cannot create a document if we don't have a default location", v5, 2u);
      MEMORY[0x24C1FE850](v5, -1, -1);
    }
  }
}

double DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DOCHierarchyController(0);
  v19[0] = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_configuration];
  v19[1] = v12;
  v13 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_sourceObserver];
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v20;
  *(v16 + 24) = a4;
  (*(v8 + 32))(v16 + v14, v11, v7);
  *(v16 + v15) = v4;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;

  v17 = v4;
  static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v19[0], v13, 0, partial apply for closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:), v16);

  return result;
}

double closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v56 = a6;
  v57 = a5;
  v62 = a3;
  v63 = a4;
  v64 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v61 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v17 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = swift_allocObject();
    v55 = v10;
    v24 = v23;
    v53 = v15;
    v25 = a1;
    v26 = v62;
    *(v23 + 16) = v64;
    *(v23 + 24) = v26;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v64 = v7;
    (*(v19 + 104))(v22, *MEMORY[0x277D851C8], v18);
    v54 = v25;

    v62 = static OS_dispatch_queue.global(qos:)();
    (*(v19 + 8))(v22, v18);
    (*(v14 + 16))(v17, v63, v13);
    v27 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v28 = (v53 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 39) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = v56;
    (*(v14 + 32))(v30 + v27, v17, v13);
    v31 = (v30 + v28);
    *v31 = partial apply for closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:);
    v31[1] = v24;
    v32 = v30 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
    v33 = v57;
    *v32 = v57;
    *(v32 + 8) = 1;
    v34 = (v30 + v29);
    *v34 = 0;
    v34[1] = 0;
    v35 = v54;
    *(v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) = v54;
    aBlock[4] = closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)partial apply;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_187_1;
    v36 = _Block_copy(aBlock);
    v37 = v35;

    v38 = v33;
    v39 = v59;
    static DispatchQoS.unspecified.getter();
    v65 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v40 = v61;
    v41 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v42 = v62;
    MEMORY[0x24C1FB9A0](0, v39, v40, v36);
    _Block_release(v36);

    (*(v58 + 8))(v40, v41);
    (*(v60 + 8))(v39, v55);
  }

  else
  {
    v43 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v44 = v62;
    v45 = v63;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.UI);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2493AC000, v47, v48, "Cannot import a document if we don't have a default location", v49, 2u);
      MEMORY[0x24C1FE850](v49, -1, -1);
    }

    (*(v14 + 16))(v43, v45, v13);
    v50 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v64;
    *(v51 + 24) = v44;
    (*(v14 + 32))(v51 + v50, v43, v13);

    DOCRunInMainThread(_:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)(void (*a1)(char *, id))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = URL.lastPathComponent.getter();
  v8 = MEMORY[0x24C1FAD20](v7);

  v9 = DOCErrorNoLocationAvailableError();

  a1(v5, v9);
  return outlined destroy of CharacterSet?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

double closure #3 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v15 = v20 - v14;
  outlined init with copy of DOCGridLayout.Spec?(a1, v20 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  outlined init with take of URL?(v15, v17 + v16);
  *(v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  v18 = a2;
  DOCRunInMainThread(_:)();

  return result;
}

void DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v117 = a2;
  v118 = a4;
  v116 = a1;
  v108 = type metadata accessor for DispatchWorkItemFlags();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v7);
  v105 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DispatchQoS();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v9);
  v103 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchQoS.QoSClass();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v11);
  v98 = v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v99 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v94 = v90 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v90 - v22;
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = v90 - v27;
  v29 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_hierarchyController];
  v30 = *(v14 + 16);
  v30(v90 - v27, v116, v13, v26);
  v116 = v23;
  v112 = v14 + 16;
  v111 = v30;
  (v30)(v23, v28, v13);
  v31 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v32 = (v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v110 = *(v14 + 80);
  v97 = v33 + 8;
  v34 = swift_allocObject();
  v115 = v5;
  *(v34 + 16) = v5;
  v35 = v28;
  v36 = v13;
  v109 = *(v14 + 32);
  v109(v34 + v31, v35, v13);
  v95 = v32;
  v37 = (v34 + v32);
  v102 = a3;
  v38 = v118;
  *v37 = a3;
  v37[1] = v38;
  v96 = v33;
  v113 = v34;
  *(v34 + v33) = v117;
  v39 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v40 = *(v29 + v39);
  if (v40 >> 62)
  {
    v41 = __CocoaSet.count.getter();
    v114 = v14;
    if (v41)
    {
LABEL_3:
      v42 = v14 + 32;
      v43 = v41 - 1;
      if (__OFSUB__(v41, 1))
      {
        __break(1u);
      }

      else if ((v40 & 0xC000000000000001) == 0)
      {
        if ((v43 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v43 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v44 = *(v40 + 8 * v43 + 32);

          v45 = v115;
          v46 = v44;
          goto LABEL_8;
        }

        __break(1u);
        return;
      }

      v89 = v115;

      v46 = MEMORY[0x24C1FC540](v43, v40);

LABEL_8:
      v47 = [v46 fileProviderItem];
      if (v47)
      {
        v48 = v47;
        v49 = v31;
        v93 = v36;
        v50 = *MEMORY[0x277CC6028];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_249BA0290;
        *(inited + 32) = v48;
        v52 = v48;
        specialized static DOCActionManager.canPerform(_:on:)(v50, inited);
        LOBYTE(v50) = v53;
        swift_setDeallocating();
        swift_arrayDestroy();

        if (v50)
        {
          v54 = v94;
          v55 = v93;
          v111(v94, v116, v93);
          v56 = v95;
          v57 = swift_allocObject();
          v92 = v57;
          v58 = v115;
          *(v57 + 16) = v115;
          v91 = v49;
          v90[1] = v42;
          v109(v57 + v49, v54, v55);
          v59 = (v57 + v56);
          v60 = v118;
          *v59 = v102;
          v59[1] = v60;
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v61 = v100;
          v62 = v98;
          v63 = v101;
          (*(v100 + 104))(v98, *MEMORY[0x277D851C8], v101);
          v64 = v46;

          v115 = v58;
          v65 = v64;
          v118 = static OS_dispatch_queue.global(qos:)();
          (*(v61 + 8))(v62, v63);
          v66 = v99;
          v67 = v116;
          v111(v99, v116, v55);
          v68 = (v56 + 39) & 0xFFFFFFFFFFFFFFF8;
          v69 = swift_allocObject();
          *(v69 + 16) = v117;
          v109(v69 + v91, v66, v55);
          v70 = (v69 + v56);
          v71 = v92;
          *v70 = partial apply for closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:);
          v70[1] = v71;
          v72 = v115;
          *(v69 + v96) = v115;
          *(v69 + v97) = 1;
          v73 = (v69 + v68);
          *v73 = 0;
          v73[1] = 0;
          *(v69 + ((v68 + 23) & 0xFFFFFFFFFFFFFFF8)) = v65;
          aBlock[4] = partial apply for closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:);
          aBlock[5] = v69;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_160;
          v74 = _Block_copy(aBlock);
          v75 = v72;
          v76 = v65;

          v77 = v103;
          static DispatchQoS.unspecified.getter();
          v119 = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v78 = v105;
          v79 = v108;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v80 = v118;
          MEMORY[0x24C1FB9A0](0, v77, v78, v74);
          _Block_release(v74);

          (*(v107 + 8))(v78, v79);
          (*(v104 + 8))(v77, v106);
          (*(v114 + 8))(v67, v93);

          return;
        }

        v36 = v93;
      }

      else
      {
      }

      goto LABEL_15;
    }
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v114 = v14;
    if (v41)
    {
      goto LABEL_3;
    }
  }

  v81 = v115;
LABEL_15:
  type metadata accessor for DOCHierarchyController(0);
  v82 = *(v29 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
  v83 = *(v29 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver);
  v84 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
  swift_beginAccess();
  v85 = *(v29 + v84);
  v86 = swift_allocObject();
  v87 = v113;
  *(v86 + 16) = partial apply for closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:);
  *(v86 + 24) = v87;
  v88 = v85;

  static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v82, v83, v85, partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> (), v86);

  (*(v114 + 8))(v116, v36);
}

double closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v89 = a6;
  v93 = a2;
  v94 = a5;
  v92 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v87 = v8;
  v88 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v91 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v90 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v17);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20, v22);
  v28 = MEMORY[0x28223BE20](v23, v24);
  v29 = &v75 - v25;
  if (a1)
  {
    v85 = v13;
    v80 = *(v26 + 16);
    v81 = a3;
    v82 = v27;
    v30 = a3;
    v31 = v20;
    v32 = v20;
    v33 = v26;
    v80(&v75 - v25, v30, v32, v28);
    v84 = v12;
    v34 = *(v33 + 80);
    v79 = v34;
    v35 = v19;
    v36 = (v34 + 24) & ~v34;
    v78 = v36;
    v37 = (v21 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = v93;
    *(v38 + 16) = v93;
    v77 = *(v33 + 32);
    v76 = a1;
    v40 = v38;
    v83 = v38;
    v77(v38 + v36, v29, v31);
    v41 = (v40 + v37);
    v42 = v94;
    *v41 = v92;
    v41[1] = v42;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v43 = v86;
    (*(v16 + 104))(v35, *MEMORY[0x277D851C8], v86);
    v92 = v76;
    v44 = v39;

    v94 = static OS_dispatch_queue.global(qos:)();
    (*(v16 + 8))(v35, v43);
    v45 = v82;
    (v80)(v82, v81, v31);
    v46 = (v37 + 39) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = v89;
    v77(v47 + v78, v45, v31);
    v48 = (v47 + v37);
    v49 = v83;
    *v48 = closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)partial apply;
    v48[1] = v49;
    v50 = v47 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v50 = v44;
    *(v50 + 8) = 1;
    v51 = (v47 + v46);
    *v51 = 0;
    v51[1] = 0;
    v52 = v92;
    *(v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8)) = v92;
    aBlock[4] = closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)partial apply;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_170_1;
    v53 = _Block_copy(aBlock);
    v54 = v52;
    v55 = v44;

    v56 = v90;
    static DispatchQoS.unspecified.getter();
    v95 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v57 = v84;
    v58 = v87;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v59 = v94;
    MEMORY[0x24C1FB9A0](0, v56, v57, v53);
    _Block_release(v53);

    (*(v88 + 8))(v57, v58);
    (*(v91 + 8))(v56, v85);
  }

  else
  {
    v60 = v26;
    v91 = v20;
    v62 = v92;
    v61 = v93;
    v63 = v94;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.UI);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_2493AC000, v65, v66, "Cannot import a document if we don't have a default location", v67, 2u);
      MEMORY[0x24C1FE850](v67, -1, -1);
    }

    v68 = a3;
    v69 = v91;
    (*(v60 + 16))(v29, v68, v91);
    v70 = (*(v60 + 80) + 24) & ~*(v60 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = v61;
    (*(v60 + 32))(v71 + v70, v29, v69);
    v72 = (v71 + ((v21 + v70 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v72 = v62;
    v72[1] = v63;
    v73 = v61;

    DOCRunInMainThread(_:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(void *a1, uint64_t a2, void (*a3)(char *, id), uint64_t a4)
{
  v40 = a4;
  v41 = a3;
  v39 = a1;
  v5 = type metadata accessor for URL();
  v33 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v32 - v16;
  v37 = *(v6 + 56);
  v38 = v6 + 56;
  v37(&v32 - v16, 1, 1, v5, v15);
  v36 = a2;
  v18 = URL.lastPathComponent.getter();
  v19 = MEMORY[0x24C1FAD20](v18);

  v34 = DOCErrorNoLocationAvailableError();

  outlined init with copy of DOCGridLayout.Spec?(v17, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v20 = v33;
  (*(v6 + 16))(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v33);
  v21 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v22 = (v10 + *(v6 + 80) + v21) & ~*(v6 + 80);
  v23 = swift_allocObject();
  v24 = v39;
  *(v23 + 16) = v39;
  outlined init with take of URL?(v12, v23 + v21);
  (*(v6 + 32))(v23 + v22, &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v25 = v34;
  *(v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  v26 = v24;
  v27 = v25;
  DOCRunInMainThread(_:)();

  outlined destroy of CharacterSet?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (v37)(v17, 1, 1, v20);
  v28 = URL.lastPathComponent.getter();
  v29 = MEMORY[0x24C1FAD20](v28);

  v30 = DOCErrorNoLocationAvailableError();

  v41(v17, v30);
  return outlined destroy of CharacterSet?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

double closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v33 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8, v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v20 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a4, v15, v19);
  outlined init with copy of DOCGridLayout.Spec?(a1, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = (v17 + *(v10 + 80) + v21) & ~*(v10 + 80);
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  (*(v16 + 32))(v24 + v21, v20, v15);
  outlined init with take of URL?(v14, v24 + v22);
  v26 = v33;
  v25 = v34;
  *(v24 + v23) = v33;
  v27 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v35;
  *v27 = v25;
  v27[1] = v28;
  v29 = a3;
  v30 = v26;

  DOCRunInMainThread(_:)();

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, void *, __n128), uint64_t a6)
{
  v29 = a6;
  v30 = a5;
  v27 = a1;
  v28 = a4;
  v25 = a2;
  v26 = a3;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8, v14);
  v16 = &v25 - v15;
  outlined init with copy of DOCGridLayout.Spec?(a3, &v25 - v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v7);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = (v13 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = v27;
  outlined init with take of URL?(v16, v19 + v17);
  (*(v8 + 32))(v19 + v18, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v21 = v28;
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v22 = v20;
  v23 = v21;
  DOCRunInMainThread(_:)();

  return (v30)(v26, v21);
}

void DOCDocumentManager.reveal(node:completionHandler:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = (*((*MEMORY[0x277D85000] & *v3) + 0xB0))();
  if (v7)
  {
    v8 = v7;
    swift_getObjectType();
    specialized DOCFullDocumentManagerViewController.reveal(node:showEnclosingFolder:completionBlock:)(a1, 1, a2, a3, v8);
  }

  else
  {
    a2();
  }
}

id DOCDocumentManager.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCDocumentManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t specialized DOCDocumentManager.DocumentCreationSession.Phase.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCDocumentManager.DocumentCreationSession.Phase.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

id specialized DOCDocumentManager.DocumentCreationSession.init(targetLocation:configuration:serviceViewController:)(void *a1, void *a2, void *a3)
{
  UUID.init()();
  v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_phase] = 0;
  v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_switchToRecentsAfterPresentation] = 0;
  v7 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_serviceViewController;
  *&v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_serviceViewController] = 0;
  v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_isDisablingScreenUpdates] = 0;
  *&v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_snapshotCoverView] = 0;
  *&v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_targetLocation] = a1;
  swift_beginAccess();
  *&v3[v7] = a3;
  v8 = a3;
  v9 = a1;
  v10 = [a2 isInUIPDocumentLanding];
  v3[OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_isInUIPDocumentLanding] = v10;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for DOCDocumentManager.DocumentCreationSession(0);
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t type metadata accessor for DOCDocumentManager.DocumentCreationSession(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCDocumentManager.DocumentCreationSession;
  if (!type metadata singleton initialization cache for DOCDocumentManager.DocumentCreationSession)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized DOCDocumentManager.LogDocumentCreationState(_:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCC26DocumentManagerExecutables18DOCDocumentManager23DocumentCreationSession_identifier;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.UI);
  (*(v7 + 16))(v10, a1 + v11, v6);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = a2;
    v23 = v16;
    v17 = v16;
    *v15 = 136315394;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v23);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, a3, &v23);
    _os_log_impl(&dword_2493AC000, v13, v14, "[CREATE DOCUMENT]: (session: %s) %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

double partial apply for closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(void *a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);

  return closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(a1, v7, v1 + v4, v9, v10, v11);
}

unint64_t lazy protocol witness table accessor for type DOCDocumentManager.DocumentCreationSession.Phase and conformance DOCDocumentManager.DocumentCreationSession.Phase()
{
  result = lazy protocol witness table cache variable for type DOCDocumentManager.DocumentCreationSession.Phase and conformance DOCDocumentManager.DocumentCreationSession.Phase;
  if (!lazy protocol witness table cache variable for type DOCDocumentManager.DocumentCreationSession.Phase and conformance DOCDocumentManager.DocumentCreationSession.Phase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCDocumentManager.DocumentCreationSession.Phase and conformance DOCDocumentManager.DocumentCreationSession.Phase);
  }

  return result;
}

uint64_t type metadata completion function for DOCDocumentManager.DocumentCreationSession(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

void partial apply for closure #1 in closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(void *a1, uint64_t a2, void *a3)
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(a1, a2, a3, *(v3 + 16), v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void _s10Foundation3URLV26DocumentManagerExecutablesE21createDOCItemBookmark8bookmark4node3qos10completionyAD0H4InfoO_So7DOCNode_pSg8Dispatch0O3QoSV0P6SClassOySo0gH0CSg_ACSgs5Error_pSgtctFyyYbcfU_TA_0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);

  closure #1 in URL.createDOCItemBookmark(bookmark:node:qos:completion:)(v5, v6, v0 + v2, v8, v9, v10);
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

double partial apply for closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)(void *a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)(a1, v6, v7, v1 + v4, v8, v9);
}

double partial apply for closure #3 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return closure #3 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(a1, a2, v8, v2 + v6, v9, v11, v12);
}

void partial apply for closure #1 in DOCDocumentManager.importDocument(url:waitForReveal:desiredDisplayName:location:completion:)(void *a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = (v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  closure #1 in DOCDocumentManager.importDocument(url:waitForReveal:desiredDisplayName:location:completion:)(a1, v6, v7, v1 + v4, v9, v10, v12, v13);
}

void specialized DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void, id), uint64_t a8)
{
  v76 = a3;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v77 = v18;
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a7;
  *(v20 + 24) = a8;
  v78 = v20;
  if (a5)
  {
    v72 = a6;
    v68 = v19;
    v74 = a2;
    v21 = objc_opt_self();

    v22 = a5;
    v75 = [v21 defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR);
    v23 = *(v16 + 80);
    v69 = ~v23;
    v70 = v23;
    v24 = (v23 + 32) & ~v23;
    v25 = swift_allocObject();
    v67 = xmmword_249B9A480;
    *(v25 + 16) = xmmword_249B9A480;
    v73 = v16;
    v26 = v15;
    v27 = *(v16 + 16);
    v27(v25 + v24, a1, v26);
    v28 = objc_allocWithZone(type metadata accessor for DOCMoveOperation());
    v29 = v22;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v28 initWithURLs:isa destinationFolder:v29];

    v71 = v29;
    v32 = v31;
    [v32 setLastUsageUpdatePolicy_];
    [v32 setShouldBounceOnCollision_];
    v33 = v32;
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLV_SStGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLV_SStGMR);
      v34 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR) - 8);
      v35 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v67;
      v37 = v36 + v35;
      v38 = (v37 + v34[14]);
      v27(v37, a1, v26);
      *v38 = v76;
      v38[1] = a4;

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_SSTt0g5Tf4g_n(v36);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(v37, &_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
      swift_deallocClassInstance();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_15(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v33 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v32 setTargetFilenamesByURL_];
    }

    URL.startAccessingSecurityScopedResource()();
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = v68;
    v27(v68, a1, v26);
    v41 = (v70 + 16) & v69;
    v42 = (v77 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = v26;
    v45 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    (*(v73 + 32))(v46 + v41, v40, v44);
    *(v46 + v42) = v39;
    v47 = (v46 + v43);
    v48 = v78;
    *v47 = partial apply for closure #2 in DOCHierarchyController.validate(location:atDepth:hasParentItemIdentifier:completion:);
    v47[1] = v48;
    *(v46 + v45) = v32;
    v49 = v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
    v50 = v71;
    *v49 = v71;
    *(v49 + 8) = v74 & 1;
    aBlock[4] = closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)partial apply;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_138_0;
    v51 = _Block_copy(aBlock);
    v52 = v32;
    v53 = v50;
    v54 = v52;

    [v54 setActionCompletionBlock_];
    _Block_release(v51);

    v55 = v75;
    [v75 scheduleAction_];
  }

  else
  {
    v56 = one-time initialization token for UI;

    if (v56 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.UI);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v60 = 136315394;
      *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005DLL, 0x8000000249BFC9A0, aBlock);
      *(v60 + 12) = 2080;
      aBlock[6] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd, &_sSo6FPItemCSgMR);
      v62 = String.init<A>(describing:)();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, aBlock);

      *(v60 + 14) = v64;
      _os_log_impl(&dword_2493AC000, v58, v59, "%s importDocument: Unable to import the destination FPItem: %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v61, -1, -1);
      MEMORY[0x24C1FE850](v60, -1, -1);
    }

    v65 = URL.lastPathComponent.getter();
    v66 = MEMORY[0x24C1FAD20](v65);

    v54 = DOCErrorNoLocationAvailableError();

    a7(0, v54);
  }
}

void partial apply for closure #1 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v2 + 16);
  v11 = (v2 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  closure #1 in closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(a1, a2, v10, v2 + v7, v2 + v9, v12, v13);
}

uint64_t objectdestroy_58Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 9, v3 | 7);
}

void partial apply for closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(void *a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v7);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  closure #1 in DOCDocumentManager.performImportDocument(sourceURL:waitForReveal:desiredDisplayName:destinationItem:completion:)(a1, v1 + v4, v8, v10, v11, v9, v13, v14);
}

uint64_t objectdestroy_143Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v6);
  v9 = v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return closure #1 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(v7, v0 + v2, v0 + v5, v8, v10, v11);
}

uint64_t partial apply for closure #1 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return closure #1 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(v3, v0 + v2, v5, v6);
}

uint64_t objectdestroy_16Tm_1()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

double partial apply for closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toCurrentBrowserLocationWithCompletion:)(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t partial apply for closure #1 in closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)()
{
  type metadata accessor for URL();
  v1 = *(v0 + 16);

  return closure #1 in closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)(v1);
}

id partial apply for closure #1 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)()
{
  v1 = *(v0 + 16);
  DOCDocumentManager.updatePhaseOfCreationSession(_:to:)(*(v0 + 24), 0);

  return [v1 setActiveDocumentCreationSession_];
}

double partial apply for closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(v6, v7, v0 + v2, v4, v5);
}

double partial apply for closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(a1, a2, v6, v7, v8);
}

double partial apply for closure #1 in closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  return closure #1 in closure #1 in closure #2 in closure #1 in createDocument #1 (in:) in DOCDocumentManager.createNewDocument(targetLocation:)(v7, v8, v0 + v2, v0 + v5, v6);
}

uint64_t objectdestroy_155Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = (*(v6 + 48))(v0 + v3, 1, v5);
  v10 = *(v6 + 8);
  if (!v9)
  {
    v10(v0 + v3, v5);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10(v0 + v11, v5);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | v7 | 7);
}

void partial apply for closure #1 in DOCDocumentManager.notifyDelegateOfImport(of:destination:error:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in DOCDocumentManager.notifyDelegateOfImport(of:destination:error:)(v6, v0 + v2, v0 + v5, v7);
}

uint64_t partial apply for closure #1 in DOCDocumentManager.importDocument(at:desiredDisplayName:nextTo:mode:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void, void, void, char *, void, void, void))
{
  v7 = *(type metadata accessor for URL() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a3(a1, a2, *(v3 + 2), *(v3 + 3), *(v3 + 4), *(v3 + 5), &v3[v8], *&v3[v9], *&v3[v9 + 8], *&v3[(v9 + 23) & 0xFFFFFFFFFFFFFFF8]);
}

uint64_t objectdestroy_19Tm()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

double partial apply for closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in DOCDocumentManager.importDocument(at:waitForReveal:desiredDisplayName:mode:to:completionHandler:)(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v3 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_125Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_189Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in DOCDocumentManager.importDocument(at:mode:toDefaultLocationWithCompletion:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  return (*(v0 + 16))(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t FPItem.collaborationHighlight.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *((*MEMORY[0x277D85000] & *static DOCCollaborationHighlightManager.shared) + 0xA8);
  v2 = static DOCCollaborationHighlightManager.shared;
  v3 = v1(v0);

  return v3;
}

Swift::Bool __swiftcall FPItem.openInvitationIfPossible()()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = &v24 - v9;
  LODWORD(v11) = [v0 doc_isCollaborationInvitation];
  if (v11)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = *((*MEMORY[0x277D85000] & *static DOCCollaborationHighlightManager.shared) + 0xA8);
    v13 = static DOCCollaborationHighlightManager.shared;
    v14 = v12();

    if (!v14)
    {
      goto LABEL_7;
    }

    if ([v14 highlightType])
    {

LABEL_7:
      LOBYTE(v11) = 0;
      return v11;
    }

    v15 = [v14 slHighlight];
    v16 = [v15 resourceURL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v2 + 32))(v10, v5, v1);
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v18 = v11;
      URL._bridgeToObjectiveC()(v17);
      v20 = v19;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v22 = [v18 openURL:v20 withOptions:isa];

      (*(v2 + 8))(v10, v1);
      LOBYTE(v11) = v22;
    }

    else
    {
      __break(1u);
    }
  }

  return v11;
}

uint64_t FPItem.collaborationSenderDisplayName.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *((*MEMORY[0x277D85000] & *static DOCCollaborationHighlightManager.shared) + 0xA8);
  v3 = static DOCCollaborationHighlightManager.shared;
  v4 = v2(v0);

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 slHighlight];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 attributions];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for SLAttribution, 0x277D63FC8);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_39;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_40:

    return 0;
  }

  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](0, v7);
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_44;
      }

      v8 = *(v7 + 32);
    }

    v1 = v8;

    if ([v1 isGroupConversation])
    {
      v9 = [v1 groupDisplayName];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v11;
      }
    }

    if (![v1 isFromMe])
    {
      v25 = [v1 sender];
      v26 = [v25 displayName];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v27;
    }

    v3 = &selRef_displayModeHandler;
    v13 = [v1 relatedPersons];
    v43 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for SLPerson, 0x277D63FE8);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v14 >> 62))
    {
      v7 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_44:
    v7 = __CocoaSet.count.getter();
LABEL_16:

    v15 = [v1 v3[176]];
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = v16 >> 62;
    if (v7 < 2)
    {
      if (v17)
      {
        if (__CocoaSet.count.getter())
        {
LABEL_32:
          if ((v16 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x24C1FC540](0, v16);
          }

          else
          {
            if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_66;
            }

            v28 = *(v16 + 32);
          }

          v29 = v28;

          v30 = [v29 displayName];
LABEL_58:
          v41 = v30;

          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          return v27;
        }
      }

      else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      return 0;
    }

    v44 = MEMORY[0x277D84F90];
    if (v17)
    {
      break;
    }

    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_46;
    }

LABEL_19:
    v42 = v5;
    v19 = 0;
    v5 = (v16 & 0xC000000000000001);
    v3 = (v16 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v5)
      {
        v20 = MEMORY[0x24C1FC540](v19, v16);
      }

      else
      {
        if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v20 = *(v16 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v23 = v1;
      v24 = [v1 sender];
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 = &v44;
        specialized ContiguousArray._endMutation()();
      }

      ++v19;
      v1 = v23;
      if (v22 == v18)
      {
        v15 = v44;
        v5 = v42;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_40;
    }
  }

  v18 = __CocoaSet.count.getter();
  if (v18)
  {
    goto LABEL_19;
  }

LABEL_46:
  v15 = MEMORY[0x277D84F90];
LABEL_47:

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.UI);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44 = v35;
    *v34 = 136315138;
    v36 = MEMORY[0x24C1FB0D0](v15, v43);
    v38 = v1;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v44);

    *(v34 + 4) = v39;
    v1 = v38;
    _os_log_impl(&dword_2493AC000, v32, v33, "xxxxxx isFromMe: relatedPersonsWithoutSender: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x24C1FE850](v35, -1, -1);
    MEMORY[0x24C1FE850](v34, -1, -1);
  }

  if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      goto LABEL_63;
    }

LABEL_54:
    if ((v15 & 0xC000000000000001) == 0)
    {
      if (!*(v15 + 16))
      {
        __break(1u);
        return result;
      }

      v40 = *(v15 + 32);
      goto LABEL_57;
    }

LABEL_66:
    v40 = MEMORY[0x24C1FC540](0, v15);
LABEL_57:
    v29 = v40;

    v30 = [v29 displayName];
    goto LABEL_58;
  }

  result = *(v15 + 16);
  if (result)
  {
    goto LABEL_54;
  }

LABEL_63:

  return 0;
}

uint64_t FPItem.invitationURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *((*MEMORY[0x277D85000] & *static DOCCollaborationHighlightManager.shared) + 0xA8);
  v4 = static DOCCollaborationHighlightManager.shared;
  v5 = v3(v1);

  if (v5)
  {
    if ([v5 highlightType])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v5 slHighlight];
      v8 = [v7 resourceURL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  v9 = type metadata accessor for URL();
  return (*(*(v9 - 8) + 56))(a1, v6, 1, v9);
}

void DOCConcreteLocation.asUnanchoredBrowsedState.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_249BA0290;
  *(v1 + 32) = v0;
  v2 = v0;
  v3 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v1, 0);

  if (!v3)
  {
    __break(1u);
  }
}

id DOCHierarchyController.BrowsedState.canBeRestored(to:configuration:)(id a1, void *a2, id a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v8 = [a5 effectiveTabSwitcherTab];
  }

  else
  {
    v8 = [a3 effectiveTabSwitcherTab];
  }

  if (v8 != a1)
  {
    return 0;
  }

  result = [a3 canBeRestored];
  if (result)
  {
    return [a2 allowsDisplaying_];
  }

  return result;
}

void DOCHierarchyController.BrowsedState.restore(to:animated:)(uint64_t a1, int a2, void *a3, unint64_t a4, void *a5)
{
  v5 = a4;
  v8 = a4 >> 62;
  if (!(a4 >> 62))
  {
    if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    if (!a5)
    {
LABEL_9:
      DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(a3, a5, a2 & 1, 0, 1, 0, 0);
      return;
    }

    v28 = a1;
    v27 = a2;
    v9 = a5;
    v10 = a5;
    v11 = [v10 sourceIdentifier];
    v12 = [a3 sourceIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {

LABEL_8:

      a5 = v9;
      LOBYTE(a2) = v27;
      goto LABEL_9;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_8;
    }

    v29 = v10;
    v30 = v5;
    MEMORY[0x28223BE20](v18, v19);
    v26[2] = &v29;
    v20 = v10;

    if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v26, v5))
    {
    }

    else
    {
      if (v8 && __CocoaSet.count.getter() < 0)
      {
        goto LABEL_29;
      }

      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v20);

      v5 = v30;
    }

    if (v5 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_18;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x24C1FC540](0, v5);
        goto LABEL_21;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v5 + 32);
LABEL_21:
        v22 = v21;
LABEL_26:
        DOCHierarchyController.applyUpdate(setLocations:effectiveRootLocation:interruptable:isUserInteraction:animated:completion:)(v5, v22, 0, 1, 0, DOCGridLayout.specIconWidth.modify, 0);

        return;
      }

      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v22 = 0;
    goto LABEL_26;
  }

  v23 = a5;
  v24 = a2;
  v25 = __CocoaSet.count.getter();
  a2 = v24;
  a5 = v23;
  if (v25)
  {
    goto LABEL_3;
  }
}

void static DOCHierarchyController.BrowsedState.state(location:anchorLocation:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA0290;
  *(v4 + 32) = a1;
  v5 = a1;
  v6 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v4, a2);

  if (!v6)
  {
    __break(1u);
  }
}

id DOCHierarchyController.BrowsedState.effectiveTabSwitcherTab.getter(void *a1, int a2, id a3)
{
  if (a3)
  {
    return [a3 effectiveTabSwitcherTab];
  }

  else
  {
    return [a1 effectiveTabSwitcherTab];
  }
}

id DOCHierarchyController.BrowsedState.interfaceStorePersistableInfo(configuration:)(void *a1, id a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v7 = a4;
    v8 = [v7 effectiveTabSwitcherTab];
    v9 = [v7 effectiveTabSwitcherTab];
  }

  else
  {
    v8 = [a2 effectiveTabSwitcherTab];
    v9 = [a2 effectiveTabSwitcherTab];
  }

  if (v8 != v9 || (v10 = v9, ![a2 canBeRestored]) || (objc_msgSend(a1, sel_allowsDisplaying_, a2) & 1) == 0)
  {

    return 0;
  }

  if (a4)
  {
    v11 = [a4 sourceIdentifier];
    v12 = [a2 sourceIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {

        v20 = a4;
        v21 = a2;

        return v10;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_249BA0290;
  *(v18 + 32) = a2;
  v19 = a2;
  return v10;
}

id static DOCHierarchyController.BrowsedState.recentsDefault()(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_249BA0290;
  *(v2 + 32) = v1;
  v3 = v1;
  return v1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCHierarchyController.BrowsedState.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance DOCHierarchyController.BrowsedState.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCHierarchyController.BrowsedState.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCHierarchyController.BrowsedState.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DOCHierarchyController.BrowsedState.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCHierarchyController.BrowsedState.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x6E6F697461636F6CLL;
  if (*v1 != 2)
  {
    v3 = 0x6F4C726F68636E61;
    v2 = 0xEE006E6F69746163;
  }

  v4 = 0x8000000249BC6350;
  v5 = 0xD000000000000014;
  if (*v1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000249BC6370;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance DOCHierarchyController.BrowsedState.CodingKeys()
{
  v1 = 0x6E6F697461636F6CLL;
  if (*v0 != 2)
  {
    v1 = 0x6F4C726F68636E61;
  }

  v2 = 0xD000000000000014;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DOCHierarchyController.BrowsedState.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DOCHierarchyController.BrowsedState.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCHierarchyController.BrowsedState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DOCHierarchyController.BrowsedState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void DOCHierarchyController.BrowsedState.encode(to:)(void *a1, void *a2, unint64_t a3, void *a4)
{
  v17 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26DocumentManagerExecutables22DOCHierarchyControllerC12BrowsedStateV10CodingKeys33_A9E13447CD4AF3740C65847EE0F5E79FLLOGMd, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables22DOCHierarchyControllerC12BrowsedStateV10CodingKeys33_A9E13447CD4AF3740C65847EE0F5E79FLLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (a4)
  {
    [a4 effectiveTabSwitcherTab];
  }

  else
  {
    [a2 effectiveTabSwitcherTab];
  }

  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v4 || (type metadata accessor for DOCConcreteLocationSwiftEncodable(), v13 = swift_allocObject(), *(v13 + 16) = a2, v19 = v13, v18 = 1, lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable(&lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable, &protocol conformance descriptor for DOCConcreteLocationSwiftEncodable), v14 = a2, KeyedEncodingContainer.encode<A>(_:forKey:)(), , v19 = specialized Array<A>.asSwiftEncodable.getter(v17), v18 = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLCGMd, &_sSay26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLCGMR), lazy protocol witness table accessor for type [DOCConcreteLocationSwiftEncodable] and conformance <A> [A](&lazy protocol witness table cache variable for type [DOCConcreteLocationSwiftEncodable] and conformance <A> [A], &lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable, &protocol conformance descriptor for DOCConcreteLocationSwiftEncodable, MEMORY[0x277D83948]), KeyedEncodingContainer.encode<A>(_:forKey:)(), , !a4))
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a4;
    v19 = v15;
    v18 = 3;
    v16 = a4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v9 + 8))(v12, v8);
  }
}

uint64_t specialized Array<A>.asSwiftEncodable.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          v6 = MEMORY[0x24C1FC540]();
          type metadata accessor for DOCConcreteLocationSwiftEncodable();
          *(swift_allocObject() + 16) = v6;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v7 = (a1 + 32);
        type metadata accessor for DOCConcreteLocationSwiftEncodable();
        do
        {
          v8 = *v7++;
          *(swift_allocObject() + 16) = v8;
          v9 = v8;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return v10;
    }
  }

  return result;
}

void *DOCHierarchyController.BrowsedState.init(from:)(void *a1)
{
  result = specialized DOCHierarchyController.BrowsedState.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t DOCHierarchyController.BrowsedState.debugDescription.getter(void *a1, unint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(34);

  if (a3)
  {
    v6 = [a3 effectiveTabSwitcherTab];
  }

  else
  {
    v6 = [a1 effectiveTabSwitcherTab];
  }

  if (v6 == 2)
  {
    v11 = 0xE600000000000000;
    v10 = 0x6573776F7242;
  }

  else
  {
    v7 = 0xE500000000000000;
    v8 = 0x3F3F3F3F3FLL;
    if (!v6)
    {
      v8 = 0x73746E65636552;
      v7 = 0xE700000000000000;
    }

    v9 = v6 == 1;
    if (v6 == 1)
    {
      v10 = 0x646572616853;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = v7;
    }
  }

  MEMORY[0x24C1FAEA0](v10, v11);

  MEMORY[0x24C1FAEA0](0x697461636F6C0A2CLL, 0xED0000203A736E6FLL);
  if (a2 >> 62)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v35 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    v34 = a3;
    v15 = 0;
    v13 = v35;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C1FC540](v15, a2);
      }

      else
      {
        v16 = *(a2 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 displayName];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {

        v20 = 0xD000000000000014;
        v22 = 0x8000000249BFCD50;
      }

      v24 = *(v35 + 16);
      v23 = *(v35 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      }

      ++v15;
      *(v35 + 16) = v24 + 1;
      v25 = v35 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
    }

    while (v12 != v15);
    a3 = v34;
  }

  v26 = 7104878;
  v27 = MEMORY[0x24C1FB0D0](v13, MEMORY[0x277D837D0]);
  v29 = v28;

  MEMORY[0x24C1FAEA0](v27, v29);

  MEMORY[0x24C1FAEA0](0x726F68636E610A2CLL, 0xEA0000000000203ALL);
  if (a3 && (v30 = [a3 displayName]) != 0)
  {
    v31 = v30;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v33 = 0xE300000000000000;
  }

  MEMORY[0x24C1FAEA0](v26, v33);

  return 0x203A626174;
}

void *protocol witness for Decodable.init(from:) in conformance DOCHierarchyController.BrowsedState@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized DOCHierarchyController.BrowsedState.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCConcreteLocationSwiftEncodable.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCConcreteLocationSwiftEncodable.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance DOCConcreteLocationSwiftEncodable.CodingKeys(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance DOCConcreteLocationSwiftEncodable.CodingKeys, *a1);

  *a2 = v3 != 0;
}

void protocol witness for CodingKey.init(stringValue:) in conformance DOCConcreteLocationSwiftEncodable.CodingKeys(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance DOCConcreteLocationSwiftEncodable.CodingKeys, v3);

  *a2 = v5 != 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCConcreteLocationSwiftEncodable.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DOCConcreteLocationSwiftEncodable.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DOCConcreteLocationSwiftEncodable.encode(to:)(void *a1)
{
  v2 = v1;
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLC10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = objc_opt_self();
  v10 = *(v2 + 16);
  v19[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:0 error:v19];
  v12 = v19[0];
  if (v11)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v19[0] = v13;
    v19[1] = v15;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    return outlined consume of Data._Representation(v13, v15);
  }

  else
  {
    v17 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t DOCConcreteLocationSwiftEncodable.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v15[0];
    v10 = v15[1];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    v12 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v12)
    {
      v14 = v12;
      (*(v6 + 8))(v9, v5);
      outlined consume of Data._Representation(v11, v10);
      *(v3 + 16) = v14;
      goto LABEL_4;
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    lazy protocol witness table accessor for type KeyedDecodingContainer<DOCConcreteLocationSwiftEncodable.CodingKeys> and conformance KeyedDecodingContainer<A>(&lazy protocol witness table cache variable for type KeyedDecodingContainer<DOCConcreteLocationSwiftEncodable.CodingKeys> and conformance KeyedDecodingContainer<A>, &_ss22KeyedDecodingContainerVy26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLC10CodingKeysOGMR);
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
    swift_willThrow();
    outlined consume of Data._Representation(v11, v10);
    (*(v6 + 8))(v9, v5);
  }

  type metadata accessor for DOCConcreteLocationSwiftEncodable();
  swift_deallocPartialClassInstance();
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance DOCConcreteLocationSwiftEncodable@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DOCConcreteLocationSwiftEncodable();
  swift_allocObject();
  result = DOCConcreteLocationSwiftEncodable.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
LABEL_3:
      v5 = __OFSUB__(v4, 1);
      v6 = v4 - 1;
      if (v5)
      {
        __break(1u);
      }

      else if ((a1 & 0xC000000000000001) == 0)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v7 = *(a1 + 8 * v6 + 32);
LABEL_8:
          v8 = v7;
          v9 = a2;

          return v8;
        }

        __break(1u);
        goto LABEL_19;
      }

      v7 = MEMORY[0x24C1FC540](v6, a1);
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  if (one-time initialization token for UI != -1)
  {
LABEL_19:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2493AC000, v11, v12, "Unable to determine BrowsedState since locations is empty", v13, 2u);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  return 0;
}

uint64_t specialized DOCHierarchyController.BrowsedState.locationsIncludingAnchor.getter(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v9 = a1;
  if (!a2)
  {

    return v2;
  }

  v8 = a2;
  MEMORY[0x28223BE20](a1, a2);
  v7[2] = &v8;
  v4 = v3;

  v5 = v4;
  if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v7, v2))
  {

    return v2;
  }

  if (!(v2 >> 62) || (result = __CocoaSet.count.getter(), (result & 0x8000000000000000) == 0))
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v5);

    return v9;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys);
  }

  return result;
}

unint64_t specialized DOCHierarchyController.BrowsedState.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCHierarchyController.BrowsedState.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *specialized DOCHierarchyController.BrowsedState.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26DocumentManagerExecutables22DOCHierarchyControllerC12BrowsedStateV10CodingKeys33_A9E13447CD4AF3740C65847EE0F5E79FLLOGMd, &_ss22KeyedDecodingContainerVy26DocumentManagerExecutables22DOCHierarchyControllerC12BrowsedStateV10CodingKeys33_A9E13447CD4AF3740C65847EE0F5E79FLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v22 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState.CodingKeys and conformance DOCHierarchyController.BrowsedState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v8;
  }

  v9 = type metadata accessor for DOCConcreteLocationSwiftEncodable();
  LOBYTE(v29) = 1;
  v10 = lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable(&lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable, &protocol conformance descriptor for DOCConcreteLocationSwiftEncodable);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = *(v30 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLCGMd, &_sSay26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLCGMR);
  LOBYTE(v29) = 2;
  lazy protocol witness table accessor for type [DOCConcreteLocationSwiftEncodable] and conformance <A> [A](&lazy protocol witness table cache variable for type [DOCConcreteLocationSwiftEncodable] and conformance <A> [A], &lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable, &protocol conformance descriptor for DOCConcreteLocationSwiftEncodable, MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v10;
  v26 = v9;
  v27 = v12;
  v28 = v7;
  v13 = v30;
  if (!(v30 >> 62))
  {
    v14 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_15:

LABEL_16:
    LOBYTE(v30) = 3;
    v17 = KeyedDecodingContainer.contains(_:)();
    v8 = v27;
    if (v17)
    {
      LOBYTE(v29) = 3;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v18 = *(v30 + 16);
    }

    else
    {
      v18 = 0;
    }

    LOBYTE(v30) = 0;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    if (v18)
    {
      v20 = [v18 effectiveTabSwitcherTab];
    }

    else
    {
      v20 = [v8 effectiveTabSwitcherTab];
    }

    if (v19 == v20)
    {
      (*(v4 + 8))(v28, v3);
      __swift_destroy_boxed_opaque_existential_0(a1);
    }

    else
    {
      LOBYTE(v30) = 0;
      type metadata accessor for DecodingError();
      swift_allocError();
      lazy protocol witness table accessor for type KeyedDecodingContainer<DOCConcreteLocationSwiftEncodable.CodingKeys> and conformance KeyedDecodingContainer<A>(&lazy protocol witness table cache variable for type KeyedDecodingContainer<DOCHierarchyController.BrowsedState.CodingKeys> and conformance KeyedDecodingContainer<A>, &_ss22KeyedDecodingContainerVy26DocumentManagerExecutables22DOCHierarchyControllerC12BrowsedStateV10CodingKeys33_A9E13447CD4AF3740C65847EE0F5E79FLLOGMd, &_ss22KeyedDecodingContainerVy26DocumentManagerExecutables22DOCHierarchyControllerC12BrowsedStateV10CodingKeys33_A9E13447CD4AF3740C65847EE0F5E79FLLOGMR);
      v21 = v28;
      static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
      swift_willThrow();
      (*(v4 + 8))(v21, v3);
      __swift_destroy_boxed_opaque_existential_0(a1);
    }

    return v8;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_7:
  v23 = v4;
  v24 = v3;
  v29 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C1FC540](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      ++v15;
      *(v16 + 16);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v14 != v15);

    v4 = v23;
    v3 = v24;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys;
  if (!lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCConcreteLocationSwiftEncodable.CodingKeys and conformance DOCConcreteLocationSwiftEncodable.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DOCConcreteLocationSwiftEncodable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DOCConcreteLocationSwiftEncodable] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLCGMd, &_sSay26DocumentManagerExecutables33DOCConcreteLocationSwiftEncodable33_A9E13447CD4AF3740C65847EE0F5E79FLLCGMR);
    lazy protocol witness table accessor for type DOCConcreteLocationSwiftEncodable and conformance DOCConcreteLocationSwiftEncodable(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type KeyedDecodingContainer<DOCConcreteLocationSwiftEncodable.CodingKeys> and conformance KeyedDecodingContainer<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id DOCItemCollectionCell.BezierPathView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void DOCItemCollectionCell.BezierPathView.color.setter(id a1, uint64_t *a2, unint64_t *a3, void *a4)
{
  v8 = *a2;
  swift_beginAccess();
  v9 = *&v4[v8];
  *&v4[v8] = a1;
  if (a1)
  {
    if (v9)
    {
      v10 = v4;
      type metadata accessor for NSMutableAttributedString(0, a3, a4);
      a1 = a1;
      v11 = v9;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {

        v9 = v11;
LABEL_10:

        return;
      }

      v4 = v10;
    }

    else
    {
      a1 = a1;
    }

LABEL_9:
    [v4 setNeedsDisplay];

    goto LABEL_10;
  }

  if (v9)
  {
    goto LABEL_9;
  }
}

uint64_t DOCItemCollectionCell.BackgroundStateView.configurationState.setter(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v19[-v11];
  v13 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell19BackgroundStateView_configurationState;
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, &v2[v13], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v2[v13], a1, v4);
  swift_endAccess();
  v14(v8, &v2[v13], v4);
  lazy protocol witness table accessor for type UICellConfigurationState and conformance UICellConfigurationState();
  LOBYTE(v13) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  if ((v13 & 1) == 0)
  {
    v16 = [v2 layer];
    [v16 setCornerRadius_];

    v17 = [objc_opt_self() secondarySystemFillColor];
    [v2 setBackgroundColor_];
  }

  v15(a1, v4);
  return (v15)(v12, v4);
}

id DOCItemCollectionCell.BackgroundStateView.init()()
{
  ObjectType = swift_getObjectType();
  [objc_allocWithZone(MEMORY[0x277D75C80]) init];
  UICellConfigurationState.init(traitCollection:)();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  v4 = [objc_opt_self() secondarySystemFillColor];
  [v2 setBackgroundColor_];

  return v2;
}

uint64_t DOCItemCollectionCell.BackgroundStateView.configurationState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell19BackgroundStateView_configurationState;
  swift_beginAccess();
  v4 = type metadata accessor for UICellConfigurationState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t key path getter for DOCItemCollectionCell.BackgroundStateView.configurationState : DOCItemCollectionCell.BackgroundStateView@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell19BackgroundStateView_configurationState;
  swift_beginAccess();
  v5 = type metadata accessor for UICellConfigurationState();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for DOCItemCollectionCell.BackgroundStateView.configurationState : DOCItemCollectionCell.BackgroundStateView(uint64_t a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return DOCItemCollectionCell.BackgroundStateView.configurationState.setter(v6);
}

void (*DOCItemCollectionCell.BackgroundStateView.configurationState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for UICellConfigurationState();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell19BackgroundStateView_configurationState;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return DOCItemCollectionCell.BackgroundStateView.configurationState.modify;
}

void DOCItemCollectionCell.BackgroundStateView.configurationState.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    DOCItemCollectionCell.BackgroundStateView.configurationState.setter(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    DOCItemCollectionCell.BackgroundStateView.configurationState.setter(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t DOCItemCollectionCell.BackgroundStateView.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell19BackgroundStateView_configurationState;
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id DOCItemCollectionCell.BezierPathView.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_color] = 0;
  *&v0[OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_path] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v2 setOpaque_];
  return v2;
}

void *DOCItemCollectionCell.BezierPathView.color.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_color;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*DOCItemCollectionCell.BezierPathView.color.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_color;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCell.BezierPathView.color.modify;
}

void *DOCItemCollectionCell.BezierPathView.path.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_path;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*DOCItemCollectionCell.BezierPathView.path.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_path;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCell.BezierPathView.path.modify;
}

void DOCItemCollectionCell.BezierPathView.color.modify(uint64_t *a1, char a2, unint64_t *a3, void *a4, void (*a5)(void *))
{
  v5 = *a1;
  v6 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v11 = *(v5 + 32);
    v10 = *(v5 + 40);
    v12 = *(v11 + v10);
    *(v11 + v10) = v6;
    if (v6)
    {
      if (v12)
      {
        type metadata accessor for NSMutableAttributedString(0, a3, a4);
        v9 = v6;
        v13 = v12;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v9 = v6;
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_12;
      }

      v9 = 0;
    }

    [*(v5 + 32) setNeedsDisplay];

    v9 = v12;
    goto LABEL_11;
  }

  v8 = v6;
  a5(v6);
  v9 = *(v5 + 24);
LABEL_11:

LABEL_12:

  free(v5);
}

void DOCItemCollectionCell.BezierPathView.backgroundColor.setter(void *a1)
{
  if (a1)
  {
    __break(1u);
  }
}

void DOCItemCollectionCell.BezierPathView.backgroundColor.modify(id *a1, char a2)
{
  v3 = *a1;

  if (a2)
  {
    if (!v3)
    {
      return;
    }

    __break(1u);
  }

  if (v3)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCItemCollectionCell.BezierPathView.draw(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (CGRectGetWidth(a1) > 0.0)
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    if (CGRectGetHeight(v14) > 0.0)
    {
      v6 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_path;
      swift_beginAccess();
      v7 = *(v1 + v6);
      if (v7)
      {
        v8 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_color;
        swift_beginAccess();
        v9 = *(v1 + v8);
        if (v9)
        {
          v10 = v9;
          v11 = v7;
          v12 = UIGraphicsGetCurrentContext();
          if (v12)
          {
            v13 = v12;
            CGContextSaveGState(v12);
            [(CGContext *)v10 setFill];
            [(CGContext *)v11 fill];
            CGContextRestoreGState(v13);

            v11 = v10;
            v10 = v13;
          }
        }
      }
    }
  }
}

void DOCItemCollectionCell.BezierPathView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_path);
}

uint64_t type metadata accessor for DOCItemCollectionCell.BackgroundStateView(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCItemCollectionCell.BackgroundStateView;
  if (!type metadata singleton initialization cache for DOCItemCollectionCell.BackgroundStateView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DOCItemCollectionCell.BackgroundStateView(uint64_t a1)
{
  result = type metadata accessor for UICellConfigurationState();
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

uint64_t static DOCInterface.sidebar.getter()
{
  type metadata accessor for DOCSourceListInterface_Default();

  return swift_initStaticObject();
}

uint64_t *DOCInterface.general.unsafeMutableAddressor()
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  return &static DOCInterface.general;
}

void *one-time initialization function for general()
{
  type metadata accessor for DOCInterfaceSystemAppearance_Default();
  result = swift_allocObject();
  result[2] = 0x73697370696C6C65;
  result[3] = 0xEF656C637269632ELL;
  result[4] = 0x73697370696C6C65;
  result[5] = 0xE800000000000000;
  static DOCInterface.general = result;
  return result;
}

uint64_t static DOCInterface.general.getter()
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t static DOCInterface.general.setter(uint64_t a1)
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCInterface.general = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*static DOCInterface.general.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

uint64_t key path getter for static DOCInterface.general : DOCInterface.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCInterface.general;
  return swift_unknownObjectRetain();
}

uint64_t key path setter for static DOCInterface.general : DOCInterface.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for general;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCInterface.general = v1;
  return swift_unknownObjectRelease();
}

id DOCInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v10 = *(v7 + 16 * v6);
    swift_unknownObjectRetain();
    v8 = a1(&v10);
    swift_unknownObjectRelease();
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v12 = v8;
    v9 = a1(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for DOCFileOperation(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t *DOCSharedTestableProgressOperationProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DOCSharedTestableProgressOperationProvider.shared;
}

void one-time initialization function for shared()
{
  type metadata accessor for DOCSharedTestableProgressOperationProvider();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F98];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = v2;
  v0[4] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = [ enabled];

  if (v3)
  {
    DOCSharedTestableProgressOperationProvider.prepareForTesting()();
  }

  static DOCSharedTestableProgressOperationProvider.shared = v0;
}

double static DOCSharedTestableProgressOperationProvider.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t DOCSharedTestableProgressOperationProvider.addUpdateHandler(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVSgMd, &_s26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(0);
  v15 = *(updated - 8);
  MEMORY[0x28223BE20](updated, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v19 = &v18[*(updated + 20)];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = *(v10 + 16);
  v20(v13, v18, v9);
  outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v18, v8, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
  (*(v15 + 56))(v8, 0, 1, updated);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v8, v13);
  swift_endAccess();
  v20(v23, v18, v9);
  return outlined destroy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v18, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
}

uint64_t type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo;
  if (!type metadata singleton initialization cache for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double DOCSharedTestableProgressOperationProvider.removeUpdateHandler(withID:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVSgMd, &_s26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - v6;
  swift_beginAccess();
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v1 + 24);
    v20 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v20;
    }

    v13 = *(v12 + 48);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v10, v14);
    v15 = *(v12 + 56);
    updated = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(0);
    v17 = *(updated - 8);
    outlined init with take of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v15 + *(v17 + 72) * v10, v7, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
    specialized _NativeDictionary._delete(at:)(v10, v12);
    *(v2 + 24) = v12;

    (*(v17 + 56))(v7, 0, 1, updated);
  }

  else
  {
    v18 = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(0);
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVSgMd, &_s26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVSgMR);
  swift_endAccess();
  return result;
}

double DOCSharedTestableProgressOperationProvider.activeOperations.getter()
{
  swift_beginAccess();

  return result;
}

double DOCSharedTestableProgressOperationProvider.activeOperations.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

void DOCSharedTestableProgressOperationProvider.invokeUpdateHandlers()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLV5valuetMd, &_s10Foundation4UUIDV3key_26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLV5valuetMR);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v21 - v3;
  swift_beginAccess();
  v5 = *(v0 + 24);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(v5 + 48);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 16))(v4, v14 + *(*(v15 - 8) + 72) * v13, v15);
    v16 = *(v5 + 56);
    v17 = (type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(0) - 8);
    v18 = v16 + *(*v17 + 72) * v13;
    v19 = &v4[*(v1 + 48)];
    updated = outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v18, v19, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
    (*(v19 + v17[7]))(updated);
    outlined destroy of CharacterSet?(v4, &_s10Foundation4UUIDV3key_26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLV5valuetMd, &_s10Foundation4UUIDV3key_26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLV5valuetMR);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void DOCSharedTestableProgressOperationProvider.prepareForTesting()()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = v0[4];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v6 + 32;

    do
    {
      outlined init with copy of Any(v9, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      [v8 removeSubscriber_];
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v21);
      v9 += 32;
      --v7;
    }

    while (v7);
  }

  v10 = MEMORY[0x277D84F90];
  v0[4] = MEMORY[0x277D84F90];

  v11 = (*(*v0 + 144))(v21);
  *v12 = v10;

  v11(v21, 0);
  v13 = specialized static DOCProgressTestability._testableURLs.getter();
  v14 = *(v13 + 16);
  if (v14)
  {
    v17 = *(v2 + 16);
    v16 = v2 + 16;
    v15 = v17;
    v18 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v19 = *(v16 + 56);
    do
    {
      v15(v5, v18, v1);
      DOCSharedTestableProgressOperationProvider.subscribe(to:)(v5);
      (*(v16 - 8))(v5, v1);
      v18 += v19;
      --v14;
    }

    while (v14);
  }

  DOCSharedTestableProgressOperationProvider.invokeUpdateHandlers()();
}

uint64_t DOCSharedTestableProgressOperationProvider.subscribe(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v41 - v11;
  if (one-time initialization token for progressUI != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.progressUI;
  v45 = *(v5 + 16);
  v45(v12, a1, v4);
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;
    lazy protocol witness table accessor for type URL and conformance URL();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v13;
    v20 = v19;
    v43 = a1;
    v22 = v21;
    (*(v5 + 8))(v12, v4);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, aBlock);
    a1 = v43;

    *(v16 + 4) = v23;
    _os_log_impl(&dword_2493AC000, v41, v14, "[Testability] subscribing to url: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v24 = v18;
    v8 = v42;
    MEMORY[0x24C1FE850](v24, -1, -1);
    v25 = v16;
    v2 = v44;
    MEMORY[0x24C1FE850](v25, -1, -1);
  }

  else
  {
    (*(v5 + 8))(v12, v4);
  }

  v26 = objc_opt_self();
  URL._bridgeToObjectiveC()(v27);
  v29 = v28;
  v30 = swift_allocObject();
  swift_weakInit();
  v45(v8, a1, v4);
  v31 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v32 = swift_allocObject();
  (*(v5 + 32))(v32 + v31, v8, v4);
  *(v32 + ((v6 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:);
  *(v33 + 24) = v32;
  aBlock[4] = _sSo10NSProgressCIeg_SgIeghgo_ABIegh_SgIeghgo_TRTA_0;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSProgress) -> (@owned (@escaping @callee_guaranteed @Sendable () -> ())?);
  aBlock[3] = &block_descriptor_161;
  v34 = _Block_copy(aBlock);

  v35 = [v26 addSubscriberForFileURL:v29 withPublishingHandler:v34];
  _Block_release(v34);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(aBlock, v46);
  swift_beginAccess();
  v36 = *(v2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 32) = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
    *(v2 + 32) = v36;
  }

  v39 = *(v36 + 2);
  v38 = *(v36 + 3);
  if (v39 >= v38 >> 1)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
  }

  *(v36 + 2) = v39 + 1;
  outlined init with take of Any(v46, &v36[32 * v39 + 32]);
  *(v2 + 32) = v36;
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

void (*closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:)(void *a1, uint64_t a2, uint64_t a3))()
{
  v32 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v28 - v11;
  if (one-time initialization token for progressUI != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.progressUI;
  v33 = *(v5 + 16);
  v33(v12, a2, v4);
  v14 = static os_log_type_t.default.getter();
  v31 = v13;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v8;
    v18 = v17;
    v34[0] = v17;
    *v16 = 136315138;
    lazy protocol witness table accessor for type URL and conformance URL();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = a2;
    v21 = v20;
    (*(v5 + 8))(v12, v4);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v34);
    a2 = v30;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_2493AC000, v31, v14, "[Testability] subscriber notified of published progress for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v23 = v18;
    v8 = v29;
    MEMORY[0x24C1FE850](v23, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  else
  {
    (*(v5 + 8))(v12, v4);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DOCSharedTestableProgressOperationProvider.setProgress(_:forURL:)(v32, a2);
  }

  v24 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v33(v8, a2, v4);
  v25 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  (*(v5 + 32))(v26 + v25, v8, v4);
  return partial apply for closure #1 in closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:);
}

void closure #1 in closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = MEMORY[0x28223BE20](Strong, v4);
    v12[2] = a2;
    v7 = (*(*v6 + 144))(v13, v5);
    v9 = v8;
    v10 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(closure #1 in DOCSharedTestableProgressOperationProvider.setProgress(_:forURL:)partial apply, v12);
    v11 = *(*v9 + 16);
    if (v11 < v10)
    {
      __break(1u);
    }

    else
    {
      specialized Array.replaceSubrange<A>(_:with:)(v10, v11);
      v7(v13, 0);
      DOCSharedTestableProgressOperationProvider.invokeUpdateHandlers()();
    }
  }
}

void DOCSharedTestableProgressOperationProvider.setProgress(_:forURL:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DOCFileOperation(0);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v27 - v13;
  v30 = a2;
  v15 = *(*v3 + 144);
  v16 = v15(v31, v12);
  v18 = v17;
  v19 = 0;
  v20 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in DOCSharedTestableProgressOperationProvider.setProgress(_:forURL:), v29);
  v21 = *(*v18 + 16);
  if (v21 < v20)
  {
    __break(1u);
LABEL_9:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *v16 = a1;
    goto LABEL_4;
  }

  specialized Array.replaceSubrange<A>(_:with:)(v20, v21);
  (v16)(v31, 0);
  if (!a1)
  {
    goto LABEL_7;
  }

  v19 = a1;
  static DOCFileOperation.mockTestable(withProgress:)(v19, v14);
  outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v14, v9, type metadata accessor for DOCFileOperation);
  v18 = (v15)(v31);
  v16 = v22;
  a1 = *v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v24 = v28;
  v26 = a1[2];
  v25 = a1[3];
  if (v26 >= v25 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, a1);
    *v16 = a1;
  }

  a1[2] = v26 + 1;
  outlined init with take of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v9, a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v26, type metadata accessor for DOCFileOperation);
  v18(v31, 0);

  outlined destroy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v14, type metadata accessor for DOCFileOperation);
LABEL_7:
  DOCSharedTestableProgressOperationProvider.invokeUpdateHandlers()();
}

uint64_t closure #1 in DOCSharedTestableProgressOperationProvider.setProgress(_:forURL:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v14 - v2;
  NSProgress.publishedFileURL.getter(&v14 - v2);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of CharacterSet?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    URL.path.getter();
    v6 = 0;
  }

  else
  {
    v7 = URL.path.getter();
    v9 = v8;
    (*(v5 + 8))(v3, v4);
    v10 = URL.path.getter();
    if (v9)
    {
      if (v7 == v10 && v9 == v11)
      {

        v6 = 1;
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

void *DOCSharedTestableProgressOperationProvider.deinit()
{

  return v0;
}

uint64_t DOCSharedTestableProgressOperationProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCProgressTestability.State.init()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v3 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(0xD00000000000002ALL, 0x8000000249BFD150, 0);
  if (v3)
  {

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 16) = v4;
  v5 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for prepareForTesting != -1)
  {
    swift_once();
  }

  v6 = static DOCProgressTestability.prepareForTesting;
  v7 = [objc_opt_self() mainQueue];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  aBlock[4] = partial apply for closure #1 in DOCProgressTestability.State.init();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor_34_6;
  v10 = _Block_copy(aBlock);
  v11 = v5;

  v12 = [v11 addObserverForName:v6 object:0 queue:v7 usingBlock:v10];
  _Block_release(v10);

  swift_unknownObjectRelease();
  return v1;
}

double closure #1 in DOCProgressTestability.State.init()(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    DOCSharedTestableProgressOperationProvider.prepareForTesting()();
    [v6 setEnabled_];
    if (one-time initialization token for readyForTesting != -1)
    {
      swift_once();
    }

    [a3 postNotificationName:static DOCProgressTestability.readyForTesting object:0];
  }

  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(__int128 *), uint64_t a2)
{
  v7 = *v2;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v9)
  {
    return v7[2];
  }

  v4 = result;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v12 = v7 + 2;
    v11 = v7[2];
    if (v10 == v11)
    {
      return v4;
    }

    v15 = v2;
    v13 = 16 * result + 48;
    v19 = a2;
    while (v10 < v11)
    {
      v18 = *(v7 + v13);
      swift_unknownObjectRetain();
      v14 = a1(&v18);
      result = swift_unknownObjectRelease();
      if ((v14 & 1) == 0)
      {
        if (v10 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          if (v4 >= *v12)
          {
            goto LABEL_22;
          }

          if (v10 >= *v12)
          {
            goto LABEL_23;
          }

          v16 = *&v7[2 * v4 + 4];
          v17 = *(v7 + v13);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          }

          *&v7[2 * v4 + 4] = v17;
          result = swift_unknownObjectRelease();
          if (v10 >= v7[2])
          {
            goto LABEL_24;
          }

          *(v7 + v13) = v16;
          result = swift_unknownObjectRelease();
          *v15 = v7;
        }

        ++v4;
      }

      ++v10;
      v12 = v7 + 2;
      v11 = v7[2];
      v13 += 16;
      if (v10 == v11)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for DOCFileOperation(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v36 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v36 - v17;
  v19 = *v2;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (!v3)
  {
    v43 = v18;
    v46 = 0;
    if (v21)
    {
      return v19[2];
    }

    v36 = v2;
    v37 = v10;
    v40 = a1;
    v44 = result;
    v22 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v24 = v19 + 2;
      v23 = v19[2];
      v25 = v43;
      if (v22 == v23)
      {
        return v44;
      }

      v38 = a2;
      v39 = v7;
      while (v22 < v23)
      {
        v26 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v45 = v19;
        v41 = v26;
        v27 = v19 + v26;
        v28 = *(v7 + 72);
        v42 = v28 * v22;
        outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(&v27[v28 * v22], v25, type metadata accessor for DOCFileOperation);
        v29 = v46;
        v30 = v40(v25);
        result = outlined destroy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(v25, type metadata accessor for DOCFileOperation);
        v46 = v29;
        if (v29)
        {
          return result;
        }

        if (v30)
        {
          v7 = v39;
          v25 = v43;
          v19 = v45;
        }

        else
        {
          v25 = v43;
          v31 = v44;
          if (v22 == v44)
          {
            v7 = v39;
            v19 = v45;
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v32 = *v24;
            if (v44 >= *v24)
            {
              goto LABEL_27;
            }

            v33 = v28 * v44;
            result = outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(&v27[v28 * v44], v14, type metadata accessor for DOCFileOperation);
            if (v22 >= v32)
            {
              goto LABEL_28;
            }

            v34 = v42;
            outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(&v27[v42], v37, type metadata accessor for DOCFileOperation);
            v19 = v45;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
            }

            v35 = v19 + v41;
            result = outlined assign with take of DOCFileOperation(v37, v19 + v41 + v33);
            v7 = v39;
            if (v22 >= v19[2])
            {
              goto LABEL_29;
            }

            result = outlined assign with take of DOCFileOperation(v14, &v35[v34]);
            *v36 = v19;
            v31 = v44;
          }

          v44 = v31 + 1;
        }

        ++v22;
        v24 = v19 + 2;
        v23 = v19[2];
        if (v22 == v23)
        {
          return v44;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of DOCFileOperation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCFileOperation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*partial apply for closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:)(void *a1))()
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:)(a1, v1 + v4, v5);
}

void partial apply for closure #1 in closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in closure #1 in DOCSharedTestableProgressOperationProvider.subscribe(to:)(v2, v3);
}

Swift::Void __swiftcall VNDocumentCameraViewController.doc_configurePreferredPresentationStyle()()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 6)
  {
    v3 = 2;
  }

  else
  {
    v3 = 5;
  }

  [v0 setModalPresentationStyle_];
}

Swift::Void __swiftcall DOCItemCollectionViewController.didUpdateContent()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_So7DOCNode_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xA88))(v1);
  v4 = (*((*v2 & *v0) + 0xA68))(v3);
  v5 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
  v6 = v4[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8];
  outlined copy of DOCFileProviderSourceType(v5);

  if (v6)
  {
    outlined consume of DOCFileProviderSourceType(v5);
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
    v7 = [v0 viewIfLoaded];
    v8 = [v7 window];

    if (v8)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()(v9);
    }

    else
    {

      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }
  }

  else
  {

    outlined consume of DOCFileProviderSourceType(v5);
  }
}

void __swiftcall DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu()(UIContextMenuConfiguration *__return_ptr retstr)
{
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_opt_self();
  v6[4] = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu();
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v6[3] = &block_descriptor_162;
  v4 = _Block_copy(v6);
  v5 = v1;

  [v3 configurationWithIdentifier:0 previewProvider:0 actionProvider:v4];

  _Block_release(v4);
}

_OWORD *DOCItemCollectionViewController.contextMenuItemSectionsForFolder(includingResponderActions:)(char a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC70);
  v5 = v4();
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = v5;
  swift_getObjectType();
  if ([v7 isTrashed])
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  type metadata accessor for DOCActionManager(0);
  v8 = swift_unknownObjectRetain();
  v6 = MEMORY[0x277D84F90];
  v9 = specialized static DOCActionManager.canImport(in:)(v8);
  swift_unknownObjectRelease_n();
  if ((v9 & 1) == 0)
  {
LABEL_10:
    v19 = 0;
    v75 = v6;
    v20 = v6;
    if ((a1 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v75 = v6;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v11 = result;
  type metadata accessor for DOCUIImageMenuItem();
  v12._countAndFlagsBits = 0xD000000000000019;
  v76._object = 0x8000000249BFD330;
  v13._countAndFlagsBits = 0x646C6F462077654ELL;
  v12._object = 0x8000000249BFD310;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v13._object = 0xEA00000000007265;
  v76._countAndFlagsBits = 0xD000000000000024;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v14, v11, v13, v76);

  v71 = MEMORY[0x277D84F90];
  v15 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v16 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BFD360);
  v17 = [objc_opt_self() systemImageNamed_];

  [v15 setImage_];
  v18 = v15;
  MEMORY[0x24C1FB090]();
  if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v19 = 1;
  v20 = v75;
  v6 = MEMORY[0x277D84F90];
  if ((a1 & 1) == 0)
  {
LABEL_20:
    if (v4())
    {
      swift_getObjectType();
      v35 = DOCNode.fpfs_syncFetchFPItem()();
      swift_unknownObjectRelease();
      if (v35)
      {
        v36 = specialized DOCActionManager.numberOfItemsMovable(to:alertPresenting:allowPartialCheck:)(v35, v2, 0);
        if (v36 < 1)
        {

          if (!v19)
          {
            goto LABEL_34;
          }

LABEL_28:
          if (specialized static DOCDocumentScannerUtil.canPresentScanner.getter())
          {
            result = _DocumentManagerBundle();
            if (!result)
            {
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            v49 = result;
            type metadata accessor for DOCUIImageMenuItem();
            v50._countAndFlagsBits = 0xD000000000000023;
            v79._object = 0x8000000249BFD250;
            v51._countAndFlagsBits = 0x636F44206E616353;
            v51._object = 0xEE0073746E656D75;
            v50._object = 0x8000000249BFD220;
            v79._countAndFlagsBits = 0xD000000000000047;
            v52.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v52.value._object = 0xEB00000000656C62;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v52, v49, v51, v79);

            v53 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
            v54 = MEMORY[0x24C1FAD20](0xD000000000000013, 0x8000000249BDAC40);
            v55 = [objc_opt_self() systemImageNamed_];

            [v53 setImage_];
            v56 = v53;
            MEMORY[0x24C1FB090]();
            if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v20 = v75;
          }

LABEL_34:
          v57 = v4();
          v58 = MEMORY[0x277D84F90];
          if (!v57)
          {
LABEL_38:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay26DocumentManagerExecutables18DOCUIImageMenuItemCGGMd, &_ss23_ContiguousArrayStorageCySay26DocumentManagerExecutables18DOCUIImageMenuItemCGGMR);
            result = swift_allocObject();
            result[1] = xmmword_249B9FA70;
            *(result + 4) = v20;
            *(result + 5) = v58;
            return result;
          }

          result = _DocumentManagerBundle();
          if (result)
          {
            v59 = result;
            type metadata accessor for DOCUIImageMenuItem();
            v80._object = 0x8000000249BD4180;
            v80._countAndFlagsBits = 0xD000000000000050;
            v60._countAndFlagsBits = 0x6F666E4920746547;
            v60._object = 0xE800000000000000;
            v61.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v61.value._object = 0xEB00000000656C62;
            v62._countAndFlagsBits = 0;
            v62._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v61, v59, v62, v80);

            v74 = v58;
            v63 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
            v64 = MEMORY[0x24C1FAD20](0x7269632E6F666E69, 0xEB00000000656C63);
            v65 = [objc_opt_self() systemImageNamed_];

            [v63 setImage_];
            result = _DocumentManagerBundle();
            if (result)
            {
              v66 = result;
              v67._countAndFlagsBits = 0xD000000000000020;
              v81._object = 0x8000000249BFD1B0;
              v67._object = 0x8000000249BFD180;
              v81._countAndFlagsBits = 0xD000000000000064;
              v68.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v68.value._object = 0xEB00000000656C62;
              v69._countAndFlagsBits = 0x6F666E4920746547;
              v69._object = 0xE800000000000000;
              v70 = NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v68, v66, v69, v81);

              (*((*MEMORY[0x277D85000] & *v63) + 0x60))(v70._countAndFlagsBits, v70._object);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
              v58 = swift_allocObject();
              *(v58 + 16) = xmmword_249BA0290;
              *(v58 + 32) = v63;
              swift_unknownObjectRelease();
              goto LABEL_38;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_41;
        }

        v37 = v36;
        result = _DocumentManagerBundle();
        if (!result)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v38 = result;
        v78._object = 0x8000000249BFD2D0;
        v39._countAndFlagsBits = 0xD000000000000028;
        v39._object = 0x8000000249BFD2A0;
        v78._countAndFlagsBits = 0xD000000000000033;
        v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v40.value._object = 0xEB00000000656C62;
        v41._countAndFlagsBits = 0;
        v41._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v78);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v42 = swift_allocObject();
        v43 = MEMORY[0x277D83B88];
        *(v42 + 16) = xmmword_249B9A480;
        v44 = MEMORY[0x277D83C10];
        *(v42 + 56) = v43;
        *(v42 + 64) = v44;
        *(v42 + 32) = v37;
        static String.localizedStringWithFormat(_:_:)();

        type metadata accessor for DOCUIImageMenuItem();
        v73 = MEMORY[0x277D84F90];
        v45 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
        v46 = MEMORY[0x24C1FAD20](0x6F642E776F727261, 0xEE00636F642E6E77);
        v47 = [objc_opt_self() systemImageNamed_];

        [v45 setImage_];
        v48 = v45;
        MEMORY[0x24C1FB090]();
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v20 = v75;
        v6 = MEMORY[0x277D84F90];
      }
    }

    if (!v19)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

LABEL_11:
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x1448))())
  {
    goto LABEL_20;
  }

  if (!v4())
  {
    goto LABEL_20;
  }

  swift_getObjectType();
  v21 = DOCNode.fpfs_syncFetchFPItem()();
  swift_unknownObjectRelease();
  if (!v21)
  {
    goto LABEL_20;
  }

  v22 = specialized DOCActionManager.numberOfItemsPasteable(in:allowPartialCheck:)(v21, 1);
  if (v22 < 1)
  {

    goto LABEL_20;
  }

  v23 = v22;
  result = _DocumentManagerBundle();
  if (result)
  {
    v24 = result;
    v77._countAndFlagsBits = 0xD00000000000001BLL;
    v77._object = 0x8000000249BD6510;
    v25._object = 0x8000000249BD64E0;
    v25._countAndFlagsBits = 0xD000000000000024;
    v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v26.value._object = 0xEB00000000656C62;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v77);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D83B88];
    *(v28 + 16) = xmmword_249B9A480;
    v30 = MEMORY[0x277D83C10];
    *(v28 + 56) = v29;
    *(v28 + 64) = v30;
    *(v28 + 32) = v23;
    static String.localizedStringWithFormat(_:_:)();

    type metadata accessor for DOCUIImageMenuItem();
    v72 = MEMORY[0x277D84F90];
    v31 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v32 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BE8C70);
    v33 = [objc_opt_self() systemImageNamed_];

    [v31 setImage_];
    v34 = v31;
    MEMORY[0x24C1FB090]();
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v20 = v75;
    v6 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

LABEL_44:
  __break(1u);
  return result;
}

id protocol witness for DOCItemCollectionViewGestureDelegate.contextMenuConfigurationForBackgroundMenu() in conformance DOCItemCollectionViewController()
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextMenuConfiguration, 0x277D753B0);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  return UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(0, 0, 0, closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu()partial apply, v1);
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.__allocating_init(menuOrder:menuDisplayOrderOverride:displayInline:title:symbol:elementSize:subsections:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = (*(v9 + 376))();
  swift_beginAccess();
  *(v18 + 16) = a1;

  swift_beginAccess();
  *(v18 + 48) = a3;
  swift_beginAccess();
  *(v18 + 64) = a4;
  *(v18 + 72) = a5;

  swift_beginAccess();
  *(v18 + 80) = a6;
  *(v18 + 88) = a7;

  swift_beginAccess();
  *(v18 + 56) = a8;
  swift_beginAccess();
  *(v18 + 24) = a2;

  swift_beginAccess();
  *(v18 + 96) = a9;

  return v18;
}

uint64_t DOCUIImageMenuItem.longTitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCUIImageMenuItem_longTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double DOCUIImageMenuItem.longTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCUIImageMenuItem_longTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id DOCUIImageMenuItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCUIImageMenuItem.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCUIImageMenuItem_longTitle];
  v4 = type metadata accessor for DOCUIImageMenuItem();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id DOCUIImageMenuItem.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCUIImageMenuItem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu()(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *a2) + 0xC70);
  v5 = v4(a1);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_10;
  }

  swift_getObjectType();
  v7 = DOCNode.fpfs_syncFetchFPItem()();
  v5 = swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_10;
  }

  if ([v7 isTrashed])
  {

LABEL_10:
    v21 = 0;
    v127 = v6;
    v22 = v6;
    goto LABEL_11;
  }

  v8 = *MEMORY[0x277CC6028];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = v7;
  v10 = v7;
  specialized static DOCActionManager.canPerform(_:on:)(v8, inited);
  LOBYTE(v8) = v11;
  swift_setDeallocating();
  swift_arrayDestroy();

  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

  v127 = v6;
  v12 = _DocumentManagerBundle();
  if (!v12)
  {
LABEL_90:
    __break(1u);
    return;
  }

  v13 = v12;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v14._countAndFlagsBits = 0xD000000000000019;
  v132._countAndFlagsBits = 0xD000000000000024;
  v132._object = 0x8000000249BFD330;
  v15._countAndFlagsBits = 0x646C6F462077654ELL;
  v14._object = 0x8000000249BFD310;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v15._object = 0xEA00000000007265;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v16, v13, v15, v132);

  v17 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BFD360);
  v18 = [objc_opt_self() systemImageNamed_];

  *(swift_allocObject() + 16) = a2;
  v19 = a2;
  preferredElementSize = UIMenuElementSizeSmall;
  v122._rawValue = 0;
  v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x24C1FB090](v20);
  if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v21 = 1;
  v22 = v127;
LABEL_11:
  v23 = (*((*v3 & *a2) + 0x1448))(v5);
  if ((v23 & 1) == 0)
  {
    v23 = (v4)(v23, v24, v25, v26, v27);
    if (v23)
    {
      swift_getObjectType();
      v28 = DOCNode.fpfs_syncFetchFPItem()();
      v23 = swift_unknownObjectRelease();
      if (v28)
      {
        if (specialized DOCActionManager.numberOfItemsPasteable(in:allowPartialCheck:)(v28, 1) < 1)
        {
        }

        else
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
          v29 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BE8C70);
          v30 = [objc_opt_self() systemImageNamed_];

          v31 = *MEMORY[0x277D765F8];
          *(swift_allocObject() + 16) = a2;
          v32 = a2;
          v33 = v31;
          preferredElementSize = UIMenuElementSizeSmall;
          v122._rawValue = 0;
          v34 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          MEMORY[0x24C1FB090](v34);
          if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v22 = v127;
        }
      }
    }
  }

  v35 = v4(v23);
  if (v35)
  {
    swift_getObjectType();
    v36 = DOCNode.fpfs_syncFetchFPItem()();
    v35 = swift_unknownObjectRelease();
    if (v36)
    {
      v37 = specialized DOCActionManager.numberOfItemsMovable(to:alertPresenting:allowPartialCheck:)(v36, a2, 1);
      if (v37 < 1)
      {

        if (!v21)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      v38 = v37;
      v39 = _DocumentManagerBundle();
      if (!v39)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v40 = v39;
      v41._countAndFlagsBits = 0xD000000000000028;
      v133._countAndFlagsBits = 0xD000000000000033;
      v133._object = 0x8000000249BFD2D0;
      v41._object = 0x8000000249BFD2A0;
      v42.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v42.value._object = 0xEB00000000656C62;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v42, v40, v43, v133);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v44 = swift_allocObject();
      v45 = MEMORY[0x277D83B88];
      *(v44 + 16) = xmmword_249B9A480;
      v46 = MEMORY[0x277D83C10];
      *(v44 + 56) = v45;
      *(v44 + 64) = v46;
      *(v44 + 32) = v38;
      static String.localizedStringWithFormat(_:_:)();

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
      v47 = MEMORY[0x24C1FAD20](0x6F642E776F727261, 0xEE00636F642E6E77);
      v48 = [objc_opt_self() systemImageNamed_];

      *(swift_allocObject() + 16) = a2;
      v49 = a2;
      preferredElementSize = UIMenuElementSizeSmall;
      v122._rawValue = 0;
      v50 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      MEMORY[0x24C1FB090](v50);
      if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v22 = v127;
    }
  }

  if (!v21)
  {
    goto LABEL_33;
  }

LABEL_27:
  v35 = specialized static DOCDocumentScannerUtil.canPresentScanner.getter();
  if (v35)
  {
    v51 = _DocumentManagerBundle();
    if (!v51)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v52 = v51;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v53._countAndFlagsBits = 0xD000000000000023;
    v134._countAndFlagsBits = 0xD000000000000047;
    v134._object = 0x8000000249BFD250;
    v54._countAndFlagsBits = 0x636F44206E616353;
    v54._object = 0xEE0073746E656D75;
    v53._object = 0x8000000249BFD220;
    v55.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v55.value._object = 0xEB00000000656C62;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v55, v52, v54, v134);

    v56 = MEMORY[0x24C1FAD20](0xD000000000000013, 0x8000000249BDAC40);
    v57 = [objc_opt_self() systemImageNamed_];

    *(swift_allocObject() + 16) = a2;
    v58 = a2;
    preferredElementSize = UIMenuElementSizeSmall;
    v122._rawValue = 0;
    v59 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    MEMORY[0x24C1FB090](v59);
    if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v22 = v127;
  }

LABEL_33:
  v126 = v6;
  if (v4(v35))
  {
    v60 = _DocumentManagerBundle();
    if (!v60)
    {
      __break(1u);
      goto LABEL_86;
    }

    v61 = v60;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v135._countAndFlagsBits = 0xD000000000000050;
    v135._object = 0x8000000249BD4180;
    v62._countAndFlagsBits = 0x6F666E4920746547;
    v62._object = 0xE800000000000000;
    v63.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v63.value._object = 0xEB00000000656C62;
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v62, v63, v61, v64, v135);

    v65 = MEMORY[0x24C1FAD20](0x7269632E6F666E69, 0xEB00000000656C63);
    v66 = [objc_opt_self() systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    preferredElementSize = UIMenuElementSizeSmall;
    v122._rawValue = 0;
    v67 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    MEMORY[0x24C1FB090](v67);
    if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    swift_unknownObjectRelease();
    v68 = v126;
  }

  else
  {
    v68 = v6;
  }

  v125 = v6;
  v69 = objc_opt_self();
  v70 = [v69 shared];
  v71 = [v70 canUndo];

  v72 = v6;
  if (!v71)
  {
    goto LABEL_44;
  }

  v73 = [v69 shared];
  v74 = [v73 undoActionName];

  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  v78 = _DocumentManagerBundle();
  if (!v78)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v79 = v78;
  swift__stringd._object = 0x8000000249BFD5F0;
  v80._countAndFlagsBits = 0x4025206F646E55;
  v80._object = 0xE700000000000000;
  v81.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v81.value._object = 0xEB00000000656C62;
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  swift__stringd._countAndFlagsBits = 0xD00000000000005ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v81, v79, v82, swift__stringd);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_249B9A480;
  *(v83 + 56) = MEMORY[0x277D837D0];
  *(v83 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v83 + 32) = v75;
  *(v83 + 40) = v77;
  static String.localizedStringWithFormat(_:_:)();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v84 = MEMORY[0x24C1FAD20](0xD00000000000001BLL, 0x8000000249BFD650);
  v85 = [objc_opt_self() systemImageNamed_];

  preferredElementSize = UIMenuElementSizeSmall;
  v122._rawValue = 0;
  v86 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x24C1FB090](v86);
  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v72 = v125;
LABEL_44:
  v87 = [v69 shared];
  v88 = [v87 canRedo];

  if (!v88)
  {
    goto LABEL_49;
  }

  v89 = [v69 shared];
  v90 = [v89 redoActionName];

  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v92;

  v94 = _DocumentManagerBundle();
  if (!v94)
  {
    goto LABEL_87;
  }

  v95 = v94;
  swift__stringe._object = 0x8000000249BFD570;
  v96._countAndFlagsBits = 0x4025206F646552;
  v96._object = 0xE700000000000000;
  v97.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v97.value._object = 0xEB00000000656C62;
  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  swift__stringe._countAndFlagsBits = 0xD00000000000005ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v96, v97, v95, v98, swift__stringe);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_249B9A480;
  *(v99 + 56) = MEMORY[0x277D837D0];
  *(v99 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v99 + 32) = v91;
  *(v99 + 40) = v93;
  static String.localizedStringWithFormat(_:_:)();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v100 = MEMORY[0x24C1FAD20](0xD00000000000001ALL, 0x8000000249BFD5D0);
  v101 = [objc_opt_self() systemImageNamed_];

  v122._rawValue = 0;
  v102 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  MEMORY[0x24C1FB090](v102);
  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v72 = v125;
LABEL_49:
  if (v22 >> 62)
  {
LABEL_78:
    v106 = __CocoaSet.count.getter();
    if (v106)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);

      v103 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_52;
    }
  }

  else
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
      v103 = v22;
LABEL_52:
      v104 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
      v105._countAndFlagsBits = 0;
      v105._object = 0xE000000000000000;
      v128.value.super.isa = 0;
      v128.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v104, v105, 0, v128, 1, 0xFFFFFFFFFFFFFFFFLL, v103, v122);
      goto LABEL_54;
    }

    v106 = 0;
  }

LABEL_54:
  v124[4] = v106;
  if (v68 >> 62)
  {
    v110 = __CocoaSet.count.getter();
    if (v110)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);

      v107 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_57;
    }
  }

  else
  {
    if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
      v107 = v68;
LABEL_57:
      v108 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
      v109._countAndFlagsBits = 0;
      v109._object = 0xE000000000000000;
      v129.value.super.isa = 0;
      v129.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v108, v109, 0, v129, 1, 2uLL, v107, v122);
      goto LABEL_59;
    }

    v110 = 0;
  }

LABEL_59:
  v124[5] = v110;
  if (v72 >> 62)
  {
    v114 = __CocoaSet.count.getter();
    if (v114)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);

      v111 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_62;
    }
  }

  else
  {
    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
      v111 = v72;
LABEL_62:
      v112 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
      v113._countAndFlagsBits = 0;
      v113._object = 0xE000000000000000;
      v130.value.super.isa = 0;
      v130.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v112, v113, 0, v130, 1, 2uLL, v111, v122);
      goto LABEL_64;
    }

    v114 = 0;
  }

LABEL_64:
  v115 = 0;
  v124[6] = v114;
  v123 = v6;
LABEL_65:
  if (v115 <= 3)
  {
    v116 = 3;
  }

  else
  {
    v116 = v115;
  }

  while (v115 != 3)
  {
    if (v116 == v115)
    {
      __break(1u);
      goto LABEL_78;
    }

    v117 = v124[v115++ + 4];
    if (v117)
    {
      MEMORY[0x24C1FB090](v117);
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v123;
      goto LABEL_65;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIMenuCSgMd, &_sSo6UIMenuCSgMR);
  swift_arrayDestroy();

  if (v6 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);

    v118 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
    v118 = v6;
  }

  v119 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v131.value.super.isa = 0;
  v131.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v119, v120, 0, v131, 0, 0xFFFFFFFFFFFFFFFFLL, v118, v122);
}

void closure #5 in closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong displayInfoForCurrentItem_];
  }
}

void closure #6 in closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForBackgroundMenu()(uint64_t a1, SEL *a2)
{
  v3 = [objc_opt_self() shared];
  [v3 *a2];
}

void DOCItemCollectionViewController.pasteboardPasteInCollectionView(_:)()
{
  v1 = type metadata accessor for DOCPasteboardHandler();
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xC70))();
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  if (v2)
  {
    swift_getObjectType();
    v5 = v0;
    swift_unknownObjectRetain();
    FPItem = DOCNode.fpfs_syncFetchFPItemResult()();
    v7 = FPItem;
    if (v8)
    {
      v9 = FPItem;
      closure #1 in DOCItemCollectionViewController.pasteboardPasteInCollectionView(_:)(0, v7, v5);
      swift_unknownObjectRelease_n();

      outlined consume of Result<FPItem, Error>(v7);

      outlined consume of Result<FPItem, Error>(v7);
    }

    else
    {
      v11 = objc_opt_self();
      v12 = v7;
      v13 = [v11 defaultPermission];
      v14 = [v13 dataOwnerStateForNode_];

      v25 = MEMORY[0x277D84F90];
      v15 = v14 == 2;
      if (v14 == 1)
      {
        v15 = 2;
      }

      v23 = v15;
      v16 = objc_opt_self();
      v17 = swift_allocObject();
      v17[2] = &v25;
      v17[3] = v14;
      v17[4] = v5;
      v17[5] = v2;
      v17[6] = v12;
      v17[7] = v3;
      v17[8] = partial apply for closure #1 in DOCItemCollectionViewController.pasteboardPasteInCollectionView(_:);
      v17[9] = v4;
      v17[10] = v1;
      v18 = swift_allocObject();
      *(v18 + 16) = partial apply for closure #1 in static DOCPasteboardHandler.pasteboardPasteInDestination(dest:configuration:alertPresenting:completion:);
      *(v18 + 24) = v17;
      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_12_5;
      v19 = _Block_copy(aBlock);
      v20 = v5;
      swift_unknownObjectRetain();
      v21 = v3;

      [v16 _performAsDataOwner_block_];
      swift_unknownObjectRelease();

      outlined consume of Result<FPItem, Error>(v7);
      _Block_release(v19);
      swift_unknownObjectRelease();
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
      }
    }
  }

  else
  {
    v10 = v0;
  }
}

void closure #1 in DOCItemCollectionViewController.pasteboardPasteInCollectionView(_:)(unint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_15:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v33 = static DOCLog.UI;
    v34 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_249B9FA70;
    v36 = MEMORY[0x277D837D0];
    *(v35 + 56) = MEMORY[0x277D837D0];
    v37 = lazy protocol witness table accessor for type String and conformance String();
    *(v35 + 64) = v37;
    *(v35 + 32) = 0xD000000000000023;
    *(v35 + 40) = 0x8000000249BFD520;
    if (a2 && (v46 = a2, v38 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR), __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR), (swift_dynamicCast() & 1) != 0) && v43)
    {
      outlined init with take of DOCGoToFolderCandidate(&aBlock, v35 + 72);
    }

    else
    {
      *(v35 + 96) = v36;
      *(v35 + 104) = v37;
      strcpy((v35 + 72), "unknown error");
      *(v35 + 86) = -4864;
    }

    os_log(_:dso:log:type:_:)("%@: Reveal Operation failed: %@", 31, 2, &dword_2493AC000, v33, v34, v35);
    goto LABEL_23;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_15;
  }

LABEL_4:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v44 = DOCGridLayout.specIconWidth.modify;
  v45 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v42 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v43 = &block_descriptor_71_3;
  v7 = _Block_copy(&aBlock);

  [a3 revealWithNodes:isa selectEvenIfVisible:0 completionBlock:v7];
  _Block_release(v7);

  v8 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *a3) + 0xC70))())
  {
LABEL_23:

    return;
  }

  if (a2)
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v9 = *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  DOCAnalyticsActionEvent.FileProvider.init(nodes:)(a1);
  v10 = v46;
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];

  swift_getObjectType();
  v13 = DOCNode.sourceIdentifier.getter();
  v14 = DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v13);
  v15 = v40[1];
  v16 = (*((*v8 & *a3) + 0xBD8))(v14);
  if (v16 >= 4)
  {
    *&aBlock = v16;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v17 = 0x3020201u >> (8 * v16);
    v18 = [v11 mainBundle];
    v19 = [v18 bundleIdentifier];

    if (v19)
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v23 = v9;
    DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v23, v20, v22, &aBlock);
    v24 = aBlock;
    v25 = v23;
    DOCAnalyticsActionEvent.SortMode.init(configuration:)(v25, v40);
    v26 = v40[0];
    v27 = v25;
    DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v27, &v39);
    v28 = v39;
    v29 = [v27 hostIdentifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *&aBlock = 0xD000000000000032;
    *(&aBlock + 1) = 0x8000000249BCDC20;
    v42 = v30;
    v43 = v32;
    LOBYTE(v44) = 1;
    BYTE1(v44) = v24;
    BYTE2(v44) = v10;
    BYTE3(v44) = v15;
    BYTE4(v44) = v17;
    BYTE5(v44) = v26;
    BYTE6(v44) = v28;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(&aBlock, static DOCAnalyticsManager.shared);
    swift_unknownObjectRelease();
    outlined destroy of DOCAnalyticsActionEvent(&aBlock);
  }
}

double DOCItemCollectionViewController.pasteboardMoveToCollectionView(_:)()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xC70))();
  if (v1)
  {
    v3 = v1;
    v4 = [objc_opt_self() defaultPermission];
    v5 = [v4 dataOwnerStateForNode_];

    if (v5 == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5 == 2;
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v0;
    swift_unknownObjectRetain();
    specialized static NSItemProvider.fetchPasteboardNodes(dataOwnerState:alertPresenting:with:)(v6, v0, partial apply for closure #1 in DOCItemCollectionViewController.pasteboardMoveToCollectionView(_:), v7);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in DOCItemCollectionViewController.pasteboardMoveToCollectionView(_:)(unint64_t a1, uint64_t a2, void *a3)
{
  v52 = type metadata accessor for DOCOperationItem(0);
  v6 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v7);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v49 - v12);
  v51 = a2;
  if (a1 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v55[0] = MEMORY[0x277D84F90];
    v16 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    v50 = a3;
    v15 = v55[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        *v13 = MEMORY[0x24C1FC540](i, a1);
        swift_storeEnumTagMultiPayload();
        v55[0] = v15;
        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v15 = v55[0];
        }

        *(v15 + 16) = v19 + 1;
        outlined init with take of DOCOperationItem(v13, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19);
      }
    }

    else
    {
      v20 = (a1 + 32);
      do
      {
        *v9 = *v20;
        swift_storeEnumTagMultiPayload();
        v55[0] = v15;
        v21 = *(v15 + 16);
        v22 = *(v15 + 24);
        swift_unknownObjectRetain();
        if (v21 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v21 + 1, 1);
          v15 = v55[0];
        }

        *(v15 + 16) = v21 + 1;
        outlined init with take of DOCOperationItem(v9, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21);
        ++v20;
        --v14;
      }

      while (v14);
    }

    a3 = v50;
  }

  v23 = [objc_opt_self() defaultManager];
  FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(0, v15, v51, 0, 0, 1, a3, 0, 0);

  v24 = *(a3 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);

  DOCAnalyticsActionEvent.FileProvider.init(nodes:)(v25);
  v26 = v54[2];
  v27 = objc_opt_self();
  v28 = [v27 mainBundle];

  swift_getObjectType();
  v29 = DOCNode.sourceIdentifier.getter();
  v30 = DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v29);
  v31 = v54[1];
  v16 = (*((*MEMORY[0x277D85000] & *a3) + 0xBD8))(v30);
  if (v16 >= 4)
  {
LABEL_25:
    v55[0] = v16;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  v32 = 0x3020201u >> (8 * v16);
  v33 = [v27 mainBundle];
  v34 = [v33 bundleIdentifier];

  if (v34)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = v24;
  DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v38, v35, v37, v55);
  v39 = v55[0];
  v40 = v38;
  DOCAnalyticsActionEvent.SortMode.init(configuration:)(v40, v54);
  v41 = v54[0];
  v42 = v40;
  DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v42, &v53);
  v43 = v53;
  v44 = [v42 hostIdentifier];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  v55[0] = 0xD000000000000032;
  v55[1] = 0x8000000249BCDC20;
  v55[2] = v45;
  v55[3] = v47;
  v56 = 1;
  v57 = v39;
  v58 = v26;
  v59 = v31;
  v60 = v32;
  v61 = v41;
  v62 = v43;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized DOCAnalyticsManager.sendEvent(_:)(v55, static DOCAnalyticsManager.shared);
  return outlined destroy of DOCAnalyticsActionEvent(v55);
}

uint64_t @objc DOCItemCollectionViewController.pasteboardPasteInCollectionView(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return outlined destroy of CharacterSet?(v9, &_sypSgMd, &_sypSgMR);
}

void *DOCItemCollectionViewController.displayInfoForCurrentItem(_:)(uint64_t a1)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
  if (result)
  {
    v4 = result;
    outlined init with copy of DOCGridLayout.Spec?(a1, v10, &_sypSgMd, &_sypSgMR);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v4;
    v6 = v10[1];
    *(v5 + 32) = v10[0];
    *(v5 + 48) = v6;
    v9[4] = partial apply for closure #1 in DOCItemCollectionViewController.displayInfoForCurrentItem(_:);
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v9[3] = &block_descriptor_21_7;
    v7 = _Block_copy(v9);
    v8 = v1;
    swift_unknownObjectRetain();

    [v4 fetchURL_];
    _Block_release(v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

double closure #1 in DOCItemCollectionViewController.displayInfoForCurrentItem(_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  v15 = v26 - v14;
  outlined init with copy of DOCGridLayout.Spec?(a1, v26 - v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(a5, v26, &_sypSgMd, &_sypSgMR);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  outlined init with take of URL?(v15, v20 + v16);
  *(v20 + v17) = a2;
  *(v20 + v18) = a3;
  *(v20 + v19) = a4;
  v21 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v22 = v26[1];
  *v21 = v26[0];
  v21[1] = v22;
  v23 = a2;
  v24 = a3;
  swift_unknownObjectRetain();
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in DOCItemCollectionViewController.displayInfoForCurrentItem(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of CharacterSet?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v18 = static DOCLog.UI;
    v19 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_249B9A480;
    if (a2)
    {
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
    v31 = 4271950;
    if (v23)
    {
      v31 = v21;
    }

    v32 = 0xE300000000000000;
    if (v23)
    {
      v32 = v23;
    }

    *(v20 + 32) = v31;
    *(v20 + 40) = v32;
    os_log(_:dso:log:type:_:)("Couldn't fetch url to update urlToItemCache: %@", 47, 2, &dword_2493AC000, v18, v19, v20, v37);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v24 = *((*MEMORY[0x277D85000] & *a3) + 0xA90);
    swift_unknownObjectRetain();
    v25 = v24(v39);
    v27 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v27;
    *v27 = 0x8000000000000000;
    ObjectType = swift_getObjectType();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, v17, isUniquelyReferenced_nonNull_native, &v38, ObjectType);
    *v27 = v38;
    v25(v39, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_249BA0290;
    *(v30 + 32) = a4;
    outlined init with copy of DOCGridLayout.Spec?(v37, v39, &_sypSgMd, &_sypSgMR);
    if (v40)
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCActionPerformer_pMd, &_s26DocumentManagerExecutables18DOCActionPerformer_pMR);
      swift_dynamicCast();
    }

    else
    {
      swift_unknownObjectRetain();
      outlined destroy of CharacterSet?(v39, &_sypSgMd, &_sypSgMR);
    }

    v33 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
    v34 = DOCItemCollectionViewController.actionContext(from:)();
    swift_unknownObjectRelease();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        a4 = MEMORY[0x24C1FC540](0, v30);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = v30;
      *(v35 + 32) = 0;
      *(v35 + 40) = v33;
      *(v35 + 48) = a4;
      v36 = v34;
      swift_unknownObjectRetain();
      DOCRunInMainThread(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v14 + 8))(v17, v13);
  }
}

void DOCItemCollectionViewController.scanDocument(_:)()
{
  DOCItemCollectionViewController.triggerScan()();
  if (v0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.UI);
    v2 = v0;
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = v0;
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v7;
      *v5 = v7;
      _os_log_impl(&dword_2493AC000, oslog, v3, "Did not trigger scan. Error: %@", v4, 0xCu);
      outlined destroy of CharacterSet?(v5, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v5, -1, -1);
      MEMORY[0x24C1FE850](v4, -1, -1);

      v8 = oslog;
    }

    else
    {

      v8 = v0;
    }
  }
}

double DOCItemCollectionViewController._DOCSectionDescriptor.menuSortOrder.getter()
{
  swift_beginAccess();

  return result;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.menuSortOrder.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.menuDisplayOrderOverride.getter()
{
  swift_beginAccess();

  return result;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.menuDisplayOrderOverride.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.browserActions.getter()
{
  swift_beginAccess();

  return result;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.browserActions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  return result;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.menus.getter()
{
  swift_beginAccess();

  return result;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.menus.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.title.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.title.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  return result;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.symbol.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.symbol.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  return result;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.subsections.getter()
{
  swift_beginAccess();

  return result;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.subsections.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;

  return result;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.debugDescription.getter()
{
  _StringGuts.grow(_:)(24);
  v14 = v0;
  type metadata accessor for DOCItemCollectionViewController._DOCSectionDescriptor();
  _print_unlocked<A, B>(_:_:)();
  v1 = MEMORY[0x24C1FAEA0](0x203A73756E656D20, 0xE800000000000000);
  v2 = (*(*v0 + 224))(v1);
  v3 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
  v4 = MEMORY[0x24C1FB0D0](v2, v3);
  v6 = v5;

  MEMORY[0x24C1FAEA0](v4, v6);

  v7 = MEMORY[0x24C1FAEA0](0x736E6F6974636120, 0xEA0000000000203ALL);
  v8 = (*(*v14 + 200))(v7);
  v9 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
  v10 = MEMORY[0x24C1FB0D0](v8, v9);
  v12 = v11;

  MEMORY[0x24C1FAEA0](v10, v12);

  return 0;
}

void *DOCItemCollectionViewController._DOCSectionDescriptor.deinit()
{

  return v0;
}

uint64_t DOCItemCollectionViewController._DOCSectionDescriptor.__deallocating_deinit()
{
  DOCItemCollectionViewController._DOCSectionDescriptor.deinit();

  return swift_deallocClassInstance();
}

double DOCItemCollectionViewController._DOCSectionDescriptor.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84FA0];
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = 1;
  *(v0 + 56) = 2;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  return result;
}

double DOCItemCollectionViewController._DOCSectionDescriptor.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84FA0];
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = 1;
  *(v0 + 56) = 2;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  return result;
}

uint64_t filteredActions #1 (by:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(uint64_t a1, unint64_t a2)
{
  v22 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      v5 = a2 & 0xC000000000000001;
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
      v21 = a2;
      v7 = a2 + 32;
      v8 = a1 + 56;
      while (1)
      {
        if (v5)
        {
          v9 = MEMORY[0x24C1FC540](v4, v21);
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_20;
          }

          v9 = *(v7 + 8 * v4);
        }

        v10 = v9;
        if (__OFADD__(v4++, 1))
        {
          break;
        }

        v12 = [v9 menuSortOrder];
        if (*(a1 + 16) && (v13 = v12, Hasher.init(_seed:)(), MEMORY[0x24C1FCBD0](v13), v14 = Hasher._finalize()(), v15 = -1 << *(a1 + 32), v16 = v14 & ~v15, ((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
        {
          v17 = ~v15;
          while (*(*(a1 + 48) + 8 * v16) != v13)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v4 == v3)
          {
            return v22;
          }
        }

        else
        {
LABEL_4:

          if (v4 == v3)
          {
            return v22;
          }
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v19 = a2;
      v20 = __CocoaSet.count.getter();
      a2 = v19;
      v3 = v20;
    }

    while (v20);
  }

  return MEMORY[0x277D84F90];
}

uint64_t browserActionsToMenuActions #1 (_:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(unint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t a5)
{
  v7 = a1;
  v56 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_30:
    v54 = v7 & 0xFFFFFFFFFFFFFF8;
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v54 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v9 = 0;
  v53 = v7 & 0xC000000000000001;
  result = MEMORY[0x277D84F90];
  v49 = v7;
  v50 = a4;
  for (i = v8; i != v9; v8 = i)
  {
    v47 = result;
    for (j = v9; ; ++j)
    {
      if (v53)
      {
        v12 = MEMORY[0x24C1FC540](j, v7);
      }

      else
      {
        if (j >= *(v54 + 16))
        {
          goto LABEL_29;
        }

        v12 = *(v7 + 8 * j + 32);
      }

      v17 = v12;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v18 = *((*MEMORY[0x277D85000] & *a2) + 0xAB0);
      v19 = v18(v12, v13, v14, v15, v16);
      if ((v19 & 1) == 0 || (v19 = (*((*MEMORY[0x277D85000] & *a2) + 0xAC8))(v19, v20, v21, v22, v23), (v19 & 1) == 0))
      {
        if (v18(v19, v20, v21, v22, v23))
        {

          goto LABEL_6;
        }
      }

      v24 = [v17 identifier];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = objc_opt_self();
      v29 = MEMORY[0x24C1FAD20](v25, v27);
      LODWORD(v28) = [v28 isDestructiveActionIdentifier_];

      v30 = 2;
      if (!v28)
      {
        v30 = 0;
      }

      v55 = v30;
      UIDocumentBrowserAction.preferredLocalizedTitleForMenus.getter();
      if (![v17 imageOnlyForContextMenu])
      {
        v31 = [v17 image];
      }

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
      UIDocumentBrowserAction.compositeIdentifierForMenus.getter();
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = v17;
      v33[4] = a3;
      v34 = v17;

      v45 = partial apply for closure #1 in closure #1 in browserActionsToMenuActions #1 (_:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:);
      v46 = v33;
      v44 = 0;
      v42 = 0;
      v43 = v55;
      v35 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      a4 = v50;
      if (!v50)
      {
        break;
      }

      v36 = (v50)(v35);

      v37 = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v50, a5);
      v7 = v49;
      v8 = i;
      if (v36)
      {
        goto LABEL_23;
      }

LABEL_6:
      if (v9 == v8)
      {
        return v47;
      }
    }

    v7 = v49;
LABEL_23:
    MEMORY[0x24C1FB090](v37, v38, v39, v40, v41);
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v56;
  }

  return result;
}

void closure #1 in closure #1 in browserActionsToMenuActions #1 (_:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = DOCItemCollectionViewController.actionContext(from:)();
    (*((*MEMORY[0x277D85000] & *v9) + 0xC8))(a1);
    v10 = *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager];
    specialized DOCActionManager.perform(_:on:actionContext:)(a3, a4, v9);

    if ([a3 performActionExitsEditMode])
    {
      [v8 setEditing:0 animated:1];
    }
  }
}

uint64_t DOCItemCollectionViewController.doc_documentScannerReceivingTarget.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xA98))();
  if (result)
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.documentCameraViewController(_:didFinishWith:)(VNDocumentCameraViewController *_, VNDocumentCameraScan didFinishWith)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = _;
  v6 = v2;
  v7 = _;
  specialized DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:)(didFinishWith.super.isa, partial apply for closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:), v5);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v26[1] = a5;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *a4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v10 + 16))(v13, a2, v9);
      return specialized _NativeDictionary._insert(at:key:value:)(v16, v13, a1, v22);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *a4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;

  return swift_unknownObjectRelease();
}

void specialized DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void, __n128), uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v12 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager);
  v13 = *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v15 = [v12 _filteredMenuActionsFor_availabilityIdentifier_in_currentConfiguration_sortOverrideHandler_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v108 = v7;
  v17 = DOCActionManager.collaborationActions(for:presentingViewController:availability:)(a1, v7, 1);
  v114[1] = v16;
  specialized Array.append<A>(contentsOf:)(v17);
  v18 = specialized DOCActionManager.smartMoveActions(forMovingNodes:in:to:currentConfiguration:)(a1, a3);
  specialized Array.append<A>(contentsOf:)(v18);
  v19 = specialized DOCActionManager.openWithAppActions(for:currentConfiguration:)(a1, v13);
  specialized Array.append<A>(contentsOf:)(v19);
  v102 = a1;
  v20 = specialized DOCActionManager.addToDockActions(for:currentConfiguration:)(a1, v13);
  specialized Array.append<A>(contentsOf:)(v20);

  v114[0] = specialized Array._copyToContiguousArray()(v22, v21);
  specialized MutableCollection<>.sort(by:)(v114);

  v110 = v114[0];
  v101 = a6;
  v98 = a6 >> 62;
  if (a6 >> 62)
  {
    goto LABEL_33;
  }

  v23 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v23)
  {
LABEL_3:
    v24 = 0;
    v99 = v23;
    while (1)
    {
      if ((v101 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x24C1FC540](v24, v101);
        v26 = __OFADD__(v24++, 1);
        if (v26)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v24 >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v25 = *(v101 + 32 + 8 * v24);

        v26 = __OFADD__(v24++, 1);
        if (v26)
        {
          goto LABEL_31;
        }
      }

      v27 = (*(*v25 + 152))();
      v28 = filteredActions #1 (by:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v27, v110);

      v29 = *(*v25 + 208);
      v30 = v29(v28);
      v31 = (*(*v25 + 176))(v30);
      if (v31)
      {
        v32 = v31;
        (*(*v25 + 200))();

        v114[0] = specialized Array._copyToContiguousArray()(v34, v33);
        specialized MutableCollection<>.sort(by:)(v114, v32);

        swift_bridgeObjectRelease_n();
        v31 = v29(v114[0]);
      }

      v35 = (*(*v25 + 200))(v31);
      v36 = browserActionsToMenuActions #1 (_:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v35, v108, v102, a4, a5);

      v37 = (*(*v25 + 232))(v36);
      v38 = (*(*v25 + 344))(v37);
      if (!v38)
      {
        goto LABEL_5;
      }

      v39 = v38;
      v100 = v24;
      v40 = v38 & 0xFFFFFFFFFFFFFF8;
      if (!(v38 >> 62))
      {
        v41 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v41)
        {
          break;
        }

        goto LABEL_4;
      }

      v41 = __CocoaSet.count.getter();
      if (v41)
      {
        break;
      }

LABEL_4:

      v23 = v99;
      v24 = v100;
LABEL_5:

      if (v24 == v23)
      {
        goto LABEL_34;
      }
    }

    v42 = 0;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x24C1FC540](v42, v39);
        v46 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v42 >= *(v40 + 16))
        {
          goto LABEL_30;
        }

        v45 = *(v39 + 8 * v42 + 32);

        v46 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v23 = __CocoaSet.count.getter();
          if (!v23)
          {
            break;
          }

          goto LABEL_3;
        }
      }

      v47 = (*(*v45 + 152))();
      v48 = filteredActions #1 (by:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v47, v110);

      v49 = *(*v45 + 208);
      v50 = v49(v48);
      v51 = (*(*v45 + 176))(v50);
      if (v51)
      {
        v52 = v51;
        (*(*v45 + 200))();

        v114[0] = specialized Array._copyToContiguousArray()(v54, v53);
        specialized MutableCollection<>.sort(by:)(v114, v52);

        swift_bridgeObjectRelease_n();
        v49(v114[0]);
      }

      v43 = (*(*v45 + 200))();
      v44 = browserActionsToMenuActions #1 (_:) in DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v43, v108, v102, a4, a5);

      (*(*v45 + 232))(v44);

      ++v42;
      if (v46 == v41)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_34:

  if (v98)
  {
    v55 = __CocoaSet.count.getter();
  }

  else
  {
    v55 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    v114[0] = MEMORY[0x277D84F90];
    v103 = v55;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v103 < 0)
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      while (1)
      {

        __break(1u);
      }
    }

    v57 = 0;
    do
    {
      if ((v101 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x24C1FC540](v57);
      }

      else
      {
        v60 = *(v101 + 32 + 8 * v57);
      }

      v113 = v56;
      v61 = (*(*v60 + 224))();
      specialized Array.append<A>(contentsOf:)(v61);
      v62 = (*(*v60 + 344))();
      if (v62)
      {
        v63 = v62;
        v64 = v62 & 0xFFFFFFFFFFFFFF8;
        if (v62 >> 62)
        {
          v65 = __CocoaSet.count.getter();
          v105 = v60;
          v107 = v57;
          if (v65)
          {
LABEL_48:
            v66 = 0;
            v111 = v63;
            v112 = v63 & 0xC000000000000001;
            v109 = v65;
            do
            {
              if (v112)
              {
                v67 = MEMORY[0x24C1FC540](v66, v63);
                v68 = v66 + 1;
                if (__OFADD__(v66, 1))
                {
                  goto LABEL_71;
                }
              }

              else
              {
                if (v66 >= *(v64 + 16))
                {
                  goto LABEL_72;
                }

                v67 = *(v63 + 8 * v66 + 32);

                v68 = v66 + 1;
                if (__OFADD__(v66, 1))
                {
LABEL_71:
                  __break(1u);
LABEL_72:
                  __break(1u);
LABEL_73:
                  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);

                  v56 = _bridgeCocoaArray<A>(_:)();

                  goto LABEL_70;
                }
              }

              v69 = (*(*v67 + 296))();
              if (!v70)
              {
                goto LABEL_75;
              }

              v71 = v69;
              v72 = v70;
              v73 = (*(*v67 + 320))();
              if (!v74)
              {
                goto LABEL_76;
              }

              v75 = v73;
              v76 = v74;
              type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
              v77 = MEMORY[0x24C1FAD20](v75, v76);

              v78 = [objc_opt_self() systemImageNamed_];

              preferredElementSize = (*(*v67 + 224))();
              v79._countAndFlagsBits = v71;
              v79._object = v72;
              v116.value.super.isa = v78;
              v116.is_nil = 0;
              UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v80, v79, 0, v116, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v98);
              v82 = v81;
              MEMORY[0x24C1FB090]();
              if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              ++v66;
              v63 = v111;
            }

            while (v68 != v109);
          }
        }

        else
        {
          v65 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v105 = v60;
          v107 = v57;
          if (v65)
          {
            goto LABEL_48;
          }
        }

        v60 = v105;
        v57 = v107;
      }

      if ((*(*v60 + 248))())
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
        v58 = (*(*v60 + 272))();
        v59._countAndFlagsBits = 0;
        v59._object = 0xE000000000000000;
        v115.value.super.isa = 0;
        v115.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v113, v59, 0, v115, 1, v58, v113, v98);
      }

      else
      {
        v83 = v57;
        v84 = (*(*v60 + 296))();
        if (!v85)
        {
          goto LABEL_78;
        }

        v86 = v84;
        v87 = v85;
        v88 = (*(*v60 + 320))();
        if (!v89)
        {
          goto LABEL_77;
        }

        v90 = v88;
        v91 = v89;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
        v92 = MEMORY[0x24C1FAD20](v90, v91);

        v93 = [objc_opt_self() systemImageNamed_];

        v94._countAndFlagsBits = v86;
        v94._object = v87;
        v117.value.super.isa = v93;
        v117.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v113, v94, 0, v117, 0, 0xFFFFFFFFFFFFFFFFLL, v113, v98);
        v57 = v83;
      }

      ++v57;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v56 = MEMORY[0x277D84F90];
    }

    while (v57 != v103);
    v56 = v114[0];
  }

  if (v56 >> 62)
  {
    goto LABEL_73;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
LABEL_70:

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
  v95._countAndFlagsBits = 0;
  v95._object = 0xE000000000000000;
  v118.value.super.isa = 0;
  v118.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v96, v95, 0, v118, 1, 0xFFFFFFFFFFFFFFFFLL, v56, v98);
}

id specialized DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:)(unint64_t a1, uint64_t a2)
{
  v155 = a2;
  v162 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v5);
  v161 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for DispatchQoS();
  v169 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v7);
  v159 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for DispatchQoS.QoSClass();
  v148 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v9);
  v157 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v143 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v144 = &v136 - v17;
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_51;
  }

  v19 = result;
  v181._object = 0x8000000249BF15F0;
  v20._countAndFlagsBits = 0x6F5420646441;
  v20._object = 0xE600000000000000;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._countAndFlagsBits = 0x6F5420646441;
  v22._object = 0xE600000000000000;
  v181._countAndFlagsBits = 0xD000000000000020;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v181);
  countAndFlagsBits = v23._countAndFlagsBits;
  object = v23._object;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v24 = result;
  v182._object = 0x8000000249BF1620;
  v25._countAndFlagsBits = 0x6341206B63697551;
  v25._object = 0xED0000736E6F6974;
  v182._countAndFlagsBits = 0xD000000000000027;
  v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v26.value._object = 0xEB00000000656C62;
  v27._countAndFlagsBits = 0x6341206B63697551;
  v27._object = 0xED0000736E6F6974;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v182);
  v152 = v28._object;
  v153 = v28._countAndFlagsBits;

  v29 = MEMORY[0x277D84F90];
  v180 = MEMORY[0x277D84F90];
  v30 = [objc_opt_self() suggestedMoveToFolderInContextMenu];
  v31 = [v30 isEnabled];

  v156 = v2;
  v164 = a1;
  if (v31)
  {
    if (a1 >> 62)
    {
      if (__CocoaSet.count.getter() != 1)
      {
        goto LABEL_43;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_43;
    }

    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (All)
    {
      if (All >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
        _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      }

      v146 = v4;
      v141 = v12;
      v142 = v11;

      v33 = objc_allocWithZone(DOCPickerContext);
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v35 = [v33 initWithNodes_];

      v36 = v156;
      if (one-time initialization token for sharedManager != -1)
      {
        swift_once();
      }

      v37 = static DOCSmartFolderManager.sharedManager;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
      inited = *(v36 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
      v41 = objc_opt_self();
      v140 = v35;
      v42 = [v41 defaultPermission];
      v43 = [objc_opt_self() sharedManager];
      v44 = v35;
      v45 = [v43 favoritedLocations];

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v172 = v40;
      v47 = inited;
      v138 = v46;
      v139 = v42;
      v170 = v38;
      inited = v37;
      DOCSmartFolderManager._unvalidatedSuggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:excludedItems:)(v38, v40, v47, v42, 1, v44, v46);
      v49 = v48;
      v50 = dispatch_group_create();
      v51 = swift_allocObject();
      v52 = v49;
      v163 = v51;
      *(v51 + 16) = MEMORY[0x277D84F98];
      v137 = (v51 + 16);
      if (v49 >> 62)
      {
        v53 = __CocoaSet.count.getter();
        v52 = v49;
        if (v53)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v53 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v53)
        {
LABEL_13:
          if (v53 >= 1)
          {
            v54 = 0;
            v166 = &v175;
            v167 = v52 & 0xC000000000000001;
            v165 = *MEMORY[0x277D060D8];
            v55 = v148++;
            v149 = (v55 + 13);
            v147 = *MEMORY[0x277D851A8];
            v145 = (v169 + 8);
            ++v146;
            v168 = v53;
            v169 = v52;
            v150 = v50;
            while (1)
            {
              if (v167)
              {
                v67 = MEMORY[0x24C1FC540](v54);
              }

              else
              {
                v67 = *(v52 + 8 * v54 + 32);
              }

              v68 = v67;
              v69 = [v67 providerID];
              v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v72 = v71;

              if (v70 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v72 == v73)
              {

                if (FPIsCloudDocsWithFPFSEnabled())
                {
                  goto LABEL_28;
                }
              }

              else
              {
                v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v75 & 1) != 0 && FPIsCloudDocsWithFPFSEnabled())
                {
LABEL_28:
                  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
                  v77 = v157;
                  v76 = v158;
                  (*v149)(v157, v147, v158);
                  v78 = static OS_dispatch_queue.global(qos:)();
                  (*v148)(v77, v76);
                  v79 = swift_allocObject();
                  v80 = v170;
                  v81 = inited;
                  v79[2] = inited;
                  v79[3] = v68;
                  v82 = v172;
                  v79[4] = v80;
                  v79[5] = v82;
                  v177 = _s26DocumentManagerExecutables014DOCSmartFolderB0C20suggestedFoldersList3for13configuration17managedPermission16maxNumberOfItems13pickerContext5async10completionySS_So16DOCConfigurationCSo010DOCManagedL0CSiSo09DOCPickerR0CSgSbySaySo6FPItemCGctFyycfU_yyYbcfU_TA_0;
                  v178 = v79;
                  v173 = MEMORY[0x277D85DD0];
                  v174 = 1107296256;
                  v175 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
                  v176 = &block_descriptor_108_0;
                  v83 = _Block_copy(&v173);
                  v84 = v81;
                  v85 = v68;

                  v86 = v159;
                  static DispatchQoS.unspecified.getter();
                  v179 = MEMORY[0x277D84F90];
                  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                  v88 = v161;
                  v87 = v162;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  MEMORY[0x24C1FB9A0](0, v86, v88, v83);
                  _Block_release(v83);

                  (*v146)(v88, v87);
                  v89 = v86;
                  v50 = v150;
                  (*v145)(v89, v160);

                  goto LABEL_16;
                }
              }

              dispatch_group_enter(v50);
              v56 = [objc_opt_self() defaultManager];
              v57 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v58 = swift_allocObject();
              v59 = v163;
              v58[2] = v50;
              v58[3] = v59;
              v58[4] = v57;
              v58[5] = v68;
              v60 = v172;
              v58[6] = v170;
              v58[7] = v60;
              v61 = v68;

              v62 = v50;

              v63 = [v61 itemID];
              v64 = swift_allocObject();
              v64[2] = v61;
              v64[3] = partial apply for closure #2 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:);
              v64[4] = v58;
              v177 = partial apply for closure #1 in FPItemManager.doc_refetchItem(_:completion:);
              v178 = v64;
              v173 = MEMORY[0x277D85DD0];
              v174 = 1107296256;
              v175 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
              v176 = &block_descriptor_102_0;
              v65 = _Block_copy(&v173);
              v66 = v61;

              [v56 fetchItemForItemID:v63 completionHandler:v65];
              _Block_release(v65);

LABEL_16:
              ++v54;
              v52 = v169;
              if (v168 == v54)
              {
                v90 = v169;

                v29 = MEMORY[0x277D84F90];
                goto LABEL_35;
              }
            }
          }

          __break(1u);
          goto LABEL_48;
        }
      }

      v90 = v52;

LABEL_35:
      v91 = v143;
      static DispatchTime.now()();
      v92 = v144;
      + infix(_:_:)();
      v93 = v142;
      v94 = *(v141 + 8);
      v94(v91, v142);
      MEMORY[0x24C1FB8F0](v92);
      v94(v92, v93);
      if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
      {

        v97 = v140;
        if (v29 >> 62)
        {
          v98 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {
          v98 = MEMORY[0x277D84F90];
          __EmptyArrayStorage.staticElementType.getter();
        }

        swift_beginAccess();
        specialized Array.append<A>(contentsOf:)(v98);
        swift_endAccess();
        goto LABEL_42;
      }

      v95 = specialized Sequence.compactMap<A>(_:)(v90, v137);

      if (!(v95 >> 62))
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        v96 = v95;
LABEL_38:

        swift_beginAccess();
        specialized Array.append<A>(contentsOf:)(v96);
        swift_endAccess();
        v97 = v140;
LABEL_42:

        goto LABEL_43;
      }

LABEL_48:

      v96 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_38;
    }
  }

LABEL_43:
  inited = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #0 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v172 = type metadata accessor for DOCItemCollectionViewController._DOCSectionDescriptor();
  v99 = swift_allocObject();
  *(v99 + 16) = MEMORY[0x277D84FA0];
  *(v99 + 24) = 0;
  *(v99 + 32) = v29;
  *(v99 + 40) = v29;
  *(v99 + 48) = 1;
  *(v99 + 56) = 2;
  *(v99 + 96) = 0;
  *(v99 + 80) = 0u;
  *(v99 + 64) = 0u;
  swift_beginAccess();
  *(v99 + 16) = inited;

  swift_beginAccess();
  *(v99 + 48) = 0;
  swift_beginAccess();
  v100 = v152;
  *(v99 + 64) = v153;
  *(v99 + 72) = v100;

  swift_beginAccess();
  *(v99 + 80) = xmmword_249BB6110;

  swift_beginAccess();
  *(v99 + 56) = 2;
  swift_beginAccess();
  *(v99 + 24) = 0;

  swift_beginAccess();
  *(v99 + 96) = 0;
  v170 = v99;

  if (specialized DOCActionManager.shouldShowAddToSubmenu(for:)(v164))
  {
    inited = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #1 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
    v101 = swift_allocObject();
    *(v101 + 16) = MEMORY[0x277D84FA0];
    *(v101 + 24) = 0;
    v102 = MEMORY[0x277D84F90];
    *(v101 + 32) = MEMORY[0x277D84F90];
    *(v101 + 40) = v102;
    *(v101 + 48) = 1;
    *(v101 + 56) = 2;
    *(v101 + 96) = 0;
    *(v101 + 80) = 0u;
    *(v101 + 64) = 0u;
    swift_beginAccess();
    *(v101 + 16) = inited;

    swift_beginAccess();
    *(v101 + 48) = 0;
    swift_beginAccess();
    *(v101 + 64) = countAndFlagsBits;
    *(v101 + 72) = object;

    swift_beginAccess();
    *(v101 + 80) = xmmword_249BA62B0;

    swift_beginAccess();
    *(v101 + 56) = 2;
    swift_beginAccess();
    *(v101 + 24) = 0;

    swift_beginAccess();
    *(v101 + 96) = 0;

    v169 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #2 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v103 = swift_allocObject();
    inited = v103;
    *(v103 + 16) = xmmword_249BA1010;
    v104 = v170;
    *(v103 + 32) = v101;
    *(v103 + 40) = v104;
    v105 = swift_allocObject();
    *(v105 + 16) = MEMORY[0x277D84FA0];
    *(v105 + 24) = 0;
    v106 = MEMORY[0x277D84F90];
    *(v105 + 32) = MEMORY[0x277D84F90];
    *(v105 + 40) = v106;
    *(v105 + 48) = 1;
    *(v105 + 56) = 2;
    *(v105 + 96) = 0;
    v168 = v105 + 96;
    *(v105 + 80) = 0u;
    *(v105 + 64) = 0u;
    swift_beginAccess();
    *(v105 + 16) = v169;

    swift_beginAccess();
    *(v105 + 48) = 1;
    swift_beginAccess();
    *(v105 + 64) = 0;
    *(v105 + 72) = 0;

    swift_beginAccess();
    *(v105 + 80) = 0;
    v169 = v105;
    *(v105 + 88) = 0;

    swift_beginAccess();
    *(v105 + 56) = 2;
    swift_beginAccess();
    *(v105 + 24) = 0;

    v107 = v168;
    swift_beginAccess();
    *v107 = inited;
  }

  else
  {

    v169 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #3 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v108 = swift_allocObject();
    inited = v108;
    *(v108 + 16) = xmmword_249BA0290;
    *(v108 + 32) = v170;
    v109 = swift_allocObject();
    *(v109 + 16) = MEMORY[0x277D84FA0];
    *(v109 + 24) = 0;
    v110 = MEMORY[0x277D84F90];
    *(v109 + 32) = MEMORY[0x277D84F90];
    *(v109 + 40) = v110;
    *(v109 + 48) = 1;
    *(v109 + 56) = 2;
    *(v109 + 96) = 0;
    *(v109 + 80) = 0u;
    *(v109 + 64) = 0u;
    swift_beginAccess();
    *(v109 + 16) = v169;

    swift_beginAccess();
    *(v109 + 48) = 1;
    swift_beginAccess();
    *(v109 + 64) = 0;
    *(v109 + 72) = 0;

    swift_beginAccess();
    *(v109 + 80) = 0;
    v169 = v109;
    *(v109 + 88) = 0;

    swift_beginAccess();
    *(v109 + 56) = 2;
    swift_beginAccess();
    *(v109 + 24) = 0;

    swift_beginAccess();
    *(v109 + 96) = inited;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BB6120;
  v168 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #4 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v111 = swift_allocObject();
  *(v111 + 16) = MEMORY[0x277D84FA0];
  *(v111 + 24) = 0;
  v112 = MEMORY[0x277D84F90];
  *(v111 + 32) = MEMORY[0x277D84F90];
  *(v111 + 40) = v112;
  *(v111 + 48) = 1;
  *(v111 + 56) = 2;
  *(v111 + 96) = 0;
  *(v111 + 80) = 0u;
  *(v111 + 64) = 0u;
  swift_beginAccess();
  *(v111 + 16) = v168;

  swift_beginAccess();
  *(v111 + 48) = 1;
  swift_beginAccess();
  *(v111 + 64) = 0;
  *(v111 + 72) = 0;

  swift_beginAccess();
  *(v111 + 80) = 0;
  *(v111 + 88) = 0;

  swift_beginAccess();
  *(v111 + 56) = 1;
  swift_beginAccess();
  *(v111 + 24) = &outlined read-only object #5 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:);

  swift_beginAccess();
  *(v111 + 96) = 0;

  v113 = inited;
  *(inited + 32) = v111;
  v168 = v113 + 32;
  v167 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #6 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v114 = swift_allocObject();
  *(v114 + 16) = MEMORY[0x277D84FA0];
  *(v114 + 24) = 0;
  v115 = MEMORY[0x277D84F90];
  *(v114 + 32) = MEMORY[0x277D84F90];
  *(v114 + 40) = v115;
  *(v114 + 48) = 1;
  *(v114 + 56) = 2;
  *(v114 + 96) = 0;
  *(v114 + 80) = 0u;
  *(v114 + 64) = 0u;
  swift_beginAccess();
  *(v114 + 16) = v167;

  swift_beginAccess();
  *(v114 + 48) = 1;
  swift_beginAccess();
  *(v114 + 64) = 0;
  *(v114 + 72) = 0;

  swift_beginAccess();
  *(v114 + 80) = 0;
  *(v114 + 88) = 0;

  swift_beginAccess();
  *(v114 + 56) = 2;
  swift_beginAccess();
  *(v114 + 24) = 0;

  swift_beginAccess();
  *(v114 + 96) = 0;

  *(inited + 40) = v114;
  v167 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #7 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v116 = swift_allocObject();
  *(v116 + 16) = MEMORY[0x277D84FA0];
  *(v116 + 24) = 0;
  v117 = MEMORY[0x277D84F90];
  *(v116 + 32) = MEMORY[0x277D84F90];
  *(v116 + 40) = v117;
  *(v116 + 48) = 1;
  *(v116 + 56) = 2;
  *(v116 + 96) = 0;
  *(v116 + 80) = 0u;
  *(v116 + 64) = 0u;
  swift_beginAccess();
  *(v116 + 16) = v167;

  swift_beginAccess();
  *(v116 + 48) = 1;
  swift_beginAccess();
  *(v116 + 64) = 0;
  *(v116 + 72) = 0;

  swift_beginAccess();
  *(v116 + 80) = 0;
  *(v116 + 88) = 0;

  swift_beginAccess();
  *(v116 + 56) = 2;
  swift_beginAccess();
  *(v116 + 24) = 0;

  swift_beginAccess();
  *(v116 + 96) = 0;

  *(inited + 48) = v116;
  v167 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #8 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v118 = swift_allocObject();
  *(v118 + 16) = MEMORY[0x277D84FA0];
  *(v118 + 24) = 0;
  v119 = MEMORY[0x277D84F90];
  *(v118 + 32) = MEMORY[0x277D84F90];
  *(v118 + 40) = v119;
  *(v118 + 48) = 1;
  *(v118 + 56) = 2;
  *(v118 + 96) = 0;
  *(v118 + 80) = 0u;
  *(v118 + 64) = 0u;
  swift_beginAccess();
  *(v118 + 16) = v167;

  swift_beginAccess();
  *(v118 + 48) = 1;
  swift_beginAccess();
  *(v118 + 64) = 0;
  *(v118 + 72) = 0;

  swift_beginAccess();
  *(v118 + 80) = 0;
  *(v118 + 88) = 0;

  swift_beginAccess();
  *(v118 + 56) = 2;
  swift_beginAccess();
  *(v118 + 24) = 0;

  swift_beginAccess();
  *(v118 + 96) = 0;

  *(inited + 56) = v118;
  v167 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #9 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v120 = swift_allocObject();
  *(v120 + 16) = MEMORY[0x277D84FA0];
  *(v120 + 24) = 0;
  v121 = MEMORY[0x277D84F90];
  *(v120 + 32) = MEMORY[0x277D84F90];
  *(v120 + 40) = v121;
  *(v120 + 48) = 1;
  *(v120 + 56) = 2;
  *(v120 + 96) = 0;
  *(v120 + 80) = 0u;
  *(v120 + 64) = 0u;
  swift_beginAccess();
  *(v120 + 16) = v167;

  swift_beginAccess();
  *(v120 + 48) = 1;
  swift_beginAccess();
  *(v120 + 64) = 0;
  *(v120 + 72) = 0;

  swift_beginAccess();
  *(v120 + 80) = 0;
  *(v120 + 88) = 0;

  swift_beginAccess();
  *(v120 + 56) = 2;
  swift_beginAccess();
  *(v120 + 24) = 0;

  swift_beginAccess();
  *(v120 + 96) = 0;

  *(inited + 64) = v120;
  v167 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #10 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v122 = swift_allocObject();
  *(v122 + 16) = MEMORY[0x277D84FA0];
  *(v122 + 24) = 0;
  v123 = MEMORY[0x277D84F90];
  *(v122 + 32) = MEMORY[0x277D84F90];
  *(v122 + 40) = v123;
  *(v122 + 48) = 1;
  *(v122 + 56) = 2;
  *(v122 + 96) = 0;
  *(v122 + 80) = 0u;
  *(v122 + 64) = 0u;
  swift_beginAccess();
  *(v122 + 16) = v167;

  swift_beginAccess();
  *(v122 + 48) = 1;
  swift_beginAccess();
  *(v122 + 64) = 0;
  *(v122 + 72) = 0;

  swift_beginAccess();
  *(v122 + 80) = 0;
  *(v122 + 88) = 0;

  swift_beginAccess();
  *(v122 + 56) = 2;
  swift_beginAccess();
  *(v122 + 24) = 0;

  swift_beginAccess();
  *(v122 + 96) = 0;

  *(inited + 72) = v122;
  v167 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #11 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v124 = swift_allocObject();
  *(v124 + 16) = MEMORY[0x277D84FA0];
  *(v124 + 24) = 0;
  v125 = MEMORY[0x277D84F90];
  *(v124 + 32) = MEMORY[0x277D84F90];
  *(v124 + 40) = v125;
  *(v124 + 48) = 1;
  *(v124 + 56) = 2;
  *(v124 + 96) = 0;
  *(v124 + 80) = 0u;
  *(v124 + 64) = 0u;
  swift_beginAccess();
  *(v124 + 16) = v167;

  swift_beginAccess();
  *(v124 + 48) = 1;
  swift_beginAccess();
  *(v124 + 64) = 0;
  *(v124 + 72) = 0;

  swift_beginAccess();
  *(v124 + 80) = 0;
  *(v124 + 88) = 0;

  swift_beginAccess();
  *(v124 + 56) = 2;
  swift_beginAccess();
  *(v124 + 24) = 0;

  swift_beginAccess();
  *(v124 + 96) = 0;

  v126 = inited;
  v127 = v169;
  *(inited + 80) = v124;
  *(v126 + 88) = v127;
  v167 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #12 of DOCItemCollectionViewController.contextMenu(for:in:currentConfiguration:));
  v128 = swift_allocObject();
  *(v128 + 16) = MEMORY[0x277D84FA0];
  *(v128 + 24) = 0;
  v129 = MEMORY[0x277D84F90];
  *(v128 + 32) = MEMORY[0x277D84F90];
  *(v128 + 40) = v129;
  *(v128 + 48) = 1;
  *(v128 + 56) = 2;
  *(v128 + 96) = 0;
  *(v128 + 80) = 0u;
  *(v128 + 64) = 0u;
  swift_beginAccess();
  *(v128 + 16) = v167;

  swift_beginAccess();
  *(v128 + 48) = 1;
  swift_beginAccess();
  *(v128 + 64) = 0;
  *(v128 + 72) = 0;

  swift_beginAccess();
  *(v128 + 80) = 0;
  *(v128 + 88) = 0;

  swift_beginAccess();
  *(v128 + 56) = 2;
  swift_beginAccess();
  *(v128 + 24) = 0;

  swift_beginAccess();
  *(v128 + 96) = 0;

  v130 = inited;
  *(inited + 96) = v128;
  swift_beginAccess();
  v131 = v180;
  v132 = swift_allocObject();
  *(v132 + 16) = v164;

  specialized DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v133, v155, v131, partial apply for contextMenuActionOverrider #1 (_:) in DOCItemInfoContentViewController.contextMenu(for:in:currentConfiguration:), v132, v130);
  v135 = v134;

  swift_setDeallocating();
  swift_arrayDestroy();
  return v135;
}

uint64_t specialized DOCItemCollectionViewController.folderActionsMenu(for:currentConfiguration:actionOverrider:)(uint64_t a1, uint64_t (*a2)(void, __n128), uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249BA0290;
  *(v16 + 32) = a1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA37E0;
  v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #0 of DOCItemCollectionViewController.folderActionsMenu(for:currentConfiguration:actionOverrider:));
  type metadata accessor for DOCItemCollectionViewController._DOCSectionDescriptor();
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84FA0];
  *(v5 + 24) = 0;
  v6 = MEMORY[0x277D84F90];
  *(v5 + 32) = MEMORY[0x277D84F90];
  *(v5 + 40) = v6;
  *(v5 + 48) = 1;
  *(v5 + 56) = 2;
  *(v5 + 96) = 0;
  *(v5 + 80) = 0u;
  *(v5 + 64) = 0u;
  swift_beginAccess();
  *(v5 + 16) = v4;
  swift_unknownObjectRetain();

  swift_beginAccess();
  *(v5 + 48) = 1;
  swift_beginAccess();
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;

  swift_beginAccess();
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;

  swift_beginAccess();
  *(v5 + 56) = 2;
  swift_beginAccess();
  *(v5 + 24) = 0;

  swift_beginAccess();
  *(v5 + 96) = 0;

  *(inited + 32) = v5;
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #1 of DOCItemCollectionViewController.folderActionsMenu(for:currentConfiguration:actionOverrider:));
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84FA0];
  *(v8 + 24) = 0;
  v9 = MEMORY[0x277D84F90];
  *(v8 + 32) = MEMORY[0x277D84F90];
  *(v8 + 40) = v9;
  *(v8 + 48) = 1;
  *(v8 + 56) = 2;
  *(v8 + 96) = 0;
  *(v8 + 80) = 0u;
  *(v8 + 64) = 0u;
  swift_beginAccess();
  *(v8 + 16) = v7;

  swift_beginAccess();
  *(v8 + 48) = 1;
  swift_beginAccess();
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;

  swift_beginAccess();
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;

  swift_beginAccess();
  *(v8 + 56) = 2;
  swift_beginAccess();
  *(v8 + 24) = 0;

  swift_beginAccess();
  *(v8 + 96) = 0;

  *(inited + 40) = v8;
  v10 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo36UIDocumentBrowserActionMenuSortOrderV_Tt0g5Tf4g_n(&outlined read-only object #2 of DOCItemCollectionViewController.folderActionsMenu(for:currentConfiguration:actionOverrider:));
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84FA0];
  *(v11 + 24) = 0;
  v12 = MEMORY[0x277D84F90];
  *(v11 + 32) = MEMORY[0x277D84F90];
  *(v11 + 40) = v12;
  *(v11 + 48) = 1;
  *(v11 + 56) = 2;
  *(v11 + 96) = 0;
  *(v11 + 80) = 0u;
  *(v11 + 64) = 0u;
  swift_beginAccess();
  *(v11 + 16) = v10;

  swift_beginAccess();
  *(v11 + 48) = 1;
  swift_beginAccess();
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;

  swift_beginAccess();
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;

  swift_beginAccess();
  *(v11 + 56) = 2;
  swift_beginAccess();
  *(v11 + 24) = 0;

  swift_beginAccess();
  *(v11 + 96) = 0;

  *(inited + 48) = v11;
  specialized DOCItemCollectionViewController.actionsMenu(for:in:suggestedDestinations:currentConfiguration:actionOverrider:sections:)(v16, 0, 0, a2, a3, inited);
  v14 = v13;

  swift_setDeallocating();
  swift_arrayDestroy();
  return v14;
}

void partial apply for closure #1 in closure #1 in DOCItemCollectionViewController.displayInfoForCurrentItem(_:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);

  closure #1 in closure #1 in DOCItemCollectionViewController.displayInfoForCurrentItem(_:)(v0 + v2, v6, v7, v8, v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
}

id DOCSharedServerSource.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCSharedServerSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void UITraitCollection.doc_preferredValidatedLayoutSizeCategory(_:)(uint64_t (*a1)(_BYTE *)@<X0>, _BYTE *a2@<X8>)
{
  v5 = [v2 preferredContentSizeCategory];
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    v6 = static UIContentSizeCategory.> infix(_:_:)();

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {

    v7 = 0;
  }

  v12[1] = v7;
  v8 = DOCContentLayoutSizeCategory.categoriesInDescendingOrder.getter();
  v9 = 0;
  v10 = *(v8 + 16);
  while (1)
  {
    if (v10 == v9)
    {
      v11 = 0;
LABEL_12:

      *a2 = v11;
      return;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    v11 = *(v8 + v9++ + 32);
    v12[0] = v11;
    if (a1(v12))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t DOCContentLayoutSizeCategory.categoriesInDescendingOrder.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables28DOCContentLayoutSizeCategoryOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables28DOCContentLayoutSizeCategoryOGMR);
  if (v1)
  {
    result = swift_allocObject();
    if (v1 == 1)
    {
      *(result + 16) = xmmword_249B9FA70;
      *(result + 32) = 1;
      v3 = (result + 33);
    }

    else
    {
      *(result + 16) = xmmword_249BA08C0;
      *(result + 32) = 258;
      v3 = (result + 34);
    }
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = xmmword_249B9A480;
    v3 = (result + 32);
  }

  *v3 = 0;
  return result;
}

DocumentManagerExecutables::DOCContentLayoutSizeCategory_optional __swiftcall DOCContentLayoutSizeCategory.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type DOCContentLayoutSizeCategory and conformance DOCContentLayoutSizeCategory()
{
  result = lazy protocol witness table cache variable for type DOCContentLayoutSizeCategory and conformance DOCContentLayoutSizeCategory;
  if (!lazy protocol witness table cache variable for type DOCContentLayoutSizeCategory and conformance DOCContentLayoutSizeCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCContentLayoutSizeCategory and conformance DOCContentLayoutSizeCategory);
  }

  return result;
}

uint64_t DOCDragPasteboardType.typeIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DOCDragPasteboardType(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCDragPasteboardType(v1, v11, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (*v11)
      {
        return 0xD000000000000029;
      }

      else
      {
        return 0xD000000000000025;
      }
    }

    else
    {
      (*(v3 + 32))(v6, v11, v2);
      v14 = UTType.identifier.getter();
      (*(v3 + 8))(v6, v2);
      return v14;
    }
  }

  else if (*v11)
  {
    return 0xD000000000000029;
  }

  else
  {
    return 0xD000000000000025;
  }
}

unint64_t DOCFPItemDragPasteboardType.typeIdentifier.getter()
{
  if (*v0)
  {
    return 0xD000000000000029;
  }

  else
  {
    return 0xD000000000000025;
  }
}

unint64_t DOCFINodeDragPasteboardType.typeIdentifier.getter()
{
  if (*v0)
  {
    return 0xD000000000000029;
  }

  else
  {
    return 0xD000000000000025;
  }
}

uint64_t DOCDragPasteboardType.isFPItemFileOrLocation.getter(uint64_t a1, double a2)
{
  v2 = type metadata accessor for DOCDragPasteboardType(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDragPasteboardTypeOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDragPasteboardTypeOGMR);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249B9FA70;
  v10 = v9 + v8;
  *(v9 + v8) = 0;
  swift_storeEnumTagMultiPayload();
  v11 = 1;
  *(v10 + v7) = 1;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of DOCDragPasteboardType(v10, v6, v12);
  v13 = DOCDragPasteboardType.conforms(to:)(v6);
  _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(v6, type metadata accessor for DOCDragPasteboardType);
  if ((v13 & 1) == 0)
  {
    outlined init with copy of DOCDragPasteboardType(v10 + v7, v6, v14);
    v11 = DOCDragPasteboardType.conforms(to:)(v6);
    _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(v6, type metadata accessor for DOCDragPasteboardType);
  }

  return v11 & 1;
}

Swift::Bool __swiftcall String.conformsToAnyOf(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for DOCDragPasteboardType(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCDragPasteboardTypeOSgMd, &_s26DocumentManagerExecutables21DOCDragPasteboardTypeOSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v21 - v13;

  DOCDragPasteboardType.init(_:)(v4, v3, v14);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables21DOCDragPasteboardTypeOSgMd, &_s26DocumentManagerExecutables21DOCDragPasteboardTypeOSgMR);
    return 0;
  }

  else
  {
    v17 = 0;
    v18 = *(a1._rawValue + 2);
    do
    {
      v16 = v18 != v17;
      if (v18 == v17)
      {
        break;
      }

      outlined init with copy of DOCDragPasteboardType(a1._rawValue + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17++, v10, v15);
      v19 = DOCDragPasteboardType.conforms(to:)(v10);
      _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(v10, type metadata accessor for DOCDragPasteboardType);
    }

    while ((v19 & 1) == 0);
    _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(v14, type metadata accessor for DOCDragPasteboardType);
  }

  return v16;
}

unint64_t specialized Collection.dropFirst(_:)(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a1;
    if (!(a2 >> 62))
    {
      result = specialized ReversedCollection.index(_:offsetBy:limitedBy:)(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a1, 0);
      if (v5)
      {
        result = 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= result)
      {
        return result;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  v6 = __CocoaSet.count.getter();
  result = specialized ReversedCollection.index(_:offsetBy:limitedBy:)(v6, v2, 0);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = result;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = result;
  result = v8;
  if (v9 < v8)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t UTType.capitalizedSentenceLocalizedDescription.getter(uint64_t a1)
{
  result = UTType.localizedDescription.getter();
  if (v2)
  {
    v3 = v2;
    v4 = result;
    specialized Collection.prefix(_:)(1, result, v2);
    countAndFlagsBits = Substring.uppercased()()._countAndFlagsBits;

    specialized Collection.dropFirst(_:)(1uLL, v4, v3);

    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    return countAndFlagsBits;
  }

  return result;
}

void URL.contentType.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UTType();
  v13[0] = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.isFileURL.getter())
  {
    v13[1] = a1;
    v9 = URL.startAccessingSecurityScopedResource()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    v11 = *MEMORY[0x277CBE7B8];
    *(inited + 32) = *MEMORY[0x277CBE7B8];
    v12 = v11;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(inited + 32, type metadata accessor for NSURLResourceKey);
    URL.resourceValues(forKeys:)();

    URLResourceValues.contentType.getter();
    (*(v5 + 8))(v8, v4);
    if (v9)
    {
      URL.stopAccessingSecurityScopedResource()();
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL UTType.isClaimed(for:handlerRank:)(unsigned __int8 a1, uint64_t a2, double a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = UTType.identifier.getter();
  v6 = MEMORY[0x24C1FAD20](v5);

  v7 = [objc_opt_self() documentProxyForName:0 type:v6 MIMEType:0];

  v17[0] = 0;
  v8 = [v7 availableClaimBindingsForMode:a1 handlerRank:a2 error:v17];
  v9 = v17[0];
  if (v8)
  {
    v10 = v8;
    type metadata accessor for LSClaimBinding();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v9;

    if (v11 >> 62)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v13 != 0;
  }

  else
  {
    v15 = v17[0];
    v16 = _convertNSErrorToError(_:)();

    swift_willThrow();
    return 0;
  }
}

uint64_t URL.promisedContentType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v2, v3);
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = URL.isFileURL.getter();
  if (result)
  {
    v13[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    v11 = *MEMORY[0x277CBE7B8];
    *(inited + 32) = *MEMORY[0x277CBE7B8];
    v12 = v11;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _s26DocumentManagerExecutables21DOCDragPasteboardTypeOWOhTm_0(inited + 32, type metadata accessor for NSURLResourceKey);
    URL.promisedItemResourceValues(forKeys:)();

    URLResourceValues.contentType.getter();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for docMobileConfig()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.docMobileConfig);
  v5 = __swift_project_value_buffer(v4, static UTType.docMobileConfig);
  UTType.init(_:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for docMobileProvision()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v8 - v2;
  v4 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v4, static UTType.docMobileProvision);
  v5 = __swift_project_value_buffer(v4, static UTType.docMobileProvision);
  UTType.init(_:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t String.capitalizedSentence.getter(uint64_t a1, unint64_t a2)
{

  specialized Collection.prefix(_:)(1, a1, a2);

  countAndFlagsBits = Substring.uppercased()()._countAndFlagsBits;

  specialized Collection.dropFirst(_:)(1uLL, a1, a2);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return countAndFlagsBits;
}

uint64_t one-time initialization function for DOCAcceptableDragPasteboardTypes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDragPasteboardTypeOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDragPasteboardTypeOGMR);
  v0 = *(type metadata accessor for DOCDragPasteboardType(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  v3[1] = xmmword_249BBE7A0;
  v4 = v3 + v2;
  *v4 = 0;
  swift_storeEnumTagMultiPayload();
  v4[v1] = 1;
  swift_storeEnumTagMultiPayload();
  v4[2 * v1] = 0;
  swift_storeEnumTagMultiPayload();
  v4[3 * v1] = 1;
  swift_storeEnumTagMultiPayload();
  v4[4 * v1] = 2;
  swift_storeEnumTagMultiPayload();
  static UTType.content.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.directory.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.emailMessage.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.archive.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.zip.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.executable.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.database.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.diskImage.getter();
  swift_storeEnumTagMultiPayload();
  static UTType.realityFile.getter();
  result = swift_storeEnumTagMultiPayload();
  DOCAcceptableDragPasteboardTypes._rawValue = v3;
  return result;
}

double DOCAcceptableDragPasteboardTypes.getter()
{
  if (one-time initialization token for DOCAcceptableDragPasteboardTypes != -1)
  {
    swift_once();
  }

  return result;
}

DocumentManagerExecutables::DOCFPItemDragPasteboardType_optional __swiftcall DOCFPItemDragPasteboardType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DOCFPItemDragPasteboardType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}