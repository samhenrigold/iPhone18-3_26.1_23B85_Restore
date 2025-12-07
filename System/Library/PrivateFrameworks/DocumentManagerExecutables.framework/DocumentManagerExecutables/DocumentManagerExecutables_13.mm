uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = swift_unknownObjectRetain();
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for DOCItemRowView);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for DOCItemCollectionViewController);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  type metadata accessor for NSMutableAttributedString(0, a5, a6);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = &result[-v9];
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v17 = &result[-v9];
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = &result[v13];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;
    result = v10;
    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

id specialized DOCHierarchyController.presentationLocation(for:location:)(void *a1, void *a2)
{
  v4 = [objc_opt_self() dsEnumerationLocal];
  v5 = [v4 isEnabled];

  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = [a2 sourceIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
LABEL_14:
    v18 = [a2 sourceIdentifier];
    v19 = [a1 presentationNode];
    v20 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v18 node:v19];
    goto LABEL_15;
  }

  v14 = v13;
  v15 = a1;
  v16 = specialized static FILocalStorageNode.sharedInstance(for:)(0);
  if (!v16)
  {
LABEL_13:

    goto LABEL_14;
  }

  v17 = v16;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FIDSNode, 0x277D046D8);
  if (static NSObject.== infix(_:_:)())
  {

    v15 = v17;
    goto LABEL_13;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v22 = [v17 storageNode];
  v23 = static NSObject.== infix(_:_:)();

  if (v23)
  {
    v24 = v17;
  }

  else
  {
    v25 = [objc_opt_self() sharedInstance];
    if (([v25 isPopulated] & 1) == 0)
    {
      [v25 synchronizeWithOptions:0 async:0];
    }

    v26 = v15;
    v24 = [v14 presentationNode];
  }

  v27 = v24;
  v18 = [a2 sourceIdentifier];
  v19 = [v27 presentationNode];

  v20 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v18 node:v19];
LABEL_15:

  return v20;
}

BOOL specialized DOCHierarchyController.locationsAreInsideTrash(_:)(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_20:
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v15 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C1FC540](v3, a1);
    }

    else
    {
      if (v3 >= *(v2 + 16))
      {
        goto LABEL_19;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = [v5 sourceIdentifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
    {

      return v15 != v4;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v4 + 1;
  }

  while ((v13 & 1) == 0);
  return v15 != v4;
}

void specialized closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v243 = a4;
  v241 = type metadata accessor for DispatchWorkItemFlags();
  v240 = *(v241 - 8);
  MEMORY[0x28223BE20](v241, v12);
  v238 = &v226 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for DispatchQoS();
  v237 = *(v239 - 8);
  MEMORY[0x28223BE20](v239, v14);
  v236 = &v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v226 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v242 = &v226 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v226 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v235 = &v226 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a6;
  *(v30 + 24) = a7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_14;
  }

  v32 = Strong;
  v244 = a6;
  swift_beginAccess();
  v33 = *(a2 + 16);
  if (!v33 || (type metadata accessor for DOCFileProviderSource(), (v34 = swift_dynamicCastClass()) == 0))
  {
    swift_retain_n();
    goto LABEL_8;
  }

  v35 = v34;
  v232 = a5;
  v36 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
  swift_beginAccess();
  v231 = v35;
  v230 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain;
  v37 = *&v35[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  v233 = v30;
  v234 = v33;
  if (v37)
  {
    v38 = a7;
    v39 = *&v32[v36];
    v40 = v39;
    v41 = v37;
    v42 = v33;
    v43 = v32;
    v44 = v41;
    v45 = v42;
    swift_retain_n();
    v46 = v45;
    v47 = v39;
    a7 = v38;
    v48 = DOCConfiguration.allowsSelecting(_:pickerContext:)(v44, v47);

    v32 = v43;
    if ((v48 & 1) == 0)
    {

LABEL_8:
      v49 = v244;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.UI);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_2493AC000, v51, v52, "About to resolve the empty location.", v53, 2u);
        MEMORY[0x24C1FE850](v53, -1, -1);
      }

      v54 = [objc_opt_self() defaultLocation];

      specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v54, 0, v32, v49, a7);

      return;
    }
  }

  else
  {
    v55 = v33;
    swift_retain_n();
    v56 = v55;
  }

  swift_beginAccess();
  if (*(a3 + 16) == 1)
  {
    v57 = v234;

    v58 = swift_allocObject();
    v59 = v243;
    *(v58 + 16) = v243;
    swift_getObjectType();
    v60 = DOCNode.isFINode.getter();
    v229 = v58;
    v228 = v60;
    if (v60)
    {
      objc_opt_self();
      v61 = swift_dynamicCastObjCClassUnconditional();
      v62 = v59;
      *(v58 + 16) = specialized DOCHierarchyController.presentationLocation(for:location:)(v61, v62);

      v63 = v231;
      v64 = *&v231[v230];
      if (v64 && ([v64 isUsingFPFS] & 1) != 0)
      {
        v65 = v61;
        if (one-time initialization token for Enumeration != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        __swift_project_value_buffer(v66, static Logger.Enumeration);
        swift_unknownObjectRetain();
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.info.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v67, v68))
        {
          v227 = v32;
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          aBlock = v70;
          *v69 = 136315394;
          *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
          *(v69 + 12) = 2080;
          v71 = [v65 fileURL];
          if (v71)
          {
            v72 = v71;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v73 = 0;
          }

          else
          {
            v73 = 1;
          }

          v120 = type metadata accessor for URL();
          v121 = *(v120 - 8);
          (*(v121 + 56))(v26, v73, 1, v120);
          v122 = v26;
          v123 = v235;
          outlined init with take of URL?(v122, v235);
          if ((*(v121 + 48))(v123, 1, v120) == 1)
          {
            v124 = 4271950;
            outlined destroy of CharacterSet?(v123, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            v125 = 0xE300000000000000;
          }

          else
          {
            v124 = URL.absoluteString.getter();
            v126 = v123;
            v125 = v127;
            (*(v121 + 8))(v126, v120);
          }

          v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, &aBlock);

          *(v69 + 14) = v128;
          _os_log_impl(&dword_2493AC000, v67, v68, "%s: FPFS Location has an FINode with URL: %s.", v69, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v70, -1, -1);
          MEMORY[0x24C1FE850](v69, -1, -1);

          v32 = v227;
LABEL_52:
          v63 = v231;
          goto LABEL_53;
        }
      }

      else
      {
        if (one-time initialization token for Enumeration != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        __swift_project_value_buffer(v99, static Logger.Enumeration);
        swift_unknownObjectRetain();
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.info.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v100, v101))
        {
          v227 = v32;
          v102 = swift_slowAlloc();
          v243 = swift_slowAlloc();
          aBlock = v243;
          *v102 = 136315650;
          *(v102 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
          *(v102 + 12) = 2080;
          v103 = [v61 fileURL];
          v104 = v61;
          if (v103)
          {
            v105 = v103;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v106 = 0;
          }

          else
          {
            v106 = 1;
          }

          v107 = v242;
          v108 = type metadata accessor for URL();
          v109 = *(v108 - 8);
          (*(v109 + 56))(v19, v106, 1, v108);
          outlined init with take of URL?(v19, v107);
          if ((*(v109 + 48))(v107, 1, v108) == 1)
          {
            v110 = 4271950;
            outlined destroy of CharacterSet?(v107, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            v111 = 0xE300000000000000;
          }

          else
          {
            v110 = URL.absoluteString.getter();
            v111 = v112;
            (*(v109 + 8))(v107, v108);
          }

          v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v111, &aBlock);

          *(v102 + 14) = v113;
          *(v102 + 22) = 2080;
          v114 = [v104 fpItem];
          v252[0] = v114;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd, &_sSo6FPItemCSgMR);
          v115 = Optional.debugDescription.getter();
          v117 = v116;

          v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v117, &aBlock);

          *(v102 + 24) = v118;
          _os_log_impl(&dword_2493AC000, v100, v101, "%s: FPv2 Location has an FINode with URL: %s and FPItem: %s.", v102, 0x20u);
          v119 = v243;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v119, -1, -1);
          MEMORY[0x24C1FE850](v102, -1, -1);

          v32 = v227;
          v57 = v234;
          goto LABEL_52;
        }

        v57 = v234;
      }
    }

    else
    {
      v82 = v59;
      v83 = one-time initialization token for Enumeration;
      v84 = v82;
      if (v83 != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      __swift_project_value_buffer(v85, static Logger.Enumeration);
      v86 = v232;
      swift_unknownObjectRetain();
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = v32;
        v91 = swift_slowAlloc();
        aBlock = v91;
        *v89 = 136315394;
        *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
        *(v89 + 12) = 2080;
        v92 = [v86 displayName];
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = a7;
        v96 = v95;

        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v96, &aBlock);
        a7 = v94;

        *(v89 + 14) = v97;
        _os_log_impl(&dword_2493AC000, v87, v88, "%s: Location has an FPItem : %s.", v89, 0x16u);
        swift_arrayDestroy();
        v98 = v91;
        v32 = v90;
        MEMORY[0x24C1FE850](v98, -1, -1);
        MEMORY[0x24C1FE850](v89, -1, -1);
      }

      v57 = v234;
      v63 = v231;
    }

LABEL_53:
    v129 = *&v63[v230];
    if (v129 && (v130 = v129, v131 = FPProviderDomain.shouldUseDSEnumeration.getter(), v130, (v131 & 1) != 0))
    {
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v132 = type metadata accessor for Logger();
      __swift_project_value_buffer(v132, static Logger.Enumeration);
      v133 = v57;
      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v134, v135))
      {
        v136 = v32;
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        aBlock = v138;
        *v137 = 136315394;
        *(v137 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
        *(v137 + 12) = 2080;
        v139 = *&v63[v230];
        if (v139)
        {
          v140 = [v139 identifier];
          v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v143 = v142;
        }

        else
        {
          v141 = 4271950;
          v143 = 0xE300000000000000;
        }

        v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v143, &aBlock);

        *(v137 + 14) = v157;
        _os_log_impl(&dword_2493AC000, v134, v135, "%s: Domain supports DS enumeration: %s.", v137, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v138, -1, -1);
        MEMORY[0x24C1FE850](v137, -1, -1);

        v155 = 0;
LABEL_71:
        v32 = v136;
        v63 = v231;
        goto LABEL_72;
      }

      v155 = 0;
    }

    else
    {
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v144 = type metadata accessor for Logger();
      __swift_project_value_buffer(v144, static Logger.Enumeration);
      v145 = v57;
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v146, v147))
      {
        v136 = v32;
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        aBlock = v149;
        *v148 = 136315394;
        *(v148 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
        *(v148 + 12) = 2080;
        v150 = *&v63[v230];
        if (v150)
        {
          v151 = [v150 identifier];
          v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v154 = v153;
        }

        else
        {
          v152 = 4271950;
          v154 = 0xE300000000000000;
        }

        v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v154, &aBlock);

        *(v148 + 14) = v156;
        _os_log_impl(&dword_2493AC000, v146, v147, "%s: Domain does NOT support DS enumeration: %s.", v148, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v149, -1, -1);
        MEMORY[0x24C1FE850](v148, -1, -1);

        v155 = 1;
        goto LABEL_71;
      }

      v155 = 1;
    }

LABEL_72:
    objc_opt_self();
    v158 = swift_dynamicCastObjCClass();
    v159 = v234;
    if (v158)
    {
      v160 = [v158 isTrashed];
      if ((v228 | v155) & 1) != 0 || (v160)
      {
        goto LABEL_78;
      }
    }

    else if ((v228 | v155))
    {
LABEL_78:
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v163 = type metadata accessor for Logger();
      __swift_project_value_buffer(v163, static Logger.Enumeration);
      v164 = Logger.logObject.getter();
      v165 = static os_log_type_t.info.getter();
      v166 = os_log_type_enabled(v164, v165);
      v167 = v229;
      if (v166)
      {
        v168 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        aBlock = v169;
        *v168 = 136315138;
        *(v168 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
        _os_log_impl(&dword_2493AC000, v164, v165, "%s: NOT trying to resolve to Node, (either location already has a Node, or Domain needs FPItemCollection, see logs above)", v168, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v169);
        MEMORY[0x24C1FE850](v169, -1, -1);
        MEMORY[0x24C1FE850](v168, -1, -1);
      }

      v170 = *(v167 + 16);
      v244();

      goto LABEL_83;
    }

    swift_beginAccess();

    v162 = specialized DOCHierarchyController.locationsAreInsideTrash(_:)(v161);

    if (v162)
    {
      goto LABEL_78;
    }

    v171 = v32;

    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v172 = type metadata accessor for Logger();
    __swift_project_value_buffer(v172, static Logger.Enumeration);
    v173 = v232;
    swift_unknownObjectRetain();
    v174 = Logger.logObject.getter();
    v175 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    v176 = os_log_type_enabled(v174, v175);
    v226 = a7;
    if (v176)
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      aBlock = v178;
      *v177 = 136315394;
      *(v177 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
      *(v177 + 12) = 2080;
      v179 = [v173 displayName];
      v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v182 = v181;

      v183 = v180;
      v63 = v231;
      v184 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v182, &aBlock);

      *(v177 + 14) = v184;
      v173 = v232;
      _os_log_impl(&dword_2493AC000, v174, v175, "%s: Location needs to be resolved to FINode : Node (%s.", v177, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v178, -1, -1);
      MEMORY[0x24C1FE850](v177, -1, -1);
    }

    objc_opt_self();
    v185 = swift_dynamicCastObjCClassUnconditional();
    if (![v185 isRootItem])
    {
      v193 = *&v63[v230];
      v194 = v229;
      if (v193)
      {
        v195 = v193;
        if (([v195 isUsingFPFS] & 1) == 0 && (FPProviderDomain.shouldUseDSEnumeration.getter() & 1) != 0 && (FPProviderDomain.isPOSIXCompatible.getter() & 1) == 0)
        {
          v203 = v232;
          swift_unknownObjectRetain();
          v204 = v195;
          v205 = Logger.logObject.getter();
          v206 = static os_log_type_t.info.getter();

          swift_unknownObjectRelease();
          if (os_log_type_enabled(v205, v206))
          {
            v207 = swift_slowAlloc();
            v208 = swift_slowAlloc();
            v244 = swift_slowAlloc();
            aBlock = v244;
            *v207 = 136315394;
            v209 = [v203 displayName];
            v210 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            LODWORD(v243) = v206;
            v212 = v211;

            v213 = v210;
            v63 = v231;
            v214 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v213, v212, &aBlock);

            *(v207 + 4) = v214;
            *(v207 + 12) = 2112;
            *(v207 + 14) = v204;
            *v208 = v193;
            v215 = v204;
            _os_log_impl(&dword_2493AC000, v205, v243, "Building FINode from FPv2 node: (%s) with domain (%@)", v207, 0x16u);
            outlined destroy of CharacterSet?(v208, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v216 = v208;
            v194 = v229;
            MEMORY[0x24C1FE850](v216, -1, -1);
            v217 = v244;
            __swift_destroy_boxed_opaque_existential_0(v244);
            MEMORY[0x24C1FE850](v217, -1, -1);
            MEMORY[0x24C1FE850](v207, -1, -1);

            v32 = v171;
            v218 = v232;
          }

          else
          {

            v218 = v203;
          }

          v219 = v204;
          v220 = objc_opt_self();
          v221 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v222 = swift_allocObject();
          v222[2] = v221;
          v222[3] = v194;
          v222[4] = v63;
          v222[5] = v218;
          v223 = v233;
          v222[6] = closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:)partial apply;
          v222[7] = v223;
          v250 = partial apply for closure #2 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
          v251 = v222;
          aBlock = MEMORY[0x277D85DD0];
          v247 = 1107296256;
          v248 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
          v249 = &block_descriptor_663;
          v224 = _Block_copy(&aBlock);
          v225 = v234;
          swift_unknownObjectRetain();

          v159 = v219;

          [v220 fiNodeFromItem:v185 inFPv2Domain:v159 completion:v224];
          _Block_release(v224);

LABEL_83:

          return;
        }
      }

      v196 = *&v32[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_itemManager];
      v197 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v198 = swift_allocObject();
      v198[2] = v197;
      v198[3] = v194;
      v198[4] = v232;
      v198[5] = v63;
      v199 = v233;
      v198[6] = closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:)partial apply;
      v198[7] = v199;
      v250 = partial apply for closure #3 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
      v251 = v198;
      aBlock = MEMORY[0x277D85DD0];
      v247 = 1107296256;
      v248 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v249 = &block_descriptor_656;
      v200 = _Block_copy(&aBlock);
      v201 = v234;
      swift_unknownObjectRetain();

      v202 = v196;

      [v202 fetchURLForItem:v185 completionHandler:v200];

      _Block_release(v200);

      return;
    }

    v227 = v32;
    v244 = *&v32[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_nodeResolvingQueue];
    v186 = swift_allocObject();
    v187 = v229;
    v186[2] = v63;
    v186[3] = v187;
    v186[4] = v173;
    v186[5] = closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:)partial apply;
    v186[6] = v233;
    v250 = partial apply for closure #1 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
    v251 = v186;
    aBlock = MEMORY[0x277D85DD0];
    v247 = 1107296256;
    v248 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v249 = &block_descriptor_669;
    v188 = _Block_copy(&aBlock);
    v189 = v234;
    swift_unknownObjectRetain();

    v190 = v236;
    static DispatchQoS.unspecified.getter();
    v245 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v191 = v238;
    v192 = v241;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v190, v191, v188);
    _Block_release(v188);

    (*(v240 + 8))(v191, v192);
    (*(v237 + 8))(v190, v239);

LABEL_14:

    return;
  }

  v74 = v231;
  v75 = [v231 identifier];
  v76 = [v74 displayName];
  if (!v76)
  {
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = MEMORY[0x24C1FAD20](v77);
  }

  v78 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v75 title:v76];

  [v78 setIsFPV2_];
  v79 = [v74 promptText];
  if (!v79)
  {
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = MEMORY[0x24C1FAD20](v80);
  }

  [v78 setPromptText_];
  v81 = v234;

  (v244)(v78, v74);
}

