uint64_t DOCCopyOperation.doc_transferResults(from:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v136 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for URL();
  v131 = *(v134 - 8);
  v6 = *(v131 + 64);
  MEMORY[0x28223BE20](v134, v7);
  MEMORY[0x28223BE20](v8, v9);
  v122 = &v107 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v123 = &v107 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v132 = &v107 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v130 = &v107 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v133 = &v107 - v22;
  v23 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v23, v24);
  v138 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DispatchQoS();
  v135 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v26);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v113 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v5;
  v112 = v2;
  specialized DOCCopyOperation.associateThumbnails(on:)(a1);
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D84F90];
  v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_So7DOCNode_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v125 = v34;
  *(v34 + 16) = v36;
  v116 = v34 + 16;
  v126 = dispatch_group_create();
  v137 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v30 + 104))(v33, *MEMORY[0x277D85268], v29);
  static DispatchQoS.unspecified.getter();
  *&aBlock = v35;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v37 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v110 = v28;
  v124 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v38 = a1 + 64;
  v39 = 1 << *(a1 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(a1 + 64);
  v121 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems;
  v115 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem;
  v42 = (v39 + 63) >> 6;
  v43 = v131;
  v137 = v131 + 32;
  v138 = (v131 + 16);
  v120 = v37;
  v109 = v37 + 7;
  v119 = &v141;
  v108 = (v136 + 8);
  v107 = (v135 + 8);
  v128 = (v131 + 8);

  v44 = 0;
  v45 = a1;
  v46 = v134;
  v47 = v130;
  v129 = v42;
  while (v41)
  {
LABEL_12:
    v49 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v50 = v43[9];
    v51 = v45[6] + v50 * (v49 | (v44 << 6));
    v52 = v133;
    v135 = v43[2];
    (v135)(v133, v51, v46);
    v136 = v43[4];
    (v136)(v47, v52, v46);
    if (!v45[2] || (v53 = specialized __RawDictionaryStorage.find<A>(_:)(v47), (v54 & 1) == 0))
    {
      (*v128)(v47, v46);
      goto LABEL_6;
    }

    v55 = v45[7] + v53 * v50;
    v56 = v123;
    (v135)(v123, v55, v46);
    (v136)(v132, v56, v46);
    dispatch_group_enter(v126);
    v57 = *&v127[v121];
    if (v57 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_31:
        v142 = 0;
        aBlock = 0u;
        v141 = 0u;
        outlined destroy of CharacterSet?(&aBlock, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMd, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMR);
        v118 = [objc_opt_self() defaultManager];
        URL._bridgeToObjectiveC()(&v144);
        v117 = v89;
        v90 = v122;
        (v135)(v122, v130, v46);
        v91 = (*(v131 + 80) + 40) & ~*(v131 + 80);
        v92 = swift_allocObject();
        v93 = v126;
        v94 = v124;
        v92[2] = v126;
        v92[3] = v94;
        v92[4] = v125;
        v95 = v90;
        v47 = v130;
        (v136)(v92 + v91, v95, v134);
        v142 = partial apply for closure #2 in DOCCopyOperation.doc_transferResults(from:);
        v143 = v92;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v141 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
        *(&v141 + 1) = &block_descriptor_49;
        v96 = _Block_copy(&aBlock);
        v97 = v93;

        v98 = v94;
        v46 = v134;

        v99 = v118;
        v100 = v117;
        [v118 fetchItemForURL:v117 completionHandler:v96];
        _Block_release(v96);

        v43 = v131;
        v101 = v43[1];
        v101(v132, v46);
        v101(v47, v46);
        goto LABEL_6;
      }
    }

    else if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    if ((specialized DOCCopyOperation.itemSupportsDSCopy(_:)(*&v127[v115]) & 1) == 0)
    {
      goto LABEL_31;
    }

    v118 = v45;
    if (v57 >> 62)
    {
      v58 = __CocoaSet.count.getter();
    }

    else
    {
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v117 = v127;
    v59 = 0;
    while (v58 != v59)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x24C1FC540](v59, v57);
      }

      else
      {
        if (v59 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v60 = *(v57 + 8 * v59 + 32);
      }

      v61 = v60;
      if (__OFADD__(v59, 1))
      {
        goto LABEL_38;
      }

      v62 = specialized DOCCopyOperation.itemSupportsDSCopy(_:)(v60);

      ++v59;
      if ((v62 & 1) == 0)
      {
        v88 = v117;

        v45 = v118;
        v46 = v134;
        goto LABEL_31;
      }
    }

    v63 = v117;

    v64 = DOCCreateDSNSHelperContext();
    v65 = v134;
    if (!v64)
    {
      goto LABEL_40;
    }

    v66 = v64;
    v67 = type metadata accessor for DOCDSCopyEngineXPCConnection();
    inited = swift_initStackObject();
    *(inited + 16) = v66;
    *(&v141 + 1) = v67;
    v142 = &protocol witness table for DOCDSCopyEngineXPCConnection;
    *&aBlock = inited;
    outlined destroy of CharacterSet?(&aBlock, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMd, &_s26DocumentManagerExecutables25DOCDSCopyEngineConnection33_1A6F5D64598A35CAA4B79CA18E1ADB8BLL_pSgMR);
    v69 = v122;
    v70 = v135;
    (v135)(v122, v132, v65);
    v70(v113, v130, v65);
    v71 = *(v131 + 80);
    v72 = (v71 + 16) & ~v71;
    v73 = (v109 + v72) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v71 + v74 + 8) & ~v71;
    v76 = swift_allocObject();
    v77 = v76 + v72;
    v78 = v136;
    (v136)(v77, v69, v134);
    v79 = v126;
    *(v76 + v73) = v126;
    *(v76 + v74) = v125;
    v78(v76 + v75, v113, v134);
    v142 = partial apply for closure #1 in DOCCopyOperation.doc_transferResults(from:);
    v143 = v76;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v141 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v141 + 1) = &block_descriptor_55;
    v80 = _Block_copy(&aBlock);
    v81 = v79;

    v82 = v110;
    static DispatchQoS.unspecified.getter();
    v139 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v83 = v111;
    v84 = v112;
    v46 = v134;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v82, v83, v80);
    _Block_release(v80);
    v85 = v83;
    v47 = v130;
    v86 = v84;
    v43 = v131;
    (*v108)(v85, v86);
    (*v107)(v82, v114);
    v87 = v43[1];
    v87(v132, v46);
    v87(v47, v46);

    v45 = v118;
LABEL_6:
    v42 = v129;
  }

  while (1)
  {
    v48 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v48 >= v42)
    {

      v102 = v126;
      OS_dispatch_group.wait()();
      swift_beginAccess();
      v103 = v125;

      DOCCopyOperation.updateLastUsedDate(on:)(v104);

      v105 = *(v103 + 16);

      return v105;
    }

    v41 = *(v38 + 8 * v48);
    ++v44;
    if (v41)
    {
      v44 = v48;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in DOCCopyOperation.doc_transferResults(from:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v15 - v9;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = static FINode.docNode(from:)(v10);
  outlined destroy of CharacterSet?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v13)
  {
    swift_beginAccess();
    v14 = v13;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *(a3 + 16) = v15;
    swift_endAccess();
    dispatch_group_leave(a2);
  }

  else
  {
    dispatch_group_leave(a2);
  }
}

void closure #2 in DOCCopyOperation.doc_transferResults(from:)(void *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v38 = a5;
  v41 = a4;
  v42 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v22 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    v33 = v42;

    dispatch_group_leave(v33);
  }

  else
  {
    (*(v18 + 16))(&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v17, v21);
    v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v36 = v8;
    v37 = v9;
    v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v35 = v12;
    *(v26 + 16) = v38;
    (*(v18 + 32))(v26 + v23, v22, v17);
    *(v26 + v24) = a1;
    v27 = v42;
    *(v26 + v25) = v42;
    aBlock[4] = partial apply for closure #1 in closure #2 in DOCCopyOperation.doc_transferResults(from:);
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_61;
    v28 = _Block_copy(aBlock);
    v29 = a1;

    v30 = v27;
    static DispatchQoS.unspecified.getter();
    v43 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v32 = v35;
    v31 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v16, v32, v28);
    _Block_release(v28);

    (*(v37 + 8))(v32, v31);
    (*(v39 + 8))(v16, v40);
  }
}

void closure #1 in closure #2 in DOCCopyOperation.doc_transferResults(from:)(uint64_t a1, uint64_t a2, void *a3, NSObject *a4)
{
  swift_beginAccess();
  v7 = a3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  *(a1 + 16) = v8;
  swift_endAccess();
  dispatch_group_leave(a4);
}

