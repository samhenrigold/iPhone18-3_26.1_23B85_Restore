char *closure #1 in DOCHierarchyController.loadPlaceholderLocationIfNecessary(forLoadOperation:location:animated:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v131 = a5;
  v130 = a4;
  *&v141 = a3;
  v132 = a1;
  v7 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v137 = &v128[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v12);
  v136 = &v128[-v13];
  MEMORY[0x28223BE20](v14, v15);
  v138 = &v128[-v16];
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v128[-v19];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
  MEMORY[0x28223BE20](v140, v21);
  v23 = &v128[-v22];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v135, v24);
  v134 = &v128[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26, v27);
  v139 = &v128[-v28];
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v128[-v31];
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v128[-v35];
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v128[-v39];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v42 = result;
    v129 = a6;
    v133 = v20;
    v43 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(&v42[v43], v36, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v44 = *(v8 + 48);
    if (v44(v36, 1, v7) == 1)
    {
      v45 = v40;
      v46 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
      swift_beginAccess();
      v47 = &v42[v46];
      v40 = v45;
      outlined init with copy of DOCGridLayout.Spec?(v47, v45, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      if (v44(v36, 1, v7) != 1)
      {
        outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      }
    }

    else
    {
      outlined init with take of DOCHierarchyController.FetchingOperationToken(v36, v40, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
      (*(v8 + 56))(v40, 0, 1, v7);
    }

    outlined init with copy of DOCHierarchyController.FetchingOperationToken(v141, v32, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    (*(v8 + 56))(v32, 0, 1, v7);
    v48 = *(v140 + 48);
    outlined init with copy of DOCGridLayout.Spec?(v40, v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    outlined init with copy of DOCGridLayout.Spec?(v32, &v23[v48], &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    if (v44(v23, 1, v7) == 1)
    {
      outlined destroy of CharacterSet?(v32, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      if (v44(&v23[v48], 1, v7) == 1)
      {
        outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
LABEL_22:
        v89 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
        swift_beginAccess();
        v90 = *&v42[v89];
        if (v90 >> 62)
        {
          v91 = __CocoaSet.count.getter();
        }

        else
        {
          v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v92 = v138;
        if (!v91)
        {
          v114 = v42;
          v115 = v130;
          swift_beginAccess();
          v116 = v129;
          if ((*(v115 + 16) & 1) == 0)
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v117 = type metadata accessor for Logger();
            __swift_project_value_buffer(v117, static Logger.UI);
            v118 = Logger.logObject.getter();
            v119 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              *v120 = 0;
              _os_log_impl(&dword_2493AC000, v118, v119, "Unexpected: got placeholder results async", v120, 2u);
              MEMORY[0x24C1FE850](v120, -1, -1);
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          inited = swift_initStackObject();
          v141 = xmmword_249BA0290;
          *(inited + 16) = xmmword_249BA0290;
          v122 = v131;
          *(inited + 32) = v131;
          v123 = swift_initStackObject();
          *(v123 + 16) = v141;
          v124 = v132;
          *(v123 + 32) = v132;
          v125 = v122;
          v126 = v124;
          v127 = _sSa26DocumentManagerExecutablesAA28LocationPairedViewController33_3085D686B27B1518531DD3257B8A8BC0LLCRbzlE8pairingsACLLySayADGSaySo011DOCConcreteD0CG_SaySo06UIViewG0CGtFZAD_Tt1g5(inited, v123);

          swift_setDeallocating();
          swift_arrayDestroy();
          DOCHierarchyController.setLocationPairedViewControllers(_:animated:completion:)(v127, v116 & 1, DOCGridLayout.specIconWidth.modify, 0);

          goto LABEL_41;
        }

        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v93 = type metadata accessor for Logger();
        __swift_project_value_buffer(v93, static Logger.UI);
        outlined init with copy of DOCHierarchyController.FetchingOperationToken(v141, v92, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        v94 = v42;
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v139 = v42;
          v98 = v97;
          v99 = swift_slowAlloc();
          v140 = v40;
          *&v141 = v99;
          v142[0] = v99;
          *v98 = 136315394;
          v100 = v133;
          outlined init with copy of DOCHierarchyController.FetchingOperationToken(v92, v133, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          v101 = DOCHierarchyController.FetchingOperationToken.debugDescription.getter();
          v103 = v102;
          outlined destroy of DOCHierarchyController.FetchingOperationToken(v100, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          outlined destroy of DOCHierarchyController.FetchingOperationToken(v92, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, v142);

          *(v98 + 4) = v104;
          *(v98 + 12) = 2080;
          v105 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);

          v107 = MEMORY[0x24C1FB0D0](v106, v105);
          v109 = v108;

          v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, v142);

          *(v98 + 14) = v110;
          _os_log_impl(&dword_2493AC000, v95, v96, "Unexpected: ignoring placeholder results for: %s - There are now real locations present: %s", v98, 0x16u);
          v111 = v141;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v111, -1, -1);
          MEMORY[0x24C1FE850](v98, -1, -1);

          goto LABEL_31;
        }

        v112 = v92;
LABEL_40:
        outlined destroy of DOCHierarchyController.FetchingOperationToken(v112, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
LABEL_41:
        v113 = v40;
        return outlined destroy of CharacterSet?(v113, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      }
    }

    else
    {
      v49 = v139;
      outlined init with copy of DOCGridLayout.Spec?(v23, v139, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      if (v44(&v23[v48], 1, v7) != 1)
      {
        v86 = v133;
        outlined init with take of DOCHierarchyController.FetchingOperationToken(&v23[v48], v133, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        v87 = v49;
        v88 = static UUID.== infix(_:_:)();
        outlined destroy of DOCHierarchyController.FetchingOperationToken(v86, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        outlined destroy of CharacterSet?(v32, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        outlined destroy of DOCHierarchyController.FetchingOperationToken(v87, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
        outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        if (v88)
        {
          goto LABEL_22;
        }

LABEL_12:
        v50 = DOCHierarchyController.loadingDisabledAssertions.getter();
        if (((*(*v50 + 152))() & 1) == 0)
        {
          v140 = v40;
          outlined init with copy of DOCGridLayout.Spec?(v40, v134, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
          v68 = String.init<A>(describing:)();
          v70 = v69;
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          __swift_project_value_buffer(v71, static Logger.UI);
          v72 = v137;
          outlined init with copy of DOCHierarchyController.FetchingOperationToken(v141, v137, type metadata accessor for DOCHierarchyController.FetchingOperationToken);

          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.fault.getter();

          v75 = os_log_type_enabled(v73, v74);
          v76 = v133;
          if (v75)
          {
            v77 = swift_slowAlloc();
            v139 = v68;
            v78 = v72;
            v79 = v77;
            *&v141 = swift_slowAlloc();
            v143[0] = v141;
            *v79 = 136315394;
            outlined init with copy of DOCHierarchyController.FetchingOperationToken(v78, v76, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            v80 = DOCHierarchyController.FetchingOperationToken.debugDescription.getter();
            v82 = v81;
            outlined destroy of DOCHierarchyController.FetchingOperationToken(v76, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            outlined destroy of DOCHierarchyController.FetchingOperationToken(v78, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
            v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v143);

            *(v79 + 4) = v83;
            *(v79 + 12) = 2080;
            v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v70, v143);

            *(v79 + 14) = v84;
            _os_log_impl(&dword_2493AC000, v73, v74, "Unexpected: ignoring placeholder results for: %s - new operation is now active: %s", v79, 0x16u);
            v85 = v141;
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v85, -1, -1);
            MEMORY[0x24C1FE850](v79, -1, -1);
          }

          else
          {

            outlined destroy of DOCHierarchyController.FetchingOperationToken(v72, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          }

          goto LABEL_31;
        }

        v139 = v42;
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static Logger.UI);
        v52 = v136;
        outlined init with copy of DOCHierarchyController.FetchingOperationToken(v141, v136, type metadata accessor for DOCHierarchyController.FetchingOperationToken);

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v143[0] = v56;
          *v55 = 136315394;
          v57 = v133;
          outlined init with copy of DOCHierarchyController.FetchingOperationToken(v52, v133, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          v58 = DOCHierarchyController.FetchingOperationToken.debugDescription.getter();
          v140 = v40;
          v60 = v59;
          outlined destroy of DOCHierarchyController.FetchingOperationToken(v57, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          outlined destroy of DOCHierarchyController.FetchingOperationToken(v52, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v143);

          *(v55 + 4) = v61;
          *(v55 + 12) = 2080;
          v62 = *(*v50 + 168);

          v64 = v62(v63);
          v66 = v65;

          v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v143);

          *(v55 + 14) = v67;
          _os_log_impl(&dword_2493AC000, v53, v54, "Unexpected: ignoring placeholder results for: %s - loadingDisabledAssertions: %s", v55, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v56, -1, -1);
          MEMORY[0x24C1FE850](v55, -1, -1);

LABEL_31:
          v113 = v140;
          return outlined destroy of CharacterSet?(v113, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
        }

        v112 = v52;
        goto LABEL_40;
      }

      outlined destroy of CharacterSet?(v32, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v49, type metadata accessor for DOCHierarchyController.FetchingOperationToken);
    }

    outlined destroy of CharacterSet?(v23, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSg_AGtMR);
    goto LABEL_12;
  }

  return result;
}

void specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (__CocoaSet.count.getter())
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x24C1FC540](0, v1);
      if (!v2)
      {
LABEL_6:
        v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v4 = __CocoaSet.count.getter();
LABEL_13:
      if (v4)
      {
        specialized Array.replaceSubrange<A>(_:with:)(0, v3, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (__CocoaSet.count.getter())
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x24C1FC540](0, v1);
      if (!v2)
      {
LABEL_6:
        v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v4 = __CocoaSet.count.getter();
LABEL_13:
      if (v4)
      {
        specialized Array.replaceSubrange<A>(_:with:)(0, v3, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

double specialized closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(void *a1, void *a2, uint64_t a3, void *a4, unint64_t a5, char a6, void (*a7)(uint64_t), uint64_t a8)
{
  swift_beginAccess();
  v15 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    *(a3 + 16) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[16 * v18];
  *(v19 + 4) = a1;
  *(v19 + 5) = a2;
  *(a3 + 16) = v15;
  swift_endAccess();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a7;
  v20[4] = a8;
  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x277D84F90];
  if (a5 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    v22 = a2;

    v23 = a1;
    specialized RangeReplaceableCollection.removeFirst()();
    v25 = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = v21;
    *(v26 + 24) = a4;
    *(v26 + 32) = a5;
    *(v26 + 40) = a6 & 1;
    *(v26 + 48) = partial apply for closure #1 in closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
    *(v26 + 56) = v20;

    v27 = a4;

    specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v25, a6 & 1, v27, closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:)specialized partial apply, v26);

    return result;
  }

  swift_beginAccess();
  v29 = a2;

  v30 = a1;
  specialized Array.append<A>(contentsOf:)(MEMORY[0x277D84F90]);
  swift_endAccess();
  swift_beginAccess();

  a7(v31);

  return result;
}

double closure #1 in closure #1 in DOCHierarchyController.resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v4);
  swift_endAccess();
  swift_beginAccess();

  a3(v5);

  return result;
}

void DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v165 = a3;
  ObjectType = swift_getObjectType();
  v161 = type metadata accessor for DispatchWorkItemFlags();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v7);
  v158 = v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for DispatchQoS();
  v157 = *(v159 - 8);
  MEMORY[0x28223BE20](v159, v9);
  v11 = v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v156 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = (v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [a1 sourceIdentifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {

    goto LABEL_8;
  }

  v162 = a4;
  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v23 & 1) == 0)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
    {
      goto LABEL_15;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
LABEL_17:

      goto LABEL_18;
    }

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
    if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
    {
      goto LABEL_15;
    }

    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v48)
    {
      goto LABEL_17;
    }

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
    if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
    {
      goto LABEL_15;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {
      goto LABEL_17;
    }

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;
    if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
    {
LABEL_15:

LABEL_18:
      v33 = v162;
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
      v38[2] = v165;
      v38[3] = v33;
      v38[4] = a1;
      v39 = *&v164[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
      v40 = swift_allocObject();
      v40[2] = partial apply for closure #1 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
      v40[3] = v38;
      v40[4] = a1;
      v171 = closure #1 in DOCHierarchyController.getSource(for:completion:)partial apply;
      v172 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v168 = 1107296256;
      v41 = &block_descriptor_822;
LABEL_23:
      v169 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
      v170 = v41;
      v42 = _Block_copy(&aBlock);
      v43 = a1;

      [v39 retrieveAllSourcesCompletionBlock_];
      _Block_release(v42);
      goto LABEL_24;
    }

    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v58)
    {
      goto LABEL_17;
    }

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;
    if (v59 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v61 != v62)
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v63)
      {
LABEL_67:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }

      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;
      if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
      {

LABEL_42:
        v69 = v162;
        v70 = v164;
        v71 = *&v164[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration];
        v72 = *&v164[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
        v73 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
        swift_beginAccess();
        v74 = *&v70[v73];
        v75 = swift_allocObject();
        v76 = v165;
        v75[2] = v70;
        v75[3] = v76;
        v75[4] = v69;
        v77 = v74;
        v78 = v70;

        static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v71, v72, v74, closure #2 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)partial apply, v75);
LABEL_43:

        goto LABEL_24;
      }

      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v68)
      {

        goto LABEL_42;
      }

      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;
      if (v79 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v81 == v82)
      {

        v83 = v162;
LABEL_48:
        v85 = v164;
        v86 = *&v164[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration];
        v87 = *&v164[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
        v88 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
        swift_beginAccess();
        v89 = *&v85[v88];
        v90 = swift_allocObject();
        v91 = v165;
        v90[2] = v85;
        v90[3] = v91;
        v90[4] = v83;
        v77 = v89;

        v92 = v85;
        static DOCHierarchyController.getDefaultLocation(configuration:sourceObserver:pickerContext:completionBlock:)(v86, v87, v89, closure #3 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)partial apply, v90);
        goto LABEL_43;
      }

      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v83 = v162;
      if (v84)
      {
        goto LABEL_48;
      }

      ObjectType = [a1 node];
      if (!ObjectType)
      {
        if (a2)
        {
          v129 = [a1 sourceIdentifier];
          v130 = swift_allocObject();
          v131 = v164;
          v132 = v165;
          v130[2] = v164;
          v130[3] = v132;
          v130[4] = v162;
          v133 = *&v131[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
          v134 = *&v131[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration];
          v135 = swift_allocObject();
          v135[2] = closure #8 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)partial apply;
          v135[3] = v130;
          v135[4] = v129;
          v135[5] = v131;
          v171 = closure #1 in DOCHierarchyController.resolvedLocation(for:completion:)partial apply;
          v172 = v135;
          aBlock = MEMORY[0x277D85DD0];
          v168 = 1107296256;
          v169 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
          v170 = &block_descriptor_761;
          v136 = _Block_copy(&aBlock);
          v137 = v131;

          v138 = v137;

          v139 = v129;

          [v133 retrieveSourcesForConfiguration:v134 usingBlock:v136];
          _Block_release(v136);

          goto LABEL_24;
        }

        v140 = swift_allocObject();
        v141 = v162;
        v140[2] = v165;
        v140[3] = v141;
        v140[4] = a1;
        v39 = *&v164[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
        v142 = swift_allocObject();
        v142[2] = partial apply for closure #1 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
        v142[3] = v140;
        v142[4] = a1;
        v171 = closure #1 in DOCHierarchyController.getSource(for:completion:)partial apply;
        v172 = v142;
        aBlock = MEMORY[0x277D85DD0];
        v168 = 1107296256;
        v41 = &block_descriptor_750;
        goto LABEL_23;
      }

      v93 = swift_allocObject();
      v155 = v93;
      *(v93 + 16) = 0;
      v94 = (v93 + 16);
      v95 = swift_allocObject();
      v151 = v95;
      *(v95 + 16) = 0;
      v152 = (v95 + 16);
      v154 = swift_allocObject();
      *(v154 + 16) = 0;
      v96 = swift_allocObject();
      v153 = v96;
      *(v96 + 16) = 0;
      v149[0] = v96 + 16;
      v97 = dispatch_group_create();
      swift_getObjectType();
      if (DOCNode.isFPItem.getter() && (v98 = [ObjectType fpfs_fpItem]) != 0)
      {
        v99 = v98;
        dispatch_group_enter(v97);
        v100 = swift_allocObject();
        v101 = v151;
        v100[2] = v155;
        v100[3] = v101;
        v102 = v100;
        v100[4] = v97;

        v150 = v97;
        if (([v99 isRootItem] & 1) != 0 || objc_msgSend(v99, sel_isCollaborationInvitation))
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          *v16 = static OS_dispatch_queue.main.getter();
          v103 = v156;
          (v156[13].isa)(v16, *MEMORY[0x277D85200], v12);
          v104 = _dispatchPreconditionTest(_:)();
          (v103[1].isa)(v16, v12);
          if (v104)
          {
            swift_beginAccess();
            *v94 = 1;
            v105 = v152;
            swift_beginAccess();
            *v105 = 1;
            dispatch_group_leave(v150);

            goto LABEL_57;
          }

          __break(1u);
          goto LABEL_66;
        }

        v143 = *&v164[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_itemManager];
        v144 = swift_allocObject();
        *(v144 + 16) = closure #4 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)partial apply;
        *(v144 + 24) = v102;

        v145 = [v99 itemID];
        v146 = swift_allocObject();
        v146[2] = v99;
        v146[3] = closure #1 in DOCHierarchyController.checkFPItemAvailability(_:completion:)partial apply;
        v146[4] = v144;
        v171 = closure #1 in FPItemManager.doc_refetchItem(_:completion:)partial apply;
        v172 = v146;
        aBlock = MEMORY[0x277D85DD0];
        v168 = 1107296256;
        v169 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
        v170 = &block_descriptor_803;
        v147 = _Block_copy(&aBlock);
        v148 = v99;

        [v143 fetchItemForItemID:v145 completionHandler:v147];

        _Block_release(v147);
      }

      else
      {
        *v94 = 1;
        *v152 = 1;
      }

LABEL_57:
      dispatch_group_enter(v97);
      v106 = swift_allocObject();
      v107 = v154;
      v108 = v153;
      v106[2] = v154;
      v106[3] = v108;
      v106[4] = v97;
      v150 = *&v164[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_sourceObserver];
      v109 = swift_allocObject();
      v109[2] = closure #5 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)partial apply;
      v109[3] = v106;
      v109[4] = a1;
      v171 = closure #1 in DOCHierarchyController.getSource(for:completion:)partial apply;
      v172 = v109;
      aBlock = MEMORY[0x277D85DD0];
      v168 = 1107296256;
      v149[1] = &v169;
      v169 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
      v170 = &block_descriptor_776;
      v110 = _Block_copy(&aBlock);
      v111 = a1;
      v156 = v97;

      [v150 retrieveAllSourcesCompletionBlock:v110];
      _Block_release(v110);

      v112 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v113 = swift_allocObject();
      v113[2] = v112;
      v113[3] = v107;
      v113[4] = v155;
      v113[5] = v111;
      v114 = v165;
      v113[6] = ObjectType;
      v113[7] = v114;
      v113[8] = v162;
      v115 = v152;
      swift_beginAccess();
      if (*v115 == 1)
      {
        v116 = v149[0];
        swift_beginAccess();
        if (*v116 == 1)
        {
          v117 = v111;
          v118 = v162;

          v119 = v155;

          v120 = v154;

          v121 = ObjectType;
          swift_unknownObjectRetain();
          closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v112, v120, v119, v117, v121, v165, v118);

          swift_unknownObjectRelease();

          return;
        }
      }

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v122 = v111;

      swift_unknownObjectRetain();
      v123 = static OS_dispatch_queue.main.getter();
      v124 = swift_allocObject();
      *(v124 + 16) = closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)partial apply;
      *(v124 + 24) = v113;
      v171 = thunk for @callee_guaranteed () -> ()partial apply;
      v172 = v124;
      aBlock = MEMORY[0x277D85DD0];
      v168 = 1107296256;
      v169 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v170 = &block_descriptor_788;
      v125 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v166 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v126 = v158;
      v127 = v161;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v128 = v156;
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v125);

      swift_unknownObjectRelease();

      (*(v160 + 8))(v126, v127);
      (*(v157 + 8))(v11, v159);

LABEL_24:

      return;
    }

LABEL_66:

    goto LABEL_67;
  }

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

  (v165)(a1, 0);
}

void static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.UI);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2493AC000, v12, v13, "Obtaining default save location...", v14, 2u);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  v15 = [a1 hostIdentifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = v16;
  v19[5] = v18;
  v19[6] = a1;
  v19[7] = v6;

  v20 = a1;
  v21 = static os_log_type_t.info.getter();
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v22 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Obtaining default source...", 27, 2, &dword_2493AC000, v22, v21, MEMORY[0x277D84F90]);

  v23 = [v20 hostIdentifier];
  if (!v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = MEMORY[0x24C1FAD20](v24);
  }

  v25 = objc_opt_self();
  v26 = swift_allocObject();
  v26[2] = partial apply for closure #1 in static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:);
  v26[3] = v19;
  v26[4] = a2;
  v26[5] = v20;
  v26[6] = a3;
  aBlock[4] = partial apply for closure #1 in static DOCHierarchyController.getDefaultSource(configuration:sourceObserver:pickerContext:completionBlock:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_125;
  v27 = _Block_copy(aBlock);
  v28 = a3;
  v29 = v20;

  v30 = a2;

  [v25 defaultSourceForBundleIdentifier:v23 completionBlock:v27];
  _Block_release(v27);
}

void closure #2 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, const char *a5)
{
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = closure #1 in implicit closure #1 in closure #2 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(a5);
  }

  v8 = a1;
  DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v9, 1, a3, a4);
}

id closure #1 in implicit closure #1 in closure #2 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(const char *a1)
{
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
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, a1, v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v6 = [objc_opt_self() emptyLocation];

  return v6;
}

void static DOCHierarchyController.getDefaultLocation(configuration:sourceObserver:pickerContext:completionBlock:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2493AC000, v11, v12, "Obtaining default location...", v13, 2u);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  v14 = [a1 hostIdentifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0 && ![a1 isPickerUI])
    {

      static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(a1, a2, a3, a4, a5);
      return;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;

  v22 = static os_log_type_t.info.getter();
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v23 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Obtaining default source...", 27, 2, &dword_2493AC000, v23, v22, MEMORY[0x277D84F90]);

  v24 = [a1 hostIdentifier];
  if (!v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = MEMORY[0x24C1FAD20](v25);
  }

  v26 = objc_opt_self();
  v27 = swift_allocObject();
  v27[2] = partial apply for closure #1 in static DOCHierarchyController.getDefaultLocation(configuration:sourceObserver:pickerContext:completionBlock:);
  v27[3] = v21;
  v27[4] = a2;
  v27[5] = a1;
  v27[6] = a3;
  v32[4] = closure #1 in static DOCHierarchyController.getDefaultSource(configuration:sourceObserver:pickerContext:completionBlock:)partial apply;
  v32[5] = v27;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 1107296256;
  v32[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v32[3] = &block_descriptor_135;
  v28 = _Block_copy(v32);
  v29 = a3;

  v30 = a2;
  v31 = a1;

  [v26 defaultSourceForBundleIdentifier:v24 completionBlock:v28];
  _Block_release(v28);
}

void closure #4 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(char a1, uint64_t a2, uint64_t a3, NSObject *a4, double a5)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    swift_beginAccess();
    *(a2 + 16) = a1 & 1;
    swift_beginAccess();
    *(a3 + 16) = 1;
    dispatch_group_leave(a4);
  }

  else
  {
    __break(1u);
  }
}

void closure #5 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, double a5)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    swift_beginAccess();
    v15 = *(a2 + 16);
    *(a2 + 16) = a1;
    v16 = a1;

    swift_beginAccess();
    *(a3 + 16) = 1;
    dispatch_group_leave(a4);
  }

  else
  {
    __break(1u);
  }
}

void closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v246 = a4;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v243 = &v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v242 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v241 = &v226 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v244 = &v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v245 = (&v226 - v24);
  MEMORY[0x28223BE20](v25, v26);
  v239 = &v226 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v240 = &v226 - v30;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v32 = Strong;
  v237 = v16;
  v238 = v13;
  swift_beginAccess();
  v33 = *(a2 + 16);
  if (!v33)
  {
    goto LABEL_7;
  }

  type metadata accessor for DOCFileProviderSource();
  v34 = swift_dynamicCastClass();
  if (!v34)
  {
    goto LABEL_7;
  }

  v35 = v34;
  v231 = v12;
  v235 = a6;
  v236 = a7;
  v36 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_pickerContext;
  swift_beginAccess();
  v234 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain;
  v37 = *&v35[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  v233 = v33;
  if (v37)
  {
    v38 = a5;
    v39 = v35;
    v40 = *&v32[v36];
    v41 = v40;
    v42 = v32;
    v43 = v37;
    v44 = v33;
    v45 = v40;
    v35 = v39;
    a5 = v38;
    v46 = DOCConfiguration.allowsSelecting(_:pickerContext:)(v43, v45);

    v32 = v42;
    if ((v46 & 1) == 0)
    {

      a7 = v236;
      a6 = v235;
LABEL_7:
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.UI);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_2493AC000, v48, v49, "About to resolve the empty location.", v50, 2u);
        MEMORY[0x24C1FE850](v50, -1, -1);
      }

      v51 = [objc_opt_self() defaultLocation];
      DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v51, 0, a6, a7);

      return;
    }
  }

  else
  {
    v52 = v33;
  }

  swift_beginAccess();
  if (*(a3 + 16) != 1)
  {
    v71 = [v35 identifier];
    v72 = [v35 displayName];
    if (!v72)
    {
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = MEMORY[0x24C1FAD20](v73);
    }

    v74 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v71 title:v72];

    [v74 setIsFPV2_];
    v75 = [v35 promptText];
    v76 = v235;
    if (!v75)
    {
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = MEMORY[0x24C1FAD20](v77);
    }

    [v74 setPromptText_];
    v78 = v233;

    (v76)(v74, v35);
    return;
  }

  v232 = v35;
  v53 = v233;

  v54 = swift_allocObject();
  v55 = v246;
  *(v54 + 16) = v246;
  swift_getObjectType();
  v56 = DOCNode.isFINode.getter();
  v57 = &unk_2810DF000;
  v58 = v236;
  v230 = v54;
  v229 = v56;
  if (v56)
  {
    objc_opt_self();
    v59 = swift_dynamicCastObjCClassUnconditional();
    v60 = v55;
    *(v54 + 16) = specialized DOCHierarchyController.presentationLocation(for:location:)(v59, v60);

    v61 = *&v232[v234];
    if (v61 && [v61 isUsingFPFS])
    {
      v62 = v59;
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, static Logger.Enumeration);
      swift_unknownObjectRetain();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v64, v65))
      {

LABEL_51:
        v57 = &unk_2810DF000;
        goto LABEL_52;
      }

      v227 = a5;
      v66 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      aBlock = v246;
      *v66 = 136315394;
      *(v66 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
      *(v66 + 12) = 2080;
      v67 = [v62 fileURL];
      v228 = v32;
      if (v67)
      {
        v68 = v239;
        v69 = v67;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v70 = 0;
      }

      else
      {
        v70 = 1;
        v68 = v239;
      }

      v120 = type metadata accessor for URL();
      v121 = *(v120 - 8);
      (*(v121 + 56))(v68, v70, 1, v120);
      v122 = v240;
      outlined init with take of URL?(v68, v240);
      if ((*(v121 + 48))(v122, 1, v120) == 1)
      {
        v123 = 4271950;
        outlined destroy of CharacterSet?(v122, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v124 = 0xE300000000000000;
      }

      else
      {
        v123 = URL.absoluteString.getter();
        v124 = v125;
        (*(v121 + 8))(v122, v120);
      }

      v32 = v228;
      v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, &aBlock);

      *(v66 + 14) = v126;
      _os_log_impl(&dword_2493AC000, v64, v65, "%s: FPFS Location has an FINode with URL: %s.", v66, 0x16u);
      v127 = v246;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v127, -1, -1);
      MEMORY[0x24C1FE850](v66, -1, -1);

      v53 = v233;