uint64_t specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(void *a1, int a2, char *a3, void (*a4)(void), uint64_t a5)
{
  v159 = a3;
  LODWORD(v152) = a2;
  v158 = type metadata accessor for DispatchWorkItemFlags();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v8);
  v155 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for DispatchQoS();
  v154 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v10);
  v153 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v151 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v160 = v16;
  swift_retain_n();
  v17 = [a1 sourceIdentifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {

    goto LABEL_8;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {

LABEL_8:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.UI);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2493AC000, v25, v26, "We don't have to prepare the parent hierarchy for Empty Location", v27, 2u);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    (a4)(a1, 0);
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {
    goto LABEL_17;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
LABEL_19:

    goto LABEL_20;
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;
  if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v47 == v48)
  {
    goto LABEL_17;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v49)
  {
    goto LABEL_19;
  }

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;
  if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
  {
    goto LABEL_17;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {
    goto LABEL_19;
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
  {
LABEL_17:

LABEL_20:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.UI);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2493AC000, v35, v36, "We don't have to prepare the parent hierarchy for Tags/Trash/RecentsOnly/SharedItems", v37, 2u);
      MEMORY[0x24C1FE850](v37, -1, -1);
    }

    v38 = swift_allocObject();
    v39 = v160;
    v38[2] = partial apply for closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
    v38[3] = v39;
    v38[4] = a1;
    v40 = *&v159[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
    v41 = swift_allocObject();
    v41[2] = partial apply for closure #1 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
    v41[3] = v38;
    v41[4] = a1;
    v166 = closure #1 in DOCHierarchyController.getSource(for:completion:)partial apply;
    v167 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v163 = 1107296256;
    v42 = &block_descriptor_639;
LABEL_25:
    v164 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
    v165 = v42;
    v43 = _Block_copy(&aBlock);
    v44 = a1;

    [v40 retrieveAllSourcesCompletionBlock_];
    _Block_release(v43);

LABEL_26:
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v59)
  {
    goto LABEL_19;
  }

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;
  if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
  {
LABEL_68:

    goto LABEL_69;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v64)
  {
LABEL_69:

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;
  if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
  {

LABEL_44:
    type metadata accessor for DOCHierarchyController(0);
    v70 = v159;
    v71 = *&v159[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration];
    v72 = *&v159[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
    v73 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
    swift_beginAccess();
    v74 = *&v70[v73];
    v75 = swift_allocObject();
    v75[2] = v70;
    v75[3] = partial apply for closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
    v75[4] = v160;
    v76 = v74;
    v77 = v70;

    static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v71, v72, v74, partial apply for closure #2 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:), v75);
LABEL_45:
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v69)
  {

    goto LABEL_44;
  }

  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;
  if (v78 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v80 == v81)
  {

LABEL_50:
    type metadata accessor for DOCHierarchyController(0);
    v83 = v159;
    v84 = *&v159[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration];
    v85 = *&v159[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
    v86 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
    swift_beginAccess();
    v87 = *&v83[v86];
    v88 = swift_allocObject();
    v88[2] = v83;
    v88[3] = partial apply for closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
    v88[4] = v160;
    v76 = v87;

    v89 = v83;
    static DOCHierarchyController.getDefaultLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v84, v85, v87, partial apply for closure #3 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:), v88);
    goto LABEL_45;
  }

  v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v82)
  {
    goto LABEL_50;
  }

  v150 = [a1 node];
  if (!v150)
  {
    if (v152)
    {
      v124 = [a1 sourceIdentifier];
      v125 = swift_allocObject();
      v126 = v159;
      v125[2] = v159;
      v125[3] = partial apply for closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
      v125[4] = v160;
      v127 = *&v126[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
      v128 = *&v126[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration];
      v129 = swift_allocObject();
      v129[2] = partial apply for closure #8 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
      v129[3] = v125;
      v129[4] = v124;
      v129[5] = v126;
      v166 = partial apply for closure #1 in DOCHierarchyController.resolvedLocation(for:completion:);
      v167 = v129;
      aBlock = MEMORY[0x277D85DD0];
      v163 = 1107296256;
      v164 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
      v165 = &block_descriptor_585;
      v130 = _Block_copy(&aBlock);
      v131 = v126;

      v132 = v131;

      v133 = v124;

      [v127 retrieveSourcesForConfiguration:v128 usingBlock:v130];
      _Block_release(v130);
    }

    v134 = swift_allocObject();
    v135 = v160;
    v134[2] = partial apply for closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
    v134[3] = v135;
    v134[4] = a1;
    v40 = *&v159[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
    v136 = swift_allocObject();
    v136[2] = partial apply for closure #9 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
    v136[3] = v134;
    v136[4] = a1;
    v166 = closure #1 in DOCHierarchyController.getSource(for:completion:)partial apply;
    v167 = v136;
    aBlock = MEMORY[0x277D85DD0];
    v163 = 1107296256;
    v42 = &block_descriptor_576;
    goto LABEL_25;
  }

  v90 = swift_allocObject();
  v152 = v90;
  *(v90 + 16) = 0;
  v91 = (v90 + 16);
  v92 = swift_allocObject();
  v146 = v92;
  *(v92 + 16) = 0;
  v147 = (v92 + 16);
  v149 = swift_allocObject();
  *(v149 + 16) = 0;
  v93 = swift_allocObject();
  v148 = v93;
  *(v93 + 16) = 0;
  v143 = (v93 + 16);
  v94 = dispatch_group_create();
  swift_getObjectType();
  if (DOCNode.isFPItem.getter() && (v95 = [v150 fpfs_fpItem]) != 0)
  {
    v96 = v95;
    dispatch_group_enter(v94);
    v97 = swift_allocObject();
    v98 = v146;
    v97[2] = v152;
    v97[3] = v98;
    v145 = v97;
    v97[4] = v94;

    v144 = v94;
    if (([v96 isRootItem] & 1) != 0 || objc_msgSend(v96, sel_isCollaborationInvitation))
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      *v15 = static OS_dispatch_queue.main.getter();
      v99 = v151;
      (v151[13].isa)(v15, *MEMORY[0x277D85200], v12);
      v100 = _dispatchPreconditionTest(_:)();
      (v99[1].isa)(v15, v12);
      if (v100)
      {
        swift_beginAccess();
        *v91 = 1;
        v101 = v147;
        swift_beginAccess();
        *v101 = 1;
        dispatch_group_leave(v144);

        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_68;
    }

    v151 = *&v159[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_itemManager];
    v137 = swift_allocObject();
    v138 = v145;
    *(v137 + 16) = partial apply for closure #4 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
    *(v137 + 24) = v138;

    v139 = [v96 itemID];
    v140 = swift_allocObject();
    v140[2] = v96;
    v140[3] = partial apply for closure #1 in DOCHierarchyController.checkFPItemAvailability(_:completion:);
    v140[4] = v137;
    v166 = partial apply for closure #1 in FPItemManager.doc_refetchItem(_:completion:);
    v167 = v140;
    aBlock = MEMORY[0x277D85DD0];
    v163 = 1107296256;
    v164 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    v165 = &block_descriptor_623;
    v141 = _Block_copy(&aBlock);
    v142 = v96;

    [v151 fetchItemForItemID:v139 completionHandler:v141];

    _Block_release(v141);
  }

  else
  {
    *v91 = 1;
    *v147 = 1;
  }

LABEL_59:
  dispatch_group_enter(v94);
  v102 = swift_allocObject();
  v103 = v149;
  v104 = v148;
  v102[2] = v149;
  v102[3] = v104;
  v102[4] = v94;
  v145 = *&v159[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
  v105 = swift_allocObject();
  v105[2] = partial apply for closure #5 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
  v105[3] = v102;
  v105[4] = a1;
  v166 = closure #1 in DOCHierarchyController.getSource(for:completion:)partial apply;
  v167 = v105;
  aBlock = MEMORY[0x277D85DD0];
  v163 = 1107296256;
  v144 = &v164;
  v164 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
  v165 = &block_descriptor_601;
  v106 = _Block_copy(&aBlock);
  v107 = a1;
  v151 = v94;

  [v145 retrieveAllSourcesCompletionBlock_];
  _Block_release(v106);

  v108 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v109 = swift_allocObject();
  v109[2] = v108;
  v109[3] = v103;
  v109[4] = v152;
  v109[5] = v107;
  v109[6] = v150;
  v109[7] = partial apply for closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
  v109[8] = v160;
  v110 = v147;
  swift_beginAccess();
  if (*v110 != 1 || (v111 = v143, swift_beginAccess(), *v111 != 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v116 = v107;

    swift_unknownObjectRetain();
    v117 = static OS_dispatch_queue.main.getter();
    v118 = swift_allocObject();
    *(v118 + 16) = partial apply for closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
    *(v118 + 24) = v109;
    v166 = thunk for @callee_guaranteed () -> ()partial apply;
    v167 = v118;
    aBlock = MEMORY[0x277D85DD0];
    v163 = 1107296256;
    v164 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v165 = &block_descriptor_611;
    v119 = _Block_copy(&aBlock);

    v120 = v153;
    static DispatchQoS.unspecified.getter();
    v161 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v121 = v155;
    v122 = v158;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v123 = v151;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v119);

    swift_unknownObjectRelease();

    (*(v157 + 8))(v121, v122);
    (*(v154 + 8))(v120, v156);

    goto LABEL_26;
  }

  v112 = v107;

  v113 = v152;

  v114 = v149;

  v115 = v150;
  swift_unknownObjectRetain();
  specialized closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v108, v114, v113, v112, v115, a4, a5);

  swift_unknownObjectRelease();
}

uint64_t specialized DOCHierarchyController.performWhilePreventingLoading(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DOCAssertion();
  v3 = swift_allocObject();
  *(v3 + 32) = 1;
  *(v3 + 40) = MEMORY[0x277D84F90];
  *(v3 + 16) = 0xD00000000000001DLL;
  *(v3 + 24) = 0x8000000249BCC630;
  v4 = DOCHierarchyController.loadingDisabledAssertions.getter();
  (*(*v4 + 136))(v3, 0, 1);

  (*(a2 + 16))(a2);
  swift_beginAccess();
  v5 = *(v3 + 32);
  *(v3 + 32) = 0;
  if (v5 == 1)
  {
    DOCAssertion.notifyObservers()();
  }
}

id specialized DOCHierarchyController._forcedRestoreLocationForPPT()()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = MEMORY[0x24C1FAD20](v0, v2);

  v5 = [v3 initWithSuiteName_];

  if (!v5)
  {
    v16 = 0u;
    v17 = 0u;
LABEL_9:
    outlined destroy of CharacterSet?(&v16, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  if ([v5 objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    goto LABEL_9;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v6 = v14;
    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
LABEL_11:
  v7 = [objc_allocWithZone(MEMORY[0x277D061E8]) init];
  v16 = xmmword_249BA1BA0;
  v8 = specialized static DOCTabSwitcherStyle.preferredStyle(for:traitCollection:splitState:)(v7, 0, &v16);

  if (!v6)
  {
LABEL_14:

    return 0;
  }

  if (v8)
  {

    goto LABEL_14;
  }

  v10 = [v6 BOOLValue];
  v11 = objc_opt_self();
  if (v10)
  {
    v12 = [v11 iCloudDriveLocation];
  }

  else
  {
    v12 = [v11 recentDocumentsLocation];
  }

  v13 = v12;

  return v13;
}

BOOL specialized DOCHierarchyController._checkIfIsLegacyLocation(_:expectedLocationTab:)(void *a1, unint64_t a2)
{
  v3 = [a1 sourceIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String.hasPrefix(_:)(v4);

  if (v5 && a2 >= 2)
  {
    v6 = [objc_opt_self() iCloudDriveLocation];
  }

  return v5;
}

id specialized DOCHierarchyController.restorableLocation(forProposedLocation:expectedLocationTab:)(void *a1, id a2)
{
  v4 = specialized DOCHierarchyController._forcedRestoreLocationForPPT()();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = specialized DOCHierarchyController._checkIfIsLegacyLocation(_:expectedLocationTab:)(a1, a2);
    v6 = v8;
    if (v7)
    {
      if (!v8)
      {
        return v6;
      }
    }

    else
    {

      v6 = a1;
    }
  }

  v9 = [v6 fileProviderItem];
  if (v9 && (v10 = v9, v11 = [objc_opt_self() defaultPermission], v12 = objc_msgSend(v11, sel_canHostAppPerformAction_targetNode_, 0, v10), v11, v10, (v12 & 1) == 0) || objc_msgSend(v6, sel_effectiveTabSwitcherTab) != a2 || !v5 && (objc_msgSend(v6, sel_canBeRestored) & 1) == 0)
  {

    return 0;
  }

  return v6;
}

void specialized DOCHierarchyController.authenticateViewController(node:viewController:)(uint64_t a1, void *a2)
{
  if (![objc_opt_self() protectedAppsEnabled])
  {
    return;
  }

  if (!a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.UI);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BCDA30, &v18);
      _os_log_impl(&dword_2493AC000, oslog, v8, "[PROTECTED APPS] %s authenticateLocationWithNoUI nil node", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1FE850](v10, -1, -1);
      MEMORY[0x24C1FE850](v9, -1, -1);
LABEL_16:

      return;
    }

LABEL_19:
    v6 = oslog;
    goto LABEL_20;
  }

  type metadata accessor for DOCBrowserContainerController();
  oslog = swift_dynamicCastClass();
  if (!oslog || (v4 = *((*MEMORY[0x277D85000] & oslog->isa) + 0xE8), v5 = a2, (v16 = v4()) == 0))
  {
LABEL_12:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BCDA30, &v18);
      _os_log_impl(&dword_2493AC000, v12, v13, "[PROTECTED APPS] %s authenticateLocationWithNoUI nil view controller", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1FE850](v15, -1, -1);
      MEMORY[0x24C1FE850](v14, -1, -1);

      goto LABEL_16;
    }

    goto LABEL_19;
  }

  type metadata accessor for DOCItemCollectionViewController(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_12;
  }

  DOCItemCollectionViewController.beginProtectedAppAuthentication()();

  v6 = v16;
LABEL_20:
}

uint64_t specialized closure #3 in DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136315650;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x8000000249BCDA70, &v14);
    *(v5 + 12) = 2080;
    [*(v1 + 16) node];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd, &_sSo7DOCNode_pSgMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v5 + 14) = v10;
    *(v5 + 22) = 2112;
    v11 = *(v1 + 24);
    *(v5 + 24) = v11;
    *v6 = v11;
    v12 = v11;
    _os_log_impl(&dword_2493AC000, v3, v4, "[PROTECTED APPS] %s start authentication for node: %s viewController: %@", v5, 0x20u);
    outlined destroy of CharacterSet?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  specialized DOCHierarchyController.authenticateViewController(node:viewController:)([*(v1 + 16) node], *(v1 + 24));
  return swift_unknownObjectRelease();
}

double specialized DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)(uint64_t a1, unint64_t a2, char a3, char *a4, void (*a5)(void), uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v14 = *&a4[v13];
  if (v14 >> 62)
  {
    if (__CocoaSet.count.getter() < a1)
    {
LABEL_3:

      if (DOCIsInternalBuild())
      {
LABEL_8:
        a5();

        return result;
      }

      if (one-time initialization token for UI == -1)
      {
LABEL_5:
        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.UI);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          aBlock[0] = v19;
          *v18 = 136315138;
          *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BCD6A0, aBlock);
          _os_log_impl(&dword_2493AC000, v16, v17, "assertion failure: %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x24C1FE850](v19, -1, -1);
          MEMORY[0x24C1FE850](v18, -1, -1);
        }

        goto LABEL_8;
      }

LABEL_32:
      swift_once();
      goto LABEL_5;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
  {
    goto LABEL_3;
  }

  if (a2 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_27:

    v36 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_27;
  }

LABEL_12:
  aBlock[0] = MEMORY[0x277D84F90];

  specialized ContiguousArray.reserveCapacity(_:)();
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v44 = a3;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v22 = 0;
    do
    {
      v23 = v22 + 1;
      v24 = *(MEMORY[0x24C1FC540]() + 16);
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v22 = v23;
    }

    while (v21 != v23);
  }

  else
  {
    v25 = (a2 + 32);
    v26 = v21;
    do
    {
      v27 = *v25++;
      v28 = *(v27 + 16);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v26;
    }

    while (v26);
  }

  v29 = aBlock[0];
  aBlock[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((a2 & 0xC000000000000001) != 0)
  {
    v30 = 0;
    do
    {
      v31 = v30 + 1;
      v32 = *(MEMORY[0x24C1FC540]() + 24);
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v30 = v31;
    }

    while (v21 != v31);
  }

  else
  {
    v33 = (a2 + 32);
    do
    {
      v34 = *v33++;
      v35 = *(v34 + 24);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v21;
    }

    while (v21);
  }

  v36 = aBlock[0];
  a3 = v44;
LABEL_28:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v40 = swift_allocObject();
    *(v40 + 16) = a4;
    *(v40 + 24) = a1;
    *(v40 + 32) = v29;
    *(v40 + 40) = v36;
    v41 = a3 & 1;
    *(v40 + 48) = v41;
    *(v40 + 56) = a2;
    *(v40 + 64) = partial apply for thunk for @callee_guaranteed () -> ();
    *(v40 + 72) = v12;
    aBlock[4] = closure #3 in DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)partial apply;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_494;
    v42 = _Block_copy(aBlock);
    v43 = a4;

    [v38 hierarchyController:v43 willReplaceTrailingLocations:a1 with:isa animated:v41 completion:v42];
    swift_unknownObjectRelease();
    _Block_release(v42);
  }

  else
  {
  }

  return result;
}

{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v14 = *&a4[v13];
  if (v14 >> 62)
  {
    if (__CocoaSet.count.getter() < a1)
    {
LABEL_3:

      if (DOCIsInternalBuild())
      {
LABEL_8:
        a5();

        return result;
      }

      if (one-time initialization token for UI == -1)
      {
LABEL_5:
        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.UI);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          aBlock[0] = v19;
          *v18 = 136315138;
          *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BCD6A0, aBlock);
          _os_log_impl(&dword_2493AC000, v16, v17, "assertion failure: %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x24C1FE850](v19, -1, -1);
          MEMORY[0x24C1FE850](v18, -1, -1);
        }

        goto LABEL_8;
      }

LABEL_32:
      swift_once();
      goto LABEL_5;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
  {
    goto LABEL_3;
  }

  if (a2 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_27:

    v36 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_27;
  }

LABEL_12:
  aBlock[0] = MEMORY[0x277D84F90];

  specialized ContiguousArray.reserveCapacity(_:)();
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v44 = a3;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v22 = 0;
    do
    {
      v23 = v22 + 1;
      v24 = *(MEMORY[0x24C1FC540]() + 16);
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v22 = v23;
    }

    while (v21 != v23);
  }

  else
  {
    v25 = (a2 + 32);
    v26 = v21;
    do
    {
      v27 = *v25++;
      v28 = *(v27 + 16);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v26;
    }

    while (v26);
  }

  v29 = aBlock[0];
  aBlock[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((a2 & 0xC000000000000001) != 0)
  {
    v30 = 0;
    do
    {
      v31 = v30 + 1;
      v32 = *(MEMORY[0x24C1FC540]() + 24);
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v30 = v31;
    }

    while (v21 != v31);
  }

  else
  {
    v33 = (a2 + 32);
    do
    {
      v34 = *v33++;
      v35 = *(v34 + 24);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v21;
    }

    while (v21);
  }

  v36 = aBlock[0];
  a3 = v44;
LABEL_28:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v40 = swift_allocObject();
    *(v40 + 16) = a4;
    *(v40 + 24) = a1;
    *(v40 + 32) = v29;
    *(v40 + 40) = v36;
    v41 = a3 & 1;
    *(v40 + 48) = v41;
    *(v40 + 56) = a2;
    *(v40 + 64) = thunk for @callee_guaranteed () -> ()partial apply;
    *(v40 + 72) = v12;
    aBlock[4] = closure #3 in DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)partial apply;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_505;
    v42 = _Block_copy(aBlock);
    v43 = a4;

    [v38 hierarchyController:v43 willReplaceTrailingLocations:a1 with:isa animated:v41 completion:v42];
    swift_unknownObjectRelease();
    _Block_release(v42);
  }

  else
  {
  }

  return result;
}

{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v14 = *&a4[v13];
  if (v14 >> 62)
  {
    if (__CocoaSet.count.getter() < a1)
    {
LABEL_3:

      if (DOCIsInternalBuild())
      {
LABEL_8:
        a5();

        return result;
      }

      if (one-time initialization token for UI == -1)
      {
LABEL_5:
        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.UI);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          aBlock[0] = v19;
          *v18 = 136315138;
          *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BCD6A0, aBlock);
          _os_log_impl(&dword_2493AC000, v16, v17, "assertion failure: %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x24C1FE850](v19, -1, -1);
          MEMORY[0x24C1FE850](v18, -1, -1);
        }

        goto LABEL_8;
      }

LABEL_32:
      swift_once();
      goto LABEL_5;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
  {
    goto LABEL_3;
  }

  if (a2 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_27:

    v36 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_27;
  }

LABEL_12:
  aBlock[0] = MEMORY[0x277D84F90];

  specialized ContiguousArray.reserveCapacity(_:)();
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v44 = a3;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v22 = 0;
    do
    {
      v23 = v22 + 1;
      v24 = *(MEMORY[0x24C1FC540]() + 16);
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v22 = v23;
    }

    while (v21 != v23);
  }

  else
  {
    v25 = (a2 + 32);
    v26 = v21;
    do
    {
      v27 = *v25++;
      v28 = *(v27 + 16);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v26;
    }

    while (v26);
  }

  v29 = aBlock[0];
  aBlock[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((a2 & 0xC000000000000001) != 0)
  {
    v30 = 0;
    do
    {
      v31 = v30 + 1;
      v32 = *(MEMORY[0x24C1FC540]() + 24);
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v30 = v31;
    }

    while (v21 != v31);
  }

  else
  {
    v33 = (a2 + 32);
    do
    {
      v34 = *v33++;
      v35 = *(v34 + 24);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v21;
    }

    while (v21);
  }

  v36 = aBlock[0];
  a3 = v44;
LABEL_28:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v40 = swift_allocObject();
    *(v40 + 16) = a4;
    *(v40 + 24) = a1;
    *(v40 + 32) = v29;
    *(v40 + 40) = v36;
    v41 = a3 & 1;
    *(v40 + 48) = v41;
    *(v40 + 56) = a2;
    *(v40 + 64) = thunk for @callee_guaranteed () -> ()partial apply;
    *(v40 + 72) = v12;
    aBlock[4] = partial apply for closure #3 in DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:);
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_337;
    v42 = _Block_copy(aBlock);
    v43 = a4;

    [v38 hierarchyController:v43 willReplaceTrailingLocations:a1 with:isa animated:v41 completion:v42];
    swift_unknownObjectRelease();
    _Block_release(v42);
  }

  else
  {
  }

  return result;
}

{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v14 = *&a4[v13];
  if (v14 >> 62)
  {
    if (__CocoaSet.count.getter() < a1)
    {
LABEL_3:

      if (DOCIsInternalBuild())
      {
LABEL_8:
        a5();

        return result;
      }

      if (one-time initialization token for UI == -1)
      {
LABEL_5:
        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.UI);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          aBlock[0] = v19;
          *v18 = 136315138;
          *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BCD6A0, aBlock);
          _os_log_impl(&dword_2493AC000, v16, v17, "assertion failure: %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x24C1FE850](v19, -1, -1);
          MEMORY[0x24C1FE850](v18, -1, -1);
        }

        goto LABEL_8;
      }

LABEL_32:
      swift_once();
      goto LABEL_5;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
  {
    goto LABEL_3;
  }

  if (a2 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_27:

    v36 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_27;
  }

LABEL_12:
  aBlock[0] = MEMORY[0x277D84F90];

  specialized ContiguousArray.reserveCapacity(_:)();
  if (v21 < 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v44 = a3;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v22 = 0;
    do
    {
      v23 = v22 + 1;
      v24 = *(MEMORY[0x24C1FC540]() + 16);
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v22 = v23;
    }

    while (v21 != v23);
  }

  else
  {
    v25 = (a2 + 32);
    v26 = v21;
    do
    {
      v27 = *v25++;
      v28 = *(v27 + 16);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v26;
    }

    while (v26);
  }

  v29 = aBlock[0];
  aBlock[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((a2 & 0xC000000000000001) != 0)
  {
    v30 = 0;
    do
    {
      v31 = v30 + 1;
      v32 = *(MEMORY[0x24C1FC540]() + 24);
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v30 = v31;
    }

    while (v21 != v31);
  }

  else
  {
    v33 = (a2 + 32);
    do
    {
      v34 = *v33++;
      v35 = *(v34 + 24);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v21;
    }

    while (v21);
  }

  v36 = aBlock[0];
  a3 = v44;
LABEL_28:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v40 = swift_allocObject();
    *(v40 + 16) = a4;
    *(v40 + 24) = a1;
    *(v40 + 32) = v29;
    *(v40 + 40) = v36;
    v41 = a3 & 1;
    *(v40 + 48) = v41;
    *(v40 + 56) = a2;
    *(v40 + 64) = thunk for @callee_guaranteed () -> ()partial apply;
    *(v40 + 72) = v12;
    aBlock[4] = closure #3 in DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)partial apply;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_348;
    v42 = _Block_copy(aBlock);
    v43 = a4;

    [v38 hierarchyController:v43 willReplaceTrailingLocations:a1 with:isa animated:v41 completion:v42];
    swift_unknownObjectRelease();
    _Block_release(v42);
  }

  else
  {
  }

  return result;
}