void DOCCopyOperation.updateLastUsedDate(on:)(uint64_t a1)
{
  v82 = a1;
  v69 = type metadata accessor for Date();
  v2 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v3);
  v68 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v67 = &v64 - v7;
  MEMORY[0x28223BE20](v8, v9);
  v66 = &v64 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v75 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetSgMd, &_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetSgMR);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v78 = (&v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v64 - v25;
  v27 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v70 = v1;
  v28 = v27(v24);
  if (!v28)
  {
    return;
  }

  v29 = 0;
  v76 = v28;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v12;
  v33 = v31 & *(v28 + 64);
  v34 = (v30 + 63) >> 6;
  v72 = v28 + 64;
  v73 = v32 + 16;
  v80 = v15;
  v81 = (v32 + 32);
  v74 = v32;
  v77 = (v32 + 8);
  v64 = (v2 + 32);
  v65 = (v2 + 8);
  v79 = v26;
  v71 = v11;
  while (v33)
  {
    v35 = v29;
LABEL_17:
    v38 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v39 = v38 | (v35 << 6);
    v40 = v75;
    v41 = *(*(v76 + 48) + 8 * v39);
    v42 = v74;
    (*(v74 + 16))(v75, *(v76 + 56) + *(v74 + 72) * v39, v11);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetMd, &_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetMR);
    v44 = *(v43 + 48);
    v45 = v11;
    v46 = v78;
    *v78 = v41;
    v47 = v40;
    v48 = v45;
    (*(v42 + 32))(v46 + v44, v47);
    (*(*(v43 - 8) + 56))(v46, 0, 1, v43);

    v26 = v79;
    v15 = v80;
LABEL_18:
    outlined init with take of (key: URL, value: FPItem)(v46, v26, &_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetSgMd, &_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetSgMR);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetMd, &_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetMR);
    if ((*(*(v49 - 8) + 48))(v26, 1, v49) == 1)
    {

      return;
    }

    v11 = v48;
    (*v81)(v15, &v26[*(v49 + 48)], v48);
    if (!*(v82 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v15), (v50 & 1) == 0))
    {

      v57 = *v77;
      v58 = v15;
      v59 = v48;
      goto LABEL_27;
    }

    v51 = *v77;
    swift_unknownObjectRetain();
    v51(v15, v48);
    swift_getObjectType();
    v52 = DOCNode.fpfs_syncFetchFPItem()();
    swift_unknownObjectRelease();
    if (v52)
    {
      swift_getObjectType();
      v53 = DOCNode.fpfs_syncFetchFPItem()();
      if (!v53)
      {

        goto LABEL_6;
      }

      v54 = v53;
      v55 = [v70 lastUsageUpdatePolicy];
      if (v55 == 1)
      {
        v61 = [v54 lastUsedDate];
        v26 = v79;
        v15 = v80;
        v11 = v71;
        if (v61)
        {
          v62 = v61;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v63 = v66;
          (*v64)(v66, v67, v69);
          FPItem.setLastOpenDate(_:delay:)(v63, 0.0);

          v58 = v66;
          v57 = *v65;
          goto LABEL_31;
        }

LABEL_32:
      }

      else
      {
        v26 = v79;
        v15 = v80;
        v11 = v71;
        if (v55 != 2)
        {
          goto LABEL_32;
        }

        v56 = v68;
        Date.init()();
        FPItem.setLastOpenDate(_:delay:)(v56, 0.0);

        v57 = *v65;
        v58 = v68;
LABEL_31:
        v59 = v69;
LABEL_27:
        v57(v58, v59);
      }
    }

    else
    {
LABEL_6:

      v26 = v79;
      v15 = v80;
      v11 = v71;
    }
  }

  if (v34 <= v29 + 1)
  {
    v36 = v29 + 1;
  }

  else
  {
    v36 = v34;
  }

  v37 = v36 - 1;
  while (1)
  {
    v35 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v35 >= v34)
    {
      v48 = v11;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetMd, &_s26DocumentManagerExecutables15DOCHashableNodeC3key_10Foundation3URLV5valuetMR);
      v46 = v78;
      (*(*(v60 - 8) + 56))(v78, 1, 1, v60);
      v33 = 0;
      v29 = v37;
      goto LABEL_18;
    }

    v33 = *(v72 + 8 * v35);
    ++v29;
    if (v33)
    {
      v29 = v35;
      goto LABEL_17;
    }
  }

  __break(1u);
}

Swift::Int closure #1 in DOCCopyOperation.copyWithDSCopyEngine(_:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v36 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_projectBox();
  outlined init with copy of URL?(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of CharacterSet?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v24 = static DOCLog.UI;
    v25 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_249BA08C0;
    v27 = MEMORY[0x277D837D0];
    *(v26 + 56) = MEMORY[0x277D837D0];
    v28 = lazy protocol witness table accessor for type String and conformance String();
    *(v26 + 64) = v28;
    *(v26 + 32) = 0xD000000000000018;
    *(v26 + 40) = 0x8000000249BC93D0;
    *(v26 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    *(v26 + 104) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem, 0x277CC63E8, MEMORY[0x277D85388]);
    *(v26 + 72) = a4;
    if (a2)
    {
      v29 = a4;
      v30 = _convertErrorToNSError(_:)();
      v38 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
      v39 = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8, MEMORY[0x277D85388]);
      *&v37 = v30;
      outlined init with take of DOCGoToFolderCandidate(&v37, v26 + 112);
    }

    else
    {
      *(v26 + 136) = v27;
      *(v26 + 144) = v28;
      strcpy((v26 + 112), "Unknown error");
      *(v26 + 126) = -4864;
      v32 = a4;
    }

    os_log(_:dso:log:type:_:)("%@: Unable to fetch URL for destination FPItem %@, %@", 53, 2, &dword_2493AC000, v24, v25, v26, v36);

    swift_beginAccess();
    v33 = *(a5 + 16);
    *(a5 + 16) = a2;
    v34 = a2;
  }

  else
  {
    v31 = *(v19 + 32);
    v31(v22, v17, v18);
    v31(v13, v22, v18);
    (*(v19 + 56))(v13, 0, 1, v18);
    swift_beginAccess();
    outlined assign with take of URL?(v13, v23);
  }

  return OS_dispatch_semaphore.signal()();
}

uint64_t closure #1 in closure #2 in DOCCopyOperation.copyWithDSCopyEngine(_:)(uint64_t a1, void *a2, NSObject *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v61 = a7;
  v62 = a8;
  v60 = a6;
  v68 = a2;
  v69 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v14);
  v63 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v24 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v56 - v27;
  outlined init with copy of URL?(a1, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of CharacterSet?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    dispatch_group_leave(v69);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v29 = static DOCLog.UI;
    v30 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_249BA08C0;
    v32 = MEMORY[0x277D837D0];
    *(v31 + 56) = MEMORY[0x277D837D0];
    v33 = lazy protocol witness table accessor for type String and conformance String();
    *(v31 + 64) = v33;
    *(v31 + 32) = 0xD000000000000018;
    *(v31 + 40) = 0x8000000249BC93D0;
    *(v31 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    *(v31 + 104) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem, 0x277CC63E8, MEMORY[0x277D85388]);
    *(v31 + 72) = a4;
    v34 = v68;
    if (v68)
    {
      v35 = a4;
      v36 = _convertErrorToNSError(_:)();
      v72 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
      v73 = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8, MEMORY[0x277D85388]);
      *&aBlock = v36;
      outlined init with take of DOCGoToFolderCandidate(&aBlock, v31 + 112);
    }

    else
    {
      *(v31 + 136) = v32;
      *(v31 + 144) = v33;
      strcpy((v31 + 112), "Unknown error");
      *(v31 + 126) = -4864;
      v53 = a4;
    }

    os_log(_:dso:log:type:_:)("%@: Unable to fetch URL for source FPItem %@, %@", 48, 2, &dword_2493AC000, v29, v30, v31);

    swift_beginAccess();
    v54 = *(a5 + 16);
    if (!v54)
    {
      v55 = v34;
      v54 = v34;
    }

    result = swift_beginAccess();
    *(a5 + 16) = v54;
  }

  else
  {
    v68 = v11;
    v57 = a4;
    v37 = *(v21 + 32);
    v59 = v28;
    v37(v28, v19, v20);
    (*(v21 + 16))(v24, v28, v20);
    v38 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v39 = (v22 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v58 = v20;
    *(v41 + 16) = v61;
    v37((v41 + v38), v24, v20);
    v42 = v62;
    *(v41 + v39) = v62;
    v43 = v57;
    *(v41 + v40) = v57;
    v44 = v69;
    *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
    v73 = partial apply for closure #1 in closure #1 in closure #2 in DOCCopyOperation.copyWithDSCopyEngine(_:);
    v74 = v41;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v71 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v72 = &block_descriptor_31;
    v45 = _Block_copy(&aBlock);

    v46 = v42;
    v47 = v43;
    v48 = v44;
    v49 = v63;
    static DispatchQoS.unspecified.getter();
    v75 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v50 = v65;
    v51 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v49, v50, v45);
    _Block_release(v45);
    (*(v67 + 8))(v50, v51);
    (*(v64 + 8))(v49, v66);
    (*(v21 + 8))(v59, v58);
  }

  return result;
}

void closure #1 in closure #1 in closure #2 in DOCCopyOperation.copyWithDSCopyEngine(_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, NSObject *a5)
{
  v19 = a5;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a2, v9, v12);
  swift_beginAccess();
  v15 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
    *(a1 + 16) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  (*(v10 + 32))(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v14, v9);
  *(a1 + 16) = v15;
  specialized DOCCopyOperation.map(sourceNode:toURL:)(a4, a2, a3);
  dispatch_group_leave(v19);
}

