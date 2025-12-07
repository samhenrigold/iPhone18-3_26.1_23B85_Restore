uint64_t __SceneResourceCache.Entry.__deallocating_deinit()
{
  outlined destroy of __SceneResourceCache.Entry.EntryHolder(v0 + 16);

  return swift_deallocClassInstance();
}

double static __SceneResourceCache.attachImportedScenesForSceneChangeToEntity(importedScenes:entity:)(uint64_t a1, void *a2)
{
  v28 = type metadata accessor for __SceneImportOperation.__ImportedScene(0);
  v4 = *(v28 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v24 = a2;
    v29 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v29;
    v12 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v25 = *(v4 + 72);
    do
    {
      outlined init with copy of __SceneImportOperation.__ImportedScene(v12, v6, type metadata accessor for __SceneImportOperation.__ImportedScene);
      v13 = type metadata accessor for UUID();
      (*(*(v13 - 8) + 16))(v9, v6, v13);
      v14 = &v6[v28[5]];
      v16 = *v14;
      v15 = *(v14 + 1);
      v17 = *&v6[v28[6]];
      v18 = v6[v28[7]];

      outlined destroy of __SceneImportOperation.__ImportedScene(v6, type metadata accessor for __SceneImportOperation.__ImportedScene);
      v19 = v27;
      v20 = &v9[*(v27 + 20)];
      *v20 = v16;
      *(v20 + 1) = v15;
      *&v9[*(v19 + 24)] = v17;
      v9[*(v19 + 28)] = v18;
      v29 = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v11 = v29;
      }

      *(v11 + 16) = v22 + 1;
      outlined init with take of __SceneResourceCache.ImportedScene(v9, v11 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22);
      v12 += v25;
      --v10;
    }

    while (v10);
    a2 = v24;
  }

  specialized static __SceneResourceCache.attachImportedScenesForSceneChangeToEntity(importedScenes:entity:)(v11, a2);

  return result;
}

id closure #1 in __SceneResourceCache.CachedEntries.getOrCreateCacheEntry(for:assetBundle:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  result = [a1 objectForKey_];
  if (!result)
  {
    outlined init with copy of __REAssetBundle(a3, v12);
    type metadata accessor for __SceneResourceCache.Entry();
    v9 = swift_allocObject();
    v10 = v12[1];
    *(v9 + 16) = v12[0];
    *(v9 + 32) = v10;
    v11 = v12[3];
    *(v9 + 48) = v12[2];
    *(v9 + 64) = v11;
    *(v9 + 80) = 0;
    [a1 setObject:v9 forKey:a2];
    result = v9;
  }

  *a4 = result;
  return result;
}

id closure #1 in __SceneResourceCache.CachedEntries.getOrCreateCacheEntry(for:importedScenes:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  result = [a1 objectForKey_];
  if (!result)
  {
    type metadata accessor for __SceneResourceCache.Entry();
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 80) = 1;

    [a1 setObject:v9 forKey:a2];
    result = v9;
  }

  *a4 = result;
  return result;
}

uint64_t static __SceneResourceCache.__init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = specialized __SceneResourceCache.CachedEntries.init()();
  *(v0 + 24) = v1;
  return v0;
}

void __SceneResourceCache.findSceneResource(named:realityFileRef:fileName:url:options:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = v8;
  v101 = a5;
  v107 = a7;
  v104 = a6;
  v100 = a4;
  v112 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v108 = &v97 - v14;
  v102 = type metadata accessor for URL();
  v15 = *(v102 - 8);
  v16 = MEMORY[0x1EEE9AC00](v102);
  v103 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a1;
  v18 = MEMORY[0x1C68F3280](a1, a2, v16);
  v19 = [v18 pathExtension];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v20 == 0x7974696C616572 && v22 == 0xE700000000000000)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {

      goto LABEL_10;
    }
  }

  v26 = String.count.getter();
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    goto LABEL_58;
  }

  v29 = specialized BidirectionalCollection.dropLast(_:)(v28, v113, a2);
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v113 = MEMORY[0x1C68F3380](v29, v31, v33, v35);
  a2 = v36;

LABEL_10:
  v37 = specialized static __REAssetBundle.getSceneDescriptorsFromRealityFile(realityFile:)(v112, v25);
  v38 = v37;
  v39 = *(v37 + 16);
  if (!v39)
  {
LABEL_26:

    a8[4] = 0;
    *a8 = 0u;
    *(a8 + 1) = 0u;
    return;
  }

  v40 = 0;
  v41 = v37 + 32;
  v105 = v37;
  v106 = v8;
  v98 = v39;
  v99 = a8;
  v110 = v15;
  v97 = v37 + 32;
  while (2)
  {
    if (v40 < *(v38 + 16))
    {
      v111 = v40;
      v109 = *(v41 + 8 * v40);
      if (RESceneDescriptorGetSceneName())
      {
        v42 = String.init(cString:)();
        v126 = v43;
      }

      else
      {
        v42 = 0;
        v126 = 0xE000000000000000;
      }

      if (v42 == v113 && v126 == a2)
      {

        v42 = v113;
      }

      else
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          ++v111;
          v44 = 5;
          v45 = &unk_1F40E4018;
          while (--v44)
          {
            v47 = *(v45 - 1);
            v48 = *v45;
            v121 = v113;
            v122 = a2;

            MEMORY[0x1C68F3410](46, 0xE100000000000000);

            MEMORY[0x1C68F3410](v47, v48);

            if (v42 == v121 && v126 == v122)
            {

LABEL_27:

              v9 = v106;
              v15 = v110;
              goto LABEL_28;
            }

            v45 += 2;
            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v46)
            {
              goto LABEL_27;
            }
          }

          a8 = v99;
          v15 = v110;
          v40 = v111;
          v38 = v105;
          v9 = v106;
          v41 = v97;
          if (v111 != v98)
          {
            continue;
          }

          goto LABEL_26;
        }
      }

LABEL_28:
      v49 = v109;
      RERetain();
      type metadata accessor for RESceneDescriptor();
      inited = swift_initStackObject();
      *(inited + 16) = v49;
      v51 = RERealityFileGetCertifiedFreeOfChangeSceneActions();
      v52 = v108;
      if (v51)
      {
        v53 = inited;
        outlined init with copy of __REAssetBundle.LoadOptions(v107, &v121);
        outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v123, v124);
        v123 = v113;
        v124 = a2;
        v54 = specialized static __ServiceLocator.shared.getter();
        swift_beginAccess();
        outlined init with copy of __REAssetService(v54 + 120, v120);
        swift_beginAccess();
        v55 = *(v54 + 16);
        v56 = v125;
        if (v125)
        {

          v57 = v112;
          MajorVersionNumber = RERealityFileGetMajorVersionNumber();
          v59 = v56 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
          *v59 = MajorVersionNumber;
          *(v59 + 8) = 1;
        }

        else
        {

          v57 = v112;
        }

        static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v57, v120, v55, &v121, v114);
        if (!v9)
        {
          __swift_destroy_boxed_opaque_existential_1(v120);

          __REAssetBundle.sceneAsset(for:)(v53);
          if (v71)
          {
            v72 = v71;

            v73 = *(v72 + 16);
            RERetain();
            type metadata accessor for __SceneResource();
            v74 = swift_allocObject();
            *(v74 + 16) = v73;
            v75 = v99;
            v99[3] = &type metadata for UncachedSceneResourceLoadResult;
            v75[4] = &protocol witness table for UncachedSceneResourceLoadResult;
            v76 = swift_allocObject();
            *v75 = v76;
            swift_setDeallocating();
            v77 = v101;

            RERelease();

            *(v76 + 16) = v74;
            *(v76 + 24) = 0;
            *(v76 + 32) = v100;
            *(v76 + 40) = v77;
          }

          else
          {
            type metadata accessor for SceneResourceLoadResult.InternalError(0);
            _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
            swift_allocError();
            v93 = v92;
            v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
            v95 = *(v94 + 48);
            v96 = v126;
            *v93 = v42;
            v93[1] = v96;
            outlined init with copy of [String : String](v104, v93 + v95, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            (*(*(v94 - 8) + 56))(v93, 0, 2, v94);
            swift_willThrow();
          }

          outlined destroy of __REAssetBundle(v114);
          goto LABEL_53;
        }

        __swift_destroy_boxed_opaque_existential_1(v120);

        goto LABEL_40;
      }

      outlined init with copy of __REAssetBundle.LoadOptions(v107, &v121);
      outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v123, v124);
      v123 = 0;
      v124 = 0;
      outlined init with copy of [String : String](v104, v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v60 = v52;
      v61 = *(v15 + 48);
      v62 = v102;
      if (v61(v60, 1, v102) == 1)
      {
        v63 = v9;
        v64 = v62;
        v65 = v103;
        URL.init(fileURLWithPath:)();
        v66 = v61(v60, 1, v64);
        v68 = v65;
        v62 = v64;
        v9 = v63;
        v15 = v110;
        if (v66 != 1)
        {
          outlined destroy of BodyTrackingComponent?(v60, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        }
      }

      else
      {
        v68 = v103;
        (*(v15 + 32))(v103, v60, v62);
      }

      v69 = __SceneResourceCache.loadAssetBundle(realityFile:url:options:)(v112, &v121, v67);
      if (v9)
      {
        (*(v15 + 8))(v68, v62);

LABEL_40:

LABEL_53:
        outlined destroy of __REAssetBundle.LoadOptions(&v121);
        return;
      }

      v70 = v69;
      outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v69 + 16, v114);
      if (v115 == 1)
      {
        outlined destroy of __SceneResourceCache.Entry.EntryHolder(v114);
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
      }

      else
      {
        v116 = v114[0];
        v117 = v114[1];
        v118 = v114[2];
        v119 = v114[3];
        if (*&v114[0])
        {
          v78 = v62;
          v120[0] = v116;
          v120[1] = v117;
          v120[2] = v118;
          v120[3] = v119;
          __REAssetBundle.sceneAsset(for:)(inited);
          if (v79)
          {
            v80 = v79;

            v126 = inited;
            v81 = v99;
            v99[3] = &type metadata for SceneResourceLoadResult;
            v81[4] = &protocol witness table for SceneResourceLoadResult;
            v82 = swift_allocObject();
            *v81 = v82;
            v83 = *(v80 + 16);
            v84 = v101;

            RERetain();

            type metadata accessor for __SceneResource();
            v85 = swift_allocObject();
            *(v85 + 16) = v83;
            swift_setDeallocating();
            RERelease();
            v86 = v100;
            *(v82 + 16) = v85;
            *(v82 + 24) = v86;
            *(v82 + 32) = v84;
            *(v82 + 40) = v70;
            *(v82 + 48) = 1;
            outlined destroy of __REAssetBundle(v120);
LABEL_50:
            (*(v15 + 8))(v103, v78);
            goto LABEL_53;
          }

          outlined destroy of __REAssetBundle(v120);
LABEL_49:
          type metadata accessor for SceneResourceLoadResult.InternalError(0);
          _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
          swift_allocError();
          v88 = v87;
          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
          v90 = *(v89 + 48);
          v91 = v126;
          *v88 = v42;
          v88[1] = v91;
          outlined init with copy of [String : String](v104, v88 + v90, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          (*(*(v89 - 8) + 56))(v88, 0, 2, v89);
          swift_willThrow();

          goto LABEL_50;
        }
      }

      v78 = v62;
      outlined destroy of BodyTrackingComponent?(&v116, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
      goto LABEL_49;
    }

    break;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t __SceneResourceCache.loadAssetBundle(realityFile:url:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, NSURL *a3@<X8>)
{
  v5 = v3;
  URL._bridgeToObjectiveC()(a3);
  v9 = v8;
  v23 = *(v3 + 24);
  v10 = *(v3 + 16);
  v11 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit20__SceneResourceCacheC5EntryCSgMd, &_s10RealityKit20__SceneResourceCacheC5EntryCSgMR);
  OS_dispatch_queue.sync<A>(execute:)();

  v12 = v25[0];
  if (!v25[0])
  {
    specialized static __ServiceLocator.shared.getter();

    v12 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v12 + 120, v24);
    swift_beginAccess();
    v13 = *(v12 + 16);
    v14 = *(a2 + 120);

    if (v14)
    {
      MajorVersionNumber = RERealityFileGetMajorVersionNumber();
      v16 = v14 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v16 = MajorVersionNumber;
      *(v16 + 8) = 1;
    }

    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(a1, v24, v13, a2, v25);
    __swift_destroy_boxed_opaque_existential_1(v24);
    if (v4)
    {

      return v12;
    }

    v19 = *(v5 + 16);
    v20 = *(v5 + 24);
    MEMORY[0x1EEE9AC00](v18);
    type metadata accessor for __SceneResourceCache.Entry();
    v21 = v19;
    v22 = v20;
    OS_dispatch_queue.sync<A>(execute:)();

    v12 = *v24;
    outlined destroy of __REAssetBundle(v25);
  }

  return v12;
}

uint64_t __SceneResourceCache.findSceneResource(realityFileRef:fileName:url:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v46 = a2;
  v47 = a3;
  v45 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (RERealityFileGetCertifiedFreeOfChangeSceneActions())
  {
    outlined init with copy of __REAssetBundle.LoadOptions(a5, v55);
    outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v56, *(&v56 + 1));
    v56 = xmmword_1C18A4F10;
    v16 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v16 + 120, v54);
    swift_beginAccess();
    v17 = *(v16 + 16);
    v18 = v57;
    if (v57)
    {

      MajorVersionNumber = RERealityFileGetMajorVersionNumber();
      v20 = v18 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v20 = MajorVersionNumber;
      *(v20 + 8) = 1;
    }

    else
    {
    }

    v25 = v58;
    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(a1, v54, v17, v55, v48);
    __swift_destroy_boxed_opaque_existential_1(v54);

    if (v25)
    {
      return outlined destroy of __REAssetBundle.LoadOptions(v55);
    }

    v26 = *(&v48[0] + 1);
    if (*(&v48[0] + 1) >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_14;
      }
    }

    else if (*((*(&v48[0] + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1C68F41F0](0, v26);
        goto LABEL_17;
      }

      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v27 = *(v26 + 32);

LABEL_17:
        v28 = *(v27 + 16);
        RERetain();
        type metadata accessor for __SceneResource();
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        v30 = v45;
        v45[3] = &type metadata for UncachedSceneResourceLoadResult;
        v30[4] = &protocol witness table for UncachedSceneResourceLoadResult;
        v31 = swift_allocObject();
        *v30 = v31;
        v32 = v47;

        *(v31 + 16) = v29;
        *(v31 + 24) = 0;
        *(v31 + 32) = v46;
        *(v31 + 40) = v32;
        v33 = v48;
LABEL_27:
        outlined destroy of __REAssetBundle(v33);
        return outlined destroy of __REAssetBundle.LoadOptions(v55);
      }

      __break(1u);
      goto LABEL_34;
    }

    v42 = v48;
LABEL_36:
    outlined destroy of __REAssetBundle(v42);
    goto LABEL_37;
  }

  outlined init with copy of __REAssetBundle.LoadOptions(a5, v55);
  outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v56, *(&v56 + 1));
  v56 = 0uLL;
  outlined init with copy of [String : String](a4, v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    URL.init(fileURLWithPath:)();
    if (v21(v11, 1, v12) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v23 = v58;
  v24 = __SceneResourceCache.loadAssetBundle(realityFile:url:options:)(a1, v55, v22);
  if (v23)
  {
    (*(v13 + 8))(v15, v12);
    return outlined destroy of __REAssetBundle.LoadOptions(v55);
  }

  a1 = v24;
  outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v24 + 16, v48);
  if (v49 == 1)
  {
    outlined destroy of __SceneResourceCache.Entry.EntryHolder(v48);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
  }

  else
  {
    v50 = v48[0];
    v51 = v48[1];
    v52 = v48[2];
    v53 = v48[3];
    if (*&v48[0])
    {
      v54[0] = v50;
      v54[1] = v51;
      v54[2] = v52;
      v54[3] = v53;
      v26 = *(&v50 + 1);
      if (!(*(&v50 + 1) >> 62))
      {
        result = *((*(&v50 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
LABEL_35:

          (*(v13 + 8))(v15, v12);
          v42 = v54;
          goto LABEL_36;
        }

LABEL_23:
        if ((v26 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1C68F41F0](0, v26);
        }

        else
        {
          if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v35 = *(v26 + 32);
        }

        v36 = v45;
        v45[3] = &type metadata for SceneResourceLoadResult;
        v36[4] = &protocol witness table for SceneResourceLoadResult;
        v37 = swift_allocObject();
        *v36 = v37;
        v38 = *(v35 + 16);

        RERetain();

        type metadata accessor for __SceneResource();
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        v41 = v46;
        v40 = v47;
        *(v37 + 16) = v39;
        *(v37 + 24) = v41;
        *(v37 + 32) = v40;
        *(v37 + 40) = a1;
        *(v37 + 48) = 0;
        (*(v13 + 8))(v15, v12);
        v33 = v54;
        goto LABEL_27;
      }

LABEL_34:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        goto LABEL_35;
      }

      goto LABEL_23;
    }
  }

  (*(v13 + 8))(v15, v12);

  outlined destroy of BodyTrackingComponent?(&v50, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
LABEL_37:
  result = outlined destroy of __REAssetBundle.LoadOptions(v55);
  v43 = v45;
  v45[4] = 0;
  *v43 = 0u;
  *(v43 + 1) = 0u;
  return result;
}

void __SceneResourceCache.findSceneResource(named:bundle:options:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v185 = a4;
  v197 = a2;
  v229 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v180 = &v170 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v202 = &v170 - v14;
  v15 = type metadata accessor for URL();
  v192 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v184 = &v170 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v170 - v22;
  v24 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000, v21);
  v179 = a3;
  v25 = [a3 URLsForResourcesWithExtension:v24 subdirectory:0];

  if (!v25)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  v173 = a5;
  v174 = v17;
  v199 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v191 = a1;
  v26 = MEMORY[0x1C68F3280](a1, v197);
  v27 = [v26 pathExtension];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v189 = v23;
  if (v28 == 0x7974696C616572 && v30 == 0xE700000000000000)
  {

    v31 = v192;
LABEL_7:
    v33 = v197;

    v34 = String.count.getter();
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_119;
    }

    v37 = specialized BidirectionalCollection.dropLast(_:)(v36, v191, v33);
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v175 = MEMORY[0x1C68F3380](v37, v39, v41, v43);
    v176 = v44;

    goto LABEL_10;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v31 = v192;
  if (v32)
  {
    goto LABEL_7;
  }

  v175 = v191;
  v176 = v45;
LABEL_10:
  v46 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v46 + 120, &v220);
  v47 = v221;
  v48 = v222;
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v49 = *(v48 + 32);
  v177 = v46;

  v203 = v49(v47, v48);
  __swift_destroy_boxed_opaque_existential_1(&v220);
  v50 = v199;
  v195 = *(v199 + 16);
  if (!v195)
  {

    v188 = 0;
    goto LABEL_88;
  }

  v188 = 0;
  v51 = 0;
  v196 = v199 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v186 = (v31 + 56);
  v52 = HIBYTE(v197) & 0xF;
  if ((v197 & 0x2000000000000000) == 0)
  {
    v52 = v191;
  }

  v53 = 7;
  if (((v197 >> 60) & ((v191 & 0x800000000000000) == 0)) != 0)
  {
    v53 = 11;
  }

  v181 = v53 | (v52 << 16);
  v178 = (v31 + 48);
  v198 = (v31 + 8);
  v171 = 0x80000001C18E1F00;
  v172 = (v31 + 32);
  v190 = v15;
  v54 = v189;
  v206 = v10;
  v193 = v31 + 16;
  do
  {
    if (v51 >= *(v50 + 16))
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
    }

    v55 = *(v31 + 72);
    v204 = v51;
    v56 = *(v31 + 16);
    v56(v54, v196 + v55 * v51, v15);
    *&v210 = 0;
    URL._bridgeToObjectiveC()(v57);
    v59 = v58;
    v60 = RERealityFileMountFileAtURL();

    if (!v60)
    {
      v70 = v205;
      specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v210);
      v71 = v70;
      if (!v70)
      {
        v72 = v210;
        if (v210)
        {
          type metadata accessor for CFErrorRef(0);
          _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
          v71 = swift_allocError();
          *v73 = v72;
        }

        else
        {
          *&v220 = 0;
          *(&v220 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(34);

          *&v220 = 0xD00000000000001FLL;
          *(&v220 + 1) = v171;
          v132 = URL.path.getter();
          MEMORY[0x1C68F3410](v132);

          MEMORY[0x1C68F3410](46, 0xE100000000000000);
          v133 = v220;
          lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
          v71 = swift_allocError();
          *v134 = v133;
          *(v134 + 16) = 4;
        }

        swift_willThrow();
      }

      v205 = 0;
      (*v198)(v54, v15);
      if (v188)
      {
      }

      else
      {
        v188 = v71;
      }

      goto LABEL_18;
    }

    v208 = v60;
    v194 = URL.lastPathComponent.getter();
    v201 = v61;
    v62 = v202;
    v56(v202, v54, v15);
    (*v186)(v62, 0, 1, v15);
    v63 = v191;
    v64 = v197;
    v65 = MEMORY[0x1C68F3280](v191, v197);
    v66 = [v65 pathExtension];

    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    if (v67 == 0x7974696C616572 && v69 == 0xE700000000000000)
    {
    }

    else
    {
      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v74 & 1) == 0)
      {

        *&v207 = v63;
        *(&v207 + 1) = v64;
        goto LABEL_32;
      }
    }

    v75 = String.count.getter();
    if (__OFADD__(v75, 1))
    {
      goto LABEL_117;
    }

    if (v75 + 1 < 0)
    {
      goto LABEL_118;
    }

    String.index(_:offsetBy:limitedBy:)();
    v76 = String.subscript.getter();
    v78 = v77;
    v80 = v79;
    v82 = v81;

    *&v207 = MEMORY[0x1C68F3380](v76, v78, v80, v82);
    *(&v207 + 1) = v83;