uint64_t specialized closure #1 in closure #3 in DOCHierarchyController.replaceTrailingLocationsCount(_:with:animated:completion:)(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136315650;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x8000000249BCD6D0, &v14);
    *(v5 + 12) = 2080;
    [*(v1 + 16) node];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd, &_sSo7DOCNode_pSgMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v5 + 14) = v10;
    *(v5 + 22) = 2112;
    v11 = *(v1 + 24);
    *(v5 + 24) = v11;
    *v6 = v11;
    v12 = v11;
    _os_log_impl(&dword_2493AC000, v3, v4, "[PROTECTED APPS] %s start authentication for node: %s viewController: %@", v5, 0x20u);
    outlined destroy of CharacterSet?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  specialized DOCHierarchyController.authenticateViewController(node:viewController:)([*(v1 + 16) node], *(v1 + 24));
  return swift_unknownObjectRelease();
}

void specialized DOCHierarchyController.removeTrailingLocationCount(_:animated:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v35 - v17;
  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(&v1[v19], v14, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  v20 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v14, 1, v20) == 1)
  {
    v23 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&v1[v23], v18, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v22(v14, 1, v20) != 1)
    {
      outlined destroy of CharacterSet?(v14, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    }
  }

  else
  {
    outlined init with take of DOCHierarchyController.FetchingOperationToken(v14, v18, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v21 + 56))(v18, 0, 1, v20);
  }

  if (v22(v18, 1, v20) == 1)
  {
    outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  }

  else
  {
    v24 = v18[*(v20 + 24)];
    outlined destroy of DOCHierarchyController.FetchingOperationToken(v18, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    if (v24)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = v1;
      *(v25 + 24) = a1;
      aBlock[4] = partial apply for closure #1 in DOCHierarchyController.removeTrailingLocationCount(_:animated:);
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_402;
      v26 = _Block_copy(aBlock);
      v27 = v1;
      static DispatchQoS.unspecified.getter();
      v40 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v28 = v39;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v10, v6, v26);
      _Block_release(v26);
      (*(v38 + 8))(v6, v28);
      (*(v36 + 8))(v10, v37);

      return;
    }
  }

  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v30 = *&v1[v29];
  if (v30 >> 62)
  {
    v34 = __CocoaSet.count.getter();
    v32 = v34 - 1;
    if (!__OFSUB__(v34, 1))
    {
      goto LABEL_11;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = v31 - 1;
  if (__OFSUB__(v31, 1))
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v32 >= a1)
  {
    v33 = a1;
  }

  else
  {
    v33 = v32;
  }

  DOCHierarchyController.removeTrailingLocations(_:animated:)(v33, 0);
  DOCHierarchyController.loadParentIfNeeded()();
  DOCHierarchyController.saveLastVisitedLocationIfNeeded()();
}

void outlined consume of DOCHierarchyController.BrowsedState?(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t outlined init with copy of DOCHierarchyController.FetchingOperationToken(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of DOCHierarchyController.UpdateExpectation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DOCHierarchyController.FetchingOperationToken(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DOCHierarchyController.FetchingOperationToken(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in DOCHierarchyController.applyUpdate(popToLocation:animated:completion:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_activeSemanticNavigationOperation;
  result = swift_beginAccess();
  *v2 = 0;
  *(v2 + 8) = 1;
  if (v1)
  {
    return v1(result);
  }

  return result;
}

void specialized DOCHierarchyController.removeTrailingLocations(includingAndAfter:animated:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v5 = specialized Collection<>.firstIndex(of:)(a1, v4, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    v12 = *(v1 + v3);
    if (v12 >> 62)
    {
      if (__CocoaSet.count.getter() < 2)
      {
        return;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      return;
    }

    v13 = *(v1 + v3);
    if (v13 >> 62)
    {
      v17 = __CocoaSet.count.getter();
      v15 = __OFSUB__(v17, v5);
      v16 = v17 - v5;
      if (!v15)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = __OFSUB__(v14, v5);
      v16 = v14 - v5;
      if (!v15)
      {
LABEL_11:
        DOCHierarchyController.removeTrailingLocations(_:animated:)(v16, 0);
        return;
      }
    }

    __break(1u);
    return;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2493AC000, v9, v10, "Cannot remove the location after a location that is not in the locations array", v11, 2u);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }
}

void specialized DOCHierarchyController.resetProtectedAppAuthenticationState(on:requiresAuthentication:)(void *a1, char a2)
{
  if (![objc_opt_self() protectedAppsEnabled])
  {
    return;
  }

  type metadata accessor for DOCBrowserContainerController();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    goto LABEL_11;
  }

  v4 = *((*MEMORY[0x277D85000] & *v24) + 0xE8);
  v23 = a1;
  v5 = v4();
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  type metadata accessor for DOCItemCollectionViewController(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_11:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.UI);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x8000000249BCD800, &v25);
      _os_log_impl(&dword_2493AC000, v19, v20, "[PROTECTED APPS] %s collectionViewController: is nil!", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x24C1FE850](v22, -1, -1);
      MEMORY[0x24C1FE850](v21, -1, -1);

      return;
    }

    v17 = v24;
    goto LABEL_17;
  }

  v8 = v7;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.UI);
  v10 = v6;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x8000000249BCD800, &v25);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v8;
    *v14 = v8;
    v16 = v10;
    _os_log_impl(&dword_2493AC000, v11, v12, "[PROTECTED APPS] %s collectionViewController: %@", v13, 0x16u);
    outlined destroy of CharacterSet?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  DOCItemCollectionViewController.resetProtectedAppAuthenticationState(locationProtected:)(a2 & 1);
  v17 = v23;
LABEL_17:
}

uint64_t objectdestroy_50Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_121Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t specialized static DOCHierarchyController.pickerSupportsDefaultLocation(appRecord:configuration:)(void *a1, id a2)
{
  if (![a2 isPickerUI])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.UI);
    v26 = a2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_20;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v77[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x8000000249BCD480, v77);
    *(v17 + 12) = 2080;
    v27 = [v26 hostIdentifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v77);

    *(v17 + 14) = v31;
    v24 = "%s not a picker: %s";
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v6;
  v7 = [a2 hostIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v77[0] = v8;
  v77[1] = v10;
  MEMORY[0x28223BE20](v11, v12);
  v76[2] = v77;
  LOBYTE(v7) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v76, inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  if (v7)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.UI);
    v14 = a2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_20;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v77[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x8000000249BCD480, v77);
    *(v17 + 12) = 2080;
    v19 = [v14 hostIdentifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v77);

    *(v17 + 14) = v23;
    v24 = "%s is excldued identifier: %s";
LABEL_19:
    _os_log_impl(&dword_2493AC000, v15, v16, v24, v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v18, -1, -1);
    MEMORY[0x24C1FE850](v17, -1, -1);
LABEL_20:

    return 0;
  }

  v32 = [a2 hostIdentifier];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
  {

LABEL_15:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.UI);
    v39 = a2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_20;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v77[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x8000000249BCD480, v77);
    *(v17 + 12) = 2080;
    v40 = [v39 hostIdentifier];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v77);

    *(v17 + 14) = v44;
    v24 = "%s is Files app: %s";
    goto LABEL_19;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_15;
  }

  if (!a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.UI);
    v59 = a2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_20;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v77[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x8000000249BCD480, v77);
    *(v17 + 12) = 2080;
    v60 = [v59 hostIdentifier];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v77);

    *(v17 + 14) = v64;
    v24 = "%s nil app record: %s";
    goto LABEL_19;
  }

  v46 = a1;
  if (![v46 supportsOpenInPlace])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.UI);
    v66 = a2;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v77[0] = v70;
      *v69 = 136315394;
      *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x8000000249BCD480, v77);
      *(v69 + 12) = 2080;
      v71 = [v66 hostIdentifier];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v77);

      *(v69 + 14) = v75;
      _os_log_impl(&dword_2493AC000, v67, v68, "%s !supportsOpenInPlace: %s", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v70, -1, -1);
      MEMORY[0x24C1FE850](v69, -1, -1);
    }

    return 0;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.UI);
  v48 = a2;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v77[0] = v52;
    *v51 = 136315394;
    *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000037, 0x8000000249BCD480, v77);
    *(v51 + 12) = 2080;
    v53 = [v48 hostIdentifier];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v77);

    *(v51 + 14) = v57;
    _os_log_impl(&dword_2493AC000, v49, v50, "%s true! : %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v52, -1, -1);
    MEMORY[0x24C1FE850](v51, -1, -1);
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type DOCHierarchyController.DOCHierarchyOperationType and conformance DOCHierarchyController.DOCHierarchyOperationType()
{
  result = lazy protocol witness table cache variable for type DOCHierarchyController.DOCHierarchyOperationType and conformance DOCHierarchyController.DOCHierarchyOperationType;
  if (!lazy protocol witness table cache variable for type DOCHierarchyController.DOCHierarchyOperationType and conformance DOCHierarchyController.DOCHierarchyOperationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHierarchyController.DOCHierarchyOperationType and conformance DOCHierarchyController.DOCHierarchyOperationType);
  }

  return result;
}

void type metadata completion function for DOCHierarchyController(uint64_t a1)
{
  type metadata accessor for DOCHierarchyController.UpdateExpectation?(319, &lazy cache variable for type metadata for DOCHierarchyController.UpdateExpectation?, type metadata accessor for DOCHierarchyController.UpdateExpectation);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DOCHierarchyController.UpdateExpectation?(319, &lazy cache variable for type metadata for DOCHierarchyController.FetchingOperationToken?, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for DOCHierarchyController.UpdateExpectation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for DOCHierarchyController.PreventChangeAssertion(uint64_t a1)
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

void type metadata completion function for DOCHierarchyController.FetchingOperationToken(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [DOCConcreteLocation](319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [DOCConcreteLocation](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [DOCConcreteLocation])
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [DOCConcreteLocation]);
    }
  }
}

void type metadata completion function for DOCHierarchyController.UpdateExpectation(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [DOCConcreteLocation](319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void specialized DOCHierarchyController.tagsDidChange(notification:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v2 + 8 * v4 + 32);
      goto LABEL_8;
    }

    __break(1u);
    return;
  }

  v5 = MEMORY[0x24C1FC540](v4, v2);