uint64_t closure #1 in DOCDSCopyEngineXPCConnection.copyItems(at:to:operation:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v101 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v97 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So7DOCNode_p5valuetSgMd, &_s10Foundation3URLV3key_So7DOCNode_p5valuetSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v102 = &v92 - v17;
  v18 = swift_allocObject();
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24FPActionOperationLocatorC_ADTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v104 = v18;
  *(v18 + 16) = v19;
  v20 = DOCCopyOperation.doc_transferResults(from:)(a1);
  v21 = *((*MEMORY[0x277D85000] & *a2) + 0xB8);

  v21(v22);
  if (!v20)
  {
LABEL_70:
    $defer #1 () in closure #1 in DOCDSCopyEngineXPCConnection.copyItems(at:to:operation:)(a2, v104);
  }

  if (!*(v20 + 16))
  {
    v23 = [objc_opt_self() shared];
    [v23 removeAllActionsWithTarget_];
  }

  v24 = 0;
  v99 = v20;
  v25 = v20 + 64;
  v26 = 1 << *(v20 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v20 + 64);
  v29 = (v26 + 63) >> 6;
  v93 = v4;
  v94 = v101 + 16;
  v106 = v14;
  v107 = (v101 + 32);
  v98 = (v101 + 8);
  v103 = a2;
  v100 = v7;
  v95 = v29;
  v96 = v25;
  if (!v28)
  {
    goto LABEL_11;
  }

  do
  {
    while (1)
    {
      v30 = v7;
      v31 = v24;
LABEL_19:
      v34 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v35 = v34 | (v31 << 6);
      v36 = v99;
      v37 = v101;
      v38 = v97;
      (*(v101 + 16))(v97, *(v99 + 48) + *(v101 + 72) * v35, v4);
      v39 = *(*(v36 + 56) + 8 * v35);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So7DOCNode_p5valuetMd, &_s10Foundation3URLV3key_So7DOCNode_p5valuetMR);
      v41 = *(v40 + 48);
      v42 = *(v37 + 32);
      v14 = v106;
      v43 = v38;
      v44 = v4;
      v42(v106, v43, v4);
      *&v14[v41] = v39;
      (*(*(v40 - 8) + 56))(v14, 0, 1, v40);
      swift_unknownObjectRetain();
      v7 = v30;
      a2 = v103;
LABEL_20:
      v45 = v102;
      outlined init with take of (key: URL, value: FPItem)(v14, v102, &_s10Foundation3URLV3key_So7DOCNode_p5valuetSgMd, &_s10Foundation3URLV3key_So7DOCNode_p5valuetSgMR);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So7DOCNode_p5valuetMd, &_s10Foundation3URLV3key_So7DOCNode_p5valuetMR);
      if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
      {
        goto LABEL_69;
      }

      v47 = *(v45 + *(v46 + 48));
      v4 = v44;
      v48 = (*v107)(v7, v45, v44);
      v49 = (*((*MEMORY[0x277D85000] & *a2) + 0xE0))(v48);
      if (!v49)
      {
        swift_unknownObjectRelease();

        goto LABEL_65;
      }

      if (!*(v49 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v7), (v50 & 1) == 0))
      {
        swift_unknownObjectRelease();

LABEL_65:
        (*v98)(v7, v44);
        goto LABEL_70;
      }

      swift_unknownObjectRetain();

      swift_getObjectType();
      v51 = DOCNode.fpfs_syncFetchFPItem()();
      swift_unknownObjectRelease();
      if (!v51)
      {
        (*v98)(v7, v4);
        goto LABEL_68;
      }

      swift_getObjectType();
      v52 = DOCNode.fpfs_syncFetchFPItem()();
      if (!v52)
      {
        (*v98)(v7, v4);

LABEL_68:
        swift_unknownObjectRelease();
LABEL_69:

        goto LABEL_70;
      }

      v53 = v52;
      v105 = v47;
      v54 = objc_opt_self();
      v55 = [v54 locatorForItem_];
      if (v55)
      {
        v56 = v55;
        v57 = [v54 locatorForItem_];
        if (v57)
        {
          v58 = v57;
          v59 = *(v104 + 16);
          if ((v59 & 0xC000000000000001) != 0)
          {
            if (v59 >= 0)
            {
              v59 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v60 = v57;
            v61 = __CocoaSet.count.getter();
            if (__OFADD__(v61, 1))
            {
              goto LABEL_73;
            }

            v59 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8FPItemIDC_AHTt1g5Tm(v59, v61 + 1, &_ss18_DictionaryStorageCySo24FPActionOperationLocatorCADGMd, &_ss18_DictionaryStorageCySo24FPActionOperationLocatorCADGMR, &lazy cache variable for type metadata for FPActionOperationLocator, 0x277CC6380);
          }

          else
          {
            v63 = v57;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v59;
          *(v104 + 16) = 0x8000000000000000;
          v66 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
          v67 = *(v59 + 16);
          v68 = (v65 & 1) == 0;
          v69 = v67 + v68;
          if (__OFADD__(v67, v68))
          {
            goto LABEL_72;
          }

          v70 = v65;
          if (*(v59 + 24) >= v69)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo24FPActionOperationLocatorCADGMd, &_ss18_DictionaryStorageCySo24FPActionOperationLocatorCADGMR);
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCySo24FPActionOperationLocatorCADGMd, &_ss18_DictionaryStorageCySo24FPActionOperationLocatorCADGMR);
            v71 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
            if ((v70 & 1) != (v72 & 1))
            {
              goto LABEL_75;
            }

            v66 = v71;
          }

          v4 = v93;
          v73 = v109;
          if (v70)
          {
            v74 = v109[7];
            v75 = *(v74 + 8 * v66);
            *(v74 + 8 * v66) = v58;
          }

          else
          {
            v109[(v66 >> 6) + 8] |= 1 << v66;
            *(v73[6] + 8 * v66) = v56;
            *(v73[7] + 8 * v66) = v58;

            v76 = v73[2];
            v77 = __OFADD__(v76, 1);
            v78 = v76 + 1;
            if (v77)
            {
              goto LABEL_74;
            }

            v73[2] = v78;
          }

          *(v104 + 16) = v73;

          a2 = v103;
        }

        else
        {
        }

        v7 = v100;
      }

      v79 = (*((*MEMORY[0x277D85000] & *a2) + 0xF8))();
      if (v79)
      {
        break;
      }

      swift_unknownObjectRelease();
      (*v98)(v7, v4);
LABEL_9:
      v14 = v106;
      v29 = v95;
      v25 = v96;
      if (!v28)
      {
        goto LABEL_11;
      }
    }

    v80 = v79;
    v81 = [v51 itemID];
    v82 = v81;
    if ((v80 & 0xC000000000000001) != 0)
    {
      v83 = v81;
      v84 = __CocoaDictionary.lookup(_:)();

      if (!v84)
      {
        goto LABEL_58;
      }

      v108 = v84;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID, 0x277CC6400);
      swift_dynamicCast();
      v85 = v109;
    }

    else
    {
      if (!*(v80 + 16) || (v86 = specialized __RawDictionaryStorage.find<A>(_:)(v81), (v87 & 1) == 0))
      {
LABEL_58:

LABEL_59:
        v7 = v100;
        (*v98)(v100, v4);

        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      v85 = *(*(v80 + 56) + 8 * v86);
    }

    if (!v85)
    {
      goto LABEL_59;
    }

    v88 = [a2 stitcher];
    if (v88)
    {
      v89 = v88;
      [v88 replacePlaceholderWithID:v85 withItem:v53];

      swift_unknownObjectRelease();
      v7 = v100;
      (*v98)(v100, v4);
    }

    else
    {
      v90 = v100;
      (*v98)(v100, v4);
      swift_unknownObjectRelease();

      v7 = v90;
    }

    v14 = v106;
    v29 = v95;
    v25 = v96;
  }

  while (v28);