LABEL_32:
    v84 = v208;
    AssetDescriptorCount = RERealityFileGetAssetDescriptorCount();
    if (AssetDescriptorCount < 0)
    {
      goto LABEL_115;
    }

    v86 = AssetDescriptorCount;
    if (AssetDescriptorCount)
    {
      v87 = 0;
      v88 = MEMORY[0x1E69E7CC0];
      do
      {
        if (RERealityFileGetAssetDescriptorAtIndex())
        {
          v89 = RERealityFileAssetDescriptorAsSceneDescriptor();
          if (v89)
          {
            v90 = v89;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v88 + 2) + 1, 1, v88);
            }

            v92 = *(v88 + 2);
            v91 = *(v88 + 3);
            if (v92 >= v91 >> 1)
            {
              v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v88);
            }

            *(v88 + 2) = v92 + 1;
            *&v88[8 * v92 + 32] = v90;
            v10 = v206;
          }

          v84 = v208;
        }

        ++v87;
      }

      while (v86 != v87);
    }

    else
    {
      v88 = MEMORY[0x1E69E7CC0];
    }

    v93 = *(v88 + 2);
    if (!v93)
    {
LABEL_16:

      outlined destroy of BodyTrackingComponent?(v202, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v225 = 0u;
      v226 = 0u;
      v227 = 0;
      v54 = v189;
      v15 = v190;
      goto LABEL_17;
    }

    v94 = 0;
    v95 = v88 + 32;
    v182 = v88 + 32;
    v183 = v93;
LABEL_47:
    if (v94 >= *(v88 + 2))
    {
      goto LABEL_116;
    }

    v200 = *&v95[8 * v94];
    if (RESceneDescriptorGetSceneName())
    {
      v96 = String.init(cString:)();
      v209 = v97;
    }

    else
    {
      v96 = 0;
      v209 = 0xE000000000000000;
    }

    if (__PAIR128__(v209, v96) == v207)
    {

      v96 = v207;
      goto LABEL_62;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {

      goto LABEL_62;
    }

    v187 = v94 + 1;
    v98 = 5;
    v99 = &unk_1F40E4018;
    while (1)
    {
      if (!--v98)
      {

        v95 = v182;
        v94 = v187;
        v31 = v192;
        v10 = v206;
        v84 = v208;
        if (v187 == v183)
        {
          goto LABEL_16;
        }

        goto LABEL_47;
      }

      v102 = *(v99 - 1);
      v101 = *v99;
      v220 = v207;

      MEMORY[0x1C68F3410](46, 0xE100000000000000);

      MEMORY[0x1C68F3410](v102, v101);

      if (__PAIR128__(v209, v96) == v220)
      {
        break;
      }

      v99 += 2;
      v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v100)
      {
        goto LABEL_61;
      }
    }

LABEL_61:

    v31 = v192;
    v10 = v206;
    v84 = v208;
LABEL_62:
    v103 = v200;
    RERetain();
    type metadata accessor for RESceneDescriptor();
    inited = swift_initStackObject();
    *(inited + 16) = v103;
    if ((RERealityFileGetCertifiedFreeOfChangeSceneActions() & 1) == 0)
    {
      v110 = v96;

      outlined init with copy of __REAssetBundle.LoadOptions(v185, &v220);
      outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v223, *(&v223 + 1));
      v223 = 0uLL;
      v111 = v180;
      outlined init with copy of [String : String](v202, v180, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v112 = *v178;
      v113 = v190;
      if ((*v178)(v111, 1, v190) == 1)
      {
        URL.init(fileURLWithPath:)();
        if (v112(v111, 1, v113) != 1)
        {
          outlined destroy of BodyTrackingComponent?(v111, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        }
      }

      else
      {
        (*v172)(v184, v111, v113);
      }

      v115 = v205;
      v116 = __SceneResourceCache.loadAssetBundle(realityFile:url:options:)(v208, &v220, v114);
      v205 = v115;
      if (v115)
      {

        v150 = v198;
        v15 = v190;
        (*v198)(v184, v190);
        v151 = v202;
        goto LABEL_105;
      }

      v117 = v116;
      outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v116 + 16, &v210);
      if (v214)
      {
        outlined destroy of __SceneResourceCache.Entry.EntryHolder(&v210);
        v215 = 0u;
        v216 = 0u;
        v217 = 0u;
        v218 = 0u;
      }

      else
      {
        v215 = v210;
        v216 = v211;
        v217 = v212;
        v218 = v213;
        if (v210)
        {
          v219[0] = v215;
          v219[1] = v216;
          v219[2] = v217;
          v219[3] = v218;
          __REAssetBundle.sceneAsset(for:)(inited);
          if (v118)
          {
            v119 = v118;

            *(&v226 + 1) = &type metadata for SceneResourceLoadResult;
            v227 = &protocol witness table for SceneResourceLoadResult;
            v120 = swift_allocObject();
            *&v225 = v120;
            v121 = *(v119 + 16);
            v122 = v201;

            RERetain();

            type metadata accessor for __SceneResource();
            v123 = swift_allocObject();
            *(v123 + 16) = v121;
            v124 = v194;
            *(v120 + 16) = v123;
            *(v120 + 24) = v124;
            *(v120 + 32) = v122;
            *(v120 + 40) = v117;
            *(v120 + 48) = 1;
            swift_setDeallocating();
            RERelease();

            outlined destroy of __REAssetBundle(v219);
            v15 = v190;
            (*v198)(v184, v190);
            outlined destroy of BodyTrackingComponent?(v202, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            outlined destroy of __REAssetBundle.LoadOptions(&v220);
            v31 = v192;
            goto LABEL_78;
          }

          outlined destroy of __REAssetBundle(v219);

LABEL_104:
          type metadata accessor for SceneResourceLoadResult.InternalError(0);
          _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
          v159 = swift_allocError();
          v161 = v160;
          v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
          v163 = *(v162 + 48);
          v164 = v209;
          *v161 = v110;
          v161[1] = v164;
          v165 = v202;
          outlined init with copy of [String : String](v202, v161 + v163, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          (*(*(v162 - 8) + 56))(v161, 0, 2, v162);
          v205 = v159;
          swift_willThrow();

          v150 = v198;
          v15 = v190;
          (*v198)(v184, v190);
          v151 = v165;
LABEL_105:
          outlined destroy of BodyTrackingComponent?(v151, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          outlined destroy of __REAssetBundle.LoadOptions(&v220);
LABEL_106:
          RERealityFileUnmount();

          (*v150)(v189, v15);
          return;
        }
      }

      outlined destroy of BodyTrackingComponent?(&v215, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
      goto LABEL_104;
    }

    outlined init with copy of __REAssetBundle.LoadOptions(v185, &v220);
    outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v223, *(&v223 + 1));
    v223 = v207;
    v105 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v105 + 120, v219);
    swift_beginAccess();
    v106 = *(v105 + 16);
    v107 = v224;
    if (v224)
    {

      MajorVersionNumber = RERealityFileGetMajorVersionNumber();
      v109 = v107 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v109 = MajorVersionNumber;
      *(v109 + 8) = 1;
    }

    else
    {
    }

    v125 = v205;
    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v84, v219, v106, &v220, &v210);
    v205 = v125;
    if (v125)
    {
      __swift_destroy_boxed_opaque_existential_1(v219);

      outlined destroy of BodyTrackingComponent?(v202, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of __REAssetBundle.LoadOptions(&v220);
      v15 = v190;
      v150 = v198;
      goto LABEL_106;
    }

    __swift_destroy_boxed_opaque_existential_1(v219);

    __REAssetBundle.sceneAsset(for:)(inited);
    v15 = v190;
    if (!v126)
    {

      type metadata accessor for SceneResourceLoadResult.InternalError(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
      v152 = swift_allocError();
      v154 = v153;
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
      v156 = *(v155 + 48);
      v157 = v209;
      *v154 = v96;
      v154[1] = v157;
      v158 = v202;
      outlined init with copy of [String : String](v202, v154 + v156, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(*(v155 - 8) + 56))(v154, 0, 2, v155);
      v205 = v152;
      swift_willThrow();

      outlined destroy of __REAssetBundle(&v210);
      outlined destroy of BodyTrackingComponent?(v158, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of __REAssetBundle.LoadOptions(&v220);
      v150 = v198;
      goto LABEL_106;
    }

    v127 = v126;

    v128 = *(v127 + 16);
    RERetain();
    type metadata accessor for __SceneResource();
    v129 = swift_allocObject();
    *(v129 + 16) = v128;
    *(&v226 + 1) = &type metadata for UncachedSceneResourceLoadResult;
    v227 = &protocol witness table for UncachedSceneResourceLoadResult;
    v130 = swift_allocObject();
    *&v225 = v130;
    *(v130 + 16) = v129;
    *(v130 + 24) = 0;
    v131 = v201;
    *(v130 + 32) = v194;
    *(v130 + 40) = v131;
    swift_setDeallocating();
    RERelease();

    outlined destroy of __REAssetBundle(&v210);
    outlined destroy of BodyTrackingComponent?(v202, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of __REAssetBundle.LoadOptions(&v220);
LABEL_78:
    v54 = v189;
    if (*(&v226 + 1))
    {

      outlined init with take of ForceEffectBase(&v225, v228);
      outlined init with take of ForceEffectBase(v228, v173);
      RERealityFileUnmount();

      (*v198)(v54, v15);
      return;
    }

LABEL_17:
    outlined destroy of BodyTrackingComponent?(&v225, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
    RERealityFileUnmount();
    (*v198)(v54, v15);
LABEL_18:
    v51 = v204 + 1;
    v50 = v199;
  }

  while (v204 + 1 != v195);

LABEL_88:
  v135 = MEMORY[0x1C68F3280](v175, v176);

  v136 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000);
  v137 = [v179 URLForResource:v135 withExtension:v136 subdirectory:0];

  if (!v137)
  {
    goto LABEL_108;
  }

  v138 = v174;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  *&v219[0] = 0;
  URL._bridgeToObjectiveC()(v139);
  v141 = v140;
  v142 = RERealityFileMountFileAtURL();

  if (v142)
  {
    v143 = URL.lastPathComponent.getter();
    v145 = v144;
    (*(v31 + 16))(v10, v138, v15);
    (*(v31 + 56))(v10, 0, 1, v15);
    v146 = v205;
    __SceneResourceCache.findSceneResource(realityFileRef:fileName:url:options:)(v142, v143, v145, v10, v185, &v210);
    v205 = v146;
    if (v146)
    {
      outlined destroy of BodyTrackingComponent?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      RERealityFileUnmount();

      (*(v31 + 8))(v138, v15);
      return;
    }

    outlined destroy of BodyTrackingComponent?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    if (*(&v211 + 1))
    {
      outlined init with take of ForceEffectBase(&v210, &v220);
      outlined init with take of ForceEffectBase(&v220, v173);
      RERealityFileUnmount();

      (*(v31 + 8))(v174, v15);
      return;
    }

    outlined destroy of BodyTrackingComponent?(&v210, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
    RERealityFileUnmount();
    (*(v31 + 8))(v174, v15);
LABEL_108:
    v166 = v173;
    if (v188)
    {
      swift_willThrow();
LABEL_110:
    }

    else
    {

      *(v166 + 32) = 0;
      *v166 = 0u;
      *(v166 + 16) = 0u;
    }
  }

  else
  {
    v147 = v205;
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(*&v219[0]);
    if (v147)
    {
      (*(v31 + 8))(v138, v15);

      goto LABEL_110;
    }

    v148 = *&v219[0];
    if (*&v219[0])
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v149 = v148;
    }

    else
    {
      *&v220 = 0;
      *(&v220 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      *&v220 = 0xD00000000000001FLL;
      *(&v220 + 1) = 0x80000001C18E1F00;
      v167 = URL.path.getter();
      MEMORY[0x1C68F3410](v167);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v168 = v220;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v169 = v168;
      *(v169 + 16) = 4;
    }

    swift_willThrow();

    (*(v31 + 8))(v138, v15);
  }
}

uint64_t __SceneResourceCache.loadSceneResource(url:sceneName:loadOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v103 = a2;
  v100 = a5;
  v119 = *MEMORY[0x1E69E9840];
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  outlined init with copy of __REAssetBundle.LoadOptions(a4, v112);
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v9 + 120, &v106);
  v10 = *(&v107 + 1);
  v11 = v108;
  __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
  v12 = *(v11 + 32);
  v104 = v9;

  v13 = v11;
  v14 = a1;
  v15 = v12(v10, v13);
  __swift_destroy_boxed_opaque_existential_1(&v106);
  v111 = 0;
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v19 = RERealityFileMountFileAtURL();

  if (!v19)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v111);
    if (v5)
    {
      outlined destroy of BodyTrackingComponent?(&v115, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);

      return outlined destroy of __REAssetBundle.LoadOptions(v112);
    }

    v26 = v111;
    if (v111)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v27 = v26;
    }

    else
    {
      *&v106 = 0;
      *(&v106 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      *&v106 = 0xD00000000000001FLL;
      *(&v106 + 1) = 0x80000001C18E1F00;
      v59 = URL.path.getter();
      MEMORY[0x1C68F3410](v59);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v60 = v106;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v61 = v60;
      *(v61 + 16) = 4;
    }

    swift_willThrow();
    goto LABEL_50;
  }

  v101 = v15;
  v98 = RERealityFileGetCertifiedFreeOfChangeSceneActions();
  if (v98)
  {
    v99 = v19;
    v20 = a3;
    if (a3)
    {
      v21 = v103;
    }

    else
    {
      v21 = 0;
    }

    if (a3 <= 1)
    {
      a3 = 1;
    }

    v23 = v113;
    v22 = v114;

    outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v23, v22);
    v113 = v21;
    v114 = a3;
    v24 = specialized static __ServiceLocator.shared.getter();

    closure #1 in __SceneResourceCache.initAssetBundle(url:loadOptions:)(a1, v24, v112, &v106);
    if (v6)
    {

LABEL_13:
      RERealityFileUnmount();
LABEL_50:

      goto LABEL_51;
    }

    outlined destroy of BodyTrackingComponent?(&v115, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);

    v28 = 0;
    v115 = v106;
    v116 = v107;
    v117 = v108;
    v118 = v109;
  }

  else
  {
    outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v113, v114);
    v113 = 0;
    v114 = 0;
    v25 = __SceneResourceCache.loadAssetBundle(url:loadOptions:)(a1, v112);
    if (v5)
    {
      goto LABEL_13;
    }

    v28 = v25;
    v20 = a3;
    outlined destroy of BodyTrackingComponent?(&v115, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
    outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v28 + 16, &v106);
    v99 = v19;
    if (v110)
    {
      outlined destroy of __SceneResourceCache.Entry.EntryHolder(&v106);
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
    }

    else
    {
      v29 = v106;
      v30 = v107;
      v31 = v108;
      v32 = v109;
    }

    v115 = v29;
    v116 = v30;
    v117 = v31;
    v118 = v32;
  }

  v33 = outlined init with copy of [String : String](&v115, v105, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
  if (!*&v105[0])
  {
LABEL_40:
    outlined destroy of BodyTrackingComponent?(v105, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
    type metadata accessor for SceneResourceLoadResult.InternalError(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
    swift_allocError();
    v45 = v44;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
    (*(*(v46 - 8) + 56))(v45, 1, 2, v46);
    swift_willThrow();
    RERealityFileUnmount();

LABEL_51:
    outlined destroy of BodyTrackingComponent?(&v115, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
    return outlined destroy of __REAssetBundle.LoadOptions(v112);
  }

  v96 = v28;
  v106 = v105[0];
  v107 = v105[1];
  v108 = v105[2];
  v109 = v105[3];
  if (v20)
  {
    v34 = *(&v106 + 1);
    MEMORY[0x1EEE9AC00](v33);
    v93[2] = &v106;

    v35 = specialized Sequence.compactMap<A>(_:)(closure #1 in __REAssetBundle.getSceneDescriptors()partial apply, v93, v34);
    v36 = v35;
    v95 = 0;
    if (v35 >> 62)
    {
LABEL_66:
      v37 = __CocoaSet.count.getter();
      v94 = v14;
      if (v37)
      {
LABEL_25:
        v38 = 0;
        v102 = v36 & 0xC000000000000001;
        v97 = v36 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v102)
          {
            v39 = MEMORY[0x1C68F41F0](v38, v36);
            v40 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          else
          {
            if (v38 >= *(v97 + 16))
            {
              __break(1u);
              goto LABEL_66;
            }

            v39 = *(v36 + 8 * v38 + 32);

            v40 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_39;
            }
          }

          SceneName = RESceneDescriptorGetSceneName();
          if (SceneName)
          {
            SceneName = String.init(cString:)();
            v43 = v42;
          }

          else
          {
            v43 = 0xE000000000000000;
          }

          if (SceneName == v103 && v43 == v20)
          {
            break;
          }

          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v14)
          {
            goto LABEL_54;
          }

          ++v38;
          if (v40 == v37)
          {
            goto LABEL_67;
          }
        }

LABEL_54:

        __REAssetBundle.sceneAsset(for:)(v39);
        if (!v62)
        {

          goto LABEL_68;
        }

        v63 = v62;
        if (v98)
        {

          v64 = URL.lastPathComponent.getter();
          v66 = v65;
          v67 = *(v63 + 16);
          RERetain();

          type metadata accessor for __SceneResource();
          v68 = swift_allocObject();
          *(v68 + 16) = v67;
          v69 = v100;
          v100[3] = &type metadata for UncachedSceneResourceLoadResult;
          v69[4] = &protocol witness table for UncachedSceneResourceLoadResult;
          v70 = swift_allocObject();
          *v69 = v70;

          *(v70 + 16) = v68;
          *(v70 + 24) = 0;
          *(v70 + 32) = v64;
          *(v70 + 40) = v66;
          outlined destroy of __REAssetBundle(&v106);
          goto LABEL_57;
        }

        result = URL.lastPathComponent.getter();
        v77 = v96;
        if (v96)
        {
          v78 = result;
          v79 = v76;

          v80 = v100;
          v100[3] = &type metadata for SceneResourceLoadResult;
          v80[4] = &protocol witness table for SceneResourceLoadResult;
          v81 = swift_allocObject();
          *v80 = v81;
          v82 = *(v63 + 16);
          RERetain();

          type metadata accessor for __SceneResource();
          v83 = swift_allocObject();
          *(v83 + 16) = v82;

          *(v81 + 16) = v83;
          *(v81 + 24) = v78;
          *(v81 + 32) = v79;
          *(v81 + 40) = v77;
          *(v81 + 48) = 0;
          outlined destroy of __REAssetBundle(&v106);
          RERealityFileUnmount();
          goto LABEL_63;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v94 = v14;
      if (v37)
      {
        goto LABEL_25;
      }
    }

LABEL_67:

LABEL_68:
    type metadata accessor for SceneResourceLoadResult.InternalError(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
    swift_allocError();
    v85 = v84;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
    v87 = *(v86 + 48);
    *v85 = v103;
    v85[1] = v20;
    v88 = type metadata accessor for URL();
    v89 = *(v88 - 8);
    (*(v89 + 16))(v85 + v87, v94, v88);
    (*(v89 + 56))(v85 + v87, 0, 1, v88);
    (*(*(v86 - 8) + 56))(v85, 0, 2, v86);
    swift_willThrow();
    outlined destroy of __REAssetBundle(&v106);
LABEL_71:
    RERealityFileUnmount();

    goto LABEL_50;
  }

  v47 = *(&v106 + 1);
  if (!(*(&v106 + 1) >> 62))
  {
    v48 = *((*(&v106 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v99;
    if (v48)
    {
      goto LABEL_43;
    }

LABEL_70:
    type metadata accessor for SceneResourceLoadResult.InternalError(v48);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
    swift_allocError();
    v91 = v90;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
    (*(*(v92 - 8) + 56))(v91, 1, 2, v92);
    swift_willThrow();
    outlined destroy of __REAssetBundle(&v106);
    goto LABEL_71;
  }

  v48 = __CocoaSet.count.getter();
  v49 = v99;
  if (!v48)
  {
    goto LABEL_70;
  }

LABEL_43:
  v95 = 0;
  if ((v47 & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x1C68F41F0](0, v47);
  }

  else
  {
    if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v50 = *(v47 + 32);
  }

  result = URL.lastPathComponent.getter();
  v52 = result;
  v54 = v53;
  if (v98)
  {
    v55 = *(v50 + 16);
    RERetain();
    type metadata accessor for __SceneResource();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    v57 = v100;
    v100[3] = &type metadata for UncachedSceneResourceLoadResult;
    v57[4] = &protocol witness table for UncachedSceneResourceLoadResult;
    v58 = swift_allocObject();
    *v57 = v58;

    *(v58 + 16) = v56;
    *(v58 + 24) = 0;
    *(v58 + 32) = v52;
    *(v58 + 40) = v54;
    outlined destroy of __REAssetBundle(&v106);
LABEL_57:
    RERealityFileUnmount();

    v104 = v96;
LABEL_64:

    outlined destroy of BodyTrackingComponent?(&v115, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
    return outlined destroy of __REAssetBundle.LoadOptions(v112);
  }

  v99 = v49;
  v71 = v96;
  if (v96)
  {
    v72 = v100;
    v100[3] = &type metadata for SceneResourceLoadResult;
    v72[4] = &protocol witness table for SceneResourceLoadResult;
    v73 = swift_allocObject();
    *v72 = v73;
    v74 = *(v50 + 16);

    RERetain();

    type metadata accessor for __SceneResource();
    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    *(v73 + 16) = v75;
    *(v73 + 24) = v52;
    *(v73 + 32) = v54;
    *(v73 + 40) = v71;
    *(v73 + 48) = 0;
    outlined destroy of __REAssetBundle(&v106);
    RERealityFileUnmount();
LABEL_63:

    goto LABEL_64;
  }

  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t __SceneResourceCache.loadAssetBundle(url:loadOptions:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URL.standardizedFileURL.getter();
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = *(v2 + 24);
  v24 = *(v4 + 16);
  v25 = v13;
  v26 = v11;
  v14 = v24;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit20__SceneResourceCacheC5EntryCSgMd, &_s10RealityKit20__SceneResourceCacheC5EntryCSgMR);
  OS_dispatch_queue.sync<A>(execute:)();

  v16 = *&v28[0];
  if (!*&v28[0])
  {
    v16 = specialized static __ServiceLocator.shared.getter();

    closure #1 in __SceneResourceCache.initAssetBundle(url:loadOptions:)(v9, v16, a2, v27);
    if (v3)
    {

      (*(v7 + 8))(v9, v6);
      return v16;
    }

    v29 = v23;
    v28[0] = v27[0];
    v28[1] = v27[1];
    v28[2] = v27[2];
    v28[3] = v27[3];
    v19 = *(v4 + 16);
    v20 = *(v4 + 24);
    MEMORY[0x1EEE9AC00](v18);
    *&v23[-32] = v19;
    *&v23[-24] = v20;
    *&v23[-16] = v12;
    *&v23[-8] = v28;
    type metadata accessor for __SceneResourceCache.Entry();
    v21 = v19;
    v22 = v20;
    OS_dispatch_queue.sync<A>(execute:)();

    v16 = *&v27[0];
    outlined destroy of __REAssetBundle(v28);
  }

  (*(v7 + 8))(v9, v6);

  return v16;
}

uint64_t __SceneResourceCache.loadSceneResource(from:named:resourceIdentifier:loadOptions:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v55 = a2;
  v52 = a5;
  *&v58 = a3;
  *(&v58 + 1) = a4;
  v51 = a1;
  v49 = a6;
  v63 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for URL();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v14 + 120, &v60);
  v15 = v61;
  v16 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, v61);
  v17 = *(v16 + 32);
  v57 = v14;

  v18 = v17(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v60);
  v59 = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v20 = RERealityFileMountFileFromBuffer();

  if (v20)
  {
    v60 = v58;

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    MEMORY[0x1C68F3410](0x7974696C616572, 0xE700000000000000);
    v21 = v60;
    URL.init(fileURLWithPath:)();
    v22 = v55;
    if (v55)
    {
      v50 = v18;

      v23 = v53;
      v24 = v20;
      v25 = v54;
      (*(v53 + 16))(v10, v13, v54);
      v26 = *(v23 + 56);
      v26(v10, 0, 1, v25);
      v27 = v56;
      __SceneResourceCache.findSceneResource(named:realityFileRef:fileName:url:options:)(v51, v22, v24, v58, *(&v58 + 1), v10, v52, &v60);
      if (v27)
      {

        outlined destroy of BodyTrackingComponent?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v23 + 8))(v13, v25);
      }

      else
      {
        *(&v58 + 1) = v24;
        outlined destroy of BodyTrackingComponent?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        if (v61)
        {
          (*(v23 + 8))(v13, v25);

          outlined init with take of ForceEffectBase(&v60, v49);
        }

        else
        {
          outlined destroy of BodyTrackingComponent?(&v60, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
          type metadata accessor for SceneResourceLoadResult.InternalError(0);
          _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
          swift_allocError();
          v39 = v38;
          v40 = v13;
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
          v42 = *(v41 + 48);
          v43 = v55;
          *v39 = v51;
          *(v39 + 1) = v43;
          v26(&v39[v42], 1, 1, v25);
          (*(*(v41 - 8) + 56))(v39, 0, 2, v41);
          swift_willThrow();
          (*(v23 + 8))(v40, v25);
        }
      }

      goto LABEL_15;
    }

    v31 = v53;
    v32 = v50;
    v33 = v13;
    v34 = v13;
    v35 = v54;
    (*(v53 + 16))(v50, v33, v54);
    (*(v31 + 56))(v32, 0, 1, v35);
    v36 = v56;
    __SceneResourceCache.findSceneResource(realityFileRef:fileName:url:options:)(v20, v21, *(&v21 + 1), v32, v52, &v60);
    if (v36)
    {

      outlined destroy of BodyTrackingComponent?(v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      if (v61)
      {
        (*(v31 + 8))(v34, v35);
        outlined init with take of ForceEffectBase(&v60, v49);
        goto LABEL_15;
      }

      outlined destroy of BodyTrackingComponent?(&v60, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
      type metadata accessor for SceneResourceLoadResult.InternalError(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
      swift_allocError();
      v46 = v45;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
      (*(*(v47 - 8) + 56))(v46, 1, 2, v47);
      swift_willThrow();
    }

    (*(v31 + 8))(v34, v35);
LABEL_15:
    RERealityFileUnmount();
  }

  v28 = v56;
  specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v59);
  if (!v28)
  {
    v29 = v59;
    if (v59)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v30 = v29;
    }

    else
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v44 = 0xD000000000000028;
      *(v44 + 8) = 0x80000001C18E6DD0;
      *(v44 + 16) = 4;
    }

    swift_willThrow();
  }
}

uint64_t __SceneResourceCache.loadSceneResources(url:options:)(uint64_t a1, uint64_t a2)
{
  v5 = __SceneResourceCache.loadAssetBundle(url:loadOptions:)(a1, a2);
  if (!v3)
  {
    ResultVs5NeverOTg5 = v5;
    v6 = outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v5 + 16, v16);
    if (v17 == 1)
    {
      outlined destroy of __SceneResourceCache.Entry.EntryHolder(v16);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
LABEL_6:
      outlined destroy of BodyTrackingComponent?(&v18, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
      type metadata accessor for SceneResourceLoadResult.InternalError(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
      swift_allocError();
      v10 = v9;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
      (*(*(v11 - 8) + 56))(v10, 1, 2, v11);
      swift_willThrow();

      return ResultVs5NeverOTg5;
    }

    v18 = v16[0];
    v19 = v16[1];
    v20 = v16[2];
    v21 = v16[3];
    if (!*&v16[0])
    {
      goto LABEL_6;
    }

    v22[0] = v18;
    v22[1] = v19;
    v22[2] = v20;
    v22[3] = v21;
    MEMORY[0x1EEE9AC00](v6);
    v15 = v22;
    v8 = specialized Sequence.compactMap<A>(_:)(closure #1 in __REAssetBundle.getSceneDescriptors()partial apply, v14, v7);
    MEMORY[0x1EEE9AC00](v8);
    v14[0] = v22;
    v14[1] = a1;
    v15 = ResultVs5NeverOTg5;
    ResultVs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17RealityFoundation17RESceneDescriptorCG_AF23SceneResourceLoadResultVs5NeverOTg5(partial apply for closure #1 in __SceneResourceCache.loadSceneResources(url:options:), &v13, v8);

    outlined destroy of __REAssetBundle(v22);
  }

  return ResultVs5NeverOTg5;
}

void closure #1 in __SceneResourceCache.loadSceneResources(url:options:)(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  __REAssetBundle.sceneAsset(for:)(*a1);
  if (v5)
  {
    v6 = v5;
    v7 = URL.lastPathComponent.getter();
    v9 = v8;
    v10 = *(v6 + 16);
    RERetain();

    type metadata accessor for __SceneResource();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *a3 = v11;
    *(a3 + 8) = v7;
    *(a3 + 16) = v9;
    *(a3 + 24) = a2;
    *(a3 + 32) = 0;
  }

  else
  {
    __break(1u);
  }
}

__n128 __SceneResourceCache.__registerImportedScenes(url:importedScenes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v5 = v4;
  v40 = type metadata accessor for __SceneImportOperation.__ImportedScene(0);
  v9 = *(v40 - 1);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v32 = a1;
    v33 = v4;
    v34 = a3;
    v35 = v3;
    v41[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v41[0];
    v16 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v36 = *(v9 + 72);
    do
    {
      v44 = v14;
      v17 = v37;
      outlined init with copy of __SceneImportOperation.__ImportedScene(v16, v37, type metadata accessor for __SceneImportOperation.__ImportedScene);
      v18 = type metadata accessor for UUID();
      (*(*(v18 - 8) + 16))(v13, v17, v18);
      v19 = (v17 + v40[5]);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v17 + v40[6]);
      v23 = v15;
      v24 = *(v17 + v40[7]);

      outlined destroy of __SceneImportOperation.__ImportedScene(v17, type metadata accessor for __SceneImportOperation.__ImportedScene);
      v25 = v39;
      v26 = &v13[*(v39 + 20)];
      *v26 = v20;
      *(v26 + 1) = v21;
      *&v13[*(v25 + 24)] = v22;
      v13[*(v25 + 28)] = v24;
      v15 = v23;
      v41[0] = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v15 = v41[0];
      }

      *(v15 + 16) = v28 + 1;
      outlined init with take of __SceneResourceCache.ImportedScene(v13, v15 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v28);
      v16 += v36;
      v14 = v44 - 1;
    }

    while (v44 != 1);
    a3 = v34;
    v5 = v33;
  }

  __SceneResourceCache.registerImportedScenes(url:importedScenes:)(v15, v41);

  if (!v5)
  {
    v30 = v41[1];
    v31 = v43;
    result = v42;
    a3->n128_u64[0] = v41[0];
    a3->n128_u64[1] = v30;
    a3[1] = result;
    a3[2].n128_u8[0] = v31;
  }

  return result;
}

unint64_t __SceneResourceCache.registerImportedScenes(url:importedScenes:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = type metadata accessor for URL();
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.standardizedFileURL.getter();
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v11 = *(v2 + 24);
  v31 = *(v2 + 16);
  v12 = v31;
  v32 = v11;
  v33 = v9;
  v34 = a1;
  type metadata accessor for __SceneResourceCache.Entry();
  v13 = v12;
  v14 = v11;
  OS_dispatch_queue.sync<A>(execute:)();

  v15 = v35;
  result = __SceneResourceCache.Entry.activeSceneAssets.getter();
  if (result >> 62)
  {
    v24 = result;
    if (__CocoaSet.count.getter() > 1)
    {
      v23 = 2;
      goto LABEL_12;
    }

    v25 = __CocoaSet.count.getter();
    result = v24;
    if (v25)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17 >= 2)
  {
    v23 = 2;
LABEL_12:

    type metadata accessor for SceneResourceLoadResult.InternalError(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError, protocol conformance descriptor for SceneResourceLoadResult.InternalError);
    swift_allocError();
    v27 = v26;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
    (*(*(v28 - 8) + 56))(v27, v23, 2, v28);
    swift_willThrow();

    return (*(v5 + 8))(v7, v30);
  }

  if (!v17)
  {
LABEL_11:
    v23 = 1;
    goto LABEL_12;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1C68F41F0](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(result + 32);

LABEL_7:

    v29 = URL.lastPathComponent.getter();
    v20 = v19;
    v21 = *(v18 + 16);
    RERetain();

    (*(v5 + 8))(v7, v30);
    type metadata accessor for __SceneResource();
    result = swift_allocObject();
    *(result + 16) = v21;
    v22 = v29;
    *a2 = result;
    *(a2 + 8) = v22;
    *(a2 + 16) = v20;
    *(a2 + 24) = v15;
    *(a2 + 32) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in __SceneResourceCache.initAssetBundle(url:loadOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a4;
  v57 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v13 + 16);
  v46 = v18;
  v17(v16, a1, v14);
  outlined init with copy of __REAssetBundle.LoadOptions(a3, v54);
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, v51);
  v19 = v52;
  v20 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v50[0] = v54[0];
  __REAssetService.dispatchPredicate(for:)(v50, v19, v20, v11);
  __swift_destroy_boxed_opaque_existential_1(v51);
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v19 & 1) == 0)
  {
    __break(1u);
  }

  outlined init with copy of __REAssetService(a2 + 120, v51);
  swift_beginAccess();
  v21 = *(a2 + 16);
  v49 = 0;
  if (v55)
  {
    v23 = v52;
    v22 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    (*(v22 + 32))(v23, v22);
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    String.utf8CString.getter();
    v27 = RERealityFileMountFileAtURLWithAliasName();

    if (v27)
    {
LABEL_4:
      v28 = v56;
      if (v56)
      {
        MajorVersionNumber = RERealityFileGetMajorVersionNumber();
        v30 = v28 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
        *v30 = MajorVersionNumber;
        *(v30 + 8) = 1;
      }

      static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v27, v51, v21, v54, v45);
      v31 = v52;
      v32 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v52);
      (*(v32 + 32))(v31, v32);
      RERealityFileUnmount();
      goto LABEL_13;
    }
  }

  else
  {
    v33 = v52;
    v34 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    (*(v34 + 32))(v33, v34);
    URL._bridgeToObjectiveC()(v35);
    v37 = v36;
    v27 = RERealityFileMountFileAtURL();

    if (v27)
    {
      goto LABEL_4;
    }
  }

  specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v49);
  if (!v4)
  {
    v38 = v49;
    if (v49)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v39 = v38;
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v47 = 0xD00000000000001FLL;
      v48 = 0x80000001C18E1F00;
      v40 = URL.path.getter();
      MEMORY[0x1C68F3410](v40);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v41 = v47;
      v42 = v48;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v43 = v41;
      *(v43 + 8) = v42;
      *(v43 + 16) = 4;
    }

    swift_willThrow();
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v51);
  outlined destroy of __REAssetBundle.LoadOptions(v54);
  return (*(v13 + 8))(v16, v46);
}