LABEL_50:
      a5 = v227;
      goto LABEL_51;
    }

    v228 = v32;
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    __swift_project_value_buffer(v96, static Logger.Enumeration);
    swift_unknownObjectRetain();
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      aBlock = v246;
      *v99 = 136315650;
      *(v99 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
      *(v99 + 12) = 2080;
      v100 = [v59 fileURL];
      v101 = v59;
      if (v100)
      {
        v102 = v244;
        v103 = v100;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v104 = 0;
      }

      else
      {
        v104 = 1;
        v102 = v244;
      }

      v227 = a5;
      v105 = type metadata accessor for URL();
      v106 = *(v105 - 8);
      (*(v106 + 56))(v102, v104, 1, v105);
      v107 = v245;
      outlined init with take of URL?(v102, v245);
      v108 = v53;
      if ((*(v106 + 48))(v107, 1, v105) == 1)
      {
        v109 = 4271950;
        outlined destroy of CharacterSet?(v107, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v110 = 0xE300000000000000;
      }

      else
      {
        v109 = URL.absoluteString.getter();
        v111 = v107;
        v110 = v112;
        (*(v106 + 8))(v111, v105);
      }

      v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, &aBlock);

      *(v99 + 14) = v113;
      *(v99 + 22) = 2080;
      v114 = [v101 fpItem];
      v254[0] = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6FPItemCSgMd, &_sSo6FPItemCSgMR);
      v115 = Optional.debugDescription.getter();
      v117 = v116;

      v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v117, &aBlock);

      *(v99 + 24) = v118;
      _os_log_impl(&dword_2493AC000, v97, v98, "%s: FPv2 Location has an FINode with URL: %s and FPItem: %s.", v99, 0x20u);
      v119 = v246;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v119, -1, -1);
      MEMORY[0x24C1FE850](v99, -1, -1);

      v32 = v228;
      v58 = v236;
      v53 = v108;
      v54 = v230;
      goto LABEL_50;
    }

    v32 = v228;
    v58 = v236;
  }

  else
  {
    v79 = one-time initialization token for Enumeration;
    v80 = v55;
    if (v79 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    __swift_project_value_buffer(v81, static Logger.Enumeration);
    swift_unknownObjectRetain();
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = a5;
      v86 = swift_slowAlloc();
      aBlock = v86;
      *v84 = 136315394;
      *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
      *(v84 + 12) = 2080;
      v87 = [v85 displayName];
      v88 = v53;
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;

      v92 = v89;
      v53 = v88;
      v54 = v230;
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v91, &aBlock);
      v58 = v236;

      *(v84 + 14) = v93;
      _os_log_impl(&dword_2493AC000, v82, v83, "%s: Location has an FPItem : %s.", v84, 0x16u);
      swift_arrayDestroy();
      v94 = v86;
      a5 = v85;
      MEMORY[0x24C1FE850](v94, -1, -1);
      v95 = v84;
      v57 = &unk_2810DF000;
      MEMORY[0x24C1FE850](v95, -1, -1);
    }
  }

LABEL_52:
  v128 = *&v232[v234];
  if (v128 && (v129 = v128, v130 = FPProviderDomain.shouldUseDSEnumeration.getter(), v129, (v130 & 1) != 0))
  {
    if (v57[164] != -1)
    {
      swift_once();
    }

    v131 = type metadata accessor for Logger();
    __swift_project_value_buffer(v131, static Logger.Enumeration);
    v132 = v53;
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = a5;
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      aBlock = v137;
      *v136 = 136315394;
      *(v136 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
      *(v136 + 12) = 2080;
      v138 = *&v232[v234];
      if (v138)
      {
        v139 = [v138 identifier];
        v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v142 = v141;
      }

      else
      {
        v140 = 4271950;
        v142 = 0xE300000000000000;
      }

      v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v142, &aBlock);

      *(v136 + 14) = v156;
      _os_log_impl(&dword_2493AC000, v133, v134, "%s: Domain supports DS enumeration: %s.", v136, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v137, -1, -1);
      MEMORY[0x24C1FE850](v136, -1, -1);

      v154 = 0;
LABEL_70:
      v58 = v236;
      v54 = v230;
      a5 = v135;
      v57 = &unk_2810DF000;
      goto LABEL_71;
    }

    v154 = 0;
  }

  else
  {
    if (v57[164] != -1)
    {
      swift_once();
    }

    v143 = type metadata accessor for Logger();
    __swift_project_value_buffer(v143, static Logger.Enumeration);
    v144 = v53;
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v145, v146))
    {
      v135 = a5;
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      aBlock = v148;
      *v147 = 136315394;
      *(v147 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
      *(v147 + 12) = 2080;
      v149 = *&v232[v234];
      if (v149)
      {
        v150 = [v149 identifier];
        v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v153 = v152;
      }

      else
      {
        v151 = 4271950;
        v153 = 0xE300000000000000;
      }

      v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v153, &aBlock);

      *(v147 + 14) = v155;
      _os_log_impl(&dword_2493AC000, v145, v146, "%s: Domain does NOT support DS enumeration: %s.", v147, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v148, -1, -1);
      MEMORY[0x24C1FE850](v147, -1, -1);

      v154 = 1;
      goto LABEL_70;
    }

    v154 = 1;
  }