LABEL_8:
  v6 = [v5 representedTag];

  if (v6)
  {
    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 userTags];

    if (([v8 containsObject_] & 1) == 0)
    {
      v9 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration) defaultEffectiveTabIdentifierForLocationRestore];
      v10 = DOCTabIdentifier.tab.getter(v9);
      v12 = v11;

      if (v12)
      {
        v13 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
        swift_beginAccess();
        v10 = *(v0 + v13);
      }

      v14 = DOCHierarchyController._defaultBrowsedStateIgnoringAnySavedState(forTab:)(v10);
      v16 = v15;

      DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v14, 0, 0, 1, 0, 0, 0);
    }
  }
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = __CocoaSet.count.getter();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = __CocoaSet.count.getter();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = outlined copy of ColumnType(a4, a5);
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for DOCBrowserHistoryItem);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for DOCFileOperation);
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  swift_arrayDestroy();
  v14 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      v15 = v6[2];
      v16 = v15 - v8;
      if (!__OFSUB__(v15, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    v21 = __CocoaSet.count.getter();
    v16 = v21 - v8;
    if (!__OFSUB__(v21, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = v6[2];
      }

      if (!__OFADD__(v20, v12))
      {
        v6[2] = v20 + v12;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void outlined consume of DOCLocationChange?(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t objectdestroy_357Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_98Tm()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

void partial apply for closure #1 in closure #1 in DOCHierarchyController.remove(after:animated:completion:)()
{
  v1 = *(v0 + 32);
  DOCHierarchyController.allowImmediateChangeRequests(preventionAssertion:isTimeoutAutoDeactivate:)(*(v0 + 24), 0);
  if (v1)
  {
    v1();
  }
}

unint64_t lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState and conformance DOCHierarchyController.BrowsedState()
{
  result = lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState and conformance DOCHierarchyController.BrowsedState;
  if (!lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState and conformance DOCHierarchyController.BrowsedState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState and conformance DOCHierarchyController.BrowsedState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState and conformance DOCHierarchyController.BrowsedState;
  if (!lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState and conformance DOCHierarchyController.BrowsedState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCHierarchyController.BrowsedState and conformance DOCHierarchyController.BrowsedState);
  }

  return result;
}

uint64_t objectdestroy_420Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_360Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_333Tm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_56Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_59Tm()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_27Tm()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_30Tm()
{

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

char *partial apply for closure #1 in DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:)(void *a1)
{
  v3 = *(type metadata accessor for DOCHierarchyController.FetchingOperationToken(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return closure #1 in DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:)(a1, v6, v1 + v4, v7, v9, v10);
}

uint64_t partial apply for closure #1 in closure #3 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);
  v11 = *(v0 + 16);
  v12 = (v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return closure #1 in closure #3 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v11, v0 + v2, v7, v8, v9, v10, v13, v14);
}

uint64_t objectdestroy_652Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_659Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_665Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_731Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_581Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_604Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_593Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_277Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_830Tm()
{

  return MEMORY[0x2821FE8E8](v0, 58, 7);
}

uint64_t objectdestroy_65Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_69Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_76Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t outlined assign with copy of DOCHierarchyController.FetchingOperationToken?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_871Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(uint64_t *a1)
{
  return partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySo6FPItemCG_TG5TA_0(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

uint64_t DOCFileProviderSyncStateFooterViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCFileProviderSyncStateFooterViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return DOCFileProviderSyncStateFooterViewModel.delegate.modify;
}

void DOCFileProviderSyncStateFooterViewModel.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t DOCFileProviderSyncStateFooterViewModel.__allocating_init(for:nodeCollection:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = specialized DOCFileProviderSyncStateFooterViewModel.init(for:nodeCollection:)(a1, a2);

  return v4;
}

uint64_t DOCFileProviderSyncStateFooterViewModel.init(for:nodeCollection:)(void *a1, void *a2)
{
  v3 = specialized DOCFileProviderSyncStateFooterViewModel.init(for:nodeCollection:)(a1, a2);

  return v3;
}

uint64_t DOCFileProviderSyncStateFooterViewModel.__allocating_init(for:nodeCollection:footerTextSyncStateProvider:progressBarSyncStateProvider:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v7 = (*(v4 + 272))(a1, a2);
  outlined init with take of DOCGoToFolderCandidate(a3, v9);
  swift_beginAccess();

  outlined assign with take of DOCFileProviderSyncStateProviding?(v9, v7 + 56);
  swift_endAccess();
  outlined init with take of DOCGoToFolderCandidate(a4, v9);
  swift_beginAccess();
  outlined assign with take of DOCFileProviderSyncStateProviding?(v9, v7 + 96);
  swift_endAccess();

  return v7;
}

void DOCFileProviderSyncStateFooterViewModel.fetchFooterState(completion:)(void (*a1)(uint64_t, uint64_t, void, void), uint64_t a2)
{
  v5 = type metadata accessor for DOCFileOperation(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong isGathering];

    if (v12)
    {
      v13 = 4;
LABEL_13:
      v16 = 2;
LABEL_14:
      a1(v13, v16, 0, 0);
      return;
    }
  }

  v14 = v2[20];
  if (v14)
  {
    if ([v14 contentType] == 3)
    {
      v15 = v2[20];
      if (v15)
      {
        v32 = v15;
        a1(v15, 1, 0, 0);
LABEL_25:
        v30 = v32;

        return;
      }
    }
  }

  if (((*(*v2 + 320))() & 1) == 0)
  {
    if (DOCFileProviderSyncStateFooterViewModel.isProgressPaused.getter())
    {
      v13 = 3;
      goto LABEL_13;
    }

    v28 = v2[5];
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = a2;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

    v32 = static OS_dispatch_queue.main.getter();
    (*(*v28 + 208))(v32, partial apply for closure #1 in DOCFileProviderSyncStateFooterViewModel.fetchFooterState(completion:), v29);

    goto LABEL_25;
  }

  if (DOCFileProviderSyncStateFooterViewModel.hasDownloadingProgress.getter())
  {
    v13 = 2;
    goto LABEL_13;
  }

  v17 = v2[19];
  if (!v17 || (v18 = *(v17 + 16)) == 0)
  {
    v21 = 0;
LABEL_29:
    v13 = v21;
    v16 = 0;
    goto LABEL_14;
  }

  v19 = v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v20 = *(v6 + 72);
  v32 = v2[19];

  v21 = 0;
  while (1)
  {
    outlined init with copy of DOCFileOperation(v19, v9, type metadata accessor for DOCFileOperation);
    v22 = v9[5];
    outlined destroy of DOCFileOperation(v9, type metadata accessor for DOCFileOperation);
    v23 = NSProgress.fileTotalCount.getter();
    v25 = v24;

    v26 = (v25 & 1) != 0 ? 0 : v23;
    v27 = __OFADD__(v21, v26);
    v21 += v26;
    if (v27)
    {
      break;
    }

    v19 += v20;
    if (!--v18)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
}

uint64_t closure #1 in DOCFileProviderSyncStateFooterViewModel.fetchFooterState(completion:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 <= 1u && a1)
  {
    v10 = a1;
LABEL_13:

    v9 = v10;
    return a4(v9, 2, a2, a3);
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    v9 = 1;
    return a4(v9, 2, a2, a3);
  }

  if (a1 > 1u && a1 != 2)
  {
    v10 = 5;
    goto LABEL_13;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    v9 = 5;
  }

  else
  {
    v9 = 0;
  }

  return a4(v9, 2, a2, a3);
}

uint64_t DOCFileProviderSyncStateFooterViewModel.providerName.getter()
{
  v1 = *(v0 + 32);
  if ([v1 isiCloudDriveProvider])
  {

    return 0x64756F6C4369;
  }

  else
  {
    v3 = [v1 providerDisplayName];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }
}

uint64_t DOCFileProviderSyncStateFooterViewModel.pauseProgress()(SEL *a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v46 = a3;
  v5 = v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DOCFileProviderSyncStateFooterViewModel.Configuration(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchTime();
  v47 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v41 - v22;
  v24 = type metadata accessor for DOCFileOperation(0) - 8;
  MEMORY[0x28223BE20](v24, v25);
  v28 = (&v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v5 + 152);
  if (v29)
  {
    v30 = *(v29 + 16);
    if (v30)
    {
      v42 = v5;
      v43 = v16;
      v44 = v6;
      v31 = v29 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v32 = *(v26 + 72);

      do
      {
        outlined init with copy of DOCFileOperation(v31, v28, type metadata accessor for DOCFileOperation);
        [v28[5] *a1];
        outlined destroy of DOCFileOperation(v28, type metadata accessor for DOCFileOperation);
        v31 += v32;
        --v30;
      }

      while (v30);

      v16 = v43;
      v6 = v44;
      v5 = v42;
    }
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v44 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  outlined init with copy of DOCFileOperation(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCFileProviderSyncStateFooterViewModel_configuration, v15, type metadata accessor for DOCFileProviderSyncStateFooterViewModel.Configuration);
  MEMORY[0x24C1FAA90](v19, v15);
  v33 = v5;
  v34 = *(v47 + 8);
  v34(v19, v16);
  v35 = type metadata accessor for DispatchTimeInterval();
  (*(*(v35 - 8) + 8))(v15, v35);
  aBlock[4] = v45;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v46;
  v36 = _Block_copy(aBlock);

  v37 = v48;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v38 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v39 = v44;
  MEMORY[0x24C1FB940](v23, v37, v38, v36);
  _Block_release(v36);

  (*(v52 + 8))(v38, v6);
  (*(v49 + 8))(v37, v50);
  return (v34)(v23, v16);
}

uint64_t closure #2 in DOCFileProviderSyncStateFooterViewModel.pauseProgress()(void *a1, uint64_t a2)
{
  v4 = *(*a1[5] + 144);

  v4(0);

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(*a1 + 280);

  v6(a2, v5);
}

void *DOCFileProviderSyncStateFooterViewModel.progressBarSource.getter()
{
  swift_beginAccess();
  outlined init with copy of DOCFileProviderSyncStateProviding?(v0 + 96, &v8);
  if (v9)
  {
    outlined init with take of DOCGoToFolderCandidate(&v8, v10);
    v1 = type metadata accessor for DOCFileOperationsManager(0);
    v2 = v11;
    v3 = v12;
    v4 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v5 = specialized DOCFileOperationsManager.__allocating_init(serviceImpl:)(v4, v1, v2, *(v3 + 8));
    type metadata accessor for DOCFileOperationCollectionSource(0);
    swift_allocObject();
    v6 = DOCFileOperationCollectionSource.init(manager:filteringPredicate:)(v5, 0, 0);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    outlined destroy of DOCFileProviderSyncStateProviding?(&v8);
    return 0;
  }

  return v6;
}

void DOCFileProviderSyncStateFooterViewModel.shouldDisplayProgress.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DOCFileOperation(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((DOCFileProviderSyncStateFooterViewModel.isProgressPaused.getter() & 1) == 0)
  {
    v7 = *(v0 + 152);
    if (v7)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v10 = *(v3 + 72);

        v11 = 0;
        do
        {
          outlined init with copy of DOCFileOperation(v9, v6, type metadata accessor for DOCFileOperation);
          v12 = v6[5];
          outlined destroy of DOCFileOperation(v6, type metadata accessor for DOCFileOperation);
          v13 = NSProgress.fileTotalCount.getter();
          v15 = v14;

          if (v15)
          {
            v16 = 0;
          }

          else
          {
            v16 = v13;
          }

          v17 = __OFADD__(v11, v16);
          v11 += v16;
          if (v17)
          {
            __break(1u);
            return;
          }

          v9 += v10;
          --v8;
        }

        while (v8);

        if (v11 > 0)
        {
          v18 = *(v1 + 160);
          if (v18)
          {
            [v18 contentType];
          }
        }
      }
    }
  }
}

uint64_t DOCFileProviderSyncStateFooterViewModel.shouldDisplayTitleContainer.getter()
{
  if ((*(*v0 + 336))())
  {
    return 1;
  }

  v2 = *(*v0 + 360);

  return v2();
}

uint64_t DOCFileProviderSyncStateFooterViewModel.shouldDisplayTitle.getter()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [v1 contentType] != 1;
  }

  else
  {
    v2 = 1;
  }

  return [*(v0 + 32) isSyncStateMessagingSupported] & v2;
}

uint64_t DOCFileProviderSyncStateFooterViewModel.shouldDisplaySubtitleContainer.getter()
{
  if ((*(*v0 + 352))())
  {
    return 1;
  }

  v2 = *(*v0 + 368);

  return v2();
}

uint64_t DOCFileProviderSyncStateFooterViewModel.shouldDisplaySubtitle.getter()
{
  if (*(v0 + 176) == 2 && !*(v0 + 168))
  {
    return 1;
  }

  result = *(v0 + 160);
  if (result)
  {
    if ([result contentType] != 3)
    {
      return 0;
    }

    result = *(v0 + 160);
    if (result)
    {
      result = [result subTitle];
      if (result)
      {

        return 1;
      }
    }
  }

  return result;
}

void DOCFileProviderSyncStateFooterViewModel.shouldDisplayActionButtonNextToTitle.getter()
{
  v1 = type metadata accessor for DOCFileOperation(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (DOCFileProviderSyncStateFooterViewModel.isProgressPausable.getter())
  {
    v6 = *(v0 + 152);
    if (v6)
    {
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
        v9 = *(v2 + 72);

        v10 = 0;
        while (1)
        {
          outlined init with copy of DOCFileOperation(v8, v5, type metadata accessor for DOCFileOperation);
          v11 = v5[5];
          outlined destroy of DOCFileOperation(v5, type metadata accessor for DOCFileOperation);
          v12 = NSProgress.fileTotalCount.getter();
          v14 = v13;

          v15 = (v14 & 1) != 0 ? 0 : v12;
          v16 = __OFADD__(v10, v15);
          v10 += v15;
          if (v16)
          {
            break;
          }

          v8 += v9;
          if (!--v7)
          {

            return;
          }
        }

        __break(1u);
      }
    }
  }
}

void *DOCFileProviderSyncStateFooterViewModel.shouldDisplayActionButtonNextToSubtitle.getter()
{
  result = *(v0 + 160);
  if (result)
  {
    if ([result contentType] == 3)
    {
      result = *(v0 + 160);
      if (result)
      {
        v2 = [result actions];
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCICloudQuotaInAppAction, 0x277D06390);
        v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v3 >> 62)
        {
          v4 = __CocoaSet.count.getter();
        }

        else
        {
          v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        return (v4 > 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DOCFileProviderSyncStateFooterViewModel.progressOperations.didset()
{
  swift_beginAccess();
  *(v0 + 144) = MEMORY[0x277D84F90];

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v1 = static DOCLog.UI;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Progress: [FOOTER] REMOVE fractionCompleted observer", 52, 2, &dword_2493AC000, v1, v2, MEMORY[0x277D84F90]);
  DOCFileProviderSyncStateFooterViewModel.setUpProgressOperationsObservations()();
  v3 = *(**(v0 + 40) + 144);

  v3(0);

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = *(*v0 + 280);

  v5(partial apply for closure #1 in DOCFileProviderSyncStateFooterViewModel.syncStateDidChange(), v4);
}

Swift::Void __swiftcall DOCFileProviderSyncStateFooterViewModel.startObserving()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v46[0] = Strong;
    v3 = Strong;
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v4 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v1 + 136);
  *(v1 + 136) = v4;

  swift_beginAccess();
  outlined init with copy of DOCFileProviderSyncStateProviding?(v1 + 56, v46);
  v6 = v47;
  outlined destroy of DOCFileProviderSyncStateProviding?(v46);
  if (!v6)
  {
    v7 = *(v1 + 32);
    v8 = type metadata accessor for DOCFileProviderSyncStateProvider();
    v9 = swift_allocObject();
    *(v9 + 24) = 0;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    v10 = one-time initialization token for shared;
    v11 = v7;
    if (v10 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = *(*static DOCFileProviderSyncStateObserverCache.shared + 112);

    v13 = v12(v11);

    *(v9 + 16) = v13;
    swift_beginAccess();
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      (*(*v13 + 272))(v9);
    }

    v47 = v8;
    v48 = &protocol witness table for DOCFileProviderSyncStateProvider;
    v46[0] = v9;
    swift_beginAccess();
    outlined assign with take of DOCFileProviderSyncStateProviding?(v46, v1 + 56);
    swift_endAccess();
  }

  swift_beginAccess();
  outlined init with copy of DOCFileProviderSyncStateProviding?(v1 + 96, v46);
  v14 = v47;
  outlined destroy of DOCFileProviderSyncStateProviding?(v46);
  if (!v14)
  {
    v15 = *(v1 + 32);
    v16 = type metadata accessor for DOCFileProviderSyncStateProvider();
    v17 = swift_allocObject();
    *(v17 + 24) = 0;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    v18 = one-time initialization token for shared;
    v19 = v15;
    if (v18 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = *(*static DOCFileProviderSyncStateObserverCache.shared + 112);

    v21 = v20(v19);

    *(v17 + 16) = v21;
    swift_beginAccess();
    if ((*(v17 + 24) & 1) == 0)
    {
      *(v17 + 24) = 1;
      (*(*v21 + 272))(v17);
    }

    v47 = v16;
    v48 = &protocol witness table for DOCFileProviderSyncStateProvider;
    v46[0] = v17;
    swift_beginAccess();
    outlined assign with take of DOCFileProviderSyncStateProviding?(v46, v1 + 96);
    swift_endAccess();
  }

  v23 = DOCFileProviderSyncStateFooterViewModel.footerTextSyncStateProvider.modify(v46);
  if (*(v22 + 24))
  {
    v24 = v22;
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = *(v24 + 24);
    v27 = *(v24 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v24, v26);
    (*(*(v27 + 8) + 24))(partial apply for closure #2 in DOCFileProviderSyncStateFooterViewModel.startObserving(), v25, v26);
  }

  (v23)(v46, 0);
  v29 = DOCFileProviderSyncStateFooterViewModel.footerTextSyncStateProvider.modify(v46);
  if (*(v28 + 24))
  {
    v30 = v28;
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = *(v30 + 24);
    v33 = *(v30 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v30, v32);
    (*(v33 + 32))(partial apply for closure #3 in DOCFileProviderSyncStateFooterViewModel.startObserving(), v31, v32, v33);
  }

  (v29)(v46, 0);
  outlined init with copy of DOCFileProviderSyncStateProviding?(v1 + 56, v46);
  if (v47)
  {
    outlined init with copy of DOCSidebarItemIconProvider(v46, v43);
    outlined destroy of DOCFileProviderSyncStateProviding?(v46);
    v34 = v44;
    v35 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = *(v35 + 8);
    v38 = *(v37 + 8);

    v38(partial apply for closure #1 in DOCFileProviderSyncStateFooterViewModel.refreshSyncProgress(), v36, v34, v37);

    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    outlined destroy of DOCFileProviderSyncStateProviding?(v46);
  }

  outlined init with copy of DOCFileProviderSyncStateProviding?(v1 + 56, v46);
  if (v47)
  {
    outlined init with copy of DOCSidebarItemIconProvider(v46, v43);
    outlined destroy of DOCFileProviderSyncStateProviding?(v46);
    v39 = v44;
    v40 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = *(v40 + 16);

    v42(partial apply for closure #1 in DOCFileProviderSyncStateFooterViewModel.refreshInAppMessage(), v41, v39, v40);

    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    outlined destroy of DOCFileProviderSyncStateProviding?(v46);
  }
}

id key path getter for DOCNodeCollection.isGathering : DOCNodeCollection@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isGathering];
  *a2 = result;
  return result;
}

uint64_t closure #1 in DOCFileProviderSyncStateFooterViewModel.startObserving()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(**(result + 40) + 144);
    v5 = result;

    v4(0);

    v6 = swift_allocObject();
    swift_weakInit();
    v7 = *(*v5 + 280);

    v7(closure #1 in DOCFileProviderSyncStateFooterViewModel.syncStateDidChange()partial apply, v6);
  }

  return result;
}

uint64_t closure #2 in DOCFileProviderSyncStateFooterViewModel.startObserving()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    outlined init with copy of DOCFileProviderSyncStateProviding?(v2 + 56, v11);
    if (v12)
    {
      outlined init with copy of DOCSidebarItemIconProvider(v11, v8);
      outlined destroy of DOCFileProviderSyncStateProviding?(v11);
      v3 = v9;
      v4 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = *(v4 + 8);
      v7 = *(v6 + 8);

      v7(closure #1 in DOCFileProviderSyncStateFooterViewModel.refreshSyncProgress()partial apply, v5, v3, v6);

      return __swift_destroy_boxed_opaque_existential_0(v8);
    }

    else
    {

      return outlined destroy of DOCFileProviderSyncStateProviding?(v11);
    }
  }

  return result;
}

uint64_t closure #3 in DOCFileProviderSyncStateFooterViewModel.startObserving()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    outlined init with copy of DOCFileProviderSyncStateProviding?(v2 + 56, v10);
    if (v11)
    {
      outlined init with copy of DOCSidebarItemIconProvider(v10, v7);
      outlined destroy of DOCFileProviderSyncStateProviding?(v10);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = *(v4 + 16);

      v6(closure #1 in DOCFileProviderSyncStateFooterViewModel.refreshInAppMessage()partial apply, v5, v3, v4);

      return __swift_destroy_boxed_opaque_existential_0(v7);
    }

    else
    {

      return outlined destroy of DOCFileProviderSyncStateProviding?(v10);
    }
  }

  return result;
}

Swift::Void __swiftcall DOCFileProviderSyncStateFooterViewModel.stopObserving()()
{
  v1 = *(v0 + 136);
  *(v0 + 136) = 0;

  swift_beginAccess();
  *(v0 + 144) = MEMORY[0x277D84F90];

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = static DOCLog.UI;
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Progress: [FOOTER] REMOVE fractionCompleted observer", 52, 2, &dword_2493AC000, v2, v3, MEMORY[0x277D84F90]);
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  swift_beginAccess();
  outlined assign with take of DOCFileProviderSyncStateProviding?(&v6, v0 + 56);
  swift_endAccess();
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  swift_beginAccess();
  outlined assign with take of DOCFileProviderSyncStateProviding?(&v6, v0 + 96);
  swift_endAccess();
  v4 = *(v0 + 168);
  *(v0 + 168) = 0;
  v5 = *(v0 + 176);
  *(v0 + 176) = -1;
  outlined consume of DOCFileProviderSyncStateFooterViewModel.State?(v4, v5);
}

uint64_t closure #1 in DOCFileProviderSyncStateFooterViewModel.refreshSyncProgress()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 152) = a1;

    DOCFileProviderSyncStateFooterViewModel.progressOperations.didset();
  }

  return result;
}

void closure #1 in DOCFileProviderSyncStateFooterViewModel.refreshInAppMessage()(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = a1;
    specialized DOCFileProviderSyncStateFooterViewModel.inAppMessage.setter(a1);
  }
}

uint64_t closure #1 in DOCFileProviderSyncStateFooterViewModel.progressFractionDidChange()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(*result + 176))())
    {
      v9 = v8;
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(a1, a2, ObjectType, v9);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #1 in DOCFileProviderSyncStateFooterViewModel.syncStateDidChange()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + 168);
    v12 = *(result + 176);
    if (v12 == 255)
    {
      goto LABEL_12;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        if (v12 != 1)
        {
          goto LABEL_12;
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
        outlined copy of DOCFileProviderSyncStateFooterViewModel.State?(v11, 1);
        v13 = static NSObject.== infix(_:_:)();
        outlined consume of DOCFileProviderSyncStateFooterViewModel.State?(v11, 1);
        if ((v13 & 1) == 0)
        {
          v11 = *(v10 + 168);
          LOBYTE(v12) = *(v10 + 176);
          goto LABEL_12;
        }
      }

      if (a1 > 2)
      {
        if (a1 == 3)
        {
          if (v12 == 2 && v11 == 3)
          {
          }
        }

        else if (a1 == 4)
        {
          if (v12 == 2 && v11 == 4)
          {
          }
        }

        else if (v12 == 2 && v11 == 5)
        {
        }
      }

      else if (a1)
      {
        if (a1 == 1)
        {
          if (v12 == 2 && v11 == 1)
          {
          }
        }

        else if (v12 == 2 && v11 == 2)
        {
        }
      }

      else if (v12 == 2 && !v11)
      {
      }
    }

    else
    {
      if (*(result + 176))
      {
        v14 = 0;
      }

      else
      {
        v14 = v11 == a1;
      }

      if (v14)
      {
      }
    }

LABEL_12:
    *(v10 + 168) = a1;
    *(v10 + 176) = a2;
    outlined copy of DOCFileProviderSyncStateFooterViewModel.State(a1, a2);
    outlined consume of DOCFileProviderSyncStateFooterViewModel.State?(v11, v12);
    if ((*(*v10 + 176))())
    {
      v16 = v15;
      ObjectType = swift_getObjectType();
      (*(v16 + 16))(a1, a2, a3, a4, ObjectType, v16);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

double DOCFileProviderSyncStateFooterViewModel.setUpProgressOperationsObservations()()
{
  v1 = v0;
  v2 = type metadata accessor for DOCFileOperation(0) - 8;
  result = MEMORY[0x28223BE20](v2, v3);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 152);
  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v11 = *(v4 + 72);
      v20[1] = *(v0 + 152);

      v21 = xmmword_249B9FA70;
      do
      {
        outlined init with copy of DOCFileOperation(v10, v7, type metadata accessor for DOCFileOperation);
        v12 = v7[5];
        outlined destroy of DOCFileOperation(v7, type metadata accessor for DOCFileOperation);
        v22 = v12;
        swift_getKeyPath();
        swift_allocObject();
        swift_weakInit();
        v13 = v12;
        v14 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v15 = static DOCLog.UI;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v16 = swift_allocObject();
        *(v16 + 16) = v21;
        *(v16 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
        *(v16 + 64) = lazy protocol witness table accessor for type NSProgress and conformance NSObject();
        *(v16 + 32) = v13;
        *(v16 + 96) = type metadata accessor for NSKeyValueObservation();
        *(v16 + 104) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type NSKeyValueObservation and conformance NSObject, MEMORY[0x277CC9100], MEMORY[0x277D85388]);
        *(v16 + 72) = v14;
        v17 = v14;
        v18 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Progress: [FOOTER] ADD fractionCompleted observer for: %{public}@, observation: %{public}@", 90, 2, &dword_2493AC000, v15, v18, v16);

        swift_beginAccess();
        v19 = v17;
        MEMORY[0x24C1FB090]();
        if (*(*(v1 + 144) + 16) >= *(*(v1 + 144) + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        v10 += v11;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t closure #1 in DOCFileProviderSyncStateFooterViewModel.setUpProgressOperationsObservations()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = *(*v4 + 280);

    v6(partial apply for closure #1 in DOCFileProviderSyncStateFooterViewModel.progressFractionDidChange(), v5);
  }

  return result;
}

id DOCFileProviderSyncStateFooterViewModel.isProgressPausable.getter()
{
  v1 = type metadata accessor for DOCFileOperation(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = (&v23 - v9);
  result = [*(v0 + 32) isProgressPausable];
  if (result)
  {
    v12 = *(v0 + 152);
    if (v12)
    {
      v13 = *(v12 + 16);

      if (v13)
      {
        v14 = 0;
        v15 = MEMORY[0x277D84F90];
        v16 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
        v23 = v13;
        while (v14 < *(v12 + 16))
        {
          v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v18 = *(v2 + 72);
          outlined init with copy of DOCFileOperation(v12 + v17 + v18 * v14, v10, type metadata accessor for DOCFileOperation);
          if ([v10[5] v16[496]])
          {
            outlined init with take of DOCFileOperation(v10, v5);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v24 = v15;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1);
              v15 = v24;
            }

            v21 = *(v15 + 16);
            v20 = *(v15 + 24);
            if (v21 >= v20 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
              v15 = v24;
            }

            *(v15 + 16) = v21 + 1;
            result = outlined init with take of DOCFileOperation(v5, v15 + v17 + v21 * v18);
            v13 = v23;
            v16 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
          }

          else
          {
            result = outlined destroy of DOCFileOperation(v10, type metadata accessor for DOCFileOperation);
          }

          if (v13 == ++v14)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      else
      {
        v15 = MEMORY[0x277D84F90];
LABEL_16:

        v22 = *(v15 + 16);

        return (v22 != 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DOCFileProviderSyncStateFooterViewModel.hasDownloadingProgress.getter(SEL *a1)
{
  v3 = type metadata accessor for DOCFileOperation(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v23 - v10);
  v12 = *(v1 + 152);
  if (!v12)
  {
    return 0;
  }

  v13 = *(v12 + 16);

  if (v13)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v24 = v7;
    v25 = a1;
    while (v15 < *(v12 + 16))
    {
      v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v18 = *(v4 + 72);
      outlined init with copy of DOCFileOperation(v12 + v17 + v18 * v15, v11, type metadata accessor for DOCFileOperation);
      if ([v11[5] *a1])
      {
        outlined init with take of DOCFileOperation(v11, v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
          v16 = v26;
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v16 = v26;
        }

        *(v16 + 16) = v21 + 1;
        v7 = v24;
        result = outlined init with take of DOCFileOperation(v24, v16 + v17 + v21 * v18);
        a1 = v25;
      }

      else
      {
        result = outlined destroy of DOCFileOperation(v11, type metadata accessor for DOCFileOperation);
      }

      if (v13 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_15:

    v22 = *(v16 + 16);

    return v22 != 0;
  }

  return result;
}

uint64_t DOCFileProviderSyncStateFooterViewModel.deinit()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + 16);

  MEMORY[0x24C1FE970](v0 + 48);
  outlined destroy of DOCFileProviderSyncStateProviding?(v0 + 56);
  outlined destroy of DOCFileProviderSyncStateProviding?(v0 + 96);

  outlined consume of DOCFileProviderSyncStateFooterViewModel.State?(*(v0 + 168), *(v0 + 176));
  outlined destroy of DOCFileOperation(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCFileProviderSyncStateFooterViewModel_configuration, type metadata accessor for DOCFileProviderSyncStateFooterViewModel.Configuration);
  return v0;
}

uint64_t DOCFileProviderSyncStateFooterViewModel.__deallocating_deinit()
{
  DOCFileProviderSyncStateFooterViewModel.deinit();

  return swift_deallocClassInstance();
}

BOOL specialized static DOCFileProviderSyncStateFooterViewModel.State.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
        return static NSObject.== infix(_:_:)() & 1;
      }

      return 0;
    }

    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return a4 == 2 && a3 == 3;
      }

      else if (a1 == 4)
      {
        return a4 == 2 && a3 == 4;
      }

      else
      {
        return a4 == 2 && a3 == 5;
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        return a4 == 2 && a3 == 1;
      }

      return a4 == 2 && a3 == 2;
    }

    else
    {
      return a4 == 2 && !a3;
    }
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a1 == a3;
  }
}

uint64_t specialized DOCFileProviderSyncStateFooterViewModel.init(for:nodeCollection:)(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v3 + 120) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 136) = 0;
  *(v3 + 144) = v5;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 152) = 0;
  *(v3 + 176) = -1;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables39DOCFileProviderSyncStateFooterViewModel_configuration;
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables39DOCFileProviderSyncStateFooterViewModel_configuration) = 100;
  v7 = *MEMORY[0x277D85178];
  v8 = type metadata accessor for DispatchTimeInterval();
  (*(*(v8 - 8) + 104))(v3 + v6, v7, v8);
  *(v3 + 32) = a1;
  type metadata accessor for DOCProviderDomainStateManager(0);
  swift_allocObject();
  *(v3 + 40) = DOCProviderDomainStateManager.init(for:)(a1);
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t outlined assign with take of DOCFileProviderSyncStateProviding?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables33DOCFileProviderSyncStateProviding_pSgMd, _s26DocumentManagerExecutables33DOCFileProviderSyncStateProviding_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of DOCFileOperation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of DOCFileProviderSyncStateProviding?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables33DOCFileProviderSyncStateProviding_pSgMd, _s26DocumentManagerExecutables33DOCFileProviderSyncStateProviding_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCFileProviderSyncStateProviding?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables33DOCFileProviderSyncStateProviding_pSgMd, _s26DocumentManagerExecutables33DOCFileProviderSyncStateProviding_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void outlined consume of DOCFileProviderSyncStateFooterViewModel.State?(id a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of DOCFileProviderSyncStateFooterViewModel.State(a1, a2);
  }
}

uint64_t outlined destroy of DOCFileOperation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata completion function for DOCFileProviderSyncStateFooterViewModel(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26DocumentManagerExecutables39DOCFileProviderSyncStateFooterViewModelC0G0O(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for DOCFileProviderSyncStateFooterViewModel.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCFileProviderSyncStateFooterViewModel.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for DOCFileProviderSyncStateFooterViewModel.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t type metadata completion function for DOCFileProviderSyncStateFooterViewModel.Configuration(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSProgress and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSProgress and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSProgress and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSProgress and conformance NSObject);
  }

  return result;
}

id outlined copy of DOCFileProviderSyncStateFooterViewModel.State?(id result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of DOCFileProviderSyncStateFooterViewModel.State(result, a2);
  }

  return result;
}

uint64_t specialized DOCFileProviderSyncStateFooterViewModel.inAppMessage.setter(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 160);
  *(v2 + 160) = a1;
  v4 = a1;

  v5 = *(**(v2 + 40) + 144);

  v5(0);

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(*v2 + 280);

  v7(closure #1 in DOCFileProviderSyncStateFooterViewModel.syncStateDidChange()partial apply, v6);
}

uint64_t outlined init with take of DOCFileOperation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCFileOperation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id DOCColumnViewSpecs.__allocating_init(traitCollection:columnBrowserSize:)(void *a1, double a2, double a3)
{
  specialized static DOCColumnWidth.layoutWidth(for:)(a1);
  v7 = v6;
  v8 = type metadata accessor for DOCColumnViewSpecs();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnBrowserSize];
  *v10 = a2;
  v10[1] = a3;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnWidth] = v7;
  v13.receiver = v9;
  v13.super_class = v8;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id DOCColumnViewSpecs.fullBrowserColumnWidthSpec.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnBrowserSize);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnBrowserSize + 8);
  v3 = type metadata accessor for DOCColumnViewSpecs();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnBrowserSize];
  *v5 = v1;
  *(v5 + 1) = v2;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCColumnViewSpecs_columnWidth] = v1;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DOCColumnViewSpecs.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCColumnViewSpecs.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCColumnViewSpecs();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized static DOCColumnWidth.layoutWidth(for:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v9;
  v31.size.height = v11;
  v12 = CGRectGetWidth(v31) * 0.5;
  v13 = [v2 mainScreen];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v32.origin.x = v15;
  v32.origin.y = v17;
  v32.size.width = v19;
  v32.size.height = v21;
  v22 = CGRectGetHeight(v32) * 0.6;
  if (v12 > v22)
  {
    v23 = v12;
  }

  else
  {
    v23 = v22;
  }

  v24 = [a1 preferredContentSizeCategory];
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    static UIContentSizeCategory.> infix(_:_:)();
  }

  v25 = DOCContentLayoutSizeCategory.categoriesInDescendingOrder.getter();
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = 0;
    v28 = v26 - 1;
    do
    {
      if (*(v25 + v27 + 32))
      {
        if (*(v25 + v27 + 32) == 1)
        {
          if (v23 > 400.0)
          {
LABEL_14:

            return;
          }
        }

        else if (v23 > 480.0)
        {
          goto LABEL_14;
        }

        if (v28 == v27)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (_UISolariumEnabled())
        {
          v29 = 340.0;
        }

        else
        {
          v29 = 320.0;
        }

        if (v23 > v29 || v28 == v27)
        {
          goto LABEL_23;
        }
      }

      ++v27;
    }

    while (v27 < *(v25 + 16));
    __break(1u);
  }

  else
  {
LABEL_23:

    _UISolariumEnabled();
  }
}