uint64_t __SceneResourceCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t __SceneResourceCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

id specialized __SceneResourceCache.CachedEntries.init()()
{
  v7[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7[0] - 8);
  MEMORY[0x1EEE9AC00](v7[0]);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = [objc_opt_self() strongToWeakObjectsMapTable];
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v7[1] = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7[0]);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v5;
}

uint64_t specialized static __SceneResourceCache.attachImportedScenesForSceneChangeToEntity(importedScenes:entity:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for __SceneResourceCache.Entry();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 80) = 1;

  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v10 = *(v9 + 24);
  swift_unownedRetainStrong();
  v11 = *(v10 + 32);

  v12 = v11;

  *v7 = v12;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v10)
  {
    __SceneResourceCache.Entry.registerWithSceneLookupTable()();
    objc_setAssociatedObject(a2, "RealityKit.SceneResourceCacheEntry", v8, 0x301);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with take of __SceneResourceCache.ImportedScene(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for LoadTracer(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t type metadata completion function for __SceneResourceCache.ImportedScene(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for __REAsset();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for LoadTrace(uint64_t a1)
{
  type metadata accessor for RELoadTraceType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AnyCancellable?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DispatchTime();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for AnyCancellable?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyCancellable?)
  {
    type metadata accessor for AnyCancellable();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AnyCancellable?);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for __SceneResourceCache.Entry.EntryHolder(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for __SceneResourceCache.Entry.EntryHolder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for __SceneResourceCache.Entry.EntryHolder(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t outlined init with copy of __SceneImportOperation.__ImportedScene(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of __SceneImportOperation.__ImportedScene(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

double outlined consume of __REAssetBundle.LoadOptions.ContentRequest(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

id partial apply for closure #1 in __SceneResourceCache.CachedEntries.getCacheEntry(for:)@<X0>(void *a1@<X8>)
{
  return partial apply for closure #1 in __SceneResourceCache.CachedEntries.getCacheEntry(for:)(a1);
}

{
  result = [*(v1 + 16) objectForKey_];
  *a1 = result;
  return result;
}

uint64_t type metadata completion function for SceneResourceLoadResult.InternalError(uint64_t a1)
{
  type metadata accessor for (String, URL?)(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void type metadata accessor for (String, URL?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (String, URL?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, URL?));
    }
  }
}

uint64_t getEnumTagSinglePayload for __SceneResourceLoadResult(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for __SceneResourceLoadResult(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static OpacityComponent.__fromCore(_:)@<X0>(_DWORD *a2@<X8>)
{
  result = REHierarchicalFadeComponentGetOpacity();
  *a2 = v4;
  return result;
}

uint64_t OpacityComponent.__toCore(_:)(void *a1)
{
  REHierarchicalFadeComponentSetOpacity();

  return RENetworkMarkComponentDirty();
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance OpacityComponent@<X0>(_DWORD *a2@<X8>)
{
  result = REHierarchicalFadeComponentGetOpacity();
  *a2 = v4;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance OpacityComponent(void *a1)
{
  REHierarchicalFadeComponentSetOpacity();

  return RENetworkMarkComponentDirty();
}

float static OpacityComponent.getComputedOpacity(_:)(uint64_t a1, __n128 a2)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (!MEMORY[0x1C68FE280](*(v2 + 16)))
  {
    return -1.0;
  }

  REOpacityServiceGetComputedOpacity();
  return result;
}

uint64_t MeshDeformationAssetBuilder.makeResource()()
{
  v1._rawValue = MeshDeformationAssetBuilder.makeAsset()()._rawValue;
  if (!v2)
  {
    rawValue = v1._rawValue;
    type metadata accessor for _Proto_MeshDeformation_v1.Resource();
    v0 = swift_allocObject();
    *(v0 + 16) = rawValue;
    *(v0 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  return v0;
}

Swift::OpaquePointer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MeshDeformationAssetBuilder.makeAsset()()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16__REAssetService_pMd, &_s10RealityKit16__REAssetService_pMR);
  type metadata accessor for __REAssetManager();
  if (swift_dynamicCast())
  {
    MeshDeformationDefinitionAsset = REMeshDeformationDefinitionAssetBuilderCreateMeshDeformationDefinitionAsset();
    if (MeshDeformationDefinitionAsset)
    {
      v2._rawValue = MeshDeformationDefinitionAsset;
    }

    else
    {
      v2._rawValue = 0x80000001C18E7000;
      lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
      swift_allocError();
      *v4 = 3;
      *(v4 + 8) = 0xD00000000000001ALL;
      *(v4 + 16) = 0x80000001C18E7000;
      swift_willThrow();
    }
  }

  else
  {
    v2._rawValue = 0x80000001C18E6FE0;
    lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 0xD00000000000001ALL;
    *(v3 + 16) = 0x80000001C18E6FE0;
    swift_willThrow();
  }

  return v2;
}

__n128 MeshDeformationAssetBuilder.init(_:)@<Q0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1();
  v7.n128_u64[0] = -1;
  v7.n128_u64[1] = -1;
  v8 = REMeshDeformationDefinitionAssetBuilderCreate();

  MeshDeformationAssetBuilder.build(from:)(v5);

  if (v2)
  {
    RERelease();
  }

  else
  {
    result = v7;
    *a2 = v4;
    *(a2 + 8) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = 0uLL;
    *(a2 + 48) = 0;
  }

  return result;
}

double MeshDeformationAssetBuilder.init(definition:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v7 = -1;
  *(&v7 + 1) = -1;
  v8 = REMeshDeformationDefinitionAssetBuilderCreate();

  MeshDeformationAssetBuilder.build(from:)(v5);

  if (v2)
  {
    RERelease();
  }

  else
  {
    *a2 = a1;
    *(a2 + 8) = v7;
    *(a2 + 24) = v8;
    result = 0.0;
    *(a2 + 32) = 0uLL;
    *(a2 + 48) = 0;
  }

  return result;
}

void MeshDeformationAssetBuilder.build(from:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    for (i = (a1 + 48); ; i += 3)
    {
      v4 = *i;
      v5 = *(i - 6);
      v6 = *(i - 7);
      v7 = *(i - 8);
      v8 = *(i - 2);
      v9 = v7;
      v10 = v6;
      v11 = v5;
      v12 = v4;

      MeshDeformationAssetBuilder.add(_:)(&v8);
      if (v1)
      {
        break;
      }

      if (!--v2)
      {
        return;
      }
    }
  }
}

double MeshDeformationAssetBuilder.deinit()
{
  RERelease();

  return result;
}

Swift::Void __swiftcall MeshDeformationAssetBuilder.addCustom(deformerID:)(Swift::String deformerID)
{
  String.utf8CString.getter();
  v2 = REMeshDeformationDefinitionAssetBuilderDeformationStackAddCustomDeformer();

  if (v2 <= 0x7FFFFFFE)
  {
    *(v1 + 16) = v2;
  }

  else
  {

    *(v1 + 32) = xmmword_1C18AF9C0;
    *(v1 + 48) = 0x80000001C18E6080;
  }
}

void MeshDeformationAssetBuilder.add(_:)(uint64_t *a1)
{
  v2 = *a1;
  v44 = *(a1 + 8);
  v46 = *(a1 + 9);
  v3 = *(a1 + 10);
  v45 = a1[2];
  *(v1 + 8) = REMeshDeformationDefinitionAssetBuilderAddDeformationStack();
  *(v1 + 16) = -1;
  v48 = v1;
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_6:
    if (!v3)
    {
      if (!v44)
      {
        goto LABEL_8;
      }

LABEL_18:
      v21 = REMeshDeformationDefinitionAssetBuilderDeformationStackAddRenormalization();
      if (v21 <= 0x7FFFFFFE)
      {
        *(v1 + 16) = v21;
        if (!v46)
        {
          goto LABEL_22;
        }
      }

      else
      {

        *(v1 + 32) = xmmword_1C18AF9C0;
        *(v1 + 48) = 0x80000001C18E6080;
        if (!v46)
        {
          goto LABEL_22;
        }
      }

LABEL_9:
      v9 = REMeshDeformationDefinitionAssetBuilderDeformationStackAddBoundingBoxCalculation();
      if (v9 <= 0x7FFFFFFE)
      {
        *(v1 + 16) = v9;
      }

      else
      {

        *(v1 + 32) = xmmword_1C18AF9C0;
        *(v1 + 48) = 0x80000001C18E6080;
      }

      goto LABEL_22;
    }

    v10 = REMeshDeformationDefinitionAssetBuilderDeformationStackAddOpenSubdivComputeSteps();
    if (v10 <= 0x7FFFFFFE)
    {
      *(v1 + 16) = v10;
      if (v44)
      {
        goto LABEL_18;
      }
    }

    else
    {

      *(v1 + 32) = xmmword_1C18AF9C0;
      *(v1 + 48) = 0x80000001C18E6080;
      if (v44)
      {
        goto LABEL_18;
      }
    }

LABEL_8:
    if (v46)
    {
      goto LABEL_9;
    }

LABEL_22:
    v22 = 1 << *(v45 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v45 + 56);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    v27 = 0;
    while (1)
    {
      if (!v24)
      {
        while (1)
        {
          v28 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v28 >= v25)
          {
            goto LABEL_35;
          }

          v24 = *(v45 + 56 + 8 * v28);
          ++v27;
          if (v24)
          {
            v47 = v26;
            v27 = v28;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v47 = v26;
LABEL_31:
      v29 = *(v45 + 48) + ((v27 << 11) | (32 * __clz(__rbit64(v24))));
      v30 = *v29;
      v31 = *(v29 + 8);
      v32 = *(v29 + 16);
      v33 = *(v29 + 24);
      v50[0] = v30;
      v50[1] = v31;
      v50[2] = v32;
      LOBYTE(v51) = v33;
      outlined copy of _Proto_MeshScope_v1(v30, v31, v32, v33);
      MeshDeformationAssetBuilder.add(_:)(v50);
      if (*(v1 + 48))
      {
        break;
      }

      v24 &= v24 - 1;
      outlined consume of _Proto_MeshScope_v1(v30, v31, v32, v33);
      v26 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
LABEL_35:

        return;
      }
    }

    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    strcpy(v50, ". Stack index ");
    HIBYTE(v50[1]) = -18;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v34);

    MEMORY[0x1C68F3410](0xD000000000000010, 0x80000001C18E6F60);
    v49[0] = v47;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v35);

    v36 = *(v1 + 48);
    if (!v36)
    {
      goto LABEL_41;
    }

    v37 = v50[0];
    v38 = v50[1];
    v40 = *(v48 + 32);
    v39 = *(v48 + 40);
    outlined consume of _Proto_MeshScope_v1(v30, v31, v32, v33);
    v50[0] = v39;
    v50[1] = v36;

    MEMORY[0x1C68F3410](v37, v38);

    v41 = v50[0];
    v42 = v50[1];
    lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
    swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v41;
    *(v43 + 16) = v42;
    swift_willThrow();

    return;
  }

  v5 = 0;
  v6 = v2 + 32;
  while (1)
  {
    if (v5 >= *(v2 + 16))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    outlined init with copy of __REAssetService(v6, v50);
    v7 = v51;
    v8 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    (*(v8 + 16))(v1, v7, v8);
    if (*(v1 + 48))
    {
      break;
    }

    ++v5;
    __swift_destroy_boxed_opaque_existential_1(v50);
    v6 += 40;
    if (v4 == v5)
    {
      goto LABEL_6;
    }
  }

  _StringGuts.grow(_:)(45);

  strcpy(v49, ". Stack index ");
  HIBYTE(v49[1]) = -18;
  v53 = *(v1 + 8);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v11);

  MEMORY[0x1C68F3410](0xD000000000000012, 0x80000001C18E6F40);
  v53 = *(v1 + 16);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v12);

  MEMORY[0x1C68F3410](0x3A65707974202CLL, 0xE700000000000000);
  __swift_project_boxed_opaque_existential_1(v50, v51);
  swift_getDynamicType();
  v13 = _typeName(_:qualified:)();
  MEMORY[0x1C68F3410](v13);

  v14 = *(v1 + 48);
  if (v14)
  {
    v15 = v49[0];
    v16 = v49[1];
    v17 = *(v1 + 32);
    v49[0] = *(v1 + 40);
    v49[1] = v14;

    MEMORY[0x1C68F3410](v15, v16);

    v18 = v49[0];
    v19 = v49[1];
    lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v18;
    *(v20 + 16) = v19;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v50);
    return;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

{
  v2 = a1[2];
  v3 = *(a1 + 24);
  if (*(a1 + 24) && v3 != 1)
  {
    if ((REMeshDeformationDefinitionAssetBuilderAssignDeformationStack() & 1) == 0)
    {

      *(v1 + 32) = xmmword_1C18B1C60;
      *(v1 + 48) = 0x80000001C18E6FB0;
    }
  }

  else
  {

    if (*(v2 + 16))
    {
      v4 = v2 + 56;
      v5 = 1 << *(v2 + 32);
      v6 = -1;
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      v7 = v6 & *(v2 + 56);
      v8 = (v5 + 63) >> 6;

      v9 = 0;
      v22 = v2;
      if (v7)
      {
        while (1)
        {
          v10 = v9;
LABEL_11:
          v11 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
          v13 = *v11;
          v12 = v11[1];
          String.utf8CString.getter();
          String.utf8CString.getter();

          v14 = REMeshDeformationDefinitionAssetBuilderAssignDeformationStack();

          if (!v14)
          {
            break;
          }

          v7 &= v7 - 1;

          v9 = v10;
          v2 = v22;
          if (!v7)
          {
            goto LABEL_8;
          }
        }

        _StringGuts.grow(_:)(51);
        MEMORY[0x1C68F3410](0xD000000000000027, 0x80000001C18E6F80);
        v18 = 0xE300000000000000;
        v19 = 7105633;
        if (v3 == 1)
        {
          v19 = 0x65636E6174736E69;
          v18 = 0xE800000000000000;
        }

        if (v3)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0x6C65646F6DLL;
        }

        if (v3)
        {
          v21 = v18;
        }

        else
        {
          v21 = 0xE500000000000000;
        }

        MEMORY[0x1C68F3410](v20, v21);

        MEMORY[0x1C68F3410](0x3A74726170202C27, 0xE800000000000000);
        MEMORY[0x1C68F3410](v13, v12);

        *(v1 + 32) = 1;
        *(v1 + 40) = 0;
        *(v1 + 48) = 0xE000000000000000;
      }

      else
      {
        while (1)
        {
LABEL_8:
          v10 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
            return;
          }

          if (v10 >= v8)
          {
            break;
          }

          v7 = *(v4 + 8 * v10);
          ++v9;
          if (v7)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      String.utf8CString.getter();

      v15 = REMeshDeformationDefinitionAssetBuilderAssignDeformationStack();

      if ((v15 & 1) == 0)
      {
        _StringGuts.grow(_:)(42);

        if (v3)
        {
          v16 = 0x65636E6174736E69;
        }

        else
        {
          v16 = 0x6C65646F6DLL;
        }

        if (v3)
        {
          v17 = 0xE800000000000000;
        }

        else
        {
          v17 = 0xE500000000000000;
        }

        MEMORY[0x1C68F3410](v16, v17);

        MEMORY[0x1C68F3410](39, 0xE100000000000000);

        *(v1 + 32) = 1;
        *(v1 + 40) = 0xD000000000000027;
        *(v1 + 48) = 0x80000001C18E6F80;
      }
    }
  }
}

uint64_t MeshDeformationBuilder.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

{
  v2 = swift_allocObject();
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  if (v3)
  {

    *(v2 + 16) = v3;
  }

  else
  {
    lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
    swift_allocError();
    *v4 = 4;
    *(v4 + 8) = 0xD000000000000031;
    *(v4 + 16) = 0x80000001C18E6E70;
    swift_willThrow();

    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t MeshDeformationBuilder.init(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t MeshDeformationBuilder.init(_:)(uint64_t a1, __n128 a2)
{
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  if (v3)
  {

    *(v2 + 16) = v3;
  }

  else
  {
    lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
    swift_allocError();
    *v4 = 4;
    *(v4 + 8) = 0xD000000000000031;
    *(v4 + 16) = 0x80000001C18E6E70;
    swift_willThrow();

    type metadata accessor for MeshDeformationBuilder();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

void MeshDeformationBuilder.addModelInstanceTargetPart(_:_:)(int64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v50 = *(a2 + 16);
  v55 = *(a2 + 24);
  swift_beginAccess();
  if (a1 < 0)
  {
LABEL_37:
    __break(1u);
  }

  else
  {
    v8 = *(v4 + 24);
    if (*(v8 + 16) > a1)
    {
      v51 = a1;
      v52 = v6;
      v3 = 196866;
      v9 = *(v8 + 24 * a1 + 48);
      v10 = v9 + 56;
      v11 = 1 << *(v9 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(v9 + 56);
      a1 = (v11 + 63) >> 6;

      v15 = 0;
      v16 = (0x30102u >> (8 * v55)) & 3;
      if (v55)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      v46 = v17;
      v18 = v14;
      v47 = v14;
      while (1)
      {
        while (1)
        {
          if (!v13)
          {
            while (1)
            {
              v19 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                __break(1u);
                goto LABEL_37;
              }

              if (v19 >= a1)
              {
                break;
              }

              v13 = *(v10 + 8 * v19);
              ++v15;
              if (v13)
              {
                v15 = v19;
                goto LABEL_14;
              }
            }

            swift_beginAccess();
            v3 = *(v4 + 24);
            a1 = v52;
            outlined copy of _Proto_MeshScope_v1(v52, v7, v50, v55);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v4 + 24) = v3;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_34;
          }

LABEL_14:
          v20 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          v21 = *(v18 + 48) + ((v15 << 11) | (32 * v20));
          v22 = *(v21 + 24);
          if (v16 == (0x30102u >> (8 * v22)))
          {
            if (v22 > 1)
            {
              goto LABEL_43;
            }

            v53 = *(v21 + 16);
            if (*(v53 + 16))
            {
              break;
            }
          }
        }

        v23 = *v21;
        v3 = *(v21 + 8);

        if (v55 > 1)
        {
          goto LABEL_44;
        }

        v24 = v23 == v52 && v3 == v7;
        v49 = v23;
        if (v24)
        {
          outlined copy of _Proto_MeshScope_v1(v52, v3, v53, v22);
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of _Proto_MeshScope_v1(v23, v3, v53, v22);

          if ((v25 & 1) == 0)
          {
            outlined consume of _Proto_MeshScope_v1(v23, v3, v53, v22);
            goto LABEL_32;
          }
        }

        v48 = v7;
        swift_beginAccess();
        v26 = *(v4 + 24);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 24) = v26;
        if ((v27 & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
          *(v4 + 24) = v26;
        }

        if (*(v26 + 2) <= v51)
        {
          goto LABEL_39;
        }

        specialized Set._Variant.remove(_:)(v49, v3, v53, v22, &v58);
        v28 = v58;
        v44 = v60;
        v45 = v59;
        *(v4 + 24) = v26;
        v29 = v61;
        swift_endAccess();
        outlined consume of _Proto_MeshScope_v1?(v28, v45, v44, v29);

        outlined consume of _Proto_MeshScope_v1(v49, v3, v53, v22);

        specialized Set.union<A>(_:)(v30, v53);
        static _Proto_MeshScope_v1.fromCore(_:_:_:)(v46, v52, v7, v31, v56);

        v3 = v56[0];
        v32 = v56[1];
        v7 = v56[2];
        v54 = v57;
        swift_beginAccess();
        v33 = *(v4 + 24);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 24) = v33;
        if ((v34 & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
          *(v4 + 24) = v33;
        }

        if (*(v33 + 2) <= v51)
        {
          goto LABEL_40;
        }

        specialized Set._Variant.insert(_:)(&v58, v3, v32, v7, v54);
        v35 = v58;
        v36 = v59;
        v37 = v60;
        *(v4 + 24) = v33;
        v38 = v61;
        swift_endAccess();
        outlined consume of _Proto_MeshScope_v1(v35, v36, v37, v38);
        v7 = v48;
LABEL_32:
        v3 = 196866;
        v18 = v47;
        v16 = (0x30102u >> (8 * v55)) & 3;
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  *(v4 + 24) = v3;
LABEL_34:
  if (*(v3 + 16) <= v51)
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
    specialized Set._Variant.insert(_:)(&v58, a1, v7, v50, v55);
    v40 = v58;
    v41 = v59;
    v42 = v60;
    *(v4 + 24) = v3;
    v43 = v61;
    swift_endAccess();
    outlined consume of _Proto_MeshScope_v1(v40, v41, v42, v43);
  }
}

uint64_t MeshDeformationBuilder.build(_:)(uint64_t a1)
{
  swift_beginAccess();
  v98 = v1;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  REMeshDeformationDefinitionAssetBuilderCreateFromAsset();
  DeformationStackCount = REMeshDeformationDefinitionAssetBuilderGetDeformationStackCount();
  if (DeformationStackCount < 1)
  {
    goto LABEL_83;
  }

  v3 = v98;
  swift_beginAccess();
  v4 = *(v98 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v98 + 24) = v4;
  if (!isUniquelyReferenced_nonNull_native || DeformationStackCount > *(v4 + 3) >> 1)
  {
    if (*(v4 + 2) <= DeformationStackCount)
    {
      v6 = DeformationStackCount;
    }

    else
    {
      v6 = *(v4 + 2);
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v6, 0, v4);
  }

  *(v98 + 24) = v4;
  swift_endAccess();
  v7 = 0;
  v8 = &type metadata for _Proto_MeshDeformation_v1.BlendShape;
  do
  {
    if (v7 >= DeformationStackCount)
    {
      goto LABEL_91;
    }

    v3 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v104 = 257;
    v105 = 0;
    v106 = MEMORY[0x1E69E7CD0];
    DeformationStackDeformerCount = REMeshDeformationDefinitionAssetBuilderGetDeformationStackDeformerCount();
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, DeformationStackDeformerCount & ~(DeformationStackDeformerCount >> 63), 0, MEMORY[0x1E69E7CC0]);
    p_Kind = v10;
    if (DeformationStackDeformerCount < 0)
    {
      goto LABEL_93;
    }

    v2 = v10;
    v96 = (v7 + 1);
    if (DeformationStackDeformerCount)
    {
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v4 = (v12 + v11);
        if (__OFADD__(v12, v11))
        {
          __break(1u);
LABEL_86:
          *&v99 = 0;
          *(&v99 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(54);
          if (DeformationStackDeformerCount)
          {
            MEMORY[0x1C68F3410](0xD000000000000016, 0x80000001C18E6F00);
            LOBYTE(p_Kind) = DeformationStackDeformerCount;
            type metadata accessor for REMeshIdentifierType(0);
            _print_unlocked<A, B>(_:_:)();
            MEMORY[0x1C68F3410](0x617473206E69202CLL, 0xEC000000203A6B63);
            p_Kind = v12;
            v88 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1C68F3410](v88);

            MEMORY[0x1C68F3410](0x6E6769737361202CLL, 0xEE00203A746E656DLL);
            p_Kind = &v8->Kind;
            v89 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1C68F3410](v89);

            v86 = *(&v99 + 1);
            v82 = v99;
            v87 = 6;
          }

          else
          {
            MEMORY[0x1C68F3410](0xD000000000000016, 0x80000001C18E6F20);
            LOBYTE(p_Kind) = 0;
            type metadata accessor for REMeshIdentifierType(0);
            _print_unlocked<A, B>(_:_:)();
            MEMORY[0x1C68F3410](0x617473206E69202CLL, 0xEC000000203A6B63);
            p_Kind = v12;
            v84 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1C68F3410](v84);

            MEMORY[0x1C68F3410](0x6E6769737361202CLL, 0xEE00203A746E656DLL);
            p_Kind = &v8->Kind;
            v85 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1C68F3410](v85);

            v86 = *(&v99 + 1);
            v82 = v99;
            v87 = 5;
          }

          lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
          v90 = swift_allocError();
          *v91 = v87;
          *(v91 + 8) = v82;
          *(v91 + 16) = v86;
          v92[1] = v90;
          swift_willThrow();
          RERelease();
          return v82;
        }

        if (REMeshDeformationDefinitionAssetBuilderDeformerIsBlendShape())
        {
          v3 = *(v2 + 16);
          v14 = *(v2 + 24);
          if (v3 >= v14 >> 1)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v3 + 1, 1, v2);
          }

          v101 = &type metadata for _Proto_MeshDeformation_v1.BlendShape;
          v102 = lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape();
          *(v2 + 16) = v3 + 1;
          outlined init with take of ForceEffectBase(&v99, v2 + 40 * v3 + 32);
          p_Kind = v2;
          goto LABEL_15;
        }

        if (REMeshDeformationDefinitionAssetBuilderDeformationStackIsOpenSubdivComputeSteps())
        {
          v105 = 1;
          v13 = __OFADD__(v11++, 1);
          if (v13)
          {
            __break(1u);
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }
        }

        else
        {
          if (REMeshDeformationDefinitionAssetBuilderDeformerIsSkinning())
          {
            EnableSkinningVertexFrame = REMeshDeformationDefinitionAssetBuilderSkinningGetEnableSkinningVertexFrame();
            v3 = *(v2 + 16);
            v16 = *(v2 + 24);
            if (v3 >= v16 >> 1)
            {
              v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v3 + 1, 1, v2);
            }

            v101 = &type metadata for _Proto_MeshDeformation_v1.Skinning;
            v102 = lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning();
            LOBYTE(v99) = EnableSkinningVertexFrame;
            *(v2 + 16) = v3 + 1;
            outlined init with take of ForceEffectBase(&v99, v2 + 40 * v3 + 32);
          }

          else
          {
            if (REMeshDeformationDefinitionAssetBuilderDeformerIsBoundingBoxCalculation())
            {
              HIBYTE(v104) = 1;
              goto LABEL_15;
            }

            if (REMeshDeformationDefinitionAssetBuilderDeformerIsRenormalization())
            {
              LOBYTE(v104) = 1;
              goto LABEL_15;
            }

            if (!REMeshDeformationDefinitionAssetBuilderDeformerIsCustomDeformer())
            {
              goto LABEL_15;
            }

            if (!REMeshDeformationDefinitionAssetBuilderDeformerCustomDeformerName())
            {
              goto LABEL_99;
            }

            v17 = String.init(cString:)();
            v19 = v18;
            v101 = &type metadata for _Proto_MeshDeformation_v1.CustomDeformer;
            v20 = lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer();
            v102 = v20;
            *&v99 = v17;
            *(&v99 + 1) = v19;
            p_Kind = v2;
            v22 = *(v2 + 16);
            v21 = *(v2 + 24);
            if (v22 >= v21 >> 1)
            {
              v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v2);
              p_Kind = v2;
              v23 = v101;
              v95 = v102;
            }

            else
            {
              v95 = v20;
              v23 = &type metadata for _Proto_MeshDeformation_v1.CustomDeformer;
            }

            v24 = __swift_mutable_project_boxed_opaque_existential_1(&v99, v23);
            v94 = v92;
            v25 = MEMORY[0x1EEE9AC00](v24);
            v3 = v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v27 + 16))(v3, v25);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v22, v3, &p_Kind, v23, v95);
            __swift_destroy_boxed_opaque_existential_1(&v99);
          }

          p_Kind = v2;
          v8 = &type metadata for _Proto_MeshDeformation_v1.BlendShape;
        }

LABEL_15:
        if (DeformationStackDeformerCount == ++v12)
        {
          v28 = v104;
          v29 = HIBYTE(v104);
          v3 = v105;
          v30 = v106;
          goto LABEL_39;
        }
      }
    }

    v3 = 0;
    v29 = 1;
    v30 = MEMORY[0x1E69E7CD0];
    v28 = 1;
LABEL_39:
    v31 = v98;
    swift_beginAccess();
    v4 = *(v31 + 24);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 24) = v4;
    if ((v32 & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      *(v98 + 24) = v4;
    }

    v34 = *(v4 + 2);
    v33 = *(v4 + 3);
    if (v34 >= v33 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v4);
    }

    *(v4 + 2) = v34 + 1;
    v35 = &v4[24 * v34];
    *(v35 + 4) = v2;
    v35[40] = v28;
    v35[41] = v29;
    v35[42] = v3;
    *(v35 + 6) = v30;
    *(v98 + 24) = v4;
    swift_endAccess();
    v7 = v96;
    v8 = &type metadata for _Proto_MeshDeformation_v1.BlendShape;
  }

  while (v96 != DeformationStackCount);
  AssignedMeshCount = REMeshDeformationDefinitionAssetBuilderGetAssignedMeshCount();
  if (AssignedMeshCount < 0)
  {
    goto LABEL_98;
  }

  if (!AssignedMeshCount)
  {
LABEL_83:
    v82 = *(v98 + 24);

    RERelease();
    return v82;
  }

  v8 = 0;
  v93 = xmmword_1C1887600;
  DeformationStackCount = AssignedMeshCount;
  while (1)
  {
    v12 = REMeshDeformationDefinitionAssetBuilderAssignedMeshDeformationStackIndex();
    v50 = REMeshDeformationDefinitionAssetBuilderAssignedMeshIdentifierType();
    LODWORD(DeformationStackDeformerCount) = v50;
    if ((v50 - 1) >= 2)
    {
      break;
    }

    v51 = REMeshDeformationDefinitionAssetBuilderAssignedMeshIdentifierName();
    v52 = String.init(_:)(v51);
    if (REMeshDeformationDefinitionAssetBuilderAssignedMeshIdentifierHasPartName() == 1)
    {
      v37 = REMeshDeformationDefinitionAssetBuilderAssignedMeshIdentifierPartName();
      v38 = String.init(_:)(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v93;
      v96 = v12;
      *(inited + 32) = v38;
      v40 = inited + 32;
      v41 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of String(v40);
      static _Proto_MeshScope_v1.fromCore(_:_:_:)(DeformationStackDeformerCount, v52._countAndFlagsBits, v52._object, v41, &v99);

      v43 = *(&v99 + 1);
      v42 = v99;
      v2 = v100;
      v44 = v101;
      MeshDeformationBuilder.addModelInstanceTargetPart(_:_:)(v96, &v99);
      v45 = v42;
      v46 = v43;
      v47 = DeformationStackCount;
      v48 = v2;
      v49 = v44;
    }

    else
    {
      static _Proto_MeshScope_v1.fromCore(_:_:_:)(DeformationStackDeformerCount, v52._countAndFlagsBits, v52._object, MEMORY[0x1E69E7CD0], &v99);

      v53 = v99;
      v4 = v100;
      v2 = v101;
      v3 = v98;
      swift_beginAccess();
      v54 = *(v3 + 24);
      outlined copy of _Proto_MeshScope_v1(v53, *(&v53 + 1), v4, v2);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 24) = v54;
      if (v55)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
        *(v98 + 24) = v54;
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_94;
        }
      }

      if (v12 >= *(v54 + 2))
      {
        goto LABEL_95;
      }

      specialized Set._Variant.insert(_:)(&v99, v53, *(&v53 + 1), v4, v2);
      v57 = *(&v99 + 1);
      v56 = v99;
      LODWORD(v96) = v2;
      v2 = v4;
      v58 = v100;
      *(v98 + 24) = v54;
      v59 = v101;
      swift_endAccess();
      v60 = v57;
      v47 = DeformationStackCount;
      outlined consume of _Proto_MeshScope_v1(v56, v60, v58, v59);
      v46 = *(&v53 + 1);
      v45 = v53;
      v48 = v2;
      v49 = v96;
    }

    outlined consume of _Proto_MeshScope_v1(v45, v46, v48, v49);