LABEL_71:
  objc_opt_self();
  v157 = swift_dynamicCastObjCClass();
  if (v157)
  {
    v158 = [v157 isTrashed];
    if ((v229 | v154) & 1) != 0 || (v158)
    {
      goto LABEL_77;
    }
  }

  else if ((v229 | v154))
  {
LABEL_77:
    v161 = v53;
    if (v57[164] != -1)
    {
      swift_once();
    }

    v162 = type metadata accessor for Logger();
    __swift_project_value_buffer(v162, static Logger.Enumeration);
    v163 = Logger.logObject.getter();
    v164 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      aBlock = v166;
      *v165 = 136315138;
      *(v165 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
      _os_log_impl(&dword_2493AC000, v163, v164, "%s: NOT trying to resolve to Node, (either location already has a Node, or Domain needs FPItemCollection, see logs above)", v165, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v166);
      MEMORY[0x24C1FE850](v166, -1, -1);
      MEMORY[0x24C1FE850](v165, -1, -1);
    }

    v167 = *(v54 + 16);
    v235();

    return;
  }

  swift_beginAccess();

  v160 = specialized DOCHierarchyController.locationsAreInsideTrash(_:)(v159);

  if (v160)
  {
    goto LABEL_77;
  }

  if (v57[164] != -1)
  {
    swift_once();
  }

  v168 = type metadata accessor for Logger();
  __swift_project_value_buffer(v168, static Logger.Enumeration);
  swift_unknownObjectRetain();
  v169 = Logger.logObject.getter();
  v170 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    v246 = swift_slowAlloc();
    aBlock = v246;
    *v171 = 136315394;
    *(v171 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004ALL, 0x8000000249BCDB70, &aBlock);
    *(v171 + 12) = 2080;
    v172 = [a5 displayName];
    v173 = v53;
    v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v176 = v175;

    v177 = v174;
    v53 = v173;
    v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v176, &aBlock);
    v58 = v236;

    *(v171 + 14) = v178;
    _os_log_impl(&dword_2493AC000, v169, v170, "%s: Location needs to be resolved to FINode : Node (%s.", v171, 0x16u);
    v179 = v246;
    swift_arrayDestroy();
    v180 = v179;
    v54 = v230;
    MEMORY[0x24C1FE850](v180, -1, -1);
    MEMORY[0x24C1FE850](v171, -1, -1);
  }

  objc_opt_self();
  v181 = swift_dynamicCastObjCClassUnconditional();
  if ([v181 isRootItem])
  {
    v246 = *&v32[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_nodeResolvingQueue];
    v182 = swift_allocObject();
    v182[2] = v232;
    v182[3] = v54;
    v183 = v235;
    v182[4] = a5;
    v182[5] = v183;
    v182[6] = v58;
    v252 = closure #1 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)partial apply;
    v253 = v182;
    aBlock = MEMORY[0x277D85DD0];
    v249 = 1107296256;
    v250 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v251 = &block_descriptor_714;
    v184 = _Block_copy(&aBlock);
    v185 = v53;
    swift_unknownObjectRetain();

    v186 = v241;
    static DispatchQoS.unspecified.getter();
    v247 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v187 = v243;
    v188 = v231;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v186, v187, v184);
    _Block_release(v184);

    (*(v238 + 8))(v187, v188);
    (*(v242 + 8))(v186, v237);

    return;
  }

  v189 = v53;
  v190 = *&v232[v234];
  if (!v190)
  {
LABEL_93:
    v192 = *&v32[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_itemManager];
    v193 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v194 = swift_allocObject();
    v195 = a5;
    v196 = v230;
    v194[2] = v193;
    v194[3] = v196;
    v197 = v232;
    v194[4] = v195;
    v194[5] = v197;
    v194[6] = v235;
    v194[7] = v58;
    v252 = closure #3 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)partial apply;
    v253 = v194;
    aBlock = MEMORY[0x277D85DD0];
    v249 = 1107296256;
    v250 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v251 = &block_descriptor_699;
    v198 = _Block_copy(&aBlock);
    v199 = v189;
    swift_unknownObjectRetain();

    v200 = v192;

    [v200 fetchURLForItem:v181 completionHandler:v198];

    _Block_release(v198);

    return;
  }

  v191 = v190;
  if ([v191 isUsingFPFS] & 1) != 0 || (FPProviderDomain.shouldUseDSEnumeration.getter() & 1) == 0 || (FPProviderDomain.isPOSIXCompatible.getter())
  {

    goto LABEL_93;
  }

  swift_unknownObjectRetain();
  v201 = v191;
  v202 = Logger.logObject.getter();
  v203 = static os_log_type_t.info.getter();

  swift_unknownObjectRelease();
  v204 = os_log_type_enabled(v202, v203);
  v227 = a5;
  if (v204)
  {
    v205 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    v246 = swift_slowAlloc();
    aBlock = v246;
    *v205 = 136315394;
    v206 = [a5 displayName];
    LODWORD(v244) = v203;
    v207 = v206;
    v208 = v201;
    v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v210 = v32;
    v212 = v211;

    v213 = v209;
    v201 = v208;
    v214 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v213, v212, &aBlock);
    v32 = v210;

    *(v205 + 4) = v214;
    *(v205 + 12) = 2112;
    *(v205 + 14) = v208;
    v215 = v245;
    *v245 = v190;
    v216 = v208;
    _os_log_impl(&dword_2493AC000, v202, v244, "Building FINode from FPv2 node: (%s) with domain (%@)", v205, 0x16u);
    outlined destroy of CharacterSet?(v215, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v215, -1, -1);
    v217 = v246;
    __swift_destroy_boxed_opaque_existential_0(v246);
    MEMORY[0x24C1FE850](v217, -1, -1);
    MEMORY[0x24C1FE850](v205, -1, -1);
  }

  v246 = objc_opt_self();
  v218 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v219 = swift_allocObject();
  v220 = v230;
  v219[2] = v218;
  v219[3] = v220;
  v221 = v227;
  v219[4] = v232;
  v219[5] = v221;
  v222 = v236;
  v219[6] = v235;
  v219[7] = v222;
  v252 = closure #2 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)partial apply;
  v253 = v219;
  aBlock = MEMORY[0x277D85DD0];
  v249 = 1107296256;
  v250 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v251 = &block_descriptor_707;
  v223 = _Block_copy(&aBlock);
  v224 = v189;
  swift_unknownObjectRetain();

  v225 = v201;

  [v246 fiNodeFromItem:v181 inFPv2Domain:v225 completion:v223];
  _Block_release(v223);
}

uint64_t DOCConfiguration.allowsSelecting(_:pickerContext:)(void *a1, uint64_t a2)
{
  type metadata accessor for DOCFileProviderSource();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return 1;
  }

  v5 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (!v5)
  {
    return 1;
  }

  v6 = a1;
  v7 = v5;
  v8 = DOCConfiguration.allowsSelecting(_:pickerContext:)(v7, a2);

  return v8 & 1;
}

{
  v3 = v2;
  v6 = [objc_opt_self() defaultPermission];
  if (a2 && (v7 = DOCPickerContext.fpfs_allFPItemsToMove()()) != 0)
  {
    v8 = v7;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  if (v8 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_7;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_7:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [v6 canItems:isa performAction:objc_msgSend(v6 fileProviderDomain:{sel_userActionForConfiguration_, v3), a1}];

    goto LABEL_10;
  }

  v10 = 1;
LABEL_10:
  if ([v3 forPickingFoldersOnly])
  {
    v11 = [a1 supportsPickingFolders];
  }

  else
  {
    v11 = 1;
  }

  return v10 & v11;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
  v4 = a1;
  v5 = specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(v4, 3);

  LOBYTE(v4) = DOCConfiguration.allowsSelecting(_:pickerContext:)(v5, a2);
  return v4 & 1;
}

void closure #1 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.Enumeration);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v54 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v59[0] = v13;
    *v12 = 136315138;
    v14 = *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
    if (v14)
    {
      v15 = [v14 identifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 4271950;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v59);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_2493AC000, v10, v11, "Building FINode from domain (%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v12, -1, -1);

    a3 = v54;
  }

  else
  {
  }

  swift_beginAccess();
  v20 = *(a2 + 16);
  v21 = *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    v24 = specialized static DOCRootNode.rootNode(for:)(v23);
    if (v24)
    {
      v25 = v24;
      swift_unknownObjectRetain();
      v26 = v25;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v58 = v55;
        *v29 = 136315394;
        v30 = [a3 displayName];
        v31 = v22;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v28;
        v34 = v33;

        v35 = v32;
        v22 = v31;
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v58);

        *(v29 + 4) = v36;
        *(v29 + 12) = 2112;
        *(v29 + 14) = v26;
        *v53 = v25;
        v37 = v26;
        _os_log_impl(&dword_2493AC000, v27, v52, "Resolved Node (%s to (%@", v29, 0x16u);
        outlined destroy of CharacterSet?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C1FE850](v53, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x24C1FE850](v55, -1, -1);
        MEMORY[0x24C1FE850](v29, -1, -1);
      }

      v38 = [v9 identifier];
      v20 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v38 node:v26];

      goto LABEL_19;
    }
  }

  else
  {
    v39 = v20;
  }

  swift_unknownObjectRetain();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v58 = v43;
    *v42 = 136315138;
    v44 = [a3 displayName];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v58);

    *(v42 + 4) = v48;
    _os_log_impl(&dword_2493AC000, v40, v41, "Couldn't resolve Node (%s to an FINode", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x24C1FE850](v43, -1, -1);
    MEMORY[0x24C1FE850](v42, -1, -1);
  }

LABEL_19:
  v49 = swift_allocObject();
  v49[2] = a4;
  v49[3] = a5;
  v49[4] = v20;
  v49[5] = v9;
  v50 = v9;

  v51 = v20;
  DOCRunInMainThread(_:)();
}

char *closure #2 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v34 = *(v18 - 8);
  v35 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v32 = *&result[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_nodeResolvingQueue];

    v24 = swift_allocObject();
    v24[2] = a4;
    v24[3] = a1;
    v24[4] = a5;
    v24[5] = a6;
    v25 = v33;
    v24[6] = a2;
    v24[7] = v25;
    v24[8] = a8;
    aBlock[4] = partial apply for closure #1 in closure #2 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_678;
    v26 = _Block_copy(aBlock);

    v27 = a1;
    v28 = a5;
    swift_unknownObjectRetain();
    v29 = a2;

    static DispatchQoS.unspecified.getter();
    v37 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = v32;
    MEMORY[0x24C1FB9A0](0, v21, v17, v26);
    _Block_release(v26);

    (*(v36 + 8))(v17, v14);
    (*(v34 + 8))(v21, v35);
  }

  return result;
}

void closure #1 in closure #2 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v14 = *(a1 + 16);
  if (a2)
  {
    v15 = v14;
    v16 = a2;
    v17 = [a3 identifier];
    v18 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v17 node:v16];
  }

  else
  {
    v19 = one-time initialization token for Enumeration;
    v18 = v14;
    if (v19 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.Enumeration);
    swift_unknownObjectRetain();
    v21 = a5;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v22, v23))
    {
      v38 = v23;
      v24 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v24 = 136315394;
      v25 = [a4 displayName];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v39);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      if (a5)
      {
        swift_getErrorValue();
        v30 = Error.localizedDescription.getter();
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
        v30 = 4271950;
      }

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v39);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_2493AC000, v22, v38, "Failed to create FINode for node (%s), error: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v37, -1, -1);
      MEMORY[0x24C1FE850](v24, -1, -1);
    }
  }

  v34 = swift_allocObject();
  v34[2] = a6;
  v34[3] = a7;
  v34[4] = v18;
  v34[5] = a3;

  v35 = a3;
  v36 = v18;
  DOCRunInMainThread(_:)();
}

char *closure #3 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v51 = a6;
  v52 = a8;
  v48 = a7;
  v49 = a5;
  v55 = a4;
  v50 = a2;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v54 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v53 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8, v21);
  v23 = &v43 - v22;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = result;
    v47 = *&result[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_nodeResolvingQueue];

    outlined init with copy of DOCGridLayout.Spec?(a1, v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v26 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v27 = (v20 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v14;
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = v10;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = v11;
    v31 = swift_allocObject();
    *(v31 + 16) = v55;
    outlined init with take of URL?(v23, v31 + v26);
    v43 = v17;
    v32 = v50;
    *(v31 + v27) = v49;
    *(v31 + v28) = a3;
    v33 = v51;
    *(v31 + v29) = v51;
    *(v31 + v30) = v32;
    v34 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
    v35 = v52;
    *v34 = v48;
    v34[1] = v35;
    aBlock[4] = partial apply for closure #1 in closure #3 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:);
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_687;
    v36 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    v37 = v33;
    v38 = v32;

    v39 = v43;
    static DispatchQoS.unspecified.getter();
    v56 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v40 = v54;
    v41 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v42 = v47;
    MEMORY[0x24C1FB9A0](0, v39, v40, v36);
    _Block_release(v36);

    (*(v45 + 8))(v40, v41);
    (*(v53 + 8))(v39, v46);
  }

  return result;
}

uint64_t closure #1 in closure #3 in closure #6 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, id a5, void *a6, uint64_t a7, uint64_t a8)
{
  v115 = a7;
  v116 = a8;
  v114 = a6;
  v112 = a4;
  v117 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v113 = &v104[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v104[-v16];
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v111 = &v104[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v104[-v24];
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v104[-v28];
  swift_beginAccess();
  v30 = *(a1 + 16);
  outlined init with copy of DOCGridLayout.Spec?(a2, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v31 = v30;
    outlined destroy of CharacterSet?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.Enumeration);
    v33 = v117;
    swift_unknownObjectRetain();
    v34 = v114;
    v35 = v114;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v118[0] = v39;
      *v38 = 136315394;
      v40 = [v33 displayName];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44 = v114;
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v118);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2080;
      if (v44)
      {
        swift_getErrorValue();
        v46 = Error.localizedDescription.getter();
        v48 = v47;
      }

      else
      {
        v48 = 0xE300000000000000;
        v46 = 4271950;
      }

      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v118);

      *(v38 + 14) = v98;
      _os_log_impl(&dword_2493AC000, v36, v37, "Couldn't get URL to resolve node (%s, error: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v39, -1, -1);
      MEMORY[0x24C1FE850](v38, -1, -1);
    }
  }

  else
  {
    v114 = a5;
    (*(v19 + 32))(v29, v17, v18);
    v49 = one-time initialization token for Enumeration;
    v110 = v30;
    if (v49 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    v51 = __swift_project_value_buffer(v50, static Logger.Enumeration);
    v109 = *(v19 + 16);
    v109(v25, v29, v18);
    v52 = v117;
    swift_unknownObjectRetain();
    v107 = v51;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v108 = v29;
      v56 = v55;
      v106 = swift_slowAlloc();
      v118[0] = v106;
      *v56 = 136315394;
      v57 = [v52 displayName];
      v105 = v54;
      v58 = v57;
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v19;
      v62 = v61;

      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v62, v118);
      v19 = v60;

      *(v56 + 4) = v63;
      *(v56 + 12) = 2080;
      v64 = URL.absoluteString.getter();
      v66 = v65;
      v67 = *(v60 + 8);
      (v67)(v25, v18);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v118);
      v69 = v67;

      *(v56 + 14) = v68;
      _os_log_impl(&dword_2493AC000, v53, v105, "Building FINode for node (%s) with URL: %s.", v56, 0x16u);
      v70 = v106;
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v70, -1, -1);
      v71 = v56;
      v29 = v108;
      MEMORY[0x24C1FE850](v71, -1, -1);
    }

    else
    {

      v69 = *(v19 + 8);
      (v69)(v25, v18);
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
    v72 = v113;
    v73 = v109;
    v109(v113, v29, v18);
    (*(v19 + 56))(v72, 0, 1, v18);
    v74 = static FINode.docNode(from:)(v72);
    outlined destroy of CharacterSet?(v72, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v31 = v110;
    if (v74)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v76 = Strong;
        v77 = specialized DOCHierarchyController.presentationLocation(for:location:)(v74, v31);

        (v69)(v29, v18);
        v31 = v77;
        a5 = v114;
      }

      else
      {
        a5 = v114;
        v96 = [v114 identifier];
        v97 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v96 node:v74];

        (v69)(v29, v18);
        v31 = v97;
      }
    }

    else
    {
      v113 = v69;
      v78 = v111;
      v73(v111, v29, v18);
      v79 = v117;
      swift_unknownObjectRetain();
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v108 = v29;
        v112 = v83;
        v118[0] = v83;
        *v82 = 136315394;
        v84 = [v79 displayName];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v118);

        *(v82 + 4) = v88;
        *(v82 + 12) = 2080;
        v89 = v111;
        v90 = URL.absoluteString.getter();
        v92 = v91;
        v93 = v113;
        (v113)(v89, v18);
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v118);

        *(v82 + 14) = v94;
        _os_log_impl(&dword_2493AC000, v80, v81, "Failed to create FINode for node (%s) with URL: %s. Does the node exist on disk? It should.", v82, 0x16u);
        v95 = v112;
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v95, -1, -1);
        MEMORY[0x24C1FE850](v82, -1, -1);

        v93(v108, v18);
      }

      else
      {

        v103 = v113;
        (v113)(v78, v18);
        v103(v29, v18);
      }

      a5 = v114;
    }
  }

  v99 = swift_allocObject();
  v99[2] = v115;
  v99[3] = v116;
  v99[4] = v31;
  v99[5] = a5;

  v100 = a5;
  v101 = v31;
  DOCRunInMainThread(_:)();
}

void closure #8 in DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = [objc_opt_self() defaultLocation];
  }

  v7 = v6;
  DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v6, 0, a3, a4);
}