LABEL_11:
  if (v29 <= v24 + 1)
  {
    v32 = v24 + 1;
  }

  else
  {
    v32 = v29;
  }

  v33 = v32 - 1;
  while (1)
  {
    v31 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v31 >= v29)
    {
      v44 = v4;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_So7DOCNode_p5valuetMd, &_s10Foundation3URLV3key_So7DOCNode_p5valuetMR);
      (*(*(v62 - 8) + 56))(v14, 1, 1, v62);
      v28 = 0;
      v24 = v33;
      goto LABEL_20;
    }

    v28 = *(v25 + 8 * v31);
    ++v24;
    if (v28)
    {
      v30 = v7;
      v24 = v31;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPActionOperationLocator, 0x277CC6380);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id $defer #1 () in closure #1 in DOCDSCopyEngineXPCConnection.copyItems(at:to:operation:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v8 = *(v19 - 8);
  v10 = MEMORY[0x28223BE20](v19, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 callbackQueue];
  if (result)
  {
    v14 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    aBlock[4] = partial apply for closure #1 in $defer #1 () in closure #1 in DOCDSCopyEngineXPCConnection.copyItems(at:to:operation:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_40;
    v16 = _Block_copy(aBlock);
    v17 = a1;

    static DispatchQoS.unspecified.getter();
    v21 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v12, v7, v16);
    _Block_release(v16);

    (*(v20 + 8))(v7, v4);
    (*(v8 + 8))(v12, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCDSCopyEngineXPCConnection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void closure #1 in $defer #1 () in closure #1 in DOCDSCopyEngineXPCConnection.copyItems(at:to:operation:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPActionOperationLocator, 0x277CC6380);
  lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type FPActionOperationLocator and conformance NSObject, &lazy cache variable for type metadata for FPActionOperationLocator, 0x277CC6380, MEMORY[0x277D85378]);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24FPActionOperationLocatorC_s5Error_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 completedWithResultsByRoot:isa errorsByRoot:v4 error:0];
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    updated = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(0);
    v20 = *(updated - 8);
    outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v12 + *(v20 + 72) * v7, a2, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = updated;
  }

  else
  {
    v18 = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for URL();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for URL();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario(0);
    v20 = *(v13 - 8);
    outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v12 + *(v20 + 72) * v7, a2, type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        specialized _NativeDictionary._delete(at:)(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo8FPItemIDCADGMd, &_ss18_DictionaryStorageCySo8FPItemIDCADGMR);
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaSet.count.getter();
  v8 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8FPItemIDC_AHTt1g5Tm(v4, v7, &_ss18_DictionaryStorageCySo8FPItemIDCADGMd, &_ss18_DictionaryStorageCySo8FPItemIDCADGMR, &lazy cache variable for type metadata for FPItemID, 0x277CC6400);

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  specialized _NativeDictionary._delete(at:)(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for RestorableSettings(0);
    v19 = *(v12 - 8);
    outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v11 + *(v19 + 72) * v8, a3, type metadata accessor for RestorableSettings);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for RestorableSettings(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 24 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of DOCGoToFolderCandidate((*(v9 + 56) + 40 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v13;
    }

    outlined destroy of DOCIdentityHashableLocation(*(v9 + 48) + 56 * v7);
    v10 = *(v9 + 56) + 56 * v7;
    v11 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v11;
    *(a2 + 32) = *(v10 + 32);
    *(a2 + 48) = *(v10 + 48);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v22 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v22;
    }

    outlined consume of ColumnType(*(*(v12 + 48) + 32 * v10), *(*(v12 + 48) + 32 * v10 + 8));

    v13 = *(v12 + 56);
    v14 = type metadata accessor for Column(0);
    v21 = *(v14 - 8);
    outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v13 + *(v21 + 72) * v10, a5, type metadata accessor for Column);
    specialized _NativeDictionary._delete(at:)(v10, v12);
    *v6 = v12;
    v15 = *(v21 + 56);
    v16 = a5;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for Column(0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a5;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8FPItemIDC_AHTt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = static _DictionaryStorage.convert(_:capacity:)();
    v27 = v10;
    __CocoaDictionary.makeIterator()();
    v11 = __CocoaDictionary.Iterator.next()();
    if (v11)
    {
      v12 = v11;
      type metadata accessor for NSMutableAttributedString(0, a5, a6);
      v13 = v12;
      do
      {
        v25 = v13;
        swift_dynamicCast();
        swift_dynamicCast();
        v20 = *(v10 + 16);
        if (*(v10 + 24) <= v20)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20 + 1, 1, a3, a4);
        }

        v10 = v27;
        result = NSObject._rawHashValue(seed:)(*(v27 + 40));
        v15 = v27 + 64;
        v16 = -1 << *(v27 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v27 + 64 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v27 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v22 && (v21 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v23 = v18 == v22;
            if (v18 == v22)
            {
              v18 = 0;
            }

            v21 |= v23;
            v24 = *(v15 + 8 * v18);
          }

          while (v24 == -1);
          v19 = __clz(__rbit64(~v24)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v27 + 48) + 8 * v19) = v26;
        *(*(v27 + 56) + 8 * v19) = v25;
        ++*(v27 + 16);
        v13 = __CocoaDictionary.Iterator.next()();
      }

      while (v13);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v10;
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8UIButtonC_So23UIDocumentBrowserActionCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8UIButtonCSo23UIDocumentBrowserActionCGMd, &_ss18_DictionaryStorageCySo8UIButtonCSo23UIDocumentBrowserActionCGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton, 0x277D75220);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12 + 1, 1, &_ss18_DictionaryStorageCySo8UIButtonCSo23UIDocumentBrowserActionCGMd, &_ss18_DictionaryStorageCySo8UIButtonCSo23UIDocumentBrowserActionCGMR);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8FPItemIDC_So0E0CTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8FPItemIDCSo0C0CGMd, &_ss18_DictionaryStorageCySo8FPItemIDCSo0C0CGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID, 0x277CC6400);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12 + 1, 1, &_ss18_DictionaryStorageCySo8FPItemIDCSo0C0CGMd, &_ss18_DictionaryStorageCySo8FPItemIDCSo0C0CGMR);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo18FPProviderDomainIDa26DocumentManagerExecutables32DOCFileProviderSyncStateObserverCGMd, &_ss18_DictionaryStorageCySo18FPProviderDomainIDa26DocumentManagerExecutables32DOCFileProviderSyncStateObserverCGMR);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo28NSFileProviderItemIdentifieraSaySo17DOCSmartFolderHitCGGMd, &_ss18_DictionaryStorageCySo28NSFileProviderItemIdentifieraSaySo17DOCSmartFolderHitCGGMR);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo21UIContentSizeCategoryaSo6UIFontCGMd, &_ss18_DictionaryStorageCySo21UIContentSizeCategoryaSo6UIFontCGMR);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo18FPProviderDomainIDa26DocumentManagerExecutables08ProviderD5State33_8DF2B3C7EA992A572C5DD842497A91B1LLCGMd, &_ss18_DictionaryStorageCySo18FPProviderDomainIDa26DocumentManagerExecutables08ProviderD5State33_8DF2B3C7EA992A572C5DD842497A91B1LLCGMR);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo28NSFileProviderItemIdentifieraSaySo17DOCHotFolderEventCGGMd, &_ss18_DictionaryStorageCySo28NSFileProviderItemIdentifieraSaySo17DOCHotFolderEventCGGMR);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo18FPProviderDomainIDa26DocumentManagerExecutables08ProviderD5State33_3BE26F1974CD6E1EBDD377CC4F0D2DE9LLCGMd, &_ss18_DictionaryStorageCySo18FPProviderDomainIDa26DocumentManagerExecutables08ProviderD5State33_3BE26F1974CD6E1EBDD377CC4F0D2DE9LLCGMR);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySo8FPActionaSo23UIDocumentBrowserActionCGMd, &_ss18_DictionaryStorageCySo8FPActionaSo23UIDocumentBrowserActionCGMR);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v44 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v14 + 16))
  {
    v48 = v13;
    v40 = v4;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = (v10 + 16);
    v42 = v14;
    v43 = v10;
    v45 = (v10 + 32);
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(v14 + 48);
      v47 = *(v43 + 72);
      v30 = v29 + v47 * v28;
      if (v44)
      {
        (*v45)(v48, v30, v9);
        v46 = *(*(v14 + 56) + 8 * v28);
      }

      else
      {
        (*v41)(v48, v30, v9);
        v46 = *(*(v14 + 56) + 8 * v28);
      }

      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v16 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v23 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v23 + 8 * v33);
          if (v37 != -1)
          {
            v24 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v32) & ~*(v23 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = (*v45)(*(v16 + 48) + v47 * v24, v48, v9);
      *(*(v16 + 56) + 8 * v24) = v46;
      ++*(v16 + 16);
      v14 = v42;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v7 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v14 + 32);
    v7 = v40;
    if (v38 >= 64)
    {
      bzero(v18, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v38;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v7 = v16;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v32 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](v22);
      result = Hasher._finalize()();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v33 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v33 & 1) == 0)
      {
        v24 = v23;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v33)
    {
      v32 = 1 << *(v7 + 32);
      if (v32 >= 64)
      {
        bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v32;
      }

      *(v7 + 16) = 0;
    }

    v5 = v4;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v24 = v21 | (v10 << 6);
      v25 = *(v7 + 48) + 40 * v24;
      if (v6)
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v40 = *(v25 + 32);
        v38 = v26;
        v39 = v27;
        v28 = *(*(v7 + 56) + 8 * v24);
      }

      else
      {
        outlined init with copy of AnyHashable(v25, &v38);
        v28 = *(*(v7 + 56) + 8 * v24);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v9 + 40));
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 40 * v17;
      v19 = v38;
      v20 = v39;
      *(v18 + 32) = v40;
      *v18 = v19;
      *(v18 + 16) = v20;
      *(*(v9 + 56) + 8 * v17) = v28;
      ++*(v9 + 16);
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero((v7 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v5 = v9;
  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v4;
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v38 = (v14 - 1) & v14;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v24 = *(v22 + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v25 = v23;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();

      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      *(*(v9 + 56) + 8 * v17) = v24;
      ++*(v9 + 16);
      v7 = v36;
      v14 = v38;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v38 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v4;
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v38 = (v14 - 1) & v14;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v24 = *(v22 + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v25 = v23;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();

      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      *(*(v9 + 56) + 8 * v17) = v24;
      ++*(v9 + 16);
      v7 = v36;
      v14 = v38;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v38 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v4;
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v39 = (v14 - 1) & v14;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v24 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();

      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      *(*(v9 + 56) + 8 * v17) = v24;
      ++*(v9 + 16);
      v7 = v37;
      v14 = v39;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesVAEGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC20CalculationVariablesVAEGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of DOCGridLayout(&v70, v58))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 168 * v16;
      v18 = *(v2 + 48) + 168 * v16;
      v19 = *(v18 + 48);
      v20 = *(v18 + 64);
      v21 = *(v18 + 96);
      v64 = *(v18 + 80);
      v65 = v21;
      v62 = v19;
      v63 = v20;
      v22 = *(v18 + 112);
      v23 = *(v18 + 128);
      v24 = *(v18 + 144);
      v69 = *(v18 + 160);
      v67 = v23;
      v68 = v24;
      v66 = v22;
      v25 = *(v18 + 32);
      v26 = *v18;
      v60 = *(v18 + 16);
      v61 = v25;
      v59 = v26;
      v16 *= 224;
      v27 = (*(v2 + 56) + v16);
      v28 = v27[2];
      v29 = v27[3];
      v30 = v27[5];
      v74 = v27[4];
      v75 = v30;
      v73 = v29;
      v31 = v27[6];
      v32 = v27[7];
      v33 = v27[9];
      v78 = v27[8];
      v79 = v33;
      v76 = v31;
      v77 = v32;
      v34 = v27[10];
      v35 = v27[11];
      v36 = v27[13];
      v82 = v27[12];
      v83 = v36;
      v80 = v34;
      v81 = v35;
      v37 = v27[1];
      v70 = *v27;
      v71 = v37;
      v72 = v28;
      v38 = *(v4 + 48) + v17;
      v39 = v69;
      v40 = v66;
      v41 = v68;
      *(v38 + 128) = v67;
      *(v38 + 144) = v41;
      *(v38 + 112) = v40;
      v42 = v62;
      v43 = v63;
      v44 = v65;
      *(v38 + 80) = v64;
      *(v38 + 96) = v44;
      *(v38 + 48) = v42;
      *(v38 + 64) = v43;
      v46 = v60;
      v45 = v61;
      *v38 = v59;
      *(v38 + 16) = v46;
      *(v38 + 32) = v45;
      *(v38 + 160) = v39;
      v47 = (*(v4 + 56) + v16);
      v48 = v71;
      *v47 = v70;
      v47[1] = v48;
      v49 = v72;
      v50 = v73;
      v51 = v75;
      v47[4] = v74;
      v47[5] = v51;
      v47[2] = v49;
      v47[3] = v50;
      v52 = v76;
      v53 = v77;
      v54 = v79;
      v47[8] = v78;
      v47[9] = v54;
      v47[6] = v52;
      v47[7] = v53;
      v55 = v80;
      v56 = v81;
      v57 = v83;
      v47[12] = v82;
      v47[13] = v57;
      v47[10] = v55;
      v47[11] = v56;
      outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationVariables(&v59, v58);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo18FPProviderDomainIDa26DocumentManagerExecutables32DOCFileProviderSyncStateObserverCGMd, &_ss18_DictionaryStorageCySo18FPProviderDomainIDa26DocumentManagerExecutables32DOCFileProviderSyncStateObserverCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables10ColumnTypeOAC10FormattersOGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables10ColumnTypeOAC10FormattersOGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + v17) = v18;
        result = outlined copy of ColumnType(v19, *(&v19 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo28NSFileProviderItemIdentifieraSaySo17DOCSmartFolderHitCGGMd, &_ss18_DictionaryStorageCySo28NSFileProviderItemIdentifieraSaySo17DOCSmartFolderHitCGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys10AnyKeyPathCypGMd, &_ss18_DictionaryStorageCys10AnyKeyPathCypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables14DOCSidebarItemOSDySo7UIColorCSo6CGSizeV13requestedSize_AC0F4IconV4icontGGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables14DOCSidebarItemOSDySo7UIColorCSo6CGSizeV13requestedSize_AC0F4IconV4icontGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 48) + 48 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(*(v2 + 56) + 8 * v17);
        v25 = *(v4 + 48) + 48 * v17;
        v26 = *(v18 + 40);
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(v25 + 40) = v26;
        *(*(v4 + 56) + 8 * v17) = v24;
        outlined copy of DOCSidebarItem(v19, v20, v21, v22, v23, v26);
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables20DOCOperationProgressCyypGGMd, &_ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables20DOCOperationProgressCyypGGMR);
}

{
  v1 = v0;
  v27 = type metadata accessor for URL();
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v2);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation3URLVypGMd, &_ss18_DictionaryStorageCy10Foundation3URLVypGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        outlined init with copy of Any(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = outlined init with take of Any(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v30 = type metadata accessor for URL();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v2);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables15DOCHashableNodeC10Foundation3URLVGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables15DOCHashableNodeC10Foundation3URLVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v27 = v32 + 32;
    for (i = v32 + 16; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
      (*(v20 + 32))(*(v24 + 56) + v21, v23, v22);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = outlined copy of Data._Representation(v22, *(&v22 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMd, &_ss18_DictionaryStorageCySS26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = outlined copy of DOCItemFileTypeGroupCategory(v22, *(&v22 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOAC20DOCCollectionSectionVGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables28DOCItemFileTypeGroupCategoryOAC20DOCCollectionSectionVGMR, outlined copy of DOCItemFileTypeGroupCategory);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables24DOCItemDateGroupCategoryOAC20DOCCollectionSectionVGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables24DOCItemDateGroupCategoryOAC20DOCCollectionSectionVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v17 *= 40;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = *(v4 + 48) + v18;
        v29 = *(v19 + 16);
        *v28 = *v19;
        *(v28 + 8) = v21;
        *(v28 + 16) = v29;
        v30 = (*(v4 + 56) + v17);
        *v30 = v23;
        v30[1] = v24;
        v30[2] = v25;
        v30[3] = v26;
        v30[4] = v27;
        outlined copy of DOCItemDateGroupCategory(v20, v21, v29);
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables24DOCItemSizeGroupCategoryOs5Int64VGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables24DOCItemSizeGroupCategoryOs5Int64VGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *(*(v2 + 56) + 8 * v14);
      v20 = *(v4 + 48) + 24 * v14;
      *v20 = *v17;
      *(v20 + 16) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables24DOCItemSizeGroupCategoryOAC20DOCCollectionSectionVGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables24DOCItemSizeGroupCategoryOAC20DOCCollectionSectionVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *(v19 + 16);
        v17 *= 40;
        v21 = (*(v2 + 56) + v17);
        v23 = *v21;
        v22 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v26 = v21[4];
        v27 = *(v4 + 48) + v18;
        *v27 = *v19;
        *(v27 + 16) = v20;
        v28 = (*(v4 + 56) + v17);
        *v28 = v23;
        v28[1] = v22;
        v28[2] = v24;
        v28[3] = v25;
        v28[4] = v26;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables28DOCItemSharedByGroupCategoryOSo7DOCNode_pGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables28DOCItemSharedByGroupCategoryOSo7DOCNode_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        outlined copy of DOCItemSharedByGroupCategory(v19, *(&v19 + 1));
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy26DocumentManagerExecutables28DOCItemSharedByGroupCategoryOAC20DOCCollectionSectionVGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables28DOCItemSharedByGroupCategoryOAC20DOCCollectionSectionVGMR, outlined copy of DOCItemSharedByGroupCategory);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay26DocumentManagerExecutables11ViewSizable_pGGMd, &_ss18_DictionaryStorageCySSSay26DocumentManagerExecutables11ViewSizable_pGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo6DOCTabV26DocumentManagerExecutables22DOCHierarchyControllerC12BrowsedStateVGMd, &_ss18_DictionaryStorageCySo6DOCTabV26DocumentManagerExecutables22DOCHierarchyControllerC12BrowsedStateVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 56) + 24 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;
        v23 = v21;
        v24 = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo8NSObject_pGMd, &_ss18_DictionaryStorageCySSSo8NSObject_pGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables10FormattersOAC10DateResultVGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables10FormattersOAC10DateResultVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v22;
        *(v23 + 24) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo13DOCSourceTypeVSaySo17DOCDocumentSourceCGGMd, &_ss18_DictionaryStorageCySo13DOCSourceTypeVSaySo17DOCDocumentSourceCGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0jK7PromiseOGMd, &_ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0jK7PromiseOGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v26);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + 40 * v17;
        v23 = v26[0];
        v24 = v26[1];
        *(v22 + 32) = v27;
        *v22 = v23;
        *(v22 + 16) = v24;
        v25 = (*(v4 + 56) + 24 * v17);
        *v25 = v19;
        v25[1] = v20;
        v25[2] = v21;
        result = outlined copy of DOCItemCollectionCellContentPool.CellContentPromise(v19, v20, v21);
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables24DOCFileOperationProgressCGMd, &_ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables24DOCFileOperationProgressCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo18FPProviderDomainIDa26DocumentManagerExecutables08ProviderD5State33_8DF2B3C7EA992A572C5DD842497A91B1LLCGMd, &_ss18_DictionaryStorageCySo18FPProviderDomainIDa26DocumentManagerExecutables08ProviderD5State33_8DF2B3C7EA992A572C5DD842497A91B1LLCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables25DOCItemCollectionListSpecV0F24HeightDeterminingFactors33_007BF96B63A761DA9097C9AAC5823B90LLV12CoreGraphics7CGFloatVGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables25DOCItemCollectionListSpecV0F24HeightDeterminingFactors33_007BF96B63A761DA9097C9AAC5823B90LLV12CoreGraphics7CGFloatVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(v28, v27))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = (*(v2 + 48) + 168 * v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[6];
      v28[5] = v17[5];
      v28[6] = v20;
      v28[3] = v18;
      v28[4] = v19;
      v21 = v17[7];
      v22 = v17[8];
      v23 = v17[9];
      v29 = *(v17 + 20);
      v28[8] = v22;
      v28[9] = v23;
      v28[7] = v21;
      v25 = v17[1];
      v24 = v17[2];
      v28[0] = *v17;
      v28[1] = v25;
      v28[2] = v24;
      v26 = *(*(v2 + 56) + 8 * v16);
      memmove((*(v4 + 48) + 168 * v16), v17, 0xA8uLL);
      *(*(v4 + 56) + 8 * v16) = v26;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOySucGMd, &_ss18_DictionaryStorageCySOySucGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaSgSSGMd, &_ss18_DictionaryStorageCySo11CFStringRefaSgSSGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo24UIUserInterfaceSizeClassVSaySo18NSLayoutConstraintCGGMd, &_ss18_DictionaryStorageCySo24UIUserInterfaceSizeClassVSaySo18NSLayoutConstraintCGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo28NSFileProviderItemIdentifieraSaySo17DOCHotFolderEventCGGMd, &_ss18_DictionaryStorageCySo28NSFileProviderItemIdentifieraSaySo17DOCHotFolderEventCGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables20DOCCollectionSectionVSayAC21DOCItemCollectionCellCGGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables20DOCCollectionSectionVSayAC21DOCItemCollectionCellCGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 40 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = (*(v4 + 48) + 40 * v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v22;
        *(*(v4 + 56) + 8 * v17) = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS26DocumentManagerExecutables21DOCItemCollectionCellCmGMd, &_ss18_DictionaryStorageCySS26DocumentManagerExecutables21DOCItemCollectionCellCmGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd, &_ss18_DictionaryStorageCyS2SSgGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *v18;
        v20 = v18[1];
        v21 = (*(v4 + 48) + v17);
        v22 = *(*(v2 + 56) + v17);
        *v21 = v19;
        v21[1] = v20;
        *(*(v4 + 56) + v17) = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo18FPProviderDomainIDa26DocumentManagerExecutables08ProviderD5State33_3BE26F1974CD6E1EBDD377CC4F0D2DE9LLCGMd, &_ss18_DictionaryStorageCySo18FPProviderDomainIDa26DocumentManagerExecutables08ProviderD5State33_3BE26F1974CD6E1EBDD377CC4F0D2DE9LLCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVAEGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables27DOCIdentityHashableLocationVAEGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 56 * (v14 | (v8 << 6));
        outlined init with copy of DOCIdentityHashableLocation(*(v2 + 48) + v17, v28);
        result = outlined init with copy of DOCIdentityHashableLocation(*(v2 + 56) + v17, v26);
        v18 = *(v4 + 48) + v17;
        v19 = v29;
        v20 = v28[2];
        v21 = v28[1];
        *v18 = v28[0];
        *(v18 + 16) = v21;
        *(v18 + 32) = v20;
        *(v18 + 48) = v19;
        v22 = *(v4 + 56) + v17;
        v23 = v26[0];
        v24 = v26[1];
        v25 = v26[2];
        *(v22 + 48) = v27;
        *(v22 + 16) = v24;
        *(v22 + 32) = v25;
        *v22 = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo6FPItemCSSGMd, _ss18_DictionaryStorageCySo6FPItemCSSGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables15DOCHashableNodeCSSGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables15DOCHashableNodeCSSGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v19;
        v21[1] = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables20DOCOperationProgressCyAE16DOCFileOperationVGGMd, _ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables20DOCOperationProgressCyAE16DOCFileOperationVGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVSo7DOCNode_pGMd, &_ss18_DictionaryStorageCys11AnyHashableVSo7DOCNode_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables9USBFormatOSDyAC0F6OptionOSbGGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables9USBFormatOSDyAC0F6OptionOSbGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables15USBFormatOptionOSbGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables15USBFormatOptionOSbGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo7DOCNode_pGMd, &_ss18_DictionaryStorageCySSSo7DOCNode_pGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables22DOCRelatedNodeObserver33_4D9ABB82B8ED4BF825755B13B5FAF488LLCGMd, &_ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables22DOCRelatedNodeObserver33_4D9ABB82B8ED4BF825755B13B5FAF488LLCGMR);
}

{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v2);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo6CGRectVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo6CGRectVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v33 = v37 + 16;
    v31 = v4 + 64;
    for (i = v37 + 32; v13; v28[1] = v29)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v37;
      v20 = *(v37 + 72) * v18;
      v21 = v34;
      v22 = v35;
      (*(v37 + 16))(v34, *(v4 + 48) + v20, v35);
      v18 *= 32;
      v23 = (*(v4 + 56) + v18);
      v24 = v36;
      v25 = *(v36 + 48);
      v26 = *(v19 + 32);
      v27 = *v23;
      v38 = v23[1];
      v39 = v27;
      result = v26(v25 + v20, v21, v22);
      v28 = (*(v24 + 56) + v18);
      v29 = v38;
      *v28 = v39;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v6 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC24HeightDeterminingFactorsV12CoreGraphics7CGFloatVGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables13DOCGridLayoutV0G10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC24HeightDeterminingFactorsV12CoreGraphics7CGFloatVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 40 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = (*(v4 + 48) + 40 * v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v22;
        *(*(v4 + 56) + 8 * v17) = v23;
        v25 = v19;
        v26 = v20;
        result = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo7UIColorCSo6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontGMd, &_ss18_DictionaryStorageCySo7UIColorCSo6CGSizeV13requestedSize_26DocumentManagerExecutables14DOCSidebarIconV4icontGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(v2 + 56) + 32 * v17;
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        v22 = *v19;
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v22;
        *(v23 + 16) = v20;
        *(v23 + 24) = v21;
        v24 = v18;
        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(MEMORY[0x277CC9260], &_ss18_DictionaryStorageCy10Foundation3URLVSo7NSTimerCGMd, &_ss18_DictionaryStorageCy10Foundation3URLVSo7NSTimerCGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for RestorableSettings(0);
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables31DOCItemCollectionViewControllerC26RestorableSettingsCacheKeyOAC0jK033_45098A9DF3FF02797EF1E06F74668D65LLVGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables31DOCItemCollectionViewControllerC26RestorableSettingsCacheKeyOAC0jK033_45098A9DF3FF02797EF1E06F74668D65LLVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    v33 = v5;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 16 * v21;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = v34;
        v28 = *(v35 + 72) * v21;
        outlined init with copy of DOCDebugUIScenarioManager.LoadedScenario(v23 + v28, v34, type metadata accessor for RestorableSettings);
        v29 = v36;
        v30 = *(v36 + 48) + v22;
        *v30 = v25;
        *(v30 + 8) = v26;
        outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v27, *(v29 + 56) + v28, type metadata accessor for RestorableSettings);
        result = v25;
        v5 = v33;
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v32;
        v7 = v36;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo21UIContentSizeCategoryaSo6UIFontCGMd, &_ss18_DictionaryStorageCySo21UIContentSizeCategoryaSo6UIFontCGMR);
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x277D85578], &_ss18_DictionaryStorageCy22UniformTypeIdentifiers6UTTypeVSo8NSNumberCGMd, &_ss18_DictionaryStorageCy22UniformTypeIdentifiers6UTTypeVSo8NSNumberCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo8UIButtonCSo23UIDocumentBrowserActionCGMd, &_ss18_DictionaryStorageCySo8UIButtonCSo23UIDocumentBrowserActionCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables17DOCNodeCollectionCGMd, &_ss18_DictionaryStorageCys11AnyHashableV26DocumentManagerExecutables17DOCNodeCollectionCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo23UIDocumentBrowserActionCGMd, &_ss18_DictionaryStorageCySSSo23UIDocumentBrowserActionCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo8FPItemIDCSo0C0CGMd, &_ss18_DictionaryStorageCySo8FPItemIDCSo0C0CGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables21DOCGoToRecentLocationCAC0fG15FolderCandidate_pGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables21DOCGoToRecentLocationCAC0fG15FolderCandidate_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        outlined init with copy of DOCSidebarItemIconProvider(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of DOCGoToFolderCandidate(v19, *(v4 + 56) + 40 * v17);
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables29DOCBrowserContainerControllerCSbGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables29DOCBrowserContainerControllerCSbGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy26DocumentManagerExecutables15DOCItemSortModeOAC0F27CollectionViewSectionHeaderC0g15ButtonContainerJ033_01DF393BC1153E369869A3FC5380444BLLCGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables15DOCItemSortModeOAC0F27CollectionViewSectionHeaderC0g15ButtonContainerJ033_01DF393BC1153E369869A3FC5380444BLLCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy26DocumentManagerExecutables15DOCItemSortModeOSo18NSLayoutConstraintCGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables15DOCItemSortModeOSo18NSLayoutConstraintCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo8FPActionaSo23UIDocumentBrowserActionCGMd, &_ss18_DictionaryStorageCySo8FPActionaSo23UIDocumentBrowserActionCGMR);
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  updated = type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo(0);
  v40 = *(updated - 8);
  MEMORY[0x28223BE20](updated - 8, v3);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for UUID();
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV26DocumentManagerExecutables42DOCSharedTestableProgressOperationProviderC17UpdateHandlerInfo33_3FB6815BC4B74297102E46E854841E53LLVGMR);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        outlined init with copy of DOCDebugUIScenarioManager.LoadedScenario(v28 + v30, v39, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v31, *(v20 + 56) + v30, type metadata accessor for DOCSharedTestableProgressOperationProvider.UpdateHandlerInfo);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