LABEL_49:
    v8 = (v8 + 1);
    if (v8 == v47)
    {
      goto LABEL_83;
    }
  }

  if (v50 != 3)
  {
    goto LABEL_86;
  }

  v3 = v98;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 24) = v4;
  if (v61)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    *(v98 + 24) = v4;
    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  if (v12 >= *(v4 + 2))
  {
    goto LABEL_96;
  }

  v96 = v8;
  v95 = v4;
  v62 = &v4[24 * v12];
  v63 = *(v62 + 6);
  v94 = v62 + 48;
  Hasher.init(_seed:)();
  v3 = &v99;
  MEMORY[0x1C68F4C10](0);
  v64 = Hasher._finalize()();
  v65 = -1 << *(v63 + 32);
  v66 = v64 & ~v65;
  if ((*(v63 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
  {
    v67 = ~v65;
    while (1)
    {
      v68 = *(v63 + 48) + 32 * v66;
      v3 = *v68;
      v69 = *(v68 + 8);
      v2 = *(v68 + 16);
      v70 = *(v68 + 24);
      if (v70 >= 2)
      {
        break;
      }

      outlined copy of _Proto_MeshScope_v1(*v68, *(v68 + 8), *(v68 + 16), *(v68 + 24));
      outlined consume of _Proto_MeshScope_v1(v3, v69, v2, v70);
      outlined consume of _Proto_MeshScope_v1(0, 0, 0, 2u);
      v66 = (v66 + 1) & v67;
      if (((*(v63 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    *(v98 + 24) = v95;
    swift_endAccess();
    outlined consume of _Proto_MeshScope_v1(v3, v69, v2, 2u);
    outlined consume of _Proto_MeshScope_v1(0, 0, 0, 2u);
    v8 = v96;
    v47 = DeformationStackCount;
    goto LABEL_49;
  }

LABEL_64:
  v4 = v94;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v4;
  v72 = v107;
  *v4 = 0x8000000000000000;
  v73 = *(v72 + 16);
  if (*(v72 + 24) > v73)
  {
    v8 = v96;
    v47 = DeformationStackCount;
    if ((v71 & 1) == 0)
    {
      v3 = &v107;
      specialized _NativeSet.copy()();
      v72 = v107;
    }

    goto LABEL_77;
  }

  v8 = v96;
  if (v71)
  {
    specialized _NativeSet.resize(capacity:)(v73 + 1);
  }

  else
  {
    specialized _NativeSet.copyAndResize(capacity:)(v73 + 1);
  }

  v72 = v107;
  Hasher.init(_seed:)();
  v3 = &v99;
  MEMORY[0x1C68F4C10](0);
  v74 = Hasher._finalize()();
  v75 = -1 << *(v72 + 32);
  v66 = v74 & ~v75;
  if (((*(v72 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
  {
    v47 = DeformationStackCount;
LABEL_77:
    *(v72 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v66;
    v79 = *(v72 + 48) + 32 * v66;
    *v79 = 0;
    *(v79 + 8) = 0;
    *(v79 + 16) = 0;
    *(v79 + 24) = 2;
    v80 = *(v72 + 16);
    v13 = __OFADD__(v80, 1);
    v81 = v80 + 1;
    if (v13)
    {
      goto LABEL_97;
    }

    *(v72 + 16) = v81;
    *v4 = v72;
    *(v98 + 24) = v95;
    swift_endAccess();
    goto LABEL_49;
  }

  v76 = ~v75;
  while (1)
  {
    v77 = *(v72 + 48) + 32 * v66;
    v3 = *v77;
    v4 = *(v77 + 8);
    v2 = *(v77 + 16);
    v78 = *(v77 + 24);
    if (v78 >= 2)
    {
      break;
    }

    outlined copy of _Proto_MeshScope_v1(*v77, *(v77 + 8), *(v77 + 16), *(v77 + 24));
    outlined consume of _Proto_MeshScope_v1(v3, v4, v2, v78);
    outlined consume of _Proto_MeshScope_v1(0, 0, 0, 2u);
    v66 = (v66 + 1) & v76;
    if (((*(v72 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
    {
      v8 = v96;
      v47 = DeformationStackCount;
      v4 = v94;
      goto LABEL_77;
    }
  }

LABEL_100:
  outlined consume of _Proto_MeshScope_v1(v3, v4, v2, 2u);
  outlined consume of _Proto_MeshScope_v1(0, 0, 0, 2u);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t MeshDeformationBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.ResourceError, &type metadata for _Proto_MeshDeformation_v1.ResourceError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError);
  }

  return result;
}

uint64_t *assignWithTake for MeshDeformationAssetBuilder(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  a1[3] = a2[3];
  *(a1 + 32) = *(a2 + 32);
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for MeshDeformationAssetBuilder(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MeshDeformationAssetBuilder(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t dispatch thunk of MeshDeformationBuilder.__allocating_init(_:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

void outlined consume of _Proto_MeshScope_v1?(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    outlined consume of _Proto_MeshScope_v1(a1, a2, a3, a4);
  }
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.CustomDeformer, &type metadata for _Proto_MeshDeformation_v1.CustomDeformer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer;
  if (!lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _Proto_MeshDeformation_v1.CustomDeformer, &type metadata for _Proto_MeshDeformation_v1.CustomDeformer, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer);
  }

  return result;
}

uint64_t partial apply for closure #1 in Sequence.count(where:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = (*(v3 + 32))(a2);
  if ((result & 1) != 0 && (v7 = __OFADD__(v5, 1), ++v5, v7))
  {
    __break(1u);
  }

  else
  {
    *a3 = v5;
  }

  return result;
}

void ProjectiveTransformCameraComponent.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

__n128 ProjectiveTransformCameraComponent.cullingTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 32) = *(v1 + 96);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 128);
  result = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 16) = result;
  return result;
}

__n128 ProjectiveTransformCameraComponent.cullingTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = v2;
  *(v1 + 128) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = result;
  return result;
}

void __swiftcall ProjectiveTransformCameraComponent.init(projectionMatrix:)(RealityFoundation::ProjectiveTransformCameraComponent *__return_ptr retstr, simd_float4x4 *projectionMatrix)
{
  retstr->transform.columns[0] = v2;
  retstr->transform.columns[1] = v3;
  retstr->transform.columns[2] = v4;
  retstr->transform.columns[3] = v5;
  retstr->cullingTransform.value.columns[0] = 0u;
  retstr->cullingTransform.value.columns[1] = 0u;
  retstr->cullingTransform.value.columns[2] = 0u;
  retstr->cullingTransform.value.columns[3] = 0u;
  *&retstr->cullingTransform.is_nil = 257;
}

void __swiftcall ProjectiveTransformCameraComponent.init(projectionMatrix:cullingMatrix:)(RealityFoundation::ProjectiveTransformCameraComponent *__return_ptr retstr, simd_float4x4 *projectionMatrix, simd_float4x4_optional *cullingMatrix)
{
  retstr->transform.columns[0] = v3;
  retstr->transform.columns[1] = v4;
  retstr->transform.columns[2] = v5;
  retstr->transform.columns[3] = v6;
  v7 = projectionMatrix->columns[3];
  retstr->cullingTransform.value.columns[2] = projectionMatrix->columns[2];
  retstr->cullingTransform.value.columns[3] = v7;
  retstr->cullingTransform.is_nil = projectionMatrix[1].columns[0].i8[0];
  v8 = projectionMatrix->columns[1];
  retstr->cullingTransform.value.columns[0] = projectionMatrix->columns[0];
  retstr->cullingTransform.value.columns[1] = v8;
  retstr->autoFitFullscreenAspect = 1;
}

uint64_t static ProjectiveTransformCameraComponent.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  RECustomMatrixCameraComponentGetProjectionMatrix();
  v16 = v4;
  v17 = v3;
  v14 = v6;
  v15 = v5;
  v7 = 1;
  AutoFitFullScreenAspect = RECustomMatrixCameraComponentGetAutoFitFullScreenAspect();
  result = RECustomMatrixCameraComponentGetCullingTransformMatrix();
  if (result)
  {
    v7 = 0;
    v10 = *zmmword_1C1887630;
    v11 = *&zmmword_1C1887630[16];
    v12 = *&zmmword_1C1887630[32];
    v13 = *&zmmword_1C1887630[48];
  }

  else
  {
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a2 = v17;
  *(a2 + 16) = v16;
  *(a2 + 32) = v15;
  *(a2 + 48) = v14;
  *(a2 + 64) = v10;
  *(a2 + 80) = v11;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  *(a2 + 128) = v7;
  *(a2 + 129) = AutoFitFullScreenAspect;
  return result;
}

uint64_t ProjectiveTransformCameraComponent.__toCore(_:)(void *a1)
{
  RECustomMatrixCameraComponentSetRenderProjectionMatrix();
  RECustomMatrixCameraComponentSetCullingTransformMatrix();
  RECustomMatrixCameraComponentSetAutoFitFullScreenAspect();
  RECustomMatrixCameraComponentSetEyeCount();
  return RENetworkMarkComponentDirty();
}

uint64_t specialized static ProjectiveTransformCameraComponent.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[1], a2[1]), vceqq_f32(*a1, *a2)), vandq_s8(vceqq_f32(a1[2], a2[2]), vceqq_f32(a1[3], a2[3])))) & 0x80000000) == 0)
  {
    return 0;
  }

  if (a1[8].i8[0])
  {
    if ((a2[8].i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[8].i8[0])
    {
      return 0;
    }

    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[5], a2[5]), vceqq_f32(a1[4], a2[4])), vandq_s8(vceqq_f32(a1[6], a2[6]), vceqq_f32(a1[7], a2[7])))) & 0x80000000) == 0)
    {
      return 0;
    }
  }

  return a1[8].u8[1] ^ a2[8].u8[1] ^ 1u;
}