uint64_t closure #1 in DOCHierarchyController.getSource(for:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = a5;
  v11 = a2;

  v12 = a5;
  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in DOCHierarchyController.getSource(for:completion:)(uint64_t a1, void (*a2)(void *), uint64_t a3, unint64_t a4, void *a5)
{
  v7 = a2;
  if (a1)
  {
    if (one-time initialization token for UI != -1)
    {
LABEL_28:
      swift_once();
    }

    v8 = static DOCLog.UI;
    v9 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_249B9A480;
    v11 = _convertErrorToNSError(_:)();
    *(v10 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v10 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v10 + 32) = v11;
    os_log(_:dso:log:type:_:)("Error fetching the sources %@", 29, 2, &dword_2493AC000, v8, v9, v10);

    (v7)(0);
    return;
  }

  v13 = a4;
  if (a4 >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_30:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v28 = static DOCLog.UI;
    v29 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_249B9A480;
    *(v30 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    *(v30 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type DOCConcreteLocation and conformance NSObject, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    *(v30 + 32) = a5;
    v31 = a5;
    os_log(_:dso:log:type:_:)("Cannot find source for location %@", 34, 2, &dword_2493AC000, v28, v29, v30);

    a2(0);
    return;
  }

  v14 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_6:
  v7 = 0;
  v34 = v13 & 0xFFFFFFFFFFFFFF8;
  v35 = (v13 & 0xC000000000000001);
  v33 = v13;
  while (v35)
  {
    v15 = MEMORY[0x24C1FC540](v7, v13);
    v16 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      goto LABEL_22;
    }

LABEL_11:
    v5 = v15;
    v13 = [v15 identifier];
    v6 = [a5 sourceIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
    {
      goto LABEL_23;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_24;
    }

    type metadata accessor for DOCFileProviderSource();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = *(v23 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v24)
      {
        v25 = v5;
        v26 = v24;
        v27 = [a5 sourceIdentifier];
        v6 = FPProviderDomain.matches(iCloudSourceIdentifier:)(v27);

        if (v6)
        {
          goto LABEL_24;
        }
      }
    }

    ++v7;
    v13 = v33;
    if (v16 == v14)
    {
      goto LABEL_30;
    }
  }

  if (v7 >= *(v34 + 16))
  {
    __break(1u);
    goto LABEL_28;
  }

  v15 = *(v13 + 8 * v7 + 32);
  v16 = (v7 + 1);
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_11;
  }

LABEL_22:
  __break(1u);
LABEL_23:

LABEL_24:
  v36 = v5;
  a2(v5);
}

Swift::Bool __swiftcall FPProviderDomain.matches(iCloudSourceIdentifier:)(__C::DOCDocumentSourceIdentifier iCloudSourceIdentifier)
{
  v2 = [v1 isiCloudDriveProvider];
  v3 = [v1 isEnterpriseDomain];
  v4 = [v1 isHidden];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = String.hasPrefix(_:)(v5);

  if (v6)
  {
    if (v2)
    {
      v7 = v3 & (v4 ^ 1);
      return v7 & 1;
    }

    goto LABEL_12;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String.hasPrefix(_:)(v8);

  if (v9)
  {
    if (v2)
    {
      v7 = (v3 | v4) ^ 1;
      return v7 & 1;
    }

LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String.hasPrefix(_:)(v10);

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String.hasPrefix(_:)(v12);

    if (!v13)
    {
      goto LABEL_12;
    }
  }

  v14 = [v1 providerID];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    v7 = 1;
    return v7 & 1;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v20 & 1;
}

void thunk for @escaping @callee_guaranteed (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v4(v5, a3);
}

id firstInfo #1 () in DOCHierarchyController.loadParentIfNeeded()(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    if (one-time initialization token for UI == -1)
    {
LABEL_16:
      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.UI);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2493AC000, v16, v17, "Location cannot load a parent [locations array is empty]", v18, 2u);
        MEMORY[0x24C1FE850](v18, -1, -1);
      }

      return 0;
    }

LABEL_23:
    swift_once();
    goto LABEL_16;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v3 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_23;
  }

  v4 = MEMORY[0x24C1FC540](0, v3);

LABEL_6:
  v5 = [v4 fileProviderItem];
  if (!v5)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = static DOCLog.UI;
    v12 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_249B9A480;
    *(v13 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    *(v13 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type DOCConcreteLocation and conformance NSObject, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    *(v13 + 32) = v4;
    v14 = v4;
    os_log(_:dso:log:type:_:)("Location %@ cannot load a parent", 32, 2, &dword_2493AC000, v11, v12, v13);

    return 0;
  }

  v6 = v5;
  if ([v4 isRoot])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = static DOCLog.UI;
    v8 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249B9A480;
    *(v9 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    *(v9 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type DOCConcreteLocation and conformance NSObject, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    *(v9 + 32) = v4;
    v10 = v4;
    os_log(_:dso:log:type:_:)("Location is already the root location", 37, 2, &dword_2493AC000, v7, v8, v9);

    return 0;
  }

  return v4;
}

uint64_t closure #1 in gatherResolvedInfoForParentItems #1 (_:completion:) in DOCHierarchyController.loadParentIfNeeded()(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (!a1)
  {
    if (one-time initialization token for UI == -1)
    {
LABEL_12:
      v21 = static DOCLog.UI;
      v22 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_249B9A480;
      *(v23 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      *(v23 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      *(v23 + 32) = a3;
      v24 = a3;
      os_log(_:dso:log:type:_:)("Error fetching the parent of item %@ [nil results]", 50, 2, &dword_2493AC000, v21, v22, v23);

      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = a5;

LABEL_29:
      DOCRunInMainThread(_:)();
      goto LABEL_30;
    }

LABEL_35:
    swift_once();
    goto LABEL_12;
  }

  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_26:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v48 = static DOCLog.UI;
    v49 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_249B9A480;
    *(v50 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    *(v50 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    *(v50 + 32) = a3;
    v51 = a3;
    os_log(_:dso:log:type:_:)("Error fetching parents of item %@ [no results]", 46, 2, &dword_2493AC000, v48, v49, v50);

    v52 = swift_allocObject();
    *(v52 + 16) = a4;
    *(v52 + 24) = a5;

    goto LABEL_29;
  }

  v44 = a7;
  v45 = a2;
  v46 = a6;
  v47 = __CocoaSet.count.getter();
  a6 = v46;
  a2 = v45;
  a7 = v44;
  if (!v47)
  {
    goto LABEL_26;
  }

LABEL_4:
  v56 = a2;
  v57 = a7;
  v55 = a6;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(v11 + 16))
    {
      v12 = *(a1 + 32);

      v13 = v12;
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_35;
  }

  v13 = MEMORY[0x24C1FC540](0, a1);
LABEL_7:
  v14 = v13;
  v15 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  if (static NSObject.== infix(_:_:)())
  {

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v16 = static DOCLog.UI;
    v17 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_249B9A480;
    *(v18 + 56) = v15;
    *(v18 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    *(v18 + 32) = a3;
    v19 = a3;
    os_log(_:dso:log:type:_:)("Error prepending to item %@ [item was already the parent]", 57, 2, &dword_2493AC000, v16, v17, v18);

    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    DOCRunInMainThread(_:)();

    goto LABEL_30;
  }

  v54 = a4;
  v26 = [v14 itemIdentifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
  {
    v31 = 1;
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  if (([a3 isTrashed] & 1) == 0)
  {
    if ((v31 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v33 = [objc_opt_self() trashedItemsLocation];
    goto LABEL_22;
  }

  if ((v31 | [v14 isRootItem]))
  {
    goto LABEL_21;
  }

LABEL_19:
  v32 = [a3 providerDomainID];
  v33 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v32 node:v14];

LABEL_22:
  v34 = one-time initialization token for UI;
  v35 = v33;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = static DOCLog.UI;
  v37 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_249B9A480;
  *(v38 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  *(v38 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type DOCConcreteLocation and conformance NSObject, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  *(v38 + 32) = v35;
  v39 = v35;
  os_log(_:dso:log:type:_:)("Parent fetched. Inserting a new location %@", 43, 2, &dword_2493AC000, v36, v37, v38);

  v40 = swift_allocObject();
  v40[2] = v55;
  v40[3] = v56;
  v40[4] = a3;
  v40[5] = v54;
  v40[6] = a5;
  v40[7] = v57;
  v40[8] = a1;

  v41 = v55;
  v42 = v56;
  v43 = a3;

  specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v39, 0, v41, partial apply for closure #1 in closure #1 in gatherResolvedInfoForParentItems #1 (_:completion:) in DOCHierarchyController.loadParentIfNeeded(), v40);

LABEL_30:
}

unint64_t closure #1 in closure #1 in gatherResolvedInfoForParentItems #1 (_:completion:) in DOCHierarchyController.loadParentIfNeeded()(void *a1, void *a2, char *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v17 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
  swift_beginAccess();
  v18 = *&a3[v17];
  if (v18 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_32;
    }
  }

  else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {

    v19 = MEMORY[0x24C1FC540](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_39;
    }

    v19 = *(v18 + 32);
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  v20 = a4;
  v21 = static NSObject.== infix(_:_:)();

  if ((v21 & 1) == 0)
  {
LABEL_32:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v44 = static DOCLog.UI;
    v45 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_249B9A480;
    *(v46 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    *(v46 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type DOCConcreteLocation and conformance NSObject, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    *(v46 + 32) = a1;
    v47 = a1;
    os_log(_:dso:log:type:_:)("The first location changed. We should not load the parent anymore", 65, 2, &dword_2493AC000, v44, v45, v46);

    v48 = swift_allocObject();
    *(v48 + 16) = a6;
    *(v48 + 24) = a7;

    goto LABEL_35;
  }

  v18 = a9;
  swift_beginAccess();
  v22 = a2;
  specialized Array.replaceSubrange<A>(_:with:)(0, 0, a1, a2);
  swift_endAccess();
  v9 = a9 >> 62;
  if (!(a9 >> 62))
  {
    v23 = *((a9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v23 != 0;
    if (v23 >= v24)
    {
LABEL_9:
      if ((v18 & 0xC000000000000001) != 0 && v23 > 1)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);

        v25 = v24;
        do
        {
          v26 = v25 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v25);
          v25 = v26;
        }

        while (v23 != v26);
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (!v9)
        {
LABEL_14:
          v27 = v18 & 0xFFFFFFFFFFFFFF8;
          v28 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
          v29 = (2 * v23) | 1;
LABEL_18:
          v33 = v28;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            swift_unknownObjectRelease();
            v34 = MEMORY[0x277D84F90];
          }

          v35 = *(v34 + 16);

          if (__OFSUB__(v29 >> 1, v24))
          {
            __break(1u);
          }

          else if (v35 == (v29 >> 1) - v24)
          {
            v18 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v18)
            {
LABEL_25:
              if ((v18 & 0x8000000000000000) == 0 && (v18 & 0x4000000000000000) == 0)
              {
                if (*(v18 + 16))
                {
                  goto LABEL_28;
                }

                goto LABEL_45;
              }

LABEL_44:
              if (__CocoaSet.count.getter())
              {
LABEL_28:
                v36 = firstInfo #1 () in DOCHierarchyController.loadParentIfNeeded()(a3);
                if (v36)
                {
                  v38 = v36;
                  v39 = v37;
                  v40 = swift_allocObject();
                  v40[2] = v18;
                  v40[3] = v38;
                  v40[4] = v39;
                  v40[5] = a6;
                  v40[6] = a7;
                  v40[7] = a3;
                  v40[8] = a8;
                  v41 = v38;
                  v42 = v39;

                  v43 = a3;

                  DOCRunInMainThread(_:)();
                }
              }

LABEL_45:

              v50 = swift_allocObject();
              *(v50 + 16) = a6;
              *(v50 + 24) = a7;

LABEL_35:
              DOCRunInMainThread(_:)();
            }

            v18 = MEMORY[0x277D84F90];
LABEL_24:
            swift_unknownObjectRelease();
            goto LABEL_25;
          }

          swift_unknownObjectRelease();
          v28 = v33;
LABEL_17:
          specialized _copyCollectionToContiguousArray<A>(_:)(v27, v28, v24, v29, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
          v18 = v32;
          goto LABEL_24;
        }
      }

      v27 = _CocoaArrayWrapper.subscript.getter();
      v24 = v30;
      v29 = v31;
      if ((v31 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_39:
  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    v23 = result;
    v24 = result != 0;
    if (__CocoaSet.count.getter() >= v24)
    {
      if (__CocoaSet.count.getter() >= v23)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in DOCHierarchyController.loadParentIfNeeded()(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;
  v13 = a2;

  v14 = a3;
  v15 = a4;
  v16 = a5;

  DOCRunInMainThread(_:)();
}

void closure #1 in closure #1 in DOCHierarchyController.loadParentIfNeeded()(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v7 = static DOCLog.UI;
    v8 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249B9FA70;
    *(v9 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    *(v9 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    *(v9 + 32) = a3;
    v10 = a3;
    v11 = _convertErrorToNSError(_:)();
    *(v9 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v9 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v9 + 72) = v11;
    os_log(_:dso:log:type:_:)("Error fetching the parent of item %@ error %@", 45, 2, &dword_2493AC000, v7, v8, v9);
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a5;
    *(v15 + 24) = a4;

    v16 = a4;
    v17 = firstInfo #1 () in DOCHierarchyController.loadParentIfNeeded()(v16);
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      v21 = swift_allocObject();
      v21[2] = a6;
      v21[3] = v19;
      v21[4] = v20;
      v21[5] = partial apply for closure #1 in closure #1 in closure #1 in DOCHierarchyController.loadParentIfNeeded();
      v21[6] = v15;
      v21[7] = v16;
      v21[8] = a5;

      v22 = v19;
      v23 = v20;

      v24 = v16;
      DOCRunInMainThread(_:)();
    }

    else
    {
      v25 = swift_allocObject();
      *(v25 + 16) = partial apply for closure #1 in closure #1 in closure #1 in DOCHierarchyController.loadParentIfNeeded();
      *(v25 + 24) = v15;

      DOCRunInMainThread(_:)();
    }
  }
}

void closure #1 in closure #1 in closure #1 in DOCHierarchyController.loadParentIfNeeded()(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC17UpdateExpectation33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v34 - v6;
  updated = type metadata accessor for DOCHierarchyController.UpdateExpectation(0);
  v9 = *(updated - 8);
  MEMORY[0x28223BE20](updated, v10);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    v36 = v9;
    v37 = a1;
    v14 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v41 = *&a2[v14];
    v40 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = 32;
    do
    {
      v16 = *(v12 + v15);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += 16;
      --v13;
    }

    while (v13);

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v40);

    v17 = v41;
    v18 = v34;
    UUID.init()();
    *&v18[*(updated + 20)] = v17;
    outlined init with copy of DOCHierarchyController.FetchingOperationToken(v18, v7, type metadata accessor for DOCHierarchyController.UpdateExpectation);
    (*(v36 + 56))(v7, 0, 1, updated);
    v19 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__currentUpdateExpectation;
    swift_beginAccess();
    outlined assign with take of DOCHierarchyController.UpdateExpectation?(v7, &a2[v19]);
    swift_endAccess();
    v20 = v37;
    swift_beginAccess();
    v21 = *(*(v20 + 16) + 16);
    v36 = *(v20 + 16);

    swift_beginAccess();
    if (v21)
    {
      v22 = (v36 + 16 * v21 + 24);
      v35 = v14;
      while (v21 <= *(v36 + 16))
      {
        v24 = *(v22 - 1);
        v23 = *v22;
        Strong = swift_unknownObjectWeakLoadStrong();
        v26 = v23;
        if (Strong)
        {
          [Strong hierarchyController:a2 willPrepend:v24 source:v26];
          swift_unknownObjectRelease();
        }

        else
        {
          v27 = v24;
        }

        v39 = *&a2[v14];
        if (v39 >> 62 && __CocoaSet.count.getter() < 0)
        {
          __break(1u);
          goto LABEL_16;
        }

        v37 = v21;
        v28 = v24;

        specialized Array.replaceSubrange<A>(_:with:)(0, 0, v28);

        v29 = v39;
        v38 = a2;
        swift_getKeyPath();
        _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
        v38 = a2;
        swift_getKeyPath();
        _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
        v30 = MEMORY[0x24C1FAD20](0x61636F4C7473616CLL, 0xEC0000006E6F6974);
        [a2 willChangeValueForKey_];

        *&a2[v14] = v29;

        v31 = MEMORY[0x24C1FAD20](0x61636F4C7473616CLL, 0xEC0000006E6F6974);
        [a2 didChangeValueForKey_];

        v38 = a2;
        swift_getKeyPath();
        _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
        v38 = a2;
        swift_getKeyPath();
        _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          [v32 hierarchyController:a2 didPrepend:v28 source:v26];
          swift_unknownObjectRelease();
        }

        v21 = v37 - 1;

        v22 -= 2;
        v14 = v35;
        if (!v21)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:

      v33 = v34;
      DOCHierarchyController.endUpdateExpectation(_:)(v34);
      outlined destroy of DOCHierarchyController.FetchingOperationToken(v33, type metadata accessor for DOCHierarchyController.UpdateExpectation);
    }
  }
}

void closure #1 in DOCHierarchyController.resolvedLocation(for:completion:)(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  if (a2)
  {
    if (one-time initialization token for UI != -1)
    {
LABEL_42:
      swift_once();
    }

    v8 = static DOCLog.UI;
    v9 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_249B9A480;
    v11 = _convertErrorToNSError(_:)();
    *(v10 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v10 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v10 + 32) = v11;
    os_log(_:dso:log:type:_:)("Error when getting the sources to resolve the location", 54, 2, &dword_2493AC000, v8, v9, v10);

    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v6;

    goto LABEL_30;
  }

  if (a1 >> 62)
  {
    v15 = __CocoaSet.count.getter();
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_25:
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.UI);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2493AC000, v39, v40, "Sources don't contain the location source", v41, 2u);
      MEMORY[0x24C1FE850](v41, -1, -1);
    }

    v42 = swift_allocObject();
    *(v42 + 16) = a3;
    *(v42 + 24) = a4;

LABEL_30:
    DOCRunInMainThread(_:)();
LABEL_31:

    return;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_6:
  v7 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x24C1FC540](v7, a1);
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v16 = *(a1 + 8 * v7 + 32);
    }

    v17 = v16;
    v6 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v18 = [v16 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
    {
      break;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_20;
    }

    ++v7;
    if (v6 == v15)
    {
      goto LABEL_25;
    }
  }

LABEL_20:
  type metadata accessor for DOCFileProviderSource();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {

    goto LABEL_25;
  }

  v26 = v25;
  v27 = *(v25 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (!v27)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.UI);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2493AC000, v44, v45, "Source doesn't contain a file provider domain", v46, 2u);
      MEMORY[0x24C1FE850](v46, -1, -1);
    }

    v47 = swift_allocObject();
    *(v47 + 16) = a3;
    *(v47 + 24) = a4;

    DOCRunInMainThread(_:)();

    goto LABEL_31;
  }

  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = a5;
  v28[4] = a3;
  v28[5] = a4;
  v29 = v27;
  v30 = v17;

  v31 = a5;
  if (FPProviderDomain.shouldUseDSEnumeration.getter())
  {
    v32 = specialized static DOCRootNode.rootNode(for:)(v29);
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v26;
    v33[4] = 0;
    v33[5] = v31;
    v33[6] = a3;
    v33[7] = a4;
    v34 = v32;
    v35 = v30;

    v36 = v31;
    v37 = v34;
    DOCRunInMainThread(_:)();

    goto LABEL_31;
  }

  v48 = *(a6 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_itemManager);
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for closure #5 in closure #1 in DOCHierarchyController.resolvedLocation(for:completion:);
  *(v49 + 24) = v28;
  aBlock[4] = partial apply for closure #1 in NSItemProvider.doc_nodeFromTeamData(completion:);
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_729;
  v50 = _Block_copy(aBlock);

  [v48 doc:v29 fetchRootNodeForProviderDomain:v50 completionHandler:?];

  _Block_release(v50);
}

uint64_t closure #5 in closure #1 in DOCHierarchyController.resolvedLocation(for:completion:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a3;
  v12[4] = a2;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = a2;
  v15 = a4;

  DOCRunInMainThread(_:)();
}