{
  v1 = v0;
  v34 = type metadata accessor for URL();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation3URLVSo7DOCNode_pGMd, &_ss18_DictionaryStorageCy10Foundation3URLVSo7DOCNode_pGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = swift_unknownObjectRetain();
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v40 = type metadata accessor for Date();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v2);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables24DOCItemDateGroupCategoryO10Foundation0G0VGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables24DOCItemDateGroupCategoryO10Foundation0G0VGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v41 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = v42 + 32;
    v37 = v42 + 16;
    v38 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v43 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 24 * v19;
        v21 = *(v4 + 56);
        v22 = *(v4 + 48) + 24 * v19;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = v42;
        v26 = *(v42 + 72) * v19;
        v27 = *(v22 + 16);
        v29 = v39;
        v28 = v40;
        (*(v42 + 16))(v39, v21 + v26, v40);
        v30 = v41;
        v31 = *(v41 + 48) + v20;
        *v31 = v23;
        *(v31 + 8) = v24;
        *(v31 + 16) = v27;
        v32 = *(v30 + 56);
        v33 = *(v25 + 32);
        v4 = v38;
        v33(v32 + v26, v29, v28);
        result = outlined copy of DOCItemDateGroupCategory(v23, v24, v27);
        v14 = v43;
      }

      while (v43);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v34;
        v6 = v41;
        goto LABEL_18;
      }

      v18 = *(v35 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v36 = type metadata accessor for URL();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation3URLVSSGMd, &_ss18_DictionaryStorageCy10Foundation3URLVSSGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v34 = type metadata accessor for Date();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DateV26DocumentManagerExecutables0D10CalculatorCGMd, &_ss18_DictionaryStorageCy10Foundation4DateV26DocumentManagerExecutables0D10CalculatorCGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v32 = type metadata accessor for URL();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation3URLVSbGMd, &_ss18_DictionaryStorageCy10Foundation3URLVSbGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables20DOCCollectionSectionVAC18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables20DOCCollectionSectionVAC18ScrollPositionInfo33_45098A9DF3FF02797EF1E06F74668D65LLV10ItemOffsetVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 40 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 40 * v20);
        v24 = v23[1];
        v38 = *v23;
        v25 = v23[3];
        v37 = v23[2];
        v26 = v23[4];
        v27 = v34;
        v28 = *(v35 + 72) * v20;
        outlined init with copy of DOCDebugUIScenarioManager.LoadedScenario(v22 + v28, v34, type metadata accessor for ScrollPositionInfo.ItemOffset);
        v29 = v36;
        v30 = (*(v36 + 48) + v21);
        v31 = v37;
        *v30 = v38;
        v30[1] = v24;
        v30[2] = v31;
        v30[3] = v25;
        v30[4] = v26;
        outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v27, *(v29 + 56) + v28, type metadata accessor for ScrollPositionInfo.ItemOffset);

        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for Column(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables14DOCItemRowViewC14ColumnCacheKey33_1E39830950AB61652482D17E5CCE08ADLLVAC0I0OGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables14DOCItemRowViewC14ColumnCacheKey33_1E39830950AB61652482D17E5CCE08ADLLVAC0I0OGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 32 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 32 * v20);
        v24 = *v23;
        v25 = v23[1];
        v27 = v23[2];
        v26 = v23[3];
        v28 = v37;
        v29 = *(v38 + 72) * v20;
        outlined init with copy of DOCDebugUIScenarioManager.LoadedScenario(v22 + v29, v37, type metadata accessor for Column);
        v30 = v39;
        v31 = (*(v39 + 48) + v21);
        *v31 = v24;
        v31[1] = v25;
        v31[2] = v27;
        v31[3] = v26;
        v32 = v28;
        v5 = v36;
        outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v32, *(v30 + 56) + v29, type metadata accessor for Column);
        outlined copy of ColumnType(v24, v25);

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v34;
        v7 = v39;
        goto LABEL_18;
      }

      v19 = *(v35 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario(0);
  v40 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for URL();
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v5);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation3URLV26DocumentManagerExecutables018DOCDebugUIScenarioF033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVGMd, &_ss18_DictionaryStorageCy10Foundation3URLV26DocumentManagerExecutables018DOCDebugUIScenarioF033_7F78BB5056A811039A9FF8005EEF553DLLC14LoadedScenarioVGMR);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        outlined init with copy of DOCDebugUIScenarioManager.LoadedScenario(v28 + v30, v39, type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(v31, *(v20 + 56) + v30, type metadata accessor for DOCDebugUIScenarioManager.LoadedScenario);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2, void (*a3)(void, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v30 = v3;
  v5 = *v3;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v20 *= 40;
        v22 = (*(v5 + 56) + v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = *(*(v5 + 48) + v21);
        *(*(v7 + 48) + v21) = v28;
        v29 = (*(v7 + 56) + v20);
        *v29 = v23;
        v29[1] = v24;
        v29[2] = v25;
        v29[3] = v26;
        v29[4] = v27;
        a3(v28, *(&v28 + 1));
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v7;
  }

  return result;
}

id specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v7);
  v36 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v21 = v11;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v25 = v22 | (v15 << 6);
        v26 = v39;
        v27 = *(v39 + 72) * v25;
        v29 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v27, v37);
        v30 = *(*(v9 + 56) + 8 * v25);
        (*(v26 + 32))(*(v21 + 48) + v27, v29, v28);
        *(*(v21 + 56) + 8 * v25) = v30;
        result = v30;
        v19 = v40;
      }

      while (v40);
    }

    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v24 = *(v33 + v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v40 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = swift_unknownObjectRetain();
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        outlined init with copy of AnyHashable(*(v4 + 48) + 40 * v19, v24);
        v20 = *(*(v4 + 56) + 8 * v19);
        v21 = *(v6 + 48) + 40 * v19;
        v22 = v24[0];
        v23 = v24[1];
        *(v21 + 32) = v25;
        *v21 = v22;
        *(v21 + 16) = v23;
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

uint64_t specialized DOCCopyOperation.map(sourceNode:toURL:)(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v23 - v9;
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *a3) + 0xD8))(v25, v8);
  if (*v13)
  {
    type metadata accessor for DOCHashableNode();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v10, a2, v15);
    (*(v16 + 56))(v10, 0, 1, v15);
    v17 = a1;
    specialized Dictionary.subscript.setter(v10, v14);
  }

  v12(v25, 0);
  v19 = (*((*v11 & *a3) + 0xF0))(v25);
  if (*v18)
  {
    v20 = v18;
    v21 = a1;
    swift_isUniquelyReferenced_nonNull_native();
    v24 = *v20;
    *v20 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *v20 = v24;
  }

  return v19(v25, 0);
}