__n128 __swift_memcpy130_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ProjectiveTransformCameraComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 130))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 129);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProjectiveTransformCameraComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 130) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 130) = 0;
    }

    if (a2)
    {
      *(result + 129) = a2 + 1;
    }
  }

  return result;
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReaderError.errorDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  if (v5 <= 1)
  {
    if (!*(v0 + 32))
    {
      v11 = 0;
      _StringGuts.grow(_:)(108);
      MEMORY[0x1C68F3410](0xD00000000000004ALL, 0x80000001C18E7150);
      MEMORY[0x1C68F3410](v2, v1);
      MEMORY[0x1C68F3410](0x6E69207461202C27, 0xEC00000020786564);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v8);

      v6 = "es for configuration set '";
      v7 = 0xD000000000000012;
      goto LABEL_7;
    }

    v11 = 0;
    _StringGuts.grow(_:)(119);
    MEMORY[0x1C68F3410](0xD00000000000004DLL, 0x80000001C18E70D0);
    MEMORY[0x1C68F3410](v3, v4);
    MEMORY[0x1C68F3410](0xD000000000000024, 0x80000001C18E7120);
    MEMORY[0x1C68F3410](v2, v1);
    v7 = 11869;
LABEL_11:
    v9 = 0xE200000000000000;
    goto LABEL_12;
  }

  if (v5 == 2)
  {
    _StringGuts.grow(_:)(30);

    v11 = 0x6573736120656854;
    MEMORY[0x1C68F3410](v2, v1);
    v9 = 0x80000001C18E70B0;
    v7 = 0xD000000000000011;
    goto LABEL_12;
  }

  if (v5 != 3)
  {
    v11 = 0;
    _StringGuts.grow(_:)(93);
    MEMORY[0x1C68F3410](0xD000000000000026, 0x80000001C18E7020);
    MEMORY[0x1C68F3410](v3, v4);
    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18E7050);
    MEMORY[0x1C68F3410](v2, v1);
    v7 = 11815;
    goto LABEL_11;
  }

  _StringGuts.grow(_:)(42);

  v11 = 0x6573736120656854;
  MEMORY[0x1C68F3410](v2, v1);
  v6 = "n with the name '";
  v7 = 0xD00000000000001DLL;
LABEL_7:
  v9 = v6 | 0x8000000000000000;
LABEL_12:
  MEMORY[0x1C68F3410](v7, v9);
  return v11;
}

unint64_t lazy protocol witness table accessor for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError()
{
  result = lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError;
  if (!lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ConfigurationCatalog.RealityFileConfigurationReaderError, &type metadata for Entity.ConfigurationCatalog.RealityFileConfigurationReaderError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError);
  }

  return result;
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.init(contentsOf:options:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.init(contentsOf:options:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.init(contentsOf:options:)(__n128 a1)
{
  v23 = v1;
  v22 = *MEMORY[0x1E69E9840];
  swift_defaultActor_initialize();
  v1[2] = 0;
  v2 = v1 + 2;
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = RERealityFileCreateByOpeningFileAtURL();

  if (v6)
  {
    RERealityFileCopyConfigurationSetNames();
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v21 = 0;
    v7 = static Array._forceBridgeFromObjectiveC(_:result:)();
    __break(1u);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v7, v18, v19);
  }

  else
  {
    v8 = *v2;
    if (*v2)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_2(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v9 = v8;
    }

    else
    {
      type metadata accessor for URL();
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      lazy protocol witness table accessor for type __REAsset.LoadError and conformance __REAsset.LoadError();
      swift_allocError();
      *v13 = v10;
      *(v13 + 8) = v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = 2;
    }

    swift_willThrow();
    v14 = v1[5];
    v15 = v1[4];
    type metadata accessor for Entity.ConfigurationCatalog.RealityFileConfigurationReader(0);
    swift_defaultActor_destroy();
    outlined destroy of BodyTrackingComponent?(v14, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(v15, v16);
    swift_deallocPartialClassInstance();
    v17 = v1[1];

    return v17();
  }
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.init(contentsOf:options:)()
{
  v1 = v0[8];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];

  outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  (*(v1 + 8))(v4, v2);
  v5 = v0[1];
  v6 = v0[6];

  return v5(v6);
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.__deallocating_deinit()
{
  RERelease();
  outlined destroy of BodyTrackingComponent?(v0 + 112, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);

  v1 = OBJC_IVAR____TtCVE17RealityFoundationC10RealityKit6Entity20ConfigurationCatalog30RealityFileConfigurationReader_loadingUrl;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for Entity.ConfigurationCatalog.RealityFileConfigurationReader(uint64_t a1)
{
  result = type metadata singleton initialization cache for Entity.ConfigurationCatalog.RealityFileConfigurationReader;
  if (!type metadata singleton initialization cache for Entity.ConfigurationCatalog.RealityFileConfigurationReader)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Entity.ConfigurationCatalog.RealityFileConfigurationReader(uint64_t a1)
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

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 200) = a2;
  *(v4 + 208) = v3;
  *(v4 + 280) = a3;
  *(v4 + 192) = a1;
  v5 = type metadata accessor for URL();
  *(v4 + 216) = v5;
  *(v4 + 224) = *(v5 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:), v3, 0);
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:)()
{
  v1 = *(v0 + 216);
  v2 = (*(v0 + 224) + 16);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  if (*(v0 + 280) == 1)
  {
    v5 = *(v0 + 240);
    type metadata accessor for AnchorEntity();
    (*v2)(v5, v4, v1);
    outlined init with copy of Entity.__LoadOptions(v3, v0 + 104);
    v6 = swift_task_alloc();
    *(v0 + 248) = v6;
    *v6 = v0;
    v6[1] = Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:);
    v7 = *(v0 + 240);
    v8 = v0 + 104;
  }

  else
  {
    v9 = *(v0 + 232);
    type metadata accessor for Entity();
    (*v2)(v9, v4, v1);
    outlined init with copy of Entity.__LoadOptions(v3, v0 + 16);
    v10 = swift_task_alloc();
    *(v0 + 264) = v10;
    *v10 = v0;
    v10[1] = Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:);
    v7 = *(v0 + 232);
    v8 = v0 + 16;
  }

  return Entity.init(contentsOf:withName:options:)(v7, 0, 0, v8);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v6 = *(v4 + 208);

    return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:), v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v6 = *(v4 + 208);

    return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:), v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[106] = v3;
  v4[105] = a3;
  v4[104] = a2;
  v4[103] = a1;
  v5 = type metadata accessor for URL.DirectoryHint();
  v4[107] = v5;
  v4[108] = *(v5 - 8);
  v4[109] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[110] = v6;
  v4[111] = *(v6 - 8);
  v4[112] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v4[113] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v3, 0);
}