void *DOCFileExtensionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCThreadSafeStateCyAA016DOCFileExtensionB0C0F033_B1FA4EBED11BE9AB6139AA17EFDBDE03LLVGMd, &_s26DocumentManagerExecutables18DOCThreadSafeStateCyAA016DOCFileExtensionB0C0F033_B1FA4EBED11BE9AB6139AA17EFDBDE03LLVGMR);
  swift_allocObject();
  v0[4] = specialized DOCThreadSafeState.init(_:)(MEMORY[0x277D84F98]);
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static NSUserDefaults.docUserDefaults;
  if (static NSUserDefaults.docUserDefaults)
  {
    v2 = static NSUserDefaults.docUserDefaults;
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v1 = 0;
  }

  v0[5] = v2;
  v0[6] = 0;
  v3 = v1;
  return v0;
}

uint64_t *DOCFileExtensionManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DOCFileExtensionManager.shared;
}

double static DOCFileExtensionManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t DOCFileExtensionManager.hideExtensionTypes.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = closure #1 in DOCFileExtensionManager.hideExtensionTypes.getter();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t closure #1 in DOCFileExtensionManager.hideExtensionTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA22E0;
  v5 = v4 + v3;
  static UTType.pdf.getter();
  static UTType.rtfd.getter();
  static UTType.flatRTFD.getter();
  static UTType.webArchive.getter();
  static UTType.text.getter();
  static UTType.image.getter();
  static UTType.audiovisualContent.getter();
  static UTType.playlist.getter();
  static UTType.spreadsheet.getter();
  static UTType.presentation.getter();
  static UTType.folder.getter();
  if (one-time initialization token for docWatchface != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, static UTType.docWatchface);
  v7 = *(v1 + 16);
  v7(v5 + 11 * v2, v6, v0);
  if (one-time initialization token for docMSOfficeWordProcessing != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, static UTType.docMSOfficeWordProcessing);
  v7(v5 + 12 * v2, v8, v0);
  if (one-time initialization token for docMSOfficeWordProcessingTemplate != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, static UTType.docMSOfficeWordProcessingTemplate);
  v7(v5 + 13 * v2, v9, v0);
  if (one-time initialization token for docMSOfficeXMLWordProcessing != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, static UTType.docMSOfficeXMLWordProcessing);
  v7(v5 + 14 * v2, v10, v0);
  if (one-time initialization token for docOfficeOpenXMLWordProcessing != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, static UTType.docOfficeOpenXMLWordProcessing);
  v7(v5 - v2 + 16 * v2, v11, v0);
  if (one-time initialization token for docOfficeOpenXMLMacroEnabledWordProcessing != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v0, static UTType.docOfficeOpenXMLMacroEnabledWordProcessing);
  v7(v5 + 16 * v2, v12, v0);
  if (one-time initialization token for docOfficeOpenXMLWordProcessingTemplate != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, static UTType.docOfficeOpenXMLWordProcessingTemplate);
  v7(v5 + 17 * v2, v13, v0);
  if (one-time initialization token for docOfficeOpenXMLMacroEnabledWordProcessingTemplate != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, static UTType.docOfficeOpenXMLMacroEnabledWordProcessingTemplate);
  v7(v5 + 18 * v2, v14, v0);
  return v4;
}

uint64_t DOCFileExtensionManager.forceExtensionTypes.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = closure #1 in DOCFileExtensionManager.forceExtensionTypes.getter();
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t closure #1 in DOCFileExtensionManager.forceExtensionTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  type metadata accessor for UTType();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249BA22F0;
  static UTType.sourceCode.getter();
  static UTType.script.getter();
  static UTType.json.getter();
  static UTType.propertyList.getter();
  static UTType.xmlPropertyList.getter();
  static UTType.binaryPropertyList.getter();
  static UTType.archive.getter();
  static UTType.symbolicLink.getter();
  static UTType.executable.getter();
  static UTType.url.getter();
  return v0;
}

id (*DOCFileExtensionManager.forceDisplayFilenameExtensions.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 40);
  *a1 = v3;
  *(a1 + 8) = [v3 forceDisplayFilenameExtensions];
  return DOCFileExtensionManager.forceDisplayFilenameExtensions.modify;
}

uint64_t DOCFileExtensionManager.forceDisplayFilenameExtensionsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So14NSUserDefaultsCSbGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So14NSUserDefaultsCSbGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9 - v4;
  if (*(v0 + 48))
  {
    v6 = *(v0 + 48);
  }

  else
  {
    swift_getKeyPath();
    v7 = v0;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<NSUserDefaults, Bool> and conformance NSObject.KeyValueObservingPublisher<A, B>();
    v6 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    *(v7 + 48) = v6;
  }

  return v6;
}

uint64_t (*DOCFileExtensionManager.forceDisplayFilenameExtensionsPublisher.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCFileExtensionManager.forceDisplayFilenameExtensionsPublisher.getter();
  return DOCFileExtensionManager.forceDisplayFilenameExtensionsPublisher.modify;
}

uint64_t DOCFileExtensionManager.shouldDisplayExtension(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*v1 + 168))();
  if (v4)
  {
    return 1;
  }

  v7 = v1[4];
  MEMORY[0x28223BE20](v4, v5);
  v16 = a1;
  v8 = *(*v7 + 160);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  v10 = v8(&v19, partial apply for closure #1 in DOCFileExtensionManager.shouldDisplayExtension(for:), &v15, v9);
  v12 = v19;
  if (v19)
  {
    v13 = [v19 BOOLValue];

    return v13;
  }

  else
  {
    v14 = MEMORY[0x28223BE20](v10, v11);
    v16 = a1;
    v17 = v2;
    (*(*v7 + 168))(&v18, partial apply for closure #2 in DOCFileExtensionManager.shouldDisplayExtension(for:), v14);
    return v18;
  }
}

unint64_t closure #1 in DOCFileExtensionManager.shouldDisplayExtension(for:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 8 * result);
    result = v6;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void closure #2 in DOCFileExtensionManager.shouldDisplayExtension(for:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v54 = a3;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v51 - v18;
  UTType.identifier.getter();
  v20._object = 0x8000000249BCE100;
  v20._countAndFlagsBits = 0xD000000000000010;
  v21 = String.hasPrefix(_:)(v20);

  if (v21)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(isa, a2, isUniquelyReferenced_nonNull_native);
    v24 = 0;
LABEL_5:
    *a1 = v56;
    goto LABEL_6;
  }

  v25 = UTType.identifier.getter();
  v27 = String.isFolderUTI.getter(v25, v26);

  if (v27)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v24 = 1;
    v29 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, a2, v30);
    goto LABEL_5;
  }

  v51 = v11;
  v52 = a1;
  v55 = a2;
  v53 = a4;
  v31 = (*(*v54 + 144))(v28);
  v32 = 0;
  v33 = *(v31 + 16);
  while (v33 != v32)
  {
    if (v32 >= *(v31 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    (*(v8 + 16))(v19, v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v32++, v7);
    v34 = UTType.conforms(to:)();
    (*(v8 + 8))(v19, v7);
    if (v34)
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v24 = 1;
      v35 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
      v36 = v52;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v56 = *v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v55, v37);
LABEL_17:
      *v36 = v56;
      a4 = v53;
      goto LABEL_6;
    }
  }

  v39 = (*(*v54 + 120))(v38);
  v40 = 0;
  v41 = *(v39 + 16);
  v42 = v55;
  while (v41 != v40)
  {
    if (v40 >= *(v39 + 16))
    {
      goto LABEL_22;
    }

    (*(v8 + 16))(v15, v39 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v40++, v7);
    v43 = UTType.conforms(to:)();
    (*(v8 + 8))(v15, v7);
    if (v43)
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v44 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
      v36 = v52;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v56 = *v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v42, v45);
      v24 = 0;
      goto LABEL_17;
    }
  }

  v46 = v51;
  static UTType.package.getter();
  v47 = UTType.conforms(to:)();
  (*(v8 + 8))(v46, v7);
  a4 = v53;
  if (v47)
  {
    v24 = 0;
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v24 = 1;
    v48 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    v49 = v52;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *v49;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, v42, v50);
    *v49 = v56;
  }

LABEL_6:
  *a4 = v24;
}

uint64_t DOCFileExtensionManager.deinit()
{

  return v0;
}

uint64_t DOCFileExtensionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *DOCFileExtensionManager.init()()
{
  v0[2] = 0;
  v0[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCThreadSafeStateCyAA016DOCFileExtensionB0C0F033_B1FA4EBED11BE9AB6139AA17EFDBDE03LLVGMd, &_s26DocumentManagerExecutables18DOCThreadSafeStateCyAA016DOCFileExtensionB0C0F033_B1FA4EBED11BE9AB6139AA17EFDBDE03LLVGMR);
  swift_allocObject();
  v0[4] = specialized DOCThreadSafeState.init(_:)(MEMORY[0x277D84F98]);
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static NSUserDefaults.docUserDefaults;
  if (static NSUserDefaults.docUserDefaults)
  {
    v2 = static NSUserDefaults.docUserDefaults;
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v1 = 0;
  }

  v0[5] = v2;
  v0[6] = 0;
  v3 = v1;
  return v0;
}

double DOCFileExtensionManager.with(hideExtensionContentTypes:)(uint64_t a1)
{
  *(v1 + 16) = a1;

  return result;
}

double DOCFileExtensionManager.with(forceExtensionContentTypes:)(uint64_t a1)
{
  *(v1 + 24) = a1;

  return result;
}

id @objc NSUserDefaults.forceDisplayFilenameExtensions.getter(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = a1;
  v7 = MEMORY[0x24C1FAD20](v2, v4);

  v8 = [v5 initWithSuiteName_];

  if (v8)
  {
    v9 = [v8 BOOLForKey_];

    v6 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void *specialized DOCThreadSafeState.init(_:)(uint64_t a1, uint64_t a2)
{
  v15[0] = a2;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v11 - 8, v12);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v16 = 0xD000000000000012;
  v17 = 0x8000000249BCE0E0;
  v15[1] = &type metadata for DOCGridLayout.LayoutCalculator.State;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC5StateVmMd, &_s26DocumentManagerExecutables13DOCGridLayoutV0E10Calculator33_64B015B3B9CCEE316F645BEF44464414LLC5StateVmMR);
  v13 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v13);

  MEMORY[0x24C1FAEA0](0x65756575712ELL, 0xE600000000000000);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v4);
  v2[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v2[3] = a1;
  v2[4] = v15[0];
  return v2;
}

uint64_t specialized DOCThreadSafeState.init(_:)(uint64_t a1)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v10 - 8, v11);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v15 = 0xD000000000000012;
  v16 = 0x8000000249BCE0E0;
  v14[1] = &unk_285C89728;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables016DOCFileExtensionB0C5State33_B1FA4EBED11BE9AB6139AA17EFDBDE03LLVmMd, &_s26DocumentManagerExecutables016DOCFileExtensionB0C5State33_B1FA4EBED11BE9AB6139AA17EFDBDE03LLVmMR);
  v12 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v12);

  MEMORY[0x24C1FAEA0](0x65756575712ELL, 0xE600000000000000);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v3);
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 24) = a1;
  return v1;
}

void *specialized DOCThreadSafeState.init(_:)(uint64_t a1)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v10 - 8, v11);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v16 = 0xD000000000000012;
  v17 = 0x8000000249BCE0E0;
  v15[1] = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBaseC15ThreadSafeState33_C73757633E7D839A94E1E3578A8DC4C3LLVmMd, &_s26DocumentManagerExecutables32_DOCBrowserHistoryDataSourceBaseC15ThreadSafeState33_C73757633E7D839A94E1E3578A8DC4C3LLVmMR);
  v12 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v12);

  MEMORY[0x24C1FAEA0](0x65756575712ELL, 0xE600000000000000);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v3);
  v1[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  outlined init with take of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(a1, v1 + *(*v1 + 96), v13);
  return v1;
}

uint64_t specialized DOCThreadSafeState.init(_:)(unsigned int a1)
{
  v2 = a1;
  HIDWORD(v14) = a1 >> 8;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v10 - 8, v11);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v16 = 0xD000000000000012;
  v17 = 0x8000000249BCE0E0;
  v15 = &type metadata for DOCProcessPlatform.Cache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables18DOCProcessPlatformV5Cache33_A0057727599915ADA50051B1EF7494F3LLVmMd, &_s26DocumentManagerExecutables18DOCProcessPlatformV5Cache33_A0057727599915ADA50051B1EF7494F3LLVmMR);
  v12 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v12);

  MEMORY[0x24C1FAEA0](0x65756575712ELL, 0xE600000000000000);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v3);
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 24) = v2;
  *(v1 + 25) = BYTE4(v14);
  return v1;
}

unint64_t lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<NSUserDefaults, Bool> and conformance NSObject.KeyValueObservingPublisher<A, B>()
{
  result = lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<NSUserDefaults, Bool> and conformance NSObject.KeyValueObservingPublisher<A, B>;
  if (!lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<NSUserDefaults, Bool> and conformance NSObject.KeyValueObservingPublisher<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So14NSUserDefaultsCSbGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So14NSUserDefaultsCSbGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<NSUserDefaults, Bool> and conformance NSObject.KeyValueObservingPublisher<A, B>);
  }

  return result;
}