void closure #1 in closure #5 in closure #1 in DOCHierarchyController.resolvedLocation(for:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(id))
{
  if (a1)
  {
    if (([swift_unknownObjectRetain() isFolder] & 1) == 0)
    {
      v18 = [a2 identifier];
      v19 = [a2 displayName];
      if (!v19)
      {
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = MEMORY[0x24C1FAD20](v20);
      }

      v21 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v18 title:v19];

      [v21 setIsFPV2_];
      v22 = [a2 promptText];
      if (!v22)
      {
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = MEMORY[0x24C1FAD20](v23);
      }

      [v21 setPromptText_];
      swift_unknownObjectRelease();

      goto LABEL_25;
    }

    swift_unknownObjectRelease();
  }

  if (!a3)
  {
LABEL_24:
    v21 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:a4 node:a1];
    goto LABEL_25;
  }

  v10 = _convertErrorToNSError(_:)();
  v11 = [v10 domain];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if ([v10 code] != -1000)
  {
LABEL_23:

    goto LABEL_24;
  }

  v24 = [a2 identifier];
  v25 = [a2 displayName];
  if (!v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = MEMORY[0x24C1FAD20](v26);
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v24 title:v25];

  [v21 setIsFPV2_];
  v27 = [a2 promptText];
  if (!v27)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = MEMORY[0x24C1FAD20](v28);
  }

  [v21 setPromptText_];

LABEL_25:
  v29 = v21;
  a5(v21);
}

uint64_t closure #1 in DOCHierarchyController.checkFPItemAvailability(_:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a1;
  v8 = a1;

  DOCRunInMainThread(_:)();
}

id DOCHierarchyController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void DOCHierarchyController.itemDidObserveEvent(_:)()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001FLL, 0x8000000249BCC720);
  [v0 postNotificationName:v1 object:0];
}

void protocol witness for DOCItemHierarchyEventListening.itemDidObserveEvent(_:) in conformance DOCHierarchyController()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001FLL, 0x8000000249BCC720);
  [v0 postNotificationName:v1 object:0];
}

uint64_t DOCHierarchyController.invalidateLocations()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v10 + 104))(v13, *MEMORY[0x277D851C8], v9);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v13, v9);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in DOCHierarchyController.invalidateLocations();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_216;
  v16 = _Block_copy(aBlock);
  v17 = v0;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v8, v4, v16);
  _Block_release(v16);

  (*(v21 + 8))(v4, v1);
  (*(v5 + 8))(v8, v20);
}

void closure #1 in DOCHierarchyController.invalidateLocations()(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v66 = type metadata accessor for DispatchTime();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v3);
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v64 = &v62 - v7;
  if (one-time initialization token for UI != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v8 = static DOCLog.UI;
    v9 = static os_log_type_t.debug.getter();
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v10 = swift_allocObject();
    v78 = xmmword_249B9A480;
    *(v10 + 16) = xmmword_249B9A480;
    *(v10 + 56) = ObjectType;
    *(v10 + 64) = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DOCHierarchyController and conformance NSObject, type metadata accessor for DOCHierarchyController, MEMORY[0x277D85388]);
    *(v10 + 32) = a1;
    v11 = a1;
    v80 = v8;
    os_log(_:dso:log:type:_:)("Locations were invalidated. Re-evaluating locations in hierarchy controller '%@'. Current locations:", 100, 2, &dword_2493AC000, v8, v9, v10);

    v12 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v76 = v11;
    v73 = v12;
    a1 = *&v11[v12];
    if (a1 >> 62)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13)
    {
      v14 = 0;
      v77 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v77)
        {
          v15 = MEMORY[0x24C1FC540](v14, a1);
        }

        else
        {
          if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v15 = *(a1 + 8 * v14 + 32);
        }

        v16 = v15;
        ObjectType = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v17 = static os_log_type_t.debug.getter();
        v18 = swift_allocObject();
        *(v18 + 16) = v78;
        *(v18 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
        *(v18 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type DOCConcreteLocation and conformance NSObject, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
        *(v18 + 32) = v16;
        v19 = v16;
        os_log(_:dso:log:type:_:)("- %@", 4, 2, &dword_2493AC000, v80, v17, v18);

        ++v14;
        if (ObjectType == v13)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_13:

    *&v78 = dispatch_group_create();
    a1 = v73;
    v20 = *&v76[v73];
    v21 = v20 >> 62 ? __CocoaSet.count.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = &selRef__setLocationsInBrowseTab_;
    if (v21 < 2)
    {
      goto LABEL_21;
    }

    v23 = v76;
    swift_beginAccess();
    v24 = *&v23[a1];
    if ((v24 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x24C1FC540](1);
    }

    else
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
LABEL_58:
        swift_once();
        goto LABEL_42;
      }

      v25 = *(v24 + 40);
    }

    v26 = v25;
    swift_endAccess();
    v27 = [v26 fileProviderItem];

    if (v27)
    {
      v80 = [v27 parentItemIdentifier];
    }

    else
    {
LABEL_21:
      v80 = *MEMORY[0x277CC6348];
    }

    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    v75 = swift_allocObject();
    *(v75 + 16) = 0x7FFFFFFFFFFFFFFFLL;
    v28 = swift_allocObject();
    v74 = v28;
    *(v28 + 16) = 0;
    v29 = (v28 + 16);
    v30 = *&v76[a1];
    if (!(v30 >> 62))
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        break;
      }

      goto LABEL_24;
    }

    v31 = __CocoaSet.count.getter();
    if (!v31)
    {
      break;
    }

LABEL_24:
    v71 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_itemManager;
    v32 = v30 & 0xC000000000000001;

    swift_beginAccess();
    v33 = 0;
    v73 = v30 & 0xFFFFFFFFFFFFFF8;
    v70 = v82;
    v69 = v30;
    v72 = v29;
    v68 = v31;
    v67 = v30 & 0xC000000000000001;
    while (1)
    {
      if (v32)
      {
        v35 = MEMORY[0x24C1FC540](v33, v30);
      }

      else
      {
        if (v33 >= *(v73 + 16))
        {
          goto LABEL_49;
        }

        v35 = *(v30 + 8 * v33 + 32);
      }

      v36 = v35;
      ObjectType = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v37 = [v35 v22[408]];
      if (v37)
      {
        v34 = v37;
        if ([v36 isRoot])
        {
          v38 = [v34 itemIdentifier];
        }

        else
        {
          v39 = v78;
          dispatch_group_enter(v78);
          v40 = v74;
          v79 = *(v74 + 16);
          v41 = v22;
          v42 = swift_allocObject();
          v42[2] = v36;
          v42[3] = v39;
          v43 = v75;
          v42[4] = v40;
          v42[5] = v43;
          v42[6] = v77;
          v36 = v36;
          v44 = v39;

          v45 = [v36 v41 + 1869];
          if (!v45)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

          v46 = v45;
          a1 = swift_allocObject();
          *(a1 + 16) = partial apply for closure #2 in closure #1 in DOCHierarchyController.invalidateLocations();
          *(a1 + 24) = v42;
          v47 = v80;
          *(a1 + 32) = v79;
          *(a1 + 40) = v47;
          v79 = *&v76[v71];

          v80 = v47;
          v48 = [v46 itemID];
          v49 = swift_allocObject();
          *(v49 + 16) = partial apply for closure #1 in DOCHierarchyController.validate(location:atDepth:hasParentItemIdentifier:completion:);
          *(v49 + 24) = a1;
          v82[2] = partial apply for closure #2 in DOCHierarchyController.validate(location:atDepth:hasParentItemIdentifier:completion:);
          v82[3] = v49;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          v82[0] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
          v82[1] = &block_descriptor_238;
          v50 = _Block_copy(aBlock);

          [v79 fetchItemForItemID:v48 completionHandler:v50];
          _Block_release(v50);

          if (__OFADD__(*v72, 1))
          {
            goto LABEL_50;
          }

          ++*v72;
          v38 = [v34 itemIdentifier];
          v22 = &selRef__setLocationsInBrowseTab_;
          v30 = v69;
          v31 = v68;
          v32 = v67;
        }

        a1 = v38;

        v80 = a1;
      }

      else
      {
        v34 = v36;
      }

      ++v33;
      if (ObjectType == v31)
      {

        goto LABEL_40;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
  }

LABEL_40:
  v51 = v63;
  static DispatchTime.now()();
  v52 = v64;
  + infix(_:_:)();
  v53 = *(v65 + 8);
  v54 = v66;
  v53(v51, v66);
  MEMORY[0x24C1FB8F0](v52);
  v53(v52, v54);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_45;
  }

  if (one-time initialization token for UI != -1)
  {
    goto LABEL_58;
  }

LABEL_42:
  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Logger.UI);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_2493AC000, v56, v57, "Time-out occurred for validating locations. Continuing manually...", v58, 2u);
    MEMORY[0x24C1FE850](v58, -1, -1);
  }

LABEL_45:
  v59 = swift_allocObject();
  v60 = v76;
  *(v59 + 16) = v77;
  *(v59 + 24) = v60;
  v61 = v60;

  DOCRunInMainThread(_:)();
}

void closure #2 in closure #1 in DOCHierarchyController.invalidateLocations()(uint64_t a1, uint64_t a2, void *a3, NSObject *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v12 = static DOCLog.UI;
  v13 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249BA08C0;
  v29 = a3;
  v15 = [a3 shortDescription];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v20 = lazy protocol witness table accessor for type String and conformance String();
  v21 = MEMORY[0x277D83B88];
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v22 = MEMORY[0x277D83C10];
  *(v14 + 96) = v21;
  *(v14 + 104) = v22;
  *(v14 + 64) = v20;
  *(v14 + 72) = a2;
  v23 = 28494;
  if (v11)
  {
    v23 = 7562585;
  }

  v24 = 0xE200000000000000;
  if (v11)
  {
    v24 = 0xE300000000000000;
  }

  *(v14 + 136) = v19;
  *(v14 + 144) = v20;
  *(v14 + 112) = v23;
  *(v14 + 120) = v24;
  os_log(_:dso:log:type:_:)("Location '%@' at depth %d is valid: %@", 38, 2, &dword_2493AC000, v12, v13, v14);

  if (v11)
  {
  }

  else
  {
    swift_beginAccess();
    v25 = *(a5 + 16);
    swift_beginAccess();
    if (v25 < *(a6 + 16))
    {
      swift_beginAccess();
      *(a6 + 16) = v25;
      swift_beginAccess();
      v26 = *(a7 + 16);
      *(a7 + 16) = v29;

      v27 = v29;
    }
  }

  dispatch_group_leave(a4);
}

void closure #3 in closure #1 in DOCHierarchyController.invalidateLocations()(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    v7 = swift_beginAccess();
    v8 = *&a2[v6];
    v20 = v5;
    MEMORY[0x28223BE20](v7, v9);
    v19[2] = &v20;
    v10 = v5;

    LOBYTE(v6) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v19, v8);

    if (v6)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v11 = static DOCLog.UI;
      v12 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_249B9FA70;
      v14 = [v10 shortDescription];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v13 + 32) = v15;
      *(v13 + 40) = v17;
      *(v13 + 96) = ObjectType;
      *(v13 + 104) = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DOCHierarchyController and conformance NSObject, type metadata accessor for DOCHierarchyController, MEMORY[0x277D85388]);
      *(v13 + 72) = a2;
      v18 = a2;
      os_log(_:dso:log:type:_:)("Will drop everything starting with and including location '%@' in hierarchy controller '%@'", 91, 2, &dword_2493AC000, v11, v12, v13);

      specialized DOCHierarchyController.removeTrailingLocations(includingAndAfter:animated:)(v10);
    }
  }
}

uint64_t closure #1 in DOCHierarchyController.validate(location:atDepth:hasParentItemIdentifier:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(id, uint64_t, uint64_t (*)(id, uint64_t), uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = 0;
  if (!a2 && a1)
  {
    v9 = a1;
    v10 = [v9 effectiveParentItemIdentifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0 && ![v9 isAppContainer])
      {
        goto LABEL_13;
      }
    }

    if ([v9 isActionable])
    {
      v8 = [v9 isReadable];
LABEL_14:

      return a3(v8, a5, a3, a4, a5, a6);
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  return a3(v8, a5, a3, a4, a5, a6);
}

void static DOCHierarchyController.getDefaultSource(configuration:sourceObserver:pickerContext:completionBlock:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v11 = static os_log_type_t.info.getter();
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("Obtaining default source...", 27, 2, &dword_2493AC000, v12, v11, MEMORY[0x277D84F90]);

  v13 = [a1 hostIdentifier];
  if (!v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = MEMORY[0x24C1FAD20](v14);
  }

  v15 = objc_opt_self();
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a2;
  v16[5] = a1;
  v16[6] = a3;
  v21[4] = closure #1 in static DOCHierarchyController.getDefaultSource(configuration:sourceObserver:pickerContext:completionBlock:)partial apply;
  v21[5] = v16;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v21[3] = &block_descriptor_142;
  v17 = _Block_copy(v21);
  v18 = a3;

  v19 = a2;
  v20 = a1;

  [v15 defaultSourceForBundleIdentifier:v13 completionBlock:v17];
  _Block_release(v17);
}

void closure #1 in static DOCHierarchyController.getDefaultSource(configuration:sourceObserver:pickerContext:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  if (a1)
  {
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a3;
    v13[4] = a4;
    v13[5] = a6;
    v13[6] = a7;
    v26[4] = partial apply for closure #2 in closure #1 in static DOCHierarchyController.getDefaultSource(configuration:sourceObserver:pickerContext:completionBlock:);
    v26[5] = v13;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 1107296256;
    v26[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
    v26[3] = &block_descriptor_266;
    v14 = _Block_copy(v26);
    v15 = a7;
    v16 = a1;

    v17 = a6;

    [a5 retrieveSourcesForConfiguration:v17 usingBlock:v14];
    _Block_release(v14);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v19 = static DOCLog.UI;
    v20 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_249B9A480;
    if (a2)
    {
      v22 = _convertErrorToNSError(_:)();
      v23 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
      v24 = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    }

    else
    {
      v24 = lazy protocol witness table accessor for type String and conformance String();
      *(v21 + 40) = 0xE900000000000072;
      v22 = 0x6F727265206C696ELL;
      v23 = MEMORY[0x277D837D0];
    }

    *(v21 + 56) = v23;
    *(v21 + 64) = v24;
    *(v21 + 32) = v22;
    os_log(_:dso:log:type:_:)("Error getting the default source %@", 35, 2, &dword_2493AC000, v19, v20, v21);

    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    *(v25 + 24) = a4;

    DOCRunInMainThread(_:)();
  }
}