char *Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)()
{
  v1 = v0 + 58;
  v2 = v0 + 69;
  outlined init with copy of [String : String](v0[105], (v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  if (v0[2] == 1)
  {
    outlined destroy of BodyTrackingComponent?((v0 + 2), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    v0[70] = 0;
    v0[71] = 0;
    *v2 = 0;
    v0[72] = 1;
    *(v0 + 73) = 0u;
    *(v0 + 75) = 0u;
    *(v0 + 77) = 0u;
    v0[79] = 0;
  }

  else
  {
    outlined init with copy of [String : String]((v0 + 5), (v0 + 69), &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    outlined destroy of Entity.ConfigurationCatalog.LoadOptions((v0 + 2));
    if (v0[72] != 1)
    {
      v4 = *(v0 + 75);
      *(v0 + 31) = *(v0 + 73);
      *(v0 + 32) = v4;
      *(v0 + 33) = *(v0 + 77);
      v0[68] = v0[79];
      v5 = *(v0 + 71);
      *v1 = *v2;
      *(v0 + 30) = v5;
      goto LABEL_13;
    }
  }

  v3 = v0 + 80;
  outlined init with copy of [String : String](v0[106] + 112, (v0 + 16), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  if (v0[16] == 1)
  {
    outlined destroy of BodyTrackingComponent?((v0 + 16), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
    v0[81] = 0;
    v0[82] = 0;
    *v3 = 0;
    v0[83] = 1;
    *(v0 + 42) = 0u;
    *(v0 + 43) = 0u;
    *(v0 + 44) = 0u;
    v0[90] = 0;
    goto LABEL_7;
  }

  outlined init with copy of [String : String]((v0 + 19), (v0 + 80), &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  outlined destroy of Entity.ConfigurationCatalog.LoadOptions((v0 + 16));
  if (v0[83] == 1)
  {
LABEL_7:
    v0[95] = 0;
    *(v0 + 91) = 0u;
    *(v0 + 93) = 0u;
    *(v0 + 513) = 0;
    v0[65] = 0;
    *v1 = 0u;
    *(v0 + 30) = 0u;
    v0[62] = 0;
    *(v0 + 528) = 1;
    *(v0 + 133) = 0;
    *(v0 + 536) = 2;
    v0[68] = 0;
    outlined assign with take of __DownsamplingStrategy?((v0 + 91), (v0 + 58));
    v0[63] = 0;
    swift_beginAccess();
    *(v0 + 512) = static RKARSystemCore.generateDecimatedMeshes;
    if (v0[83] != 1)
    {
      outlined destroy of BodyTrackingComponent?((v0 + 80), &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
    }

    goto LABEL_11;
  }

  v6 = *(v0 + 43);
  *(v0 + 31) = *(v0 + 42);
  *(v0 + 32) = v6;
  *(v0 + 33) = *(v0 + 44);
  v0[68] = v0[90];
  v7 = *(v0 + 41);
  *v1 = *v3;
  *(v0 + 30) = v7;
LABEL_11:
  if (v0[72] != 1)
  {
    outlined destroy of BodyTrackingComponent?((v0 + 69), &_s10RealityKit6EntityC13__LoadOptionsVSgMd, &_s10RealityKit6EntityC13__LoadOptionsVSgMR);
  }

LABEL_13:
  outlined init with copy of [String : String](v0[105], (v0 + 30), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  if (v0[30] != 1)
  {
    v9 = *(v0 + 256);
    v11 = (v0 + 30);
    goto LABEL_19;
  }

  v8 = v0[106];
  outlined destroy of BodyTrackingComponent?((v0 + 30), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  outlined init with copy of [String : String](v8 + 112, (v0 + 44), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  if (v0[44] != 1)
  {
    v9 = *(v0 + 368);
    v11 = (v0 + 44);
LABEL_19:
    outlined destroy of Entity.ConfigurationCatalog.LoadOptions(v11);
    v10 = v0[104];
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  outlined destroy of BodyTrackingComponent?((v0 + 44), &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV11LoadOptionsVSgMR);
  v9 = 0;
  v10 = v0[104];
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (*(v10 + 16))
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(47, 0xE100000000000000);
    if (v13)
    {
      v87 = *(*(v10 + 56) + 8 * v12);

      goto LABEL_24;
    }
  }

LABEL_23:
  v87 = MEMORY[0x1E69E7CC8];
LABEL_24:
  v14 = *(*(v0[106] + 232) + 24);
  if (!*(v14 + 16))
  {
LABEL_39:

    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
    swift_allocError();
    *v34 = xmmword_1C18B1D60;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    *(v34 + 16) = 0;
    *(v34 + 40) = 0;
    swift_willThrow();
    goto LABEL_75;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(47, 0xE100000000000000);
  if ((v16 & 1) == 0)
  {

    goto LABEL_39;
  }

  v84 = v9;
  v17 = *(*(v14 + 56) + 8 * v15);
  v0[114] = v17;

  v18 = *(v17 + 32);
  if (v18 >> 62)
  {
    goto LABEL_87;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v83)
  {
    v20 = MEMORY[0x1E69E7CC0];
    v85 = v1;
    v86 = v0;
    if (!i)
    {
      break;
    }

    v21 = v18;
    v89 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v0 = v87;
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v23 = 0;
    v24 = v89;
    v25 = v21;
    v88 = v21 & 0xC000000000000001;
    v26 = v21;
    v27 = i;
    do
    {
      if (v88)
      {
        v28 = MEMORY[0x1C68F41F0](v23, v25);
      }

      else
      {
        v28 = *(v25 + 8 * v23 + 32);
      }

      v30 = *(v28 + 32);
      v29 = *(v28 + 40);

      v32 = *(v89 + 16);
      v31 = *(v89 + 24);
      v1 = (v32 + 1);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
      }

      ++v23;
      *(v89 + 16) = v1;
      v33 = v89 + 16 * v32;
      *(v33 + 32) = v30;
      *(v33 + 40) = v29;
      v25 = v26;
    }

    while (v27 != v23);
    v20 = MEMORY[0x1E69E7CC0];
LABEL_42:
    v90 = v20;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v35 = 0;
    v36 = v90;
    v37 = (v24 + 40);
    while (v35 < *(v24 + 16))
    {
      v39 = *(v37 - 1);
      v38 = *v37;
      v40 = v0[2];

      if (!v40 || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v38), (v42 & 1) == 0))
      {

        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
        swift_allocError();
        *v49 = v39;
        *(v49 + 8) = v38;
        *(v49 + 24) = 0;
        *(v49 + 32) = 0;
        *(v49 + 16) = 0;
        *(v49 + 40) = 4;
        swift_willThrow();

        v0 = v86;
        goto LABEL_74;
      }

      v43 = (v0[7] + 16 * v41);
      v45 = *v43;
      v44 = v43[1];

      v47 = *(v90 + 16);
      v46 = *(v90 + 24);
      if (v47 >= v46 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
      }

      v35 = (v35 + 1);
      *(v90 + 16) = v47 + 1;
      v48 = v90 + 16 * v47;
      *(v48 + 32) = v45;
      *(v48 + 40) = v44;
      v37 += 2;
      v0 = v87;
      if (v1 == v35)
      {

        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_87:
    v82 = v18;
    v83 = __CocoaSet.count.getter();
    v18 = v82;
  }

  v1 = *(MEMORY[0x1E69E7CC0] + 16);
  v0 = v87;
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  v24 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
LABEL_52:
  v0 = v86;
  v50 = v86[106];
  if (!*(v36 + 16))
  {

    v62 = OBJC_IVAR____TtCVE17RealityFoundationC10RealityKit6Entity20ConfigurationCatalog30RealityFileConfigurationReader_loadingUrl;
    v63 = swift_task_alloc();
    v86[115] = v63;
    *v63 = v86;
    v63[1] = Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
    v60 = v50 + v62;
    v61 = v85;
LABEL_62:

    return Entity.ConfigurationCatalog.RealityFileConfigurationReader.initEntity(url:options:requestAnchor:)(v60, v61, v84);
  }

  isa = Array._bridgeToObjectiveC()().super.isa;
  RealityFileAssetDescriptorWithConfigurationSpecifications = RERealityFileGetRealityFileAssetDescriptorWithConfigurationSpecifications();

  if (!RealityFileAssetDescriptorWithConfigurationSpecifications)
  {
    v86[101] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v64 = BidirectionalCollection<>.joined(separator:)();
    v66 = v65;

    v86[102] = v36;
    v67 = BidirectionalCollection<>.joined(separator:)();
    v69 = v68;

    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError();
    swift_allocError();
    *v70 = v64;
    *(v70 + 8) = v66;
    v0 = v86;
    *(v70 + 16) = v67;
    *(v70 + 24) = v69;
    v71 = 1;
    goto LABEL_73;
  }

  if (!RERealityFileAssetDescriptorAsSceneDescriptor())
  {
    RERealityFileAssetDescriptorGetFilename();
    static String.Encoding.utf8.getter();
    v72 = String.init(cString:encoding:)();
    if (v73)
    {
      v74 = v72;
    }

    else
    {
      v74 = 0xD000000000000010;
    }

    if (v73)
    {
      v75 = v73;
    }

    else
    {
      v75 = 0x80000001C18E72A0;
    }

    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError();
    swift_allocError();
    *v70 = v74;
    *(v70 + 8) = v75;
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    v71 = 2;
LABEL_73:
    *(v70 + 32) = v71;
    swift_willThrow();

LABEL_74:
    v1 = v85;
    goto LABEL_75;
  }

  v1 = v85;
  if (RESceneDescriptorGetSceneName())
  {
    static String.Encoding.utf8.getter();
    v53 = String.init(cString:encoding:)();
    if (v54)
    {
      v55 = HIBYTE(v54) & 0xF;
      if ((v54 & 0x2000000000000000) == 0)
      {
        v55 = v53 & 0xFFFFFFFFFFFFLL;
      }

      if (v55)
      {
        v56 = v86[109];
        v57 = v86[108];
        v58 = v86[107];
        v86[99] = v53;
        v86[100] = v54;
        (*(v57 + 104))(v56, *MEMORY[0x1E6968F70], v58);
        lazy protocol witness table accessor for type String and conformance String();
        URL.appending<A>(component:directoryHint:)();
        (*(v57 + 8))(v56, v58);

        v59 = swift_task_alloc();
        v86[119] = v59;
        *v59 = v86;
        v59[1] = Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
        v60 = v86[112];
        v61 = v85;
        goto LABEL_62;
      }
    }
  }

  RERealityFileAssetDescriptorGetFilename();
  static String.Encoding.utf8.getter();
  v77 = String.init(cString:encoding:)();
  if (v78)
  {
    v79 = v77;
  }

  else
  {
    v79 = 0xD000000000000010;
  }

  if (v78)
  {
    v80 = v78;
  }

  else
  {
    v80 = 0x80000001C18E72A0;
  }

  lazy protocol witness table accessor for type Entity.ConfigurationCatalog.RealityFileConfigurationReaderError and conformance Entity.ConfigurationCatalog.RealityFileConfigurationReaderError();
  swift_allocError();
  *v81 = v79;
  *(v81 + 8) = v80;
  *(v81 + 16) = 0;
  *(v81 + 24) = 0;
  *(v81 + 32) = 3;
  swift_willThrow();

LABEL_75:
  outlined destroy of Entity.__LoadOptions(v1);

  v76 = v0[1];

  return v76();
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)(uint64_t a1)
{
  v4 = *v2;
  v4[116] = v1;

  v5 = v4[106];
  if (v1)
  {
    v6 = Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v4[117] = a1;
    v6 = Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v4 = *v2;
  v4[120] = v1;

  v5 = v4[106];
  if (v1)
  {
    v6 = Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  else
  {
    v4[121] = a1;
    v6 = Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)()
{
  type metadata accessor for MainActor();
  *(v0 + 944) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v2, v1);
}

{
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);

  Entity.copy(to:recursive:)(v2, 1);

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v1, 0);
}

{

  outlined destroy of Entity.__LoadOptions(v0 + 464);

  v1 = *(v0 + 8);

  return v1();
}

{
  type metadata accessor for MainActor();
  *(v0 + 976) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v2, v1);
}

{
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);

  Entity.copy(to:recursive:)(v2, 1);

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:), v1, 0);
}

{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];

  (*(v2 + 8))(v1, v3);
  outlined destroy of Entity.__LoadOptions((v0 + 58));

  v4 = v0[1];

  return v4();
}

{

  outlined destroy of Entity.__LoadOptions(v0 + 464);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];

  (*(v2 + 8))(v1, v3);
  outlined destroy of Entity.__LoadOptions((v0 + 58));

  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for Entity.ConfigurationCatalog.FormatReader.loadEntity(into:withConfigurations:loadOptions:) in conformance Entity.ConfigurationCatalog.RealityFileConfigurationReader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return Entity.ConfigurationCatalog.RealityFileConfigurationReader.loadEntity(into:withConfigurations:loadOptions:)(a1, a2, a3);
}

uint64_t outlined assign with take of __DownsamplingStrategy?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__DownsamplingStrategy_pSgMd, &_s10RealityKit22__DownsamplingStrategy_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError()
{
  result = lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError;
  if (!lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ConfigurationCatalog.ConfigurableEntityError, &type metadata for Entity.ConfigurationCatalog.ConfigurableEntityError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E6310], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

RealityKit::__Downsampling::Factor __swiftcall __Downsampling.Factor.init(mipmapOffset:)(RealityKit::__Downsampling::Factor mipmapOffset)
{
  v2 = 1 << SLOBYTE(mipmapOffset.value);
  if (mipmapOffset.value >= 0x40)
  {
    v2 = 0;
  }

  if (mipmapOffset.value > 0x40)
  {
    v2 = 0;
  }

  *v1 = v2;
  return mipmapOffset;
}

void __Downsampling.Minimal.resolve(_:)(unint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_20:
      *a2 = v5;
      return;
    }

    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v15 = a2;
    a2 = 0;
    v5 = v16;
    while (1)
    {
      v6 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x1C68F41F0](a2, a1) : *(a1 + 8 * a2 + 32);
      v7 = v6;
      v8 = [v6 mipmapLevelCount];

      v9 = v8 - 1;
      if (__OFSUB__(v8, 1))
      {
        break;
      }

      v10 = v9 > 0x40;
      if (v9 >= 0x40)
      {
        v11 = 0;
      }

      else
      {
        v11 = 1 << v9;
      }

      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      a2 = (a2 + 1);
      *(v16 + 16) = v14 + 1;
      *(v16 + 8 * v14 + 32) = v12;
      if (i == a2)
      {
        a2 = v15;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
}

void __Downsampling.SkipHighResolution.resolve(_:)(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v20 = a1;
  v4 = *v2;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!v5)
    {
LABEL_22:
      *a2 = v6;
      return;
    }

    v7 = a1;
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      break;
    }

    v19 = a2;
    v8 = 0;
    v6 = v21;
    v9 = v7;
    v10 = v7 & 0xC000000000000001;
    while (1)
    {
      v11 = v10 ? MEMORY[0x1C68F41F0](v8, v9) : *(v9 + 8 * v8 + 32);
      v12 = v11;
      v13 = [v11 mipmapLevelCount];

      v14 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        break;
      }

      if (v4 < v14)
      {
        v14 = v4;
      }

      v15 = v14 > 0x40;
      if (v14 >= 0x40)
      {
        v16 = 0;
      }

      else
      {
        v16 = 1 << v14;
      }

      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      a2 = *(v21 + 16);
      v18 = *(v21 + 24);
      if (a2 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), a2 + 1, 1);
      }

      ++v8;
      *(v21 + 16) = a2 + 1;
      *(v21 + 8 * a2 + 32) = v17;
      v9 = v20;
      if (v5 == v8)
      {
        a2 = v19;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    v5 = __CocoaSet.count.getter();
    a1 = v20;
  }

  __break(1u);
}

unint64_t __Downsampling.Error.debugDescription.getter()
{
  _StringGuts.grow(_:)(58);
  MEMORY[0x1C68F3410](0x6764756220656874, 0xEE0020666F207465);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v0);

  MEMORY[0x1C68F3410](0xD00000000000002ALL, 0x80000001C18E7300);
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v4 = v1;
  MEMORY[0x1C68F3410](0x2E736574796220, 0xE700000000000000);

  MEMORY[0x1C68F3410](v3, v4);

  return 0xD000000000000037;
}

uint64_t __Downsampling.Budgeted.init(availableBytes:device:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void __Downsampling.Budgeted.resolve(_:)(unint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v121 = *v2;
  if (a1 >> 62)
  {
    goto LABEL_175;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v148 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
      return;
    }

    v6 = 0;
    v125 = v3 & 0xC000000000000001;
    v127 = i;
    v7 = v148;
    v123 = v3 & 0xFFFFFFFFFFFFFF8;
    v124 = v3;
    v122 = (v3 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v3 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_168;
      }

      if (v125)
      {
        v8 = MEMORY[0x1C68F41F0]();
      }

      else
      {
        if (v6 >= *(v123 + 16))
        {
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        v8 = *&v122[8 * v6];
      }

      v9 = v8;
      v10 = [v8 mipmapLevelCount];
      if (v10 < 0)
      {
        goto LABEL_169;
      }

      v11 = v10;
      v133 = v3;
      if (v10)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
        v12 = 0;
        v13 = v5;
        do
        {
          [v9 pixelFormat];
          [v9 width];
          [v9 height];
          [v9 depth];
          [v9 sampleCount];
          MTLGetTextureLevelInfoForDeviceWithOptions();
          v15 = *(v5 + 16);
          v14 = *(v5 + 24);
          if (v15 >= v14 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
          }

          ++v12;
          *(v5 + 16) = v15 + 1;
          v16 = v5 + 104 * v15;
          *(v16 + 48) = v142;
          *(v16 + 64) = v143;
          *(v16 + 32) = v138;
          *(v16 + 128) = v147;
          *(v16 + 96) = v145;
          *(v16 + 112) = v146;
          *(v16 + 80) = v144;
        }

        while (v11 != v12);
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v13 = v5;
      }

      v17 = [v9 textureType];
      v18 = 6;
      if (v17 != 5)
      {
        v18 = 1;
      }

      v19 = *(v13 + 16);
      if (v19)
      {
        break;
      }

      v21 = v5;
LABEL_30:
      v27 = *(v7 + 16);
      v26 = *(v7 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v5 = MEMORY[0x1E69E7CC0];
      }

      *(v7 + 16) = v28;
      *(v7 + 8 * v27 + 32) = v21;
      v6 = v133;
      if (v133 == v127)
      {
        goto LABEL_36;
      }
    }

    v129 = v18;
    v132 = v7;
    *&v138 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
    v20 = v129;
    v21 = v5;
    v22 = 128;
    while (1)
    {
      v23 = *(v13 + v22);
      v7 = v20 * v23;
      if ((v20 * v23) >> 64 != (v20 * v23) >> 63)
      {
        break;
      }

      if (v7 < 0)
      {
        goto LABEL_82;
      }

      *&v138 = v5;
      v25 = *(v5 + 16);
      v24 = *(v5 + 24);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v20 = v129;
      }

      *(v5 + 16) = v25 + 1;
      *(v5 + 8 * v25 + 32) = v7;
      v22 += 104;
      if (!--v19)
      {

        v7 = v132;
        v5 = MEMORY[0x1E69E7CC0];
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v135 = v9;
    if (!v127)
    {
      v61 = MEMORY[0x1E69E7CC0];
      v67 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v67)
      {
        goto LABEL_94;
      }

      goto LABEL_146;
    }

    v140 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v127 & ~(v127 >> 63), 0);
    if (v127 < 0)
    {
      goto LABEL_178;
    }

    v60 = 0;
    v61 = v140;
    do
    {
      if ((v124 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x1C68F41F0](v60, v124);
      }

      else
      {
        v62 = *(v124 + 8 * v60 + 32);
      }

      v63 = v62;
      v64 = [v62 mipmapLevelCount];

      *&v138 = v61;
      v66 = v61[1].u64[0];
      v65 = v61[1].u64[1];
      v67 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1);
      }

      ++v60;
      v61[1].i64[0] = v67;
      v61[2].i64[v66] = v64;
    }

    while (v127 != v60);
LABEL_94:
    if (v67 > 3)
    {
      v68 = v67 & 0xFFFFFFFFFFFFFFFCLL;
      v70 = v61 + 3;
      v71 = 0uLL;
      v72 = v67 & 0xFFFFFFFFFFFFFFFCLL;
      v73 = 0uLL;
      do
      {
        v71 = vbslq_s8(vcgtq_s64(v70[-1], v71), v70[-1], v71);
        v73 = vbslq_s8(vcgtq_s64(*v70, v73), *v70, v73);
        v70 += 2;
        v72 -= 4;
      }

      while (v72);
      v74 = vbslq_s8(vcgtq_s64(v71, v73), v71, v73);
      v75 = vextq_s8(v74, v74, 8uLL).u64[0];
      v69 = vbsl_s8(vcgtd_s64(v74.i64[0], v75), *v74.i8, v75);
      if (v67 != v68)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v68 = 0;
      v69 = 0;
LABEL_99:
      v76 = v67 - v68;
      v77 = &v61[2] + v68;
      do
      {
        v79 = *v77++;
        v78 = v79;
        if (*&v79 > *&v69)
        {
          v69 = v78;
        }

        --v76;
      }

      while (v76);
    }

    v80 = MEMORY[0x1E69E7CC0];
    if (v69)
    {
      v81 = 0;
      v82 = v9[2];
      v128 = v69;
      v131 = v135[2];
      while (1)
      {
        v83 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          __break(1u);
          goto LABEL_177;
        }

        if (v82)
        {
          v137 = v81 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0);
          v38 = v80;
          v84 = v135 + 4;
          while (1)
          {
            v85 = *(*v84 + 16) - 1 >= v81 ? v81 : *(*v84 + 16) - 1;
            if (v85 < 0)
            {
              goto LABEL_167;
            }

            v86 = *(*v84 + 8 * v85 + 32);
            v88 = *(v80 + 16);
            v87 = *(v80 + 24);
            v46 = v88 + 1;
            if (v88 >= v87 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1);
            }

            *(v80 + 16) = v46;
            v89 = v80 + 16 * v88;
            *(v89 + 32) = v86;
            *(v89 + 40) = v85;
            ++v84;
            if (!--v82)
            {
              v80 = MEMORY[0x1E69E7CC0];
              goto LABEL_118;
            }
          }
        }

        v46 = *(v80 + 16);
        if (v46)
        {
          break;
        }

        if (v121)
        {
          goto LABEL_170;
        }

LABEL_127:
        v81 = v83;
        if (v83 == *&v69)
        {
          goto LABEL_146;
        }
      }

      v137 = v81 + 1;
      v38 = v80;
LABEL_118:
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 0);
      v90 = v80;
      v91 = *(v80 + 16);
      v92 = 32;
      v93 = v46;
      do
      {
        v94 = v91;
        v95 = *(v38 + v92);
        *&v138 = v90;
        v96 = *(v90 + 24);
        ++v91;
        if (v94 >= v96 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v91, 1);
          v90 = v138;
        }

        *(v90 + 16) = v91;
        *(v90 + 8 * v94 + 32) = v95;
        v92 += 16;
        --v93;
      }

      while (v93);
      v97 = 0;
      v98 = 0;
      v82 = v131;
      v7 = v132;
      while (1)
      {
        v99 = *(v90 + 8 * v97 + 32);
        v36 = __CFADD__(v98, v99);
        v98 += v99;
        if (v36)
        {
          goto LABEL_164;
        }

        if (v94 + 1 == ++v97)
        {

          if (v98 < v121)
          {
            goto LABEL_134;
          }

          v80 = MEMORY[0x1E69E7CC0];
          v69 = v128;
          v83 = v137;
          goto LABEL_127;
        }
      }
    }

LABEL_146:

    v107 = 0;
    v108 = *(v7 + 16);
    v3 = MEMORY[0x1E69E7CC0];
    while (v108 != v107)
    {
      if (v107 >= *(v7 + 16))
      {
        goto LABEL_173;
      }

      v109 = *(v7 + 8 * v107++ + 32);
      v110 = *(v109 + 16);
      if (v110)
      {
        v111 = *(v109 + 8 * v110 + 24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
        }

        v113 = *(v3 + 16);
        v112 = *(v3 + 24);
        if (v113 >= v112 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1, v3);
        }

        *(v3 + 16) = v113 + 1;
        *(v3 + 8 * v113 + 32) = v111;
      }
    }

    v114 = *(v3 + 16);
    if (!v114)
    {
      v115 = 0;
LABEL_161:

      lazy protocol witness table accessor for type __Downsampling.Error and conformance __Downsampling.Error();
      swift_allocError();
      *v118 = v121;
      v118[1] = v115;
      swift_willThrow();
      return;
    }

    v115 = 0;
    v116 = (v3 + 32);
    while (1)
    {
      v117 = *v116++;
      v36 = __CFADD__(v115, v117);
      v115 += v117;
      if (v36)
      {
        break;
      }

      if (!--v114)
      {
        goto LABEL_161;
      }
    }

LABEL_174:
    __break(1u);
LABEL_175:
    ;
  }

  v28 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v28)
  {
    goto LABEL_79;
  }

  v127 = 0;
  v124 = v3;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_36:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
  v29 = 0;
  v30 = v5;
  do
  {
    if (v29 >= *(v7 + 16))
    {
      goto LABEL_165;
    }

    v31 = *(v7 + 32 + 8 * v29);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = 0;
      v34 = (v31 + 32);
      while (1)
      {
        v35 = *v34++;
        v36 = __CFADD__(v33, v35);
        v33 += v35;
        if (v36)
        {
          break;
        }

        if (!--v32)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_79:
      swift_bridgeObjectRelease_n();
      goto LABEL_80;
    }

    v33 = 0;
LABEL_44:
    v139 = v30;
    v38 = *(v30 + 16);
    v37 = *(v30 + 24);
    if (v38 >= v37 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
      v30 = v139;
    }

    ++v29;
    *(v30 + 16) = v38 + 1;
    *(v30 + 8 * v38 + 32) = v33;
  }

  while (v29 != v28);
  v3 = 0;
  v39 = v38 + 1;
  v40 = 32;
  v41 = MEMORY[0x1E69E7CC0];
  do
  {
    v42 = *(v30 + v40);
    v36 = __CFADD__(v3, v42);
    v3 += v42;
    if (v36)
    {
      goto LABEL_166;
    }

    v40 += 8;
    --v39;
  }

  while (v39);

  if (v121 >= v3)
  {

LABEL_80:
    *a2 = 0;
    return;
  }

  *&v138 = v41;
  v126 = v28;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
  v43 = 0;
  v9 = v41;
  v130 = v7 + 32;
  v132 = v7;
  while (2)
  {
    if (v43 >= *(v7 + 16))
    {
      goto LABEL_172;
    }

    v136 = v43;
    v44 = *(v130 + 8 * v43);
    v45 = *(v44 + 16);
    if (!v45)
    {

      v48 = MEMORY[0x1E69E7CC0];
      v38 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v38 >= 2)
      {
        goto LABEL_64;
      }

LABEL_62:

      v7 = v132;
LABEL_73:
      *&v138 = v9;
      v59 = v9[2];
      v58 = v9[3];
      v3 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
      }

      v43 = v136 + 1;
      v9[2] = v3;
      v9[v59 + 4] = v48;
      if (v136 + 1 == v126)
      {
        goto LABEL_83;
      }

      continue;
    }

    break;
  }

  v134 = v9;
  v149 = MEMORY[0x1E69E7CC0];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45, 0);
  v46 = 0;
  v47 = *(v44 + 16);
  v48 = v149;
  do
  {
    if (!v47)
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:

      v141 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 0);
      v100 = 40;
      do
      {
        v101 = *(v38 + v100);
        v102 = v101 > 0x40;
        if (v101 >= 0x40)
        {
          v103 = 0;
        }

        else
        {
          v103 = 1 << v101;
        }

        if (v102)
        {
          v104 = 0;
        }

        else
        {
          v104 = v103;
        }

        v106 = *(v141 + 16);
        v105 = *(v141 + 24);
        if (v106 >= v105 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1);
        }

        *(v141 + 16) = v106 + 1;
        *(v141 + 8 * v106 + 32) = v104;
        v100 += 16;
        --v46;
      }

      while (v46);

      *a2 = v141;
      return;
    }

    v49 = v47 - 1;
    if ((v47 - 1) >= *(v44 + 16))
    {
      goto LABEL_132;
    }

    v50 = *(v44 + 24 + 8 * v47);
    v36 = __CFADD__(v46, v50);
    v46 += v50;
    if (v36)
    {
      goto LABEL_133;
    }

    v52 = *(v149 + 16);
    v51 = *(v149 + 24);
    v38 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
    }

    *(v149 + 16) = v38;
    *(v149 + 8 * v52 + 32) = v46;
    v47 = v49;
    --v45;
  }

  while (v45);
  v9 = v134;
  if (v38 < 2)
  {
    goto LABEL_62;
  }

LABEL_64:
  v53 = v38 >> 1;
  v54 = v38 + 3;
  v38 = 4;
  v7 = v132;
  while (2)
  {
    if (v38 == v54)
    {
LABEL_66:
      --v54;
      ++v38;
      if (!--v53)
      {

        goto LABEL_73;
      }

      continue;
    }

    break;
  }

  v55 = *(v48 + 2);
  if (v38 - 4 < v55)
  {
    if (v54 - 4 >= v55)
    {
      goto LABEL_163;
    }

    v56 = *&v48[8 * v38];
    v57 = *&v48[8 * v54];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew()(v48);
    }

    *&v48[8 * v38] = v57;
    *&v48[8 * v54] = v56;
    goto LABEL_66;
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:

  v119 = MEMORY[0x1E69E7CC0];

  *a2 = v119;
}