void specialized NSUserDefaults.forceDisplayFilenameExtensions.setter(char a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = MEMORY[0x24C1FAD20](v2, v4);

  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    [v7 setBool:a1 & 1 forKey:*MEMORY[0x277D05E10]];
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t outlined init with take of _DOCBrowserHistoryDataSourceBase.ThreadSafeState(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for _DOCBrowserHistoryDataSourceBase.ThreadSafeState(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized Sequence.compactMap<A>(_:)(unint64_t a1, unint64_t *a2)
{
  v18 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_32:
  v17 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v4 = 0;
  result = MEMORY[0x277D84F90];
  do
  {
    v15 = result;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v4, a1);
      }

      else
      {
        if (v4 >= *(v17 + 16))
        {
          goto LABEL_29;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (!v4)
      {
        v4 = 1;
        goto LABEL_24;
      }

      v9 = *a2;
      if (*a2 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_30;
        }
      }

      else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {

        v10 = MEMORY[0x24C1FC540](0, v9);
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v10 = *(v9 + 32);
      }

      [v10 frame];
      v12 = v11;
      v14 = v13;

      [v7 frame];
      v19.x = v12;
      v19.y = v14;
      if (!CGRectContainsPoint(v20, v19))
      {
        break;
      }

      ++v4;
      if (v8 == v3)
      {
        return v15;
      }
    }

    ++v4;
LABEL_24:
    MEMORY[0x24C1FB090]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v18;
  }

  while (v4 != v3);
  return result;
}

__C::CGRect __swiftcall UIView.rtlFrameIfNeeded(for:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    MinX = CGRectGetMinX(v13);
    [v1 bounds];
    v7 = MinX - CGRectGetMinX(v14);
    [v1 bounds];
    MaxX = CGRectGetMaxX(v15);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    x = MaxX - (v7 + CGRectGetWidth(v16));
  }

  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

BOOL UIScrollView.isRubberbandingHorizontally.getter()
{
  [v0 contentOffset];
  v2 = v1;
  [v0 adjustedContentInset];
  v4 = v2 < -v3;
  [v0 contentOffset];
  v6 = v5;
  [v0 contentSize];
  v8 = v7;
  [v0 bounds];
  Width = CGRectGetWidth(v12);
  [v0 adjustedContentInset];
  return v8 - Width + v10 < v6 || v4;
}

Swift::Void __swiftcall DOCItemCollectionViewController.didPrepare()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v109 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v13 = v12;
  v106 = v8;
  v107 = v6;
  v108 = v7;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v111.origin.x = v15;
  v111.origin.y = v17;
  v111.size.width = v19;
  v111.size.height = v21;
  Width = CGRectGetWidth(v111);
  v23 = MEMORY[0x277D85000];
  v24 = (*MEMORY[0x277D85000] & *v1) + 2824;
  v25 = *((*MEMORY[0x277D85000] & *v1) + 0xB08);
  v26 = v25();
  swift_beginAccess();
  v27 = *(v26 + 128);

  if (Width == v27)
  {
    v29 = *((*v23 & *v1) + 0x1010);
    v30 = v29(v28);
    [v30 safeAreaInsets];
    v32 = v31;

    v33 = v25();
    swift_beginAccess();
    v34 = *(v33 + 144);

    if (v32 == v34)
    {
      v35 = v29(v28);
      [v35 safeAreaInsets];
      v37 = v36;

      v38 = v25();
      swift_beginAccess();
      v39 = *(v38 + 160);

      v40 = v37 != v39;
    }

    else
    {
      v40 = 1;
    }
  }

  else
  {
    v40 = 1;
  }

  if ((*((*v23 & *v1) + 0xBD8))(v28) == 2)
  {
    v41 = v25();
    swift_beginAccess();
    v42 = *(v41 + 120);

    if (v42)
    {
      goto LABEL_9;
    }

    if (v40)
    {
      v88 = (*((*v23 & *v1) + 0xB20))(v43);
      if (!v88)
      {
LABEL_40:
        __break(1u);
        return;
      }

      v89 = v88;
      [v88 contentOffset];
      v91 = v90;
      [v89 adjustedContentInset];
      v93 = -v92;
      [v89 contentOffset];
      v95 = v94;
      [v89 contentSize];
      v97 = v96;
      [v89 bounds];
      v98 = CGRectGetWidth(v113);
      [v89 adjustedContentInset];
      v100 = v99;

      if (v91 >= v93 && v97 - v98 + v100 >= v95)
      {
LABEL_9:
        v103 = v2;
        v44 = (*v23 & *v1) + 4112;
        v102 = *((*v23 & *v1) + 0x1010);
        v101[1] = v44;
        v45 = (v102)(v43);
        v46 = [v45 visibleCells];

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
        v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        aBlock[0] = MEMORY[0x277D84F90];
        if (v47 >> 62)
        {
LABEL_36:
          v48 = __CocoaSet.count.getter();
        }

        else
        {
          v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v104 = v24;
        v105 = v3;
        v49 = MEMORY[0x277D84F90];
        if (v48)
        {
          v50 = 0;
          v24 = v47 & 0xC000000000000001;
          do
          {
            v3 = v50;
            while (1)
            {
              if (v24)
              {
                v51 = MEMORY[0x24C1FC540](v3, v47);
              }

              else
              {
                if (v3 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_35;
                }

                v51 = *(v47 + 8 * v3 + 32);
              }

              v52 = v51;
              v50 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                __break(1u);
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

              type metadata accessor for DOCItemCollectionOutlineCell();
              if (swift_dynamicCastClass())
              {
                break;
              }

              ++v3;
              if (v50 == v48)
              {
                goto LABEL_25;
              }
            }

            MEMORY[0x24C1FB090]();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v49 = aBlock[0];
          }

          while (v50 != v48);
        }

LABEL_25:

        if (v49 >> 62)
        {
          v53 = __CocoaSet.count.getter();
        }

        else
        {
          v53 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v54 = v105;

        v56 = (v25)(v55);
        swift_beginAccess();
        *(v56 + 120) = v53 == 0;

        v58 = (v25)(v57);
        v59 = [v1 view];
        if (v59)
        {
          v60 = v59;
          [v59 bounds];
          v62 = v61;
          v64 = v63;
          v66 = v65;
          v68 = v67;

          v112.origin.x = v62;
          v112.origin.y = v64;
          v112.size.width = v66;
          v112.size.height = v68;
          v69 = CGRectGetWidth(v112);
          swift_beginAccess();
          *(v58 + 128) = v69;

          v71 = (v25)(v70);
          v72 = v102();
          [v72 safeAreaInsets];
          v74 = v73;
          v76 = v75;
          v78 = v77;
          v80 = v79;

          swift_beginAccess();
          v71[17] = v74;
          v71[18] = v76;
          v71[19] = v78;
          v71[20] = v80;

          DOCItemCollectionViewController.resize(_:forceLayout:)(0, 1, 0);
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v81 = static OS_dispatch_queue.main.getter();
          v82 = swift_allocObject();
          *(v82 + 16) = v1;
          aBlock[4] = partial apply for closure #2 in DOCItemCollectionViewController.didPrepare();
          aBlock[5] = v82;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          aBlock[3] = &block_descriptor_13;
          v83 = _Block_copy(aBlock);
          v84 = v1;

          v85 = v109;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v86 = v107;
          v87 = v103;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x24C1FB9A0](0, v85, v86, v83);
          _Block_release(v83);

          (*(v54 + 8))(v86, v87);
          (*(v106 + 8))(v85, v108);
          return;
        }

        goto LABEL_39;
      }
    }
  }
}

void DOCItemCollectionViewController.resize(_:forceLayout:)(unint64_t a1, char a2, char a3)
{
  v12 = MEMORY[0x277D85000];
  if (a3)
  {
    v13 = (*((*MEMORY[0x277D85000] & *v167) + 0x1010))();
    [v13 layoutIfNeeded];

    v3 = v167;
  }

  v163 = *((*v12 & *v3) + 0x1010);
  v14 = v163();
  v15 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  v16 = [v14 visibleCells];

  v17 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v159 = a3;
  if (v18 >> 62)
  {
    goto LABEL_45;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    *&v182 = MEMORY[0x277D84F90];
    v21 = &v182;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      goto LABEL_194;
    }

    v23 = 0;
    v24 = v182;
    v6 = v18 & 0xC000000000000001;
    do
    {
      if (v6)
      {
        v25 = MEMORY[0x24C1FC540](v23, v18);
      }

      else
      {
        v25 = *(v18 + 8 * v23 + 32);
      }

      v4 = v25;
      [v25 invalidateIntrinsicContentSize];

      *&v182 = v24;
      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v5 = (v27 + 1);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v24 = v182;
      }

      ++v23;
      *(v24 + 16) = v5;
    }

    while (v19 != v23);

    v15 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
  }

  else
  {
  }

  v29 = (v163)(v28);
  v16 = [v29 v15[507]];

  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *&v182 = v20;
  v15 = (v17 & 0xFFFFFFFFFFFFFF8);
  if (v17 >> 62)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v5 = 0;
  v4 = (v17 & 0xC000000000000001);
  v18 = MEMORY[0x277D84F90];
  do
  {
    v30 = v5;
    while (1)
    {
      if (v4)
      {
        v31 = MEMORY[0x24C1FC540](v30, v17);
      }

      else
      {
        if (v30 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v31 = *(v17 + 8 * v30 + 32);
      }

      v16 = v31;
      v5 = (v30 + 1);
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v19 = __CocoaSet.count.getter();
        goto LABEL_5;
      }

      type metadata accessor for DOCItemCollectionOutlineCell();
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        break;
      }

      v30 = (v30 + 1);
      if (v5 == v19)
      {
        goto LABEL_34;
      }
    }

    v16 = v32;
    MEMORY[0x24C1FB090]();
    if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v182 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v18 = v182;
  }

  while (v5 != v19);
LABEL_34:

  if (v18 >> 62)
  {
    v16 = __CocoaSet.count.getter();
    if (!v16)
    {
      goto LABEL_48;
    }

LABEL_36:
    *&v182 = v20;
    v21 = &v182;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v33 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x24C1FC540](v33, v18);
        }

        else
        {
          v34 = *(v18 + 8 * v33 + 32);
        }

        v35 = v34;
        ++v33;
        v36 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
        swift_beginAccess();
        *&v35[v36];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v16 != v33);

      v37 = v182;
      goto LABEL_49;
    }

LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v16 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
    goto LABEL_36;
  }

LABEL_48:

  v37 = MEMORY[0x277D84F90];
LABEL_49:
  v5 = (v37 >> 62);
  if (v37 >> 62)
  {
    goto LABEL_192;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    if (v38 <= 0)
    {
      goto LABEL_181;
    }

    v39 = DOCItemCollectionViewController.headerRowView()();
    v166 = v37;
    if (!v39)
    {
      v49 = 0;
      v4 = MEMORY[0x277D84F90];
      if (!v5)
      {
        goto LABEL_65;
      }

      goto LABEL_69;
    }

    v21 = v39;
    v16 = MEMORY[0x277D84F90];
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = v4[2];
    v22 = v4[3];
    v17 = v19 + 1;
    if (v19 >= v22 >> 1)
    {
LABEL_195:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v17, 1, v4);
    }

    v4[2] = v17;
    v40 = (v4 + 4);
    v4[v19 + 4] = v16;
    v41 = MEMORY[0x277D85000];
    v42 = *((*((*MEMORY[0x277D85000] & *v21) + 0x1A8))() + 16);

    if (v42)
    {
      v174 = v5;
      v43 = *((*v41 & *v21) + 0x420);
      v43(&v182, 0);
      if (v4[2])
      {
        v6 = v4;
        v44 = 1;
        while (1)
        {
          v45 = *v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v40 = v45;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45[2] + 1, 1, v45);
            *v40 = v45;
          }

          v48 = v45[2];
          v47 = v45[3];
          if (v48 >= v47 >> 1)
          {
            v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v45);
            *v40 = v45;
          }

          v45[2] = v48 + 1;
          outlined init with take of DOCGoToFolderCandidate(&v182, &v45[5 * v48 + 4]);
          if (v42 == v44)
          {
            break;
          }

          v43(&v182, v44++);
          if (!v4[2])
          {
            goto LABEL_186;
          }
        }

        v49 = 1;
        v20 = MEMORY[0x277D84F90];
        if (!v174)
        {
LABEL_65:
          v5 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v5)
          {
LABEL_90:
            v62 = [v167 view];
            if (!v62)
            {
              goto LABEL_205;
            }

            v63 = v62;
            [v62 frame];

            v64 = [v167 view];
            if (!v64)
            {
              goto LABEL_206;
            }

            v65 = v64;
            [v64 bounds];
            v67 = v66;
            v69 = v68;
            v71 = v70;
            v73 = v72;

            v186.origin.x = v67;
            v186.origin.y = v69;
            v186.size.width = v71;
            v186.size.height = v73;
            Width = CGRectGetWidth(v186);
            v74 = v163();
            [v74 safeAreaInsets];
            v8 = v75;

            v76 = v163();
            [v76 safeAreaInsets];
            v9 = v77;

            v37 = *((*MEMORY[0x277D85000] & *v167) + 0xB08);
            v78 = (v37)();
            swift_beginAccess();
            v79 = *(v78 + 104);

            v10 = *(v79 + 16);

            v81 = v4[2];
            v82 = MEMORY[0x277D84F90];
            v164 = v4;
            v160 = v37;
            if (v81)
            {
              v178 = MEMORY[0x277D84F90];
              v165 = v4[2];
              v80 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81, 0);
              v83 = v165;
              v84 = 0;
              v6 = v178;
              v169 = v4 + 4;
              v20 = &v182;
              v5 = v179;
              while (v84 < v4[2])
              {
                v85 = v169[v84];
                v86 = *(v85 + 16);
                if (v86)
                {
                  v170 = v84;
                  v173 = v6;

                  v87 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86, 0);
                  v176 = v85;
                  v88 = *(v85 + 16);
                  if (!v88)
                  {
                    goto LABEL_182;
                  }

                  v89 = v82;
                  outlined init with copy of DOCSidebarItemIconProvider(v85 + 32, &v182 + 8);
                  *&v179[0] = 0;
                  outlined init with take of DOCGoToFolderCandidate((&v182 + 8), v179 + 8);
                  v90 = 0.0;
                  if (!(a2 & 1 | (a1 != 0)))
                  {
                    v91 = v180;
                    v92 = v181;
                    __swift_project_boxed_opaque_existential_1(v179 + 1, v180);
                    v90 = (*(v92 + 24))(v91, v92);
                  }

                  v87 = outlined destroy of (offset: Int, element: ViewSizable)(v179);
                  v94 = *(v82 + 16);
                  v93 = *(v82 + 24);
                  if (v94 >= v93 >> 1)
                  {
                    v87 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1);
                    v89 = v82;
                  }

                  *(v89 + 16) = v94 + 1;
                  *(v89 + 8 * v94 + 32) = v90;
                  if (v86 != 1)
                  {
                    v96 = v176 + 72;
                    v97 = 1;
                    while (v88 != v97)
                    {
                      outlined init with copy of DOCSidebarItemIconProvider(v96, &v182 + 8);
                      *&v179[0] = v97;
                      outlined init with take of DOCGoToFolderCandidate((&v182 + 8), v179 + 8);
                      v99 = v180;
                      v98 = v181;
                      __swift_project_boxed_opaque_existential_1(v179 + 1, v180);
                      DOCGridLayout.specIconWidth.modify();
                      v100 = (*(v98 + 16))(v99, v98);
                      if (v100 > 80.0)
                      {
                        v101 = v100;
                      }

                      else
                      {
                        v101 = 80.0;
                      }

                      v87 = outlined destroy of (offset: Int, element: ViewSizable)(v179);
                      v103 = *(v89 + 16);
                      v102 = *(v89 + 24);
                      if (v103 >= v102 >> 1)
                      {
                        v87 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1);
                      }

                      ++v97;
                      *(v89 + 16) = v103 + 1;
                      *(v89 + 8 * v103 + 32) = v101;
                      v96 += 40;
                      if (v86 == v97)
                      {
                        goto LABEL_102;
                      }
                    }

LABEL_182:
                    __break(1u);
                    goto LABEL_183;
                  }

LABEL_102:

                  v4 = v164;
                  v83 = v165;
                  v84 = v170;
                  v6 = v173;
                  v82 = MEMORY[0x277D84F90];
                }

                else
                {
                  v89 = v82;
                }

                v37 = *(v6 + 16);
                v95 = *(v6 + 24);
                if (v37 >= v95 >> 1)
                {
                  v104 = v84;
                  v80 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v37 + 1, 1);
                  v84 = v104;
                  v83 = v165;
                }

                ++v84;
                *(v6 + 16) = v37 + 1;
                *(v6 + 8 * v37 + 32) = v89;
                if (v84 == v83)
                {
                  v37 = v160;
                  goto LABEL_118;
                }
              }

LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              v38 = __CocoaSet.count.getter();
              continue;
            }

            v6 = MEMORY[0x277D84F90];
LABEL_118:
            v105 = (v37)(v80);
            swift_beginAccess();
            v106 = *(v105 + 104);

            v107 = *(v106 + 16);
            if (v107)
            {
              *&v182 = v82;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107, 0);
              v20 = v182;
              v108 = *(v182 + 16);
              do
              {
                *&v182 = v20;
                v109 = *(v20 + 3);
                if (v108 >= v109 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v108 + 1, 1);
                  v20 = v182;
                }

                *(v20 + 2) = v108 + 1;
                *&v20[8 * v108++ + 32] = 0;
                --v107;
              }

              while (v107);

              v111 = *(v6 + 16);
              if (v111)
              {
                goto LABEL_124;
              }

LABEL_147:
              __break(1u);
              goto LABEL_148;
            }

LABEL_146:

            v20 = MEMORY[0x277D84F90];
            v111 = *(v6 + 16);
            if (!v111)
            {
              goto LABEL_147;
            }

LABEL_124:
            if (*(v6 + 16))
            {
              v37 = 0;
              v5 = &v182;
              Width = Width - v8 - v9 + -24.0 + -20.0 + v10 * -4.0 + -20.0;
              v112 = v111 - 1;
              v113 = v6 + 32;
              while (1)
              {
                v114 = *(*(v113 + 8 * v37) + 16);
                if (!v114)
                {
                  break;
                }

                v17 = -v114;
                v115 = 4;
                do
                {
                  v116 = v115 - 4;
                  v111 = *(v20 + 2);
                  if (v115 - 4 < v111)
                  {
                    v117 = *(v113 + 8 * v37);
                    if (v116 >= *(v117 + 16))
                    {
                      __break(1u);
LABEL_155:
                      __break(1u);
                      goto LABEL_156;
                    }

                    if (*(v117 + 8 * v115) > *&v20[8 * v115])
                    {
                      v8 = *(v117 + 8 * v115);
                    }

                    else
                    {
                      v8 = *&v20[8 * v115];
                    }

                    v110 = swift_isUniquelyReferenced_nonNull_native();
                    if ((v110 & 1) == 0)
                    {
                      v110 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
                      v20 = v110;
                    }

                    v111 = *(v20 + 2);
                    if (v116 >= v111)
                    {
                      goto LABEL_155;
                    }

                    *&v20[8 * v115] = v8;
                  }

                  ++v115;
                }

                while (v17 + v115 != 4);
                if (v37 == v112)
                {
                  goto LABEL_141;
                }

                ++v37;
                v111 = *(v6 + 16);
                if (v37 >= v111)
                {
                  goto LABEL_140;
                }
              }

              __break(1u);
              goto LABEL_189;
            }

LABEL_140:
            __break(1u);
LABEL_141:
            if ((a2 & 1) == 0)
            {
LABEL_148:
              v120 = (v160)(v110);
              swift_beginAccess();
              v17 = *(v120 + 88);

              if ((a1 & 0x8000000000000000) != 0)
              {
                goto LABEL_197;
              }

              if (*(v20 + 2) <= a1)
              {
                goto LABEL_198;
              }

              Width = *&v20[8 * a1 + 32];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                goto LABEL_199;
              }

              goto LABEL_151;
            }

            if (v111)
            {
              if (v111 <= 3)
              {
                v118 = 0;
                v119 = 0.0;
                goto LABEL_162;
              }

              v118 = v111 & 0x7FFFFFFFFFFFFFFCLL;
              v128 = (v20 + 48);
              v119 = 0.0;
              v129 = v111 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v119 = v119 + *(v128 - 2) + *(v128 - 1) + *v128 + v128[1];
                v128 += 4;
                v129 -= 4;
              }

              while (v129);
              if (v111 != v118)
              {
LABEL_162:
                v130 = v111 - v118;
                v131 = &v20[8 * v118 + 32];
                do
                {
                  v132 = *v131++;
                  v119 = v119 + v132;
                  --v130;
                }

                while (v130);
              }
            }

            else
            {
              v119 = 0.0;
            }

            v8 = Width - v119;
            DOCItemCollectionViewController.minimumSize(for:proposedWidth:useMax:)(0, 0, 1000.0);
            Width = v133;
            v134 = swift_isUniquelyReferenced_nonNull_native();
            if (Width < v8)
            {
              if (v134)
              {
                if (*(v20 + 2))
                {
                  goto LABEL_167;
                }

LABEL_202:
                __break(1u);
LABEL_203:
                v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
                if (!*(v20 + 2))
                {
                  goto LABEL_204;
                }

LABEL_170:
                *(v20 + 4) = Width;
LABEL_171:
                v136 = v160();
                swift_beginAccess();
                v137 = *(v136 + 80);
                v122 = *(v136 + 88);
                v6 = *(v136 + 96);
                v177 = *(v136 + 104);

                if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(v20, v122))
                {
                  v124 = v137;
                }

                else
                {

                  OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v177, *(&v177 + 1), v137, v20, v6, &v182);

                  v124 = v182;
                  v122 = *(&v182 + 1);
                  v6 = v183;
                  v177 = *(v5 + 24);
                }

                v125 = v167;
                v126 = v160;
                v127 = v160();
                goto LABEL_175;
              }

LABEL_201:
              v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
              if (!*(v20 + 2))
              {
                goto LABEL_202;
              }

LABEL_167:
              *(v20 + 4) = v8;
              v135 = v163();
              [v135 setDirectionalLockEnabled_];

              goto LABEL_171;
            }

            if ((v134 & 1) == 0)
            {
              goto LABEL_203;
            }

            if (*(v20 + 2))
            {
              goto LABEL_170;
            }

LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
            goto LABEL_208;
          }

LABEL_70:
          v37 = 0;
          v168 = v5;
          while (1)
          {
            if ((v166 & 0xC000000000000001) != 0)
            {
              v50 = MEMORY[0x24C1FC540](v37, v166);
            }

            else
            {
              if (v37 >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_191;
              }

              v50 = *(v166 + 32 + 8 * v37);
            }

            v51 = v50;
            v171 = v37;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
            }

            v53 = v4[2];
            v52 = v4[3];
            if (v53 >= v52 >> 1)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v4);
            }

            v4[2] = v53 + 1;
            v54 = v4 + 4;
            v4[v53 + 4] = v20;
            v37 = MEMORY[0x277D85000];
            v55 = *((*((*MEMORY[0x277D85000] & *v51) + 0x1A8))() + 16);

            v175 = v55;
            if (!v55)
            {
              goto LABEL_190;
            }

            v5 = *((*v37 & *v51) + 0x420);
            (v5)(&v182, 0);
            outlined init with copy of DOCSidebarItemIconProvider(&v182, v179);
            if (v49 >= v4[2])
            {
LABEL_145:
              __break(1u);
              goto LABEL_146;
            }

            v6 = v4;
            v172 = (v171 + 1);
            v56 = 1;
            while (1)
            {
              v57 = v54[v49];
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v54[v49] = v57;
              if ((v58 & 1) == 0)
              {
                v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
                v54[v49] = v57;
              }

              v60 = v57[2];
              v59 = v57[3];
              if (v60 >= v59 >> 1)
              {
                v54[v49] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v57);
              }

              __swift_destroy_boxed_opaque_existential_0(&v182);
              v61 = v54[v49];
              *(v61 + 16) = v60 + 1;
              outlined init with take of DOCGoToFolderCandidate(v179, v61 + 40 * v60 + 32);
              if (v175 == v56)
              {
                break;
              }

              (v5)(&v182, v56);
              outlined init with copy of DOCSidebarItemIconProvider(&v182, v179);
              ++v56;
              if (v49 >= v4[2])
              {
                goto LABEL_145;
              }
            }

            ++v49;
            v5 = v168;
            v37 = v172;
            v20 = MEMORY[0x277D84F90];
            if (v172 == v168)
            {
              goto LABEL_90;
            }
          }
        }