void closure #2 in closure #1 in static DOCHierarchyController.getDefaultSource(configuration:sourceObserver:pickerContext:completionBlock:)(unint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  iCloudSourceIdentifier = [a3 identifier];
  v106 = a4;
  v107 = a5;
  v102 = a7;
  v103 = a2;
  v101 = a6;
  v108 = a1 >> 62;
  v104 = a3;
  if (a1 >> 62)
  {
LABEL_93:
    v14 = __CocoaSet.count.getter();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (one-time initialization token for UI != -1)
    {
LABEL_96:
      swift_once();
    }

    v40 = static DOCLog.UI;
    v41 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_249B9FA70;
    v43 = [v104 identifier];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v45;

    *(v42 + 56) = MEMORY[0x277D837D0];
    *(v42 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v42 + 32) = v44;
    *(v42 + 40) = v17;
    if (v108)
    {
      v46 = __CocoaSet.count.getter();
    }

    else
    {
      v46 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = MEMORY[0x277D84F90];
    if (v46)
    {
      v113 = MEMORY[0x277D84F90];
      v48 = &v113;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46 & ~(v46 >> 63), 0);
      if (v46 < 0)
      {
        __break(1u);
LABEL_98:
        swift_once();
        goto LABEL_84;
      }

      v105 = v42;
      v109 = v41;
      v49 = 0;
      v47 = v113;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x24C1FC540](v49, a1);
        }

        else
        {
          v50 = *(a1 + 8 * v49 + 32);
        }

        v51 = v50;
        v52 = [v50 identifier];
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v113 = v47;
        v57 = *(v47 + 16);
        v56 = *(v47 + 24);
        if (v57 >= v56 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
          v47 = v113;
        }

        ++v49;
        *(v47 + 16) = v57 + 1;
        v58 = v47 + 16 * v57;
        *(v58 + 32) = v53;
        *(v58 + 40) = v55;
      }

      while (v46 != v49);
      v41 = v109;
      v42 = v105;
    }

    *(v42 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    *(v42 + 104) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277CC9C50]);
    *(v42 + 72) = v47;

    if (v103)
    {
      v59 = v103;
      v60 = static os_log_type_t.error.getter();
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_249B9A480;
      v62 = _convertErrorToNSError(_:)();
      *(v61 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
      *(v61 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
      *(v61 + 32) = v62;
      type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log, 0x277D86200);
      v63 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)("Error: %@", 9, 2, &dword_2493AC000, v63, v60, v61);
    }

    v64 = swift_allocObject();
    *(v64 + 16) = v106;
    *(v64 + 24) = v107;

    DOCRunInMainThread(_:)();

    return;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_3:
  v15 = 0;
  v110 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v110)
    {
      v16 = MEMORY[0x24C1FC540](v15, a1);
    }

    else
    {
      if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_91;
      }

      v16 = *(a1 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v19 = [v16 identifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
    {
      break;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_20;
    }

    type metadata accessor for DOCFileProviderSource();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = *(v26 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v27)
      {
        v28 = v17;
        v29 = v27;
        v30 = FPProviderDomain.matches(iCloudSourceIdentifier:)(iCloudSourceIdentifier);

        if (v30)
        {
          goto LABEL_20;
        }
      }
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_25;
    }
  }

LABEL_20:
  v31 = type metadata accessor for DOCFileProviderSource();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {

    goto LABEL_25;
  }

  v33 = v32;
  v34 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain;
  v35 = *(v32 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  v99 = v31;
  if (v35)
  {
    v36 = [v35 needsAuthentication];
    v37 = *&v33[v34];
    v38 = v102;
    if (v37)
    {
      v39 = [v37 isiCloudDriveProvider] ^ 1;
    }

    else
    {
      LOBYTE(v39) = 1;
    }
  }

  else
  {
    v36 = 0;
    LOBYTE(v39) = 1;
    v38 = v102;
  }

  v65 = [objc_opt_self() defaultManager];
  v66 = [v65 ubiquityIdentityToken];

  if (v66)
  {
    swift_unknownObjectRelease();
  }

  v104 = v33;
  if ([v101 isPickerUI])
  {
    if (!v38)
    {
      goto LABEL_68;
    }

    if (DOCPickerContext.fpfs_allFPItemsToMove()())
    {
      v67 = *&v33[v34];
      if (v67)
      {
        v68 = objc_opt_self();
        v69 = v67;
        v70 = [v68 defaultPermission];
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
        v71.super.isa = Array._bridgeToObjectiveC()().super.isa;

        v72 = [v70 canItems:v71.super.isa performAction:1 fileProviderDomain:v69];

LABEL_62:
        if (v66)
        {
          v73 = 1;
        }

        else
        {
          v73 = v39;
        }

        if ((v36 & 1) == 0 && v72)
        {
          goto LABEL_67;
        }

        goto LABEL_68;
      }
    }

    v74 = [v38 urlsToSave];
    if (!v74)
    {
      goto LABEL_68;
    }

    v75 = *&v104[v34];
    if (!v75)
    {
      goto LABEL_68;
    }

    v76 = objc_opt_self();
    v69 = v75;
    v71.super.isa = [v76 defaultPermission];
    v72 = [(objc_class *)v71.super.isa canHostAppPerformAction:1 fileProviderDomain:v69];
    goto LABEL_62;
  }

  if (v66)
  {
    v73 = 1;
  }

  else
  {
    v73 = v39;
  }

  if ((v36 & 1) == 0)
  {
LABEL_67:
    if (v73)
    {
LABEL_86:
      v97 = swift_allocObject();
      v97[2] = v106;
      v97[3] = v107;
      v97[4] = v104;
      v98 = v17;

      DOCRunInMainThread(_:)();

      goto LABEL_87;
    }
  }

LABEL_68:
  v77 = 0;
  v108 = v14;
  while (1)
  {
    if (v110)
    {
      v78 = MEMORY[0x24C1FC540](v77, a1);
    }

    else
    {
      if (v77 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_96;
      }

      v78 = *(a1 + 8 * v77 + 32);
    }

    v48 = v78;
    v79 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      goto LABEL_92;
    }

    v80 = [v78 identifier];
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;
    if (v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v83 == v84)
    {
      break;
    }

    v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v86)
    {
      goto LABEL_82;
    }

    ++v77;
    if (v79 == v108)
    {
      goto LABEL_86;
    }
  }

LABEL_82:
  a1 = v100;
  v87 = swift_dynamicCastClass();
  if (!v87)
  {

    goto LABEL_86;
  }

  v47 = v87;
  if (one-time initialization token for UI != -1)
  {
    goto LABEL_98;
  }

LABEL_84:
  v111 = static DOCLog.UI;
  v88 = static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_249B9FA70;
  v90 = [v104 displayName];
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v92;

  *(v89 + 56) = MEMORY[0x277D837D0];
  *(v89 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v89 + 32) = v91;
  *(v89 + 40) = v93;
  *(v89 + 96) = a1;
  *(v89 + 104) = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DOCFileProviderSource and conformance NSObject, type metadata accessor for DOCFileProviderSource, MEMORY[0x277D85388]);
  *(v89 + 72) = v104;
  v94 = v17;

  v95 = swift_allocObject();
  v95[2] = v106;
  v95[3] = v107;
  v95[4] = v47;

  v96 = v48;
  DOCRunInMainThread(_:)();

LABEL_87:
}

void closure #1 in static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(char *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (!a1 || (v9 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain]) == 0)
  {
    (a2)(0, a2, a3, a4, a5, a6);
    return;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a4 && v13 == a5)
  {
    v19 = a1;
    v20 = v9;

    goto LABEL_11;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v16 = a1;
  v17 = v9;

  if (v15)
  {
LABEL_11:
    v29 = 0;
    goto LABEL_12;
  }

  v18 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v29 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a4, a5, 0);
LABEL_12:
  if ([a6 isPickerUI] && (specialized static DOCHierarchyController.pickerSupportsDefaultLocation(appRecord:configuration:)(v29, a6) & 1) == 0)
  {
    v25 = [objc_opt_self() defaultManager];
    v26 = swift_allocObject();
    v26[2] = a1;
    v26[3] = a4;
    v26[4] = a5;
    v26[5] = a2;
    v26[6] = a3;
    v34 = partial apply for closure #1 in closure #1 in static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:);
    v35 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
    v33 = &block_descriptor_287;
    v27 = _Block_copy(&aBlock);
    v28 = a1;

    [v25 doc:v9 fetchRootNodeForProviderDomain:v27 completionHandler:?];
    _Block_release(v27);
  }

  else
  {
    v21 = [objc_opt_self() defaultManager];
    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = a2;
    v22[4] = a3;
    v34 = partial apply for closure #2 in closure #1 in static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:);
    v35 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
    v33 = &block_descriptor_281;
    v23 = _Block_copy(&aBlock);
    v24 = a1;

    [v21 fetchDefaultLocationForApplicationRecord:v29 defaultProviderDomain:v9 completionHandler:v23];
    _Block_release(v23);
  }
}

uint64_t closure #1 in closure #1 in static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(void *a1, id a2, id a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v9 = a4;
  if (a2)
  {
    v32 = a4;
    v33 = a7;
    v13 = a2;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = static DOCLog.UI;
    v15 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_249B9A480;
    v17 = _convertErrorToNSError(_:)();
    *(v16 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v16 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v16 + 32) = v17;
    os_log(_:dso:log:type:_:)("getDefaultSaveLocation: Error from File Provider when fetchDefaultLocation: %@", 78, 2, &dword_2493AC000, v14, v15, v16);

    v9 = v32;
    v7 = v33;
  }

  v18 = [a3 identifier];
  v19 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v18 node:a1];

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.UI);

  swift_unknownObjectRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v24;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, a5, &v35);
    *(v23 + 12) = 2080;
    if (a1)
    {
      v25 = [a1 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v26 = String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v35);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_2493AC000, v21, v22, "Obtained default location for a picker that presented from an app that supports open in place: %s. Location: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v24, -1, -1);
    MEMORY[0x24C1FE850](v23, -1, -1);
  }

  v29 = swift_allocObject();
  v29[2] = a6;
  v29[3] = v7;
  v29[4] = v19;

  v30 = v19;
  DOCRunInMainThread(_:)();
}

uint64_t closure #2 in closure #1 in static DOCHierarchyController.getDefaultSaveLocation(configuration:sourceObserver:pickerContext:completionBlock:)(uint64_t a1, id a2, id a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a2)
  {
    v10 = a2;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = static DOCLog.UI;
    v12 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_249B9A480;
    v14 = _convertErrorToNSError(_:)();
    *(v13 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v13 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v13 + 32) = v14;
    os_log(_:dso:log:type:_:)("getDefaultSaveLocation: Error from File Provider when fetchDefaultLocation: %@", 78, 2, &dword_2493AC000, v11, v12, v13);

    v6 = a4;
  }

  v15 = [a3 identifier];
  v16 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v15 node:a1];

  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a5;
  v17[4] = v16;

  v18 = v16;
  DOCRunInMainThread(_:)();
}

void closure #1 in static DOCHierarchyController.getDefaultLocation(configuration:sourceObserver:pickerContext:completionBlock:)(void *a1, void (*a2)(id))
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 identifier];
    v5 = [v3 displayName];
    v6 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v4 title:v5];

    [v6 setIsFPV2_];
    v7 = v6;
    a2(v6);
  }

  else
  {
    (a2)();
  }
}

uint64_t DOCConcreteLocation.canImport.getter()
{
  v1 = [v0 fileProviderItem];
  if (v1)
  {
    v2 = *MEMORY[0x277CC6028];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v1;
    v4 = v1;
    specialized static DOCActionManager.canPerform(_:on:)(v2, inited);
    LOBYTE(v1) = v5;
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  return v1 & 1;
}

uint64_t DOCConcreteLocation.isRecents.getter()
{
  v1 = [v0 sourceIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

Swift::Bool __swiftcall DOCConfiguration.allowsDisplaying(_:)(DOCConcreteLocation *a1)
{
  if (![v1 forSavingDocuments])
  {
    return 1;
  }

  v3 = [(DOCConcreteLocation *)a1 sourceIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    return 0;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      v10 = [(DOCConcreteLocation *)a1 node];
      if (!v10)
      {
        return 1;
      }

      v11 = [v10 isFolder];
      swift_unknownObjectRelease();
      if (v11)
      {
        return 1;
      }
    }

    return 0;
  }
}

uint64_t @objc DOCConfiguration.allowsDisplaying(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = DOCConfiguration.allowsDisplaying(_:)(v4);

  return a1 & 1;
}

id DOCConfiguration.allowsDisplaying(_:)(void *a1)
{
  v3 = [a1 providerDomainID];
  v4 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v3 node:a1];

  v5 = [v1 allowsDisplaying_];
  return v5;
}

Swift::Void __swiftcall DOCHierarchyController.clearLastVisitedBrowseState(clearPersistentStorage:clearLiveCachedStorage:)(Swift::Bool clearPersistentStorage, Swift::Bool clearLiveCachedStorage)
{
  v5 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
  v6 = [v5 defaultEffectiveTabIdentifierForLocationRestore];
  v7 = DOCTabIdentifier.tab.getter(v6);
  v9 = v8;

  if (v9)
  {
    v10 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
    swift_beginAccess();
    v7 = *(v2 + v10);
  }

  v11 = DOCHierarchyController._defaultBrowsedStateIgnoringAnySavedState(forTab:)(v7);
  v14 = v11;
  v15 = v13;
  if (clearPersistentStorage)
  {
    DOCHierarchyController.persistBrowsedState(_:isCurrent:)(v11, v12, v13, 0);
  }

  if (clearLiveCachedStorage)
  {
    v16 = [v5 defaultEffectiveTabIdentifierForLocationRestore];
    v17 = DOCTabIdentifier.tab.getter(v16);
    v19 = v18;

    if (v19)
    {
      v20 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
      swift_beginAccess();
      v17 = *(v2 + v20);
    }

    swift_beginAccess();
    v21 = specialized Dictionary._Variant.removeValue(forKey:)(v17);
    v23 = v22;
    v25 = v24;
    swift_endAccess();
    outlined consume of DOCHierarchyController.BrowsedState?(v21, v23, v25);
  }
}

id DOCHierarchyController._defaultBrowsedStateIgnoringAnySavedState(forTab:)(uint64_t a1)
{
  if (a1 != 2)
  {
    if (a1 == 1)
    {
      v2 = [objc_opt_self() sharedItemsLocation];
LABEL_14:
      v13 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_249BA0290;
      *(v14 + 32) = v13;
      return v13;
    }

    goto LABEL_12;
  }

  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
  v4 = [v3 defaultLocation];
  if (v4)
  {
    v5 = v4;
    if ([v3 allowsDisplaying_])
    {
      if (one-time initialization token for DocumentManager != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.DocumentManager);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2493AC000, v7, v8, "Returning the configuration specified defaultLocation as the lastVisitedFullBrowseLocation.", v9, 2u);
        MEMORY[0x24C1FE850](v9, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_249BA0290;
      *(v10 + 32) = v5;
      v11 = v5;
      v12 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v10, 0);

      if (!v12)
      {
        __break(1u);
LABEL_12:
        if (!a1)
        {
          v2 = [objc_opt_self() recentDocumentsLocation];
          goto LABEL_14;
        }

        goto LABEL_23;
      }

LABEL_21:

      return v12;
    }
  }

  v16 = [objc_opt_self() defaultLocation];
  [v16 setNeedsToResolveHierarchy_];
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.DocumentManager);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2493AC000, v18, v19, "Returning the default defaultLocation as the lastVisitedFullBrowseLocation.", v20, 2u);
    MEMORY[0x24C1FE850](v20, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_249BA0290;
  *(v21 + 32) = v16;
  v11 = v16;
  v12 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v21, 0);

  if (v12)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCHierarchyController.persistBrowsedState(_:isCurrent:)(void *a1, uint64_t a2, void *a3, char a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_lastVisitedLocationSavingQueue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  *(v18 + 48) = a4;
  aBlock[4] = partial apply for closure #1 in DOCHierarchyController.persistBrowsedState(_:isCurrent:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_395;
  v19 = _Block_copy(aBlock);
  v20 = a3;

  v21 = a1;

  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v16, v12, v19);
  _Block_release(v19);
  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}