uint64_t static __Downsampling.getMipmapByteSizes(_:device:)(void *a1, uint64_t a2)
{
  result = [a1 mipmapLevelCount];
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = result;
    v5 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v25 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v6 = 0;
      v7 = v25;
      do
      {
        [a1 pixelFormat];
        [a1 width];
        [a1 height];
        [a1 depth];
        [a1 sampleCount];
        MTLGetTextureLevelInfoForDeviceWithOptions();
        v9 = *(v25 + 16);
        v8 = *(v25 + 24);
        if (v9 >= v8 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        }

        ++v6;
        *(v25 + 16) = v9 + 1;
        v10 = v25 + 104 * v9;
        *(v10 + 48) = v19;
        *(v10 + 64) = v20;
        *(v10 + 32) = v18;
        *(v10 + 128) = v24;
        *(v10 + 96) = v22;
        *(v10 + 112) = v23;
        *(v10 + 80) = v21;
      }

      while (v4 != v6);
      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    if ([a1 textureType] == 5)
    {
      v11 = 6;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(v7 + 16);
    if (!v12)
    {
LABEL_19:

      return v5;
    }

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = 128;
    while (1)
    {
      v14 = *(v7 + v13);
      v15 = v11 * v14;
      if ((v11 * v14) >> 64 != (v11 * v14) >> 63)
      {
        break;
      }

      if (v15 < 0)
      {
        goto LABEL_21;
      }

      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      *(v5 + 16) = v17 + 1;
      *(v5 + 8 * v17 + 32) = v15;
      v13 += 104;
      if (!--v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type __Downsampling.Error and conformance __Downsampling.Error()
{
  result = lazy protocol witness table cache variable for type __Downsampling.Error and conformance __Downsampling.Error;
  if (!lazy protocol witness table cache variable for type __Downsampling.Error and conformance __Downsampling.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __Downsampling.Error, &type metadata for __Downsampling.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __Downsampling.Error and conformance __Downsampling.Error);
  }

  return result;
}

uint64_t VideoPlaybackController.audioInputMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

uint64_t VideoPlaybackController.audioInputMode.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 24) = v2;
  return REVideoAssetSetAudioInputMode();
}

uint64_t (*VideoPlaybackController.audioInputMode.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return VideoPlaybackController.audioInputMode.modify;
}

uint64_t VideoPlaybackController.audioInputMode.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {

    return REVideoAssetSetAudioInputMode();
  }

  return result;
}

void VideoPlaybackController._currentViewingMode.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);

  __VideoResource.removeNilEntries()();
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (v4 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v14 = a1;
    v6 = v4 & 0xC000000000000001;
    a1 = v4 & 0xFFFFFFFFFFFFFF8;

    v7 = 0;
    while (v6)
    {
      MEMORY[0x1C68F41F0](v7, v4);
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_25;
      }

LABEL_13:
      if (swift_weakLoadStrong())
      {
        REVideoComponentGetComponentType();
        if (REEntityGetComponentByClass() && swift_weakLoadStrong())
        {
          SceneNullable = REEntityGetSceneNullable();
          if (SceneNullable)
          {
            v10 = SceneNullable;
            if (RESceneGetSwiftObject())
            {
              swift_unknownObjectRelease();
            }

            else
            {
              type metadata accessor for Scene();
              v11 = swift_allocObject();
              *(v11 + 24) = 0u;
              *(v11 + 40) = 0u;
              *(v11 + 56) = 0;
              swift_unknownObjectWeakInit();
              *(v11 + 104) = 0;
              *(v11 + 88) = 0u;
              *(v11 + 72) = 0u;
              swift_weakInit();
              *(v11 + 232) = 0;
              *(v11 + 216) = 0u;
              *(v11 + 200) = 0u;
              *(v11 + 184) = 0u;
              *(v11 + 168) = 0u;
              *(v11 + 152) = 0u;
              *(v11 + 136) = 0u;
              *(v11 + 120) = 0u;
              RERetain();
              *(v11 + 16) = v10;
              RESceneSetSwiftObject();
              v6 = v4 & 0xC000000000000001;
            }

            a1 = v4 & 0xFFFFFFFFFFFFFF8;

            CurrentViewingMode = REVideoComponentGetCurrentViewingMode();

            if (CurrentViewingMode == 1)
            {

              v13 = 0;
              a1 = v14;
              goto LABEL_29;
            }

            goto LABEL_6;
          }
        }

        else
        {
        }
      }

LABEL_6:
      ++v7;
      if (v8 == i)
      {

        v13 = 2;
        a1 = v14;
        goto LABEL_29;
      }
    }

    if (v7 >= *(a1 + 16))
    {
      goto LABEL_26;
    }

    v8 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_13;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v13 = 2;
LABEL_29:
  *a1 = v13;
}

double VideoPlaybackController._currentImageSize.getter()
{
  v1 = *(v0 + 16);

  __VideoResource.removeNilEntries()();
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {

    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C68F41F0](v4, v2);
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }

LABEL_13:
      if (swift_weakLoadStrong())
      {
        REVideoComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          REVideoComponentGetCurrentImageSize();
          v8 = v6;

          if (v8.f32[0] != 0.0 || v8.f32[1] != 0.0)
          {

            *&result = *&vcvtq_f64_f32(v8);
            return result;
          }

          goto LABEL_6;
        }
      }

LABEL_6:
      ++v4;
      if (v5 == i)
      {

        return 0.0;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_13;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return 0.0;
}

uint64_t VideoPlaybackController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static VideoPlaybackController.ViewingMode.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if ((*a1 & 1) == 0 && (*a2 & 1) == 0)
  {
    return 1;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t VideoPlaybackController.ViewingMode.hash(into:)()
{
  if ((*v0 & 1) == 0)
  {
    return MEMORY[0x1C68F4C10](0);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int VideoPlaybackController.ViewingMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    result = _diagnoseUnavailableCodeReached()();
    __break(1u);
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VideoPlaybackController.ViewingMode(_BYTE *a1, _BYTE *a2)
{
  if ((*a1 & 1) == 0 && (*a2 & 1) == 0)
  {
    return 1;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance VideoPlaybackController.ViewingMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    result = _diagnoseUnavailableCodeReached()();
    __break(1u);
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance VideoPlaybackController.ViewingMode(uint64_t a1)
{
  if ((*v1 & 1) == 0)
  {
    return MEMORY[0x1C68F4C10](0);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VideoPlaybackController.ViewingMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    result = _diagnoseUnavailableCodeReached()();
    __break(1u);
  }

  else
  {
    MEMORY[0x1C68F4C10](0);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t (*VideoPlaybackController.preferredViewingMode.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return VideoPlaybackController.preferredViewingMode.modify;
}

uint64_t key path setter for VideoPlaybackController.preferredViewingMode : VideoPlaybackController(char *a1, uint64_t a2)
{
  v2 = *a1;
  *(*a2 + 40) = *a1;
  v4 = v2;

  __VideoResource.preferredViewingMode.setter(&v4);
}

uint64_t VideoPlaybackController.preferredViewingMode.setter(char *a1)
{
  v2 = *a1;
  *(v1 + 40) = *a1;
  v4 = v2;

  __VideoResource.preferredViewingMode.setter(&v4);
}

uint64_t (*VideoPlaybackController.desiredViewingMode.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 40);
  return VideoPlaybackController.desiredViewingMode.modify;
}

uint64_t VideoPlaybackController.preferredViewingMode.modify(_BYTE *a1, char a2)
{
  v2 = a1[8];
  *(*a1 + 40) = v2;
  if (a2)
  {
    v5 = v2;

    v3 = &v5;
  }

  else
  {
    v6 = v2;

    v3 = &v6;
  }

  __VideoResource.preferredViewingMode.setter(v3);
}

uint64_t (*VideoPlaybackController.reverbSendLevel.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return VideoPlaybackController.reverbSendLevel.modify;
}

unint64_t lazy protocol witness table accessor for type VideoPlaybackController.ViewingMode and conformance VideoPlaybackController.ViewingMode()
{
  result = lazy protocol witness table cache variable for type VideoPlaybackController.ViewingMode and conformance VideoPlaybackController.ViewingMode;
  if (!lazy protocol witness table cache variable for type VideoPlaybackController.ViewingMode and conformance VideoPlaybackController.ViewingMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPlaybackController.ViewingMode, &type metadata for VideoPlaybackController.ViewingMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VideoPlaybackController.ViewingMode and conformance VideoPlaybackController.ViewingMode);
  }

  return result;
}

uint64_t specialized VideoPlaybackController.init(videoResource:)(uint64_t a1)
{
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  swift_beginAccess();

  REVideoAssetSetAudioInputMode();
  REVideoAssetSetReverbSendLevelDecibels();
  v3 = *(v1 + 40);

  __VideoResource.preferredViewingMode.setter(&v3);

  return v1;
}

uint64_t ManipulationComponent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 16843009;
  *(a1 + 5) = 0;
  swift_weakInit();

  return _s17RealityFoundation6SystemPAAE08registerC0yyFZAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLC_Ttg5();
}

uint64_t ManipulationComponent.init(contentEntity:)@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 16843009;
  *(a2 + 5) = 0;
  swift_weakInit();
  _s17RealityFoundation6SystemPAAE08registerC0yyFZAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLC_Ttg5();
  swift_weakAssign();
}

uint64_t ManipulationComponent.init(_:)@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 16843009;
  *(a2 + 5) = 0;
  swift_weakInit();
  _s17RealityFoundation6SystemPAAE08registerC0yyFZAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLC_Ttg5();
  *(a2 + 2) = RETransformInteractionComponentGetAllowsTwoHandedRotation();
  *(a2 + 1) = RETransformInteractionComponentGetAllowsTwoHandedScale();
  *(a2 + 3) = RETransformInteractionComponentGetAllowsSingleHandedRotation();
  *(a2 + 4) = RETransformInteractionComponentGetAllowsTranslation();
  Inertia = RETransformInteractionComponentGetInertia();
  if (Inertia >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = Inertia;
  }

  *a2 = v4;
  *(a2 + 6) = RETransformInteractionComponentGetUsesDefaultAudio() ^ 1;
  result = RETransformInteractionComponentGetResetsOnRelease();
  *(a2 + 5) = result ^ 1;
  return result;
}

uint64_t _s17RealityFoundation6SystemPAAE08registerC0yyFZAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLC_Ttg5()
{
  v0 = type metadata accessor for TransformInteractionSystem();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SystemRegistry.shared;
  result = swift_beginAccess();
  v3 = *(v1 + 3);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = *v4;
    v4 += 2;
    if (v6 == v0)
    {
      return result;
    }
  }

  v24 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26TransformInteractionSystem33_3A341D50D446846BB88CBE2E5246020ELLCmMd, &_s17RealityFoundation26TransformInteractionSystem33_3A341D50D446846BB88CBE2E5246020ELLCmMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25_SystemUpdateRateProtocol_pMd, &_s17RealityFoundation25_SystemUpdateRateProtocol_pMR);
  v7 = swift_dynamicCast();
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  v8 = *(v1 + 3);
  v9 = *(v8 + 2);
  if (v9 >> 31)
  {
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 3) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, v8);
    *(v1 + 3) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = v0;
  *(v13 + 5) = &protocol witness table for TransformInteractionSystem;
  *(v1 + 3) = v8;
  swift_endAccess();
  SystemRegistry.getOrAddId(of:)(v0, &protocol witness table for TransformInteractionSystem);
  v14 = swift_allocObject();
  *(v14 + 16) = v0 != 0;
  v15 = swift_allocObject();
  *(v15 + 16) = v0 != 0;
  *(v15 + 17) = v7;
  v22 = partial apply for specialized closure #2 in static System.registerSystem();
  v23 = v14;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer) -> (@unowned UnsafeMutableRawPointer);
  v21 = &block_descriptor_19;
  v16 = _Block_copy(&v18);

  v22 = partial apply for specialized closure #3 in static System.registerSystem();
  v23 = v15;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned OpaquePointer?, @unowned OpaquePointer) -> ();
  v21 = &block_descriptor_133_0;
  v17 = _Block_copy(&v18);

  RERegisterCustomSystem();
  _Block_release(v17);
  _Block_release(v16);
}

uint64_t ManipulationComponent.__toCore(_:)(void *a1)
{
  RETransformInteractionComponentSetAllowsTwoHandedRotation();
  RETransformInteractionComponentSetAllowsTwoHandedScale();
  RETransformInteractionComponentSetAllowsSingleHandedRotation();
  RETransformInteractionComponentSetAllowsTranslation();
  if (*v1 <= 3u)
  {
    RETransformInteractionComponentSetInertia();
  }

  RETransformInteractionComponentSetUsesDefaultAudio();
  RETransformInteractionComponentSetResetsOnRelease();

  return RENetworkMarkComponentDirty();
}

RealityFoundation::ManipulationComponent::Dynamics __swiftcall ManipulationComponent.Dynamics.init()()
{
  *v0 = 0;
  *(v0 + 1) = 16843009;
  return result;
}

void ManipulationComponent.dynamics.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

_BYTE *ManipulationComponent.dynamics.setter(_BYTE *result)
{
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *v1 = *result;
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v5;
  return result;
}

uint64_t ManipulationComponent.contentEntity.setter(uint64_t a1)
{
  swift_weakAssign();
}

uint64_t (*ManipulationComponent.contentEntity.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return ManipulationComponent.contentEntity.modify;
}

uint64_t ManipulationComponent.contentEntity.modify(void *a1)
{
  swift_weakAssign();
}

uint64_t ManipulationComponent.HitTarget.redirectedEntity.setter(uint64_t result)
{
  v2 = result;
  if (*v1)
  {
    if (result && *(*v1 + 16) == *(result + 16))
    {
    }
  }

  else if (!result)
  {
    return result;
  }

  *v1 = result;

  if (v2)
  {
    LocalId = REEntityGetLocalId();
  }

  else
  {
    LocalId = 0;
  }

  *(v1 + 8) = LocalId;
  *(v1 + 16) = v2 == 0;
  return result;
}

uint64_t *(*ManipulationComponent.HitTarget.redirectedEntity.modify(void *a1))(uint64_t *result, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return ManipulationComponent.HitTarget.redirectedEntity.modify;
}

uint64_t *ManipulationComponent.HitTarget.redirectedEntity.modify(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {

    ManipulationComponent.HitTarget.redirectedEntity.setter(v3);
    goto LABEL_3;
  }

  v4 = result[2];
  if (v4)
  {
    if (v2 && *(v4 + 16) == *(v2 + 16))
    {
LABEL_3:
    }
  }

  else if (!v2)
  {
    return result;
  }

  v5 = result[1];
  *v5 = v2;

  if (v2)
  {
    LocalId = REEntityGetLocalId();
  }

  else
  {
    LocalId = 0;
  }

  *(v5 + 8) = LocalId;
  *(v5 + 16) = v2 == 0;
  return result;
}

uint64_t ManipulationComponent.HitTarget.init(redirectedEntity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  if (result)
  {
    result = REEntityGetLocalId();
  }

  *a2 = v3;
  *(a2 + 8) = result;
  *(a2 + 16) = v3 == 0;
  return result;
}

uint64_t static ManipulationComponent.HitTarget.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  REComponentGetEntity();
  RedirectedEntity = REManipulationHitTargetComponentGetRedirectedEntity();
  RedirectedEntityID = REManipulationHitTargetComponentGetRedirectedEntityID();
  result = 0;
  if (!RedirectedEntity)
  {
    goto LABEL_8;
  }

  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    result = swift_dynamicCastClassUnconditional();
LABEL_8:
    *a2 = result;
    *(a2 + 8) = RedirectedEntityID;
    *(a2 + 16) = 0;
    return result;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v6 = static Entity.entityInfoType(_:)(RedirectedEntity);
    if (v6)
    {
      v7 = (*(v6 + 232))();
      v8 = *(v7 + 16);

      MEMORY[0x1C68F9740](v8, 0);
      *(v7 + 16) = RedirectedEntity;
      MEMORY[0x1C68F9740](RedirectedEntity, v7);

      result = v7;
    }

    else
    {
      result = makeEntity(for:)(RedirectedEntity);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t ManipulationComponent.HitTarget.__toCore(_:)(void *a1)
{
  if (*(v1 + 16))
  {
    REManipulationHitTargetComponentSetRedirectedEntity();
  }

  else
  {
    REManipulationHitTargetComponentSetRedirectedEntityAndID();
  }

  return RENetworkMarkComponentDirty();
}

uint64_t static ManipulationComponent.__coreComponentType.getter@<X0>(int a1@<W0>, _DWORD *a2@<X8>)
{
  type metadata accessor for REComponentType(0);
  v8[3] = v4;
  LODWORD(v8[0]) = a1;
  outlined init with copy of Any(v8, v7);
  swift_dynamicCast();
  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

RealityFoundation::ManipulationComponent::InputDevice::Kind::Set __swiftcall ManipulationComponent.InputDevice.Kind.Set.init(_:)(RealityFoundation::ManipulationComponent::InputDevice::Kind a1)
{
  v2 = *a1;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  *v1 = v3;
  LOBYTE(result.rawValue) = a1;
  return result;
}

RealityFoundation::ManipulationComponent::InputDevice::Kind_optional __swiftcall ManipulationComponent.InputDevice.Kind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

__n128 ManipulationComponent.InputDevice.pose.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ManipulationComponent.InputDevice.init(chirality:kind:pose:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a3 + 32);
  *a4 = *a1;
  *(a4 + 1) = v4;
  result = *a3;
  v7 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v7;
  *(a4 + 48) = v5 & 1;
  return result;
}

void ManipulationComponent.InputDevice.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[48];
  if (v2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2 & 1);
  }

  MEMORY[0x1C68F4C10](v3);
  if (v4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    SPPose3DFloat.hash(into:)();
  }
}

Swift::Int ManipulationComponent.InputDevice.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[48];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  MEMORY[0x1C68F4C10](v2);
  if (v3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    SPPose3DFloat.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ManipulationComponent.InputDevice()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[48];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }

  MEMORY[0x1C68F4C10](v2);
  if (v3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    SPPose3DFloat.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int ManipulationComponent.Dynamics.Inertia.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Component.__coreComponentType.getter in conformance ManipulationComponent.HitTarget@<X0>(int a1@<W2>, _DWORD *a2@<X8>)
{
  type metadata accessor for REComponentType(0);
  v8[3] = v4;
  LODWORD(v8[0]) = a1;
  outlined init with copy of Any(v8, v7);
  swift_dynamicCast();
  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t ManipulationComponent.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v11 - v7;
  outlined init with copy of ManipulationComponent(v1, v12);
  v11[1] = MEMORY[0x1E69E7CC0];
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance ManipulationComponent(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v11 - v7;
  outlined init with copy of ManipulationComponent(v1, v12);
  v11[1] = MEMORY[0x1E69E7CC0];
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t ManipulationComponent.HitTarget.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *v0;
  v9 = v0[1];
  v10 = *(v0 + 16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  if (v8)
  {
    REEntityGetName();
    *&v18 = String.init(cString:)();
    *(&v18 + 1) = v11;
  }

  else
  {
    v18 = 0uLL;
    if ((v10 & 1) == 0)
    {
      v17 = MEMORY[0x1E69E6158];
      *&v15 = 0x756F6620746F6E3CLL;
      *(&v15 + 1) = 0xEB000000003E646ELL;
      __swift_destroy_boxed_opaque_existential_1(&v18);
      outlined init with take of Any(&v15, &v18);
    }
  }

  *&v15 = v8;
  *(&v15 + 1) = v9;
  v16 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1887600;
  *(v12 + 32) = 0xD000000000000010;
  *(v12 + 40) = 0x80000001C18E73C0;
  outlined init with copy of Any(&v18, v12 + 48);
  v13 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);

  Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  return __swift_destroy_boxed_opaque_existential_1(&v18);
}

double static ManipulationComponent.configureEntity(_:hoverEffect:allowedInputTypes:collisionShapes:)(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = *(a3 + 4);
  v12 = *a3;
  v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(&outlined read-only object #0 of static ManipulationComponent.configureEntity(_:hoverEffect:allowedInputTypes:collisionShapes:));
  if (v11)
  {
    v14 = 0x300000001;
  }

  else
  {
    v14 = (v12 << 32) + 1;
  }

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation011InputTargetD0V_TtB5(v14, v13, 0, a1);

  REInputTargetComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REInputTargetComponentSetAllowsDirectTouchInput();
  }

  Entity.deleteCollisionComponents()();
  if (a4)
  {
    v15 = one-time initialization token for default;

    if (v15 != -1)
    {
      swift_once();
    }

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlFAA09CollisionD0V_TtB5(a4, 0, static CollisionFilter.default, 0, a1);
  }

  else
  {
    Entity.generateCollisionShapes(recursive:static:)(1, 0);
  }

  GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  LOBYTE(v58) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20HoverEffectComponentV0fG0VGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C1887600;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v18 = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  v19 = dword_1EBEAC2C8 | (byte_1EBEAC2CC << 32);
  *(v17 + 32) = static HoverEffectComponent.SpotlightHoverEffectStyle.default;
  *(v17 + 40) = v19;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  *(v17 + 64) = 1;
  *(v17 + 65) = 1;
  *(v17 + 68) = 3;
  v20 = *(v17 + 48);
  v61[0] = *(v17 + 32);
  v61[1] = v20;
  v62 = *(v17 + 64);
  *(v17 + 32) = GenericRGB;
  *(v17 + 40) = 1065353216;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  *(v17 + 64) = 1;
  *(v17 + 65) = 1;
  *(v17 + 68) = 3;
  v21 = v18;
  outlined destroy of HoverEffectComponent.HoverEffect(v61);
  if ((v10 & 0xFF00) == 0x200)
  {
    v22 = *(v17 + 48);
    v34[0] = *(v17 + 32);
    v34[1] = v22;
    v35 = *(v17 + 64);
    v38 = v34[0];
    v39 = v22;
    v40 = *(v17 + 64);
    v36 = *(v17 + 66);
    v37 = *(v17 + 70);
    outlined init with copy of HoverEffectComponent.HoverEffect(v34, &v58);
    v23 = *(v17 + 48);
    v41[0] = *(v17 + 32);
    v41[1] = v23;
    v42 = *(v17 + 64);
    v24 = v39;
    *(v17 + 32) = v38;
    *(v17 + 48) = v24;
    *(v17 + 64) = v40;
    *(v17 + 65) = 0;
    *(v17 + 66) = v36;
    *(v17 + 70) = v37;
    outlined destroy of HoverEffectComponent.HoverEffect(v41);
    v25 = *(v17 + 48);
    v43[0] = *(v17 + 32);
    v43[1] = v25;
    v44 = *(v17 + 64);
    v47 = v43[0];
    v48 = v25;
    v49 = *(v17 + 64);
    v45 = *(v17 + 67);
    v46 = *(v17 + 71);
    outlined init with copy of HoverEffectComponent.HoverEffect(v43, &v58);
    v26 = *(v17 + 48);
    v50[0] = *(v17 + 32);
    v50[1] = v26;
    v51 = *(v17 + 64);
    v27 = v48;
    *(v17 + 32) = v47;
    *(v17 + 48) = v27;
    *(v17 + 64) = v49;
    *(v17 + 66) = 1;
    *(v17 + 67) = v45;
    *(v17 + 71) = v46;
    outlined destroy of HoverEffectComponent.HoverEffect(v50);
    v28 = *(v17 + 48);
    v52 = *(v17 + 32);
    v53 = v28;
    v54 = *(v17 + 64);
    v55 = v52;
    v56 = v28;
    v57 = *(v17 + 64);
    outlined init with copy of HoverEffectComponent.HoverEffect(&v52, &v58);
    v29 = *(v17 + 48);
    v58 = *(v17 + 32);
    v59 = v29;
    v60 = *(v17 + 64);
    v30 = v56;
    *(v17 + 32) = v55;
    *(v17 + 48) = v30;
    *(v17 + 64) = v57;
    *(v17 + 68) = 1;
  }

  else
  {
    LOBYTE(v50[0]) = v10 & 1;
    *&v52 = v6;
    *(&v52 + 1) = v7;
    *&v53 = v8;
    *(&v53 + 1) = v9;
    v54 = v10;
    outlined init with copy of HoverEffectComponent.HoverEffect(&v52, &v58);
    v31 = *(v17 + 48);
    v58 = *(v17 + 32);
    v59 = v31;
    v60 = *(v17 + 64);
    *(v17 + 32) = v6;
    *(v17 + 40) = v7;
    *(v17 + 48) = v8;
    *(v17 + 56) = v9;
    *(v17 + 64) = v50[0];
    *(v17 + 65) = BYTE1(v10) & 1;
    *(v17 + 66) = BYTE2(v10) & 1;
    *(v17 + 68) = HIDWORD(v10);
  }

  outlined destroy of HoverEffectComponent.HoverEffect(&v58);

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation011HoverEffectD0V_TtB5(v32, 1, 0, a1);

  LOBYTE(v58) = 0;
  *(&v58 + 1) = 16843009;
  *(&v58 + 5) = 0;
  swift_weakInit();
  _s17RealityFoundation6SystemPAAE08registerC0yyFZAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLC_Ttg5();
  outlined init with copy of ManipulationComponent(&v58, &v52);
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012ManipulationD0V_TtB5(&v52, 0, a1);
  outlined destroy of BodyTrackingComponent?(&v52, &_s17RealityFoundation21ManipulationComponentVSgMd, &_s17RealityFoundation21ManipulationComponentVSgMR);
  outlined destroy of ManipulationComponent(&v58);

  return result;
}

uint64_t TransformInteractionSystem.__deallocating_deinit()
{
  outlined destroy of BodyTrackingComponent?(v0 + 16, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 56, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 96, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 176, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

double protocol witness for System.init(scene:) in conformance TransformInteractionSystem@<D0>(uint64_t *a1@<X8>)
{

  type metadata accessor for TransformInteractionSystem();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  *a1 = v2;
  return result;
}

uint64_t specialized closure #2 in static System.registerSystem()(uint64_t a1, uint64_t a2, char a3)
{
  v18 = MEMORY[0x1E69E6B70];
  v17[0] = a1;
  outlined init with copy of Any(v17, v15);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v17);
  v6 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v6)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v13);
  }

  type metadata accessor for TransformInteractionSystem();
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0u;
  v8 = v7;
  *(v7 + 208) = 0;
  if ((a3 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9SystemBox33_4D011D01EC1453F13E5F3D96598DE15ELLCyAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLCGMd, &_s17RealityFoundation9SystemBox33_4D011D01EC1453F13E5F3D96598DE15ELLCyAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLCGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
  }

  v13 = v7;
  swift_retain_n();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25_SystemUpdateRateProtocol_pMd, &_s17RealityFoundation25_SystemUpdateRateProtocol_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(v15, v17);
    v9 = v18;
    v10 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v10 + 16))(v15, v9, v10);
    v13 = *&v15[0];
    v14 = BYTE8(v15[0]);
    specialized _SystemUpdateRateProtocol.setUpdateRate(coreCustomSystem:coreScene:updateRate:)(a2, a1, &v13, v11);

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation25_SystemUpdateRateProtocol_pSgMd, &_s17RealityFoundation25_SystemUpdateRateProtocol_pSgMR);
    RECustomSystemSetScheduleTypeForScene();

    swift_unknownObjectRelease();
  }

  return v8;
}