LABEL_69:
        v5 = __CocoaSet.count.getter();
        if (!v5)
        {
          goto LABEL_90;
        }

        goto LABEL_70;
      }

LABEL_186:
      __break(1u);
LABEL_180:

LABEL_181:

      return;
    }

    break;
  }

  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
LABEL_151:
  if (*(v17 + 16) <= a1)
  {
    __break(1u);
    goto LABEL_201;
  }

  *(v17 + 8 * a1 + 32) = Width;
  v121 = v160();
  swift_beginAccess();
  LODWORD(v115) = *(v121 + 80);
  v122 = *(v121 + 88);
  v6 = *(v121 + 96);
  v177 = *(v121 + 104);

  v112 = v177;

  v113 = *(&v177 + 1);

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(v17, v122))
  {

    v124 = v115;
  }

  else
  {
LABEL_156:

    OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v112, v113, v115, v17, v6, &v182);

    v124 = v182;
    v122 = *(&v182 + 1);
    v6 = v183;
    v177 = *(v5 + 24);
  }

  v125 = v167;
  v126 = v160;
  v127 = (v160)(v123);
LABEL_175:
  swift_beginAccess();
  *(v127 + 80) = v124;
  *(v127 + 88) = v122;
  *(v127 + 96) = v6;
  *(v127 + 104) = v177;

  DOCItemCollectionViewController.updateScrollWidth()();
  v138 = (*((*MEMORY[0x277D85000] & *v125) + 0xFC8))();
  v139 = v126();
  swift_beginAccess();
  v140 = *(v139 + 80);
  v141 = *(v139 + 88);
  v142 = *(v139 + 96);
  v143 = *(v139 + 104);
  v144 = *(v139 + 112);

  LOBYTE(v182) = v140;
  *(&v182 + 1) = v141;
  v183 = v142;
  v184 = v143;
  v185 = v144;
  DOCCollectionViewCompositionalLayout.setOutlineColumnData(_:)(&v182);

  DOCItemCollectionViewController.resetButtons()();
  if ((a2 & 1) == 0)
  {
    goto LABEL_180;
  }

  v86 = &selRef_setNavigationTitleForTagListInInfoPanel_;
  if ((v159 & 1) == 0)
  {
    goto LABEL_180;
  }

  v145 = [v167 view];
  if (!v145)
  {
    goto LABEL_207;
  }

  v146 = v145;
  v147 = [v145 effectiveUserInterfaceLayoutDirection];

  if (v147 != 1)
  {
    goto LABEL_180;
  }

  v148 = v160();
  swift_beginAccess();
  v149 = *(v148 + 208);

  if (v149)
  {
    goto LABEL_180;
  }

LABEL_183:
  v150 = (*((*MEMORY[0x277D85000] & *v167) + 0xB20))(v87);
  if (!v150)
  {
    goto LABEL_180;
  }

  v151 = v150;
  v152 = v160();
  swift_beginAccess();
  *(v152 + 208) = 1;

  v153 = [v167 v86[353]];
  if (v153)
  {
    v154 = v153;

    [v154 layoutIfNeeded];

    v155 = v160();
    swift_beginAccess();
    *(v155 + 208) = 0;

    [v151 contentSize];
    v157 = v156;
    [v151 bounds];
    v158 = v157 - CGRectGetWidth(v187);
    [v151 contentOffset];
    [v151 setContentOffset:0 animated:v158];

    return;
  }

LABEL_208:
  __break(1u);
}

Swift::Void __swiftcall DOCItemCollectionViewController.checkIfOutlineModeNeedsChange()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xBD8))() == 2)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 horizontalSizeClass];

    v5 = (*v2 & *v1) + 2824;
    v6 = *((*v2 & *v1) + 0xB08);
    v7 = v6();
    if (v4 == 1)
    {
      swift_beginAccess();
      *(v7 + 168) = 0;

      v75 = v5;
      v9 = (v6)(v8);
      swift_beginAccess();
      v10 = *(v9 + 80);
      v76 = *(v9 + 88);
      v11 = *(v9 + 104);
      v12 = *(v9 + 112);
      v13 = v76;

      v14 = *(&v76 + 1);

      if (v10)
      {
        v15 = v11;
      }

      else
      {
        v72 = v6;
        v73 = v1;
        v31 = *(v11 + 16);
        v71 = v76;

        v70 = *(&v76 + 1);

        if (v31)
        {
          v34 = 0;
          v35 = v11 + 32;
          *&v77 = v31;
          v69 = v31 - 1;
          v74 = MEMORY[0x277D84F90];
          do
          {
            v36 = v34;
            while (1)
            {
              if (v36 >= *(v11 + 16))
              {
                __break(1u);
                goto LABEL_39;
              }

              v37 = v11;
              v34 = v36 + 1;
              *v86 = *(v35 + 16 * v36);
              *&v38 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v33);
              v39 = v12;
              v68[2] = v86;
              v40 = v38;
              v42 = v41;
              outlined copy of ColumnType(v38, v41);
              if (specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say26DocumentManagerExecutables10ColumnTypeOG_TG5TA_0, v68, v12))
              {
                break;
              }

              isUniquelyReferenced_nonNull_native = outlined consume of ColumnType(v40, v42);
              ++v36;
              v11 = v37;
              if (v77 == v34)
              {
                goto LABEL_30;
              }
            }

            v43 = v74;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v82 = v43;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 16) + 1, 1);
              v43 = v82;
            }

            v45 = *(v43 + 16);
            v44 = *(v43 + 24);
            v46 = v45 + 1;
            if (v45 >= v44 >> 1)
            {
              v74 = v45 + 1;
              isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v46, 1);
              v46 = v74;
              v43 = v82;
            }

            *(v43 + 16) = v46;
            v74 = v43;
            v47 = v43 + 16 * v45;
            *(v47 + 32) = v40;
            *(v47 + 40) = v42;
            v12 = v39;
            v11 = v37;
          }

          while (v69 != v36);
        }

        else
        {
          v74 = MEMORY[0x277D84F90];
        }

LABEL_30:
        if (one-time initialization token for cachedVisibleColumns != -1)
        {
LABEL_39:
          swift_once();
        }

        v14 = v70;

        v13 = v71;

        v1 = v73;
        v6 = v72;
        v15 = v74;
      }

      v54 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(&outlined read-only object #0 of DOCItemCollectionViewController.checkIfOutlineModeNeedsChange(), v15);
      v55 = MEMORY[0x277D85000];
      if (v54)
      {
        outlined destroy of ColumnType(&unk_285C803B8);
        v56 = 1;
        v57 = v76;
      }

      else
      {

        OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(&outlined read-only object #0 of DOCItemCollectionViewController.checkIfOutlineModeNeedsChange(), v12, 1, v13, v14, &v82);

        v56 = v82;
        v57 = v83;
        v15 = v84;
        v12 = v85;
      }

      v78[0] = v56;
      v79 = v57;
      v80 = v15;
      v81 = v12;
      OutlineColumnData.withResetSizes()(v86);

      v59 = v86[0];
      v77 = *&v86[8];
      v76 = v87;
      v60 = (v6)(v58);
      swift_beginAccess();
      *(v60 + 80) = v59;
      *(v60 + 88) = v77;
      *(v60 + 104) = v76;

      v52 = (*((*v55 & *v1) + 0xFC8))(v61);
      v53 = v6();
    }

    else
    {
      swift_beginAccess();
      v16 = *(v7 + 80);

      if (v16 != 1)
      {
        return;
      }

      (*((*v2 & *v1) + 0x1160))(v86, v17);
      if (*&v86[8])
      {
        v18 = v86[0];
      }

      else
      {
        v18 = 2;
      }

      outlined consume of DOCItemSortDescriptor?(*v86, *&v86[8], *&v86[16]);
      v86[0] = v18;
      v19 = specialized static OutlineColumnData.fetchVisibleColumnTypes(defaultSortMode:)(v86);
      v20 = v6;
      v21 = v19;
      v22 = v1;
      v23 = v20;
      v24 = v20();
      swift_beginAccess();
      v25 = *(v24 + 80);
      v26 = *(v24 + 88);
      v27 = *(v24 + 96);
      v28 = *(v24 + 104);
      v29 = *(v24 + 112);

      if (v25 == 1)
      {

        OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v28, v29, 0, v26, v27, v86);

        v30 = v86[0];
        v26 = *&v86[8];
        v27 = *&v86[16];
        v29 = *(&v87 + 1);
        v28 = v87;
      }

      else
      {
        v30 = 0;
      }

      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v21, v28))
      {
      }

      else
      {

        OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v21, v29, v30, v26, v27, &v82);

        LOBYTE(v30) = v82;
        v27 = *(&v83 + 1);
        v26 = v83;
        v28 = v84;
        v29 = v85;
      }

      v78[0] = v30;
      *&v79 = v26;
      *(&v79 + 1) = v27;
      v80 = v28;
      v81 = v29;
      OutlineColumnData.withResetSizes()(v86);

      v49 = v86[0];
      v77 = *&v86[8];
      v76 = v87;
      v50 = (v23)(v48);
      swift_beginAccess();
      *(v50 + 80) = v49;
      *(v50 + 88) = v77;
      *(v50 + 104) = v76;

      v52 = (*((*MEMORY[0x277D85000] & *v22) + 0xFC8))(v51);
      v53 = v23();
    }

    v62 = v53;
    swift_beginAccess();
    v63 = *(v62 + 80);
    v64 = *(v62 + 88);
    v65 = *(v62 + 96);
    v66 = *(v62 + 104);
    v67 = *(v62 + 112);

    v86[0] = v63;
    *&v86[8] = v64;
    *&v86[16] = v65;
    *&v87 = v66;
    *(&v87 + 1) = v67;
    DOCCollectionViewCompositionalLayout.setOutlineColumnData(_:)(v86);

    DOCItemCollectionViewController.resize(_:forceLayout:)(0, 1, 0);
  }
}

Swift::Void __swiftcall DOCItemCollectionViewController.updateOutlineColumnsForCurrentSource()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xA68))();
  v3 = [v2 identifier];

  IsICloud = DOCDocumentSourceIdentifierIsICloud(v3);
  v5 = *((*v1 & *v0) + 0xB08);
  v6 = v5();
  v5();
  swift_beginAccess();

  OutlineColumnData.withUpdatedAvailableColumnTypesForSource(isICloudSource:)(IsICloud, v9);

  v7 = v9[0];
  swift_beginAccess();
  *(v6 + 80) = v7;
  v8 = v11;
  *(v6 + 88) = v10;
  *(v6 + 104) = v8;
}

uint64_t DOCItemCollectionViewController.deleteColumn(columnType:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v42 = *((*MEMORY[0x277D85000] & *v1) + 0xB08);
  v4 = v42();
  swift_beginAccess();
  v5 = *(v4 + 104);

  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v5 + 32;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v8 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      v13 = *(v9 + 16 * v8);
      v14 = *(v9 + 16 * v8 + 8);
      if (v14 > 3)
      {
        break;
      }

      if (v14 > 1)
      {
        if (v14 == 2)
        {
          if (v3 != 2)
          {
            v45 = *(v9 + 16 * v8);
            outlined copy of ColumnType(v2, v3);
            v15 = 2;
            goto LABEL_44;
          }

          outlined consume of ColumnType(*(v9 + 16 * v8), 2uLL);
          v11 = v2;
          v12 = 2;
        }

        else
        {
          if (v3 != 3)
          {
            v45 = *(v9 + 16 * v8);
            outlined copy of ColumnType(v2, v3);
            v15 = 3;
LABEL_44:
            outlined consume of ColumnType(v45, v15);
            outlined consume of ColumnType(v2, v3);
LABEL_45:
            result = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v10;
            if ((result & 1) == 0)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
              v10 = aBlock;
            }

            v17 = v45;
            v19 = *(v10 + 16);
            v18 = *(v10 + 24);
            if (v19 >= v18 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
              v17 = v45;
              v10 = aBlock;
            }

            *(v10 + 16) = v19 + 1;
            *(v10 + 16 * v19 + 32) = v17;
            goto LABEL_5;
          }

          outlined consume of ColumnType(*(v9 + 16 * v8), 3uLL);
          v11 = v2;
          v12 = 3;
        }
      }

      else
      {
        if (v14)
        {
          if (v14 == 1)
          {
            if (v3 != 1)
            {
              v45 = *(v9 + 16 * v8);
              outlined copy of ColumnType(v2, v3);
              v15 = 1;
              goto LABEL_44;
            }

            outlined consume of ColumnType(*(v9 + 16 * v8), 1uLL);
            v11 = v2;
            v12 = 1;
            goto LABEL_4;
          }

          goto LABEL_35;
        }

        if (v3)
        {
          v45 = *(v9 + 16 * v8);
          outlined copy of ColumnType(v2, v3);
          v15 = 0;
          goto LABEL_44;
        }

        outlined consume of ColumnType(*(v9 + 16 * v8), 0);
        v11 = v2;
        v12 = 0;
      }

LABEL_4:
      result = outlined consume of ColumnType(v11, v12);
LABEL_5:
      if (v7 == ++v8)
      {
        goto LABEL_57;
      }
    }

    if (v14 <= 5)
    {
      if (v14 == 4)
      {
        if (v3 != 4)
        {
          v45 = *(v9 + 16 * v8);
          outlined copy of ColumnType(v2, v3);
          v15 = 4;
          goto LABEL_44;
        }

        outlined consume of ColumnType(*(v9 + 16 * v8), 4uLL);
        v11 = v2;
        v12 = 4;
      }

      else
      {
        if (v3 != 5)
        {
          v45 = *(v9 + 16 * v8);
          outlined copy of ColumnType(v2, v3);
          v15 = 5;
          goto LABEL_44;
        }

        outlined consume of ColumnType(*(v9 + 16 * v8), 5uLL);
        v11 = v2;
        v12 = 5;
      }

      goto LABEL_4;
    }

    switch(v14)
    {
      case 6:
        if (v3 != 6)
        {
          v45 = *(v9 + 16 * v8);
          outlined copy of ColumnType(v2, v3);
          v15 = 6;
          goto LABEL_44;
        }

        outlined consume of ColumnType(*(v9 + 16 * v8), 6uLL);
        v11 = v2;
        v12 = 6;
        goto LABEL_4;
      case 7:
        if (v3 != 7)
        {
          v45 = *(v9 + 16 * v8);
          outlined copy of ColumnType(v2, v3);
          v15 = 7;
          goto LABEL_44;
        }

        outlined consume of ColumnType(*(v9 + 16 * v8), 7uLL);
        v11 = v2;
        v12 = 7;
        goto LABEL_4;
      case 8:
        if (v3 != 8)
        {
          v45 = *(v9 + 16 * v8);
          outlined copy of ColumnType(v2, v3);
          v15 = 8;
          goto LABEL_44;
        }

        outlined consume of ColumnType(*(v9 + 16 * v8), 8uLL);
        v11 = v2;
        v12 = 8;
        goto LABEL_4;
    }

LABEL_35:
    v16 = *(v9 + 16 * v8);
    if (v3 < 9)
    {
      v45 = *(v9 + 16 * v8);
      outlined copy of ColumnType(v13, v14);
      outlined copy of ColumnType(v2, v3);
      outlined copy of ColumnType(v16, v14);
      v15 = v14;
      goto LABEL_44;
    }

    if (v13 == v2 && v14 == v3)
    {
      outlined copy of ColumnType(v2, v3);
      outlined copy of ColumnType(v2, v3);
      outlined consume of ColumnType(v2, v3);
      v11 = v2;
      v12 = v3;
    }

    else
    {
      v45 = *(v9 + 16 * v8);
      v20 = *(v9 + 16 * v8 + 8);
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of ColumnType(v16, v20);
      outlined copy of ColumnType(v2, v3);
      outlined copy of ColumnType(v16, v20);
      outlined consume of ColumnType(v16, v20);
      outlined consume of ColumnType(v2, v3);
      if ((v21 & 1) == 0)
      {
        goto LABEL_45;
      }

      v11 = v16;
      v12 = v20;
    }

    goto LABEL_4;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_57:

  v23 = (v42)(v22);
  swift_beginAccess();
  v24 = *(v23 + 80);
  v44 = *(v23 + 88);
  v46 = *(v23 + 104);
  v25 = *(v23 + 88);

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v10, v46))
  {
  }

  else
  {

    OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v10, *(&v46 + 1), v24, v25, *(&v44 + 1), &aBlock);

    LOBYTE(v24) = aBlock;
    v44 = v48;
    v46 = v49;
  }

  v27 = (v42)(v26);
  swift_beginAccess();
  *(v27 + 80) = v24;
  *(v27 + 88) = v44;
  *(v27 + 104) = v46;

  v29 = (*((*MEMORY[0x277D85000] & *v43) + 0xFC8))(v28);
  v30 = v42();
  swift_beginAccess();
  v31 = *(v30 + 80);
  v32 = *(v30 + 88);
  v33 = *(v30 + 96);
  v34 = *(v30 + 104);
  v35 = *(v30 + 112);

  LOBYTE(aBlock) = v31;
  *&v48 = v32;
  *(&v48 + 1) = v33;
  *&v49 = v34;
  *(&v49 + 1) = v35;
  DOCCollectionViewCompositionalLayout.setOutlineColumnData(_:)(&aBlock);

  v36 = objc_opt_self();
  v37 = swift_allocObject();
  *(v37 + 16) = v43;
  v38 = swift_allocObject();
  *(v38 + 16) = partial apply for closure #2 in DOCItemCollectionViewController.deleteColumn(columnType:);
  *(v38 + 24) = v37;
  *(&v49 + 1) = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v50 = v38;
  aBlock = MEMORY[0x277D85DD0];
  *&v48 = 1107296256;
  *(&v48 + 1) = thunk for @escaping @callee_guaranteed () -> ();
  *&v49 = &block_descriptor_9_1;
  v39 = _Block_copy(&aBlock);
  v40 = v43;

  [v36 performWithoutAnimation_];
  _Block_release(v39);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_63:
    __break(1u);
  }

  return result;
}

void closure #2 in DOCItemCollectionViewController.deleteColumn(columnType:)(void *a1)
{
  DOCItemCollectionViewController.resize(_:forceLayout:)(0, 1, 1);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0xFC8))();
  v4 = (*((*v2 & *a1) + 0xB08))();
  swift_beginAccess();
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = *(v4 + 96);
  v8 = *(v4 + 104);
  v9 = *(v4 + 112);

  LOBYTE(v12[0]) = v5;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  DOCCollectionViewCompositionalLayout.setOutlineColumnData(_:)(v12);

  v11 = (*((*v2 & *a1) + 0x1010))(v10);
  [v11 layoutIfNeeded];
}

unint64_t DOCItemCollectionViewController.rowViews()()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1010))();
  v3 = [v2 visibleCells];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_30:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    do
    {
      v9 = v7;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1FC540](v9, v4);
        }

        else
        {
          if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v10 = *(v4 + 8 * v9 + 32);
        }

        v11 = v10;
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        type metadata accessor for DOCItemCollectionOutlineCell();
        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v9;
        if (v7 == v5)
        {
          goto LABEL_19;
        }
      }

      MEMORY[0x24C1FB090]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v21;
    }

    while (v7 != v5);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

LABEL_19:

  if (v8 >> 62)
  {
    v12 = __CocoaSet.count.getter();
    if (v12)
    {
      goto LABEL_21;
    }

LABEL_32:

    v18 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_32;
  }

LABEL_21:
  v22 = v6;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v13 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1FC540](v13, v8);
    }

    else
    {
      v14 = *(v8 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    v16 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
    swift_beginAccess();
    v17 = *&v15[v16];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v12 != v13);

  v18 = v6;
LABEL_33:
  v22 = v18;
  v19 = DOCItemCollectionViewController.headerRowView()();
  if (!v19)
  {
    return v18;
  }

  v1 = v19;
  if (!(v18 >> 62))
  {
LABEL_35:
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v1);

    return v22;
  }

LABEL_38:
  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

unint64_t DOCItemCollectionViewController.headerRowView()()
{
  v0 = DOCItemCollectionViewController.headerSupplementaryViews()();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v3 = MEMORY[0x277D85000];
    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1FC540](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ((*((*v3 & *v5) + 0x160))())
      {
        goto LABEL_19;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_13:

  result = DOCItemCollectionViewController.headerSupplementaryViews()();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_24:

    return 0;
  }

  v12 = result;
  v13 = __CocoaSet.count.getter();
  result = v12;
  if (!v13)
  {
    goto LABEL_24;
  }

LABEL_15:
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x24C1FC540](0);
LABEL_18:
    v6 = v9;