uint64_t specialized DOCCopyOperation.copyWithDSCopyEngine(_:)(uint64_t a1, uint64_t a2)
{
  v184 = *MEMORY[0x277D85DE8];
  v168 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v168, v4);
  v166 = v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v163 = v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v152 = *(v156 - 1);
  MEMORY[0x28223BE20](v156, v9);
  v162 = v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for URL();
  v11 = *(v170 - 8);
  MEMORY[0x28223BE20](v170, v12);
  v157 = v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v169 = v150 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v172 = v150 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v154 = v150 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v23, v24);
  v173 = v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = v150 - v28;
  MEMORY[0x28223BE20](v30, v31);
  v33 = v150 - v32;
  v182 = type metadata accessor for DOCDSCopyEngineXPCConnection();
  v183 = &protocol witness table for DOCDSCopyEngineXPCConnection;
  v181 = a1;
  v34 = one-time initialization token for UI;

  if (v34 != -1)
  {
LABEL_61:
    swift_once();
  }

  v35 = static DOCLog.UI;
  v36 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_249B9A480;
  *(v37 + 56) = MEMORY[0x277D837D0];
  *(v37 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v37 + 32) = 0xD000000000000018;
  *(v37 + 40) = 0x8000000249BC93D0;
  os_log(_:dso:log:type:_:)("%@: Running DesktopServices copy", 32, 2, &dword_2493AC000, v35, v36, v37);

  v38 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem);
  v171 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs);
  v39 = swift_allocObject();
  v164 = v39;
  *(v39 + 16) = 0;
  v151 = (v39 + 16);
  v40 = [v38 fileURL];
  v161 = a2;
  if (v40)
  {
    v41 = v40;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = *(v11 + 56);
    v43 = v33;
    v44 = 0;
  }

  else
  {
    v42 = *(v11 + 56);
    v43 = v33;
    v44 = 1;
  }

  v45 = v170;
  v42(v43, v44, 1, v170);
  v158 = swift_allocBox();
  v47 = v46;
  outlined init with take of (key: URL, value: FPItem)(v33, v46, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of URL?(v47, v29);
  v167 = v11;
  v48 = *(v11 + 48);
  v49 = v48(v29, 1, v45);
  outlined destroy of CharacterSet?(v29, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v49 == 1)
  {
    v50 = dispatch_semaphore_create(0);
    v51 = [objc_opt_self() defaultManager];
    v52 = swift_allocObject();
    v52[2] = v50;
    v52[3] = v38;
    v53 = v158;
    v52[4] = v164;
    v52[5] = v53;
    v179 = partial apply for closure #1 in DOCCopyOperation.copyWithDSCopyEngine(_:);
    v180 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v176 = 1107296256;
    v177 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v178 = &block_descriptor_3;
    v54 = _Block_copy(&aBlock);
    v55 = v50;
    v56 = v38;

    [v51 fetchURLForItem:v56 completionHandler:v54];
    _Block_release(v54);

    OS_dispatch_semaphore.wait()();
  }

  swift_beginAccess();
  v57 = v173;
  outlined init with copy of URL?(v47, v173);
  v58 = v170;
  if (v48(v57, 1, v170) == 1)
  {
    outlined destroy of CharacterSet?(v57, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v59 = v151;
    swift_beginAccess();
    v60 = *v59;
    v61 = v161;
    if (*v59)
    {
      v62 = v60;
      v63 = _convertErrorToNSError(_:)();
    }

    else
    {
      v63 = 0;
    }

    [v61 completedWithResult:0 error:v63];

    return __swift_destroy_boxed_opaque_existential_0(&v181);
  }

  v64 = v167;
  v66 = v167 + 32;
  v65 = *(v167 + 32);
  v67 = v154;
  v65(v154, v57, v58);
  v68 = MEMORY[0x277D84F90];
  v69 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables15DOCHashableNodeC_10Foundation3URLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v70 = v161;
  v71 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v161) + 0xD0))(v69);
  v72 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_So7DOCNode_pTt0g5Tf4g_n(v68);
  (*((*v71 & *v70) + 0xE8))(v72);
  v73 = swift_allocObject();
  v155 = v73;
  v74 = v171;
  *(v73 + 16) = v171;
  v75 = v73 + 16;
  v76 = v74[2];

  if (v76)
  {
LABEL_46:
    swift_beginAccess();
    if (*(*v75 + 16))
    {
      v126 = *__swift_project_boxed_opaque_existential_1(&v181, v182);

      v127 = [v70 shouldBounceOnCollision];
      if (v127)
      {
        v128 = [objc_allocWithZone(MEMORY[0x277D04690]) init];
        v129 = [v128 setType_];
      }

      else
      {
        v129 = specialized DOCDSCopyEngineXPCConnection.newConflictStrategy_askUser()(v127);
        v128 = v129;
      }

      v134 = (*((*MEMORY[0x277D85000] & *v70) + 0x160))(v129);
      v135 = *(v126 + 16);
      isa = Array._bridgeToObjectiveC()().super.isa;

      URL._bridgeToObjectiveC()(v137);
      v139 = v138;
      v140 = swift_allocObject();
      *(v140 + 16) = v70;
      v179 = partial apply for closure #1 in DOCDSCopyEngineXPCConnection.copyItems(at:to:operation:);
      v180 = v140;
      aBlock = MEMORY[0x277D85DD0];
      v176 = 1107296256;
      v177 = thunk for @escaping @callee_guaranteed (@guaranteed [URL : URL]) -> ();
      v178 = &block_descriptor_19;
      v141 = _Block_copy(&aBlock);
      v142 = v128;
      v143 = v70;

      aBlock = 0;
      v144 = [v135 copyItemsAtURLs:isa toURL:v139 options:v134 & 1 conflictStrategy:v142 receiveTargets:v141 error:&aBlock];
      _Block_release(v141);

      if (v144)
      {
        v145 = aBlock;
      }

      else
      {
        v146 = aBlock;
        v147 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v148 = _convertErrorToNSError(_:)();
        [v143 completedWithResult:0 error:v148];
      }

      (*(v167 + 8))(v154, v58);
    }

    else
    {
      v130 = v151;
      swift_beginAccess();
      v131 = *v130;
      if (*v130)
      {
        v132 = v131;
        v133 = _convertErrorToNSError(_:)();
      }

      else
      {
        v133 = 0;
      }

      [v70 completedWithResult:0 error:v133];

      (*(v64 + 8))(v67, v58);
    }

    return __swift_destroy_boxed_opaque_existential_0(&v181);
  }

  v165 = v75;
  v160 = v65;
  v153 = dispatch_group_create();
  v173 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (v152)[13](v162, *MEMORY[0x277D85268], v156);
  static DispatchQoS.unspecified.getter();
  aBlock = v68;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v152 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v166 = *(v70 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems);
  v159 = v66;
  if (v166 >> 62)
  {
LABEL_63:
    v77 = __CocoaSet.count.getter();
  }

  else
  {
    v77 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = v165;
  if (!v77)
  {
LABEL_45:
    v125 = v153;
    OS_dispatch_group.wait()();

    v64 = v167;
    v67 = v154;
    goto LABEL_46;
  }

  if (v77 < 1)
  {
    __break(1u);
  }

  v163 = (v166 & 0xC000000000000001);
  swift_beginAccess();
  v11 = 0;
  v168 = (v167 + 16);
  v156 = (v167 + 8);
  v150[1] = &v177;
  v162 = v77;
  while (1)
  {
    v89 = v70;
    v90 = v163 ? MEMORY[0x24C1FC540](v11, v166) : *(v166 + 8 * v11 + 32);
    v91 = v90;
    v171 = MEMORY[0x24C1FDA70]();
    v92 = [v91 fileURL];
    v173 = v91;
    if (v92)
    {
      break;
    }

    v78 = v153;
    dispatch_group_enter(v153);
    v79 = [objc_opt_self() defaultManager];
    v80 = swift_allocObject();
    v80[2] = v78;
    v80[3] = v91;
    v81 = v152;
    v80[4] = v164;
    v80[5] = v81;
    v80[6] = v155;
    v80[7] = v89;
    v179 = partial apply for closure #1 in closure #2 in DOCCopyOperation.copyWithDSCopyEngine(_:);
    v180 = v80;
    aBlock = MEMORY[0x277D85DD0];
    v176 = 1107296256;
    v177 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v178 = &block_descriptor_25;
    v82 = _Block_copy(&aBlock);
    v83 = v173;

    v84 = v89;
    v85 = v83;
    v86 = v78;
    v58 = v170;
    v87 = v81;
    v70 = v89;
    v75 = v165;

    [v79 fetchURLForItem:v85 completionHandler:v82];
    _Block_release(v82);

    v88 = v162;
LABEL_17:
    ++v11;
    objc_autoreleasePoolPop(v171);

    if (v88 == v11)
    {
      goto LABEL_45;
    }
  }

  v93 = v172;
  v94 = v92;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v95 = *v168;
  (*v168)(v169, v93, v58);
  v96 = *v75;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v75 = v96;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
    *v75 = v96;
  }

  v99 = *(v96 + 2);
  v98 = *(v96 + 3);
  v100 = v160;
  if (v99 >= v98 >> 1)
  {
    v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v96);
    v100 = v160;
    v96 = v121;
  }

  *(v96 + 2) = v99 + 1;
  v101 = *(v167 + 72);
  v100(&v96[((*(v167 + 80) + 32) & ~*(v167 + 80)) + v101 * v99], v169, v58);
  *v75 = v96;
  v103 = (*((*MEMORY[0x277D85000] & *v70) + 0xD8))(&aBlock);
  if (*v102)
  {
    v104 = v102;
    type metadata accessor for DOCHashableNode();
    v105 = swift_allocObject();
    v106 = v173;
    *(v105 + 16) = v173;
    v107 = v157;
    v95(v157, v172, v58);
    v108 = v106;
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v174 = *v104;
    *v104 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v107, v105, v109);

    *v104 = v174;
  }

  v103(&aBlock, 0);
  v33 = (*((*MEMORY[0x277D85000] & *v70) + 0xF0))(&aBlock);
  if (!*v110)
  {
    (v33)(&aBlock, 0);
LABEL_42:
    v88 = v162;
    v83 = v173;
    (*v156)(v172, v58);
    v75 = v165;
    goto LABEL_17;
  }

  v111 = v110;
  v112 = v173;
  a2 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v111;
  v29 = v174;
  *v111 = 0x8000000000000000;
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v172);
  v114 = *(v29 + 2);
  v115 = (v113 & 1) == 0;
  v116 = v114 + v115;
  if (__OFADD__(v114, v115))
  {
    __break(1u);
    goto LABEL_61;
  }

  v117 = v113;
  if (*(v29 + 3) >= v116)
  {
    if (a2)
    {
      v120 = v174;
      if (v113)
      {
        goto LABEL_37;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v120 = v174;
      if (v117)
      {
        goto LABEL_37;
      }
    }

LABEL_39:
    *&v120[8 * (v70 >> 6) + 64] |= 1 << v70;
    v58 = v170;
    v95((*(v120 + 6) + v70 * v101), v172, v170);
    *(*(v120 + 7) + 8 * v70) = v112;
    v122 = *(v120 + 2);
    v123 = __OFADD__(v122, 1);
    v124 = v122 + 1;
    if (v123)
    {
      __break(1u);
      goto LABEL_63;
    }

    *(v120 + 2) = v124;
    goto LABEL_41;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v116, a2);
  v118 = specialized __RawDictionaryStorage.find<A>(_:)(v172);
  if ((v117 & 1) == (v119 & 1))
  {
    v70 = v118;
    v120 = v174;
    if ((v117 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_37:
    *(*(v120 + 7) + 8 * v70) = v112;
    swift_unknownObjectRelease();
    v58 = v170;
LABEL_41:
    *v111 = v120;
    (v33)(&aBlock, 0);
    v70 = v161;
    goto LABEL_42;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() providerDomainForItem:a1 cachePolicy:a2 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t specialized DOCCopyOperation.itemSupportsDSCopy(_:)(void *a1)
{
  v2 = [a1 providerID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
    goto LABEL_14;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_15;
  }

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v9)
  {
    goto LABEL_14;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_15;
  }

  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v12)
  {
LABEL_14:

LABEL_15:

    return 1;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    return 1;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
  v15 = a1;
  v16 = specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(v15, 3);

  LOBYTE(v15) = FPProviderDomain.shouldUseDSCopyEngine.getter();
  return v15 & 1;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of DOCDebugUIScenarioManager.LoadedScenario(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of DOCDebugUIScenarioManager.LoadedScenario(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id outlined copy of DOCItemCollectionCellContentPool.CellContentPromise(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v5 = (a3 & 0x7FFFFFFFFFFFFFFFLL);

    a1 = v5;
  }

  return a1;
}

id specialized DOCDSCopyEngineXPCConnection.newConflictStrategy_askUser()(uint64_t a1)
{
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  v3._countAndFlagsBits = 0xD000000000000015;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v33._countAndFlagsBits = 0xD000000000000031;
  v33._object = 0x8000000249BC95B0;
  v4._object = 0x8000000249BC9570;
  v3._object = 0x8000000249BC9590;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v2, v3, v33);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v34._countAndFlagsBits = 0xD000000000000033;
  v34._object = 0x8000000249BC9690;
  v8._object = 0x8000000249BC95F0;
  v9._object = 0x8000000249BC9610;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v9._countAndFlagsBits = 0x1000000000000070;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v10, v7, v9, v34);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  v13._countAndFlagsBits = 0xD000000000000028;
  v35._object = 0x8000000249BC9700;
  v14._countAndFlagsBits = 0x746F42207065654BLL;
  v13._object = 0x8000000249BC96D0;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v14._object = 0xE900000000000068;
  v35._countAndFlagsBits = 0xD000000000000038;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v15, v12, v14, v35);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = result;
  v18._countAndFlagsBits = 0xD000000000000023;
  v36._object = 0x8000000249BC9700;
  v18._object = 0x8000000249BC9740;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v20._countAndFlagsBits = 1886352467;
  v20._object = 0xE400000000000000;
  v36._countAndFlagsBits = 0xD000000000000038;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v36);

  result = _DocumentManagerBundle();
  if (result)
  {
    v22 = result;
    v23._countAndFlagsBits = 0xD000000000000026;
    v37._object = 0x8000000249BC9700;
    v24._countAndFlagsBits = 0x6563616C706552;
    v23._object = 0x8000000249BC9770;
    v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v25.value._object = 0xEB00000000656C62;
    v24._object = 0xE700000000000000;
    v37._countAndFlagsBits = 0xD000000000000038;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v25, v22, v24, v37);

    v27 = [objc_allocWithZone(MEMORY[0x277D04690]) init];
    [v27 setType_];
    v28 = MEMORY[0x24C1FAD20](v6._countAndFlagsBits, v6._object);

    [v27 setLocalizedAlertTitle_];

    v29 = MEMORY[0x24C1FAD20](v11._countAndFlagsBits, v11._object);

    [v27 setLocalizedAlertMessageFormat_];

    v30 = MEMORY[0x24C1FAD20](v16._countAndFlagsBits, v16._object);

    [v27 setLocalizedTitle:v30 forResolution:2];

    v31 = MEMORY[0x24C1FAD20](v21._countAndFlagsBits, v21._object);

    [v27 setLocalizedTitle:v31 forResolution:0];

    v32 = MEMORY[0x24C1FAD20](v26._countAndFlagsBits, v26._object);

    [v27 setLocalizedTitle:v32 forResolution:1];

    return v27;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NSURL and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSMutableAttributedString(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #1 in closure #1 in closure #2 in DOCCopyOperation.copyWithDSCopyEngine(_:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);

  closure #1 in closure #1 in closure #2 in DOCCopyOperation.copyWithDSCopyEngine(_:)(v8, v0 + v2, v5, v6, v7);
}

uint64_t specialized DOCCopyOperation.associateThumbnails(on:)(uint64_t a1)
{
  v98[1] = *MEMORY[0x277D85DE8];
  v97 = type metadata accessor for URL();
  v2 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v3);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v78 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v83 = &v78 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v95 = &v78 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_AC5valuetSgMd, &_s10Foundation3URLV3key_AC5valuetSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v92 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v90 = &v78 - v21;
  v22 = *(a1 + 64);
  v91 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v79 = (v23 + 63) >> 6;
  v96 = (v2 + 32);
  v81 = 0x8000000249BC9550;
  v82 = v2 + 16;
  v84 = v2;
  v85 = a1;
  v89 = (v2 + 8);

  v26 = 0;
  v88 = 0;
  v80 = xmmword_249BA08D0;
  v93 = v9;
  v94 = v5;
  v27 = v91;
  if (!v25)
  {
    goto LABEL_7;
  }

LABEL_6:
  v31 = v97;
  v32 = v26;
LABEL_15:
  v36 = __clz(__rbit64(v25));
  v25 &= v25 - 1;
  v38 = v84;
  v37 = v85;
  v39 = *(v84 + 72) * (v36 | (v32 << 6));
  v40 = *(v84 + 16);
  v40(v95, *(v85 + 48) + v39, v31);
  v41 = v83;
  v40(v83, *(v37 + 56) + v39, v31);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_AC5valuetMd, &_s10Foundation3URLV3key_AC5valuetMR);
  v43 = *(v42 + 48);
  v44 = *(v38 + 32);
  v45 = v92;
  v44(v92, v95, v31);
  v46 = &v45[v43];
  v35 = v45;
  v44(v46, v41, v31);
  (*(*(v42 - 8) + 56))(v45, 0, 1, v42);
  v9 = v93;
  v5 = v94;
  while (1)
  {
    v47 = v35;
    v48 = v90;
    outlined init with take of (key: URL, value: FPItem)(v47, v90, &_s10Foundation3URLV3key_AC5valuetSgMd, &_s10Foundation3URLV3key_AC5valuetSgMR);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_AC5valuetMd, &_s10Foundation3URLV3key_AC5valuetMR);
    if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
    {
    }

    v50 = *(v49 + 48);
    v51 = v97;
    v52 = *v96;
    (*v96)(v9, v48 + v50, v97);
    v52(v5, v48, v51);
    v53 = objc_opt_self();
    URL._bridgeToObjectiveC()(v54);
    v56 = v55;
    URL._bridgeToObjectiveC()(v57);
    v59 = v58;
    v98[0] = 0;
    LODWORD(v53) = [v53 associateThumbnailsForDocumentAtURL:v56 withDocumentAtURL:v58 error:v98];

    if (v53)
    {
      v28 = *v89;
      v29 = v98[0];
      v30 = v97;
      v28(v5, v97);
      v28(v9, v30);
      v27 = v91;
      if (v25)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v60 = v98[0];
      v61 = _convertNSErrorToError(_:)();

      v88 = v61;
      swift_willThrow();
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v87 = static DOCLog.UI;
      v86 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v62 = swift_allocObject();
      *(v62 + 16) = v80;
      *(v62 + 56) = MEMORY[0x277D837D0];
      *(v62 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v62 + 32) = 0xD000000000000018;
      v63 = v81;
      *(v62 + 40) = v81;
      v9 = v93;
      URL._bridgeToObjectiveC()(v63);
      v65 = v64;
      v66 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
      *(v62 + 96) = v66;
      v67 = MEMORY[0x277D85388];
      v68 = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0, MEMORY[0x277D85388]);
      *(v62 + 104) = v68;
      *(v62 + 72) = v65;
      v69 = v94;
      URL._bridgeToObjectiveC()(v70);
      *(v62 + 136) = v66;
      *(v62 + 144) = v68;
      v5 = v69;
      *(v62 + 112) = v71;
      v72 = v88;
      v73 = _convertErrorToNSError(_:)();
      *(v62 + 176) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
      *(v62 + 184) = lazy protocol witness table accessor for type NSURL and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8, v67);
      *(v62 + 152) = v73;
      os_log(_:dso:log:type:_:)("%@: Unable to associate thumbnail for %@ to source %@ : %@", 58, 2, &dword_2493AC000, v87, v86, v62);

      v74 = *v89;
      v75 = v97;
      (*v89)(v5, v97);
      v74(v9, v75);
      v88 = 0;
      v27 = v91;
      if (v25)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    if (v79 <= v26 + 1)
    {
      v33 = v26 + 1;
    }

    else
    {
      v33 = v79;
    }

    v34 = v33 - 1;
    v35 = v92;
    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
      }

      if (v32 >= v79)
      {
        break;
      }

      v25 = *(v27 + 8 * v32);
      ++v26;
      if (v25)
      {
        v31 = v97;
        v26 = v32;
        goto LABEL_15;
      }
    }

    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3key_AC5valuetMd, &_s10Foundation3URLV3key_AC5valuetMR);
    (*(*(v76 - 8) + 56))(v35, 1, 1, v76);
    v25 = 0;
    v26 = v34;
  }
}