void closure #1 in DOCHierarchyController.persistBrowsedState(_:isCurrent:)(uint64_t a1, void *a2, unint64_t a3, void *a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration;
    v12 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
    v13 = DOCHierarchyController.BrowsedState.interfaceStorePersistableInfo(configuration:)(v12, a2, a3, a4);
    v25 = v24;
    v146 = v13;
    v147 = v11;
    v148 = v26;
    v28 = v27;

    if (!v25)
    {
      if (one-time initialization token for DocumentManager != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.DocumentManager);
      v15 = a4;
      v16 = a2;

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v150 = v20;
        *v19 = 136315138;
        v21 = DOCHierarchyController.BrowsedState.debugDescription.getter(v16, a3, a4);
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v150);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_2493AC000, v17, v18, "Not persisting (cannot be restored): %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x24C1FE850](v20, -1, -1);
        MEMORY[0x24C1FE850](v19, -1, -1);
      }

      goto LABEL_7;
    }

    v144 = v148;
    v29 = v25;

    _StringGuts.grow(_:)(21);

    v150 = 0xD000000000000012;
    v151 = 0x8000000249BCD850;
    v143 = v29;
    if (v146)
    {
      if (v146 == 1)
      {
        v30 = 0xE600000000000000;
        v31 = 0x646572616853;
      }

      else if (v146 == 2)
      {
        v30 = 0xE600000000000000;
        v31 = 0x6573776F7242;
      }

      else
      {
        v30 = 0xE500000000000000;
        v31 = 0x3F3F3F3F3FLL;
      }
    }

    else
    {
      v30 = 0xE700000000000000;
      v31 = 0x73746E65636552;
    }

    MEMORY[0x24C1FAEA0](v31, v30);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    v145 = v151;
    v141 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_userInterfaceStateStore;
    v142 = v150;
    v32 = v147;
    v33 = [*&v10[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_userInterfaceStateStore] interfaceStateForConfiguration_];
    if (!v33)
    {
      v42 = v144;

      v43 = v143;

      if (one-time initialization token for DocumentManager == -1)
      {
LABEL_28:
        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logger.DocumentManager);
        v45 = v43;

        v46 = v42;
        v47 = v145;

        v17 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v17, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v150 = v50;
          *v49 = 136315394;
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v47, &v150);

          *(v49 + 4) = v51;
          *(v49 + 12) = 2080;
          v52 = v45;

          v53 = v46;
          v54 = DOCHierarchyController.BrowsedState.debugDescription.getter(v52, v28, v148);
          v56 = v55;

          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v150);

          *(v49 + 14) = v57;
          _os_log_impl(&dword_2493AC000, v17, v48, "[%s] Not persisting (store is nil): %s", v49, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v50, -1, -1);
          MEMORY[0x24C1FE850](v49, -1, -1);

          goto LABEL_8;
        }

LABEL_7:

LABEL_8:
        return;
      }

LABEL_89:
      swift_once();
      goto LABEL_28;
    }

    v34 = v33;
    v140 = v33;
    if (a5)
    {
      if (one-time initialization token for DocumentManager != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.DocumentManager);
      v36 = v145;

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      LODWORD(v139) = v38;
      if (os_log_type_enabled(v37, v38))
      {
        v137 = v37;
        v39 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v150 = v136;
        *v39 = 136315394;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v36, &v150);
        *(v39 + 12) = 2080;
        v138 = v28;
        if (v146)
        {
          if (v146 == 2)
          {
            v40 = 0xE600000000000000;
            v41 = 0x6573776F7242;
          }

          else if (v146 == 1)
          {
            v40 = 0xE600000000000000;
            v41 = 0x646572616853;
          }

          else
          {
            v40 = 0xE500000000000000;
            v41 = 0x3F3F3F3F3FLL;
          }
        }

        else
        {
          v40 = 0xE700000000000000;
          v41 = 0x73746E65636552;
        }

        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, &v150);

        *(v39 + 14) = v58;
        _os_log_impl(&dword_2493AC000, v137, v139, "[%s] Persisting selected tab %s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v136, -1, -1);
        MEMORY[0x24C1FE850](v39, -1, -1);

        v28 = v138;
        v32 = v147;
      }

      else
      {
      }

      v34 = v140;
      [v140 updateMostRecentlyVisitedBrowseSourceToTab_];
    }

    if ([*&v10[v32] saveLastVisitedLocation])
    {
      v139 = v10;
      v59 = v28;
      if (one-time initialization token for DocumentManager != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      v61 = __swift_project_value_buffer(v60, static Logger.DocumentManager);
      v62 = a4;
      v143 = v143;

      v63 = v144;
      v64 = v145;

      v65 = a2;

      v137 = v61;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      v136 = v65;

      v144 = v63;
      v28 = v143;
      v68 = v59;

      if (os_log_type_enabled(v66, v67))
      {
        v134 = v67;
        v69 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v150 = v135;
        *v69 = 136315650;
        *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v64, &v150);
        *(v69 + 12) = 2080;
        v70 = v28;

        v71 = v144;
        v72 = DOCHierarchyController.BrowsedState.debugDescription.getter(v70, v68, v148);
        v73 = v66;
        v75 = v74;

        v59 = v68;
        v76 = v140;

        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v75, &v150);

        *(v69 + 14) = v77;
        *(v69 + 22) = 2080;
        v78 = DOCHierarchyController.BrowsedState.debugDescription.getter(v136, a3, a4);
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v150);

        *(v69 + 24) = v80;
        v28 = v143;
        _os_log_impl(&dword_2493AC000, v73, v134, "[%s] Persisting: %s\n ...for runtime state: %s", v69, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v135, -1, -1);
        MEMORY[0x24C1FE850](v69, -1, -1);
      }

      else
      {

        v76 = v140;
      }

      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v150 = v28;
      v151 = v59;
      v152 = v148;
      lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState and conformance DOCHierarchyController.BrowsedState();
      v10 = v139;
      v102 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v104 = v103;

      v105 = v146;
      v138 = v59;
      v136 = v104;
      if (v146 == 2)
      {

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
        v112 = objc_opt_self();
        v113 = v28;
        v114 = [v112 defaultLocation];
        LOBYTE(v112) = static NSObject.== infix(_:_:)();

        if (v112)
        {
          outlined consume of Data._Representation(v102, v136);
          isa = 0;
          v110 = 0;
          v111 = 0xF000000000000000;
        }

        else
        {
          v110 = v102;
          v111 = v136;
          isa = Data._bridgeToObjectiveC()().super.isa;
        }

        v118 = &selRef_setMostRecentlyVisitedBrowsedState_FullBrowser_;
      }

      else if (v146 == 1)
      {

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
        v106 = objc_opt_self();
        v107 = v28;
        v108 = [v106 sharedItemsLocation];
        LOBYTE(v106) = static NSObject.== infix(_:_:)();

        if (v106)
        {
          outlined consume of Data._Representation(v102, v136);
          isa = 0;
          v110 = 0;
          v111 = 0xF000000000000000;
        }

        else
        {
          v110 = v102;
          v111 = v136;
          isa = Data._bridgeToObjectiveC()().super.isa;
        }

        v118 = &selRef_setMostRecentlyVisitedBrowsedState_Shared_;
      }

      else
      {
        if (v146)
        {
LABEL_93:
          v132 = v105;
          type metadata accessor for DOCTab(0);
          v150 = v132;
          _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
          return;
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
        v115 = objc_opt_self();
        v116 = v143;
        v117 = [v115 recentDocumentsLocation];
        LOBYTE(v115) = static NSObject.== infix(_:_:)();

        if (v115)
        {
          outlined consume of Data._Representation(v102, v136);
          isa = 0;
          v110 = 0;
          v111 = 0xF000000000000000;
        }

        else
        {
          v110 = v102;
          v111 = v136;
          isa = Data._bridgeToObjectiveC()().super.isa;
        }

        v118 = &selRef_setMostRecentlyVisitedBrowsedState_Recents_;
      }

      v119 = v147;
      v120 = v138;
      v121 = v143;
      [v76 *v118];

      if (v111 >> 60 == 15)
      {
LABEL_86:
        [*&v10[v141] updateInterfaceState:v76 forConfiguration:*&v10[v119]];

        v131 = v144;
        swift_bridgeObjectRelease_n();

        return;
      }

      v122 = DOCHierarchyController.userDefaultsObservedContent.getter();
      v142 = v122;
      v150 = v138;
      v145 = v110;
      if (v148)
      {
        v28 = v111;
        v149 = v144;
        MEMORY[0x28223BE20](v122, v123);
        v133[2] = &v149;

        v124 = v144;
        if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v133, v138))
        {

          v125 = v120;
          goto LABEL_72;
        }

        if (v120 >> 62 && __CocoaSet.count.getter() < 0)
        {
          __break(1u);
          goto LABEL_93;
        }

        specialized Array.replaceSubrange<A>(_:with:)(0, 0, v124);

        v125 = v150;
      }

      else
      {

        v125 = v138;
      }

LABEL_72:
      v150 = MEMORY[0x277D84F90];
      v146 = 0;
      v136 = v111;
      v42 = (v125 & 0xFFFFFFFFFFFFFF8);
      if (v125 >> 62)
      {
        v126 = __CocoaSet.count.getter();
      }

      else
      {
        v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = 0;
      v127 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v126 == v43)
        {

          (*(*v142 + 168))(v127);

          outlined consume of Data?(v145, v136);
          v119 = v147;
          v76 = v140;
          v121 = v143;
          goto LABEL_86;
        }

        if ((v125 & 0xC000000000000001) != 0)
        {
          v128 = MEMORY[0x24C1FC540](v43, v125);
        }

        else
        {
          if (v43 >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v128 = *(v125 + 8 * v43 + 32);
        }

        v129 = v128;
        v130 = (v43 + 1);
        if (__OFADD__(v43, 1))
        {
          break;
        }

        v28 = [v128 node];

        ++v43;
        if (v28)
        {
          MEMORY[0x24C1FB090]();
          if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v127 = v150;
          v43 = v130;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v81 = v28;
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.DocumentManager);
    v83 = v143;

    v84 = v144;
    v85 = v145;

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    v88 = v148;
    if (os_log_type_enabled(v86, v87))
    {
      v89 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v150 = v146;
      *v89 = 136315394;
      LODWORD(v144) = v87;
      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v85, &v150);

      *(v89 + 4) = v90;
      *(v89 + 12) = 2080;
      v91 = v83;

      v92 = v34;
      v93 = v81;
      v94 = v84;
      v148 = v86;
      v95 = v83;
      v96 = DOCHierarchyController.BrowsedState.debugDescription.getter(v91, v93, v88);
      v98 = v97;

      v34 = v92;

      v99 = v96;
      v83 = v95;
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v98, &v150);

      *(v89 + 14) = v100;
      _os_log_impl(&dword_2493AC000, v148, v144, "[%s] Not persisting (opted out): %s", v89, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v146, -1, -1);
      v101 = v89;
      v32 = v147;
      MEMORY[0x24C1FE850](v101, -1, -1);
    }

    else
    {
    }

    [*&v10[v141] updateInterfaceState:v34 forConfiguration:*&v10[v32]];

    swift_bridgeObjectRelease_n();
  }
}

id DOCHierarchyController._defaultBrowsedState(forTab:checkPersistentStorage:checkLiveCachedStorage:)(id a1, char a2, char a3)
{
  v4 = v3;
  if (a2)
  {
    DOCHierarchyController.getBrowsedStateFromDefaults(for:)(a1);
    if (v7)
    {
      v10 = v7;
      v11 = v8;
      v12 = v9;
      v13 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
      if (v9)
      {
        v14 = v7;

        v15 = v12;
      }

      else
      {
        v16 = v7;

        v15 = v16;
      }

      if ([v15 effectiveTabSwitcherTab] == a1 && objc_msgSend(v10, sel_canBeRestored))
      {
        v17 = [v13 allowsDisplaying_];
        outlined consume of DOCHierarchyController.BrowsedState?(v10, v11, v12);
        if (v17)
        {
          return v10;
        }
      }

      else
      {
        outlined consume of DOCHierarchyController.BrowsedState?(v10, v11, v12);
      }
    }
  }

  if ((a3 & 1) == 0)
  {
    return DOCHierarchyController._defaultBrowsedStateIgnoringAnySavedState(forTab:)(a1);
  }

  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__lastBrowsedStateByTab;
  swift_beginAccess();
  v19 = *(v4 + v18);
  if (!*(v19 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(), (v21 & 1) == 0))
  {
    swift_endAccess();
    return DOCHierarchyController._defaultBrowsedStateIgnoringAnySavedState(forTab:)(a1);
  }

  v22 = *(v19 + 56) + 24 * v20;
  v10 = *v22;
  v23 = *(v22 + 16);
  swift_endAccess();
  v24 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
  v25 = v10;
  swift_bridgeObjectRetain_n();
  if (v23)
  {
    v26 = v23;
    v27 = v25;
    v28 = v26;
  }

  else
  {
    v28 = v25;
  }

  if ([v28 effectiveTabSwitcherTab] != a1 || (objc_msgSend(v10, sel_canBeRestored) & 1) == 0)
  {
    swift_bridgeObjectRelease_n();

    v10 = v23;
    goto LABEL_24;
  }

  v29 = [v24 allowsDisplaying_];

  if ((v29 & 1) == 0)
  {

LABEL_24:

    return DOCHierarchyController._defaultBrowsedStateIgnoringAnySavedState(forTab:)(a1);
  }

  return v10;
}

Swift::Bool __swiftcall DOCAppProtectionManager.hostAppCanNavigate(to:)(DOCConcreteLocation *to)
{
  if (![objc_opt_self() protectedAppsEnabled])
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  v3 = [(DOCConcreteLocation *)to node];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = [v3 fpfs_fpItem];
  swift_unknownObjectRelease();
  v5 = [v4 cachedDomain];

  if (!v5)
  {
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  v6 = [v1 hostAppCanNavigateToFileProviderDomain_] == 0;
LABEL_8:
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);
  v8 = to;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000249BCC970, &v16);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v6;
    *(v11 + 18) = 2112;
    *(v11 + 20) = v8;
    *v12 = v8;
    v14 = v8;
    _os_log_impl(&dword_2493AC000, v9, v10, "[PROTECTED APPS] %s canNavigate: %{BOOL}d to: %@", v11, 0x1Cu);
    outlined destroy of CharacterSet?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  return v6;
}

void DOCHierarchyController.restoreLastBrowsedState(forTab:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController__lastBrowsedStateByTab;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 24 * v6;
    v10 = *v8;
    v9 = *(v8 + 8);
    v11 = *(v8 + 16);
    swift_endAccess();
    v12 = v11;
    v13 = v10;
  }

  else
  {
    swift_endAccess();
    v14 = DOCHierarchyController._defaultBrowsedState(forTab:checkPersistentStorage:checkLiveCachedStorage:)(a1, 1, 1);
    v9 = v15;
    v12 = v16;
    v13 = v14;
    v11 = v12;
  }

  v17 = v12;
  DOCHierarchyController.BrowsedState.restore(to:animated:)(v2, 0, v13, v9, v11);

  swift_bridgeObjectRelease_n();
}

void DOCHierarchyController.getBrowsedStateFromDefaults(for:)(unint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_userInterfaceStateStore) interfaceStateForConfiguration_];
  v4 = specialized DOCHierarchyController._forcedRestoreLocationForPPT()();
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249BA0290;
    *(v6 + 32) = v5;
    v7 = v5;
    v8 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v6, 0);
    v10 = v9;
    v12 = v11;

    if (v8)
    {
      DOCHierarchyController.restorableBrowsedState(forProposedBrowsedState:expectedBrowsedStateTab:)(v8, v10, v12, a1);

      return;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (a1 > 2)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v13 = *qword_278FA2C68[a1];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
    v31 = v13;

LABEL_20:
    if (v3)
    {
      v32 = [v3 mostRecentlyVisitedBrowsedState_Recents];
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v20 = v13;

  if (v19)
  {
    goto LABEL_20;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
      if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
      {

        if (!v3)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v38 & 1) == 0 || !v3)
        {
          goto LABEL_30;
        }
      }

      v32 = [v3 mostRecentlyVisitedBrowsedState_FullBrowser];
LABEL_22:
      v33 = v32;
      if (v33)
      {
        v34 = v33;
        v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        outlined copy of Data._Representation(v35, v37);
        outlined consume of Data?(v35, v37);
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        lazy protocol witness table accessor for type DOCHierarchyController.BrowsedState and conformance DOCHierarchyController.BrowsedState();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        DOCHierarchyController.restorableBrowsedState(forProposedBrowsedState:expectedBrowsedStateTab:)(v48[0], v48[1], v49, a1);

        outlined consume of Data._Representation(v35, v37);
        return;
      }

      goto LABEL_30;
    }
  }

  if (v3)
  {
    v32 = [v3 mostRecentlyVisitedBrowsedState_Shared];
    goto LABEL_22;
  }

LABEL_30:
  if (one-time initialization token for DocumentManager != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.DocumentManager);
  v40 = v13;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48[0] = v44;
    *v43 = 136315138;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v48);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_2493AC000, v41, v42, "Failed to locate unarchivable BrowsedState for %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x24C1FE850](v44, -1, -1);
    MEMORY[0x24C1FE850](v43, -1, -1);
  }

  else
  {
  }
}

id DOCHierarchyController.getLastUsedOpenSaveLocation()()
{
  v1 = specialized DOCHierarchyController._forcedRestoreLocationForPPT()();
  if (!v1)
  {
    v6 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_userInterfaceStateStore) interfaceStateForConfiguration_];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 lastUsedOpenSaveLocation];
      if (v8)
      {
        v9 = v0;
        v10 = v8;
        v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
        v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        if (v14)
        {
          v15 = v14;
          v16 = [v14 effectiveTabSwitcherTab];
          v17 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
          swift_beginAccess();
          *(v9 + v17) = v16;
          v5 = specialized DOCHierarchyController.restorableLocation(forProposedLocation:expectedLocationTab:)(v15, v16);

          outlined consume of Data._Representation(v11, v13);
          return v5;
        }

        outlined consume of Data._Representation(v11, v13);
      }

      else
      {
      }
    }

    return 0;
  }

  v2 = v1;
  v3 = [v1 effectiveTabSwitcherTab];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_defaultTab;
  swift_beginAccess();
  *(v0 + v4) = v3;
  v5 = specialized DOCHierarchyController.restorableLocation(forProposedLocation:expectedLocationTab:)(v2, v3);

  return v5;
}