uint64_t specialized closure #3 in static System.registerSystem()(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a4)
  {
    v19[0] = a1;
    type metadata accessor for TransformInteractionSystem();
    swift_unknownObjectRetain();
    swift_dynamicCast();
  }

  else
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9SystemBox33_4D011D01EC1453F13E5F3D96598DE15ELLCyAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLCGMd, &_s17RealityFoundation9SystemBox33_4D011D01EC1453F13E5F3D96598DE15ELLCyAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLCGMR);
    v8 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v20 = *(v8 + 16);
  }

  if (!a2)
  {
    result = RECustomSystemUpdateContextGetDeltaTime();
LABEL_22:
    __break(1u);
    return result;
  }

  v19[3] = MEMORY[0x1E69E6B70];
  v19[0] = a2;
  outlined init with copy of Any(v19, v18);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v19);
  v9 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v9)
  {
    v10 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v10 = Scene.init(coreScene:)(v17);
  }

  v11 = v10;
  result = RECustomSystemUpdateContextGetDeltaTime();
  if (!v11)
  {
    goto LABEL_22;
  }

  RECustomSystemUpdateContextGetSystemsArePausedInEditor();
  type metadata accessor for SceneUpdateContext.Stats();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  if (one-time initialization token for queryBasedUpdateRate != -1)
  {
    swift_once();
  }

  if (static SceneUpdateContext.queryBasedUpdateRate == 1 && (a5 & 1) == 0 && RESceneGetECSManagerNullable())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for TransformInteractionSystem();
    SystemRegistry.getId(of:)(v14);
    if ((v15 & 0x100000000) == 0)
    {
      REECSManagerGetCustomSystemAtID();
    }
  }

  if ((a4 & 1) == 0)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation9SystemBox33_4D011D01EC1453F13E5F3D96598DE15ELLCyAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLCGMd, &_s17RealityFoundation9SystemBox33_4D011D01EC1453F13E5F3D96598DE15ELLCyAA020TransformInteractionC033_3A341D50D446846BB88CBE2E5246020ELLCGMR);
    v16 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    *(v16 + 16) = v20;
  }
}

uint64_t specialized static ManipulationComponent.InputDevice.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = a1[48];
  v11 = *a2;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  if (v4 == 2)
  {
    result = 0;
    if (v11 != 2)
    {
      return result;
    }

LABEL_6:
    if (v5 == a2[1])
    {
      if (v10)
      {
        if (a2[48])
        {
          return 1;
        }
      }

      else if ((a2[48] & 1) == 0)
      {
        v23 = v2;
        v24 = v3;
        v20.i64[0] = v6;
        v20.i64[1] = v7;
        v21 = v8;
        v22 = v9;
        v17.i64[0] = v12;
        v17.i64[1] = v13;
        v18 = v14;
        v19 = v15;
        if (SPPose3DFloatEqualToPose(&v20, &v17))
        {
          return 1;
        }
      }

      return 0;
    }

    return result;
  }

  if (v11 == 2)
  {
    return 0;
  }

  result = 0;
  if (((v11 ^ v4) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.InputDevice.Chirality and conformance ManipulationComponent.InputDevice.Chirality()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Chirality and conformance ManipulationComponent.InputDevice.Chirality;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Chirality and conformance ManipulationComponent.InputDevice.Chirality)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.InputDevice.Chirality, &type metadata for ManipulationComponent.InputDevice.Chirality, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Chirality and conformance ManipulationComponent.InputDevice.Chirality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.InputDevice.Kind.Set, &type metadata for ManipulationComponent.InputDevice.Kind.Set, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.InputDevice.Kind.Set, &type metadata for ManipulationComponent.InputDevice.Kind.Set, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.InputDevice.Kind.Set, &type metadata for ManipulationComponent.InputDevice.Kind.Set, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.InputDevice.Kind.Set, &type metadata for ManipulationComponent.InputDevice.Kind.Set, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind.Set and conformance ManipulationComponent.InputDevice.Kind.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.InputDevice.Kind and conformance ManipulationComponent.InputDevice.Kind()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind and conformance ManipulationComponent.InputDevice.Kind;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind and conformance ManipulationComponent.InputDevice.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.InputDevice.Kind, &type metadata for ManipulationComponent.InputDevice.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice.Kind and conformance ManipulationComponent.InputDevice.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.InputDevice and conformance ManipulationComponent.InputDevice()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.InputDevice and conformance ManipulationComponent.InputDevice;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.InputDevice and conformance ManipulationComponent.InputDevice)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.InputDevice, &type metadata for ManipulationComponent.InputDevice, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.InputDevice and conformance ManipulationComponent.InputDevice);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.TranslationBehavior and conformance ManipulationComponent.Dynamics.TranslationBehavior()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.TranslationBehavior and conformance ManipulationComponent.Dynamics.TranslationBehavior;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.TranslationBehavior and conformance ManipulationComponent.Dynamics.TranslationBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.Dynamics.TranslationBehavior, &type metadata for ManipulationComponent.Dynamics.TranslationBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.TranslationBehavior and conformance ManipulationComponent.Dynamics.TranslationBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.RotationBehavior and conformance ManipulationComponent.Dynamics.RotationBehavior()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.RotationBehavior and conformance ManipulationComponent.Dynamics.RotationBehavior;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.RotationBehavior and conformance ManipulationComponent.Dynamics.RotationBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.Dynamics.RotationBehavior, &type metadata for ManipulationComponent.Dynamics.RotationBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.RotationBehavior and conformance ManipulationComponent.Dynamics.RotationBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.ScalingBehavior and conformance ManipulationComponent.Dynamics.ScalingBehavior()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.ScalingBehavior and conformance ManipulationComponent.Dynamics.ScalingBehavior;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.ScalingBehavior and conformance ManipulationComponent.Dynamics.ScalingBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.Dynamics.ScalingBehavior, &type metadata for ManipulationComponent.Dynamics.ScalingBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.ScalingBehavior and conformance ManipulationComponent.Dynamics.ScalingBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.Inertia and conformance ManipulationComponent.Dynamics.Inertia()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.Inertia and conformance ManipulationComponent.Dynamics.Inertia;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.Inertia and conformance ManipulationComponent.Dynamics.Inertia)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.Dynamics.Inertia, &type metadata for ManipulationComponent.Dynamics.Inertia, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.Inertia and conformance ManipulationComponent.Dynamics.Inertia);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManipulationComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ManipulationComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManipulationComponent.HitTarget(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ManipulationComponent.HitTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_16(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ManipulationComponent.InputDevice(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[49])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ManipulationComponent.InputDevice(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManipulationComponent.Dynamics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ManipulationComponent.Dynamics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.ReleaseBehavior.Storage and conformance ManipulationComponent.ReleaseBehavior.Storage()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.ReleaseBehavior.Storage and conformance ManipulationComponent.ReleaseBehavior.Storage;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.ReleaseBehavior.Storage and conformance ManipulationComponent.ReleaseBehavior.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.ReleaseBehavior.Storage, &unk_1F4103130, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.ReleaseBehavior.Storage and conformance ManipulationComponent.ReleaseBehavior.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.AudioConfiguration.Storage and conformance ManipulationComponent.AudioConfiguration.Storage()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.AudioConfiguration.Storage and conformance ManipulationComponent.AudioConfiguration.Storage;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.AudioConfiguration.Storage and conformance ManipulationComponent.AudioConfiguration.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.AudioConfiguration.Storage, &type metadata for ManipulationComponent.AudioConfiguration.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.AudioConfiguration.Storage and conformance ManipulationComponent.AudioConfiguration.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.TranslationBehavior.Storage and conformance ManipulationComponent.Dynamics.TranslationBehavior.Storage()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.TranslationBehavior.Storage and conformance ManipulationComponent.Dynamics.TranslationBehavior.Storage;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.TranslationBehavior.Storage and conformance ManipulationComponent.Dynamics.TranslationBehavior.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.Dynamics.TranslationBehavior.Storage, &type metadata for ManipulationComponent.Dynamics.TranslationBehavior.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.TranslationBehavior.Storage and conformance ManipulationComponent.Dynamics.TranslationBehavior.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.RotationBehavior.Storage and conformance ManipulationComponent.Dynamics.RotationBehavior.Storage()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.RotationBehavior.Storage and conformance ManipulationComponent.Dynamics.RotationBehavior.Storage;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.RotationBehavior.Storage and conformance ManipulationComponent.Dynamics.RotationBehavior.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.Dynamics.RotationBehavior.Storage, &type metadata for ManipulationComponent.Dynamics.RotationBehavior.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.RotationBehavior.Storage and conformance ManipulationComponent.Dynamics.RotationBehavior.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.ScalingBehavior.Storage and conformance ManipulationComponent.Dynamics.ScalingBehavior.Storage()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.ScalingBehavior.Storage and conformance ManipulationComponent.Dynamics.ScalingBehavior.Storage;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.ScalingBehavior.Storage and conformance ManipulationComponent.Dynamics.ScalingBehavior.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.Dynamics.ScalingBehavior.Storage, &type metadata for ManipulationComponent.Dynamics.ScalingBehavior.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.ScalingBehavior.Storage and conformance ManipulationComponent.Dynamics.ScalingBehavior.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManipulationComponent.Dynamics.Inertia.Storage and conformance ManipulationComponent.Dynamics.Inertia.Storage()
{
  result = lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.Inertia.Storage and conformance ManipulationComponent.Dynamics.Inertia.Storage;
  if (!lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.Inertia.Storage and conformance ManipulationComponent.Dynamics.Inertia.Storage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManipulationComponent.Dynamics.Inertia.Storage, &type metadata for ManipulationComponent.Dynamics.Inertia.Storage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ManipulationComponent.Dynamics.Inertia.Storage and conformance ManipulationComponent.Dynamics.Inertia.Storage);
  }

  return result;
}

uint64_t SPPose3DFloatEqualToPose(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vceqq_f32(*a1, *a2);
  v2.i32[3] = v2.i32[2];
  if ((vminvq_u32(v2) & 0x80000000) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  if ((vminvq_u32(vceqq_f32(v4, v5)) & 0x80000000) != 0)
  {
    return 1;
  }

  else
  {
    return vminvq_u32(vceqq_f32(v4, vnegq_f32(v5))) >> 31;
  }
}

double block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

RealityKit::__RKEntityProximityTrigger::ExitType_optional __swiftcall __RKEntityProximityTrigger.ExitType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t __RKEntityProximityTrigger.distance.setter(float a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t __RKEntityProximityTrigger.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 36);
  return result;
}

uint64_t __RKEntityProximityTrigger.type.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 36) = v2;
  return result;
}

uint64_t __RKEntityProximityTrigger.__allocating_init(targetEntity:distance:type:)(uint64_t a1, char *a2, float a3)
{
  v6 = swift_allocObject();
  v7 = *a2;
  *(v6 + 24) = 0;
  *(v6 + 37) = 0;
  swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 32) = a3;
  *(v6 + 36) = v7;
  *(v6 + 16) = 0;
  *(v6 + 18) = 0;
  return v6;
}

uint64_t __RKEntityProximityTrigger.init(targetEntity:distance:type:)(uint64_t a1, char *a2, float a3)
{
  v6 = *a2;
  *(v3 + 24) = 0;
  *(v3 + 37) = 0;
  swift_beginAccess();
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  *(v3 + 36) = v6;
  *(v3 + 16) = 0;
  *(v3 + 18) = 0;
  return v3;
}

uint64_t __RKEntityProximityTrigger.matches(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  *&v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40[-v15];
  type metadata accessor for __RKEntityProximityTrigger();
  v17 = swift_dynamicCastClass();
  if (!v17 || (v18 = v17, swift_beginAccess(), v19 = *(v1 + 36), swift_beginAccess(), v19 != *(v18 + 36)))
  {
LABEL_16:
    type metadata accessor for __RKEntityTriggerGroup();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = v24;
      swift_beginAccess();
      v26 = *(v25 + 24);
      if (v26 >> 62)
      {
LABEL_54:
        v27 = __CocoaSet.count.getter();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v27 != i; ++i)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1C68F41F0](i, v26);
          if (__OFADD__(i, 1))
          {
LABEL_28:
            __break(1u);
            break;
          }
        }

        else
        {
          if (i >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_54;
          }

          v29 = *(v26 + 8 * i + 32);

          if (__OFADD__(i, 1))
          {
            goto LABEL_28;
          }
        }

        v30 = __RKEntityProximityTrigger.matches(with:)(v29);

        if (v30)
        {

          return 1;
        }
      }
    }

    return 0;
  }

  swift_beginAccess();
  if (*(v2 + 24))
  {

    Entity.__interactionIdentifier.getter(v16);
  }

  else
  {
    (*(v45 + 56))(v16, 1, 1, v4);
  }

  swift_beginAccess();
  v20 = *(v18 + 24);
  v42 = a1;
  if (v20)
  {

    Entity.__interactionIdentifier.getter(v13);

    v21 = v45;
  }

  else
  {
    v21 = v45;
    (*(v45 + 56))(v13, 1, 1, v4);
  }

  v22 = *(v6 + 48);
  outlined init with copy of UUID?(v16, v8);
  outlined init with copy of UUID?(v13, &v8[v22]);
  v23 = *(v21 + 48);
  if (v23(v8, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v8, v44);
    if (v23(&v8[v22], 1, v4) != 1)
    {
      v33 = v45;
      v34 = v43;
      (*(v45 + 32))(v43, &v8[v22], v4);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v33 + 8);
      v35(v34, v4);
      outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v35(v44, v4);
      outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v41)
      {
        goto LABEL_33;
      }

      goto LABEL_15;
    }

    outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v45 + 8))(v44, v4);
LABEL_14:
    outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_15:

    goto LABEL_16;
  }

  outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v23(&v8[v22], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_33:
  swift_beginAccess();
  v36 = *(v2 + 32);
  if (*(v2 + 24))
  {

    v37 = Entity.rcSceneEntity.getter();

    if (v37)
    {
      _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v46);
      if (v47)
      {
        if (one-time initialization token for identity != -1)
        {
          swift_once();
        }

        v38 = static Transform.identity;
      }

      else
      {
        v38 = v46[0];
      }

      v45 = v38;

      v36 = v36 * fmaxf(fmaxf(*&v45, *(&v45 + 2)), *(&v45 + 1));
    }
  }

  swift_beginAccess();
  v39 = *(v18 + 32);

  if (!*(v2 + 36))
  {
    swift_beginAccess();
    *(v2 + 38) = 0;
    if (v39 <= v36)
    {
      v31 = 1;
      swift_beginAccess();
      if ((*(v2 + 37) & 1) == 0)
      {
        *(v2 + 37) = 1;
        return v31;
      }
    }

    if (v36 < v39)
    {
      swift_beginAccess();
      if (*(v2 + 37) == 1)
      {
        v31 = 0;
        *(v2 + 37) = 0;
        return v31;
      }
    }

    return 0;
  }

  if (v39 > v36)
  {
    v31 = 1;
    swift_beginAccess();
    *(v2 + 37) = 0;
    swift_beginAccess();
    if ((*(v2 + 38) & 1) == 0)
    {
      *(v2 + 38) = 1;
      return v31;
    }

    goto LABEL_16;
  }

  v31 = 1;
  swift_beginAccess();
  *(v2 + 38) = 0;
  swift_beginAccess();
  if ((*(v2 + 37) & 1) == 0)
  {
    *(v2 + 37) = 1;
    return v31;
  }

  return 0;
}

void __RKEntityProximityTrigger.copy(with:)(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v1 + 32);
  swift_beginAccess();
  v5 = *(v1 + 36);
  v6 = type metadata accessor for __RKEntityProximityTrigger();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 37) = 0;
  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 36) = v5;
  *(v7 + 16) = 0;
  *(v7 + 18) = 0;
  a1[3] = v6;
  *a1 = v7;
}

uint64_t __RKEntityProximityTrigger.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (!v5 || *(v5 + 16) != *(a1 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(v2 + 32);
  swift_beginAccess();
  v8 = *(v2 + 36);
  type metadata accessor for __RKEntityProximityTrigger();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 37) = 0;
  swift_beginAccess();
  *(v9 + 24) = a2;
  *(v9 + 32) = v7;
  *(v9 + 36) = v8;
  *(v9 + 16) = 0;
  *(v9 + 18) = 0;

  return v9;
}

uint64_t __RKEntityProximityTrigger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SpatialPhotoMetadataError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialPhotoMetadataError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t SpatialPhotoMetadataError.description.getter(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 14:
      result = 0xD000000000000018;
      break;
    case 3:
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 4:
    case 5:
    case 6:
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000023;
      break;
    case 10:
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD00000000000001FLL;
      break;
    case 16:
      result = 0xD00000000000002BLL;
      break;
    default:
      return result;
  }

  return result;
}

double protocol witness for static Component.__load(from:) in conformance DirectionalLightComponent.Shadow@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  *(a2 + 20) = v4;
  *(a2 + 24) = v5;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance DirectionalLightComponent.Shadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v7;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  *(a2 + 20) = v10;
  *(a2 + 24) = v11;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance DirectionalLightComponent.Shadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v6;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 12) = v8;
  *(a2 + 20) = v9;
  *(a2 + 24) = v10;
  return result;
}

double protocol witness for static Component.__load(from:offset:) in conformance DirectionalLightComponent.Shadow@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(a1 + 20);
  v10 = *(a1 + 24);
  result = *a1;
  *(v6 + 16) = *a1;
  *(v6 + 24) = v7;
  *(v6 + 28) = v8;
  *(v6 + 36) = v9;
  *(v6 + 40) = v10;
  return result;
}

uint64_t static Component.__load(from:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 32);
  a4[3] = a2;
  a4[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return v7(a1, a2, a3);
}

id protocol witness for static Component.__load(from:) in conformance DirectionalLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  return v2;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance DirectionalLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of DirectionalLightComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v9;
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance DirectionalLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of DirectionalLightComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance DirectionalLightComponent(uint64_t a1)
{
  outlined destroy of DirectionalLightComponent(a1);

  JUMPOUT(0x1C6902A30);
}

id protocol witness for static Component.__load(from:offset:) in conformance DirectionalLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 12);
  *a4 = *a1;
  *(a4 + 8) = v5;
  *(a4 + 12) = v6;
  return v4;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance EnvironmentBlendingComponent(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance EnvironmentBlendingComponent(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v6;
  return result;
}

id protocol witness for static Component.__load(from:) in conformance __AmbientLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  return v2;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance __AmbientLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of __AmbientLightComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v9;
  *a2 = v8;
  *(a2 + 8) = v9;
  return result;
}