LABEL_19:

    v11 = (*((*v3 & *v6) + 0xC0))(v10);

    return v11;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(result + 32);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCItemCollectionViewController.resetColumnsIfNeeded()()
{
  DOCItemCollectionViewController.updateOutlineColumnsForCurrentSource()();
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = MEMORY[0x277D85000];
  if (v2 == 1)
  {
    v4 = &outlined read-only object #0 of DOCItemCollectionViewController.resetColumnsIfNeeded();
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v0) + 0x1160))(&aBlock);
    if (v20)
    {
      v5 = aBlock;
    }

    else
    {
      v5 = 2;
    }

    outlined consume of DOCItemSortDescriptor?(aBlock, v20, v21);
    LOBYTE(aBlock) = v5;
    v4 = specialized static OutlineColumnData.fetchVisibleColumnTypes(defaultSortMode:)(&aBlock);
  }

  v6 = *((*v3 & *v0) + 0xB08);
  v7 = v6();
  swift_beginAccess();
  v8 = *(v7 + 104);

  LOBYTE(v7) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v8, v4);

  if ((v7 & 1) == 0 || (v10 = (v6)(v9), swift_beginAccess(), v11 = *(v10 + 80), , (v2 == 1) != v11))
  {
    v12 = v2 == 1;
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = v0;
    *(v14 + 24) = v12;
    *(v14 + 32) = v4;
    v15 = swift_allocObject();
    *(v15 + 16) = partial apply for closure #1 in DOCItemCollectionViewController.resetColumnsIfNeeded();
    *(v15 + 24) = v14;
    v23 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v24 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed () -> ();
    v22 = &block_descriptor_19_2;
    v16 = _Block_copy(&aBlock);
    v17 = v0;

    [v13 performWithoutAnimation_];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }
}

double closure #1 in DOCItemCollectionViewController.resetColumnsIfNeeded()(void *a1, char a2, uint64_t a3)
{
  v5 = a2 & 1;
  v6 = *((*MEMORY[0x277D85000] & *a1) + 0xB08);
  v7 = v6();
  swift_beginAccess();
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  v10 = *(v7 + 96);
  v11 = *(v7 + 104);
  v12 = *(v7 + 112);

  if (v8 != v5)
  {

    OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v11, v12, v5, v9, v10, &v36);

    v8 = v36;
    v10 = *(&v37 + 1);
    v9 = v37;
    v12 = *(&v38 + 1);
    v11 = v38;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(a3, v11) & 1) == 0)
  {

    OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(a3, v12, v8, v9, v10, v35);
  }

  OutlineColumnData.withResetSizes()(&v36);

  v14 = v36;
  v34 = v37;
  v32 = v38;
  v33 = v6;
  v15 = (v6)(v13);
  swift_beginAccess();
  *(v15 + 80) = v14;
  *(v15 + 88) = v34;
  *(v15 + 104) = v32;

  v17 = *((*MEMORY[0x277D85000] & *a1) + 0xFC8);
  v18 = (v17)(v16);
  v19 = v6();
  swift_beginAccess();
  v20 = *(v19 + 80);
  v21 = *(v19 + 88);
  v22 = *(v19 + 96);
  v23 = *(v19 + 104);
  v24 = *(v19 + 112);

  LOBYTE(v36) = v20;
  *&v37 = v21;
  *(&v37 + 1) = v22;
  *&v38 = v23;
  *(&v38 + 1) = v24;
  DOCCollectionViewCompositionalLayout.setOutlineColumnData(_:)(&v36);

  DOCItemCollectionViewController.resize(_:forceLayout:)(0, 1, 1);
  v25 = v17();
  v26 = v33();
  swift_beginAccess();
  LOBYTE(v24) = *(v26 + 80);
  v27 = *(v26 + 88);
  v28 = *(v26 + 96);
  v29 = *(v26 + 104);
  v30 = *(v26 + 112);

  LOBYTE(v36) = v24;
  *&v37 = v27;
  *(&v37 + 1) = v28;
  *&v38 = v29;
  *(&v38 + 1) = v30;
  DOCCollectionViewCompositionalLayout.setOutlineColumnData(_:)(&v36);

  return result;
}

void DOCItemCollectionViewController.addColumn(columnType:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB08);
  v5 = v4();
  swift_beginAccess();
  v6 = *(v5 + 112);

  v64 = v2;
  v65 = v3;
  v58 = &v64;
  LOBYTE(v5) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v57, v6);

  if (v5)
  {
    v7 = specialized Collection<>.firstIndex(of:)(v2, v3, &outlined read-only object #0 of static ColumnType.allCases.getter);
    if (v8)
    {
LABEL_36:
      __break(1u);
      return;
    }

    v9 = v7;
    if ((v7 & 0x8000000000000000) != 0)
    {
LABEL_30:
      __break(1u);
    }

    else if (v7 <= 9)
    {
      v55 = v4;
      v56 = v1;
      v10 = v4();
      swift_beginAccess();
      v11 = *(v10 + 104);

      v12 = (&outlined read-only object #0 of static ColumnType.allCases.getter + 16 * v9 + 24);
      v13 = v9;
      do
      {
        if (!v13)
        {
          v21 = *(v11 + 2);
          if (!v21)
          {
            goto LABEL_32;
          }

          v20 = 1;
          goto LABEL_12;
        }

        if (--v13 >= v9)
        {
          __break(1u);
          goto LABEL_30;
        }

        v14 = v12 - 2;
        v15 = *(v12 - 1);
        v16 = *v12;
        outlined copy of ColumnType(v15, *v12);
        v17 = specialized Collection<>.firstIndex(of:)(v15, v16, v11);
        v19 = v18;
        outlined consume of ColumnType(v15, v16);
        v12 = v14;
      }

      while ((v19 & 1) != 0);
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_35;
      }

      v21 = *(v11 + 2);
      if (v21 < v20)
      {
        goto LABEL_32;
      }

      if (v20 < 0)
      {
        goto LABEL_33;
      }

LABEL_12:
      outlined copy of ColumnType(v2, v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v11;
      if (!isUniquelyReferenced_nonNull_native || v21 >= *(v11 + 3) >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21 + 1, 1, v11);
        v70 = v11;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v20, v20, 1, v2, v3);
      v23 = outlined consume of ColumnType(v2, v3);
      v24 = (v55)(v23);
      swift_beginAccess();
      v25 = *(v24 + 88);

      v26 = *(v25 + 2);
      if (v26 >= v20)
      {
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v69 = v25;
        if (!v27 || v26 >= *(v25 + 3) >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27, v26 + 1, 1, v25);
          v69 = v25;
        }

        v28 = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v20, v20, 1, 80.0);
        v29 = (v55)(v28);
        swift_beginAccess();
        v30 = *(v29 + 80);
        v31 = *(v29 + 88);
        v32 = *(v29 + 96);
        v33 = *(v29 + 104);
        v34 = *(v29 + 112);

        if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v11, v33))
        {
        }

        else
        {

          OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v11, v34, v30, v31, v32, v59);

          v30 = v59[0];
          v31 = v60;
          v32 = v61;
          v33 = v62;
          v34 = v63;
        }

        if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ12CoreGraphics7CGFloatV_Tt1g5(v25, v31))
        {

          v54 = v30;
          v52 = v32;
          v53 = v31;
        }

        else
        {

          OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v33, v34, v30, v25, v32, &v64);

          v54 = v64;
          v52 = v66;
          v53 = v65;
          v33 = v67;
          v34 = v68;
        }

        v36 = (v55)(v35);
        swift_beginAccess();
        *(v36 + 80) = v54;
        *(v36 + 88) = v53;
        *(v36 + 96) = v52;
        *(v36 + 104) = v33;
        *(v36 + 112) = v34;

        v38 = *((*MEMORY[0x277D85000] & *v56) + 0xFC8);
        v39 = (v38)(v37);
        v40 = v55();
        swift_beginAccess();
        v41 = *(v40 + 80);
        v42 = *(v40 + 88);
        v43 = *(v40 + 96);
        v44 = *(v40 + 104);
        v45 = *(v40 + 112);

        LOBYTE(v64) = v41;
        v65 = v42;
        v66 = v43;
        v67 = v44;
        v68 = v45;
        DOCCollectionViewCompositionalLayout.setOutlineColumnData(_:)(&v64);

        DOCItemCollectionViewController.resize(_:forceLayout:)(0, 1, 1);
        v46 = v38();
        v47 = v55();
        swift_beginAccess();
        LOBYTE(v45) = *(v47 + 80);
        v48 = *(v47 + 88);
        v49 = *(v47 + 96);
        v50 = *(v47 + 104);
        v51 = *(v47 + 112);

        LOBYTE(v64) = v45;
        v65 = v48;
        v66 = v49;
        v67 = v50;
        v68 = v51;
        DOCCollectionViewCompositionalLayout.setOutlineColumnData(_:)(&v64);

        return;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }
}

void DOCItemCollectionViewController.collectionWidth()()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    CGRectGetWidth(v14);
    v11 = *((*MEMORY[0x277D85000] & *v0) + 0x1010);
    v12 = v11();
    [v12 safeAreaInsets];

    v13 = v11();
    [v13 safeAreaInsets];
  }

  else
  {
    __break(1u);
  }
}

double DOCItemCollectionViewController.dividersWidth()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xB08))();
  swift_beginAccess();
  v2 = *(v1 + 104);

  v3 = *(v2 + 16);

  return v3 * 4.0;
}

void DOCItemCollectionViewController.minimumSize(for:proposedWidth:useMax:)(unint64_t a1, unint64_t a2, double a3)
{
  v8 = type metadata accessor for Column(0);
  v116 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Date();
  v114 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v12);
  v108 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  *&v119 = v104 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v110 = v104 - v19;
  closure #1 in DOCItemCollectionViewController.minimumSize(for:proposedWidth:useMax:)(v3, a1);
  v20 = *MEMORY[0x277D85000] & *v3;
  v21 = *(v20 + 0xB08);
  v118 = v3;
  *&v120 = v20 + 2824;
  v117 = v21;
  v22 = v21();
  swift_beginAccess();
  v23 = *(v22 + 104);

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  if (*(v23 + 16) <= a1)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v24 = v23 + 16 * a1;
  v4 = *(v24 + 32);
  v25 = *(v24 + 40);
  outlined copy of ColumnType(v4, v25);

  if (v25 - 1 <= 3)
  {
    v106 = v25;
    v113 = a1;
    v104[3] = a2;
    v27 = (*((*MEMORY[0x277D85000] & *v118) + 0x1010))(v26);
    v28 = [v27 visibleCells];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
    a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v123 = MEMORY[0x277D84F90];
    a1 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!(a2 >> 62))
    {
      v29 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v115 = v8;
      v105 = v4;
      v4 = MEMORY[0x277D84F90];
      if (!v29)
      {
        v31 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }

      v30 = 0;
      v8 = a2 & 0xC000000000000001;
      v31 = MEMORY[0x277D84F90];
      while (1)
      {
        v32 = v30;
        while (1)
        {
          if (v8)
          {
            v33 = MEMORY[0x24C1FC540](v32, a2);
          }

          else
          {
            if (v32 >= *(a1 + 16))
            {
              goto LABEL_39;
            }

            v33 = *(a2 + 8 * v32 + 32);
          }

          v34 = v33;
          v30 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          type metadata accessor for DOCItemCollectionOutlineCell();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v32;
          if (v30 == v29)
          {
            goto LABEL_24;
          }
        }

        MEMORY[0x24C1FB090]();
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v31 = v123;
        if (v30 == v29)
        {
LABEL_24:

          v123 = v4;
          if (v31 >> 62)
          {
            a2 = __CocoaSet.count.getter();
            if (a2)
            {
              goto LABEL_26;
            }
          }

          else
          {
            a2 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a2)
            {
LABEL_26:
              v36 = 0;
              a1 = v31 & 0xC000000000000001;
              do
              {
                if (a1)
                {
                  v37 = MEMORY[0x24C1FC540](v36, v31);
                }

                else
                {
                  if (v36 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_41;
                  }

                  v37 = *(v31 + 8 * v36 + 32);
                }

                v38 = v37;
                v4 = v36 + 1;
                if (__OFADD__(v36, 1))
                {
                  goto LABEL_40;
                }

                v39 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
                swift_beginAccess();
                v40 = *&v38[v39];

                MEMORY[0x24C1FB090]();
                v8 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v8 >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                ++v36;
              }

              while (v4 != a2);
              v41 = v123;
LABEL_47:

              if (v41 >> 62)
              {
                goto LABEL_122;
              }

              v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
              while (2)
              {
                v44 = v109;
                v45 = MEMORY[0x277D84F90];
                if (v43)
                {
                  v46 = 0;
                  v107 = v11 + 8;
                  v112 = v41 & 0xC000000000000001;
                  v111 = v41 & 0xFFFFFFFFFFFFFF8;
                  v47 = (v114 + 32);
                  while (1)
                  {
                    if (v112)
                    {
                      v48 = MEMORY[0x24C1FC540](v46, v41);
                    }

                    else
                    {
                      if (v46 >= *(v111 + 16))
                      {
                        goto LABEL_118;
                      }

                      v48 = *(v41 + 8 * v46 + 32);
                    }

                    v49 = v48;
                    v50 = v46 + 1;
                    if (__OFADD__(v46, 1))
                    {
                      break;
                    }

                    v51 = (*((*MEMORY[0x277D85000] & *v48) + 0x208))();
                    if (*(v51 + 16) <= v113)
                    {
                      goto LABEL_119;
                    }

                    outlined init with copy of Column(v51 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v113, v11);

                    if (swift_getEnumCaseMultiPayload())
                    {
                      outlined destroy of Column(v11);
                    }

                    else
                    {
                      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);

                      outlined consume of ColumnType(*&v11[*(v52 + 64)], *&v11[*(v52 + 64) + 8]);
                      v53 = *v47;
                      (*v47)(v110, v11, v44);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45[2] + 1, 1, v45);
                      }

                      v54 = v45;
                      v55 = v45[2];
                      v56 = v54;
                      v57 = v54[3];
                      if (v55 >= v57 >> 1)
                      {
                        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v55 + 1, 1, v56);
                      }

                      v56[2] = v55 + 1;
                      v58 = v56 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v55;
                      v45 = v56;
                      v53(v58, v110, v44);
                    }

                    ++v46;
                    if (v50 == v43)
                    {
                      goto LABEL_65;
                    }
                  }

LABEL_117:
                  __break(1u);
LABEL_118:
                  __break(1u);
LABEL_119:
                  __break(1u);
LABEL_120:
                  __break(1u);
LABEL_121:
                  __break(1u);
LABEL_122:
                  v43 = __CocoaSet.count.getter();
                  continue;
                }

                break;
              }

LABEL_65:

              v59 = v45[2];
              if (!v59)
              {
                goto LABEL_100;
              }

              v122[0] = MEMORY[0x277D84F90];
              specialized ContiguousArray.reserveCapacity(_:)();
              v60 = 0;
              v112 = v45 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
              v116 = v114 + 16;
              v115 = (v114 + 8);
              v111 = *MEMORY[0x277D766F0];
              v11 = v119;
              v110 = v45;
              v107 = v59;
              do
              {
                if (v60 >= v45[2])
                {
                  __break(1u);
                  goto LABEL_117;
                }

                v41 = *(v114 + 16);
                v62 = (v41)(v11, v112 + *(v114 + 72) * v60, v44);
                v63 = (v117)(v62);
                swift_beginAccess();
                if (*(*(v63 + 192) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v11), (v64 & 1) != 0))
                {
                  swift_endAccess();
                  v61 = *v115;

                  v61(v11, v44);
                }

                else
                {
                  swift_endAccess();

                  v66 = v117;
                  v67 = (v117)(v65);
                  v68 = v108;
                  (v41)(v108, v119, v44);
                  type metadata accessor for DateCalculator(0);
                  v69 = swift_allocObject();
                  v70 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_cache;
                  *(v69 + v70) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables10FormattersO_AC10DateResultVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
                  (v41)(v69 + OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date, v68, v44);
                  v71 = [objc_opt_self() defaultCenter];
                  [v71 addObserver:v69 selector:sel_clearCache name:v111 object:0];

                  v41 = *v115;
                  (*v115)(v68, v44);
                  swift_beginAccess();
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v121[0] = *(v67 + 192);
                  *(v67 + 192) = 0x8000000000000000;
                  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v69, v119, isUniquelyReferenced_nonNull_native);
                  *(v67 + 192) = v121[0];
                  swift_endAccess();

                  v74 = (v66)(v73);
                  v11 = v119;
                  v75 = v74;
                  swift_beginAccess();
                  if (!*(*(v75 + 192) + 16))
                  {
                    goto LABEL_124;
                  }

                  specialized __RawDictionaryStorage.find<A>(_:)(v11);
                  if ((v76 & 1) == 0)
                  {
                    goto LABEL_124;
                  }

                  swift_endAccess();

                  v44 = v109;
                  (v41)(v11, v109);
                  v45 = v110;
                  v59 = v107;
                }

                ++v60;

                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              while (v59 != v60);

              v77 = v122[0];
              if (v122[0] >> 62)
              {
                goto LABEL_101;
              }

LABEL_76:
              v11 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v11)
              {
LABEL_102:
                v79 = 0;
                v84 = 0.0;
LABEL_103:

                v89 = v117;
                v90 = (v117)(v88);
                v91 = v89();
                swift_beginAccess();
                v92 = *(v91 + 80);
                v119 = *(v91 + 88);
                v120 = *(v91 + 104);
                v93 = v119;

                v94 = *(&v119 + 1);

                v95 = v120;

                v96 = *(&v120 + 1);

                v97 = *(v94 + 16);

                if (v97)
                {
                  v98 = specialized __RawDictionaryStorage.find<A>(_:)(v105, v106);
                  if ((v99 & 1) != 0 && *(*(v94 + 56) + v98) == v79 && (*(v93 + 16) <= v113 || *(v93 + 8 * v113 + 32) == v84))
                  {
                    outlined consume of ColumnType(v105, v106);

                    goto LABEL_115;
                  }
                }

                v100 = swift_isUniquelyReferenced_nonNull_native();
                v123 = v94;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v79, v105, v106, v100);
                v101 = v123;
                v102 = *(v93 + 16);

                v103 = v93;
                if (v102 <= v113)
                {
LABEL_114:

                  OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v95, v96, v92, v103, v101, &v123);

                  outlined consume of ColumnType(v105, v106);
                  LOBYTE(v92) = v123;
                  v119 = v124;
                  v120 = v125;
LABEL_115:
                  swift_beginAccess();
                  *(v90 + 80) = v92;
                  *(v90 + 88) = v119;
                  *(v90 + 104) = v120;
                }

                else
                {
                  v103 = v93;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v103 = specialized _ArrayBuffer._consumeAndCreateNew()(v93);
                  }

                  if (*(v103 + 2) > v113)
                  {
                    *&v103[8 * v113 + 32] = v84;
                    goto LABEL_114;
                  }

                  __break(1u);
LABEL_124:
                  swift_endAccess();

                  __break(1u);
LABEL_125:
                  __break(1u);
                }

                return;
              }

LABEL_77:
              v78 = 0;
              v79 = 0;
              v80 = v77 & 0xC000000000000001;
              while (1)
              {
                if (v80)
                {
                  v81 = MEMORY[0x24C1FC540](v78, v77);
                  v41 = v78 + 1;
                  if (__OFADD__(v78, 1))
                  {
                    goto LABEL_88;
                  }
                }

                else
                {
                  if (v78 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_120;
                  }

                  v81 = *(v77 + 8 * v78 + 32);

                  v41 = v78 + 1;
                  if (__OFADD__(v78, 1))
                  {
LABEL_88:
                    __break(1u);
LABEL_89:
                    v83 = 0;
                    v84 = 0.0;
                    while (2)
                    {
                      if (v80)
                      {
                        v85 = MEMORY[0x24C1FC540](v83, v77);
                        v86 = (v83 + 1);
                        if (__OFADD__(v83, 1))
                        {
                          break;
                        }

                        goto LABEL_93;
                      }

                      if (v83 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_121;
                      }

                      v85 = *(v77 + 8 * v83 + 32);

                      v86 = (v83 + 1);
                      if (!__OFADD__(v83, 1))
                      {
LABEL_93:
                        v87 = (*(*v85 + 144))(v79);

                        if (v84 <= v87)
                        {
                          v84 = v87;
                        }

                        ++v83;
                        if (v86 == v11)
                        {
                          goto LABEL_103;
                        }

                        continue;
                      }

                      break;
                    }

                    __break(1u);
LABEL_100:

                    v77 = MEMORY[0x277D84F90];
                    if (MEMORY[0x277D84F90] >> 62)
                    {
LABEL_101:
                      v11 = __CocoaSet.count.getter();
                      if (!v11)
                      {
                        goto LABEL_102;
                      }

                      goto LABEL_77;
                    }

                    goto LABEL_76;
                  }
                }

                v82 = (*(*v81 + 136))(a3, 100.0);

                if (v79 <= v82)
                {
                  v79 = v82;
                }

                else
                {
                  v79 = v79;
                }

                ++v78;
                if (v41 == v11)
                {
                  goto LABEL_89;
                }
              }
            }
          }

          v41 = MEMORY[0x277D84F90];
          goto LABEL_47;
        }
      }
    }

LABEL_44:
    v29 = __CocoaSet.count.getter();
    goto LABEL_6;
  }

  v35 = outlined consume of ColumnType(v4, v25);
  if (!a1)
  {
    v42 = *(v118 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v42)
    {
      goto LABEL_125;
    }

    (*((*MEMORY[0x277D85000] & *v42) + 0x2A0))(v35);
  }
}