void DOCHierarchyController.restorableBrowsedState(forProposedBrowsedState:expectedBrowsedStateTab:)(void *a1, uint64_t a2, void *a3, id a4)
{
  v5 = v4;
  v9 = specialized DOCHierarchyController.restorableLocation(forProposedLocation:expectedLocationTab:)(a1, [a1 effectiveTabSwitcherTab]);
  if (v9)
  {
    v10 = v9;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    v11 = a1;
    v12 = v10;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      v14 = a3;
      v15 = v11;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_249BA0290;
      *(v16 + 32) = v12;
      v17 = v12;
      v15 = specialized static DOCHierarchyController.BrowsedState.state(locations:anchorLocation:)(v16, 0);
      a3 = v18;

      if (!v15)
      {
        __break(1u);
        return;
      }
    }

    v19 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_configuration);
    if (a3)
    {
      v20 = [a3 effectiveTabSwitcherTab];
    }

    else
    {
      v20 = [v15 effectiveTabSwitcherTab];
    }

    if (v20 == a4 && [v15 canBeRestored])
    {
      v21 = [v19 allowsDisplaying_];

      if (v21)
      {
        return;
      }

      v12 = v15;
    }

    else
    {
    }
  }
}

uint64_t LocationPairedViewController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t closure #1 in run(withCompletionHandler:) in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  a1();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

void tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  if (!v2[2])
  {
    v16 = *(v1 + 40);

    v16(v17);

    return;
  }

  swift_beginAccess();
  if (!v2[2])
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  v4 = v2[4];
  v3 = v2[5];
  v40 = v3;
  v5 = v4;
  specialized Array.replaceSubrange<A>(_:with:)(0, 1);
  swift_endAccess();
  v6 = *(v1 + 24);
  v7 = *(v6 + 16);
  v39 = v5;
  if (!v7)
  {

    swift_beginAccess();
LABEL_21:
    v20 = 1;
    goto LABEL_22;
  }

  v8 = 0;
  v9 = (v6 + 40);
  do
  {
    if (v8 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v10 = *v9;
    if (*v9)
    {
      if (!v3)
      {
        goto LABEL_15;
      }

      v11 = *(v9 - 1);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
      v12 = v40;
      v13 = v10;
      v14 = v11;
      v15 = static NSObject.== infix(_:_:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v3)
    {
      goto LABEL_15;
    }

    ++v8;
    v9 += 2;
  }

  while (v7 != v8);
  v8 = v7;
LABEL_15:
  v7 = *(v6 + 16);
  if (v7 < v8)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v7 != v8)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v6, v6 + 32, 0, (2 * v8) | 1);
    v19 = v18;

    v7 = *(v19 + 16);
    v6 = v19;
  }

  v5 = v39;
  swift_beginAccess();
  if (!v7)
  {
    goto LABEL_21;
  }

  if (*(*(v1 + 24) + 16) < v7)
  {
    goto LABEL_34;
  }

  specialized Array.replaceSubrange<A>(_:with:)(0, v7);
  v20 = 0;
LABEL_22:
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_249BA0290;
  *(v21 + 32) = v5;
  if (v20)
  {
    v22 = v5;

    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    aBlock[0] = MEMORY[0x277D84F90];
    v24 = v5;
    specialized ContiguousArray.reserveCapacity(_:)();
    v25 = 32;
    do
    {
      v26 = *(v6 + v25);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v25 += 16;
      --v7;
    }

    while (v7);

    v23 = aBlock[0];
  }

  aBlock[0] = v21;
  specialized Array.append<A>(contentsOf:)(v23);
  v27 = v21;
  v28 = *(v1 + 16);
  v29 = *(v1 + 32);
  v30 = *(v1 + 33);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    v33 = v40;

    v34 = v28;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v36 = swift_allocObject();
    v36[2] = v27;
    v36[3] = v34;
    v36[4] = partial apply for closure #3 in tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:);
    v36[5] = v1;
    aBlock[4] = partial apply for closure #1 in DOCHierarchyController.___prepareControllers(for:_:isUserInteraction:isBrowsingTrash:completion:);
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIViewController]) -> ();
    aBlock[3] = &block_descriptor_464;
    v37 = _Block_copy(aBlock);
    v38 = v34;

    [v32 hierarchyController_prepareControllersFor:v38 :{isa, v33, v29, v30, v37}isUserInteraction_isBrowsingTrash_completion_];
    swift_unknownObjectRelease();

    _Block_release(v37);
  }

  else
  {
  }
}

void closure #3 in tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v2);
  swift_endAccess();
  tryNextBatch() in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)();
}

uint64_t __deallocating_deinit in BatchedLocationViewControllerDriver #1 in DOCHierarchyController.prepareControllers(forResolvedLocationInfos:isUserInteraction:isBrowsingTrash:completion:)()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_18:
    v13 = a3;
    v14 = __CocoaSet.count.getter();
    a3 = v13;
    v5 = v14;
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = a3 & 0xC000000000000001;
  v15 = a3;
  v7 = a3 + 32;
  do
  {
    v8 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v6)
    {
      v9 = MEMORY[0x24C1FC540](v8 - 1, v15);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v5 >= *(v4 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(v7 + 8 * v5);
    }

    v10 = v9;
    v17 = v9;
    v11 = a1(&v17);
  }

  while (!v3 && (v11 & 1) == 0);
  return v5;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC20ResolvedLocationInfo33_3085D686B27B1518531DD3257B8A8BC0LLVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables22DOCHierarchyControllerC20ResolvedLocationInfo33_3085D686B27B1518531DD3257B8A8BC0LLVGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &lazy cache variable for type metadata for NSItemProvider, 0x277CCAA88);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables24DOCSidebarViewControllerC11OutlineItemVGMR);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 + 31;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 6);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for DOCOperation);
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, type metadata accessor for DOCGoToRecentLocation);
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        type metadata accessor for NSMutableAttributedString(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5();

    MEMORY[0x24C1FC510](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);

    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = __CocoaSet.count.getter();
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5();

    v1 = specialized Sequence._copySequenceContents(initializing:)(&v5, (v3 + 32), v2, v1);
    outlined consume of Set<UITouch>.Iterator._Variant(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
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
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a4;
  v23 = a5;
  v10 = *v6;
  v11 = (v10 + 32 + 16 * a1);
  swift_arrayDestroy();
  v12 = __OFSUB__(a3, v7);
  v13 = a3 - v7;
  if (v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = *(v10 + 16);
  v12 = __OFSUB__(v14, a2);
  v15 = v14 - a2;
  if (v12)
  {
    goto LABEL_21;
  }

  v16 = &v11[2 * a3];
  v17 = (v10 + 32 + 16 * a2);
  if (v16 != v17 || v16 >= &v17[16 * v15])
  {
    memmove(v16, v17, 16 * v15);
  }

  v19 = *(v10 + 16);
  v12 = __OFADD__(v19, v13);
  v20 = v19 + v13;
  if (v12)
  {
    goto LABEL_22;
  }

  *(v10 + 16) = v20;
LABEL_13:
  if (a3 >= 1)
  {
    *v11 = v5;
    v11[1] = v23;
    if (a3 == 1)
    {
      return;
    }

LABEL_23:
    v21 = v5;
    v22 = v23;
    __break(1u);
    return;
  }
}

double *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(double *result, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
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
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for DOCBrowserHistoryItem(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return outlined destroy of CharacterSet?(a4, &_ss15CollectionOfOneVy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMd, &_ss15CollectionOfOneVy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMR);
  }

  if (v17 < 1)
  {
    return outlined destroy of CharacterSet?(a4, &_ss15CollectionOfOneVy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMd, &_ss15CollectionOfOneVy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMR);
  }

  result = outlined init with copy of DOCHierarchyController.FetchingOperationToken(a4, v15, type metadata accessor for DOCBrowserHistoryItem);
  if (v12 >= v17)
  {
    return outlined destroy of CharacterSet?(a4, &_ss15CollectionOfOneVy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMd, &_ss15CollectionOfOneVy26DocumentManagerExecutables21DOCBrowserHistoryItemVGMR);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5So19DOCConcreteLocationC_ytTg5076_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_So19iJ7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAHytIsgyrzo_Tf1ncn_n(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1);
  v4 = AssociatedObject[2];

  return a2((AssociatedObject + 4), v4);
}

void *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t _sSo16DOCActionManagerC08DocumentB11ExecutablesE9canImport2inSbSo7DOCNode_p_tFZTf4en_nSo6FPItemC_Tt0g5(void *a1)
{
  v2 = *MEMORY[0x277CC6028];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = a1;
  v4 = a1;
  specialized static DOCActionManager.canPerform(_:on:)(v2, inited);
  LOBYTE(a1) = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  return a1 & 1;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID, 0x277CC6400);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
  return static NSObject.== infix(_:_:)() & 1;
}

{
  v2 = *a1;
  v3 = (v2 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v3 & 1;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for DOCAssertion.DOCWeakAssertionObserver);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for DOCAssertion);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for DOCHierarchyController.PreventChangeAssertion);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for DOCSidebarCellAccessoryItem);
}

{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for DOCBrowserContainerController);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for DOCBrowserHistoryShiftRequest);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for DOCSourceVisibilityController.VisibilityObserver);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, &lazy cache variable for type metadata for UITab, 0x277D75B08);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, MEMORY[0x282217CA0]);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for DOCUSBEraseOperation);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for DOCTransitionableContext.SettingsTransaction);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, &lazy cache variable for type metadata for FINode, 0x277D04700);
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  type metadata accessor for NSMutableAttributedString(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = __CocoaSet.count.getter();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
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
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables11ViewSizable_pMd, &_s26DocumentManagerExecutables11ViewSizable_pMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  v14 = 48 * v12;
  v15 = v13 + 48 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables26DOCImmutableSidebarSection_pMd, &_s26DocumentManagerExecutables26DOCImmutableSidebarSection_pMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

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

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
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

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXl6client_yyc7handlertMd, &_syXl6client_yyc7handlertMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v6 = static UUID.== infix(_:_:)();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    type metadata accessor for DSLightweightTagInfo();
    v6 = static DSLightweightTagInfo.== infix(_:_:)();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

{
  if (a1 >> 62)
  {
LABEL_22:
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v17 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source;
  while (1)
  {
    if (v19 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C1FC540](v3, a1);
    }

    else
    {
      if (v3 >= *(v16 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [*&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] identifier];
    v7 = [*(a2 + v17) identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1FC540](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v6 = static UUID.== infix(_:_:)();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = __CocoaSet.count.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x24C1FC540](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == __CocoaSet.count.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v8, v4);
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    v10 = static UUID.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x24C1FC540](v7, v4);
          v12 = MEMORY[0x24C1FC540](v8, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v13)
          {
            goto LABEL_45;
          }

          if (v8 >= v13)
          {
            goto LABEL_46;
          }

          v11 = *(v4 + 32 + 8 * v7);
          v12 = *(v4 + 32 + 8 * v8);
        }

        v14 = v3;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v15 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v4 & 0xFFFFFFFFFFFFFF8;
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v12;

        if ((v4 & 0x8000000000000000) != 0 || v15)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v16 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v16 + 16))
        {
          goto LABEL_43;
        }

        v3 = v14;
        *(v16 + 8 * v8 + 32) = v11;

        *v14 = v4;
      }

      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return __CocoaSet.count.getter();
}

{
  v3 = a2;
  v5 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = 0;
  v31 = a1;
  v34 = result;
  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v32 = v3;
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v8 == __CocoaSet.count.getter())
      {
        return v34;
      }
    }

    else if (v8 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v34;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C1FC540](v8, v5);
      goto LABEL_16;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    v10 = *(v5 + 8 * v8 + 32);
LABEL_16:
    v11 = v10;
    v12 = [*&v10[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCUSBEraseOperation_source] identifier];
    v13 = [*(v3 + v33) identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {

LABEL_8:
      v3 = v32;
      goto LABEL_9;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_8;
    }

    if (v34 == v8)
    {
      v3 = v32;
    }

    else
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C1FC540](v34, v5);
        v21 = MEMORY[0x24C1FC540](v8, v5);
      }

      else
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34 >= v22)
        {
          goto LABEL_55;
        }

        if (v8 >= v22)
        {
          goto LABEL_56;
        }

        v23 = *(v5 + 32 + 8 * v8);
        v20 = *(v5 + 32 + 8 * v34);
        v21 = v23;
      }

      v24 = v21;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
        v25 = (v5 >> 62) & 1;
      }

      else
      {
        LODWORD(v25) = 0;
      }

      v26 = v5 & 0xFFFFFFFFFFFFFF8;
      v27 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x20);
      *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x20) = v24;

      if ((v5 & 0x8000000000000000) != 0 || v25)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
        v26 = v5 & 0xFFFFFFFFFFFFFF8;
        v3 = v32;
        if ((v8 & 0x8000000000000000) != 0)
        {
LABEL_46:
          __break(1u);
          return v34;
        }
      }

      else
      {
        v3 = v32;
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }
      }

      if (v8 >= *(v26 + 16))
      {
        goto LABEL_53;
      }

      v28 = v26 + 8 * v8;
      v29 = *(v28 + 32);
      *(v28 + 32) = v20;

      *v31 = v5;
    }

    v9 = __OFADD__(v34++, 1);
    if (v9)
    {
      goto LABEL_52;
    }

LABEL_9:
    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return __CocoaSet.count.getter();
}

{
  v4 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v9 = &lazy cache variable for type metadata for NSObject;
  v25 = a1;
  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == __CocoaSet.count.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1FC540](v8, v4);
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v4 + 8 * v8 + 32);
LABEL_15:
    v12 = v11;
    type metadata accessor for NSMutableAttributedString(0, v9, 0x277D82BB8);
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x24C1FC540](v7, v4);
          v15 = MEMORY[0x24C1FC540](v8, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v16)
          {
            goto LABEL_45;
          }

          if (v8 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v4 + 32 + 8 * v8);
          v14 = *(v4 + 32 + 8 * v7);
          v15 = v17;
        }

        v18 = v15;
        v19 = v9;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v20 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v4 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

        if ((v4 & 0x8000000000000000) != 0 || v20)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v21 + 16))
        {
          goto LABEL_43;
        }

        v9 = v19;
        v23 = v21 + 8 * v8;
        v24 = *(v23 + 32);
        *(v23 + 32) = v14;

        *v25 = v4;
      }

      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v8++, 1);
    if (v10)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return __CocoaSet.count.getter();
}

{
  v3 = a1;
  v4 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == __CocoaSet.count.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v8, v4);
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_15:
    v10 = static UUID.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x24C1FC540](v7, v4);
          v12 = MEMORY[0x24C1FC540](v8, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v13)
          {
            goto LABEL_45;
          }

          if (v8 >= v13)
          {
            goto LABEL_46;
          }

          v11 = *(v4 + 32 + 8 * v7);
          v12 = *(v4 + 32 + 8 * v8);
        }

        v14 = v3;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v15 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v16 = v4 & 0xFFFFFFFFFFFFFF8;
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v12;

        if ((v4 & 0x8000000000000000) != 0 || v15)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v16 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v16 + 16))
        {
          goto LABEL_43;
        }

        v3 = v14;
        *(v16 + 8 * v8 + 32) = v11;

        *v14 = v4;
      }

      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return __CocoaSet.count.getter();
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, _BYTE *a2, uint64_t a3, __int128 *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 48 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = &v10[3 * a3];
  a2 = (v9 + 32 + 48 * v8);
  v15 = 48 * v14;
  v16 = &a2[48 * v14];
  if (result != a2 || result >= v16)
  {
    result = memmove(result, a2, v15);
  }

  v18 = *(v9 + 16);
  v11 = __OFADD__(v18, v12);
  v19 = v18 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v19;
LABEL_13:
  if (a3 <= 0)
  {
    return result;
  }

  v21 = a4[1];
  v23 = *a4;
  v20 = v23;
  v24[0] = v21;
  *(v24 + 9) = *(a4 + 25);
  *(v10 + 25) = *(v24 + 9);
  *v10 = v20;
  v10[1] = v21;
  result = &v23;
  a2 = v22;
  if (a3 != 1)
  {
LABEL_21:
    result = outlined init with copy of DOCSidebarItem(result, a2);
    __break(1u);
    return result;
  }

  return outlined init with copy of DOCSidebarItem(&v23, v22);
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for DOCMutableSidebarSection);
}

{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
  v13 = swift_arrayDestroy();
  v15 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v16 = v5[2];
    v17 = v16 - v7;
    if (!__OFSUB__(v16, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = __CocoaSet.count.getter();
  v17 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v18 = (v6 + 8 * v8);
  v14 = &v9[v7];
  if (v18 != v14 || v18 >= &v14[8 * v17])
  {
    memmove(v18, v14, 8 * v17);
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x28223BE20](v13, v14);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5So19DOCConcreteLocationC_ytTg5076_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_So19iJ7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAHytIsgyrzo_Tf1ncn_n(v4, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

{
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, a4, type metadata accessor for DOCTransitionableContext.SettingsTransaction);
}